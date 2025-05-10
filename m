Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F65AB213B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 May 2025 06:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDC6183B4E;
	Sat, 10 May 2025 04:58:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y3WFz_YTrRKW; Sat, 10 May 2025 04:58:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B850883B25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746853112;
	bh=r+X410cT7F4Pp3UKILHwY2TVKJ2didIf9eg67M7lzks=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=37wz+ARNfE656opsZmR3fi66hsQrwjZsJgddvZuFiRClvSE+JjrXMrzKf8VNXadFQ
	 nV2vYB1OqAHnG6JEyRgV6UfluHfPi12wWrALEulftuKWVrQ2qiHkWL7tRCFtsz0vrV
	 5C6t0Y/s1Z28FpC/PJkY8pFqZKNWV25QnLBOz7Dai7UYvufdCJxV/UP++8tLBnu4bW
	 hxzbHy7GuF4WB58oiIubVoGmFl2P6d7MvPoYM+rbwuXiC1PxEuZJZ1g2nByE8YkR3J
	 xsRAXS7w6b9mPT5b3pGHZ+qi3cuTuepLcOHXriedg1oqRip0Fj+kknAT2oCMWBM0jL
	 pHCl7JiPbMzXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B850883B25;
	Sat, 10 May 2025 04:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B36F154
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 04:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10D3E6084D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 04:58:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZdTJLW2-MCO for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 May 2025 04:58:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com;
 envelope-from=jagadeesharm14@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B999F607AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B999F607AE
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B999F607AE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 04:58:29 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-acb415dd8faso464806766b.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 May 2025 21:58:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746853107; x=1747457907;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=r+X410cT7F4Pp3UKILHwY2TVKJ2didIf9eg67M7lzks=;
 b=TLZKfwVy89iOQjqjHfuSH3ERnfQ3AKMr/uSRX5PgTEAXDZf32/hazfh48EK/d7ydZL
 EXdSjGtTQZuEwImdP4fpUxzrlakdtQkxn5emU4Km89+KjMGDJCPVBlDIJfUI5m/lxBpz
 R0mWtE9l0dDsfajt3C+2iC8Dqus787sznl14mjIteEvQTQxOqsFE1Ad7FRczoFdAvMrQ
 SkP2GFbP2jub0/7UwdK8NhuUqoccYwEXNcv8Y1cGUke7eBDK6BlPVVxJLnGpXedOazmy
 qUEa7ilw0unNzdkMIWCevL09T+aEWAfzjuK9QYTK0O8ETNwadS40EjHg9c0Q8afWbNmi
 7JkA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZS3I2AHPuENQeeeRzlqny3Mqdbo20ZTZrunX2Ixos93/lwD6WWto08zDUbxmYJ6CsRZ2r/otSYYgUn1NlwsM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzIifIfDUuFruFqIyJb1yLt3MBEXsmNO5zOX6b7ipdbSNbNqpuI
 Qq9W4dptsjjdOH2nt0k3Bm7W/JcABZpC7wKcN5JMJdVqQl3nIYMdykPVI83UwxUIg+QFIHO8TFj
 86hl5TT8rzQ5A2YTN5rbrLEykRCU=
X-Gm-Gg: ASbGncuHa9K6EG28aIngHvpqPNplfPhVhGRZJwKrwQT/xfRr0/Ts1DZbsgia25FJ5tO
 kCbKu4AUxMKrcZtmRG+tCiRYJ+qCaBZ90FMohHJyU14Px5JUsLqWD37Sa8CpE9ReNW2gAkgxlzX
 ddwNCfnn4aPrZRgna0+As/WnUCQdSxZG3LIg==
X-Google-Smtp-Source: AGHT+IEaB8ciOOStpiDcz17DoJIKHJS5xv7itHo1ehWc/jJtaQmTKXajRcEeSkBPiOIvC2eQpsgJsXGOFW7+QoxlJAQ=
X-Received: by 2002:a17:907:a701:b0:ad2:31c7:1ab with SMTP id
 a640c23a62f3a-ad231c705f2mr195036666b.41.1746853107188; Fri, 09 May 2025
 21:58:27 -0700 (PDT)
MIME-Version: 1.0
References: <20250508061439.8900-1-jagadeesharm14@gmail.com>
 <8a9fda50-6040-4cca-b99f-46bb9258a6f0@molgen.mpg.de>
In-Reply-To: <8a9fda50-6040-4cca-b99f-46bb9258a6f0@molgen.mpg.de>
From: jagadesh kumar <jagadeesharm14@gmail.com>
Date: Sat, 10 May 2025 10:28:14 +0530
X-Gm-Features: ATxdqUFBhDKSWn7Tg2KbsE5MwRsJQ-JifG8TbvqiPlcw8I7rFGlf5vlUbTROFME
Message-ID: <CANHhatDxo_xfOr1WU574a5uROos2obKSk+qk0F=e7V=rggT21w@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jagadeesh <jagadeesh.yalapalli@einfochips.com>
Content-Type: multipart/alternative; boundary="000000000000edc9830634c0ee46"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1746853107; x=1747457907; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=r+X410cT7F4Pp3UKILHwY2TVKJ2didIf9eg67M7lzks=;
 b=Hn4gZtHtCGAb/fSNVPj1BryKF2qDAswUqN+ePHvat/msDD3+rzHYXinZUlDmfru8W9
 MsLDPMGxCc6uxQ0PjGzHqCjE3+Ebc1lQ5t+WSMYTojRSwRjK7JRar5rpTPqqH12xC21i
 KrPJivfLDvrNYQNxqop6UQ6wp3t/C2s2gL1YylEiEIVaCY5PiOOyFUUsV9Lyz9mhiFUI
 9MTgB9LA9AHpuD3AQZehZK04onXOC3MuQdrXK2oMIVU09aCR99vP7ASw86AaS4HitJ2c
 xvmW6DGzojk2Q/oaMq9CN8DGOiT5w8WVa8C2JDfALuZABRaU4k2D0mNHhv3/FxUl+ZNs
 /I6g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Hn4gZtHt
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Replace schedule_work with
 delayed workqueue for watchdog.
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

--000000000000edc9830634c0ee46
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for feedback.

Resolved the naming convention of Author/signoff part,

Check After previously reverted or rejected patches.
understand the impact of usage of "queue_delayed_work" functions in
watchdog related routines.

Impact : (59653e6497d1: e1000e: Make
watchdog use delayed work). This was resulted in driver crashes and
connections to reset unexpectedly.

May be There is no proper synchronization for above patch changes.

Thanks & Regards,
Jagadeesh Yalapalli.

On Thu, May 8, 2025 at 10:10=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:

> Dear Jagadeesh,
>
>
> Thank you for your patch.
>
> Am 08.05.25 um 08:14 schrieb Jagadeesh Yalapalli:
> > From: Jagadeesh <jagadeesh.yalapalli@einfochips.com>
>
> Is this your full name, or should *Jagadeesh Yalapalli* be used?
>
>      git config --global user.name "Jagadeesh Yalapalli"
>
> >
> >      Replace direct schedule_work() usage with queue_delayed_work() to
> allow
> >      better timing control for the watchdog task. This resolves potenti=
al
> >      race conditions during interface reset operations.
>
> What error do you get (without your patch)?
>
> >      - Added watchdog_wq workqueue_struct and watchdog_dq delayed_work
> >      - Updated e1000_watchdog() to use queue_delayed_work()
> >      - Removed obsolete TODO comment about delayed workqueue
> >
> >      Tested in Qemu :
> >      / # for i in {1..1000}; do
> >      >     echo 1 > /sys/class/net/eth0/device/reset
> >      >     sleep 0.1
> >      > done
> >      [  726.357499] e1000e 0000:00:02.0: resetting
> >      [  726.390737] e1000e 0000:00:02.0: reset done
>
> Please do not copy the output of git show, but send the patch with `git
> format-patch` and `git send-email`.
>
> > Signed-off-by: Jagadeesh <jagadeesh.yalapalli@einfochips.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/e1000.h  | 2 ++
> >   drivers/net/ethernet/intel/e1000e/netdev.c | 3 +--
> >   2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h
> b/drivers/net/ethernet/intel/e1000e/e1000.h
> > index ba9c19e6994c..1e7b365c4f31 100644
> > --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> > +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> > @@ -194,6 +194,8 @@ struct e1000_adapter {
> >       struct timer_list blink_timer;
> >
> >       struct work_struct reset_task;
> > +     struct workqueue_struct *watchdog_wq;
> > +     struct delayed_work watchdog_dq;
> >       struct work_struct watchdog_task;
> >
> >       const struct e1000_info *ei;
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> > index 8ebcb6a7d608..87a915d09f4e 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > @@ -5178,9 +5178,8 @@ static void e1000_watchdog(struct timer_list *t)
> >       struct e1000_adapter *adapter =3D from_timer(adapter, t,
> watchdog_timer);
> >
> >       /* Do the rest outside of interrupt context */
> > -     schedule_work(&adapter->watchdog_task);
> > +     queue_delayed_work(adapter->watchdog_wq, &adapter->watchdog_dq, 0=
);
> >
> > -     /* TODO: make this use queue_delayed_work() */
> >   }
> >
> >   static void e1000_watchdog_task(struct work_struct *work)
>
>
> Kind regards,
>
> Paul
>

--000000000000edc9830634c0ee46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for feedback.<br><br>Resolved the naming convention=
 of Author/signoff part,<br><br>Check After previously reverted or rejected=
 patches.<div>understand the impact of usage of &quot;<span style=3D"color:=
rgb(80,0,80)">queue_delayed_work&quot;</span>=C2=A0functions in watchdog re=
lated routines.<br><br>Impact : (59653e6497d1: e1000e: Make <br>watchdog us=
e delayed work). This was resulted in driver crashes and <br>connections to=
 reset unexpectedly.<br><br>May be There is no proper synchronization for a=
bove patch changes.<br><br>Thanks &amp; Regards,<br>Jagadeesh Yalapalli.</d=
iv></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, May 8, 2025 at 10:10=E2=80=AFPM Paul Menze=
l &lt;<a href=3D"mailto:pmenzel@molgen.mpg.de">pmenzel@molgen.mpg.de</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Ja=
gadeesh,<br>
<br>
<br>
Thank you for your patch.<br>
<br>
Am 08.05.25 um 08:14 schrieb Jagadeesh Yalapalli:<br>
&gt; From: Jagadeesh &lt;<a href=3D"mailto:jagadeesh.yalapalli@einfochips.c=
om" target=3D"_blank">jagadeesh.yalapalli@einfochips.com</a>&gt;<br>
<br>
Is this your full name, or should *Jagadeesh Yalapalli* be used?<br>
<br>
=C2=A0 =C2=A0 =C2=A0git config --global <a href=3D"http://user.name" rel=3D=
"noreferrer" target=3D"_blank">user.name</a> &quot;Jagadeesh Yalapalli&quot=
;<br>
<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Replace direct schedule_work() usage with queue_de=
layed_work() to allow<br>
&gt;=C2=A0 =C2=A0 =C2=A0 better timing control for the watchdog task. This =
resolves potential<br>
&gt;=C2=A0 =C2=A0 =C2=A0 race conditions during interface reset operations.=
<br>
<br>
What error do you get (without your patch)?<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 - Added watchdog_wq workqueue_struct and watchdog_=
dq delayed_work<br>
&gt;=C2=A0 =C2=A0 =C2=A0 - Updated e1000_watchdog() to use queue_delayed_wo=
rk()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 - Removed obsolete TODO comment about delayed work=
queue<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Tested in Qemu :<br>
&gt;=C2=A0 =C2=A0 =C2=A0 / # for i in {1..1000}; do<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0echo 1 &gt; /sys/class/net=
/eth0/device/reset<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0sleep 0.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; done<br>
&gt;=C2=A0 =C2=A0 =C2=A0 [=C2=A0 726.357499] e1000e 0000:00:02.0: resetting=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 [=C2=A0 726.390737] e1000e 0000:00:02.0: reset don=
e<br>
<br>
Please do not copy the output of git show, but send the patch with `git <br=
>
format-patch` and `git send-email`.<br>
<br>
&gt; Signed-off-by: Jagadeesh &lt;<a href=3D"mailto:jagadeesh.yalapalli@ein=
fochips.com" target=3D"_blank">jagadeesh.yalapalli@einfochips.com</a>&gt;<b=
r>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/e1000e/e1000.h=C2=A0 | 2 ++<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/e1000e/netdev.c | 3 +--<br>
&gt;=C2=A0 =C2=A02 files changed, 3 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/e=
thernet/intel/e1000e/e1000.h<br>
&gt; index ba9c19e6994c..1e7b365c4f31 100644<br>
&gt; --- a/drivers/net/ethernet/intel/e1000e/e1000.h<br>
&gt; +++ b/drivers/net/ethernet/intel/e1000e/e1000.h<br>
&gt; @@ -194,6 +194,8 @@ struct e1000_adapter {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct timer_list blink_timer;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct work_struct reset_task;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct workqueue_struct *watchdog_wq;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct delayed_work watchdog_dq;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct work_struct watchdog_task;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct e1000_info *ei;<br>
&gt; diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/=
ethernet/intel/e1000e/netdev.c<br>
&gt; index 8ebcb6a7d608..87a915d09f4e 100644<br>
&gt; --- a/drivers/net/ethernet/intel/e1000e/netdev.c<br>
&gt; +++ b/drivers/net/ethernet/intel/e1000e/netdev.c<br>
&gt; @@ -5178,9 +5178,8 @@ static void e1000_watchdog(struct timer_list *t)=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct e1000_adapter *adapter =3D from_timer=
(adapter, t, watchdog_timer);<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Do the rest outside of interrupt context =
*/<br>
&gt; -=C2=A0 =C2=A0 =C2=A0schedule_work(&amp;adapter-&gt;watchdog_task);<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0queue_delayed_work(adapter-&gt;watchdog_wq, &amp;=
adapter-&gt;watchdog_dq, 0);<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -=C2=A0 =C2=A0 =C2=A0/* TODO: make this use queue_delayed_work() */<br=
>
&gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0static void e1000_watchdog_task(struct work_struct *work)<=
br>
<br>
<br>
Kind regards,<br>
<br>
Paul<br>
</blockquote></div>

--000000000000edc9830634c0ee46--
