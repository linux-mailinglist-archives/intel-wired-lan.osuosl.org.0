Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F4F1C9FBD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 02:43:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9EA6689701;
	Fri,  8 May 2020 00:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CpywOGba3TeZ; Fri,  8 May 2020 00:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5EE4896B5;
	Fri,  8 May 2020 00:43:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF2501BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EC7F687871
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gVXVUKEaDvvb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 00:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5DB2878A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:34 +0000 (UTC)
IronPort-SDR: odeTVHPTdbt13ZUTc8W0OXnJdR121N8l6TtdNGw+UKhxQCndB0Vz/JTDr87rubO+5MWZwH429G
 7+otmDYN9mBQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 17:43:33 -0700
IronPort-SDR: jRPKe033KYfKmKjrkkyZXPhccy1Kuhw/3Nodj2uyDbUCCLAbRWIFhpYkbyVVoRSzMec+Bqb328
 QS1YA0gHtM3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="249468768"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2020 17:43:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 17:41:01 -0700
Message-Id: <20200508004113.39725-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S41 03/15] ice: Fix check for contiguous
 TCs
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

From: Dave Ertman <david.m.ertman@intel.com>

The current implementation for contiguous TC check
is assuming that the UPs will be mapped to TCs in
a linear progressing fashion.  This is obviously
not always true.

Change the check to allow for various UP2TC mapping
configurations.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index d91bd72eebdc..d5055d9e3fd2 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -611,16 +611,21 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
  */
 static bool ice_dcb_tc_contig(u8 *prio_table)
 {
-	u8 max_tc = 0;
+	bool found_empty = false;
+	u8 used_tc = 0;
 	int i;
 
-	for (i = 0; i < CEE_DCBX_MAX_PRIO; i++) {
-		u8 cur_tc = prio_table[i];
+	/* Create a bitmap of used TCs */
+	for (i = 0; i < CEE_DCBX_MAX_PRIO; i++)
+		used_tc |= BIT(prio_table[i]);
 
-		if (cur_tc > max_tc)
-			return false;
-		else if (cur_tc == max_tc)
-			max_tc++;
+	for (i = 0; i < CEE_DCBX_MAX_PRIO; i++) {
+		if (used_tc & BIT(i)) {
+			if (found_empty)
+				return false;
+		} else {
+			found_empty = true;
+		}
 	}
 
 	return true;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
