Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA819BF5D2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 19:58:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3B3A80847;
	Wed,  6 Nov 2024 18:58:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LxHr9xfwfwG2; Wed,  6 Nov 2024 18:58:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1976080897
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730919537;
	bh=DxVV/m72sdMVIVYemjdTHt664llbFqp+WfmKlLFunNY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3RXv/Upfi/stviKk4cVuASNIccfKqM3/heX7V2okD/E9Kej0TZeLRxVbahj29P3qL
	 I3gBU7j9xZxUthDJxSHzqPCdZzuc9ekncVT7eWcRZoURU3qRozebDN2+cpMeVfZFeL
	 ixzFPlyFJUqlj/EQayx7XfkAW4ZiBNpTrAWnp7glGoACewWdjxCQl9D0dSjhPCwNVH
	 BNaj3g3GoXYEFMIbvyLo5JYKUAObzbphc6TMa1G4skGhD0XuDgS0joiJvOCLaeCUFz
	 LmZda8JTcRdcwxlly4qjBL8k7Cfqwq9+2lertnFvtDKb6THDXpfWyExJW8tVDFI3ac
	 0FitMNp0Gj4Yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1976080897;
	Wed,  6 Nov 2024 18:58:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CCE627D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A97B60732
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tdBkdPQ2a2o3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 18:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C2D7E605F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2D7E605F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2D7E605F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:51 +0000 (UTC)
X-CSE-ConnectionGUID: beidU6fdSGKFXfyFmxvl+Q==
X-CSE-MsgGUID: 1tIDzOJpRt2Tc/4btfmmrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30959469"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30959469"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 10:58:51 -0800
X-CSE-ConnectionGUID: haNYpsmXQmKJfBHLZBqipw==
X-CSE-MsgGUID: TtrAAlTeTyibe/GALJxpFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89813795"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by orviesa004.jf.intel.com with ESMTP; 06 Nov 2024 10:56:40 -0800
From: Christopher S M Hall <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mor Bar-Gabay <morx.bar.gabay@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>
Date: Wed,  6 Nov 2024 18:47:19 +0000
Message-Id: <20241106184722.17230-4-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241106184722.17230-1-christopher.s.hall@intel.com>
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730919532; x=1762455532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d6MJXY8r+YDwnf7zHOEKRdN3xmfWj9TjbhzFbGNbzYI=;
 b=cVGW9HLj0fLpMyHRkL8/ZBa98rhHR/jBaVtYWvvXO2R1yLePSvBKzFBL
 iMbsMej5K0vucvlTiWELoWfGiHfoL9n0oK+lY6sT0IBMR1tkkLPmUIUP3
 ipXgdK60QwGsAhhDFwuPVSJuLj3i5EhyzND0YJ1ccv1zbi0Jjk9GFGyC/
 u2Y/Py1UrVcBTJLbnlKS+S2ToXInsszC3JaVLE+YVGs7t3auE9+xZpR+Y
 nD94sMMpitz0Lsq+AY8qj35H/LkpBSIo7ilOo1uUX9BgY/i7BQcLfkwDA
 odYcylzjPM6Uj7qadcUFPRECUDxVB0atnbfusgwBVZoe3faKCoJQFswBr
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cVGW9HLj
Subject: [Intel-wired-lan] [PATCH iwl-net v3 3/6] igc: Move ktime snapshot
 into PTM retry loop
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move ktime_get_snapshot() into the loop. If a retry does occur, a more
recent snapshot will result in a more accurate cross-timestamp.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index c640e346342b..516abe7405de 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -1011,16 +1011,16 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
 	int err, count = 100;
 	ktime_t t1, t2_curr;
 
-	/* Get a snapshot of system clocks to use as historic value. */
-	ktime_get_snapshot(&adapter->snapshot);
-
+	/* Doing this in a loop because in the event of a
+	 * badly timed (ha!) system clock adjustment, we may
+	 * get PTM errors from the PCI root, but these errors
+	 * are transitory. Repeating the process returns valid
+	 * data eventually.
+	 */
 	do {
-		/* Doing this in a loop because in the event of a
-		 * badly timed (ha!) system clock adjustment, we may
-		 * get PTM errors from the PCI root, but these errors
-		 * are transitory. Repeating the process returns valid
-		 * data eventually.
-		 */
+		/* Get a snapshot of system clocks to use as historic value. */
+		ktime_get_snapshot(&adapter->snapshot);
+
 		igc_ptm_trigger(hw);
 
 		err = readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
-- 
2.34.1

