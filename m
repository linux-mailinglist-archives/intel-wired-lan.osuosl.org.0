Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FEDAAF96
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2019 02:09:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A07E188579;
	Fri,  6 Sep 2019 00:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nS5sGjvOEsne; Fri,  6 Sep 2019 00:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5955A885EC;
	Fri,  6 Sep 2019 00:09:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72E091BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 00:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6CAE8885EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 00:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DclRrTDSnmB4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 00:09:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8092B88579
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 00:09:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 17:09:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="195268848"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 05 Sep 2019 17:09:15 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Sep 2019 08:39:56 -0700
Message-Id: <20190905153956.53086-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905153956.53086-1-anthony.l.nguyen@intel.com>
References: <20190905153956.53086-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S29 6/6] ice: Bump version
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

Bump version to 0.8.1-k

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8eff4ff0f49d..6c6ae6268eb9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -10,8 +10,8 @@
 #include "ice_dcb_lib.h"
 
 #define DRV_VERSION_MAJOR 0
-#define DRV_VERSION_MINOR 7
-#define DRV_VERSION_BUILD 5
+#define DRV_VERSION_MINOR 8
+#define DRV_VERSION_BUILD 1
 
 #define DRV_VERSION	__stringify(DRV_VERSION_MAJOR) "." \
 			__stringify(DRV_VERSION_MINOR) "." \
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
