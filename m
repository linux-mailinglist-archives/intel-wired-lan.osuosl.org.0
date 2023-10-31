Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 017397DD44A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 18:09:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2641C83E15;
	Tue, 31 Oct 2023 17:09:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2641C83E15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698772181;
	bh=MlJ2lTTmq392tDjgZ/oHAbhH9wTGczHI+E8365ZjaRs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=U7aWsKNwhcTTImIutigUvozm90Bx9sYlXcP9sTzeWA53HmhpALYd/XLfRMf8xNKM/
	 MkC9AxPHJqUwZWIhDLDT4ryA6AO52KHj+UVwGrDPVJNK0R++kCnbBAy74kr7o7ogpi
	 Cv+7pDtLVGqPQC7+uAwMFp+qVpbeMaMV68NxgPFCbyWXdrRSEnXSpojwYIVcMURb3f
	 392w++L4P4nBSBYa6d9yKYGPkiTMt7IBzlebtjbiLXoVILv1zTapa9HeGOclyCJDAf
	 S1JNtvckSkeLpeQvuk4xO3vvx4F6uwiJ00Hm8yUbNJiCZE7k70Vpnbuq/zo+Ju3OuM
	 2KnJ0gsNoyWrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVWlgoFh4oLu; Tue, 31 Oct 2023 17:09:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 078D383E0D;
	Tue, 31 Oct 2023 17:09:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 078D383E0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A389B1BF28C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 17:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 793B241976
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 17:09:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 793B241976
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FnC6MyZSqUkj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 17:09:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D020D41974
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 17:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D020D41974
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="387219667"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="387219667"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 10:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="831114955"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="831114955"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga004.fm.intel.com with ESMTP; 31 Oct 2023 10:09:30 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Oct 2023 18:06:54 +0100
Message-Id: <20231031170654.1115160-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698772172; x=1730308172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NAQBdRgcPYHgkLFFQjxz4QP8fnFuRuhVfu20c0mTXMY=;
 b=CSCAmhfcaqIUvfMLJ8QUymgd8VFRfJKWCEgofMNza7F45lB0Hqe5+pq0
 oKES0ruaIhZsBuOFGo7k4FG2dIRiZTPVz34iEMIyth7oLGyxLuBSKmyl9
 sHBE5A/VasPoqS2Fn5/P1vGRralrSvj6g77NUb2eJWy6KaVRvbSbsm6bk
 z+rfQ775zjXcuBFPNmLfMIQzQMjImMytokYETCvByyOMFC7vRp3G9VTpk
 PGsVEN3dEdBmDKFiN0/1x1wh7toKBczOOU9YvW3wYIiD2/Eg7UygS6OtY
 3QamQVLolsDn04cxhe3Hr0IkXCmesCcYF8I5QUBk5Ex7h/8okt7dhlCEn
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CSCAmhfc
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix check for dpll
 input priority range
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Supported priority value for input pins may differ with regard of NIC
firmware version. E810T NICs with 3.20/4.00 FW versions would accept
priority range 0-31, where firmware 4.10+ would support the range 0-9
and extra value of 255.
Remove the in-range check as the driver has no information on supported
values from the running firmware, let firmware decide if given value is
correct and return extack error if the value is not supported.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 6 ------
 drivers/net/ethernet/intel/ice/ice_dpll.h | 1 -
 2 files changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 607f534055b6..831ba6683962 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -815,12 +815,6 @@ ice_dpll_input_prio_set(const struct dpll_pin *pin, void *pin_priv,
 	struct ice_pf *pf = d->pf;
 	int ret;
 
-	if (prio > ICE_DPLL_PRIO_MAX) {
-		NL_SET_ERR_MSG_FMT(extack, "prio out of supported range 0-%d",
-				   ICE_DPLL_PRIO_MAX);
-		return -EINVAL;
-	}
-
 	mutex_lock(&pf->dplls.lock);
 	ret = ice_dpll_hw_input_prio_set(pf, d, p, prio, extack);
 	mutex_unlock(&pf->dplls.lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index bb32b6d88373..93172e93995b 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -6,7 +6,6 @@
 
 #include "ice.h"
 
-#define ICE_DPLL_PRIO_MAX	0xF
 #define ICE_DPLL_RCLK_NUM_MAX	4
 
 /** ice_dpll_pin - store info about pins
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
