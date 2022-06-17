Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BCF54F945
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jun 2022 16:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 466B5417BF;
	Fri, 17 Jun 2022 14:37:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 466B5417BF
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ghzqcjxr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZ6UjNciNa99; Fri, 17 Jun 2022 14:37:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D14854177E;
	Fri, 17 Jun 2022 14:37:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D14854177E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3AF161BF373
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 14:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22C61845CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 14:37:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22C61845CD
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ghzqcjxr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CHfUhvH4jys for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jun 2022 14:37:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B0F7845CB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B0F7845CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 14:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655476622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DzLEVlO+p/pWeRclfP0VKhTEDj31pzoDzWmMqKZhHhk=;
 b=Ghzqcjxrbu/gKnii8nRK6Yp4DP6zYMdzKM/gF5nLiAOdp3CeMJHfGHIvWxBk6tMYUHvSpY
 vFclI7qacUrNkmS/S7y6SXALaiwnAk2sOSVD4EZpHPd+TYdv88ArHJauK9VVwhm7xL2c3S
 zgNiG5c1BhX1wRNo6HhBTA11C06kE2Y=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-221-q1yc2n7jNFqCf7bsGi3twg-1; Fri, 17 Jun 2022 10:37:01 -0400
X-MC-Unique: q1yc2n7jNFqCf7bsGi3twg-1
Received: by mail-lf1-f71.google.com with SMTP id
 b2-20020a0565120b8200b00477a4532448so2451207lfv.22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 07:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=DzLEVlO+p/pWeRclfP0VKhTEDj31pzoDzWmMqKZhHhk=;
 b=7TmwkCpDGAl+CAPIVbitFlqghsUdCC6/FbB4jVKtOXse78aPbxfgbLIR753YemaBWU
 pQBG2O1lo8rZdG9GWt74sb965hHt/O0muSqBrP8NZjbrmM7/MI1uDhga0u47P0nHDMBV
 0TGJwjRKjMUB1Bz+eNU+bMeEUK9kvYYsanIXD58EZCwUmR6XwzQLm4YhOZ5qyP8upXWU
 uyGQYI1yAlfbPKQdAg3CbtqlqPsbU1BWd634Ltt3e27PRI3GNnSSW1lz5GYx3+Q0rN/v
 qTp1d0EuTmInTmreHX91+AS4LXwG76AFOR+8ieyE/dFDiEda/q8a0G8KDnvBIlafh3eT
 JVJQ==
X-Gm-Message-State: AJIora81glBJf2QQwmm15KiMbqcoAgzcsp9bDGfh7JAOpT0XIDM0nAJI
 gVcH8nYelqoXt3ppmDsoBfBzQZzAepH54Ns44VZ0ZiJLrNPa01aYpM9m1qcLi2iOArNqf+0mnu7
 qS8eiBNJcgjPyltpmCozgFoA8cwIgjw==
X-Received: by 2002:a05:6512:e9f:b0:479:5a2f:bc4d with SMTP id
 bi31-20020a0565120e9f00b004795a2fbc4dmr5861769lfb.619.1655476619561; 
 Fri, 17 Jun 2022 07:36:59 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vv7NN6RQHghSzY9rni3dAZpaQeqU+hVbM15hIWb5QKHNFJS24jXgmb2aZlmInLs60+ll4H/A==
X-Received: by 2002:a05:6512:e9f:b0:479:5a2f:bc4d with SMTP id
 bi31-20020a0565120e9f00b004795a2fbc4dmr5861744lfb.619.1655476619216; 
 Fri, 17 Jun 2022 07:36:59 -0700 (PDT)
Received: from [192.168.0.50] (87-59-106-155-cable.dk.customer.tdc.net.
 [87.59.106.155]) by smtp.gmail.com with ESMTPSA id
 a5-20020a2eb165000000b002553ab60e17sm568839ljm.122.2022.06.17.07.36.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Jun 2022 07:36:58 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <108bf94b-85a6-98d4-175b-2c0d43e17b11@redhat.com>
Date: Fri, 17 Jun 2022 16:36:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com
References: <e5c01d549dc37bff18e46aeabd6fb28a7bcf84be.1655388571.git.lorenzo@kernel.org>
 <f137891f-eb33-b32b-5a16-912eb524ddef@intel.com>
In-Reply-To: <f137891f-eb33-b32b-5a16-912eb524ddef@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix a use-after-free issue
 in igb_clean_tx_ring
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
Cc: edumazet@google.com, intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 16/06/2022 20.26, Jesse Brandeburg wrote:
> On 6/16/2022 7:13 AM, Lorenzo Bianconi wrote:
>> Fix the following use-after-free bug in igb_clean_tx_ring routine when
>> the NIC is running in XDP mode. The issue can be triggered redirecting
>> traffic into the igb NIC and then closing the device while the traffic
>> is flowing.
> 
> <snip>
> 
>>
>> Fixes: 9cbc948b5a20c ("igb: add XDP support")
>> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> 
> Thanks Lorenzo, @maintainers this fix seems simple enough you could 
> directly apply it without going through intel-wired-lan, once you think 
> it's ready.
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 

Sounds good to me.

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
