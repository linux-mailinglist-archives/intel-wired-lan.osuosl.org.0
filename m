Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A27FFD265CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jan 2026 18:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AA7B611A5;
	Thu, 15 Jan 2026 17:25:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RC93yyKmXhfO; Thu, 15 Jan 2026 17:25:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B0B4611A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768497952;
	bh=lHSZznzjMl1NMOULsgdEoAOMKAaAnonqU4bzQ6AGE0A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jPa6nVC5qNAJx2Ia0vdX1s3GIT0lW5NWzON/jX/nUz0eYzW3MGSahPrR/JIP/uxNV
	 gXjkXx5dg/+QT54dQGqwPJqTkDEUxsfGhlxvUZsjBpEukJjQg2Ii3uLP8X/6hUdzu7
	 mVU4stC6Ux3Z80j9BUJyWwq7XVhF0SBETCNzlmSti0zAs0yHgdHV/5FUOV8vc+lkwA
	 qsl7hCwsmdJChbzPoVpw2Cu7R9TyhPtvHnsFFB9+866jSILT+ecxY/RFq1PNTGQxQ3
	 vNHLiLFmT4OxtRxqFtmUEJH0QYo8NU70GxqVwc9pwUHmGpG/FEQJm3zvBN97Q7odNB
	 cjOvZ+gVTj+Gw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B0B4611A7;
	Thu, 15 Jan 2026 17:25:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA97B223
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 17:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9ABBB40C12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 17:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I0Ns6bIq3naq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jan 2026 17:25:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vgrinber@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6FD3140180
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FD3140180
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FD3140180
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 17:25:49 +0000 (UTC)
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-141-PGVHhzyzOTq5wj4iHHx_Jw-1; Thu, 15 Jan 2026 12:25:47 -0500
X-MC-Unique: PGVHhzyzOTq5wj4iHHx_Jw-1
X-Mimecast-MFC-AGG-ID: PGVHhzyzOTq5wj4iHHx_Jw_1768497946
Received: by mail-oi1-f197.google.com with SMTP id
 5614622812f47-45c975a7dbeso828610b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 09:25:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768497946; x=1769102746;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=lHSZznzjMl1NMOULsgdEoAOMKAaAnonqU4bzQ6AGE0A=;
 b=v+DB9IWKxHHF97w3omX8C66WTrygzwClXj4DQRGHEWPu37FaLh/48g+e9MC/2FVRAE
 jAItONgTuUASo9ccKr4TRdTRLkSB6QJiLE2ILgULJijZ+BuOc4Sue7GXgDRoI6rZYX2a
 QA4HdKhvTQzsn9r4DpUWDvrRdHNW3pO5p1oGWLZdciVs0ilAxFduqTgAGYeEsIhfnAkn
 tzUPyXZ6BT70zyd7/25z/KuPwkvNer3ZWtrcOMANpDRg2yazvOVynXNEAh0ZvfDwt2La
 pQltlbJMODWp9cMJiHz+Ar/SK1I65VbF7MhCKpiZX9K4hBwoLEdJmnxvkBCcu3iq33me
 FRlA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJXSxn10Jio4k7wcyqHsWYIET6lMdVsTthjk5P/qHPYPrOB1LpST2dCtVBDyeywG109sFxahM1+kJ5wW6vq60=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy3/KQOARj/04JKjavQnouiial7KAh/kKRR6yXSQwSaaXvPTH6C
 3c9PuqrRxQhSpwUHKgDaWtFdlzAMPSUzU1aL7Xz55S1sa15mP/iAg3xLrk1ulJ7/EsZenC88LHo
 kXXkwnvCHrzImKJV9jsmWqlmJ20PpsxTRegaaFonKMM5aFbmFxH/QR7fOb9xUlNLS7hQsXWwu1r
 ujm7drjH7x9cGrnAw09dL+kPb9UdrSMkcaph61aIKnB1Xd7w==
X-Gm-Gg: AY/fxX7UHEla/+eD9lH/Xkyt21A32JN78CLaO7t8mYDqJ7oKhpKu/Ud3iOlvfomwmNO
 /HfyWki6UJ9G7cz04opGvxO5NaRCmJRWJ3TeD5ej8GOX+ca2LHOntqRE/WVxqdaXCc0bEfOtDnL
 nr5wWeMFwMv3XU4tTtK3jf7blOZa5ah8rEkJoBZ7bGT4XpJz1FvnyrlGUnf8zNfFJJ
X-Received: by 2002:a05:6808:4fcc:b0:450:b92c:aaa2 with SMTP id
 5614622812f47-45c880ffcdcmr2381767b6e.18.1768497946450; 
 Thu, 15 Jan 2026 09:25:46 -0800 (PST)
X-Received: by 2002:a05:6808:4fcc:b0:450:b92c:aaa2 with SMTP id
 5614622812f47-45c880ffcdcmr2381749b6e.18.1768497946072; Thu, 15 Jan 2026
 09:25:46 -0800 (PST)
MIME-Version: 1.0
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
 <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
 <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
 <LV4PR11MB9491EB644FC83676522107669B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDhEQVJ5piUKp6bddxvOff88qj5X6Y8zbqAH8Kf5a7a_Zg@mail.gmail.com>
 <LV4PR11MB9491B0E591D66E4AEDE9B1329B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDggQLQMFdT3VLxm+GNNad6xy43nh6D+UzbW-u9Wwg+WOw@mail.gmail.com>
 <LV4PR11MB9491C8288A84379A1199DC409B8CA@LV4PR11MB9491.namprd11.prod.outlook.com>
In-Reply-To: <LV4PR11MB9491C8288A84379A1199DC409B8CA@LV4PR11MB9491.namprd11.prod.outlook.com>
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Thu, 15 Jan 2026 19:25:30 +0200
X-Gm-Features: AZwV_QiR68c78dzt7Vs78QLCFnBcBYytsRuzF6J0pDE4rljbQKo80nDKshRpZkg
Message-ID: <CACLnSDgy+mxqgy+fShC1kre05zF54tCfttqQTzzFkBt4f9UYog@mail.gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wtw0C6xbpNy2iUbJ7qiad0Xw32dw_nlsC1ru625pF0w_1768497946
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768497948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lHSZznzjMl1NMOULsgdEoAOMKAaAnonqU4bzQ6AGE0A=;
 b=GiXAIC4n00hMi4uC1vF/W5rR0yKPuDeCfHDtnn7//59frmP7oKQ8C2ApedioEK9TMXfQhf
 RpOaloXlKudPoj5aozNjeMitCb98FCMKD9QgUg0shLWZwterU/7FvBWERftj+7pHRF8518
 5s8pSQWhKMz6MdTj7Q83yNHO0sZaXRQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=GiXAIC4n
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Fodor,
 Zoltan" <zoltan.fodor@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 15, 2026 at 5:30=E2=80=AFPM Kubalewski, Arkadiusz
<arkadiusz.kubalewski@intel.com> wrote:
>
> >From: Vitaly Grinberg <vgrinber@redhat.com>
> >Sent: Thursday, January 15, 2026 9:58 AM
> >
> >, the ea
> >
> >On Wed, Jan 14, 2026 at 3:32=E2=80=AFPM Kubalewski, Arkadiusz
> ><arkadiusz.kubalewski@intel.com> wrote:
> >>
> >> >From: Vitaly Grinberg <vgrinber@redhat.com>
> >> >Sent: Wednesday, January 14, 2026 12:39 PM
> >> >
> >>
> >> [..]
> >>
> >> >> >
> >> >> >I see a few challenges for the user here. The biggest one is that
> >> >> >the
> >> >> >application can't tell the difference between a device that will
> >> >> >report
> >> >> >phase offsets and this unmanaged device that never will.
> >> >> >A possible way forward would be adding a capability flag to the DP=
LL
> >> >> >API
> >> >> >so
> >> >> >users don't have to guess.
> >> >>
> >> >> There is no phase-offset field as pointed in the above example.
> >> >> No 'phase-offset' attribute -> no such capability.
> >> >> Why isn=E2=80=99t that enough?
> >> >
> >> >Pin reply does not contain phase offset, so no change notifications
> >> >are expected?
> >> >Could there be devices that don't report phase offset, but report sta=
te
> >> >changes?
> >> >Is this the intended use of the phase offset API to be interpreted as
> >> >a general pin
> >> >notification capability flag?
> >> >
> >>
> >> Sorry, this is not what I meant.
> >>
> >> The E810 produces notifications not only for the pin's phase offset bu=
t
> >> also for other pin attribute changes. When it comes to the E810 pins,
> >> notifications generated by phase offset changes are quite frequent.
> >> However, it wasn't intention to produce them every second; this is
> >simply
> >> the result of frequent phase offset changes.
> >>
> >> Typically, the pin state changes for the pin, but for E830, the
> >> unmanaged
> >> mode means that the state of the pin never changes, resulting in no pi=
n
> >> notifications being produced in the end.
> >>
> >> Hope that clears things up.
> >
> >Will the reported pin state remain "connected" even if I disconnect
> >the input signal?
> >Is there any information in DPLL or pin replies that can tell the user
> >"this DPLL is unmanaged type, it behaves differently"?
>
> You really cannot disconnect anything there, it is always connected,
> and no one can change it. It only shows the user actual physical
> connections hardwired into the NIC/dpll. There is no SW handled config
> possible on those. As provided in the commit message, the pins have empty
> capabilities set: 'capabilities': set(), thus not possible to change stat=
e
> by the user.
>

Got it, thanks for clarification!

> >
> >>
> >> >>
> >> >> >However, the preferred solution would be to simply mirror the E810
> >> >> >behavior
> >> >> >(sending phase offset). This preserves the existing API contract a=
nd
> >> >> >prevents users, who have already built applications for this
> >> >> >interface,
> >> >> >from needing to implement special handling for a new hardware
> >> >> >variant
> >> >> >that
> >> >> >behaves differently.
> >> >>
> >> >> This is not currently possible from driver perspective.
> >> >> We miss the FW API for it.
> >> >>
> >> >> >There are additional inconsistencies in the existing structure I
> >> >> >wanted
> >> >> >to
> >> >> >bring to your attention.
> >> >> >1. I'm not entirely sure how a 1588-TIME_SYNC pin can have a paren=
t
> >> >> >device
> >> >> >of type "eec". EEC is all about frequency synchronization, and yet
> >> >> >the
> >> >> >pin
> >> >> >named 1588-TIME_SYNC is clearly a phase pin. This also doesn't pla=
y
> >> >> >well
> >> >> >with existing implementations, where EEC circuits deal with
> >> >> >frequency,
> >> >> >PPS
> >> >> >circuits deal with phase, and there is clear distinction between t=
he
> >> >> >two
> >> >> >with regard to the meaning of "being locked".
> >> >>
> >> >> This dpll device type was established based on the main purpose of
> >> >> >dpll
> >> >> device which is to drive the network ports phy clocks with it.
> >> >
> >> >What is the physical meaning of this indication (lock-status':
> >> >'locked')? Locked on what?
> >>
> >> Lock status is dpll device property.
> >>
> >> But full picture has to be determined from the list of pins, for this
> >> particular case, one input provided from host through pci-e pin, 10MHz
> >> bandwidth frequency and 1 PPS sync pulses.
> >>
> >> As already pointed the type of dpll shall let user know the purpose of
> >> the dpll existence instead of particular input properties.
> >> Input properties are determined with the pin's attributes.
> >>
> >> >As a user of this circuit I want to know that the device is locked on
> >> >the phase of the input signal with a certain precision.
> >> >Is this the meaning of "locked" here? Can an EEC device be locked on
> >> >the Phase of the input signal?
> >>
> >> Well I don't have any data on the precision of such, but AFAIK it can.
> >> EEC dpll shall be producing stable signal, the input it uses is only
> >> part of the full dpll device picture.
> >>
> >> >Users of other devices (e810, zl3073x) may have implemented logic to
> >> >determine the phase lock by
> >> >enforcing the pin parent device type as PPS. How should they change i=
t
> >> >to determine phase lock (and why)?
> >> >
> >>
> >> I am Sorry, I don't understand the example above, could you please
> >> Elaborate on details of such setup?
> >
> >Yep, gladly!
> >Telco customers rely on the Phase being locked on the reference with a
> >certain precision. In E810 and zl3073x the equation is simple:
> >1. "eec locked" means synTonization achieved - frequency locked
> >2. "pps locked" means synChronization achieved - phase locked
> >The T-BC application checks the reported device type. If the device
> >type is "pps", the report is processed by the synchronization state
> >decision logic. Otherwise, the report doesn't have any meaning within
> >"T-BC without SyncE" context and is discarded.
> >
> >Since this patch is going to create eec reports only, they are all
> >going to be discarded, and this is a compatibility issue I'm trying to
> >address.
> >
>
> I see. From this angle the PPS type looks like a superset of EEC.
> It makes sense to me. We had also some discussion and agreed to propose
> new patch with the PPS type, as we don't want the underlying SW to be
> troubled with such issue.

Thanks very much for considering this!

> >Could you please answer my question above:
> >What is the physical meaning of this indication
> >(lock-status':'locked') in this report?
> >
>
> It means that dpll is locked/synchronized with the esync 10MHz/1PPS,
> a signal provided through pcie pin.
>
> Thank you!
> Arkadiusz
>
> >Thanks!
> >VG
> >
> >> Thank you!
> >> Arkadiusz
> >>
> >> >>
> >> >> >2. Since it is also an external embedded sync input pin, could it =
be
> >> >> >possible to expose this information and include `esync-frequency`
> >> >> >and
> >> >> >`esync-pulse`? That could be useful for configuring the leading DP=
LL
> >> >> >that
> >> >> >drives the unmanaged one.
> >> >>
> >> >> Sure, esync caps should be provided, as the commit message example
> >> >> >shown:
> >> >> +    'esync-frequency': 1,
> >> >> +    'esync-frequency-supported': [{'frequency-max': 1, 'frequency-
> >> >> >min':
> >> >>1}],
> >> >> +    'esync-pulse': 25,
> >> >>
> >> >
> >> >Oh, I must have missed that.
> >> >Thanks!
> >> >Vitaly
> >> >
> >> >> Thank you!
> >> >> Arkadiusz
> >>
>

