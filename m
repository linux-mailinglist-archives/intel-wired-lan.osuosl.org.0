Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8988FD13106
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:18:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C69F40F82;
	Mon, 12 Jan 2026 14:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uhtIFrnHxHuV; Mon, 12 Jan 2026 14:18:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 961AF42850
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227520;
	bh=FnzB7bECUtnKWk2SOcTT0AvfoC4glzfgM0+WVJ9oVxE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c1YWcMfdyXOMKXXVRzIVTR130+3rwhanimi6I8XQ1ic2V5WwSbmx20RWJjEPf1Laj
	 tpAQml03njPZd93TL9bxjLD0Hd0LzpKu98RTKIAWnKE44/Q+gJyJvMmkWs5RXChL10
	 sHDyKk1mGz9aAolilcPcCB6HsRUNQcvtUQSxxAE/8+pm0EQHhkmklpELd2y5mk2VNy
	 xlxz9+EUmqwGz7DFCNMHRL+PEAJdvY2DO23ZBmSMtm7uc30klkVYLkBPdHgyLSK5xR
	 k8+esu61UmrxiFUTOGo66yp6SUfSPPLhJjw76VRWd6cwt4M+ZWt8my5bVZ9f3T8o+B
	 ApC1KUYPn1xEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 961AF42850;
	Mon, 12 Jan 2026 14:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 65EC012E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57B2C6F4F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V7_ZzxmES-A4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:18:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 909FE6F4F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 909FE6F4F2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 909FE6F4F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:38 +0000 (UTC)
X-CSE-ConnectionGUID: fK/tUk56RHqi2qr2pdwb7A==
X-CSE-MsgGUID: w+UA0o4SSLO6z6E/L09CWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73352282"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73352282"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:18:38 -0800
X-CSE-ConnectionGUID: d4PZ95SpSl+f2pfzIHCSKg==
X-CSE-MsgGUID: 9KNmZpm5Q1+MZkm5GhF44A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="227355625"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2026 06:18:37 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 12 Jan 2026 15:01:02 +0100
Message-Id: <20260112140108.1173835-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768227518; x=1799763518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dx8tADSm7t+2dxNqjDCdBuCNg+zbopcy4tyxlCoUwjw=;
 b=O8VHqw0PPX5oLD/b9k01Ts8j258Kl6L0z2sIGufAN0SE9/xflOILd4zB
 4wPSP7ibBYjcW2WS9Zlkzz/MrT0HCq6sozRVvkQB+vRsJO8Ctq+hXjByU
 9yp05A8kXB8/5ZFH66KL3z8SAEk0n/Ua5+iUmnovKi5CzWevGzW6H9Uj2
 EoyNqM3zr7z/GZJKwmk+sBkPiRhBikWa394FqXnjlVv0l9coM24gamZHr
 0NXwEeXlsHsiHX79SZPH3jJfUCSG18NxSThGxvaxXaYGHZ0PzOokHQrkJ
 yJgZ61AmbqrcniaYqsQdQ2cEK8FGrJ0UH3OiuCE2xPFELLYDi5CHi5FRO
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O8VHqw0P
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/7] ixgbe: E610: add
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
 include/linux/net/intel/libie/adminq.h             | 1 +
 3 files changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index b202639b92c7..98982d3d87c7 100644
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
index 75383b2a1fe9..767d04a3f106 100644
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
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/net/intel/libie/adminq.h
index 1dd5d5924aee..4359cbbe6eb7 100644
--- a/include/linux/net/intel/libie/adminq.h
+++ b/include/linux/net/intel/libie/adminq.h
@@ -192,6 +192,7 @@ LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_list_caps);
 #define LIBIE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
 #define LIBIE_AQC_CAPS_NAC_TOPOLOGY			0x0087
 #define LIBIE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
+#define LIBIE_AQC_CAPS_EEE				0x009B
 #define LIBIE_AQC_CAPS_FLEX10				0x00F1
 #define LIBIE_AQC_CAPS_CEM				0x00F2
 #define LIBIE_AQC_BIT_ROCEV2_LAG			BIT(0)
-- 
2.31.1

