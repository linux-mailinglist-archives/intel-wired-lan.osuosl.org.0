Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2F73BF287
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 01:41:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6813405D5;
	Wed,  7 Jul 2021 23:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7S36m8-hnWRb; Wed,  7 Jul 2021 23:41:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B90024058F;
	Wed,  7 Jul 2021 23:41:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 656A31BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E7E18350A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smkWjunqCY0D for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 23:41:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBB0483004
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:41:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="273250401"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="273250401"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:41:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="411136299"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:41:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  7 Jul 2021 16:40:57 -0700
Message-Id: <20210707234108.4071506-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210707234108.4071506-1-jacob.e.keller@intel.com>
References: <20210707234108.4071506-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next v3 02/13] ice: remove dead code for
 allocating pin_config
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

We have code in the ice driver which allocates the pin_config structure
if n_pins is > 0, but we never set n_pins to be greater than zero.
There's no reason to keep this code until we actually have pin_config
support. Remove this. We can re-add it properly when we implement
support for pin_config for E810-T devices.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e176c7484484..6c611e8a5b41 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1064,17 +1064,6 @@ static long ice_ptp_create_clock(struct ice_pf *pf)
 	info = &pf->ptp.info;
 	dev = ice_pf_to_dev(pf);
 
-	/* Allocate memory for kernel pins interface */
-	if (info->n_pins) {
-		info->pin_config = devm_kcalloc(dev, info->n_pins,
-						sizeof(*info->pin_config),
-						GFP_KERNEL);
-		if (!info->pin_config) {
-			info->n_pins = 0;
-			return -ENOMEM;
-		}
-	}
-
 	/* Attempt to register the clock before enabling the hardware. */
 	clock = ptp_clock_register(info, dev);
 	if (IS_ERR(clock))
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
