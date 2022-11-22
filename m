Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E92C633D62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 14:17:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BA7461023;
	Tue, 22 Nov 2022 13:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BA7461023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669123073;
	bh=HEdqgPBr3fbvBKLECV3nWVicQ5lT6DiZcwjIRzz8K0A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=86wFMk+de3+ZsjuhSabCKz3hp4/hhinVeocd3XCknPVFKTx1r4mCV60EobSGM1oHD
	 hX8ihOAp9b29+JCU+sdctSPM4YZOtJXP6HkGFljQ5MK/4aj8CwNhLOieddPCRfUMyT
	 NvQBToGKo2dHjwt6/S+/jFuLG7ck7QHdj++80J8VwI/nA9eoG8gNkMV5bdqoxj0Bas
	 WK7DcLI4Tvhsn+sFV6NTdLTBHjpmSF2CeaIO2HM1PQq8py7jZYp3dqbP1G7XrDkyT6
	 mDbsazdrOwIg+l07oTWR7tb37pgxzTgw4ccH9YCXjThc6r49y4hPxm50jNDrKSagDN
	 1BaeqXDur5l3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oVdDaWZlENow; Tue, 22 Nov 2022 13:17:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 340886101D;
	Tue, 22 Nov 2022 13:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 340886101D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92F2B1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B60C61001
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B60C61001
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mU5Ok9DUXn89 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 13:17:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A6856101C
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A6856101C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 13:17:46 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id f9so9846104pgf.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 05:17:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Px5PFcbBcn5kKKxwkSdASImn/3PTZhLKqsWw3Vdjrd0=;
 b=a4l96P0DefbHwetTspqmqJfC6jNbZVpvJg1ykQkvDpj3E6+bIGoz6czPRVHySOOCXw
 RhIxiUj1FjlcBA6MCgs1741vDPWpXp+VqzVOfSIb3HxRyPW3BZ29XP2wxMAv8QQz1PUO
 NVQ9pZC56BB/I0tafaUHXpf109rMEYOiBOmxuQcevaRzKgMIZKIHWRFdGaZ4QHiLnQeU
 sc/krKqRmjgmtrAnlkrtQhfYVEwrCqqfO38K2m35k88rDvvfjh7fEEIr4lPpmcJIpG9U
 Qrlhtbwo7ms6o5do/CY1aLTFnu67A4pDOhmRtNHnzAHCYQJNGFgex8az71dRY2I/2KjF
 Ua/g==
X-Gm-Message-State: ANoB5pkV8A5WKgn0vim0T8qlPjFtPrHdyUOHBxyuN1oZkgng2y59hkjw
 hfLQ/41t6fvcsGq2fTPJK180/Q==
X-Google-Smtp-Source: AA0mqf6V/B5zSapMpHlFVtbuZGXiZ1CptoqfnNyOiDaIdhdaBxM1kAuQPg9elHW5MRCOxE9RXq/7vg==
X-Received: by 2002:a05:6a00:2908:b0:56b:d738:9b with SMTP id
 cg8-20020a056a00290800b0056bd738009bmr4021107pfb.61.1669123065947; 
 Tue, 22 Nov 2022 05:17:45 -0800 (PST)
Received: from ?IPV6:2400:4050:c360:8200:8ae8:3c4:c0da:7419?
 ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 n10-20020a6563ca000000b0043a18cef977sm9123052pgv.13.2022.11.22.05.17.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Nov 2022 05:17:45 -0800 (PST)
Message-ID: <be5617fe-d332-447a-b836-bec9a6c6d42d@daynix.com>
Date: Tue, 22 Nov 2022 22:17:41 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20221122121312.57741-1-akihiko.odaki@daynix.com>
 <Y3y9dbBUYi5j3Qre@boxer>
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <Y3y9dbBUYi5j3Qre@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Px5PFcbBcn5kKKxwkSdASImn/3PTZhLKqsWw3Vdjrd0=;
 b=pkZg3MALBkgNlhuxmzZN3kNu35Fe4iW2g/ojUC2OxXPVlBzOxvsSNsuuIMtoQQbITo
 daP+yIqfhkBvEZro+AZ01RV66RFbYcLlfrgeO0/HRtwJLT4ZwM4V3RUMI5LAEaot+bsI
 uf8NhZSrHdqyX5oC7vGlZYtGFOobRCvW704aAmSk3VLUy6pB2l94GyKe/uXo5KKY+oud
 /bZrK0Qlum3iyJYyWxENMejzQwY5ICDUs3rOuu5m4OAXuLa7oWw9SvuwFBCW5k9Oh3KP
 dwPliZyl02ZQ7rSGkTfrsrhCA2NSDaTBRjnjo7ekwHZ3dva4+lJ1jcsqMGJ4cXMPCjuy
 jhqA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=pkZg3MAL
Subject: Re: [Intel-wired-lan] [PATCH] igb: Allocate MSI-X vector when
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

On 2022/11/22 21:15, Maciej Fijalkowski wrote:
> On Tue, Nov 22, 2022 at 09:13:12PM +0900, Akihiko Odaki wrote:
>> Allocate MSI-X vector when testing interrupts, otherwise the tests will
>> not work.
> 
> Hi,
> 
> can you say a bit more about why current code was broken? And also what is
> the current result of that ethtool test?
> 
> Also this is a fix, please provide Fixes: tag and route it to net tree.

Hi, I have just sent v2, please check it out.

Regarding Fixes: tag, I couldn't tell when the bug appeared. The 
modified function, igb_intr_test() lacked the interrupt allocation code 
from the start. My guess is that some code in igb_reset() or after the 
function had code to allocate interrupts in the past and later removed. 
But I couldn't find such code.

Regards,
Akihiko Odaki

> 
>>
>> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
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
