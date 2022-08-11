Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E68C58FD39
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 15:17:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29861610F5;
	Thu, 11 Aug 2022 13:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29861610F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660223828;
	bh=YJroeg01IEmZH74O3uNvIu+8Psj7YYBkU8rm9mBp8X0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VDgUAWZQSPIJKzX1fKePwrBnXBXmeDa1bsy1mL2nW2rJh+8e0iqK8WMoviJxaM+jY
	 JoAwEPp6qYKCX2QyNRmhB0lCnPdH8Pivmj/RxzuhVTIgSAUgNajpHB223CmPqIF6J+
	 Kc6jvjM2yZGr6fKA0c6pygiH8+ac51HYANeTYBwyQJE908p7V7AZiFMLCD3QpVrKx/
	 Tkkye773OBde1rBqIXJoN/hotaKixrUNCXSDWqfsMf2fb9hREu6z1oP4VVzdbtzkeA
	 WyViYdOWWGXd99kvnyaa0LK42nNq5HRUzcUaytYmbuc5XCTUwrkmTFoGwsZcnrV0Aj
	 AyTKC7YQBWQEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7l3b0HSK1sBm; Thu, 11 Aug 2022 13:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C1A8610ED;
	Thu, 11 Aug 2022 13:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C1A8610ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60DEA1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47EDD41591
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47EDD41591
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YBzhC51o-Px3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 13:16:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15445402AA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15445402AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="274397619"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="274397619"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 06:16:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="634219911"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga008.jf.intel.com with ESMTP; 11 Aug 2022 06:16:48 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 15:16:41 +0200
Message-Id: <1660223801-254272-5-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1660223801-254272-1-git-send-email-grzegorz.siwik@intel.com>
References: <1660223801-254272-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660223810; x=1691759810;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=If0H74A75aFYhxPcf0ESOe9KLmJ8C5OEx3mBoYpLkVw=;
 b=aAowaGROZXA3CSmisSab6BFOSWt2SKCqQksjxP216qJXoZJS5753K8w4
 DM/0HLtB3Y0pvyw4eg6RvgM3F1DZS65heP5+tlo9l8SkzOCtoYTa0q068
 uRa/vwCS3RmVrAtM1uIAqSrx0xbYzIS2vRdLhIdHUO+ll2teFE89Qtc+Z
 iFPcvAEbq9eumZUYKSry/pf2uqcuzONnZSN8ben6CZaKyKd/y3boDzsF1
 yZ8r09sAcCJ6rHfVc5nHibyXHgT2UQa0lWZd/t6eu8g0Wvs4IGhuvjIhp
 /QRmqagbdMqP8yFnoc/RpYq+h4QNVXoYue4gKLgPH3/NzsDzJnxN9wWQi
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aAowaGRO
Subject: [Intel-wired-lan] [PATCH net v4 4/4] ice: Ignore error message when
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

Commit 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
introduced new checks when setting/clearing promiscuous mode. But if the
requested promiscuous mode setting already exists, an -EEXIST error
message would be printed. This is incorrect because promiscuous mode is
either on/off and shouldn't print an error when the requested
configuration is already set.

This can happen when removing a bridge with two bonded interfaces and
promiscuous most isn't fully cleared from VLAN VSI in hardware.

Fix this by ignoring cases where requested promiscuous mode exists.

Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Link: https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 v2: Fixed error message when setting same promiscuous mode
---
 v3: Fixed style issues, changed to return directly.
---
 v4: Fixed problem with patch applying
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
