Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E23CC26568F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 03:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9CC33870F6;
	Fri, 11 Sep 2020 01:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XvwfEcEDfVoK; Fri, 11 Sep 2020 01:23:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C21D086DEE;
	Fri, 11 Sep 2020 01:23:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C85801BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C43108774B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eJE99oJUvZ63 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87FE587770
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
IronPort-SDR: ZMecXQ1TGkjrylJ9VVXlwEMZMS3GfuzdiT87b/IKZuGAyOsNDLCFB4Y0YBdA5XrXkZWDUZxio6
 kdE2ey9U7KFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="159613190"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="159613190"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
IronPort-SDR: PIRNvLINlUlEN7tcevrrDCbkLG8uzQRPIy0p06d6Rx8NDcSxtYj5oo30GdDsot2mqdwQqIoEEg
 T/0hW90eO+ug==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="449808148"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 10 Sep 2020 18:23:32 -0700
Message-Id: <20200911012337.14015-7-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200911012337.14015-1-jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH net-next v1 06/11]
 drivers/net/ethernet: clean up unused assignments
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As part of the W=1 compliation series, these lines all created
warnings about unused variables that were assigned a value. Most
of them are from register reads, but some are just picking up
a return value from a function and never doing anything with it.

The register reads should be OK, because the current
implementation of readl and friends will always execute even
without an lvalue.

When it makes sense, just remove the lvalue assignment and the
local. Other times, just remove the offending code, and
occasionally, just mark the variable as maybe unused since it
could be used in an ifdef or debug scenario.

Only compile tested with W=1 and an allyesconfig with all the
network drivers turned into modules (to try to test all options).

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/brocade/bna/bnad.c       |  7 ++--
 .../net/ethernet/cavium/liquidio/lio_main.c   |  4 +--
 .../ethernet/cavium/liquidio/octeon_device.c  | 13 ++++----
 drivers/net/ethernet/cortina/gemini.c         |  6 ++--
 drivers/net/ethernet/dec/tulip/de4x5.c        |  4 +--
 drivers/net/ethernet/dec/tulip/media.c        |  5 ---
 drivers/net/ethernet/dnet.c                   |  8 ++---
 drivers/net/ethernet/freescale/fec_ptp.c      |  3 +-
 drivers/net/ethernet/marvell/mvneta.c         |  7 ++--
 drivers/net/ethernet/marvell/pxa168_eth.c     |  3 +-
 drivers/net/ethernet/mellanox/mlx4/en_tx.c    |  2 +-
 drivers/net/ethernet/micrel/ksz884x.c         | 13 +++-----
 drivers/net/ethernet/microchip/lan743x_main.c |  9 ++----
 drivers/net/ethernet/neterion/vxge/vxge-reg.h |  4 +--
 .../net/ethernet/neterion/vxge/vxge-traffic.c | 32 +++++++------------
 .../ethernet/qlogic/qlcnic/qlcnic_83xx_hw.c   |  3 +-
 drivers/net/ethernet/sfc/falcon/farch.c       | 29 +++++++----------
 drivers/net/ethernet/sis/sis900.c             |  5 ++-
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |  4 +--
 .../net/ethernet/synopsys/dwc-xlgmac-common.c |  2 +-
 drivers/net/ethernet/ti/cpsw_new.c            |  2 --
 drivers/net/ethernet/ti/davinci_emac.c        |  5 ++-
 drivers/net/ethernet/ti/tlan.c                |  4 +--
 drivers/net/ethernet/via/via-velocity.c       | 13 --------
 24 files changed, 65 insertions(+), 122 deletions(-)

diff --git a/drivers/net/ethernet/brocade/bna/bnad.c b/drivers/net/ethernet/brocade/bna/bnad.c
index cc80bbbefe87..7e4e831d720f 100644
--- a/drivers/net/ethernet/brocade/bna/bnad.c
+++ b/drivers/net/ethernet/brocade/bna/bnad.c
@@ -3277,7 +3277,7 @@ bnad_change_mtu(struct net_device *netdev, int new_mtu)
 {
 	int err, mtu;
 	struct bnad *bnad = netdev_priv(netdev);
-	u32 rx_count = 0, frame, new_frame;
+	u32 frame, new_frame;
 
 	mutex_lock(&bnad->conf_mutex);
 
@@ -3293,12 +3293,9 @@ bnad_change_mtu(struct net_device *netdev, int new_mtu)
 		/* only when transition is over 4K */
 		if ((frame <= 4096 && new_frame > 4096) ||
 		    (frame > 4096 && new_frame <= 4096))
-			rx_count = bnad_reinit_rx(bnad);
+			bnad_reinit_rx(bnad);
 	}
 
-	/* rx_count > 0 - new rx created
-	 *	- Linux set err = 0 and return
-	 */
 	err = bnad_mtu_set(bnad, new_frame);
 	if (err)
 		err = -EBUSY;
diff --git a/drivers/net/ethernet/cavium/liquidio/lio_main.c b/drivers/net/ethernet/cavium/liquidio/lio_main.c
index 8e0ed01e7f03..737ae69eec6e 100644
--- a/drivers/net/ethernet/cavium/liquidio/lio_main.c
+++ b/drivers/net/ethernet/cavium/liquidio/lio_main.c
@@ -1,4 +1,4 @@
-/**********************************************************************
+/*
  * Author: Cavium, Inc.
  *
  * Contact: support@cavium.com
@@ -14,7 +14,7 @@
  * AS-IS and WITHOUT ANY WARRANTY; without even the implied warranty
  * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE, TITLE, or
  * NONINFRINGEMENT.  See the GNU General Public License for more details.
- ***********************************************************************/
+ */
 #include <linux/module.h>
 #include <linux/interrupt.h>
 #include <linux/pci.h>
diff --git a/drivers/net/ethernet/cavium/liquidio/octeon_device.c b/drivers/net/ethernet/cavium/liquidio/octeon_device.c
index ac32facaa427..1db29ffde3e5 100644
--- a/drivers/net/ethernet/cavium/liquidio/octeon_device.c
+++ b/drivers/net/ethernet/cavium/liquidio/octeon_device.c
@@ -1,4 +1,4 @@
-/**********************************************************************
+/*
  * Author: Cavium, Inc.
  *
  * Contact: support@cavium.com
@@ -14,7 +14,7 @@
  * AS-IS and WITHOUT ANY WARRANTY; without even the implied warranty
  * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE, TITLE, or
  * NONINFRINGEMENT.  See the GNU General Public License for more details.
- ***********************************************************************/
+ */
 #include <linux/pci.h>
 #include <linux/netdevice.h>
 #include <linux/vmalloc.h>
@@ -1324,7 +1324,7 @@ u64 lio_pci_readq(struct octeon_device *oct, u64 addr)
 {
 	u64 val64;
 	unsigned long flags;
-	u32 val32, addrhi;
+	u32 addrhi;
 
 	spin_lock_irqsave(&oct->pci_win_lock, flags);
 
@@ -1339,10 +1339,10 @@ u64 lio_pci_readq(struct octeon_device *oct, u64 addr)
 	writel(addrhi, oct->reg_list.pci_win_rd_addr_hi);
 
 	/* Read back to preserve ordering of writes */
-	val32 = readl(oct->reg_list.pci_win_rd_addr_hi);
+	readl(oct->reg_list.pci_win_rd_addr_hi);
 
 	writel(addr & 0xffffffff, oct->reg_list.pci_win_rd_addr_lo);
-	val32 = readl(oct->reg_list.pci_win_rd_addr_lo);
+	readl(oct->reg_list.pci_win_rd_addr_lo);
 
 	val64 = readq(oct->reg_list.pci_win_rd_data);
 
@@ -1355,7 +1355,6 @@ void lio_pci_writeq(struct octeon_device *oct,
 		    u64 val,
 		    u64 addr)
 {
-	u32 val32;
 	unsigned long flags;
 
 	spin_lock_irqsave(&oct->pci_win_lock, flags);
@@ -1365,7 +1364,7 @@ void lio_pci_writeq(struct octeon_device *oct,
 	/* The write happens when the LSB is written. So write MSB first. */
 	writel(val >> 32, oct->reg_list.pci_win_wr_data_hi);
 	/* Read the MSB to ensure ordering of writes. */
-	val32 = readl(oct->reg_list.pci_win_wr_data_hi);
+	readl(oct->reg_list.pci_win_wr_data_hi);
 
 	writel(val & 0xffffffff, oct->reg_list.pci_win_wr_data_lo);
 
diff --git a/drivers/net/ethernet/cortina/gemini.c b/drivers/net/ethernet/cortina/gemini.c
index 9dcf47f576c6..07e9dee03c98 100644
--- a/drivers/net/ethernet/cortina/gemini.c
+++ b/drivers/net/ethernet/cortina/gemini.c
@@ -509,7 +509,6 @@ static int gmac_init(struct net_device *netdev)
 		.rel_threshold = 0,
 	} };
 	union gmac_config0 tmp;
-	u32 val;
 
 	config0.bits.max_len = gmac_pick_rx_max_len(netdev->mtu);
 	tmp.bits32 = readl(port->gmac_base + GMAC_CONFIG0);
@@ -519,7 +518,7 @@ static int gmac_init(struct net_device *netdev)
 	writel(config2.bits32, port->gmac_base + GMAC_CONFIG2);
 	writel(config3.bits32, port->gmac_base + GMAC_CONFIG3);
 
-	val = readl(port->dma_base + GMAC_AHB_WEIGHT_REG);
+	readl(port->dma_base + GMAC_AHB_WEIGHT_REG);
 	writel(ahb_weight.bits32, port->dma_base + GMAC_AHB_WEIGHT_REG);
 
 	writel(hw_weigh.bits32,
@@ -2107,9 +2106,8 @@ static void gmac_get_ringparam(struct net_device *netdev,
 			       struct ethtool_ringparam *rp)
 {
 	struct gemini_ethernet_port *port = netdev_priv(netdev);
-	union gmac_config0 config0;
 
-	config0.bits32 = readl(port->gmac_base + GMAC_CONFIG0);
+	readl(port->gmac_base + GMAC_CONFIG0);
 
 	rp->rx_max_pending = 1 << 15;
 	rp->rx_mini_max_pending = 0;
diff --git a/drivers/net/ethernet/dec/tulip/de4x5.c b/drivers/net/ethernet/dec/tulip/de4x5.c
index f9dd1aa9f2da..683e328b5461 100644
--- a/drivers/net/ethernet/dec/tulip/de4x5.c
+++ b/drivers/net/ethernet/dec/tulip/de4x5.c
@@ -4925,11 +4925,11 @@ mii_get_oui(u_char phyaddr, u_long ioaddr)
 	u_char breg[2];
     } a;
     int i, r2, r3, ret=0;*/
-    int r2, r3;
+    int r2;
 
     /* Read r2 and r3 */
     r2 = mii_rd(MII_ID0, phyaddr, ioaddr);
-    r3 = mii_rd(MII_ID1, phyaddr, ioaddr);
+    mii_rd(MII_ID1, phyaddr, ioaddr);
                                                 /* SEEQ and Cypress way * /
     / * Shuffle r2 and r3 * /
     a.reg=0;
diff --git a/drivers/net/ethernet/dec/tulip/media.c b/drivers/net/ethernet/dec/tulip/media.c
index dcf21a36a9cf..011604787b8e 100644
--- a/drivers/net/ethernet/dec/tulip/media.c
+++ b/drivers/net/ethernet/dec/tulip/media.c
@@ -319,13 +319,8 @@ void tulip_select_media(struct net_device *dev, int startup)
 			break;
 		}
 		case 5: case 6: {
-			u16 setup[5];
-
 			new_csr6 = 0; /* FIXME */
 
-			for (i = 0; i < 5; i++)
-				setup[i] = get_u16(&p[i*2 + 1]);
-
 			if (startup && mtable->has_reset) {
 				struct medialeaf *rleaf = &mtable->mleaf[mtable->has_reset];
 				unsigned char *rst = rleaf->leafdata;
diff --git a/drivers/net/ethernet/dnet.c b/drivers/net/ethernet/dnet.c
index 3143df9a398c..48c6eb142dcc 100644
--- a/drivers/net/ethernet/dnet.c
+++ b/drivers/net/ethernet/dnet.c
@@ -507,12 +507,12 @@ static netdev_tx_t dnet_start_xmit(struct sk_buff *skb, struct net_device *dev)
 {
 
 	struct dnet *bp = netdev_priv(dev);
-	u32 tx_status, irq_enable;
 	unsigned int i, tx_cmd, wrsz;
 	unsigned long flags;
 	unsigned int *bufp;
+	u32 irq_enable;
 
-	tx_status = dnet_readl(bp, TX_STATUS);
+	dnet_readl(bp, TX_STATUS);
 
 	pr_debug("start_xmit: len %u head %p data %p\n",
 	       skb->len, skb->head, skb->data);
@@ -520,7 +520,7 @@ static netdev_tx_t dnet_start_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	spin_lock_irqsave(&bp->lock, flags);
 
-	tx_status = dnet_readl(bp, TX_STATUS);
+	dnet_readl(bp, TX_STATUS);
 
 	bufp = (unsigned int *)(((unsigned long) skb->data) & ~0x3UL);
 	wrsz = (u32) skb->len + 3;
@@ -542,7 +542,7 @@ static netdev_tx_t dnet_start_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	if (dnet_readl(bp, TX_FIFO_WCNT) > DNET_FIFO_TX_DATA_AF_TH) {
 		netif_stop_queue(dev);
-		tx_status = dnet_readl(bp, INTR_SRC);
+		dnet_readl(bp, INTR_SRC);
 		irq_enable = dnet_readl(bp, INTR_ENB);
 		irq_enable |= DNET_INTR_ENB_TX_FIFOAE;
 		dnet_writel(bp, irq_enable, INTR_ENB);
diff --git a/drivers/net/ethernet/freescale/fec_ptp.c b/drivers/net/ethernet/freescale/fec_ptp.c
index a0c1f4410306..0405a3975f3f 100644
--- a/drivers/net/ethernet/freescale/fec_ptp.c
+++ b/drivers/net/ethernet/freescale/fec_ptp.c
@@ -520,13 +520,12 @@ static void fec_time_keep(struct work_struct *work)
 {
 	struct delayed_work *dwork = to_delayed_work(work);
 	struct fec_enet_private *fep = container_of(dwork, struct fec_enet_private, time_keep);
-	u64 ns;
 	unsigned long flags;
 
 	mutex_lock(&fep->ptp_clk_mutex);
 	if (fep->ptp_clk_on) {
 		spin_lock_irqsave(&fep->tmreg_lock, flags);
-		ns = timecounter_read(&fep->tc);
+		timecounter_read(&fep->tc);
 		spin_unlock_irqrestore(&fep->tmreg_lock, flags);
 	}
 	mutex_unlock(&fep->ptp_clk_mutex);
diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index f75e05e899bb..4694242b7b3b 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -751,13 +751,12 @@ static void mvneta_txq_inc_put(struct mvneta_tx_queue *txq)
 static void mvneta_mib_counters_clear(struct mvneta_port *pp)
 {
 	int i;
-	u32 dummy;
 
 	/* Perform dummy reads from MIB counters */
 	for (i = 0; i < MVNETA_MIB_LATE_COLLISION; i += 4)
-		dummy = mvreg_read(pp, (MVNETA_MIB_COUNTERS_BASE + i));
-	dummy = mvreg_read(pp, MVNETA_RX_DISCARD_FRAME_COUNT);
-	dummy = mvreg_read(pp, MVNETA_OVERRUN_FRAME_COUNT);
+		mvreg_read(pp, (MVNETA_MIB_COUNTERS_BASE + i));
+	mvreg_read(pp, MVNETA_RX_DISCARD_FRAME_COUNT);
+	mvreg_read(pp, MVNETA_OVERRUN_FRAME_COUNT);
 }
 
 /* Get System Network Statistics */
diff --git a/drivers/net/ethernet/marvell/pxa168_eth.c b/drivers/net/ethernet/marvell/pxa168_eth.c
index faac94b2d5ff..d1e4d42e497d 100644
--- a/drivers/net/ethernet/marvell/pxa168_eth.c
+++ b/drivers/net/ethernet/marvell/pxa168_eth.c
@@ -1187,11 +1187,10 @@ static int pxa168_eth_stop(struct net_device *dev)
 
 static int pxa168_eth_change_mtu(struct net_device *dev, int mtu)
 {
-	int retval;
 	struct pxa168_eth_private *pep = netdev_priv(dev);
 
 	dev->mtu = mtu;
-	retval = set_port_config_ext(pep);
+	set_port_config_ext(pep);
 
 	if (!netif_running(dev))
 		return 0;
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_tx.c b/drivers/net/ethernet/mellanox/mlx4/en_tx.c
index 9dff7b086c9f..f69ff7fbf619 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_tx.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_tx.c
@@ -842,6 +842,7 @@ netdev_tx_t mlx4_en_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct mlx4_en_tx_desc *tx_desc;
 	struct mlx4_wqe_data_seg *data;
 	struct mlx4_en_tx_info *tx_info;
+	u32 __maybe_unused ring_cons;
 	int tx_ind;
 	int nr_txbb;
 	int desc_size;
@@ -855,7 +856,6 @@ netdev_tx_t mlx4_en_xmit(struct sk_buff *skb, struct net_device *dev)
 	bool stop_queue;
 	bool inline_ok;
 	u8 data_offset;
-	u32 ring_cons;
 	bool bf_ok;
 
 	tx_ind = skb_get_queue_mapping(skb);
diff --git a/drivers/net/ethernet/micrel/ksz884x.c b/drivers/net/ethernet/micrel/ksz884x.c
index bb646b65cc95..c84a1e8c918b 100644
--- a/drivers/net/ethernet/micrel/ksz884x.c
+++ b/drivers/net/ethernet/micrel/ksz884x.c
@@ -1649,8 +1649,7 @@ static inline void set_tx_len(struct ksz_desc *desc, u32 len)
 
 #define HW_DELAY(hw, reg)			\
 	do {					\
-		u16 dummy;			\
-		dummy = readw(hw->io + reg);	\
+		readw(hw->io + reg);		\
 	} while (0)
 
 /**
@@ -4978,7 +4977,6 @@ static inline int rx_proc(struct net_device *dev, struct ksz_hw* hw,
 	struct dev_info *hw_priv = priv->adapter;
 	struct ksz_dma_buf *dma_buf;
 	struct sk_buff *skb;
-	int rx_status;
 
 	/* Received length includes 4-byte CRC. */
 	packet_len = status.rx.frame_len - 4;
@@ -5014,7 +5012,7 @@ static inline int rx_proc(struct net_device *dev, struct ksz_hw* hw,
 	dev->stats.rx_bytes += packet_len;
 
 	/* Notify upper layer for received packet. */
-	rx_status = netif_rx(skb);
+	netif_rx(skb);
 
 	return 0;
 }
@@ -6509,7 +6507,6 @@ static void netdev_get_ethtool_stats(struct net_device *dev,
 	int i;
 	int n;
 	int p;
-	int rc;
 	u64 counter[TOTAL_PORT_COUNTER_NUM];
 
 	mutex_lock(&hw_priv->lock);
@@ -6530,19 +6527,19 @@ static void netdev_get_ethtool_stats(struct net_device *dev,
 
 	if (1 == port->mib_port_cnt && n < SWITCH_PORT_NUM) {
 		p = n;
-		rc = wait_event_interruptible_timeout(
+		wait_event_interruptible_timeout(
 			hw_priv->counter[p].counter,
 			2 == hw_priv->counter[p].read,
 			HZ * 1);
 	} else
 		for (i = 0, p = n; i < port->mib_port_cnt - n; i++, p++) {
 			if (0 == i) {
-				rc = wait_event_interruptible_timeout(
+				wait_event_interruptible_timeout(
 					hw_priv->counter[p].counter,
 					2 == hw_priv->counter[p].read,
 					HZ * 2);
 			} else if (hw->port_mib[p].cnt_ptr) {
-				rc = wait_event_interruptible_timeout(
+				wait_event_interruptible_timeout(
 					hw_priv->counter[p].counter,
 					2 == hw_priv->counter[p].read,
 					HZ * 1);
diff --git a/drivers/net/ethernet/microchip/lan743x_main.c b/drivers/net/ethernet/microchip/lan743x_main.c
index de93cc6ebc1a..4561021a5b1a 100644
--- a/drivers/net/ethernet/microchip/lan743x_main.c
+++ b/drivers/net/ethernet/microchip/lan743x_main.c
@@ -158,9 +158,8 @@ static void lan743x_tx_isr(void *context, u32 int_sts, u32 flags)
 	struct lan743x_tx *tx = context;
 	struct lan743x_adapter *adapter = tx->adapter;
 	bool enable_flag = true;
-	u32 int_en = 0;
 
-	int_en = lan743x_csr_read(adapter, INT_EN_SET);
+	lan743x_csr_read(adapter, INT_EN_SET);
 	if (flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR) {
 		lan743x_csr_write(adapter, INT_EN_CLR,
 				  INT_BIT_DMA_TX_(tx->channel_number));
@@ -1699,10 +1698,9 @@ static int lan743x_tx_napi_poll(struct napi_struct *napi, int weight)
 	bool start_transmitter = false;
 	unsigned long irq_flags = 0;
 	u32 ioc_bit = 0;
-	u32 int_sts = 0;
 
 	ioc_bit = DMAC_INT_BIT_TX_IOC_(tx->channel_number);
-	int_sts = lan743x_csr_read(adapter, DMAC_INT_STS);
+	lan743x_csr_read(adapter, DMAC_INT_STS);
 	if (tx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C)
 		lan743x_csr_write(adapter, DMAC_INT_STS, ioc_bit);
 	spin_lock_irqsave(&tx->ring_lock, irq_flags);
@@ -3038,7 +3036,6 @@ static int lan743x_pm_suspend(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct lan743x_adapter *adapter = netdev_priv(netdev);
-	int ret;
 
 	lan743x_pcidev_shutdown(pdev);
 
@@ -3051,7 +3048,7 @@ static int lan743x_pm_suspend(struct device *dev)
 		lan743x_pm_set_wol(adapter);
 
 	/* Host sets PME_En, put D3hot */
-	ret = pci_prepare_to_sleep(pdev);
+	pci_prepare_to_sleep(pdev);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/neterion/vxge/vxge-reg.h b/drivers/net/ethernet/neterion/vxge/vxge-reg.h
index 3e658b175947..3bb03b9c39b7 100644
--- a/drivers/net/ethernet/neterion/vxge/vxge-reg.h
+++ b/drivers/net/ethernet/neterion/vxge/vxge-reg.h
@@ -1,4 +1,4 @@
-/******************************************************************************
+/*
  * This software may be used and distributed according to the terms of
  * the GNU General Public License (GPL), incorporated herein by reference.
  * Drivers based on or derived from this code fall under the GPL and must
@@ -10,7 +10,7 @@
  * vxge-reg.h: Driver for Exar Corp's X3100 Series 10GbE PCIe I/O Virtualized
  *             Server Adapter.
  * Copyright(c) 2002-2010 Exar Corp.
- ******************************************************************************/
+ */
 #ifndef VXGE_REG_H
 #define VXGE_REG_H
 
diff --git a/drivers/net/ethernet/neterion/vxge/vxge-traffic.c b/drivers/net/ethernet/neterion/vxge/vxge-traffic.c
index 709d20d9938f..bd525e8eda10 100644
--- a/drivers/net/ethernet/neterion/vxge/vxge-traffic.c
+++ b/drivers/net/ethernet/neterion/vxge/vxge-traffic.c
@@ -30,8 +30,6 @@
  */
 enum vxge_hw_status vxge_hw_vpath_intr_enable(struct __vxge_hw_vpath_handle *vp)
 {
-	u64 val64;
-
 	struct __vxge_hw_virtualpath *vpath;
 	struct vxge_hw_vpath_reg __iomem *vp_reg;
 	enum vxge_hw_status status = VXGE_HW_OK;
@@ -84,7 +82,7 @@ enum vxge_hw_status vxge_hw_vpath_intr_enable(struct __vxge_hw_vpath_handle *vp)
 	__vxge_hw_pio_mem_write32_upper((u32)VXGE_HW_INTR_MASK_ALL,
 			&vp_reg->xgmac_vp_int_status);
 
-	val64 = readq(&vp_reg->vpath_general_int_status);
+	readq(&vp_reg->vpath_general_int_status);
 
 	/* Mask unwanted interrupts */
 
@@ -157,8 +155,6 @@ enum vxge_hw_status vxge_hw_vpath_intr_enable(struct __vxge_hw_vpath_handle *vp)
 enum vxge_hw_status vxge_hw_vpath_intr_disable(
 			struct __vxge_hw_vpath_handle *vp)
 {
-	u64 val64;
-
 	struct __vxge_hw_virtualpath *vpath;
 	enum vxge_hw_status status = VXGE_HW_OK;
 	struct vxge_hw_vpath_reg __iomem *vp_reg;
@@ -179,8 +175,6 @@ enum vxge_hw_status vxge_hw_vpath_intr_disable(
 		(u32)VXGE_HW_INTR_MASK_ALL,
 		&vp_reg->vpath_general_int_mask);
 
-	val64 = VXGE_HW_TIM_CLR_INT_EN_VP(1 << (16 - vpath->vp_id));
-
 	writeq(VXGE_HW_INTR_MASK_ALL, &vp_reg->kdfcctl_errors_mask);
 
 	__vxge_hw_pio_mem_write32_upper((u32)VXGE_HW_INTR_MASK_ALL,
@@ -487,9 +481,7 @@ void vxge_hw_device_unmask_all(struct __vxge_hw_device *hldev)
  */
 void vxge_hw_device_flush_io(struct __vxge_hw_device *hldev)
 {
-	u32 val32;
-
-	val32 = readl(&hldev->common_reg->titan_general_int_status);
+	readl(&hldev->common_reg->titan_general_int_status);
 }
 
 /**
@@ -1716,8 +1708,8 @@ void vxge_hw_fifo_txdl_free(struct __vxge_hw_fifo *fifo, void *txdlh)
 enum vxge_hw_status
 vxge_hw_vpath_mac_addr_add(
 	struct __vxge_hw_vpath_handle *vp,
-	u8 (macaddr)[ETH_ALEN],
-	u8 (macaddr_mask)[ETH_ALEN],
+	u8 *macaddr,
+	u8 *macaddr_mask,
 	enum vxge_hw_vpath_mac_addr_add_mode duplicate_mode)
 {
 	u32 i;
@@ -1779,8 +1771,8 @@ vxge_hw_vpath_mac_addr_add(
 enum vxge_hw_status
 vxge_hw_vpath_mac_addr_get(
 	struct __vxge_hw_vpath_handle *vp,
-	u8 (macaddr)[ETH_ALEN],
-	u8 (macaddr_mask)[ETH_ALEN])
+	u8 *macaddr,
+	u8 *macaddr_mask)
 {
 	u32 i;
 	u64 data1 = 0ULL;
@@ -1831,8 +1823,8 @@ vxge_hw_vpath_mac_addr_get(
 enum vxge_hw_status
 vxge_hw_vpath_mac_addr_get_next(
 	struct __vxge_hw_vpath_handle *vp,
-	u8 (macaddr)[ETH_ALEN],
-	u8 (macaddr_mask)[ETH_ALEN])
+	u8 *macaddr,
+	u8 *macaddr_mask)
 {
 	u32 i;
 	u64 data1 = 0ULL;
@@ -1884,8 +1876,8 @@ vxge_hw_vpath_mac_addr_get_next(
 enum vxge_hw_status
 vxge_hw_vpath_mac_addr_delete(
 	struct __vxge_hw_vpath_handle *vp,
-	u8 (macaddr)[ETH_ALEN],
-	u8 (macaddr_mask)[ETH_ALEN])
+	u8 *macaddr,
+	u8 *macaddr_mask)
 {
 	u32 i;
 	u64 data1 = 0ULL;
@@ -2375,7 +2367,6 @@ enum vxge_hw_status vxge_hw_vpath_poll_rx(struct __vxge_hw_ring *ring)
 	u8 t_code;
 	enum vxge_hw_status status = VXGE_HW_OK;
 	void *first_rxdh;
-	u64 val64 = 0;
 	int new_count = 0;
 
 	ring->cmpl_cnt = 0;
@@ -2403,8 +2394,7 @@ enum vxge_hw_status vxge_hw_vpath_poll_rx(struct __vxge_hw_ring *ring)
 			}
 			writeq(VXGE_HW_PRC_RXD_DOORBELL_NEW_QW_CNT(new_count),
 				&ring->vp_reg->prc_rxd_doorbell);
-			val64 =
-			  readl(&ring->common_reg->titan_general_int_status);
+			readl(&ring->common_reg->titan_general_int_status);
 			ring->doorbell_cnt = 0;
 		}
 	}
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_hw.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_hw.c
index 29b9c728a65e..fc490881cd03 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_hw.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_hw.c
@@ -658,11 +658,10 @@ int qlcnic_83xx_cam_lock(struct qlcnic_adapter *adapter)
 void qlcnic_83xx_cam_unlock(struct qlcnic_adapter *adapter)
 {
 	void __iomem *addr;
-	u32 val;
 	struct qlcnic_hardware_context *ahw = adapter->ahw;
 
 	addr = ahw->pci_base0 + QLC_83XX_SEM_UNLOCK_FUNC(ahw->pci_func);
-	val = readl(addr);
+	readl(addr);
 }
 
 void qlcnic_83xx_read_crb(struct qlcnic_adapter *adapter, char *buf,
diff --git a/drivers/net/ethernet/sfc/falcon/farch.c b/drivers/net/ethernet/sfc/falcon/farch.c
index fa1ade856b10..2c91792cec01 100644
--- a/drivers/net/ethernet/sfc/falcon/farch.c
+++ b/drivers/net/ethernet/sfc/falcon/farch.c
@@ -870,17 +870,12 @@ static u16 ef4_farch_handle_rx_not_ok(struct ef4_rx_queue *rx_queue,
 {
 	struct ef4_channel *channel = ef4_rx_queue_channel(rx_queue);
 	struct ef4_nic *efx = rx_queue->efx;
-	bool rx_ev_buf_owner_id_err, rx_ev_ip_hdr_chksum_err;
+	bool __maybe_unused rx_ev_buf_owner_id_err, rx_ev_ip_hdr_chksum_err;
 	bool rx_ev_tcp_udp_chksum_err, rx_ev_eth_crc_err;
 	bool rx_ev_frm_trunc, rx_ev_drib_nib, rx_ev_tobe_disc;
-	bool rx_ev_other_err, rx_ev_pause_frm;
-	bool rx_ev_hdr_type, rx_ev_mcast_pkt;
-	unsigned rx_ev_pkt_type;
+	bool rx_ev_pause_frm;
 
-	rx_ev_hdr_type = EF4_QWORD_FIELD(*event, FSF_AZ_RX_EV_HDR_TYPE);
-	rx_ev_mcast_pkt = EF4_QWORD_FIELD(*event, FSF_AZ_RX_EV_MCAST_PKT);
 	rx_ev_tobe_disc = EF4_QWORD_FIELD(*event, FSF_AZ_RX_EV_TOBE_DISC);
-	rx_ev_pkt_type = EF4_QWORD_FIELD(*event, FSF_AZ_RX_EV_PKT_TYPE);
 	rx_ev_buf_owner_id_err = EF4_QWORD_FIELD(*event,
 						 FSF_AZ_RX_EV_BUF_OWNER_ID_ERR);
 	rx_ev_ip_hdr_chksum_err = EF4_QWORD_FIELD(*event,
@@ -893,10 +888,6 @@ static u16 ef4_farch_handle_rx_not_ok(struct ef4_rx_queue *rx_queue,
 			  0 : EF4_QWORD_FIELD(*event, FSF_AA_RX_EV_DRIB_NIB));
 	rx_ev_pause_frm = EF4_QWORD_FIELD(*event, FSF_AZ_RX_EV_PAUSE_FRM_ERR);
 
-	/* Every error apart from tobe_disc and pause_frm */
-	rx_ev_other_err = (rx_ev_drib_nib | rx_ev_tcp_udp_chksum_err |
-			   rx_ev_buf_owner_id_err | rx_ev_eth_crc_err |
-			   rx_ev_frm_trunc | rx_ev_ip_hdr_chksum_err);
 
 	/* Count errors that are not in MAC stats.  Ignore expected
 	 * checksum errors during self-test. */
@@ -916,6 +907,13 @@ static u16 ef4_farch_handle_rx_not_ok(struct ef4_rx_queue *rx_queue,
 	 * to a FIFO overflow.
 	 */
 #ifdef DEBUG
+	{
+	/* Every error apart from tobe_disc and pause_frm */
+
+	bool rx_ev_other_err = (rx_ev_drib_nib | rx_ev_tcp_udp_chksum_err |
+				rx_ev_buf_owner_id_err | rx_ev_eth_crc_err |
+				rx_ev_frm_trunc | rx_ev_ip_hdr_chksum_err);
+
 	if (rx_ev_other_err && net_ratelimit()) {
 		netif_dbg(efx, rx_err, efx->net_dev,
 			  " RX queue %d unexpected RX event "
@@ -932,6 +930,7 @@ static u16 ef4_farch_handle_rx_not_ok(struct ef4_rx_queue *rx_queue,
 			  rx_ev_tobe_disc ? " [TOBE_DISC]" : "",
 			  rx_ev_pause_frm ? " [PAUSE]" : "");
 	}
+	}
 #endif
 
 	/* The frame must be discarded if any of these are true. */
@@ -1643,15 +1642,11 @@ void ef4_farch_rx_push_indir_table(struct ef4_nic *efx)
  */
 void ef4_farch_dimension_resources(struct ef4_nic *efx, unsigned sram_lim_qw)
 {
-	unsigned vi_count, buftbl_min;
+	unsigned vi_count;
 
 	/* Account for the buffer table entries backing the datapath channels
 	 * and the descriptor caches for those channels.
 	 */
-	buftbl_min = ((efx->n_rx_channels * EF4_MAX_DMAQ_SIZE +
-		       efx->n_tx_channels * EF4_TXQ_TYPES * EF4_MAX_DMAQ_SIZE +
-		       efx->n_channels * EF4_MAX_EVQ_SIZE)
-		      * sizeof(ef4_qword_t) / EF4_BUF_SIZE);
 	vi_count = max(efx->n_channels, efx->n_tx_channels * EF4_TXQ_TYPES);
 
 	efx->tx_dc_base = sram_lim_qw - vi_count * TX_DC_ENTRIES;
@@ -2532,7 +2527,6 @@ int ef4_farch_filter_remove_safe(struct ef4_nic *efx,
 	enum ef4_farch_filter_table_id table_id;
 	struct ef4_farch_filter_table *table;
 	unsigned int filter_idx;
-	struct ef4_farch_filter_spec *spec;
 	int rc;
 
 	table_id = ef4_farch_filter_id_table_id(filter_id);
@@ -2543,7 +2537,6 @@ int ef4_farch_filter_remove_safe(struct ef4_nic *efx,
 	filter_idx = ef4_farch_filter_id_index(filter_id);
 	if (filter_idx >= table->size)
 		return -ENOENT;
-	spec = &table->spec[filter_idx];
 
 	spin_lock_bh(&efx->filter_lock);
 	rc = ef4_farch_filter_remove(efx, table, filter_idx, priority);
diff --git a/drivers/net/ethernet/sis/sis900.c b/drivers/net/ethernet/sis/sis900.c
index cfa460c7db23..869b7618e2ba 100644
--- a/drivers/net/ethernet/sis/sis900.c
+++ b/drivers/net/ethernet/sis/sis900.c
@@ -789,10 +789,9 @@ static u16 sis900_default_phy(struct net_device * net_dev)
 static void sis900_set_capability(struct net_device *net_dev, struct mii_phy *phy)
 {
 	u16 cap;
-	u16 status;
 
-	status = mdio_read(net_dev, phy->phy_addr, MII_STATUS);
-	status = mdio_read(net_dev, phy->phy_addr, MII_STATUS);
+	mdio_read(net_dev, phy->phy_addr, MII_STATUS);
+	mdio_read(net_dev, phy->phy_addr, MII_STATUS);
 
 	cap = MII_NWAY_CSMA_CD |
 		((phy->status & MII_STAT_CAN_TX_FDX)? MII_NWAY_TX_FDX:0) |
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index c553047ff482..3fa24b310d20 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3630,15 +3630,15 @@ static unsigned int stmmac_rx_buf1_len(struct stmmac_priv *priv,
 				       struct dma_desc *p,
 				       int status, unsigned int len)
 {
-	int ret, coe = priv->hw->rx_csum;
 	unsigned int plen = 0, hlen = 0;
+	int coe = priv->hw->rx_csum;
 
 	/* Not first descriptor, buffer is always zero */
 	if (priv->sph && len)
 		return 0;
 
 	/* First descriptor, get split header length */
-	ret = stmmac_get_rx_header_len(priv, p, &hlen);
+	stmmac_get_rx_header_len(priv, p, &hlen);
 	if (priv->sph && hlen) {
 		priv->xstats.rx_split_hdr_pkt_n++;
 		return hlen;
diff --git a/drivers/net/ethernet/synopsys/dwc-xlgmac-common.c b/drivers/net/ethernet/synopsys/dwc-xlgmac-common.c
index eb1c6b03c329..df26cea45904 100644
--- a/drivers/net/ethernet/synopsys/dwc-xlgmac-common.c
+++ b/drivers/net/ethernet/synopsys/dwc-xlgmac-common.c
@@ -513,7 +513,7 @@ void xlgmac_get_all_hw_features(struct xlgmac_pdata *pdata)
 
 void xlgmac_print_all_hw_features(struct xlgmac_pdata *pdata)
 {
-	char *str = NULL;
+	char __maybe_unused *str = NULL;
 
 	XLGMAC_PR("\n");
 	XLGMAC_PR("=====================================================\n");
diff --git a/drivers/net/ethernet/ti/cpsw_new.c b/drivers/net/ethernet/ti/cpsw_new.c
index 8ed78577cded..f62f7fa7edae 100644
--- a/drivers/net/ethernet/ti/cpsw_new.c
+++ b/drivers/net/ethernet/ti/cpsw_new.c
@@ -1660,12 +1660,10 @@ static int cpsw_dl_switch_mode_set(struct devlink *dl, u32 id,
 		for (i = 0; i < cpsw->data.slaves; i++) {
 			struct cpsw_slave *slave = &cpsw->slaves[i];
 			struct net_device *sl_ndev = slave->ndev;
-			struct cpsw_priv *priv;
 
 			if (!sl_ndev)
 				continue;
 
-			priv = netdev_priv(sl_ndev);
 			if (switch_en)
 				vlan = cpsw->data.default_vlan;
 			else
diff --git a/drivers/net/ethernet/ti/davinci_emac.c b/drivers/net/ethernet/ti/davinci_emac.c
index de282531f68b..b36d0e412d23 100644
--- a/drivers/net/ethernet/ti/davinci_emac.c
+++ b/drivers/net/ethernet/ti/davinci_emac.c
@@ -1227,7 +1227,7 @@ static int emac_poll(struct napi_struct *napi, int budget)
 	struct net_device *ndev = priv->ndev;
 	struct device *emac_dev = &ndev->dev;
 	u32 status = 0;
-	u32 num_tx_pkts = 0, num_rx_pkts = 0;
+	u32 num_rx_pkts = 0;
 
 	/* Check interrupt vectors and call packet processing */
 	status = emac_read(EMAC_MACINVECTOR);
@@ -1238,8 +1238,7 @@ static int emac_poll(struct napi_struct *napi, int budget)
 		mask = EMAC_DM646X_MAC_IN_VECTOR_TX_INT_VEC;
 
 	if (status & mask) {
-		num_tx_pkts = cpdma_chan_process(priv->txchan,
-					      EMAC_DEF_TX_MAX_SERVICE);
+		cpdma_chan_process(priv->txchan, EMAC_DEF_TX_MAX_SERVICE);
 	} /* TX processing */
 
 	mask = EMAC_DM644X_MAC_IN_VECTOR_RX_INT_VEC;
diff --git a/drivers/net/ethernet/ti/tlan.c b/drivers/net/ethernet/ti/tlan.c
index 76a342ea3797..c7a6af632654 100644
--- a/drivers/net/ethernet/ti/tlan.c
+++ b/drivers/net/ethernet/ti/tlan.c
@@ -654,7 +654,6 @@ module_exit(tlan_exit);
 static void  __init tlan_eisa_probe(void)
 {
 	long	ioaddr;
-	int	rc = -ENODEV;
 	int	irq;
 	u16	device_id;
 
@@ -719,8 +718,7 @@ static void  __init tlan_eisa_probe(void)
 
 
 		/* Setup the newly found eisa adapter */
-		rc = tlan_probe1(NULL, ioaddr, irq,
-				 12, NULL);
+		tlan_probe1(NULL, ioaddr, irq, 12, NULL);
 		continue;
 
 out:
diff --git a/drivers/net/ethernet/via/via-velocity.c b/drivers/net/ethernet/via/via-velocity.c
index 6d2a31488a74..722b44604ea8 100644
--- a/drivers/net/ethernet/via/via-velocity.c
+++ b/drivers/net/ethernet/via/via-velocity.c
@@ -877,26 +877,13 @@ static u32 check_connection_type(struct mac_regs __iomem *regs)
  */
 static int velocity_set_media_mode(struct velocity_info *vptr, u32 mii_status)
 {
-	u32 curr_status;
 	struct mac_regs __iomem *regs = vptr->mac_regs;
 
 	vptr->mii_status = mii_check_media_mode(vptr->mac_regs);
-	curr_status = vptr->mii_status & (~VELOCITY_LINK_FAIL);
 
 	/* Set mii link status */
 	set_mii_flow_control(vptr);
 
-	/*
-	   Check if new status is consistent with current status
-	   if (((mii_status & curr_status) & VELOCITY_AUTONEG_ENABLE) ||
-	       (mii_status==curr_status)) {
-	   vptr->mii_status=mii_check_media_mode(vptr->mac_regs);
-	   vptr->mii_status=check_connection_type(vptr->mac_regs);
-	   netdev_info(vptr->netdev, "Velocity link no change\n");
-	   return 0;
-	   }
-	 */
-
 	if (PHYID_GET_PHY_ID(vptr->phy_id) == PHYID_CICADA_CS8201)
 		MII_REG_BITS_ON(AUXCR_MDPPS, MII_NCONFIG, vptr->mac_regs);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
