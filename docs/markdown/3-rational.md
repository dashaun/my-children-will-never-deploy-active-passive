- Terraform <!-- .element: class="fragment" -->
- Azure Spring Apps Enterprise <!-- .element: class="fragment" -->
- Azure Cache for Redis Enterprise <!-- .element: class="fragment" -->
- Azure Front Door <!-- .element: class="fragment" -->

---

## Terraform HCL

---

![old-ways](images/replication.png)

Notes:
- Let me explain
- This is a serverless implementation
- Of a very old pattern
- Does this look familiar

---

![leader-follower](images/leader-follower.png)

Notes:
- In databases
- It can look like this
- Writes happen on the primary
- The secondary, perhaps in another availability zone

---

![leader-follower](images/leader-follower2.png)

Notes:
- This can also be beneficial
- Treat the secondary/follower
- as read-only

---

```markdown
In a single region
leader-follower
should be in different zones
```

---

![active-passive](images/active-passive.png)

Notes:
- At a higher level, active-passive can look like this
- One datacenter/region gets all the traffic
- The secondary/passive is on standby
- Configs, data, sessions, etc, are replicated

---

![active-passive](images/active-passive-2.png)

Notes:
- If something goes wrong in the primary
- Some switch is thrown
- All the traffic now goes to the secondary

---

- "Brilliant!" <!-- .element: class="fragment" data-fragment-index="1" -->
- "This solves all of our problems!" <!-- .element: class="fragment" data-fragment-index="2" -->
- "It only costs twice as much for infrastructure!" <!-- .element: class="fragment" data-fragment-index="3" -->
- "Make it happen!" <!-- .element: class="fragment" data-fragment-index="4" -->
- [Quotes from Former VP of Engineering] <!-- .element: class="fragment" data-fragment-index="5" -->

---

```markdown
Latency is the new downtime.
```

Notes:
- Even if you have this setup
- The time to react
- Make the switch
- And have all of the consumers/customers
- Retry loops working
- We can do better
- You can do better

---

## Recap from Yesterday

- Global Load Balancers
- Firewalls
- Circuit Breakers
- Service Discovery
- Cloud Config
- Upgrades
- Error Messages

---

```
"My children will never deploy active-passive."

- DaShaun Carter
```