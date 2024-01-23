Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 413FF838C94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 11:52:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D46E1418C2;
	Tue, 23 Jan 2024 10:52:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D46E1418C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706007139;
	bh=ffhuWf2VMkE775m1cNL5uutu0tbpKrOeF+6C1b+8OEc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tQkkPvDxlfLUnK5P0G0RwMtsdHKbvdOHoDr/ufziTYQH1c208WNcD0Wx2SGHZ2cUG
	 VS9R4YyBMDBx/TA4HYtOhYHGk2ibeW+Xp0O4rtSHy4Zn2efJp0uODrSrz7VyvqBbRL
	 ptQGxZBT9K5OH9ABhksQfxKUXrOLhrG2q4iMNcolp7R2LaKMtkUoCiEBHLLF6m4JzP
	 UMd1hc9RAivL1zyAbmzKOP+UVUQfCwpk6suN5iWFABbdrlTob5vj/ebqz2B4evCoHI
	 BCqFBN/bHgG3hlfEzDGfQc2PqYNVQ79wdRdwF2sK3FsOXTxbwX/ovEpw1atv2w+rPx
	 H+ldqzgs9yZyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Z6RsaFGERiF; Tue, 23 Jan 2024 10:52:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DED8041731;
	Tue, 23 Jan 2024 10:52:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DED8041731
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D7B61BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 463EC8238A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 463EC8238A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9rMOg8f2XuMT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 10:52:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98A3A82382
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:52:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98A3A82382
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="8877623"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="8877623"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 02:52:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="34365407"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 23 Jan 2024 02:52:00 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 11:51:28 +0100
Message-Id: <20240123105131.2842935-5-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240123105131.2842935-1-karol.kolacinski@intel.com>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706007122; x=1737543122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l2zbQsoH+QHd/usOBxoSPjVj31op4Z/h6N+2WiXcFsc=;
 b=R62tH+1mP8KEFrRbNQBsnKDOFhDun/OExfsGldXXzdoDF52D/SGfux0h
 eoxNXWOotX1q3OnU/VAOeMTWAuU/XSXF6Ps3IIyFKUj7rDEtjbzBCRFnR
 i1WtlWyNtMZLWPF1B4xtUa2t8Lo8sxFDMaP2fD75FepfGyHA4toS9sUD2
 vfPfKt/9uFQSRG2JAijI+j1++YrNa/2i3QtKTp8m0Eise6M/HkuK7u8sm
 aNkYMBrssUsq+F1xoAVHFLFLTX4woo8sqvE8GrppHFj8CmIWI2XI1DhFi
 IO/gfrKERHk94ou0lQS4L5RrJkkvvriBUxuKTuL06gboZFiKI8BHFJTeD
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R62tH+1m
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 4/7] ice: don't check
 has_ready_bitmap in E810 functions
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

E810 hardware does not have a Tx timestamp ready bitmap. Don't check
has_ready_bitmap in E810-specific functions.
Add has_ready_bitmap check in ice_ptp_process_tx_tstamp() to stop
relying on the fact that ice_get_phy_tx_tstamp_ready() returns all 1s.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
V5 -> V6: introduced this patch which was a part of a previous one

 drivers/net/ethernet/intel/ice/ice_ptp.c | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a10e0018b2e2..69d11dbda22c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -601,17 +601,13 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 	/* Read the low 32 bit value */
 	raw_tstamp |= (u64)rd32(&pf->hw, PF_SB_ATQBAH);
 
-	/* For PHYs which don't implement a proper timestamp ready bitmap,
-	 * verify that the timestamp value is different from the last cached
-	 * timestamp. If it is not, skip this for now assuming it hasn't yet
-	 * been captured by hardware.
+	/* Devices using this interface always verify the timestamp differs
+	 * relative to the last cached timestamp value.
 	 */
-	if (!drop_ts && !tx->has_ready_bitmap &&
-	    raw_tstamp == tx->tstamps[idx].cached_tstamp)
+	if (raw_tstamp == tx->tstamps[idx].cached_tstamp)
 		return;
 
-	if (!tx->has_ready_bitmap && raw_tstamp)
-		tx->tstamps[idx].cached_tstamp = raw_tstamp;
+	tx->tstamps[idx].cached_tstamp = raw_tstamp;
 	clear_bit(idx, tx->in_use);
 	skb = tx->tstamps[idx].skb;
 	tx->tstamps[idx].skb = NULL;
@@ -701,9 +697,11 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 	hw = &pf->hw;
 
 	/* Read the Tx ready status first */
-	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
-	if (err)
-		return;
+	if (tx->has_ready_bitmap) {
+		err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
+		if (err)
+			return;
+	}
 
 	/* Drop packets if the link went down */
 	link_up = ptp_port->link_up;
@@ -731,7 +729,8 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 		 * If we do not, the hardware logic for generating a new
 		 * interrupt can get stuck on some devices.
 		 */
-		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
+		if (tx->has_ready_bitmap &&
+		    !(tstamp_ready & BIT_ULL(phy_idx))) {
 			if (drop_ts)
 				goto skip_ts_read;
 
-- 
2.40.1

