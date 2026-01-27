Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJYDLioTeWkcvAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 20:34:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB33899EC1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 20:34:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EC09406DC;
	Tue, 27 Jan 2026 19:34:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N5mGnU2bJ-Yn; Tue, 27 Jan 2026 19:33:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CBFE4075C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769542439;
	bh=3DrtAfvaeBV+P4A9wsocJoQ3hSxFzimNThzq0s5w4qU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D6qTgM94ZXhHgmdqBKPDneZ6HsM3SA7778sF6QYZ11mxBozXwFbFT17leVtaqxjdN
	 eZDTcCrTqLdLK/8mDXzKZPmOnjOFQkCDC6GSzumb5KsEkxl20Re7fg7VYwVgeACh/I
	 Gdqr7O5o3NxAaR62in38UuCSnI5SzyifuuoyjL6Yc+qFEwMCVZ/pHPkXnF8M4rC/Ig
	 zIUyafTZ1zA4iNlxvABgauXhpB/M+66f9+enSIBlVbnXggpm2mtyNSofyu75ogpQ2J
	 8ohaXS4FCEAVDsDv8/CCanBJN+rd0cooDZaZR7M5EnYUIkSHe5nbN8PDWa47mhqjYH
	 brAFbLEDzl83g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CBFE4075C;
	Tue, 27 Jan 2026 19:33:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CDBA160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 19:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1AE9D60B48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 19:33:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i78NgEuCFZ4O for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 19:33:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b5; helo=out-181.mta1.migadu.com;
 envelope-from=martin.lau@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AACF060B45
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AACF060B45
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b5])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AACF060B45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 19:33:55 +0000 (UTC)
Message-ID: <243ea894-3bf3-4c10-b012-d4451e7ec17e@linux.dev>
Date: Tue, 27 Jan 2026 11:33:30 -0800
MIME-Version: 1.0
To: Jakub Sitnicki <jakub@cloudflare.com>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, kernel-team@cloudflare.com,
 Jakub Kicinski <kuba@kernel.org>, Amery Hung <ameryhung@gmail.com>
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260112190856.3ff91f8d@kernel.org> <87bjixwv41.fsf@cloudflare.com>
 <ad835a9b-e544-48d3-b6e2-ffe172fcfa6d@linux.dev>
 <878qdltsg0.fsf@cloudflare.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Martin KaFai Lau <martin.lau@linux.dev>
In-Reply-To: <878qdltsg0.fsf@cloudflare.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1769542424;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3DrtAfvaeBV+P4A9wsocJoQ3hSxFzimNThzq0s5w4qU=;
 b=MvrHHE4ASs7vyavoa/VJYmmAgD8AXEib483PbIUj8Wfu4x3AbgWNmAhBaTECcOEBPlkqyQ
 hX2Qrh0Ed5+eio9mr+Lvqn1CEkaYDkn8zsTP3NMUkU63UGwNXtVcLaCWelx3QVmeV4DJS3
 DdRZaR6KpstVb5JsZSQ9U3iu1iaRCRM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=MvrHHE4A
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:bpf@vger.kernel.org,m:kernel-team@cloudflare.com,m:kuba@kernel.org,m:ameryhung@gmail.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[martin.lau@linux.dev,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,davemloft.net,google.com,redhat.com,kernel.org,broadcom.com,lunn.ch,intel.com,nvidia.com,iogearbox.net,gmail.com,fomichev.me,lists.osuosl.org,cloudflare.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[martin.lau@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AB33899EC1
X-Rspamd-Action: no action



On 1/25/26 11:15 AM, Jakub Sitnicki wrote:
> On Thu, Jan 22, 2026 at 12:21 PM -08, Martin KaFai Lau wrote:
>> On 1/13/26 4:33 AM, Jakub Sitnicki wrote:
>>> Good point. I'm hoping we don't have to allocate from
>>> skb_metadata_set(), which does sound prohibitively expensive. Instead
>>> we'd allocate the extension together with the skb if we know upfront
>>> that metadata will be used.
>>
>> [ Sorry for being late. Have been catching up after holidays. ]
>>
>> For the sk local storage (which was mentioned in other replies as making skb
>> metadata to look more like sk local storage), there is a plan (Amery has been
>> looking into it) to allocate the storage together with sk for performance
>> reason. This means allocating a larger 'struct sock'. The extra space will be at
>> the front of sk instead of the end of sk because of how the 'struct sock' is
>> embedded in tcp_sock/udp_sock/... If skb is going in the same direction, it
>> should be useful to have a similar scheme on: upfront allocation and then shared
>> by multiple BPF progs.
>>
>> The current thinking is to built upon the existing bpf_sk_local_storage usage. A
>> boot param decides how much BPF space should be allocated for 'struct
>> sock'. When a bpf_sk_storage_map is created (with a new use_reserve flag), the
>> space will be allocated permanently from the head space of every sk for this
>> map. The read (from a BPF prog) will be at one stable offset before a sk. If
>> there is no more head space left, the map creation will fail. User can decide if
>> it wants to retry without the 'use_reserve' flag.
> 
> Thanks for sharing the plans.
> 
> We will definitely be looking into ways of eliminating allocations in
> the long run. With one allocation for skb_ext, one for
> bpf_local_storage, and one for the actual map, it seems unlikely we will
> be able to attach metadata this way to every packet. Which is something
> we wanted for our "label packet once, use label everywhere" use case.
> 
> I'm not sure how much we can squeeze in together with the sk_buff.
> Hopefully at least skb_ext plus a pointer to bpf_local_storage.

yeah, only a bpf_local_storage pointer is needed in skb (or in skb_ext). 
It is the same for the bpf sk/task/... storage.

To be clear, for allocation in skb, I was thinking more about Paolo's 
comment on "...increasing struct sk_buff size as an alternative to the 
mptcp skb extension...".

> 
> I'm also hoping we can allocate memory for bpf_local_storage together
> with the backing space for the map, which update triggers the skb
> extension activation.

Allocate the actual storage at the end of bpf_local_storage? Hmm... off 
the top of my head, I don't have a good idea how to do it without 
trading off flexibility. If trading off flexibility, may as well 
allocate fixed extra space at the sk (/skb) and get a performance 
benefit (which would need to be measured).

> 
> Finally, bpf_local_storage itself has a pretty generous cache which
> blows it up. Maybe the cache could be a flexible array, which could be
> smaller for skb local storage.

For our usage, the cache has been slowly filling up, so we actually have 
another side of the issue. Improvements on bpf_local_storage is always 
welcomed.

I am currently more interested in getting the extra memory/headroom 
allocated for an sk. Eventually, the storage(s) that will be needed for 
all (or most) sk will use the extra headroom of sk. The current 
bpf_local_storage (pointer) in sk will be more for testing/ad-hoc 
purpose or for performance-insensitive usage.

It is probably off topic now. It seems having extra tail space in a skb 
is not in your current plan for the next respin.

