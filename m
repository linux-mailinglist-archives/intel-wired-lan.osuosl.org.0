Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E541AE3EF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2020 19:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AA41881CC;
	Fri, 17 Apr 2020 17:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6RFc6qYb8lqV; Fri, 17 Apr 2020 17:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DA89881BF;
	Fri, 17 Apr 2020 17:43:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BAD531BF34C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7650860EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cwKyNGTqs-Ft for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2020 10:45:50 +0000 (UTC)
X-Greylist: delayed 00:07:13 by SQLgrey-1.7.6
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 888B085FC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 10:45:50 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id f13so2460574wrm.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 03:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j9s2AY31yXcwE82oS2y16DHsy3pEPi7VrkIcRhJvLL8=;
 b=uhC2VhGJw4UkxIuZgxuag2KgT3mw+rYtugafpeYo5ttG081KVCeehPtBj61P/WS0tZ
 IP1wL9fNOq+pm5MdE++fRqipa2IJ0eeorQQL9ZkSqZjrsqPGwADeUJhCO2cZUotjSHgv
 apQJLW9zHxFp8dDgFVbnVx5E5LEq4n6skQx4Cie55Vio4flsQm9PHRcnJtsUeQOV9zjZ
 227GwMB4BEwP4fFvemayn7+wBH05dXAfBBqiz/77Cr4+Mzf2jgHXepZ9luLmY9z6WgIN
 oPACBzJffQPw7BfdH5l392E+GO8trX26wdYfqbQDHqYwkMq77oPI/SqDUJYneGgXxnhV
 UVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j9s2AY31yXcwE82oS2y16DHsy3pEPi7VrkIcRhJvLL8=;
 b=Z+igR5VDcDGUnOal+I1NupJI49NqVR2VrYq90lmtATUuzPU9qDlY5Z6q6MOwrZpvCH
 512HbwRkDom2Q2zmOnExkYR9OLkYwlZjgAoNyAnSCUja0RsTVBOV9SzlokjpzO/+KmNu
 3P+PH0lKTc1niwsQOui0fOl2/aibBsZyohzqzbkKvLYglKceVPZ8o33jKaM4aSGwmYEv
 L4FMYil6bxzNLm3YG6lqgMRjwcjmPH6GFFqWS4PHuejY4EbGo+jDnNxhtpBSJT40lzn6
 he90djt+skJoRtrRDC0QR2uuBr2WYClGR4xbbmHKH75SHLuMyad/Adu/LdNc7mkiNVA1
 b7rg==
X-Gm-Message-State: AGi0PubTTfCSYQiIUaQuRq5CbakNs9blJTfRwMf22HbMPzHLGYCgXTc9
 V35WGlGDX4gvq5cyDCkeEVTpm6MApSz1DNVkCKClQh1LQfX3ow==
X-Google-Smtp-Source: APiQypKuElS93Cw18vKbKHafripjcU8dcHKcXginuJugmPe2M3805nV58WF14DbFfKNHO1IpEhf/cnVzp6E4EpTtjg4=
X-Received: by 2002:a5d:6412:: with SMTP id z18mr3198966wru.322.1587119915507; 
 Fri, 17 Apr 2020 03:38:35 -0700 (PDT)
MIME-Version: 1.0
References: <CABcq3pESeM2aF=HP-j4-iu2fwaxF7+mr65zTgFaBK8prmu+srw@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D940449863D544@ORSMSX112.amr.corp.intel.com>
 <CAKgT0Uc2w6gKGsUMrzDoTtM237DjVnQrUGhi+jARMKBcDBJu+g@mail.gmail.com>
In-Reply-To: <CAKgT0Uc2w6gKGsUMrzDoTtM237DjVnQrUGhi+jARMKBcDBJu+g@mail.gmail.com>
From: Andrew Melnichenko <andrew@daynix.com>
Date: Fri, 17 Apr 2020 14:05:46 +0300
Message-ID: <CABcq3pHBpCvNgZ3gw66-Lp+tKMPrKq8LN9M8r09_dFGOHymA5g@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
X-Mailman-Approved-At: Fri, 17 Apr 2020 17:43:55 +0000
Subject: Re: [Intel-wired-lan] Pls provide some advice - e1000e Linux link
 down
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============1764345150582064129=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1764345150582064129==
Content-Type: multipart/alternative; boundary="000000000000c7cfcf05a37a2618"

--000000000000c7cfcf05a37a2618
Content-Type: text/plain; charset="UTF-8"

>
> Definitely - LSC detected by watchdog.Should I look more the driver?
>
 Does this watchdog work during link up to detect link down?

Please, try work with latest stable version from kernel.org. (any
> restrictions?)

I've checked the issue on 4.18 and 5.5.6.

What do you mean that QEMU cannot raise LSC interrupts?
>
Interrupt pending hasn't been cleared, so it can't be raised again.

If you could include the code form your "fix"
>
Ok.


On Fri, Apr 17, 2020 at 12:21 AM Alexander Duyck <alexander.duyck@gmail.com>
wrote:

> On Thu, Apr 16, 2020 at 9:16 AM Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com> wrote:
> >
> > > From: Andrew Melnichenko <andrew@daynix.com>
> > > Sent: Saturday, April 11, 2020 12:56
> > > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> > > Subject: Pls provide some advice - e1000e Linux link down
> > >
> > > Yo,
> > > I'm a humble linux developer, currently I'm researching the issue with
> e1000e driver that can't handle "link down" on Linux guest(
> https://bugzilla.redhat.com/show_bug.cgi?id=1707441).
> > > For now I've found that qemu can't raise LSC interrupts. But, on
> Windows guests the issue doesn't reproduce.
>
> What do you mean that QEMU cannot raise LSC interrupts? Looking over
> the latest QEMU code it looks like it is attempting to do just that in
> e1000e_core_set_link_status(
> https://lxr.missinglinkelectronics.com/qemu+v4.0.0/hw/net/e1000e_core.c#L1800
> ).
>
> > > I've researched spec and the driver and for now, my main suspicion is
> still the issue in qemu and I have few hacks for "fixing".
> > > But because on Windows guests that issue wasn't reproduced and I don't
> have a "real" device - I have a question:
> > > Does "real" e1000e with Linux driver detect cable removing? Should I
> look more the driver?
> > > Currently I have one hack for the driver that would "fix" the
> issue(small differences in interrupt clearing).
> >
> > Adding the e1000e developers and the Intel Wired LAN mailing list...
>
> So the fact that you need to hack on the interrupt clearing tells me
> that odds are you probably don't have a good emulation of the
> interrupt register behavior. We have had to make a number of changes
> to that code to work around the quirks in the hardware. I wouldn't
> find it too surprising if the emulation behavior didn't match up just
> because there have been a number of errata that have had to be work
> around.
>
> If you could include the code form your "fix" that might be useful as
> that would tell us what behavior it is you are running into that needs
> to be sorted out between QEMU and the hardware.
>
> Thanks.
>
> - Alex
>

--000000000000c7cfcf05a37a2618
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Def=
initely - LSC detected by watchdog.Should I look more the driver?</div></bl=
ockquote><div>=C2=A0Does this watchdog work during link up to detect link d=
own?</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Please, try work with latest stable version from <a href=3D"http://kernel.o=
rg" rel=3D"noreferrer" target=3D"_blank">kernel.org</a>. (any <br>
restrictions?)</blockquote><div>I&#39;ve checked the issue on 4.18 and 5.5.=
6.</div><div><br> </div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div>What do you mean that QEMU cannot raise LSC interrupts?</div></blockquo=
te><div>Interrupt pending hasn&#39;t been <span class=3D"gmail-tlid-transla=
tion gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">clear=
ed</span></span>, so it can&#39;t be raised again.</div><div><br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div>If you could include the=
 code form your &quot;fix&quot; </div></blockquote><div>Ok. <br></div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, Apr 17, 2020 at 12:21 AM Alexander Duyck &lt;<a href=3D"m=
ailto:alexander.duyck@gmail.com">alexander.duyck@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Thu, Apr 16, 2=
020 at 9:16 AM Kirsher, Jeffrey T<br>
&lt;<a href=3D"mailto:jeffrey.t.kirsher@intel.com" target=3D"_blank">jeffre=
y.t.kirsher@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; From: Andrew Melnichenko &lt;<a href=3D"mailto:andrew@daynix.com"=
 target=3D"_blank">andrew@daynix.com</a>&gt;<br>
&gt; &gt; Sent: Saturday, April 11, 2020 12:56<br>
&gt; &gt; To: Kirsher, Jeffrey T &lt;<a href=3D"mailto:jeffrey.t.kirsher@in=
tel.com" target=3D"_blank">jeffrey.t.kirsher@intel.com</a>&gt;<br>
&gt; &gt; Subject: Pls provide some advice - e1000e Linux link down<br>
&gt; &gt;<br>
&gt; &gt; Yo,<br>
&gt; &gt; I&#39;m a humble linux developer, currently I&#39;m researching t=
he issue with e1000e driver that can&#39;t handle &quot;link down&quot; on =
Linux guest(<a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D170744=
1" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.redhat.com/show_bu=
g.cgi?id=3D1707441</a>).<br>
&gt; &gt; For now I&#39;ve found that qemu can&#39;t raise LSC interrupts. =
But, on Windows guests the issue doesn&#39;t reproduce.<br>
<br>
What do you mean that QEMU cannot raise LSC interrupts? Looking over<br>
the latest QEMU code it looks like it is attempting to do just that in<br>
e1000e_core_set_link_status(<a href=3D"https://lxr.missinglinkelectronics.c=
om/qemu+v4.0.0/hw/net/e1000e_core.c#L1800" rel=3D"noreferrer" target=3D"_bl=
ank">https://lxr.missinglinkelectronics.com/qemu+v4.0.0/hw/net/e1000e_core.=
c#L1800</a>).<br>
<br>
&gt; &gt; I&#39;ve researched spec and the driver and for now, my main susp=
icion is still the issue in qemu and I have few hacks for &quot;fixing&quot=
;.<br>
&gt; &gt; But because on Windows guests that issue wasn&#39;t reproduced an=
d I don&#39;t have a &quot;real&quot; device - I have a question:<br>
&gt; &gt; Does &quot;real&quot; e1000e with Linux driver detect cable remov=
ing? Should I look more the driver?<br>
&gt; &gt; Currently I have one hack for the driver that would &quot;fix&quo=
t; the issue(small differences in interrupt clearing).<br>
&gt;<br>
&gt; Adding the e1000e developers and the Intel Wired LAN mailing list...<b=
r>
<br>
So the fact that you need to hack on the interrupt clearing tells me<br>
that odds are you probably don&#39;t have a good emulation of the<br>
interrupt register behavior. We have had to make a number of changes<br>
to that code to work around the quirks in the hardware. I wouldn&#39;t<br>
find it too surprising if the emulation behavior didn&#39;t match up just<b=
r>
because there have been a number of errata that have had to be work<br>
around.<br>
<br>
If you could include the code form your &quot;fix&quot; that might be usefu=
l as<br>
that would tell us what behavior it is you are running into that needs<br>
to be sorted out between QEMU and the hardware.<br>
<br>
Thanks.<br>
<br>
- Alex<br>
</blockquote></div>

--000000000000c7cfcf05a37a2618--

--===============1764345150582064129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1764345150582064129==--
