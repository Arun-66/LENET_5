# 2025-02-01T13:36:50.982797
import vitis

client = vitis.create_client()
client.set_workspace(path="lenet5_hls")

comp = client.get_component(name="Lenet_HLS_Component")
comp.run(operation="IMPLEMENTATION")

