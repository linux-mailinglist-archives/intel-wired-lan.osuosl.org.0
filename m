Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F37B947DA4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 17:06:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F05B5810CC;
	Mon,  5 Aug 2024 15:06:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CHHo8Kz2K9GJ; Mon,  5 Aug 2024 15:06:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A3C08109E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722870371;
	bh=xlk57dWXqV77ALqJZrDySJJvovhv9kbwJVS4WA6M5w0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zebjz0o4oqqeBTqMIRzlbRCGrmwEgIm5qwQv9+w6HQz7aNuH1HNRFequFDDOUwdHW
	 NtU7QZMl7hWKMFXtz9+na5vDPZbjTNyicoLyaS1l0lVwDnQQjBz825GX9Ej82FXfoc
	 tRqyeObCyRpMEmittUYpjZCJIAHLPPw9bGBJS91Gh7CQMySPsPFnkHnWLHDZglC/RW
	 w8UzkQ4D3+rLZWQ+af+c1trJo46YrBF7VZnOz32Uu1IHmgMHxFiPxSUg1ex+ozf7UH
	 WVVinfFPEVwdnjpFXn3h3cbVywwQavXETvTlIMZxbLRIjMgiUZA7EWUADSc+9ZP7y9
	 LZjBQWrwnxsmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A3C08109E;
	Mon,  5 Aug 2024 15:06:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C07A81BF354
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2024 04:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8F7D811DA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2024 04:30:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wQrAxTRit1CL for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Aug 2024 04:30:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::443; helo=mail-pf1-x443.google.com;
 envelope-from=yunshenglin0825@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D7FD811D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D7FD811D7
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com
 [IPv6:2607:f8b0:4864:20::443])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D7FD811D7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2024 04:30:38 +0000 (UTC)
Received: by mail-pf1-x443.google.com with SMTP id
 d2e1a72fcca58-70d1d6369acso3208382b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 03 Aug 2024 21:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722745838; x=1723350638;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xlk57dWXqV77ALqJZrDySJJvovhv9kbwJVS4WA6M5w0=;
 b=LO1O4XTEf329OruA9hhwVImDQiDLFTuLkrQtgTYpNPPY3gtZ+xhvGY15xL9sveFHUO
 zyJy/hUYZ7U/9dIg/lUpORA3m5xiOSDIRhYlSLCre8cIyzUMUvdaJe64etFq+zI+iUNr
 ZU4uaGI3IZnE38Wi9piCUjilQjzb8P0X2Eu6TfBM5hOS9Gd4zTM2Z5ioQSNF6piYtgjq
 6DvDGGO3Lo3UDqArdXyRjjCNsaaapvpZZFdNbiHw/uTWo8yaHSZLcXhU69UqK6Gxb/eS
 YupXZpVxQQKmOrZZng4ifxiW80kobMIyuL+9vPtKtqc0fa0WOI8aVMMEo+CSusFryMhT
 6kMA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+O6hzVUCxD+u1qqkuiA1sXOPCbA9YJaQwfT6jdhp+RWz8uoDV9fpn9/Y9Cms66VlUvLc3Vzl60pXXEQUJ8veUJrQOGOZvPuXr0PmV8XN72w==
X-Gm-Message-State: AOJu0YyMDNfASIOfTqPwgLBJNlrOqYHRgVIlLOFL2CEFwj2uYJ8236q+
 Be4lPsbjscNDCdUW5dhpb8AySIp7KXlKRpyPL/scsIYGXJmNhU9+
X-Google-Smtp-Source: AGHT+IGsvTDJ4EYqxMHnrnabL29RSd4zV3sYpylbcRFlgCkQFp8MTku4ddABSnqWe2wodzlqv0aHUA==
X-Received: by 2002:a05:6a21:3d8b:b0:1c6:9968:f4f4 with SMTP id
 adf61e73a8af0-1c699690eacmr14086917637.11.1722745837611; 
 Sat, 03 Aug 2024 21:30:37 -0700 (PDT)
Received: from ?IPV6:2409:8a55:301b:e120:f82c:57ba:8bf:3093?
 ([2409:8a55:301b:e120:f82c:57ba:8bf:3093])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7b764fb4994sm3417427a12.62.2024.08.03.21.30.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 03 Aug 2024 21:30:37 -0700 (PDT)
Message-ID: <2a29ce61-7136-4b9b-9940-504228b10cba@gmail.com>
Date: Sun, 4 Aug 2024 12:30:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Duyck <alexander.duyck@gmail.com>,
 Yunsheng Lin <linyunsheng@huawei.com>
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
 <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
 <22fda86c-d688-42e7-99e8-e2f8fcf1a5ba@huawei.com>
 <CAKgT0UcuGj8wvC87=A+hkarRupfhjGM0BPzLUT2AJc8Ovg_TFg@mail.gmail.com>
 <877efebe-f316-4192-aada-dd2657b74125@huawei.com>
 <CAKgT0UfUkqR2TJQt6cSEdANNxQEOkjGqpPXhaXmrrxB0KwXmEQ@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <yunshenglin0825@gmail.com>
In-Reply-To: <CAKgT0UfUkqR2TJQt6cSEdANNxQEOkjGqpPXhaXmrrxB0KwXmEQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 05 Aug 2024 15:06:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722745838; x=1723350638; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xlk57dWXqV77ALqJZrDySJJvovhv9kbwJVS4WA6M5w0=;
 b=e/tTWtdq6BBlVbQm3R0CV592I1IaGfkDqMfqPv54DnvxL7LDIbGqgT+UQwoJmt2qk9
 CSpadAoyDewYA/9MQZrNTFcvrnGBsqjw2siXDUKA115ZbxJa5uT3txocKmfWTGHhU0z7
 UUygcYySo2ZNkQD33ovmGeb2LY2DdM/VF58kAAopHAw/Z/Iu+OFlf4/ZpYBElGjIYADw
 NCodA9W3DvMK2lL2vz6UQe7JSfJVoE/2CMv2iTxAZUJmKpFuJ038dF9VeV4j4j/o8nY1
 P73UcSUaE00AN1UtlArdsuXw2aLPoRnOMH5NzkS8SHz5wqIhlksvQSjNaYYvzsQslJzR
 Iwew==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=e/tTWtdq
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 04/14] mm: page_frag: add
 '_va' suffix to page_frag API
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
Cc: Yonghong Song <yonghong.song@linux.dev>, kvm@vger.kernel.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Neil Brown <neilb@suse.de>,
 Jason Wang <jasowang@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-nvme@lists.infradead.org, Dai Ngo <Dai.Ngo@oracle.com>,
 David Howells <dhowells@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna@kernel.org>, Jeroen de Borst <jeroendb@google.com>,
 Sagi Grimberg <sagi@grimberg.me>, Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 linux-afs@lists.infradead.org,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sunil Goutham <sgoutham@marvell.com>, Chaitanya Kulkarni <kch@nvidia.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 virtualization@lists.linux.dev, KP Singh <kpsingh@kernel.org>,
 Tom Talpey <tom@talpey.com>, Shailend Chand <shailend@google.com>,
 linux-mediatek@lists.infradead.org, linux-mm@kvack.org,
 Keith Busch <kbusch@kernel.org>, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jens Axboe <axboe@kernel.dk>, Hao Luo <haoluo@google.com>,
 linux-nfs@vger.kernel.org, Song Liu <song@kernel.org>, netdev@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 davem@davemloft.net, Eduard Zingerman <eddyz87@gmail.com>,
 hariprasad <hkelam@marvell.com>, Chuck Lever <chuck.lever@oracle.com>,
 Jiri Olsa <jolsa@kernel.org>, Praveen Kaligineedi <pkaligineedi@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Geetha sowjanya <gakula@marvell.com>,
 Trond Myklebust <trondmy@kernel.org>, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/3/2024 1:00 AM, Alexander Duyck wrote:

>>
>>>
>>> As far as your API extension and naming maybe you should look like
>>> something like bio_vec and borrow the naming from that since that is
>>> essentially what you are passing back and forth is essentially that
>>> instead of a page frag which is normally a virtual address.
>>
>> I thought about adding something like bio_vec before, but I am not sure
>> what you have in mind is somthing like I considered before?
>> Let's say that we reuse bio_vec like something below for the new APIs:
>>
>> struct bio_vec {
>>          struct page     *bv_page;
>>          void            *va;
>>          unsigned int    bv_len;
>>          unsigned int    bv_offset;
>> };
> 
> I wasn't suggesting changing the bio_vec. I was suggesting that be
> what you pass as a pointer reference instead of the offset. Basically
> your use case is mostly just for populating bio_vec style structures
> anyway.

I wasn't trying/going to reuse/change bio_vec for page_frag, I was just
having a hard time coming with a good new name for it.
The best one I came up with is pfrag_vec, but I am not sure about the
'vec' as the "vec" portion of the name would suggest, iovec structures 
tend to come in arrays, mentioned in the below article:
https://lwn.net/Articles/625077/

Anther one is page_frag, which is currently in use.

Or any better one in your mind?

> 
>> It seems we have the below options for the new API:
>>
>> option 1, it seems like a better option from API naming point of view, but
>> it needs to return a bio_vec pointer to the caller, it seems we need to have
>> extra space for the pointer, I am not sure how we can avoid the memory waste
>> for sk_page_frag() case in patch 12:
>> struct bio_vec *page_frag_alloc_bio(struct page_frag_cache *nc,
>>                                      unsigned int fragsz, gfp_t gfp_mask);
>>
>> option 2, it need both the caller and callee to have a its own local space
>> for 'struct bio_vec ', I am not sure if passing the content instead of
>> the pointer of a struct through the function returning is the common pattern
>> and if it has any performance impact yet:
>> struct bio_vec page_frag_alloc_bio(struct page_frag_cache *nc,
>>                                     unsigned int fragsz, gfp_t gfp_mask);
>>
>> option 3, the caller passes the pointer of 'struct bio_vec ' to the callee,
>> and page_frag_alloc_bio() fills in the data, I am not sure what is the point
>> of indirect using 'struct bio_vec ' instead of passing 'va' & 'fragsz' &
>> 'offset' through pointers directly:
>> bool page_frag_alloc_bio(struct page_frag_cache *nc,
>>                           unsigned int fragsz, gfp_t gfp_mask, struct bio_vec *bio);
>>
>> If one of the above option is something in your mind? Yes, please be more specific
>> about which one is the prefer option, and why it is the prefer option than the one
>> introduced in this patchset?
>>
>> If no, please be more specific what that is in your mind?
> 
> Option 3 is more or less what I had in mind. Basically you would
> return an int to indicate any errors and you would be populating a
> bio_vec during your allocation. In addition you would use the bio_vec

Actually using this new bio_vec style structures does not seem to solve
the APIs naming issue this patch is trying to solve as my understanding,
as the new struct is only about passing one pointer or multi-pointers
from API naming perspective. It is part of the API naming, but not all
of it.

> as a tracker of the actual fragsz so when you commit you are
> committing with the fragsz as it was determined at the time of putting
> the bio_vec together so you can theoretically catch things like if the
> underlying offset had somehow changed from the time you setup the

I think we might need a stronger argument than the above to use the new
*vec thing other than the above debugging feature.

I looked throught the bio_vec related info, and come along somewhat not
really related, but really helpful "What’s all this get us" section:
https://docs.kernel.org/block/biovecs.html

So the question seems to be: what is this new struct for page_frag get
us?

Generally, I am argeed with the new struct thing if it does bring us
something other than the above debugging feature. Otherwise we should
avoid introducing a new thing which is hard to argue about its existent.

> allocation. It would fit well into your probe routines since they are
> all essentially passing the page, offset, and fragsz throughout the
> code.

For the current probe routines, the 'va' need to be passed, do you
expect the 'va' to be passed by function return, double pointer, or
new the *_vec pointer?

> 


