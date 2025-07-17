Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D58B0892C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 11:22:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58DA460A6E;
	Thu, 17 Jul 2025 09:22:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xjCLi5Q4D5We; Thu, 17 Jul 2025 09:22:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C600F60AA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752744127;
	bh=i00DCL7LArMdrcvWGazqRQUXotNFwoxDDFzCPluiP0Y=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6BezNwVB0brefoBsjUfX5h9UubKXkbOrn2U/FeT8QAFDw318sMYnKi7AcmHyp3g1V
	 42wafDhPRg98NYL5WBUoPFGPd0V10fMkX0fr05fNxZryud/DPH2z7Ht9PyoIz03tOy
	 DT4G1TzZYEN1HwyRvtRIIQ7DfQVF1vsZtaWD+HjO2yA0Tcu7lnZJeBturK7HJdgl0E
	 8BXT5ufhPD/DvrraKWqhm0QLlbFat2RIaUOYyMJ8H3iP6V2AIbMNmup9WlRb/vCXuC
	 SV3dD9W4+Rn/u1QKkJYsK7JuHQWmyDZxxHlG7WVR6fGVXRlnxDELazCE8M1O+E8IIH
	 6QjgUQEDUoyFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C600F60AA0;
	Thu, 17 Jul 2025 09:22:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 44587117
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 29F5660A48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:22:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PdRAtCsSarV2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 09:22:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::536; helo=mail-ed1-x536.google.com;
 envelope-from=asml.silence@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 194DC608D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 194DC608D7
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 194DC608D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:22:04 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-60707b740a6so996636a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 02:22:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752744123; x=1753348923;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=i00DCL7LArMdrcvWGazqRQUXotNFwoxDDFzCPluiP0Y=;
 b=ds9dLkTr8Ske5/FY3PqtCmU+LHf3CQPeT6y3J0kK/uztgGRA3Rt9bthDhPBH/9vhD3
 EXhjJSVpBxvlJqRucZmPTuXgI8Q55VlNnMLP0IEOSA27CxK94WZO+swyXfNfE/zmbXO5
 4JCNIdVfoxAF7oN/vChQIph17X3SVjtdkLUFhhJLDQQFjJ25oc45b+oabual6IH6NqPo
 z4ou6tWL0ltk/gcOAeBH2wuMmTQ8stGVzp/rjlMRTUxGz8IT6O1u4d+ZJzlVp7reDPbq
 iIEbqJcNOy5+C3/aHGXlF4AJZNh0z+Wv6OXbrE0juIr24CdGejJ1Q2kZ21LWmt5onfi7
 uzcA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXL2C7SiNhEaiZrPqpKT//l1WCXDGI2kRPrKg6GiUxTF2lAc0itViQZPM/JTHPS/jCPVlV6xz+42SDvI7zfRgw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw0twr47JsrK8m9GU8/VlhxL1W+VUyh6ktFLmTT0HGXiMxGztt2
 a3AysHYCFPbOdIIT//yb7rPLoOTQtQZNnf7Av/zG0w7JcLhQU/I13uPu
X-Gm-Gg: ASbGncvlmIDWB110zXk4pVpqEJRO+zhGmZ9oz75UjNXMgzIOuscro4PzY8ZU3C8iYAE
 f8myr/+M20l66p/tslXR3XXNsklgFOSPazNPkqZAWoB9CvmrOiuNNvbhIjbzOj2IEUQUeKaF51b
 xDSNE+qL1rFpQIRgCvLmUROQ8I2nkqGff+/Y7HpsZy6X8k+xFm2HlCpO+FIiXtcqOeSqjk0+bD+
 OIqVUuDKwowDxWRgNBjVk/R22WDYHLUGN5RhHT5AF5ayh3YA49iWe/cuLCKwlBGk3oEh63G2/f8
 V1o0/WFmIhkAnBVkdlhtr9I+/WpB43ml4072MXQjgLlcucXadB7WsvMDZ2rXB301fKq3cyszkNu
 rHzQB4tBigxw9NsjCByarqzRpnWL5l/pukiGEykcXCBuneQ==
X-Google-Smtp-Source: AGHT+IEm/CZVfnHKhdEovv47xnxQCwkLFXlL7R6Fz8Q/9sjCF0i+Wwcn8Nmka6MicAHPOBghKdtX1Q==
X-Received: by 2002:a17:907:3e9c:b0:ae3:c968:370 with SMTP id
 a640c23a62f3a-ae9ce1e8c11mr471633566b.59.1752744122539; 
 Thu, 17 Jul 2025 02:22:02 -0700 (PDT)
Received: from ?IPV6:2620:10d:c096:325::1ac? ([2620:10d:c092:600::1:72cc])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae6e7eec2a0sm1338371766b.67.2025.07.17.02.21.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Jul 2025 02:22:01 -0700 (PDT)
Message-ID: <325c6297-b47f-43ad-8d2f-276cf70f3d57@gmail.com>
Date: Thu, 17 Jul 2025 10:23:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Pavel Begunkov <asml.silence@gmail.com>
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
 <6e4a4ae7-b84e-470d-81e9-a58ecf9c9157@gmail.com>
Content-Language: en-US
In-Reply-To: <6e4a4ae7-b84e-470d-81e9-a58ecf9c9157@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752744123; x=1753348923; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=i00DCL7LArMdrcvWGazqRQUXotNFwoxDDFzCPluiP0Y=;
 b=dGn4kc6FZ44pf859sSH/czFytt32hqsLZoed7yciM5ELTT+A3Qk8tYiZx3VlWNGBFc
 uUrOI6WRMpTRSuH6d1w80Tv/KkWZyad31xpU5RAWgKB28roxqJYYIRgYlBev03ystTsK
 kmmTAUER7fRpAaHpEDn78i6Hi2j7RznreXFT4ioanYbE/LPkqA68qjmgRarrWi9/4iDR
 9/+midSRH4btwPPopqZtyb5mYVu/Kgg2vXjDiA/PChc+LA5sjamMnSAgzAebmQdZKsZD
 bE9e0aWpcf5ZkhymdgZALSPUUp0RvL23s0O+/vkJwKJiJ95CNQD1zMUN58I9eyCORyg1
 IMWw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=dGn4kc6F
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

On 7/17/25 10:17, Pavel Begunkov wrote:
> On 7/16/25 20:41, Mina Almasry wrote:
> ...>> I will kill __netmem_get_pp() as you and I prefer.  However,
>>> __netmem_get_pp() users e.i. libeth_xdp_return_va() and
>>> libeth_xdp_tx_fill_buf() should be altered.  I will modify the code like:
>>>
>>> as is: __netmem_get_pp(netmem)
>>> to be: __netmem_nmdesc(netmem)->pp
>>>
>>> Is it okay with you?
>>>
>>
>> When Pavel and I were saying 'remove __netmem_get_pp', I think we
>> meant to remove the entire concept of unsafe netmem -> page
>> conversions. I think we both don't like them. From this perspective,
>> __netmem_nmdesc(netmem)->pp is just as bad as __netmem_get_pp(netmem).
> 
> Yes. It'd great to have all of them gone. IMHO it's much better
> to let the caller do the casting so at least it's explicit and
> assumptions are not hidden. E.g. instead of
> 
> pp = __netmem_nmdesc(netmem)->pp;
> 
> It'd be
> 
> struct page *page = __netmem_to_page(netmem);
> 
> page_to_nmdesc(page)->pp;
> // or page_get_pp(page), or whatever the helper is
> 
> That might be easier as well.

FWIW, no need to respin a v12 for that

-- 
Pavel Begunkov

