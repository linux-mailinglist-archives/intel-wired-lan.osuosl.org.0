Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D7FA002C7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jan 2025 03:37:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C79B180EF0;
	Fri,  3 Jan 2025 02:37:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NrEo1q3Cbyys; Fri,  3 Jan 2025 02:37:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB14D80C42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735871822;
	bh=pShsrZzLuZZugsMDraq2n40cWRm+2AwH1RmFN69x8Oo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ib6GRR19jKjwiHWMh/Ngvn0CEB0/q3faBTBngiGf2KynY6OWEWFZy3anETolijmxb
	 3HbqXzlZxqWHAyGwezONhPLBcZqHooH7KkKKDq76ip9yoRAqZ56Aew48Jw7bmT1qpa
	 tt6sFrscUEOq1wnMnIyHZ9So7JhUGwZsIFFyXV1H3w9oM1Sla8/hjYtvi45i1Nu1zO
	 lsSjPAQEfCpizq61rfI1/kKuzJBk9racCWpSh2rYpVNlMF7LJZd8gYypJDYcVV5OMf
	 fKp9+5ap/6bmY8DBp1DzPYRC5WSghtdA5C9CVcQMWmHAwuA6vNec+LzE4wOq38HSyM
	 gX7OmV9ZU9gEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB14D80C42;
	Fri,  3 Jan 2025 02:37:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 01DD5AF0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 02:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD49C405D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 02:36:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j7b6zJmOa_Es for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jan 2025 02:36:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1035; helo=mail-pj1-x1035.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6D5A54013B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D5A54013B
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D5A54013B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 02:36:58 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-2ee8aa26415so16620413a91.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 18:36:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735871818; x=1736476618;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=pShsrZzLuZZugsMDraq2n40cWRm+2AwH1RmFN69x8Oo=;
 b=M7MfVjxQzPpSU1lLvH2aQsHXaMXfNnHAC7c2DlfpBAM2vnvHPDS31qBvTDbgOfvdCg
 lAKdUg88YUE88ZAL22dNkRMuYc68wEyEyVdJpum6Zn05KHdSVVaXbGL1zOb8Qo30ORty
 H2mBCUeomAZPGD2e60oHepE58FphOAvBNfIIwGH6doNg1YSKb1QRjIwXFrqQnbXG9MIj
 XyuwmN+MBGhmo1HgY5UB7lbaoSj5Jpc4zGWRv1vedbIMk2ZeubiBO7fzO68twdGPwr8J
 bzU3VUJCLAj7c86nEXZr44e7RboYL4BCzRO4K7aRD9MAi7ALRkdVFpz4UTEQ9RfqJFfk
 9tBw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWmvba7rVxhEthURfADHiFcASCrsywwfx/+7Lz/dmE6wEiTctkEf+TBtju5NZk1gjawWFN+t4rHMV4owcvoHoU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxzasinlLtOJmDVArSzY/alGDPWPyknVDIxj6WnEScyBWdTEbOu
 hCpfUN3q4Bqx7OI3t3TwqyiRgxn9UbOrU80q+OFtk23A5lM5QVGELjVBE4RnvCY=
X-Gm-Gg: ASbGncvksESyuXV2fXLLitu2HZ7bEy6doiF6HvlMo0tIx+P6biOm2JdXeMjueJ4t2Lj
 XgBWBBBMycpd+C93GNbUenOT8rZUxZu68YtygIT/FNWj1lPsxWVc8OLawcWX+ly+tIhJsmmxT5+
 zNQkH8igLX0fG7vClApLB0Y0iQApJItaX45JyOPGEsvEyRly3SL0RYC0mptWtdAwhNn2vV1ttEx
 8TcJqbQ1fFm1gTtubfMbI3oUI4JPr4rHgu6dCRHCViSQ4CHPcyjwINQl8hYCXqbbISgsQ==
X-Google-Smtp-Source: AGHT+IElcPb5SdyKwOYf2hMzQ7oB5RMpBcE/E/qNMOnvQzCZhDGbGZG/16W8RKFUUlBN64vu4WnKdA==
X-Received: by 2002:a05:6a00:392a:b0:728:e906:e446 with SMTP id
 d2e1a72fcca58-72abdeb7855mr76549430b3a.24.1735871817695; 
 Thu, 02 Jan 2025 18:36:57 -0800 (PST)
Received: from [10.54.24.59] ([143.92.118.3]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72aad90c1b1sm25991849b3a.185.2025.01.02.18.36.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2025 18:36:57 -0800 (PST)
Message-ID: <03b02880-4aae-4a4a-9533-7a756cc84001@shopee.com>
Date: Fri, 3 Jan 2025 10:36:50 +0800
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
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
 <CANn89iLbC3qkeptG9xv1nZyWHUTdtXBf4w3LGaisRGc7xj4pMw@mail.gmail.com>
From: Haifeng Xu <haifeng.xu@shopee.com>
In-Reply-To: <CANn89iLbC3qkeptG9xv1nZyWHUTdtXBf4w3LGaisRGc7xj4pMw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1735871818; x=1736476618; darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pShsrZzLuZZugsMDraq2n40cWRm+2AwH1RmFN69x8Oo=;
 b=b+e4XHf+qI5iOi3VWVKg7m4MwGHj2O02WiZam1B9kEZWZZ3UgVWKkMCGdS3vVQ74iU
 XW6FxWLFx+4u4NkJpi+iFT+r3cfn7028SicKxexcaUpQThqNJ2zD4TZaf+vTSe4eZlkt
 yKRYK1mKMOgbYvjzQodScAQdOLYge5fk5NoOMax1IFS0DPST9P3v/nlaIr9c/OBAq7O/
 VuHSXbCSwMETQZqvrHpq8SKMPCSwjXiEBhNAk6NJ69aqbUKQR6tSm4mm+t4/fzU4PepC
 /cTo3lf2IkA8PGbmNxmlzDpDUIzKyUOWmb1oQ7Zqe9RfM4mKhkoeyyznK4lcYcPut2DR
 CiuQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=b+e4XHf+
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



On 2025/1/2 19:46, Eric Dumazet wrote:
> On Thu, Jan 2, 2025 at 12:23 PM Haifeng Xu <haifeng.xu@shopee.com> wrote:
>>
>>
>>
>> On 2025/1/2 18:34, Eric Dumazet wrote:
>>> On Thu, Jan 2, 2025 at 9:43 AM Haifeng Xu <haifeng.xu@shopee.com> wrote:
>>>>
>>>>
>>>>
>>>> On 2025/1/2 16:13, Eric Dumazet wrote:
>>>>> On Thu, Jan 2, 2025 at 4:53 AM Haifeng Xu <haifeng.xu@shopee.com> wrote:
>>>>>>
>>>>>> Hi masters,
>>>>>>
>>>>>>         We use the Intel Corporation 82599ES NIC in our production environment. And it has 63 rx queues, every rx queue interrupt is processed by a single cpu.
>>>>>>         The RSS configuration can be seen as follow:
>>>>>>
>>>>>>         RX flow hash indirection table for eno5 with 63 RX ring(s):
>>>>>>         0:      0     1     2     3     4     5     6     7
>>>>>>         8:      8     9    10    11    12    13    14    15
>>>>>>         16:      0     1     2     3     4     5     6     7
>>>>>>         24:      8     9    10    11    12    13    14    15
>>>>>>         32:      0     1     2     3     4     5     6     7
>>>>>>         40:      8     9    10    11    12    13    14    15
>>>>>>         48:      0     1     2     3     4     5     6     7
>>>>>>         56:      8     9    10    11    12    13    14    15
>>>>>>         64:      0     1     2     3     4     5     6     7
>>>>>>         72:      8     9    10    11    12    13    14    15
>>>>>>         80:      0     1     2     3     4     5     6     7
>>>>>>         88:      8     9    10    11    12    13    14    15
>>>>>>         96:      0     1     2     3     4     5     6     7
>>>>>>         104:      8     9    10    11    12    13    14    15
>>>>>>         112:      0     1     2     3     4     5     6     7
>>>>>>         120:      8     9    10    11    12    13    14    15
>>>>>>
>>>>>>         The maximum number of RSS queues is 16. So I have some questions about this. Will other cpus except 0~15 receive the rx interrupts?
>>>>>>
>>>>>>         In our production environment, cpu 16~62 also receive the rx interrupts. Was our RSS misconfigured?
>>>>>
>>>>> It really depends on which cpus are assigned to each IRQ.
>>>>>
>>>>
>>>> Hi Eric,
>>>>
>>>> Each irq was assigned to a single cpu, for exapmle:
>>>>
>>>> irq     cpu
>>>>
>>>> 117      0
>>>> 118      1
>>>>
>>>> ......
>>>>
>>>> 179      62
>>>>
>>>> All cpus trigger interrupts not only cpus 0~15.
>>>> It seems that the result is inconsistent with the RSS hash value.
>>>>
>>>>
>>>
>>> I misread your report, I thought you had 16 receive queues.
>>>
>>> Why don't you change "ethtool -L eno5 rx 16", instead of trying to
>>> configure RSS manually ?
>>
>> Hi Eric,
>>
>> We want to make full use of cpu resources to receive packets. So
>> we enable 63 rx queues. But we found the rate of interrupt growth
>> on cpu 0~15 is faster than other cpus(almost twice). I don't know
>> whether it is related to RSS configuration. We didn't make any changes
>> on the RSS configration after the server is up.
>>
>>
>>
>> FYI, on another server, we use Mellanox Technologies MT27800 NIC.
>> The rate of interrupt growth on cpu 0~63 seems have little gap.
>>
>> It's RSS configration can be seen as follow:
>>
>> RX flow hash indirection table for ens2f0np0 with 63 RX ring(s):
>>     0:      0     1     2     3     4     5     6     7
>>     8:      8     9    10    11    12    13    14    15
>>    16:     16    17    18    19    20    21    22    23
>>    24:     24    25    26    27    28    29    30    31
>>    32:     32    33    34    35    36    37    38    39
>>    40:     40    41    42    43    44    45    46    47
>>    48:     48    49    50    51    52    53    54    55
>>    56:     56    57    58    59    60    61    62     0
>>    64:      1     2     3     4     5     6     7     8
>>    72:      9    10    11    12    13    14    15    16
>>    80:     17    18    19    20    21    22    23    24
>>    88:     25    26    27    28    29    30    31    32
>>    96:     33    34    35    36    37    38    39    40
>>   104:     41    42    43    44    45    46    47    48
>>   112:     49    50    51    52    53    54    55    56
>>   120:     57    58    59    60    61    62     0     1
>>   128:      2     3     4     5     6     7     8     9
>>   136:     10    11    12    13    14    15    16    17
>>   144:     18    19    20    21    22    23    24    25
>>   152:     26    27    28    29    30    31    32    33
>>   160:     34    35    36    37    38    39    40    41
>>   168:     42    43    44    45    46    47    48    49
>>   176:     50    51    52    53    54    55    56    57
>>   184:     58    59    60    61    62     0     1     2
>>   192:      3     4     5     6     7     8     9    10
>>   200:     11    12    13    14    15    16    17    18
>>   208:     19    20    21    22    23    24    25    26
>>   216:     27    28    29    30    31    32    33    34
>>   224:     35    36    37    38    39    40    41    42
>>   232:     43    44    45    46    47    48    49    50
>>   240:     51    52    53    54    55    56    57    58
>>   248:     59    60    61    62     0     1     2     3
>>
>>
>> I am confused that why ixgbe NIC can dispatch the packets
>> to the rx queues that not specified in RSS configuration.
> 
> Perhaps make sure to change RX flow hash indirection table on the
> Intel NIC then...
> 
> Maybe you changed the default configuration.
> 
> ethtool -X eno5 equal 64


The maximum number of RSS queues supported by Intel Corporation 82599ES NIC
is 16. When I specify the number which is larger than 16, it shows the below message.

"Cannot set RX flow hash configuration: Invalid argument."

> Or
> ethtool -X eno5 default

This command can run sucessfully and as I saied above, it only has 16 queues.

RX flow hash indirection table for eno5 with 63 RX ring(s):
    0:      0     1     2     3     4     5     6     7
    8:      8     9    10    11    12    13    14    15
   16:      0     1     2     3     4     5     6     7
   24:      8     9    10    11    12    13    14    15
   32:      0     1     2     3     4     5     6     7
   40:      8     9    10    11    12    13    14    15
   48:      0     1     2     3     4     5     6     7
   56:      8     9    10    11    12    13    14    15
   64:      0     1     2     3     4     5     6     7
   72:      8     9    10    11    12    13    14    15
   80:      0     1     2     3     4     5     6     7
   88:      8     9    10    11    12    13    14    15
   96:      0     1     2     3     4     5     6     7
  104:      8     9    10    11    12    13    14    15
  112:      0     1     2     3     4     5     6     7
  120:      8     9    10    11    12    13    14    15

Thanks!
