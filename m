Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4479A55F3C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 05:10:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B0C4405B7;
	Fri,  7 Mar 2025 04:10:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rd4VRY7_dxn7; Fri,  7 Mar 2025 04:10:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D7FA405DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741320633;
	bh=0fXcDFEGSPnMsbgCnYRdEXX844+2MM6qjWtz3d2JzlA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BS/XunFCbcOhXN60MN5qlgCtmyqG1h8q7Udy/JPt9AvVtPqVaWay3o5FziPH+OhxF
	 JoOWW09r7IZ8Tev15gdh6MlZM+vIhSACRfUPC1JhEvJpaMfZAUpXl8krxYqh029I4a
	 t1SfZOGDOW297wbYMqW61Z3f4GzAWpvgikd5qHEQ3B0VmzxZ+Po+kf5odfGhWUCrv2
	 d/g2+MGmboQOOPC7SSwRw5OoRalxn/Ffz0tHh6CQf0+IfxgEV9YWpSN7f1grfqg2sN
	 njvusHZPhHhrEIFXsIeRxaNEW0WoKeqSh6TLTPh+MdSSzQaLJNTsQiPyL3zkkotRFa
	 6XFzdA9oB4iDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D7FA405DB;
	Fri,  7 Mar 2025 04:10:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CF44A95F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 04:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8710810AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 04:10:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D8bJm342n1li for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 04:10:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=bookyungwook@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9359C81046
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9359C81046
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9359C81046
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 04:10:29 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-2fa8ac56891so2295220a91.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Mar 2025 20:10:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741320629; x=1741925429;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0fXcDFEGSPnMsbgCnYRdEXX844+2MM6qjWtz3d2JzlA=;
 b=dBLiWOraVlQA+rGH3tEMVym3SfSmv89phDFBn1E5qdvum+H+MUGHp7j17o/Y+ULL+k
 SU1NR3U4wb2NILLyYNGEsCtcow/7V8VsSMpVpHAc2Rn+W2McZg81BDfPdsvDSg57qiJb
 qzgMa25waiTnD2E/bWmHaG+cjgiXlDhh6RTKDol9LBz50kM3g5jNTIR2ji4DRhw/a273
 zpqeD+wroEiIPLY4Lxk518gaxcxdDFC+X/Qmg1XGZyV9lEZHXsgb5fbGVdHqjcV3Xaxe
 I0A/mh7Kal2DtQTE0nrbypSuK7vHJLHKD2YTdp8iBiBSR6xogo406BdOXWWou27SlI0R
 xDMw==
X-Gm-Message-State: AOJu0YxSvlIaXT0bNGHuB4w4eUpscXmf3HyLIZ6jA4zDV5U04RC//5n9
 01SLXqtFEs+WkUtLnFofnegGn/9oBKimhNEG/bPMrIensTr3M3XEbHHMlUq9
X-Gm-Gg: ASbGncsxI5QQ0aVyABDkBJdRTTNqypDkArvQyFUQ87A2ckAYinHnvV3SRFudZ0Du7fN
 s1zWTbPwcAGHS888ihZ5dOJYGnzkVYHBDccqNrqxZKT8Zyk4hg2Taxcc4bLYZBEeevrde0P05yi
 t76FZm5BdH8JLHkQj3pRQec6bQOW7Ro1In9D/aipuTTHca/2Gk5v15jrCE/jiJb+3VKpGFk172I
 rYcXnBVnCMNMndDOzxTfcFVCGaJ0q8hpQA4NeOI9gRphlwUQhYqmVwVvfJUZQK4YA6vUI8zBSZs
 yWb/+pvneTJ7TCJcpBN6s7cV1QdBWG1lSbUA/43hj1Uko8me/HzEbp0=
X-Google-Smtp-Source: AGHT+IEac9/1hyaB0ji3C+Hy2szAvG66AgyQlxCE/Menh/lmjNj3wFSjdzzjXnpRsq5zg+0zSijmhg==
X-Received: by 2002:a05:6a21:3a86:b0:1f0:e708:56e2 with SMTP id
 adf61e73a8af0-1f544b1aa32mr4010115637.22.1741320628766; 
 Thu, 06 Mar 2025 20:10:28 -0800 (PST)
Received: from [147.47.189.163] ([147.47.189.163])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73698517c64sm2264304b3a.147.2025.03.06.20.10.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Mar 2025 20:10:28 -0800 (PST)
Message-ID: <aea2c7f8-995b-45bc-b2fb-d45e3fbe65b1@gmail.com>
Date: Fri, 7 Mar 2025 13:10:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com>
 <SJ0PR11MB5866435852B88603767EFF15E5CA2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Language: en-US
From: Kyungwook Boo <bookyungwook@gmail.com>
In-Reply-To: <SJ0PR11MB5866435852B88603767EFF15E5CA2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741320629; x=1741925429; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0fXcDFEGSPnMsbgCnYRdEXX844+2MM6qjWtz3d2JzlA=;
 b=PfFsi8CPO/hRsdtUj8mlNxfD/VjOmHxjiIwH8kfzHSMC6W0MFn0ak8VHkg+jJJUTOS
 M1fse6clPUf15BW2apGbCGk0dcKx4UuZT5PU0zGKcPBgtz8E8sZqfoERjW6WopCBQGsu
 lMFlH5Ee+WOXmDEC46OhdSlchAZtXVhdKcEYmvnP931TI8OeLDONW0H+toUpFOcZfBgi
 XzAmPgJSAMHJavApYf1RfuDvSEaZpowGlAPKHvR4jzMoFV5mkicgkUCRkh0k/4UlYnyb
 ivRv06V9fRu4RQnU/2iq4Y6F35AjgVsfXMyfkDYOhbbhvH/I+6rcs+N31Dy8+/kee2kY
 HJjw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=PfFsi8CP
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

On 25. 3. 6. 20:13, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Kyungwook Boo <bookyungwook@gmail.com>
>> Sent: Thursday, March 6, 2025 6:26 AM
>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
>> Subject: [PATCH] i40e: fix MMIO write access to an invalid page in
>> i40e_clear_hw
> Please follow the rules, add v2 to the patch

Hi, Loktionov,

Thank you for reviewing the patch.

Following your guidance, I will update the patch with the correct format and
also include v2.

>>
>> In i40e_clear_hw(), when the device sends a specific input(e.g., 0), an integer
>> underflow in the num_{pf,vf}_int variables can occur, leading to MMIO write
>> access to an invalid page.
>>
>> To fix this, we change the type of the unsigned integer variables
>> num_{pf,vf}_int to signed integers. Additionally, in the for-loop where the
>> integer underflow occurs, we also change the type of the loop variable i to a
>> signed integer.
> Please do follow the linux kernel 

If you are referring to the tone of the patch description, I will rewrite it in
the imperative mood.

>>
>> Signed-off-by: Kyungwook Boo <bookyungwook@gmail.com>
>> Signed-off-by: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Link: https://lore.kernel.org/lkml/ffc91764-1142-4ba2-91b6-
>> 8c773f6f7095@gmail.com/T/
>> ---
> Please up here versions history.

I have noted your request and will add the version history in the next update.

>>  drivers/net/ethernet/intel/i40e/i40e_common.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c
>> b/drivers/net/ethernet/intel/i40e/i40e_common.c
>> index 370b4bddee44..9a73cb94dc5e 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
>> @@ -817,8 +817,8 @@ int i40e_pf_reset(struct i40e_hw *hw)  void
>> i40e_clear_hw(struct i40e_hw *hw)  {
>>  	u32 num_queues, base_queue;
>> -	u32 num_pf_int;
>> -	u32 num_vf_int;
>> +	s32 num_pf_int;
>> +	s32 num_vf_int;
>>  	u32 num_vfs;
>>  	u32 i, j;
> What about this vars? Are they used?

i, j are both used.
I think the relevant line to be considered is as follows:

if (val & I40E_PF_VT_PFALLOC_VALID_MASK && j >= i)
		num_vfs = (j - i) + 1;

After this, j is not used and 
i is used as index of several loops.

My current plan was to change only i to s32 since it is related to the bug.
However, i is also used outside the loop, as in the code above.

Should I proceed with the original plan, or would it be better to separate the
loop variable for clarity? I would appreciate your opinion on this.

>>  	u32 val;
>> @@ -848,18 +848,18 @@ void i40e_clear_hw(struct i40e_hw *hw)
>>  	/* stop all the interrupts */
>>  	wr32(hw, I40E_PFINT_ICR0_ENA, 0);
>>  	val = 0x3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT;
>> -	for (i = 0; i < num_pf_int - 2; i++)
>> +	for (s32 i = 0; i < num_pf_int - 2; i++)
>>  		wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
>>
>>  	/* Set the FIRSTQ_INDX field to 0x7FF in PFINT_LNKLSTx */
>>  	val = eol << I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
>>  	wr32(hw, I40E_PFINT_LNKLST0, val);
>> -	for (i = 0; i < num_pf_int - 2; i++)
>> +	for (s32 i = 0; i < num_pf_int - 2; i++)
>>  		wr32(hw, I40E_PFINT_LNKLSTN(i), val);
>>  	val = eol << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT;
>>  	for (i = 0; i < num_vfs; i++)
>>  		wr32(hw, I40E_VPINT_LNKLST0(i), val);
>> -	for (i = 0; i < num_vf_int - 2; i++)
>> +	for (s32 i = 0; i < num_vf_int - 2; i++)
>>  		wr32(hw, I40E_VPINT_LNKLSTN(i), val);
>>
>>  	/* warn the HW of the coming Tx disables */
>> --
>> 2.25.1

Best,
Kyungwook Boo
