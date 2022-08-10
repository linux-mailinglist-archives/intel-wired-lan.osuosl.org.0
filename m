Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAE158EE2A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 16:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E71C16109D;
	Wed, 10 Aug 2022 14:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E71C16109D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660141347;
	bh=eLpJZ8+QTainlGeFsLSUkuNfJ5ayEvlP5mdBLLjsy2I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BFavlVFFyFr5AOH/6pBo+7o0y6yicFisUIMdefgIeyle/uoPo+CDoAlauFDvGT51B
	 SFGxGCLxWSLDDcm/TntgUKBhwaPgyl0pbHM6ximsFabqCEhO0lsCyzfNOKfJ+NzC9l
	 vieZroDOt673+yuNmzaZYmP1trslqm5c96ZAwaqSJ6r0cyPHx6qJri8bTryhZcJNEr
	 Y/nEAi0NY20aPeV6KAVCK4ZXXUB+f6g3GSnngQucaQh916p8FhfggIQvKbssa4HkxF
	 8iKWFuTw+Lnm0osJ692XFJMLRmVpkkQz+yO9O1qFMPt+W814Fb5EiLp5VInyMm4nkv
	 OfJ0EoUKlCirw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pb0enlMARnRw; Wed, 10 Aug 2022 14:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D75F260AC0;
	Wed, 10 Aug 2022 14:22:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D75F260AC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B02D11BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8BAA940150
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BAA940150
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4-CuLYeFmRG8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 14:22:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB20B40C0D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB20B40C0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="291882984"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="291882984"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 07:22:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="638121337"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga001.jf.intel.com with ESMTP; 10 Aug 2022 07:22:09 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Aug 2022 16:21:55 +0200
Message-Id: <1660141315-216111-5-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1660141315-216111-1-git-send-email-grzegorz.siwik@intel.com>
References: <1660141315-216111-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660141330; x=1691677330;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=cCz5E0N7fCZ2PUxAT0gednirL/txNbRJendx5GzXvnI=;
 b=nJYQZ+MSyaMz5R9eXlkU3qs6UXY6Im/Gctng/iThHNCjCU+Lto+mUtk0
 RhbksYHnwKQ3oUEo5Ur5qXeHAHC0v9dCgYCvnTUb0mYEZk6Q3koBI+2RG
 KxljYO84Huy0kzvkc2tpBeTltas/KcU8FSX9NSnfAANuRpG1pI1u9LYDI
 DdmJ9NIxkNI6wECuqVG1N1pr4SQ9IFXP8MI5HOQ8Cmu3a8Wz6xfFonkes
 hXwRn+eEiulCYX3LZe44GB6qKYxlPExjGKV3ReAc6+0MwSoiwUYbClGxN
 Dhj0b8U+ludtswe85qrCHGngWUC9NstKrm+3ILICZBYMr4QUoeVEL3jBu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nJYQZ+MS
Subject: [Intel-wired-lan] [PATCH net v3 4/4] ice: Ignore error message when
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
