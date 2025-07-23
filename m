Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBC4B0F528
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 16:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5045440F6F;
	Wed, 23 Jul 2025 14:23:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wkTyMtp2cwHb; Wed, 23 Jul 2025 14:23:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4590640F64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753280626;
	bh=KOntRSgVHCcFNpsuQ/f1gCdqRlv/yon0haOEPks1Dwc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zZk2zmKK/YdqTRo6zlEpil9s8ngFXyqHstdYhlNNMxY0VrHwlRvtqLeFlvaaJ5ffZ
	 Jse3EeQtq8MnPrAIB3q79ZOY41YLlY26qBLcIGn3Bo0BF3c/qfSDARLulcsIpFkMUM
	 gzReVdJwrgHuWBZ/OaNgTaLS/N5sgsMfkucpvvrpLEXSk6kaihkP3SvySylie+RUEq
	 7+TbEFn44UCakkaHFDJBcI3EUosHEisVoXWy6efwWn02G0A3oGuMFbQ7BVTGS5HCc1
	 hXnIZik30/0JYr5UKeFT0M870gJM2YD3LFzepfFmMMYlxft6t5ZaaxnGkdILP6g/kC
	 2nMGosmvN87GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4590640F64;
	Wed, 23 Jul 2025 14:23:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F558E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA17A400AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Drl4W6CDQrf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 14:23:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::632; helo=mail-pl1-x632.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1DEAF40074
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DEAF40074
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DEAF40074
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:42 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-23c8f179e1bso68520795ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 07:23:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753280622; x=1753885422;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KOntRSgVHCcFNpsuQ/f1gCdqRlv/yon0haOEPks1Dwc=;
 b=a/XnczKqISwrIKKzY0/y9Qi2k70oId3H/cZKmS6FsVmkTbOzo4fG+xb39P1rjUAxK8
 EC0ZNfi3bQs3p00EI8PEAKKtkdWM7qEPRgEbuf5gTKFDDs15e7W3UpSfT8lvTWwL61Pg
 qrrqAM7eamoAQMk8O4P17df/6RBihFOX9FgylOOtWOQ4cZirzIwsBawicdVDucIF8Sp7
 G24bF26g+ecenFMp8L7k9f2RbMTa99ZrVkii5Bwq38FUmrJoYi4z5/3J3e2dnOelP+5f
 Xg1roHKzdldyz/igZ2UNEmRRuqlEH9nKuCiewDzHwqapuZp0aJ0br9Ph05FvI4FhZgo5
 i6ag==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQ+ht9sltLu2kDLZrsNMulDFqwZYMimqkfxXS3TOvqVIV50LpUkConn4h8boubUUeb+TQgNGWxO/BO5oqN2wg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx50YeKStp8L9ELp4SKHZ3eLIrsx6GlaVkQoQH66E5o9QZxTAKH
 5cZSPy8/dS0eQirQFbJrHkaijxsGt7KrE1hgssvfYeoBFQp9BaOdeptJ
X-Gm-Gg: ASbGnctHTm02XZFJws995o0/7ysdmuuagS4io+9gERKSRFrD3Te6PmHjAVnTRw/g69V
 fcewsQ56i2P8fJagKSzRB3lQuKsIU6dzwkE+5EwmfuepjVkXlmRGagC9GtypEH/dlOgQ3JJYQgb
 0z3yZQ+vakxXXauu0Ztf62CAjQS94k7/uRYShLGy32u/UldKSlLDHIJ0tQn0pq4AoPKk6qnAecs
 V/G8nzEv2uj72yvkboUWTCpWL87gK++QOexnHk933Sq+KxLwX25vkZXl667m4Rk66nMURF/9Ddy
 UgxZIz9sDYtBomwrLO2dt0eqPctLNyRf7BB2HWdik/UTEw+P9fyDyuFZ9Zkq/76wzn4hwq47zbJ
 O3PvaoDr5EaT2nUvZXKrWYoZQmWZp0MvC4+EUeKWtqpXkycg9Ww2bflz48Gg=
X-Google-Smtp-Source: AGHT+IEMb3cIE20x0EQZMiLUrQDv3ie1esxuOFn0TXUcPb/jILtixQh8nGa/Jmj0cICBmpX2znYZ0A==
X-Received: by 2002:a17:902:f707:b0:235:c781:c305 with SMTP id
 d9443c01a7336-23f981932f0mr50241695ad.24.1753280622164; 
 Wed, 23 Jul 2025 07:23:42 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.28.60])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23e3b6b4a9esm97929595ad.93.2025.07.23.07.23.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jul 2025 07:23:41 -0700 (PDT)
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
 Jason Xing <kernelxing@tencent.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 23 Jul 2025 22:23:26 +0800
Message-Id: <20250723142327.85187-2-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250723142327.85187-1-kerneljasonxing@gmail.com>
References: <20250723142327.85187-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753280622; x=1753885422; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KOntRSgVHCcFNpsuQ/f1gCdqRlv/yon0haOEPks1Dwc=;
 b=CoLQIysMuGkurJTQhUnhC0ZqJ98igxuTeGk35mcCcqo9y7vPnA5AmMJB67jL/SKySj
 AX42TqA9Do9x5xmaORdkvEZqELvsfVSjEHWOgusqbSI+/q5RQD4OF1RW8awHOdOiMKFb
 e8HNu6CnRKRqP8Iz4TNtMOTwXdFhmMxYU+JjKuSB6Ok0YE13I93sVFx5c/RQPcOgsT9i
 vrPqrGJCGbmvSoGuJ4XlX/3kfqHf4VePGnFX4DxsvlAYyyT+Eh2Pb/2lk3Z78zU9Yxdx
 8NcPubhl5NRxbQFT76uSWNoYcR8KR6MT/jJd/DSFYy9rOH6atyqAqo6JJLjCZPovSUka
 YRbA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=CoLQIysM
Subject: [Intel-wired-lan] [PATCH net v3 1/2] stmmac: xsk: fix negative
 overflow of budget in zerocopy mode
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

A negative overflow can happen when the budget number of descs are
consumed. as long as the budget is decreased to zero, it will again go
into while (budget-- > 0) statement and get decreased by one, so the
overflow issue can happen. It will lead to returning true whereas the
expected value should be false.

In this case where all the budget is used up, it means zc function
should return false to let the poll run again because normally we
might have more data to process. Without this patch, zc function would
return true instead.

Fixes: 132c32ee5bc0 ("net: stmmac: Add TX via XDP zero-copy socket")
Signed-off-by: Jason Xing <kernelxing@tencent.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v3
Link: https://lore.kernel.org/all/CAL+tcoAnB+8ZLPyWQ3XsvWTa=JO1yCKWvrKVp+2WCP=kGpfSPg@mail.gmail.com/
1. collect reviewed-by tag
2. replace 'underflow' with 'negative overflow' in a technical way.

v2
Link: https://lore.kernel.org/all/20250721083343.16482-1-kerneljasonxing@gmail.com/
1. target net tree instead of net-next
2. revise commit message
3. use for loop to replace while loop
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index f350a6662880..f1abf4242cd2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2596,7 +2596,7 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
 
 	budget = min(budget, stmmac_tx_avail(priv, queue));
 
-	while (budget-- > 0) {
+	for (; budget > 0; budget--) {
 		struct stmmac_metadata_request meta_req;
 		struct xsk_tx_metadata *meta = NULL;
 		dma_addr_t dma_addr;
-- 
2.41.3

