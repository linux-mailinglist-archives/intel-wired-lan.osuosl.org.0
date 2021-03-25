Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D65349C77
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9051440F81;
	Thu, 25 Mar 2021 22:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tPvvR6PFwtsg; Thu, 25 Mar 2021 22:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67C1440F78;
	Thu, 25 Mar 2021 22:45:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3035F1BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1E8684B57
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QsowfD73jyyv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68E9084B55
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
IronPort-SDR: WSGz3u7ITYOmIjqxuestlFz6+cAp/9WlXKie8or2Xw1igLeUliHa/btPemssSjEFVtyuYJfMth
 VeH3C4XjbijA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031243"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031243"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: JGx5o9yrylvjl3GQGTGNqroS18ORQ63hiEvTWC3kCeiXGB71X7YQKx2yzMUsLsl1NJHHbY/AUb
 26ADdANqHqRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251372"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:13 -0700
Message-Id: <20210325223517.17722-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 10/14] ice: Limit forced overrides
 based on FW version
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

From: Jeb Cramer <jeb.j.cramer@intel.com>

Beyond a specific version of firmware, there is no need to provide
override values to the firmware when setting PHY capabilities.  In this
case, we do not need to indicate whether we're in Strict or Lenient Link
Mode.

In the case of translating capabilities to the configuration structure,
the module compliance enforcement is already correctly set by firmware,
so the extra code block is redundant.

Signed-off-by: Jeb Cramer <jeb.j.cramer@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8bbd28ddd56c..e93b1e40f627 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3013,17 +3013,6 @@ ice_copy_phy_caps_to_cfg(struct ice_port_info *pi,
 	cfg->link_fec_opt = caps->link_fec_options;
 	cfg->module_compliance_enforcement =
 		caps->module_compliance_enforcement;
-
-	if (ice_fw_supports_link_override(pi->hw)) {
-		struct ice_link_default_override_tlv tlv;
-
-		if (ice_get_link_default_override(&tlv, pi))
-			return;
-
-		if (tlv.options & ICE_LINK_OVERRIDE_STRICT_MODE)
-			cfg->module_compliance_enforcement |=
-				ICE_LINK_OVERRIDE_STRICT_MODE;
-	}
 }
 
 /**
@@ -3091,7 +3080,8 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		break;
 	}
 
-	if (fec == ICE_FEC_AUTO && ice_fw_supports_link_override(pi->hw)) {
+	if (fec == ICE_FEC_AUTO && ice_fw_supports_link_override(hw) &&
+	    !ice_fw_supports_report_dflt_cfg(hw)) {
 		struct ice_link_default_override_tlv tlv;
 
 		if (ice_get_link_default_override(&tlv, pi))
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
