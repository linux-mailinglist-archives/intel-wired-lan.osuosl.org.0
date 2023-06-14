Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A079730266
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC04361350;
	Wed, 14 Jun 2023 14:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC04361350
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686754424;
	bh=oprmLjS+qkQFBzYfAS2HO0Pl0wTsmue70byHBr2xi4k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZprWz5pBP+X81MMV+aaHnx1wJFRU2Lc2kxHRsS4JjKleLGpZsqdEMSFb+z8J+yfyI
	 ofEzj1ckDjjOb/gisp5u6jq6NRCLJPo2IPlUErtZ/0jnDAKRdluOZRGR61PF0gko6i
	 9Lv7TdEq0dx+IxNDclHVy/arcoNK/wnsSiQBZxZ2vf800uWWA8XDj/HgH18mpblHl/
	 sXpYGj5cjD5yISf6ky5VDVsCZsiQnMd2zEQthddvNK5dw0AYTuOiopbuKDMojwDlOA
	 Cg9BlA5YvmFLIy0FifXKLhzlU1nu//8QLKIVVgrbvdVg5Z1LsMGVMGK8j6SNQ7APsv
	 JimY97EVTf9zA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VO1z6-EdLsm4; Wed, 14 Jun 2023 14:53:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F6AF6132B;
	Wed, 14 Jun 2023 14:53:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F6AF6132B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EAD41BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0598B402C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0598B402C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIXsN7gMMSDQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B0D540201
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B0D540201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387040574"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="387040574"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 07:53:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="782114883"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="782114883"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 07:53:13 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 16:53:01 +0200
Message-Id: <20230614145302.902301-3-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230614145302.902301-1-piotrx.gardocki@intel.com>
References: <20230614145302.902301-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686754396; x=1718290396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m+4uwLRuZN9fn+hK45LCaKkaZvlTk7MrI9TFDI/rJdM=;
 b=M0PBMVONyXNG7MIJoT9sv/MH9VOKIBLeti/A61sDs/N8WuLD5N8GjNRR
 MK/6shImFzDza6IJtpGlpzyKD55fpEf8sbjIsT0ln7xxhwxqHFGwZokhF
 YLiUFEMxO+4w3blOdrh+MNHPiMRWItWnhIix2JO6pw44VBQolSwNQ0zqM
 vf8W4/OxXwElxaGB6RozzYn0ikvtps2qoGBnx9b2IV4fg+6XacsyR5ycS
 UQN51S/4w082D+jVmxXM+spysfKQqzMbM5mQK17N0yelG0/5raD3qebs9
 DVs44hibRmWF0lzogBv0Yk8qpoENS1/iQ7clgrOr6kRWIZXm7xQ+p0G3L
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M0PBMVON
Subject: [Intel-wired-lan] [PATCH net-next v3 2/3] i40e: remove unnecessary
 check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The check has been moved to core. The ndo_set_mac_address callback
is not being called with new MAC address equal to the old one anymore.

Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b847bd105b16..29ad1797adce 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1788,12 +1788,6 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
 	if (!is_valid_ether_addr(addr->sa_data))
 		return -EADDRNOTAVAIL;
 
-	if (ether_addr_equal(netdev->dev_addr, addr->sa_data)) {
-		netdev_info(netdev, "already using mac address %pM\n",
-			    addr->sa_data);
-		return 0;
-	}
-
 	if (test_bit(__I40E_DOWN, pf->state) ||
 	    test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
 		return -EADDRNOTAVAIL;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
