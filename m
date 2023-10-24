Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A327D4EE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:34:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3128D401D6;
	Tue, 24 Oct 2023 11:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3128D401D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147297;
	bh=bMSwEncOGlDUs1TDV1LDZt1KaxVH/rCd8HcLfq+O/24=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=petQc2AV5+i224OwYgNfekqOCp3h44zEiFXRmxmL4fXumv0OjKk21RjwMHK+GxBAL
	 b8Yni5DPhFLMX2Btr+Vfq5JC93JLzNKFxxX09AyqeP6fxMfcx/n22OQUy9iwoy7+Px
	 kyx9s3WRfzw1c+a7if0o1Oz7MdK+xwgwfrhRUvVvUiI7GumTydxjRkbeV/XE6mzBX7
	 V0tOejV8b4dRlE7P+qJepzzOWlu91HAyTDnqLLPBHiHETEPGyqyYYWBmSOVdWDVepA
	 +mSNKe+6Lae3+yaUdsEBioLnzfaLXZNMhNkBB6AuGfOc0ibBOF0qDCemxAr6cUPww3
	 Dj3mmiVG0K6iw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNgxkl86MfaS; Tue, 24 Oct 2023 11:34:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 278E0401C5;
	Tue, 24 Oct 2023 11:34:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 278E0401C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BDA471BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9456A42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9456A42ECD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mvh7Zf1FV2Nj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:34:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B50324054E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B50324054E
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660522"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660522"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:34:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6145963"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:25 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:16 +0200
Message-ID: <20231024110929.19423-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147285; x=1729683285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tVyuCVIXyackENHVgz8P8HyFcLS2q5Cu0eQ0fEgBzBg=;
 b=n17hddpfGjdUxeBg6cNylqeahcc1Yu5MPV3sF3q9+jW3IT1i8qBsOHGQ
 KSspoaaqT/AsqjTXthi/lSAn2ETLbaI4TFMW226D7KMlBYS4ANQvN7qWd
 Cq09pZ0pjQmtmNemtmP5Jwun3pEyjkffjoXqXckL7hDoVIbp95hVBtirk
 hIjwoOTy2draEh7dU13UQ5MgOMZOFWsDXVR0wYB3rhBUg+ngcFptUgymC
 Ob5TuUZw1eSi6Ax+IKwoWCPYXmbdolcpUV01mNVSz/gItE8RD8a0lR9bP
 MrDW2YRhH3N+zt7OIdE306b0b5RHq6pvWcDIBnQgIblbyZKuQSqd9FyIJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n17hddpf
Subject: [Intel-wired-lan] [PATCH iwl-next v1 02/15] ice: remove redundant
 max_vsi_num variable
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

It is a leftover from previous implementation. Accidentally it wasn't
removed. Do it now.

Commit that has removed it:
commit c1e5da5dd465 ("ice: improve switchdev's slow-path")

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index e7f1e53314d7..fd8d59f4d97d 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -224,7 +224,6 @@ ice_eswitch_release_reprs(struct ice_pf *pf, struct ice_vsi *ctrl_vsi)
 static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 {
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
-	int max_vsi_num = 0;
 	struct ice_vf *vf;
 	unsigned int bkt;
 
@@ -267,9 +266,6 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 			goto err;
 		}
 
-		if (max_vsi_num < vsi->vsi_num)
-			max_vsi_num = vsi->vsi_num;
-
 		netif_napi_add(vf->repr->netdev, &vf->repr->q_vector->napi,
 			       ice_napi_poll);
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
