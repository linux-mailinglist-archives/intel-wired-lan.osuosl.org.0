Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0488958820
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 15:43:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D4B6810EB;
	Tue, 20 Aug 2024 13:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Njy-DNIfKsH; Tue, 20 Aug 2024 13:43:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FF75811A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724161435;
	bh=j1XMeyDmodCe7KZthl+BnWSu3Nbgczd7OGGhn6K/W/g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2cb7kVxizgeQfWZdCwn0c9z+C6LQ0L1MWngEem3O4C6jZLveQQ595calb+1waczH8
	 EPI2OnZhXYqljzNIeJsVFlq02JqIRuzfGD5PDnMPkjsxXyYUlsFdrUIhv6INUJJgHP
	 q4YaypmAf61656l5HqcZZjaDu/UPU+8WTNjIM6C9PtHWGZU5Lvs6zOr4dMpKQqjB35
	 VCSUz5yhxjlnsVKWFADW12KxZl74vUmmCSZzJO9TW11IRLO7Ae5J6384ch+CQAm30T
	 16NuebYlTqtQTXQQIk6ePcJ3weBHxpS5F2ZPlOgK8QWDXt4QB8lJEL6euTzRFVkyhF
	 Hdiu6bTe9HTjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FF75811A7;
	Tue, 20 Aug 2024 13:43:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F2B81BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6AA1480DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Egt-mMsaQnNx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 13:43:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8228380DC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8228380DC7
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8228380DC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:43:52 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-371b098e699so2534367f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 06:43:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724161430; x=1724766230;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=j1XMeyDmodCe7KZthl+BnWSu3Nbgczd7OGGhn6K/W/g=;
 b=RwJC6W6zfeGZtc30Qib2fBgk4XPTsuaYze6AE+j87nxN8FlSuRTX6EEz96PEPBe4O5
 S0lTDpcuzd5hp3ApwoUHo4zJsmelArM7rq3KvedOJdpOvlgPCPmGfbVUy49McnjSuFbM
 MCsBf+d64hAonAxXt85QO5h9Gy3/vCw6DL28qTME8gNIhIB8Uw48VdtXaTq7fBX+UAgA
 HVZgx61LffG6eawYEqJelcMy9RUOz+t5/A9LXbKAuWjGdktt/oUqQBU2yS8lOSAadefz
 r3dV9g2LB4kwArlHW2vBT7JsQaoyZXuA+dxedS4GLllKD/11zFDqdTEU4aF3Mc+vbvl7
 Agqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVJC6qrxbtwNNHjoNYQFprNY6+6G7pyM3Lrs29ubaj3vpPr2s7oy0AJs5JW6s7cI1D38AyBUnqot47rsKrF4mF6snq+qD6jL1rhvD4ZXPH8jA==
X-Gm-Message-State: AOJu0YymGzyI+zd7927FV6GTphvtGvqwO2ZWUQY7ih2c/ziQpArj/XAc
 jxb5+68s2Q85Yyp5SOHoF9fAvmwmT+D3VhW2qIkx7rYIofFXvC1984G7f/10tMc=
X-Google-Smtp-Source: AGHT+IHBWCmam+ulMm2FM1FGLnrPJ/iowdO3I8ObDwrPHCtP4njXnNaxIQIGXyL+mmo/wO6NYs+ySQ==
X-Received: by 2002:a5d:55cd:0:b0:371:8bce:7a7c with SMTP id
 ffacd0b85a97d-371943155f6mr11277051f8f.13.1724161430386; 
 Tue, 20 Aug 2024 06:43:50 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a83838c6a42sm762670166b.44.2024.08.20.06.43.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2024 06:43:50 -0700 (PDT)
Date: Tue, 20 Aug 2024 16:43:46 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Junfeng Guo <junfeng.guo@intel.com>
Message-ID: <ddc231a8-89c1-4ff4-8704-9198bcb41f8d@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1724161430; x=1724766230; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=j1XMeyDmodCe7KZthl+BnWSu3Nbgczd7OGGhn6K/W/g=;
 b=ZbB82NnlLNS/NP9Hy3bNYdMrVY2TE10KAsB0zmK1lPXekFe9NF1ryKsLZMHVD+PmxA
 5QeIv3qt/Npf5oOY4NE+Q6K4v8Ysa8GBSunEY2ygNKPGjSIXdxvcjrvYcwBSXvc2DpwR
 9Egt4TUvFJ02WW8mAetJBYlZnD24YQalSQTDPOguQZXCAUIQv6/zh0DDkaIv637jZJiw
 vQq7vE/CWoi738xdBkkXoqJzfnDVnHkKZ6BD5kS41each5PlVHOlastY9FQphDcNm51S
 prB38HlI4q3H4UwQWWNFu3+2Pw3HL61zGtJXpuJfurHcjQPfLrSJHby6wob3UgS7Lum3
 oc+A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=ZbB82Nnl
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix a 32bit bug
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Qi Zhang <qi.z.zhang@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

BIT() is unsigned long but ->pu.flg_msk and ->pu.flg_val are u64 type.
On 32 bit systems, unsigned long is a u32 and the mismatch between u32
and u64 will break things for the high 32 bits.

Fixes: 9a4c07aaa0f5 ("ice: add parser execution main loop")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/ice/ice_parser_rt.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
index d5bcc266b01e..dedf5e854e4b 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
@@ -377,11 +377,11 @@ static void ice_pg_exe(struct ice_parser_rt *rt)
 
 static void ice_flg_add(struct ice_parser_rt *rt, int idx, bool val)
 {
-	rt->pu.flg_msk |= BIT(idx);
+	rt->pu.flg_msk |= BIT_ULL(idx);
 	if (val)
-		rt->pu.flg_val |= BIT(idx);
+		rt->pu.flg_val |= BIT_ULL(idx);
 	else
-		rt->pu.flg_val &= ~BIT(idx);
+		rt->pu.flg_val &= ~BIT_ULL(idx);
 
 	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for flag %d value %d\n",
 		  idx, val);
-- 
2.43.0

