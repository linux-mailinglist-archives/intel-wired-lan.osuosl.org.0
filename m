Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9067A5C1F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 14:09:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 071C760BEB;
	Tue, 11 Mar 2025 13:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cZDad1aM5r3M; Tue, 11 Mar 2025 13:09:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E73F660BED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741698547;
	bh=pSr0TDQLJaYD83EU6zHlB1nKsxywhTiBP95UqC0cvIM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h/+a9bXt/Y/M1YuWdg0gIdDAE9Oso144b/+N3oE2FPic4zX2cMbrLIRGK6iLcqmmZ
	 Gwx650DP3sAOJoQeFx3GPkTGLtz3ZzDTtl1Ntogd4eW6ZPeOBnnXY0up5yD4X95ukt
	 Ibrher2TeJqvylGNYAo7H5ywlOT2zDKNfOyDmWY3wuNRtEOemmmI6UZ72UtQDdiL62
	 NGtD6xXaTmhTpeO/gEad1KNb7ILSbhpC9BlDuUPypNvUVNqW/ovfscSIQdNOqdS+D5
	 81MgbwNWYj2Sx/2nulsdcBr+JJ/fW57NwWEngfFFYLh5cqMiCEC6e0nqfDf01QCZ8j
	 F2p/7Q544C7Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E73F660BED;
	Tue, 11 Mar 2025 13:09:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6AA251DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 13:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 361DC8221C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 13:09:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sqqN8322XCtp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 13:09:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 18D16821F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18D16821F6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18D16821F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 13:09:02 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-662-KRSZdlfzOJiU7QCedhyt9A-1; Tue, 11 Mar 2025 09:08:50 -0400
X-MC-Unique: KRSZdlfzOJiU7QCedhyt9A-1
X-Mimecast-MFC-AGG-ID: KRSZdlfzOJiU7QCedhyt9A_1741698529
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-43cf5196c25so12822735e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 06:08:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741698529; x=1742303329;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pSr0TDQLJaYD83EU6zHlB1nKsxywhTiBP95UqC0cvIM=;
 b=pCmoO5iRDjtzF2d1D5mkTz4BIdQmyqq627io834mAmQJsI4R7TbOahpq3eOQIvBt+O
 3g/5QY6+7i8oyQRJ8TAKavZXgikIw2MP31UiWbulbzY+P4fk3yF7zLPfgZ7b0B1ZlVSF
 FhRuTImOF/W0ZmWqA2jusOgV+dDqK7rJ7D1jOmlaFcqPNDuTrZUjtJFknlU/Wl2z7syJ
 PtPeR7ykQnT5xXuIcWiGlPGLFydkUCZuyOsow5i04CXj1zCQT5ck1IMppnFeXW6zhYHo
 /Gs17md5HXVn8/vZcHyH+v29e68LYRYWUzYCgbW2sBicOOqd7cXTX6k1VGVQMfyxk9To
 rSGA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsld/5kLOLbwn1z+CjgP2aC6v+pUiGQrV2BWmR84UvWBVG0VMSEVWQh3W1UD5rnCE0cAJC33SzoHNO9N5v6xc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw7AGIenqq9kpjQc1Aop9uNmyOcceI46/t7qqdtI/pd4MzZ5r9j
 xvcoTnf5oVqY8+/4RNeyyWBvAqQ94lWaafg3rXfxlEmAu5An5RZ6jJyRRTAm6wtiQq8UPakoRKZ
 2X8bMroYmtKGUP3M1YE8wN1+rO6hyCeZTZQTS5c1l/fLfSQna9DfCwmdM+BrB58gbuOA=
X-Gm-Gg: ASbGnctR7eneyARqRxbP4BJ8xTpJFp3etqtqVTEGlJNb1KUHSAJXoTqL24vkERJ9kdx
 PBl6ixSZ/QijED3dQxz4r+cO7kt3fPG5OSEQ7767jL6Uh/7s4UmzHLjtqk82Ulgde2mogPuIXDf
 nDx9/8fbSpAC7q7wkkMTeagiIAq/UsmAd+eP66ZBk4S4obAvRXgIzJj4azX6qMf1tzNHhwlZEPr
 U31mFAvpaw7tILsRzSsj1REag72wRcRokvh6cIwRV8ulHt+DK+yjlOGUC/BghAJSFl/n1dh2J4f
 yZqurAxKLavcayS9lH605mhpcqpSBO9v++WtmFjEafnXuQ==
X-Received: by 2002:a05:600c:3b04:b0:43c:f44c:72b7 with SMTP id
 5b1f17b1804b1-43cf44c7703mr98398995e9.14.1741698528861; 
 Tue, 11 Mar 2025 06:08:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHg2xJEtdcFy90P2VzdKFh3p/fCZJcgu7H/volTSsPrNEA8I4PMuG+4jYjYdTWL3xOUsvL7A==
X-Received: by 2002:a05:600c:3b04:b0:43c:f44c:72b7 with SMTP id
 5b1f17b1804b1-43cf44c7703mr98398315e9.14.1741698528418; 
 Tue, 11 Mar 2025 06:08:48 -0700 (PDT)
Received: from [192.168.88.253] (146-241-12-146.dyn.eolo.it. [146.241.12.146])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43cf3ca4f5asm82801875e9.12.2025.03.11.06.08.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Mar 2025 06:08:47 -0700 (PDT)
Message-ID: <72cd7f5a-ab92-494c-b7f8-4696d23ed4b1@redhat.com>
Date: Tue, 11 Mar 2025 14:08:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Yunsheng Lin <yunshenglin0825@gmail.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, davem@davemloft.net, kuba@kernel.org
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
 <87v7slvsed.fsf@toke.dk> <40b33879-509a-4c4a-873b-b5d3573b6e14@gmail.com>
 <875xkj1t70.fsf@toke.dk>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <875xkj1t70.fsf@toke.dk>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -VVNIKnXvUb4fXL307qwhgavdkphudLnGKHPktKPap4_1741698529
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1741698542;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pSr0TDQLJaYD83EU6zHlB1nKsxywhTiBP95UqC0cvIM=;
 b=ahv5BdT3vkuJa3xvFZuEka3zvgvT4w7YNVMFM1i6IOmspFEvRv7appv7zbK4bCmJ6P1Cdn
 DYQ5ZRZP0LUyWe3lorARsmXfx3qZI+gh9GRoZMx39Bd/WPMT6wJfrOv31RRSIFB+gRlqJ2
 oteB5NoB80tyvuKMQo2A7XGjMi2/8IE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ahv5BdT3
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

On 3/8/25 3:40 PM, Toke Høiland-Jørgensen wrote:
> Yunsheng Lin <yunshenglin0825@gmail.com> writes:
>> I only took a glance at git code above, it seems reusing the
>> _pp_mapping_pad for pp_dma_index seems like a wrong direction
>> as mentioned in discussion with Ilias above as the field might
>> be used when a page is mmap'ed to user space, and reusing that
>> field in 'struct page' seems to disable the tcp_zerocopy feature,
>> see the below commit from Eric:
>> https://github.com/torvalds/linux/commit/577e4432f3ac810049cb7e6b71f4d96ec7c6e894
>>
>> Also, I am not sure if a page_pool owned page can be spliced into the fs
>> subsystem yet, but if it does, I am not sure how is reusing the
>> page->mapping possible if that page is called in __filemap_add_folio()?
>>
>> https://elixir.bootlin.com/linux/v6.14-rc5/source/mm/filemap.c#L882
> 
> Hmm, so I did look at the mapping field, but concluded using it wouldn't
> interfere with anything relevant as long as it's reset back to zero
> before the page is returned to the page allocator. However, I definitely
> missed the TCP zero-copy thing, and other things as well, it would seem
> (cf the discussion you referred to above).
> 
> However, I did consider alternatives: AFAICT there should be space in
> the pp_magic field (used for the PP_SIGNATURE), so that with a bit of
> care we can stick an ID into the upper bits and still avoid ending up
> with a value that could look like a valid pointer.
> 
> I didn't implement that initially because I wasn't sure it was
> necessary, but seeing as it is, I will take another look at it. I have
> one or two other ideas if this turns out not to pan out.

Another dumb option would be storing directly the page address in the
xarray, and avoid entirely going through an ID. I guess it will use more
memory (the array will be more sparse) and will have more overhead, but
could be possibly simpler?

/P

