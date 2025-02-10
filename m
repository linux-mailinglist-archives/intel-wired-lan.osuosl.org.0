Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 452A0A2EF73
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 15:15:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8431815CE;
	Mon, 10 Feb 2025 14:15:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IZMqX3nM1KgE; Mon, 10 Feb 2025 14:15:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EE9E81184
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739196902;
	bh=gn33dDji1dNUPakY08j3tzRofOabolad/M9dQMAWVkA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fb2oym7Ah+f2A3H32uY7cxg4DX9SFxzrM6DezfHgUyM0JzXm3sNNZVe/nAHTHU7Vj
	 rB9F3KLfJOLrCl8XGpwZAKuD854OGNwELbZbOiQ3B/UmFLrEY6tlKjUrMqS9kqdmBT
	 uDx0e1mw4kxQAjX8DzNcNNqs8hXTPbbcbZEHvmk2iLAaO0K4nWr61Ao9aNJh3x9D1A
	 Py1pTkNWSJW1QfyRmTnWi7aFN7P6lJeFcspVsqGDu+zCvw8Jt10h+ywb/hQZlMn4QF
	 huk6eqmhUNHrIjKt4jSBwfe6yiKX35FYPlGacPoka6Soot6jW+0umzB+/g0v7f2Rmo
	 WZrmKkaZkxizg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EE9E81184;
	Mon, 10 Feb 2025 14:15:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 44B1D6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 24EF240B3B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:15:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NRtuE8cVFPGC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 14:14:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3BA0C40B37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BA0C40B37
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BA0C40B37
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:14:59 +0000 (UTC)
X-CSE-ConnectionGUID: sCyM+/UxQ5qBlRPQoxYI0w==
X-CSE-MsgGUID: 7cK1YvnWSr25Vl0VX2dQDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39927457"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39927457"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 06:14:59 -0800
X-CSE-ConnectionGUID: bvPDu8AJSt2+gIAeUahn0A==
X-CSE-MsgGUID: Dd0+l4v1TQSNt9TjUVlSJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117421027"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa005.jf.intel.com with ESMTP; 10 Feb 2025 06:14:57 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Feb 2025 15:11:10 +0100
Message-Id: <20250210141112.3445723-2-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
References: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739196899; x=1770732899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6a8XNqhpjdh8KoPlMKlU3Ph79huP/CcEuLHzfeaH9eY=;
 b=kFkbBuTQqPaXKlkhEXlk8BlCJIg7ff3AZFALYmYwXeG6G3mvwYYfu4MV
 XALkzM9gphpJH8PfxEIh5YVKyxCyYX59HVoP1Y8SKt/5na2p7/jc4BZ3w
 Pw4z4chGGuAPAvwk4y6k+IzkCTVXMQ0zwh1NTQSyBLTxfaVryjCI2u/YU
 e2o6oVOesSVcN6CBymYSUI3wu/UCAjqmwYZ+N4J1cjNeTf8t31ujY3ebh
 s9WgdOMmws5dPj2gcVwnkw1eTsdZqdL+LGjlCChEehBdnNqoQ2OR9j9k2
 WdL8LvIldVdmH8Zh9r6NUpiOeqjAefpLOUah1Rfg1fHVv0AfY3OC+KuUy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kFkbBuTQ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: rename
 ice_ptp_init_phc_eth56g function
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

Refactor the code by changing ice_ptp_init_phc_eth56g function
name to ice_ptp_init_phc_e825, to be consistent with the naming pattern
for other devices.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3e824f7b30c0..fbaf2819e40e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2650,18 +2650,17 @@ static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
 }
 
 /**
- * ice_ptp_init_phc_eth56g - Perform E82X specific PHC initialization
+ * ice_ptp_init_phc_e825 - Perform E825 specific PHC initialization
  * @hw: pointer to HW struct
  *
- * Perform PHC initialization steps specific to E82X devices.
+ * Perform E825-specific PTP hardware clock initialization steps.
  *
- * Return:
- * * %0     - success
- * * %other - failed to initialize CGU
+ * Return: 0 on success, negative error code otherwise.
  */
-static int ice_ptp_init_phc_eth56g(struct ice_hw *hw)
+static int ice_ptp_init_phc_e825(struct ice_hw *hw)
 {
 	ice_sb_access_ena_eth56g(hw, true);
+
 	/* Initialize the Clock Generation Unit */
 	return ice_init_cgu_e82x(hw);
 }
@@ -6123,7 +6122,7 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
 	case ICE_MAC_GENERIC_3K_E825:
-		return ice_ptp_init_phc_eth56g(hw);
+		return ice_ptp_init_phc_e825(hw);
 	default:
 		return -EOPNOTSUPP;
 	}
-- 
2.39.3

