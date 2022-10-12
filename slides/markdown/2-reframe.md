## Resilience > Robustness

Notes:
- Even taking updates
- Ryan Bergman is going to talk about zero-downtime updates

---

A Zone is a single logical datacenter with its own power, network, and cooling resources.

---

A Region is set of collaborating Zones (datacenters) grouped together based on their geographical proximity.

---

- Laptop
- Single Datacenter
- Single Availability Zone
- Single Region

Notes:
- Failures happen
- Startup life
- You have to start somewhere

---

![World Map](/images/world.png)

Notes:
- Companies in 1-region
- Have customers in different regions
- Wondering why the latency is so bad
- Where are your customers
- How come we don't have any customers from region X?

---

```markdown
Latency is the new downtime.
```