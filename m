Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +P/GIlpVnGkAEQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 14:25:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4848A176CA1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 14:25:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D2D9607CC;
	Mon, 23 Feb 2026 13:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uJOSqWJDWWQi; Mon, 23 Feb 2026 13:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D29C66073C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771853141;
	bh=87m90BdOlbCVCbazRyH726TTlayvIP6wGlah0q525/A=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VfcoK9CxHIFFbKsBNWe+/ZidtX5u9P6oY7SgSFp+6o6rlO+724eoKhXq4PXKtxwJe
	 dk7YuyoaPxpqBLssy3bCwjmerV4QltUAoPVTrfT3uxUxPDvR7YucQg/LZsfge6QZVc
	 317XcTNg34lVGLlkpftrQE2FTnlgzeve9fRyQfw5NFBzqJLIZ3DdRssmVCHXFI9lQR
	 ejAYvdshYEGDDVjVhmDw4gy+e6ShLIRwzHyVWQ6Uc3q3/1ARvmEV5UtY0K/BVTAaug
	 epzm8S+4wLDyp6LJrvOsZ7V9/Af23vHwBGhYiBV4nxcqJ2ZJ1x2g9JEv54wDBBLoqc
	 wNt9fGUBFgL6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D29C66073C;
	Mon, 23 Feb 2026 13:25:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DBE7C237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 13:25:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C149840A12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 13:25:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id al-7ruT6FO3L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 13:25:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D172C408CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D172C408CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D172C408CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 13:25:36 +0000 (UTC)
X-CSE-ConnectionGUID: hm7k9fnWTCu7zsyezgLyaw==
X-CSE-MsgGUID: poURiJW2S5yHRhhOYPlKQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="60421081"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="60421081"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:25:35 -0800
X-CSE-ConnectionGUID: qhMCWJpHSnazyPqUZFC/mQ==
X-CSE-MsgGUID: iBZk0vBrQy2MbjUHGKSngg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="253283464"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by orviesa001.jf.intel.com with ESMTP; 23 Feb 2026 05:25:31 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 23 Feb 2026 13:51:57 +0100
Message-ID: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771853136; x=1803389136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8GljxCdIML4JwqSHoSvnhyZ8D7LTSTtgjk4jLabrviM=;
 b=kA80m0ekNjp5c9hODYl7qvqS3JITzIzxJ13GwJmHTFQIy5y+2CKndDUk
 SUIeTyhTSB1gfqy2Re0+9YUlSQoasHfPyodV8JX1q/JbmwIYVNPui7Ko7
 E5HDeUkH6hUtardu/j6p+YndxnOco1FT5q14e24sA5vGm2+Ar7IlvSK1P
 PHn4kIeyzcQQEERB9xTQX8w1VJn7tpSL6oIL5xyZinM9M6gYV8cCY0idi
 HOQMhB7a428DXIQcfV+mYgR3/UGgVdFVClvSySqwAs2xL60nsef1OpvOt
 SbdWldB0+hN4NBFY9JL8e4XBITRt2RuB6eWs2lxbkC7SyGdrGyQKERd50
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kA80m0ek
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in
 alloc_etherdev_mqs()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4848A176CA1
X-Rspamd-Action: no action

When allocating netdevice using alloc_etherdev_mqs() the maximum
supported queues number should be passed. The vsi->alloc_txq/rxq is
storing current number of queues, not the maximum ones.

Use the same function for getting max Tx and Rx queues which is used
during ethtool -l call to set maximum number of queues during netdev
allocation.

Reproduction steps:
$ethtool -l $pf # says current 16, max 64
$ethtool -S $pf # fine
$ethtool -L $pf combined 40 # crash

[491187.472594] Call Trace:
[491187.472829]  <TASK>
[491187.473067]  netif_set_xps_queue+0x26/0x40
[491187.473305]  ice_vsi_cfg_txq+0x265/0x3d0 [ice]
[491187.473619]  ice_vsi_cfg_lan_txqs+0x68/0xa0 [ice]
[491187.473918]  ice_vsi_cfg_lan+0x2b/0xa0 [ice]
[491187.474202]  ice_vsi_open+0x71/0x170 [ice]
[491187.474484]  ice_vsi_recfg_qs+0x17f/0x230 [ice]
[491187.474759]  ? dev_get_min_mp_channel_count+0xab/0xd0
[491187.474987]  ice_set_channels+0x185/0x3d0 [ice]
[491187.475278]  ethnl_set_channels+0x26f/0x340

Fixes: ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 22 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 ----------------
 drivers/net/ethernet/intel/ice/ice_main.c    |  4 ++--
 3 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f6a56a864459..725b130dd3a2 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -839,6 +839,28 @@ static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
 	WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
 }
 
+/**
+ * ice_get_max_txq - return the maximum number of Tx queues for in a PF
+ * @pf: PF structure
+ *
+ * Return: maximum number of Tx queues
+ */
+static inline int ice_get_max_txq(struct ice_pf *pf)
+{
+	return min(num_online_cpus(), pf->hw.func_caps.common_cap.num_txq);
+}
+
+/**
+ * ice_get_max_rxq - return the maximum number of Rx queues for in a PF
+ * @pf: PF structure
+ *
+ * Return: maximum number of Rx queues
+ */
+static inline int ice_get_max_rxq(struct ice_pf *pf)
+{
+	return min(num_online_cpus(), pf->hw.func_caps.common_cap.num_rxq);
+}
+
 /**
  * ice_get_main_vsi - Get the PF VSI
  * @pf: PF instance
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a897a6b22495..a0b0416f5aea 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3780,24 +3780,6 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
 	return 0;
 }
 
-/**
- * ice_get_max_txq - return the maximum number of Tx queues for in a PF
- * @pf: PF structure
- */
-static int ice_get_max_txq(struct ice_pf *pf)
-{
-	return min(num_online_cpus(), pf->hw.func_caps.common_cap.num_txq);
-}
-
-/**
- * ice_get_max_rxq - return the maximum number of Rx queues for in a PF
- * @pf: PF structure
- */
-static int ice_get_max_rxq(struct ice_pf *pf)
-{
-	return min(num_online_cpus(), pf->hw.func_caps.common_cap.num_rxq);
-}
-
 /**
  * ice_get_combined_cnt - return the current number of combined channels
  * @vsi: PF VSI pointer
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index fa4095037be5..863ac81eebce 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4699,8 +4699,8 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	struct net_device *netdev;
 	u8 mac_addr[ETH_ALEN];
 
-	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
-				    vsi->alloc_rxq);
+	netdev = alloc_etherdev_mqs(sizeof(*np), ice_get_max_txq(vsi->back),
+				    ice_get_max_rxq(vsi->back));
 	if (!netdev)
 		return -ENOMEM;
 
-- 
2.49.0

