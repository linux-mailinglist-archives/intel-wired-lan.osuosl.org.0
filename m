Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDE9ABD366
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 11:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5583A407DD;
	Tue, 20 May 2025 09:31:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MyceIbY1TTSM; Tue, 20 May 2025 09:31:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F8BA40695
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747733482;
	bh=VBfcsAJFty4FY8+vxJIO3D4JCnMRae7yuqxtEoSZc90=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WiL9z9GB7JBPRGGfiPLIQOPLz3zdBUlb2imCclckaDOQZFrZoyZuxScSDIAtZU18S
	 7KRWUfq0/ic0y6+54NZBbcsxmL0unnj86zfzAxfVGMccbsZozIDCxsnmp0AJLgH3NI
	 JtZNPESxVv50M71zN/FPPF/jCxPstlQqVxir/iOcbRt2+29Ulks6I+Q/cB7rb1xj7v
	 nOGNFTgDB+t0TfIcdGUG4XFpag22encWzANMIflt+2p2LLUgAnu3RMI61obzvYXFj6
	 tFeHKnPkDf081gcO0ypUw7Z3jvsBTOHgbwhXGTBRSs6hovq4U16KdRSfk+uyPmHIXp
	 zgWES56CWfONg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F8BA40695;
	Tue, 20 May 2025 09:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DA59E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 09:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 742B94070D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 09:31:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 96yD6X1VqNl5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 09:31:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6736640695
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6736640695
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6736640695
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 09:31:20 +0000 (UTC)
X-CSE-ConnectionGUID: QUVUU/NqT6CZ1IfWErgvhA==
X-CSE-MsgGUID: t/jXl/PrQNSTp/txv0C0GA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49812153"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49812153"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:31:20 -0700
X-CSE-ConnectionGUID: RKN0lHAARXeSopzNn8z2iQ==
X-CSE-MsgGUID: beYmwyjWRtqx6tvJJ8Ov0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="162942265"
Received: from pae-dbg-x10sri-f_n1_f_263.igk.intel.com (HELO
 localhost.igk.intel.com) ([172.28.191.222])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:31:18 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Konrad Knitter <konrad.knitter@intel.com>, Simon Horman <horms@kernel.org>
Date: Tue, 20 May 2025 11:30:59 +0200
Message-ID: <20250520093059.387511-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747733480; x=1779269480;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hzed/was5BSPNPuo+5oc2fFmRq2hhcmIQe6CaBgRkFw=;
 b=biuwZ3Ba11fttNp6MxbHf5dqm4xpBI3PIwTj6+vsRp0DKmwn9sZxBtYS
 2R56pWXx43Ct+WjAfkPy530AT3+tAYGxBITtV6WEZvlNolY37sKlk7l6A
 UzduyBwmrrEcWPFomzjSFNXDn9Ru5Mbe/MesqCn9ReOkbqI7czEmp5VLC
 /OAxAQyBb8X3THcxQ/eQiXj1292LTLet08pa1np3oLUMVO1zP43kUBRNX
 15w8qAeJR17H21Aem3tiaSDFf3KZaRGh5CMZwaGElox+MLZjru8R0UNQt
 w3ViyGGRLspREPyKMwIQIim+Je2sDuGavp1CT9kavPPOJ01XphLeP+oAd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=biuwZ3Ba
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: add E835 device IDs
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

E835 is an enhanced version of the E830.
It continues to use the same set of commands, registers and interfaces
as other devices in the 800 Series.

Following device IDs are added:
- 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
- 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
- 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
- 0x1261: Intel(R) Ethernet Controller E835-C for backplane
- 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
- 0x1263: Intel(R) Ethernet Controller E835-C for SFP
- 0x1265: Intel(R) Ethernet Controller E835-L for backplane
- 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
- 0x1267: Intel(R) Ethernet Controller E835-L for SFP

Reviewed-by: Konrad Knitter <konrad.knitter@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
---
v2 changes:
- v1: https://lore.kernel.org/netdev/20250514104632.331559-1-dawid.osuchowski@linux.intel.com/
- Move device IDs to corresponding spot in the file (Tony)
- Add Reviewed-by tag from Simon
---
 drivers/net/ethernet/intel/ice/ice_common.c |  9 +++++++++
 drivers/net/ethernet/intel/ice/ice_devids.h | 18 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c   |  9 +++++++++
 3 files changed, 36 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6e38d46c2c51..010ad09b3200 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -171,6 +171,15 @@ static int ice_set_mac_type(struct ice_hw *hw)
 	case ICE_DEV_ID_E830_XXV_QSFP:
 	case ICE_DEV_ID_E830C_SFP:
 	case ICE_DEV_ID_E830_XXV_SFP:
+	case ICE_DEV_ID_E835CC_BACKPLANE:
+	case ICE_DEV_ID_E835CC_QSFP56:
+	case ICE_DEV_ID_E835CC_SFP:
+	case ICE_DEV_ID_E835C_BACKPLANE:
+	case ICE_DEV_ID_E835C_QSFP:
+	case ICE_DEV_ID_E835C_SFP:
+	case ICE_DEV_ID_E835_L_BACKPLANE:
+	case ICE_DEV_ID_E835_L_QSFP:
+	case ICE_DEV_ID_E835_L_SFP:
 		hw->mac_type = ICE_MAC_E830;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index 34fd604132f5..bd4e66df0372 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -6,6 +6,24 @@
 
 /* Device IDs */
 #define ICE_DEV_ID_E822_SI_DFLT         0x1888
+/* Intel(R) Ethernet Controller E835-CC for backplane */
+#define ICE_DEV_ID_E835CC_BACKPLANE	0x1248
+/* Intel(R) Ethernet Controller E835-CC for QSFP */
+#define ICE_DEV_ID_E835CC_QSFP56	0x1249
+/* Intel(R) Ethernet Controller E835-CC for SFP */
+#define ICE_DEV_ID_E835CC_SFP		0x124A
+/* Intel(R) Ethernet Controller E835-C for backplane */
+#define ICE_DEV_ID_E835C_BACKPLANE	0x1261
+/* Intel(R) Ethernet Controller E835-C for QSFP */
+#define ICE_DEV_ID_E835C_QSFP		0x1262
+/* Intel(R) Ethernet Controller E835-C for SFP */
+#define ICE_DEV_ID_E835C_SFP		0x1263
+/* Intel(R) Ethernet Controller E835-L for backplane */
+#define ICE_DEV_ID_E835_L_BACKPLANE	0x1265
+/* Intel(R) Ethernet Controller E835-L for QSFP */
+#define ICE_DEV_ID_E835_L_QSFP		0x1266
+/* Intel(R) Ethernet Controller E835-L for SFP */
+#define ICE_DEV_ID_E835_L_SFP		0x1267
 /* Intel(R) Ethernet Connection E823-L for backplane */
 #define ICE_DEV_ID_E823L_BACKPLANE	0x124C
 /* Intel(R) Ethernet Connection E823-L for SFP */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c4264984cfcb..5c941f4426d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5906,6 +5906,15 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_QSFP), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830C_SFP), },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_XXV_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_QSFP56), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835CC_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835C_SFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_BACKPLANE), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_QSFP), },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E835_L_SFP), },
 	/* required last entry */
 	{}
 };
-- 
2.47.0

