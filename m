Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3760FA53F3F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 01:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9FD58156B;
	Thu,  6 Mar 2025 00:41:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WAVeZr_HG5Vp; Thu,  6 Mar 2025 00:41:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D71082C75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741221687;
	bh=KJS4vIme2XRYo7gYissfnQCjryFp+JUtXU/dFEi218Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R6hLv4RThekGuG7BkIWaWJIUVMVLQJFRB8Tt4ZwczaRZmXZLIY5VOapGW7tn0M6xI
	 l2e7ZvaCcf4vb8INkL85VJVGEFUuECMsmINPjX9pkqL4SEd0yBoELtsw9rObZG4c8P
	 LCuE/BfTWBu1lEt9/HxscPXAtMYv1PRJHtO2FKwPNjf0EC4GuQJj6pQrqpSg/Bzum2
	 wo8I6Knir1q9JjdQXZKIxuM3oG7Y0LV2Jt+RrYa9w/tpH8PePHD2k2zM+mEOJmVY6v
	 ifT2q1PXwCQZ115foDXQXNrPvni4JrWz5AQcBJxXIROVN4932ojjLUR1vahiiEZrbC
	 74ViZVl9Ea3Qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D71082C75;
	Thu,  6 Mar 2025 00:41:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C6F3E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EBC4404C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2nmG2rIfPW3X for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 00:41:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=bookyungwook@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 626E0402FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 626E0402FA
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 626E0402FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:41:23 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-22398e09e39so740275ad.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Mar 2025 16:41:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741221682; x=1741826482;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KJS4vIme2XRYo7gYissfnQCjryFp+JUtXU/dFEi218Q=;
 b=Ag3HYizuEbPB+Uo36KJXqR8EEKOnKtZ7X4Q2EvhJQ0kNIkW9cUp3AahAafT6RZa5gy
 cpfvkMTEkTtm0+IKv92wmPWIoKXPOH8HXM0wCHeR5cyVvcqRqk1uyLwnN0HaTYPPsKY2
 j438z0SbD4FHuQ0kJJi2XmHja7hkphu4daIWOQC4N5QrkLiF7VmNw15rZpiKw2rWkcCF
 rk5BNSCmrc2GQzjFtm8HQsYzt714sfXA79HkIWKHFsHBO3qY99K0QHzUF4pALwTt8Os+
 sHeoul5wi/RdHaeW4eBgu/jmOB3y9m5B2ENaeyNTCvJLU61gPqF2bnjUjJB+6nurnnpS
 JNjw==
X-Gm-Message-State: AOJu0YxPoo24yTEV44/L0UXTJuL80sOreZx7NmymtFv2iRwxndDSRZ9t
 0B302jxDECXJeNxi9I3hhaC5T3Gx/qSlGUEco/Um2bpV1PayKTIj
X-Gm-Gg: ASbGnct4R1AxDDYdPeWufciEH27sl4HK5GgDHOxg08AecU8l6+CPpDrJRti+ak2X2Fd
 /an8kTYyb+k8XTpmMjENWXtU4iDTezmnXFHU/9BpvXaS3VzJ3IT3Itm51UOUqJ3WJxE2GZamX2x
 E9PpIGqgwKOJqYhrdcQe3A/YyKXNUP4SYAIYAn5GhAjpQ5YYb9yvfVAp3TKNQwCF0FhYNCAeVWX
 RxLbAmyZcr4S5AeHRxGP7tWiVa5dpDqUq6Q9gWs3Yuw5H9pWeC3WNSIel0jnZMimcc2O0869hAW
 WIrFDbJTNydrYD323nksI0HPNA1Rq66milDUInUnxdYYXDJ+A6HklXA=
X-Google-Smtp-Source: AGHT+IGestbbM3d5yblSv9oj4OnWHTUe94tkAcFNcUGU/J1qkhblIgnziBVwj+pUtT2CkF8KuEgE9Q==
X-Received: by 2002:a05:6a00:148a:b0:72f:590f:2859 with SMTP id
 d2e1a72fcca58-73682bb910cmr7917355b3a.13.1741221682499; 
 Wed, 05 Mar 2025 16:41:22 -0800 (PST)
Received: from [147.47.189.163] ([147.47.189.163])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73698538751sm58870b3a.170.2025.03.05.16.41.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Mar 2025 16:41:21 -0800 (PST)
Message-ID: <139f9e25-160c-48da-86ae-4a14bb36dbf5@gmail.com>
Date: Thu, 6 Mar 2025 09:41:19 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com>
 <aba0a368-b2cf-42bf-b2b5-eb09779fb214@intel.com>
 <SJ0PR11MB58663C4BEE68529970784114E5CB2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Language: en-US
From: Kyungwook Boo <bookyungwook@gmail.com>
In-Reply-To: <SJ0PR11MB58663C4BEE68529970784114E5CB2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741221682; x=1741826482; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KJS4vIme2XRYo7gYissfnQCjryFp+JUtXU/dFEi218Q=;
 b=CbSkJ/fNKnR7r/WfuZNQnww/3qdYw1iTF5GoCzxec1Tg8jozw5ONrkPD36f0prhwuw
 6gyg0DmsydgMGvj4Ea0fjogJB0IEwro3xImSxePQreTCEH9W5UOE+szu6FgICoNQPF0L
 EbU0brbfFA4eHpL46kLlZxgrEjBzX+bidGvnPPuAcZt4U3mPibL0QiQEqJg4CQBYDTW3
 DNJg3R+ylKc+GnDSMkvd1wUM6T12eWCM/tV32lx1n6OXOCUa/tjcoXnUb3jd0sYw+hKJ
 c9JAMNHCQP/X2ysp4/E/CZAOHqfdomhkK3KkgGIJ+QIQ8x8eej4cJeYW425y2j2940C0
 ApUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=CbSkJ/fN
Subject: Re: [Intel-wired-lan] MMIO write access to an invalid page in
 i40e_clear_hw()
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

On 25. 3. 5. 21:11, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Przemek Kitszel
>> Sent: Wednesday, March 5, 2025 11:27 AM
>> To: Kyungwook Boo <bookyungwook@gmail.com>
>> Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; Nguyen,
>> Anthony L <anthony.l.nguyen@intel.com>
>> Subject: Re: [Intel-wired-lan] MMIO write access to an invalid page in
>> i40e_clear_hw()
>>
>> On 3/3/25 11:19, Kyungwook Boo wrote:
>>> Hello,
>>>
>>> It seems that there are invalid page MMIO write access in
>>> i40e_clear_hw()
>>
>> Hi,
>>
>> is this something that actually occurred, or just a theoretical bug?
>> (depending on that we will apply it to different tree)
>>
>> please send a proper patch anyway, as it looks legit to don't go bananas when
>> HW gives you 0
>>
>> (and CC netdev instead of generic kernel ML, perhaps that's the reason this
>> mail was tagged as spam for me)

Hi,

thank you for your response.

If you’re asking whether this happened on a physical device, it did not, but it
is something that can be triggered through virtual device with fuzzed input.

Also, I'll follow your guidance when sending the proper patch.

>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c
>>> b/drivers/net/ethernet/intel/i40e/i40e_common.c
>>> index 370b4bddee44..97ef79be39b3 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
>>> @@ -848,19 +848,25 @@ void i40e_clear_hw(struct i40e_hw *hw)
>>>   	/* stop all the interrupts */
>>>   	wr32(hw, I40E_PFINT_ICR0_ENA, 0);
>>>   	val = 0x3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT;
>>> -	for (i = 0; i < num_pf_int - 2; i++)
>>> -		wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
>>> +	if (num_pf_int > 1) {
>>
>> instead of adding if conditions, I would simply change the type to be signed

I’ll incorporate the suggested approach when sending the patch.

Best,
Kyungwook Boo

