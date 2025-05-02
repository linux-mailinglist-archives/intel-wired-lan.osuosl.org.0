Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAF7AA75CB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 17:15:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBFAC41E59;
	Fri,  2 May 2025 15:15:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mnzRqT147LR4; Fri,  2 May 2025 15:15:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5792041A70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746198906;
	bh=x9dxMHxHGQFSFuCFJR/tpGkJfuZvFN0FE0shIf7v3xQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bShkb0xlV4TkkWBGMHtKwiMEYIYd/z5nnE/3LCX+erAflqz955vDKnHVEQp9tHOJ3
	 jdD9VtZRJA7zhiitfSEuzBQmM3gYievPLGIRiAhdvjedNDqO/8T/3ocUA9c3H5Vr0N
	 iSUMqoc2y3pZTVX2VN64lfajNvYnqWkttg2x1rwJZ+5NywWr1zu4s/3CdrCNJ8TE5O
	 hWIKypoopbCCgeFXS6tCLc6NjPpuD8XA+3DgZ/Z5YAAe5Bl7+qnppbYm75ajnYN1Lt
	 u/hZDxhD6+fgKJHEln/ka12313sD2/kFoqOfvE0aWZdQfI3Eb4jPinOnnst44Ng0H3
	 VJtuqtGF2BoMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5792041A70;
	Fri,  2 May 2025 15:15:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A96C116
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 04:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E46CC83B7A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 04:14:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bMV2vvqsceRD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 May 2025 04:14:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22a; helo=mail-lj1-x22a.google.com;
 envelope-from=christoph.petrausch@deepl.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2CED883B79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CED883B79
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CED883B79
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 04:14:41 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id
 38308e7fff4ca-30beedb99c9so13388851fa.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 May 2025 21:14:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746159279; x=1746764079;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=x9dxMHxHGQFSFuCFJR/tpGkJfuZvFN0FE0shIf7v3xQ=;
 b=w1bJVNKx2byo0MX26OVjrbE7olrMsPEu1BEb1V/2He85fWv1rC8w25Wk5Qh3LT1nGJ
 INaK/Ftkc3v07TyvuDBRakOUaNMNG5lk9Omnup2yFmvi6yazi38lTCsF//VtOQd+e22w
 TncJRmA2WDHrkhwTapiITum4A8uLmjp7VVrCPV/fpS96StE6IgioYl1CDy96Cj6ST+Nb
 uRT1pZBuZhb7CRIWIQc8Pw8Ryi5uB7m50FL2r6teXIX4vT9ntWaYO7M/7wVL07F4cy8+
 CZJwk38rq5nb/0YGOXGqSU2U75WPjbzjlYtirRkxY4zBii8ftR6nnWEoBBucyOz1M5v+
 NQMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXt5DifAH25HN0RhOiM3EqKTODvVjcXJPoZWCcX2Bb6wkEGBMMadIHXWgW+xY401AtEYs/n39P3XjpG6muavQI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw3M8pybvA+q67WVIGjVAZcr6tTB68TW8iRxOQN0MddSoME89Jb
 tP4ELdqboFDDy8tiYki4/cbHL0SrBh+yB46abWfob8QRqumilY9Yyg3qy4Bg6jI=
X-Gm-Gg: ASbGncuUNhU9ZuhCObpVpIWVMHzYbznYVioi1tv+f1j89LNlgkg9xM8jFQkbVLFzDBI
 xbYmQFJJkr6TXHBR8AWa+nfmn4l6SLLVJkyGmWtFV5a9XTjMwpaya8QUICI+NnD/nP0SvgLuIZn
 oeXOL03Cf6Cwk6VGjd/TuKjKBoUSPntX/VYyIC983M9hqlbATeF2tQ3hf6u8fCupkWQrleVRJX+
 FrOEUu1SCYhFDqCV0Coz/9vTWsvA3VyDewmquT7WX4ytBs4NgVTnkZ8oluUtug0exRLnnaPW6kp
 GVxQu1skQR8Wdj4Ab8CElOB9qXXWnDlcRSb0VS0bWWMtsYXiIG3Ud4k8zg3A6oZl2g42gAmqmaV
 Aa7R2r1sxte+kVGciI3F2441RRsge6g==
X-Google-Smtp-Source: AGHT+IEoVyVMyOYtFJM/chy1gUkFhWkmn9T7eTV+hnbrn97tjQnk33BPCJARqicfVVsCjkgIeYlKbg==
X-Received: by 2002:a05:651c:19ab:b0:30b:d543:5a71 with SMTP id
 38308e7fff4ca-320c3af139fmr2888981fa.1.1746159278745; 
 Thu, 01 May 2025 21:14:38 -0700 (PDT)
Received: from ?IPV6:2a00:6020:ad81:dc00:46ab:9962:9b00:76f8?
 ([2a00:6020:ad81:dc00:46ab:9962:9b00:76f8])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3202a89f450sm2509611fa.80.2025.05.01.21.14.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 May 2025 21:14:38 -0700 (PDT)
Message-ID: <93e175a2-485e-437e-8957-403fad70e902@deepl.com>
Date: Fri, 2 May 2025 06:14:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <06415c07-5f29-4e1d-99c3-29e76cc2f1ae@deepl.com>
 <f5f8a9a0-a590-467e-81ad-81e1feea3b79@deepl.com>
 <445d48a8-8e4e-4605-bad8-4a80707a1452@intel.com>
Content-Language: en-US
From: Christoph Petrausch <christoph.petrausch@deepl.com>
In-Reply-To: <445d48a8-8e4e-4605-bad8-4a80707a1452@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 02 May 2025 15:15:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=deepl.com; s=google; t=1746159279; x=1746764079; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=x9dxMHxHGQFSFuCFJR/tpGkJfuZvFN0FE0shIf7v3xQ=;
 b=Z3p59nj7ntjTGARPcKzb8jMfYhggaW43LzdK6YrE7teMw1wfq9fD62AY+Zl760wR+Q
 48kYbyVu20vNVieFTnf1QNAqaoLAh1LfpxD8jFbMghgQD5eACJKr9Sa9KWhf63l8NgRF
 3MphWVbmMawZ3klwt1IaalFWDO7ZkGtaSOhp3hwA7u+Brk58PSBft/4p8SVXtOWu/2tD
 /6EzZB5v9gGkT0jx1G4+VhafNIC3g7t4XhgEyknGjq7tqj79G5jfRQC+4qeJfUEAFpS4
 hgsN7eo5uKNKsyt/3Ljr6nirDhHvT2VU0UMb6mOrcxvONVNaQZ3KbPHsrN/egczJ/QF2
 TFnA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=deepl.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=deepl.com header.i=@deepl.com header.a=rsa-sha256
 header.s=google header.b=Z3p59nj7
Subject: Re: [Intel-wired-lan] [EXT] Re: Possible Memory tracking bug with
 Intel ICE driver and jumbo frames
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


> The faulty state perpetuates then forever? (say, at least few minutes)
Yes, the faulty state perpetuates then forever. The first time we have 
discovered this issue, it was there for hours.
I have another sad news, while bisecting this, I questioned my initial 
assumption that v5.15 is a good release. I managed to reproduce the 
issue on the v5.15 kernel release as well.

Best Regards,
Christoph Petrausch
