Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 930D574D9BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 17:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADEF960F69;
	Mon, 10 Jul 2023 15:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADEF960F69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689002550;
	bh=yDrsvXxGcXQg+gacaRydcVIwvWemhm82XcUAY0FqzJ4=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wk4f07km/F8vy9aH62dXcuKsDSWcmPhHV7drLNgg7iRYHjrJlVr5wrDZKyKP1Nxa8
	 Hlwl8FQCMfn646iC+wJBE8skWDASMEUQbbfay6lZ/yjj8G+V5+akeusJMUn++0mCOi
	 EIKCbYV21gUM7uDCGE+qcr67rmJbrU9XB+ynssmrTImxZK9b2BWEB0fS7EHvpASKSC
	 hjx1soX/itJbJGQUrudZ1g7sf8ua9CHjfdmgu/DIy0teFEF92XuSHM1oSrtUIb1lKP
	 wkZahPo24rfdYsNnkFs8oFpuYBqOOLrDaCdUgAkTwiMO44dFg3vy4uyFK9dLB6MW/O
	 sjVBPt90TToSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55dUJ7lsYsSz; Mon, 10 Jul 2023 15:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 742D560F5C;
	Mon, 10 Jul 2023 15:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 742D560F5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5ACB11BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 05:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33F1460BBE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 05:16:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33F1460BBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qlab7jjSd0KY for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jul 2023 05:16:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79BBA60BA9
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com
 [IPv6:2607:f8b0:4864:20::642])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79BBA60BA9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jul 2023 05:16:48 +0000 (UTC)
Received: by mail-pl1-x642.google.com with SMTP id
 d9443c01a7336-1b7e66ff65fso24980605ad.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 08 Jul 2023 22:16:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688879808; x=1691471808;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=f5IT/4pg2ojRd4xm57HWhrEgHwR41enNj19n7FJ7HSQ=;
 b=C2n9Tjtmp13fGmiurq1kczh2g+ZVmsMV1bYEnALC3FeV5rBSRMErLIQFQv2vGn/dPF
 +WSAsUvqB1b/IqkQhSbtfx/uWTMSYbkb066BQaOuoU2lZRJPM62sZdbJVPbOghBiC9ie
 nlVZ1WAVlqRXf4sUExQz6ztKr+W2V6mr4k+kV/erbL0ikEnf5jx6rdJ9aa0Fj0iBSi4x
 Mrd+DWopi9x2tNL/cCoxeAydyAZHBo61yNFUw36u1j2FXHx5Jl6qwra4aeJrHfz6ZbyE
 ql4x9Tk7bKDWVoib1RJGpJR20TDjfLpIbRqG9Iumxxpnze0JCOeHKuZOzD70TrW6kpHf
 ohcQ==
X-Gm-Message-State: ABy/qLZzORmnLeDr1OCgm0STlzWbFCSe4PqY92E20d0yFPWEllwShPTv
 V81Ex99yf64o7Q2NWXNLjpk=
X-Google-Smtp-Source: APBJJlEvHN3XmnInifh1UC3s8BpriGfww6vlI8aI3/l8lfEJntt8m/UB1LDbt6hPZDlePX07akcwpQ==
X-Received: by 2002:a17:902:d507:b0:1b9:d335:2216 with SMTP id
 b7-20020a170902d50700b001b9d3352216mr4003737plg.20.1688879807819; 
 Sat, 08 Jul 2023 22:16:47 -0700 (PDT)
Received: from ?IPv6:2409:8a55:301b:e120:1523:3ecb:e154:8f22?
 ([2409:8a55:301b:e120:1523:3ecb:e154:8f22])
 by smtp.gmail.com with ESMTPSA id
 21-20020a170902c11500b001ab12ccc2a7sm5669261pli.98.2023.07.08.22.16.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 08 Jul 2023 22:16:47 -0700 (PDT)
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-7-aleksander.lobakin@intel.com>
 <6b8bc66f-8a02-b6b4-92cc-f8aaf067abd8@huawei.com>
 <bc495d87-3968-495f-c672-bf1bab38524a@intel.com>
From: Yunsheng Lin <yunshenglin0825@gmail.com>
Message-ID: <4946b9df-66ea-d184-b97c-0ba687e41df8@gmail.com>
Date: Sun, 9 Jul 2023 13:16:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <bc495d87-3968-495f-c672-bf1bab38524a@intel.com>
Content-Language: en-GB
X-Mailman-Approved-At: Mon, 10 Jul 2023 15:22:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688879808; x=1691471808;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f5IT/4pg2ojRd4xm57HWhrEgHwR41enNj19n7FJ7HSQ=;
 b=M6th2hcmP2yhN28ewtB2KAsywav6oXtLYTfObWDIyUVcRH2JmHoSX1GBNT9Y1MGboT
 J0N7FaO9RXNehWOtIMbDhoR9TsIa9I8tn5QDTddEiT9xncgyfG8OQYR0NHEyIY5IrydX
 FcDOJ6+ymOJJyn7Q7pVgednnypGlgfZA1iwTnJVm9yERN1cWUe6+IPg0ujcWZZj41y/z
 OQpxZVXY8R1sYRGDBaPwe6LS1YUECU73KOYvqvOXOZvFU1lHIMRZuUPBAXv4EwvfZkLE
 qS884K9+hv8H8TlAWP2plkTb6yGqpj16ear8ie/CXrj7J3+dgvoQtDU4Kml+0YzrRgiY
 qYhA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=M6th2hcm
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v4 6/9] iavf: switch to
 Page Pool
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/7/7 0:38, Alexander Lobakin wrote:

...
 
>>
>>>  /**
>>> @@ -766,13 +742,19 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
>>>   **/
>>>  int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
>>>  {
>>> -	struct device *dev = rx_ring->dev;
>>> -	int bi_size;
>>> +	struct page_pool *pool;
>>> +
>>> +	pool = libie_rx_page_pool_create(&rx_ring->q_vector->napi,
>>> +					 rx_ring->count);
>>
>> If a page is able to be spilt between more than one desc, perhaps the
>> prt_ring size does not need to be as big as rx_ring->count.
> 
> But we doesn't know in advance, right? Esp. given that it's hidden in
> the lib. But anyway, you can only assume that in regular cases if you
> always allocate frags of the same size, PP will split pages when 2+
> frags can fit there or return the whole page otherwise, but who knows
> what might happen.

It seems intel driver is able to know the size of memory it needs when
creating the ring/queue/napi/pp, maybe the driver only tell the libie
how many descs does it use for queue, and libie can adjust it accordingly?

> BTW, with recent recycling optimization, most of recycling is done
> directly through cache, not ptr_ring. So I'd even say it's safe to start
> creating smaller ptr_rings in the drivers.

The problem is that we may use more memory than before for certain case
if we don't limit the size of ptr_ring, unless we can ensure all of
recycling is done directly through cache, not ptr_ring.

> 
>>
>>> +	if (IS_ERR(pool))
>>> +		return PTR_ERR(pool);
>>> +
>>> +	rx_ring->pp = pool;
> 
> [...]
> 
>>>  	/* build an skb around the page buffer */
>>> -	skb = napi_build_skb(va - IAVF_SKB_PAD, truesize);
>>> -	if (unlikely(!skb))
>>> +	skb = napi_build_skb(va, rx_buffer->truesize);
>>> +	if (unlikely(!skb)) {
>>> +		page_pool_put_page(page->pp, page, size, true);
>>
>> Isn't it more correct to call page_pool_put_full_page() here?
>> as we do not know which frag is used for the rx_buffer, and depend
>> on the last released frag to do the syncing, maybe I should mention
>> that in Documentation/networking/page_pool.rst.
> 
> Ooof, maybe. My first try with PP frags. So when we use frags, we always
> must use _full_page() / p.max_len instead of the actual frame size?

Currently, _full_page() / p.max_len must be used to ensure the correct
dma sync operation.
But as mentioned in the previous patch, it might be about what is the
semantics of dma sync operation for page split case.

> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
