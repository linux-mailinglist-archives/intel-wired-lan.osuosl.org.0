Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65563A76D05
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Mar 2025 20:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1890F80F42;
	Mon, 31 Mar 2025 18:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OiV5w161kfc1; Mon, 31 Mar 2025 18:49:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DB1581C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743446956;
	bh=Kl0dov9VrLyOk8gwNhMGQPqf9rUFgQMxrLRugxXZN4M=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JHS8iXFGAilvH7CiUTSUZQX+JVzBDxLF34FjtNjsgq1s6qkWShDDWtQo7jUor0K8x
	 za8nwZoZf144qCEVP8GFS8U29WT2Q5+WpTAp5c07NVTft64rHbTkUM1dzDEj1y6DCl
	 i/i+JOP3Trcsdk0BMs6JvXnpfyubcO/zWmRpE1GzCFTBP5ic09HdCUo4Wtf/86+yjU
	 /HFRT4FR6LClz72PuBaLBvKBjzcurwO2t+NBY95b+wGLqtxNeq5P6pdqRAxkSevFkc
	 4S4Thj+E7lpdC6ccaoqujU+sRnx2pvK+aZQzUoWhu5mEXdTvIWd/FE72DgqfsNfY/r
	 D7QWZDAHEdhCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DB1581C11;
	Mon, 31 Mar 2025 18:49:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 58714D8E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 18:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 378AB605F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 18:49:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oUY6UWuUEuOu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Mar 2025 18:49:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62b; helo=mail-ej1-x62b.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 18E3760879
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18E3760879
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18E3760879
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 18:49:12 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-ac297cbe017so1036073266b.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 11:49:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743446950; x=1744051750;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Kl0dov9VrLyOk8gwNhMGQPqf9rUFgQMxrLRugxXZN4M=;
 b=bZEONHG24VJpyQNimekdpStdIZkmTpW8dXJl8rjrwKw27amAo+WyM0W3usq9BRF5z8
 mTYFyhhqXDZ2WQ+m8rS5x8AmQ5BUAdyyzoKY1+lHMW80ZNPBp7XN3029sXbRWtP3BYFJ
 8esUl/9tjQH6Hoxz/4JqUX3lLa3+oxutxrq58Qb5vKBTKJvVNeZodcCrshFYQUYDFY+2
 5t8Ch3zRdtqsPlEwXPtRGGssTFxigsMdKrwPYdO+6k1Puo/4aqOzmebHtoI7MamoCuaN
 nMx+4C55CGkBEoig8pfV71qgkfow86LYe3/MPJrgqkeA4YfW1aogG7EkRd3rS0/dr645
 MPaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+DovVdvhrKSv7Uni7d/Nfdui+1JHTc+0K0ZzOIdmiHDlGsLypu+ny5yAinIcEuw3u/XJdmO0WUvXRuYtLhWE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzA6xeOfNQ9gC6Ri4eVZbJr5OByl6sptX6+JBjqEMZZfKaeF+qc
 jojF/YJF1WKp38ciKxvhuPW50wUk1gvcRT1YOOQDkiM9Y8zgfba3HsB00K3GYA==
X-Gm-Gg: ASbGncvMI5aeWKh9v7O3Ma6SN7ISHVXn1Y/9KBy9bOTy0RLKiEDprtXTTQUUlSFHD5H
 3BfsCxAlysB8xrdwYvG8pLHAPOci9gUxxn+oGzqi/HRP2WB7Ja2PWNiEAi622vny1qzNswjz6a/
 85hi9UFR3RYyiIBxfRdlMAj57Q0etN1LmPBhDe5rytzgGcg6ekjJz0jyY/FhYPp3d9gxRAHY2t2
 AhYC9+NWf7Qv/eU7zQp6tL1fD7r16M0fCz3PbZat4Tg8s63ducf6UVOZaCqTJWQTRqKyYVwYhhP
 lbzVdEQ1/1nkelbjC7t5oZQ9heHa6jOEmQJSiKO1+Sz6/PtD61lU64kKH1bhi2uGiSxZ2hEdkDd
 gApIkGg==
X-Google-Smtp-Source: AGHT+IFeXyOVxpJBuKLqwlWNeeKwHSVbkp2ZEQUHlSwJKNVeuE2vj2Ime+ulaGAN6UWBY/kDRbu4Vw==
X-Received: by 2002:a17:907:971d:b0:ac7:7c45:e9ab with SMTP id
 a640c23a62f3a-ac77c45f89emr132662966b.16.1743446950276; 
 Mon, 31 Mar 2025 11:49:10 -0700 (PDT)
Received: from ?IPV6:2a0a:2300:1:1fe:e2e5:1eb0:886e:bbbf?
 ([2a0a:2300:1:1fe:e2e5:1eb0:886e:bbbf])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac7196ddfebsm650656166b.164.2025.03.31.11.49.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Mar 2025 11:49:09 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <45b7a842-02d2-4b9d-851f-022ce2b9e694@jacekk.info>
Date: Mon, 31 Mar 2025 20:49:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
 <9ad46cc5-0d49-8f51-52ff-05eb7691ef61@intel.com>
 <978d1158-c419-4a59-b0dd-ad5be9869991@lunn.ch>
Content-Language: en-US, pl
In-Reply-To: <978d1158-c419-4a59-b0dd-ad5be9869991@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1743446950; x=1744051750; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Kl0dov9VrLyOk8gwNhMGQPqf9rUFgQMxrLRugxXZN4M=;
 b=A2mFwGA8wHWHflNp2Lks0Xfa1vPJWRoIg+ccqhJWc2goacL6/CJcdPYdbZEyEGa2Ty
 kGuiSIAjBARlwKOfMsfLOcGb7MNt6pv4Ky6GAIHS8bZxIiBg6mAgEIrwQLUjE9D2uu8x
 eTvXmzzCPY7YLJXINhsLr1p8N3wGMgZV0jd+CJo+KgyT2ES96300XujvlZHssY+HHJJ3
 NTAcJGpVvUXImGAawwayVFOPwgSdsxUPyJ9FZalJsidyup1iULZbrxPJXgRX5gIb5pRw
 hDZy8JsHsaxY1Zxys8r2SyD800vyUIqVc5CR9H2967RoJUAffY4BiqAFd7uasRL2Qht6
 TXiw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=A2mFwGA8
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
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

>> From a technical perspective, your patch looks correct. However, if the
>> checksum validation is skipped, there is no way to distinguish between the
>> simple checksum error described above, and actual NVM corruption, which may
>> result in loss of functionality and undefined behavior. This means, that if
>> there is any functional issue with the network adapter on a given system,
>> while checksum validation was suspended by the user, we will not be able to
>> offer support
> 
> We handle this by adding quirks. We know which vendors/products have
> FUBAR checksums, and allow them to be used when the checksum is
> FUBAR. You could do something similar here, add a list of vendors with
> known FUBAR checksums and allow them to be used, but taint the kernel,
> and print a warming that the device is unsupported because the vendor
> messed up the CRC.

Unfortunately at the device level I don't know what is the motherboard 
manufacturer and model to be able to determine whether I have the 
checksum messed up.

I could peek up MAC address in NVM, but even then there is no reliable 
way to know which ranges of MAC addresses are indeed affected.

-- 
Best regards,
   Jacek Kowalski

