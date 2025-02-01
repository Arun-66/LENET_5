# 2025-02-01T13:07:01.564712
import vitis

client = vitis.create_client()
client.set_workspace(path="lenet5_hls")

comp = client.get_component(name="Lenet_HLS_Component")
comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

