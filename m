Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 407F3A546BA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 10:44:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E00A783342;
	Thu,  6 Mar 2025 09:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b5Dzfa-jINVP; Thu,  6 Mar 2025 09:44:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6002832A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741254260;
	bh=LoDVmzMkKNOHCOAEkEWbxwwYdyhsPDeYQQkLswcEOWg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=poa1OVkJf60GxTFLqDKXKXtmmAS5n8/f3GZ3ADEzudEtYwVezl9l9BYk3c+2SIrCC
	 C9CH6TlFr4lEPT9hf2ROQU4SMKp0FnjIlJm3AcINntoudD6I3DRoBluMZS05z6npIJ
	 99Z/N7caI9n5PeCZTTKX8lBXozhiT5HzpFSntdhSXyCcfZibF5R2sMak+B0LAlO+qX
	 OgpI27k4x+v2XkG9XU+gpofJsJY+iypJJwJGroCXkZnLoyeCQtffbBix8CSjIYPpfW
	 PM2kj1H9ZZj9sgo/sZKhf16lNjyCLGO5im4bUleM2WF1iYjE4/sJ6Uemaj1Uv3hiTL
	 TXydTnDTD6f5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6002832A9;
	Thu,  6 Mar 2025 09:44:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EC22E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:44:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5F9F41265
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:44:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlv9DbvH658P for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 09:44:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=bookyungwook@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B5A424125B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5A424125B
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B5A424125B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:44:16 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-22409077c06so7868915ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Mar 2025 01:44:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741254256; x=1741859056;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LoDVmzMkKNOHCOAEkEWbxwwYdyhsPDeYQQkLswcEOWg=;
 b=ErNa3cEILJ68yXj1hm4GPhmilM+quNg5FnIwDWh5q10f4ZyFITrC0kI30zgGSi3CKs
 ntszbgf7GyQJCoP71mEdZIXYCirY/zx628iqN2AlQ1bn22P8cfIMxIrq8hoTBz55Sk7a
 jlS52/cQ4g9WbnmC8XXcB1spDNdd5aDNJhRRsD7LGhU+FkwxZsHY63aEEoNJQQmXwEUe
 BzVemrsiubDqXiudgnmcpY2kOpuzzYDGe9laEHs2q+O9yWBo7avlgQdYnIJT7D4QvSl8
 H/j4XaTOzmqmY3159K68uzx8TMLdBbNeKuZimAtcjnDuMBFVG3K+QzC/mLjHuME9G1iC
 A0DA==
X-Gm-Message-State: AOJu0YwTOzU1H1Qi3rfSkaPcWCRJ3vT0WBcL6h+frs1arHdiOrDiCXUU
 k6lCCUK8HvGUR3WEyuf13oVg8dfG2CcO+gc/9BGul2IiJ02S/O7BPCaAtmCC
X-Gm-Gg: ASbGncsgx564hKZnMDhWYUMJYq8bHdaivCT66jaZmZVyyPgqQB8CWsDnZ/GEFjzksXA
 BjLTkvt60WrmTAQCmNJjjLztarzQkMt67fKIVNJq3Naznl8lC9kDpjNzYbYToFHmEHkTKBhlPUn
 EBQrqru9u1Fu/n1w5fPvpFjDJbyiOSDEeAy/Ehi74v5hQWO3i7RNrHpWVHQ+5Xew/1yJJBvgqKf
 7ntwyM4FVp6Rj30GyGIE3J+Qh1XGOGBB0euACRIyvjmME/VmUXB5Q3P0RgliKstQ2ggnWB6fWR+
 25k0JNq2N+FcIHnP7+dUGp2NCdJ0TIHfEtzuSmXjozioaFN8fehQrdM=
X-Google-Smtp-Source: AGHT+IFxv3BtYiIiQ66UvRlNbCoDHRKsWxF4/Se9O6aSCZjDKGGPdqrlNBu9pCNZi9NMXBU/kJkUBg==
X-Received: by 2002:a05:6a20:244c:b0:1f3:3ab7:cf29 with SMTP id
 adf61e73a8af0-1f34944b65amr13097939637.3.1741254255944; 
 Thu, 06 Mar 2025 01:44:15 -0800 (PST)
Received: from [147.47.189.163] ([147.47.189.163])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-af281287d78sm802997a12.74.2025.03.06.01.44.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Mar 2025 01:44:15 -0800 (PST)
Message-ID: <76a11baf-e3c1-4b83-bc53-73b74fe1b8e9@gmail.com>
Date: Thu, 6 Mar 2025 18:44:11 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
References: <55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com>
 <5cfd4c17-71a8-4bd8-972b-31fc0634f518@intel.com>
Content-Language: en-US
From: Kyungwook Boo <bookyungwook@gmail.com>
In-Reply-To: <5cfd4c17-71a8-4bd8-972b-31fc0634f518@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741254256; x=1741859056; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LoDVmzMkKNOHCOAEkEWbxwwYdyhsPDeYQQkLswcEOWg=;
 b=huwRIcAPz8qk4IJwjt6mfQR8DGqNKilh5PKEhsRifNa2NsSvVDYJJrKx9Y6WAJjfdp
 EJf5bhaye2gCzZzCSTOQln6ZW893d97ROKT5nBSHkYTpP0b41RCw2PxPlefOI7ZlQG+6
 2encqDWMMaqHjftLX1nWlRO8avhkWSo+BHh2I5t3JqnoktIRBrBvJCsLHLbZqLbG01du
 BKWAPlNSFXSgbsi9alIBO9x5LO3m/oKmkVw9LH9yl+1eEj8qAxcAP31sKySoNi6otsX4
 Iy1yUCuEHdPP5FHxnmXoOmS3srAW1hRuc1IvwgPYJZk2bVTMA9ey054aW0+8rOgDAJfh
 P1FA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=huwRIcAP
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix MMIO write access to an
 invalid page in i40e_clear_hw
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

On 25. 3. 6. 16:59, Przemek Kitszel wrote:
> On 3/6/25 06:25, Kyungwook Boo wrote:
>> In i40e_clear_hw(), when the device sends a specific input(e.g., 0),
>> an integer underflow in the num_{pf,vf}_int variables can occur,
>> leading to MMIO write access to an invalid page.
>>
>> To fix this, we change the type of the unsigned integer variables
>> num_{pf,vf}_int to signed integers. Additionally, in the for-loop where the
>> integer underflow occurs, we also change the type of the loop variable i to
>> a signed integer.
>>
>> Signed-off-by: Kyungwook Boo <bookyungwook@gmail.com>
>> Signed-off-by: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> 
> when Alex said "make sure I signed too" he meant:
> "make sure the variable @i is signed too", not the Sign-off ;)
> 
> (please wait 24h for the next submission, and also put "iwl-next" after
> the "PATCH" word)
> 
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> I didn't signed that either

Oh.. I totally misunderstood the comment.
I apologize for mistakenly adding the sign.

>> Link: https://lore.kernel.org/lkml/ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com/T/
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_common.c | 10 +++++-----
>>   1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
>> index 370b4bddee44..9a73cb94dc5e 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
>> @@ -817,8 +817,8 @@ int i40e_pf_reset(struct i40e_hw *hw)
>>   void i40e_clear_hw(struct i40e_hw *hw)
>>   {
>>       u32 num_queues, base_queue;
>> -    u32 num_pf_int;
>> -    u32 num_vf_int;
>> +    s32 num_pf_int;
>> +    s32 num_vf_int;
>>       u32 num_vfs;
>>       u32 i, j;
> 
> It's fine to move the declaration of @i into the for loop, but
> you have to remove it here, otherwise it's shadowing, which we
> avoid.
> 
>>       u32 val;
>> @@ -848,18 +848,18 @@ void i40e_clear_hw(struct i40e_hw *hw)
>>       /* stop all the interrupts */
>>       wr32(hw, I40E_PFINT_ICR0_ENA, 0);
>>       val = 0x3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT;
>> -    for (i = 0; i < num_pf_int - 2; i++)
>> +    for (s32 i = 0; i < num_pf_int - 2; i++)
>>           wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
>>         /* Set the FIRSTQ_INDX field to 0x7FF in PFINT_LNKLSTx */
>>       val = eol << I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
>>       wr32(hw, I40E_PFINT_LNKLST0, val);
>> -    for (i = 0; i < num_pf_int - 2; i++)
>> +    for (s32 i = 0; i < num_pf_int - 2; i++)
>>           wr32(hw, I40E_PFINT_LNKLSTN(i), val);
>>       val = eol << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT;
>>       for (i = 0; i < num_vfs; i++)
>>           wr32(hw, I40E_VPINT_LNKLST0(i), val);
>> -    for (i = 0; i < num_vf_int - 2; i++)
>> +    for (s32 i = 0; i < num_vf_int - 2; i++)
>>           wr32(hw, I40E_VPINT_LNKLSTN(i), val);
>>         /* warn the HW of the coming Tx disables */
> 

Thank you for reviewing the patch.
I will correct the patch and resubmit it.

Best,
Kyungwook Boo
