Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DE5D1E766
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 12:39:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 612C38588A;
	Wed, 14 Jan 2026 11:39:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q_Bg9zow1qSh; Wed, 14 Jan 2026 11:39:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BAC685882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768390741;
	bh=0h6NKVbWVYP+F+luUS4YFm9OAqVWQtYmKRMMyGnW+Nw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ijQUrAWAnKXeMr+1xT5u5ZoqMET+hCUwlY1ZfAqAXgcB6C9N9tF96kNQD77dDlcnV
	 YbvpEvWUsKaQ99t1yJnrCYOUWL18nUlC1u/ws2dyzflBFqj4QQTu761t1swUSt+iZz
	 j+Fz1cj+D1wGsMqs/cCWbOZdSh6rCr1UAnnp1v2cDxNWKBG9eTlNwpm3dm+90s7Stv
	 vEYau/txv8YwN2X2xyXqcyOVJI5JqGh7xRzwrQ3mKPqNgtliQB+ahlJs3hG5U3wpuu
	 p2yF55jcb73r5fdcD/r4k5EORFfjdUbWt/ARThk7WKIjojlZi8ZCuDZ1p6K3sUs4F1
	 n9kvLxEeusI8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BAC685882;
	Wed, 14 Jan 2026 11:39:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EBB3B1CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 11:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D13AA85881
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 11:38:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MA7d1JHmHlJJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 11:38:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vgrinber@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BAAB08587A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAAB08587A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAAB08587A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 11:38:58 +0000 (UTC)
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-348-Om-B35srPVW38xoYctxwNw-1; Wed, 14 Jan 2026 06:38:53 -0500
X-MC-Unique: Om-B35srPVW38xoYctxwNw-1
X-Mimecast-MFC-AGG-ID: Om-B35srPVW38xoYctxwNw_1768390733
Received: by mail-oi1-f200.google.com with SMTP id
 5614622812f47-45a20cdf2acso18021895b6e.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 03:38:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768390733; x=1768995533;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=0h6NKVbWVYP+F+luUS4YFm9OAqVWQtYmKRMMyGnW+Nw=;
 b=NRQg4qM+qDWWZbz3rQBZ7Eo8Wwxz0aCtPFkx37Bjkuw9Om1aaUxHEg4y7LKUU6DpTW
 BaWqy0yk28JneTmuBvc9dDASK6sfu8v59dERB9i6udNzzXFqdr3AAEpui/xx9FecjnVu
 kqie5vi3RzDfI304dl7OJG6QoHqk97kWqPYAVUer3WLRoS3C0pW9Ia7MZrqTb26pUQ+3
 XS36nHC3tQ7Mf2i5wB/TjZIfjebf/jxhSD7aZkJh+C6QsMYS0oBunyWDaC91EyWafD8B
 FrwMc2JppDBOoDqc0oEY6wU9EdaXeLv9isJs2uYgC1vkGheHsyPvVKYB4By5Ba9oqxgo
 L7mg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV/yCVJ4C2TKGkRtjyYx+9OFh/6SANdwa8WlDWIcYF6yIP55RGeoqbvyPGysGKlNsRh8fV59D+RXuAb47w4nNU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyje8V8hWCBN+emlXQPAI/tcjsJsC1o0TwsCCQ7OteKMCxmZU+L
 6CKAmYZis2jZcqu9+Ptzp7gs36rudxZYtGMFerA8tU3H2dFTsk+SvMbTYWXiKVyfiSEiWv1+WJ/
 r+3D/ibVhQWTimUTGlnFIJvtMLQJjfT64w7SO9aBS2fmE+5D37qNGegrgm/AIF3s34zlLdOihp3
 o+El1QG+8zxx/6uxSpOde/Z0KQ97GEHYfRplggYnBK4WHh3Q==
X-Gm-Gg: AY/fxX7ssf016jLCLqBSyxrfI/huWbejB5ZI863jR2szZpY4ST2dcpBNlbJYbDGifVC
 J72Njs+03Q8KhMlUQqxFYqSsfgs+kBI12jpE7x27qJutk1X+E3A+j5IgLrSUv3qKEHNkhDlcBYo
 RXqDE5spAF9WlXx4Ldcznn9ghdQxMvVYdEhTPHkrcBEtmrcDIxaHOwlseT72bW5/ju3zg=
X-Received: by 2002:a05:6808:690a:b0:453:860a:fed with SMTP id
 5614622812f47-45c7153cddfmr1353852b6e.36.1768390732974; 
 Wed, 14 Jan 2026 03:38:52 -0800 (PST)
X-Received: by 2002:a05:6808:690a:b0:453:860a:fed with SMTP id
 5614622812f47-45c7153cddfmr1353841b6e.36.1768390732559; Wed, 14 Jan 2026
 03:38:52 -0800 (PST)
MIME-Version: 1.0
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
 <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
 <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
 <LV4PR11MB9491EB644FC83676522107669B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
In-Reply-To: <LV4PR11MB9491EB644FC83676522107669B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Wed, 14 Jan 2026 13:38:36 +0200
X-Gm-Features: AZwV_QhMnX5vuJC2sC36pYCBqaNsIqpLqRK16xJXdk4kL6u-XItifBTye6cYGWk
Message-ID: <CACLnSDhEQVJ5piUKp6bddxvOff88qj5X6Y8zbqAH8Kf5a7a_Zg@mail.gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4YRCGGgiX6kJCXIvM1kgmVtr0JqeQeKQZqNQAzQCfQU_1768390733
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768390737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0h6NKVbWVYP+F+luUS4YFm9OAqVWQtYmKRMMyGnW+Nw=;
 b=ZVRAU2sxzuzF2dTYmbjk9xWyi4IsGm3U78woi1nSXU4VAdGEMVB6hG673NtWebBe1gPL3t
 c2/l9BPJtr4xoRfd/esoWXS2ksqcrlZAnGd2E9zhmobzUohoRFMt0q3owNM5hrj5gqsjsu
 rREUUbwwhfGaM56RNEqrnhfDq+UuufM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZVRAU2sx
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
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 14, 2026 at 12:23=E2=80=AFPM Kubalewski, Arkadiusz
<arkadiusz.kubalewski@intel.com> wrote:
>
> >From: Vitaly Grinberg <vgrinber@redhat.com>
> >Sent: Saturday, January 10, 2026 10:29 PM
> >
> >Hi Grzegors,
> >Thanks very much for your reply! Added some clarifications inline.
> >
> >On Wed, Jan 7, 2026 at 11:33=E2=80=AFPM Nitka, Grzegorz <grzegorz.nitka@=
intel.com>
> >wrote:
> >>
> >> > -----Original Message-----
> >> > From: Vitaly Grinberg <vgrinber@redhat.com>
> >> > Sent: Tuesday, December 16, 2025 3:42 PM
> >> > To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> >> > Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> >> > Anthony L <anthony.l.nguyen@intel.com>; Kubalewski, Arkadiusz
> >> > <arkadiusz.kubalewski@intel.com>; horms@kernel.org; intel-wired-
> >> > lan@lists.osuosl.org; linux-doc@vger.kernel.org; linux-
> >> > kernel@vger.kernel.org; netdev@vger.kernel.org;
> >> > pmenzel@molgen.mpg.de; Kitszel, Przemyslaw
> >> > <przemyslaw.kitszel@intel.com>
> >> > Subject: Re:[Intel-wired-lan] [PATCH v5 iwl-next] ice: add support
> >> > for unmanaged DPLL on E830 NIC
> >> >
> >> > Will a notification be provided when the lock is re-acquired?
> >> >
> >>
> >> Hi Vitaly, thanks for your comments.
> >> We discussed it offline already, but I think I need more clarification=
s.
> >>
> >> Regarding above question ... yes, 'lock' recovery shall be reported in
> >>the same way.
> >> Maybe the name of health status is a little bit misleading
> >> (ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK),
> >> However health_info struct contains the current lock status (either
> >>'locked' or 'unlocked').
> >
> >Great, thanks for clarifying this!
> >
> >> > Another concern is the absence of periodical pin notifications. With
> >> > the E810, users received the active pin notifications every 1
> >> > second. However, the unmanaged DPLL appears to lack this
> >> > functionality. User implementations currently rely on these
> >> > periodical notifications to derive the overall clock state, metrics
> >> > and events from the phase offset. It seems that unmanaged DPLL users
> >> > will be forced to support two distinct types of DPLLs: one that
> >> > sends periodical pin notifications and one that does not. Crucially,
> >> > this difference does not appear to be reflected in the device
> >> > capabilities, meaning users cannot know in advance whether to expect
> >> > these notifications.
> >>
> >> After reading it one more time, I'm not sure if I get it right in the
> >> first place.
> >> With this patch implementation, there is dpll change notification
> >> applied.
> >> By dpll notification I mean calling dpll_device_change_ntf function.
> >> Isn't it what you're looking for?
> >> Notification is triggered only in case when lock status has changed.
> >> It's unmanaged DPLL so the implementation is a little bit simplified,
> >> based on FW notification.
> >> There is no need for polling thread like it's done for E810.
> >> But even in case of E810, where polling is applied (2 samples per
> >> second), notification is triggered only in case of dpll/pin status
> >> change, not every 1 second.
> >> So please clarify, so either I don't understand the question (please
> >> note, I'm only covering the main author) or notification mechanism, at
> >> least about dpll lock state, is already implemented.
> >>
> >
> >Yes, device lock status change notification is definitely what we are
> >looking for, but there is more. Let me clarify the user perspective.
> >The e810-based telco system relies on both device and pin notifications.
> >Phase offset included in pin notifications is critical because the e810
> >DPLL "Locked" state is too coarse for Telco requirements.
> >It is true that pin notifications are only sent on change; however, sinc=
e
> >the phase offset varies slightly with every measurement, the driver dete=
cts
> >a change every second. This effectively turns the event-driven notificat=
ion
> >into a periodic one. The e810-based application strongly relies on the f=
act
> >that phase offset notifications are unsolicited and the driver sends the=
m
> >from time to time.
> >Now, with the unmanaged DPLL, no pin notification will be sent. Last tim=
e I
> >checked, the device and pin information looked like this:
> >Device:
> > {'clock-id': 1165870453030569040,
> >  'id': 4,
> >  'lock-status': 'locked',
> >  'mode': 'automatic',
> >  'mode-supported': ['automatic'],
> >  'module-name': 'ice',
> >  'type': 'eec'},
> >
> >Input pin:
> >{
> >  "id": 17,
> >  "module-name": "ice",
> >  "clock-id": 1165870453030569040,
> >  "board-label": "1588-TIME_SYNC",
> >  "type": "ext",
> >  "capabilities": [],
> >  "frequency": 10000000,
> >  "phase-adjust-min": 0,
> >  "phase-adjust-max": 0,
> >  "parent-device": [
> >    {
> >      "parent-id": 4,
> >      "state": "connected",
> >      "direction": "input"
> >    }
> >  ]
> >}
> >
> >I see a few challenges for the user here. The biggest one is that the
> >application can't tell the difference between a device that will report
> >phase offsets and this unmanaged device that never will.
> >A possible way forward would be adding a capability flag to the DPLL API=
 so
> >users don't have to guess.
>
> There is no phase-offset field as pointed in the above example.
> No 'phase-offset' attribute -> no such capability.
> Why isn=E2=80=99t that enough?

Pin reply does not contain phase offset, so no change notifications
are expected?
Could there be devices that don't report phase offset, but report state cha=
nges?
Is this the intended use of the phase offset API to be interpreted as
a general pin
notification capability flag?

>
> >However, the preferred solution would be to simply mirror the E810 behav=
ior
> >(sending phase offset). This preserves the existing API contract and
> >prevents users, who have already built applications for this interface,
> >from needing to implement special handling for a new hardware variant th=
at
> >behaves differently.
>
> This is not currently possible from driver perspective.
> We miss the FW API for it.
>
> >There are additional inconsistencies in the existing structure I wanted =
to
> >bring to your attention.
> >1. I'm not entirely sure how a 1588-TIME_SYNC pin can have a parent devi=
ce
> >of type "eec". EEC is all about frequency synchronization, and yet the p=
in
> >named 1588-TIME_SYNC is clearly a phase pin. This also doesn't play well
> >with existing implementations, where EEC circuits deal with frequency, P=
PS
> >circuits deal with phase, and there is clear distinction between the two
> >with regard to the meaning of "being locked".
>
> This dpll device type was established based on the main purpose of dpll
> device which is to drive the network ports phy clocks with it.

What is the physical meaning of this indication (lock-status':
'locked')? Locked on what?
As a user of this circuit I want to know that the device is locked on
the phase of the input signal with a certain precision.
Is this the meaning of "locked" here? Can an EEC device be locked on
the Phase of the input signal?
Users of other devices (e810, zl3073x) may have implemented logic to
determine the phase lock by
enforcing the pin parent device type as PPS. How should they change it
to determine phase lock (and why)?

>
> >2. Since it is also an external embedded sync input pin, could it be
> >possible to expose this information and include `esync-frequency` and
> >`esync-pulse`? That could be useful for configuring the leading DPLL tha=
t
> >drives the unmanaged one.
>
> Sure, esync caps should be provided, as the commit message example shown:
> +    'esync-frequency': 1,
> +    'esync-frequency-supported': [{'frequency-max': 1, 'frequency-min': =
1}],
> +    'esync-pulse': 25,
>

Oh, I must have missed that.
Thanks!
Vitaly

> Thank you!
> Arkadiusz

