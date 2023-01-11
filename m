Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 515B26662CC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 19:31:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F69B60E3F;
	Wed, 11 Jan 2023 18:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F69B60E3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673461881;
	bh=lVD29dQO2+41GS8qZDAC9prd9zaCFKiQe9bmlesVNtE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8H3c4F0y+dcLHTBihAZpJxP/JZuwUTNegw6N0/g17wl4VZb5Nl2PYvpKB6Kqcji0Q
	 A1Lyv1oA3FkqOxpdzOkXvw0JYM6V5FGktHHbHtYD6NBerpGqOsE/i4eP6ftoqWeO1l
	 ZirTV4SICKpI1NEC2JMTVY/xVUyEbyNj2o0xjzrM5EwxhMb+0J9luK8eIK5YTVPouQ
	 JsTA9XLQccmL35l6M9KYRSUkwobUYOG3cK2HpV7oBENGiz7xClgFeWqDRAiP2m3CSs
	 k6RuaoFErpYbV0N9aoqflHsFmL6KTWuSyEBr+MMeKjZFJON+bQqdxBEazS8KpxpJMp
	 9vWZ1tnqLR5VQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VM6_KBX2oaDr; Wed, 11 Jan 2023 18:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EE0960BC5;
	Wed, 11 Jan 2023 18:31:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EE0960BC5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1908D1BF331
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 18:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7A2760BC5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 18:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7A2760BC5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1RjD1JyYJe2p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 18:31:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7A8E60B27
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7A8E60B27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 18:31:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385813062"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="385813062"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 10:31:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="726019175"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="726019175"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 10:31:12 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Jan 2023 10:31:45 -0800
Message-Id: <20230111183145.1497367-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673461873; x=1704997873;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kXBivkX4v0ExncVZo+iA3Q9vKkxQz0944A3kdmR9AkU=;
 b=SRretsnNEeU8Ynp34fsiKZwyU+fOaGmENbLVn0r8OJJ/kp6jzrFBGlfP
 lfNYJ43ogK2EWD546tAUhT/aqxN0qbBqsDUS44wLayfgjOPeLddSttufd
 /XouT1yoB9DlyLt10+/KPAApHApPkS/dI1iEGZfqZwhc4ljOKGrSnI1We
 LHKBZPUHSA/EzT7+Z+L6WiBAsGloBpT3TuCgOvKOHaGh/LDEFIyznOv93
 hpQ6oK/ltduIALm1T9AgF0tHjfjfIVSebqnEQPVoySH4DrNLkx1bn+XUI
 SATri5A7KbknumuLHrXjjKQPx6X03kJqBhst3WXTOsdAlPuayiRpi8Fmk
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SRretsnN
Subject: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing auxiliary
 plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RDMA is not supported in ice on a PF that has been added to a bonded
interface. To enforce this, when an interface enters a bond, we unplug
the auxiliary device that supports RDMA functionality.  This unplug
currently happens in the context of handling the netdev bonding event.
This event is sent to the ice driver under RTNL context.  This is causing
a deadlock where the RDMA driver is waiting for the RTNL lock to complete
the removal.

Defer the unplugging/re-plugging of the auxiliary device to the service
task so that it is not performed under the RTNL lock context.

Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-0487c95e395d@leemhuis.info/
Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 14 +++++---------
 drivers/net/ethernet/intel/ice/ice_main.c | 17 +++++++----------
 2 files changed, 12 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2f0b604abc5e..0ad9bab84617 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -506,6 +506,7 @@ enum ice_pf_flags {
 	ICE_FLAG_VF_VLAN_PRUNING,
 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
 	ICE_FLAG_PLUG_AUX_DEV,
+	ICE_FLAG_UNPLUG_AUX_DEV,
 	ICE_FLAG_MTU_CHANGED,
 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
 	ICE_PF_FLAGS_NBITS		/* must be last */
@@ -950,16 +951,11 @@ static inline void ice_set_rdma_cap(struct ice_pf *pf)
  */
 static inline void ice_clear_rdma_cap(struct ice_pf *pf)
 {
-	/* We can directly unplug aux device here only if the flag bit
-	 * ICE_FLAG_PLUG_AUX_DEV is not set because ice_unplug_aux_dev()
-	 * could race with ice_plug_aux_dev() called from
-	 * ice_service_task(). In this case we only clear that bit now and
-	 * aux device will be unplugged later once ice_plug_aux_device()
-	 * called from ice_service_task() finishes (see ice_service_task()).
+	/* defer unplug to service task to avoid RTNL lock and
+	 * clear PLUG bit so that pending plugs don't interfere
 	 */
-	if (!test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
-		ice_unplug_aux_dev(pf);
-
+	clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags);
+	set_bit(ICE_FLAG_UNPLUG_AUX_DEV, pf->flags);
 	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
 }
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a9a7f8b52140..e2bc1340833e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2290,18 +2290,15 @@ static void ice_service_task(struct work_struct *work)
 		}
 	}
 
-	if (test_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags)) {
-		/* Plug aux device per request */
+	/* Plug aux device per request */
+	if (test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
 		ice_plug_aux_dev(pf);
 
-		/* Mark plugging as done but check whether unplug was
-		 * requested during ice_plug_aux_dev() call
-		 * (e.g. from ice_clear_rdma_cap()) and if so then
-		 * plug aux device.
-		 */
-		if (!test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
-			ice_unplug_aux_dev(pf);
-	}
+	/* unplug aux dev per request, if an unplug request came in
+	 * while processing a plug request, this will handle it
+	 */
+	if (test_and_clear_bit(ICE_FLAG_UNPLUG_AUX_DEV, pf->flags))
+		ice_unplug_aux_dev(pf);
 
 	if (test_and_clear_bit(ICE_FLAG_MTU_CHANGED, pf->flags)) {
 		struct iidc_event *event;
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
