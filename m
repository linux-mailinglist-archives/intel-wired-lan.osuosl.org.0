Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7253BD234F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jan 2026 09:58:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45C5560805;
	Thu, 15 Jan 2026 08:58:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dXbCtP2VwJfO; Thu, 15 Jan 2026 08:58:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A52F60A41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768467493;
	bh=LxJnA8ESHNGloyx98rY09AuEzCkDTn54NDk73Ig9am8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lFfWc53S79ndQNspM3+p4yL88nx0FFnJErY1n0+bI/vQavVa8Ul33JgSCgjTr/T0L
	 RxbnTtqSQJ9Tq26Q4r9hDowcpLB+fZX/NZawGaxn8iKkvhVU8heUYQTMc4a5TFA/GO
	 Hbp2nCBJ+TwN5y/+3FGHW8OHuiV1Yru5qINe5CGmAPKojwINGP8t+fKhHI1/NoU0+2
	 ruOuLathhBPJlKjy0vlcLMNg0AP5sktWnGsYrFCNQ68hvOrsfiRE0DnOydkoqslNxO
	 fAN3hSEUaEeMGPO5CI2wNMe/G3MVR6FFIb1CiriYs+VAajj/sCm7K1Pk7qNiJG7Y36
	 QRLsPRGCjx7ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A52F60A41;
	Thu, 15 Jan 2026 08:58:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54758118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 08:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 39ADE40C9A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 08:58:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NucgGrptngg8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jan 2026 08:58:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vgrinber@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1A49C40C99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A49C40C99
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A49C40C99
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 08:58:09 +0000 (UTC)
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-427-Dpc8jVEdNMm7VGCSsAQJ7Q-1; Thu, 15 Jan 2026 03:58:06 -0500
X-MC-Unique: Dpc8jVEdNMm7VGCSsAQJ7Q-1
X-Mimecast-MFC-AGG-ID: Dpc8jVEdNMm7VGCSsAQJ7Q_1768467486
Received: by mail-oi1-f199.google.com with SMTP id
 5614622812f47-4511a6fde00so4194193b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 00:58:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768467486; x=1769072286;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=LxJnA8ESHNGloyx98rY09AuEzCkDTn54NDk73Ig9am8=;
 b=TvxMCD8HpPljPKMD/gK0Q40KPmAbqxWC22CGqSsxSzGAT8i6CJxizTHOTFCqeuVW0b
 qPb3TWZorQehNyPc7NPb8tq9VUiWQ+CUvM08wUF3um2JilsvEJbqruX6E11c0ca/sikf
 uzfcc70I6HhcgUfTZ+0y36YEBxU3MmhhPBn6tInjIVtjO8j8JW6ODpYugJQsqrZval2G
 57NyNfibu4WsZY0cO4rOLW0eBZm/DAH1loCNH5wkOl0+A4fxJ0jBS1RI0UYgiXz1s3ri
 PO/5aBENOk0cuZ0TOXsQZoN3h1cj8yiBwqL1E9B6WFdLz1eaKh69W1O8yEPnDjLA6wZb
 Okgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXa3/iJ42d6cTQk0mAOVP4V8wHEYTGj5vXfvlixE1Ruayo8IryGjFC7z5r1G3DBg91SDSGik4IAMmdm+aQQXpI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwmUXzqueopy7HXXPLbvg7ytuZtPaPWeuXDe1vQxuPNugXtPkA7
 TWjH3jyGRc7KuE6QqMOKLHxSvK1dFAKsuHZUjIn/B4tN8d6tT49FFvXGJPlmjxxCRhFybgqzFRP
 1+je/f+LSXEEpkceJbtfWX9P91vHkZeEqJSlWkXA/Jj421JIsOmXyqIM214DMA2x8iZWMz2a8NT
 LqZ/LJfbb/FtFY855sfQ3yrB4YN9nma40I3Mhk3taKH2p6dA==
X-Gm-Gg: AY/fxX49cu1pU/P/hAzgwCFE3peoSdTgZRlY8KpHjwhQHMeSpkX/x/J8Iaw+ZohNKuy
 yTG3nTosSMTKvLWQ+EigN8QPN8vP89jUj6phogZSBueptwy7c3qTICj9MWmo1lD1zijeTakE7Ir
 YzcwVlOqrrwilucXn6Gq/a6OHkPK9irRyLL+hgLWr2zvGiNMdU2WQlLZhlwKObaRlT
X-Received: by 2002:a05:6808:23c6:b0:450:89ee:922b with SMTP id
 5614622812f47-45c8808d2ffmr1705719b6e.22.1768467486011; 
 Thu, 15 Jan 2026 00:58:06 -0800 (PST)
X-Received: by 2002:a05:6808:23c6:b0:450:89ee:922b with SMTP id
 5614622812f47-45c8808d2ffmr1705703b6e.22.1768467485610; Thu, 15 Jan 2026
 00:58:05 -0800 (PST)
MIME-Version: 1.0
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
 <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
 <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
 <LV4PR11MB9491EB644FC83676522107669B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDhEQVJ5piUKp6bddxvOff88qj5X6Y8zbqAH8Kf5a7a_Zg@mail.gmail.com>
 <LV4PR11MB9491B0E591D66E4AEDE9B1329B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
In-Reply-To: <LV4PR11MB9491B0E591D66E4AEDE9B1329B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Thu, 15 Jan 2026 10:57:49 +0200
X-Gm-Features: AZwV_QijwZUQitFksicMP9ueDYXoIsh6EMNIvOTnPt4NWgLOWM54f4CZgNSuas0
Message-ID: <CACLnSDggQLQMFdT3VLxm+GNNad6xy43nh6D+UzbW-u9Wwg+WOw@mail.gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ychGMHvsD0XDTlFPeJXBsy7LdA-FgKAi96TgHwJ2rT8_1768467486
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768467488;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LxJnA8ESHNGloyx98rY09AuEzCkDTn54NDk73Ig9am8=;
 b=hHTSFoiAY8ydIc6ZkgSObsF8tZVFsh0KVmx6Uzp41GyhDOO/2tx8cMoDM7BYt8nGBeQ422
 7CG3xPdH4yZzuK5GU7d4LNznMxCr+tcNOkxUWNXHdaFuXzJ+jVcMdO9E2kYcZOrT7RJD4t
 pe+GXipogDBpQm+UD97Lx2bwQl5lb5c=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=hHTSFoiA
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
 Anthony L" <anthony.l.nguyen@intel.com>, Zoltan Fodor <zoltan.fodor@intel.com>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

, the ea

On Wed, Jan 14, 2026 at 3:32=E2=80=AFPM Kubalewski, Arkadiusz
<arkadiusz.kubalewski@intel.com> wrote:
>
> >From: Vitaly Grinberg <vgrinber@redhat.com>
> >Sent: Wednesday, January 14, 2026 12:39 PM
> >
>
> [..]
>
> >> >
> >> >I see a few challenges for the user here. The biggest one is that the
> >> >application can't tell the difference between a device that will repo=
rt
> >> >phase offsets and this unmanaged device that never will.
> >> >A possible way forward would be adding a capability flag to the DPLL =
API
> >> >so
> >> >users don't have to guess.
> >>
> >> There is no phase-offset field as pointed in the above example.
> >> No 'phase-offset' attribute -> no such capability.
> >> Why isn=E2=80=99t that enough?
> >
> >Pin reply does not contain phase offset, so no change notifications
> >are expected?
> >Could there be devices that don't report phase offset, but report state
> >changes?
> >Is this the intended use of the phase offset API to be interpreted as
> >a general pin
> >notification capability flag?
> >
>
> Sorry, this is not what I meant.
>
> The E810 produces notifications not only for the pin's phase offset but
> also for other pin attribute changes. When it comes to the E810 pins,
> notifications generated by phase offset changes are quite frequent.
> However, it wasn't intention to produce them every second; this is simply
> the result of frequent phase offset changes.
>
> Typically, the pin state changes for the pin, but for E830, the unmanaged
> mode means that the state of the pin never changes, resulting in no pin
> notifications being produced in the end.
>
> Hope that clears things up.

Will the reported pin state remain "connected" even if I disconnect
the input signal?
Is there any information in DPLL or pin replies that can tell the user
"this DPLL is unmanaged type, it behaves differently"?

>
> >>
> >> >However, the preferred solution would be to simply mirror the E810
> >> >behavior
> >> >(sending phase offset). This preserves the existing API contract and
> >> >prevents users, who have already built applications for this interfac=
e,
> >> >from needing to implement special handling for a new hardware variant
> >> >that
> >> >behaves differently.
> >>
> >> This is not currently possible from driver perspective.
> >> We miss the FW API for it.
> >>
> >> >There are additional inconsistencies in the existing structure I want=
ed
> >> >to
> >> >bring to your attention.
> >> >1. I'm not entirely sure how a 1588-TIME_SYNC pin can have a parent
> >> >device
> >> >of type "eec". EEC is all about frequency synchronization, and yet th=
e
> >> >pin
> >> >named 1588-TIME_SYNC is clearly a phase pin. This also doesn't play w=
ell
> >> >with existing implementations, where EEC circuits deal with frequency=
,
> >> >PPS
> >> >circuits deal with phase, and there is clear distinction between the =
two
> >> >with regard to the meaning of "being locked".
> >>
> >> This dpll device type was established based on the main purpose of dpl=
l
> >> device which is to drive the network ports phy clocks with it.
> >
> >What is the physical meaning of this indication (lock-status':
> >'locked')? Locked on what?
>
> Lock status is dpll device property.
>
> But full picture has to be determined from the list of pins, for this
> particular case, one input provided from host through pci-e pin, 10MHz
> bandwidth frequency and 1 PPS sync pulses.
>
> As already pointed the type of dpll shall let user know the purpose of
> the dpll existence instead of particular input properties.
> Input properties are determined with the pin's attributes.
>
> >As a user of this circuit I want to know that the device is locked on
> >the phase of the input signal with a certain precision.
> >Is this the meaning of "locked" here? Can an EEC device be locked on
> >the Phase of the input signal?
>
> Well I don't have any data on the precision of such, but AFAIK it can.
> EEC dpll shall be producing stable signal, the input it uses is only
> part of the full dpll device picture.
>
> >Users of other devices (e810, zl3073x) may have implemented logic to
> >determine the phase lock by
> >enforcing the pin parent device type as PPS. How should they change it
> >to determine phase lock (and why)?
> >
>
> I am Sorry, I don't understand the example above, could you please
> Elaborate on details of such setup?

Yep, gladly!
Telco customers rely on the Phase being locked on the reference with a
certain precision. In E810 and zl3073x the equation is simple:
1. "eec locked" means synTonization achieved - frequency locked
2. "pps locked" means synChronization achieved - phase locked
The T-BC application checks the reported device type. If the device
type is "pps", the report is processed by the synchronization state
decision logic. Otherwise, the report doesn't have any meaning within
"T-BC without SyncE" context and is discarded.

Since this patch is going to create eec reports only, they are all
going to be discarded, and this is a compatibility issue I'm trying to
address.

Could you please answer my question above:
What is the physical meaning of this indication
(lock-status':'locked') in this report?

Thanks!
VG

> Thank you!
> Arkadiusz
>
> >>
> >> >2. Since it is also an external embedded sync input pin, could it be
> >> >possible to expose this information and include `esync-frequency` and
> >> >`esync-pulse`? That could be useful for configuring the leading DPLL
> >> >that
> >> >drives the unmanaged one.
> >>
> >> Sure, esync caps should be provided, as the commit message example sho=
wn:
> >> +    'esync-frequency': 1,
> >> +    'esync-frequency-supported': [{'frequency-max': 1, 'frequency-min=
':
> >>1}],
> >> +    'esync-pulse': 25,
> >>
> >
> >Oh, I must have missed that.
> >Thanks!
> >Vitaly
> >
> >> Thank you!
> >> Arkadiusz
>

