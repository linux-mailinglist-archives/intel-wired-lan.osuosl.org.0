Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF174B0627E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jul 2025 17:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E14D0611A8;
	Tue, 15 Jul 2025 15:11:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SMg-lZAUqDBe; Tue, 15 Jul 2025 15:11:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C05060E55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752592304;
	bh=RwJj2XW0Xtg7vWbGRjw0IzVQ1p4FfGBNG+AO9cOWVHY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o7lPWW0LOnaQR48P447Tsu3GKnROWT6qSPRiJKPW7mDKHtaUfAg2+xRpQ6bSBhpNy
	 U79e6xwDE/ukcfurTRdb0OSDaoaPNvdwX6pgzzIBBME211g5GOvnXPjX4oAVXbSN8p
	 dGFlJtKVFsJituiaP8b3KTf7gruVaUNxKQ1ZMscZi01JN+8QV4oJaIkfe9DQeO3pQp
	 +9HKx4S/ZwMYk3vJblOBMPij9VWO+qXkiPediatYBzLL8xoe+K9SQ7Dw7uR25f4DBe
	 r79h2+gYWksNAaoTXMO+kGyF4hCXPwl/sTp8Fi9uh90Zj+XHT9TvFU1QMkpEu5aMGm
	 Voaj2v0zqJHQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C05060E55;
	Tue, 15 Jul 2025 15:11:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 85E7311AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 10:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A71740A39
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 10:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9v6MaIvh45F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jul 2025 10:36:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=asml.silence@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6163240A23
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6163240A23
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6163240A23
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 10:36:21 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-608acb0a27fso7376479a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 03:36:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752575779; x=1753180579;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RwJj2XW0Xtg7vWbGRjw0IzVQ1p4FfGBNG+AO9cOWVHY=;
 b=sq1fXkcW3XATgXc7L/6T5Ym0ohqr12I8Jc0bb/UTlm6SFFfMoYeymgJ0y2nc8IqZB/
 Ynei5Ge51V2q0HiMcQzcd5xRUZp2Xgm09fiXoh4fuLLmafYdh4ov9Rgjv2xWQKA6okvZ
 SreVu/IryhC2Q4tm0YNmuNPxzGJPCc1Zbc63dljyRAWjboDU7jLBI8Pef1kfHMT4+Yia
 PwJzK7c7U6pY4OQ3LDK2ZAueWkSXLkIJoStMPj3c7b4wJg3v9oXygqrHmIxwXcRrYsSA
 CNiEd4dkRblK4XvhGYMy8ftTj7eGQOOAiaM9o/lGrmA+aFvHoaNgieQFqBGTQKiTHnS1
 yIKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWs8OYqwGUoijq4ZVs+WTY3PyPNk9ipm+9tzfp9ePTqCy5MCxVTfOd0KFe9KNB6O8w6WKMUyGHKNLMYn0Q8R8c=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz1e3AOVUWNXaVAS1ZTWE2lnAsWKHykKPPoRpaBEiiEz4kyC8j7
 AWdZJxe+7A5agaXrIFmipYWeSgSjL+hnCINOF2t+cdQVR2TO5bdVKtXC
X-Gm-Gg: ASbGncskIo0qsPPwxGszU+N3wRiga6vJ1SnqvliB/FBptO8NAPzLuPZZbHh7WWw7cjV
 xhotgzNu8bFuM50wOB1KObheCxz/aXkT4vk6E9LKmziL1wOnJgg9r0ljb2adlxzoft+U+k7w9Iv
 qtFgzceNBiCCb6Ri2KJ1Y9gPUhflsuXAqw+Bj1qVJFyQ0GJO4+vdM2hjB5rI6F6SxPNjPEn8Z78
 kcV1VtOu9exdgtFDbzCgSN6IopUmgLtSyJlAMlVVQ9dZgGvL2k1YdeueAlHcGLXBoEBu8kWS68s
 bgTNanRm1k+axKX9U0+rgXJpZU8YzzQdzuE6TvGkSyJE3e2/XeScYDqDJb4EMFccQes236IRmjd
 fM0LBsbaeiK6SK+Ex1CQ59M0K1EX9Quh4G83z/oAvkC3D7Q==
X-Google-Smtp-Source: AGHT+IGaK5G3wNkKd0FQXTFLEb3wcMNGQ8G+9vcipY4gHF5O0bM0XfRnvGt5TQBO6UmtOz1kGEnKVw==
X-Received: by 2002:a17:907:930c:b0:ae6:a8c1:c633 with SMTP id
 a640c23a62f3a-ae6fc1fae79mr1633481566b.34.1752575779007; 
 Tue, 15 Jul 2025 03:36:19 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325::1ac? ([2620:10d:c092:600::1:a4c1])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae6e82dedd3sm976790966b.150.2025.07.15.03.36.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Jul 2025 03:36:18 -0700 (PDT)
Message-ID: <9bed2f6e-6251-4d0c-ad1e-f1b8625a0a10@gmail.com>
Date: Tue, 15 Jul 2025 11:37:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>, Byungchul Park <byungchul@sk.com>
Cc: willy@infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, kernel_team@skhynix.com,
 ilias.apalodimas@linaro.org, harry.yoo@oracle.com,
 akpm@linux-foundation.org, andrew+netdev@lunn.ch, toke@redhat.com,
 david@redhat.com, Liam.Howlett@oracle.com, vbabka@suse.cz, rppt@kernel.org,
 surenb@google.com, mhocko@suse.com, linux-rdma@vger.kernel.org,
 bpf@vger.kernel.org, vishal.moola@gmail.com, hannes@cmpxchg.org,
 ziy@nvidia.com, jackmanb@google.com, wei.fang@nxp.com, shenwei.wang@nxp.com,
 xiaoning.wang@nxp.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, sgoutham@marvell.com, gakula@marvell.com,
 sbhatta@marvell.com, hkelam@marvell.com, bbhushan2@marvell.com,
 tariqt@nvidia.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, sdf@fomichev.me, saeedm@nvidia.com,
 leon@kernel.org, mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org,
 nbd@nbd.name, lorenzo@kernel.org, ryder.lee@mediatek.com,
 shayne.chen@mediatek.com, sean.wang@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, aleksander.lobakin@intel.com,
 horms@kernel.org, m-malladi@ti.com, krzysztof.kozlowski@linaro.org,
 matthias.schiffer@ew.tq-group.com, robh@kernel.org, imx@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
 <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 15 Jul 2025 15:11:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752575779; x=1753180579; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=RwJj2XW0Xtg7vWbGRjw0IzVQ1p4FfGBNG+AO9cOWVHY=;
 b=bhpaF35SvQiU82PnXg5Tzz9jCjObzNB0+tSrIyVnDmqWzk0jfB0FfQB2UWI+JbF7xP
 3uhY0Wm3g7u++yiCu76rhfgmV5s9/MFvHL2+DXUjFbOjWuEDXtFFgBvWC+yL0Y/voFt3
 cup31qN+LbTSRaetl1Lu9W82DQpdyHdrS357+t5e6VwdIyOf3O7eIr6mSEUrCL3+ZChf
 2vsKvHHHvv7QSuvZNKsvRBMhgKieJmz9quXJZPUT7rcHV81MqnEiSwr3IJSd5BBvTzWG
 jD6ZG0KjO19Ot73WHY1IeaXbSIBcOHuDAsojsgDvF9oeeUNg0j7odGoVDpHjyt+xv6NA
 znAg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=bhpaF35S
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 02/12] netmem: use
 netmem_desc instead of page to access ->pp in __netmem_get_pp()
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

On 7/14/25 20:37, Mina Almasry wrote:
> On Mon, Jul 14, 2025 at 5:01 AM Byungchul Park <byungchul@sk.com> wrote:
...>> +static inline struct netmem_desc *pp_page_to_nmdesc(struct page *page)
>> +{
>> +       DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page));
>> +
>> +       /* XXX: How to extract netmem_desc from page must be changed,
>> +        * once netmem_desc no longer overlays on page and will be
>> +        * allocated through slab.
>> +        */
>> +       return (struct netmem_desc *)page;
>> +}
>> +
> 
> Same thing. Do not create a generic looking pp_page_to_nmdesc helper
> which does not check that the page is the correct type. The
> DEBUG_NET... is not good enough.
> 
> You don't need to add a generic helper here. There is only one call
> site. Open code this in the callsite. The one callsite is marked as
> unsafe, only called by code that knows that the netmem is specifically
> a pp page. Open code this in the unsafe callsite, instead of creating
> a generic looking unsafe helper and not even documenting it's unsafe.
> 
>>   /**
>>    * __netmem_get_pp - unsafely get pointer to the &page_pool backing @netmem
>>    * @netmem: netmem reference to get the pointer from
>> @@ -280,7 +291,7 @@ static inline struct net_iov *__netmem_clear_lsb(netmem_ref netmem)
>>    */
>>   static inline struct page_pool *__netmem_get_pp(netmem_ref netmem)
>>   {
>> -       return __netmem_to_page(netmem)->pp;
>> +       return pp_page_to_nmdesc(__netmem_to_page(netmem))->pp;
>>   }
> 
> This makes me very sad. Casting from netmem -> page -> nmdesc...

The function is not used, and I don't think the series adds any
new users? It can be killed then. It's a horrible function anyway,
would be much better to have a variant taking struct page * if
necessary.

> Instead, we should be able to go from netmem directly to nmdesc. I
> would suggest rename __netmem_clear_lsb to netmem_to_nmdesc and have
> it return netmem_desc instead of net_iov. Then use it here.

Glad you liked the diff I suggested :) In either case, seems
like it's not strictly necessary for this iteration as
__netmem_get_pp() should be killed, and the rest of patches work
directly with pages.

  
> We could have an unsafe version of netmem_to_nmdesc which converts the
> netmem to netmem_desc without clearing the lsb and mark it unsafe.
> 

-- 
Pavel Begunkov

