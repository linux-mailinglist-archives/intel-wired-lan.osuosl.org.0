Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A460AFC728
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 11:34:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC72C60C15;
	Tue,  8 Jul 2025 09:34:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1kruUAlH8oCA; Tue,  8 Jul 2025 09:34:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05D7860BF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751967294;
	bh=X0wqIKyfiz9E2nC0D4l4R/OYaIRzSGCgL15hXxtZO5Q=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g4AHHCUIEaj/PjCNLW4m7fPUzcxLFeRqfBuyJpu+x0RXH03TKxCbDmjgJczIiT5RN
	 MhIMnQPVoud19gYSDfBAlKQ7f2Xd4DlAC9SNApk5THwIqNaQlZ/8S7Ognz/e3Gqs5K
	 eSDydcp55miRYssjWIbRAmGphRPh2RmA1oSJRKv39z2FXuQmTkl4uK5MhTBCctWKEl
	 2yIZTaqvbqTi0p7lq/vmuaXguAroBpXXF+pXChqKQvDwr6UibAx2jhUMOF6Zj+j7eH
	 GB9snL+y6+t/WcxwpqFbJLP2sIPQjuIYETi08Rp8glBQAMiJ3V3enr2lYf6whvhcti
	 ZiK/GIyDLUzyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05D7860BF3;
	Tue,  8 Jul 2025 09:34:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CAA4815F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 09:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B031181354
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 09:34:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i0reTO4XkBik for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 09:34:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A174881331
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A174881331
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A174881331
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 09:34:51 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-ae0de0c03e9so709384366b.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 02:34:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751967289; x=1752572089;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X0wqIKyfiz9E2nC0D4l4R/OYaIRzSGCgL15hXxtZO5Q=;
 b=caH+55uar7NazZTpiFWGhyAldUk38qojMnCUZZpH3rMyudAecy4IupUNbxbPjWu90/
 ckjKb/po8PyDW1kp946CV3XxcwnWywFufOeddo3/9KDUMHZgp98C7GCcI7WMUfGSoq61
 L2+3W3QNFGm1boJF6dgy+vFyIgGIQRYagCrIThu7IAFUe6Qoo/k/d4RL+alUUZfLBDwE
 n/+uCtEJj2D7GJTeEluiTI4aZyolSZaC4lb7Mskk8ZE+PKpnOeHNOC9RdJXf45MrjIhQ
 owDTd4Ecl0YZlgF8rhQXhrab06yYebafxHnGMnDPqf3nfEFUGKFR3+DF1EOlgG6rcYqm
 KdRw==
X-Gm-Message-State: AOJu0YxEI0e2l6ecX03nKjVAsrye3JA0fNxGcbG3nYUbVghCfYerXiP+
 k6UTgEhQL68FJCaRqVFi435b7I/BeakR2Lr+amJ7KlYUUF6+xK+cd6qAvDI4iG1V+g==
X-Gm-Gg: ASbGncsPeYdPbISSuofMt97NJQKDV080Rm5g6dCki5kd37zjko5wTTHaTgdYxITsdZj
 CT8r33o+WxxXWOqHKZH8HjhcyDjRt2uQuhAdcnFos48z3hjlADQZR373J2u/LpP1qzOgqgN41vd
 UYBE2s395KybUPQiXDLDz2OfDJ5+biqqy+R6EP85yEh6cUt8QS6Qx+LmcwDMRlEUTqs2hQMdHEO
 SmbAffw0KdZbrwlbIhs0phdeCjLNMcgdpMFflczsI2hqqqEwgMG7WIJllXk9MGChNpAHoracDhA
 /Kcx7UY1/FblszJsiRYKoMPe+f2KI1RzC4K+Qz+Z1d11h9W/6SvDOL7nF8kyD3AS
X-Google-Smtp-Source: AGHT+IFFxKIDljWecarxI82gyEkU8FVLu9l9gNqGHicZF6D2RYECCVrdKrxL2M7d0nFqgkB0aRJAZg==
X-Received: by 2002:a17:907:3f92:b0:ae6:abe9:8cbc with SMTP id
 a640c23a62f3a-ae6b055ea10mr245460066b.12.1751967289550; 
 Tue, 08 Jul 2025 02:34:49 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae4113013ecsm630494966b.58.2025.07.08.02.34.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 02:34:49 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <b3273f0c-c708-488e-88c0-853e4e8e5ed5@jacekk.info>
Date: Tue, 8 Jul 2025 11:34:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <33f2005d-4c06-4ed4-b49e-6863ad72c4c0@jacekk.info>
 <IA3PR11MB8986B9D474298EEEFA3C57E5E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB8986B9D474298EEEFA3C57E5E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1751967289; x=1752572089; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=X0wqIKyfiz9E2nC0D4l4R/OYaIRzSGCgL15hXxtZO5Q=;
 b=XrlpgLP0Ff38moqab8kGkpEAXaN7QGHcrHHBJ1Y/95WnpEyuoW9SGXn7HrrJ7aDYR/
 83pT4VYs80COD9BHkmfSXWbMfoOUSygLdxSMMZ2lvDiJdgIIkCpZBqfR6tTRrp9BEhvg
 kWhNVmPeL5FTKlwB4QL56SeYWGwVEg/65o2oiIk6DdqPUsfXk7khGXpARuLaxgDmP1xr
 pOwh1ZfFP3bI6swxMkR7cy2C3DYMlarR7KX4qutCn8EAGA0h75tJbH0EF6eH+R4Nl4eq
 H/BL00qb+bavICOq93+5UxKAqU7NoN17cDNWoTn92nLbB/I3MGeCDm3Eg8dS23CL9+ey
 +f9Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=XrlpgLP0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ixgbe: drop
 unnecessary constant casts to u16
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

>> -	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
>> +	checksum = IXGBE_EEPROM_SUM - checksum;
>>
> Can't lead to different results, especially when:
> checksum > IXGBE_EEPROM_SUM → the result becomes negative in int, and narrowing to u16 causes unexpected wraparound?
> 
> With this patch you are changing the semantics of the code - from explicit 16bit arithmetic to full int implicit promotion which can be error-prone or compiler-dependent /* for different targets */.


As far as I understand the C language does this by design - in the terms of C specification:

> If an int can represent all values of the original type (...), the value is converted to an int; otherwise, it is converted to an unsigned int. These are called the integer promotions. (see note)
> 
> (note) The integer promotions are applied only: as part of the usual arithmetic conversions, (...)


And subtraction semantics are:

> If both operands have arithmetic type, the usual arithmetic conversions are performed on them.



So there is no *16 bit arithmetic* - it is always done on integers (usually 32 bits).

Or have I missed something?


Additionally I've checked AMD64, ARM and MIPS assembly output from GCC and clang on https://godbolt.org/z/GPsMxrWfe - both of the following snippets compile to exactly the same assembly:

#define NVM_SUM 0xBABA
int test(int num) {
    volatile unsigned short test = 0xFFFF;
    unsigned short checksum = NVM_SUM - test;
    return checksum;
}

vs.:

#define NVM_SUM 0xBABA
int test(int num) {
    volatile unsigned short test = 0xFFFF;
    unsigned short checksum = ((unsigned short)NVM_SUM) - test;
    return checksum;
}

-- 
Best regards,
  Jacek Kowalski

