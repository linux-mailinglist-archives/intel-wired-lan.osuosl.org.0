Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9110D462D11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 07:46:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C304440470;
	Tue, 30 Nov 2021 06:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KkS6km9A7ZM4; Tue, 30 Nov 2021 06:46:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D769C40438;
	Tue, 30 Nov 2021 06:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41BE41BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 06:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F2334015E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 06:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JmeiKE7vg9na for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 06:46:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D433400A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 06:46:36 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id 137so16515496wma.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 22:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:cc
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=QNJ3t2LB0sVoFXWxdLfGbSoudvZqAR4Hf/OZxVoLW8g=;
 b=CTPzcDAFFzMDcTf10D1b0MkhNAXpcox4qEAnlhzyPZf2RrDe6yWNLySHOk/UIx2DPi
 yEgYI/uj4Ayf/E5FFSpfbxYWcWNs76l/K9OulOMXjbxDqaldlyaC8e81u/8xklykOX6m
 TmUEfBy4tOOKcR/N81SpaxDWQvpoWPnfK5k9LH1j7dDYXfeKnX0mRGu9F4xbEcVd+lEu
 LJjoIpe9XY5gtdPYLKbff07o+gKJJqBCESJFmXP1ZZ5R6FP2RCtRVP9RFCQmLeEuRdz1
 SbL+a0JzlHsYGLe/QSBfRhkLW3/1m490lj2swn0Cv3qKYmJwHkJ6mKawIoiOxRfOhlRC
 cnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=QNJ3t2LB0sVoFXWxdLfGbSoudvZqAR4Hf/OZxVoLW8g=;
 b=X+vVYaYmjMDErmzjURUanLeQDm8FySg0H6EuNkWX17+mT41H6tpCcwNgIN/KyoUXdU
 I1pyLfto9+KOpnCWPHuqbfIFY3W/rV4KzJB5MBGimoNLZV9/3fLP2GiSuIjyLVJusVXK
 Xj4deLiKV1YGvyvKQm15fNXpHOO096OKtVlLlwQlkJmVU3lQVGLYRQkLzw2m+c+RkvM9
 xDJS6cK8iZZKTCQ723EdX7lxUNuAOd2wzmm9LnXD/RX78IA825i58l46zLbuUM7ewMu3
 hO3mWtrupzUt79IXd6ZbEOZloHzVYsJfBB4C51uh701Tb77zMv0/orxCw3qPSQ6X/BWg
 Ff7w==
X-Gm-Message-State: AOAM530u/4EpH3E2vE/odXTg4Y+1t62b1aZe0FCY05Pol26wj5sZPlpN
 WgWPLnm2QNblvLEJessqnqw=
X-Google-Smtp-Source: ABdhPJw+c4hM9/DCdQfJc6aOhvhbMHsdbwRZZC1Y7Z1T28cEaf4lRQ9m6jK3ppm+GJm+t5ZEn36hmA==
X-Received: by 2002:a05:600c:1f0c:: with SMTP id
 bd12mr2835941wmb.56.1638254794334; 
 Mon, 29 Nov 2021 22:46:34 -0800 (PST)
Received: from ?IPV6:2003:ea:8f1a:f00:982e:c052:6f5c:d61f?
 (p200300ea8f1a0f00982ec0526f5cd61f.dip0.t-ipconnect.de.
 [2003:ea:8f1a:f00:982e:c052:6f5c:d61f])
 by smtp.googlemail.com with ESMTPSA id g18sm1658229wmq.4.2021.11.29.22.46.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 22:46:33 -0800 (PST)
Message-ID: <6edc23a1-5907-3a41-7b46-8d53c5664a56@gmail.com>
Date: Tue, 30 Nov 2021 07:46:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
 <20211129171712.500e37cb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <20211129171712.500e37cb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix deadlock caused by
 taking RTNL in RPM resume path
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
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 30.11.2021 02:17, Jakub Kicinski wrote:
> On Mon, 29 Nov 2021 22:14:06 +0100 Heiner Kallweit wrote:
>> -	rtnl_lock();
>> +	if (!rpm)
>> +		rtnl_lock();
> 
> Is there an ASSERT_RTNL() hidden in any of the below? Can we add one?
> Unless we're 100% confident nobody will RPM resume without rtnl held..
> 

Not sure whether igb uses RPM the same way as r8169. There the device
is runtime-suspended (D3hot) w/o link. Once cable is plugged in the PHY
triggers a PME, and PCI core runtime-resumes the device (MAC).
In this case RTNL isn't held by the caller. Therefore I don't think
it's safe to assume that all callers hold RTNL.

>>  	if (!err && netif_running(netdev))
>>  		err = __igb_open(netdev, true);
>>  
>>  	if (!err)
>>  		netif_device_attach(netdev);
>> -	rtnl_unlock();
>> +	if (!rpm)
>> +		rtnl_unlock();

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
