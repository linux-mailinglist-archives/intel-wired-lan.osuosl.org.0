Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 284E550CC74
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Apr 2022 18:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD89383299;
	Sat, 23 Apr 2022 16:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xumZyO9FWUen; Sat, 23 Apr 2022 16:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF03182EA1;
	Sat, 23 Apr 2022 16:55:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1D311BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 16:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E387400E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 16:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hz6167TZ5ABD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Apr 2022 16:55:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60DC8400DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 16:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650732908; x=1682268908;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G1SHIOEcVIe8GD/HOYgZ2PPsqPm6W7FsAK4G7xKe8Jo=;
 b=Fx01QOMBz+66l9VHgR7wfv/+WewMaEyuGRFbOkPV7z5aM9ctwledCeBt
 kFl0TB1aJRtF+MTnJ2flGG0hBxITUTO7iuX0tLmZQssW7JvRpaZoWQi1N
 6S7swtRI8gYX9Ri/2QRGjNQy7A3alnWLv1AJT9w7ul6giz3fNKH5VbXeC
 nvFtOQLA1ipqh+O9jjKGvXyIxy+QxvdzDnwVVM+4vw/R3/agbh4JyUYuL
 9p3pCmsZnw4hdHoGFYXNgm4WdcGUNFRIEv5RSJSz/nZYmbt5KzF1TRkg0
 VNkEsuPuQAKhe9Q7MrgeWNAd4wiUdfsxkfeg9uq58W/hwBTOqEGRnnByp g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10326"; a="264694657"
X-IronPort-AV: E=Sophos;i="5.90,284,1643702400"; d="scan'208";a="264694657"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2022 09:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,284,1643702400"; d="scan'208";a="531353494"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2022 09:55:06 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 23 Apr 2022 19:55:02 +0300
Message-Id: <20220423165502.838143-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Change type of the
 'igc_check_downshift' method
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

The 'igc_check_downshift' method always return 0 value. There is no point
return value. Change the return type of this method to void.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_phy.c | 6 +-----
 drivers/net/ethernet/intel/igc/igc_phy.h | 2 +-
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 2140ad1e8443..53b77c969c85 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -141,18 +141,14 @@ void igc_power_down_phy_copper(struct igc_hw *hw)
  * igc_check_downshift - Checks whether a downshift in speed occurred
  * @hw: pointer to the HW structure
  *
- * Success returns 0, Failure returns 1
- *
  * A downshift is detected by querying the PHY link health.
  */
-s32 igc_check_downshift(struct igc_hw *hw)
+void igc_check_downshift(struct igc_hw *hw)
 {
 	struct igc_phy_info *phy = &hw->phy;
 
 	/* speed downshift not supported */
 	phy->speed_downgraded = false;
-
-	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.h b/drivers/net/ethernet/intel/igc/igc_phy.h
index 1b031372d206..832a7e359f18 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.h
+++ b/drivers/net/ethernet/intel/igc/igc_phy.h
@@ -11,7 +11,7 @@ s32 igc_phy_hw_reset(struct igc_hw *hw);
 s32 igc_get_phy_id(struct igc_hw *hw);
 s32 igc_phy_has_link(struct igc_hw *hw, u32 iterations,
 		     u32 usec_interval, bool *success);
-s32 igc_check_downshift(struct igc_hw *hw);
+void igc_check_downshift(struct igc_hw *hw);
 s32 igc_setup_copper_link(struct igc_hw *hw);
 void igc_power_up_phy_copper(struct igc_hw *hw);
 void igc_power_down_phy_copper(struct igc_hw *hw);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
