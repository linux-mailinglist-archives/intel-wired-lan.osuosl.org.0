Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C309FF8AC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 12:23:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E7D280D6A;
	Thu,  2 Jan 2025 11:23:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ZYFYvLoHWjQ; Thu,  2 Jan 2025 11:23:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D6C680D6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735817016;
	bh=8sFhwoHExJXCqpxC3vnz8KQUoJqZj6NhHppA9s3d7OM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UWoUosAuXpvSK2vCJU1EIttyAz5VoOs2pQcWAXzxqnnQ8V9SokxIeepoCbJYAYAI3
	 GMxPwaIoNoaVzn2Jik15QakOKWU6EYyw4qv/1zBQ7VK08xuF3xLx8EjPsEqrpc3I9x
	 BZQoGi/lU/39ICm4pRaSM04GDTo+R+WhtrNQkuwUYfGbaGVLAvHdy+8Lxn/B7maUa+
	 E2595CW2uRZFEJ4fr8ATdOiYGoSe+A4q0WVxNalJaegtLi0kts4KySpqFmWKIqCHjm
	 XKbcSh8A2sv7XMGjGSNL4iJcBWX9tPlXbG60gqqqXWxCj2LV/mPEd/PalUHtdtTwfm
	 CXKCZOQz7wIYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D6C680D6E;
	Thu,  2 Jan 2025 11:23:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F19C4F24
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 11:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D283F4057E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 11:23:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TcvamjoMCOMW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 11:23:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1032; helo=mail-pj1-x1032.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7849240586
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7849240586
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7849240586
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 11:23:33 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 98e67ed59e1d1-2ef70c7efa5so12350543a91.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 03:23:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735817013; x=1736421813;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=8sFhwoHExJXCqpxC3vnz8KQUoJqZj6NhHppA9s3d7OM=;
 b=DQtDRpZfpoyaWBtaV+11dsJQWujM85Gxfh12EHKSgE4aIymw5i/yCK+9wZ2DIEX0y6
 hDAgnlBJw1ZKJfDJbKMlpQA0el8R46LwaX7w4U8wAPqrK2NIboFG/HjdL+2wuaK5SGjt
 LORgVsh6TA67JLnEi9od2DYwOsPLWoM/Ax8GcHz9HNVb3vaVYfEftQDMPW+DymExkEie
 HIjswtmz6aYGm+C1gn8J6w/gM5gZ/C+41ADbN2BP13jy9/hr3LzVRJYZh7f/bnxTX6nk
 fp3wVIIEG2JnBulAz3To052dn7kHmZLQleM7hX+onhY+Ox10huVeXN/7E1UqkhAF7pFt
 RiUw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUz6LRl0te4hKsrj+N1g5sVxiokTD5oUAz9AslwSTroLOhB8IfA76eH9CoHE8EqfNwvWcPAyrZFxaKyCbhOWLM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw2rbzZjPOpKhJIjpir+0JrE4ggxnA+Jvb8oh07+MMQO1axk/TJ
 /ei4TmZEr3lzhIjuBSwUM+piy9eI4l8vi3hynU6rpDJBcZdOdrr6K9jH0PIM7vA=
X-Gm-Gg: ASbGncu6xWZmHJYjoIi5eRIMxPscFkkTAgVvh8mGHVoTSvTJiLFcbhdGgq61y/hxTu8
 l9SAOBgPBSxdl1UQ1aUSuu+2WTTV5j4gdNjKUQi3CcboV4Ac6LKxhJesb4Llkn9o/OCEP3Yr5Pj
 EJIL4OZ2ScOiaODWwxwiZnYCApnUlje0/tTlcPBXv8SaoUwq3QusHKBBWYhkP8oNFZnpwHDBo2e
 Vy90JzqWL60nAUNd6HR507bh0Ol4MHYmEg9oTwLV6aZtbMSPFAbqXcF/HzbemMC1wapPNxU4LyZ
 ckNN2PuvqrpjuRu3eYIwaTcXoG3aYnkH85cw+pBB
X-Google-Smtp-Source: AGHT+IFA8XuBDDWIfpgiTyTXdpOEKFSzWH//Fz/k1Nauung0TXVCmFIm7z1F+mhtXYmWqJkLUeHQ/Q==
X-Received: by 2002:a17:90b:2dc8:b0:2ee:c797:e276 with SMTP id
 98e67ed59e1d1-2f452d3000cmr79788586a91.0.1735817012601; 
 Thu, 02 Jan 2025 03:23:32 -0800 (PST)
Received: from [10.54.24.59] (static-ip-148-99-134-202.rev.dyxnet.com.
 [202.134.99.148]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f447882af6sm28929842a91.36.2025.01.02.03.23.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2025 03:23:32 -0800 (PST)
Message-ID: <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
Date: Thu, 2 Jan 2025 19:23:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Eric Dumazet <edumazet@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
From: Haifeng Xu <haifeng.xu@shopee.com>
In-Reply-To: <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1735817013; x=1736421813; darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8sFhwoHExJXCqpxC3vnz8KQUoJqZj6NhHppA9s3d7OM=;
 b=C2urX1aMLur2B1I7Vdd1pAyZTG7cdxyjKO37l6VVVJgxw58wwJe3rhWBCgc4SgS37n
 TBiaiU/CUq2WK3lQx8Vb6XABFE9j2zrkoI7ukSni8bjw43s8ZhYgxANR3V06VfXpGVUy
 CN7NyLGAtkQXGE53B9cnY/zUzJezhSV+Z9S9LLkMlYIwtuohEQjYHINPFe4c/Ty/skqD
 Jpr1aLdiNT7WypvMm4JWfHBwKEx3f36ShQ/y7O5PbqvZbKZ6w+2UxW9Pa9holLggnkM+
 EnJq26Tgaan/pvYdCMYAs74vCbTesWL0808HbGYmq3lgxPu4qxfyeQ04pX+0Dnu9j3x2
 HNsw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=C2urX1aM
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



On 2025/1/2 18:34, Eric Dumazet wrote:
> On Thu, Jan 2, 2025 at 9:43 AM Haifeng Xu <haifeng.xu@shopee.com> wrote:
>>
>>
>>
>> On 2025/1/2 16:13, Eric Dumazet wrote:
>>> On Thu, Jan 2, 2025 at 4:53 AM Haifeng Xu <haifeng.xu@shopee.com> wrote:
>>>>
>>>> Hi masters,
>>>>
>>>>         We use the Intel Corporation 82599ES NIC in our production environment. And it has 63 rx queues, every rx queue interrupt is processed by a single cpu.
>>>>         The RSS configuration can be seen as follow:
>>>>
>>>>         RX flow hash indirection table for eno5 with 63 RX ring(s):
>>>>         0:      0     1     2     3     4     5     6     7
>>>>         8:      8     9    10    11    12    13    14    15
>>>>         16:      0     1     2     3     4     5     6     7
>>>>         24:      8     9    10    11    12    13    14    15
>>>>         32:      0     1     2     3     4     5     6     7
>>>>         40:      8     9    10    11    12    13    14    15
>>>>         48:      0     1     2     3     4     5     6     7
>>>>         56:      8     9    10    11    12    13    14    15
>>>>         64:      0     1     2     3     4     5     6     7
>>>>         72:      8     9    10    11    12    13    14    15
>>>>         80:      0     1     2     3     4     5     6     7
>>>>         88:      8     9    10    11    12    13    14    15
>>>>         96:      0     1     2     3     4     5     6     7
>>>>         104:      8     9    10    11    12    13    14    15
>>>>         112:      0     1     2     3     4     5     6     7
>>>>         120:      8     9    10    11    12    13    14    15
>>>>
>>>>         The maximum number of RSS queues is 16. So I have some questions about this. Will other cpus except 0~15 receive the rx interrupts?
>>>>
>>>>         In our production environment, cpu 16~62 also receive the rx interrupts. Was our RSS misconfigured?
>>>
>>> It really depends on which cpus are assigned to each IRQ.
>>>
>>
>> Hi Eric,
>>
>> Each irq was assigned to a single cpu, for exapmle:
>>
>> irq     cpu
>>
>> 117      0
>> 118      1
>>
>> ......
>>
>> 179      62
>>
>> All cpus trigger interrupts not only cpus 0~15.
>> It seems that the result is inconsistent with the RSS hash value.
>>
>>
> 
> I misread your report, I thought you had 16 receive queues.
> 
> Why don't you change "ethtool -L eno5 rx 16", instead of trying to
> configure RSS manually ?

Hi Eric,

We want to make full use of cpu resources to receive packets. So
we enable 63 rx queues. But we found the rate of interrupt growth
on cpu 0~15 is faster than other cpus(almost twice). I don't know 
whether it is related to RSS configuration. We didn't make any changes
on the RSS configration after the server is up.



FYI, on another server, we use Mellanox Technologies MT27800 NIC.
The rate of interrupt growth on cpu 0~63 seems have little gap.

It's RSS configration can be seen as follow:

RX flow hash indirection table for ens2f0np0 with 63 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:     16    17    18    19    20    21    22    23
   24:     24    25    26    27    28    29    30    31
   32:     32    33    34    35    36    37    38    39
   40:     40    41    42    43    44    45    46    47
   48:     48    49    50    51    52    53    54    55
   56:     56    57    58    59    60    61    62     0
   64:      1     2     3     4     5     6     7     8
   72:      9    10    11    12    13    14    15    16
   80:     17    18    19    20    21    22    23    24
   88:     25    26    27    28    29    30    31    32
   96:     33    34    35    36    37    38    39    40
  104:     41    42    43    44    45    46    47    48
  112:     49    50    51    52    53    54    55    56
  120:     57    58    59    60    61    62     0     1
  128:      2     3     4     5     6     7     8     9
  136:     10    11    12    13    14    15    16    17
  144:     18    19    20    21    22    23    24    25
  152:     26    27    28    29    30    31    32    33
  160:     34    35    36    37    38    39    40    41
  168:     42    43    44    45    46    47    48    49
  176:     50    51    52    53    54    55    56    57
  184:     58    59    60    61    62     0     1     2
  192:      3     4     5     6     7     8     9    10
  200:     11    12    13    14    15    16    17    18
  208:     19    20    21    22    23    24    25    26
  216:     27    28    29    30    31    32    33    34
  224:     35    36    37    38    39    40    41    42
  232:     43    44    45    46    47    48    49    50
  240:     51    52    53    54    55    56    57    58
  248:     59    60    61    62     0     1     2     3


I am confused that why ixgbe NIC can dispatch the packets
to the rx queues that not specified in RSS configuration.

Thanks!


