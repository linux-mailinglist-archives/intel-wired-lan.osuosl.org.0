Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8E22DE7D2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 18:07:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F0CB620412;
	Fri, 18 Dec 2020 17:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DydhsPKxGGLT; Fri, 18 Dec 2020 17:07:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 551D620446;
	Fri, 18 Dec 2020 17:07:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C9591BF29D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D9D220412
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5DstxsK2Gb3s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 17:03:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 by silver.osuosl.org (Postfix) with ESMTPS id 9814F203CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:03:04 +0000 (UTC)
Received: by mail-io1-f48.google.com with SMTP id t8so2650829iov.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 09:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N2ZIWjNiG4N4VS4JZmZVvBnduXgVVvol7T8VvBrIGto=;
 b=qWHjJuYrdWemoJYaiXDvEdVn5yVE5MJIt0w1EH3RhxtvNck0/did72xT9i/xiwtfuh
 Yf9D6G3NBCWoqt+FCuqJkgIAUKR50feXAZbTnFOXWSPMwfJOSCHTUfgv45BZ9avGFtNX
 a+vl8yHB536th+5KFBuivQDpfjv0NFhES0qpCuJRh17zmmUY92pxEKZtbuACHxzko8NG
 21hHLSYWdvTGcHk6A2ukYxAbQOmI1+hy7FESrTp934ILGUtBAPeN4IPgZs9f0KLkEY+C
 3EO1cLwDHc5aYTj3S8cT5scQxVaGo92YFpFEXcFF96m38QBLaVzyVgRZVyWpAIMoPuEl
 xp9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N2ZIWjNiG4N4VS4JZmZVvBnduXgVVvol7T8VvBrIGto=;
 b=i7/ph0oS2qNp2fwzUdYIvJBT3u/m5PgStxnTy8Fv0cQwDXuooMA5cM7S0V7O0rbOX9
 A8dg70vINakWvfoLCFMCwEXTp2SR8ZfTawZQH7S0Put2LXRej8Wbi6oFNiUc6MJVkSkP
 Cdi324TcIvrL/b71p4yEp0i8D4lOHA6/VMytQef6cFNZP6YMiCADJJpicM5NP4vfpEIQ
 G1t2cocEMICEO/klJAI2yCpAwLh7rxcGCYAESwqONMYfescr1w1c+8DoJCkDXMDaeEpK
 6zZEAY61yuTD2eJC7geMSaU3EXltY7KcsfWflQOF79G8iWTMMabVzAG2WUE/5Rn0IMVd
 5hTQ==
X-Gm-Message-State: AOAM5306n+/+r5YIc1X6C6TUNvKB+IKyMOdoOQEw45iJ0bGKp9m6anZB
 ilRtozqmhF8zZpDKi5S0hLNL98EmKXD12AVZGv4=
X-Google-Smtp-Source: ABdhPJzfzbCUNtjKpFrdftWCxR6iqpQLOV1uhwvIaepDxLjQh1muTyJ4vanAWzomjQYTVyCqn56yciFm0FbEmWGYMKI=
X-Received: by 2002:a05:6638:bc1:: with SMTP id
 g1mr4540656jad.27.1608310983751; 
 Fri, 18 Dec 2020 09:03:03 -0800 (PST)
MIME-Version: 1.0
References: <CAKXUXMx7+DGUc4LLWa+BXAkgrp9bQxCQoo_c98RNxKtw69BTSg@mail.gmail.com>
 <CAPcyv4hqdiLci3xBa=UafJVec_YKZL2aw68DKgUf1RSz8BbFaw@mail.gmail.com>
In-Reply-To: <CAPcyv4hqdiLci3xBa=UafJVec_YKZL2aw68DKgUf1RSz8BbFaw@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 18 Dec 2020 18:02:53 +0100
Message-ID: <CAKXUXMwEp=jfprB9T2vr+GeqBn8KkUFm3iOG2L9MFfUuN-5Cqw@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
X-Mailman-Approved-At: Fri, 18 Dec 2020 17:07:17 +0000
Subject: Re: [Intel-wired-lan] Maintainer of ./drivers/dca?
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
Cc: "Paoloni, Gabriele" <gabriele.paoloni@intel.com>,
 intel-wired-lan@lists.osuosl.org, Shuah Khan <shuah@kernel.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: multipart/mixed; boundary="===============8778934403542589500=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8778934403542589500==
Content-Type: multipart/alternative; boundary="000000000000dffd1705b6c0142f"

--000000000000dffd1705b6c0142f
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 18, 2020 at 5:53 PM Dan Williams <dan.j.williams@intel.com>
wrote:

> To my knowledge DCA is effectively abandoned ever since Chris Leech
> and Shannon Nelson moved on to new roles outside Intel.
>
>
Thanks for the quick response; and too bad to hear that it is abandoned.

But it is good as a potential user relying on that to know that it is not
actively maintained. Maybe that is a motivation to get engaged, build some
basic tests and grow towards becoming a maintainer for that small piece of
code I (and my employer and its customers) could rely on in the future.

If there is no other news, I will send a MAINTAINERS section marking it
orphan for now, so everyone knows the current state.

Lukas


> On Fri, Dec 18, 2020 at 8:32 AM Lukas Bulwahn <lukas.bulwahn@gmail.com>
> wrote:
> >
> > Hi Dan, Hi Jesse, Hi Tony,
> >
> > I was reviewing the MAINTAINERS file and I was trying to understand
> > who is using and maintaining the files in ./drivers/dca, looking at
> > the recent git history and its uses, and I could not confidently say
> > if it is maintained by someone or not.
> >
> > Given Dan's activity a few years ago, Dan, you might be the maintainer
> > and it is just missing a MAINTAINERS section?
> > Or maybe, Jesse, Tony, you are maintaining ./drivers/dca/ as you use
> > that in your IGB and IXGBE network drivers?
> >
> > So, who is maintaining ./drivers/dca/ or is it actually orphaned?
> >
> > I am happy to create and submit a patch to MAINTAINERS with a new
> > entry, once we clarified the status and maintainer of those files.
> >
> > Thanks for your help.
> >
> > Best regards, Merry Christmas and Happy New Year,
> >
> > Lukas
>

--000000000000dffd1705b6c0142f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 18, 2020 at 5:53 PM Dan W=
illiams &lt;<a href=3D"mailto:dan.j.williams@intel.com">dan.j.williams@inte=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">To my knowledge DCA is effectively abandoned ever since Chris Leech<br=
>
and Shannon Nelson moved on to new roles outside Intel.<br>
<br></blockquote><div><br></div><div>Thanks for the quick response; and too=
 bad to hear that it is abandoned.</div><div><br></div><div>But it is good =
as a potential user relying on that to know that it is not actively maintai=
ned. Maybe that is a motivation to get engaged, build some basic tests and =
grow towards becoming a maintainer for that small piece of code I (and my e=
mployer and its customers) could rely=C2=A0on in the future.</div><div><br>=
</div><div>If there is no other=C2=A0news, I will send a MAINTAINERS sectio=
n marking it orphan for now, so everyone knows the=C2=A0current state.</div=
><div><br></div><div>Lukas</div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
On Fri, Dec 18, 2020 at 8:32 AM Lukas Bulwahn &lt;<a href=3D"mailto:lukas.b=
ulwahn@gmail.com" target=3D"_blank">lukas.bulwahn@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; Hi Dan, Hi Jesse, Hi Tony,<br>
&gt;<br>
&gt; I was reviewing the MAINTAINERS file and I was trying to understand<br=
>
&gt; who is using and maintaining the files in ./drivers/dca, looking at<br=
>
&gt; the recent git history and its uses, and I could not confidently say<b=
r>
&gt; if it is maintained by someone or not.<br>
&gt;<br>
&gt; Given Dan&#39;s activity a few years ago, Dan, you might be the mainta=
iner<br>
&gt; and it is just missing a MAINTAINERS section?<br>
&gt; Or maybe, Jesse, Tony, you are maintaining ./drivers/dca/ as you use<b=
r>
&gt; that in your IGB and IXGBE network drivers?<br>
&gt;<br>
&gt; So, who is maintaining ./drivers/dca/ or is it actually orphaned?<br>
&gt;<br>
&gt; I am happy to create and submit a patch to MAINTAINERS with a new<br>
&gt; entry, once we clarified the status and maintainer of those files.<br>
&gt;<br>
&gt; Thanks for your help.<br>
&gt;<br>
&gt; Best regards, Merry Christmas and Happy New Year,<br>
&gt;<br>
&gt; Lukas<br>
</blockquote></div></div>

--000000000000dffd1705b6c0142f--

--===============8778934403542589500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8778934403542589500==--
