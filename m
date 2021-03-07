Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A4332FFB3
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Mar 2021 09:44:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 622324EC21;
	Sun,  7 Mar 2021 08:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9k0Pi_SYm_3X; Sun,  7 Mar 2021 08:44:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4295745CE4;
	Sun,  7 Mar 2021 08:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 620231BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 08:44:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AC6B45969
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 08:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F8evzvZ-7JbK for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Mar 2021 08:44:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C6154595C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 08:44:34 +0000 (UTC)
IronPort-SDR: 10X4B4S56SX/nG/Ko1nXkgJjmUO1wXo6aAtE4skGTS4jQVSdSQSk4aHeEEI0BieiqezpTNBaiP
 LHnUIQtOSN1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9915"; a="167142908"
X-IronPort-AV: E=Sophos;i="5.81,229,1610438400"; d="scan'208";a="167142908"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 00:44:33 -0800
IronPort-SDR: 3S8bTMuulfXK6DKHMAK7yDAbRH3gFjopYO0dQ7WZxeb3ConHSzT9YgMMwT3G8otdUcgVHJ9F0m
 ukV6hifhBfXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,230,1610438400"; d="scan'208";a="385489636"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga002.jf.intel.com with ESMTP; 07 Mar 2021 00:44:30 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, anna.kostyukovsky@intel.com,
 dvorax.fuxbrumer@linux.intel.com
Date: Sun,  7 Mar 2021 10:44:27 +0200
Message-Id: <20210307084427.2882842-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix prototype warning
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

Correct report warnings in igc_i225.c

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_i225.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index 7ec04e48860c..cc83bb5c15e8 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -6,7 +6,7 @@
 #include "igc_hw.h"
 
 /**
- * igc_get_hw_semaphore_i225 - Acquire hardware semaphore
+ * igc_acquire_nvm_i225 - Acquire exclusive access to EEPROM
  * @hw: pointer to the HW structure
  *
  * Acquire the necessary semaphores for exclusive access to the EEPROM.
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
