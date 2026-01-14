Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF44FD1EC78
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 13:33:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DC3546804;
	Wed, 14 Jan 2026 12:33:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8E_c2UxWCrgj; Wed, 14 Jan 2026 12:33:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A8754694A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768393990;
	bh=W/79JQOY2vgvGddRC2TVOlm5nKGEv4fVyeyaPqhKG7U=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=yglzxiSHjJIlL70D2GCVUbiSCXGHbMuYJOGMprvbM0/WqrcjrhauFHgpq2iacrd4H
	 7I/BA10CP6253EfEO+/yEppeLOMHVi/LEz1TQihkIt4962H0ppQKbYC/eqi5Nt6OPT
	 ZCf9z5ZsdPY22b8/JrHH3/bncRBUFhVb86qvWAQxOT9TosQbiJerOXwRQu02hNy7WL
	 pFIKfazvCLwn1IK/LTLqyq8jkSEaljPndgVb/C37Hp0D6WV9ZJfWBDF9DqF/SNZkLB
	 vOFvXIY/1hG1BC16suh8OkeS1iNOLppHT0Ejxs2VxZnGtb/IQp4u5pYREEyE6uMO21
	 UH3gXQrT+tX4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A8754694A;
	Wed, 14 Jan 2026 12:33:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E44821CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 12:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA5E840343
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 12:33:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D5lazM-zr4D2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 12:33:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::344; helo=mail-ot1-x344.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC0A540168
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC0A540168
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC0A540168
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 12:33:07 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id
 46e09a7af769-7c76d855ddbso2858979a34.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 04:33:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768393986; x=1768998786;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=W/79JQOY2vgvGddRC2TVOlm5nKGEv4fVyeyaPqhKG7U=;
 b=MqzJoGm5Ejk7unJNqkoyzMBh/GgKcDvcj8GnCkiXejIKdPxa99JbICuH20kRW/DVeF
 Iehoh3qnFVtVEU+iIYO+28uHp5/FcyT/x+pc9R87XZAWnzDmr4NSz4DVXSGbSh+o3/VA
 9NaJhHmSxxjXeyZRRavIZxaba052+mRJu/vsPhOznROaWU3+9NXgV5xn5trEFijCJZ3T
 xTCtG0YCg9I1htPf+nUVHbIbl88qEy3qTJhMxoG6IovHzyVZY27hKw5fOrud3fZalL12
 EQbkF5TTf+mGKlsP0wwJlF0UTW4gJAFmHOVtAMXvWAnUyLzGhxhvgMcHFUnugQ/balRg
 5Ppg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVo2XvEiXErts0QkUmRDTPpGjCwhNCd2WSK7knsxFveCfR3ZQ8hXkH1zwnwXluZxwYhauEY5dNFJwe5IRqRZTU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwjRXD6eLDB3Hjt2PK6ezH3139/Ux/O6cVQ/H/1WkTXtpA/0ehN
 bmtiPVUIlpMhBXaAZE1OrDBLCvnbYGtaF+nqnvl9eeSZRn3ubcER6e5IL6uQ2USDBlo=
X-Gm-Gg: AY/fxX6cGeJVNrYxJlYSNzwpC1xh8wwrPmDnuug9rM3cW43tJADkmJlFX9Jv06yAn1w
 RLF18dQBR2EsyP5EAFtpI4l5lB7UNjDDyvxHA32/hQnDpmcdjRiIdXWkg584SrzJyQjh/krMBHr
 769EEicr7AXswlgSSjyVobVp4EWXiW1itKB4dCDGdEgn7KCuwdyTGYwvMntNoQ17mnVKM0dmi1i
 J4LST7pDjfiRzXo5wspw/CE2OYFLvNnc3BJhc61TG9QTmyjXFBUVCx9JMvxS2sDd+bS2k33PY3R
 idHxe6WAUnzqlvhDRm1Obkziba4lGEwGB7xYsa8WB1+COor8IBA1HIv6Ezpgh1SBeF81pZSZr9+
 fmaWHbG346Q4YXeUBaKbaPRhtfK7hz/vCHkP1a0ePwwQHFGcoH9E67ruW0yrOzOAFzk3q9EZOBK
 O7tvQ=
X-Received: by 2002:a05:6808:318d:b0:450:471:b9ba with SMTP id
 5614622812f47-45c714302ddmr1785761b6e.14.1768393986332; 
 Wed, 14 Jan 2026 04:33:06 -0800 (PST)
Received: from cloudflare.com ([2a09:bac5:5063:2432::39b:bd])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7ce478d9c17sm18199756a34.22.2026.01.14.04.33.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jan 2026 04:33:05 -0800 (PST)
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,  Alexei Starovoitov
 <ast@kernel.org>,  Jakub Kicinski <kuba@kernel.org>,  Paolo Abeni
 <pabeni@redhat.com>,  netdev@vger.kernel.org,  "David S. Miller"
 <davem@davemloft.net>,  Eric Dumazet <edumazet@google.com>,  Simon Horman
 <horms@kernel.org>,  Michael Chan <michael.chan@broadcom.com>,  Pavan
 Chebbi <pavan.chebbi@broadcom.com>,  Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,  Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,  Saeed Mahameed <saeedm@nvidia.com>,  Leon
 Romanovsky <leon@kernel.org>,  Tariq Toukan <tariqt@nvidia.com>,  Mark
 Bloch <mbloch@nvidia.com>,  Daniel Borkmann <daniel@iogearbox.net>,  John
 Fastabend <john.fastabend@gmail.com>,  Stanislav Fomichev
 <sdf@fomichev.me>,  intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org,  kernel-team@cloudflare.com,  Jesse Brandeburg
 <jbrandeburg@cloudflare.com>,  Willem Ferguson <wferguson@cloudflare.com>,
 Arthur Fabre <arthur@arthurfabre.com>
In-Reply-To: <878qe01kii.fsf@toke.dk> ("Toke =?utf-8?Q?H=C3=B8iland-J?=
 =?utf-8?Q?=C3=B8rgensen=22's?= message of
 "Wed, 14 Jan 2026 12:49:57 +0100")
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260112190856.3ff91f8d@kernel.org>
 <36deb505-1c82-4339-bb44-f72f9eacb0ac@redhat.com>
 <bd29d196-5854-4a0c-a78c-e4869a59b91f@kernel.org>
 <87wm1luusg.fsf@cloudflare.com> <878qe01kii.fsf@toke.dk>
Date: Wed, 14 Jan 2026 13:33:03 +0100
Message-ID: <87ecnsv0g0.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1768393986; x=1768998786;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=W/79JQOY2vgvGddRC2TVOlm5nKGEv4fVyeyaPqhKG7U=;
 b=M77PWpypVji3Cjt5KrpnoXZYCNzJlO6Dqk+AtA+qCkuuOs3qkdhx2URywO6epxZjS4
 CxauV6d+83ISVy0ap1NbCVSHFK87oOxxSYneAAqjHvS5yTi1Ms/Nc4xcUW/eRdT6DVgl
 p1rCywdq/S32IEHk5+18iRvEzwOSc8ibpUTxyBQUkdH/P3r8wSiTKmjoeO1hxhFgZKj6
 6HSdqSVJek3U4Yktgk184l1QkFmx5p3aDQk3EIWZi62+IfGKuXMZdmF9wu4bdyuY9I6C
 mW0asvOAGjdNZoIgRvkSKy+p/HGxNIEng5rZvuTwYzRmAx3NWZnKm8049oUCTkHci01u
 xD5w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=M77PWpyp
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

On Wed, Jan 14, 2026 at 12:49 PM +01, Toke H=C3=B8iland-J=C3=B8rgensen wrot=
e:
> Jakub Sitnicki via Intel-wired-lan <intel-wired-lan@osuosl.org> writes:
>
>> On Tue, Jan 13, 2026 at 07:52 PM +01, Jesper Dangaard Brouer wrote:
>>> *BUT* this patchset isn't doing that. To me it looks like a cleanup
>>> patchset that simply makes it consistent when skb_metadata_set() called.
>>> Selling it as a pre-requirement for doing copy later seems fishy.
>>=20=20
>> Fair point on the framing. The interface cleanup is useful on its own -
>> I should have presented it that way rather than tying it to future work.
>>
>>> Instead of blindly copying XDP data_meta area into a single SKB
>>> extension.  What if we make it the responsibility of the TC-ingress BPF-
>>> hook to understand the data_meta format and via (kfunc) helpers
>>> transfer/create the SKB extension that it deems relevant.
>>> Would this be an acceptable approach that makes it easier to propagate
>>> metadata deeper in netstack?
>>
>> I think you and Jakub are actually proposing the same thing.
>>=20=20
>> If we can access a buffer tied to an skb extension from BPF, this could
>> act as skb-local storage and solves the problem (with some operational
>> overhead to set up TC on ingress).
>>=20=20
>> I'd also like to get Alexei's take on this. We had a discussion before
>> about not wanting to maintain two different storage areas for skb
>> metadata.
>>=20=20
>> That was one of two reasons why we abandoned Arthur's patches and why I
>> tried to make the existing headroom-backed metadata area work.
>>=20=20
>> But perhaps I misunderstood the earlier discussion. Alexei's point may
>> have been that we don't want another *headroom-backed* metadata area
>> accessible from XDP, because we already have that.
>>=20=20
>> Looks like we have two options on the table:
>>=20=20
>> Option A) Headroom-backed metadata
>>   - Use existing skb metadata area
>>   - Patch skb_push/pull call sites to preserve it
>>=20=20
>> Option B) Extension-backed metadata
>>   - Store metadata in skb extension from BPF
>>   - TC BPF copies/extracts what it needs from headroom-metadata
>>=20=20
>> Or is there an Option C I'm missing?
>
> Not sure if it's really an option C, but would it be possible to
> consolidate them using verifier tricks? I.e., the data_meta field in the
> __sk_buff struct is really a virtual pointer that the verifier rewrites
> to loading an actual pointer from struct bpf_skb_data_end in skb->cb. So
> in principle this could be loaded from an skb extension instead with the
> BPF programs being none the wiser.
>
> There's the additional wrinkle that the end of the data_meta pointer is
> compared to the 'data' start pointer to check for overflow, which
> wouldn't work anymore. Not sure if there's a way to make the verifier
> rewrite those checks in a compatible way, or if this is even a path we
> want to go down. But it would be a pretty neat way to make the whole
> thing transparent and backwards compatible, I think :)

I gave it a shot when working on [1]. Here's the challenge:

1) Keep the skb->data_meta + N <=3D skb->data checks working

This is what guarantees that your BPF program won't access memory
outside of the metadata area. So you can't rewrite the skb->data_meta
pseudo-pointer load. This means you must...

2) Patch the skb->data_meta pointer dereference after the check

Since deref happens at some unknown point after the skb->data_meta
pointer load, you may no longer have the context pointer in any of the
registers.

You might be able to hack it by spilling the context pointer to the
stack in the prologue, like I've seen bpf_qdisc does. But that I haven't
tried.

In general, I view it as a seconary issue since you can use a BPF dynptr
to access the skb metadata. It was exactly for that reason - to hide the
fact where the metadata is actually located.

> Other than that, I like the extention-backed metadata idea!

That's what I'm going to work on. I look at it as an skb local storage
backed by an skb extension.

If the user wants to transfer the contents of the skb metadata into
local storage, they can. But the extra allocation is their decision.

[1] https://lore.kernel.org/r/20260110-skb-meta-fixup-skb_metadata_set-call=
s-v1-0-1047878ed1b0@cloudflare.com
