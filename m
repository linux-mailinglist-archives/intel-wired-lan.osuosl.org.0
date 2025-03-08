Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B202BA57A2D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Mar 2025 13:34:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BD56412FF;
	Sat,  8 Mar 2025 12:34:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bd8GH-_xTDYu; Sat,  8 Mar 2025 12:33:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACEF1412FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741437238;
	bh=xrHqPe4qI/nAbruW3F2vRPvWp4Qoww7mexetKwU+H74=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yq2dnh8zg6n0eW4bKPkwKIca/QFGsc+E39qB3bJo9VCml5aQ850WYqqrlGxc2leFD
	 bl2O5LWWCUl0orhTUHjggD3rlThS9m6RAr+Dw71HT1HQiLLlCRE2hs9XTRq9V+WV/9
	 mC15xKm5gjinYz7tJu1u7bZuCSpo4oykRMo8xf6m+9M6/RrW89ajAyWytisb9282qu
	 xdE+gCwjEGjvifh4Cb33HGa1urQTTf5XZW3deQi279bcHSBNKEJJ1Q5nemJdbPMDVs
	 kOtVyxJ2cU2P6gom0P2p35BIc+2FH6NXFumO92xR8T+c/0/50c7iWNeIGPKqLvNUmN
	 gUNxR8Qq6aI2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACEF1412FC;
	Sat,  8 Mar 2025 12:33:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 67B3171F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 12:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 625246060E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 12:33:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c1VdkpRSrcbs for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Mar 2025 12:33:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::643; helo=mail-pl1-x643.google.com;
 envelope-from=yunshenglin0825@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5D30560802
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D30560802
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com
 [IPv6:2607:f8b0:4864:20::643])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D30560802
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Mar 2025 12:33:56 +0000 (UTC)
Received: by mail-pl1-x643.google.com with SMTP id
 d9443c01a7336-22334203781so72269745ad.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 08 Mar 2025 04:33:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741437236; x=1742042036;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=xrHqPe4qI/nAbruW3F2vRPvWp4Qoww7mexetKwU+H74=;
 b=ryDMcZNAK3fPedIXEx5/Z8ygNsXnFkVIwruF9Dlm/nbHE/o/YKo1eFaV7ZOA8cybo3
 frqALBOM+vjMCUsoCRgicWktbXyhrLc13X02wVn0rMJVVPd9f0Arr1usveH1czJrLTzJ
 eOFhU6CDpuZX1bwHncH7Gp//YOtMlgK6xi3mkSk5OzAW3hQsj6XJWqPzlVGqQkeQWMjq
 BXdUCmoEE/6syUAgQ9IRebGF3z8l8VdGVLaRz2TO/9oTzECj1Y3C76eCSGKMvjBMNhx6
 swbQNMOAwtLS0WnaDZuy6oX1lU7lYm6bjzhgUVbz8+TYVwsLdC+/eAT/Vh9XAo3uN68w
 nojQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrtsdFdqp9dnOXf0BnAgTG9agOI2FUtzlSiwP6XDqs81ts6L81uZ+d8Ja0vuojyfad409EEqqJGrvy/2L4MwA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwWWNYPS2ezVAHQnyh0Wu2OYOpwq4T28FX8fGtCzmTQRBVhuZMo
 SZpitnNMa5/VlY1oIdWOwe3Nii1V64s5seH8hxMIf9dlw9f5XeRz
X-Gm-Gg: ASbGncs4U/q1hY3tG1CnSG0AFMnWmKS1yIlWZrvIOKMvpkbt6NgFEprPL5lJ0dZ2p34
 Ja5rf7zCwb+VomzisA7TPneCCjAmVifRCZNwgHDuBjNaCYAO8ZVhhoh2SG8kv7fjCvVmDWjqh0P
 kneqGDii6D0ADOGYcyzeZxbrPNT6h9NnGiJxByUWghql1TtqaGdCOsFvAx1YbryZy4nkzVTKDpE
 HAJNt+3ku4YPDlW+Xn3SzLdrwMwiLPQu/dReQI+CrlObXNKMefVLU4hL1LpP7GTeWCPHYU3bqda
 s+VhYpWbLz8YshOU+wA5yyq/iba1b0tuw9pofJEOEIIJkcKxiC2Aq6c9HagKESaPo4IJp1NoMu/
 yq7sPNnm6uf+QipsNF9szERzdA5X1BGCa
X-Google-Smtp-Source: AGHT+IEq4oVqwhl+HcBlEEt5O5mLwczA0MCHU/VL6TVKG4WcVGMzJn/E2qe19p7uaCmDiiGmZcFF6w==
X-Received: by 2002:a05:6a00:816:b0:736:aea8:c9b7 with SMTP id
 d2e1a72fcca58-736bbf4af5dmr6123665b3a.2.1741437235636; 
 Sat, 08 Mar 2025 04:33:55 -0800 (PST)
Received: from ?IPV6:2409:8a55:301b:e120:9c19:1482:d401:437c?
 ([2409:8a55:301b:e120:9c19:1482:d401:437c])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73698450244sm4918282b3a.80.2025.03.08.04.33.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 08 Mar 2025 04:33:55 -0800 (PST)
Message-ID: <40b33879-509a-4c4a-873b-b5d3573b6e14@gmail.com>
Date: Sat, 8 Mar 2025 20:33:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com
Cc: zhangkun09@huawei.com, liuyonglong@huawei.com, fanghaiqing@huawei.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Gaurav Batra <gbatra@linux.ibm.com>, Matthew Rosato
 <mjrosato@linux.ibm.com>, IOMMU <iommu@lists.linux.dev>,
 MM <linux-mm@kvack.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Eric Dumazet <edumazet@google.com>
References: <20250307092356.638242-1-linyunsheng@huawei.com>
 <87v7slvsed.fsf@toke.dk>
Content-Language: en-US
From: Yunsheng Lin <yunshenglin0825@gmail.com>
In-Reply-To: <87v7slvsed.fsf@toke.dk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741437236; x=1742042036; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xrHqPe4qI/nAbruW3F2vRPvWp4Qoww7mexetKwU+H74=;
 b=J2nGTosgr+m+DU9t4YAX1V53ymfz3WEuHbsmFpukDVUQ9ppB8wxRLlcIvglCl+CXC6
 NfXSEwMirKwYt5aqFKZOZjdgRPlHJ/JFJgb/6ocQRa5POp/cfbBcaotm1dqcrp1Lanvm
 3FfSTGY7p2kHNELYfxd+erfDJCihLbg5juWnkYgPjKo/xeOZ2EAbsytk6zfhAIfZ/4hF
 R1vwD2XrbTLruniNzFL9b4ocGgJV+GOchACtJeK/+/r6ZI2kyzcdkWCAjIUAnmgrJfwg
 OtXFoPJOMUv0dgr7AZCnNmsF8h3fkcl/5vsqdJ4sV5HLnar8bgqC1Qd5g0UjIxQuVXBq
 IZWg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=J2nGTosg
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

On 3/7/2025 10:15 PM, Toke Høiland-Jørgensen wrote:

...

> 
> You are making this incredibly complicated. You've basically implemented
> a whole new slab allocator for those page_pool_item objects, and you're
> tracking every page handed out by the page pool instead of just the ones
> that are DMA-mapped. None of this is needed.
 > > I took a stab at implementing the xarray-based tracking first suggested
> by Mina[0]:

I did discuss Mina' suggestion with Ilias below in case you didn't
notice:
https://lore.kernel.org/all/0ef315df-e8e9-41e8-9ba8-dcb69492c616@huawei.com/

Anyway, It is great that you take the effort to actually implement
the idea to have some more concrete comparison here.

> 
> https://git.kernel.org/toke/c/e87e0edf9520
> 
> And, well, it's 50 lines of extra code, none of which are in the fast
> path.

I wonder what is the overhead for the xarray idea regarding the
time_bench_page_pool03_slow() testcase before we begin to discuss
if xarray idea is indeed possible.

> 
> Jesper has kindly helped with testing that it works for normal packet
> processing, but I haven't yet verified that it resolves the original
> crash. Will post the patch to the list once I have verified this (help
> welcome!).

RFC seems like a good way to show and discuss the basic idea.

I only took a glance at git code above, it seems reusing the
_pp_mapping_pad for pp_dma_index seems like a wrong direction
as mentioned in discussion with Ilias above as the field might
be used when a page is mmap'ed to user space, and reusing that
field in 'struct page' seems to disable the tcp_zerocopy feature,
see the below commit from Eric:
https://github.com/torvalds/linux/commit/577e4432f3ac810049cb7e6b71f4d96ec7c6e894

Also, I am not sure if a page_pool owned page can be spliced into the fs
subsystem yet, but if it does, I am not sure how is reusing the
page->mapping possible if that page is called in __filemap_add_folio()?

https://elixir.bootlin.com/linux/v6.14-rc5/source/mm/filemap.c#L882

> 
> -Toke
> 
> [0] https://lore.kernel.org/all/CAHS8izPg7B5DwKfSuzz-iOop_YRbk3Sd6Y4rX7KBG9DcVJcyWg@mail.gmail.com/
> 
> 

