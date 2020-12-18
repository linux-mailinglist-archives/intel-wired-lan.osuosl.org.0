Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8B82DE7F9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 18:21:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70D58879B0;
	Fri, 18 Dec 2020 17:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lsOsZc08RhHu; Fri, 18 Dec 2020 17:21:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E843D879C0;
	Fri, 18 Dec 2020 17:21:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A55371BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A100387B22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uYQiJYa7-kUf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 17:20:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
 [209.85.166.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB54987B20
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 17:20:35 +0000 (UTC)
Received: by mail-il1-f171.google.com with SMTP id p5so2804850iln.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 09:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yjJCx9dKmzxz+Uc5U4cZXkMNsMTfptEVApuiZoeRKKA=;
 b=imyfSiXRp6SCqpHfpI3t25JadKnXz6yl4DdpMCn9p5Y9nzyue7cn6leHTD5X1Uij/T
 TiHrq8zxZ8EQrAcoiyqLdMk4M7q530qddl2Fiqjb4DVKaaH6Yq80pAhcL9id/asDy8us
 tIirtJOb8yUEMxKMnvtRfaKXHr8HWhZyLnPpAbJ2IavhUdI3JScQYafj3Uzg+5tWf788
 yJ5pc23465aQ930ODYOftOcBg6J9rlChOVVafPfz92sSztnmYhIlXwdHCzo7Cat8AIDo
 pMc++ECRYpQhCCrfELLoecHjjYEL6eozYDGSRKxa9KymNxzU4gBFphggvEEM52Y0J068
 qXxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yjJCx9dKmzxz+Uc5U4cZXkMNsMTfptEVApuiZoeRKKA=;
 b=cjYpwSEmO8B+K13/k8TRnC/JI0KIZR0MmjWs/GTUJNdAx9Yjtpky2i5czX0IEAd2sW
 vTt41/9sseTmwZaGLUXrDNJjfIVERgOUD9cMfmd+gHcLK6/YYhOe2oiKh5Plza3+Tb7Y
 1rBtHy3PUpxcnWpxAhBrUpjHS7ZDs05ZUyjkPOnA3JXaEp9V5MZf4On4n1X3v8ygLe1z
 CBR2DYKi57yoeV5nhd0FDDJ4cMMsnNmmQmBkBZCpTumWWZkwvRjttLA0MoCza2sBkNYo
 iKLdwkReKWK7C/lW8AfeuVTFkVOFcjrQd2RQ1Iry/e4H1Pjxex0f+7ueME52/wMhtGgm
 hG4w==
X-Gm-Message-State: AOAM533QpyLu4BT0eGRcO8bWQLJLwNTrSCnjiFbEFSyVXl+MZ06E8WKl
 5yUgsHjeu3rcBLiR7GO17rMZvts0cMqwkx5Rg8Y=
X-Google-Smtp-Source: ABdhPJwTwxZzNP1/ACMv+tAUnXPeDai7cBTzLyWrH9diAvEaDSqtFF462KqTavaTDrxy8zeoPphTZSKjGD80MO98e9Q=
X-Received: by 2002:a92:512:: with SMTP id q18mr4960005ile.147.1608312035293; 
 Fri, 18 Dec 2020 09:20:35 -0800 (PST)
MIME-Version: 1.0
References: <CAKXUXMx7+DGUc4LLWa+BXAkgrp9bQxCQoo_c98RNxKtw69BTSg@mail.gmail.com>
 <CAPcyv4hqdiLci3xBa=UafJVec_YKZL2aw68DKgUf1RSz8BbFaw@mail.gmail.com>
 <CAKXUXMwEp=jfprB9T2vr+GeqBn8KkUFm3iOG2L9MFfUuN-5Cqw@mail.gmail.com>
 <CAPcyv4gXZ1bV-ZKfPwuq+atHP1JKnuCCWmYQYF+3eBKfeN3uCA@mail.gmail.com>
In-Reply-To: <CAPcyv4gXZ1bV-ZKfPwuq+atHP1JKnuCCWmYQYF+3eBKfeN3uCA@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 18 Dec 2020 18:20:24 +0100
Message-ID: <CAKXUXMwHQ-gpQea02_browQd7qjUXnbrQCXzJw2UWkGNaOmn+w@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
X-Mailman-Approved-At: Fri, 18 Dec 2020 17:21:37 +0000
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
Content-Type: multipart/mixed; boundary="===============6393691695757572062=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6393691695757572062==
Content-Type: multipart/alternative; boundary="0000000000008d3de505b6c053a5"

--0000000000008d3de505b6c053a5
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 18, 2020 at 6:12 PM Dan Williams <dan.j.williams@intel.com>
wrote:

> On Fri, Dec 18, 2020 at 9:03 AM Lukas Bulwahn <lukas.bulwahn@gmail.com>
> wrote:
> >
> >
> >
> > On Fri, Dec 18, 2020 at 5:53 PM Dan Williams <dan.j.williams@intel.com>
> wrote:
> >>
> >> To my knowledge DCA is effectively abandoned ever since Chris Leech
> >> and Shannon Nelson moved on to new roles outside Intel.
> >>
> >
> > Thanks for the quick response; and too bad to hear that it is abandoned.
> >
> > But it is good as a potential user relying on that to know that it is
> not actively maintained. Maybe that is a motivation to get engaged, build
> some basic tests and grow towards becoming a maintainer for that small
> piece of code I (and my employer and its customers) could rely on in the
> future.
> >
> > If there is no other news, I will send a MAINTAINERS section marking it
> orphan for now, so everyone knows the current state.
>
> I believe the replacement for DCA is DDIO.
>

Thanks, I check that option as well.

Lukas

--0000000000008d3de505b6c053a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 18, 2020 at 6:12 PM Dan W=
illiams &lt;<a href=3D"mailto:dan.j.williams@intel.com">dan.j.williams@inte=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">On Fri, Dec 18, 2020 at 9:03 AM Lukas Bulwahn &lt;<a href=3D"mailto:lu=
kas.bulwahn@gmail.com" target=3D"_blank">lukas.bulwahn@gmail.com</a>&gt; wr=
ote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Dec 18, 2020 at 5:53 PM Dan Williams &lt;<a href=3D"mailto:dan=
.j.williams@intel.com" target=3D"_blank">dan.j.williams@intel.com</a>&gt; w=
rote:<br>
&gt;&gt;<br>
&gt;&gt; To my knowledge DCA is effectively abandoned ever since Chris Leec=
h<br>
&gt;&gt; and Shannon Nelson moved on to new roles outside Intel.<br>
&gt;&gt;<br>
&gt;<br>
&gt; Thanks for the quick response; and too bad to hear that it is abandone=
d.<br>
&gt;<br>
&gt; But it is good as a potential user relying on that to know that it is =
not actively maintained. Maybe that is a motivation to get engaged, build s=
ome basic tests and grow towards becoming a maintainer for that small piece=
 of code I (and my employer and its customers) could rely on in the future.=
<br>
&gt;<br>
&gt; If there is no other news, I will send a MAINTAINERS section marking i=
t orphan for now, so everyone knows the current state.<br>
<br>
I believe the replacement for DCA is DDIO.<br></blockquote><div><br></div><=
div>Thanks, I check that option as well.</div><div><br></div><div>Lukas=C2=
=A0</div></div></div>

--0000000000008d3de505b6c053a5--

--===============6393691695757572062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6393691695757572062==--
