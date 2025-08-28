Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5608B3995E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 12:16:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63B5782D17;
	Thu, 28 Aug 2025 10:16:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id um0sVrBtND1g; Thu, 28 Aug 2025 10:16:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CB9782C04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756376201;
	bh=WCi3E0ch9uI52cHcKsUCMBBr1GgmViVjFSUbVA2sZgs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eMeMlkXCRVheP+MipzUaTyc6OabFQETv+Q1Ho074p3OGuXjjWykDO/Q12g+/yzezp
	 Ph4BQLtp5LbZXwJkBN3XU5SvvOYw8vu+DxJMWZh5tUYiraokf6QOapftY3d2cXP4pe
	 KUefr/aLCvkSoWqyxV2hSY1UHFqqsSHmhL3wsN8gYTvBUHzVpuCcLuvUBfK2EOnyZk
	 2UZS+rxfagpclAq8yDDvxv3ghRxC5G0I/1FDvw/fnKOpKAbBQtifbOoa+gTa8S7DyO
	 mxrXDJHLVNyMdVGSIa3LykZIoCOkJzvP8lALJuV9VfIVQanGNLKQmHO4G2DzC2Io34
	 025Kk7Id5Ba6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CB9782C04;
	Thu, 28 Aug 2025 10:16:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DBA181B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF39082B51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dd6hRh-sL_VD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 10:16:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F40E482C04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F40E482C04
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F40E482C04
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:38 +0000 (UTC)
X-CSE-ConnectionGUID: xSMEAMM+QXiuSLykd7Q1Lg==
X-CSE-MsgGUID: YwzGpDqAQnGdVn3k2gi7uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="61274915"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="61274915"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 03:09:33 -0700
X-CSE-ConnectionGUID: cYLf9I0CSrmDdf3nrjOuJA==
X-CSE-MsgGUID: F7U3BY01RVKBMdTqdkGklA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169972387"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa007.jf.intel.com with ESMTP; 28 Aug 2025 03:09:31 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, stable@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 28 Aug 2025 11:52:27 +0200
Message-Id: <20250828095227.1857066-5-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
References: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756376199; x=1787912199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BuV6sy7akWwvmoQthUGtP+SjNRnorhCutIFVwVeEMFI=;
 b=TeLG1xD04PxiwLQn/BX03nwfS8d/zU5vTMmxR+s7gTSyqo52XHeLg5c3
 PvZOpBwUmvvurV0/FvZysoIZ66/YUaAeUjWdo87LlucXzRoYrLH5Q2TfP
 xlazcehGfe0a2kRctomCCLRfiKn2qVzG9qUCjL7DuQIX1DNJARFcFwoNy
 BA/uuN4no5YsnnkyhxFig13TR1EwjwYFzETJr4l2rWHpzc1zklUnsUKKS
 lR5iz1cI7sKfEEi9ubopqYkSC+JBn/ow3vdavb8hQ6KzCi9iwVHr/7G39
 fzP0qwWNVDYI+D6IMeR4XPGpMJTvbnWwmj0y08Kt3ajbyXNBkpubmSM0O
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TeLG1xD0
Subject: [Intel-wired-lan] [PATCH iwl-net v1 4/4] ixgbe: handle
 IXGBE_VF_FEATURES_NEGOTIATE mbox cmd
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

Send to VF information about features supported by the PF driver.

Increase API version to 1.7.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  | 10 +++++
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 37 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index be452856531a..8a2ba77d1493 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -52,6 +52,7 @@ enum ixgbe_pfvf_api_rev {
 	ixgbe_mbox_api_14,	/* API version 1.4, linux/freebsd VF driver */
 	ixgbe_mbox_api_15,	/* API version 1.5, linux/freebsd VF driver */
 	ixgbe_mbox_api_16,	/* API version 1.6, linux/freebsd VF driver */
+	ixgbe_mbox_api_17,	/* API version 1.7, linux/freebsd VF driver */
 	/* This value should always be last */
 	ixgbe_mbox_api_unknown,	/* indicates that API version is not known */
 };
@@ -91,6 +92,9 @@ enum ixgbe_pfvf_api_rev {
 /* mailbox API, version 1.6 VF requests */
 #define IXGBE_VF_GET_PF_LINK_STATE	0x11 /* request PF to send link info */
 
+/* mailbox API, version 1.7 VF requests */
+#define IXGBE_VF_FEATURES_NEGOTIATE	0x12 /* get features supported by PF */
+
 /* length of permanent address message returned from PF */
 #define IXGBE_VF_PERMADDR_MSG_LEN 4
 /* word in permanent address message with the current multicast type */
@@ -101,6 +105,12 @@ enum ixgbe_pfvf_api_rev {
 #define IXGBE_VF_MBX_INIT_TIMEOUT 2000 /* number of retries on mailbox */
 #define IXGBE_VF_MBX_INIT_DELAY   500  /* microseconds between retries */
 
+/* features negotiated between PF/VF */
+#define IXGBEVF_PF_SUP_IPSEC		BIT(0)
+#define IXGBEVF_PF_SUP_ESX_MBX		BIT(1)
+
+#define IXGBE_SUPPORTED_FEATURES	IXGBEVF_PF_SUP_IPSEC
+
 struct ixgbe_hw;
 
 int ixgbe_read_mbx(struct ixgbe_hw *, u32 *, u16, u16);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 2d5584c36cd0..39cd0a9c9480 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -511,6 +511,7 @@ static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf
 		case ixgbe_mbox_api_13:
 		case ixgbe_mbox_api_14:
 		case ixgbe_mbox_api_16:
+		case ixgbe_mbox_api_17:
 			/* Version 1.1 supports jumbo frames on VFs if PF has
 			 * jumbo frames enabled which means legacy VFs are
 			 * disabled
@@ -1048,6 +1049,7 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		adapter->vfinfo[vf].vf_api = api;
 		return 0;
 	default:
@@ -1075,6 +1077,7 @@ static int ixgbe_get_vf_queues(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		break;
 	default:
 		return -1;
@@ -1115,6 +1118,7 @@ static int ixgbe_get_vf_reta(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 
 	/* verify the PF is supporting the correct API */
 	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_17:
 	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
@@ -1149,6 +1153,7 @@ static int ixgbe_get_vf_rss_key(struct ixgbe_adapter *adapter,
 
 	/* verify the PF is supporting the correct API */
 	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_17:
 	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
@@ -1180,6 +1185,7 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -1251,6 +1257,7 @@ static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -1278,6 +1285,7 @@ static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
 
 	switch (adapter->vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_16:
+	case ixgbe_mbox_api_17:
 		if (hw->mac.type != ixgbe_mac_e610)
 			return -EOPNOTSUPP;
 		break;
@@ -1293,6 +1301,32 @@ static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
+/**
+ * ixgbe_negotiate_vf_features -  negotiate supported features with VF driver
+ * @adapter: pointer to adapter struct
+ * @msgbuf: pointer to message buffers
+ * @vf: VF identifier
+ *
+ * Return: 0 on success or -EOPNOTSUPP when operation is not supported.
+ */
+static int ixgbe_negotiate_vf_features(struct ixgbe_adapter *adapter,
+				       u32 *msgbuf, u32 vf)
+{
+	u32 features = msgbuf[1];
+
+	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_17:
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	features &= IXGBE_SUPPORTED_FEATURES;
+	msgbuf[1] = features;
+
+	return 0;
+}
+
 static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 {
 	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
@@ -1370,6 +1404,9 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	case IXGBE_VF_GET_PF_LINK_STATE:
 		retval = ixgbe_send_vf_link_status(adapter, msgbuf, vf);
 		break;
+	case IXGBE_VF_FEATURES_NEGOTIATE:
+		retval = ixgbe_negotiate_vf_features(adapter, msgbuf, vf);
+		break;
 	default:
 		e_err(drv, "Unhandled Msg %8.8x\n", msgbuf[0]);
 		retval = -EIO;
-- 
2.31.1

