Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2E27C82F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 12:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D415760769;
	Fri, 13 Oct 2023 10:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D415760769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697192875;
	bh=V+O8YRiuGbi3yk67vYSHCK2u89ZGkb9Ul+89ZBtz75c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tdarhY4GFczo2S3Oeyac5BZ+dijwo7UhQsXR8U0RysFNs1xT3Hj1mNACEN/834/om
	 6qyYYjXjw6PoWvTheJV4MoMCBbjLrut3I6aJ6+o0LuzNE7x1VB/gsSJhdlqoZqVPN7
	 B7qVuG3InkjhyVgjrVtAxUYmAAXBLQFUib0I/yf4lFjBUwLxDitkjoHMJUpBjfng4G
	 3eOk6EnmTPi4Uic+6jYDNY8IVNA48Pc8ugKXIwXenF3/i7QDME4DuW+DmeXpxxsLrV
	 ajgWZrF0nfMnoAEqt/2XHFu+r7poEOxqQnN9NcE7qoR8p/CpZ/gazoXWC9OjADwJLC
	 E1h7mWF+bWspw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fj43AnIYzQlH; Fri, 13 Oct 2023 10:27:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D34C161512;
	Fri, 13 Oct 2023 10:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D34C161512
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9FE91BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8031860644
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:27:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8031860644
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19dSVelC0Amz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 10:27:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6CAF605EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6CAF605EC
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="384989132"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="384989132"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="784102313"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="784102313"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga008.jf.intel.com with ESMTP; 13 Oct 2023 03:27:43 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 13 Oct 2023 12:25:10 +0200
Message-Id: <20231013102510.34886-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697192868; x=1728728868;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AyxrP8LqaP6HORXWWVOCahcoC36T7lig57+UwW34OCc=;
 b=JmzHkAIreBbZyAY2M7LBp9tvBTP9vnw9dohs4X7VUvpIudq64qVDniJl
 Wj8bWFiVIcmresLVS0vdGmcpCOc2n6Eb4JKSga3RtG4eTToFwxNg2h+6I
 StDy92qx5ksIJC2dueWoOXfOj7gWt2IQJXzTV2L+I3SRyKwCLBXNMZqd5
 iEhpnrHHIqL4co+Sx/JseUbuxHt7qoKUfQYtPqQEDIpxAJbHCL2sE7NP/
 4o5CJiahq5Mxg/98YTzkLDU5t7cC/Y5SjhsEIofAlpIzYOBbfIF2iswSY
 eo5raSyljz7ZcA32Hd+I0cpdHki7zuPRMacm0oGYBzlRKLjOETdki3TnP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JmzHkAIr
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix initial lock
 status of dpll
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When dpll device is registered and dpll subsystem performs notify of a
new device, the lock state value provided to dpll subsystem equals 0
which is invalid value for the `enum dpll_lock_status`.
Provide correct value by obtaining it from firmware before registering
the dpll device.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 1faee9cb944d..69d20a203e40 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -1549,6 +1549,7 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 	}
 	d->pf = pf;
 	if (cgu) {
+		ice_dpll_update_state(pf, d, true);
 		ret = dpll_device_register(d->dpll, type, &ice_dpll_ops, d);
 		if (ret) {
 			dpll_device_put(d->dpll);
@@ -1589,8 +1590,6 @@ static int ice_dpll_init_worker(struct ice_pf *pf)
 	struct ice_dplls *d = &pf->dplls;
 	struct kthread_worker *kworker;
 
-	ice_dpll_update_state(pf, &d->eec, true);
-	ice_dpll_update_state(pf, &d->pps, true);
 	kthread_init_delayed_work(&d->work, ice_dpll_periodic_work);
 	kworker = kthread_create_worker(0, "ice-dplls-%s",
 					dev_name(ice_pf_to_dev(pf)));
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
