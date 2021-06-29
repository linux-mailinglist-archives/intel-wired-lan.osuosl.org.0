Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E98003B76C2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 18:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C32B40507;
	Tue, 29 Jun 2021 16:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ujPyoIBnPa8E; Tue, 29 Jun 2021 16:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 875B2404F3;
	Tue, 29 Jun 2021 16:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9BC11BF39D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 16:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5795825B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 16:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HlOKeb3mKp0w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 16:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E0B882419
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624985764;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q2NICKy+eY6u9v6U5C5rPMzRkfmDNI+XJLW4LIKdeOM=;
 b=VgXgZxLX6Re2snoYVLU/w9QJhBDQkwUsSU9tT/7r7j8yBsc+Z4Z0dK+T1ncIrwpz8pqG7D
 ftRA7mIQj3kDlSgzi/uAyb+aZKZlxGazHFN61hDzKw2X9my8GKz1ay4dahbPd3ZIuuLgzB
 etmfZe+fbJaTiQyctOp9C0Z1+/DL4OA=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-VSBtupHSMX2dHk6RPL7org-1; Tue, 29 Jun 2021 12:56:02 -0400
X-MC-Unique: VSBtupHSMX2dHk6RPL7org-1
Received: by mail-ej1-f72.google.com with SMTP id
 og25-20020a1709071dd9b02904c99c7e61f1so297760ejc.18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 09:56:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=q2NICKy+eY6u9v6U5C5rPMzRkfmDNI+XJLW4LIKdeOM=;
 b=r/MJUPjwiF/cR2KrdmuaMfXLYLgs4mav/MZ1faIPwaTqf5/x/gWRy1Y22u3YoPI1jv
 YbFd09sHH47qJJj0Bv9Wb4wB3oeXfAzJXH8dr/wOH28rjyqJeS/H5CxMFiwNN/VK7biU
 AZrflppel1WOGta/HvAKgQKsrfP8kA77TxggJBnbWg1qejB+yFfp9YExuEikP6Pzc7Vf
 H1p4rl6smSjzesFUPGu5QmkB2u48496NLM4fj9CJLiS7xSFFZFCoUseRT6j9ic8kp2uG
 +nHwRotKy9/fZhqeCdIHB23hq/y8vl/UyL0C2Wgtlp2puTycQclhHLeZIFDDUnTSynVQ
 gBjg==
X-Gm-Message-State: AOAM533U6+W+lQnhYi82injoLhGwCjP8+ZsRMAPz+SHrYO00JJ7Lbcct
 Z9fVUXlgsMFdme1izi1aFVKpF/6tfJYJMy3lGxpOhEX0P9U3cUpS76eWN92Ik6AeDqUClRaWSSm
 ozZJ4WHs7vLvhiZU0c9nH92f13HgU3Q==
X-Received: by 2002:a05:6402:51c9:: with SMTP id
 r9mr10497292edd.326.1624985761797; 
 Tue, 29 Jun 2021 09:56:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx6JX0kG7OliK+69WwEBKZuT8U9A5MzKTXCdCtoFvyGEIz/VAikmU9KP1H/PmK4CJpy/7zJHQ==
X-Received: by 2002:a05:6402:51c9:: with SMTP id
 r9mr10497251edd.326.1624985761526; 
 Tue, 29 Jun 2021 09:56:01 -0700 (PDT)
Received: from [192.168.42.238] (3-14-107-185.static.kviknet.dk.
 [185.107.14.3])
 by smtp.gmail.com with ESMTPSA id gv20sm8656803ejc.23.2021.06.29.09.56.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Jun 2021 09:56:01 -0700 (PDT)
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>
References: <20210617145534.101458-1-xuanzhuo@linux.alibaba.com>
 <20210628104721.GA57589@ranger.igk.intel.com>
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
Message-ID: <f5ce5610-443c-a2d9-43ef-d203f9afb0d8@redhat.com>
Date: Tue, 29 Jun 2021 18:55:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628104721.GA57589@ranger.igk.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Approved-At: Tue, 29 Jun 2021 16:57:13 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] xdp,
 net: fix for construct skb by xdp inside xsk zc rx
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
Cc: Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Ong Boon Leong <boon.leong.ong@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 28/06/2021 12.47, Maciej Fijalkowski wrote:

> +static __always_inline struct sk_buff *
> +xdp_construct_skb(struct xdp_buff *xdp, struct napi_struct *napi)
> +{

I don't like the generic name "xdp_construct_skb".

What about calling it "xdp_copy_construct_skb", because below is 
memcpy'ing the data.

Functions that use this call free (or recycle) the memory backing the 
packet, after calling this function.

(I'm open to other naming suggestions)


> +	unsigned int metasize;
> +	unsigned int datasize;
> +	unsigned int headroom;
> +	struct sk_buff *skb;
> +	unsigned int len;
> +
> +	/* this include metasize */
> +	datasize = xdp->data_end  - xdp->data_meta;
> +	metasize = xdp->data      - xdp->data_meta;
> +	headroom = xdp->data_meta - xdp->data_hard_start;
> +	len      = xdp->data_end  - xdp->data_hard_start;
> +
> +	/* allocate a skb to store the frags */
> +	skb = __napi_alloc_skb(napi, len, GFP_ATOMIC | __GFP_NOWARN);
> +	if (unlikely(!skb))
> +		return NULL;
> +
> +	skb_reserve(skb, headroom);
> +	memcpy(__skb_put(skb, datasize), xdp->data_meta, datasize);
> +	if (metasize) {
> +		__skb_pull(skb, metasize);
> +		skb_metadata_set(skb, metasize);
> +	}
> +
> +	return skb;
> +}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
