Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7303D02AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jul 2021 22:33:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52922403DD;
	Tue, 20 Jul 2021 20:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qAhx7XN8Adpn; Tue, 20 Jul 2021 20:33:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BC07402BC;
	Tue, 20 Jul 2021 20:33:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AACBF1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 20:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95345402BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 20:33:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8tf9TIa7Tef for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jul 2021 20:33:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 311B0401E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 20:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626813222;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p0PWnTjtP8BziezdevrPEAYnmqgT2JNxiCsgQ3o84UI=;
 b=Yq17Ag9B8X/d/8FHY6y/UGSoxa4wE5p4jXJp9cmaeLO/IU7re+d9n45aagAYGBKdN2rjXP
 rxlrkC+4Du4Jtf3BCRInTI2L2K71vLNt9XhfJ/0GtYGC5a3ERC5aU6HuwuXUglUbdV+7la
 s4X1SWKteZbGkDLuanKdScBEh6UcUzs=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-587-Qh0sLf1BNmalDLvv0g2sRQ-1; Tue, 20 Jul 2021 16:33:38 -0400
X-MC-Unique: Qh0sLf1BNmalDLvv0g2sRQ-1
Received: by mail-lj1-f200.google.com with SMTP id
 16-20020a05651c0090b029019a306f998bso17239ljq.15
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 13:33:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p0PWnTjtP8BziezdevrPEAYnmqgT2JNxiCsgQ3o84UI=;
 b=N72814pV7DjXJKq7rY0BUEbiipL0fHJHl1sGTFsfGHCwne0rb25hKMCT6VM36ASso8
 AS2s+0y+wMeoHN7/jmO9Ivpt7XJs+OlmbF99YeDYeN3zhPc1y4VtktaCL94nrK+YiH5D
 drzNoE5P+HOzoknvRYsexBmUjyy/oFI3jdiVnJ6a4d4CqpqFJVUvIazoGnTI+JkIHnk7
 0+qTWnSRwfGVK3SGhOOyJFVIXUyJd4nZbjnqDJ4MzkBulKKBzVRo3N/d8xHUrOc1ruMT
 uk09fNHboP22xyUSysPjmUBjfxhoGj+HIbvPDe03nZej3t9+TgyM9Hc6TRmcLC4hlTpP
 P/Xg==
X-Gm-Message-State: AOAM532oZLsRmecQUNrm/13Q9VDkEPIZEWgQb9pGPDX2z9Pua7waMM5m
 3kAZwAqI1u6FUv5QmnSabrrIK2dT3MvZ0wU7caxP0HI/aXL6FcgUL+ajQNEMEpOkL0EeR2l32Dl
 oY1T9ncAqIqGXlIRUusfLjVRrR/nPoIimI80zrrmGwWCYug==
X-Received: by 2002:a05:651c:22d:: with SMTP id
 z13mr28783485ljn.14.1626813217490; 
 Tue, 20 Jul 2021 13:33:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx25C+stsNZidvj1q+KZ6i43cp6MSlLXJbAJV98i5bCQUISpxf+vNd+CvHouzqGSu/nRvIIe7dnZfwsMMRPywY=
X-Received: by 2002:a05:651c:22d:: with SMTP id
 z13mr28783393ljn.14.1626813217173; 
 Tue, 20 Jul 2021 13:33:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210719180746.1008665-1-nitesh@redhat.com>
 <20210719180746.1008665-2-nitesh@redhat.com>
 <20210720125702.28053dd6@cakuba>
In-Reply-To: <20210720125702.28053dd6@cakuba>
From: Nitesh Lal <nilal@redhat.com>
Date: Tue, 20 Jul 2021 16:33:26 -0400
Message-ID: <CAFki+LkhTfHGhqEZ08C915=P0XpjfewoJvSxRu+Kx80ivc=0Yw@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v4 01/14] genirq: Provide new
 interfaces for affinity hints
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
Cc: Juri Lelli <juri.lelli@redhat.com>, ajit.khaparde@broadcom.com,
 jassisinghbrar@gmail.com, peterz@infradead.org, linux-pci@vger.kernel.org,
 viresh.kumar@linaro.org, _govind@gmx.com, james.smart@broadcom.com, "Ismail,
 Mustafa" <mustafa.ismail@intel.com>, govind@gmx.com, ley.foon.tan@intel.com,
 Tushar.Khandelwal@arm.com, Ming Lei <minlei@redhat.com>,
 Alaa Hleihel <ahleihel@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Stefan Assmann <sassmann@redhat.com>, kabel@kernel.org, sfr@canb.auug.org.au,
 martin.petersen@oracle.com, linux-scsi@vger.kernel.org, borisp@nvidia.com,
 Marc Zyngier <maz@kernel.org>, sathya.prakash@broadcom.com,
 Ewan Milne <emilne@redhat.com>, kashyap.desai@broadcom.com, "Nikolova,
 Tatyana E" <tatyana.e.nikolova@intel.com>,
 Chandrakanth Patil <chandrakanth.patil@broadcom.com>,
 intel-wired-lan@lists.osuosl.org, yongqiang.niu@mediatek.com,
 Alex Belits <abelits@marvell.com>, jejb@linux.ibm.com, chunkuang.hu@kernel.org,
 Dick Kennedy <dick.kennedy@broadcom.com>, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, rostedt@goodmis.org, luobin9@huawei.com,
 rppt@linux.vnet.ibm.com, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, somnath.kotur@broadcom.com,
 shiraz.saleem@intel.com, Al Stone <ahs3@redhat.com>, pjwaskiewicz@gmail.com,
 Nitesh Narayan Lal <nitesh@redhat.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 sriharsha.basavapatna@broadcom.com, Neil Horman <nhorman@tuxdriver.com>,
 shivasharan.srikanteshwara@broadcom.com, linux-api@vger.kernel.org,
 Marcelo Tosatti <mtosatti@redhat.com>, Kamal Heib <kheib@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, stephen@networkplumber.org,
 Sumit Saxena <sumit.saxena@broadcom.com>, Petr Oros <poros@redhat.com>,
 bjorn.andersson@linaro.org, Tomas Henzl <thenzl@redhat.com>,
 netdev@vger.kernel.org, baolin.wang7@gmail.com, saeedm@nvidia.com,
 akpm@linux-foundation.org, Ken Cox <jkc@redhat.com>, jbrandeb@kernel.org,
 davem@davemloft.net, Leon Romanovsky <leonro@nvidia.com>, benve@cisco.com
Content-Type: multipart/mixed; boundary="===============0709626449821989180=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0709626449821989180==
Content-Type: multipart/alternative; boundary="000000000000ed027105c793f71c"

--000000000000ed027105c793f71c
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 20, 2021 at 7:04 AM Jakub Kicinski <kuba@kernel.org> wrote:

> On Mon, 19 Jul 2021 14:07:33 -0400, Nitesh Narayan Lal wrote:
> > From: Thomas Gleixner <tglx@linutronix.de>
> >
> > The discussion about removing the side effect of irq_set_affinity_hint()
> of
> > actually applying the cpumask (if not NULL) as affinity to the interrupt,
> > unearthed a few unpleasantries:
> >
> >   1) The modular perf drivers rely on the current behaviour for the very
> >      wrong reasons.
> >
> >   2) While none of the other drivers prevents user space from changing
> >      the affinity, a cursorily inspection shows that there are at least
> >      expectations in some drivers.
> >
> > #1 needs to be cleaned up anyway, so that's not a problem
> >
> > #2 might result in subtle regressions especially when irqbalanced (which
> >    nowadays ignores the affinity hint) is disabled.
> >
> > Provide new interfaces:
> >
> >   irq_update_affinity_hint()  - Only sets the affinity hint pointer
> >   irq_set_affinity_and_hint() - Set the pointer and apply the affinity to
> >                                 the interrupt
> >
> > Make irq_set_affinity_hint() a wrapper around irq_apply_affinity_hint()
> and
> > document it to be phased out.
> >
> > Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> > Link:
> https://lore.kernel.org/r/20210501021832.743094-1-jesse.brandeburg@intel.com
>
> include/linux/interrupt.h:343: warning: Function parameter or member 'm'
> not described in 'irq_update_affinity_hint'
> include/linux/interrupt.h:343: warning: Excess function parameter
> 'cpumask' description in 'irq_update_affinity_hint'
> include/linux/interrupt.h:358: warning: Function parameter or member 'm'
> not described in 'irq_set_affinity_and_hint'
> include/linux/interrupt.h:358: warning: Excess function parameter
> 'cpumask' description in 'irq_set_affinity_and_hint'
>
>
Thanks for reporting it.
Will make the change and send another version and will also run kernel-doc
to verify that the above-mentioned issues are gone.

--
Nitesh

--000000000000ed027105c793f71c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 20, 2021 at 7:04 AM Jakub=
 Kicinski &lt;<a href=3D"mailto:kuba@kernel.org" target=3D"_blank">kuba@ker=
nel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">On Mon, 19 Jul 2021 14:07:33 -0400, Nitesh Narayan Lal wrote:<br>
&gt; From: Thomas Gleixner &lt;<a href=3D"mailto:tglx@linutronix.de" target=
=3D"_blank">tglx@linutronix.de</a>&gt;<br>
&gt; <br>
&gt; The discussion about removing the side effect of irq_set_affinity_hint=
() of<br>
&gt; actually applying the cpumask (if not NULL) as affinity to the interru=
pt,<br>
&gt; unearthed a few unpleasantries:<br>
&gt; <br>
&gt;=C2=A0 =C2=A01) The modular perf drivers rely on the current behaviour =
for the very<br>
&gt;=C2=A0 =C2=A0 =C2=A0 wrong reasons.<br>
&gt; <br>
&gt;=C2=A0 =C2=A02) While none of the other drivers prevents user space fro=
m changing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 the affinity, a cursorily inspection shows that th=
ere are at least<br>
&gt;=C2=A0 =C2=A0 =C2=A0 expectations in some drivers.<br>
&gt; <br>
&gt; #1 needs to be cleaned up anyway, so that&#39;s not a problem<br>
&gt; <br>
&gt; #2 might result in subtle regressions especially when irqbalanced (whi=
ch<br>
&gt;=C2=A0 =C2=A0 nowadays ignores the affinity hint) is disabled.<br>
&gt; <br>
&gt; Provide new interfaces:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0irq_update_affinity_hint()=C2=A0 - Only sets the affinity =
hint pointer<br>
&gt;=C2=A0 =C2=A0irq_set_affinity_and_hint() - Set the pointer and apply th=
e affinity to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the interrupt<br>
&gt; <br>
&gt; Make irq_set_affinity_hint() a wrapper around irq_apply_affinity_hint(=
) and<br>
&gt; document it to be phased out.<br>
&gt; <br>
&gt; Signed-off-by: Thomas Gleixner &lt;<a href=3D"mailto:tglx@linutronix.d=
e" target=3D"_blank">tglx@linutronix.de</a>&gt;<br>
&gt; Signed-off-by: Nitesh Narayan Lal &lt;<a href=3D"mailto:nitesh@redhat.=
com" target=3D"_blank">nitesh@redhat.com</a>&gt;<br>
&gt; Link: <a href=3D"https://lore.kernel.org/r/20210501021832.743094-1-jes=
se.brandeburg@intel.com" rel=3D"noreferrer" target=3D"_blank">https://lore.=
kernel.org/r/20210501021832.743094-1-jesse.brandeburg@intel.com</a><br>
<br>
include/linux/interrupt.h:343: warning: Function parameter or member &#39;m=
&#39; not described in &#39;irq_update_affinity_hint&#39;<br>
include/linux/interrupt.h:343: warning: Excess function parameter &#39;cpum=
ask&#39; description in &#39;irq_update_affinity_hint&#39;<br>
include/linux/interrupt.h:358: warning: Function parameter or member &#39;m=
&#39; not described in &#39;irq_set_affinity_and_hint&#39;<br>
include/linux/interrupt.h:358: warning: Excess function parameter &#39;cpum=
ask&#39; description in &#39;irq_set_affinity_and_hint&#39;<br>
<br>
</blockquote></div><br clear=3D"all"><div>Thanks for reporting it.<br>Will =
make the change and send another version and will also run kernel-doc to ve=
rify that the above-mentioned issues are gone.<br><br></div>--<div dir=3D"l=
tr"><div dir=3D"ltr">Nitesh</div></div></div>

--000000000000ed027105c793f71c--


--===============0709626449821989180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0709626449821989180==--

