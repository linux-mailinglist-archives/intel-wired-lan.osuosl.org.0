Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B328FB388
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 15:22:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62277613C1;
	Tue,  4 Jun 2024 13:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GS5slqE1pYXm; Tue,  4 Jun 2024 13:22:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C99CC6139F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717507349;
	bh=nDGHwAV4fZ35QG9s8xMwMxlosKDIHwrXmkHvBELPJ+U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q13zxm8CoVDMAqiySiRuwQ4kR+/yhE3EdK53KNzSZqmfwGVZTcm7I1jdP8CCWFHsN
	 UlBquB6YdSxvG8ZaqlNCBJMzb/Kvyd5r91kfLVNqHVRVCg5f89YOrkk3vqjDQN4VXN
	 wGo94C74l/ZQO210U+svj0IOxKf5SHLk0TeXGfTnlWXnpXF3Cs5gQ8rqbB9Zgyc26L
	 RkJ6FaC7Byiln/5MOuTw54o7Jdn3+5wRS7AOTKMzvo6Fix4BrvUOb+ePDYKAm5jsNb
	 A7Rw6SWvDV81VJUSLqM5OyvzuQuxAdL12t5/kwJZa+LoNvQMKMa60smqe8KWoo1qUd
	 cmUF/tlyyARcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C99CC6139F;
	Tue,  4 Jun 2024 13:22:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65B521BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5287D404DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZzhVpgOmlEXK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 13:22:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A692404B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A692404B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A692404B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:26 +0000 (UTC)
X-CSE-ConnectionGUID: /p3JohIaReC+kjUTIYBQgg==
X-CSE-MsgGUID: pAk2CPS0QSGHkuEnzhlhDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31552918"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="31552918"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:22:26 -0700
X-CSE-ConnectionGUID: 82uMDi9DTIG3oG5ewjTUpA==
X-CSE-MsgGUID: FK1/GtEeSe6UkdOmUEPtOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37350236"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa009.fm.intel.com with ESMTP; 04 Jun 2024 06:22:24 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 15:21:54 +0200
Message-Id: <20240604132155.3573752-8-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717507346; x=1749043346;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ua5dTpw+9qCBRIHWSRrOzgeAU3++bdFfmcyuB6QgoB4=;
 b=HBwDhl7UGTAGPiUGga0+Q6lUi0VDadb5IkN28szLO366IIX3SkgbAQ4R
 mKZeDwSZeLY7WNa9nIR2ExrCcNjDL0xTb1hxG8Hy7k+RmzZBAkYrBhR1i
 3jJ967ak33WYS8rA/uP34I92FAjUnwbGDZmUogUqQ+uKCa0XIn3P5gZxI
 HJoMMfHjYYIPIqwk3xHq1APVn2Qxy2OdukrOIin8EIppHoc8laTnth5pG
 Onqal9K95tmp2rpqerBjnoptiO9Ers3fpYbPTFbl2XCpUathaW1FzlLf4
 NfHWntykq5K82bySOL57sEaiIBaEDJ8a8R1Bv/P1zi6OplpO4cp29hLJZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HBwDhl7U
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 7/8] ice: add missing
 WRITE_ONCE when clearing ice_rx_ring::xdp_prog
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>,
 magnus.karlsson@intel.com, Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is read by data path and modified from process context on remote cpu
so it is needed to use WRITE_ONCE to clear the pointer.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index f4b2b1bca234..4c115531beba 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -456,7 +456,7 @@ void ice_free_rx_ring(struct ice_rx_ring *rx_ring)
 	if (rx_ring->vsi->type == ICE_VSI_PF)
 		if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
 			xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
-	rx_ring->xdp_prog = NULL;
+	WRITE_ONCE(rx_ring->xdp_prog, NULL);
 	if (rx_ring->xsk_pool) {
 		kfree(rx_ring->xdp_buf);
 		rx_ring->xdp_buf = NULL;
-- 
2.34.1

