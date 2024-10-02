Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B9398CDD5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 09:38:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE4BB40F9E;
	Wed,  2 Oct 2024 07:38:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AG2HRqOt5gkc; Wed,  2 Oct 2024 07:38:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D592F40FA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727854687;
	bh=j08eYaNn2uqZATIiA0jZfTZrfzeBz+jlQCTj6GcTpN8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DEDPgvFAg717iVYjg281xEA/hxOr4DW+R7ayxM/Sf8gKWbZylj99kYKGDRZHBje7h
	 3WBXVy47GzyXdJ7bwXJZ6BSlmRnjxCJXtU0Vs8YA/zdwJd8xLJ51muGy2tVsDypCmK
	 OGKGGIVq/rodXFCZoUXQCRoFBt+WOx67hfN12XnIcYBN/8mj7WeSrJUx65ZlicEXeY
	 cU4+MdFRkw80FpUN/JGAJmYxmQeeyOPuB5pjMOZ9OMH8+cIyWQCWseLlG+DXrexlHY
	 ukFJTDgcMY2rX6d2QiW1CdmvNRs91xNbHXgAZmCsICkor+QrsjPUzq2+vvqo5ZQxfy
	 J1pfcX11Mou6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D592F40FA2;
	Wed,  2 Oct 2024 07:38:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA56E1BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 07:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B532040B3D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 07:38:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UgR7yKaesCFI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 07:38:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD9A2407BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD9A2407BB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD9A2407BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 07:38:04 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-639-QPKMvr_ENA-j8FQVaz60cA-1; Wed, 02 Oct 2024 03:37:59 -0400
X-MC-Unique: QPKMvr_ENA-j8FQVaz60cA-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42e611963c2so48907315e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2024 00:37:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727854678; x=1728459478;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=j08eYaNn2uqZATIiA0jZfTZrfzeBz+jlQCTj6GcTpN8=;
 b=A9NPEqOX/hIyJw4B2ywQuKUqaLsXUTtORsOzczXd8qFKBkk5UFPcoiXo7CIxxFvru0
 XO9ckgVT+7lkY5IdhoziB32mSyP/sEhpBwi+Y3krSHXNLUG1qIFLH1hCybIxUhGhHWn9
 wEI9Cu0vvT+Q7qFlNjrMDY+PwkdGUXO5w4auGz9OTTJETQhpAJl5ZhvUzIyUZjQPM07i
 b9CBvDk+b3cnJpvEsXqTJJ2XF3grJYNotBTRrTx5f+HQsadz5FVwriZmMF/UWeEU3qaQ
 oxe2netv+QH/pRkDBT/z5g8v4IH2fGEFbfBdcfUzUsxCVbKWYWptxAir04spsFKSmdIH
 AQfg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWK+ps0y1MHMC0LLZru6jK6IyYSeDYZFcsI31UhjLsEBWGtkzH1dfpvX7NAE90y9VKicM53QDXORnVn843hsxc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz432zj8BZF/8ra598Bpw45Dhs2x1PisnA1aaiLfj8uqbt54yPA
 2sdHv2IKNUokG49ePV1FCLMzTOOwfyfmQoHZnpCKVP+pnOsBd2dISR7IcMiYsND4pelWT5aklRz
 WwmrEEkh1j3zpwto+q+1ayp3RVhyppWx5WxssACEmngyuVzbW1f8MhkokmKObzsXdNhY=
X-Received: by 2002:a05:600c:1549:b0:42c:b4f1:f281 with SMTP id
 5b1f17b1804b1-42f778ffef3mr14810195e9.34.1727854678268; 
 Wed, 02 Oct 2024 00:37:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEexnVZvq0noKxS76pRMj9/ZaTG1nDs7t0bSMBHW4+0LcSgagoa/Bz8vlb6jQ6CnVv6cUGFfw==
X-Received: by 2002:a05:600c:1549:b0:42c:b4f1:f281 with SMTP id
 5b1f17b1804b1-42f778ffef3mr14809895e9.34.1727854677827; 
 Wed, 02 Oct 2024 00:37:57 -0700 (PDT)
Received: from [192.168.88.248] (146-241-47-72.dyn.eolo.it. [146.241.47.72])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42f7a01fc92sm10806665e9.36.2024.10.02.00.37.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2024 00:37:57 -0700 (PDT)
Message-ID: <4316fa2d-8dd8-44f2-b211-4b2ef3200d75@redhat.com>
Date: Wed, 2 Oct 2024 09:37:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yunsheng Lin <yunshenglin0825@gmail.com>,
 Yunsheng Lin <linyunsheng@huawei.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <4968c2ec-5584-4a98-9782-143605117315@redhat.com>
 <33f23809-abec-4d39-ab80-839dc525a2e6@gmail.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <33f23809-abec-4d39-ab80-839dc525a2e6@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727854683;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j08eYaNn2uqZATIiA0jZfTZrfzeBz+jlQCTj6GcTpN8=;
 b=NmcAydelTMjVGr6u4Nr6rlYytTBKxUaTnW1Ut6R8SlnucaZXtQJTE05YPEBgqcmCnrIvBX
 Lxec51eOHp1muMzyMau/k1uruvKi1yE8f+t56pbCs9sNRX4Ms3xTW3KITkgUTTNobplzAx
 vd+ncJwHew8s0sZQlH906v6RO17Za2E=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NmcAydel
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] page_pool: fix IOMMU crash
 when driver has already unbound
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
Cc: imx@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Shenwei Wang <shenwei.wang@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, IOMMU <iommu@lists.linux.dev>,
 liuyonglong@huawei.com, Clark Wang <xiaoning.wang@nxp.com>,
 zhangkun09@huawei.com, fanghaiqing@huawei.com,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Wei Fang <wei.fang@nxp.com>,
 kuba@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Leon Romanovsky <leon@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Robin Murphy <robin.murphy@arm.com>,
 davem@davemloft.net, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 10/2/24 04:34, Yunsheng Lin wrote:
> On 10/1/2024 9:32 PM, Paolo Abeni wrote:
>> Is the problem only tied to VFs drivers? It's a pity all the page_pool
>> users will have to pay a bill for it...
> 
> I am afraid it is not only tied to VFs drivers, as:
> attempting DMA unmaps after the driver has already unbound may leak
> resources or at worst corrupt memory.
> 
> Unloading PFs driver might cause the above problems too, I guess the
> probability of crashing is low for the PF as PF can not be disable
> unless it can be hot-unplug'ed, but the probability of leaking resources
> behind the dma mapping might be similar.

Out of sheer ignorance, why/how the refcount acquired by the page pool 
on the device does not prevent unloading?

I fear the performance impact could be very high: AFICS, if the item 
array become fragmented, insertion will take linar time, with the quite 
large item_count/pool size. If so, it looks like a no-go.

I fear we should consider blocking the device removal until all the 
pages are returned/unmapped ?!? (I hope that could be easier/faster)

/P

