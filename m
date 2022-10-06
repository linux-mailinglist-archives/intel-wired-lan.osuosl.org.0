Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5AA5F6641
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 14:41:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4B6A40C64;
	Thu,  6 Oct 2022 12:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4B6A40C64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665060091;
	bh=kmIhHyxB4PJqOP5dRpoHh15+D4YaaALVuzY7F6RoiOQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2YXeXao5n4Uyrs2pQdZJ4WKjSsAGDTC8SJiCRfrxAS+U/dMBKub6sR4GLAvMGoPaY
	 tWrHFW4fr+0u3YpnvRzZUydG1UXqMl/tHe407b/BevDHGwAuuXvBX5sLDt3NrYs5cd
	 HCF1kKyF0sTukeztC8xt3ZSw2w8fGSexcSAUXiYEs4XpAqYvmHhX6bTU1oCFpeJwei
	 f3D8cdZFDYWXrVkQvVKWJiWzTJWG6A5jd6Ch5iPaeYhd2n6i+yVPHJUPVD3T1UN8Sy
	 fS5EU+C8DUfNlKZLUD6ryYx3uQXTAUr3/nsSR6Dww+4b1BDrwYGZzQ6+HjkS9MwoBT
	 7LjMVHVHIu5pA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRg83NGHPDg3; Thu,  6 Oct 2022 12:41:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DFC740C4E;
	Thu,  6 Oct 2022 12:41:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DFC740C4E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 87FE01BF393
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 12:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 602A6418AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 12:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 602A6418AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hBxe5XjBDp1N for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 12:41:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98BD640331
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98BD640331
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 12:41:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="283148854"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="283148854"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 05:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="713831441"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="713831441"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Oct 2022 05:41:23 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Oct 2022 14:44:08 +0200
Message-Id: <20221006124408.15485-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665060084; x=1696596084;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SZR4rCa0Gr13OrCIymsYSp9WQZOq/CSE/HvoLm5hmqg=;
 b=VPIpiw6GRgqSPeBC2Wuo3cL6I13s8f1bl3VZ9ysCZ1u2fvWXjfFoUFE9
 /B/u2tFLsfVL21zqaqa8Y5PxWkxb99S1W5E7qswTseurImBjlMuY0XAgu
 n5qm8VdhNpfPFHhDD5W+7/0Ex7YHWBs2WGXRCNWqc1AZo49Uk0ZlIluS9
 Tic48vrB49prTEi7ciexy4uBGnOrYYwkRhJfh3Kr2bAjviN5g0H+2lCHS
 tGholAMM4UpDbzUCnLEeD+RcfdyBMbBjPZHmdr3X9dyXhCog6eije7svU
 U+5/FZGRmY1ojVg8wHuCF9R2tAp4diTbpgsipOOV4CssxhWPWxx86Jixm
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VPIpiw6G
Subject: [Intel-wired-lan] [PATCH net-next v2] ixgbevf: Add error messages
 on vlan error
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Jan Sokolowski" <jan.sokolowski@intel.com>

ixgbevf did not provide an error in dmesg if VLAN addition failed.

Add two descriptive failure messages in the kernel log.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
v2: Reworded commit message
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c   | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 2f12fbe229c1..f1e5809f4d22 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -2044,12 +2044,16 @@ static int ixgbevf_vlan_rx_add_vid(struct net_device *netdev,
 
 	spin_unlock_bh(&adapter->mbx_lock);
 
-	/* translate error return types so error makes sense */
-	if (err == IXGBE_ERR_MBX)
-		return -EIO;
+	if (err) {
+		netdev_err(netdev, "VF could not set VLAN %d\n", vid);
+
+		/* translate error return types so error makes sense */
+		if (err == IXGBE_ERR_MBX)
+			return -EIO;
 
-	if (err == IXGBE_ERR_INVALID_ARGUMENT)
-		return -EACCES;
+		if (err == IXGBE_ERR_INVALID_ARGUMENT)
+			return -EACCES;
+	}
 
 	set_bit(vid, adapter->active_vlans);
 
@@ -2070,6 +2074,9 @@ static int ixgbevf_vlan_rx_kill_vid(struct net_device *netdev,
 
 	spin_unlock_bh(&adapter->mbx_lock);
 
+	if (err)
+		netdev_err(netdev, "Could not remove VLAN %d\n", vid);
+
 	clear_bit(vid, adapter->active_vlans);
 
 	return err;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
