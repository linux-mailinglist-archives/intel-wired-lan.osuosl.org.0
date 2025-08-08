Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F94B1EC7E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 17:54:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 041B381E48;
	Fri,  8 Aug 2025 15:54:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fGeWmecyN8i6; Fri,  8 Aug 2025 15:54:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DDC581C0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754668458;
	bh=on/wOVOlv5bhq6cqXq/ZWwTFeQMzSh0YCbpLl46qUA0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PGRAXo+SntyfAjBqm8/BMJv+rJQGoFq5PwCKD7i7xefamr9qoOHxNojDhAcqcbMMa
	 KlL+K39sYx3BdcTo4L8Rugt1TlvWLM7AeiAwH3lTF7FWZcoh/Ler+GfDHqHWeczFxf
	 O5WUteorZvqxatIE9E0bW7nGrqgCioIxEKKPGPATPaIl74dtDymFvaRGlAmn1laaNL
	 XDGxTaahDEfQHEQL3/oiq6KzcGghjlc3lLrcQclUuJGLylMwxOMAEax575kg5QAlQJ
	 lWKDn5CcAXj0lgcl6JDn5chlj6MUkKjHHL6sTUXm5kAven2hod9o0GA+k9oTZYIswY
	 KDsgg2WqQhdfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DDC581C0A;
	Fri,  8 Aug 2025 15:54:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C152D9CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB3BE405C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ruYkm7INMZaH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 15:54:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D6F4840593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6F4840593
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D6F4840593
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:54:15 +0000 (UTC)
X-CSE-ConnectionGUID: naofkS76RgatwJPri2xPKA==
X-CSE-MsgGUID: fX/IkpOyTEWnEPSWzII5Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="68476103"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="68476103"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 08:53:51 -0700
X-CSE-ConnectionGUID: 7nyJYSelSF+DKucgdfCiUA==
X-CSE-MsgGUID: Vx0jAeNMRpyJlEhzux7Xow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165680810"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 08:53:48 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 aleksander.lobakin@intel.com, anthony.l.nguyen@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Fri,  8 Aug 2025 17:53:10 +0200
Message-ID: <20250808155310.1053477-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754668456; x=1786204456;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BHJY+KSo4oQqORjyQr7L3Ta1mYn3O21VYHEvy/pabXI=;
 b=XGyNFvlWnXY4jzrjntn6vBOaQoECwGXUuXnZIC8tJ3v2HZ169t5Pq1lu
 oRCu+FRIX1jhWFsrwdb8Mko+7fSOLp0dDIRcagWDgIMOxUoghmfXGnwg3
 JQgjCG1TC8kcbnqh4eks+XSmVV78BC2YnrQcDEDfqp+jvm4rtImISmzGG
 JjUXvDwk5qwvYGW+DuatsIuHb9XyKcXJnN4TKn4+jON150uw80XY1s6NQ
 pL1/MFS0H1Ll2SDBSZ0P5BeCvfJSdj29tWm3ctLKGEw/VT8+Hqb3RoUhq
 LghcD5/Dj0ouq3r1urxWHGS+2yRyUq8VaAXF+eTLOJTRlMMjwZ3cOmr2y
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XGyNFvlW
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter for
 buffer allocation failures
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

Currently, the driver increments `alloc_page_failed` when buffer allocation fails
in `ice_clean_rx_irq()`. However, this counter is intended for page allocation
failures, not buffer allocation issues.

This patch corrects the counter by incrementing `alloc_buf_failed` instead,
ensuring accurate statistics reporting for buffer allocation failures.

Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Reported-by: Jacob Keller <jacob.e.keller@intel.com>
Suggested-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 93907ab2eac7..1b1ebfd347ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1337,7 +1337,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			skb = ice_construct_skb(rx_ring, xdp);
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
-			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
+			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
 			xdp_verdict = ICE_XDP_CONSUMED;
 		}
 		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
-- 
2.45.2

