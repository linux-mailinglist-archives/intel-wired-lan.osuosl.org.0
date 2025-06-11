Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CA7AD5CEA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 19:16:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89FEF82153;
	Wed, 11 Jun 2025 17:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DJCuFjXQTGIH; Wed, 11 Jun 2025 17:16:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6D2182142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749662217;
	bh=+QGkvgGkB7vSq453VI8Sd8b7AUM5QXgxjbU3ORwYaEg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HYtt5VJA0odoe+2Z2ASfiVkgameCLNbsc07V8nNFuVhoPm/RESn/ZqRgQxeTEOWZe
	 ZQoE8lT4ppl2O+QWvo88zlb4Dnb7cWUKyOOkpFH8wsMOJ9j18DDQ2ZgG19Y3Kg1Xhz
	 Je+YrdJIatfFbMMwGLE9clavkCXJVV/eIETMnMkAypOXz8fv3DgQYpMc7chBWCtR/q
	 V8jnlJLBt1s9Ct1fOVbIYbE7HCeSOuxHqtdPZ45pPhg9M75MLvdFqLZxKfO0dKomDs
	 G6uo9pTeA+aMHEFsDhVIKu6xXpciPTwSsmqy1zQcyBOOeSjPXbzvLTocHy2PWahtcX
	 jo9VHOF6m1CIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6D2182142;
	Wed, 11 Jun 2025 17:16:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C5FE41F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 15:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACFAC60ADF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 15:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vEhK0zUg0KYq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 15:54:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=khalid.mughal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 30A7160AC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30A7160AC1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30A7160AC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 15:54:33 +0000 (UTC)
X-CSE-ConnectionGUID: 9HmoGLIQQrWmKvs+grduQQ==
X-CSE-MsgGUID: nsqA1fdJRROCkAkXIkwDPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="50914099"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="50914099"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:54:33 -0700
X-CSE-ConnectionGUID: W1BtOQx+Rr2ZyP+1P1GAhQ==
X-CSE-MsgGUID: R57onhv9TmuxP32xVlg33w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="151030096"
Received: from spandruv-mobl4.amr.corp.intel.com (HELO kmughal-lnx..)
 ([10.124.221.0])
 by fmviesa003.fm.intel.com with ESMTP; 11 Jun 2025 08:54:32 -0700
From: Khalid Mughal <khalid.mughal@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Khalid Mughal <khalid.mughal@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Date: Wed, 11 Jun 2025 08:54:02 -0700
Message-ID: <20250611155402.1260634-1-khalid.mughal@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 11 Jun 2025 17:16:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657274; x=1781193274;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aChVk7NuBPtC4BnTLrDzZYCY1ibYXb9hXzVkeiTIql0=;
 b=jhGP8Php1slmjmrc8CFidaEpycckZ0uDThSuoYwhyxFjec9F9uck0GrZ
 kxl5jy+oqfmEPXIIDLh49Zu5oPVvEFbjRytd+KPUv7tbRxtEsoZCwyauy
 DbIxcILP4gPP/W6PfD+sHcqprA4Q2orDb65T4LSjhgtbGsK36mC3L3oAb
 gAlSqY/dD6QAYsRcLg64o2e9+lsOuJnNQKhdE1qS3B86sK9kCmdfLKVDo
 5Kf/Yy1UG9JKTmNGMsCDiVp2H9Dcklj77D1IcvjJ4MlsJVgfRgqrkds9O
 MuFWi088AYUgPXdwdADnBZqutJjIigAfpVuOLGK4bM5MjluWeBwNhUCf8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jhGP8Php
Subject: [Intel-wired-lan] [PATCH] net: Add new iccnet driver
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Intel(R) IPU ICCNET (Inter-Complex Communication Network) Driver:

The iccnet (Inter-Core Communication Network) driver enables sideband
channel communication between the Management-Complex and the
Compute-Complex, both powered by ARMv8 CPUs, on the Intel IPU
(Infrastructure Processing Unit). The driver establishes descriptor
rings for transmission and reception using a shared memory region
accessible to both CPU complexes. The TX ring of one CPU maps
directly to the RX ring of the other CPU.

== Initial and Evolving Use Cases ==

The initial use case was limited to simple utilities like scp, ssh,
etc. However, iccnet evolved into the primary communication channel
for iSCSI. In this scenario, Compute-Complex requires iSCSI to boot
its OS, with the Management-Complex acting as an iSCSI server
utilizing its SSD/NVMe storage. As a result, iccnet is now the
default communication interface between Management-Complex and
Compute-Complex for iSCSI. Since iSCSI relies on TCP/IP, a proper
netdev driver is required.

== Driver Design ==

The iccnet is implemented as a generic netdev driver, enabling
seamless integration with the Linux TCP/IP stack, without requiring
custom socket APIs. The driver uses ARPHRD_RAWIP, forming a
point-to-point link between Management-Complex and Compute-Complex.

It uses a reserved 2MB section of shared memory (outside the OS
domains of Management-Complex and Compute-Complex), within a larger
shared memory region. The driver follows a simple descriptor ring
model. Each descriptor includes a status word with an ownership bit
and a buffer for packet/frame data.
On transmit:
  Data is copied via memcpy() (no DMA available),
  The ownership bit is set, and
  An interrupt is triggered to notify the peer.
On receive:
  The interrupt handler processes the packet,
  Copies the data via memcpy(), and
  Resets the ownership bit.

Since the iccnet driver does not include an Ethernet header and lacks
ARP support, a static route must be added after module insertion, e.g.
    On Compute-Complex: ip route add 10.0.0.1 dev iccnet
    On Management-Complex: ip route add 10.0.0.2 dev iccnet

== Alternative Solutions Considered ==

Before developing iccnet, several existing solutions were evaluated,
but none met the requirements:
1. virtio-net: Requires a backend device model between CPU complexes.
2. veth (Virtual Ethernet): Only works within the same Linux network
   namespace and does not support shared memory communication.
3. PRMsg (Remote Processor Messaging): Cannot expose a netdev
   interface, which is required for iSCSI.
4. Mailbox Framework: Similar to RPMsg; lacks netdev support,
   making it unsuitable for iSCSI.

Signed-off-by: Khalid Mughal <khalid.mughal@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
v2:
- Fixed issues highlighted by Marcin Szycik
v3:
- Fixed internal-kbuild-all build warning
v4:
- Changed iccnet header padding
---
 .../devicetree/bindings/net/intel,iccnet.yaml |  71 +++
 drivers/net/Kconfig                           |  10 +
 drivers/net/Makefile                          |   1 +
 drivers/net/iccnet.c                          | 541 ++++++++++++++++++
 4 files changed, 623 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/intel,iccnet.yaml
 create mode 100644 drivers/net/iccnet.c

diff --git a/Documentation/devicetree/bindings/net/intel,iccnet.yaml b/Documentation/devicetree/bindings/net/intel,iccnet.yaml
new file mode 100644
index 000000000000..bdd42c64e6a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/intel,iccnet.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/intel,iccnet.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel IPU ICCNET interface
+
+maintainers:
+  - Khalid Mughal <khalid.mughal@intel.com>
+
+properties:
+  compatible:
+    items:
+      - const: intel,iccnet
+
+  reg:
+    description:
+      physical address and sizes of shared memory region
+    maxItems: 1
+
+  rxring-offset:
+    description:
+      offset of start of receive descriptor ring
+    maxItems: 1
+
+  txring-offset:
+    description:
+      offset of start of transmit descriptor ring
+    maxItems: 1
+
+  ipc-reg:
+    description:
+      interrupt/status register address
+    maxItems: 1
+
+  interrupts:
+    description:
+      interrupt specifier specific to interrupt controller
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - rxring-offset
+  - txring-offset
+  - ipc-reg
+  - interrupts
+
+
+allOf:
+  - $ref: ethernet-controller.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        ethernet@4198000000 {
+            compatible = "intel,iccnet";
+            reg = <0x41 0x98000000 0x0 0x200000>;
+            rxring-offset = <0x000000>;
+            txring-offset = <0x100000>;
+            ipc-reg = <0x20 0x53A10000>;
+            interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 1fd5acdc73c6..27d5ceeb6e54 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -669,4 +669,14 @@ config NETDEV_LEGACY_INIT
 	  Drivers that call netdev_boot_setup_check() should select this
 	  symbol, everything else no longer needs it.
 
+config ICCNET
+	tristate "Intel IPU ICCNET interface"
+	depends on ACPI || OF
+	help
+
+	  Enables support for the Intel ICCNET (Inter-Complex
+	  Communication Network) interface used in Intel IPU
+	  (Infrastructure Processing Unit). It provides a point-to-point
+	  communication link between 2 CPU complexes over a shared memory
+	  transport.
 endif # NETDEVICES
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 13743d0e83b5..9938b0dd9099 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -90,3 +90,4 @@ obj-$(CONFIG_FUJITSU_ES) += fjes/
 obj-$(CONFIG_USB4_NET) += thunderbolt/
 obj-$(CONFIG_NETDEVSIM) += netdevsim/
 obj-$(CONFIG_NET_FAILOVER) += net_failover.o
+obj-$(CONFIG_ICCNET) += iccnet.o
diff --git a/drivers/net/iccnet.c b/drivers/net/iccnet.c
new file mode 100644
index 000000000000..693718f3b30a
--- /dev/null
+++ b/drivers/net/iccnet.c
@@ -0,0 +1,541 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright(C) 2020-2025 Intel Corporation */
+
+#include <linux/acpi.h>
+#include <linux/if_arp.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+
+#define DRIVER_NAME		"iccnet"
+
+#define ICCNET_STS_RX_LOOP	BIT(4) /* RX-loop is in active state */
+#define ICCNET_STS_RUNNING	BIT(8) /* operational state == running */
+#define ICCNET_STS_STOPPED	0x0    /* operational state == stopped */
+
+#define ICCNET_NAPI_WEIGHT	NAPI_POLL_WEIGHT /* Packets per NAPI poll */
+
+#define ICCNET_IPC_REG_STS	0x00   /* Status register - (Read-Only) */
+#define ICCNET_IPC_REG_CLR	0x04   /* Clear register - (Write-Clear) */
+#define ICCNET_IPC_REG_SET	0x08   /* Set/Trigger register - (Read-Write) */
+#define ICCNET_IPC_REG_SZ	16     /* Register space size (in bytes) */
+
+#define ICCNET_IPC_ENABLE	BIT(0) /* Trigger an IPC interrupt */
+#define ICCNET_IPC_CLEAR	GENMASK(31, 0) /* Clear IPC interrupt */
+
+#define ICCNET_LINK_UP		1      /* Link is up */
+#define ICCNET_LINK_DOWN	0      /* Link is down */
+
+#define ICCNET_RING_SET		BIT(31) /* Descriptor is in use */
+#define ICCNET_RING_CLR		0x0     /* Descriptor is free */
+#define ICCNET_RING_MSK		GENMASK(30, 0) /* Mask to extract frame len */
+
+#define ICCNET_MAX_MTU		4088   /* Max MTU size for iccnet */
+#define ICCNET_FRAME_LEN	ICCNET_MAX_MTU
+#define ICCNET_MIN_MTU		ETH_MIN_MTU /* Min MTU size for iccnet */
+#define ICCNET_HDR_SIZE		1024   /* Header size */
+#define ICCNET_DSC_SIZE		4092   /* Descriptor size: FRAME_LEN + 4 */
+
+#define ICCNET_RX_RING_SIZE	SZ_1M  /* Rx ring size */
+#define ICCNET_TX_RING_SIZE	SZ_1M  /* Tx ring size */
+#define ICCNET_MAX_DSC_ELEM	256    /* Max descriptor elements in a ring */
+
+struct iccnet_hdr {
+	u32 link; /* Link status (ICCNET_LINK_UP or ICCNET_LINK_DOWN) */
+	u32 rx_idx; /* Current index in the RX descriptor ring */
+	u32 tx_idx; /* Current index in the TX descriptor ring */
+	u32 nelem; /* Ring size (# of elements in the Ring) */
+
+	u64 st_rx_pkts; /* Total number of received packets */
+	u64 st_tx_pkts; /* Total number of transmitted packets */
+	u64 st_rx_bytes; /* Total number of received bytes */
+	u64 st_tx_bytes; /* Total number of transmitted bytes */
+	u64 st_rx_dropped; /* Number of received packets dropped */
+	u64 st_tx_dropped; /* Number of transmitted packets dropped */
+	u64 st_rx_errors; /* Number of receive errors */
+	u64 st_irq_valid; /* Number of valid IRQs processed */
+	u64 st_irq_none; /* Number of IRQs with no data to process */
+	u64 st_napi_poll; /* Number of times NAPI polling was triggered */
+	u64 st_napi_done; /* Number of times NAPI polling completed */
+
+	u64 rsvd[19];  /* Padding to ensure struct alignment */
+} __packed;
+
+struct iccnet_dsc {
+	u32 status; /* Status word: ownership flag + frame length */
+	u8 data[ICCNET_FRAME_LEN]; /* Packet data buffer */
+} __packed;
+static_assert(sizeof(struct iccnet_dsc) == ICCNET_DSC_SIZE, "ERR dsc_size");
+
+struct iccnet {
+	int opstate; /* Operational state flags (e.g., ICCNET_STS_RUNNING) */
+	void __iomem *base; /* Base address of shared memory (I/O mapped) */
+	void __iomem *ipc_base; /* Base address for interrupt registers */
+
+	struct net_device *ndev; /* Associated network device */
+	struct napi_struct napi; /* NAPI instance for packet reception */
+
+	spinlock_t rx_lock; /* lock to protect Rx Ring */
+	spinlock_t tx_lock; /* lock to protect Tx Ring */
+
+	struct iccnet_hdr *own_hdr; /* Pointer to TX ring header */
+	struct iccnet_dsc *tx_ring; /* Pointer to TX descriptor ring */
+	struct iccnet_hdr *peer_hdr; /* Pointer to RX ring header */
+	struct iccnet_dsc *rx_ring; /* Pointer to RX descriptor ring */
+};
+
+/**
+ * iccnet_irqhandler - Interrupt handler for iccnet
+ * @irq: Interrupt number
+ * @priv: Network device structure
+ *
+ * Handles interrupts for the iccnet device. It clears the interrupt status
+ * register and schedules NAPI if the interrupt is valid.
+ *
+ * Return: IRQ_HANDLED
+ */
+static irqreturn_t iccnet_irqhandler(int irq, void *priv)
+{
+	struct net_device *ndev = priv;
+	struct iccnet *idev;
+	u32 irqstatus;
+
+	idev = netdev_priv(ndev);
+
+	irqstatus = readl(idev->ipc_base + ICCNET_IPC_REG_STS);
+	writel(ICCNET_IPC_CLEAR, idev->ipc_base + ICCNET_IPC_REG_CLR);
+
+	if (irqstatus & ICCNET_IPC_ENABLE) {
+		if (idev->opstate & ICCNET_STS_RUNNING)
+			napi_schedule(&idev->napi);
+		idev->own_hdr->st_irq_valid++;
+	} else {
+		idev->own_hdr->st_irq_none++;
+	}
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * iccnet_start - Start the network interface
+ * @ndev: Network device structure
+ *
+ * Called when the network interface is activated (IFF_UP). This function
+ * enables NAPI, starts the transmit queue, and marks the link as up.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+static int iccnet_start(struct net_device *ndev)
+{
+	struct iccnet *idev = netdev_priv(ndev);
+
+	napi_enable(&idev->napi);
+	netif_carrier_on(ndev);
+	netif_start_queue(ndev);
+	idev->own_hdr->link = ICCNET_LINK_UP;
+	idev->opstate |= ICCNET_STS_RUNNING;
+	return 0;
+}
+
+/**
+ * iccnet_stop - Stop the network interface
+ * @ndev: Network device structure
+ *
+ * Called when the network interface is deactivated. It stops the transmit
+ * queue, disables NAPI, and marks the link as down.
+ *
+ * Return: 0 on success
+ */
+static int iccnet_stop(struct net_device *ndev)
+{
+	struct iccnet *idev = netdev_priv(ndev);
+
+	if (idev->opstate & ICCNET_STS_RUNNING) {
+		idev->opstate &= ~ICCNET_STS_RUNNING;
+		netif_stop_queue(ndev);
+		netif_carrier_off(ndev);
+		napi_disable(&idev->napi);
+		idev->own_hdr->link = ICCNET_LINK_DOWN;
+	}
+
+	return 0;
+}
+
+/**
+ * iccnet_start_xmit - Transmit a packet
+ * @skb: Socket buffer containing the packet
+ * @ndev: Network device structure
+ *
+ * Handles packet transmission. It checks if the transmit ring is available,
+ * copies the packet data, updates statistics, and notifies hardware.
+ *
+ * Return: NETDEV_TX_OK on success
+ */
+static int iccnet_start_xmit(struct sk_buff *skb, struct net_device *ndev)
+{
+	struct iccnet *idev = netdev_priv(ndev);
+	struct iccnet_dsc *txrptr;
+	int pktlen;
+
+	spin_lock(&idev->tx_lock);
+	txrptr = &idev->tx_ring[idev->own_hdr->tx_idx];
+
+	if ((txrptr->status & ICCNET_RING_SET) ||
+	    idev->peer_hdr->link == ICCNET_LINK_DOWN) {
+		dev_kfree_skb_any(skb);
+		idev->own_hdr->st_tx_dropped++;
+		goto tx_exit;
+	}
+
+	pktlen = (skb->len < ICCNET_MIN_MTU) ? ICCNET_MIN_MTU : skb->len;
+	skb_copy_from_linear_data(skb, txrptr->data, skb->len);
+	idev->own_hdr->st_tx_pkts++;
+	idev->own_hdr->st_tx_bytes += pktlen;
+	txrptr->status = ICCNET_RING_SET | pktlen;
+	writel(ICCNET_IPC_ENABLE, idev->ipc_base + ICCNET_IPC_REG_SET);
+	idev->own_hdr->tx_idx =
+		(idev->own_hdr->tx_idx + 1) % ICCNET_MAX_DSC_ELEM;
+	dev_kfree_skb_any(skb);
+
+tx_exit:
+	spin_unlock(&idev->tx_lock);
+
+	return NETDEV_TX_OK;
+}
+
+/**
+ * iccnet_start_recv - Receive packets
+ * @ndev: Network device structure
+ * @budget: Maximum number of packets to process
+ *
+ * Processes received packets and passes them to the network stack.
+ *
+ * Return: Number of packets processed
+ */
+static int iccnet_start_recv(struct net_device *ndev, int budget)
+{
+	struct iccnet *idev = netdev_priv(ndev);
+	struct iccnet_dsc *rxrptr;
+	struct sk_buff *skb;
+	int npackets = 0;
+	int pktlen;
+
+	spin_lock(&idev->rx_lock);
+	idev->opstate |= ICCNET_STS_RX_LOOP;
+	rxrptr = &idev->rx_ring[idev->own_hdr->rx_idx];
+
+	while ((rxrptr->status & ICCNET_RING_SET) && budget--) {
+		pktlen = rxrptr->status & ICCNET_RING_MSK;
+		skb = napi_alloc_skb(&idev->napi, pktlen + 2);
+		if (!skb) {
+			idev->own_hdr->st_rx_dropped++;
+			break;
+		}
+		skb_reserve(skb, 2); /* adjust alignment (if needed) */
+		skb_put(skb, pktlen); /* set the length of the skb */
+		skb_copy_to_linear_data(skb, rxrptr->data, pktlen);
+		skb->dev = ndev;
+		if ((skb->data[0] & 0xf0) == 0x40)
+			skb->protocol = htons(ETH_P_IP); /* IPv4 */
+		else
+			skb->protocol = htons(ETH_P_IPV6); /* IPv6 */
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+		napi_gro_receive(&idev->napi, skb);
+		idev->own_hdr->st_rx_pkts++;
+		idev->own_hdr->st_rx_bytes += pktlen;
+		rxrptr->status = ICCNET_RING_CLR;
+		idev->own_hdr->rx_idx =
+			(idev->own_hdr->rx_idx + 1) % ICCNET_MAX_DSC_ELEM;
+		rxrptr = &idev->rx_ring[idev->own_hdr->rx_idx];
+		npackets++;
+	}
+
+	idev->opstate &= ~ICCNET_STS_RX_LOOP;
+	spin_unlock(&idev->rx_lock);
+
+	return npackets;
+}
+
+/**
+ * iccnet_napi_poll - NAPI poll function
+ * @napi: NAPI structure
+ * @budget: Maximum number of packets to process
+ *
+ * Processes received packets within the given budget. Completes polling
+ * if all packets have been processed.
+ *
+ * Return: Number of packets processed
+ */
+static int iccnet_napi_poll(struct napi_struct *napi, int budget)
+{
+	struct iccnet *idev = container_of(napi, struct iccnet, napi);
+	struct net_device *ndev = idev->ndev;
+	int npackets = budget;
+
+	if (idev->opstate == ICCNET_STS_STOPPED)
+		return 0;
+
+	if (!(idev->opstate & ICCNET_STS_RX_LOOP))
+		npackets = iccnet_start_recv(ndev, budget);
+
+	if (npackets < budget) {
+		napi_complete_done(napi, npackets);
+		idev->own_hdr->st_napi_done++;
+	}
+
+	idev->own_hdr->st_napi_poll++;
+
+	return npackets;
+}
+
+/**
+ * iccnet_get_stats64 - Get network statistics
+ * @ndev: Network device structure
+ * @stats: Pointer to statistics structure
+ *
+ * Retrieves the network statistics such as packet count, bytes transmitted,
+ * and errors.
+ */
+static void iccnet_get_stats64(struct net_device *ndev,
+			       struct rtnl_link_stats64 *stats)
+{
+	struct iccnet *idev = netdev_priv(ndev);
+
+	stats->rx_packets = idev->own_hdr->st_rx_pkts;
+	stats->rx_bytes   = idev->own_hdr->st_rx_bytes;
+	stats->tx_packets = idev->own_hdr->st_tx_pkts;
+	stats->tx_bytes   = idev->own_hdr->st_tx_bytes;
+	stats->rx_errors  = idev->own_hdr->st_rx_errors;
+	stats->rx_dropped = idev->own_hdr->st_rx_dropped;
+	stats->tx_dropped = idev->own_hdr->st_tx_dropped;
+}
+
+/**
+ * iccnet_tx_timeout - Handle transmit timeout
+ * @ndev: Network device structure
+ * @txq: Transmit queue index
+ *
+ * Called when a transmit timeout occurs. It restarts the transmit queue.
+ */
+static void iccnet_tx_timeout(struct net_device *ndev, unsigned int txq)
+{
+	netif_wake_queue(ndev);
+}
+
+/**
+ * iccnet_remove - Remove the network device
+ * @pdev: Platform device structure
+ *
+ * Unregisters and frees resources associated with the network device.
+ */
+static void iccnet_remove(struct platform_device *pdev)
+{
+	struct net_device *ndev = platform_get_drvdata(pdev);
+	struct iccnet *idev = netdev_priv(ndev);
+
+	iccnet_stop(ndev);
+	free_irq(ndev->irq, ndev);
+	unregister_netdev(ndev);
+	netif_napi_del(&idev->napi);
+	iounmap(idev->ipc_base);
+	iounmap(idev->base);
+	free_netdev(ndev);
+}
+
+static const struct net_device_ops iccnet_netdev_ops = {
+	.ndo_open			= iccnet_start,
+	.ndo_stop			= iccnet_stop,
+	.ndo_start_xmit			= iccnet_start_xmit,
+	.ndo_get_stats64		= iccnet_get_stats64,
+	.ndo_tx_timeout			= iccnet_tx_timeout
+};
+
+/**
+ * iccnet_setup - Initialize network device structure
+ * @ndev: Network device structure
+ *
+ * Sets up the network device parameters such as MTU, flags, and operations.
+ */
+static void iccnet_setup(struct net_device *ndev)
+{
+	ndev->header_ops = NULL; /* No header */
+	ndev->type = ARPHRD_RAWIP; /* Raw IP */
+	ndev->mtu = ICCNET_MAX_MTU;
+	ndev->min_mtu = ICCNET_MIN_MTU;
+	/* Point-to-Point link with no ARP, no multicast, and no broadcast */
+	ndev->flags = IFF_POINTOPOINT | IFF_NOARP;
+	ndev->flags &= ~(IFF_MULTICAST | IFF_BROADCAST);
+	ndev->netdev_ops = &iccnet_netdev_ops;
+}
+
+/**
+ * iccnet_probe - Probe function for the platform device
+ * @pdev: Platform device structure
+ *
+ * Initializes the network device, maps memory regions, and sets up the driver.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+static int iccnet_probe(struct platform_device *pdev)
+{
+	struct net_device *ndev;
+	struct resource *res;
+	struct iccnet *idev;
+	struct device *dev;
+	u64 ipc_csr_base;
+	u32 tx_offset = 0;
+	u32 rx_offset = 0;
+	u32 res_size;
+	u8 *membase;
+	int rc = 0;
+
+	dev = &pdev->dev;
+	if (!dev)
+		return -ENODEV;
+
+	ndev = alloc_netdev(sizeof(*idev), DRIVER_NAME, NET_NAME_PREDICTABLE,
+			    iccnet_setup);
+	if (!ndev)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, ndev);
+	SET_NETDEV_DEV(ndev, &pdev->dev);
+
+	idev = netdev_priv(ndev);
+	idev->ndev = ndev;
+
+	spin_lock_init(&idev->tx_lock);
+	spin_lock_init(&idev->rx_lock);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		netdev_err(ndev, "failed to get IORESOURCE_MEM\n");
+		rc = -ENODEV;
+		goto err;
+	}
+
+	res_size = resource_size(res);
+	if (res_size < (ICCNET_TX_RING_SIZE + ICCNET_RX_RING_SIZE)) {
+		netdev_err(ndev, "IORESOURCE_MEM size mismatch\n");
+		rc = -ENODEV;
+		goto err;
+	}
+
+	idev->base = ioremap_wc(res->start, res_size);
+	if (!idev->base) {
+		netdev_err(ndev, "could not map device\n");
+		rc = -ENOMEM;
+		goto err;
+	}
+
+	membase = idev->base;
+	if (!(is_acpi_node(dev->fwnode) || dev_of_node(dev))) {
+		netdev_err(ndev, "Can't get data from DT or ACPI\n");
+		rc = -ENXIO;
+		goto err;
+	}
+
+	rc = device_property_read_u32(dev, "rxring-offset", &rx_offset);
+	if (rc) {
+		netdev_err(ndev, "invalid rxring-offset\n");
+		goto err;
+	}
+
+	rc = device_property_read_u32(dev, "txring-offset", &tx_offset);
+	if (rc) {
+		netdev_err(ndev, "invalid txring-offset\n");
+		goto err;
+	}
+
+	rc = device_property_read_u64(dev, "ipc-reg", &ipc_csr_base);
+	if (rc) {
+		netdev_err(ndev, "invalid ipc-reg\n");
+		goto err;
+	}
+
+	idev->ipc_base =
+		ioremap(ipc_csr_base, ICCNET_IPC_REG_SZ);
+	if (!idev->ipc_base) {
+		netdev_err(ndev, "could not map IPC CSRs\n");
+		rc = -ENOMEM;
+		goto err;
+	}
+
+	idev->own_hdr = (struct iccnet_hdr *)(membase + tx_offset);
+	memset(idev->own_hdr, 0, ICCNET_HDR_SIZE);
+	idev->own_hdr->nelem = ICCNET_MAX_DSC_ELEM;
+	idev->tx_ring = (struct iccnet_dsc *)
+		(membase + tx_offset + ICCNET_HDR_SIZE);
+	memset(idev->tx_ring, 0,
+	       sizeof(struct iccnet_dsc) * ICCNET_MAX_DSC_ELEM);
+	idev->rx_ring = (struct iccnet_dsc *)
+		(membase + rx_offset + ICCNET_HDR_SIZE);
+	memset(idev->rx_ring, 0,
+	       sizeof(struct iccnet_dsc) * ICCNET_MAX_DSC_ELEM);
+	idev->peer_hdr = (struct iccnet_hdr *)(membase + rx_offset);
+	idev->peer_hdr->rx_idx = 0; idev->peer_hdr->tx_idx = 0;
+
+	ndev->irq = platform_get_irq(pdev, 0);
+	if (ndev->irq < 0)
+		goto err;
+
+	writel(ICCNET_IPC_CLEAR, idev->ipc_base + ICCNET_IPC_REG_CLR);
+	rc = request_irq(ndev->irq,
+			 iccnet_irqhandler, 0, ndev->name, ndev);
+	if (rc < 0) {
+		netdev_err(ndev, "error requesting interrupt\n");
+		goto err;
+	}
+
+	rc = register_netdev(ndev);
+	if (rc < 0)
+		goto err;
+
+	netif_napi_add(ndev, &idev->napi, iccnet_napi_poll);
+
+	idev->opstate = ICCNET_STS_STOPPED;
+
+	netdev_info(ndev, "MTU:%u IRQ:%d OF:0x%08x\n",
+		    ICCNET_FRAME_LEN, ndev->irq, tx_offset);
+
+	return 0;
+err:
+	if (ndev->irq)
+		free_irq(ndev->irq, ndev);
+	if (idev->base)
+		iounmap(idev->base);
+	if (idev->ipc_base)
+		iounmap(idev->ipc_base);
+	free_netdev(ndev);
+	return rc;
+}
+
+#ifdef CONFIG_OF
+static const struct of_device_id iccnet_of_match[] = {
+	{ .compatible = "intel,icc_net" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, iccnet_of_match);
+#endif
+
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id iccnet_acpi_match[] = {
+	{ "INTC10C4", 0 },
+	{ }
+};
+MODULE_DEVICE_TABLE(acpi, iccnet_acpi_match);
+#endif
+
+static struct platform_driver iccnet_driver = {
+	.probe	= iccnet_probe,
+	.remove = iccnet_remove,
+	.driver = {
+		.name = DRIVER_NAME,
+		.of_match_table = iccnet_of_match,
+		.acpi_match_table = ACPI_PTR(iccnet_acpi_match),
+	},
+};
+
+module_platform_driver(iccnet_driver);
+
+MODULE_DESCRIPTION("Intel(R) IPU ICCNET Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.43.0

