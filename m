Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 715AAAE6F98
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 21:31:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1414E409AE;
	Tue, 24 Jun 2025 19:31:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HSfzzIycej09; Tue, 24 Jun 2025 19:31:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DD3D409C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750793473;
	bh=BUUktOVf8Mcbc6vJVhkswLwRwVDucF8ZH8DrIAMKlHE=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L00dmK5iqobBv5xZG2UTiciFnswww2MiSnrZI0g+RwFhC2akmtXew/2QfGsZ9Rc1g
	 o33cvWpbgwn5DkJCHoEZahMKWPcgA3qf8xYuZYtore8n8ODsTpOZR3K4ItA6oJEnZ3
	 OZiubOmiE7UVoXwnYnE6hWEoATzolHIyikaeyM2A6Y+NPeX0X4Z/sluTsLfPoVYdB4
	 UQzoQ90chN3ZOgamtFEpxemYKGHCWUCKwJV191pPC6SNKVEZfu+Gq5ZxBfetlm5U9b
	 r6EtJY+ODkqAuXvlVzuQPSnh+Zp1SIXPwgV+pxodZvObZ14A/r2P617K+vEDMs5jUr
	 FnHVsuudzdyBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DD3D409C2;
	Tue, 24 Jun 2025 19:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 32D2643F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 245D483B37
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jhSlO3XxVdMO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 19:31:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5F9DC83B25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F9DC83B25
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F9DC83B25
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:31:11 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-ade5ca8bc69so150634866b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:31:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750793469; x=1751398269;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BUUktOVf8Mcbc6vJVhkswLwRwVDucF8ZH8DrIAMKlHE=;
 b=ZM4vXd4UEF1NrMWHliB5QeD5RCy03kBRgqscPPmtvuqiERktT1NuIt31vUh2fXEAKq
 ez+AehEKthp4mU3oGprLr8CsBBB+O0A5fQpqwJ2cT3lObdDOVnXfBg/NyDw/4vwx27v8
 mQg8LQ29gXNxEcDe70dA53jhGaadcnZan1lpiJGVRWzYVdAFRESQNBzsTl9ikrPhsrK9
 5RU+dAzDEoNbKySCJHrvJIXq6r55hK9L5Od1jQWNe7+KtImUqweTrTXqcyHIL+DUkFCX
 ipnscGJa5lvM2V3/RXrtUhdIuDThcQBvkRVLKvvJzndop89tsiS4K6EbbxWXE5q9U19H
 1sbg==
X-Gm-Message-State: AOJu0YwUCx8+KwC/YvVA9vAQDd5/MGKAFe8NO6XUbBWlMs4l6iF2bDT0
 ZacgKX9cimTCwFZjfOXkbdu8e/VT1FKGx3qxadjbXTQdasODluGdu5z3a9zzbvVkUA==
X-Gm-Gg: ASbGncvz+tigAwkrJz0eo4jl1ijFVJ8QscichaEM5FzEKpZevHwuWBq5ij0PjbwIPrS
 wygA+pMnvJQ0sJvDNj7IIXgEEuC2Q5B63yX8d773idK1bk3v7I6b21F2QdIWGxdi1ATHnCLG4RR
 zRtg+qsIYg5hAZ8lDADlmhn4Y9HcXzsOWxcSuXzcFUsECoRCyqK13RylTToxd3x5y7yk7U7QVGf
 aBIK7/GN9qCVUoMM/xisqM4NhuJxMe+QZyHtCGVoyxP2gryuMQLilRBq8cH/MLwDu9DN0X/jBd7
 d5H68XnVW9q/i4KixmeFihA4XxNLUfHZAYx6s1cxK+ARjYTMHkvEBExoJC1OA2wZ
X-Google-Smtp-Source: AGHT+IGLQgQrFQXmzCZ57AkjARniUBs6D5iqeQVWxWnIx//eINokE70nU4ML3YSxsa95lxOmkG/l4Q==
X-Received: by 2002:a17:906:cada:b0:ae0:ad5c:4185 with SMTP id
 a640c23a62f3a-ae0bf21d078mr38361966b.57.1750793469403; 
 Tue, 24 Jun 2025 12:31:09 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae0a0aa1ceesm243467366b.70.2025.06.24.12.31.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 12:31:09 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <5589e73f-2f18-4c08-8d10-0498555dd6be@jacekk.info>
Date: Tue, 24 Jun 2025 21:31:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
Content-Language: en-US
In-Reply-To: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750793469; x=1751398269; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=BUUktOVf8Mcbc6vJVhkswLwRwVDucF8ZH8DrIAMKlHE=;
 b=FkRliR6P1Sf3tYuXQGYQQvUBUzO+8bVt9repjSP6bVWNd/5Clrx0a+fAQViXGSQPuI
 wQn0vH+gzXrw2aWUszLp1g4f8HoidoJ/uqe+Fc3jWl0Dm46MLqvoUk0CGk3lflCOQETF
 ZyOFs9EM1Rx9+QJpPRULcgg5+p5NvoX/rBi57jha6UDqQ12jBMxpi154dEjFWJo4eCjI
 YwEyH0qSKBn+mq2ezpI8A4DzaP+8sS/UaHXl/hsRNEzgICPuXg9WuAsqsBKhbdj45QI4
 xOK3n/SacHrrNkZwnNRemlAu07VBGwluzSPKwN/Qwpr+DB/oe9TpfQoDvt+Lst/rHSoA
 rvyA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=FkRliR6P
Subject: [Intel-wired-lan] [PATCH 4/4] igc: drop checksum constant cast to
 u16 in comparisons
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

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_nvm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.c b/drivers/net/ethernet/intel/igc/igc_nvm.c
index efd121c03967..c4fb35071636 100644
--- a/drivers/net/ethernet/intel/igc/igc_nvm.c
+++ b/drivers/net/ethernet/intel/igc/igc_nvm.c
@@ -123,7 +123,7 @@ s32 igc_validate_nvm_checksum(struct igc_hw *hw)
 		checksum += nvm_data;
 	}
 
-	if (checksum != (u16)NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		hw_dbg("NVM Checksum Invalid\n");
 		ret_val = -IGC_ERR_NVM;
 		goto out;
-- 
2.47.2

