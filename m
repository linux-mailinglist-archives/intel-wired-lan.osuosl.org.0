Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC64205C13
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 21:47:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8571887848;
	Tue, 23 Jun 2020 19:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9EjJOEvDDlV; Tue, 23 Jun 2020 19:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8E8B87856;
	Tue, 23 Jun 2020 19:46:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42C881BF870
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 03:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3D4D82D403
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 03:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TBLhQ4HIde-0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 03:45:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by silver.osuosl.org (Postfix) with ESMTPS id EB28A2D3C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 03:45:04 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id p7so1736177qvl.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bMpeyPisU7Aatfju2pH6ZtaRJ0KIL3d4KfWvnYpGtrw=;
 b=lB2QxivSGYfFmp59zEi+s2ITjHTWRYRL0SSsK+NGMYbGSp4t2P5+7eH87MyD1eVs8G
 LpG71Kivk9qEYQptCVFHEsD+s0EsjrqWhHIpRkfzuNOrRoL2gm0B4+InQNh9ptH/XF9L
 5QBw7GmaPVHITQPp1II75SVddjUiy5ngaICeDkNqrBcPaTTrdY57wBWSOIphSsc/GJX7
 mzNGXMpEdrYiWj+9uz8pExQ9BZB/xX4u8G/BNRLZrYO1AXCWHIuUGxEQ0m8L1Tn2qwa8
 ANscToqzmMozOjlkH+AT0+cs5Q7TddQxwfviPd1vwhkSsosUyj3t9SvpylPIZdEQZ6Un
 3zCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bMpeyPisU7Aatfju2pH6ZtaRJ0KIL3d4KfWvnYpGtrw=;
 b=dDWp7EYfRznjzkqZF7NTiHbtKWkDl9SqHgH+95rjZeNrhbXTczO+wKyGoOXvgiozID
 EmoMBrFFlSMVnvZNd5tFGiDi2g/dCjvIheUUqF1C/KGjdLVcHffXvfB5Sh84OZTpUwiP
 uMVlTRUlJOy4wnsOOm69gOzG2oHludRxwRLlcCLH0aFhibn9SYgk3jh0uyHq6qWqhizx
 NIY+DFohpXUln2yckrPsusIsx+qX4ggsxdAIs04LaL0SXeDYBR89vkpsRXkVvty3PhE+
 GlL+mrBi7q0RrS1x5ZRXKfkTmblAz1mkGg6rNFP09DlhrXXeY/eOc+ejpLFF2FmAyn1/
 qS4g==
X-Gm-Message-State: AOAM532uirZbenjuWB7oYrK7FDCCWnWKh7rGFQAbH6NFIE0GBm63rM51
 NVEIiUTBS9pB/J1pE1q97Jk7dWgyR3q/2lR0KC4=
X-Google-Smtp-Source: ABdhPJxivx8aegJ4d/i9wVebGIba5hLtB5kramjn771mq6MoeZunu6axyPoM4rBN7s1eBZnAxquATtSGWCVkd40mgKI=
X-Received: by 2002:a0c:f788:: with SMTP id s8mr6168376qvn.169.1592883903988; 
 Mon, 22 Jun 2020 20:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200622090824.41cff8a3@hermes.lan>
 <CAJ+HfNhhpZoeoZC5gS93Lbc5GvDUO9m0RrKNFU=kU0v+AXe=ig@mail.gmail.com>
 <CAJ+HfNgG4dBTf7Ei2CmuedQLnv-nOqpf4Nuep+FB9Oxob+zhdA@mail.gmail.com>
In-Reply-To: <CAJ+HfNgG4dBTf7Ei2CmuedQLnv-nOqpf4Nuep+FB9Oxob+zhdA@mail.gmail.com>
From: Yahui Chen <goodluckwillcomesoon@gmail.com>
Date: Tue, 23 Jun 2020 11:44:52 +0800
Message-ID: <CAPydje_AdWjOoS4AJ5BMyFYLEsNciyNv_8YwkEMbO2B+Co0DfA@mail.gmail.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
X-Mailman-Approved-At: Tue, 23 Jun 2020 19:46:56 +0000
Subject: Re: [Intel-wired-lan] Fw: [Bug 208275] New: kernel hang
 occasionally while running the sample of xdpsock
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Alexei Starovoitov <ast@kernel.org>,
 Stephen Hemminger <stephen@networkplumber.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: multipart/mixed; boundary="===============2432274325844010102=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2432274325844010102==
Content-Type: multipart/alternative; boundary="00000000000044086f05a8b82f8c"

--00000000000044086f05a8b82f8c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Bjorn, Thank your response.
Could you describe it more clearly? I can not get it exactly.
Thx.

Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com> =E4=BA=8E2020=E5=B9=B46=E6=9C=
=8823=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8A=E5=8D=881:50=E5=86=99=E9=81=93=
=EF=BC=9A

> On Mon, 22 Jun 2020 at 19:46, Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.co=
m> wrote:
> >
> > On Mon, 22 Jun 2020 at 18:08, Stephen Hemminger
> > <stephen@networkplumber.org> wrote:
> > >
> > >
> > >
> > > Begin forwarded message:
> > >
> > > Date: Mon, 22 Jun 2020 10:13:52 +0000
> > > From: bugzilla-daemon@bugzilla.kernel.org
> > > To: stephen@networkplumber.org
> > > Subject: [Bug 208275] New: kernel hang occasionally while running the
> sample of xdpsock
> > >
> >
> > Thanks for forwarding, Stephen.
> >
> > I'll have a look!
> >
>
> Intel ixgbe splat. Adding intel-wired-lan to To:.
>

--00000000000044086f05a8b82f8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, Bjorn, Thank your response.</div><div>Could you d=
escribe it more clearly? I can not get it exactly.</div><div>Thx.</div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Bj=C3=B6rn=
 T=C3=B6pel &lt;<a href=3D"mailto:bjorn.topel@gmail.com">bjorn.topel@gmail.=
com</a>&gt; =E4=BA=8E2020=E5=B9=B46=E6=9C=8823=E6=97=A5=E5=91=A8=E4=BA=8C =
=E4=B8=8A=E5=8D=881:50=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Mon, 22 Jun 2020 at 19:46, Bj=C3=B6rn =
T=C3=B6pel &lt;<a href=3D"mailto:bjorn.topel@gmail.com" target=3D"_blank">b=
jorn.topel@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Mon, 22 Jun 2020 at 18:08, Stephen Hemminger<br>
&gt; &lt;<a href=3D"mailto:stephen@networkplumber.org" target=3D"_blank">st=
ephen@networkplumber.org</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Begin forwarded message:<br>
&gt; &gt;<br>
&gt; &gt; Date: Mon, 22 Jun 2020 10:13:52 +0000<br>
&gt; &gt; From: <a href=3D"mailto:bugzilla-daemon@bugzilla.kernel.org" targ=
et=3D"_blank">bugzilla-daemon@bugzilla.kernel.org</a><br>
&gt; &gt; To: <a href=3D"mailto:stephen@networkplumber.org" target=3D"_blan=
k">stephen@networkplumber.org</a><br>
&gt; &gt; Subject: [Bug 208275] New: kernel hang occasionally while running=
 the sample of xdpsock<br>
&gt; &gt;<br>
&gt;<br>
&gt; Thanks for forwarding, Stephen.<br>
&gt;<br>
&gt; I&#39;ll have a look!<br>
&gt;<br>
<br>
Intel ixgbe splat. Adding intel-wired-lan to To:.<br>
</blockquote></div></div>

--00000000000044086f05a8b82f8c--

--===============2432274325844010102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2432274325844010102==--
