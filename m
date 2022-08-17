Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA0E596A51
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Aug 2022 09:25:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CD5F6107E;
	Wed, 17 Aug 2022 07:25:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CD5F6107E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660721118;
	bh=9XBN806xUe9p1avf3FixZ2UOAGbMGWbZ4za2BHRQA5g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OfijR34DlIsTvFCc8bwCQM1Bz2HgWzoHXF9r1aI6vq0pQO6MbbNvhZ3jwTaoPs5FY
	 Ofc5hgbeBcMga2FDUaqTLr3qzy8D+uDzNkZT5VfJ5O/01NhNMcBL41hCYYUPkvWkfo
	 FkGKzz3GyifEv6oBuVPvzkoD48a99d+a3mpBCym8AS0yIqqo3LaUeFghWW/672+xpd
	 6kC/fYGC4h0eXK29HpSYz9rhH6BR28HohAFoTfFZIQLvNcu7PPkwfeodoVyrryI00q
	 ehOcfWs45hK8NkS8jwaFQdY8WvChF/T46eqdJ5bJr4y16v20tjsuI2fINkMgLWjEF/
	 67AsPJt+OTBrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NXyGVnnn_QnD; Wed, 17 Aug 2022 07:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA6CF60F3F;
	Wed, 17 Aug 2022 07:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA6CF60F3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0A21BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 07:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 140BC418DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 07:25:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 140BC418DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QTM-QHVS7m7K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Aug 2022 07:25:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC223417C8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC223417C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 07:25:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="354169549"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="354169549"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 00:25:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="696675864"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Aug 2022 00:25:03 -0700
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.213.8.25])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27H7P10F023163; Wed, 17 Aug 2022 08:25:02 +0100
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Aug 2022 09:12:12 +0200
Message-Id: <20220817071211.1631-1-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660721109; x=1692257109;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sQ/eBrsDTRVrbGNCyz30PYNpvwuti+msSjtA7aWAo3E=;
 b=IyT1oIQiQ3eZKTBH4irKBmSaQVgIkzkWpHV7S7spTelYsD0leS0NJJyk
 jDZ3oEsIhZAVnGLBKP5a5HIwXEGmgiTA7LFlvKcB6TutTcVjS/LeZQ/Ce
 GgwmJQbRxekq/riumZzkvwk1RG0V7hZF+id1DpQUeBwCgIrh0iKPPYvDW
 VJ5r3BaRDTza1hnAJV507PeVFA0KJqbDq9cNE3qGPFu1U67wnylQ2gXEs
 tp8viD4VfFmxlC4jBvFAtOAx3GJPc7tgVOh2TalMRekN8VWVNmbxatTqh
 5emCmqMzHNFiTbvPR+svupgxZbEi2m7ndhElgsdo1h1QlYRDc6aQ6ttNP
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IyT1oIQi
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Print human-friendly PHY
 types
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Provide human readable description of PHY capabilities
and report_mode.

Sample output:

Old:
[  286.130405] ice 0000:16:00.0: get phy caps - report_mode = 0x2
[  286.130409] ice 0000:16:00.0:        phy_type_low = 0x108021020502000
[  286.130412] ice 0000:16:00.0:        phy_type_high = 0x0
[  286.130415] ice 0000:16:00.0:        caps = 0xc8
[  286.130419] ice 0000:16:00.0:        low_power_ctrl_an = 0x4
[  286.130421] ice 0000:16:00.0:        eee_cap = 0x0
[  286.130424] ice 0000:16:00.0:        eeer_value = 0x0
[  286.130427] ice 0000:16:00.0:        link_fec_options = 0xdf
[  286.130430] ice 0000:16:00.0:        module_compliance_enforcement = 0x0
[  286.130433] ice 0000:16:00.0:    extended_compliance_code = 0xb
[  286.130435] ice 0000:16:00.0:    module_type[0] = 0x11
[  286.130438] ice 0000:16:00.0:    module_type[1] = 0x1
[  286.130441] ice 0000:16:00.0:    module_type[2] = 0x0

New:
[ 1128.297347] ice 0000:16:00.0: get phy caps dump
[ 1128.297351] ice 0000:16:00.0: phy_caps_active: phy_type_low: 0x0108021020502000
[ 1128.297355] ice 0000:16:00.0: phy_caps_active:   bit(13): 10G_SFI_DA
[ 1128.297359] ice 0000:16:00.0: phy_caps_active:   bit(20): 25GBASE_CR
[ 1128.297362] ice 0000:16:00.0: phy_caps_active:   bit(22): 25GBASE_CR1
[ 1128.297365] ice 0000:16:00.0: phy_caps_active:   bit(29): 25G_AUI_C2C
[ 1128.297368] ice 0000:16:00.0: phy_caps_active:   bit(36): 50GBASE_CR2
[ 1128.297371] ice 0000:16:00.0: phy_caps_active:   bit(41): 50G_LAUI2
[ 1128.297374] ice 0000:16:00.0: phy_caps_active:   bit(51): 100GBASE_CR4
[ 1128.297377] ice 0000:16:00.0: phy_caps_active:   bit(56): 100G_CAUI4
[ 1128.297380] ice 0000:16:00.0: phy_caps_active: phy_type_high: 0x0000000000000000
[ 1128.297383] ice 0000:16:00.0: phy_caps_active: report_mode = 0x4
[ 1128.297386] ice 0000:16:00.0: phy_caps_active: caps = 0xc8
[ 1128.297389] ice 0000:16:00.0: phy_caps_active: low_power_ctrl_an = 0x4
[ 1128.297392] ice 0000:16:00.0: phy_caps_active: eee_cap = 0x0
[ 1128.297394] ice 0000:16:00.0: phy_caps_active: eeer_value = 0x0
[ 1128.297397] ice 0000:16:00.0: phy_caps_active: link_fec_options = 0xdf
[ 1128.297400] ice 0000:16:00.0: phy_caps_active: module_compliance_enforcement = 0x0
[ 1128.297402] ice 0000:16:00.0: phy_caps_active: extended_compliance_code = 0xb
[ 1128.297405] ice 0000:16:00.0: phy_caps_active: module_type[0] = 0x11
[ 1128.297408] ice 0000:16:00.0: phy_caps_active: module_type[1] = 0x1
[ 1128.297411] ice 0000:16:00.0: phy_caps_active: module_type[2] = 0x0

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Co-developed-by: Lukasz Plachno <lukasz.plachno@intel.com>
Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

---
v2: Fix indentation
---
 drivers/net/ethernet/intel/ice/ice_common.c | 158 +++++++++++++++++---
 1 file changed, 140 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 5a83cea28df9..981eed5873f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -8,6 +8,108 @@
 
 #define ICE_PF_RESET_WAIT_COUNT	300
 
+static const char * const ice_link_mode_str_low[] = {
+	[0] = "100BASE_TX",
+	[1] = "100M_SGMII",
+	[2] = "1000BASE_T",
+	[3] = "1000BASE_SX",
+	[4] = "1000BASE_LX",
+	[5] = "1000BASE_KX",
+	[6] = "1G_SGMII",
+	[7] = "2500BASE_T",
+	[8] = "2500BASE_X",
+	[9] = "2500BASE_KX",
+	[10] = "5GBASE_T",
+	[11] = "5GBASE_KR",
+	[12] = "10GBASE_T",
+	[13] = "10G_SFI_DA",
+	[14] = "10GBASE_SR",
+	[15] = "10GBASE_LR",
+	[16] = "10GBASE_KR_CR1",
+	[17] = "10G_SFI_AOC_ACC",
+	[18] = "10G_SFI_C2C",
+	[19] = "25GBASE_T",
+	[20] = "25GBASE_CR",
+	[21] = "25GBASE_CR_S",
+	[22] = "25GBASE_CR1",
+	[23] = "25GBASE_SR",
+	[24] = "25GBASE_LR",
+	[25] = "25GBASE_KR",
+	[26] = "25GBASE_KR_S",
+	[27] = "25GBASE_KR1",
+	[28] = "25G_AUI_AOC_ACC",
+	[29] = "25G_AUI_C2C",
+	[30] = "40GBASE_CR4",
+	[31] = "40GBASE_SR4",
+	[32] = "40GBASE_LR4",
+	[33] = "40GBASE_KR4",
+	[34] = "40G_XLAUI_AOC_ACC",
+	[35] = "40G_XLAUI",
+	[36] = "50GBASE_CR2",
+	[37] = "50GBASE_SR2",
+	[38] = "50GBASE_LR2",
+	[39] = "50GBASE_KR2",
+	[40] = "50G_LAUI2_AOC_ACC",
+	[41] = "50G_LAUI2",
+	[42] = "50G_AUI2_AOC_ACC",
+	[43] = "50G_AUI2",
+	[44] = "50GBASE_CP",
+	[45] = "50GBASE_SR",
+	[46] = "50GBASE_FR",
+	[47] = "50GBASE_LR",
+	[48] = "50GBASE_KR_PAM4",
+	[49] = "50G_AUI1_AOC_ACC",
+	[50] = "50G_AUI1",
+	[51] = "100GBASE_CR4",
+	[52] = "100GBASE_SR4",
+	[53] = "100GBASE_LR4",
+	[54] = "100GBASE_KR4",
+	[55] = "100G_CAUI4_AOC_ACC",
+	[56] = "100G_CAUI4",
+	[57] = "100G_AUI4_AOC_ACC",
+	[58] = "100G_AUI4",
+	[59] = "100GBASE_CR_PAM4",
+	[60] = "100GBASE_KR_PAM4",
+	[61] = "100GBASE_CP2",
+	[62] = "100GBASE_SR2",
+	[63] = "100GBASE_DR",
+};
+
+static const char * const ice_link_mode_str_high[] = {
+	[0] = "100GBASE_KR2_PAM4",
+	[1] = "100G_CAUI2_AOC_ACC",
+	[2] = "100G_CAUI2",
+	[3] = "100G_AUI2_AOC_ACC",
+	[4] = "100G_AUI2",
+};
+
+/**
+ * ice_dump_phy_type - helper function to dump phy_type
+ * @hw: pointer to the HW structure
+ * @low: 64 bit value for phy_type_low
+ * @high: 64 bit value for phy_type_high
+ * @prefix: prefix string to differentiate multiple dumps
+ */
+static void
+ice_dump_phy_type(struct ice_hw *hw, u64 low, u64 high, const char *prefix)
+{
+	ice_debug(hw, ICE_DBG_PHY, "%s: phy_type_low: 0x%016llx\n", prefix, low);
+
+	for (u32 i = 0; i < BITS_PER_TYPE(typeof(low)); i++) {
+		if (low & BIT_ULL(i))
+			ice_debug(hw, ICE_DBG_PHY, "%s:   bit(%d): %s\n",
+				  prefix, i, ice_link_mode_str_low[i]);
+	}
+
+	ice_debug(hw, ICE_DBG_PHY, "%s: phy_type_high: 0x%016llx\n", prefix, high);
+
+	for (u32 i = 0; i < BITS_PER_TYPE(typeof(high)); i++) {
+		if (high & BIT_ULL(i))
+			ice_debug(hw, ICE_DBG_PHY, "%s:   bit(%d): %s\n",
+				  prefix, i, ice_link_mode_str_high[i]);
+	}
+}
+
 /**
  * ice_set_mac_type - Sets MAC type
  * @hw: pointer to the HW structure
@@ -183,6 +285,7 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	struct ice_aqc_get_phy_caps *cmd;
 	u16 pcaps_size = sizeof(*pcaps);
 	struct ice_aq_desc desc;
+	const char *prefix;
 	struct ice_hw *hw;
 	int status;
 
@@ -204,29 +307,48 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	cmd->param0 |= cpu_to_le16(report_mode);
 	status = ice_aq_send_cmd(hw, &desc, pcaps, pcaps_size, cd);
 
-	ice_debug(hw, ICE_DBG_LINK, "get phy caps - report_mode = 0x%x\n",
-		  report_mode);
-	ice_debug(hw, ICE_DBG_LINK, "	phy_type_low = 0x%llx\n",
-		  (unsigned long long)le64_to_cpu(pcaps->phy_type_low));
-	ice_debug(hw, ICE_DBG_LINK, "	phy_type_high = 0x%llx\n",
-		  (unsigned long long)le64_to_cpu(pcaps->phy_type_high));
-	ice_debug(hw, ICE_DBG_LINK, "	caps = 0x%x\n", pcaps->caps);
-	ice_debug(hw, ICE_DBG_LINK, "	low_power_ctrl_an = 0x%x\n",
+	ice_debug(hw, ICE_DBG_LINK, "get phy caps dump\n");
+
+	switch (report_mode) {
+	case ICE_AQC_REPORT_TOPO_CAP_MEDIA:
+		prefix = "phy_caps_media";
+		break;
+	case ICE_AQC_REPORT_TOPO_CAP_NO_MEDIA:
+		prefix = "phy_caps_no_media";
+		break;
+	case ICE_AQC_REPORT_ACTIVE_CFG:
+		prefix = "phy_caps_active";
+		break;
+	case ICE_AQC_REPORT_DFLT_CFG:
+		prefix = "phy_caps_default";
+		break;
+	default:
+		prefix = "phy_caps_invalid";
+	}
+
+	ice_dump_phy_type(hw, le64_to_cpu(pcaps->phy_type_low),
+			  le64_to_cpu(pcaps->phy_type_high), prefix);
+
+	ice_debug(hw, ICE_DBG_LINK, "%s: report_mode = 0x%x\n",
+		  prefix, report_mode);
+	ice_debug(hw, ICE_DBG_LINK, "%s: caps = 0x%x\n", prefix, pcaps->caps);
+	ice_debug(hw, ICE_DBG_LINK, "%s: low_power_ctrl_an = 0x%x\n", prefix,
 		  pcaps->low_power_ctrl_an);
-	ice_debug(hw, ICE_DBG_LINK, "	eee_cap = 0x%x\n", pcaps->eee_cap);
-	ice_debug(hw, ICE_DBG_LINK, "	eeer_value = 0x%x\n",
+	ice_debug(hw, ICE_DBG_LINK, "%s: eee_cap = 0x%x\n", prefix,
+		  pcaps->eee_cap);
+	ice_debug(hw, ICE_DBG_LINK, "%s: eeer_value = 0x%x\n", prefix,
 		  pcaps->eeer_value);
-	ice_debug(hw, ICE_DBG_LINK, "	link_fec_options = 0x%x\n",
+	ice_debug(hw, ICE_DBG_LINK, "%s: link_fec_options = 0x%x\n", prefix,
 		  pcaps->link_fec_options);
-	ice_debug(hw, ICE_DBG_LINK, "	module_compliance_enforcement = 0x%x\n",
-		  pcaps->module_compliance_enforcement);
-	ice_debug(hw, ICE_DBG_LINK, "   extended_compliance_code = 0x%x\n",
-		  pcaps->extended_compliance_code);
-	ice_debug(hw, ICE_DBG_LINK, "   module_type[0] = 0x%x\n",
+	ice_debug(hw, ICE_DBG_LINK, "%s: module_compliance_enforcement = 0x%x\n",
+		  prefix, pcaps->module_compliance_enforcement);
+	ice_debug(hw, ICE_DBG_LINK, "%s: extended_compliance_code = 0x%x\n",
+		  prefix, pcaps->extended_compliance_code);
+	ice_debug(hw, ICE_DBG_LINK, "%s: module_type[0] = 0x%x\n", prefix,
 		  pcaps->module_type[0]);
-	ice_debug(hw, ICE_DBG_LINK, "   module_type[1] = 0x%x\n",
+	ice_debug(hw, ICE_DBG_LINK, "%s: module_type[1] = 0x%x\n", prefix,
 		  pcaps->module_type[1]);
-	ice_debug(hw, ICE_DBG_LINK, "   module_type[2] = 0x%x\n",
+	ice_debug(hw, ICE_DBG_LINK, "%s: module_type[2] = 0x%x\n", prefix,
 		  pcaps->module_type[2]);
 
 	if (!status && report_mode == ICE_AQC_REPORT_TOPO_CAP_MEDIA) {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
