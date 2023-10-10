Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C867BFA74
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 13:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5F32418FF;
	Tue, 10 Oct 2023 11:57:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5F32418FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696939062;
	bh=ConTX3W+DZZWdaHkBWq5QuEWyqL9fIp8DzUjMxkm24c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fA2+XvrKpSq4K50655OQlP7tQVjQ+r5Pij6+y5uuIvSywHn9uQxLB1rdnsvBFUFNy
	 Q1hj+wBha8wEwBIuCllEaCrsDMMNBIGS0CzztDg3E1/rI5Gi6dxhdSZ0E6KomCAQjF
	 7UyWln47GQsViTL/IzYwFgTUHh6QMv5lRzxvQfZzlHJEneJWYyYYm2YRnGZO9h8PAJ
	 e9em141x55unOcaCFNdU0wojL8O69raMkc3SwID9sty6r1YII3ZzxYqDT4M2den1+2
	 yJMgKkqpdqGUHTP2bsvZb+1yMMAqBiDCFNCsFo+KCxmXNJEq11qIJWJVgyPTBCjh5S
	 yNuTgZRXdH7UA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IKERX9ulnbzN; Tue, 10 Oct 2023 11:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EB8C41847;
	Tue, 10 Oct 2023 11:57:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EB8C41847
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4ED081BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21B6E41877
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:57:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21B6E41877
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-XrXR4KRKpf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 11:57:34 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF2C241847
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:57:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF2C241847
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-610-0EtFt007M3W-ubRe6VjB3g-1; Tue, 10 Oct 2023 07:57:31 -0400
X-MC-Unique: 0EtFt007M3W-ubRe6VjB3g-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-9ae7663e604so424990366b.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 04:57:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696939050; x=1697543850;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=apF+nfM7HXw+26GGgbpEJXK1XSgL2lFn4qI9P5p8J3I=;
 b=nKZngo0yCNA2EiBTQ9jMz4W9114eemyKQABYSNDzxFf0hYvtRSg/Vv8YraCDrxwWnr
 7CB06KBAMdBAWMf/h2S0vnVFkyESJWvvx9E+0xvX4b6vl0ztUBexE3Du6E+9HOupl/B7
 zZ57sEGcbkhQGsi5WDvMxJoM+Ze1hR+RfmVm4hVlxW6sleczWPMLkHETRdAe7Ka2hYA6
 HAf8882OTgfsyLLj6XVu8RAHY0xU65ten/PreBmXejv6nXkOprsoPeJbcVJ5JC/Zm8lu
 ivLs9jlL1hQ7c9Ydb+S3CAGvJLsLqKeYhutWUu4SnEybu3fyaPFaQUiqUQ4AFt0FI+hl
 OfZw==
X-Gm-Message-State: AOJu0YyvEfr/DosOj4Bks11QcPGa0XF101xsTfp1c1XtmLQjBM/JDHMh
 9Z03APBsp0/UECzu/j5ZWvNv+VPEqdeBNNh2MLmj+084IIkDYH7Cl6EmoZAgpbMt25cqr7EfOwI
 KCeyDjd58I8oT3rixciJGghL+BecJwQ==
X-Received: by 2002:a17:906:8b:b0:9a5:846d:d823 with SMTP id
 11-20020a170906008b00b009a5846dd823mr17855310ejc.45.1696939050525; 
 Tue, 10 Oct 2023 04:57:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHV0m43XgnK4Y7cEJ3rC6QDLMg7Y7UgS8p3o9Jv+bguSarn+cxCws715YgZLR40DDGXOdCePQ==
X-Received: by 2002:a17:906:8b:b0:9a5:846d:d823 with SMTP id
 11-20020a170906008b00b009a5846dd823mr17855302ejc.45.1696939050236; 
 Tue, 10 Oct 2023 04:57:30 -0700 (PDT)
Received: from [10.43.2.47] (nat-pool-brq-t.redhat.com. [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id
 a24-20020a170906685800b009828e26e519sm8295036ejs.122.2023.10.10.04.57.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Oct 2023 04:57:29 -0700 (PDT)
Message-ID: <a65e79ff-7894-4095-b3bb-948b4cfa04e0@redhat.com>
Date: Tue, 10 Oct 2023 13:57:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-3-mschmidt@redhat.com>
 <MW4PR11MB5776FAE3D86203A223769BABFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
From: Michal Schmidt <mschmidt@redhat.com>
In-Reply-To: <MW4PR11MB5776FAE3D86203A223769BABFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1696939052;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=apF+nfM7HXw+26GGgbpEJXK1XSgL2lFn4qI9P5p8J3I=;
 b=aZQQhsYvYvTpL/ppaFET3rPsK/H4gqpixDoPyeRpwGtPQuBEzfN0eAFBKXZK+yej3y6tCV
 9H2lDDLBTz7p/VzE/Lt2P59Rj++pnxcSTSMyun2DRudjOCkLxXFRiyRPQlyC/sWKha/TW7
 8C7dGHx8klM48k6GKAsfrX63TIM0eBM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=aZQQhsYv
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
 mutex_trylock+sleep loops
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dne 10. 10. 23 v 13:30 Drewek, Wojciech napsal:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Michal Schmidt
>> Sent: Tuesday, October 10, 2023 2:25 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
>> <radoslawx.tyl@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
>> Subject: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
>> mutex_trylock+sleep loops
>>
>> This pattern appears in two places in the iavf source code:
>>    while (!mutex_trylock(...))
>>        usleep_range(...);
> 
> I found a few other places with similar pattern (iavf_configure_clsflower e.g).
> Do you think we can fix them as well?

I think so. But those are with some sort of a timeout, so replacing them 
would be slightly less obviously correct than these here. Later.
Michal

>> That's just mutex_lock with extra steps.
>> The pattern is a leftover from when iavf used bit flags instead of
>> mutexes for locking. Commit 5ac49f3c2702 ("iavf: use mutexes for locking
>> of critical sections") replaced test_and_set_bit with !mutex_trylock,
>> preserving the pattern.
>>
>> Simplify it to mutex_lock.
>>
>> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++----
>>   1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index 98ecf5d5a2f2..03156ca523fe 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -3016,8 +3016,7 @@ static void iavf_reset_task(struct work_struct
>> *work)
>>   		return;
>>   	}
>>
>> -	while (!mutex_trylock(&adapter->client_lock))
>> -		usleep_range(500, 1000);
>> +	mutex_lock(&adapter->client_lock);
>>   	if (CLIENT_ENABLED(adapter)) {
>>   		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
>>   				    IAVF_FLAG_CLIENT_NEEDS_CLOSE |
>> @@ -5069,8 +5068,7 @@ static int __maybe_unused iavf_suspend(struct
>> device *dev_d)
>>
>>   	netif_device_detach(netdev);
>>
>> -	while (!mutex_trylock(&adapter->crit_lock))
>> -		usleep_range(500, 1000);
>> +	mutex_lock(&adapter->crit_lock);
>>
>>   	if (netif_running(netdev)) {
>>   		rtnl_lock();
>> --
>> 2.41.0
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
