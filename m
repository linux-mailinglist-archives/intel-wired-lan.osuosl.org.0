Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B3664A491
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 17:08:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E675C81926;
	Mon, 12 Dec 2022 16:08:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E675C81926
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670861290;
	bh=M2Zn3aPXGVjOHAOisKhEzkTnvuc2gKGQAIiiWpq81I8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Il6vw2dfNLmMPoqKFZ/bfa/jO58TrhGsuNQSeM9Ojf3+An7HWhwB6MKf6SxzFjkqG
	 3HBVjibggJNA5FNINGoSBlTuJL0nptldQ8cI2g8lS4i8YJHCK89VlCLAneBQcUq8UR
	 hYfijSh0CNvBoSoq1Hnx8YaMWPC0hssp73HYcUavv+p5PpEUmYtBlxzAYWzaXadAcz
	 JoTFj6XMjHLqJaSD/rgooiGbw2PSo9jQJGpg1bjEiEOIycmEeixsqnxgAShALEA1FL
	 xdBEfbba6KYd3gnanvheAfsIRYpUZVoe4Teb5ct8MB5QLaqaxKt6IMNGuuZklPGIvu
	 EcvkCFxF56E6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b_vjEOIf_VEA; Mon, 12 Dec 2022 16:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBAFA80D0F;
	Mon, 12 Dec 2022 16:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBAFA80D0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA9FA1BF398
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C511460C2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C511460C2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4hN37lfYKkw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 11:55:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0797960C19
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0797960C19
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:55:39 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id m18so27279793eji.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 03:55:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9agZglOKPdWwX0fuJjm0Z+bcOfHu+FauaBqawzsErgU=;
 b=S9IQSk3LbLFa2dnajlR2Cw/lJpYI6I+89qUvcHV9uNFxyFDYxHwnfrdzVTsOExSmiz
 rsJnD5wBPn6uSNCbLOhxLU80QWKeyEI0ycYNheSTbxHkCxPeLNwEFTQ69Qqm1Vm7jPGI
 Ei/9piO71EDlGb72Xope4Kiwo8aKge/iSsiBDQTJZIQSssxsEH40OR7GndmcWs/rVVIS
 CHjkiUtYVaIZaQcxDYHb+7WOsbzAj5KZ9Spq4SeAVzHYkhrXJwcsUHPqqEOBko8QPTcG
 GTccZ94cZGblYMdaXsYIw7jfumUA6kzj5epxX3dgxdYzwJ3HQ/YZobW7mtxImxWMA+Nj
 PrTg==
X-Gm-Message-State: ANoB5pnr8a13Qb5MaHLRLq8M67MZQ8+lNRtJdfJj9sBqvpunDnMwBjPY
 YQNY372kgCTqVFSgd7K64XI=
X-Google-Smtp-Source: AA0mqf4ZIX1732j+6YhMn9QhXq8AGAnZTjX5jhF114NHcHM0q0+s9okxNdxs5OhjYtxDzMhQzfnxlg==
X-Received: by 2002:a17:906:8543:b0:7c0:d88e:4b37 with SMTP id
 h3-20020a170906854300b007c0d88e4b37mr11320312ejy.52.1670846138130; 
 Mon, 12 Dec 2022 03:55:38 -0800 (PST)
Received: from ?IPV6:2a0b:e7c0:0:107::aaaa:49? ([2a0b:e7c0:0:107::aaaa:49])
 by smtp.gmail.com with ESMTPSA id
 kz21-20020a17090777d500b007b2a58e31dasm3242433ejc.145.2022.12.12.03.55.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Dec 2022 03:55:37 -0800 (PST)
Message-ID: <5fb6ba13-3300-917a-4e7b-e8b7a1e71e45@kernel.org>
Date: Mon, 12 Dec 2022 12:55:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>
References: <20221031114456.10482-1-jirislaby@kernel.org>
 <20221102204110.26a6f021@kernel.org>
 <bf584d22-8aca-3867-5e3a-489d62a61929@kernel.org>
 <003bc385-dc14-12ba-d3d6-53de3712a5dc@intel.com>
 <20221104114730.42294e1c@kernel.org>
 <eb9c26db-d265-33c1-5c25-daf9f06f91d4@intel.com>
From: Jiri Slaby <jirislaby@kernel.org>
In-Reply-To: <eb9c26db-d265-33c1-5c25-daf9f06f91d4@intel.com>
X-Mailman-Approved-At: Mon, 12 Dec 2022 16:08:01 +0000
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Martin Liska <mliska@suse.cz>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 04. 11. 22, 21:28, Tony Nguyen wrote:
> 
> 
> On 11/4/2022 11:47 AM, Jakub Kicinski wrote:
>> On Fri, 4 Nov 2022 11:33:07 -0700 Tony Nguyen wrote:
>>> As Jiri mentioned, this is propagated up throughout the driver. We could
>>> change this function to return int but all the callers would then need
>>> to convert these errors to i40e_status to propagate. This doesn't really
>>> gain much other than having this function return int. To adjust the
>>> entire call chain is going to take more work. As this is resolving a
>>> valid warning and returning what is currently expected, what are your
>>> thoughts on taking this now to resolve the issue and our i40e team will
>>> take the work on to convert the functions to use the standard errnos?
>>
>> My thoughts on your OS abstraction layers should be pretty evident.
>> If anything I'd like to be more vigilant about less flagrant cases.
>>
>> I don't think this is particularly difficult, let's patch it up
>> best we can without letting the "status" usage grow.
> 
> Ok thanks will do.

Just heads-up: have you managed to remove the abstraction yet?

thanks,
-- 
js
suse labs

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
