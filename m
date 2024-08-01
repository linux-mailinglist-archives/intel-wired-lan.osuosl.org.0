Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6036A944EB7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 17:04:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1F8640F07;
	Thu,  1 Aug 2024 15:04:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id diEsMADi_9y7; Thu,  1 Aug 2024 15:04:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2127240EF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722524653;
	bh=6oyUrXiQ5KRnBrLzW15m3SL4jVMTbgLQ6TAxlm3G9Hc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8FIBa9H89rmrENjW/yNFAUD0c0gmhY7bsj0LcLrLU4H4wvLKdrZSRXfy22+5yPpwN
	 W8DdizIvYm/Ax1d39ymGwoP2pq7NUGy3QbHV8peoVJdW0iFMcNVIQRm07+djZ1zwDI
	 mZhxiyFEAIN5kL+DsaKh/814JDy0YeyiORat871TZSJ8NeW3ISY5R08M3pZsbpumMH
	 gu7ia1lEAxKgMg/TmkBWIBwojFQNGf0ZqVlWqToTPGPs0fSH2VHnzkR4TaMtOzzr1/
	 ifdiABtPReTrJ9heIyffx9Z5ZfjIOZYejZWzXpSrP4WI2g4gQQI7d22k1G44fHShlv
	 ot4OPwDz7XQdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2127240EF1;
	Thu,  1 Aug 2024 15:04:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5E671BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 13:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFA71606E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 13:47:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LH_mbo5Rt7pk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 13:47:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=yyyynoom@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1EE81606E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EE81606E5
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EE81606E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 13:47:39 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-1fc491f9b55so56293215ad.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Aug 2024 06:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722520059; x=1723124859;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6oyUrXiQ5KRnBrLzW15m3SL4jVMTbgLQ6TAxlm3G9Hc=;
 b=iP8hOi2vwBOeJbmuA9Zgr7KUAMRadsaL8OCrR3sC6Spn7kIPXwIBSXd0kpWo+rka1Y
 fUfqbshdjzkn5rO8gkWZj0Jh3NPde2X61iZaYBoYXQW1rNelR/6xxrGA4UTbzyUVNfjd
 CEgj+6bruLyQHBF2t12s16pUmlpKUSMHfEwH/DFB659xfHqXOwpy33MBzaI2O1XcWKJF
 Ok4WmgbqXl7f83I4hj9VfluNZCjPunGi6FP4rQW0HNzM/w2RKdK+BRu/AiUW4oHvm8+9
 BN8dkV/pehqHoklhhZrWmP5noIOnx/krqQIFCpxqrXQShcfVxlSJXux/aWsGVsgA1mUL
 BLsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3GRkIC5KqhjkI0cMKQNSItAb9+gWux2to9fYRbxcgNwR0yyCD2KvYhvB17q5L44IpUPHCg7TWy/Cvid6MgbNDX62wx9fSRqP0wmwKgwh5/A==
X-Gm-Message-State: AOJu0Yyc/otcuCtjT1X09xImN7Nl1zt1n+nw9EABFyHBmkwdTs1Glymc
 4dItt0lNaPpdaQmJi55SJuJaNNiHF1evD5vnCranQ3zwI3LwERHy
X-Google-Smtp-Source: AGHT+IFfeAhrEmDM6jOnfL5ofrZr5WaVDCLtKFEqLNQlj0uawfZtGGNywhT+ed6VYVqPvDXKX6TqSQ==
X-Received: by 2002:a17:90a:8d18:b0:2c9:6278:27c9 with SMTP id
 98e67ed59e1d1-2cff95405a9mr245888a91.38.1722520059292; 
 Thu, 01 Aug 2024 06:47:39 -0700 (PDT)
Received: from mythos-cloud.. ([211.46.174.173])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2cfdc4aa0c2sm3302534a91.46.2024.08.01.06.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Aug 2024 06:47:38 -0700 (PDT)
From: Moon Yeounsu <yyyynoom@gmail.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Thu,  1 Aug 2024 22:47:10 +0900
Message-ID: <20240801134709.1737190-2-yyyynoom@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 01 Aug 2024 15:04:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722520059; x=1723124859; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=6oyUrXiQ5KRnBrLzW15m3SL4jVMTbgLQ6TAxlm3G9Hc=;
 b=PHeNNgAIFVYIetecq6YCgU+l8HAxyxapsNn8xvm52F80Xix2J9Y3caqIhuc+aaBEdw
 tgRV0on05tkG/zPQspVN5rI1wkcdpLpocYFUvBMxPWVfCB+oxCFC+Yjjj4hFFVqwQ7Kr
 W12nqndZO27ekLt+5g0u21adnVFfEScC6Ad9xgfrZey8Kvs3fCJ3x2GZI5kHOidmQ7O8
 0AzBBIjR3Rwo1FlRUG+KndwYVrX0xS+z3QKJVhvS3FmNMzB8+QtFRsX2bllp8ATM20Au
 5Rq73fotJFjRpnHfUFHekHTiXi6VzqPQwawHY68CUC288JDsSNTuoyMznCo3VsL9n40X
 uEkg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=PHeNNgAI
Subject: [Intel-wired-lan] [PATCH] e1000e: use ip_hdrlen() instead of bit
 shift
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
Cc: Moon Yeounsu <yyyynoom@gmail.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There's no reason to use bit shift to find the UDP header.
It's not intuitive and it reinvents well-defined functions.

Signed-off-by: Moon Yeounsu <yyyynoom@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 360ee26557f7..07c4cf84bdf3 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5731,7 +5731,7 @@ static int e1000_transfer_dhcp_info(struct e1000_adapter *adapter,
 		if (ip->protocol != IPPROTO_UDP)
 			return 0;
 
-		udp = (struct udphdr *)((u8 *)ip + (ip->ihl << 2));
+		udp = (struct udphdr *)((u8 *)ip + ip_hdrlen(skb));
 		if (ntohs(udp->dest) != 67)
 			return 0;
 
-- 
2.45.2

