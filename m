Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3252F5B2D4D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 06:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB3BA60B33;
	Fri,  9 Sep 2022 04:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB3BA60B33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662697040;
	bh=h+VlhiQ7uzm0Uq/iI6inMjVwTJKJzKyjB3a18CvH8YA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FYSD4UCOeos1sem+V1Y2dJaYLdFkHt/28Osj1ZGwaZA/G4JSIPwTJmUL5w3YAEmwR
	 fWGgLMOs8FPTnnyqkd1cHXvgfTJTh5lC76he8HEMBmk7ToiJ/s9wZrxBsDtNjbKJpN
	 4yOeyJa/p23QTh+L3TgOr5XUkzb08m1rPJMOM4xUSvSu8F+iMbG76dg49jI4SyMm5L
	 LzRB1A/KNcVJrFFytj+txR6WSwB58FmNeQXwUZUtbJvvm5MHixVkmpCsTxH/gkxT2B
	 PgDrCcaUyPQQvOTmGPj5gPhrBVa1svhrTVk7MDYJqnOfdNmL3l3UalHohpsRVo4zgG
	 36Z+8l1n/PkWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SMvSKDFdb-ls; Fri,  9 Sep 2022 04:17:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A172660881;
	Fri,  9 Sep 2022 04:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A172660881
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DFFA1BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 04:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 558D540185
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 04:17:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 558D540185
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sG-HYqDglQsZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 04:17:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB387400E9
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB387400E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 04:17:12 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id 9so648734plj.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Sep 2022 21:17:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=mTQeerp6vrMHbtmhw1xtF+7F71feU54gGWD+y0Ql+EQ=;
 b=Ns7pYDAbbRNzteTYNO45BhiNJKUna95zhVqbGQbisYVu2SZrTWUFoQ9oeePB3EKjNm
 C4AVuhaKzBxfgBr0Xrb8ngcFoSbEoojtz9Y70XPdJHgeD/0vBNfzESzKc1SK9l/RJ7jd
 9dN3bZpE2UPuQ53pJI3m8T1nBm16QpPU94HQhfcZHGyylgZ8UqLOKpkWeQalohgU4lKF
 9hRYmXpT4sdbmxiuWkgpyLQjPJVx+Wa3VVDVgtAd1VNEVvHvPYAtAXsntZTWbcGAPf3f
 L/cJqdqCYmzL7iAEwGeIzw1Utn6CusTRKhXqheRO+Xc0MP+H4WRnIoif0xiyRbDHYOoB
 XC/A==
X-Gm-Message-State: ACgBeo3JUaaa3yII4Ybsv9Ag3fnfVR6pdkOHtc8tXrM52hJYyyo+ELWl
 zVKZvjSwG4AD6AlXTf22IdQ=
X-Google-Smtp-Source: AA6agR6tI5hZ/pdKzlFF9Xd6nDWbiwnsidZF0TRH5j/J4eIkqLrwjcxaG8BlA8Fjktf7uldjQj2USg==
X-Received: by 2002:a17:90b:358e:b0:200:9d8a:7a70 with SMTP id
 mm14-20020a17090b358e00b002009d8a7a70mr7430140pjb.61.1662697027216; 
 Thu, 08 Sep 2022 21:17:07 -0700 (PDT)
Received: from localhost.localdomain (lily-optiplex-3070.dynamic.ucsd.edu.
 [2607:f720:1300:3033::1:4dd]) by smtp.googlemail.com with ESMTPSA id
 201-20020a6217d2000000b0053e5daf1a25sm476194pfx.45.2022.09.08.21.17.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Sep 2022 21:17:06 -0700 (PDT)
From: Li Zhong <floridsleeves@gmail.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Sep 2022 21:16:45 -0700
Message-Id: <20220909041645.2612842-1-floridsleeves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=mTQeerp6vrMHbtmhw1xtF+7F71feU54gGWD+y0Ql+EQ=;
 b=ieUxokWwlpFX4V1oPWfeXKPgp9sMWrIi9HvmN+/guLJDZ+1MMEd2sQgtffkyE54x6M
 ECD7YfWvqIv1U9x5wrXaYnNZpZdAXGaGxePhcvgNo6q8Y3lS2e+0C+ikhetG5NLN2Ab0
 GXHY/lXZvKyASTMh+3AMLdrawzTD2xjhnqYJurm6ZLEVpCcDBSOwnh4HRuGw5Tna4qZ/
 RgyS7PS//xTPdKISycrzkiv4oL5TPkuZ39iu4MmfEKpkutbVUutdLQbdayCq25vqskMx
 XiTxDUmFqZWheepj6mPqgVYDBVo+BdJjrYhnu+/F6yoyBBKf5U+jEfJX6VmMvHRwoxdt
 HbSQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ieUxokWw
Subject: [Intel-wired-lan] [PATCH net-next v1]
 drivers/net/ethernet/intel/e100: check the return value of e100_exec_cmd()
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
Cc: edumazet@google.com, Li Zhong <floridsleeves@gmail.com>, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Check the return value of e100_exec_cmd() which could return error code
when execution fails.

Signed-off-by: Li Zhong <floridsleeves@gmail.com>
---
 drivers/net/ethernet/intel/e100.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 11a884aa5082..3b84745376fe 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -1911,7 +1911,8 @@ static inline void e100_start_receiver(struct nic *nic, struct rx *rx)
 
 	/* (Re)start RU if suspended or idle and RFA is non-NULL */
 	if (rx->skb) {
-		e100_exec_cmd(nic, ruc_start, rx->dma_addr);
+		if (!e100_exec_cmd(nic, ruc_start, rx->dma_addr))
+			return;
 		nic->ru_running = RU_RUNNING;
 	}
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
