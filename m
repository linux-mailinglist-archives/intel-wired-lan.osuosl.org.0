Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C20D1AE7D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 19:53:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F8F260B07;
	Tue, 13 Jan 2026 18:53:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7MlVEa7jXnjZ; Tue, 13 Jan 2026 18:53:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E1F860AE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768330383;
	bh=/18U+JYm0wMohD1eBBmypGdpoqUHcrXlUopvpSGeN48=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bVLVndEdl6ZlVDzIi0CI0vvx0sHBV7JDY2/ayNysgjSKpI8+2mq0pwjKlMTtB+FyA
	 9NZZK3D4fFwIflSdPOWMDhjg3YWzywIsNP7MEH7qaInefLDdAf3X29Y2zJHXaWUhaf
	 cUGL2wrSMdT48tDjLaelF6Fm14gkIo9C2Yt8joEWLir+/GkQ3n1lKDpM5da0KIj5bt
	 DHKqryV2Og2P44nm0EUNbGKpVKUamMq7qdvYqbVUKq0ldeuKY13/cjufM2JiJkbmhp
	 9XEwmLYOvRyhplkuQjc3iESKTT9FU7EbVHBNSZdnTQRHO02R+mtp2HuUrm3DTZjvhi
	 IgG5/yVXZEn7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E1F860AE4;
	Tue, 13 Jan 2026 18:53:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C8F051CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 18:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF53140958
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 18:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gk7u2z8TJBBB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 18:53:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=hawk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EE37840955
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE37840955
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE37840955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 18:53:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0330D42A5D;
 Tue, 13 Jan 2026 18:53:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8AE5C19422;
 Tue, 13 Jan 2026 18:52:55 +0000 (UTC)
Message-ID: <bd29d196-5854-4a0c-a78c-e4869a59b91f@kernel.org>
Date: Tue, 13 Jan 2026 19:52:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Jakub Sitnicki <jakub@cloudflare.com>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, kernel-team@cloudflare.com,
 Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Willem Ferguson <wferguson@cloudflare.com>,
 Arthur Fabre <arthur@arthurfabre.com>
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260112190856.3ff91f8d@kernel.org>
 <36deb505-1c82-4339-bb44-f72f9eacb0ac@redhat.com>
Content-Language: en-US
From: Jesper Dangaard Brouer <hawk@kernel.org>
In-Reply-To: <36deb505-1c82-4339-bb44-f72f9eacb0ac@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1768330380;
 bh=IaYCk5AV+POZj/ED4ZWmEONB7R/2K+ZYIpDzpu9rJBs=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=YwJQHrN8/WZuVd8DEiONBEUw3GT0IYaD4s7Tvz+c73GT1hYAD1r6pXvjVCpoN/Fmw
 6Dfgj8baImfprvw2MaH8bhtBOzgiSH9LeYnWLY4eUgKetq6LpRmCP+pQ4I3Pf1G5zd
 aGIJRkSs4J5u/iCv4iuaT8MIQl5ek6tpsObbvokhmzxWUGvJgobIxcGSIhw5eMyrlo
 aBRGzBNZod3cAZ+ubXUEwF/PAq+Ud1Wn7ur6kPCI0ceOALn5cxvFeW5kh9hF5lYt3i
 MJ9V+3SN5EK1ZAszMGsXHXb7vv5A0nqNbni6n0aJgAc6msv8I8qFKczJpJdkHLOkIA
 7DwMzal1Tkc+g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=YwJQHrN8
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 13/01/2026 13.09, Paolo Abeni wrote:
> On 1/13/26 4:08 AM, Jakub Kicinski wrote:
>> On Sat, 10 Jan 2026 22:05:14 +0100 Jakub Sitnicki wrote:
>>> This series is split out of [1] following discussion with Jakub.
>>>
>>> To copy XDP metadata into an skb extension when skb_metadata_set() is
>>> called, we need to locate the metadata contents.
>>
>> "When skb_metadata_set() is called"? I think that may cause perf
>> regressions unless we merge major optimizations at the same time?
>> Should we defer touching the drivers until we have a PoC and some
>> idea whether allocating the extension right away is manageable or
>> we are better off doing it via a kfunc in TC (after GRO)?
>> To be clear putting the metadata in an extension right away would
>> indeed be much cleaner, just not sure how much of the perf hit we
>> can optimize away..
> 
> I agree it would be better deferring touching the driver before we have
> proof there will not be significant regressions.

It will be a performance regression to (as cover-letter says):
  "To copy XDP metadata into an skb extension when skb_metadata_set() is 
called".
The XDP to TC-ingress code path is a fast-path IMHO.

*BUT* this patchset isn't doing that. To me it looks like a cleanup
patchset that simply makes it consistent when skb_metadata_set() called.
Selling it as a pre-requirement for doing copy later seems fishy.


> IIRC, at early MPTCP impl time, Eric suggested increasing struct sk_buff
> size as an alternative to the mptcp skb extension, leaving the added
> trailing part uninitialized when the sk_buff is allocated.
> 
> If skb extensions usage become so ubicuos they are basically allocated
> for each packet, the total skb extension is kept under strict control
> and remains reasonable (assuming it is :), perhaps we could consider
> revisiting the above mentioned approach?


I really like this idea.  As using the uninitialized tail room in the
SKB (memory area) will make SKB extensions fast.  Today SKBs are
allocated via SLUB-alloacator cache-aligned so the real size is 256
bytes.  On my system the actual SKB (sk_buff) size is 232 bytes (already
leaving us 24 bytes). The area that gets zero-initialized is only 192
bytes (3 cache-lines).  My experience with the SLUB allocator is that
increasing the object size doesn't increase the allocation cost (below
PAGE_SIZE).  So, the suggestion of simply allocating a larger sk_buff is
valid as it doesn't cost more (if we don't touch those cache-lines).  We
could even make it a CONFIG compile time option how big this area should be.

For Jakub this unfortunately challenge/breaks the design of keeping
data_meta area valid deeper into the netstack.  With all the challenges
around encapsulation/decap it seems hard/infeasible to maintain this
area in-front of the packet data pointer deeper into the netstack.

Instead of blindly copying XDP data_meta area into a single SKB
extension.  What if we make it the responsibility of the TC-ingress BPF-
hook to understand the data_meta format and via (kfunc) helpers
transfer/create the SKB extension that it deems relevant.
Would this be an acceptable approach that makes it easier to propagate
metadata deeper in netstack?

--Jesper

p.s. For compact storage of SKB extensions in the SKB tail-area, we
could revisit Arthur's "traits" (compact-KV storage).

