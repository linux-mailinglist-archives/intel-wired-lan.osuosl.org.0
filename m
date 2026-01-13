Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79807D18EE9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 13:52:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F36AE85172;
	Tue, 13 Jan 2026 12:52:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gUhT18jr4xXs; Tue, 13 Jan 2026 12:52:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DBB38516D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768308746;
	bh=uEb4fpri3npogF5JFpOtWuoL+P7ayMQsw+8rwNvJPCI=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=V4oYMWECOarFhhshmdsCyOV2H6ixN+400/ojpPiyxETDXd09DFb87e0AIhLUB6vrF
	 J1gkw73kxHcrXclVPyp3hUDX0pnqAEoAyfInCpcjosEG9tfgy0bn1eEXElDN36rj1V
	 abltaCagPFwy9Ru1asSRGg38KGOyzK+d+jr0vQCt+eK/mUfrJNDTkKyyWbKoBmzayK
	 5poKmcpdA5yYK9Z7M7u29R13JNhrmcrSXBGLIF8JPUviHYlCYjaAok74HwUA+zOs1B
	 Srs2Rm6JK/GSfbLYQDsHUaOOr+IOh1DHihlrJh+tMzZMFHp/Mw3wEzgwq1FNFK4ZDt
	 Jn7DBKjV3yzog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DBB38516D;
	Tue, 13 Jan 2026 12:52:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B73AD1C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D83F85164
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:52:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IGkg9QikygS9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 12:52:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62c; helo=mail-ej1-x62c.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 791EF85131
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 791EF85131
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 791EF85131
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:52:19 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-b8719aeebc8so349962166b.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 04:52:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768308737; x=1768913537;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uEb4fpri3npogF5JFpOtWuoL+P7ayMQsw+8rwNvJPCI=;
 b=fUr3zvfPHbflpQO8OD7agaTkuhDZF4yxYssjFDfxO/ayilBKr6/GFdwJ1HlORCoQqx
 P3+POivaL/Ghx1+K8ddEpmG/P2iDsxbog3rEGTkhYVszINzUKJtAdjb8l2KKy5F1ApxV
 KqUF0N+zckpo59YMfj7dB/wFbkDLEoeyUEkHHl2O2hAt6TuK42e1TRITnZ8ryw4dFxnx
 Niy2bDc4rodadpTrL7MMQg+LCLVo+Kjj7E4iTU0kUYFKn8zjhVWbwX9DQ4Vo2+2VuotR
 hkBbwFacs7KuhaluhB53Yz9GRmg+b9FgwxiPXCfzbVkTs/zP6zUSxsqIHXzySY6cKoJT
 m+CQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUD3ngyjvcaCcslAI0QMMmoRu9o+G5QqapDolyz1FYc1eosLNBCwhjmUiER3eLqu9EL2ZIMJQ4YPrSHyZJNAc4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yybj+ZFpefT/bNtTNfnTHAwZ99JM/ytsahwSDK/7h7uw5DTc9aR
 gb3WLro5cMdlgYYEgpelk3KLthefeu7EHQtTLs2D6ddF73qAG2frI0Y5Kx7eOhoezh4=
X-Gm-Gg: AY/fxX6lhQgBLuj4GavYJOYRL8IW/+LZsHn2beQuEwln2sUjxuaWLKQEXjWRJj84IHd
 LlxP7skQm4YAy1z4T0lqMz6g7npEui4+NeD3xRwmhbpXxztqkGsxwI7abtpTN5dH5nQEguBiS5a
 SrX1m6YVZnh9mswfB9MmpdWB5C6ICpyk6SlirkEu+/JRI5ExCQrpCi7YNtS1O1ZnL65azxDDefG
 lg8o3D/Q8e/p8gQih2KVPydjj03z0hTkQYakmnVBsB97dvdZEj9gkjWSbQEatcunWIM6HYsOd+A
 rkwBEL3F5O7/YwIAc9FGtn+sTSig5W7EVnimrqrbZiIoUpz6K+tf8u8biwmF4Upc3ONO0sJtA/J
 oQhUct0tQL2gwg6fa3CSmtO2PHGEFXYN2wTRAmCygwCPXE9O3M0wXipZiAuWmr4Do3Quj4AM1R7
 V3nKvalP9gj8PJ
X-Google-Smtp-Source: AGHT+IFX81GRz/hwINL72rPQLm6j5tregnFNpNUvMTj08WVBOxYe/hO3B2KEOTqbE2tiVZ7xDeaggw==
X-Received: by 2002:a17:907:7293:b0:b87:2fcd:1955 with SMTP id
 a640c23a62f3a-b872fcd1bf1mr388012666b.50.1768308737057; 
 Tue, 13 Jan 2026 04:52:17 -0800 (PST)
Received: from cloudflare.com ([2a09:bac5:5063:2dc::49:1cb])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b8706c2604bsm780426066b.16.2026.01.13.04.52.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jan 2026 04:52:16 -0800 (PST)
To: Tariq Toukan <ttoukan.linux@gmail.com>
Cc: netdev@vger.kernel.org,  "David S. Miller" <davem@davemloft.net>,  Eric
 Dumazet <edumazet@google.com>,  Jakub Kicinski <kuba@kernel.org>,  Paolo
 Abeni <pabeni@redhat.com>,  Simon Horman <horms@kernel.org>,  Michael Chan
 <michael.chan@broadcom.com>,  Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,  Tony Nguyen
 <anthony.l.nguyen@intel.com>,  Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,  Saeed Mahameed <saeedm@nvidia.com>,  Leon
 Romanovsky <leon@kernel.org>,  Tariq Toukan <tariqt@nvidia.com>,  Mark
 Bloch <mbloch@nvidia.com>,  Alexei Starovoitov <ast@kernel.org>,  Daniel
 Borkmann <daniel@iogearbox.net>,  Jesper Dangaard Brouer
 <hawk@kernel.org>,  John Fastabend <john.fastabend@gmail.com>,  Stanislav
 Fomichev <sdf@fomichev.me>,  intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org,  kernel-team@cloudflare.com
In-Reply-To: <4261e437-84b2-4d0d-af52-c5ee7fcf07cb@gmail.com> (Tariq Toukan's
 message of "Tue, 13 Jan 2026 08:08:48 +0200")
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-7-1047878ed1b0@cloudflare.com>
 <4261e437-84b2-4d0d-af52-c5ee7fcf07cb@gmail.com>
Date: Tue, 13 Jan 2026 13:52:15 +0100
Message-ID: <873449wu80.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1768308737; x=1768913537;
 darn=lists.osuosl.org; 
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=uEb4fpri3npogF5JFpOtWuoL+P7ayMQsw+8rwNvJPCI=;
 b=D2lmbz+gNZZC3b1jDMZ6tiI0nNLVURKQTvD5/RXmyYHgxyyrIyKAbjb/OGZZ6SmWvL
 OMv//AXBYpY0jI0QhVKlT2rzbCR9dlgKVgaxGdvScjPBHsLRk3ptYb9WWsLFRjGt1nqL
 QrXXpk0MIgDjdPdZFmapaCibqkjAyTDw1zUK/ZrO+tRDSxJsyVhyxDMpSsdrIDRDN5jX
 q6q1m8IiOBUgCZlnzt+lLqL+LukESt98Aj7FhMI3foF/LQjzweqvG3HIO8YyFk7CZWpK
 pD6uAphDcTlVuop2g0XFaMG8v62Iuf1ozWwbcXSAjg5ZVeQfnifeaz2NwIX4O6CeK+kS
 KHTw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=D2lmbz+g
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/10] mlx5e: Call
 skb_metadata_set when skb->data points past metadata
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
From: Jakub Sitnicki via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Jakub Sitnicki <jakub@cloudflare.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 13, 2026 at 08:08 AM +02, Tariq Toukan wrote:
> On 10/01/2026 23:05, Jakub Sitnicki wrote:
>> Prepare to copy the XDP metadata into an skb extension in skb_metadata_set.
>> Adjust the driver to pull from skb->data before calling skb_metadata_set.
>> Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
>> ---
>>   drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
>> b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
>> index 2b05536d564a..20c983c3ce62 100644
>> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
>> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
>> @@ -237,8 +237,8 @@ static struct sk_buff *mlx5e_xsk_construct_skb(struct mlx5e_rq *rq, struct xdp_b
>>   	skb_put_data(skb, xdp->data_meta, totallen);
>>     	if (metalen) {
>> -		skb_metadata_set(skb, metalen);
>>   		__skb_pull(skb, metalen);
>> +		skb_metadata_set(skb, metalen);
>>   	}
>>     	return skb;
>> 
>
> Patch itself is simple..
>
> I share my concerns about the perf impact of the series idea.
> Do you have some working PoC? Please share some perf numbers..

Sorry, nothing to show yet. I've shared more context in my reply to
Jakub [1].

The series itself is an interface cleanup, whether we end up needing it
for the metadata effort or not. Hence I wanted to salvage it from [2].

[1] https://lore.kernel.org/all/87bjixwv41.fsf@cloudflare.com/
[2] https://lore.kernel.org/r/20260107-skb-meta-safeproof-netdevs-rx-only-v3-0-0d461c5e4764@cloudflare.com

