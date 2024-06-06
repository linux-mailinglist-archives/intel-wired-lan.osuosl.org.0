Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E48358FE841
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 15:58:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0C7B60608;
	Thu,  6 Jun 2024 13:58:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4auXx7hA9lDZ; Thu,  6 Jun 2024 13:58:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD6A76086E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717682315;
	bh=yJ193Kzsmca+BCscDc4MtwkrFPupmtBzuIKzMuvwhOU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Fg88fxmZD4DI7ta2Gcoqwkth6+4E5KCXHtBhi0pa4cYNfwhYLdctgg8W1gtVm6d9b
	 oR0TbpAhj9kZWsLlUFrCYnCV9Q/fvA6dUI0z9wdeQCsSP6Iq9Dlv41HHpE3x6xJeGi
	 +kVesT8+6k1YL3Hntd/CQXe4bTU8UoAvJ1ABnMbFPOVsMBU1Rh45bYFwBwoE0DXOQP
	 S6F1TByerfQDipumByyWQ2aDxqPJh5GcEEx+jfZ1W1LfVSPZmb6y6V062Lvm3qOT3i
	 qwRkxBhguOrhSJbiIH68uyqSJPnSbJwR1p05zTLh9SvBLbTRVkeUvTfSAaO0nubRwC
	 m4W5UbFAbggEw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD6A76086E;
	Thu,  6 Jun 2024 13:58:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A77D41BF32B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 13:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9108C4012F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 13:58:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vR8OEBvrK7f for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 13:58:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 569FD4011F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 569FD4011F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 569FD4011F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 13:58:32 +0000 (UTC)
X-CSE-ConnectionGUID: r4P8wM19Sny7hXpG+gpYhg==
X-CSE-MsgGUID: Xb3RVz2ZQBqRHr9twlkn+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="25458054"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="25458054"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 06:58:31 -0700
X-CSE-ConnectionGUID: 4aqE7+uYSiGxTyCFYEIBSw==
X-CSE-MsgGUID: 0d2AQDtNT1+jikfZU54Oow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37835322"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by fmviesa007.fm.intel.com with ESMTP; 06 Jun 2024 06:58:31 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 09:48:46 -0400
Message-ID: <20240606134846.3898837-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717682312; x=1749218312;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B8O08b4JUvXavQ8UEZtZo+wI7lm1WLpU+H0yTtBSkYI=;
 b=he6Jy9ZLBhYmEV5LnEb4FFRhzUAjzB1LOLdiUFazkAs6lA6p4ZlorDMb
 DUMMmiyBwzlg1YQFWTHjRC1+oU2G2mxRr25BFmpNveN/bfiy/JlJHQf8O
 1e+j1B1P7j8BgXBSp/pH2PZ1oBVmUSg+EDyGJhz6NCwGYUFwzgEGPhW7X
 Cdw6NoCn6DuZralytRSPZavugZynPIaryPXccKo4h0mhGUiJ7y70uHdgM
 OiDudbwJ3+XgzD1BJ4nfczUzRfAto3tLu1M9JUHKb6ssAsHVpEqWuhaw2
 5HLdKXvDxjW3ul4fJm5LT1d9qWvSVp1vOfNe5YZBYoYUM6wNzfirMc3M+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=he6Jy9ZL
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Allow different FW API
 versions based on MAC type
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow the driver to be compatible with different FW API versions based
on the device's MAC type. Currently, E810 is only compatible with one
FW API version. Now the driver can be compatible with different FW API
versions for both E810 and E830. For example, E810 FW API version is
1.5.0 and E830 is 1.7.0.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 11 ++++++----
 drivers/net/ethernet/intel/ice/ice_controlq.h | 20 ++++++++++++++++---
 2 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index ffe660f34992..ca80b34f2f8a 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -510,16 +510,19 @@ static int ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  */
 static bool ice_aq_ver_check(struct ice_hw *hw)
 {
-	if (hw->api_maj_ver > EXP_FW_API_VER_MAJOR) {
+	u8 exp_fw_api_ver_major = EXP_FW_API_VER_MAJOR_BY_MAC(hw);
+	u8 exp_fw_api_ver_minor = EXP_FW_API_VER_MINOR_BY_MAC(hw);
+
+	if (hw->api_maj_ver > exp_fw_api_ver_major) {
 		/* Major API version is newer than expected, don't load */
 		dev_warn(ice_hw_to_dev(hw),
 			 "The driver for the device stopped because the NVM image is newer than expected. You must install the most recent version of the network driver.\n");
 		return false;
-	} else if (hw->api_maj_ver == EXP_FW_API_VER_MAJOR) {
-		if (hw->api_min_ver > (EXP_FW_API_VER_MINOR + 2))
+	} else if (hw->api_maj_ver == exp_fw_api_ver_major) {
+		if (hw->api_min_ver > (exp_fw_api_ver_minor + 2))
 			dev_info(ice_hw_to_dev(hw),
 				 "The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.\n");
-		else if ((hw->api_min_ver + 2) < EXP_FW_API_VER_MINOR)
+		else if ((hw->api_min_ver + 2) < exp_fw_api_ver_minor)
 			dev_info(ice_hw_to_dev(hw),
 				 "The driver for the device detected an older version of the NVM image than expected. Please update the NVM image.\n");
 	} else {
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index 8f2fd1613a95..653d3de8c4a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -21,9 +21,23 @@
 /* Defines that help manage the driver vs FW API checks.
  * Take a look at ice_aq_ver_check in ice_controlq.c for actual usage.
  */
-#define EXP_FW_API_VER_BRANCH		0x00
-#define EXP_FW_API_VER_MAJOR		0x01
-#define EXP_FW_API_VER_MINOR		0x05
+#define EXP_FW_API_VER_BRANCH_E810	0x00
+#define EXP_FW_API_VER_MAJOR_E810	0x01
+#define EXP_FW_API_VER_MINOR_E810	0x05
+
+#define EXP_FW_API_VER_BRANCH_E830	0x00
+#define EXP_FW_API_VER_MAJOR_E830	0x01
+#define EXP_FW_API_VER_MINOR_E830	0x07
+
+#define EXP_FW_API_VER_BRANCH_BY_MAC(hw) ((hw)->mac_type == ICE_MAC_E830 ? \
+					  EXP_FW_API_VER_BRANCH_E830 : \
+					  EXP_FW_API_VER_BRANCH_E810)
+#define EXP_FW_API_VER_MAJOR_BY_MAC(hw) ((hw)->mac_type == ICE_MAC_E830 ? \
+					 EXP_FW_API_VER_MAJOR_E830 : \
+					 EXP_FW_API_VER_MAJOR_E810)
+#define EXP_FW_API_VER_MINOR_BY_MAC(hw) ((hw)->mac_type == ICE_MAC_E830 ? \
+					 EXP_FW_API_VER_MINOR_E830 : \
+					 EXP_FW_API_VER_MINOR_E810)
 
 /* Different control queue types: These are mainly for SW consumption. */
 enum ice_ctl_q {
-- 
2.41.0

