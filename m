Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF824FB26
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Jun 2019 12:42:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECE7C85C9A;
	Sun, 23 Jun 2019 10:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OrWV1QrH5URs; Sun, 23 Jun 2019 10:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 74EB485E12;
	Sun, 23 Jun 2019 10:42:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB52B1BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jun 2019 10:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A8693856C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jun 2019 10:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5rOHhQ+ALC6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Jun 2019 10:42:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 248E0856F6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Jun 2019 10:42:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jun 2019 03:42:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,408,1557212400"; d="scan'208";a="166069252"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Jun 2019 03:42:34 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 23 Jun 2019 13:42:32 +0300
Message-Id: <20190623104232.36661-2-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190623104232.36661-1-sasha.neftin@intel.com>
References: <20190623104232.36661-1-sasha.neftin@intel.com>
Subject: [Intel-wired-lan] [PATCH v1 2/2] igc: Remove the unused field from
 a device specification structure
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch comes to clean up the device specification structure.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index f689f0a02b5d..9a338fbf671c 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -184,12 +184,7 @@ struct igc_fc_info {
 };
 
 struct igc_dev_spec_base {
-	bool global_device_reset;
-	bool eee_disable;
 	bool clear_semaphore_once;
-	bool module_plugged;
-	u8 media_port;
-	bool mas_capable;
 };
 
 struct igc_hw {
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
