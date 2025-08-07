Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E915B1DC86
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 19:35:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F1B4806D7;
	Thu,  7 Aug 2025 17:35:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eNuNji44avSF; Thu,  7 Aug 2025 17:35:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD78B806D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754588141;
	bh=csqfGVeoUQY9v6UpDocHWR5DEYSKclIeLsMUKk401Rg=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wdxGHQdzU2D3zIt/3rOg5AkymRIib7GA3wfoXg+P2of6npaBPkd/MOmPrgf3H5vVG
	 lhcU/bCJbBZ7Yx29FtlOEgtmzWN/JCfTBNpo7nX3TqVeHM5Vk974nrkeOQwK9f55H2
	 LvKEIgeC1pek2rIXYceTtUOG0nVIIGtKMUiSILrJacyvzdZDSfUKuy6OnbL7ijKGPI
	 Jmg7+0r6bsnxq9+4+aAwGcpSt6/OE/Hxur2mlI690vVtAmJl2Mduo2RF0wlgLnDJ2b
	 CE+WXmelhiNQTqi3+AQ8qychCe4ns+ukVKRRGEVMil5ts+C6xt0aVvhMGUEHn5Ksxd
	 qMhekBZE8fcqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD78B806D1;
	Thu,  7 Aug 2025 17:35:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 885704C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E88C806C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5i5_6FBdT2me for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 17:35:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BE1DD806C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE1DD806C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE1DD806C3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:38 +0000 (UTC)
X-CSE-ConnectionGUID: Eco6xhq6Q5ibhU/dKCXmDA==
X-CSE-MsgGUID: RFEcTO+wSJaQpxe6IhSpCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74511379"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="74511379"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:35:37 -0700
X-CSE-ConnectionGUID: DQ2CgVPQSUendbN97tedtQ==
X-CSE-MsgGUID: mMAwHP99QQCZAOfnWx3RxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164787193"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:35:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 07 Aug 2025 10:35:27 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250807-jk-ice-fix-tx-tstamp-race-v1-2-730fe20bec11@intel.com>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=2118;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=Ngx5yfB0xUuTqpRJe50nUtLyB9vjVE7Mtrld1SDMdcE=;
 b=kA0DAAoWapZdPm8PKOgByyZiAGiU4+iiTcR5VdKxfU6CwpwrEAZz7t2jwg7qpJ0OurfFW8EEx
 oh1BAAWCgAdFiEEIEBUqdczkFYq7EMeapZdPm8PKOgFAmiU4+gACgkQapZdPm8PKOiolQEAq3Gi
 XzhpPn1ZJSH/atNAqTY1nKT/ztrYJItMEx6LMRUBANnVbMdWaooj8oa0dC6k3EtBLZ+zJczKHRn
 T3Z+N3G0K
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754588139; x=1786124139;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Ngx5yfB0xUuTqpRJe50nUtLyB9vjVE7Mtrld1SDMdcE=;
 b=W3ynx+UwqW36Y1YOMOT04yg+Kiq9sfiD47DOhDpgwK2xwR/q5XHjcc37
 IXQx+sL4cob6+VbgD3rI4TmQi+8+jMHXau23ZoDBq9IZt60bxHn1dlD2J
 HUMr0pkLwrxoyDOGsH3OL8rgq0UD8UcpwG2tbcQfNLFFu9V4v3s9m4+hx
 6L0Zd13z0qlcdjDi07x23tl+DmpBV8zPBXI2tXvZpruQ1nuOCRaEnfNXY
 RrFsNZu4kwfnzTvuunvnzV1QjvM8El44oF/p4j5SwqWWg1NVddeB/zmfT
 9MVJe4M5Exti5bOBS/aszI9oCRm9AKugkYmehmXRiGK7WqK0wx/3yGSWc
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W3ynx+Uw
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix NULL access of
 tx->in_use in ice_ll_ts_intr
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

Recent versions of the E810 firmware have support for an extra interrupt to
handle report of the "low latency" Tx timestamps coming from the
specialized low latency firmware interface. Instead of polling the
registers, software can wait until the low latency interrupt is fired.

This logic makes use of the Tx timestamp tracking structure, ice_ptp_tx, as
it uses the same "ready" bitmap to track which Tx timestamps.

Unfortunately, the ice_ll_ts_intr() function does not check if the
tracker is initialized before its first access. This results in NULL
dereference or use-after-free bugs similar to the issues fixed in the
ice_ptp_ts_irq() function.

Fix this by only checking the in_use bitmap (and other fields) if the
tracker is marked as initialized. The reset flow will clear the init field
under lock before it tears the tracker down, thus preventing any
use-after-free or NULL access.

Fixes: 82e71b226e0e ("ice: Enable SW interrupt from FW for LL TS")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8e0b06c1e02b..7b002127e40d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3176,12 +3176,14 @@ static irqreturn_t ice_ll_ts_intr(int __always_unused irq, void *data)
 	hw = &pf->hw;
 	tx = &pf->ptp.port.tx;
 	spin_lock_irqsave(&tx->lock, flags);
-	ice_ptp_complete_tx_single_tstamp(tx);
+	if (tx->init) {
+		ice_ptp_complete_tx_single_tstamp(tx);
 
-	idx = find_next_bit_wrap(tx->in_use, tx->len,
-				 tx->last_ll_ts_idx_read + 1);
-	if (idx != tx->len)
-		ice_ptp_req_tx_single_tstamp(tx, idx);
+		idx = find_next_bit_wrap(tx->in_use, tx->len,
+					 tx->last_ll_ts_idx_read + 1);
+		if (idx != tx->len)
+			ice_ptp_req_tx_single_tstamp(tx, idx);
+	}
 	spin_unlock_irqrestore(&tx->lock, flags);
 
 	val = GLINT_DYN_CTL_INTENA_M | GLINT_DYN_CTL_CLEARPBA_M |

-- 
2.50.1

