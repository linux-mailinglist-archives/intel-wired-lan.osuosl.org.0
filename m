Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2AF589D5E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 16:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B22E982B21;
	Thu,  4 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B22E982B21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659622853;
	bh=ILqmT0NZVo4MXOQHj3ZeHieHq9Z9s/reieiRxyDa8GQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rPtze8jgno7TCAK7V2mFbpwlqu5C9asRf6Ti/m/OwkKSggJZKEIHCN6HduialZz1k
	 HKMdJEbB8bQHEj1hzi/sms1UvZo3Rptuf1fB4PSHGt2TsI3qHuMrJnN4PjGc19p+rq
	 cykYULGYJK01P7udMGxNtIEV2IIE4LHlnQnM8EyfvjnZs1qUzuUy0geg/pwuru9cJ4
	 BAjIZQbW7XUk5X7aoXtT7YtBM+mlWrRrpZJSM02AGQHyreo3P3E1+D0lIXbAeafFl8
	 cWMfIgLrUIpyC5HZgDpSIZlmn8mVvtXvHSn7FsjmCXIILVcTuG1FNCTr3OpxyzRBOv
	 u5ONq78Z0sIyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xTbwDV9tIMIA; Thu,  4 Aug 2022 14:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 939E682A87;
	Thu,  4 Aug 2022 14:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 939E682A87
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8380F1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1EE28416E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EE28416E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ikpmfYFbfMOB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 14:20:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7E67417B0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7E67417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="315820532"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="315820532"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 07:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="579089327"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga006.jf.intel.com with ESMTP; 04 Aug 2022 07:20:43 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Aug 2022 16:20:28 +0200
Message-Id: <1659622830-13292-3-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
References: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659622844; x=1691158844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=YPr1kgb/knsfuD1motUsE94GVO7CH7Ezvyz7En80rWw=;
 b=UqnVH6X0oXFjBphFQbX4prD5LZnoQHmrFxDLbg2I+/MgT/ancGeJL00l
 aDUazF+T1tRFOYnjVxA7//7Ue7PrGcRdHL0rxg3a6Jd4TJp3wlHa3+uEB
 samUoKHvBaXauxnf7eqeyb0xiXopbf2z9sHrZ6cHNPDH30kobV1BywZ1d
 jXMknvJQSb2ndmaFVe2jl2MgjZw0U6UEtklWS39yg4+2uvxk4T3+rSfBe
 VgSNZQuU+xsfwMLikVPTK62tmwMshtRlnx3Abh4PoXrL/9wy7I0+zI793
 2/K+mFerYRaSeE8TSA+vIzBkyXwgrzeXL/BsJHgmLvGagQPcj2DcuNmBh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UqnVH6X0
Subject: [Intel-wired-lan] [PATCH net v2 2/4] ice: Ignore ERR_ALREADY_EXISTS
 when setting promisc mode
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ignore ERR_ALREADY_EXISTS error when setting promiscuous mode.
This fix is needed because the driver could set promiscuous mode
when it still has not cleared properly.
Promiscuous mode could be set only once, so setting it second
time will be rejected.

Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Link:
https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 v2: Fixed error message when setting same promiscuous mode
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 8a60052..0aa4871 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4428,7 +4428,7 @@ static u8 ice_determine_promisc_mask(struct ice_fltr_info *fi)
 		else
 			status = ice_set_vsi_promisc(hw, vsi_handle,
 						     promisc_mask, vlan_id);
-		if (status)
+		if (status && status != -EEXIST)
 			break;
 	}
 
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
