Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C74B1295F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jul 2025 09:04:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 310A8413CD;
	Sat, 26 Jul 2025 07:04:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id phhNB8yB8-o3; Sat, 26 Jul 2025 07:04:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 151D3413D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753513447;
	bh=Pzxyt4n75ioi07l8a7XMpiZyFP3lgEvZPPzPSNVfOHs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ErEZW7LxkmunS44cJpgrVwPcA0xIAs/ALr5lSEVeu0HA4xzhmtIrC/+XZXytWGSFS
	 KSfW9ZE7veHn1OltCxXkOoana6J/nPwpaSLj373g4n0C08HtGEoECxCHB0lrzzghN0
	 /iR0yrBQhKVz0bQd4LrAWhcRHtThBWFOoVdV8lktBTnrWCis4+T1DmDQF7juXEZtTA
	 CQ9KVf1IiP+YxRAz2oPyij5MyizTO5LqQtnU5AftmCQbSJz2ITZjxQ1e9+jztqQKXa
	 Fbb6UNmOkc9gmZRsyIMrJWLDt4ZfHZizv8mHbKaco0bmqyIX0VDPAz0oXKjIB2UT2L
	 s16rfZuo5QkuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 151D3413D3;
	Sat, 26 Jul 2025 07:04:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CCED3177
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 07:04:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D89E40080
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 07:04:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KQqcwb1Lvnj4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jul 2025 07:04:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A67FD40025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A67FD40025
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A67FD40025
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 07:04:03 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-236470b2dceso24717825ad.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jul 2025 00:04:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753513443; x=1754118243;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Pzxyt4n75ioi07l8a7XMpiZyFP3lgEvZPPzPSNVfOHs=;
 b=XZjzEiwUmnzuP6F3XhMCLjWKw74IbBNcW4o+5EFbpdRbvrdTuAeIDwXRAcUwlH0Lgb
 /WpXFmyTCReCwMe384r+NWgw5VSOac90GI6FI6/ZxJQFABri2jU1puuO+tWiWThhz+wC
 6xL+BpY8tSj9HN3QUY/ZzXr1oHwXYqo897mRhVcGJ432y0uWKpq72Q6EmSuLja3hXyNM
 JRSglO1KfrXkMTMLroOPsUAGKQH9Hjzt72o1uYvrx7sjNCTqXeb45NIK6Z2J6x3b1/iT
 wFJuiCyQQnFmZgddsxON6zP86GuOkzQXb0oL6z3zAHUiPf8Wb2jLPLqAk2igJFqxxgx9
 5PFA==
X-Gm-Message-State: AOJu0Yx1z24sZvixa/to2GNhkthhIZdXWp4qxjcCetpp6/B0Q4PkbIEj
 1sdb9eq/u25uDD6LofWV2Q8ZTFCZEQCvxR+MMHba/G+mHGf3WRb3mIuh
X-Gm-Gg: ASbGncsPOqFFvxfPcuFmYyP1Yntw0IWM6o0sNorrfkLw1I7px1Wt0uOuq2Ia5cQJm8I
 3wDLcWtngb34H2HsyiNeSmg7uwDtamLg5Ts93wRPmjRg2EHyZl+wVwdl8sh+cwMQ5Dd+7s+Z5wb
 TwgDgTRj1msJRfR3RPm6UrahYUkNwvAlEjPylElO1f9X9htAS+rV9ZN/BhswDCi3NxFAKIcum/G
 nM/8I3R8IdVxzpXCw6/ZgeCIsPLcfvdHSysp85/dOBsvrKRyNSfo/+PvldYB8hRPhMvrHxgpHdv
 WyGUMC//aw7Fn4FGTc5dcbya450sy6bHTUIraK6tnZWsuL7Aq/EmDEcioitTuXNaYwVBdT3fSrO
 QNS3FoM29aJ9/Gqi27h2/BnmeTwd7zW84yx7hNAXxSPVCnA2AaQPIKDI9nhY=
X-Google-Smtp-Source: AGHT+IEJHo4UWqF7gjVF86zH2isjnCfKqpnMnFffjQOMthHWa3P0OJj56JLYUczRy0a9KAK7aDGL4Q==
X-Received: by 2002:a17:903:3c6e:b0:235:779:edf0 with SMTP id
 d9443c01a7336-23fb31c303fmr71032055ad.50.1753513442738; 
 Sat, 26 Jul 2025 00:04:02 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.28.60])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23fbe51408esm11216075ad.139.2025.07.26.00.03.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Jul 2025 00:04:02 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 larysa.zaremba@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 maciej.fijalkowski@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Sat, 26 Jul 2025 15:03:56 +0800
Message-Id: <20250726070356.58183-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753513443; x=1754118243; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Pzxyt4n75ioi07l8a7XMpiZyFP3lgEvZPPzPSNVfOHs=;
 b=S0z71anScr5BmdTWpf6BODIqF4OqAQUqdu7uMPygR+CqX4wiUAF3RTOgZcEoGfeSA/
 xkDWonXhBuZoUyiFst4ND5QbJOvoPKbo52UE4fOpY0JVpb5LgyHow8Mv6byC5COqgQG9
 EnspoDi2J5xgu6qRizKhq5aRtVDR4xUxG5RxbGingD/ygJ+tBw/6RlFelFFIQRlsi2T6
 d26jigx/t8y3PoaPPxGaxY+7IbwE1Dn8DBkCS2GGyq3gkTUhIce/nA6B1upzWppVcx0l
 smFiI37QfsdnYEKoqCgyjGJfqy0TT67JGRujcRHyTU0DSXIMAmWx/zj8JOrCqK7OPWwB
 Cd6Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=S0z71anS
Subject: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: xsk: resolve the
 negative overflow of budget in ixgbe_xmit_zc
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

From: Jason Xing <kernelxing@tencent.com>

Resolve the budget negative overflow which leads to returning true in
ixgbe_xmit_zc even when the budget of descs are thoroughly consumed.

Before this patch, when the budget is decreased to zero and finishes
sending the last allowed desc in ixgbe_xmit_zc, it will always turn back
and enter into the while() statement to see if it should keep processing
packets, but in the meantime it unexpectedly decreases the value again to
'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc returns
true, showing 'we complete cleaning the budget'. That also means
'clean_complete = true' in ixgbe_poll.

The true theory behind this is if that budget number of descs are consumed,
it implies that we might have more descs to be done. So we should return
false in ixgbe_xmit_zc to tell napi poll to find another chance to start
polling to handle the rest of descs. On the contrary, returning true here
means job done and we know we finish all the possible descs this time and
we don't intend to start a new napi poll.

It is apparently against our expectations. Please also see how
ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
to make sure the budget can be decreased to zero at most and the negative
overflow never happens.

The patch adds 'likely' because we rarely would not hit the loop codition
since the standard budget is 256.

Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
Link: https://lore.kernel.org/all/20250720091123.474-3-kerneljasonxing@gmail.com/
1. use 'negative overflow' instead of 'underflow' (Willem)
2. add reviewed-by tag (Larysa)
3. target iwl-net branch (Larysa)
4. add the reason why the patch adds likely() (Larysa)
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index ac58964b2f08..7b941505a9d0 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -398,7 +398,7 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 	dma_addr_t dma;
 	u32 cmd_type;
 
-	while (budget-- > 0) {
+	while (likely(budget)) {
 		if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
 			work_done = false;
 			break;
@@ -433,6 +433,8 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 		xdp_ring->next_to_use++;
 		if (xdp_ring->next_to_use == xdp_ring->count)
 			xdp_ring->next_to_use = 0;
+
+		budget--;
 	}
 
 	if (tx_desc) {
-- 
2.41.3

