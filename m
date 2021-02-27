Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE95D326F24
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Feb 2021 23:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D062840BF;
	Sat, 27 Feb 2021 22:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ck_CYWeS1E9k; Sat, 27 Feb 2021 22:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25AC58405E;
	Sat, 27 Feb 2021 22:26:57 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E0AEF1BF41C
 for <intel-wired-lan@osuosl.org>; Sat, 27 Feb 2021 22:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE0614315B
 for <intel-wired-lan@osuosl.org>; Sat, 27 Feb 2021 22:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=unrealservers.net
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p75ZXyKpBHt9 for <intel-wired-lan@osuosl.org>;
 Sat, 27 Feb 2021 22:26:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9E4C43094
 for <intel-wired-lan@osuosl.org>; Sat, 27 Feb 2021 22:26:51 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id d20so13934040oiw.10
 for <intel-wired-lan@osuosl.org>; Sat, 27 Feb 2021 14:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=unrealservers.net; s=gsuite;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j2MfYk1cAUOsAg4lukuSJEkHANuigENoLf0qfDx0ShY=;
 b=TBqgFxQSmf6BwIpCDWB9dnhso1XH4jC3ve6+TyoI0Y7Mn2X/WFOxoPnQkHOYzcefEh
 1aA14lse4O0eDog4xnR8mz8gVgh3YV8BzFnVQmc+AQUmayrc1YSaoHmFgom65zOoU/am
 JvknP7h5wbG2fZ/8Z7vwFkdL2zCTOQ50ayL8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j2MfYk1cAUOsAg4lukuSJEkHANuigENoLf0qfDx0ShY=;
 b=DGLVtqXUU6a29BUuQqMaXC2k8PQTnUI4Vver+IXnKR2RQEAh0Jo6943tniz1o5R1HS
 rvqngFfjVHux7TRKPyR6AdlD2HyVxjQMGDnMkL7rAYOFaIzqbx8acqXiOrxaw/znfBmO
 Seaqwg0nPfIfAfjk9IEMfHyp4up5LT8bJl4r4ZC8L6LUd+ppy/Vy1kiBc70jAO8aIiu7
 lFClILsrk2LMrHah7fDkmGZxP33sXvgyGrlD0sOjUE6sYkXYvcHKdjeeazJff0qQQa5R
 u7g8O36+HBcx+1xL6of21iNUyEe1S81HSCCjDgXrZIiv88ERA7SgmjzNhyB5OtCePOXP
 MRxg==
X-Gm-Message-State: AOAM5336jRPyhxEO8ysuw8+/OUJOVU3jODRbx9iemZA1e4/2SmQELeHi
 Phc2Xlm6twUQp1oXbzHifw6/x7jDcQwaCfGHVBXCLMxbw+Mmiw==
X-Google-Smtp-Source: ABdhPJxCCPvZUx4xWxmhb5ojY+0ApBOnPFQkgAlw7dWdrdmP9Q4FVxfM0c6g5ATaW+BvXHTjjlB5S2KJhu9lymOKmS8=
X-Received: by 2002:a17:90b:4a89:: with SMTP id
 lp9mr9843002pjb.170.1614464340447; 
 Sat, 27 Feb 2021 14:19:00 -0800 (PST)
MIME-Version: 1.0
References: <CABJL2KoxdiBV6BBOJKfU4pAxANy3F-65c3+mtM2BhS5Lu89vfw@mail.gmail.com>
 <20210226094853.0000470c@intel.com>
In-Reply-To: <20210226094853.0000470c@intel.com>
From: Billy Croan <BCroan@unrealservers.net>
Date: Sat, 27 Feb 2021 16:18:49 -0600
Message-ID: <CABJL2KqRkGffkF_Q7WKQesOO2G6E3B4-hc_RsiK+jXnbhfq4Nw@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] How to "arm" WoL with OS running?
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
Cc: intel-wired-lan@osuosl.org
Content-Type: multipart/mixed; boundary="===============2809808602642917201=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2809808602642917201==
Content-Type: multipart/alternative; boundary="00000000000083e19b05bc58c5f3"

--00000000000083e19b05bc58c5f3
Content-Type: text/plain; charset="UTF-8"

Thank you Jesse. I agree with the security considerations 100%.
Unfortunately this hardware does not support ipmi and we have an awful lot
of it that would can go to waste if we discarded it for that reason.
Logging into reboot of course with your preferable but our use case for
reboot on lan is if the system is locked up or unresponsive or SSH is
broken in other words similar use case for ipmi.

I'll check out the e1000e developer manuals on Intel.com.

On Fri, Feb 26, 2021, 11:48 Jesse Brandeburg <jesse.brandeburg@intel.com>
wrote:

> Billy Croan wrote:
>
> > I was reading https://en.wikipedia.org/wiki/Wake-on-LAN and came across
> > this phrase: "not armed for WOL"
> >
> > I have some OpenCompute hardware which uses the WoL signal from the intel
> > network chip to cause a reset/reboot.
> >
> > this works when the system is in bios or in memtest86, but not when an OS
> > is loaded.  I suspect that the e1000e driver "disarms" WoL on load, and
> 're
> > arms' it when unloaded or when the OS shuts down or changes to a lower
> ACPI
> > state.
>
> That's right, that's the supported use case for WoL.
>
> > Is there a technical reason any WoL can not be armed at the same time as
> OS
> > is using the nic?
>
> The short answer is we don't support it.
>
> There are a couple of reasons that you might not want to do this.
> 1) anyone can reboot your server remotely without authentication
> 2) IPMI can/should probably be used to control/manage the server
> instead, if available.  If the server is already available remotely
> then you can just reboot it after logging in. :-)
>
> > I get that it serves no useful purpose of the os is already running, but
> > does it pose a problem?
>
> Functionally the hardware can assert the Wake signal (PME+) any time,
> and it won't cause a problem (on a normal system). However, we don't
> support this. The developer manuals for the e1000e hardware should
> mostly be available from intel.com if you want to learn more about the
> hardware, but I'm sorry I can't help you much further since this is out
> of scope for our software support.
>
> Good luck and thanks for the question,
> Jesse
>

--00000000000083e19b05bc58c5f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thank you Jesse. I agree with the security considera=
tions 100%. Unfortunately this hardware does not support ipmi and we have a=
n awful lot of it that would can go to waste if we discarded it for that re=
ason. Logging into reboot of course with your preferable but our use case f=
or reboot on lan is if the system is locked up or unresponsive or SSH is br=
oken in other words similar use case for ipmi.=C2=A0</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">I&#39;ll check out the e1000e developer manual=
s on Intel.com.<br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, Feb 26, 2021, 11:48 Jesse Brandeburg &lt;=
<a href=3D"mailto:jesse.brandeburg@intel.com">jesse.brandeburg@intel.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Billy Croan wrote:<br>
<br>
&gt; I was reading <a href=3D"https://en.wikipedia.org/wiki/Wake-on-LAN" re=
l=3D"noreferrer noreferrer" target=3D"_blank">https://en.wikipedia.org/wiki=
/Wake-on-LAN</a> and came across<br>
&gt; this phrase: &quot;not armed for WOL&quot;<br>
&gt; <br>
&gt; I have some OpenCompute hardware which uses the WoL signal from the in=
tel<br>
&gt; network chip to cause a reset/reboot.<br>
&gt; <br>
&gt; this works when the system is in bios or in memtest86, but not when an=
 OS<br>
&gt; is loaded.=C2=A0 I suspect that the e1000e driver &quot;disarms&quot; =
WoL on load, and &#39;re<br>
&gt; arms&#39; it when unloaded or when the OS shuts down or changes to a l=
ower ACPI<br>
&gt; state.<br>
<br>
That&#39;s right, that&#39;s the supported use case for WoL.<br>
<br>
&gt; Is there a technical reason any WoL can not be armed at the same time =
as OS<br>
&gt; is using the nic?<br>
<br>
The short answer is we don&#39;t support it.<br>
<br>
There are a couple of reasons that you might not want to do this. <br>
1) anyone can reboot your server remotely without authentication<br>
2) IPMI can/should probably be used to control/manage the server<br>
instead, if available.=C2=A0 If the server is already available remotely<br=
>
then you can just reboot it after logging in. :-)<br>
<br>
&gt; I get that it serves no useful purpose of the os is already running, b=
ut<br>
&gt; does it pose a problem?<br>
<br>
Functionally the hardware can assert the Wake signal (PME+) any time,<br>
and it won&#39;t cause a problem (on a normal system). However, we don&#39;=
t<br>
support this. The developer manuals for the e1000e hardware should<br>
mostly be available from <a href=3D"http://intel.com" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">intel.com</a> if you want to learn more about th=
e<br>
hardware, but I&#39;m sorry I can&#39;t help you much further since this is=
 out<br>
of scope for our software support.<br>
<br>
Good luck and thanks for the question,<br>
Jesse<br>
</blockquote></div></div></div>

--00000000000083e19b05bc58c5f3--

--===============2809808602642917201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2809808602642917201==--
