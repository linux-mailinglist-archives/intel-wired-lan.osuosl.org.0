Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4F2618346
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 16:50:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F4F2404CA;
	Thu,  3 Nov 2022 15:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F4F2404CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667490647;
	bh=RJUhN50LybjNigJbDUrz3FSnfgOENdWn3Gdvok1F2sM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W1fF5faYLK4ka+3Uhg2E7p5hVv8Xvt/o0VAUfpSoUT/xpes3T/lxlWABzI+A3/g4c
	 Jjf8TXxwNDHAj5VJIqyDOs3sGrzp2LyJMc5Uqen1cncxxanZZsfWO+y2um9DlOJr6e
	 1Df6Cl1qUko1WqSdkIn4wXdUrUu0o2dXJVVQI/v7unUoLp4Yhj9Ty1Rjl2v/gSV40e
	 Wm0NuyLrvD/WI7mG8flhRERaSn7q0CxxevFCygd0OL0Q9qiTfFovoPgarevbfVpU0R
	 13c8qZskeNtLFPbIT1zV9hC4AMSRG9mJJqU7MFEn1n/a3I6vjdgiKqQaRe40zDXb0d
	 aTGhNPju1uTnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VO5r9pf9D8JP; Thu,  3 Nov 2022 15:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 896A4404B9;
	Thu,  3 Nov 2022 15:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 896A4404B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDE601BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9195360FD4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:03:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9195360FD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sY1WV7ngLFVW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 12:03:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 347E760FD2
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 347E760FD2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:03:45 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id cl5so2404423wrb.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Nov 2022 05:03:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=frMmRWbz+CrWSwXHd1wJhRWogqGhZzQQP8lyso7wOSg=;
 b=XfxvFvcGJmX/OZvHWs+N/LMR/jjHWoEgkF4mOSV+7PmFDr4QUIqzAlwGWuACCwQz7H
 tyzt3/3zLnIrwSdUHuHSyrl4UEa87bC1/Mrz90T18Zl7G4fjI6yWlx2OlQCGqtBYxOGM
 Cyp3Dm6R5unMa+ypDb9mDMtBdLm+Px2183+Tphilj6irbtMG3kMx1Hwr3CWUHav0Yh18
 GcLhmlsq9aYmRQnIVDs/tl0PhZn/UEMPG9ZajHjZQGvKsNvHUor6thX5xj7+8m7RFy7J
 m/IQX+zh3yTMkCh7AQB+IQMqfPK6PlZgqwj1l3i29ovXcf5hOf+Xmf4bTth5xxJIYCiI
 Oj6g==
X-Gm-Message-State: ACrzQf3pWLzrlE/rcFE4sk4FaEmJdEb8V/by45w+U98iqDHaplGxzJqU
 9cVV1NLBCs0DWk4I5aothos=
X-Google-Smtp-Source: AMsMyM7mOpiAGdP3bMUTH4qm2eG3uGGD+AF28LOaryDBJl0zkEaKdVJwqta2ulDwD21Y5KVQVqxwyw==
X-Received: by 2002:a5d:62cd:0:b0:236:6ea0:a609 with SMTP id
 o13-20020a5d62cd000000b002366ea0a609mr17472410wrv.508.1667477023312; 
 Thu, 03 Nov 2022 05:03:43 -0700 (PDT)
Received: from ?IPV6:2a0b:e7c0:0:107::70f? ([2a0b:e7c0:0:107::70f])
 by smtp.gmail.com with ESMTPSA id
 c4-20020a05600c0a4400b003cf894c05e4sm3778568wmq.22.2022.11.03.05.03.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Nov 2022 05:03:42 -0700 (PDT)
Message-ID: <bf584d22-8aca-3867-5e3a-489d62a61929@kernel.org>
Date: Thu, 3 Nov 2022 13:03:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20221031114456.10482-1-jirislaby@kernel.org>
 <20221102204110.26a6f021@kernel.org>
From: Jiri Slaby <jirislaby@kernel.org>
In-Reply-To: <20221102204110.26a6f021@kernel.org>
X-Mailman-Approved-At: Thu, 03 Nov 2022 15:50:41 +0000
Subject: Re: [Intel-wired-lan] [PATCH] i40e (gcc13): synchronize
 allocate/free functions return type & values
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Martin Liska <mliska@suse.cz>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 03. 11. 22, 4:41, Jakub Kicinski wrote:
> On Mon, 31 Oct 2022 12:44:56 +0100 Jiri Slaby (SUSE) wrote:
>> I.e. the type of their return value in the definition is int, while the
>> declaration spell enum i40e_status. Synchronize the definitions to the
>> latter.
>>
>> And make sure proper values are returned. I.e. I40E_SUCCESS and not 0,
>> I40E_ERR_NO_MEMORY and not -ENOMEM.
> 
> Let's go the opposite way, towards using standard errno.

This is propagated several layers up throughout the whole i40e driver. 
It would be a mass change which I'd rather leave up to the driver 
maintainers -- I don't even have the HW to test.

thanks,
-- 
js

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
