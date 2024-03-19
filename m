Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CC8881429
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 16:07:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6151D820A8;
	Wed, 20 Mar 2024 15:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOIKdFhc9pW8; Wed, 20 Mar 2024 15:07:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F2EC820B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710947274;
	bh=t8EtD8zegIhUQWzA/oDS70j+Z9o9c4kykZ4EUai9up0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t1zECAzdPgG0eDMz2dHi9O7+T7tRpS01vdO7dLmvu8ZYJPrLo7PCaqQirpg+/Wh8F
	 YO8MwVOesJOCbsR5GJ0OvUVk2g1Aabz53WvPXxhpecmjkMTXpmpOqkzQMWrrf+KLrp
	 BSwcMGoTL0Lehae2GLgdvsu0qBtaHGwKEkPjN8VP3mH1NANR6a57oWoI5p1NMCs4kg
	 Zmz4fV8NtZbVIDJVix0gImNc26kB22KJmAklfjOx976lRrce96QRZG90aH7gDtFxFp
	 wq1+FrJ5xa16j+2VMXXyRkD0nTgBwnm0SBksPzwdf7oWss7svbHgDVQt2YeEoFkbA2
	 7Xo7ULUcf83Qw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F2EC820B3;
	Wed, 20 Mar 2024 15:07:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12E731BF28F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2FC0414B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TmihqQ3dtqbL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 22:30:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=jstultz@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8D928414B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D928414B6
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D928414B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:30:06 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-41467b42b98so14345e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 15:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710887404; x=1711492204;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=t8EtD8zegIhUQWzA/oDS70j+Z9o9c4kykZ4EUai9up0=;
 b=Je+UOhoVl3xNHf58dSg8Z4F0M4p7pQXyK71wWTZBIpZe4JGhShhnEXpZPNgtPKCgzq
 SeFHTTnSetJXoiTNo3BGlm2tVcIjZeHMh4pIm4YhYFfwpQ0FoIXl0mCtzBP8jfQTuBGU
 DWeembpzvuH1BBua7xuJWmgyJDvBij8gPaGZw/bx/qJ4ZOPFKi5sow40axHFd5QnyOcb
 MOAihV0X3YmuvgHAgEOVuawTVg4/p6vD3ZGQmbymEKg+k2tt2k244Ut2cULO6n4Jgoxl
 Xo7LZIhoAZektUmHHq1MN8NfIhqsS6xQ9L2STn2UwPcFpNOhp3Fn/YsgvmpqRP52P+Px
 tkxg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWEgyb6vtbmQtcpPl0psbMxg8vSotAwDQiLaJIHv5+pCPhXC/4wEPZwCyf07+kdfda5aTgRsSI0COtlBWdvsXuDuh8htoCk3o1HryCS9gyyCg==
X-Gm-Message-State: AOJu0YxVdDrhxNxGGXIXp+12jKL2FiO4jQMfY8ZZ7PepfLFcbdIagKbO
 kHPzN1/EILJruGmh2a+93UVwXeLP9GD03zX9m4EIwlTSMP/LS/KqsV6MWFE7nL5HBidbdAF5XIY
 cPJxEtrijKi2OlgI8XFR8h7suAJksdngXVE8=
X-Google-Smtp-Source: AGHT+IFnGQzm4jMjcrzDlbzN56akGGgkj3uAyRKTIsnW0UhcIBF+MbiMv0KxT6M+rBMt9Ny+pOt1FU4BU9vpN+72B78=
X-Received: by 2002:a05:600c:3051:b0:414:1ee:f399 with SMTP id
 n17-20020a05600c305100b0041401eef399mr89401wmh.2.1710887404353; Tue, 19 Mar
 2024 15:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
 <20240319130547.4195-3-lakshmi.sowjanya.d@intel.com>
In-Reply-To: <20240319130547.4195-3-lakshmi.sowjanya.d@intel.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 19 Mar 2024 15:29:51 -0700
Message-ID: <CANDhNCpP6Nd_iYtdgW+RyH1g7c-eyHR+j-LV4gv8rKWu9QkzhQ@mail.gmail.com>
To: lakshmi.sowjanya.d@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 20 Mar 2024 15:07:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1710887404; x=1711492204; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=t8EtD8zegIhUQWzA/oDS70j+Z9o9c4kykZ4EUai9up0=;
 b=kHbmY+HZOuLep3Ulvnzh0eIoOp1VEkpcyXcVgKvs91TFHDOwmSav+IQOTgBfQaHYZs
 4+tdROi0+c4ovIQDRsFOCMpmVuo17MuCeGM5rSaU8YEQPtB1EFjQ3ZJXyYTWhDhmFcmw
 4NKIfhxy2ZZs9/Y2AT8NUPg/OgVGdlNp0ynLEHU5CsPONfvg/7wHT1c8B1AUQ7sIJB/k
 Vr2p+oczBZZbsowK2/2Jp4Gv6nW4FetWn82flVs3vjNef0Efxi2TmAUDSVZsDSEPSTlg
 XxA5t+NOTf1ExpyVtLjIK/4+GRZ5Xu2JkqwHQa15OL7OX5BVc5gWdkqfDGB+Z89PJAnT
 5yrg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=kHbmY+HZ
Subject: Re: [Intel-wired-lan] [PATCH v5 02/11] timekeeping: Add function to
 convert realtime to base clock
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, corbet@lwn.net,
 x86@kernel.org, joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, giometti@enneenne.com,
 netdev@vger.kernel.org, pandith.n@intel.com, eddie.dong@intel.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 basavaraj.goudar@intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 19, 2024 at 6:06=E2=80=AFAM <lakshmi.sowjanya.d@intel.com> wrot=
e:
>
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
>
> PPS(Pulse Per Second) generates signals in realtime, but Timed IO
> hardware understands time in base clock reference. Add an interface,
> ktime_real_to_base_clock() to convert realtime to base clock.
>
> Convert the base clock to the system clock using convert_base_to_cs() in
> get_device_system_crosststamp().
>
> Add the helper function timekeeping_clocksource_has_base(), to check
> whether the current clocksource has the same base clock. This will be
> used by Timed IO device to check if the base clock is X86_ART(Always
> Running Timer).
>
> Co-developed-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Co-developed-by: Christopher S. Hall <christopher.s.hall@intel.com>
> Signed-off-by: Christopher S. Hall <christopher.s.hall@intel.com>
> Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> ---
>  include/linux/timekeeping.h |   6 +++
>  kernel/time/timekeeping.c   | 105 +++++++++++++++++++++++++++++++++++-
>  2 files changed, 109 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
> index 7e50cbd97f86..1b2a4a37bf93 100644
> --- a/include/linux/timekeeping.h
> +++ b/include/linux/timekeeping.h
> @@ -275,12 +275,18 @@ struct system_device_crosststamp {
>   *             timekeeping code to verify comparability of two cycle val=
ues.
>   *             The default ID, CSID_GENERIC, does not identify a specifi=
c
>   *             clocksource.
> + * @nsecs:     @cycles is in nanoseconds.
>   */
>  struct system_counterval_t {
>         u64                     cycles;
>         enum clocksource_ids    cs_id;
> +       bool                    nsecs;

Apologies, this is a bit of an annoying bikeshed request, but maybe
use_nsecs here?
There are plenty of places where nsecs fields hold actual nanoseconds,
so what you have might be easy to misread in the future.

Also, at least in this series, I'm not sure I see where this nsecs
value gets set? Maybe something to split out and add in a separate
patch, where its use is more clear?

> +bool timekeeping_clocksource_has_base(enum clocksource_ids id)
> +{
> +       unsigned int seq;
> +       bool ret;
> +
> +       do {
> +               seq =3D read_seqcount_begin(&tk_core.seq);
> +               ret =3D tk_core.timekeeper.tkr_mono.clock->base ?
> +               tk_core.timekeeper.tkr_mono.clock->base->id =3D=3D id : f=
alse;

Again, bikeshed nit: I know folks like ternaries for conciseness, but
once you've crossed a single line, I'd often prefer to read an if
statement.

thanks
-john
