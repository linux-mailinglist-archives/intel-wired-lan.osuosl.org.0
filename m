Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9489CCF242B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 08:48:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BB78405BE;
	Mon,  5 Jan 2026 07:48:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_q3uoARVnFw; Mon,  5 Jan 2026 07:48:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC576405F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767599333;
	bh=n/bmKUL8qRgfsee/YSRKomJGCW1Xn7Kw0x3qvqzn2es=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=Yk/2N6VAiNhnAhdjxbofVjvNWUP9OZ/pUjGjHK+iVRjiqWQvwRp/dhiMCbPAFQWlm
	 Xx7HSwkYpGVhP/5aX3DDAQBlBbC/NLJJpaTlHmq//TOMXB7ApGIIRWf+g/1ZzboDt2
	 452PaSYz1ELjBC2CUpOfYqt+FaleQVHCyLzGDHHOhQYGoTl9wptKFkE/xtpmE5BQTs
	 +JzIeYZHMDKttPhilpDJQYgl+4HmnUKh8wX1YVOh4PWEh66I9sBonwJvRrhgWdGx96
	 BA6p7zH9Zyxtgw0SYEZ5M1+W3DSIUOUIwW+DlPbLD+rXb+IIazbJvYQFM1TVu4T66h
	 hXNnemZVIfALA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC576405F3;
	Mon,  5 Jan 2026 07:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4ACE3E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E393403B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d-DcEjkwXaaG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 07:48:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b131; helo=mail-yx1-xb131.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 574B24028D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 574B24028D
Received: from mail-yx1-xb131.google.com (mail-yx1-xb131.google.com
 [IPv6:2607:f8b0:4864:20::b131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 574B24028D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 07:48:50 +0000 (UTC)
Received: by mail-yx1-xb131.google.com with SMTP id
 956f58d0204a3-641e9422473so11341885d50.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 04 Jan 2026 23:48:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767599329; x=1768204129;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=n/bmKUL8qRgfsee/YSRKomJGCW1Xn7Kw0x3qvqzn2es=;
 b=NDNwEZT04Sq0mroHyIqiIpSj5+MMX+WZFT9Xpw93RLdMtSZQ4e6dv/B2ExTCoM4mOg
 mWZJSzJDQI7nMSrNMHKVzX20cJP6ZoLQJmrDfKB3WAG6U/eYIGriOkz4BxO6ZK2wDs7k
 bdOh+XwlVHS+mJi3U43OuFcBmQwPtLrxt4dlIcvCIbCmNhTf57lRFMlA1ZsZQ2JehN8N
 wtEVIcB6q6HzTQ5aAxQYQbXUU50f5LtRAr/bppr0w8B3s6VJte4GRZaG3nVOOuyWevw3
 nSHqHdSIKjHqD3669B7D3X4wUNQe0G/ylX3Z6IfA6uJyh6/+WN8/Snvg75VB1iqRkjkL
 1jOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVeBez1Xyb6g5gbgIPVuuT3Th/AT4bjoWJN3GxBIa26iDKH/vLYfuot++S17H4+Kdq9QW8B4MIGWF8/lRQ6Lvw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxpIWAUHLSgqW2nMCTz30hInj6FXE2r6MFkUef/crVn02Gt0Cmr
 exKsGn4jOQZk97YjyX0swoC4lktHUWigkEnWiwyhBTvNXtr4u7kCFUUreaNDjWgh4PzuLpROzIT
 SyESWAFRhc4dssunKOi7hD0mR1/n/m5N0Gut/gy/3
X-Gm-Gg: AY/fxX7D/J+pz5UO6hTo0rNfbzUvfcZF6/ks0OAjgywwG0TSgdiZxpRmSbCRX1wpBvP
 2schbWXc3M6Sqw2PW0it4a6ovJmnLaSekdhZQ8thvcLj5flltfuzelxANZBeYnOhvgfbWZCseQp
 3Y/jEqyRbMUtfspl//3MfjrDgY1S3sdx9RtCJ6tZKsKDBdSw7X9EXYjW1iSoTnGNG+sAVE/UZ7X
 5C7AKowRFqHx25RnXODT5xgvFkJsquzIImB6LNwP7JCV3DZPGcVQJpcVgfs236rWqFa9O+p
X-Google-Smtp-Source: AGHT+IFXwD6cyHsmNMVFhNyUFnv73nXM9DtxTI03TbOYxZoqM7wZ1DoxUWMcaV3/f+02LJFjruPLwy6ZlwuYEsuX4xs=
X-Received: by 2002:a05:690c:6903:b0:786:4459:cb84 with SMTP id
 00721157ae682-78fb3f709d9mr827618377b3.29.1767599328726; Sun, 04 Jan 2026
 23:48:48 -0800 (PST)
MIME-Version: 1.0
References: <20260105064729.800308-1-boolli@google.com>
 <IA3PR11MB898683A1383A409E8C4B02F6E586A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <CAODvEq5MxAYzDiqNSnxJKNCFR9=LZYt5BD3SMXnNRXJehkYfBg@mail.gmail.com>
 <IA3PR11MB898663460FABC5C8AE6EC85FE586A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898663460FABC5C8AE6EC85FE586A@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Sun, 4 Jan 2026 23:48:36 -0800
X-Gm-Features: AQt7F2olVWHj-Q5KbjHeu6UGJFmCgKQmT73Y8neJNidXLmBWOQDX17KdtGjTzxM
Message-ID: <CAODvEq4Fma_N+oRMuuW2X-BbnkSNUxbHiwh6dDA_3Q0YKR_mdw@mail.gmail.com>
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
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1767599329; x=1768204129; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=n/bmKUL8qRgfsee/YSRKomJGCW1Xn7Kw0x3qvqzn2es=;
 b=vwVHURFFKySy06SyAoHp7lreWIQbfwQ265SXlMvuRGz9f/Sc/d9FMLhTgvjH2Be5r4
 fwQPz548J6adJjM1koCLeLR4r3K7gcgE6dvjVq6VbLAIs1Y8fAJQC9XZZDe/xL7eBaC3
 FTwnktKoExTyPERZxkqcYv9WOlht0uCXTg3Ju0PMY/DjQz8OZhV+V+c3BRKGLpjBLGab
 zRo8QZhIIOG99xUJmd1z1jBh/oF95G0khdLFKWjOAkqbufsbq1mpdcYcfslsf6Uq66sa
 oMTd7pXP3cUr05cIS6gN+YEd9U12uUeFVbyj4C2taChD4arRnTdtVI8rqgXkTTBwtKuZ
 3rgw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=vwVHURFF
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

On Sun, Jan 4, 2026 at 11:43=E2=80=AFPM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
>
>
> From: Li Li <boolli@google.com>
> Sent: Monday, January 5, 2026 8:39 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>; Jakub=
 Kicinski <kuba@kernel.org>; Eric Dumazet <edumazet@google.com>; intel-wire=
d-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.or=
g; David Decotigny <decot@google.com>; Singhai, Anjali <anjali.singhai@inte=
l.com>; Samudrala, Sridhar <sridhar.samudrala@intel.com>; Brian Vazquez <br=
ianvv@google.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v2] idpf: increment completion queu=
e next_to_clean in sw marker wait routine
>
>
>
>
>
>
>
> On Sun, Jan 4, 2026 at 11:19=E2=80=AFPM Loktionov, Aleksandr <aleksandr.l=
oktionov@intel.com> wrote:
>
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
> Linux kernel is against premature initialization just to silence a compil=
er.
> The target variable is dereferenced at idpf_queue_clear(SW_MARKER, target=
))
> but can remain uninitialized if execution jumps to the next: label via a =
goto
> before target is assigned.
> Isn't it?
>
> That is correct. When the following if statement (line 2341-2343) evaluat=
es to true:
>
>
>
>   if (FIELD_GET(IDPF_TXD_COMPLQ_COMPL_TYPE_M, ctype_gen) !=3D
>    IDPF_TXD_COMPLT_SW_MARKER)
>     goto next;
>
>
>
> Then the initialization at line 2346:
>
>
>
>   target =3D complq->txq_grp->txqs[id];
>
>
>
> would be skipped, making "target" uninitialized.
>
>
>
> Therefore, in this patch, I need to initialize "target" to NULL.
>
>
>
> The =E2=80=98NULL=E2=80=99 target variable can be dereferenced at idpf_qu=
eue_clear(SW_MARKER, target)), isn=E2=80=99t it?

That would not be possible, because right before
"idpf_queue_clear(SW_MARKER, target))", "target"
is initialized to "complq->txq_grp->txqs[id]":

  if (FIELD_GET(IDPF_TXD_COMPLQ_COMPL_TYPE_M, ctype_gen) !=3D
    IDPF_TXD_COMPLT_SW_MARKER)
    goto next;

  id =3D FIELD_GET(IDPF_TXD_COMPLQ_QID_M, ctype_gen);
  target =3D complq->txq_grp->txqs[id];

  idpf_queue_clear(SW_MARKER, target);

"target" only remains uninitialized if the if statement above
evaluates to true and skips the initialization.

>
>
>
>
>
>
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
> Are tou sure that incremented ntc value is ever written back to complq->n=
ext_to_clean?
>
>
>
> Yes, the value of "ntc" is written back to "complq->next_to_clean" at the=
 end of the function
>
>  (at line 2360):
>
>
>
>   complq->next_to_clean =3D ntc;
>
> Thank you, I don=E2=80=99t see it from the patch.
>
>
>
>
> > +                     break;
> >       } while (time_before(jiffies, timeout));
> >
> >       idpf_queue_assign(GEN_CHK, complq, gen_flag);
> > --
> > 2.52.0.351.gbe84eed79e-goog
