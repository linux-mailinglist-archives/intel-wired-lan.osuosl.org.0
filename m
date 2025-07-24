Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE87B10802
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 12:46:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 167626122A;
	Thu, 24 Jul 2025 10:46:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7OFWsNdNGN8; Thu, 24 Jul 2025 10:46:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5381461182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753353977;
	bh=YEUPeEfAoqVDN5AzS+Zi6ECP6+DLN/BEyFRoJmYLtxk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n2Sjg67n0UZrYw0EAiU1caOzFwiTBSQtBxw6UlIFlSYIwLAizdKJweMFy1pQiBuX3
	 HcEjfXv3ld2f8gtDdujSkhctmACviat4dCqzklvCOQQXJI7SWzzidrYNGVUKPD1jVD
	 2rF4czSftiZhVjFy1ym2X9GTeZV4VzLQ4ISzjRCle1saWhlVg9jRCAvStAxINZAXVx
	 b1FUd/n0xQHTBYrhRmEkN79QPfemp5cOKsXfbDZG3/kZUUnHfpax7PFONUjBSA4HT2
	 3OhJsvoXVH6QsO6mcMElnbSIj6PMLpQLoC5xZ3TYb3dwH5hiwp8sIZ4NaqCOdIYHxi
	 Rfcm9UKDJz6rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5381461182;
	Thu, 24 Jul 2025 10:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D353128
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E853403CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:46:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v9DkgGZ9yYpE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 10:46:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=ttoukan.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2E1B7400A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E1B7400A9
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E1B7400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:46:14 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-4560add6cd2so7145385e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 03:46:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753353972; x=1753958772;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YEUPeEfAoqVDN5AzS+Zi6ECP6+DLN/BEyFRoJmYLtxk=;
 b=QVHEk1QVO6dnvEy1mvtC1el4uwgPsCPj0qmhzIqoBURnmbjOxcbkmYDinSa/hHjN1d
 K32QRppPtszp+o7Dy8FAdw3P6zXl5anDPYc+tDNs8q0tJNOs/UTQ3u6HSbuZSZ+QSBZ6
 MomokOuQtl4qAgbPijRv89Ovwu+ui6oBLo4w7JQON2HZb3BJlxUl5l9qM6Zp9GCSnPVe
 KlVWLq+ElE0IiUGd5SF/7xSLZEc7NVG74KAOpn2FjtpgnhWxQ366M2J1QkdszSDQorfQ
 QW3MxQWGC2xyj1qNgVz6lpcJWSlyY42g3KMsiPyoZ8Rux3LJqZvOx3Qe79Ksd9Am9yVL
 TKfw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWzrVGctj2O3Elk+kGYip9bz6mHLCHuHjr8L75DkrJOFL7Wn4s4YjtzBUjkLqfGP3mQHXsAqV6mTk5UXXIIeis=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywb50KwEDjz4aUNzKFHES4UmW95qojn1Ijfnkd5/v8k1QfjzHlc
 AvXPyWdCI4S01ThwGMY4IyubYMFY+/pUTMF97jlAVhOcTCFmd/DvlhQv
X-Gm-Gg: ASbGncv4Tg4fWDjPx8noLCDBfHn5BFIOV2Hz9aBO4MRddl2MGEueiGX1uFpN+ooQjZ/
 v3/5OzlseUmYna7dhshU80QWZKunyW0ouaIr95hCb2x2sOveIpCx68FnY+B7SgwEuEZQsrjjs+X
 IJ3oYZdWfje9bZRPM9tcmGiOF7Vt9um4lRYKtmjCD4eGwe76bO+03ChD26J4jzAyYnTyJTxku/O
 xgO+L6g6CSttRhRkWGR92zqdYZMd3oQ3h+DyLNQcEOWTA+9goPM+86lxXYT7aeIbKuW2+hoYbpV
 c4aUeYHnF7HQ5HvMbGnBg8CnrofGxvqEI15LK4gigAl97QRVw2w3oc63BOwLUEHSK4Ttp+TTCXZ
 jkdIX78ZgJ4LCh3D18lTC+y+SqSh8GB6nfIA40YUJbC9piyI=
X-Google-Smtp-Source: AGHT+IGtbri2LyVwVV5y2rXjxBpJkNTC31WMYq6VcMg7L3LFbeb1UNBKa0ttb0d56fjHKoQjRi9rpw==
X-Received: by 2002:a05:600c:4f06:b0:450:c9e3:91fe with SMTP id
 5b1f17b1804b1-45870973ccbmr11393355e9.0.1753353971581; 
 Thu, 24 Jul 2025 03:46:11 -0700 (PDT)
Received: from [10.221.199.138] ([165.85.126.46])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b76fcb8205sm1773660f8f.55.2025.07.24.03.46.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Jul 2025 03:46:11 -0700 (PDT)
Message-ID: <6892bb46-e2eb-4373-9ac0-6c43eca78b8e@gmail.com>
Date: Thu, 24 Jul 2025 13:46:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Tariq Toukan <tariqt@nvidia.com>
Cc: Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>,
 Jiri Pirko <jiri@nvidia.com>, Saeed Mahameed <saeed@kernel.org>,
 Gal Pressman <gal@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Shahar Shitrit <shshitrit@nvidia.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Brett Creeley <brett.creeley@amd.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Cai Huoqing
 <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>,
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
 <20250718174737.1d1177cd@kernel.org>
Content-Language: en-US
From: Tariq Toukan <ttoukan.linux@gmail.com>
In-Reply-To: <20250718174737.1d1177cd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753353972; x=1753958772; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YEUPeEfAoqVDN5AzS+Zi6ECP6+DLN/BEyFRoJmYLtxk=;
 b=bruAPcy7cpkyiPUqRCskDsq80B9b3qe5HdBbl7RWnDKjrsLJUVyZrAnqomRdBl0/LG
 hBbpkmLe5t0qDpXegczlmpQMTHHj1rDE8ZxsjxmJb0NvZYz3y/RgAyX73RYq6sa6dXFz
 lAKHyyLDh6JzK9TJgVcRKXjq7Y+ILQIoLgaDzWDt8LeUQhjRQlPoXW83BcFPRLjS/X7J
 GJSGFQ/nbDzW9y67QSww+l66xUYUqmfMlIzoXubKQRyqqpK6ZGcObHhu8EI1XrBeAI4c
 3D8QlV4DWs7Lw9KdIENqWvV4eK6QeS7iHkAj3ACfeO4cPa96m+dSHeJlfsXBj1p+oovv
 dNkQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=bruAPcy7
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] Expose grace period
 delay for devlink health reporter
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



On 19/07/2025 3:47, Jakub Kicinski wrote:
> On Thu, 17 Jul 2025 19:07:17 +0300 Tariq Toukan wrote:
>> Currently, the devlink health reporter initiates the grace period
>> immediately after recovering an error, which blocks further recovery
>> attempts until the grace period concludes. Since additional errors
>> are not generally expected during this short interval, any new error
>> reported during the grace period is not only rejected but also causes
>> the reporter to enter an error state that requires manual intervention.
>>
>> This approach poses a problem in scenarios where a single root cause
>> triggers multiple related errors in quick succession - for example,
>> a PCI issue affecting multiple hardware queues. Because these errors
>> are closely related and occur rapidly, it is more effective to handle
>> them together rather than handling only the first one reported and
>> blocking any subsequent recovery attempts. Furthermore, setting the
>> reporter to an error state in this context can be misleading, as these
>> multiple errors are manifestations of a single underlying issue, making
>> it unlike the general case where additional errors are not expected
>> during the grace period.
>>
>> To resolve this, introduce a configurable grace period delay attribute
>> to the devlink health reporter. This delay starts when the first error
>> is recovered and lasts for a user-defined duration. Once this grace
>> period delay expires, the actual grace period begins. After the grace
>> period ends, a new reported error will start the same flow again.
>>
>> Timeline summary:
>>
>> ----|--------|------------------------------/----------------------/--
>> error is  error is    grace period delay          grace period
>> reported  recovered  (recoveries allowed)     (recoveries blocked)
>>
>> With grace period delay, create a time window during which recovery
>> attempts are permitted, allowing all reported errors to be handled
>> sequentially before the grace period starts. Once the grace period
>> begins, it prevents any further error recoveries until it ends.
> 
> We are rate limiting recoveries, the "networking solution" to the
> problem you're describing would be to introduce a burst size.
> Some kind of poor man's token bucket filter.
> 
> Could you say more about what designs were considered and why this
> one was chosen?
> 

Please see below.
If no more comments, I'll add the below to the cover letter and re-spin.

Regards,
Tariq

Design alternatives considered:

1. Recover all queues upon any error:
    A brute-force approach that recovers all queues on any error.
    While simple, it is overly aggressive and disrupts unaffected queues
    unnecessarily. Also, because this is handled entirely within the
    driver, it leads to a driver-specific implementation rather than a
    generic one.

2. Per-queue reporter:
    This design would isolate recovery handling per SQ or RQ, effectively
    removing interdependencies between queues. While conceptually clean,
    it introduces significant scalability challenges as the number of
    queues grows, as well as synchronization challenges across multiple
    reporters.

3. Error aggregation with delayed handling:
    Errors arriving during the grace period are saved and processed after
    it ends. While addressing the issue of related errors whose recovery
    is aborted as grace period started, this adds complexity due to
    synchronization needs and contradicts the assumption that no errors
    should occur during a healthy system’s grace period. Also, this
    breaks the important role of grace period in preventing an infinite
    loop of immediate error detection following recovery. In such cases
    we want to stop.

4. Allowing a fixed burst of errors before starting grace period:
    Allows a set number of recoveries before the grace period begins.
    However, it also requires limiting the error reporting window.
    To keep the design simple, the burst threshold becomes redundant.

The grace period delay design was chosen for its simplicity and
precision in addressing the problem at hand. It effectively captures
the temporal correlation of related errors and aligns with the original
intent of the grace period as a stabilization window where further
errors are unexpected, and if they do occur, they indicate an abnormal
system state.



