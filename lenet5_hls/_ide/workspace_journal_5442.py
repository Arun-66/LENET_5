# 2025-01-31T14:23:04.749930
import vitis

client = vitis.create_client()
client.set_workspace(path="lenet5_hls")

comp = client.create_hls_component(name = "Lenet_HLS_Component",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

vitis.dispose()

