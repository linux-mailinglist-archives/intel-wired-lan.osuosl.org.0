Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DC17D4EE3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4545041B84;
	Tue, 24 Oct 2023 11:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4545041B84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147302;
	bh=B0N2/uImjHSBLW3fHYkQi4T8YcETIkGzf7CuRLrsb0E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8R496qkeoV0pjKHB5Z3krxtBcy1kw5iqFWa+41D9Bs98fCDPLlhseRWFgF1inUQFn
	 9NdP45+upbOBy+rjNt7iQoxAVPRjiuMwph/gd0W7wUEKCQj63Rg9D8WdUES/XRtUSo
	 8Qi7uJUHdt6+OhvLtiWeawOH2+cwUzWr4+vN/o8ODEwQsH5zzPCR2UhvWhiS/6XgPG
	 lk1aNcfjSuGC7mna5KMlWgKQcJB1P2n64CIA81/XS6J2PJ+juHMSC+vfhfKOIQMKzh
	 TjHp/3QLwmhx5idnIKdcwZDRjs0roTFQ+MV4RB8h7XdBnwSSOERLBqbbWTQsAt7xR0
	 PEyHtq5VAC5Wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvlAElqDaQRA; Tue, 24 Oct 2023 11:35:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C45F41768;
	Tue, 24 Oct 2023 11:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C45F41768
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C72E1BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D802D42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D802D42ECD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fE-4Fpw2NZu1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:34:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0276A4054E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0276A4054E
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660526"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660526"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:34:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6145979"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:27 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:17 +0200
Message-ID: <20231024110929.19423-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147287; x=1729683287;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uNyGsXLuPM6ACKgLWe6U53AUDwuyxhPZp6uE5dhElZc=;
 b=Om3nEWGG5+qyQCF8oF/osCWfaUmvw11/7BKzpDStx9rNAg/623eaN/jm
 d/cnVSmIvFWy1ehuYoiERuLBX9KkKIkUlhkLeQem0/MbfCwymNjrGBGSc
 vdKdM+Qrj6WQf+Kw/e1qc6/Le99xWZ8/dU+x42nqaFS/LAe/l/WGRrzq0
 dJdVRzjmQni/9qr7cxT417/9psJqG0osVGVoVjuab2QRChYTdyzzrHOEv
 EK8yYrivUTXSyFv5K3yperQezjXzGUwxwmb50TN9IMLKDzBvhXN9PswXz
 fFI4Ghs7WbdqDsMrcx+HTDAtSD1FJ9THGXJ60EyeC60eSeWg36So4/G3j
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Om3nEWGG
Subject: [Intel-wired-lan] [PATCH iwl-next v1 03/15] ice: remove unused
 control VSI parameter
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It isn't used in ice_eswitch_release_reprs(). Probably leftover. Remove
it.

Commit that has removed usage of ctrl_vsi:
commit c1e5da5dd465 ("ice: improve switchdev's slow-path")

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index fd8d59f4d97d..a862681c0f64 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -189,10 +189,9 @@ static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 /**
  * ice_eswitch_release_reprs - clear PR VSIs configuration
  * @pf: poiner to PF struct
- * @ctrl_vsi: pointer to eswitch control VSI
  */
 static void
-ice_eswitch_release_reprs(struct ice_pf *pf, struct ice_vsi *ctrl_vsi)
+ice_eswitch_release_reprs(struct ice_pf *pf)
 {
 	struct ice_vf *vf;
 	unsigned int bkt;
@@ -286,7 +285,7 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 	return 0;
 
 err:
-	ice_eswitch_release_reprs(pf, ctrl_vsi);
+	ice_eswitch_release_reprs(pf);
 
 	return -ENODEV;
 }
@@ -532,7 +531,7 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 	ice_eswitch_napi_disable(pf);
 	ice_eswitch_br_offloads_deinit(pf);
 	ice_eswitch_release_env(pf);
-	ice_eswitch_release_reprs(pf, ctrl_vsi);
+	ice_eswitch_release_reprs(pf);
 	ice_vsi_release(ctrl_vsi);
 	ice_repr_rem_from_all_vfs(pf);
 }
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
