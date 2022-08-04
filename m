Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F97589D60
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 16:21:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AD79417BC;
	Thu,  4 Aug 2022 14:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AD79417BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659622862;
	bh=fB5MU4bLJHnEeXazo9pfp6AOCkiqpt9Oh1NXKpWlsgI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2R5xifzfbU+kX8gv91IBcmUM0Vp8W+hXoiKiA61XzMC7hvfIy41DlVocFYpzZrEfs
	 5f2RihAxUF4I0nsf0vyA3W7jW9pN2NptG4xVy1kq5UkqUdaAXdqnFXoca1Iyh/HrBZ
	 Y/cbpF9L9pIOqCC+p1qzKadPM0xU6Sqtv8U30oLg55G4daT14Vjpugf9kvOklNiQJ4
	 dWEOG7GmnzSPgicoViQePNvgf/jN5UBMw1b8QCfRDchJ6zSOvvKTj9YbLJImsk76K8
	 Vk3E9ktQ/jbmfCXlUIEyDcvAmho+0ofr7hpF9TM+ziFQdDB2zV1k7Y5Xky3LDqBwK9
	 jzmqrx4FTW7MQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSnPVNpSdGN4; Thu,  4 Aug 2022 14:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29039416E7;
	Thu,  4 Aug 2022 14:21:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29039416E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B29A61BF32E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 981E3417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 981E3417B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CMSbqftn_mnl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 14:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65431416E7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65431416E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="315820545"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="315820545"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 07:20:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="579089338"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga006.jf.intel.com with ESMTP; 04 Aug 2022 07:20:48 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Aug 2022 16:20:30 +0200
Message-Id: <1659622830-13292-5-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
References: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659622850; x=1691158850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=WhxQj4MxPoGUuIH7M3iZjfVuBUAwylOxSjytdYTnEto=;
 b=UPKtVXKRp6IYulYIidrykwc9kOcmQ1MedousIuFAGLi4XiMfl3f80x/7
 lCbRs6jR7hymMvSP/8LTJExhFa9nNfztoaeMMFar2VtUopM3SkQlvUSrf
 8WnIdWQAUSviuUq7o+TWhX2oMt4RSAve0bgnH/Ulojowk/ldanmkLuDnO
 RQp52w9kALibtnQHkinJZEnGLy+9SS8CDRZ2/ul6iWnpYVRMuD07mi+yh
 xBmKssrbgqm2FobB/qIklAysogg9Pde+pvQvuAA53skHH2Vi8kA21N0ff
 uKklA3ZU7XCqztvBB37c/0Y4u/aDWNUyLGc1HApALjrFcMSOhGOPBsLIJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UPKtVXKR
Subject: [Intel-wired-lan] [PATCH net v2 4/4] ice: Ignore error message when
 setting same promiscuous mode
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>

Commit 1273f89578f2 ("ice-linux: Fix broken IFF_ALLMULTI handling")
introduced new checks when setting/clearing promiscuous mode. But if the
requested promiscuous mode setting already exists, an -EEXIST error
message would be printed. This is incorrect because promiscuous mode is
either on/off and shouldn't print an error when the requested
configuration is already set.

This can happen when removing a bridge with two bonded interfaces and
promiscuous most isn't fully cleared from VLAN VSI in hardware.

Fix this by ignoring cases where requested promiscuous mode exists.

Fixes: 1273f89578f2 ("ice-linux: Fix broken IFF_ALLMULTI handling")
Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Link:
https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 v2: Fixed error message when setting same promiscuous mode
---
 drivers/net/ethernet/intel/ice/ice_fltr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 85a9448..40e678c 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -62,7 +62,7 @@ void ice_fltr_free_list(struct device *dev, struct list_head *h)
 	int result;
 
 	result = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, false);
-	if (result)
+	if (result && result != -EEXIST)
 		dev_err(ice_pf_to_dev(pf),
 			"Error setting promisc mode on VSI %i (rc=%d)\n",
 			vsi->vsi_num, result);
@@ -86,7 +86,7 @@ void ice_fltr_free_list(struct device *dev, struct list_head *h)
 	int result;
 
 	result = ice_set_vlan_vsi_promisc(hw, vsi->idx, promisc_mask, true);
-	if (result)
+	if (result && result != -EEXIST)
 		dev_err(ice_pf_to_dev(pf),
 			"Error clearing promisc mode on VSI %i (rc=%d)\n",
 			vsi->vsi_num, result);
@@ -109,7 +109,7 @@ void ice_fltr_free_list(struct device *dev, struct list_head *h)
 	int result;
 
 	result = ice_clear_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
-	if (result)
+	if (result && result != -EEXIST)
 		dev_err(ice_pf_to_dev(pf),
 			"Error clearing promisc mode on VSI %i for VID %u (rc=%d)\n",
 			ice_get_hw_vsi_num(hw, vsi_handle), vid, result);
@@ -132,7 +132,7 @@ void ice_fltr_free_list(struct device *dev, struct list_head *h)
 	int result;
 
 	result = ice_set_vsi_promisc(hw, vsi_handle, promisc_mask, vid);
-	if (result)
+	if (result && result != -EEXIST)
 		dev_err(ice_pf_to_dev(pf),
 			"Error setting promisc mode on VSI %i for VID %u (rc=%d)\n",
 			ice_get_hw_vsi_num(hw, vsi_handle), vid, result);
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
