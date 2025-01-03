Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BF7A00304
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jan 2025 04:05:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4362407A7;
	Fri,  3 Jan 2025 03:05:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Il32kYF2pXXI; Fri,  3 Jan 2025 03:05:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A76C140686
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735873546;
	bh=3wBt5uTEWitMwxCv7dEqy1zPrPTtgCQI6rxOHe/aejk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7ncdgZGMxRq2p7jOMPcLaDNqqao18n/Gwc3jqFpG8s8F1vjRAe4BYovSmhGQlixxY
	 FISvF4cJceZNGGTo+u5MA5CtM8uHJYILFCDuP6IOXgCTc/S8K1zihXimB5Nuf/xjkP
	 a8tZ5GNCsP4z/VYRb1tnV1VQONr3lHfQzmJNQM2isofetX7VOzYBtrGJxIVTgKbPiO
	 mi4UadOi2FAUfwTW//HR9+4xDOViud2jnllmksI7svEyR6Xb1xZpfYCKJ8j7j+ncNO
	 1FE9M9CjHEI5H/ZmtTY+Eg+RFZosVgERkjYnNOLz2q1nejPt3KXD/mXEF7cnEH9B7d
	 OKNva+8ZYlEmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A76C140686;
	Fri,  3 Jan 2025 03:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E756E0F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 03:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C2A2606E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 03:05:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O4yARzqqlmYZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jan 2025 03:05:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DFD660687
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DFD660687
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DFD660687
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 03:05:42 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-216395e151bso119307905ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 19:05:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735873541; x=1736478341;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=3wBt5uTEWitMwxCv7dEqy1zPrPTtgCQI6rxOHe/aejk=;
 b=aMacM5ryhPtirOPf85yzlCco+ZDviIbCOB7+K4AwWjwlkLZaysd6jdChPJPP6SZ4WG
 W+ahlO2qKLKPCW2U4Oq02CJo4WE71jvndor+5upu6N7biuIQ35pP6q6rx0Qp44UsCBa8
 80zHYYkvH4QKbSlPR6YDT7SGpjLy1ucNdBLXU9qpL2yM52/n3cJ0pvT4yr1PYp6Lgaou
 FyRMG1GXSM1DApiiwTVcCxm4xdMrdsIpaFA5N4bwqIjzkvPBw2x7OGAe43C/T/+RnoaV
 GT0QvTa+OhtjkBWYuoHGcdGjULIGUh6THHHc1jrizSt8pscy42VBk9S+39udTAqJ6+Fz
 +hKg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuUQpjxRpTz7cOOxUam3qNR7yE9L5wqTEHJ70wStdxpzjznAoJm+zpM/EU6901ZMQSvcpGaUjCcjHbMFopEjM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxyRrlA80Gf1PcMelparJxWlABgZyGz+1d5Tevvr6Qsk3dv2Kx5
 uic6udjOHEyiLBz0z9voV82RJQP6GpVHG25Z2MtZKUXyKSRa9/lGepIrxq9V5pQ=
X-Gm-Gg: ASbGncvCDCUDLbVaEYw18qz6cQonKBcreAyihxLXkomr+ZV4zU3zQsr7OYatzUcK0/H
 FFF/76JZ8/ZBJMPtV0BFQuWZmySluccktPap2k+IQ9YnSmbVH6cgX0Er6JXJGSfoP5k2QnjbQWq
 Tf7UpelZTE1FXnfSkSV5FWGzPIJJntJh+dCKKcks15lV9SE8WxsmHtsKpuGiYgxw5bjKXj73uvt
 ldIRGshVCzq9p8VFy3mmxD6BC1eT/LdC0I2vAK9EIBlTPg4GfCPmtt4CxolYLkPRA9adg==
X-Google-Smtp-Source: AGHT+IEIrhZaPpLfiwgQfu7MPj7/kD5r+srTbB+HLQv3XgPmHgWQdWvO/uvPNzXwevlemGkbvdnaLA==
X-Received: by 2002:a17:902:f689:b0:216:39fa:5c97 with SMTP id
 d9443c01a7336-219da5ce0b4mr800763245ad.11.1735873541620; 
 Thu, 02 Jan 2025 19:05:41 -0800 (PST)
Received: from [10.54.24.59] ([143.92.118.3]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f4fe30f525sm2877782a91.12.2025.01.02.19.05.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2025 19:05:41 -0800 (PST)
Message-ID: <0d98fed8-38e3-4118-82c9-26cefeb5ee7a@shopee.com>
Date: Fri, 3 Jan 2025 11:05:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Edward Cree <ecree.xilinx@gmail.com>, Eric Dumazet <edumazet@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
 <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
From: Haifeng Xu <haifeng.xu@shopee.com>
In-Reply-To: <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1735873541; x=1736478341; darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3wBt5uTEWitMwxCv7dEqy1zPrPTtgCQI6rxOHe/aejk=;
 b=UB6ovnASy3f79Z1y9dgipxrBrHlktE0IXtlPty+204P72fVgHWbWOZrwBPSO5F229o
 ZqN/9THgxPgW/zvZCmuSRBgwn5s03gdJHOcZLHzuR4mU+SbhuaqGGuprGyxdPU0G2vcv
 91IcdYZsL0Gny/OsLdZCzxWMdUAKvOMGXdw7+vtvnzTst8mCYFGmOPR6TIYzMPL4CK/U
 MgEC3kSwa2IbL6qIUWWuDfsqjModQDhN7FnAhDihqgYt7+2FWKRVcw83D+Y9cfs1Q2ds
 KToqlrXS2VTqSacrfnKQDml2x+Ilc7JM/Y0YQV7Mpp6klMZHvvKXHI0EhJp5xXEHUA1x
 rFEg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=UB6ovnAS
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



On 2025/1/3 00:01, Edward Cree wrote:
> On 02/01/2025 11:23, Haifeng Xu wrote:
>> We want to make full use of cpu resources to receive packets. So
>> we enable 63 rx queues. But we found the rate of interrupt growth
>> on cpu 0~15 is faster than other cpus(almost twice).
> ...
>> I am confused that why ixgbe NIC can dispatch the packets
>> to the rx queues that not specified in RSS configuration.
> 
> Hypothesis: it isn't doing so, RX is only happening on cpus (and
>  queues) 0-15, but the other CPUs are still sending traffic and
>  thus getting TX completion interrupts from their TX queues.
> `ethtool -S` output has per-queue traffic stats which should
>  confirm this.
> 

I use ethtool -S to check the rx_queus stats and here is the result.

According to the below stats, all cpus have new packets received.

cpu     t1(bytes)       t2(bytes)       delta(bytes)

0	154155550267550	154156433828875	883561325
1	148748566285840	148749509346247	943060407
2	148874911191685	148875798038140	886846455
3	152483460327704	152484251468998	791141294
4	147790981836915	147791775847804	794010889
5	146047892285722	146048778285682	885999960
6	142880516825921	142881213804363	696978442
7	152016735168735	152017707542774	972374039
8	146019936404393	146020739070311	802665918
9	147448522715540	147449258018186	735302646
10	145865736299432	145866601503106	865203674
11	149548527982122	149549289026453	761044331
12	146848384328236	146849303547769	919219533
13	152942139118542	152942769029253	629910711
14	150884661854828	150885556866976	895012148
15	149222733506734	149223510491115	776984381
16	34150226069524	34150375855113	149785589
17	34115700500819	34115914271025	213770206
18	33906215129998	33906448044501	232914503
19	33983812095357	33983986258546	174163189
20	34156349675011	34156565159083	215484072
21	33574293379024	33574490695725	197316701
22	33438129453422	33438297911151	168457729
23	32967454521585	32967612494711	157973126
24	33507443427266	33507604828468	161401202
25	33413275870121	33413433901940	158031819
26	33852322542796	33852527061150	204518354
27	33131162685385	33131330621474	167936089
28	33407661780251	33407823112381	161332130
29	34256799173845	34256944837757	145663912
30	33814458585183	33814623673528	165088345
31	33848638714862	33848775218038	136503176
32	18683932398308	18684069540891	137142583
33	19454524281229	19454647908293	123627064
34	19717744365436	19717900618222	156252786
35	20295086765202	20295245869666	159104464
36	20501853066588	20502000738936	147672348
37	20954631043374	20954797204375	166161001
38	21102911073326	21103062510369	151437043
39	21376404644179	21376515307288	110663109
40	20935812784743	20935983891491	171106748
41	20721278456831	20721435955715	157498884
42	21268291801465	21268425244578	133443113
43	21661413672829	21661629019091	215346262
44	21696437732484	21696568800049	131067565
45	21027869000890	21028020401214	151400324
46	21707137252644	21707293761990	156509346
47	20655623913790	20655740452889	116539099
48	32692002128477	32692138244468	136115991
49	33548445851486	33548569927672	124076186
50	33197264968787	33197448645817	183677030
51	33379544010500	33379746565576	202555076
52	33503579011721	33503722596159	143584438
53	33145734550468	33145892305819	157755351
54	33422692741858	33422844156764	151414906
55	32750945531107	32751131302251	185771144
56	33404955373530	33405157766253	202392723
57	33701185654471	33701313174725	127520254
58	33014531699810	33014700058409	168358599
59	32948906758429	32949151147605	244389176
60	33470813725985	33470993164755	179438770
61	33803771479735	33803971758441	200278706
62	33509751180818	33509926649969	175469151

Thanks!

> (But Eric is right that if you _want_ RX to use every CPU you
>  should just change the indirection table.)

