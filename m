Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 375797EC853
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 17:20:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE13E42227;
	Wed, 15 Nov 2023 16:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE13E42227
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700065214;
	bh=noVpk3GakOvhD94SfNtiuEI02IQ7ju0DNSQl6eh34hs=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KsHIjkMSwShlXZwLW80rg/+hhHLBoDqNUV9sNfVCPleMEjyn/QoUsxlARehp8WfUE
	 fgEmXTTsb+laO1uf233k+0sbRUmENdPBJnsS7NQpikNPfmfyQtCRsg3Du5hRVJblZa
	 fT5gn4xvxBe90LOiyW57JDHKHhXPs3SOqp/83No+RGR47uPkduYRgRM5k0TfpAq91c
	 O2aBu9Lj/ajTODluSf3JCXSr0Gq8SQgXYO6ZtHEyGPibWJ8c2pKt4hQ9BKR7cI7ZLy
	 +u8gsQnpkReWkmrJs1TK319n9KCSiwJQ+bIk4bkDjXBIeGnGBK8gLnotK02CMMpmak
	 95OgDzJrpiyFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2G_R9lIpB4cA; Wed, 15 Nov 2023 16:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73E7E416D0;
	Wed, 15 Nov 2023 16:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73E7E416D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FCED1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:13:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 739144011D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:13:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 739144011D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GXj8QB3NOO4i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 06:13:33 +0000 (UTC)
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4078D40018
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:13:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4078D40018
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-5c1acc1fa98so429704a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Nov 2023 22:13:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700028812; x=1700633612;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aIPV+gDq2yOCjdPc3jrCxYdVWVXe1Hxr5GLMCAXMCvI=;
 b=OsZv30mvpNZNC9vkDhZowBtxs8pK0UKo2EV0bFzXjf1a1mP0/8AZx8K02inHYjSwxh
 NmNyGdYve6qlnpO3eFkF5rTy3fwxGrRLEshvYkz/+J+nH/07NYcN9dc/W982rZ5eB3vM
 XcI0rdX36aRmrC4SHAvZP7gdumlBgi+DFQUJdj2bdxRDu7Y/aHtqLcGjpRnUetJUPKjl
 h8YB98CvP+Zrz3G9adFLREthk9P0UQVh/X6rxoO1i9xUkSIq2ibIoQh4Dpx51nLhgzWS
 YYeVe9jltYEzZF4hNOAz3xgyREFE57ZPfmSvuKaUBdlgtNlx8gxMcu5m4RnAzPb2fHio
 CuWg==
X-Gm-Message-State: AOJu0Ywb5cgnK58I0EzK00E/QEHpsA6qR0SNUsuk1tSI3YHbxSwLg/J/
 apH0L5/V1W7RBF5OekBfCR0=
X-Google-Smtp-Source: AGHT+IHNRxh6ip9wuilteMswJq0OHDd/alKbzQRFE5QrXCJMqgoditaW9gS47pvvjb9JP1aiDp/2OQ==
X-Received: by 2002:a17:90b:38c7:b0:27d:433e:e69c with SMTP id
 nn7-20020a17090b38c700b0027d433ee69cmr6648625pjb.18.1700028812378; 
 Tue, 14 Nov 2023 22:13:32 -0800 (PST)
Received: from smtpclient.apple ([2601:600:967f:6b00:1ce2:9961:5f20:7dc5])
 by smtp.gmail.com with ESMTPSA id
 2-20020a17090a0d4200b002801ca4fad2sm8983020pju.10.2023.11.14.22.13.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Nov 2023 22:13:32 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
From: Anil Choudhary <anilchabba@gmail.com>
In-Reply-To: <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
Date: Tue, 14 Nov 2023 22:13:20 -0800
Message-Id: <EFC5ADF4-1EE4-4900-B250-AC35656DC68B@gmail.com>
References: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
 <32716.1700009673@famine>
 <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
To: Linux regressions mailing list <regressions@lists.linux.dev>
X-Mailer: Apple Mail (2.3731.700.6)
X-Mailman-Approved-At: Wed, 15 Nov 2023 16:19:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700028812; x=1700633612; darn=lists.osuosl.org;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aIPV+gDq2yOCjdPc3jrCxYdVWVXe1Hxr5GLMCAXMCvI=;
 b=UeWQUJFpIjFglqZOnEg9ZP8W8rynUNatkl9W1UN3ZD7a3Qvn4XDZ1X6I0aqSo0i0dQ
 Fuak0moZsX6AkaJr5PeH6YnQAstd3IJY8fiDvNhmz8NMjzAEu95BU7/TxxUTte+guRuy
 7ygNFYPap0sPZPI67f1LHSBPg5WMkhhpY0TCaS5d4XOrmud4BwEb3TTGn8Sc91GhpnV+
 TnYWSbsLoeSKu8wfxPulXOBgEIASXVsIyr169AUq3OmPYEGbCGsNNAcq8x0q8Qm6E8Tk
 8XU1SIAetlM8cAQU2WkAUc2OCpAV5MCGCIN4ZGZ3JmEuxGuCI+JpsqDTajDv2Zfxu8hM
 iFxg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UeWQUJFp
Subject: Re: [Intel-wired-lan] sr-iov related bonding regression (two
 regressions in one report)
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
Cc: Eric Dumazet <edumazet@google.com>,
 Linux Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Linux Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Its not hardware issue when I do rmmod iavf ping started working .
So issue is certainly in this kernel and with sriov only
Iavf id Nic driver for VF(sriovnic)


Thanks,
Anil

> On Nov 14, 2023, at 9:50 PM, Linux regression tracking (Thorsten Leemhuis) <regressions@leemhuis.info> wrote:
> 
> On 15.11.23 01:54, Jay Vosburgh wrote:
>> Bagas Sanjaya <bagasdotme@gmail.com> wrote:
>> 
>>> I come across LACP bonding regression on Bugzilla [1].
> 
> Side note: Stephen forwards some (all?) network regressions to the right
> people:
> https://lore.kernel.org/all/20231113083746.5e02f8b0@hermes.local/
> 
> Would be best to check for that, no need to forward things twice, that
> just results in a mess.
> 
>>> The reporter
>>> (Cc'ed) has two regressions. The first is actual LACP bonding
>>> regression (but terse):
>>> 
>>>> Till linkx kernel 6.5.7 it is working fine, but after upgrading to 6.6.1 ping stop working with LACP bonding.
>>>> When we disable SR-IOV from bios , everything working fine
> 
> Makes me wonder if things have been working with or without the OOT
> module on 6.5.7, as strictly speaking it's only considered a kernel
> regression if thing worked with a vanilla kernel (e.g. without OOT
> modules) beforehand and broke when switching to a newer vanilla kernel.
> If that's the case it would be okay to add to regzbot.
> 
>>> And the second is out-of-tree module FTBFS:
>> [... skip OOT stuff ...]
>> 
>>> Should I add the first regression to regzbot (since the second one
>>> is obviously out-of-tree problem), or should I asked detailed regression
>>> info to the reporter?
>> 
>> 	My vote is to get additional information.  Given the nature of
>> the workaround ("When we disable SR-IOV from bios , everything working
>> fine"), it's plausible that the underlying cause is something
>> platform-specific.
> 
> Maybe, but when it comes to the "no regressions" rule that likely makes
> no difference from Linus perspective.
> 
> But I guess unless the intel folks or someone else has an idea what
> might be wrong here we likely need a bisection (with vanilla kernels of
> course) to get anywhere.
> 
> Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
> --
> Everything you wanna know about Linux kernel regression tracking:
> https://linux-regtracking.leemhuis.info/about/#tldr
> If I did something stupid, please tell me, as explained on that page.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
