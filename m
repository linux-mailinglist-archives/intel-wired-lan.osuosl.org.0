Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AABA051A2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 04:36:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB1FB6078A;
	Wed,  8 Jan 2025 03:36:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id siMEfWxID8m2; Wed,  8 Jan 2025 03:36:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC7B6606D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736307399;
	bh=WFV8s79Nga7NDIW/gJmI4LOGAth/rXHkgvoLqs7F05E=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eNjEZhRL5OA2jQBFsCHv72v3O1EB/f5i/69/8wnl/LIHY1B6J5uKXf5lElL6qUxMY
	 Vpi0u2Qs9p3QnL7CZ+MZWeuyWoWAGCo9FmfGNhgvVvyRxA6I5Fm35cwSifLf3aqtfr
	 4/YFKvRAiPN3SeK3L14QwB4w3riGO7RqVTxI8FDrsjx9DDilxkz3dCjzj4/Niy0bT7
	 U2XdwuYJUOwlmM1j5c28FYx842YUqW4cYZ2+0UWu1Lau7CwFZbv2SYaqGVB5rY/QOt
	 lsCoV5PtfSx65MLdlWu2frz/XdS3AwY6ijL+EDuPeu6nlJw1pm8/3zZM6DSVyI53M0
	 Od4S1RRtjk97w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC7B6606D6;
	Wed,  8 Jan 2025 03:36:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 137B11ED5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 03:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE3CA403AC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 03:36:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PVfujkJv_apT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 03:36:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1036; helo=mail-pj1-x1036.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFD79403A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFD79403A6
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFD79403A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 03:36:35 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 98e67ed59e1d1-2ef748105deso18382868a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Jan 2025 19:36:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736307395; x=1736912195;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WFV8s79Nga7NDIW/gJmI4LOGAth/rXHkgvoLqs7F05E=;
 b=tQ2DJBmDPwgIeuZdbGzj8AqDX8OH4qHlwR8ilGCKgQ8Dz0We+E80bfWQYktNE0SK30
 eyeZWCTCUhm76diJyD92hFKUoswDwwz99ID8eZBcdZ0naYKwtJrWA4JJzc1bbtTYy/Ri
 lKzuvRnSURw5frJGbLuIRVh6OQaTIOYEt4ELslwV6kOSwi0cejy8bn1RJkqbN8xadXDQ
 aDU21Vekrie5/3E4ko8nt/k5bnDNPYvJfo45rYzZGtvDSn6GIwnIJAGAXuqL2DJ1FAtV
 zULOObV5Y+fsOHQJXFQPHR0yQWS82Bfpquvtzixem6ecuG8NTXd0CKgNXL0m54ew+b30
 9igQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPqirtyPnmGtPwVLYS3SIY+TPpRr0bLdOMrfT1asOXELBZ6ZhCzl7nVFFiu00uvQEuiyWHvfEPz0HRiw1nde8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyjHBFOoqd0SGgdl2+RtFQCsdbwa3Fpy6zYIH5N3KZinqHNWAwE
 nxkbHRz6+uhuz6GG1u0EEPYwDTUVu+g3/96P64zBznsziKPhl+VQYZN4Lzz/Jgs=
X-Gm-Gg: ASbGnctmz062/95grP7rcCnPU9dXApEdtlPtV9TJvMj7lRnjwwHgopIqBBhmUebI8DH
 RvTgBlFLK7kRuyGHGBuu2KXq9G2UUxpiu3bVZFFZ7Sa+EUJeEgYCpMEe8/mgCjNuuahYql/ewky
 v2BFbjw0RXBTos0r0/aJbxe9KHN/5/hkjf/Zf/43N39miiL9Edkn2yM22IM/xhjl4LTrKnk7aab
 PO7snM+QjMG8rq/sjBwRCL7x4FQPXyCZwXaWQRJM6b7AtBgWf/kUcdT2/B/6MyfxYt215oRavjV
 j1j3Mb6Yv98iK5mYeW/Kc1k8Y3yTbkba5O0IEnnr
X-Google-Smtp-Source: AGHT+IGfVtup3OhOJVyTvNsjTvoE/uLh2hpokJfWEg3IVDEUsG0+iu0Ck99MuxHSfhIZrcQZrovudA==
X-Received: by 2002:a17:90b:3a08:b0:2ee:dd9b:e402 with SMTP id
 98e67ed59e1d1-2f548eabdc8mr2536114a91.12.1736307395223; 
 Tue, 07 Jan 2025 19:36:35 -0800 (PST)
Received: from [10.54.24.59] (static-ip-148-99-134-202.rev.dyxnet.com.
 [202.134.99.148]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-219dc964a67sm317484405ad.27.2025.01.07.19.36.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2025 19:36:34 -0800 (PST)
Message-ID: <1ade15b1-f533-4cc6-8522-2d725532e251@shopee.com>
Date: Wed, 8 Jan 2025 11:36:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Edward Cree <ecree.xilinx@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
 <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
 <0d98fed8-38e3-4118-82c9-26cefeb5ee7a@shopee.com>
 <32775382-9079-4652-9cd5-ff0aa6b5fd9e@intel.com>
From: Haifeng Xu <haifeng.xu@shopee.com>
In-Reply-To: <32775382-9079-4652-9cd5-ff0aa6b5fd9e@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1736307395; x=1736912195; darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WFV8s79Nga7NDIW/gJmI4LOGAth/rXHkgvoLqs7F05E=;
 b=BDQWlLwMJp26IKu5wwdTABAmfv1I4YKTVV5CLExu4qD8IlaqhIG9BRC0OkM1j9wkPh
 17WT1rXAOsVBpZl28sxaTJlAmhHoS8JQlqzTTn1oZsKLMIREPc8Jg/rVQ6ed+wQ9Tpp1
 Nz1VCCQhJU6PBtf7JuqqP0mEAskHoJGbnvYgqHMTHN//SuaqebsJfi4GQvQymDjhqDf3
 LoZ5Qlb+l8hwmnVZAKzGyGu3S6h4BpURc3W7wQAROYJHvL8mefNu6qqLMochzxub/bIw
 ifwxML0Qg8v6ojBTkd+GiDamCF26kljSrlyOt/+LWLVmbf3ObNNowTkccnz5Xgxh4ndg
 ffgw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=BDQWlLwM
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
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



On 2025/1/8 01:16, Tony Nguyen wrote:
> 
> 
> On 1/2/2025 7:05 PM, Haifeng Xu wrote:
>>
>>
>> On 2025/1/3 00:01, Edward Cree wrote:
>>> On 02/01/2025 11:23, Haifeng Xu wrote:
>>>> We want to make full use of cpu resources to receive packets. So
>>>> we enable 63 rx queues. But we found the rate of interrupt growth
>>>> on cpu 0~15 is faster than other cpus(almost twice).
>>> ...
>>>> I am confused that why ixgbe NIC can dispatch the packets
>>>> to the rx queues that not specified in RSS configuration.
>>>
>>> Hypothesis: it isn't doing so, RX is only happening on cpus (and
>>>   queues) 0-15, but the other CPUs are still sending traffic and
>>>   thus getting TX completion interrupts from their TX queues.
>>> `ethtool -S` output has per-queue traffic stats which should
>>>   confirm this.
>>>
>>
>> I use ethtool -S to check the rx_queus stats and here is the result.
>>
>> According to the below stats, all cpus have new packets received.
> 
> + Alex and Piotr
> 
> What's your ntuple filter setting? If it's off, I suspect it may be the Flow Director ATR (Application Targeting Routing) feature which will utilize all queues. I believe if you turn on ntuple filters this will turn that feature off.

Yes, our ntuple filter setting is off. After turning on the ntuple filters, I compare the delta of recieved packets,
only 0~15 rx rings are non-zero, other rx rings are zero.

If we want to spread the packets across 0~62, how can we tune the NIC setting?
we have enabled 63 rx queues, irq_affinity and rx-flow-hash, but the 0~15 cpu
received more packets than others.

Thanks!



> 
> Thanks,
> Tony
> 
>>
>> cpu     t1(bytes)       t2(bytes)       delta(bytes)
>>
>> 0    154155550267550    154156433828875    883561325
>> 1    148748566285840    148749509346247    943060407
>> 2    148874911191685    148875798038140    886846455
>> 3    152483460327704    152484251468998    791141294
>> 4    147790981836915    147791775847804    794010889
>> 5    146047892285722    146048778285682    885999960
>> 6    142880516825921    142881213804363    696978442
>> 7    152016735168735    152017707542774    972374039
>> 8    146019936404393    146020739070311    802665918
>> 9    147448522715540    147449258018186    735302646
>> 10    145865736299432    145866601503106    865203674
>> 11    149548527982122    149549289026453    761044331
>> 12    146848384328236    146849303547769    919219533
>> 13    152942139118542    152942769029253    629910711
>> 14    150884661854828    150885556866976    895012148
>> 15    149222733506734    149223510491115    776984381
>> 16    34150226069524    34150375855113    149785589
>> 17    34115700500819    34115914271025    213770206
>> 18    33906215129998    33906448044501    232914503
>> 19    33983812095357    33983986258546    174163189
>> 20    34156349675011    34156565159083    215484072
>> 21    33574293379024    33574490695725    197316701
>> 22    33438129453422    33438297911151    168457729
>> 23    32967454521585    32967612494711    157973126
>> 24    33507443427266    33507604828468    161401202
>> 25    33413275870121    33413433901940    158031819
>> 26    33852322542796    33852527061150    204518354
>> 27    33131162685385    33131330621474    167936089
>> 28    33407661780251    33407823112381    161332130
>> 29    34256799173845    34256944837757    145663912
>> 30    33814458585183    33814623673528    165088345
>> 31    33848638714862    33848775218038    136503176
>> 32    18683932398308    18684069540891    137142583
>> 33    19454524281229    19454647908293    123627064
>> 34    19717744365436    19717900618222    156252786
>> 35    20295086765202    20295245869666    159104464
>> 36    20501853066588    20502000738936    147672348
>> 37    20954631043374    20954797204375    166161001
>> 38    21102911073326    21103062510369    151437043
>> 39    21376404644179    21376515307288    110663109
>> 40    20935812784743    20935983891491    171106748
>> 41    20721278456831    20721435955715    157498884
>> 42    21268291801465    21268425244578    133443113
>> 43    21661413672829    21661629019091    215346262
>> 44    21696437732484    21696568800049    131067565
>> 45    21027869000890    21028020401214    151400324
>> 46    21707137252644    21707293761990    156509346
>> 47    20655623913790    20655740452889    116539099
>> 48    32692002128477    32692138244468    136115991
>> 49    33548445851486    33548569927672    124076186
>> 50    33197264968787    33197448645817    183677030
>> 51    33379544010500    33379746565576    202555076
>> 52    33503579011721    33503722596159    143584438
>> 53    33145734550468    33145892305819    157755351
>> 54    33422692741858    33422844156764    151414906
>> 55    32750945531107    32751131302251    185771144
>> 56    33404955373530    33405157766253    202392723
>> 57    33701185654471    33701313174725    127520254
>> 58    33014531699810    33014700058409    168358599
>> 59    32948906758429    32949151147605    244389176
>> 60    33470813725985    33470993164755    179438770
>> 61    33803771479735    33803971758441    200278706
>> 62    33509751180818    33509926649969    175469151
>>
>> Thanks!
>>
>>> (But Eric is right that if you _want_ RX to use every CPU you
>>>   should just change the indirection table.)
>>
> 

