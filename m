Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E37845E55
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 18:20:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42BC642015;
	Thu,  1 Feb 2024 17:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42BC642015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706808018;
	bh=F3DSbsqvGhZ8uJVJ9kJ7JaXM9a9iPTGxNHqhxjHlozA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r8xVLg8y4PoC6/rcniESGYFFRFqbDmUsZxjckPCC9dt94v8D4zAxVtXIg51kMv6gU
	 4zktSKsDSDxHaau6hlrPbWTq2fhNtC72rf21wgEwEXVh9M8hiw3eOAOXSvWNTVylhX
	 9Y2K4MNKeqA1b8UKeVKHbrDlOKnKm31yTQLne9SiwsdrSQ2+1p22mz5Uhe0zGyLDal
	 iCFtXKKBeAVH8wDsmqHSfj8mBPWn0Hnww7HpqCP4OVK5a1foP37Ps2O9+MSUz9p+9L
	 mC9glcgscKw4104moTrmkf5PfSgQtC+NuuVGf8DvvBH61412zEaZbKicGis2Jw80zk
	 dG2WmDhU9/Zeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7_S0xHpjsOY; Thu,  1 Feb 2024 17:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E97DE42049;
	Thu,  1 Feb 2024 17:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E97DE42049
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E097F1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 17:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B65CB83DD2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 17:20:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B65CB83DD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 71uCgGcUSXWW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 17:20:11 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADE1983FA3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 17:20:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADE1983FA3
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-55783b7b47aso1661784a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Feb 2024 09:20:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706808008; x=1707412808;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=F3DSbsqvGhZ8uJVJ9kJ7JaXM9a9iPTGxNHqhxjHlozA=;
 b=bze+af/Shct6XLPXRCBz3NORluwU6tusrSGnM1sOTWnxf14Hqufn95p8sIBXYFoD7H
 a2vcdi9W+Jb8DQWpP+RaxQvxsXR5l4O7YjrgxW+fjCVGVllXvHwOPfBDl2vVVWrGcP5H
 xycaT31Dm3icBVr9bmQWfqE4rgqnv+vvH5cdJYQouCfiJlX7J/DJq4cfx4ysS+rda9I9
 MbKMlF0zg3UNCvvUm7mnDPMe8SCoGG5UOOkYNGHW+2BCKT3tOOW5Sg96W5Tg2cPcvFhG
 KOFPVkWoq/J2IwUR+dGZaE11dSqnnEZJBiFPgSN5h/njxW3FLXjxIcym07xCxiE5WD7U
 I0RQ==
X-Gm-Message-State: AOJu0YzO9H1PlSkK5l3AHXpG5eqD4sKyBgtEU39BAOdRGABF2wrK/GyY
 L0guZ+nGFZzE+ETZB3lbRGvBlcLf1J9DlwThy6MsCRNVz+ILfkh5c/nshkgrsGaUCdT9chgTqB8
 0J2l7IC/XjfZNmJmUa0cNRqaiKO7rm4f7uRfl
X-Google-Smtp-Source: AGHT+IGIeWFfhZFVVG+UgrMF1VFPDhYtZlWHoSizHzHlgIACbwdWYsfWMKIqthzQGzROtKWsQkYAT1MyUWRT0QpGCJ8=
X-Received: by 2002:a17:906:5290:b0:a23:6dd6:7eed with SMTP id
 c16-20020a170906529000b00a236dd67eedmr3679974ejm.77.1706808008410; Thu, 01
 Feb 2024 09:20:08 -0800 (PST)
MIME-Version: 1.0
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
 <bce78734-d359-499b-9693-05549e6a73a4@intel.com>
 <CAK8fFZ6PqCwgt1n4iuROs=76esQVSOS-HHL=0eN7+efeKT25Uw@mail.gmail.com>
 <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
 <20240201065726.50a0b1f2@kernel.org>
In-Reply-To: <20240201065726.50a0b1f2@kernel.org>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Thu, 1 Feb 2024 18:19:42 +0100
Message-ID: <CAK8fFZ6jige-zA5YPMKVf3bB2gCL8WDrY-SCs5EWeJBn5A7YQg@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1706808008; x=1707412808; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=F3DSbsqvGhZ8uJVJ9kJ7JaXM9a9iPTGxNHqhxjHlozA=;
 b=oeApCCHGrqQ1C5MdHKuuuRFlYPORfX3Rdbk/phVLaFMPPmOkpNo52SH3QTxynbPoJi
 AK5eSphzq1c3Oa1nSs+iteW6KGJprdxaQhSGMBcRoE2mFL/AfurnqkkNfsCf4odcZpP7
 1xd2jVFMFInUUC4cgcwB1IopKW5YwGIDrYWtg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=gooddata.com header.i=@gooddata.com
 header.a=rsa-sha256 header.s=google header.b=oeApCCHG
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
 "Linux regression tracking \(Thorsten Leemhuis\)" <regressions@leemhuis.info>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, Igor Raits <igor@gooddata.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>
> On Wed, 24 Jan 2024 15:29:38 +0100 Linux regression tracking (Thorsten
> Leemhuis) wrote:
> > >> I think that's a bad bisect. There is no reason I could understand for
> > >> that change to cause a continuous or large leak, it really doesn't make
> > >> any sense. Reverting it consistently helps? You're not just rewinding
> > >> the tree back to that point, right? just running 6.6.9 without that
> > >> patch? (sorry for being pedantic, just trying to be certain)
> > >
> > > Reverting just the single bisected commit continuously helps for >=
> > > 6.6.9 and as well for current 6.7.
> > > We cannot use any new linux kernel without reverting it due to this
> > > extra memory utilization.
> >
> > Quick query: what's the status wrt to this regression? Looks like
> > nothing happened in the past week.
>
> Is someone working on this? Indeed the commit in question looks
> harmless but can't argue with the revert helping :S

No clue if someone is working on it, however the commit itself is a
trigger of some other issue.

The analysis of my colleague Igor (see previous email) shows the
memory consumption is caused by queues of each ice network interface
(even the unused ones). Our final fix was to lower the queues to 6 for
used interfaces and 2 of unused interfaces manually.
