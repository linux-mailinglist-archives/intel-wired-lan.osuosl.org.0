Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E234580DCCC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 22:17:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 76D4041A4C;
	Mon, 11 Dec 2023 21:17:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76D4041A4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702329463;
	bh=IkzBiJ72I5DZYsTY5hI9n83/M8G767bxD5tAdpB2Nsg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uvpyBVeFlDqrmDZS4xDPPl2pCCupdqajHzmosYmWFVieoM6xBZLIzD1uO0wwpOYfJ
	 sAZvyrNMHVfitIfH2qylDqTTxUgP3BYLCdOifJtz7ZXlkwICMEFykFuK+qwSl/gj7i
	 SKs1HhsHLzK7PFORKBM/BF5OimfqrILRlJxXcZdctAQEHkvLCDvPH4onGFNyHjlXxj
	 brgO2ew2JjDGzoVm2cEct7ei82C+r+44EoS5jueHbILRMtRqkQuFRZupSBhYKZLv18
	 PzJjmHjmyuszHih8CYFXn3fNlkS4Y0Z09b9Bf3MCBLwvnNXJq1ITh+qHpjZhaZHABV
	 8y0GkVgtzQyrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ErNiiwhq9qp2; Mon, 11 Dec 2023 21:17:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 289F940503;
	Mon, 11 Dec 2023 21:17:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 289F940503
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D15891BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6D6A41747
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6D6A41747
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6N2vPeldP74k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 21:17:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 009144173B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:17:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 009144173B
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="13406214"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="13406214"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:17:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="14662033"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:17:34 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Dec 2023 13:19:28 -0800
Message-Id: <20231211211928.2261079-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702329456; x=1733865456;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yuAX9jyl65lpPzqJ71UXXGHbloXh0bqU1dqvk5SDlHo=;
 b=S37fy+BwhcELK5OXtXaUWQC39Xcp92F/YXPxqozgCRsIWiWOegUrxgQe
 T5MJA8W4wLEKm5JGrCwFKQ24nHPW43hReOuIuVrf/M6v8CH2djMW9rI6l
 5LNom5Tx4gepd8QWdptdUB+OlGGsSw7dTfpL0+2+c29gZpDnSXeeIoKrh
 aKxU+XecJcjC5/TzuLWwsJ+jXOHClvYoIBuHenZli2v+zLqdI/eNqhKkS
 IAe4JekCNi3uLvvicPbKq7PPvLOSQa14CkSeJPpovrcWO2AL0GmqEQ4Mn
 MNJFNtMoc0Wtw4RaaLkkbKQvGoSfrNr4myPN0NZVYnFjApxbuUOScTD+G
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S37fy+Bw
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: alter feature support
 check for SRIOV and LAG
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previously, the ice driver had support for using a hanldler for bonding
netdev events to ensure that conflicting features were not allowed to be
activated at the same time.  While this was still in place, additional
support was added to specifically support SRIOV and LAG together.  These
both utilized the netdev event handler, but the SRIOV and LAG feature was
behind a capabilities feature check to make sure the current NVM has
support.

The exclusion part of the event handler should be removed since there are
users who have custom made solutions that depend on the non-exclusion of
features.

Wrap the creation/registration and cleanup of the event handler and
associated structs in the probe flow with a feature check so that the
only systems that support the full implementation of LAG features will
initialize support.  This will leave other systems unhindered with
functionality as it existed before any LAG code was added.

Fixes: bb52f42acef6 ("ice: Add driver support for firmware changes for LAG")
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

---

v2: Added Fixes tag
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 280994ee5933..b47cd43ae871 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1981,6 +1981,8 @@ int ice_init_lag(struct ice_pf *pf)
 	int n, err;
 
 	ice_lag_init_feature_support_flag(pf);
+	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
+		return 0;
 
 	pf->lag = kzalloc(sizeof(*lag), GFP_KERNEL);
 	if (!pf->lag)
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
