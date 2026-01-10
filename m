Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86339D0DE22
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 22:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0F3F607EE;
	Sat, 10 Jan 2026 21:29:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tmveqVs-p8ig; Sat, 10 Jan 2026 21:29:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFEA960820
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768080575;
	bh=BkE+iVeStS9ap0ZdCuIewxyxpQ7WymUQDmHJWd1A0aI=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tN5YIeElWG48mm8MwEKhIDeriGK4XuokSYPj/aU8fYU7BGw8ulS7eaGP6RlwwI/tw
	 VYHjEsSY6Rv2Z/3r1NM0kpBYzEy7h/yV1h68rQelaSgQyJYx6tTxWxmA3UC8MFDD5C
	 NaiTwJ7KB85b4x9ib2yiH+HAqfHIK2zOLpUirmwc9VBIsy1ugFyTUtp6ov3h5xDXqR
	 bw0TfEKrQJvDfbeaLi2MXK758gUN+2QgACglQ9++sS8N5TY4mbkT5n0JL531EAnoJm
	 oWyNL5S07gCrYM5T1PHt6K21CkTtbYAnRH+9t7JoriCxirKEnqSwkdOTzKSvRiPCX6
	 ptdOUho3LK1rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFEA960820;
	Sat, 10 Jan 2026 21:29:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2153C18D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDCEB81703
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:29:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wnFyVYQ48uZx for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jan 2026 21:29:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vgrinber@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 04EE581700
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04EE581700
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04EE581700
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 21:29:31 +0000 (UTC)
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-52-Wh8oyFXROvKhNuRvHrv3Nw-1; Sat, 10 Jan 2026 16:29:28 -0500
X-MC-Unique: Wh8oyFXROvKhNuRvHrv3Nw-1
X-Mimecast-MFC-AGG-ID: Wh8oyFXROvKhNuRvHrv3Nw_1768080567
Received: by mail-oo1-f71.google.com with SMTP id
 006d021491bc7-656b2edce07so11143763eaf.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jan 2026 13:29:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768080567; x=1768685367;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=BkE+iVeStS9ap0ZdCuIewxyxpQ7WymUQDmHJWd1A0aI=;
 b=r39zkVsjhCuBb+Bd+ja4yA+IXLNclrvsB+2qUhrfZMvbRJcdkZ7BRUe4+l1Tt48xJF
 x+y0sAXzRZNEPPqvNyH9cikf2GXxePGqHjzVhZbK2X5eLKLhnOopU3qfDw1laiQ+I+Ql
 Gf8QtTPXvI1X2hYJ9N5EJIjqDVNKRs+gWOJUi+Qb1Hjj3A+pf1sDJH42xOAo+EvEASD8
 mDUbxrWIN/vhp/43k2JBgVtGBHNi5dNGl/mWzwebiB9Dh2PYdcm/h9wPIsTTKldH+ME0
 Z6a25exe9zrxwj6uxHI1xMRj3Zu3T7k4bHHbb+gISuzCEYg8rMKu4GeCfSVji1X96eIJ
 qSoQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVSQvHBmeT04MJCBbtNQ1MeP8W4OSBzAT3n3gryxrURc/EZWfGxsdXkFNoAs2oOFIQs57r9ixJ3yGLeEOfjCwI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyawE2X47BYQinNdnBLzVpBJyNO/RuSbHXwCT9OdZyREZmQTd+B
 ZFtRUVvbqRzQrA1qq5n+ReFhJZr9stBudLgIeldvFFyGXIz9luo93HFg76+lG5hTH/MU31TAMyH
 Z/XVDs5Gwvbtoec4cdUqqKMdnSpg/MdhgSER1etrV9J1EuCEzusa292DriDazGyb7cf7iaQ6tvt
 43QpAakKkT+3K5eZSznxRzgvMFCqhjFrVTGSHrMOgGRgde2g==
X-Gm-Gg: AY/fxX7Bb1HmeTkJsFeV9AKj2QacZWIeK+eyxhs9l+dq82JIjZnYBu2LeUzASA2svkD
 y6PrEDXu2Sk0oop28iRpoFcb98HJYhwu/B+UOVSPluX1diyJ7CZ97TER5zjPBA7SrqDXIyFcGFn
 EAAgmrH8m+HSlnwNzi+4NuDZZTakw/p0oP6jxKc3tZWkD4ic/434AZfQD/LtbBpoMv/X4=
X-Received: by 2002:a05:6820:22a7:b0:65b:3bd8:a75b with SMTP id
 006d021491bc7-65f550bc142mr6987831eaf.72.1768080567499; 
 Sat, 10 Jan 2026 13:29:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHpyjnhS5jcpniHuaklJ+T3KGnZiN96XIuwq9ire6t4KN0lmKgSW0u9SpewvA8rcsxnswYJlGQzjtE9HD0XJYM=
X-Received: by 2002:a05:6820:22a7:b0:65b:3bd8:a75b with SMTP id
 006d021491bc7-65f550bc142mr6987818eaf.72.1768080567120; Sat, 10 Jan 2026
 13:29:27 -0800 (PST)
MIME-Version: 1.0
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
 <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Sat, 10 Jan 2026 23:29:16 +0200
X-Gm-Features: AZwV_QiG9tsTWyQKEuQ2eM2JGegyP9OgXPzgej6rvWd8OC-c8f-x0zTbTbP3QMk
Message-ID: <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "horms@kernel.org" <horms@kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: N_mZxNQtQWvvA1SM5b1GrzXaRhF6004stpL9LJtDfmw_1768080567
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768080569;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BkE+iVeStS9ap0ZdCuIewxyxpQ7WymUQDmHJWd1A0aI=;
 b=hI0epgdrDszfCDjlLs1qGluWl+V4JhfpabNWwONDPullRMeDz1IUBMWqYNkCcTnKjbBAlJ
 43yEW+1rfAvEXM3UQiOMi5p5FXIO0OGdGdyr/CFJpdzCNnC+LixEuCMOBC8xWwXVTb81r+
 dVGMUSSU8Cyo/wzcs2mYi4YOjfioynE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=hI0epgdr
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Grzegors,
Thanks very much for your reply! Added some clarifications inline.

On Wed, Jan 7, 2026 at 11:33=E2=80=AFPM Nitka, Grzegorz
<grzegorz.nitka@intel.com> wrote:
>
> > -----Original Message-----
> > From: Vitaly Grinberg <vgrinber@redhat.com>
> > Sent: Tuesday, December 16, 2025 3:42 PM
> > To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> > Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>; Kubalewski, Arkadiusz
> > <arkadiusz.kubalewski@intel.com>; horms@kernel.org; intel-wired-
> > lan@lists.osuosl.org; linux-doc@vger.kernel.org; linux-
> > kernel@vger.kernel.org; netdev@vger.kernel.org;
> > pmenzel@molgen.mpg.de; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>
> > Subject: Re:[Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
> > unmanaged DPLL on E830 NIC
> >
> > Will a notification be provided when the lock is re-acquired?
> >
>
> Hi Vitaly, thanks for your comments.
> We discussed it offline already, but I think I need more clarifications.
>
> Regarding above question ... yes, 'lock' recovery shall be reported in th=
e same way.
> Maybe the name of health status is a little bit misleading (ICE_AQC_HEALT=
H_STATUS_INFO_LOSS_OF_LOCK),
> However health_info struct contains the current lock status (either 'lock=
ed' or 'unlocked').

Great, thanks for clarifying this!

> > Another concern is the absence of periodical pin notifications. With th=
e E810,
> > users received the active pin notifications every 1 second. However, th=
e
> > unmanaged DPLL appears to lack this functionality. User implementations
> > currently rely on these periodical notifications to derive the overall =
clock
> > state, metrics and events from the phase offset. It seems that unmanage=
d
> > DPLL users will be forced to support two distinct types of DPLLs: one t=
hat
> > sends periodical pin notifications and one that does not. Crucially, th=
is
> > difference does not appear to be reflected in the device capabilities,
> > meaning users cannot know in advance whether to expect these
> > notifications.
>
> After reading it one more time, I'm not sure if I get it right in the fir=
st place.
> With this patch implementation, there is dpll change notification applied=
.
> By dpll notification I mean calling dpll_device_change_ntf function.
> Isn't it what you're looking for?
> Notification is triggered only in case when lock status has changed.
> It's unmanaged DPLL so the implementation is a little bit simplified, bas=
ed on FW notification.
> There is no need for polling thread like it's done for E810.
> But even in case of E810, where polling is applied (2 samples per second)=
, notification is triggered only in case of
> dpll/pin status change, not every 1 second.
> So please clarify, so either I don't understand the question (please note=
, I'm only covering the main author)
> or notification mechanism, at least about dpll lock state, is already imp=
lemented.
>

Yes, device lock status change notification is definitely what we are
looking for, but there is more. Let me clarify the user perspective.
The e810-based telco system relies on both device and pin
notifications. Phase offset included in pin notifications is critical
because the e810 DPLL "Locked" state is too coarse for Telco
requirements.
It is true that pin notifications are only sent on change; however,
since the phase offset varies slightly with every measurement, the
driver detects a change every second. This effectively turns the
event-driven notification into a periodic one. The e810-based
application strongly relies on the fact that phase offset
notifications are unsolicited and the driver sends them from time to
time.
Now, with the unmanaged DPLL, no pin notification will be sent. Last
time I checked, the device and pin information looked like this:
Device:
 {'clock-id': 1165870453030569040,
  'id': 4,
  'lock-status': 'locked',
  'mode': 'automatic',
  'mode-supported': ['automatic'],
  'module-name': 'ice',
  'type': 'eec'},

Input pin:
{
  "id": 17,
  "module-name": "ice",
  "clock-id": 1165870453030569040,
  "board-label": "1588-TIME_SYNC",
  "type": "ext",
  "capabilities": [],
  "frequency": 10000000,
  "phase-adjust-min": 0,
  "phase-adjust-max": 0,
  "parent-device": [
    {
      "parent-id": 4,
      "state": "connected",
      "direction": "input"
    }
  ]
}

I see a few challenges for the user here. The biggest one is that the
application can't tell the difference between a device that will
report phase offsets and this unmanaged device that never will.
A possible way forward would be adding a capability flag to the DPLL
API so users don't have to guess.
However, the preferred solution would be to simply mirror the E810
behavior (sending phase offset). This preserves the existing API
contract and prevents users, who have already built applications for
this interface, from needing to implement special handling for a new
hardware variant that behaves differently.
There are additional inconsistencies in the existing structure I
wanted to bring to your attention.
1. I'm not entirely sure how a 1588-TIME_SYNC pin can have a parent
device of type "eec". EEC is all about frequency synchronization, and
yet the pin named 1588-TIME_SYNC is clearly a phase pin. This also
doesn't play well with existing implementations, where EEC circuits
deal with frequency, PPS circuits deal with phase, and there is clear
distinction between the two with regard to the meaning of "being
locked".
2. Since it is also an external embedded sync input pin, could it be
possible to expose this information and include `esync-frequency` and
`esync-pulse`? That could be useful for configuring the leading DPLL
that drives the unmanaged one.

