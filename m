Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA69046E60F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Dec 2021 10:59:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 176456066D;
	Thu,  9 Dec 2021 09:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ICVNipTJ6i1B; Thu,  9 Dec 2021 09:59:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10D3260658;
	Thu,  9 Dec 2021 09:59:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B4C51BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 09:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5665C40396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 09:59:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eDKlsR9dwRnF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Dec 2021 09:59:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAB95403FD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 09:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639043967; x=1670579967;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hOwBxsMH4C03BppimmUOsnCYsCl/7cC8wz8baVYCMOU=;
 b=YiZ8RTsyOInfHSF9y3Us98Eg6eGZ24VLMr59q8WljCUlJzfzsIm0hhU1
 rU/qOLSiISO9Lh6qBA/hk1aANATzsfxl/LJ1Qgcng8NDkBuQysym7a8ZA
 fcn90YF+IcDSYa+2WAiMX9FdeW5zNyXKiH2hyXmqk3/hB8cb4xIuhjoGO
 dq4qMIWwXEfD35DeM5R5D6Fad7J+6UfHnU6p7WvibXqQ78UtEAOA5iPgf
 EgHNQxUdEdUMJsXxzSqls9ZPYQ6Qiq26yft5C9fsr1kSbNumY+quCDKln
 PQWsbH2tEBiljFKCnhBhzvcGi7Vuo1OCT4elQoEuPDmGQbOzZnkwIATCB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="224931741"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="224931741"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 01:59:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="462072591"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga003.jf.intel.com with ESMTP; 09 Dec 2021 01:59:25 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Dec 2021 10:58:46 +0100
Message-Id: <20211209095846.12221-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v4] i40e: Fix for displaying message
 regarding NVM version When loading the i40e driver,
 it prints a message like: 'The driver for the device detected a newer
 version of the NVM image v1.x than expected v1.y. Please install the most
 recent version of the network driver.' This is misleading as the driver is
 working as expected.
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix that by removing the second part of message and changing it from
dev_info to dev_dgb.

Fixes: 4fb29bddb ("i40e: The driver now prints the API version in error message")
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v4: Removed the word "expected' as this might have been misleading
 v3: Changed the patch after community review
 v2: Fixed the fixes tag to be 12 digits long
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4664d07..1688e2d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15469,8 +15469,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	if (hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
 	    hw->aq.api_min_ver > I40E_FW_MINOR_VERSION(hw))
-		dev_info(&pdev->dev,
-			 "The driver for the device detected a newer version of the NVM image v%u.%u than expected v%u.%u. Please install the most recent version of the network driver.\n",
+		dev_dbg(&pdev->dev,
+			"The driver for the device detected a newer version of the NVM image v%u.%u than v%u.%u.\n",
 			 hw->aq.api_maj_ver,
 			 hw->aq.api_min_ver,
 			 I40E_FW_API_VERSION_MAJOR,
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
