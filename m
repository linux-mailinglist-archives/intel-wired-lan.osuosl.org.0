Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6113653074
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 12:54:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 732FB41845;
	Wed, 21 Dec 2022 11:54:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 732FB41845
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671623672;
	bh=ypR3RkunOmlQrQb4xaMqRRxvFKN1+pTQHcFCrP3Ei5E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7lbtaHiqjnKbFmwsbpfNI6NzuxkslHo8CmNklHuZ7HW67/OeAfJa4ON83SvYrRNpn
	 z+CYJ6h4PUtqHSITeP5TkziUwjRbhGzYQVDEstqvJskGGyvyAvSzDNmYb3x4XzuRLT
	 yNNLsYofKnxbKcpD519YD7kB3yZ7fNs6lIQDp/e2KJfag4gKd0BoRKetw4JZ1Xj3Bm
	 DkvQyiJ3g5ph7CGgRDh8a5kuH71hVgzJUIFQ4gDt5T5/4TVMLxX/472heR8aT5OU9e
	 muuJ8wXF0+nsQsirIA+n5uT+mpauLBLPXlqm8NbAn87qCb6ZXxNsaS2Q5MByHmqxCM
	 L7RYmTU3eCflA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rl2Celfzsz0b; Wed, 21 Dec 2022 11:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4395B41842;
	Wed, 21 Dec 2022 11:54:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4395B41842
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 484991BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30DE380C17
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30DE380C17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PH94_H9G0Jff for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 11:54:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8997280DB6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8997280DB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321766174"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321766174"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 03:54:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714799390"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="714799390"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 03:54:18 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Dec 2022 12:38:19 +0100
Message-Id: <20221221113822.12858-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671623661; x=1703159661;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=unS16nVWy3isgLs85nEntpNArvPSZg+8ZBDHAbDTZtc=;
 b=Hu5TOdfzdhkZYi/BKw8MqqRg0sGbPaf974UaTtvQ8ACLUwc9Rqi1gcqE
 4zJv3r5mieTgQAHA+UmYuPUDET/UxcVpSqk4w4rhfu5QFfZx3Y+tPu1Qt
 OyT9W1NV4I0gZOcbX5r6ngEWW94X6tJ4iuf1NT30Aet70zYowAXWeeoOM
 kFh+qaG4B7rMI9ZyCHZZSBxWQlNTKlO5qgxujCnORpPwemfbTwzi4o7dh
 W6j8wKJikodb8Dr5jjhdaVLsH8DFgczR893bsDEf8v9BI8j38IYgRFsmv
 QCVlg+Z9/JJNHI1rk4MAqCgl4mOJbsLYBXsUPM7iKsKS8PPQyJlldFR66
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hu5TOdfz
Subject: [Intel-wired-lan] [PATCH net-next v3 07/10] ice: sync netdev
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
