Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE31363869A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Nov 2022 10:48:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D926404DB;
	Fri, 25 Nov 2022 09:48:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D926404DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669369731;
	bh=zwfnw+lWQGYGZKoyJBlxSXAoyp8QfCYn57E1RUfqpLI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=arXDViWwi+PgAd2ifpuT21YpjjS7/Oiz8DDrepNPDopn/QssSD7xeojgop9aptBuw
	 63QeuNRVgcqrcVUryzFwUrM+7WaPAX/iDlY2T2zu0hHdBdMVKDT3ALlZRc6+PizfSV
	 0h2qqQOhQdd/tZN70/UybWzDPeejS2Aq3iMmE7AcqqeqXePuWMFepx0I3RvaA6bhq8
	 wjVB/2M6g3ycy8XY755cI+daex04nYNSINqs6iwtVF5ph/OYuEtjmu4RiGAgSXutA3
	 pZ1nai+CqxIK9FjK3ZRoGaN3VdBDAIMGkpJRTrdabcs28hUZp1uhUhKfnVcZI++27k
	 Ald5895p7QB7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-fZ1kpo6UQC; Fri, 25 Nov 2022 09:48:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9012540459;
	Fri, 25 Nov 2022 09:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9012540459
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED7161BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 09:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C468A60BB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 09:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C468A60BB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vA4IrjfDXH79 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Nov 2022 09:48:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D72160AD1
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D72160AD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 09:48:44 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id k7so3529760pll.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Nov 2022 01:48:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fh9lKt/Ex1PEWTAeH6nLeKPXEkO8R8rkyg+dYswqgEE=;
 b=hz64i/bK4NPqQ1HD5uExJbi77tKoMFMINK2gRQ0hFEhC5g7bjrym1qr70d1C9loLuk
 E+zhyTh0+tABAbdU7FgUwoL0xIVjgq8kFzG3EJWs+eskgp0H/aSNivY8h+oj62ft7QU6
 Fue8riBNkVMCxhVdQLxPeBZkoAXRmUjaEThC9FwaBifWS901pweJpDSV858bAstgJl2R
 n/EeSne+Rmy90R1XzxByOJMWqhIWCjLxCMP3b9ucKX3DBJdtTqmrL+3QNRpnWsknfRvz
 ByhK43huweolelg0MHEq2hzn8s6tinsPW9kFLL3VaUlEROj1PEAtmoLZmb/7b1dldll1
 lqdQ==
X-Gm-Message-State: ANoB5pn3jpsv2ySdX5A/X8aKFZ45KnIGC9LH1APistuArEsPRBbGITbW
 tFUbVfOkb36sGIF5An5ZZn0tRw==
X-Google-Smtp-Source: AA0mqf7lZaeE4yg7AW0Zyy+PHMsdV0xTaeowycIugKV0CyHIEnPfVIYVEXLDovr2cbvx7/bzEry1XA==
X-Received: by 2002:a17:903:40c4:b0:188:4f86:e4ea with SMTP id
 t4-20020a17090340c400b001884f86e4eamr18503460pld.59.1669369723802; 
 Fri, 25 Nov 2022 01:48:43 -0800 (PST)
Received: from ?IPV6:2400:4050:c360:8200:8ae8:3c4:c0da:7419?
 ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 r17-20020a63ce51000000b0045751ef6423sm2273887pgi.87.2022.11.25.01.48.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Nov 2022 01:48:43 -0800 (PST)
Message-ID: <4a2d4e3e-5b15-2c58-dc49-92908ab80ad0@daynix.com>
Date: Fri, 25 Nov 2022 18:48:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20221123010926.7924-1-akihiko.odaki@daynix.com>
 <Y34/LDxCnYd6VGJ2@boxer>
Content-Language: en-US
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <Y34/LDxCnYd6VGJ2@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fh9lKt/Ex1PEWTAeH6nLeKPXEkO8R8rkyg+dYswqgEE=;
 b=vDysZeeLfQomwf6B75nRI+HaGjwrhHZIUs5fdZIrRPKP/VbWvL7yQ0ALrxn4dZl7j9
 n+kpaP41Wst0rPmTeoFnCi1nUcqjnbvqBwdn69zyBwUV/DX4wxKIvJ/vlrfJ8V/DUNmg
 Je7abb6o1fqWw+0Owl7vUd5QNv/AEvpp0VaHOT+SOBNUcA8KkJzgDrlQyWWRtEjH6YMb
 id+oeuDWgcYSLAEolbcBqs864ZePbxbPDZZmCwSYUqNYf8Dqrw1ah3nxPAIp87+ybaEc
 OMNm7FyX6fB7gDrl5TTgsNRtySjRrC+DRrN1m5r/w9nqR06/zETDgWY+DnOLP/hj/z9L
 dRJg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=vDysZeeL
Subject: Re: [Intel-wired-lan] [PATCH v3] igb: Allocate MSI-X vector when
 testing
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Yan Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2022/11/24 0:41, Maciej Fijalkowski wrote:
> On Wed, Nov 23, 2022 at 10:09:26AM +0900, Akihiko Odaki wrote:
>> Without this change, the interrupt test fail with MSI-X environment:
>>
>> $ sudo ethtool -t enp0s2 offline
>> [   43.921783] igb 0000:00:02.0: offline testing starting
>> [   44.855824] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Down
>> [   44.961249] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
>> [   51.272202] igb 0000:00:02.0: testing shared interrupt
>> [   56.996975] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
>> The test result is FAIL
>> The test extra info:
>> Register test  (offline)	 0
>> Eeprom test    (offline)	 0
>> Interrupt test (offline)	 4
>> Loopback test  (offline)	 0
>> Link test   (on/offline)	 0
>>
>> Here, "4" means an expected interrupt was not delivered.
>>
>> To fix this, route IRQs correctly to the first MSI-X vector by setting
>> IVAR_MISC. Also, set bit 0 of EIMS so that the vector will not be
>> masked. The interrupt test now runs properly with this change:
> 
> Much better!
> 
>>
>> $ sudo ethtool -t enp0s2 offline
>> [   42.762985] igb 0000:00:02.0: offline testing starting
>> [   50.141967] igb 0000:00:02.0: testing shared interrupt
>> [   56.163957] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX/TX
>> The test result is PASS
>> The test extra info:
>> Register test  (offline)	 0
>> Eeprom test    (offline)	 0
>> Interrupt test (offline)	 0
>> Loopback test  (offline)	 0
>> Link test   (on/offline)	 0
>>
>> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> 
> Same comment as on other patch - justify why there is no fixes tag and
> specify the tree in subject.

I couldn't identify what commit introduced the problem. Please see:
https://lore.kernel.org/netdev/f2457229-865a-57a0-94a1-c5c63b2f30a5@daynix.com/

Regards,
Akihiko Odaki

> 
>> ---
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> index e5f3e7680dc6..ff911af16a4b 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> @@ -1413,6 +1413,8 @@ static int igb_intr_test(struct igb_adapter *adapter, u64 *data)
>>   			*data = 1;
>>   			return -1;
>>   		}
>> +		wr32(E1000_IVAR_MISC, E1000_IVAR_VALID << 8);
>> +		wr32(E1000_EIMS, BIT(0));
>>   	} else if (adapter->flags & IGB_FLAG_HAS_MSI) {
>>   		shared_int = false;
>>   		if (request_irq(irq,
>> -- 
>> 2.38.1
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
