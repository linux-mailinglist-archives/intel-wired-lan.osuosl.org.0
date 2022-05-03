Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B5551897F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 18:16:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 787E6401F8;
	Tue,  3 May 2022 16:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EwSqxkew_w5A; Tue,  3 May 2022 16:16:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5104440155;
	Tue,  3 May 2022 16:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54FBF1BF342
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 50F7282C91
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nPDL2sGDr4fA for <intel-wired-lan@osuosl.org>;
 Tue,  3 May 2022 16:16:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 798A7826FB
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651594578; x=1683130578;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/f/EJx7khuTw/ZBQ+G1M6VysH1ifAW6UmL4eRU5hesw=;
 b=eGa3Vr9KnCFZTDnw1mg93GB2j4BXPkaaXghpsJenOT21q2PAR5TslHB1
 endM9+UCOU8GruMOn4O6+bnTkltrtcOX2NNqSCd+k2/WZsZbOGGJnprpU
 Vk2UxySAjd407qDhkhiFG9XozWPHb86jNBM5O2nmpUV3a/hXHr9eeXmZ4
 38t7IcT0CfPv4bHB5YUl/EQxcVhg3DrUgKWAOdqyAXrnAc5O7y2AZl0v8
 h1UmUUhYjZ8Qx5rfxSfcYygOA2dITcvnzDPDMFuQ/eTwHGWGZin7eYyF+
 4JidRCi9ArISGb8tMq0H2hOwxoov8PdStSAIPXFb+YuRwnl7LzpSYAOUL g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="328059091"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="328059091"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 09:16:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="653325552"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by FMSMGA003.fm.intel.com with ESMTP; 03 May 2022 09:16:16 -0700
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue,  3 May 2022 09:13:39 -0700
Message-Id: <20220503161339.2287738-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Expose RSS indirection
 tables for queue groups via ethtool
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sridhar Samudrala <sridhar.samudrala@intel.com>

When ADQ queue groups (TCs) are created via tc mqprio command,
RSS contexts and associated RSS indirection tables are configured
automatically per TC based on the queue ranges specified for
each traffic class.

For ex:
tc qdisc add dev enp175s0f0 root mqprio num_tc 3 map 0 1 2 \
	queues 2@0 8@2 4@10 hw 1 mode channel

will create 3 queue groups (TC 0-2) with queue ranges 2, 8 and 4
in 3 queue groups. Each queue group is associated with its
own RSS context and RSS indirection table.

Add support to expose RSS indirection tables for all ADQ queue
groups using ethtool RSS contexts interface.
	ethtool -x enp175s0f0 context <tc-num>

Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
v2:
-Updated commit message based on Paul's review comments.

---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 69 +++++++++++++++-----
 1 file changed, 51 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 476bd1c83c87..1e71b70f0e52 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3111,36 +3111,47 @@ static u32 ice_get_rxfh_indir_size(struct net_device *netdev)
 	return np->vsi->rss_table_size;
 }
 
-/**
- * ice_get_rxfh - get the Rx flow hash indirection table
- * @netdev: network interface device structure
- * @indir: indirection table
- * @key: hash key
- * @hfunc: hash function
- *
- * Reads the indirection table directly from the hardware.
- */
 static int
-ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
+ice_get_rxfh_context(struct net_device *netdev, u32 *indir,
+		     u8 *key, u8 *hfunc, u32 rss_context)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
-	int err, i;
+	u16 qcount, offset;
+	int err, num_tc, i;
 	u8 *lut;
 
+	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
+		netdev_warn(netdev, "RSS is not supported on this VSI!\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (rss_context && !ice_is_adq_active(pf)) {
+		netdev_err(netdev, "RSS context cannot be non-zero when ADQ is not configured.\n");
+		return -EINVAL;
+	}
+
+	qcount = vsi->mqprio_qopt.qopt.count[rss_context];
+	offset = vsi->mqprio_qopt.qopt.offset[rss_context];
+
+	if (rss_context && ice_is_adq_active(pf)) {
+		num_tc = vsi->mqprio_qopt.qopt.num_tc;
+		if (rss_context >= num_tc) {
+			netdev_err(netdev, "RSS context:%d  > num_tc:%d\n",
+				   rss_context, num_tc);
+			return -EINVAL;
+		}
+		/* Use channel VSI of given TC */
+		vsi = vsi->tc_map_vsi[rss_context];
+	}
+
 	if (hfunc)
 		*hfunc = ETH_RSS_HASH_TOP;
 
 	if (!indir)
 		return 0;
 
-	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
-		/* RSS not supported return error here */
-		netdev_warn(netdev, "RSS is not configured on this VSI!\n");
-		return -EIO;
-	}
-
 	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
 	if (!lut)
 		return -ENOMEM;
@@ -3153,14 +3164,35 @@ ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
 	if (err)
 		goto out;
 
+	if (ice_is_adq_active(pf)) {
+		for (i = 0; i < vsi->rss_table_size; i++)
+			indir[i] = offset + lut[i] % qcount;
+		goto out;
+	}
+
 	for (i = 0; i < vsi->rss_table_size; i++)
-		indir[i] = (u32)(lut[i]);
+		indir[i] = lut[i];
 
 out:
 	kfree(lut);
 	return err;
 }
 
+/**
+ * ice_get_rxfh - get the Rx flow hash indirection table
+ * @netdev: network interface device structure
+ * @indir: indirection table
+ * @key: hash key
+ * @hfunc: hash function
+ *
+ * Reads the indirection table directly from the hardware.
+ */
+static int
+ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
+{
+	return ice_get_rxfh_context(netdev, indir, key, hfunc, 0);
+}
+
 /**
  * ice_set_rxfh - set the Rx flow hash indirection table
  * @netdev: network interface device structure
@@ -4102,6 +4134,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_pauseparam		= ice_set_pauseparam,
 	.get_rxfh_key_size	= ice_get_rxfh_key_size,
 	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
+	.get_rxfh_context	= ice_get_rxfh_context,
 	.get_rxfh		= ice_get_rxfh,
 	.set_rxfh		= ice_set_rxfh,
 	.get_channels		= ice_get_channels,
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
