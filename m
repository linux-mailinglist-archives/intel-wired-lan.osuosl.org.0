Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3FC3F53E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 01:58:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2A0C4051B;
	Mon, 23 Aug 2021 23:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DRnLdS74TsWW; Mon, 23 Aug 2021 23:58:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 928AA403B4;
	Mon, 23 Aug 2021 23:58:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19A841BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDF0940521
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pnbxGXysEShk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Aug 2021 23:58:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4180A4051B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="302783965"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="302783965"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 16:58:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="493196596"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2021 16:58:27 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Aug 2021 17:01:47 -0700
Message-Id: <20210824000158.1928482-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 02/13] ice: remove dead code for
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

From: Jacob Keller <jacob.e.keller@intel.com>

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
index f54148fb0e21..09d74e94feae 100644
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
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
