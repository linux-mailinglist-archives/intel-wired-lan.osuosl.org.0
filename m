Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1BE96E174
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 20:02:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9A7181326;
	Thu,  5 Sep 2024 18:02:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N60yogEQmL5Q; Thu,  5 Sep 2024 18:02:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8DBD81329
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725559368;
	bh=roHMeVfpM72nhdopD5nInjvN5CDvhNQCgAGjHCepxw0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VldEfkHp73920JcMgzqyFlupMBmbASR+Z8wwIVkv4dBVQx/FyT5G56Fk1baBf3yFd
	 7X6nI0VY6OI5p/SANqdY9CVKCfr+uXFnaWGbKv+0pPlOaXWASSWa35GZnisTD59G07
	 HCyFk7QOydNSx8Tq7X/Gf0LIAK7UlTvmCaCGo4vLU9d3rqbz+XUU+e47jsKlAKrJKQ
	 SnwOBOR/tcafOlpZlj5r/hI/xIhU+5hjLnYesXgQL9dq/Rv/RxdxPXznynpZrIxQvD
	 vHfcxKAcRQGUm1BS1mVVdnsRYm2+4CSVThsqYswCt7DDXbtUD2WegISVdc3/8JavhK
	 jadZLnyQDqF+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8DBD81329;
	Thu,  5 Sep 2024 18:02:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAF3E1BF23F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 18:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4CC560AA1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 18:02:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3fsUJeLZoILz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 18:02:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A8B0260627
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8B0260627
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8B0260627
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 18:02:45 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-349-thMoizR2PKq5_3BlxOd22w-1; Thu, 05 Sep 2024 14:02:43 -0400
X-MC-Unique: thMoizR2PKq5_3BlxOd22w-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-42bb68e1706so9537285e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Sep 2024 11:02:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725559362; x=1726164162;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=roHMeVfpM72nhdopD5nInjvN5CDvhNQCgAGjHCepxw0=;
 b=Nk0rG10kyWGJ1iDRYyqUCEZJdbpTC4RDpti1F7HW5E/37jxdFQipTbPrWChX9RZHEh
 OKOcEfuY4zv5b1cWKTpTVM7gE3LF6Vq+8X31vw2NVW3v8aSa11EACYBwcao+Nl9E7k0k
 HzGL7GnqooJuQV1KTHZ7kYDwo24bpQ3Zlkup/lEgwehLQfQj1EdBY60xd+k5gDlQUcPX
 z8gIyQ109bgSGDRQgnE+6zzdH3JC+KIz0ZOy5aUNvQB15/9trs05nSyBLbU4P8Kp6Zng
 /rYsvZT2lrDVsrCel9zm3DCWh5ZiGcyWdVqgxNdl9F/dtuC6GnYRK7hlbqM5aJJiS/Ux
 a8Sw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVlGoeqpF5FK6FBxqDS0mnutX8UmXmkCOzn4A1Z+FMBki45FUdZqZ8tavvd3+kdC9Sitb5sM5JcLNUgNfNqnSY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxTfqfMDioxFzWiFXTdx/3P67BvgkQLjjh84VnhxtkoTLGlqEhH
 XiVDY7ez6yjcd24dfni5qQEWkVaZdzvu3Pgq9FfZYKTY/qpyIUXfsyWHfNEYIbxle/0yTkFqyK1
 J+Tp3ActPM5DrYDWLL51gc9virjN4NL2WgOSEYNuIGdcdso1UAnVpVV6ptWgAjyXd69I=
X-Received: by 2002:a05:600c:3ba6:b0:428:e09d:3c with SMTP id
 5b1f17b1804b1-42c9f9e19demr55655e9.33.1725559362047; 
 Thu, 05 Sep 2024 11:02:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFM7dtnarUxGlrKVgRtwKFRRAKunwM7qUZpmhPs8q0DiH25QRQFO41dHQpmteCZ2uYmeo0sQA==
X-Received: by 2002:a05:600c:3ba6:b0:428:e09d:3c with SMTP id
 5b1f17b1804b1-42c9f9e19demr55335e9.33.1725559361488; 
 Thu, 05 Sep 2024 11:02:41 -0700 (PDT)
Received: from [192.168.88.27] (146-241-55-250.dyn.eolo.it. [146.241.55.250])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6df0a0asm240201845e9.13.2024.09.05.11.02.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Sep 2024 11:02:40 -0700 (PDT)
Message-ID: <8fba5626-f4e0-47c3-b022-a7ca9ca1a93f@redhat.com>
Date: Thu, 5 Sep 2024 20:02:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1725457317.git.pabeni@redhat.com>
 <160421ccd6deedfd4d531f0239e80077f19db1d0.1725457317.git.pabeni@redhat.com>
 <20240904183329.5c186909@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240904183329.5c186909@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725559364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=roHMeVfpM72nhdopD5nInjvN5CDvhNQCgAGjHCepxw0=;
 b=TfdMKDF4tEAudtrRyAJOvXbmbokUdGzJJXhPv+2X3zyaSM9+ocTSaC/rFTBa573ly4lpzT
 zO87wjeehCub6kJ9+JlkK11dl06OhJFI6N3NFwe0tYMurYf7VM3u4Nz9wjVRbepB5/L7Oh
 GG2dhcEMY3jFkvnpLo228ZoC0iGzBB8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=TfdMKDF4
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 07/15] net-shapers:
 implement shaper cleanup on queue deletion
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/5/24 03:33, Jakub Kicinski wrote:
> On Wed,  4 Sep 2024 15:53:39 +0200 Paolo Abeni wrote:
>> +		net_shaper_set_real_num_tx_queues(dev, txq);
>> +
>>   		dev_qdisc_change_real_num_tx(dev, txq);
>>   
>>   		dev->real_num_tx_queues = txq;
> 
> The dev->lock has to be taken here, around those three lines,
> and then set / group must check QUEUE ids against
> dev->real_num_tx_queues, no? Otherwise the work
> net_shaper_set_real_num_tx_queues() does is prone to races?

Yes, I think such race exists, but I'm unsure that tacking the lock 
around the above code will be enough.

i.e. if the relevant devices has 16 channel queues the set() races with 
a channel reconf on different CPUs:

CPU 1						CPU 2

set_channels(8)

driver_set_channel()
// actually change the number of queues to
// 8, dev->real_num_tx_queues is still 16
// dev->lock is not held yet because the
// driver still has to call
// netif_set_real_num_tx_queues()
						set(QUEUE_15,...)
						// will pass validation
						// but queue 15 does not
						// exist anymore

Acquiring dev->lock around set_channel() will not be enough: some driver 
change the channels number i.e. when enabling XDP.

I think/fear we need to replace the dev->lock with the rtnl lock to 
solve the race for good.

/P



