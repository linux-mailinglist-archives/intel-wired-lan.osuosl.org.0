Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D+OOhimb2kfEgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:58:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F8946E6B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:58:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 800DD6FE3C;
	Tue, 20 Jan 2026 14:02:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rerqbYVzowxB; Tue, 20 Jan 2026 14:02:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1E746FE39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768917751;
	bh=AP7qfC3XZTiN5WUzR3NjiwX+higk8bj2NOePTObTcz0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0v2sGpvjDwBuoizuiMX+pXBvZFxJZy72apWj4hLBDHRe4K4JYwSt4KDLnlzTW/vvd
	 49DHCCZ4AXbYjywDX/HLnZPwky1tYU9zeV3QfZdQ+TQ1fle/QddOkza8OSuax2Z0Af
	 0Ktneh3kO2xx6Oin42zs0aRzcOxlJj2Qv7Cc8ovvA0/AYuqxoL7VzJRCXzszgk3ae3
	 KvIo/TjmufH2ueNAxOPuSHmrpYe0qn9LXix0vXmxCnr5B1IVVdbgw2mMBCb/cjke6A
	 YZjuDv/3F5eT0ovVw7Qn6HhZWgbQRlA2BoAmHnJ0vYXKbziIWik2F5sDzfpU+AfGFS
	 Zkm++kGfFzVHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1E746FE39;
	Tue, 20 Jan 2026 14:02:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D5FA0160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3B864F103
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eclx38RvDi5D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 14:02:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0593E4F110
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0593E4F110
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0593E4F110
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:27 +0000 (UTC)
X-CSE-ConnectionGUID: HobmG0O2QvOhkV33T/f+OA==
X-CSE-MsgGUID: q2sI/etLQPud9TY3jlZ9/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="72711752"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="72711752"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 06:02:27 -0800
X-CSE-ConnectionGUID: AN43iOWwRte1kfUYFsOXng==
X-CSE-MsgGUID: uEb2u9GbQEOvAvbU7iyuug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210978890"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 06:02:26 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 20 Jan 2026 14:44:29 +0100
Message-Id: <20260120134434.1931602-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768917748; x=1800453748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RQtxxTx0BaYQbBXGPsoMwvYiTSzOJ7lvWIteby4+xQM=;
 b=lkmkwOdYpmy+FjIwTlDhexZ6SKuf4/vII+0UPX6zSp0NBt1rdkgCoZse
 e5A/u8QHvRJd7cAwVKuZScX685k1uZbJgY3z7bzpOeUgt3HdRSBuJP4Ek
 3OFShbdOQd9cCUxzBwKTwUdnLzshuQWJtqzKQQ1xsaqr+uU8NpFa/gtow
 q/EHDyQ+JfCQ9kPT8oRgRFd7mMtoYEhNm+Auv3d93RorW0bXudbHk7/ix
 ROa0nKp3fclmLa6KFAGbMzzC0g8CXsTg01ae+UfSFg0UOBtIqDjoXfl2h
 csQk2yg4+Ohfjfe7nDxrua03AhA4J4qIrqdy0H10JVuUY9eNNqv2UHkE7
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lkmkwOdY
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/6] ixgbe: E610: add
 discovering EEE capability
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 76F8946E6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add detecting and parsing EEE device capability.

Recently EEE functionality support has been introduced to E610 FW.
Currently ixgbe driver has no possibility to detect whether NVM
loaded on given adapter supports EEE.

There's dedicated device capability element reflecting FW support
for given EEE link speed.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c      | 3 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 7 +++++++
 include/linux/intel/libie/adminq.h                 | 1 +
 3 files changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index c2f8189a0738..9ae1e3620ee1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -628,6 +628,9 @@ static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
 			(phys_id & IXGBE_EXT_TOPO_DEV_IMG_PROG_EN) != 0;
 		break;
 	}
+	case LIBIE_AQC_CAPS_EEE:
+		caps->eee_support = (u8)number;
+		break;
 	default:
 		/* Not one of the recognized common capabilities */
 		return false;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index cde148eec38d..11dc7fc71b71 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -892,6 +892,7 @@ struct ixgbe_hw_caps {
 	u8 apm_wol_support;
 	u8 acpi_prog_mthd;
 	u8 proxy_support;
+	u8 eee_support;
 	bool nvm_update_pending_nvm;
 	bool nvm_update_pending_orom;
 	bool nvm_update_pending_netlist;
@@ -927,6 +928,12 @@ struct ixgbe_hw_caps {
 
 #define IXGBE_OROM_CIV_SIGNATURE	"$CIV"
 
+#define IXGBE_EEE_SUPPORT_100BASE_TX	BIT(0)
+#define IXGBE_EEE_SUPPORT_1000BASE_T	BIT(1)
+#define IXGBE_EEE_SUPPORT_10GBASE_T	BIT(2)
+#define IXGBE_EEE_SUPPORT_5GBASE_T	BIT(3)
+#define IXGBE_EEE_SUPPORT_2_5GBASE_T	BIT(4)
+
 struct ixgbe_orom_civd_info {
 	u8 signature[4];	/* Must match ASCII '$CIV' characters */
 	u8 checksum;		/* Simple modulo 256 sum of all structure bytes must equal 0 */
diff --git a/include/linux/intel/libie/adminq.h b/include/linux/intel/libie/adminq.h
index ab13bd777a28..839114d8975a 100644
--- a/include/linux/intel/libie/adminq.h
+++ b/include/linux/intel/libie/adminq.h
@@ -196,6 +196,7 @@ LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_list_caps);
 #define LIBIE_AQC_BIT_ROCEV2_LAG			BIT(0)
 #define LIBIE_AQC_BIT_SRIOV_LAG				BIT(1)
 #define LIBIE_AQC_BIT_SRIOV_AA_LAG			BIT(2)
+#define LIBIE_AQC_CAPS_EEE				0x009B
 #define LIBIE_AQC_CAPS_FLEX10				0x00F1
 #define LIBIE_AQC_CAPS_CEM				0x00F2
 
-- 
2.31.1

