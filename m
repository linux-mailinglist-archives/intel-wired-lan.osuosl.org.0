Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 968578282A2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jan 2024 10:02:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 422CA61068;
	Tue,  9 Jan 2024 09:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 422CA61068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704790972;
	bh=E23pl03ddnTG4hKy9zSyRB7d/BVm7JwW3AyV/88rvQ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=anXlIJoyZzd6IKWpO/zj58aMgEMPLOw0UKsL84MqSd1kIH4gS8sBrouAeGfKDSr0P
	 BmITz0zJVo/fKPPameP/zE0pP/dtDlnUD1Z7j+xIda/MaNqIGWfQOybSLCJjLnvVAG
	 C4Xnhs1E83++d/Du3BSul+r1/Uey58/QThKTpsZqeOQS73yn73XMwQRdqrxB9ypUTx
	 qaKBGemwJ2WYHw0y/JeZu0/hq773nFEDA0PclNJWxMc0zxJDVVZB9MEvmh3syZrHet
	 eb68t1l78Y0f1XCJ5MlakCJt1xJIPliorS761B8a0KcFTAi0YGOeBR2+6LHX/aO1Wu
	 h5n/+/+3quuNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gWrPMGytcdpr; Tue,  9 Jan 2024 09:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B5056060A;
	Tue,  9 Jan 2024 09:02:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B5056060A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CC941BF94D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 09:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B65F41D80
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 09:02:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B65F41D80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gs9afQIoS-MT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jan 2024 09:02:44 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62C4F41BEB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 09:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62C4F41BEB
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-40e4f1f519aso3979925e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Jan 2024 01:02:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704790962; x=1705395762;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :references:cc:to:from:content-language:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=E23pl03ddnTG4hKy9zSyRB7d/BVm7JwW3AyV/88rvQ8=;
 b=Z/qhIwjPLEO+x4/lzL6IbCve+ly3ctej5e8IhiBwpyasXY76qXPYAi+n/JtRS6f6pQ
 D94NFbLQf/dEljUV8B2pRcM0YvWLicxZewicOkHbh7Lx04EZmhOpGC/PLYFwNGbRQZnf
 GbsKsfvKUr67g0r52W1qR34khf/7RAGq8SArQEpYEz0M5rutPNw+VDWQrf3rsjKDn3me
 E7J50IbNjvEHMy/k9fQVhNC/ApiS6N7G9/kSgtD2mTcAcMb04lnwzu0rrDyLPuhpVjQn
 D5zVQyLlF+YaIqYXDtyrEpKOY0xhaKGg6DcBqMSjz3nOSC/PpqjhV10dK/QK9OINkJFU
 vIHg==
X-Gm-Message-State: AOJu0YyQTDeIItd2CE+aSqa/ZFYlOyvVMk7TPF24GlfuYd8q11Tis7PN
 vtAl3E9nMA79TbpOZD2KgTaIHTy0WcYQEA==
X-Google-Smtp-Source: AGHT+IFVILFKFViKt13K3k42kzdhkkE4xZNjf6vHTy8q1hs0lod79ieupBIJ+YK4zEuKANV45AgahA==
X-Received: by 2002:a05:600c:520c:b0:40e:45b0:557f with SMTP id
 fb12-20020a05600c520c00b0040e45b0557fmr1590129wmb.140.1704790962363; 
 Tue, 09 Jan 2024 01:02:42 -0800 (PST)
Received: from [10.100.10.83] ([57.133.65.178])
 by smtp.gmail.com with ESMTPSA id
 iw14-20020a05600c54ce00b0040d1bd0e716sm2699383wmb.9.2024.01.09.01.02.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jan 2024 01:02:42 -0800 (PST)
Message-ID: <1ec34cee-bfab-4dc8-81eb-9a9688b9a61e@inovex.de>
Date: Tue, 9 Jan 2024 10:02:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Christian Rohmann <christian.rohmann@inovex.de>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
 <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
 <e1b2f012-7e0a-4167-bfa9-026d49f1b45b@inovex.de>
Autocrypt: addr=christian.rohmann@inovex.de; keydata=
 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
 6/S+Umx1vXWUG6ol8Oalq8coKRpry3O+ytxj/sc=
Organization: inovex GmbH
In-Reply-To: <e1b2f012-7e0a-4167-bfa9-026d49f1b45b@inovex.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inovex.de; s=google; t=1704790962; x=1705395762; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :references:cc:to:from:content-language:subject:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to;
 bh=E23pl03ddnTG4hKy9zSyRB7d/BVm7JwW3AyV/88rvQ8=;
 b=Cn15rGsRCINoh6yk+FZJWMC+jYaT0Sw58KpoE7AtaEtigp8VHte8lH6LOX2kdnvlai
 v138iXyDK7KNVdwlEZ7V4bP+UlGs3sDEVozjSNh8rZaP6u03MAPAiJB0Nk+YKkBuMtMI
 Dgruhc2Bjg49LLQgr7FbHXczGh5kWI2PoQZEk0Ja59Mo9MmcgOXQvi8CrRYJvteS+2Wv
 mLt8CooD+IKT8S9S6eFILkDS8oyRLlTQy1gVA91K5gGX8fGTB7sgpQiMUhvAW+r0a9iY
 t2P5HnFPwEejKoYOi5HxlEKndcDpETLeDT/36bsdnluyoVAeeovVCL2aCAH6RiA1H4X6
 gT6g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=inovex.de header.i=@inovex.de
 header.a=rsa-sha256 header.s=google header.b=Cn15rGsR
Subject: Re: [Intel-wired-lan] Counter spikes in /proc/net/dev for
 E810-CQDA2 interfaces (ice driver) on kernel >=6.2
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
Cc: leszek.pepiak@intel.com, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hey Przemek!

Happy New Year!

On 17.11.23 13:05, Christian Rohmann wrote:
> Hey Przemek,
>
> thanks for picking up on this so quickly!
>
>
> On 17.11.23 11:13, Przemek Kitszel wrote:
>
>> Thank you for the report, I will take a look.
>>
>> We have already received similar report from Nebojsa Stevanovic, CCed.
>>
>> Sorry that the issue is not resolved yet. I will review what we have
>> changed in the drivers between 6.1 and 6.2, where bug was introduced. 


Nebojsa apparently can also reproduce this issue as he is using 
Prometheus Node Exporter as well: 
https://github.com/prometheus/node_exporter/issues/1849


May I ask if you did get a change to look into this yet?
If there anything I can provide that would help you?



Regards


Christian

