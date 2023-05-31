Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34077718683
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 17:38:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B852481FE3;
	Wed, 31 May 2023 15:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B852481FE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685547487;
	bh=N7KMyMl5GMDXmLvqwgNVW0uZT4Op32wDlwigNxTBT5g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UiNxQRi1PPsVm7TJC4FADNmEyGEwzZuYvoY6pjAt7yNHZglP7dmVTZBXF8Nbft0xz
	 f78xP7nhq2P95w339xaIngHPXUwV59UkJP981qaNCNnbDePP5lHmUXKyynB/oXe7s9
	 G8f9fnYgNBT9StN5NwOTBahby62ZBAj/T9denQcpaDXZAwq+DRQRtMPETOx3xor1RL
	 vk1QVvUReHeQZ1F7zqP2jA0e6cYpnnVdOTx9EPDJ5KCAMPbVkmMy6Zhvx6Op0zdlCO
	 PHlWyou4PFDmGLa1h55K1ba622S2CtE3PnJkEWrO7CDDQgIXjR/3PDTrzolFAnfd5j
	 QiLe6kqZ0drsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U8qtCQExXY-p; Wed, 31 May 2023 15:38:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F29781F4B;
	Wed, 31 May 2023 15:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F29781F4B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D07321BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:38:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A844C405AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:38:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A844C405AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id puPpKbsGGG38 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 15:38:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD33B40591
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD33B40591
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:37:59 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id
 41be03b00d2f7-53f70f7c2d2so2610628a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 08:37:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685547479; x=1688139479;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=x09q4V7XQ8tGv39HcU1XOFn4TdsznzmNLwgqf5c45o0=;
 b=QLjuOxI4N3Gk0sTj8lND3FIblaJ+tYhgoUsMBntHc0sHkwloYuEpur6uLzEooLGeIm
 0ZNC1eHuxZX2KAeOicrdLvrOwjTCcKIIm0JGa4mmJmofIHFw7aBN2pMdhgt0xNZKXKM7
 tPox2RT4/ZH7IcTaaqne4K1fdrcZ9FgJ0ClIXFJZvrgaz9Md3kr8pU5Qb7w3lj0s7BiL
 nR1Y+aCeKvTpdq8NGbjSaW/Z6tGd8cOFOqlpcMOcXZKjPCRUJdWczcKuy1vy3Mkbz0z9
 jywCGUc3wO/td3dthUZE8UcDQ7CufBxkXbu0voELEt6Ti88mY8/gJc5zs8wPbbpAhCpF
 eoWA==
X-Gm-Message-State: AC+VfDzRkjOjJDIItxj61Z5haGOQtmLnvfEF1NzZfsdxsMtRA8u5moLR
 a8KuHzwYQ+mNsk0U1ZJJ7FA=
X-Google-Smtp-Source: ACHHUZ4jhnC21Wc6o9lmMCq+lJCM+uuKu7p7gyH1bCwjQER7bVhggI8/qx8wqQOO6F8hW8ml6jmcnA==
X-Received: by 2002:a05:6a20:a122:b0:105:66d3:8538 with SMTP id
 q34-20020a056a20a12200b0010566d38538mr5353248pzk.8.1685547478984; 
 Wed, 31 May 2023 08:37:58 -0700 (PDT)
Received: from ?IPv6:2605:59c8:448:b800:82ee:73ff:fe41:9a02?
 ([2605:59c8:448:b800:82ee:73ff:fe41:9a02])
 by smtp.googlemail.com with ESMTPSA id
 fe13-20020a056a002f0d00b0063f1430dd57sm3440014pfb.49.2023.05.31.08.37.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 May 2023 08:37:58 -0700 (PDT)
Message-ID: <9523677f696a6376c79d32cbec7d6e7ceb1b0500.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Date: Wed, 31 May 2023 08:37:56 -0700
In-Reply-To: <20230530150035.1943669-4-aleksander.lobakin@intel.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
 <20230530150035.1943669-4-aleksander.lobakin@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-3.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685547479; x=1688139479;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=x09q4V7XQ8tGv39HcU1XOFn4TdsznzmNLwgqf5c45o0=;
 b=Dw+kB6wDsxUnFbut6TXa9W8Vi58mvUX04CMY61FEPF4i6py8V8S4Q+SiHXh2i02/kz
 7UMf0eLFl9FUgGJIhWXtdgDxU7n9z9JGfLNFH4oF8O1vytsyYBDc0Gl9pUefWYXwBHK2
 kwgxi1YRc1h4fKoB6vfKxCEtPntPafH35p13xW4FXrYmCPPPN4/zoH4ejmjAaoITsPNd
 UlmOE6dBBdB1Sk1LW1rT+W5/PcLw/mhgbRlTacxve6KvPCv2rqmtvpwV6fGve66nQk8y
 zibAOCrafRW90stiJR7/lHfHI/kfsSrTbiOdIJ4QHcbLtS1GMz+BCL1CI4HqYKwOlE3t
 3m7Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Dw+kB6wD
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 03/12] iavf: optimize Rx
 buffer allocation a bunch
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
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2023-05-30 at 17:00 +0200, Alexander Lobakin wrote:
> The Rx hotpath code of IAVF is not well-optimized TBH. Before doing any
> further buffer model changes, shake it up a bit. Notably:
> 
> 1. Cache more variables on the stack.
>    DMA device, Rx page size, NTC -- these are the most common things
>    used all throughout the hotpath, often in loops on each iteration.
>    Instead of fetching (or even calculating, as with the page size) them
>    from the ring all the time, cache them on the stack at the beginning
>    of the NAPI polling callback. NTC will be written back at the end,
>    the rest are used read-only, so no sync needed.
> 2. Don't move the recycled buffers around the ring.
>    The idea of passing the page of the right-now-recycled-buffer to a
>    different buffer, in this case, the first one that needs to be
>    allocated, moreover, on each new frame, is fundamentally wrong. It
>    involves a few o' fetches, branches and then writes (and one Rx
>    buffer struct is at least 32 bytes) where they're completely unneeded,
>    but gives no good -- the result is the same as if we'd recycle it
>    inplace, at the same position where it was used. So drop this and let
>    the main refilling function take care of all the buffers, which were
>    processed and now need to be recycled/refilled.
> 3. Don't allocate with %GPF_ATOMIC on ifup.
>    This involved introducing the @gfp parameter to a couple functions.
>    Doesn't change anything for Rx -> softirq.
> 4. 1 budget unit == 1 descriptor, not skb.
>    There could be underflow when receiving a lot of fragmented frames.
>    If each of them would consist of 2 frags, it means that we'd process
>    64 descriptors at the point where we pass the 32th skb to the stack.
>    But the driver would count that only as a half, which could make NAPI
>    re-enable interrupts prematurely and create unnecessary CPU load.
> 5. Shortcut !size case.
>    It's super rare, but possible -- for example, if the last buffer of
>    the fragmented frame contained only FCS, which was then stripped by
>    the HW. Instead of checking for size several times when processing,
>    quickly reuse the buffer and jump to the skb fields part.
> 6. Refill the ring after finishing the polling loop.
>    Previously, the loop wasn't starting a new iteration after the 64th
>    desc, meaning that we were always leaving 16 buffers non-refilled
>    until the next NAPI poll. It's better to refill them while they're
>    still hot, so do that right after exiting the loop as well.
>    For a full cycle of 64 descs, there will be 4 refills of 16 descs
>    from now on.
> 
> Function: add/remove: 4/2 grow/shrink: 0/5 up/down: 473/-647 (-174)
> 
> + up to 2% performance.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

What is the workload that is showing the performance improvement?

<...>

> @@ -1350,14 +1297,6 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>  			    union iavf_rx_desc *rx_desc,
>  			    struct sk_buff *skb)

I am pretty sure the skb pointer here is an unused variable. We needed
it for ixgbe to support RSC. I don't think you have any code that uses
it in this function and I know we removed the variable for i40e, see
commit d06e2f05b4f18 ("i40e: adjust i40e_is_non_eop").



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
