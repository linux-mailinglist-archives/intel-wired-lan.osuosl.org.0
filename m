Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74075CC7C76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 14:15:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF76760A67;
	Wed, 17 Dec 2025 13:15:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3N1VqftKGCW9; Wed, 17 Dec 2025 13:15:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66933605DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765977344;
	bh=1F+XhGDyzhWPwRMa7bHo6bLqb91juDMIm0R67eyz4L0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lwv8oRVsAQH9EqJianSmkQrdYe3CsnVAXfrRODYoWzLgK7EOIVbPSfBFp7Qi3aQF0
	 lA+me6LJk3NFgIgLaco+UpCI3+B+QJ0H7KRUZtv5W1AUhxBLAY5kLLazDxOWjlaY0k
	 ZbuzUPlELc7CoXLKHnhGONuOBSk1jRdgcivuTQUd5AAkR25D5EM9aGNRQNyjdZZWCk
	 ikbWzpaNlA9Ux7pBALHyu0IQsQj5HNh5Fg1wRQfr68kpIFsCBjRWh1D9GaOkk2lUcq
	 zNfhte5H48faX8YmBHqTRpCqTZJosFcsZkXWxrjHvnJompzC4g3ghoeNMvjtgzgd0a
	 33HsMEtl1GLmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66933605DE;
	Wed, 17 Dec 2025 13:15:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 42AF2364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 13:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29478404F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 13:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GMCNpWbn_ey5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 13:15:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=asml.silence@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2295E4037F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2295E4037F
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2295E4037F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 13:15:40 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-b79d6a70fc8so1013287366b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 05:15:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765977339; x=1766582139;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1F+XhGDyzhWPwRMa7bHo6bLqb91juDMIm0R67eyz4L0=;
 b=HQd1RfkYYqjBeXCP9/aW5fh4Twhs2wa2F0OWtdmiAJO4QfznTWQPkN++V8Hlz8lin5
 ug+1A/Cu67edELRpRGgCKUbcy04MXuy0duzyViK76Y5QBtri25+O62ojHqMlpzJy4ufE
 paDgowiRZQoMvd7ZX6D8DKiAKAH4+XCvzOzrFvmaf41TuW0rR+zRVBN2T85xj7iVSsCc
 FzgoYo0NmNtqWTfBL8eDf6WUhvDk5llCc63efi8Xf36thukpX/dovKYBZTDC4sM0m+DO
 HLHC9vUPDd85SI2rOzCbhjgOuRctn/Ohefo8PmRLFh3J/xPI0E75uwQn6DOilb3t0eSq
 r3EQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWAHSHADyozrVIXt5da6vJWOJ/5UJ9TgnowMY/WptMaCUHvYMONz0Qua8Gz1DVi5jMMhcpJY5NaxZwgokuoP0Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyVhiGk0wfITXIFjIg4bFER/rpEJrm9mhVHRlaFtjGXdBRV51F/
 x+TPD3ONA0ozShEN4XjfA6Igit7miq/Zn5X5DnbhJYeaJgFWTtiS0oz+
X-Gm-Gg: AY/fxX55a+SFKR0EqsuplGHM6QqztOgdxu3o2gNBPnjbUswbVUD4W1slARyhXUqSRek
 YfoQraUU+88+wsFGNmvd9MM3rvBdzWMqajObA6S96tuVk99ab/C5wALED2qWyjDSBBQxbpTqxfv
 757w3vxyEmWesxEDggnjxk7vsN33nN4TzMS5HdmAJ4Xlvbh1w74MfktyHW+V28FAIWNkNzitJMv
 yJyT9p7UJFTcX58i12HvvmnN84dqGpm/7geL75meCiamCMU/zQ7Gd59T8a2RAHyEl1eKB4UMHRG
 DT5Apa+oKaI0qVHhsMWqnLPJ9uZ/vmKWAC3e1Rzv/pY5KXQi6gmpykUZZE/hEH9sIyw5QXqM945
 65l1/NGd31s0fmVLHEkNdRZLtFGtgAzKHbJsiC+K4NulBbi1SHrtu2vICGnkj+np/oZgxvbN8gj
 h1BoyGkM2J9Wohp26gLZ14bIcInigJNiGVJj2AaS0pd7J+RDxhpu6wUiaIHgAvzcIc6mv6Ufp13
 4mjxdyOTMvi0mUAbT8F4KV1oMlwUKlqZU6qXWygjxPJDtKgyLvBEIHIKqBThDl6ly3Kv8x/pwM=
X-Google-Smtp-Source: AGHT+IFJFc+tAj9+1ZWQ33lxgGX+8wQEs7FAeIC0HBzWXEDQ1X33lh9OIi5obJ3o1fl/Fh8XvLSyBw==
X-Received: by 2002:a17:907:3d92:b0:b7a:2ba7:197f with SMTP id
 a640c23a62f3a-b7d23a63a2emr1945186566b.52.1765977338934; 
 Wed, 17 Dec 2025 05:15:38 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c?
 ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b7cfa29f51esm1970726066b.14.2025.12.17.05.15.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Dec 2025 05:15:38 -0800 (PST)
Message-ID: <39e285e0-81b7-47b2-b36f-50de7e51f95b@gmail.com>
Date: Wed, 17 Dec 2025 13:15:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Byungchul Park <byungchul@sk.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel_team@skhynix.com" <kernel_team@skhynix.com>,
 "harry.yoo@oracle.com" <harry.yoo@oracle.com>,
 "david@redhat.com" <david@redhat.com>,
 "willy@infradead.org" <willy@infradead.org>,
 "toke@redhat.com" <toke@redhat.com>,
 "almasrymina@google.com" <almasrymina@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20251216040723.10545-1-byungchul@sk.com>
 <IA3PR11MB898618246F68FA71AF695B3DE5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <IA3PR11MB898618246F68FA71AF695B3DE5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765977339; x=1766582139; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=1F+XhGDyzhWPwRMa7bHo6bLqb91juDMIm0R67eyz4L0=;
 b=LshgVVBlHiX5JTAf0Efp7qJL8q7wwdGd9f02A98S+xACpn/Nxfyb5hPNgTObedk8le
 kLacwjQEF0l82WO7Z5oupi6HfkRqHuF5W3+tCm29TXNKg6XXpY/NqS15AWVtB3VR1Ry5
 xGUgkLdNCfPcEztJAGrKlBeiQ73fOQ+forEhd+Pl+oM7pS9iLq7wbx0ogcH0guEe0WHO
 gY0GwFlg6sJv/eGNuNU90EMU1ycg3vT4yXz5hCs2kS2ZHiuKlwVsddPNAX88oalDa2BO
 0U0ysk/GwJGuI/3aO8npOrbz8cPT7nG2e0IS9t12io1gRI1GzqdHvFFZQecLOJu78ymo
 k9zw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=LshgVVBl
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
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

On 12/17/25 11:46, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Byungchul Park
>> Sent: Tuesday, December 16, 2025 5:07 AM
>> To: netdev@vger.kernel.org; kuba@kernel.org
>> Cc: linux-kernel@vger.kernel.org; kernel_team@skhynix.com;
>> harry.yoo@oracle.com; david@redhat.com; willy@infradead.org;
>> toke@redhat.com; asml.silence@gmail.com; almasrymina@google.com;
>> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
>> davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; intel-
>> wired-lan@lists.osuosl.org
>> Subject: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
>> netmem_desc instead of page
>>
>> To eliminate the use of struct page in page pool, the page pool users
>> should use netmem descriptor and APIs instead.
>>
>> Make ice driver access @pp through netmem_desc instead of page.
>>
> Please add test info: HW/ASIC + PF/VF/SR-IOV, kernel version/branch, exact repro steps, before/after results (expected vs. observed).
> 
>> Signed-off-by: Byungchul Park <byungchul@sk.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> index 969d4f8f9c02..ae8a4e35cb10 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct
>> ice_rx_ring *rx_ring)
>>   		rx_buf = &rx_ring->rx_fqes[i];
>>   		page = __netmem_to_page(rx_buf->netmem);
>>   		received_buf = page_address(page) + rx_buf->offset +
>> -			       page->pp->p.offset;
>> +			       pp_page_to_nmdesc(page)->pp->p.offset;
> If rx_buf->netmem is not backed by a page pool (e.g., fallback allocation), pp will be NULL and this dereferences NULL.
> I think the loopback test runs in a controlled environment, but the code must verify pp is valid before dereferencing.
> Isn't it?

Considering "page->pp->p.offset" poking into the pool, if that can
happen it's a pre-existing problem, which should be fixed first.

-- 
Pavel Begunkov

