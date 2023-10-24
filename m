Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABB27D4EE7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E79E841DDB;
	Tue, 24 Oct 2023 11:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E79E841DDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147311;
	bh=DhS2rzyLn/tMM/B9I1laWOuYkRzcaSDwggIcazYuaNI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fucbpi1NLuPnKbCkOkZLu3MiBFZPeI0Y3n/thMKTLP2Ad5zFC+yjzN2hxOM6j3So1
	 T8NAdsUMGbrOLnTJMkBpEUTJ2+d6evVhe/wmTjhLFQkh5OkPFWe8FWdmXMB8pu3wiF
	 /a+O5X/ZdwxjCjxEEWjdsSs48SqBV4f+0I3T3O+eeL3gcbnr0njaboj+OPVWA/Q21c
	 TXvGawZL44B2Esz5aJ1rSP7T4TdSNcA2A0ODDUoS2mPgdr83oq2LD07fsnvqXoHJoF
	 c27cue/7BtjW/9UGGyygBlfFhk2YLbCOSDUEz42O4fQhSRvX2wi+YDIYgmjru5muvM
	 y2vBTBKeKcktQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cMcMPmXdSSu7; Tue, 24 Oct 2023 11:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE325401D3;
	Tue, 24 Oct 2023 11:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE325401D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CDDC1BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 543E743122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 543E743122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fk9yoFIpA6Ch for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:34:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F55C4054E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:34:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F55C4054E
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660542"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660542"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:34:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146037"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:32 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:19 +0200
Message-ID: <20231024110929.19423-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147291; x=1729683291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pOP4TaA1QFKZPS4/quiy5ENIcIphfAumHFGGIkT2f5k=;
 b=KJxqTNWD1iIc2HqEjCPFyMbt7BH0GjV6rtvwM4PhlLYglC4kPFxl5V8/
 CzXHd0OnhZtw50nsoxDNJwPQmDLYNlWYr3sayu6+kLzJfL1E/Zzl1GrXx
 IlTB7t17+z8A+84KmJKN+OxIow+VREfN/e6GUkcXU5sOy5HyWrFo5z2S5
 /JpG1JgRAc5+eMf1Oyr1mQptspv3Et1T4/jglpkjOSFXWnkzmrLjihXJP
 1GgzffX6IR1LU8nkXq0+D2yx8tCt982hgISx1LG+zUccCZHYCPBcHlyvA
 ewZwON3QktTwXhqYUL8InBsjoKF1uZPbiOmk+cckeb8Ey/YySAX250LP8
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KJxqTNWD
Subject: [Intel-wired-lan] [PATCH iwl-next v1 05/15] ice: use repr instead
 of vf->repr
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

Extract repr from vf->repr as it is often use in the ice_repr_rem().

Remove meaningless clearing of q_vector and netdev pointers as kfree is
called on repr pointer.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_repr.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index a2dc216c964f..903a3385eacb 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -355,16 +355,16 @@ static int ice_repr_add(struct ice_vf *vf)
  */
 static void ice_repr_rem(struct ice_vf *vf)
 {
-	if (!vf->repr)
+	struct ice_repr *repr = vf->repr;
+
+	if (!repr)
 		return;
 
-	kfree(vf->repr->q_vector);
-	vf->repr->q_vector = NULL;
-	unregister_netdev(vf->repr->netdev);
+	kfree(repr->q_vector);
+	unregister_netdev(repr->netdev);
 	ice_devlink_destroy_vf_port(vf);
-	free_netdev(vf->repr->netdev);
-	vf->repr->netdev = NULL;
-	kfree(vf->repr);
+	free_netdev(repr->netdev);
+	kfree(repr);
 	vf->repr = NULL;
 
 	ice_virtchnl_set_dflt_ops(vf);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
