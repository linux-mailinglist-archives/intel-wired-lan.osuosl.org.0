Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5798559115A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 15:26:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2FF56115D;
	Fri, 12 Aug 2022 13:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2FF56115D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660310770;
	bh=JPVsE2Dpiwcnn32dtze+EMhsdVxSiYrDgT01aCrl5jY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MoeKP7qNJrYmdNLyHAZ1EapiR+QeFi5G9/TrZ+VmQgDO5psOpE69BGcJkgqb16e2X
	 ChvMa+wBHvOlDRXhRIkxvZJrPNPAG34Cs2oX/T4wwUf1KYeQzGTCmiZv7qkKUdkhAQ
	 JPboW/6IV4KR/2Z0synkhwIb/IsVB4qU6l61ScL+6FD1AOhMAlLZkPM0tXV3bPpS8l
	 DuwHxhWUtorvfrdCPlNeO/jH5mVq2kriTA9vKhEe1Yy+bl04otughIzp76hQFB//tJ
	 Y34C5GeKkUtnOwYalT1VT0g3ajMiQBub2kEd5R7nDudPD5SBrvjQmt6h7W/MVEnbkz
	 qsA0UzqGINGhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RI3SLJcISxkR; Fri, 12 Aug 2022 13:26:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F96C6115A;
	Fri, 12 Aug 2022 13:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F96C6115A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4454F1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 13:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F7C083DEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 13:26:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F7C083DEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jflYfwaOdhDf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 13:26:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CC9283147
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CC9283147
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 13:26:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="290346960"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="290346960"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 06:26:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="674075759"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga004.fm.intel.com with ESMTP; 12 Aug 2022 06:25:59 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 15:25:48 +0200
Message-Id: <1660310750-290943-3-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
References: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660310760; x=1691846760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=8doJyrXuSR9WX8fGIMNAGOUA7iRG3sg+U9BrRZBssCM=;
 b=l5ch4qktqTz9BBUUHmZMXySl4CQ2Mk4MHDxSRyw8iVJ2m/DYcq0JHnet
 m16qp1EEpwFKkQSKa8/f10iEGZzFzxHw3aSUzp9oI5EZiEPsKeLXiI37U
 AFIEMpmOr6nmOzs5nKdeNJXqO9cXgRNycQLanbdKhOyLbdk0IL4Babmr4
 nphGhdZreAQIwkdTZef/hTzvpW4ZOFtgfeR0Ui+OVJA1gIGAUo3RcgkEN
 vmH5PB4PQmUoM4GFdgrCjAOGviPcZ7LwHncG4jnDpeZW8cIxBLQoRceu2
 CmSohyT9e82waDmYUKEbtLGlQX8n9GxAmwYR3wQyatC1b0dsJ5KHhiyfC
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l5ch4qkt
Subject: [Intel-wired-lan] [PATCH net v5 2/4] ice: Ignore EEXIST when
 setting promisc mode
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

Ignore EEXIST error when setting promiscuous mode.
This fix is needed because the driver could set promiscuous mode
when it still has not cleared properly.
Promiscuous mode could be set only once, so setting it second
time will be rejected.

Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Link: https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 v2: Fixed error message when setting same promiscuous mode
---
 v3: Fixed style issues, changed to return directly.
---
 v4: Fixed problem with patch applying
---
 v5: Fixed incorrect title patch issue
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
