Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CBC98DE81
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 17:11:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D2544102B;
	Wed,  2 Oct 2024 15:11:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QM5HrTXWS_Xz; Wed,  2 Oct 2024 15:11:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 578B540965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727881886;
	bh=94naYpv079to4aDULVCz9OCsch+/fu1zXqCOaX8AqZQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zMHKoIbXQapbs8EXN02umg/BFuNEhueH0YWdmB6jp/BGVXaIi0SO0QsVPVXPyZ8Zi
	 S1ScNAFtTEhxbQg8OMQ9GeVKND2Hfer3Xwx9Tx3Sjd0xuBznbaeokfgJs+ebXVpupN
	 59OLNxTL4JvukLdIJLxA1jUHixYg90ed5WKXfyqh9vmy+HL70GJxGSGyfkfG/hIzEu
	 mqt17cNqmpexmhB3pPQdXikY90NPSuA67wll8OZYTLE+bKay14fR+VZkA2yS9zhKT1
	 k29Isf2Wz7l+gxjpLWQZRsOLH+1s9Q2quUo7eyYukvesP2TkuTyDLr7dVRpJoJds1C
	 nyRnU/JldXo4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 578B540965;
	Wed,  2 Oct 2024 15:11:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C040E1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 02:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB7AA6077E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 02:34:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z6o8nyC-DRI5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 02:34:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::643; helo=mail-pl1-x643.google.com;
 envelope-from=yunshenglin0825@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F3CB260739
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3CB260739
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com
 [IPv6:2607:f8b0:4864:20::643])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3CB260739
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 02:34:47 +0000 (UTC)
Received: by mail-pl1-x643.google.com with SMTP id
 d9443c01a7336-20ba9f3824fso13768915ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 19:34:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727836487; x=1728441287;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=94naYpv079to4aDULVCz9OCsch+/fu1zXqCOaX8AqZQ=;
 b=dhMyGVWpM5NzruokV/wsfwbOtAg2qF1oncMhg0TZNrHO3Z8/l8tYpSF1ejL+7tmiRJ
 C3BHYqL54VBXxiApWHEmCTuKus9JlM8/7pRtyT9xOmCiPKBMnF2gAuEZH2noeqeWaPDT
 7qc3nGHgbNeCK6vC4xteO+M97+qgQo4K5KPuv32Jhg9hn/CCXkXKsJ/qAc7navrwzkeg
 bC6LXY7q+WYdnlif/+cLlYZD+Up92MSKC0fB60b/P3UGiznJKCaHtDQ4JGWRPoo+zide
 CHBaFi62y9K6MKqdx0N6zPGX7flw2I1klfdiF7QzrRi3lLI/HyDR/tp+nrwLfUu/pkAo
 wJhw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWo3bgWtRTIb2UyseLkJHJdHkR6B+20XzicCA14JLRZewFgljTuh1ELAxj0bx/eNAcTnHvHx1vj5m94Rr7DkbI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz4lJXo1djiMENvHMIj7d9wivtanF5iXzMDMTp8ysijhcgXZ3Ev
 kUmWbO4uO3Vhp+GXy5BojwNUTI/Y7SJGEGFpv1DyOQ5MP3sKGQqP
X-Google-Smtp-Source: AGHT+IF9UFJBsbcmQi++iX6HKeBG+ku6eNZRFQc3F4zkIg3OMASXuELxeSEfBVyfvWUc3NyPSynvqg==
X-Received: by 2002:a17:902:e844:b0:20b:b132:4df9 with SMTP id
 d9443c01a7336-20bc5a01fa5mr17029495ad.34.1727836487138; 
 Tue, 01 Oct 2024 19:34:47 -0700 (PDT)
Received: from ?IPV6:2409:8a55:301b:e120:50d1:daaf:4d8b:70e8?
 ([2409:8a55:301b:e120:50d1:daaf:4d8b:70e8])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20b5b167128sm58750135ad.283.2024.10.01.19.34.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2024 19:34:46 -0700 (PDT)
Message-ID: <33f23809-abec-4d39-ab80-839dc525a2e6@gmail.com>
Date: Wed, 2 Oct 2024 10:34:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, Yunsheng Lin <linyunsheng@huawei.com>,
 davem@davemloft.net, kuba@kernel.org
References: <20240925075707.3970187-1-linyunsheng@huawei.com>
 <20240925075707.3970187-3-linyunsheng@huawei.com>
 <4968c2ec-5584-4a98-9782-143605117315@redhat.com>
Content-Language: en-US
From: Yunsheng Lin <yunshenglin0825@gmail.com>
In-Reply-To: <4968c2ec-5584-4a98-9782-143605117315@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 02 Oct 2024 15:11:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727836487; x=1728441287; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=94naYpv079to4aDULVCz9OCsch+/fu1zXqCOaX8AqZQ=;
 b=Oru3o6gIvfqSX4liGQ81QU2TpgpoE+khB6RB6FFQz81sv1WXjPeDmOn2yeOrt1+Nv/
 bNuVULD68FHZMMrsMZlJVxFWRo7pU35D4h68bBT3VmN0Zy0wG52KBlrKTWdDIJ8a+FsT
 BtoFLzQSHXf2bj8+N7f8gl53rl4EpCIeOMmJwsS7s2ZoJWorv+fhUF4SgT2/cZehkUms
 LR4q/GTUiypERO397qLR9JXekTJk+8W2n208+KPHhzLdP+Bmg3PEFmP+bfgX5sVuPfQr
 6DtT+3qx7PaWTrOzt53yzqUYlFyoSTY6BLF4XNOYB4nL4Ce6jzLStgHy+mvAEJ3rC6/Z
 m4vA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Oru3o6gI
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
 Matthias Brugger <matthias.bgg@gmail.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Leon Romanovsky <leon@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 Shayne Chen <shayne.chen@mediatek.com>, Robin Murphy <robin.murphy@arm.com>,
 Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/1/2024 9:32 PM, Paolo Abeni wrote:
> On 9/25/24 09:57, Yunsheng Lin wrote:
>> Networking driver with page_pool support may hand over page
>> still with dma mapping to network stack and try to reuse that
>> page after network stack is done with it and passes it back
>> to page_pool to avoid the penalty of dma mapping/unmapping.
>> With all the caching in the network stack, some pages may be
>> held in the network stack without returning to the page_pool
>> soon enough, and with VF disable causing the driver unbound,
>> the page_pool does not stop the driver from doing it's
>> unbounding work, instead page_pool uses workqueue to check
>> if there is some pages coming back from the network stack
>> periodically, if there is any, it will do the dma unmmapping
>> related cleanup work.
>>
>> As mentioned in [1], attempting DMA unmaps after the driver
>> has already unbound may leak resources or at worst corrupt
>> memory. Fundamentally, the page pool code cannot allow DMA
>> mappings to outlive the driver they belong to.
>>
>> Currently it seems there are at least two cases that the page
>> is not released fast enough causing dma unmmapping done after
>> driver has already unbound:
>> 1. ipv4 packet defragmentation timeout: this seems to cause
>>     delay up to 30 secs.
>> 2. skb_defer_free_flush(): this may cause infinite delay if
>>     there is no triggering for net_rx_action().
>>
>> In order not to do the dma unmmapping after driver has already
>> unbound and stall the unloading of the networking driver, add
>> the pool->items array to record all the pages including the ones
>> which are handed over to network stack, so the page_pool can
>> do the dma unmmapping for those pages when page_pool_destroy()
>> is called. As the pool->items need to be large enough to avoid
>> performance degradation, add a 'item_full' stat to indicate the
>> allocation failure due to unavailability of pool->items.
> 
> This looks really invasive, with room for potentially large performance 
> regressions or worse. At very least it does not look suitable for net.

I am open to targetting this to net-next, it can be backported when some
testing is done through one or two kernel versions and there is still
some interest to backport it too.

Or if there is some non-invasive way to fix this.

> 
> Is the problem only tied to VFs drivers? It's a pity all the page_pool 
> users will have to pay a bill for it...

I am afraid it is not only tied to VFs drivers, as:
attempting DMA unmaps after the driver has already unbound may leak
resources or at worst corrupt memory.

Unloading PFs driver might cause the above problems too, I guess the
probability of crashing is low for the PF as PF can not be disable
unless it can be hot-unplug'ed, but the probability of leaking resources
behind the dma mapping might be similar.

> 
> /P
> 
> 

