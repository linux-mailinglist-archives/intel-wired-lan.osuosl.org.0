Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 749F4990178
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 12:38:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22D3C84150;
	Fri,  4 Oct 2024 10:38:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Xu0dpqdozHN; Fri,  4 Oct 2024 10:38:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE40784161
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728038319;
	bh=qwkcHtEsKh+72A0/7NHyOXPoXaG6aRlIcFw6WLogjrk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TAfQNiJrinpFZBAk0TnEeFZZBRIFKQqxwfXrEo45SBqgXZ9oVQqbQ5li0ljfh0x2v
	 draKiqK1JNdftXww/Ws+2dnT7NFgWvVU1M/IFOPwCkVYIfu6uD1bFGLT5VAqL5T+pP
	 cWww7rsbcwv3+VLv/TQeUBJt6UCK/TrExBg5anXRbSUvuxGU+lwZHrmyKCBeENooOl
	 8m3hGjoYvYmJRvLrOaBoBOjWL+Gw8G94aeXl7i2aJUgryU3Wig8baoI8BlKRnQhgfK
	 AmhLM3cM87k85hC5mYpQLhCPuO0c4kGO6DtW31JNtz1tDjtOwFUA/5DyQDNk4j54PN
	 foMaI779ycxeQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE40784161;
	Fri,  4 Oct 2024 10:38:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B73D71BF255
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A522D40128
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:38:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MucfDXZQbIRO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 10:38:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1EACF40021
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EACF40021
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EACF40021
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:38:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4C7275C5D61;
 Fri,  4 Oct 2024 10:38:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6F82C4CECC;
 Fri,  4 Oct 2024 10:38:28 +0000 (UTC)
Message-ID: <038fffa3-1e29-4c6d-9e27-8181865dca46@kernel.org>
Date: Fri, 4 Oct 2024 12:38:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Daniel Xu <dxu@dxuuu.xyz>, Stanislav Fomichev <stfomichev@gmail.com>
References: <871q11s91e.fsf@toke.dk> <ZvqQOpqnK9hBmXNn@lore-desk>
 <D4KJ7DUXJQC5.2UFST9L3CUOH7@bobby> <ZvwNQqN4gez1Ksfn@lore-desk>
 <87zfnnq2hs.fsf@toke.dk> <Zv18pxsiTGTZSTyO@mini-arch>
 <87ttdunydz.fsf@toke.dk> <Zv3N5G8swr100EXm@mini-arch>
 <D4LYNKGLE7G0.3JAN5MX1ATPTB@bobby> <Zv794Ot-kOq1pguM@mini-arch>
 <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <2fy5vuewgwkh3o3mx5v4bkrzu6josqylraa4ocgzqib6a7ozt4@hwsuhcibtcb6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728038314;
 bh=4NhyK6ur41OWwYFgCUliG9il2Pu9u7J+H4trUY9V6SY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=qqf5FRMQd0WX9FX8ShYhKEglsBlhWlvyeW1DMwZVuy/ezCMWNx0Gn+NLvjRfRY0Ad
 BJ/uUuP4YKV6+Ofua6XlNWfDoyNyTgu054GHOaEwZlusXlESj7MtdztvBSU76eSpRc
 Z2CWXiKK8qvTSaHq0zVHrNmZ77xR4uY3yqQlU6Ue5gEqwfs/bb53njuqgEt1Vho0Lc
 tkDfubUQm35EnNgkIkdOutAKmd3rckNYa9/LTiE6Vde8OL1k3f2xT9bA2/XRMaSkO3
 aKU5mA4KbR6H3hTVonXdC8xTz1wKUJ8D44ulnkVtGrKSbkbhbJKz8NsjBPwpoNDWJK
 XUpjtjZhYGxVg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qqf5FRMQ
Subject: Re: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints
 support performing XDP_REDIRECT
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
Cc: mst@redhat.com, jasowang@redhat.com, ast@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, Jakub Sitnicki <jakub@cloudflare.com>,
 daniel@iogearbox.net, kernel-team <kernel-team@cloudflare.com>,
 przemyslaw.kitszel@intel.com, john.fastabend@gmail.com, sdf@fomichev.me,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Yan Zhai <yan@cloudflare.com>,
 alexandre.torgue@foss.st.com, Arthur Fabre <afabre@cloudflare.com>,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 04/10/2024 04.13, Daniel Xu wrote:
> On Thu, Oct 03, 2024 at 01:26:08PM GMT, Stanislav Fomichev wrote:
>> On 10/03, Arthur Fabre wrote:
>>> On Thu Oct 3, 2024 at 12:49 AM CEST, Stanislav Fomichev wrote:
>>>> On 10/02, Toke Høiland-Jørgensen wrote:
>>>>> Stanislav Fomichev <stfomichev@gmail.com> writes:
>>>>>
>>>>>> On 10/01, Toke Høiland-Jørgensen wrote:
>>>>>>> Lorenzo Bianconi <lorenzo@kernel.org> writes:
>>>>>>>
>>>>>>>>> On Mon Sep 30, 2024 at 1:49 PM CEST, Lorenzo Bianconi wrote:
>>>>>>>>>>> Lorenzo Bianconi <lorenzo@kernel.org> writes:
>>>>>>>>>>>
[...]
>>>>>>>>>>>>
>>>>>>>>>>>> I like this 'fast' KV approach but I guess we should really evaluate its
>>>>>>>>>>>> impact on performances (especially for xdp) since, based on the kfunc calls
>>>>>>>>>>>> order in the ebpf program, we can have one or multiple memmove/memcpy for
>>>>>>>>>>>> each packet, right?
>>>>>>>>>>>
>>>>>>>>>>> Yes, with Arthur's scheme, performance will be ordering dependent. Using

I really like the *compact* Key-Value (KV) store idea from Arthur.
  - The question is it is fast enough?

I've promised Arthur to XDP micro-benchmark this, if he codes this up to
be usable in the XDP code path.  Listening to the LPC recording I heard
that Alexei also saw potential and other use-case for this kind of
fast-and-compact KV approach.

I have high hopes for the performance, as Arthur uses POPCNT instruction
which is *very* fast[1]. I checked[2] AMD Zen 3 and 4 have Ops/Latency=1
and Reciprocal throughput 0.25.

  [1] https://www.agner.org/optimize/blog/read.php?i=853#848
  [2] https://www.agner.org/optimize/instruction_tables.pdf

[...]
>>> There are two different use-cases for the metadata:
>>>
>>> * "Hardware" metadata (like the hash, rx_timestamp...). There are only a
>>>    few well known fields, and only XDP can access them to set them as
>>>    metadata, so storing them in a struct somewhere could make sense.
>>>
>>> * Arbitrary metadata used by services. Eg a TC filter could set a field
>>>    describing which service a packet is for, and that could be reused for
>>>    iptables, routing, socket dispatch...
>>>    Similarly we could set a "packet_id" field that uniquely identifies a
>>>    packet so we can trace it throughout the network stack (through
>>>    clones, encap, decap, userspace services...).
>>>    The skb->mark, but with more room, and better support for sharing it.
>>>
>>> We can only know the layout ahead of time for the first one. And they're
>>> similar enough in their requirements (need to be stored somewhere in the
>>> SKB, have a way of retrieving each one individually, that it seems to
>>> make sense to use a common API).
>>
>> Why not have the following layout then?
>>
>> +---------------+-------------------+----------------------------------------+------+
>> | more headroom | user-defined meta | hw-meta (potentially fixed skb format) | data |
>> +---------------+-------------------+----------------------------------------+------+
>>                  ^                                                            ^
>>              data_meta                                                      data
>>
>> You obviously still have a problem of communicating the layout if you
>> have some redirects in between, but you, in theory still have this
>> problem with user-defined metadata anyway (unless I'm missing
>> something).
>>

Hmm, I think you are missing something... As far as I'm concerned we are
discussing placing the KV data after the xdp_frame, and not in the XDP
data_meta area (as your drawing suggests).  The xdp_frame is stored at
the very top of the headroom.  Lorenzo's patchset is extending struct
xdp_frame and now we are discussing to we can make a more flexible API
for extending this. I understand that Toke confirmed this here [3].  Let
me know if I missed something :-)

  [3] https://lore.kernel.org/all/874j62u1lb.fsf@toke.dk/

As part of designing this flexible API, we/Toke are trying hard not to
tie this to a specific data area.  This is a good API design, keeping it
flexible enough that we can move things around should the need arise.

I don't think it is viable to store this KV data in XDP data_meta area,
because existing BPF-prog's already have direct memory (write) access
and can change size of area, which creates too much headache with
(existing) BPF-progs creating unintentional breakage for the KV store,
which would then need extensive checks to handle random corruptions
(slowing down KV-store code).

--Jesper
