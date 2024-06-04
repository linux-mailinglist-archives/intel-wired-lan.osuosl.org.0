Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0AC8FF46E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19E284171C;
	Thu,  6 Jun 2024 18:14:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id axvFsQk-o1pa; Thu,  6 Jun 2024 18:14:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAA594164D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717697658;
	bh=ukGFGjc2TtcZiNrYPfXwl5+69j7Ba+GYMgvRbMlUtvM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6CWmTZ0u11lh1DPhtKUfjG61sm1wrbzK/rSp6gGjmmG39A/MXYzteXe/kHfqx/kvy
	 yYqZU+sg3WX6wurUcy3DG2Kjm3GRrFhAI0V3bBgLIerLY5xg1GN6yx+t5IQjMn6rwj
	 Nfn0twjUM8b6UQ277ehjw6RwPYU4NcD4XEOKHz3rW4zjPq10QPjkin5+Az+V6f8Oux
	 zvs0guM4Ht3MZWTcqO99rPucX8IJB5Hydl9BhnCgoCvCUFgbxBp7CxqP/s49C5J2fP
	 GPZcImxF+QyVvCbx1cSYqUpMhiAowh5h/3k5SmspMkwGBfw5Z2gVbipnvDjY4r0W15
	 vn+1NMffKxZqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAA594164D;
	Thu,  6 Jun 2024 18:14:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCC701BF41D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 23:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F067D40602
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 23:34:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 34MykMJs2HkS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 23:34:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42b; helo=mail-pf1-x42b.google.com;
 envelope-from=ddecotig@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D2AA840136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2AA840136
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2AA840136
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 23:34:51 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id
 d2e1a72fcca58-702442afa7dso4089557b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Jun 2024 16:34:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717544091; x=1718148891;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ukGFGjc2TtcZiNrYPfXwl5+69j7Ba+GYMgvRbMlUtvM=;
 b=CxZDoKeySuXSRvsThqSmNWKtH3aR1o1VLCvISmuKJkLut1qc53q29dNYjYK/wRtlgD
 LCCruUZWpTrusXfDpTSfw746oqL6qqBJzGUMm7PRrb5aCepHkUaSQKiZH9qubzYp+uGG
 rXwiYJCQGe+v9cEpJLzWJ1FkXM2JcQ3So51VeGiN2dGinrkp0x0vHoJxCfnw2/qgwxvE
 Dd2piO/BBe+i++t/rayNq8LAKNiDVxZgPGVA51SF7S+P26ypc9sbTUeX/ZUzJ6Xzt82L
 rJgDsK6ud4YB6AI7OJWynn5VTi/OrhoT3yI8kXG5nkhNxJcgtr4p4EIJ2BDf09SfN012
 RdOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU9Sv1cyZOxvDzR5zTNjvACguahmqgJf7OciPnFugjlSKBLVbiTsbePNWqFSX0hPKbACtnce9pkQ21AdTKXvrP4QayiPuGw3itUem1zRDW++w==
X-Gm-Message-State: AOJu0YysoL675pTXjSJ61ThQQAniaYpF/mtaKR1+R8xsAraeuYFgboyf
 EZmvxvDTXDu34LSLeV8DvVHkKiQvYFgXCCPtfAwKCb2Dcfd8xf7f
X-Google-Smtp-Source: AGHT+IGMATd0C32PFg/i8pLcoXx5/dE8v2BthZmox2+WPHqWxPD7Ygi9QmaZ+Uf4fBClbSDxQ6Gbeg==
X-Received: by 2002:a05:6a20:12d2:b0:1b0:2af5:f183 with SMTP id
 adf61e73a8af0-1b2b6fa218emr1242347637.23.1717544090532; 
 Tue, 04 Jun 2024 16:34:50 -0700 (PDT)
Received: from ?IPV6:2620:15c:2c0:5:abb:613c:28d6:873e?
 ([2620:15c:2c0:5:abb:613c:28d6:873e])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2c2806983dcsm98452a91.32.2024.06.04.16.34.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Jun 2024 16:34:50 -0700 (PDT)
Message-ID: <b30f34a1-48d6-4ff4-b375-d0eef5308261@gmail.com>
Date: Tue, 4 Jun 2024 16:34:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Decotigny <ddecotig@gmail.com>
To: Joshua Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20240603184714.3697911-1-joshua.a.hay@intel.com>
Content-Language: en-US
In-Reply-To: <20240603184714.3697911-1-joshua.a.hay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 06 Jun 2024 18:14:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717544091; x=1718148891; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ukGFGjc2TtcZiNrYPfXwl5+69j7Ba+GYMgvRbMlUtvM=;
 b=ZQBq1/JcAe9JsF8DAHhX6IMBtd+UBMeUDfEBd7Ubpz6INlChaYIE2T8HVNayZqdoch
 +luyRhHy1BZJaZlT8Cf/7m7JkvARkFR/a6E2Tc3esfigYaz/l96CbYV5xipazCzFATWK
 w8Cu76q1V1N4BRlJ6B9kxolLgz192YM9GubMJLlRQUcUYV+eOJ0gxGjQQ0MhLxoXxLgZ
 qFw1G2/fZCvFntchiMRFjqzPG959R9RfQ4Vk/Q8lvBIM5qaBdpPNG/fs+ihQrJ1lBws+
 Y+C1UjQB9qp77mC0Z5xEFs0r+je0mouC4Mk56Wmvxk7lth+QnhbJlgvUagmIjOl7Mudr
 X45g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ZQBq1/Jc
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog
 timeout
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
Cc: netdev@vger.kernel.org, Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/3/2024 11:47 AM, Joshua Hay wrote:
>
> There are several reasons for a TX completion to take longer than usual
> to be written back by HW. For example, the completion for a packet that
> misses a rule will have increased latency. The side effect of these
> variable latencies for any given packet is out of order completions. The
> stack sends packet X and Y. If packet X takes longer because of the rule
> miss in the example above, but packet Y hits, it can go on the wire
> immediately. Which also means it can be completed first.  The driver
> will then receive a completion for packet Y before packet X.  The driver
> will stash the buffers for packet X in a hash table to allow the tx send
> queue descriptors for both packet X and Y to be reused. The driver will
> receive the completion for packet X sometime later and have to search
> the hash table for the associated packet.
>
> The driver cleans packets directly on the ring first, i.e. not out of
> order completions since they are to some extent considered "slow(er)
> path". However, certain workloads can increase the frequency of out of
> order completions thus introducing even more latency into the cleaning
> path. Bump up the timeout value to account for these workloads.
>
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_lib.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)


We tested this patch with our intensive high-performance workloads that
have been able to reproduce the issue, and it was sufficient to avoid tx
timeouts. We also noticed that these longer timeouts are not unusual in
the smartnic space: we see 100s or 50s timeouts for a few NICs, and
other NICs receive this timeout as a hint from the fw.

Reviewed-by: David Decotigny <ddecotig@google.com>
