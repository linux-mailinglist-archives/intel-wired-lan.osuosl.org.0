Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED70DA7853B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 01:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15B5E4137D;
	Tue,  1 Apr 2025 23:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LpLTSgbGwEq7; Tue,  1 Apr 2025 23:36:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6221D4137B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743550571;
	bh=ivHnS76qUstaVxJMV11BkKXrrTNC6BYgKK5e9zWRlxM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rfrEG0AWgmNhsKp5WbMkwKLHvGXkbYV42AlLQpwPEmihd9bjmabMLYrQR5aoLR9jk
	 ebeaEZ1Men5SoCv5GKQ8Pf7e2tjG1yC6b66evpzGxNoNJF4hCUy2FxrqzrvRnQoPUC
	 u6oPZvActfo7g2Go6gZd4Sm8ZPW2pZ2YbBJDaiFd01Saz/VwhS82U69sf67TPoIO1V
	 Ix5jbx2xHa1JjbBWfEQpyjnm1DI7u+zYoEuPZfxTPWWNMHJPHoIv+Lrhgg1cFERP9q
	 6ila6PFo+eEOd2OiPcLEKlHlDjlShiqCIsAVf6OMsnAKW1aOyP9KaA5J0CH5DhNCs6
	 gRWSxac2yD4hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6221D4137B;
	Tue,  1 Apr 2025 23:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 12AA46C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2EF9E84781
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a1ygJ3rexoRZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 73BEB84765
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73BEB84765
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73BEB84765
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
X-CSE-ConnectionGUID: HAol36M3TqmDxqPur3RbLA==
X-CSE-MsgGUID: ftyMCi0YR5GYVQf3fRVPhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55527606"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="55527606"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:06 -0700
X-CSE-ConnectionGUID: gCuhQsPxScejGRylF8A41Q==
X-CSE-MsgGUID: F4omPn7IReW2LKLogMkmlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="127354850"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 01 Apr 2025 16:35:31 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250401-jk-igc-ptm-fixes-v4-v4-3-c0efb82bbf85@intel.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: david.zage@intel.com, vinicius.gomes@intel.com, 
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Christopher S M Hall <christopher.s.hall@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, 
 Mor Bar-Gabay <morx.bar.gabay@intel.com>, 
 Avigail Dahan <avigailx.dahan@intel.com>, 
 Corinna Vinschen <vinschen@redhat.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743550567; x=1775086567;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=DXDuX19oMmpBepGy4338YX9qnnHy5wXHexuyYjln/4w=;
 b=QS1tLto1yxghbgkGmL1/JtIkgjBUJNXwv5aMOJ/xsCB1gDA1CstjQMXJ
 HYJwzWsj5ls1jmpePaAioVfec88tEXLqvSnHvFKR1N6gwQvZkZY9r7s5a
 u9NpMR5Kg5QfR27MfEx52GLl5SLF2HAooV8UMmOLFj97GTxYeGJYQdVs2
 55TBjw56AMj1gBqcmfl2Z60kGMannRidyZSR/EijyZYln1P/deIzX1Vr0
 kGJzdTh9RsHtcLrbjUTceKehyB4ePsOTTcfVg/xQAciJJy4ZMb2u1Brut
 y+a9/wDwEsIfWK4ZEPv1CfShr9gKdJvOaqNFjBZw228JlXZpl1B86cQGV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QS1tLto1
Subject: [Intel-wired-lan] [PATCH iwl-net v4 3/6] igc: move ktime snapshot
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

From: Christopher S M Hall <christopher.s.hall@intel.com>

Move ktime_get_snapshot() into the loop. If a retry does occur, a more
recent snapshot will result in a more accurate cross-timestamp.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index c640e346342be80fb53e68455d510fc6491366cd..516abe7405deee94866c22ccc3d101db1a21dbb6 100644
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
2.48.1.397.gec9d649cc640

