Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AEBB08912
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 11:16:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3866883E9B;
	Thu, 17 Jul 2025 09:16:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id niGIsTLUOcPr; Thu, 17 Jul 2025 09:15:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F4EC83E58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752743759;
	bh=XuQuLev07eyWeKHWKCNdTOJWBDIr2mJkHs95ZW2/jJQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z0wserfyu9lJKibaTi/4wD/5b9O4RH+xY5+sm95PeNZr9ThRUyjwe/Kt9IuTMZ2nF
	 JyVJCrv8oMd59KA8OWGiYqQ/SGYfj3bSZGY2ruvURh0bAjjas1kso/iWhQprRsm5vZ
	 1p9JfFPgczXTZ/jfBdHVfK3fZUnfH8QewjX2dBRvg8zU5WG4SRQIEYm7G5letjsNhY
	 wntl3YnG3OhJXqOc0K8yDwsYR1Q9d+X8h8OmU9f6rKz13iEO2ErS6487XrchoigP84
	 N4WL45Ch08mZIGnUAh/KyMMCxu/fLv2cM2VSUd9OYG69QGA+8lLQKOc8mJ8OX9b7Wh
	 DQUDfkJSmAjTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F4EC83E58;
	Thu, 17 Jul 2025 09:15:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E4D2117
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0450E6085C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:15:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rX8p__KiG37m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 09:15:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com;
 envelope-from=asml.silence@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2EB87607FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EB87607FF
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EB87607FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:15:57 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-ae0de0c03e9so108566466b.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 02:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752743755; x=1753348555;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XuQuLev07eyWeKHWKCNdTOJWBDIr2mJkHs95ZW2/jJQ=;
 b=e4KIvPQYkY6e8fvFiXG2UI4BbSOzUy4H62Hfw/NSjNz+cDiOnJPeOSBY2LHuvFNE/6
 oandVdHxjx/QuROjVzfHckyODCHC+dUgi5JKmQjc//I9mBV2rrqOhpKYsrN2k8/1FAcS
 l4Xxp1Zo35XBIvhgf5XLwOVh1LZt/6oghxaXiuDmFaEZgNHSzp7JP/FBWM6FhVo44Df0
 JGkeR16K2sEG5Z25Mxp6cW4K8nRQoDO+iQitiYEl8FbSGYeQsbJACPebIFLGe3JsfLYI
 +HkuFZNTB1CFffGY5BaAWUlbDKY0VZcFhSaXd5ptC87viIikT7uraWC4J5Q8TcQNGkjT
 uEJA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQ0YMwkdDV6evH2BnPHexrFMV/xQjWNE2QI+uU0QHQk/+WhKkSprXhelTUWTnB+yBimfz60G8i0Y0xE+VcaMc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxMVZaO3FLfDglr2h3ySpz2Layop2UIYm40EcH9nFdD8aJ8VLdD
 xQR8L6dhIYVq+uT/cZGCOWYbBT5uBBHY2pF/ZL8/gB3Fn1m81QW2k0/8
X-Gm-Gg: ASbGncuozIfcbG4eKhbXhHE9FJ5aV4qA5yNFixrbexVq5A0/DZQ/86RmM2h3Du4b0jd
 wF+mw11anBjv/lVOaTDXMypUzPMqC66xF4CS7eZhK94oM101MlLWOzGIGb8YgAvKv65Hey7QOdV
 ctntYQ8+D7XqUyg2uubIU+1kT+p24Qrg2bPJOeEfU77RBYMJeJCGPOu8ZS/p+tGfdShswSNqLTb
 78HVgXMOy28KnhrKLegDd6oRHve7TVA7/Efti9X2OBeXwf8RU8E0KiluShBYeEC5lNFzIpAwVSq
 N8jfqbr2eFXfT/tfbtAYVjKCBCPkGs6MfMNq/hElTO8D/k8+1yd24LodHBccHykC7VDbRwJ4AB9
 LFTYvIrC5bpq7hqueo91XQR1hwTKSPp3Izjk=
X-Google-Smtp-Source: AGHT+IEBp5fKU5jFwU7T/e+ghWZTAi9JtfLyT40aPkuCdbIfMXgA11Q2utS7ZVnD76C8XR+vIqhT6w==
X-Received: by 2002:a17:907:c290:b0:ae9:876a:4f14 with SMTP id
 a640c23a62f3a-ae9c9ba50a9mr629028466b.59.1752743754656; 
 Thu, 17 Jul 2025 02:15:54 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325::1ac? ([2620:10d:c092:600::1:72cc])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-611f7365c7bsm8194693a12.62.2025.07.17.02.15.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Jul 2025 02:15:53 -0700 (PDT)
Message-ID: <6e4a4ae7-b84e-470d-81e9-a58ecf9c9157@gmail.com>
Date: Thu, 17 Jul 2025 10:17:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>, Byungchul Park <byungchul@sk.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
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
 angelogioacchino.delregno@collabora.com, horms@kernel.org, m-malladi@ti.com,
 krzysztof.kozlowski@linaro.org, matthias.schiffer@ew.tq-group.com,
 robh@kernel.org, imx@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20250714120047.35901-1-byungchul@sk.com>
 <20250714120047.35901-3-byungchul@sk.com>
 <CAHS8izO393X_BDJxnX2d-auhTwrUZK5wYdoAh_tJc0GBf0AqcQ@mail.gmail.com>
 <CAHS8izNh7aCJOb1WKTx7CXNDPv_UBqFyq2XEHHhqHH=5JPmJCQ@mail.gmail.com>
 <20250715013626.GA49874@system.software.com>
 <CAHS8izNgfrN-MimH1uv349AqNudvQJoeOsyHpoBT_QokF3Zv=w@mail.gmail.com>
 <20250716045124.GB12760@system.software.com>
 <CAHS8izMK2JA4rGNMRMqQbZtJVEP8b_QPLXzoKNeVgQFzAmdv3g@mail.gmail.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <CAHS8izMK2JA4rGNMRMqQbZtJVEP8b_QPLXzoKNeVgQFzAmdv3g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752743755; x=1753348555; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XuQuLev07eyWeKHWKCNdTOJWBDIr2mJkHs95ZW2/jJQ=;
 b=g60+9dWTzZzsY5b+SdXKIe64JcBkPlaZEQNQH7qJ2qaEgCSFFx/sHbhlEYojHhJinf
 LnhJu6t6o1db7sFD0BagW3+gx0jbSzgXYyZf6OgRw4+c+VXhFmTL4fJJxK6Vl6A+CDOA
 ua93y9wGYGVgWhETLXmMSt4FSjIQHeew7G6MHAJt6Z6oZmHzlYD0HSwyZf0YvymYk9Kb
 2JnzzsllWh2Fj4wQeDjea3O0g3y5h0kwddrBxanBYjfer8Oa9kD/KoFdtUctfqP8/gsK
 Nj/YjRJi9tb17PNHYmcWh10vs9BK5G+WijO+5kt2Ns4eOSJz7hLU57SG9QQc2hhXSlol
 6erw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=g60+9dWT
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

On 7/16/25 20:41, Mina Almasry wrote:
...>> I will kill __netmem_get_pp() as you and I prefer.  However,
>> __netmem_get_pp() users e.i. libeth_xdp_return_va() and
>> libeth_xdp_tx_fill_buf() should be altered.  I will modify the code like:
>>
>> as is: __netmem_get_pp(netmem)
>> to be: __netmem_nmdesc(netmem)->pp
>>
>> Is it okay with you?
>>
> 
> When Pavel and I were saying 'remove __netmem_get_pp', I think we
> meant to remove the entire concept of unsafe netmem -> page
> conversions. I think we both don't like them. From this perspective,
> __netmem_nmdesc(netmem)->pp is just as bad as __netmem_get_pp(netmem).

Yes. It'd great to have all of them gone. IMHO it's much better
to let the caller do the casting so at least it's explicit and
assumptions are not hidden. E.g. instead of

pp = __netmem_nmdesc(netmem)->pp;

It'd be

struct page *page = __netmem_to_page(netmem);

page_to_nmdesc(page)->pp;
// or page_get_pp(page), or whatever the helper is

That might be easier as well.

-- 
Pavel Begunkov

