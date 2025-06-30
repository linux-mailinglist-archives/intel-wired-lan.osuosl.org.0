Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 048A8AED766
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 10:33:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74F4681E35;
	Mon, 30 Jun 2025 08:33:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ICd5BkvdFi_m; Mon, 30 Jun 2025 08:33:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9723D81A73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751272426;
	bh=Drc4Qe3hbpt+SG8bFeu7KngruDo/DuOVb2Yac0bZ/A4=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=raRcj/stPhy/NAGqmsgFXuG8VIkToXCZkA3EyBXEaUKljRiAhxFnX7vAwL062ExnU
	 ig89cBNeCao578wlbpgaZhX19RqHp5sGX71ztRtNypVKMSrfV4mRQ2g6kBY89wK/2F
	 14/Kx5Xxo4R18W7JpVysFpd5VXUaM8li96mYx9UhoU4QyHxnrm77m9qxkylzmH1bdH
	 lfBqkJM3HGstaboIcuTjpmy0Vu/NwDeg6EzP2JV+8wf5OqPElh0RUow4elpEQHYLvt
	 4OIU0UX1OlPlPO+4Ieiu6bf7Xn6+eQ0Wzk5faWQUQiUhPydKYDIAfh7+jBaQ5mWdyB
	 7qOece/9UAjow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9723D81A73;
	Mon, 30 Jun 2025 08:33:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F80B223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:33:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 059DF818C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:33:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CEdswDUM4ph2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 08:33:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 722F08188A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 722F08188A
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 722F08188A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:33:42 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-60c93c23b08so3427763a12.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 01:33:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751272420; x=1751877220;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Drc4Qe3hbpt+SG8bFeu7KngruDo/DuOVb2Yac0bZ/A4=;
 b=UzC9V6xMmkdWiulaKdOGf2jVquGWfG3LBjPdS4k+/5h+bg1Ce0ImuvZ2tps1nbVhgC
 S3dTmb5KCxsirQ0NCgxDM14vmhd5XVVLZ9t9Dz1v/C37nl3JRqtEdJwMIxIf+v4rL0pE
 zfODuc136hD+tdbdM72fVf72G6Wgo56Ix3omi3o/KnpHac8iaBSo83c1aoRLx5Yn3qpu
 ncLnvcp9gkeNPhMeaCm8/N2lQpnaalVLQvbJDXCE5GUZeZaoGcZAOl04KUSbVohBD3iJ
 izJiKJV5Te9CA18lM0fOD2YeyHF3Akm8tSL0ONtH0Ji0e4AZ5msx5Q57ekYZJXOXWF9i
 BM6w==
X-Gm-Message-State: AOJu0YyFalk9MgYV1Rdp2U25wLs7t393wO/YFhUvYPO56wuhvmtDzv6r
 pJGNpcSi8JhPI36ANPq/cirUybd8nAN1DcQIN/IMj2ZX0ShWXGdemSMt6iR+UBkPbg==
X-Gm-Gg: ASbGncs+qQSdXNTzJHuaOKaKktMFgJGbLyspOfEk6/wKBsXn7X+K9+GzBLXBqGYE1mL
 qch0Utoz21G8BTvrmjd90b46jlOd7Ib+uQcf4RDShRNY5mk+QdsBEvfQF6jpGcjYS+eUAGNBLd5
 6VVCZ09GEgFD0V50+9rd2koiV9d+uAxOc5VOgwlj/1Cdvm3j2tMCfEs04o65DufRd1Zli3NMpIQ
 B+1SQiiplIRoszb+D2MnyTZV8Y3YMFjjrMZ/8zNBniEi9vhaPgjElMfTHDiAHlGkhAYn/W+o+Ij
 3+ZOwgQbD1Qob5kWRYdMU9Wb47XOyPW5XBB/BMpeB7eutODM0C52LW0mJOscVyrs
X-Google-Smtp-Source: AGHT+IGwm3ndH7OSPtLkOyMh/AJI+AUHO3JsvxtRCreFKAELFj8qzZOpNXh25nN/NupdaRysl6JEZg==
X-Received: by 2002:a17:907:1c27:b0:ae3:7b53:31bd with SMTP id
 a640c23a62f3a-ae37b53e38fmr511138966b.28.1751272420214; 
 Mon, 30 Jun 2025 01:33:40 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae35363b24fsm629609066b.34.2025.06.30.01.33.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Jun 2025 01:33:39 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <22c8ffce-a0f4-4780-b722-492487d58b88@jacekk.info>
Date: Mon, 30 Jun 2025 10:33:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <3fb71ecc-9096-4496-9152-f43b8721d937@jacekk.info>
Content-Language: en-US
In-Reply-To: <3fb71ecc-9096-4496-9152-f43b8721d937@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1751272420; x=1751877220; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Drc4Qe3hbpt+SG8bFeu7KngruDo/DuOVb2Yac0bZ/A4=;
 b=WGREZ/UnjoyDrR5C6nuf3z+C+1pTYBGcrd/e4ubnA+oA1vTCkF04IEeTmIKwlmatd4
 UPke51EpaUCMrRwhB0kmAY2DQICeEuwS5Ae2HaKr4rXryXzhDlzL1+f2hkoMjdK9bRME
 cmmaHs0c3FDlmOWnTPCRn4QJZX98RArjglubrxbUnBr4IQ1HA+1Whb+noTr6srMoxpqo
 FkhnfWCGz9HrGCjRtq23IaIio5KysTBDiCzwQgw1WUuLSfBY4EeHFdOikKScRsbwERZN
 D1ZOM5MLn3F7AoEv9g6tPG3GhPXgzXZl9F21x6LWykhdFAZCYRr7t6OMEkWJyBZCZe3W
 c79Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=WGREZ/Un
Subject: [Intel-wired-lan] [PATCH v4 1/2] e1000e: disregard NVM checksum on
 tgp when valid checksum bit is not set
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

