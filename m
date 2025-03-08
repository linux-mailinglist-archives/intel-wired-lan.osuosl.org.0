Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03895A57B22
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Mar 2025 15:41:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BC8740B6C;
	Sat,  8 Mar 2025 14:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DdVIzclW5TYE; Sat,  8 Mar 2025 14:41:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 286AF40B79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741444869;
	bh=USWTb6fbfs9ctXuLN/jteJwX39h1/6zKvhemZZrzqrc=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bDJUb9b/bWLh4R+fCyrSsFP46U9lwFcPZmOVRycJSID+ceiD/WferO5c2P3vFgubD
	 bOqP1Gg0c108s4Xs69rLLeHZScXbHZ0ycsuHmoi1Z8mHMG0+nN8UHLmc22Os8+0ZjL
	 UM2c4c1esqkEtagpnW4DVea5qspiQJaYiNDFLlUFpsrFIJXdrf0D9Z4fGMDTYx53hH
	 APZJ0Rr6fcXdpZt9oGZOGROkiFX+yPCl7bQjNT5uBeGvmLNDO1BbVEOTX33c32TrX8
	 aKDDOlkYKhCwQAfxniExwqlFjzLi6PowjVy15f3IhOy8lLmh/ibytIUi4OKZfHF07B
	 7RwAPeLU+VQpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 286AF40B79;
	Sat,  8 Mar 2025 14:41:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F0E4E27
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 14:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D505408EA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 14:41:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N4A9-lb3p4d7 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Mar 2025 14:41:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9BBB640B67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BBB640B67
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9BBB640B67
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 14:41:02 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-358-ABUydyZFNE2pTN5kNFxvew-1; Sat, 08 Mar 2025 09:41:00 -0500
X-MC-Unique: ABUydyZFNE2pTN5kNFxvew-1
X-Mimecast-MFC-AGG-ID: ABUydyZFNE2pTN5kNFxvew_1741444859
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-ac27d8ac365so25278366b.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 08 Mar 2025 06:40:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741444859; x=1742049659;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=USWTb6fbfs9ctXuLN/jteJwX39h1/6zKvhemZZrzqrc=;
 b=IKRRs02UplxqWbcCwIafGnp1MAXyqOBcuhPRfL4PGCqqNuhXkv263JtoSgO0prKe0V
 CkYuABJGWrRREhk2MrhHbFcq91PrORNQ4WDex69IGGFI8uw6RpjhhAQC4m5zmezayQtw
 GefWHm4WnJr/14a6PkV1a/8v8bCkyfhcJ5pkZEa+WD11zRPnnvacsHKa/TKBLVZ7d/VI
 uIe/m8E+yzCy9u+VJNTMz8CNmPD4m+091wYTRMQQyHJQ2QxoP+jwvS3WJM/r+2SOX6IA
 QJf+vkWqFfhTh126mPdYzP7Nvt8YYIGKXz6qjfVdG18/II39tU/bJ8+EttNQ5USZJ9IK
 3Gdw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnec6IopQKoDvkl4J6EcJRr79fmidqYR3j/9PE3LIaRBB6fYAy8sD8eHqI0knLIOgbKSar1xqdS9a+m2n8cSg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzYpn4GwsJb5h+5xQ5zNkvVYE3KbFG8YdlMKBjACOGuG7yxcpS2
 Vze3yrzXWw2yEFAvCrGcgRUY/Vo8GpQted+rvNetIdwh+NgHx9ZgJncirWoHb77Mz2aR9mqZpHT
 8rrajeD+CBN6zPZ2ePnuoM6DbVlau8Qor7UZVt42az+Cx+jNrRjBKiGOkDRJTpk2kHrw=
X-Gm-Gg: ASbGncsud57bX/1EhQRFGhrphSE3qIJcsIh6UXEPQyIa6AFFjEQhCwGR8bJkgZXXMqa
 R/VKlO3ek7i/wA7huYXvys0eV352os7lxR9gmaL8QOtzyXKtJBJDUfeafDQPbnliy6dJUzSe9ES
 ppKSK2ojBQHyjRqomD5WmV10s3Dgi+p4M+iKtSAaHN+KtqbSjZhDet3QMqeoPS0KBZBO067iYDo
 FE3hRnIK0oaM9zjcJE1FhWeThkKkXlfN8Behg3FLXfjd+5R6WqQhZor9hie/KPCJcwn8AMGFf+y
 Rbxi92hPEwxS
X-Received: by 2002:a17:907:3e82:b0:abf:6f44:bffa with SMTP id
 a640c23a62f3a-ac252e9e7c4mr968103066b.36.1741444858754; 
 Sat, 08 Mar 2025 06:40:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1kymkWxueuBLuXgFuW5FEYCy8fXWaTM8cfTQUCfcHK7lgqp5/vZPe/5nwj4qhwZPGfcHS0w==
X-Received: by 2002:a17:907:3e82:b0:abf:6f44:bffa with SMTP id
 a640c23a62f3a-ac252e9e7c4mr968098366b.36.1741444858267; 
 Sat, 08 Mar 2025 06:40:58 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac2394859b2sm447048166b.69.2025.03.08.06.40.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Mar 2025 06:40:57 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 69D1918FA096; Sat, 08 Mar 2025 15:40:51 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yunsheng Lin <yunshenglin0825@gmail.com>, Yunsheng Lin
 <linyunsheng@huawei.com>, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com
Cc: zhangkun09@huawei.com, liuyonglong@huawei.com, fanghaiqing@huawei.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Alexander Duyck <alexander.duyck@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Gaurav Batra
 <gbatra@linux.ibm.com>, Matthew Rosato <mjrosato@linux.ibm.com>, IOMMU
 <iommu@lists.linux.dev>, MM <linux-mm@kvack.org>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Eric Dumazet <edumazet@google.com>
In-Reply-To: <40b33879-509a-4c4a-873b-b5d3573b6e14@gmail.com>
References: <20250307092356.638242-1-linyunsheng@huawei.com>
 <87v7slvsed.fsf@toke.dk> <40b33879-509a-4c4a-873b-b5d3573b6e14@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 08 Mar 2025 15:40:51 +0100
Message-ID: <875xkj1t70.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RdobypFLjfARoepK38aZkBBbom6MmpfCwBs4xeoBJr4_1741444859
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1741444861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=USWTb6fbfs9ctXuLN/jteJwX39h1/6zKvhemZZrzqrc=;
 b=b7A3nL+bJZlUkldZjeC2UNI+BNBkGednllIDBWoJV2Xbbf+yAtquqhEBI3THZmKbn0TOBY
 VIreAKLqBQ+Xn8yZSBTZlgdMfmUAaIsLycVjhQWf1WEE9gk5lswYJwHkbCG/GGgAdAeIWh
 DFYCQcZu9GmEqodDX5uN//J7UJtZLdE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=b7A3nL+b
Subject: Re: [Intel-wired-lan] [PATCH net-next v11 0/4] fix the DMA API
 misuse problem for page_pool
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

Yunsheng Lin <yunshenglin0825@gmail.com> writes:

> On 3/7/2025 10:15 PM, Toke H=C3=B8iland-J=C3=B8rgensen wrote:
>
> ...
>
>>=20
>> You are making this incredibly complicated. You've basically implemented
>> a whole new slab allocator for those page_pool_item objects, and you're
>> tracking every page handed out by the page pool instead of just the ones
>> that are DMA-mapped. None of this is needed.
>  > > I took a stab at implementing the xarray-based tracking first sugges=
ted
>> by Mina[0]:
>
> I did discuss Mina' suggestion with Ilias below in case you didn't
> notice:
> https://lore.kernel.org/all/0ef315df-e8e9-41e8-9ba8-dcb69492c616@huawei.c=
om/

I didn't; thanks for the pointer. See below.

> Anyway, It is great that you take the effort to actually implement
> the idea to have some more concrete comparison here.

:)

>>=20
>> https://git.kernel.org/toke/c/e87e0edf9520
>>=20
>> And, well, it's 50 lines of extra code, none of which are in the fast
>> path.
>
> I wonder what is the overhead for the xarray idea regarding the
> time_bench_page_pool03_slow() testcase before we begin to discuss
> if xarray idea is indeed possible.

Well, just running that benchmark shows no impact:

|                               |      Baseline     |     xarray      |
|                               |   Cycles |     ns | Cycles |     ns |
|-------------------------------+----------+--------+--------+--------|
| no-softirq-page_pool01        |       20 |  5.713 |     19 |  5.516 |
| no-softirq-page_pool02        |       56 | 15.560 |     57 | 15.864 |
| no-softirq-page_pool03        |      225 | 62.763 |    222 | 61.728 |
| tasklet_page_pool01_fast_path |       19 |  5.399 |     19 |  5.505 |
| tasklet_page_pool02_ptr_ring  |       54 | 15.090 |     54 | 15.018 |
| tasklet_page_pool03_slow      |      238 | 66.134 |    239 | 66.498 |

...however, the benchmark doesn't actually do any DMA mapping, so it's
not super surprising that it doesn't show any difference: it's not
exercising any of the xarray code. Your series shows a difference on
this benchmark only because it does the page_pool_item allocation
regardless of whether DMA is used or not.

I guess we should try to come up with a micro-benchmark that does
exercise the DMA code. Or just hack up the xarray patch to do the
tracking regardless, for benchmarking purposes.

>> Jesper has kindly helped with testing that it works for normal packet
>> processing, but I haven't yet verified that it resolves the original
>> crash. Will post the patch to the list once I have verified this (help
>> welcome!).
>
> RFC seems like a good way to show and discuss the basic idea.

Sure, I can send it as an RFC straight away if you prefer. Note that I'm
on my way to netdevconf, though, so will probably have limited time to
pay attention to this for the next week or so.

> I only took a glance at git code above, it seems reusing the
> _pp_mapping_pad for pp_dma_index seems like a wrong direction
> as mentioned in discussion with Ilias above as the field might
> be used when a page is mmap'ed to user space, and reusing that
> field in 'struct page' seems to disable the tcp_zerocopy feature,
> see the below commit from Eric:
> https://github.com/torvalds/linux/commit/577e4432f3ac810049cb7e6b71f4d96e=
c7c6e894
>
> Also, I am not sure if a page_pool owned page can be spliced into the fs
> subsystem yet, but if it does, I am not sure how is reusing the
> page->mapping possible if that page is called in __filemap_add_folio()?
>
> https://elixir.bootlin.com/linux/v6.14-rc5/source/mm/filemap.c#L882

Hmm, so I did look at the mapping field, but concluded using it wouldn't
interfere with anything relevant as long as it's reset back to zero
before the page is returned to the page allocator. However, I definitely
missed the TCP zero-copy thing, and other things as well, it would seem
(cf the discussion you referred to above).

However, I did consider alternatives: AFAICT there should be space in
the pp_magic field (used for the PP_SIGNATURE), so that with a bit of
care we can stick an ID into the upper bits and still avoid ending up
with a value that could look like a valid pointer.

I didn't implement that initially because I wasn't sure it was
necessary, but seeing as it is, I will take another look at it. I have
one or two other ideas if this turns out not to pan out.

-Toke

