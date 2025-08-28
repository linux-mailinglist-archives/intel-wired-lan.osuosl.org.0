Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2365CB3995A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 12:16:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D304982BA1;
	Thu, 28 Aug 2025 10:16:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2iJyxH-dBkj8; Thu, 28 Aug 2025 10:16:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4DE082C04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756376195;
	bh=Ttc6BQ2jBg+eUSecEhKDMUdDrrVAbgJDBx67mm5Ufy0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=40rj30xpjBrxMxIlmJnu687hxtwt8aQBLy0JFiuIWpKgagE5LCqjXfd2NgFJMF2Wf
	 QOYWvZRV7NyHoN9ZFwQORfqlNn2m5Jqp1nCxVqRCYjKlbMletkW3VWynCHEv0xDI2r
	 Fx33+gYzt1RjSRjCqlCmGIun/dgH5y3Qr8F0eOfIBtvOV/CxjC+hDk/95dKRYfqmkZ
	 trWEQIIRVVK801UJRgda9OedbI+x6E1caLhbD9dW3dMVLR80EHObTS1BRy/u3WbT6K
	 CYopGChIP7aPP3RyMgvtscUq2auX0PVF7joDXoRrhh4TYgTwIV6VEYc31/a2XnpcXp
	 SKpLnQwg3B6bA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4DE082C04;
	Thu, 28 Aug 2025 10:16:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E74FA17D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D359282B9F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ByK0m51SRuA4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 10:16:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0991482B97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0991482B97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0991482B97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:33 +0000 (UTC)
X-CSE-ConnectionGUID: kPzNbVovQ4WSsyaYiR9w2Q==
X-CSE-MsgGUID: b/Uky9AsTGKnSv4cT2KfAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="61274909"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="61274909"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 03:09:28 -0700
X-CSE-ConnectionGUID: QXHaQ0zPSpC7SfbXjUGIZw==
X-CSE-MsgGUID: uKgEzTO9Qb+1+n7GtsSJ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169972351"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa007.jf.intel.com with ESMTP; 28 Aug 2025 03:09:26 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, stable@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 28 Aug 2025 11:52:25 +0200
Message-Id: <20250828095227.1857066-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
References: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756376194; x=1787912194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oJwRyM820eWuI4xtV5TQn49ayviqh+LbSaoPr0AzSC4=;
 b=LKcQBgJN3Hp2o0ZP5l5Kjzhezn6hrxPMmYUQg4Wgvkz9VpwMamosJkP/
 3CRGPcQB6PsYsOI6+2DIpAd/SbpNYNyFDNafiXMfDHmgdqbjHExRLESNA
 kxS+XaiHWMlNKt1jt24VejoPua/Ln2MyF2zqAUpZ7X9aG4tJiBTajpxnn
 +CHeaxS9d22QOk50D6J9j64x5t++/Ia9OENfG9J++2pKyUoYDWXo6n5zr
 2MLEdTzyuUsb8GTv0oyr2ymMIFdaO+3iMijS9ClB+fQxP7MohDezAmNXK
 YXhGwRVd6FZtblkdYQdhl9BAODnbwg9ygDva1/bhsVHwuwRU3zmIV50/k
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LKcQBgJN
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/4] ixgbe: handle
 IXGBE_VF_GET_PF_LINK_STATE mailbox operation
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

Update supported API version and provide handler for
IXGBE_VF_GET_PF_LINK_STATE cmd.
Simply put stored values of link speed and link_up from adapter context.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |  5 +++
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 42 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index bf65e82b4c61..be452856531a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -50,6 +50,8 @@ enum ixgbe_pfvf_api_rev {
 	ixgbe_mbox_api_12,	/* API version 1.2, linux/freebsd VF driver */
 	ixgbe_mbox_api_13,	/* API version 1.3, linux/freebsd VF driver */
 	ixgbe_mbox_api_14,	/* API version 1.4, linux/freebsd VF driver */
+	ixgbe_mbox_api_15,	/* API version 1.5, linux/freebsd VF driver */
+	ixgbe_mbox_api_16,	/* API version 1.6, linux/freebsd VF driver */
 	/* This value should always be last */
 	ixgbe_mbox_api_unknown,	/* indicates that API version is not known */
 };
@@ -86,6 +88,9 @@ enum ixgbe_pfvf_api_rev {
 
 #define IXGBE_VF_GET_LINK_STATE 0x10 /* get vf link state */
 
+/* mailbox API, version 1.6 VF requests */
+#define IXGBE_VF_GET_PF_LINK_STATE	0x11 /* request PF to send link info */
+
 /* length of permanent address message returned from PF */
 #define IXGBE_VF_PERMADDR_MSG_LEN 4
 /* word in permanent address message with the current multicast type */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index bd9a054d7d94..2d5584c36cd0 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -510,6 +510,7 @@ static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf
 		case ixgbe_mbox_api_12:
 		case ixgbe_mbox_api_13:
 		case ixgbe_mbox_api_14:
+		case ixgbe_mbox_api_16:
 			/* Version 1.1 supports jumbo frames on VFs if PF has
 			 * jumbo frames enabled which means legacy VFs are
 			 * disabled
@@ -1046,6 +1047,7 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_16:
 		adapter->vfinfo[vf].vf_api = api;
 		return 0;
 	default:
@@ -1072,6 +1074,7 @@ static int ixgbe_get_vf_queues(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_16:
 		break;
 	default:
 		return -1;
@@ -1112,6 +1115,7 @@ static int ixgbe_get_vf_reta(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 
 	/* verify the PF is supporting the correct API */
 	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_12:
@@ -1145,6 +1149,7 @@ static int ixgbe_get_vf_rss_key(struct ixgbe_adapter *adapter,
 
 	/* verify the PF is supporting the correct API */
 	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_12:
@@ -1174,6 +1179,7 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 		fallthrough;
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_16:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -1244,6 +1250,7 @@ static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_16:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -1254,6 +1261,38 @@ static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
+/**
+ * ixgbe_send_vf_link_status - send link status data to VF
+ * @adapter: pointer to adapter struct
+ * @msgbuf: pointer to message buffers
+ * @vf: VF identifier
+ *
+ * Reply for IXGBE_VF_GET_PF_LINK_STATE mbox command sending link status data.
+ *
+ * Return: 0 on success or -EOPNOTSUPP when operation is not supported.
+ */
+static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
+				     u32 *msgbuf, u32 vf)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_16:
+		if (hw->mac.type != ixgbe_mac_e610)
+			return -EOPNOTSUPP;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+	/* Simply provide stored values as watchdog & link status events take
+	 * care of its freshness.
+	 */
+	msgbuf[1] = adapter->link_speed;
+	msgbuf[2] = adapter->link_up;
+
+	return 0;
+}
+
 static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 {
 	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
@@ -1328,6 +1367,9 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	case IXGBE_VF_IPSEC_DEL:
 		retval = ixgbe_ipsec_vf_del_sa(adapter, msgbuf, vf);
 		break;
+	case IXGBE_VF_GET_PF_LINK_STATE:
+		retval = ixgbe_send_vf_link_status(adapter, msgbuf, vf);
+		break;
 	default:
 		e_err(drv, "Unhandled Msg %8.8x\n", msgbuf[0]);
 		retval = -EIO;
-- 
2.31.1

