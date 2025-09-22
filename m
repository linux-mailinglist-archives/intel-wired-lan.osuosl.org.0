Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B65ACB8FF39
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Sep 2025 12:16:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 182F961767;
	Mon, 22 Sep 2025 10:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bdNSP18aUnoP; Mon, 22 Sep 2025 10:16:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 123356177B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758536166;
	bh=qtYP7RPnnCKUdnp6KT3Y5PSjKkUq5g8EUr8XaWWVCQs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p7u6vuuhSpQnWUvKhlE0yYP4ECXW3hFB9ds6+L12YYnFzYtzVGvC10+RtWIBpPd5k
	 Iz0uIdNTbSRKWZMkhUH5bO9FkyIJCFrd88ANCf1UDq2Hqjo7jIEc3mr/G+bsaghpD4
	 sZxFwtdmcHBFreYJR5f+i1+bQu8WKpYxyx1fAP+P4+IHaTv0tM0MOTPBOBCgTu/6hq
	 Mqqj9SSTfQJkkExTzbK13lblWSaOu9OttIdC0VAaw/kwThEVILdJM0jFci931AS3xO
	 ognlPqm0VvbFXwFqACOEw/wBwZmMHl8vQVgovShW1bM1qUAI54v2/cx8UkTBKH9q3p
	 XAnpl7eFzNs4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 123356177B;
	Mon, 22 Sep 2025 10:16:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 79F812008
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:16:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5ADE8843D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:16:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6oCKDVPRfher for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Sep 2025 10:16:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b0; helo=out-176.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A5C6843D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A5C6843D3
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b0])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A5C6843D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:16:00 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>,
 Carolina Jubran <cjubran@nvidia.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Date: Mon, 22 Sep 2025 10:07:37 +0000
Message-ID: <20250922100741.2167024-2-vadim.fedorenko@linux.dev>
In-Reply-To: <20250922100741.2167024-1-vadim.fedorenko@linux.dev>
References: <20250922100741.2167024-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758536157;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qtYP7RPnnCKUdnp6KT3Y5PSjKkUq5g8EUr8XaWWVCQs=;
 b=v1Vu9RFtmt2l67chHJ/ytBdN9ljlhL7BmnyShmUmW99LATE6Y6laA00qnzoACcwkZ/ldfB
 cBw5xx6R+gniiwlg85zyHEMyarzyx+jJW/XPB7UvfwRp0GzwvdU75YtAhud5nzpH5CncPl
 7yIKIwcyhnXpR5BDth2V8QJlqfsYrMc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=v1Vu9RFt
Subject: [Intel-wired-lan] [PATCH net-next v5 1/5] ethtool: add FEC bins
 histogram report
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

IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
clarifies it a bit further. Implement reporting interface through as
addition to FEC stats available in ethtool. Drivers can leave bin
counter uninitialized if per-lane values are provided. In this case the
core will recalculate summ for the bin.

Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
---
 Documentation/netlink/specs/ethtool.yaml      | 26 +++++++
 Documentation/networking/ethtool-netlink.rst  |  5 ++
 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |  3 +-
 .../ethernet/fungible/funeth/funeth_ethtool.c |  3 +-
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  3 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 +-
 .../marvell/octeontx2/nic/otx2_ethtool.c      |  3 +-
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  3 +-
 .../net/ethernet/meta/fbnic/fbnic_ethtool.c   |  3 +-
 drivers/net/ethernet/sfc/ethtool.c            |  3 +-
 drivers/net/ethernet/sfc/siena/ethtool.c      |  3 +-
 drivers/net/netdevsim/ethtool.c               | 25 ++++++-
 include/linux/ethtool.h                       | 25 ++++++-
 .../uapi/linux/ethtool_netlink_generated.h    | 11 +++
 net/ethtool/fec.c                             | 75 ++++++++++++++++++-
 15 files changed, 182 insertions(+), 13 deletions(-)

diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
index 7a7594713f1f..6ad4c1514501 100644
--- a/Documentation/netlink/specs/ethtool.yaml
+++ b/Documentation/netlink/specs/ethtool.yaml
@@ -1219,6 +1219,27 @@ attribute-sets:
         name: udp-ports
         type: nest
         nested-attributes: tunnel-udp
+  -
+    name: fec-hist
+    attr-cnt-name: --ethtool-a-fec-hist-cnt
+    attributes:
+      -
+        name: bin-low
+        type: u32
+        doc: Low bound of FEC bin (inclusive)
+      -
+        name: bin-high
+        type: u32
+        doc: High bound of FEC bin (inclusive)
+      -
+        name: bin-val
+        type: uint
+        doc: Error count in the bin (optional if per-lane values exist)
+      -
+        name: bin-val-per-lane
+        type: binary
+        sub-type: u64
+        doc: An array of per-lane error counters in the bin (optional)
   -
     name: fec-stat
     attr-cnt-name: __ethtool-a-fec-stat-cnt
@@ -1242,6 +1263,11 @@ attribute-sets:
         name: corr-bits
         type: binary
         sub-type: u64
+      -
+        name: hist
+        type: nest
+        multi-attr: True
+        nested-attributes: fec-hist
   -
     name: fec
     attr-cnt-name: __ethtool-a-fec-cnt
diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
index ab20c644af24..b270886c5f5d 100644
--- a/Documentation/networking/ethtool-netlink.rst
+++ b/Documentation/networking/ethtool-netlink.rst
@@ -1541,6 +1541,11 @@ Drivers fill in the statistics in the following structure:
 .. kernel-doc:: include/linux/ethtool.h
     :identifiers: ethtool_fec_stats
 
+Statistics may have FEC bins histogram attribute ``ETHTOOL_A_FEC_STAT_HIST``
+as defined in IEEE 802.3ck-2022 and 802.3df-2024. Nested attributes will have
+the range of FEC errors in the bin (inclusive) and the amount of error events
+in the bin.
+
 FEC_SET
 =======
 
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
index be32ef8f5c96..41686a6f84b5 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
@@ -3208,7 +3208,8 @@ static int bnxt_get_fecparam(struct net_device *dev,
 }
 
 static void bnxt_get_fec_stats(struct net_device *dev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       struct ethtool_fec_hist *hist)
 {
 	struct bnxt *bp = netdev_priv(dev);
 	u64 *rx;
diff --git a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
index ba83dbf4ed22..1966dba512f8 100644
--- a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
+++ b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
@@ -930,7 +930,8 @@ static void fun_get_rmon_stats(struct net_device *netdev,
 }
 
 static void fun_get_fec_stats(struct net_device *netdev,
-			      struct ethtool_fec_stats *stats)
+			      struct ethtool_fec_stats *stats,
+			      struct ethtool_fec_hist *hist)
 {
 	const struct funeth_priv *fp = netdev_priv(netdev);
 
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
index a752d0e3db3a..a5eefa28454c 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
@@ -1659,7 +1659,8 @@ static void hns3_set_msglevel(struct net_device *netdev, u32 msg_level)
 }
 
 static void hns3_get_fec_stats(struct net_device *netdev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       struct ethtool_fec_hist *hist)
 {
 	struct hnae3_handle *handle = hns3_get_handle(netdev);
 	struct hnae3_ae_dev *ae_dev = hns3_get_ae_dev(handle);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 55e0f2c6af9e..62d3cfca350c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4620,10 +4620,12 @@ static int ice_get_port_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
  * ice_get_fec_stats - returns FEC correctable, uncorrectable stats per netdev
  * @netdev: network interface device structure
  * @fec_stats: buffer to hold FEC statistics for given port
+ * @hist: buffer to put FEC histogram statistics for given port
  *
  */
 static void ice_get_fec_stats(struct net_device *netdev,
-			      struct ethtool_fec_stats *fec_stats)
+			      struct ethtool_fec_stats *fec_stats,
+			      struct ethtool_fec_hist *hist)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_port_topology port_topology;
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
index 998c734ff839..b90e23dc49de 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
@@ -1283,7 +1283,8 @@ static int otx2_set_link_ksettings(struct net_device *netdev,
 }
 
 static void otx2_get_fec_stats(struct net_device *netdev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       struct ethtool_fec_hist *hist)
 {
 	struct otx2_nic *pfvf = netdev_priv(netdev);
 	struct cgx_fw_data *rsp;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
index d507366d773e..bcc3bbb78cc9 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
@@ -1927,7 +1927,8 @@ static int mlx5e_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 }
 
 static void mlx5e_get_fec_stats(struct net_device *netdev,
-				struct ethtool_fec_stats *fec_stats)
+				struct ethtool_fec_stats *fec_stats,
+				struct ethtool_fec_hist *hist)
 {
 	struct mlx5e_priv *priv = netdev_priv(netdev);
 
diff --git a/drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c b/drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c
index b4ff98ee2051..b6e5bdd509f1 100644
--- a/drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c
+++ b/drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c
@@ -1659,7 +1659,8 @@ fbnic_get_pause_stats(struct net_device *netdev,
 
 static void
 fbnic_get_fec_stats(struct net_device *netdev,
-		    struct ethtool_fec_stats *fec_stats)
+		    struct ethtool_fec_stats *fec_stats,
+		    struct ethtool_fec_hist *hist)
 {
 	struct fbnic_net *fbn = netdev_priv(netdev);
 	struct fbnic_phy_stats *phy_stats;
diff --git a/drivers/net/ethernet/sfc/ethtool.c b/drivers/net/ethernet/sfc/ethtool.c
index 23c6a7df78d0..18fe5850a978 100644
--- a/drivers/net/ethernet/sfc/ethtool.c
+++ b/drivers/net/ethernet/sfc/ethtool.c
@@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device *net_dev,
 }
 
 static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
-				      struct ethtool_fec_stats *fec_stats)
+				      struct ethtool_fec_stats *fec_stats,
+				      struct ethtool_fec_hist *hist)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 
diff --git a/drivers/net/ethernet/sfc/siena/ethtool.c b/drivers/net/ethernet/sfc/siena/ethtool.c
index 994909789bfe..8c3ebd0617fb 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool.c
+++ b/drivers/net/ethernet/sfc/siena/ethtool.c
@@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device *net_dev,
 }
 
 static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
-				      struct ethtool_fec_stats *fec_stats)
+				      struct ethtool_fec_stats *fec_stats,
+				      struct ethtool_fec_hist *hist)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 
diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
index f631d90c428a..36a201533aae 100644
--- a/drivers/net/netdevsim/ethtool.c
+++ b/drivers/net/netdevsim/ethtool.c
@@ -165,11 +165,34 @@ nsim_set_fecparam(struct net_device *dev, struct ethtool_fecparam *fecparam)
 	return 0;
 }
 
+static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
+	{ 0, 0},
+	{ 1, 3},
+	{ 4, 7},
+	{ 0, 0}
+};
+
 static void
-nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
+nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
+		   struct ethtool_fec_hist *hist)
 {
+	struct ethtool_fec_hist_value *values = hist->values;
+
+	hist->ranges = netdevsim_fec_ranges;
+
 	fec_stats->corrected_blocks.total = 123;
 	fec_stats->uncorrectable_blocks.total = 4;
+
+	values[0].per_lane[0] = 125;
+	values[0].per_lane[1] = 120;
+	values[0].per_lane[2] = 100;
+	values[0].per_lane[3] = 100;
+	values[1].sum = 12;
+	values[2].sum = 2;
+	values[2].per_lane[0] = 2;
+	values[2].per_lane[1] = 0;
+	values[2].per_lane[2] = 0;
+	values[2].per_lane[3] = 0;
 }
 
 static int nsim_get_ts_info(struct net_device *dev,
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index c869b7f8bce8..c2d8b4ec62eb 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -492,7 +492,29 @@ struct ethtool_pause_stats {
 };
 
 #define ETHTOOL_MAX_LANES	8
+/**
+ * IEEE 802.3ck/df defines 16 bins for FEC histogram plus one more for
+ * the end-of-list marker, total 17 items
+ */
+#define ETHTOOL_FEC_HIST_MAX	17
+/**
+ * struct ethtool_fec_hist_range - error bits range for FEC histogram
+ * statistics
+ * @low: low bound of the bin (inclusive)
+ * @high: high bound of the bin (inclusive)
+ */
+struct ethtool_fec_hist_range {
+	u16 low;
+	u16 high;
+};
 
+struct ethtool_fec_hist {
+	struct ethtool_fec_hist_value {
+		u64 sum;
+		u64 per_lane[ETHTOOL_MAX_LANES];
+	} values[ETHTOOL_FEC_HIST_MAX];
+	const struct ethtool_fec_hist_range *ranges;
+};
 /**
  * struct ethtool_fec_stats - statistics for IEEE 802.3 FEC
  * @corrected_blocks: number of received blocks corrected by FEC
@@ -1214,7 +1236,8 @@ struct ethtool_ops {
 	int	(*set_link_ksettings)(struct net_device *,
 				      const struct ethtool_link_ksettings *);
 	void	(*get_fec_stats)(struct net_device *dev,
-				 struct ethtool_fec_stats *fec_stats);
+				 struct ethtool_fec_stats *fec_stats,
+				 struct ethtool_fec_hist *hist);
 	int	(*get_fecparam)(struct net_device *,
 				      struct ethtool_fecparam *);
 	int	(*set_fecparam)(struct net_device *,
diff --git a/include/uapi/linux/ethtool_netlink_generated.h b/include/uapi/linux/ethtool_netlink_generated.h
index e3b8813465d7..fd70f15666c1 100644
--- a/include/uapi/linux/ethtool_netlink_generated.h
+++ b/include/uapi/linux/ethtool_netlink_generated.h
@@ -561,12 +561,23 @@ enum {
 	ETHTOOL_A_TUNNEL_INFO_MAX = (__ETHTOOL_A_TUNNEL_INFO_CNT - 1)
 };
 
+enum {
+	ETHTOOL_A_FEC_HIST_BIN_LOW = 1,
+	ETHTOOL_A_FEC_HIST_BIN_HIGH,
+	ETHTOOL_A_FEC_HIST_BIN_VAL,
+	ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
+
+	__ETHTOOL_A_FEC_HIST_CNT,
+	ETHTOOL_A_FEC_HIST_MAX = (__ETHTOOL_A_FEC_HIST_CNT - 1)
+};
+
 enum {
 	ETHTOOL_A_FEC_STAT_UNSPEC,
 	ETHTOOL_A_FEC_STAT_PAD,
 	ETHTOOL_A_FEC_STAT_CORRECTED,
 	ETHTOOL_A_FEC_STAT_UNCORR,
 	ETHTOOL_A_FEC_STAT_CORR_BITS,
+	ETHTOOL_A_FEC_STAT_HIST,
 
 	__ETHTOOL_A_FEC_STAT_CNT,
 	ETHTOOL_A_FEC_STAT_MAX = (__ETHTOOL_A_FEC_STAT_CNT - 1)
diff --git a/net/ethtool/fec.c b/net/ethtool/fec.c
index e7d3f2c352a3..f37a1fe20355 100644
--- a/net/ethtool/fec.c
+++ b/net/ethtool/fec.c
@@ -17,6 +17,7 @@ struct fec_reply_data {
 		u64 stats[1 + ETHTOOL_MAX_LANES];
 		u8 cnt;
 	} corr, uncorr, corr_bits;
+	struct ethtool_fec_hist fec_stat_hist;
 };
 
 #define FEC_REPDATA(__reply_base) \
@@ -113,7 +114,10 @@ static int fec_prepare_data(const struct ethnl_req_info *req_base,
 		struct ethtool_fec_stats stats;
 
 		ethtool_stats_init((u64 *)&stats, sizeof(stats) / 8);
-		dev->ethtool_ops->get_fec_stats(dev, &stats);
+		ethtool_stats_init((u64 *)data->fec_stat_hist.values,
+				   sizeof(data->fec_stat_hist.values) / 8);
+		dev->ethtool_ops->get_fec_stats(dev, &stats,
+						&data->fec_stat_hist);
 
 		fec_stats_recalc(&data->corr, &stats.corrected_blocks);
 		fec_stats_recalc(&data->uncorr, &stats.uncorrectable_blocks);
@@ -157,13 +161,77 @@ static int fec_reply_size(const struct ethnl_req_info *req_base,
 	len += nla_total_size(sizeof(u8)) +	/* _FEC_AUTO */
 	       nla_total_size(sizeof(u32));	/* _FEC_ACTIVE */
 
-	if (req_base->flags & ETHTOOL_FLAG_STATS)
+	if (req_base->flags & ETHTOOL_FLAG_STATS) {
 		len += 3 * nla_total_size_64bit(sizeof(u64) *
 						(1 + ETHTOOL_MAX_LANES));
+		/* add FEC bins information */
+		len += (nla_total_size(0) +  /* _A_FEC_HIST */
+			nla_total_size(4) +  /* _A_FEC_HIST_BIN_LOW */
+			nla_total_size(4) +  /* _A_FEC_HIST_BIN_HI */
+			/* _A_FEC_HIST_BIN_VAL + per-lane values */
+			nla_total_size_64bit(sizeof(u64)) +
+			nla_total_size_64bit(sizeof(u64) * ETHTOOL_MAX_LANES)) *
+			ETHTOOL_FEC_HIST_MAX;
+	}
 
 	return len;
 }
 
+static int fec_put_hist(struct sk_buff *skb,
+			const struct ethtool_fec_hist *hist)
+{
+	const struct ethtool_fec_hist_range *ranges = hist->ranges;
+	const struct ethtool_fec_hist_value *values = hist->values;
+	struct nlattr *nest;
+	int i, j;
+	u64 sum;
+
+	if (!ranges)
+		return 0;
+
+	for (i = 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
+		if (i && !ranges[i].low && !ranges[i].high)
+			break;
+
+		if (WARN_ON_ONCE(values[i].sum == ETHTOOL_STAT_NOT_SET &&
+				 values[i].per_lane[0] == ETHTOOL_STAT_NOT_SET))
+			break;
+
+		nest = nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
+		if (!nest)
+			return -EMSGSIZE;
+
+		if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
+				ranges[i].low) ||
+		    nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
+				ranges[i].high))
+			goto err_cancel_hist;
+		sum = 0;
+		for (j = 0; j < ETHTOOL_MAX_LANES; j++) {
+			if (values[i].per_lane[j] == ETHTOOL_STAT_NOT_SET)
+				break;
+			sum += values[i].per_lane[j];
+		}
+		if (nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
+				 values[i].sum == ETHTOOL_STAT_NOT_SET ?
+				 sum : values[i].sum))
+			goto err_cancel_hist;
+		if (j && nla_put_64bit(skb, ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
+				       sizeof(u64) * j,
+				       values[i].per_lane,
+				       ETHTOOL_A_FEC_STAT_PAD))
+			goto err_cancel_hist;
+
+		nla_nest_end(skb, nest);
+	}
+
+	return 0;
+
+err_cancel_hist:
+	nla_nest_cancel(skb, nest);
+	return -EMSGSIZE;
+}
+
 static int fec_put_stats(struct sk_buff *skb, const struct fec_reply_data *data)
 {
 	struct nlattr *nest;
@@ -183,6 +251,9 @@ static int fec_put_stats(struct sk_buff *skb, const struct fec_reply_data *data)
 			  data->corr_bits.stats, ETHTOOL_A_FEC_STAT_PAD))
 		goto err_cancel;
 
+	if (fec_put_hist(skb, &data->fec_stat_hist))
+		goto err_cancel;
+
 	nla_nest_end(skb, nest);
 	return 0;
 
-- 
2.47.3

