Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BE1A53F0A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 01:20:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CF6F60B15;
	Thu,  6 Mar 2025 00:20:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xRBg5VB09F_O; Thu,  6 Mar 2025 00:20:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65F2A60B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741220407;
	bh=YsXEOmwyrzFwv6a+p/KvUo6Xe5fRjBYf4SniCJf5WDA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xy1e6B0zQ5oAkZHc6z7TTMbkqnoL3O9IumYX7Ofln1pYGQSHdHeAxiWWPK+H8CtV3
	 5bHxHQ+mBnvpWOzUdjq/bQNC9vVCCyYexC0WgpaLRRPkCc+4FZXlexgOqYjBUiH0PA
	 sINOtlRAPbSIr0Kb3mvf5vscGvf/g2IreoPglAIBsWGmkKVH3MoCyXuYYvBfB0XFy3
	 lOVpkGQgrsNJokWULx8Jtmw31WoS1qalATryfNEPosh07VfkDE1GufVJ7Mk1KJcR6f
	 L8Pv990K/o+hp7Af29mh45MjFjT1/cEcxpkZjmcFxM5wQIOAgs+ssyCCjEiwh2GqKy
	 ENTuLVNr4rfgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65F2A60B93;
	Thu,  6 Mar 2025 00:20:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B4750194
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EC6F40193
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlUPJ5QaRzlp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 00:20:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=bookyungwook@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DEA4540167
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEA4540167
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DEA4540167
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:20:02 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-22403cbb47fso844845ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Mar 2025 16:20:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741220402; x=1741825202;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YsXEOmwyrzFwv6a+p/KvUo6Xe5fRjBYf4SniCJf5WDA=;
 b=r1/Y69XxjOHIX0hsYD87xRu+m9Tn75I8l1c5aeN6J/H9FaNPGdTWT7lKZF8OyS1fp6
 f0TO2tjd+t4wav0UMTuvbDJkwOzhdbVY87YN1J/tIFRjCserTYexuXl3mrHt/EJZO9Eg
 fz8XctU4NB7FV8PT0e8rMeA88fYpy2PXOFbrk0u/MoQAERaKFUYmvCmYYs+sdkteq2v/
 RHzCCR5mOaZnILklf5emeg2heJQ9f3fFclASSN/rpeecTYm3rqrwRBejhGDCPDZo0PTG
 mSWPA9FvuPZ8jvuc5T7+EDMlQroKNbUrouXNC197gY9tS/6NkECvV5+NobLLwEc9Bu/P
 x+Zg==
X-Gm-Message-State: AOJu0Ywr+CBemiycKm8frpKs48JxObZjqhX1Twrf9XkS0Brob9453IwW
 yhihj1cXHs0F4xR2lUkgn4npVpzREY0Eqf4S0TWRNngGJTBtIXVX
X-Gm-Gg: ASbGncuDbyPgHdofHJjQYEF91r9sfWAKGcBWB5TCxfZ54kE2j6qv2wLvjpf8NEErkAX
 XBUzLzil7hbvCLK6iFDVhIHgcZwpVUmeh3k5KEfp7iLYjUx6E9aDcmcOeMA4OuqaysLUkvUISNU
 lOkI4jejrxw53CVIrj6wZ+UnWraf7Ycg91fCbx0yTno4N2ySE/BknB2rxH7NV2N4NPAJPXIU610
 e9i7fGDehXUir9r1ixic8SDu75V6lCyx3fYOT1eiahFcyDvPrKtcOqqurHqMDAHfvaDmi9TVLQw
 5eGGMiIaM6ZkOPoe8kSu2qasOrrB56+494QJKySw4Ajc+Gw7hBDMM74=
X-Google-Smtp-Source: AGHT+IEYcRS+bSTlNHX7Lwc6xucK9pJdJhdS4fx1Xlwd7Pv2zd7JO3G/4FC2I5W8zePt+tJKD3QkEw==
X-Received: by 2002:a17:902:d48a:b0:224:c47:b6c3 with SMTP id
 d9443c01a7336-2240c47bc11mr11604605ad.6.1741220401974; 
 Wed, 05 Mar 2025 16:20:01 -0800 (PST)
Received: from [147.47.189.163] ([147.47.189.163])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-22410a91c8fsm130785ad.191.2025.03.05.16.19.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Mar 2025 16:20:01 -0800 (PST)
Message-ID: <77533f97-030a-487f-a265-afd2fafd3556@gmail.com>
Date: Thu, 6 Mar 2025 09:19:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com>
 <SJ0PR11MB5866F240386177564F78E8AEE5CB2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Language: en-US
From: Kyungwook Boo <bookyungwook@gmail.com>
In-Reply-To: <SJ0PR11MB5866F240386177564F78E8AEE5CB2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741220402; x=1741825202; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YsXEOmwyrzFwv6a+p/KvUo6Xe5fRjBYf4SniCJf5WDA=;
 b=gCTg6vmbAisPGoOCv7JHbOE73aK1yeXy0aOoqsPKf6oLJBdBi6fIq+bzp4pmpdKcKY
 021hYHuuKKFnWVjPkA1dbZKdb/BIu2+8d9d9mRumyTTYoIDqJ/tJ7W5+tiw2x0JJSohe
 mzFJLfh57R1wEoxkHOzxX8IRvWMueJe1lKHtZ3Xd+TGMOAYCWk+84GMLW3qZZlIBu1GN
 Uqq8QVbgAXQdKUXMn9iHSsQfqpb9g0LaKB9eKnfe1aSAtvWi0uzKAGbDpNBO+1SuTkTI
 lLe0hC7x8fECcxqpimy5GIl+iYTYN8m2fmhLhrWMT3JeaKdBnPrO0w3wHbai8t3+oBl5
 2fvQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=gCTg6vmb
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

On 25. 3. 5. 19:13, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Kyungwook Boo
>> Sent: Monday, March 3, 2025 11:20 AM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
>> Subject: [Intel-wired-lan] MMIO write access to an invalid page in
>> i40e_clear_hw()
>>
> Please start commit title with 'fix' to explicitly tell what your patch do i.e. :
> Ice: fix MMIO write access to an invalid page in  i40e_clear_hw
> 
> Please add Fixes: tag  https://www.kernel.org/doc/html/latest/process/submitting-patches.html


Thanks for the guidance. I'll follow your advice and send the patch accordingly.
I'll also read the linked documentation and will try the patch is properly
formatted.
