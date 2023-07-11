Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5B674E2A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 02:39:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 245E561070;
	Tue, 11 Jul 2023 00:39:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 245E561070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689035994;
	bh=Nn0/RI3cDxfanEI7ev/5sm9W2VB3L1sYZ5JKncUH2Ik=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pvhiFZVBxTAO0NSMr06kOGdQ5Yvv4fTkinBFAdD7iNpSo9XWu5ETX/XxXwWHMLe3J
	 JwdY5zzDkjJ+DVFAsSSk/khNlwW+kSoAUlRo0lfDs0ZScl2xK/2XMCEGG+SjQ+tB1w
	 HcbpoAeAXAeJRFeoKinSbAKkY0UfAuHluwsuE+l4cQ+Z/uK8bwIwiTQsYPyYLmWClI
	 y+mdBvpJsV4B9FHfspEgOwG67NNgF059qQMaVWONzn5Id2+egIvJkW6cvewT65PqH3
	 pRxiEkiOCg0S8PqiUPbDOyfFXbvBuJXIjnGbQFlOSj0v1V71mX+PB+jtBsWC//mu2Y
	 i/sDniADpELVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S3O4CldWQRvX; Tue, 11 Jul 2023 00:39:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10C8D6105D;
	Tue, 11 Jul 2023 00:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10C8D6105D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56C671BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C865741742
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C865741742
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SaygzGqwGlWX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 00:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEE7A41B66
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEE7A41B66
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344089525"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="344089525"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:39:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="790981062"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="790981062"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:39:41 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 10 Jul 2023 17:39:34 -0700
Message-ID: <20230711003935.98765-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230711003935.98765-1-jacob.e.keller@intel.com>
References: <20230711003935.98765-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689035982; x=1720571982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9kQ/rY+kNnP/w1dJBaCwGsv6dqcWaKZCba036FxcOvI=;
 b=K/X1fOG21dAsueDtPXDhHM4UVT0LFtFwZjlfEeW4mriIrod1uNbRQKOb
 vSLwR7w8xE7pvlsV6mnH4t56INrXmaZTnYysB9IP3TPisAypZk1qiFboJ
 WhD2XTnL8N/EhqR3sWZs8BiQDoiADm18wTLpd3ktGCBXPdpIzIMaoZlIp
 OJ218yKo8SLoAuJuNJr2y6tmuS2Z2a3TaSwCfVD/Le49JkX3CStKD+5jU
 aWXfqld2Vo1iFi+GHhpmI2+0mL/RVUcOeD5PrYzWDZFQ/bw+WfG5PW6ac
 /beKgT9x09kQcb1l7Vy/HFT/UXe7MW/dTohjukoMwr00bKpotK3hnDSjb
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K/X1fOG2
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: retry acquiring
 hardware semaphore during cross-timestamp request
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

The hardware for performing a cross-timestamp on E822 uses a hardware
semaphore which we must acquire before initiating the cross-timestamp
operation.

The current implementation only attempts to acquire the semaphore once, and
assumes that it will succeed. If the semaphore is busy for any reason, the
cross-timestamp operation fails with -EFAULT.

Instead of immediately failing, try the acquire the lock a few times with a
small sleep between attempts. This ensures that most requests will go
through without issue.

Additionally, return -EBUSY instead of -EFAULT if the operation can't
continue due to the semaphore being busy.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 81d96a40d5a7..e75bb6e7d680 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1976,11 +1976,21 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 	u32 hh_lock, hh_art_ctl;
 	int i;
 
-	/* Get the HW lock */
-	hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
+#define MAX_HH_HW_LOCK_TRIES	5
+#define MAX_HH_CTL_LOCK_TRIES	100
+
+	for (i = 0; i < MAX_HH_HW_LOCK_TRIES; i++) {
+		/* Get the HW lock */
+		hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
+		if (hh_lock & PFHH_SEM_BUSY_M) {
+			usleep_range(10000, 15000);
+			continue;
+		}
+		break;
+	}
 	if (hh_lock & PFHH_SEM_BUSY_M) {
 		dev_err(ice_pf_to_dev(pf), "PTP failed to get hh lock\n");
-		return -EFAULT;
+		return -EBUSY;
 	}
 
 	/* Start the ART and device clock sync sequence */
@@ -1988,9 +1998,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 	hh_art_ctl = hh_art_ctl | GLHH_ART_CTL_ACTIVE_M;
 	wr32(hw, GLHH_ART_CTL, hh_art_ctl);
 
-#define MAX_HH_LOCK_TRIES 100
-
-	for (i = 0; i < MAX_HH_LOCK_TRIES; i++) {
+	for (i = 0; i < MAX_HH_CTL_LOCK_TRIES; i++) {
 		/* Wait for sync to complete */
 		hh_art_ctl = rd32(hw, GLHH_ART_CTL);
 		if (hh_art_ctl & GLHH_ART_CTL_ACTIVE_M) {
@@ -2019,7 +2027,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 	hh_lock = hh_lock & ~PFHH_SEM_BUSY_M;
 	wr32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), hh_lock);
 
-	if (i == MAX_HH_LOCK_TRIES)
+	if (i == MAX_HH_CTL_LOCK_TRIES)
 		return -ETIMEDOUT;
 
 	return 0;
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
