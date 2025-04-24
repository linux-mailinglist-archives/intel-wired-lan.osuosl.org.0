Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CAEA9B46B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 18:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8472D40339;
	Thu, 24 Apr 2025 16:46:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hBp5a0BlVi8d; Thu, 24 Apr 2025 16:46:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E13BF403A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745513211;
	bh=WhDyBzYENMDRP2Qu4icH/WALzGg0heRjnQ9LBasVOtE=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZfHb74qBhoom7uHsuxleR6kvzY39Fk0BsmH0ocbztWw86LhyALE62GPA1hZ6VXjhl
	 WUt9rlGtd9IVYOcpgUGCJSSmHoIDZ6U4vSyMUnTrLwlzm7q+BZlwB1tf7CQu3ieQgA
	 Z3bsy1s12h7K4Bof/UradFiLS0hmpIiOO+CBldA+ixfd6bCT0r8RIvIs89ZPuHjoow
	 bnLte1u84V2I2YB6YBQxM48Yq57PT1eeUcQHdX1LSoRKWI425KqJ0o8YlqJf2EsPTr
	 vxD4Qp4C+agsFA2uQi5kqM3TUK4AoCE/jRMh8cvQqmdIbwJyqs4kOSTdPQ8iVTiN/8
	 doCMk7FrYKudQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E13BF403A6;
	Thu, 24 Apr 2025 16:46:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A13294B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D405401B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:46:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gd7EAOWki2Ss for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 16:46:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::529; helo=mail-ed1-x529.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0B526400D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B526400D3
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B526400D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:46:48 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-5e5e8274a74so1949589a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 09:46:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513206; x=1746118006;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WhDyBzYENMDRP2Qu4icH/WALzGg0heRjnQ9LBasVOtE=;
 b=cMgvpmfe9V37k9j6yI/rfyncwlgVIQKVWPeGEUUrp2TotpvaoTtCnviGiGtNHZmcVI
 MGOq0MqlcThd/3KD/ccptp/QbpDFcWq6sFLhwAK0jETzpGcE70aQXaWZ+e1hDrz0DZkz
 /duVgV8lGgMlecVJNfA/G1zMYYpucwdFRa2Qn6rH2fs2UW5eEAqkPGSFK9hLKGT6DHMd
 0av4Tcx+IUgFusPMRTP0WgjqZjrDBCJwhjwWK9AJGtfvVvGeXXkf3KY5KGeeWCEAIOP3
 30hkV9WFgjgqm4hBK6ajWjKhDNk6R8FFTJ2nJy3msVPp4nz2TeBxOfPy8p/cnD9fo0Er
 6vEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTc4kk9Vy33GRSjz3DNRkQfSRIVFZAodECIuOkBu7n6n9u0WxtjKaeUYfP1nI8P4qFus1ANbRpqzwvfhzrb+w=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxl16InbQOk77z/GkCiFLja0nQaSSA9DmfXQSdVmWhsHuOEjTKf
 TDEXGqfhUPd8JXhMCzA2t6gxp5GHKzzVxHeeLEjxdkW2wXIq/azGRx1xxifvYg==
X-Gm-Gg: ASbGncuMDftU0aWvjHIgdL5EI/v72aP3sSTj4O32tMSmxNmldgeQVJgc0/dNpeiWoGz
 NYJVWYbaquJ6szQ2OxkxxmUlc4GeLyAE3EBfWfwdnXic7kP6AsmLLaFwDIvKQyDxykKdPnbzYI6
 DmKIxM9+Mwl2sIlOPocxgs3gbSw05eK/TekljcDJQmPz7LPU3uVcEJYjTLZ2aqxmUX0vzl2icM4
 hi6xpeB1egX1FBRZL8z3IS/qsVRJqPTVK+GUn6ZPdYOyKAgJ01UISHHXQr6iB1+d+VKgvNbMTZO
 aoH1jelbeIVQ0MQBqkIo4fm9nnYAuwL4dQTWBD7X3iY8mlji2A==
X-Google-Smtp-Source: AGHT+IHTYRGYL0LPgs+SLCq7Lwnmm7pESM7YoTIQRAUYPS5PaefisCf4m3nGAns1jOX8rlFzOE1U5w==
X-Received: by 2002:a05:6402:40d1:b0:5f6:20c4:3b0e with SMTP id
 4fb4d7f45d1cf-5f6fabcda66mr75949a12.8.1745513206448; 
 Thu, 24 Apr 2025 09:46:46 -0700 (PDT)
Received: from [10.2.1.132] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5f6ed416c66sm1370042a12.60.2025.04.24.09.46.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:46:46 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <dc357533-f7e3-49fc-9a27-4554eb46fd43@jacekk.info>
Date: Thu, 24 Apr 2025 18:46:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <20250424162444.GH3042781@horms.kernel.org>
Content-Language: en-US
In-Reply-To: <20250424162444.GH3042781@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1745513206; x=1746118006; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WhDyBzYENMDRP2Qu4icH/WALzGg0heRjnQ9LBasVOtE=;
 b=TfsCRhiGga0040YJt94f/zah3pGWiOoMpVmTcYG+HMkeh183MeJE+lP/rdUf4igrZH
 VAScJ9JreQy5KsHwjKjQjMs/s1Xx5dpFD5CoE81EuWaqyCwurkeWtxF5LwF4j7Pr38xf
 bpbP2E+kXgr6qJLAdcLE2ZVMuBx/ruW7cSr5GDiNsMNCd0N0ASbbDYa+PRaqcHcgxMle
 joOW1WknqQzRtdp9pr/fgC+GWYCPkdApCpXlp2ISFyRhOpS2d6vSbqR5I15XiNXNnCtc
 QsQ4W9/tJg2dbOrKY+oOAkQWN1mtPi6FFxGQCZhE7KbLThsheCPIh/ooMporC9A28Y0p
 l/Ug==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=TfsCRhiG
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

>> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM
>> checksum")
> 
> I think that while the commit cited above relates to this problem, 
> this bug actually dates back to the patch I'm citing immediately 
> below. And I think we should cite that commit here. IOW, I'm 
> suggesting:
> 
> Fixes: fb776f5d57ee ("e1000e: Add support for Tiger Lake")

I had my doubts when choosing a commit for the "Fixes" tag, but since
my setup would most likely work up until 4051f68318ca9, I selected it
specifically.

On my laptop NVM write attempt does (temporarily) fix a checksum
and makes driver loading possible. Only after 4051f68318ca9, which
disabled this code path (because it broke someone else's setup), I'd
be unable to use my network adapter anymore.

-- 
Best regards,
   Jacek Kowalski
