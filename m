Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B36B64E860
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 09:59:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDD8F41BAA;
	Fri, 16 Dec 2022 08:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDD8F41BAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671181138;
	bh=ypR3RkunOmlQrQb4xaMqRRxvFKN1+pTQHcFCrP3Ei5E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4JSW8TQsJfp7BP0ivUk9t9jTBhmKkURe0UqD0cdlUvTLmq5hQqelWyMU680ajEI/b
	 +hoSc7xAdSymUdIPTPh274CtBlZRzqGXOW0P8D5cWjjekLWZ0XqB+ZRCo5yrPO7abi
	 HAgj3ZppQhuX9O0c87mkiwAjDviQQN2rCcSavXcXpJoyLKBOENHQDA0TWPCAfvjRYC
	 bO2vevNpaE5xGadBTWNiIidjRd4lgtrs+xwWCZY5s+14tr8pNRZziNG8cLzHzM6p6R
	 gZ0jaUASVUppLKQb5UtAh5rEWCACXR8M2tmQyadoZuFcZ8mWsjxg9RoadFlP/ybkMT
	 rjKTWiiukfAtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pI8ub550cySD; Fri, 16 Dec 2022 08:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9752541B9A;
	Fri, 16 Dec 2022 08:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9752541B9A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A29911BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BC7140569
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BC7140569
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGD8m7l5N8Rt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 08:58:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E66DA404DA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E66DA404DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 08:58:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="383256689"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="383256689"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 00:58:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="738471785"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="738471785"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Dec 2022 00:58:35 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 09:43:16 +0100
Message-Id: <20221216084319.11699-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
References: <20221216084319.11699-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671181121; x=1702717121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=unS16nVWy3isgLs85nEntpNArvPSZg+8ZBDHAbDTZtc=;
 b=eACoYVz+/kIADremiLWvgb4WsmwbdiYvg32WrO+pIGAyTuGhlK103+sy
 3oZGVgO8wqYo0nE37oRpsNSWpQqwLujdxFcG01Z33dih7tY5358Sg9RpD
 SWtPsFdAC/hyR8gY9rT2kG7dVugGn+qC3ZVwMSj50L5fI8CYfUAtDiMtE
 hNsunTEGi7Nmx1freTz2wnz9ozdyTuu7Pw6C0xWvVRA0rF3xa2Tlw7AfU
 oOXmceLECZk4fHU1swX4c9LJweUNyqgSGOmvWsHTbCLHwRXEOD4nLnr5y
 D75ozuYl/V9d5FbWwWjw/v4XchXybVzObqwY4rV8csvy1h4psw1yG1KY0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eACoYVz+
Subject: [Intel-wired-lan] [PATCH net-next v2 07/10] ice: sync netdev
 filters after clearing VSI
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
Cc: mustafa.ismail@intel.com, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In driver reload path the netdev isn't removed, but VSI is. Remove
filters on netdev right after removing them on VSI.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fltr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c b/drivers/net/ethernet/intel/ice/ice_fltr.c
index 40e678cfb507..aff7a141c30d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fltr.c
+++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
@@ -208,6 +208,11 @@ static int ice_fltr_remove_eth_list(struct ice_vsi *vsi, struct list_head *list)
 void ice_fltr_remove_all(struct ice_vsi *vsi)
 {
 	ice_remove_vsi_fltr(&vsi->back->hw, vsi->idx);
+	/* sync netdev filters if exist */
+	if (vsi->netdev) {
+		__dev_uc_unsync(vsi->netdev, NULL);
+		__dev_mc_unsync(vsi->netdev, NULL);
+	}
 }
 
 /**
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
