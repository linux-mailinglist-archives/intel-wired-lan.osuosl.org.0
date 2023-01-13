Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D3F66A60F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 277E861155;
	Fri, 13 Jan 2023 22:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 277E861155
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649498;
	bh=iIUjYPVTXEv1PNyUI6nteenCisC2FUXF5jMGA0LqdIg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HIafJVrDW9hNTZHEEk50tPv6RsZzhhpaIcTgU8TFIVIyuTRj6uCDlp6o1Vs7RqPCK
	 BAQL5xaDwRU0YSNBR7oTj8Nm0+Yod5DhB0p6cL0asNiywvn2bwiPQmO6uuVWdnYshH
	 BavXscXyOjQko1ghkbLA6h7zN71qLppQfo8fb3Gbqr9fw2A9mMmKD4A9j22qWNEu5j
	 vJb8piU9vCgaeI1JJgr3ZNyxuC/V4IfN3pBfc4A4YqzLUbLnU0dWVW3mir6mR++DHS
	 H86XEj6SE160AnIlxrdPRZ4CIbrA5njPr5R08fHiAfP5ROJpqQINVQxyZlTpMqypYY
	 dQT6CjKb6F9fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ek4yzz64ESlX; Fri, 13 Jan 2023 22:38:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE4AD607F6;
	Fri, 13 Jan 2023 22:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE4AD607F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 050DF1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88D7641B62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88D7641B62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MTRJEDINbL6U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAA1A41B51
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAA1A41B51
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354053"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354053"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859768"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859768"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:44 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:27 -0800
Message-Id: <20230113223735.2514364-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649464; x=1705185464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SDhekoD5KDVmVxlGQbIJptzHLu9p4A/EFegSHMiftlM=;
 b=VZ9AANHr1phq9tz5CAT/BfHe4WV0Ksg43DpgcKkIZrsNDF4mY77utMWV
 9m5MW5oUsqYMCPSAjiA17MyUm+5H8wNYCQRJcwt7k26oH/YYPZe1uXzaI
 dGcGNNdPp179fbHilyRChPqm+hgim/23UHobOvR94pFn0V4X7HZZX1Qye
 kFP3OsOOltrVhu7I5W9p1vqe4HIN6c2owxPg+C1X/T6zFxgDs0zc0BS6t
 mp5iUEDveAdWobriwjrGO8/RkraMm6Nh6rtlV4RTDNS3TcjmdRFGgryES
 DefVw1dmOm5zgml8BoKTAGcEqqdoLWsDehuY+mR5mVzQESqI0AM9wON/4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VZ9AANHr
Subject: [Intel-wired-lan] [PATCH net-next 05/13] ice: Fix RDMA latency
 issue by allowing write-combining
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The current method of mapping the entire BAR region as a single uncacheable
region does not allow RDMA to use write combining (WC). This results in
increased latency with RDMA.

To fix this, we initially planned to reduce the size of the map made by the
PF driver to include only up to the beginning of the RDMA space.
Unfortunately this will not work in the future as there are some hardware
features which use registers beyond the RDMA area. This includes Scalable
IOV, a virtualization feature being worked on currently.

Instead of simply reducing the size of the map, we need a solution which
will allow access to all areas of the address space while leaving the RDMA
area open to be mapped with write combining.

To allow for this, and fix the RMDA latency issue without blocking the
higher areas of the BAR, we need to create multiple separate memory maps.
Doing so will create a sparse mapping rather than a contiguous single area.

Replace the void *hw_addr with a special ice_hw_addr structure which
represents the multiple mappings as a flexible array.

Based on the available BAR size, map up to 3 regions:

 * The space before the RDMA section
 * The RDMA section which wants write combining behavior
 * The space after the RDMA section

Add an ice_get_hw_addr function which converts a register offset into the
appropriate kernel address based on which chunk it falls into. This does
cost us slightly more computation overhead for register access as we now
must check the table each access. However, we can pre-compute the addresses
where this would most be a problem.

With this change, the RDMA driver is now free to map the RDMA register
section as write-combined without impacting access to other device
registers used by the main PF driver.

Reported-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |   4 +-
 drivers/net/ethernet/intel/ice/ice_base.c    |   5 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c    | 176 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_osdep.h   |  48 ++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h    |   2 +-
 drivers/net/ethernet/intel/ice/ice_type.h    |   2 +-
 7 files changed, 217 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 51a1a89f7b5a..cd81974822cc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -75,7 +75,9 @@
 #include "ice_vsi_vlan_ops.h"
 #include "ice_gnss.h"
 
-#define ICE_BAR0		0
+#define ICE_BAR0			0
+#define ICE_BAR_RDMA_WC_START		0x0800000
+#define ICE_BAR_RDMA_WC_END		0x1000000
 #define ICE_REQ_DESC_MULTIPLE	32
 #define ICE_MIN_NUM_DESC	64
 #define ICE_MAX_NUM_DESC	8160
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 554095b25f44..332d5a1b326c 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -480,7 +480,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	ring->rx_offset = ice_rx_offset(ring);
 
 	/* init queue specific tail register */
-	ring->tail = hw->hw_addr + QRX_TAIL(pf_q);
+	ring->tail = ice_get_hw_addr(hw, QRX_TAIL(pf_q));
 	writel(0, ring->tail);
 
 	return 0;
@@ -790,8 +790,7 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	/* init queue specific tail reg. It is referred as
 	 * transmit comm scheduler queue doorbell.
 	 */
-	ring->tail = hw->hw_addr + QTX_COMM_DBELL(pf_q);
-
+	ring->tail = ice_get_hw_addr(hw, QTX_COMM_DBELL(pf_q));
 	if (IS_ENABLED(CONFIG_DCB))
 		tc = ring->dcb_tc;
 	else
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 263d59929602..231fda1c4513 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3085,7 +3085,8 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		/* this is to allow wr32 to have something to write to
 		 * during early allocation of Rx buffers
 		 */
-		rx_rings[i].tail = vsi->back->hw.hw_addr + PRTGEN_STATUS;
+		rx_rings[i].tail = ice_get_hw_addr(&vsi->back->hw,
+						   PRTGEN_STATUS);
 
 		err = ice_setup_rx_ring(&rx_rings[i]);
 		if (err)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 29cd77dd3812..5ddd9fe7514f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -596,6 +596,162 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	set_bit(ICE_PREPARED_FOR_RESET, pf->state);
 }
 
+/**
+ * ice_get_hw_addr - Get memory address for a given device register
+ * @hw: pointer to the HW struct
+ * @reg: the register to get address of
+ *
+ * Convert a register offset into the appropriate memory mapped kernel
+ * address.
+ *
+ * Returns the pointer address or an ERR_PTR on failure.
+ */
+void __iomem *ice_get_hw_addr(struct ice_hw *hw, resource_size_t reg)
+{
+	struct ice_hw_addr *hw_addr = (struct ice_hw_addr *)hw->hw_addr;
+	struct ice_hw_addr_map *map;
+	unsigned int i;
+
+	if (WARN_ON(!hw_addr))
+		return (void __iomem *)ERR_PTR(-EIO);
+
+	for (i = 0, map = hw_addr->maps; i < hw_addr->nr; i++, map++)
+		if (reg >= map->start && reg < map->end)
+			return (u8 __iomem *)map->addr + (reg - map->start);
+
+	WARN_ONCE(1, "Unable to map register address 0x%0llx to kernel address",
+		  reg);
+
+	return (void __iomem *)ERR_PTR(-EFAULT);
+}
+
+/**
+ * ice_map_hw_addr - map a region of device registers to memory
+ * @pdev: the PCI device
+ * @map: the address map structure
+ *
+ * Map the specified section of the hardware registers into memory, storing
+ * the memory mapped address in the provided structure.
+ *
+ * Returns 0 on success or an error code on failure.
+ */
+static int ice_map_hw_addr(struct pci_dev *pdev, struct ice_hw_addr_map *map)
+{
+	struct device *dev = &pdev->dev;
+	resource_size_t size, base;
+	void __iomem *addr;
+
+	if (WARN_ON(map->end <= map->start))
+		return -EIO;
+
+	size = map->end - map->start;
+	base = pci_resource_start(pdev, map->bar) + map->start;
+	addr = ioremap(base, size);
+	if (!addr) {
+		dev_err(dev, "%s: remap at offset %llu failed\n",
+			__func__, map->start);
+		return -EIO;
+	}
+
+	map->addr = addr;
+
+	return 0;
+}
+
+/**
+ * ice_map_all_hw_addr - Request and map PCI BAR memory
+ * @pf: pointer to the PF structure
+ *
+ * Request and reserve all PCI BAR regions. Memory map chunks of the PCI BAR
+ * 0 into a sparse memory map to allow the RDMA region to be mapped with write
+ * combining.
+ *
+ * Returns 0 on success or an error code on failure.
+ */
+static int ice_map_all_hw_addr(struct ice_pf *pf)
+{
+	struct pci_dev *pdev = pf->pdev;
+	struct device *dev = &pdev->dev;
+	struct ice_hw_addr *hw_addr;
+	resource_size_t bar_len;
+	unsigned int nr_maps;
+	int err;
+
+	bar_len = pci_resource_len(pdev, 0);
+	if (bar_len > ICE_BAR_RDMA_WC_END)
+		nr_maps = 2;
+	else
+		nr_maps = 1;
+
+	hw_addr = kzalloc(struct_size(hw_addr, maps, nr_maps), GFP_KERNEL);
+	if (!hw_addr)
+		return -ENOMEM;
+
+	hw_addr->nr = nr_maps;
+
+	err = pci_request_mem_regions(pdev, dev_driver_string(dev));
+	if (err) {
+		dev_err(dev, "pci_request_mem_regions failed, err %pe\n",
+			ERR_PTR(err));
+		goto err_free_hw_addr;
+	}
+
+	/* Map the start of the BAR as uncachable */
+	hw_addr->maps[0].bar = 0;
+	hw_addr->maps[0].start = 0;
+	hw_addr->maps[0].end = min_t(resource_size_t, bar_len,
+				     ICE_BAR_RDMA_WC_START);
+	err = ice_map_hw_addr(pdev, &hw_addr->maps[0]);
+	if (err)
+		goto err_release_mem_regions;
+
+	/* Map everything past the RDMA section as uncachable */
+	if (nr_maps > 1) {
+		hw_addr->maps[1].bar = 0;
+		hw_addr->maps[1].start = ICE_BAR_RDMA_WC_END;
+		hw_addr->maps[1].end = bar_len;
+		err = ice_map_hw_addr(pdev, &hw_addr->maps[1]);
+		if (err)
+			goto err_unmap_bar_start;
+	}
+
+	pf->hw.hw_addr = (typeof(pf->hw.hw_addr))hw_addr;
+
+	return 0;
+
+err_unmap_bar_start:
+	iounmap(hw_addr->maps[0].addr);
+err_release_mem_regions:
+	pci_release_mem_regions(pdev);
+err_free_hw_addr:
+	kfree(hw_addr);
+
+	return err;
+}
+
+/**
+ * ice_unmap_all_hw_addr - Release device register memory maps
+ * @pf: pointer to the PF structure
+ *
+ * Release all PCI memory maps and regions.
+ */
+static void ice_unmap_all_hw_addr(struct ice_pf *pf)
+{
+	struct ice_hw_addr *hw_addr = (struct ice_hw_addr *)pf->hw.hw_addr;
+	struct pci_dev *pdev = pf->pdev;
+	unsigned int i;
+
+	if (WARN_ON(!hw_addr))
+		return;
+
+	pf->hw.hw_addr = NULL;
+	for (i = 0; i < hw_addr->nr; i++)
+		iounmap(hw_addr->maps[i].addr);
+	kfree(hw_addr);
+
+	pci_release_mem_regions(pdev);
+}
+
 /**
  * ice_do_reset - Initiate one of many types of resets
  * @pf: board private structure
@@ -5072,19 +5228,10 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		return -EINVAL;
 	}
 
-	/* this driver uses devres, see
-	 * Documentation/driver-api/driver-model/devres.rst
-	 */
-	err = pcim_enable_device(pdev);
+	err = pci_enable_device(pdev);
 	if (err)
 		return err;
 
-	err = pcim_iomap_regions(pdev, BIT(ICE_BAR0), dev_driver_string(dev));
-	if (err) {
-		dev_err(dev, "BAR0 I/O map error %d\n", err);
-		return err;
-	}
-
 	pf = ice_allocate_pf(dev);
 	if (!pf)
 		return -ENOMEM;
@@ -5109,7 +5256,11 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	set_bit(ICE_SERVICE_DIS, pf->state);
 
 	hw = &pf->hw;
-	hw->hw_addr = pcim_iomap_table(pdev)[ICE_BAR0];
+
+	err = ice_map_all_hw_addr(pf);
+	if (err)
+		goto err_init_iomap_fail;
+
 	pci_save_state(pdev);
 
 	hw->back = pf;
@@ -5157,6 +5308,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 err_init_eth:
 	ice_deinit(pf);
 err_init:
+	ice_unmap_all_hw_addr(pf);
+err_init_iomap_fail:
 	pci_disable_pcie_error_reporting(pdev);
 	pci_disable_device(pdev);
 	return err;
@@ -5266,6 +5419,7 @@ static void ice_remove(struct pci_dev *pdev)
 	 */
 	ice_reset(&pf->hw, ICE_RESET_PFR);
 	pci_wait_for_pending_transaction(pdev);
+	ice_unmap_all_hw_addr(pf);
 	pci_disable_pcie_error_reporting(pdev);
 	pci_disable_device(pdev);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
index 82bc54fec7f3..4b16ff489c3a 100644
--- a/drivers/net/ethernet/intel/ice/ice_osdep.h
+++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
@@ -18,10 +18,49 @@
 #endif
 #include <net/udp_tunnel.h>
 
-#define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
-#define rd32(a, reg)		readl((a)->hw_addr + (reg))
-#define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
-#define rd64(a, reg)		readq((a)->hw_addr + (reg))
+struct ice_hw;
+
+/**
+ * struct ice_hw_addr_map - a single hardware address memory map
+ * @addr: iomem address of the start of this map
+ * @start: register offset at the start of this map, inclusive bound
+ * @end: register offset at the end of this map, exclusive bound
+ * @bar: the BAR this map is for
+ *
+ * Structure representing one map of a device BAR register space. Stored as
+ * part of the ice_hw_addr structure in an array ordered by the start offset.
+ *
+ * The addr value is an iomem address returned by ioremap. The start indicates
+ * the first register offset this map is valid for. The end indicates the end
+ * of the map, and is an exclusive bound.
+ */
+struct ice_hw_addr_map {
+	void __iomem *addr;
+	resource_size_t start;
+	resource_size_t end;
+	int bar;
+};
+
+/**
+ * struct ice_hw_addr - a list of hardware address memory maps
+ * @nr: the number of maps made
+ * @maps: flexible array of maps made during device initialization
+ *
+ * Structure representing a series of sparse maps of the device BAR 0 address
+ * space to kernel addresses. Users must convert a register offset to an iomem
+ * address using ice_get_hw_addr.
+ */
+struct ice_hw_addr {
+	unsigned int nr;
+	struct ice_hw_addr_map maps[];
+};
+
+void __iomem *ice_get_hw_addr(struct ice_hw *hw, resource_size_t reg);
+
+#define wr32(a, reg, value)	writel((value), ice_get_hw_addr((a), (reg)))
+#define rd32(a, reg)		readl(ice_get_hw_addr((a), (reg)))
+#define wr64(a, reg, value)	writeq((value), ice_get_hw_addr((a), (reg)))
+#define rd64(a, reg)		readq(ice_get_hw_addr((a), (reg)))
 
 #define ice_flush(a)		rd32((a), GLGEN_STAT)
 #define ICE_M(m, s)		((m) << (s))
@@ -32,7 +71,6 @@ struct ice_dma_mem {
 	size_t size;
 };
 
-struct ice_hw;
 struct device *ice_hw_to_dev(struct ice_hw *hw);
 
 #ifdef CONFIG_DYNAMIC_DEBUG
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 4fd0e5d0a313..3d2834673903 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -272,7 +272,7 @@ struct ice_rx_ring {
 	struct net_device *netdev;	/* netdev ring maps to */
 	struct ice_vsi *vsi;		/* Backreference to associated VSI */
 	struct ice_q_vector *q_vector;	/* Backreference to associated vector */
-	u8 __iomem *tail;
+	void __iomem *tail;
 	union {
 		struct ice_rx_buf *rx_buf;
 		struct xdp_buff **xdp_buf;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index e3f622cad425..f34975efeed7 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -821,7 +821,7 @@ struct ice_mbx_data {
 
 /* Port hardware description */
 struct ice_hw {
-	u8 __iomem *hw_addr;
+	void *hw_addr;
 	void *back;
 	struct ice_aqc_layer_props *layer_info;
 	struct ice_port_info *port_info;
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
