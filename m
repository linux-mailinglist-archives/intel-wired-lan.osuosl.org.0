Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCFAD18BAD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 13:33:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0D3C85172;
	Tue, 13 Jan 2026 12:33:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P7VnGhpmvuRR; Tue, 13 Jan 2026 12:33:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75FDD8516D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768307589;
	bh=88S5rbYPKp/7kLImc9Htsmsd5c09rInIOHsU9gp+T3Y=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=NriG9U5eF3sMjMVM38+e8URxicX1t+KdEAuc23vfVcDOBpycC1wDZqg8K14NNdryb
	 XHq2uF1WYwLkpgmnx1U5oRKI5kho9KO1q42ZAlKq/lZ6KisgxUK9Ln5hr9s1GbVctl
	 GcqQw6jzXEP1QlChTDJTkEow2m++82zm7/af14auVjdGOXhz7b2FG/hZJL4Bbf2HcV
	 v2kIrsAcroJEtu/G4NjYKyqWoSpR+U68Ue2hiXWATqqwnYVoSwQOfpvcq2kUGEhMpR
	 PXMERbc6P7J13vjujlfq4Ix+Il/FgIZEttYMCSpjWqt9hkXRE4ezpiqOX+CS351iYl
	 KsIg1eAEZPI9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75FDD8516D;
	Tue, 13 Jan 2026 12:33:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 481001C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D5536F67D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:33:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LAuMlcEIXmkm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 12:33:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5B1A06149E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B1A06149E
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B1A06149E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:33:06 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-64b9b0b4d5dso15738815a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 04:33:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768307584; x=1768912384;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=88S5rbYPKp/7kLImc9Htsmsd5c09rInIOHsU9gp+T3Y=;
 b=YyAUdE+Ii+YwtFnHZek9EHyEhuQqxI2MydB/K1uhjA+nhhqov1FRkqGUmZ1rnnJmFP
 LSZrZudGk8p1dl5NmmLf4uYS4E+spmDoal6TrPHfBPeqENptqMONN2MWNA8V7DSMguvM
 aNX7/e4Fige+ntx03ryvDeFT5WGJdikeY40fE36ym2jKO0aADWaQb3Gmpxcr6BSBp6p7
 5a+7M7grRzfEQr43GkEwFmw2kuxjk5T2tmfJBRjSdfmOslXitxZ7ik1BJTfP8FJYJfYK
 8/nNwjggS74IPeYpFJU48vJDfPTLrRevr9YTTA+DKpFgkyGp5evbD9CHtmCQmK8VTgS2
 ubCA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXxRDHBGJkjHBdeWCEevD8kj5SU8IJL4M6TcOLDN92E2e6pNPMY+N7Uu9leOPaDZMU05ZrChZPckkbXergKPFQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxqfdhRp//WEUvVCCyh4nV640PmXHkqf/SkyZOEM9hbZudqqdGh
 /vaH6y9sA5bP9ZOEyUhHPtP2mxKGr0kuyIqAuz5GStmp7TYUyGXctc8WAUk4z4YSLV28YXxxe6Y
 jMswwTMk=
X-Gm-Gg: AY/fxX5+fKKoJSSabOq3Dz0K98iCwQbuSJfLMh/GQht2BDTkmvHKcIA4Gd/snPtFK8g
 1Xm5PMLZHT6YywJocPWt09aNAkIPsOrOwGcJ6JRqFFhxzmq5v6yT/d7VCOYf8jEJLCi1a9rGenz
 K3OtgL/cOTtjH+j9lcuX46uG+ci8YDfAWxeozQDQOcjP/ZDeqagB2gNo0ygbi41Pg6Oq8Y4omOe
 2D8VRl3IfHStsPwelMFihXHYtMHgUaJkGS7x79+Gc4jEkbTbOXVu24AevluXx45c5JbIv/gG8Oe
 esASfE3OgMvr2LGd8hEY4HKC1YSKuXfyPqgzi0UjizWKsJ9PS4Ai5gVuyHRqpCQj1P7M8BI9Mee
 1qf9PnGyrTn4N3tLW0+vkqd/xKYMw8GSUMmBCyA4l6Z+7xRdoiz5l4FKUGReAHv5AWJDs30klKz
 KJqg==
X-Google-Smtp-Source: AGHT+IHY7NQknvOmV9bLxVz7dTnEjqdLKDpwYX1JJB9eQfKUuNEJjCFIN/0JIzGRucK4wgXDThpJ9Q==
X-Received: by 2002:a17:907:a4a:b0:b79:c879:fe71 with SMTP id
 a640c23a62f3a-b84451e156bmr1964823966b.19.1768307583834; 
 Tue, 13 Jan 2026 04:33:03 -0800 (PST)
Received: from cloudflare.com ([2a09:bac5:5063:2dc::49:1cb])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b872152ee10sm497403166b.34.2026.01.13.04.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jan 2026 04:33:03 -0800 (PST)
To: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org,  "David S. Miller" <davem@davemloft.net>,  Eric
 Dumazet <edumazet@google.com>,  Paolo Abeni <pabeni@redhat.com>,  Simon
 Horman <horms@kernel.org>,  Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,  Andrew Lunn
 <andrew+netdev@lunn.ch>,  Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,  Saeed Mahameed
 <saeedm@nvidia.com>,  Leon Romanovsky <leon@kernel.org>,  Tariq Toukan
 <tariqt@nvidia.com>,  Mark Bloch <mbloch@nvidia.com>,  Alexei Starovoitov
 <ast@kernel.org>,  Daniel Borkmann <daniel@iogearbox.net>,  Jesper
 Dangaard Brouer <hawk@kernel.org>,  John Fastabend
 <john.fastabend@gmail.com>,  Stanislav Fomichev <sdf@fomichev.me>,
 intel-wired-lan@lists.osuosl.org,  bpf@vger.kernel.org,
 kernel-team@cloudflare.com
In-Reply-To: <20260112190856.3ff91f8d@kernel.org> (Jakub Kicinski's message of
 "Mon, 12 Jan 2026 19:08:56 -0800")
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260112190856.3ff91f8d@kernel.org>
Date: Tue, 13 Jan 2026 13:33:02 +0100
Message-ID: <87bjixwv41.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1768307584; x=1768912384;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=88S5rbYPKp/7kLImc9Htsmsd5c09rInIOHsU9gp+T3Y=;
 b=Qz65OCXSYl8ACnkw4JEZeLoS1ihSvDQ/7fgE1+BfakXCryTwSx2mHr2QnT7xcEqK89
 KmdnsVxtabAckMv/yYCXSHJa1v5iNC0yOG2UkNGnKNSMvxbW6f7ev4mHaIdX55ESQ94K
 aAa3dK+7F3ofEMmLGkrIkSFA+8fA34IJ0Pe61LJTbgo0hBelcv5luHPCIEOi9MjO0mGT
 0uqiRWsWwrvLpK9UhqzKa9vgN0wNcOHCHJ9Dma3o8/g8b7XOvJIBW++KwLM3S7ioGJVc
 G667/qO7E8NiGuuNqi0faZuPnUdv0x8gPJZOWcb7Z5Wya6zENZex4OyFEKYNlKyn7zaH
 V8Ww==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=Qz65OCXS
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Call skb_metadata_set
 when skb->data points past metadata
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

On Mon, Jan 12, 2026 at 07:08 PM -08, Jakub Kicinski wrote:
> On Sat, 10 Jan 2026 22:05:14 +0100 Jakub Sitnicki wrote:
>> This series is split out of [1] following discussion with Jakub.
>>=20
>> To copy XDP metadata into an skb extension when skb_metadata_set() is
>> called, we need to locate the metadata contents.
>
> "When skb_metadata_set() is called"? I think that may cause perf
> regressions unless we merge major optimizations at the same time?
> Should we defer touching the drivers until we have a PoC and some
> idea whether allocating the extension right away is manageable or=20
> we are better off doing it via a kfunc in TC (after GRO)?
> To be clear putting the metadata in an extension right away would
> indeed be much cleaner, just not sure how much of the perf hit we=20
> can optimize away..

Good point. I'm hoping we don't have to allocate from
skb_metadata_set(), which does sound prohibitively expensive. Instead
we'd allocate the extension together with the skb if we know upfront
that metadata will be used.

Things took an unexpected turn and I'm figuring this out as I go.
Please bear with me :-)

Here are my thoughts:
=20
1) The driver changes do clean up the interface, but you're right that
   it's premature churn if the approach changes. If the skb extension
   approach doesn't pan out, we're ready to fall back to headroom-based
   storage.
=20
2) How do we handle CONFIG_SKB_EXTENSIONS=3Dn? Without extensions,
   reliable metadata access after L2 encap/decap would require patching
   skb_push/pull call sites=E2=80=94or we declare the feature unsupported
   without CONFIG_SKB_EXTENSIONS=3Dy.

3) When skb extensions are enabled, asking users to attach TC BPF progs
   to call a kfunc to all devices the skb goes through before L2
   encap/decap is impractical. The extension alloc/move needs to be
   baked into the stack.
=20
I'll focus on getting a PoC together next. Stay tuned.
=20
Thanks,
-jkbs
