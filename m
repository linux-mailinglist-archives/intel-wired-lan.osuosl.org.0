Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F70A002CB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jan 2025 03:37:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4F83608AA;
	Fri,  3 Jan 2025 02:37:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mAsHutfvPIfI; Fri,  3 Jan 2025 02:37:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 369B66002E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735871863;
	bh=f1iVWzJPR2miPqAPZWUSXyz7V7yso1ZIEtL541TpIdY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pxl6v95L4G2mVxPrR4hQlP4nU0rrQairxwoTM3cMn1yhGUne74CgWIxJun7jcNs0q
	 NDBaVb9J690yZP+acW8E4u0j7EZTEbfuANwiUmK+XwEy263qn/Qr4fjm+Y90uUFE3P
	 Eaq7Ef1EQG7hLkBh/dsGUR7WHjkjbtk1hn54MMvcHkroWR13u3kNTe+soR/qGt3j1T
	 V1nUrpbb+Esbt9DzUsDbAjv9L4w19N/+cb1BFgOyb2nb4GMQuaL4Y9sWS/yJCkzhCw
	 hBdBKyRombk9a89si9ab1cL86rAvsgi3uGoBwpaQ85bQTvbRB8ZJ1bQ4ecJGs3skqz
	 s5lWhcvAMuueQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 369B66002E;
	Fri,  3 Jan 2025 02:37:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DA4B1E0F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 02:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C979E80560
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 02:37:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id He0QHPSrn91o for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jan 2025 02:37:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 12BA880530
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12BA880530
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12BA880530
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jan 2025 02:37:39 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-21654fdd5daso152870395ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 18:37:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735871859; x=1736476659;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=f1iVWzJPR2miPqAPZWUSXyz7V7yso1ZIEtL541TpIdY=;
 b=vLIBh+LIhYmajy4kFFxYwHpy1ypLUBKRuFh2oVYAJ4BW4poZ7TtyFmDCL/0qrGwnrx
 DoZQrTBr5vIenG3bkBX6bHmPJXadJwYv4ouuwttCO/L5nJlcgVuwXc4wbIktDKwP2yDF
 mRF8rcVXwY8Vq32HF1ozzxu2xbqivYTgsOL0c4/690n7bonN4uLOTuhcNcPi0Cb8fsXB
 nUnfOGooRgRtBXdqzUv10aj12cmhuxWE0AXJQHUIOcv4mL1nt5OwplbrRy7NnJf2jE/p
 AfzvQInMk9BXhQxx2ZISUgdY8JQecAdqGhAbifRS3B8cS5ANFKrf7pQYUwfyi+o3CQJ8
 sJkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1zZkQUu1HLYFVeCxK3eB4rpo3NzGcTCH1V47dIG2r8gbOre2EY3EHT/gzWgzwpB6A2IN6/3evCTnUxpzrQhU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwRy7/x5zG3iIV/SqP9ePRSXlQGrZrpdkrHSeggpKjzn5Xd4VqP
 SjcpUzKbLEZVxAf7Y0EdIUkKVUlo3AXbA4eUUEagKgMeybj87n/RACJSVi4NC3E=
X-Gm-Gg: ASbGncsagbxbQXe6pm1DEHPUMujNgGbxizoa9FxnvSZv846Ocnvd7YYx1qurQnr3s9p
 RLOquGlT71biZ9X1zbcREguQyD1h+shiKbfc6rCUGtm9Ewyb42lfmNsTto13IrJsr89BlKi3VJw
 4INYxUQ41+AnFnylIFHRQ4i/aMkvuo1UGkLacQotAfJNZiQ6EsMpB2g0G2fwmgaKNAlViBKIbpJ
 6rVtwStjZvr58tWN9AkKrRoHlDte8+md782XpEOnAR4exyQTaiOSyhMzTouYpb8PL2qug==
X-Google-Smtp-Source: AGHT+IHpB5Y7OW1lducBQWCXmvdTSdZYEj/TmGv0sludHLsA4z/6YwV34YDqoyvDPJvHfr6BcYggCw==
X-Received: by 2002:a05:6a20:2443:b0:1e1:90bd:2190 with SMTP id
 adf61e73a8af0-1e5e0819124mr76232142637.44.1735871859473; 
 Thu, 02 Jan 2025 18:37:39 -0800 (PST)
Received: from [10.54.24.59] ([143.92.118.3]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-842b2b3e83dsm19544642a12.32.2025.01.02.18.37.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2025 18:37:39 -0800 (PST)
Message-ID: <87b14362-cc58-496e-a38c-6db5d4025026@shopee.com>
Date: Fri, 3 Jan 2025 10:37:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Edward Cree <ecree.xilinx@gmail.com>
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Paolo Abeni <pabeni@redhat.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
 <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
 <20250102083915.6e5375a1@kernel.org>
From: Haifeng Xu <haifeng.xu@shopee.com>
In-Reply-To: <20250102083915.6e5375a1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1735871859; x=1736476659; darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=f1iVWzJPR2miPqAPZWUSXyz7V7yso1ZIEtL541TpIdY=;
 b=Zj73PWUeL8f4YwaEWUX+nnQVnoS8Zq0JlALBTjsnRE8jk0+ZY6CiK8A5CGhq+/POhw
 1HFl/J2KMxrJ+DsBO7Un8Wl1w5M0C9jg2U9hY0BKkKRDNrSatzBsAG25PM3O3x+I3GKG
 F5JMETRmslqsucyCQvi/mWMfzJirOE2SLyl2TBZibumXj4PnVk7dxBO6ARkTRzF6dIYg
 /u/ZSt4zhvVBiXvg/3/P+FSgtFq2xBjiH5StH40u0/VIsNG9TPV1IrGBoJRjJfct0bIv
 c6m365ZvxdAacOV1X2i94ZDgiwTfSr79Z8mxP5s9CAWcqqbKZj+YCNjiQ9xIY3ng7rrV
 EKwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=Zj73PWUe
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



On 2025/1/3 00:39, Jakub Kicinski wrote:
> On Thu, 2 Jan 2025 16:01:18 +0000 Edward Cree wrote:
>> On 02/01/2025 11:23, Haifeng Xu wrote:
>>> We want to make full use of cpu resources to receive packets. So
>>> we enable 63 rx queues. But we found the rate of interrupt growth
>>> on cpu 0~15 is faster than other cpus(almost twice).  
>> ...
>>> I am confused that why ixgbe NIC can dispatch the packets
>>> to the rx queues that not specified in RSS configuration.  
>>
>> Hypothesis: it isn't doing so, RX is only happening on cpus (and
>>  queues) 0-15, but the other CPUs are still sending traffic and
>>  thus getting TX completion interrupts from their TX queues.
>> `ethtool -S` output has per-queue traffic stats which should
>>  confirm this.
>>
>> (But Eric is right that if you _want_ RX to use every CPU you
>>  should just change the indirection table.)
> 
> IIRC Niantic had 4 bit entries in the RSS table or some such.
> It wasn't possible to RSS across more than 16 queues at a time.
> It's a great NIC but a bit dated at this point.

Yes, It only has 16 RSS queues.
