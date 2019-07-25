Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C40C8756CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7AEC822660;
	Thu, 25 Jul 2019 18:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zGKvpXCK0BuI; Thu, 25 Jul 2019 18:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FED622699;
	Thu, 25 Jul 2019 18:22:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3A871BF988
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AEA9C88192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fGkQcjwHKwYd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A00D988157
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:22:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="193897619"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 11:22:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 02:53:58 -0700
Message-Id: <20190725095401.24590-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S25 09/12] ice: Don't clog kernel debug
 log with VF MDD events errors
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

In case of MDD events on VF, don't clog kernel log with unlimited VF mdd
events message "VF 0 has had 1018 MDD events since last boot" - limit
events log message to 30, based on the observation in some experimenation
with sending malicious packet once, and number of events reported before
device stopped observing MDD events.

Also removed defunct macro "ICE_DFLT_NUM_MDD_EVENTS_ALLOWED" for tracking
number of MDD events allowed before disabling the interface...

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c        | 6 ++++--
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f8746609f065..60b48ab177ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1315,8 +1315,10 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 
 		if (vf_mdd_detected) {
 			vf->num_mdd_events++;
-			if (vf->num_mdd_events > 1)
-				dev_info(&pf->pdev->dev, "VF %d has had %llu MDD events since last boot\n",
+			if (vf->num_mdd_events &&
+			    vf->num_mdd_events <= ICE_MDD_EVENTS_THRESHOLD)
+				dev_info(&pf->pdev->dev,
+					 "VF %d has had %llu MDD events since last boot, Admin might need to reload AVF driver with this number of events\n",
 					 i, vf->num_mdd_events);
 		}
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 4d94853f119a..13f45f37d75e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -15,8 +15,8 @@
 #define ICE_MAX_MACADDR_PER_VF		12
 
 /* Malicious Driver Detection */
-#define ICE_DFLT_NUM_MDD_EVENTS_ALLOWED		3
 #define ICE_DFLT_NUM_INVAL_MSGS_ALLOWED		10
+#define ICE_MDD_EVENTS_THRESHOLD		30
 
 /* Static VF transaction/status register def */
 #define VF_DEVICE_STATUS		0xAA
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
