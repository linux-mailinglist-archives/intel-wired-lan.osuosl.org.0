Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD50BA387D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 13:46:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF67584D74;
	Fri, 26 Sep 2025 11:46:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pvifZhuIjZXn; Fri, 26 Sep 2025 11:46:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B00B84D81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758887163;
	bh=pge+kR0s4geatICdRyX1/vta9UxwEWRRAsShu/Cg5gM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VICGIv395QibNy0DsXuZRFcVFi5mqNgdOVtXTeQ7A7P53GIIiQLGEqOWWfiYXpGlt
	 l+eL9qjFsdVck7qQ/t+KE6HnkbMz0WhbW8V3i+D21p3dK1IrMLmeY5obc8iBMrdwvc
	 mVSvbHv6UWM4KhZ7qVNdsTRqLikwnY/5jF07BZFIBgL4T01rOBIcSTa/bzYv68uWz6
	 DyYK93c1JAljcra8GsSpzPYmeN9iGN0dqI3VWeeq0K9g4OO66fzNGXPTFtcTb1OlyH
	 gSAJ5J85sMpA9kljdkw61ClMBKN4S2F2gf8V2qp1f+Xdcgb7VSRum/4S0eSfQKCDfI
	 DRkqOm3R5XgkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B00B84D81;
	Fri, 26 Sep 2025 11:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 45D07177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 11:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37FA484C66
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 11:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f4EvXrR0wyFe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 11:45:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1658184B63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1658184B63
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1658184B63
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 11:45:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2599E45576;
 Fri, 26 Sep 2025 11:45:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8DB4C4CEF4;
 Fri, 26 Sep 2025 11:45:31 +0000 (UTC)
Message-ID: <fdb8a364-a12d-4c1f-9591-9dac3e27b321@kernel.org>
Date: Fri, 26 Sep 2025 13:45:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Sitnicki <jakub@cloudflare.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, kernel-team <kernel-team@cloudflare.com>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <87bjmy508n.fsf@cloudflare.com> <aNUb2rB8QAJj-aUX@lore-desk>
 <87tt0q3ik9.fsf@cloudflare.com>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <87tt0q3ik9.fsf@cloudflare.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758887139;
 bh=3p/zksHoTQfao3BPvqFX4RMOp4cSxk0GEr/+msJfFRE=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=hyWpuq3TyODWW5FSWDcR6mPPW6c11FJrxyoey2lMUD/yZ0UFSEYHAiFAk/xp7WG9A
 CeLM0BjMD24Y1L4FfgGtadPYCUvhCKwQ9KHWQio5BYvBEHKEwTwGe6NgFTNL89IQRN
 i2BjaCst9Au5sGPgjgod/q2qXjZKPHW0cz9Pp+8E4VbUGd81sV+RXRfiS0RB/hjplq
 FjVmZvvrGNfB6fE74uL3xd2o0RiegodV+9X9znJyYr6ej5YKnENCcRYw3r14kPAvGq
 5rFohfxbDzVNLSUo6ehNbbV1OL2e08w+ztgk6whnYtcTO48zZAPeI4Xqnlf6LYM+FU
 YE/0qZjgKYs2g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hyWpuq3T
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 0/5] Add the the
 capability to load HW RX checsum in eBPF programs
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



On 25/09/2025 12.58, Jakub Sitnicki wrote:
> On Thu, Sep 25, 2025 at 12:39 PM +02, Lorenzo Bianconi wrote:
>>> On Thu, Sep 25, 2025 at 11:30 AM +02, Lorenzo Bianconi wrote:
>>>> Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the HW
>>>> RX cheksum results in the eBPF program binded to the NIC.
>>>> Implement xmo_rx_checksum callback for veth and ice drivers.
>>>
>>> What are going to do with HW RX checksum once XDP prog can access it?
>>
>> I guess there are multiple use-cases for bpf_xdp_metadata_rx_checksum()
>> kfunc. The first the I have in mind is when packets are received by an af_xdp
>> application. In this case I think we currently do not have any way to check if
>> the packet checksum is correct, right?
>> I think Jesper has other use-cases in mind, I will let him comment
>> here.
> 
> Can you share more details on what the AF_XDP application would that
> info?

Today the AF_XDP application need to verify the packet checksum, as it
gets raw xdp_frame packets directly from hardware (no layer in-between
checked this).  Getting the RX-checksum validation from hardware info
will be very useful for AF_XDP, as it can avoid doing this in software.


> Regarding the use cases that Jesper is trying to unlock, as things stand
> we don't have a way, or an agreement on how to inject/propagate even the
> already existing NIC hints back into the network stack.
> 

This patchset have its own merits and shouldn't be connected with my
use-case of (optionally) including hardware offloads in the xdp_frame.
Sure, I obviously also want this RX-checksum added, but this patchset is
useful on it's own.

> Hence my question - why do we want to expose another NIC hint to XDP
> that we can't consume in any useful way yet?
> 

Well here *are* useful ways to use this RX-checksum info on its own.
See my explanation of the DDoS use-case here[1] in other email.

Cloudflare actually also have a concrete use-case for needing this.
Our XDP based Unimog[2] load-balancer (and DDoS) encapsulate all
packets when they are XDP_TX forwarded. The encap receiving NIC lacking
inner-packet checksum validation make us loose this hardware offload.
This would allow us to save some checksum validation or even just DDOS 
drop based on hardware checksum validation prior to encap (as in [1]).

--Jesper

  [1] 
https://lore.kernel.org/all/0608935c-1c1c-4374-a058-bc78d114c630@kernel.org/

  [2] https://blog.cloudflare.com/unimog-cloudflares-edge-load-balancer/

