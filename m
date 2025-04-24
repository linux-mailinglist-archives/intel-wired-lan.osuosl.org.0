Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A1AA9B535
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 19:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 668EC703D2;
	Thu, 24 Apr 2025 17:29:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GxJkmt6oBepj; Thu, 24 Apr 2025 17:29:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76091703AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745515774;
	bh=JLHhBvGwHoD14XYoD4WUPVU9+Bb1BKcDzuKit79fgsI=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=19YOynJDy7uqqHKzBPVsPZijcjh/4OPqV/BnBLfXH7M3EMXOzmacLJ9Z8mzKJ1xf3
	 iyhtvUxQXk2ST+PT1ujvQ6oQwt63y7UP3khADKi3b1LF9YIO2DePeeOchOWRvSoMPs
	 xetMhBEq9ohEW75bkrhOE43YHTCBx9+h4i8leufr/8LfIB4I2/PEIVVbwIcUPyJEp+
	 ExaRZ9qZqH5jg/V7TPY3md+/wsiv8oZSqhoGZtJAVgC+/HxhXqaXKXphpeS4pidHcC
	 RlTUkbetLJmFU357x/WY5rF0m5ou1mY7wgOt7cTmjyKITlovr2lBY8Y3r2ToRr3J8N
	 BvLz8h75riXqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76091703AA;
	Thu, 24 Apr 2025 17:29:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 10142968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 17:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00AA6405D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 17:29:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1cmfZwMCl4V for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 17:29:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF73942421
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF73942421
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF73942421
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 17:29:31 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-5e5e34f4e89so2404145a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 10:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745515770; x=1746120570;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JLHhBvGwHoD14XYoD4WUPVU9+Bb1BKcDzuKit79fgsI=;
 b=mgdH8/Sv6ok1KeqjRcs+oyNWXzw7QAXFbWZmHQc6Et2OgNEa0GUgiyYgGu+SLOmkap
 B99p1crmjCm+KGkVR0DhoGNQV3u5/jxoYRRpagJHKSnITkqY2jPMz3PTpXzuvC4iL96g
 yQnCWtVIjglnNhF39+/cuxE0cYwHM5swYVxKLMOU9F80etE656oT+NFgdFMVOtsaDqhu
 z4TBI9JQcII3qZ91p6iXG0eb0wBWZyvk8tV/nWbWtQT/5+Oid6AvegInevtHbHeBbX6P
 JsWrq6Zfn1KgySNQNCDIbB5Au2OHv7rQ3kakCImERQpdCT49c9Ieuc0YE3FmR5NxqmeX
 5YqQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWdxUoIdwvYXjjpRXlB1IkbeUczH0ffCs2hOKGzJHyIuBwpgGycBeajbY3vipmH0Ezy9fbg9X3lTMI3tjvEXso=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyIXto76dm3lS0a9YBlAJMjOl4A9ZvRzGwekzIk+rDouRF6/2BR
 KrEjKvGJ1zVEV4f3z+YCCjdHtS6GZIUMg/K/FOYhgTvr78hbdeduoBgp+R+qlg==
X-Gm-Gg: ASbGncvHiwE/h9U1ss/28iZxS/1yyiZzYKbvBdpHvYDBoMxDoO/vFwbjVV3A7gaD7sl
 unlG6cB7l/cVXkiMPg2HLLuay+1nR/x/eRWdxteNJXV9GEsilwlVi5qTI1Qb6uZk9yu1HPbIpzY
 xJgS5jMgxOylcUxN+09ofIBt1U3ooX0LLmaEzVx2HnxBs30jCfoeYdx2tfyLYo+DZrAS9qeGOBb
 KbPSmBw0zCvqNAkxQX9xcfUPMqIziZC2PtI3rovtZBxYgg6fK6BfGW1EMZ6aQZvo4IMPmRuC9Li
 ki/LYjgN1571frOEDSfaPrRIjCYZDtNqeTVQQ0Q=
X-Google-Smtp-Source: AGHT+IE2ovPWtaSR1CwyZflNLkJWQlZGCejIdOULuu/FjYId4ZaicaBupsaFG9P4tzlR01R9OMB2kQ==
X-Received: by 2002:a05:6402:845:b0:5f3:4194:187 with SMTP id
 4fb4d7f45d1cf-5f6de6980d6mr3197899a12.18.1745515769548; 
 Thu, 24 Apr 2025 10:29:29 -0700 (PDT)
Received: from [10.2.1.132] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5f6eb32368bsm1383533a12.10.2025.04.24.10.29.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 10:29:29 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <e6899d87-9ec4-42aa-9952-11653bc27092@jacekk.info>
Date: Thu, 24 Apr 2025 19:29:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <20250424162444.GH3042781@horms.kernel.org>
 <879abd6b-d44b-5a3d-0df6-9de8d0b472a3@intel.com>
Content-Language: en-US
In-Reply-To: <879abd6b-d44b-5a3d-0df6-9de8d0b472a3@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1745515770; x=1746120570; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=JLHhBvGwHoD14XYoD4WUPVU9+Bb1BKcDzuKit79fgsI=;
 b=IwRyqwtOC1AJo3lW5D1rDmFDyImxpY7RDAzGQb/O1qtuDEG/iMi7a7D3FgxY5DPp9+
 5H3UpaSzrH/N5MkLHet9+oVbNgDGR2FHQ2WMQ8i8FvTAxJ5EoT6ndF3rQHsPd8/xOfdD
 cP2EgSExhvWdAIevQvLthxx/RJQHv78FaJ0I+LzMmxuZvbmptIQNyl9dkcUFNg5tLzQp
 9E/p4i7Pp8jVL5jwTXRKEirrBtPvel5zYm8A7Eqyggj5h18Bw8F0HdNKEJuW5xrouyg8
 qTfN+AOiZ6HpOMnuJBUsFbDWy+cqHVyaz9qB6u6Qr21VM5DTAq+oqgnc00PzSHspaSdY
 E04w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=IwRyqwtO
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

Hi,

>>> Because it is impossible to determine whether the NVM write would finish
>>> correctly or hang (see https://bugzilla.kernel.org/show_bug.cgi?id=213667)
>>> it makes sense to skip the validation completely under these conditions.

> It is not completely accurate. All the NVMs starting from Tiger Lake are locked for writes, so NVM writes will always result in a failure.

Check my message in a thread of an earlier patch:

Message-ID: <1c4b00b6-f6e3-4b04-a129-24452df60903@jacekk.info>
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250407/047551.html

On my laptop NVM write operation *does not fail* (nor hangs), driver loads and ethtool shows corrected checksum.

This lasts only until module reload (rmmod/insmod) or reboot.

I guess only shadow RAM is updated (or something like that) and not the non-volatile memory, but the operation itself does not error out.

It might also be because I've disabled Secure Boot...

-- 
Best regards,
   Jacek Kowalski

