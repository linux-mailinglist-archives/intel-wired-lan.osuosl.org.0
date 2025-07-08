Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8077AFD739
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 21:40:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9287A82030;
	Tue,  8 Jul 2025 19:40:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h-GZj2okiOST; Tue,  8 Jul 2025 19:40:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2A9C82033
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752003619;
	bh=jAfF6IjOYMAuFNwRXlzrzjjBqCz1ifTxiLxLA+WYDxk=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XiH6L+oBq9pitYzPXGc++QVMjN+DxFAyxCclc1esBh1/WC+3FZidVKYvFsfvdrkp0
	 CPezNjIlUhQqEP1V01T6y+W8CNmHCv6C6iBJq/TsmPWk5HVOdS+m/R0cTlAVDwV9zo
	 dMPFhzC2SWTVuiZKsjJYf0+21bW0CVeepV7OrJJPmp5c0EMgpv+4qk15TUcLbBUilm
	 OuMXAbiRYf2h392RqLNEjuWeYoKn5ZEYKW0c9g47kgbZeDOlt+7LIO/z0BCdIwteD/
	 aV8N/I9kxpAd2QllOyfuM70XYVQYg0LmVpFEub6g93RBeXw5JZB14F+oUryK0pE3BF
	 jBoonGIrVs30g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2A9C82033;
	Tue,  8 Jul 2025 19:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9215D1BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8421B608FD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:40:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OyHw7Z3EBLzl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 19:40:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B085608AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B085608AB
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B085608AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:40:15 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-ae223591067so797444366b.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 12:40:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752003613; x=1752608413;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jAfF6IjOYMAuFNwRXlzrzjjBqCz1ifTxiLxLA+WYDxk=;
 b=sfdE6O+22FqneLR1P6TWMCOTGLIo33QHAZneG0UNSdeURLIh/3vk0Rd2yDiXnp9In4
 kzw+xp3KdFdc0tMfKkhpHaBRHmhTEF7YHzMr2Gy/B/oF43AG7IZnkWXs2fYFAyxOdEI0
 UB0RcvuoFrsCSk835L+bHXNtHutkCANJDdzexUpCFJvV20r9UW8ONa00k6I5EUbCNYEh
 cllaQf2gUppEt46ohqq/NJ6IEgtLdh56KZZoqilKKGOuv+q5NmDtTi25Blkp98YwSQKc
 kUW/I4UDXIb8uRkzLf6rFGDBs/YbcSY//e9lN9KzhfWM7x6TanIoMp20iY4Q/aO4s4Hl
 9qgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV0oEbz6EU0ZmL1lbFidG6Ctbr+ELhpEOcG3X+S7/kjJJLWytBwjRFb4g953tWCImuhj9Vgqpm3OoqL1f4Z6N8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyGyfIeVMf/dXKxiixTSbqlurPheISEerC89mXxm4OvNmpq19D8
 eSUtQHUTrupvBObfyuSvkEPDWk9bK68JibjKPsLTk7TmZAoy946+BA04HAWK3Nv9Qg==
X-Gm-Gg: ASbGncuUmH5f1glDTuE3CuP0Wrh/tkLotCJF77STlxhUeJts56FzDq5TZkGXDFAQNYh
 XcpFWclwTXWbDDTUTIbLfwwfHqn7SsZcZRAwTtty3Pj3w8hOL9vKmD6Vb9SYTyoMsIxug6eFV8a
 b2NZPFXoVkUuzyhy79zeqoMZnench3c2wQ1AwXBsHMnoxyNNXXZjRQhe0Vu+nvzumJQKOWJOSb/
 LlOKaCpuzpioqAOQ2jBjijtPrDjSSfX53YXA9UXpkgpLp77uBUtpWf8Kw+0UBWPARBWbPBckT9W
 1O5Iys60ujGjcMEGaXqg8bVD3/xB8PcyzC3OLbJHFTpHBEDkcRCBV6840dkk
X-Google-Smtp-Source: AGHT+IFFBksIRUKOd2HpO6z3IuGzi5/sf0uWTh1t4WBmlfBEqsrb0o0vxjcCW/dKCu2uAqDVrz+t9Q==
X-Received: by 2002:a17:907:1b1c:b0:ae0:d903:2bc1 with SMTP id
 a640c23a62f3a-ae3fbe32085mr1884498466b.49.1752003613463; 
 Tue, 08 Jul 2025 12:40:13 -0700 (PDT)
Received: from [10.2.1.101] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae410e26785sm722615766b.17.2025.07.08.12.40.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 12:40:13 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <522a1e9d-0453-447b-b541-86b76fa245bd@jacekk.info>
Date: Tue, 8 Jul 2025 21:40:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
 <20250708190635.GW452973@horms.kernel.org>
Content-Language: en-US
In-Reply-To: <20250708190635.GW452973@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1752003613; x=1752608413; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=jAfF6IjOYMAuFNwRXlzrzjjBqCz1ifTxiLxLA+WYDxk=;
 b=xw/Ouct1bpRmKgkgEYNVG6eBI6fUwTuvpU9n/0OQADAZMACvOm/YYFXyQXgDJ5bzlP
 7LqJEsFZBNnIfpg585imLTlxdayJJd8JJmkUNDF4E1pKy0iTji7NmwDJ9LEEt3/vsywv
 G6IfIgyaETPYewA26qbYtViLggcBuE2zfUuBRGaoIWFH4n5LHdV6hmoishvnQtNWy5/E
 wo18st7GZI+XzEwlANIpY6xenYVRyK5BB3UtAvYaUidNHmJrD3jDtu7njztnyuVgvwcr
 QB9/Rur8cJh9mU+LtOpcfOhUmsbrGpJ8mG4wMXL/bzvYsKz4ywHGjqEheQZ5brRCxH/6
 0SMQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=xw/Ouct1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] e1000: drop
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

>> -		if ((old_vid != (u16)E1000_MNG_VLAN_NONE) &&
>> +		if ((old_vid != E1000_MNG_VLAN_NONE) &&
>
> Ditto.
>
> But more importantly, both Clang 20.1.7 W=1 builds (or at any rate,
> builds with -Wtautological-constant-out-of-range-compare), and Smatch
> complain that the comparison above is now always true because
> E1000_MNG_VLAN_NONE is -1, while old_vid is unsigned.

You are right - I have missed that E1000_MNG_VLAN_NONE is negative.
Therefore (u16)E1000_MNG_VLAN_NONE has a side effect of causing a 
wraparound.

It's even more interesting that (inadvertently) I have not made a 
similar change in e1000e:

./drivers/net/ethernet/intel/e1000e/netdev.c:
if (adapter->mng_vlan_id != (u16)E1000_MNG_VLAN_NONE) {


> Perhaps E1000_MNG_VLAN_NONE should be updated to be UINT16_MAX?

There's no UINT16_MAX in kernel as far as I know. I'd rather leave it as 
it was or, if you insist on further refactoring, use either one of:

#define E1000_MNG_VLAN_NONE (u16)(~((u16) 0))
mimick ACPI: #define ACPI_UINT16_MAX                 (u16)(~((u16) 0))

#define E1000_MNG_VLAN_NONE ((u16)-1)
move the cast into the constant

#define E1000_MNG_VLAN_NONE 0xFFFF
use ready-made value

(parentheses left only due to the constant being "(-1)" and not "-1").

-- 
Best regards,
   Jacek Kowalski
