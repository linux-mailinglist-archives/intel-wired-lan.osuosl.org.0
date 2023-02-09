Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E82F690E3B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 17:19:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A726A4056F;
	Thu,  9 Feb 2023 16:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A726A4056F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675959572;
	bh=CfCqXg9mGqLMwjvxi9tfHKDS7fkdSF1It9sBVzjCiWY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xuo/VOYmNzocjY2kkXGlX9dGcQFEOSkbbO6Q2gJ1GLTRYCqginTBImZQcns6azOj/
	 Xnp5pji93io1rzWkV165qm0TlVxZpqNfDRcHDSXCfUoin3iAn4lYq3ZrW5GGutM6Q0
	 GNfLMu+qqFB5cwVp0czMo1JBUw5zFff+m03usteQBiWLloBHSpBmxbVOAUzP1KM5db
	 hjZ2hnhw+YBLFIeJOFK+fFxKehW7IcMROT8GnZ1f1iblCaGLfdJTbSYvBCt5acneIf
	 ylZfp6d3QUtvpwOr93LFVFSu2rZeG5QeomdxjIx1Mdty0NpkFa1fE6bNhqHZnesoqR
	 t0sDuQeRQa/OA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKwHm4aATupg; Thu,  9 Feb 2023 16:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C5C0404F9;
	Thu,  9 Feb 2023 16:19:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C5C0404F9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A0871BF2BB
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 16:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FCF982096
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 16:19:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FCF982096
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6c7xwragXW6p for <intel-wired-lan@osuosl.org>;
 Thu,  9 Feb 2023 16:19:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4473882016
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4473882016
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 16:19:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="318171170"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="318171170"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 08:19:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="776538054"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="776538054"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2023 08:19:16 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 373D937E3F;
 Thu,  9 Feb 2023 16:19:15 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>
Date: Thu,  9 Feb 2023 17:01:30 +0100
Message-Id: <20230209160130.1779890-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675959565; x=1707495565;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cES7VibJypSD2FgfCCkYJ+cLH4/wP6Ku2mh8oWTrJmk=;
 b=GpdHHnu3089UgXpSZE5dNwaPGa2aWlvTTD0qoYRhm2mwIFebjBfiYgiZ
 pfTWmb9qBrDqJHDIqnRGN8z3FGOxEtVuppgqhWpTw8FcCEhInQ3lkxpr8
 GjSnamINN6UWCPxQY94b9FsGfX3DrdojvYMrR6xtmtReQgE15H28TFTWR
 tZQK0F3mwD2FMZcSjBjIyE5v84NVVw/GykbB6g324dH59dmkJXiryiQpN
 KXtDclcoMMjfr1Jmakh8uHFXhvrGmLcl3pRXUlh1KEYzEtpBG73HSFm3l
 rz65+uXeW+qjaU4ldxKWMtcEHwq7KV5jICtF/3KmK4TIJxY7rUyGLTKlt
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GpdHHnu3
Subject: [Intel-wired-lan] [PATCH net] ice: xsk: Fix cleaning of XDP_TX
 frames
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, intel-wired-lan@osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Incrementation of xsk_frames inside the for-loop produces
infinite loop, if we have both normal AF_XDP-TX and XDP_TXed
buffers to complete.

Split xsk_frames into 2 variables (xsk_frames and completed_frames)
to eliminate this bug.

Fixes: 29322791bc8b ("ice: xsk: change batched Tx descriptor cleaning")
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
To Tony: this is urgent and should go directly via net. It's tested and acked.
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 7105de6fb344..374b7f10b549 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -800,6 +800,7 @@ static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
 	struct ice_tx_desc *tx_desc;
 	u16 cnt = xdp_ring->count;
 	struct ice_tx_buf *tx_buf;
+	u16 completed_frames = 0;
 	u16 xsk_frames = 0;
 	u16 last_rs;
 	int i;
@@ -809,19 +810,21 @@ static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
 	if ((tx_desc->cmd_type_offset_bsz &
 	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE))) {
 		if (last_rs >= ntc)
-			xsk_frames = last_rs - ntc + 1;
+			completed_frames = last_rs - ntc + 1;
 		else
-			xsk_frames = last_rs + cnt - ntc + 1;
+			completed_frames = last_rs + cnt - ntc + 1;
 	}
 
-	if (!xsk_frames)
+	if (!completed_frames)
 		return;
 
-	if (likely(!xdp_ring->xdp_tx_active))
+	if (likely(!xdp_ring->xdp_tx_active)) {
+		xsk_frames = completed_frames;
 		goto skip;
+	}
 
 	ntc = xdp_ring->next_to_clean;
-	for (i = 0; i < xsk_frames; i++) {
+	for (i = 0; i < completed_frames; i++) {
 		tx_buf = &xdp_ring->tx_buf[ntc];
 
 		if (tx_buf->raw_buf) {
@@ -837,7 +840,7 @@ static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
 	}
 skip:
 	tx_desc->cmd_type_offset_bsz = 0;
-	xdp_ring->next_to_clean += xsk_frames;
+	xdp_ring->next_to_clean += completed_frames;
 	if (xdp_ring->next_to_clean >= cnt)
 		xdp_ring->next_to_clean -= cnt;
 	if (xsk_frames)
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
