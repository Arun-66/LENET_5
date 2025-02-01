# 2025-01-31T20:04:33.406154
import vitis

client = vitis.create_client()
client.set_workspace(path="lenet5_hls")

vitis.dispose()

