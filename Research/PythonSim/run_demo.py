from cxl_sim.simulator import Simulator

if __name__ == "__main__":
    sim = Simulator()
    sim.start()
    summary = sim.workload(n_ops=200, payload_size=2048)
    sim.stop()
    print("Metrics:")
    for k, v in summary.items():
        print(k, v)
