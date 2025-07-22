Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B479BB0DB99
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 15:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 626484153F;
	Tue, 22 Jul 2025 13:51:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lSbSpbZWWJxa; Tue, 22 Jul 2025 13:51:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7464341540
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753192280;
	bh=KfSN2l4c7VqJYrvavlefqicQxHjGsCFmso72HdHciEk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=st4tYLP58kAi1a1niaanShlMn375B9kuqgOMlR/rIe/sgM/hQBasikBUTqGJA/66O
	 M0pNAjTjvRTtslw9hLk27lCYr/Vj5qyRLNZ412I+c+EwCUp5FCl1NUKs72+FjeafXE
	 hjMSDCVF+7xd6FNFy0roBNeucczypoTXbalXkLRvglfGdy3SNOxRwZ47fijOHxK590
	 4KFQYp4OlopXI7nBzd5KnGatJzFPtlw7Q+R2sKUnF7tIUpufbdaoznWTaoqCpB6oIB
	 jL7D76duKtoE4mW1le9147+l9O1rjIYUb1KUl4782ftVJD3UVyvyOLq93ZR8CR9rAL
	 p8qfRhQFmFl1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7464341540;
	Tue, 22 Jul 2025 13:51:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E4FCFE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9D9284BED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4TOEjN7DnjgQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 13:51:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B37184AC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B37184AC2
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B37184AC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 13:51:17 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-748e378ba4fso6401355b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 06:51:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753192277; x=1753797077;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KfSN2l4c7VqJYrvavlefqicQxHjGsCFmso72HdHciEk=;
 b=jAwmTHphkyQYpk1Xc71BN96n2x7S2UvjGPYha3o9fmu/VBf9nOTl238QpYdwaxtJv1
 azB70IsB7pENsYoErfEh2mKPXskMCAVEe8J9q9x0V7HqTV4Y4wVvEDIHK1JFXwx0VGfJ
 +ycgnFa/AO1kOHAf9ssIt6AdkoKvd/vPUSm9Ut8KBE9rl1lGBnyfy+s3moIvR43/Syp2
 /boHqux2Uc7uRpxKhosGPEobvIC3/TA/FgciUPh/Cnl35zjW/kqJkbR8Hwb0tGudrWHo
 5fZGpwbBFthpUV694yJ1uhoYln/7w0pVBCV13p4p6/Cit50j+ckE4Iy/RqXwno8AqtZ5
 k5Fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjx9Z1PpNx/wxkJPfE4/cjMa7e9VTJtZIVecImjIUg1rZlIl7blBHtqJuimNEu1mrtsDaYSiTqgTIJTnp3+9Y=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzO3dd2FkB94BRVr70nqibJRmw3Y+yyBUWjtC9sjfYm/z1wWtG+
 y9/Y6yOiOffFKjbJaH+9h2c5Zcb4gEYPvgjYPvdGjTT/KYQyI3hjBUtR
X-Gm-Gg: ASbGncul0EiNHvK/KP+01oXpivsoSBDTGHjv0Nocm619N4jqXKoW8Z3PX9POhZdMwrT
 lpOJjj0tQJmVRH6S1jgSayhsaH/sYH9SaNwDwztp9cgda0X/0jBPPzz4e7DgzbfqZOM3D5UdKuH
 WcyBLMu1Na5U09g2pHLNASGItc/wT9S+jriAOg1PxPyQDpnkfYHuPkqR7FWkwPt9JjSDgocsAoF
 0nyHULhM0qQRGJqSAnyoWETkC3WQCUvINLHaSbcEnCj5H5B4tzidCeR4xpWsFmgtRsLLLuCN9/k
 EoRPR4GHuf3/Pr0q6fRNQ3M/tEypA5PpbxEKrLX7cvpUIQ5nNuUFX4uQmw5rzGESpJuiWKHjyuP
 594QGc/k4q6+sNCNRZPO6qoXDEppp6eaMe9TdXFInxFKrOHoSEAODa2b+nhQ=
X-Google-Smtp-Source: AGHT+IF1txECS8N2+rVOMQa6ZXA3/XztzaqWOOy2pOPBvGSGpz/Xa4Hvd3Atqdn/nx9Z2GxJpZQmWw==
X-Received: by 2002:a05:6a21:2d8f:b0:232:7628:9968 with SMTP id
 adf61e73a8af0-2390da51452mr32513911637.1.1753192277309; 
 Tue, 22 Jul 2025 06:51:17 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759c89d3190sm7612924b3a.39.2025.07.22.06.51.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jul 2025 06:51:16 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
Cc: linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Tue, 22 Jul 2025 21:50:56 +0800
Message-Id: <20250722135057.85386-2-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250722135057.85386-1-kerneljasonxing@gmail.com>
References: <20250722135057.85386-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753192277; x=1753797077; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KfSN2l4c7VqJYrvavlefqicQxHjGsCFmso72HdHciEk=;
 b=OVQeHuBGEqEv13HreknzNk8MEHRirPGggthRSe1WlVoy8HE+WNsgyill/mfrNJXGG5
 EbWfnpv5nRwXgwt3TQgu4+C7LCJDVOL3UdR6lif/9fkN7fjNq6dJNTGaUbUVlaIpPpxS
 vvD1Oa/TdCUeWm4TfYisbyHv2sAj4DT5rRQmsU24+favpVyPv3e8hdv0V9HRoOvE8SeK
 E4T+ZgrUMbV2Xq5miVMbYGw2B/Sd7hX7/uCJrWHbHIWzLi1hIqWkJGp74nZmiAq6YlRB
 ZOF5Xl66SLdyK56/M3OGsaFVobWvyHEeR51K7WEWyxZWhQ6/UvtmBxR7ytfI0rvK3WO2
 X+bQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=OVQeHuBG
Subject: [Intel-wired-lan] [PATCH net v2 1/2] stmmac: xsk: fix underflow of
 budget in zerocopy mode
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

An underflow can happen when the budget number of descs are consumed.
as long as the budget is decreased to zero, it will again go into
while (budget-- > 0) statement and get decreased by one, so the
underflow issue can happen. It will lead to returning true whereas the
expected value should be false.

In this case where all the budget is used up, it means zc function
should return false to let the poll run again because normally we
might have more data to process. Without this patch, zc function would
return true instead.

Fixes: 132c32ee5bc0 ("net: stmmac: Add TX via XDP zero-copy socket")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
v2
Link: https://lore.kernel.org/all/20250721083343.16482-1-kerneljasonxing@gmail.com/
1. target net tree instead of net-next
2. revise commit message
3. use for loop to replace while loop
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index f350a6662880..c4cd4526ba05 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2596,7 +2596,7 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
 
 	budget = min(budget, stmmac_tx_avail(priv, queue));
 
-	while (budget-- > 0) {
+	for (; budget > 0; budget--)
 		struct stmmac_metadata_request meta_req;
 		struct xsk_tx_metadata *meta = NULL;
 		dma_addr_t dma_addr;
-- 
2.41.3

