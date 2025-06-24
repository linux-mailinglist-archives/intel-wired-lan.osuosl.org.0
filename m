Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CACEAE713C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 23:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D720983D23;
	Tue, 24 Jun 2025 21:05:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id akq6jVsZ2LNe; Tue, 24 Jun 2025 21:05:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6448483D1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750799113;
	bh=H2zUMtRrxbBSd6ymsb7+7OBAUA/OnzJhM/jzHwFjMYE=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BkkuxrQXAItTlcUF7CB4BOlbjVfsh0pSQKEC5IdQ0c0twn3Yuooq8oF+fbhnfHdLK
	 J33RBxIaA8+z2dfdGiLce8jJzC6oc+1V8ERQ0+jb7dKd0s5cFFDqzHXfgHXKz1c833
	 uOaZGmV59HWVYoHVc9CtQpcbsNvPWTh/a/YLEpKg41PFoHepOdlHAx044TnSeBU2+L
	 gJ+IV8nlT1w4cnaVAwPZxjEARRO/JZhO7RVtayWk7T1IAtnhv8kHT2UDPOeETqX/FJ
	 m5PTt73BZ4/BSR38Nip24q5Xtkwto2wFLLH1adQSM9KnZHadmyJuVa4FE/kYDpGSWt
	 ZScCdAQPT50HA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6448483D1B;
	Tue, 24 Jun 2025 21:05:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 42FC2154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 21:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2981640C08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 21:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YiNL39mFitiK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 21:05:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62a; helo=mail-ej1-x62a.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D43CE40AF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D43CE40AF2
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D43CE40AF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 21:05:08 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-adfb562266cso180186866b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:05:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750799107; x=1751403907;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H2zUMtRrxbBSd6ymsb7+7OBAUA/OnzJhM/jzHwFjMYE=;
 b=pPyTmg5iqnMTg53QUG8ifAPqpdm5NCXW+oIUDixsBMAhxKNgLY6hdf3qU+ZTzNRMFX
 t2AYMYjZXsf1WJQwra3CIhQ61Q+ZAoi65nlUcDdTkp+2FMqdJ5Gcf6WPQL4qtW0zvsiJ
 nAyuYDU8JOMX5LzgGhNh/5ujIDb2Iv/Y4SjdYn/YHeiJpkr01bIpBXlG5VE8zQqWdYwA
 N8kqaoDnELkzktQBFq1uhxIMRDEKozCsCjK1TBTVrjlM4MY00YfxlgTfCQdG4h5w4EeP
 1yJTypSC0tb8eSzekH/CBAKe2ctrSQ56eWQiL6WyPGGt0gOm1gh7TTbjLim+6u+kim3F
 8FIw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUaYOdJTQtgCXOmOTpolX+qLsAInqdtw72WI0qWGtuwW5SjmS4W9pHWCQnH6U5vm9XZQU4SpOi+Z2wi2KSQ4E=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxN96oEJ/16ynAdwH2odZbfC9qq6jymwjuJIQYI4M6K5PJPe6qp
 8/Qtf9DYHQ52qkPMb4QKdek8AuGTYynsyvYic1YE0om/QNNtMaq+3KAEMROSeYDa5w==
X-Gm-Gg: ASbGncsv8TasCY0Wo+SiVQVQSz8iL7g+cDWC33ide8INmgu1yvJqOhE+P92Ubk/O55f
 6DMZvIrI5DVNBm6S4Y/xzs8JLeLtoIyrVx3vaqoUScM8br0nuq+NBo96qCT/N1hYrnB64xTtQPF
 ZfpqTZeRK7HfI2vNTEW5pNyiPA6y4iDCpaccKYqAnHWvPt8dQ8hhDiGBcM+P4it1ZEXMKIqr80E
 YhRBcilrPnd/19PxjlppMI7mV46462471AFI9ai2dvxtcYDDt50PWfJADZUICGbPo92MLzPTJiH
 dhXlrHCE83/13EcFhNGNJyJrltWhpB7oJF8GONQMHBHcJpHgeYcY7H7i0b7xSbL4n7NilDA=
X-Google-Smtp-Source: AGHT+IEIZRicbupUDozkVt9UuIKeF94jzcW78MZ2mImR1D+dg4nHqW/ZW+k7y9I1SRWPwxvy6g8L5w==
X-Received: by 2002:a17:906:4fc5:b0:ad8:85df:865b with SMTP id
 a640c23a62f3a-ae0bee4f81bmr53130366b.33.1750799106807; 
 Tue, 24 Jun 2025 14:05:06 -0700 (PDT)
Received: from [10.2.1.100] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae0541bbdf3sm940960666b.137.2025.06.24.14.05.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 14:05:06 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <0407b67d-e63f-4a85-b3b4-1563335607dc@jacekk.info>
Date: Tue, 24 Jun 2025 23:05:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vlad URSU <vlad@ursu.me>
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
 <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
 <20250624194237.GI1562@horms.kernel.org>
Content-Language: en-US
In-Reply-To: <20250624194237.GI1562@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750799107; x=1751403907; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=H2zUMtRrxbBSd6ymsb7+7OBAUA/OnzJhM/jzHwFjMYE=;
 b=l+Or3uhKHHKtAY+QyNBSMg+OLobuwi7bzD3qeH/C5a4TIw76PJWnqAQoGacRH9R2N2
 54Y7evLmk0YrzhBcgzWpqfZyVeJPldNnxIamd7JHt2WFlO/dw21eZjZvSLuxYB7tDCD8
 uNg3R/tiCc+jDffX2i11yYqEJGjQZNmZUUaHPJGAf8MSlH6cts8M6oVYq9HdoujL+rYU
 XsmnB1b8LUbiUdJA6sxsFIj+Z97IvdHUsFVKkJM2kOKgb2QFXhTgteDRhe1iYBoFJ9Iw
 B/WoF/OvGDoDo7KE/NgOmUkLCbe6HqJI3bwvtKIWj+1ZqKMdpbx/+9jP0AvMqLi/wVuw
 O87A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=l+Or3uhK
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

>> Unfortunately some systems have left the factory with an empty
>> checksum. NVM is not modifiable on this platform, hence ignore
>> checksum 0xFFFF on Tiger Lake systems to work around this.
> 
> I think that you need to update the patch description. As of v3 it's
> the last word of the checksum that is being checked, not the entire
> checksum.

As I understood it, "sum" is the resulting value while "checksum" is the
value appended so that the "sum" is equal to some constant.

But my understanding is utterly broken by this line:

>> if (checksum != (u16)NVM_SUM) {

Where variable checksum (shall it be "sum"?) that includes
"checksum" (or maybe checksum word?) from the *checksum* register 
address (NVM_CHECKSUM_REG) is compared to a constant called "NVM_SUM".


Is something like this fine by you:

> Unfortunately some systems have left the factory with an unmodified
> value of 0xFFFF at register address 0x3F (checksum word location).
> So on Tiger Lake platform we ignore the computed checksum when such
> condition is encountered.

?


>> +#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF
> 
> Perhaps it is too long, but I liked Vlad's suggestion of naming this
> NVM_CHECKSUM_WORD_FACTORY_DEFAULT.

I can update it as well once we agree on the wording.


>> +	if (hw->mac.type == e1000_pch_tgp && nvm_data == NVM_CHECKSUM_FACTORY_DEFAULT) {
> 
> Please wrap the line above so it is 80 columns wide or less.

Wilco.

-- 
Best regards,
   Jacek Kowalski
