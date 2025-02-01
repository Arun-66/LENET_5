# 2025-01-31T20:43:13.693920
import vitis

client = vitis.create_client()
client.set_workspace(path="lenet5_hls")

comp = client.get_component(name="Lenet_HLS_Component")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

