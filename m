Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63022AE4967
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 17:58:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 136744081C;
	Mon, 23 Jun 2025 15:58:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x13yb2f0nMFT; Mon, 23 Jun 2025 15:58:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EF394085E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750694293;
	bh=THMPC/stGELIuIM3zh7ri4wYgq1jRpgRTNCcMv21/aw=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P6ESu7VAJ23YtdXpoS61mBPVps6AxP17bDoPoZGLULMHiFgYh6K9thNdCQj/CUkvJ
	 6/DnsOx0jChGJTERfsG3hPH29PcmLSkpzZ8lldEyTtXGMRYDHeUzacUxxZphLDjYQN
	 herhqK/vhV1QzOr2tdd6GHE0sB7MwrE+IAsePlsZFxM3gtFNDc2hVLYLyv5y3z2lMV
	 fpx+xD8H+gVd2H+Ep7y80D1fcLYxonEN9Y6pdKlmoQzAT6kALBAWvoK6gM3/KoCUUY
	 0c0NO9y0wBA55/T2tlJbibwk0F+7r5BgHj3r+oRtCzKNbd2F2uFlBQtBIQYaNvOX9b
	 37pTuhGcqP9ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EF394085E;
	Mon, 23 Jun 2025 15:58:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F76B443
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C763407C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:58:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PciB1v0UAPK0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 15:58:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::529; helo=mail-ed1-x529.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A32740627
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A32740627
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A32740627
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:58:10 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-604bff84741so8203225a12.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 08:58:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750694289; x=1751299089;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=THMPC/stGELIuIM3zh7ri4wYgq1jRpgRTNCcMv21/aw=;
 b=pJliEka3ljcvZpHMEP6zUf72hFUfZVjkzqSPou1X2LuReJXtmFz/8jivQytNmSbuD6
 81EHg1nocmIGnijC/vrdSCBhr1zLmTBumrFvrrR5wrhAjN51Y6K5AQhTwB5giG+xhfzI
 ZbfpJGJEmlTurqsqglTHov7s3STQC1JZ/4fOibguQrLOqX+c7F2TVPEnEoMquMZUoKa8
 uRPw1YjkRLH3vNJ65xk8gctJHYRBbb+iG3lV8YroJ4GxqJXRG/1bZ6o+BCRrRexmui+/
 XwrcjXkarfxd8P+AFLmLyaYUhJOI4zTGhWigRRfPAjlo+EVEHbQXOjJIHWGET0VQArbn
 M8sA==
X-Gm-Message-State: AOJu0YwrwOxo6bFnCKPA1J3YGwvmtPn24gui+TthlfUfL5EBsxslspS2
 RqmEbP1RXnCSAL+2TCpixCye7U2j0kCCpbTYOQeeN3Xw5xKjUKTgMS5/huzE645FUQ==
X-Gm-Gg: ASbGncuYLLUCtGrHc3XClPb977i/CjKj7k575XbD+E0CwWA47VMmV8m27H3tb7HmEfl
 8klzu5Ge0YHvG6NgqkncXxhfEBlQEKh9Z+cVDXjAr1kgCaUhc4upJlC/DTTtuKUwGxeBJVYNl4b
 juY62VVH5SlZ94S9y9nvxVy/kg+tUyjj35rOq1qRQKEZr5fn2DcNgmlQeRVyR46YThktcvgUNGf
 NwLwDdB3pNXhpjjBRSXp92f7wqbaMOoBjL9hM9JR7RZRjwiuR6LtBGk7jLVRnQbYDZVlWJwUopk
 OwAmFLbOrxVSVfnpa26qbKqMh5NkZYXV6/So9FDP+Jlx20D0I/UzDz38H5VyWbIA
X-Google-Smtp-Source: AGHT+IFS1S4nhEd7PY/HQFvRpwpefcPz4PA7zagt7CZWM4PTwwR7omhizl3rqwwz9enGP1MYSe3wjg==
X-Received: by 2002:a05:6402:d09:b0:605:2990:a9e7 with SMTP id
 4fb4d7f45d1cf-60a1ccb50cemr12831827a12.13.1750694288741; 
 Mon, 23 Jun 2025 08:58:08 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-60a18cba458sm6315762a12.59.2025.06.23.08.58.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Jun 2025 08:58:08 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
Date: Mon, 23 Jun 2025 17:58:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750694289; x=1751299089; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=THMPC/stGELIuIM3zh7ri4wYgq1jRpgRTNCcMv21/aw=;
 b=ohiFl3DxfKl8TmuOpSbOjwplwODL8VCAcA7EPbnjpWNCgFOQPiaN8aCRwSPK4D20aD
 ylXPfUyTdifjQAJMHpCe8cWYL4MLZBoWyEGKH+z8g0qeeSBVzW1mprKqvVWXVb06O3Yj
 E/85pRpjId16Xi01ex7LikdnzaI5SvItNjcJq5uyX9VwAl4oM+3+4dncdKIHgr1F62qR
 lydwJcxgO6TU3ggdfzdEToufl1J7gZ75/pzqxfFJjHwGDgkGJCVfG7m98qyseXm/vkDD
 aJdlWKheI5SyFJS2JlFfdi9OE5NqAmm8Uni/cid2xXv1fBVVwqOxfzgB0bgXeuMWhtx/
 Si6Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=ohiFl3Dx
Subject: [Intel-wired-lan] [PATCH v2 1/2] e1000e: disregard NVM checksum on
 tgp when valid checksum mask is not set
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

As described by Vitaly Lifshits:

> Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the
> driver cannot perform checksum validation and correction. This means
> that all NVM images must leave the factory with correct checksum and
> checksum valid bit set. Since Tiger Lake devices were the first to have
> this lock, some systems in the field did not meet this requirement.
> Therefore, for these transitional devices we skip checksum update and
> verification, if the valid bit is not set.

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
Cc: stable@vger.kernel.org
---
v1 -> v2: updated patch description
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 364378133526..df4e7d781cb1 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4274,6 +4274,8 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 			ret_val = e1000e_update_nvm_checksum(hw);
 			if (ret_val)
 				return ret_val;
+		} else if (hw->mac.type == e1000_pch_tgp) {
+			return 0;
 		}
 	}
 
-- 
2.47.2
