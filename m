Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16833CF23CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 08:39:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0EE680F14;
	Mon,  5 Jan 2026 07:39:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jDmOm3zZjn7V; Mon,  5 Jan 2026 07:39:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C90E780F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767598784;
	bh=qSI1kNElUI68BFhExEipz/yzXNCrSnpP9Js0CxfQayo=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=pKM6VqjercRba+HqAYDiO4f16+vNTjqOfnx/lu6O5WA090WgaQ3XKSoBwW/c4elH5
	 4kODkUv5vKah7q5ej5Z7dZ7Td2Jdz+tlg3Oj9RxcgQPIYVIAun0zh4kBoHHyDREKsu
	 0gaS/90Ap/zeSURAlWwqDFSCf9/jC2wWfwoalkGu0Sqswav+Z0kNwPnq7xWdkrJiaI
	 JyhM6EiCvjGxDiubDRH5tyw6YKJSdthoP5Svx0ibOM+cplZ24jQzDE39qXScIwsZzO
	 QoZQIYnztHyeihkRmawPmYigi7uti6UNz4nVUVeG2MICbIh5h8azUSV6P0eodEGrQl
	 NqNF08WRjwFrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C90E780F15;
	Mon,  5 Jan 2026 07:39:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EB5BEE7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2B86580F21
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jrymGMeRSp85 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 07:39:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12c; helo=mail-yx1-xb12c.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 36F5080F14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36F5080F14
Received: from mail-yx1-xb12c.google.com (mail-yx1-xb12c.google.com
 [IPv6:2607:f8b0:4864:20::b12c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36F5080F14
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:39:33 +0000 (UTC)
Received: by mail-yx1-xb12c.google.com with SMTP id
 956f58d0204a3-64476c85854so12092600d50.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 04 Jan 2026 23:39:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767598772; x=1768203572;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qSI1kNElUI68BFhExEipz/yzXNCrSnpP9Js0CxfQayo=;
 b=jYqcpNC217pDuT3paTz7TnbZtMGKR1p114kO00BtJ68tW+GN15JSC3XesnW1Z+Gkeu
 vf4D99yJJ4bdFvahMrkpqP7LpoFJjniyRz5UAL4nHcfBJniCi80XGWQvpUiYUBkIvZzN
 A/b8MMzNqo06py/6vFlQPiYynQmAheqMgA6vj87DGrgFuR8ZypKNarNZhL68KJ2C9iuv
 ElYuMO7NCDj61LjakkNChS7+x44vDwunO60GOZIZClFIruSKIKPeW3I6x3e4P3yC0cio
 rs6m5T9rDOJvIlYzWxP2zgOq2Zoxiy4rfXAzfJ5pPp2+hWR/fD4ZO7YwDFhJh/uRNmxy
 Sojw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUifgFpNF+Eo01SyYISkEZWNql5hUKvFWWu2ag2WW3HRa4GP/bFr4Lz6Lx5qJDzgiReeUmjfD9g+qhAl5M1OtI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx/MpYbNcMprB0vmA5V3ftL7bicKafrjaIORUm9ppZHo81eQS/c
 ZrE2zK/lGzdVBN0QgXSiMg25zRmSg0gfTT7WCyymV0b+sXiQCMxufkeW7ELp1Lnt0A2D/KnoDC2
 iZLavAt8k/y1zo9b5YQ96xCgnP04OoVFq5g/W9kYg
X-Gm-Gg: AY/fxX7yea5CUpqf8he3kDkH4EkW6wjnc6X0NukwycIcDTRaxBX/aN2ItQzdZb/kS5u
 HLRbHLVQngpGBVm5OrfjDuVTH+A8hTDpyT21BgZ61IMwDTZ0EHXxJjtvdNHB+QKw7t63pH5E1ql
 bdGkDQ8qq/ybT0cPfmJm+LJlMGkhzDNwb+V21RNBcYKO2MUaFRSA0fEWpA5VqcNLBlT8Z9EAQyh
 Yn7HEEe/XrAuM2r9O1qB58ynLn50qcHsWE0tUYt2nl5xqYIqTA3m848Ps1Y7dRRvSQT2U/d
X-Google-Smtp-Source: AGHT+IEazBOOvzBiNSqddQLOpiEW36rsKXJI1nxNHNHPqNN2nBj2zwWpG7pZiPAbKzzVCEpIxHQaCfqn6vhrKZ1y0F4=
X-Received: by 2002:a05:690c:f93:b0:78f:b820:f2f3 with SMTP id
 00721157ae682-78fb820fa35mr885753707b3.12.1767598771516; Sun, 04 Jan 2026
 23:39:31 -0800 (PST)
MIME-Version: 1.0
References: <20260105064729.800308-1-boolli@google.com>
 <IA3PR11MB898683A1383A409E8C4B02F6E586A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898683A1383A409E8C4B02F6E586A@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Sun, 4 Jan 2026 23:39:19 -0800
X-Gm-Features: AQt7F2rbMAE2dUwmRT7jDCiTSkQlMwFbcmXC_srwreJdxNziPzvQPU69SvAgyPI
Message-ID: <CAODvEq5MxAYzDiqNSnxJKNCFR9=LZYt5BD3SMXnNRXJehkYfBg@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Decotigny <decot@google.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, 
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Content-Type: multipart/alternative; boundary="000000000000e271ed06479f2800"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1767598772; x=1768203572; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=qSI1kNElUI68BFhExEipz/yzXNCrSnpP9Js0CxfQayo=;
 b=PNXPQXdBIKdGAWZUD/WeL3PBwU1EHBjMuKqaNEPEniEjAzh4672//bJvQPLozS8/j0
 kI/blM91wx0zuHWazD05J8uqWvZImQfhabiOoyBoEMEck1VsR63jWgSw08xPRhFKUGZv
 E7eueeBR07EvZLz+9aAnz0v2A1MSoV2RGeOoigm0nums2Wk0T3gVf261U/act5a/DOFN
 WYk7j9bE/tfBbyJx/0yVONea4mXkhHcCuP1CrO0TgCUKioynfB0udL75ER4cUODyHKfl
 iRrRt8lEhuTNklNO5x5dzXYBOAMyhMN9FSY3FOtxiykYIM7kKhznin3SBuHL3d9+NYEN
 tnBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=PNXPQXdB
Subject: Re: [Intel-wired-lan] [PATCH v2] idpf: increment completion queue
 next_to_clean in sw marker wait routine
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000e271ed06479f2800
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 4, 2026 at 11:19=E2=80=AFPM Loktionov, Aleksandr <
aleksandr.loktionov@intel.com> wrote:

>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Li Li via Intel-wired-lan
> > Sent: Monday, January 5, 2026 7:47 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; David S. Miller
> > <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Eric Dumazet
> > <edumazet@google.com>; intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; David
> > Decotigny <decot@google.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>; Brian Vazquez <brianvv@google.com>;
> > Tantilov, Emil S <emil.s.tantilov@intel.com>; Li Li
> > <boolli@google.com>
> > Subject: [Intel-wired-lan] [PATCH v2] idpf: increment completion queue
> > next_to_clean in sw marker wait routine
> >
> > Currently, in idpf_wait_for_sw_marker_completion(), when an
> > IDPF_TXD_COMPLT_SW_MARKER packet is found, the routine breaks out of
> > the for loop and does not increment the next_to_clean counter. This
> > causes the subsequent NAPI polls to run into the same
> > IDPF_TXD_COMPLT_SW_MARKER packet again and print out the following:
> >
> >     [   23.261341] idpf 0000:05:00.0 eth1: Unknown TX completion type:
> > 5
> >
> > Instead, we should increment next_to_clean regardless when an
> > IDPF_TXD_COMPLT_SW_MARKER packet is found.
> >
> > Tested: with the patch applied, we do not see the errors above from
> > NAPI polls anymore.
> >
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> > Changes in v2:
> >  - Initialize idpf_tx_queue *target to NULL to suppress the "'target'
> >    uninitialized when 'if' statement is true warning".
> >
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > index 69bab7187e541..452d0a9e83a4f 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -2326,7 +2326,7 @@ void idpf_wait_for_sw_marker_completion(const
> > struct idpf_tx_queue *txq)
> >
> >       do {
> >               struct idpf_splitq_4b_tx_compl_desc *tx_desc;
> > -             struct idpf_tx_queue *target;
> > +             struct idpf_tx_queue *target =3D NULL;
> Linux kernel is against premature initialization just to silence a
> compiler.
> The target variable is dereferenced at idpf_queue_clear(SW_MARKER, target=
))
> but can remain uninitialized if execution jumps to the next: label via a
> goto
> before target is assigned.
> Isn't it?
>
That is correct. When the following if statement (line 2341-2343) evaluates
to true:

  if (FIELD_GET(IDPF_TXD_COMPLQ_COMPL_TYPE_M, ctype_gen) !=3D
   IDPF_TXD_COMPLT_SW_MARKER)
    goto next;

Then the initialization at line 2346:

  target =3D complq->txq_grp->txqs[id];

would be skipped, making "target" uninitialized.

Therefore, in this patch, I need to initialize "target" to NULL.


> >               u32 ctype_gen, id;
> >
> >               tx_desc =3D flow ? &complq->comp[ntc].common :
> > @@ -2346,14 +2346,14 @@ void idpf_wait_for_sw_marker_completion(const
> > struct idpf_tx_queue *txq)
> >               target =3D complq->txq_grp->txqs[id];
> >
> >               idpf_queue_clear(SW_MARKER, target);
> > -             if (target =3D=3D txq)
> > -                     break;
> >
> >  next:
> >               if (unlikely(++ntc =3D=3D complq->desc_count)) {
> >                       ntc =3D 0;
> >                       gen_flag =3D !gen_flag;
> >               }
> > +             if (target =3D=3D txq)
> Are tou sure that incremented ntc value is ever written back to
> complq->next_to_clean?
>

Yes, the value of "ntc" is written back to "complq->next_to_clean" at the
end of the function
 (at line 2360):

  complq->next_to_clean =3D ntc;


>
> > +                     break;
> >       } while (time_before(jiffies, timeout));
> >
> >       idpf_queue_assign(GEN_CHK, complq, gen_flag);
> > --
> > 2.52.0.351.gbe84eed79e-goog
>
>

--000000000000e271ed06479f2800
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 4, =
2026 at 11:19=E2=80=AFPM Loktionov, Aleksandr &lt;<a href=3D"mailto:aleksan=
dr.loktionov@intel.com">aleksandr.loktionov@intel.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:intel-wired-lan-bounces@os=
uosl.org" target=3D"_blank">intel-wired-lan-bounces@osuosl.org</a>&gt; On B=
ehalf<br>
&gt; Of Li Li via Intel-wired-lan<br>
&gt; Sent: Monday, January 5, 2026 7:47 AM<br>
&gt; To: Nguyen, Anthony L &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com=
" target=3D"_blank">anthony.l.nguyen@intel.com</a>&gt;; Kitszel,<br>
&gt; Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com" target=
=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;; David S. Miller<br>
&gt; &lt;<a href=3D"mailto:davem@davemloft.net" target=3D"_blank">davem@dav=
emloft.net</a>&gt;; Jakub Kicinski &lt;<a href=3D"mailto:kuba@kernel.org" t=
arget=3D"_blank">kuba@kernel.org</a>&gt;; Eric Dumazet<br>
&gt; &lt;<a href=3D"mailto:edumazet@google.com" target=3D"_blank">edumazet@=
google.com</a>&gt;; <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" tar=
get=3D"_blank">intel-wired-lan@lists.osuosl.org</a><br>
&gt; Cc: <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev=
@vger.kernel.org</a>; <a href=3D"mailto:linux-kernel@vger.kernel.org" targe=
t=3D"_blank">linux-kernel@vger.kernel.org</a>; David<br>
&gt; Decotigny &lt;<a href=3D"mailto:decot@google.com" target=3D"_blank">de=
cot@google.com</a>&gt;; Singhai, Anjali<br>
&gt; &lt;<a href=3D"mailto:anjali.singhai@intel.com" target=3D"_blank">anja=
li.singhai@intel.com</a>&gt;; Samudrala, Sridhar<br>
&gt; &lt;<a href=3D"mailto:sridhar.samudrala@intel.com" target=3D"_blank">s=
ridhar.samudrala@intel.com</a>&gt;; Brian Vazquez &lt;<a href=3D"mailto:bri=
anvv@google.com" target=3D"_blank">brianvv@google.com</a>&gt;;<br>
&gt; Tantilov, Emil S &lt;<a href=3D"mailto:emil.s.tantilov@intel.com" targ=
et=3D"_blank">emil.s.tantilov@intel.com</a>&gt;; Li Li<br>
&gt; &lt;<a href=3D"mailto:boolli@google.com" target=3D"_blank">boolli@goog=
le.com</a>&gt;<br>
&gt; Subject: [Intel-wired-lan] [PATCH v2] idpf: increment completion queue=
<br>
&gt; next_to_clean in sw marker wait routine<br>
&gt; <br>
&gt; Currently, in idpf_wait_for_sw_marker_completion(), when an<br>
&gt; IDPF_TXD_COMPLT_SW_MARKER packet is found, the routine breaks out of<b=
r>
&gt; the for loop and does not increment the next_to_clean counter. This<br=
>
&gt; causes the subsequent NAPI polls to run into the same<br>
&gt; IDPF_TXD_COMPLT_SW_MARKER packet again and print out the following:<br=
>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A023.261341] idpf 0000:05:00.0 eth1: Un=
known TX completion type:<br>
&gt; 5<br>
&gt; <br>
&gt; Instead, we should increment next_to_clean regardless when an<br>
&gt; IDPF_TXD_COMPLT_SW_MARKER packet is found.<br>
&gt; <br>
&gt; Tested: with the patch applied, we do not see the errors above from<br=
>
&gt; NAPI polls anymore.<br>
&gt; <br>
&gt; Signed-off-by: Li Li &lt;<a href=3D"mailto:boolli@google.com" target=
=3D"_blank">boolli@google.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 - Initialize idpf_tx_queue *target to NULL to suppress the &quot=
;&#39;target&#39;<br>
&gt;=C2=A0 =C2=A0 uninitialized when &#39;if&#39; statement is true warning=
&quot;.<br>
&gt; <br>
&gt;=C2=A0 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; b/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; index 69bab7187e541..452d0a9e83a4f 100644<br>
&gt; --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; @@ -2326,7 +2326,7 @@ void idpf_wait_for_sw_marker_completion(const<br=
>
&gt; struct idpf_tx_queue *txq)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0do {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct idpf_spli=
tq_4b_tx_compl_desc *tx_desc;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct idpf_tx_queue =
*target;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct idpf_tx_queue =
*target =3D NULL;<br>
Linux kernel is against premature initialization just to silence a compiler=
.<br>
The target variable is dereferenced at idpf_queue_clear(SW_MARKER, target))=
<br>
but can remain uninitialized if execution jumps to the next: label via a go=
to<br>
before target is assigned.<br>
Isn&#39;t it?<br></blockquote><div>That is correct. When the following if s=
tatement (line 2341-2343) evaluates to true:</div><div><br></div><div>=C2=
=A0 if (FIELD_GET(IDPF_TXD_COMPLQ_COMPL_TYPE_M, ctype_gen) !=3D<br>		 =C2=
=A0 =C2=A0IDPF_TXD_COMPLT_SW_MARKER)<br>=C2=A0 =C2=A0 goto next;</div><div>=
<br></div><div>Then the initialization at line 2346:</div><div><br></div><d=
iv>=C2=A0 target =3D complq-&gt;txq_grp-&gt;txqs[id];</div><div><br></div><=
div>would be skipped, making &quot;target&quot; uninitialized.=C2=A0</div><=
div><br></div><div>Therefore, in this patch, I need to initialize &quot;tar=
get&quot; to NULL.</div><div><br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 ctype_gen, i=
d;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_desc =3D flow=
 ? &amp;complq-&gt;comp[ntc].common :<br>
&gt; @@ -2346,14 +2346,14 @@ void idpf_wait_for_sw_marker_completion(const<=
br>
&gt; struct idpf_tx_queue *txq)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0target =3D compl=
q-&gt;txq_grp-&gt;txqs[id];<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0idpf_queue_clear=
(SW_MARKER, target);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (target =3D=3D txq=
)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0break;<br>
&gt; <br>
&gt;=C2=A0 next:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (unlikely(++n=
tc =3D=3D complq-&gt;desc_count)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0ntc =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0gen_flag =3D !gen_flag;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (target =3D=3D txq=
)<br>
Are tou sure that incremented ntc value is ever written back to complq-&gt;=
next_to_clean?<br></blockquote><div><br></div><div>Yes, the value of &quot;=
ntc&quot; is written back to &quot;complq-&gt;next_to_clean&quot; at the en=
d of the function</div><div>=C2=A0(at line 2360):</div><div><br></div><div>=
=C2=A0 complq-&gt;next_to_clean =3D ntc;</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} while (time_before(jiffies, timeout));<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0idpf_queue_assign(GEN_CHK, complq, gen_flag)=
;<br>
&gt; --<br>
&gt; 2.52.0.351.gbe84eed79e-goog<br>
<br>
</blockquote></div></div>

--000000000000e271ed06479f2800--
