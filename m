Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2438463257
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 12:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 534BC40454;
	Tue, 30 Nov 2021 11:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Goe8Da0k7hBX; Tue, 30 Nov 2021 11:25:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A0DE40390;
	Tue, 30 Nov 2021 11:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A21E61BF302
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 11:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90999817AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 11:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LP0EGDDxugI7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 11:25:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F263F817AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 11:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638271552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nW4v0Dmvu3ppM84D0W/9hq/3S9zMfrsXcIrV1YMd8MM=;
 b=Noewhn56UFCnPRg8dbtCVxXqV6I3+wStSrsRzYYNkZrNLmaeA8LUE7RpIuYmL8rHidR6ZZ
 /nKjK7LrGE+DWoVFN/Ezf4uLhr5PWfF/9IBSxdg8UJocgro8uRC0pIhEv50A2WMen1sLYf
 ILZd6DHhZ1dVsxJhTxZmRwdTNFl751w=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-312-w6KecncpN1enibWe9gqneg-1; Tue, 30 Nov 2021 06:25:50 -0500
X-MC-Unique: w6KecncpN1enibWe9gqneg-1
Received: by mail-ed1-f71.google.com with SMTP id
 p4-20020aa7d304000000b003e7ef120a37so16588851edq.16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 03:25:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=nW4v0Dmvu3ppM84D0W/9hq/3S9zMfrsXcIrV1YMd8MM=;
 b=ny0QOxM+ls3D8rT14mGOAJHKbUxcfhVELrm1I6NVvHHl54sMISmOxp+JlYr0lyml8g
 GI6x1h/b8rNzfnnfoHHbl5Z7OeblYLN84fqAk5D7HKwldIANmEI6ro3EE42fG2JAZssr
 H/lNySHH8UDboo8ccNXT/lDEYLLavAZ32EL+DyG5+IUYF0afle0w6Q4PrIbpx/RSUFZj
 JfrRPpoq8ur282Ud/jkn3jloij3A6QNk+Iqqd0EF1gZhrsSXcVQEY4jNQ2fUC76lSy7k
 MKgV4bAriFrYhp7zgCgy+8KT/xQpEXZ7PS3zQY22M6FujPHOpVfE8W6wgno5eUGdTIQb
 l6Ig==
X-Gm-Message-State: AOAM532jhG/03GfQkkMuWq1C0FujX0lKuQbsYm3egAsOJcls0/w2wEWB
 e2gNkWMTDWoqnNxyI42v3KZXbQpsRTo2SsWj8P3bJ8YV7wiXhZIY7EbCqNe6rOpM+BS8wQDzXlX
 vVNN099EULxBrbBo5+Vn0sdZ+CgGPWw==
X-Received: by 2002:a17:907:608f:: with SMTP id
 ht15mr31223518ejc.300.1638271549518; 
 Tue, 30 Nov 2021 03:25:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxbSaZ41fs8nEN31mLbWTtd1uwJu8NTP/2exa47vh3cgbBRaxniN1rAzmjNptegFE9pWOwHVQ==
X-Received: by 2002:a17:907:608f:: with SMTP id
 ht15mr31223478ejc.300.1638271549268; 
 Tue, 30 Nov 2021 03:25:49 -0800 (PST)
Received: from [192.168.2.13] (3-14-107-185.static.kviknet.dk. [185.107.14.3])
 by smtp.gmail.com with ESMTPSA id
 mp9sm9230930ejc.106.2021.11.30.03.25.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Nov 2021 03:25:48 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <e462ac19-0598-5b68-eab9-93358b7e7a57@redhat.com>
Date: Tue, 30 Nov 2021 12:25:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "jbrouer@redhat.com" <jbrouer@redhat.com>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700859087.565980.3578855072170209153.stgit@firesoul>
 <20211126161649.151100-1-alexandr.lobakin@intel.com>
 <6de05aea-9cf4-c938-eff2-9e3b138512a4@redhat.com>
 <20211129145303.10507-1-alexandr.lobakin@intel.com>
 <20211129181320.579477-1-alexandr.lobakin@intel.com>
 <9948428f33d013105108872d51f7e6ebec21203c.camel@intel.com>
In-Reply-To: <9948428f33d013105108872d51f7e6ebec21203c.camel@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] igc: enable XDP metadata
 in driver
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bjorn@kernel.org" <bjorn@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 brouer@redhat.com, "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "borkmann@iogearbox.net" <borkmann@iogearbox.net>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 29/11/2021 20.03, Nguyen, Anthony L wrote:
> On Mon, 2021-11-29 at 19:13 +0100, Alexander Lobakin wrote:
>> From: Alexander Lobakin <alexandr.lobakin@intel.com>
>> Date: Mon, 29 Nov 2021 15:53:03 +0100
>>
>>> From: Jesper Dangaard Brouer <jbrouer@redhat.com>
>>> Date: Mon, 29 Nov 2021 15:39:04 +0100
>>>
>>>> On 26/11/2021 17.16, Alexander Lobakin wrote:
>>>>> From: Jesper Dangaard Brouer <brouer@redhat.com>
>>>>> Date: Mon, 15 Nov 2021 21:36:30 +0100
>>>>>
>>>>>> Enabling the XDP bpf_prog access to data_meta area is a very
>>>>>> small
>>>>>> change. Hint passing 'true' to xdp_prepare_buff().
>>
>> [ snip ]
[ snip ]
>>
>>>
>>>> Tony is it worth resending a V2 of this patch?
>>>
>>> Tony, you can take it as it is if you want, I'll correct it later
>>> in
>>> mine. Up to you.
>>
>> My "fixup" looks like (in case of v2 needed or so):
> 
> Thanks Al. If Jesper is ok with this, I'll incorporate it in before
> sending the pull request to netdev. Otherwise, you can do it as follow
> on in the other series you previously referenced.

I'm fine with you incorporating this change. Thanks! :-)
--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
