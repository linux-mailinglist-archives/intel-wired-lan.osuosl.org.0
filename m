Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FF67ED5CC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 22:13:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01A28614FD;
	Wed, 15 Nov 2023 21:13:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01A28614FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700082836;
	bh=WJxeqyVIVx39CC+wWlWHTk3AQUawQccmxAJapG0nzPQ=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nj5VSnrKMHvfOzNCY6ovNDkrfjV9X2TrEwQVHXLSqLPe5sPzMU03Z34SvLvk+jjce
	 SeugonMx/VS25aYbfFfZ6gEchGKt0h7bX19m2ZCOTTYtIQ7Cjlxw/alu6QJHS9d74C
	 ll1IZcl/GvavtSCi85cotUun2d1C76e2n59QLpokzoXyi7EXZ7ei//7erVCUD1xYud
	 twfbE1SrA80wvShvrQA7rZIw3NHgTjhQt0kI8VeKvOCp73R8TKkzf0GpjqL182kQ+K
	 2V5kxpyWreKjusFQL6305L/cK3siLUypX/9ggm9cAdx5Fsobr3YgKZK9DQbmmd3tpw
	 xXTSWC9TAwxjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u1CVUpTpHjtJ; Wed, 15 Nov 2023 21:13:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8E0260AE2;
	Wed, 15 Nov 2023 21:13:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8E0260AE2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1E4E1BF599
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 20:49:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF97140914
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 20:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF97140914
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rXNfPpHnZA0R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 20:49:04 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6752D40127
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 20:49:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6752D40127
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1ce28faa92dso1040995ad.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 12:49:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700081344; x=1700686144;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=K/b24oZBDOyviv88keLNJvELffPgYkOMIvr7ryRw2UM=;
 b=aNdY48ywMAfeAGekVE/HSynYd6xF4j2WuuTS7bUmBpFGD1fqE0XIHBpOZV6J9MQfza
 zTocPryaEkjPbZA6XqHp4rBzVjT3HjywyBVrqcmvb+IjUTsAn0VMr840CVatHpr98E7V
 Y2r04vK+jSUyS4e9drOJoQ6b8yYVcDC+7NMhjiRo6dqTzfRkSuxVQ0BD1iAGwETRFPlF
 oekkezpBTbDpB8uyLdF0avUS0f9R0xqfZFtHa68/T1qAml+vp7iYtklkskSf+0+xWrx7
 gOp+5sCHs3YV374+tTNlyhAjj8iDY506uigTR8ZSdBZEw86tn8ZjTTXtgOpyUwB7Iswj
 Royg==
X-Gm-Message-State: AOJu0Yz21LAiw5pL91TNGbN+Hx/1lNUOdgPWo96K26h+VgrTXTK+eXFG
 1xUhiAkN3tToz8RJNLDqNSs=
X-Google-Smtp-Source: AGHT+IFcg6wRPt2wGlOlDs7bsLg5pKynCaCBOiBofUa2G4WFh1uKKgFi0RVSnyPH4Z6hYwgeTh3C2A==
X-Received: by 2002:a17:902:ec84:b0:1c8:9d32:339e with SMTP id
 x4-20020a170902ec8400b001c89d32339emr7774092plg.50.1700081343562; 
 Wed, 15 Nov 2023 12:49:03 -0800 (PST)
Received: from smtpclient.apple ([2601:600:967f:6b00:30f7:e7fd:e49d:14a0])
 by smtp.gmail.com with ESMTPSA id
 f8-20020a170902684800b001cc46240491sm7991640pln.136.2023.11.15.12.49.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Nov 2023 12:49:03 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
From: Anil Choudhary <anilchabba@gmail.com>
In-Reply-To: <CC024511-980A-4508-8ABF-659A04367C2B@gmail.com>
Date: Wed, 15 Nov 2023 12:48:51 -0800
Message-Id: <7AC9E8F6-B229-47AA-84CE-1149F45D7E0F@gmail.com>
References: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
 <32716.1700009673@famine>
 <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
 <CC024511-980A-4508-8ABF-659A04367C2B@gmail.com>
To: Linux regressions mailing list <regressions@lists.linux.dev>
X-Mailer: Apple Mail (2.3731.700.6)
X-Mailman-Approved-At: Wed, 15 Nov 2023 21:13:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700081344; x=1700686144; darn=lists.osuosl.org;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=K/b24oZBDOyviv88keLNJvELffPgYkOMIvr7ryRw2UM=;
 b=FfkscoYhhMMd1Mn9XYo9U2DltuFYXzLD1247gRIADRqxZQUq0GNhHX6rlMEVpTupEH
 JzsHpYAcdsGENn0IkPxedCbnbxd5uIQeQNL7bH3OirXcUbT9M7fZkqNiCFw7qbU16lja
 rkXGWaJ0CSSb8HBc98eNsLaVbBDYKygQccOZjk5OByQEDO5oRvoELqukVLQ+KfegtbpW
 ITJlzuMr3feSwIi8QMnyyjrYMwpbVRFpGcvPwGvXGeVeYbOwzMtP8cYzK/6R0lVMYpcf
 bUKOW+/3GLBLmiKEISjTfOmjJmaiZjA8GfDh/C01k7+L0McYuoQdIXGeRywkU4fYZoDs
 ZNjw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=FfkscoYh
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

We are getting errorError subscribing to SWID 0x0000.
 from following code
root@us-ash-r1-c2-m1:~/linux# grep -rn -e "subscribing to " .
grep: ./debian/linux-image/lib/modules/6.6.1-vdx/kernel/drivers/net/ethernet/intel/ice/ice.ko: binary file matches
./samples/connector/ucon.c:149: ulog("subscribing to %u.%u\n", CN_TEST_IDX, CN_TEST_VAL);
./Documentation/driver-api/media/v4l2-event.rst:117:add      called when a new listener gets added (subscribing to the same
./Documentation/driver-api/media/v4l2-event.rst:130:Unsubscribing to an event is via:
./Documentation/maintainer/feature-and-driver-maintainers.rst:44:mailing list. Either by subscribing to the whole list or using more
grep: ./drivers/net/ethernet/intel/ice/ice_lag.o: binary file matches
grep: ./drivers/net/ethernet/intel/ice/ice.o: binary file matches
grep: ./drivers/net/ethernet/intel/ice/ice.ko: binary file matches
./drivers/net/ethernet/intel/ice/ice_lag.c:1007:                dev_err(ice_pf_to_dev(local_lag->pf), "Error subscribing to SWID 0x%04X\n",
root@us-ash-r1-c2-m1:~/linux#


Thanks,
Anil



> On Nov 14, 2023, at 10:19 PM, Anil Choudhary <anilchabba@gmail.com> wrote:
> 
> <PastedGraphic-1.png>
> 
> 
> Following error error scribing to said is also new
> 
>> On Nov 14, 2023, at 9:50 PM, Linux regression tracking (Thorsten Leemhuis) <regressions@leemhuis.info> wrote:
>> 
>> On 15.11.23 01:54, Jay Vosburgh wrote:
>>> Bagas Sanjaya <bagasdotme@gmail.com> wrote:
>>> 
>>>> I come across LACP bonding regression on Bugzilla [1].
>> 
>> Side note: Stephen forwards some (all?) network regressions to the right
>> people:
>> https://lore.kernel.org/all/20231113083746.5e02f8b0@hermes.local/
>> 
>> Would be best to check for that, no need to forward things twice, that
>> just results in a mess.
>> 
>>>> The reporter
>>>> (Cc'ed) has two regressions. The first is actual LACP bonding
>>>> regression (but terse):
>>>> 
>>>>> Till linkx kernel 6.5.7 it is working fine, but after upgrading to 6.6.1 ping stop working with LACP bonding.
>>>>> When we disable SR-IOV from bios , everything working fine
>> 
>> Makes me wonder if things have been working with or without the OOT
>> module on 6.5.7, as strictly speaking it's only considered a kernel
>> regression if thing worked with a vanilla kernel (e.g. without OOT
>> modules) beforehand and broke when switching to a newer vanilla kernel.
>> If that's the case it would be okay to add to regzbot.
>> 
>>>> And the second is out-of-tree module FTBFS:
>>> [... skip OOT stuff ...]
>>> 
>>>> Should I add the first regression to regzbot (since the second one
>>>> is obviously out-of-tree problem), or should I asked detailed regression
>>>> info to the reporter?
>>> 
>>> 	My vote is to get additional information.  Given the nature of
>>> the workaround ("When we disable SR-IOV from bios , everything working
>>> fine"), it's plausible that the underlying cause is something
>>> platform-specific.
>> 
>> Maybe, but when it comes to the "no regressions" rule that likely makes
>> no difference from Linus perspective.
>> 
>> But I guess unless the intel folks or someone else has an idea what
>> might be wrong here we likely need a bisection (with vanilla kernels of
>> course) to get anywhere.
>> 
>> Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
>> --
>> Everything you wanna know about Linux kernel regression tracking:
>> https://linux-regtracking.leemhuis.info/about/#tldr
>> If I did something stupid, please tell me, as explained on that page.
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
