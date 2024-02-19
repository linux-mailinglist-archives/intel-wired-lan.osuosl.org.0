Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E498785A234
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 12:41:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F30840A71;
	Mon, 19 Feb 2024 11:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 81lFb_fKB95t; Mon, 19 Feb 2024 11:41:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5CC340525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708342877;
	bh=y1rKN4wN4lgtcvFaxZae1zsrB/QMGO6MiKKT9GWoOEg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9s3Tn8IRYiKdv5qiOYVi/yJo2sRBQtCJH23XemyLjT7y4lKGfebFXyw7Notx5Rm8T
	 ujUxBGxYmYC9biiITbexAWEi18P+TiCxSNYT+l7coH7MQkedD6NptHgGg9qHeYDtKW
	 Flj3mcG1cGgXPzM8THlaXcHi2Eb8/Jg1VYBaRhoXXIgNjOT59kDiYHvqZtKcR31sd8
	 o5vP7YGh/yxgMDP0k2R1MG8GgXIpa8pi+SqT9c36Qs9gHYPBVUGLs9E4wZD3CZJx3L
	 D5nsBixP+MgLqiQPsWSu5/LFhTc3cyn6+liYkc4VDWHUANzkwV6eSFYVHayDwS3tps
	 BuJdVJaYHLpww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5CC340525;
	Mon, 19 Feb 2024 11:41:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 858E41BF370
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 11:41:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70FA560B28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 11:41:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1EA6SZa0OmA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 11:41:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 142AC60B25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 142AC60B25
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 142AC60B25
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 11:41:13 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-a3cc2f9621aso426625366b.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 03:41:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708342871; x=1708947671;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=y1rKN4wN4lgtcvFaxZae1zsrB/QMGO6MiKKT9GWoOEg=;
 b=X7qP757d3FTKJ7rUkK/mioMLInU8N2nRRmpMhmlsHbBu7UspeUjkWKg54BCiZzgmV9
 toxPHoj23h+2u+33J6daYAYBnHb6DF/p/sDn7njIfWmqRGukqJO1gTUeKKOiX/qodW4v
 RNMbdeVqwfmSSVbO662CiL1b8kkaNUB6qcOEiifODeury9Igm7veK7Jr1FSnndQ8Vr5g
 aLZhfYjh+8Ec0Aj1tHZDVopHeKhGT8a5DejEQwSVK2dlntW9+sWA3jA4Y1uRM9HgwCwn
 xaoBQCgpKOYQGvn+ZfzLKpMeftzsTbXV7zXA1jgIcbzf4OhEq8euBxfulhjK66cuBb1Y
 DWMQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzWe3NnBZT/mXWmXZD99bpS1iK9pw5XekNl0lpFY7VXkDbQFyd1Y4OzGZmgWK2iJSynHVWVlgAia9vslJ/rHZ7fDpsFKtmunLQ1bq8IzAXiQ==
X-Gm-Message-State: AOJu0Ywo+uKidoVt5+K6vgxUbIxMUdjF5qFvupX5NzIwTmV0Iclk19/V
 MOYeTXZ7AeshDrOy/MvuJ2Ae25ibtJnE+eJmpGo1MztuMw5aAMLmzbxVvcryW73x9uMjZElvCal
 poR4kSP8zpNeEZk2m/y5U3xF66s/HhhU+wCko
X-Google-Smtp-Source: AGHT+IFkzKLnByBb5OojiCyRc2n/pce5NbSG4IiLldK1gOdgrydITw+b165jPIZbct5ZgG9j3PeK7Lrs24w2rFGV7xQ=
X-Received: by 2002:a17:906:b316:b0:a3e:6036:3e45 with SMTP id
 n22-20020a170906b31600b00a3e60363e45mr2322845ejz.30.1708342871514; Mon, 19
 Feb 2024 03:41:11 -0800 (PST)
MIME-Version: 1.0
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
 <bce78734-d359-499b-9693-05549e6a73a4@intel.com>
 <CAK8fFZ6PqCwgt1n4iuROs=76esQVSOS-HHL=0eN7+efeKT25Uw@mail.gmail.com>
 <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
 <20240201065726.50a0b1f2@kernel.org>
 <CAK8fFZ6jige-zA5YPMKVf3bB2gCL8WDrY-SCs5EWeJBn5A7YQg@mail.gmail.com>
 <5727309c-6ced-45b8-bb0c-110b3893aa4f@leemhuis.info>
In-Reply-To: <5727309c-6ced-45b8-bb0c-110b3893aa4f@leemhuis.info>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Mon, 19 Feb 2024 12:40:45 +0100
Message-ID: <CAK8fFZ73=DQrwep_0kdmr9EfjA5CmxKOHcWCyiO7Lg5m1Gqx3A@mail.gmail.com>
To: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1708342871; x=1708947671; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y1rKN4wN4lgtcvFaxZae1zsrB/QMGO6MiKKT9GWoOEg=;
 b=NM4N14NQIbzzy4VHlrHn2CyU9LQR+vmw7NwXDqs++rJ7dLbQL2MR2Rt/sMhsQkqBXj
 DksPMOvrIJ5Bxf84fCWGseHAwy+GhDnynis9g1fCLHq8+IyUWs3vpeqsUS+DeXf5K7tk
 C5mTgcYC1FB8hSCKJfPQIlxtdmY8NE35ZfR00=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=NM4N14NQ
Subject: Re: [Intel-wired-lan] [REGRESSION] Intel ICE Ethernet driver in
 linux >= 6.6.9 triggers extra memory consumption and cause continous
 kswapd* usage and continuous swapping
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Igor Raits <igor@gooddata.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the question is for me then my opinion about it is this:

I'm fine with the behaviour of a driver about memory consumption if it
is predictable/described with the possibility to change it from
default values. My understanding of "predictable" is something like
this:

The ICE driver is going to
* Setup 64 queues per each port, not active included.
* Each queue consumes "xxxx MB" amount of kernel memory per each numa node.
example: Two 2 ports Intel NICs using ICE driver will consume ~6GB of
RAM of each NUMA node, please consider changing the defaults values to
avoid OOM :-).

po 19. 2. 2024 v 12:29 odes=C3=ADlatel Thorsten Leemhuis
<regressions@leemhuis.info> napsal:
>
> On 01.02.24 18:19, Jaroslav Pulchart wrote:
> >>
> >> On Wed, 24 Jan 2024 15:29:38 +0100 Linux regression tracking (Thorsten
> >> Leemhuis) wrote:
> >>>>> I think that's a bad bisect. There is no reason I could understand =
for
> >>>>> that change to cause a continuous or large leak, it really doesn't =
make
> >>>>> any sense. Reverting it consistently helps? You're not just rewindi=
ng
> >>>>> the tree back to that point, right? just running 6.6.9 without that
> >>>>> patch? (sorry for being pedantic, just trying to be certain)
> >>>>
> >>>> Reverting just the single bisected commit continuously helps for >=
=3D
> >>>> 6.6.9 and as well for current 6.7.
> >>>> We cannot use any new linux kernel without reverting it due to this
> >>>> extra memory utilization.
> >>>
> >>> Quick query: what's the status wrt to this regression? Looks like
> >>> nothing happened in the past week.
> >>
> >> Is someone working on this? Indeed the commit in question looks
> >> harmless but can't argue with the revert helping :S
> >
> > No clue if someone is working on it,
>
> Yeah, a quick public status update would be really helpful. And maybe
> some debugging tips that might enable Jaroslav to pinpoint the real
> problem.
>
> > however the commit itself is a
> > trigger of some other issue.
> >
> > The analysis of my colleague Igor (see previous email) shows the
> > memory consumption is caused by queues of each ice network interface
> > (even the unused ones). Our final fix was to lower the queues to 6 for
> > used interfaces and 2 of unused interfaces manually.
>
> Despite the above allow me to ask: Can you live with that workaround?
> Ideally of course this should be fixed, but well, the world sometimes is
> a tricky place. :-/
>
> Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
> --
> Everything you wanna know about Linux kernel regression tracking:
> https://linux-regtracking.leemhuis.info/about/#tldr
> If I did something stupid, please tell me, as explained on that page.
>
> #regzbot poke
