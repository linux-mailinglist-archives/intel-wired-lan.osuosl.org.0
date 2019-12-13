Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0527E11E2BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2019 12:25:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2119880F6;
	Fri, 13 Dec 2019 11:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJCy4wko962P; Fri, 13 Dec 2019 11:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B7448806D;
	Fri, 13 Dec 2019 11:25:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0C0B1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 11:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 615DD25445
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 11:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OiSeSwaAfPMi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Dec 2019 11:25:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 6972D24912
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 11:25:29 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id z17so647853uac.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 03:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3cD771nUoftydYUTIiI3WDduqLP+rMGUEmfqn7B09ms=;
 b=hNDuxW5sdEi9mJQoTWsCOlAF+PdnxB/d+jSI7LA5uKxyKd/Bl7xqX2QKE1wSFvEKP8
 QMfE7EhEVLruxp1rghMttIXID1oy+UsHO8E5bu9GModmp9g8FpDPrhpgX1l6QQxej8oy
 EZpQ3P9wv7JSXv29DoVU6VUDR31cbG1mrag1QGEBY/gOCHKnZxbmpTXCLXmom1Xi3FCy
 d7GhLBIYo8T5Wbcu+G0W84OEciTqWc0kmE/0DNgktEHXn9W/VAZ0a3jUd3z/gWq0XLE9
 Jvsmw0a6Mz+OwmeQSHqe1SrF7s89grRsnxC2GQgIDOMRixxC90zqWN1Fyph8l/3YwJHY
 SSjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3cD771nUoftydYUTIiI3WDduqLP+rMGUEmfqn7B09ms=;
 b=kFQ96giS80iq0cOLbSEdcSWLnePaFTUzj/ENFD3b90VOz6TTD76EjTALTJ+CoVnyCB
 ORZoLX3ZMEwaPhJlMl1qC7u6HWE85Uss/ks5/xNrWT6l2Np2ycLUG7HRlGve6HspTIdO
 zu/QJqrwiNTgxB5tgXsXSU7RsuUeYw12bD7Egz95UG/L0Efje9ROnpv2hBkkRwhaW9AC
 zOO5HOuVTVgEeb+56JbookQH6KBq1oy5H2ibO0vqweRi6Og5Wpuj7wRhzSHY553xEVZM
 MhZgPtBJIs1qzZI7BgsSeIkStwtGwP/QhWFMQFh0PWaVvDfjDCpHhl4BqllPpOI/Dsk6
 yhqQ==
X-Gm-Message-State: APjAAAUQQa0bvShyGPcChpE6YBlnjbhoAihOvUrEjoNPIWBF3TUyJ7Qe
 vzpXH5Rn+1nDcCYpI0hnJR5Nlki1MbEuTJGppEw=
X-Google-Smtp-Source: APXvYqwGKtBBhG0mfJ8Y8hyY5f2S36LkcfLCzTPbbyFKS5DHVZhPgLDblQspGeRfcU7kuho/0/LBjBzYnnIo/wy3cR4=
X-Received: by 2002:ab0:2150:: with SMTP id t16mr12528858ual.61.1576236328340; 
 Fri, 13 Dec 2019 03:25:28 -0800 (PST)
MIME-Version: 1.0
References: <20191212105847.16488-1-gomonovych@gmail.com>
 <CAKgT0UeTgGmQGEaJ3ePmCoEW5r5KDMmE0c0jrBGGeb-uzbq=3A@mail.gmail.com>
In-Reply-To: <CAKgT0UeTgGmQGEaJ3ePmCoEW5r5KDMmE0c0jrBGGeb-uzbq=3A@mail.gmail.com>
From: "Gomonovych, Vasyl" <gomonovych@gmail.com>
Date: Fri, 13 Dec 2019 13:25:20 +0200
Message-ID: <CAHYXAn+0VG_dnRt5W-kxKsZoy3wwt7MibinMQrSP5wUUpXQCww@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: index regs_buff array via index
 variable
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, David Miller <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8914063167074832009=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8914063167074832009==
Content-Type: multipart/alternative; boundary="0000000000006ed44a0599941ee6"

--0000000000006ed44a0599941ee6
Content-Type: text/plain; charset="UTF-8"

Ok, thanks for the clarification.

On Fri, 13 Dec 2019, 02:49 Alexander Duyck, <alexander.duyck@gmail.com>
wrote:

> On Thu, Dec 12, 2019 at 2:58 AM Vasyl Gomonovych <gomonovych@gmail.com>
> wrote:
> >
> > This patch is just a preparation for additional register dump in
> regs_buff.
> > To make new register insertion in the middle of regs_buff array easier
> > change array indexing to use local counter reg_ix.
> >
> > ---
> >
> > Basically this path is just a subject to ask
> > How to add a new register to dump from dataseet
> > Because it is logically better to add an additional register
> > in the middle of an array but that will break ABI.
> > To not have the ABI problem we should just add it at the
> > end of the array and increase the array size.
>
> So I am pretty sure the patch probably breaks ABI. The reasons for the
> fixed offsets is because this driver supports multiple parts that have
> different register sets so we cannot have them overlapping.
>
> We cannot change the register locations because it will break the
> interface with ethtool. If you need to add additional registers you
> will need to add them to the end of the array.
>

--0000000000006ed44a0599941ee6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, thanks for the clarification.=C2=A0</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 13 Dec 201=
9, 02:49 Alexander Duyck, &lt;<a href=3D"mailto:alexander.duyck@gmail.com">=
alexander.duyck@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">On Thu, Dec 12, 2019 at 2:58 AM Vasyl Gomonovych &lt;<a href=3D"mailt=
o:gomonovych@gmail.com" target=3D"_blank" rel=3D"noreferrer">gomonovych@gma=
il.com</a>&gt; wrote:<br>
&gt;<br>
&gt; This patch is just a preparation for additional register dump in regs_=
buff.<br>
&gt; To make new register insertion in the middle of regs_buff array easier=
<br>
&gt; change array indexing to use local counter reg_ix.<br>
&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; Basically this path is just a subject to ask<br>
&gt; How to add a new register to dump from dataseet<br>
&gt; Because it is logically better to add an additional register<br>
&gt; in the middle of an array but that will break ABI.<br>
&gt; To not have the ABI problem we should just add it at the<br>
&gt; end of the array and increase the array size.<br>
<br>
So I am pretty sure the patch probably breaks ABI. The reasons for the<br>
fixed offsets is because this driver supports multiple parts that have<br>
different register sets so we cannot have them overlapping.<br>
<br>
We cannot change the register locations because it will break the<br>
interface with ethtool. If you need to add additional registers you<br>
will need to add them to the end of the array.<br>
</blockquote></div>

--0000000000006ed44a0599941ee6--

--===============8914063167074832009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8914063167074832009==--
