Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54899AAD541
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 May 2025 07:32:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 147DB80F27;
	Wed,  7 May 2025 05:32:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0CxRLLMNeM2r; Wed,  7 May 2025 05:32:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51CA580F7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746595936;
	bh=rXHN6Gnj9+P3ptMzbsSFbhupeu9xKqhyrBaUp2v4ioo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R8+5UpdGniizoaJjg4xA/aaotVc41u5cDN4MyXuxZGqhcQb6d5TkDuJg2foRAnPgy
	 JOxncW6F0tH071KlmyBE7Pz2/yqd0a4RTR00yf8FPxMyZKNfLb3sBzGfQ5qQoJu2i8
	 051spdKdjUM2y2rDJ9whX05KmsqbKy8ok/TYNVi8w2nA959i8Sw5WzedE6eyFb/ERB
	 D3x8XOJ5BpubxLR/uuuQrm/W26M9twyG4HEsLhSX940zcWloDKZqC/kNYvr2bRlQwP
	 VOKBKWDkGLo4BzLQgvMQydkYblUp68ByHnNzQgZDdZ7n3M4KO3+L04t6BwRMYERikY
	 FhnVYgCrXePYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51CA580F7C;
	Wed,  7 May 2025 05:32:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 71390CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 05:32:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 630A4608D9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 05:32:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hWNJt__uu2mr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 May 2025 05:32:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:4860:4864:20::2c; helo=mail-oa1-x2c.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9EA2760ECB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EA2760ECB
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com
 [IPv6:2001:4860:4864:20::2c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EA2760ECB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 05:32:13 +0000 (UTC)
Received: by mail-oa1-x2c.google.com with SMTP id
 586e51a60fabf-2db2149ffceso1189651fac.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 May 2025 22:32:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746595932; x=1747200732;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rXHN6Gnj9+P3ptMzbsSFbhupeu9xKqhyrBaUp2v4ioo=;
 b=nHJc+hGAcpHoI9LZquVJuEFErydxR00XoHGgDSGiVXttZBL93hsHMTh43zTg7rVZ3O
 zOGqkXyRdroaovDwuv57s2Urdyy0xX+pv0xS0ulaX2FcT44GfEopqU+0i4T9FmCssKrG
 /mLDKwmaIktSoi6YYZudsMY+cIl8rmIAPPidNp07DZHt45y52i836zuk9ZV/lCD64usK
 WYSOXx1UGGHkJ0BTV8/pSDF+z4hs+0XYwBUEhwUNp+/31qX602YKNoB7vhKeKe7fFQxy
 o35rdYwDg1RXKXFNzRA/f0TJDd14M9SOA8H2Nt9LIjoTUGXKNxi8/W4qYv3qmTxJzYEf
 fBYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXj7lNYoOfMlP8zfqnF9C9+6fuMzv3gSexD0YiEJ/HmcUgU2RnQeFhvjkgHvpiEwMF6/iZT+YAYGTktMdLYVmE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyJPH1GxwfqgHyQZ9J5atzPwIBG+Y954Jbn8DsTjZnuLlxz2anm
 DssN0W9PEmkGTghiOzs7AaPaaRaZydxRaVnobZPX5oU8pRc8O1cfUtptbfCmvLRGOJ7ylhQVwbp
 yMBM=
X-Gm-Gg: ASbGncvBUY6VMRqZIHPmUeaIgYShLkuehUJtdre6DJZxbIYx0q/Ne5jr1x8oXqQR7K0
 NmSiwNIgtUyaHVk5uXn+Fa6WqTRER+PCInBnuY7f9hGtWBV7N5HCMd3NP9T3YEMu82TBP28g/6r
 9zSRcsgc9s91syom9L1h+Df1Kl6UkvzQhGbg15fKFH8Qb5v/3s4Vw2FI3DUOywikBVmP5sbwCnf
 BhMTMozhgSc3/OLNyKHSmxWInGEyzOzNNz+OTbzyVBPJ9OjMWT+4/58PZ07PLT92MUmuNSprwvz
 UfP2lCpcEszru3ZWtfndXQ0bv92onjMdAkjD0B8NnRR6YfUcMbcmwQv4Wey7
X-Google-Smtp-Source: AGHT+IFuuMQml0Hx1oiprC/PjWiEkfzDo1G+dZyDFqtYvUvWVwe8mCI5eFQYikJMh7wXdDPRJuuYvA==
X-Received: by 2002:a05:6a00:420b:b0:732:a24:7354 with SMTP id
 d2e1a72fcca58-7409cf20f2cmr2862896b3a.4.1746595921472; 
 Tue, 06 May 2025 22:32:01 -0700 (PDT)
Received: from [127.0.0.1] ([104.28.205.247]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-74058d7a3a6sm10142958b3a.2.2025.05.06.22.31.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 06 May 2025 22:32:01 -0700 (PDT)
Message-ID: <b36a7cb6-582b-422d-82ce-98dc8985fd0d@cloudflare.com>
Date: Tue, 6 May 2025 22:31:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, netdev@vger.kernel.org, kernel-team@cloudflare.com
References: <20250422153659.284868-1-michal.kubiak@intel.com>
Content-Language: en-US
From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
In-Reply-To: <20250422153659.284868-1-michal.kubiak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1746595932; x=1747200732;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rXHN6Gnj9+P3ptMzbsSFbhupeu9xKqhyrBaUp2v4ioo=;
 b=LkUCkABLQJ9GGyAxtpnhJefAeWJFTgKaeiky4ij2baxHKqY1bh4j7RQT/fkvNWj+fZ
 Fmt4CPXHIGViuUN8RLRyBTlyikFdwVrfH8npVggPJT+d2Tbpboa7K6DgjdflhffvThFs
 df74e98fZc5HCaYLjhCjZZcWiJzsIKMU+ctLHzSwX+/t2Dtzfn8nSV/+PPl96eNH2FLF
 9oqFJpggtKkELgQtUmvKfXYqsIpaRaCcAr1F5Lqmxk1CA0rbOHc+IFrNBJjdNAd7ZdJC
 t7SF3061iacGahHfsR1ksc79qCr2JQOpc8Yjc/JK6KSWhrbuauJUnHpL4G2BoPzRZfn/
 raNA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=LkUCkABL
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] Fix XDP loading on
 machines with many CPUs
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

On 4/22/25 8:36 AM, Michal Kubiak wrote:
> Hi,
>
> Some of our customers have reported a crash problem when trying to load
> the XDP program on machines with a large number of CPU cores. After
> extensive debugging, it became clear that the root cause of the problem
> lies in the Tx scheduler implementation, which does not seem to be able
> to handle the creation of a large number of Tx queues (even though this
> number does not exceed the number of available queues reported by the
> FW).
> This series addresses this problem.


Hi Michal,

Unfortunately this version of the series seems to reintroduce the 
original problem error: -22.

I double checked the patches, they looked like they were applied in our 
test version 2025.5.8 build which contained a 6.12.26 kernel with this 
series applied (all 3)

Our setup is saying max 252 combined queues, but running 384 CPUs by 
default, loads an XDP program, then reduces the number of queues using 
ethtool, to 192. After that we get the error -22 and link is down.

Sorry to bring some bad news, and I know it took a while, it is a bit of 
a process to test this in our lab.

The original version you had sent us was working fine when we tested it, 
so the problem seems to be between those two versions. I suppose it 
could be possible (but unlikely because I used git to apply the patches) 
that there was something wrong with the source code, but I sincerely 
doubt it as the patches had applied cleanly.

We are only able to test 6.12.y or 6.6.y stable variants of the kernel 
if you want to make a test version of a fixed series for us to try.

Thanks,

Jesse


some dmesg follows:

sudo dmesg | grep -E "ice 0000:c1:00.0|ice:"

[  20.932638] ice: Intel(R) Ethernet Connection E800 Series Linux Driver

[  20.932642] ice: Copyright (c) 2018, Intel Corporation.

[  21.259332] ice 0000:c1:00.0: DDP package does not support Tx 
scheduling layers switching feature - please update to the latest DDP 
package and try again

[  21.552597] ice 0000:c1:00.0: The DDP package was successfully loaded: 
ICE COMMS Package version 1.3.51.0

[  21.610275] ice 0000:c1:00.0: 252.048 Gb/s available PCIe bandwidth 
(16.0 GT/s PCIe x16 link)

[  21.623960] ice 0000:c1:00.0: RDMA is not supported on this device

[  21.672421] ice 0000:c1:00.0: DCB is enabled in the hardware, max 
number of TCs supported on this port are 8

[  21.705729] ice 0000:c1:00.0: FW LLDP is disabled, DCBx/LLDP in SW mode.

[  21.722873] ice 0000:c1:00.0: Commit DCB Configuration to the hardware

[  22.086346] ice 0000:c1:00.1: DDP package already present on device: 
ICE COMMS Package version 1.3.51.0

[  22.289956] ice 0000:c1:00.0 ext0: renamed from eth0

[  23.137538] ice 0000:c1:00.0 ext0: NIC Link is up 25 Gbps Full Duplex, 
Requested FEC: RS-FEC, Negotiated FEC: NONE, Autoneg Advertised: On, 
Autoneg Negotiated: False, Flow Control: None

*[ 499.643936] ice 0000:c1:00.0: Failed to set LAN Tx queue context, 
error: -22*

*
*

