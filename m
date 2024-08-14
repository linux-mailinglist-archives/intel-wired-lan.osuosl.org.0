Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69892951E0B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 17:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 461674069E;
	Wed, 14 Aug 2024 15:05:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FsicwY1iAyRb; Wed, 14 Aug 2024 15:05:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1202C40499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723647920;
	bh=cZbsYN7hywOio9CebOtG5ipZd6XqFXAATkmmHXXoYiY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=hHbnVKMe/gxc/1oGsEm/aiAVTJBRuZX34nM/arFBHkKO1H0ETXhXF/QkT2iiJHAJG
	 6IytcVB9+1GKS0tMHKCWsXcDSMNtKL2bJOpNxi6k/hFU+NiV6oTXBg7QgoPsyoS00e
	 ETh94SoFC8Lev9tgVJoiT8g88ZihNEFXeTpSAKep7Lvcr0F0BUR3wIxxjHhYCItz/5
	 NcLV+1zEKUVpH7/SzD+Tt9fZbTcq9R/QLb4rbQ+PwEHn2aRq8RKdyZtC53wmkV6db3
	 WVKVvigPMCcEwPUtG2/64wT4aULTsu6/upv7WW8TAN0aM5UmWVUTMMiNAYMbV8JVPH
	 rdPq9dNMT5b9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1202C40499;
	Wed, 14 Aug 2024 15:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 958CB1BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 04:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FF4640393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 04:58:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o0GLPTW99_a4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 04:58:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f32; helo=mail-qv1-xf32.google.com;
 envelope-from=daiweili@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1566740391
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1566740391
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com
 [IPv6:2607:f8b0:4864:20::f32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1566740391
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 04:58:19 +0000 (UTC)
Received: by mail-qv1-xf32.google.com with SMTP id
 6a1803df08f44-6b7a8cada97so34922326d6.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 21:58:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723611499; x=1724216299;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :reply-to:in-reply-to:references:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cZbsYN7hywOio9CebOtG5ipZd6XqFXAATkmmHXXoYiY=;
 b=hkkp0ms0AfFfOVluNYtqSDmxGzXjQf3HKH3SCorRt9cU9+Lvdbac83c5inqXvW8bA/
 UIWEvpaEz02vKadlB9ISRRrdkGMDgTrSKsvLFFvTtnbzmY92SsmQtaH/8ynsoSkVJfjZ
 k374gu9eaSv05NiPm/sfUJdrho1Nwh6dfyRlaxIMf77Xt/35Q19fhmRep2Jeeqk84IBV
 bw0mUJTa7z1fW9BP1Ix3Zq1rCjdGvn8eYrCYA9U1X/PigF31G1HrUVVCZzkbpWfvDG7e
 CWkWsveHufaqYWTA5l7Cqf0sjdjIHYYdDWNQGaK2PA5Aua/+R6Bqj6kkiI+T5XIltLhm
 3qsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWoX5ONi7vJVwpBbkMR5y2ZdmsbI3mgh3UjBm6ftWkd/aTVgu+RFneVrzi98KCX8Asxuaa2YR1PmMuIkRo9kWc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzn+H0AFXCBtzBtif+kBoJ90PAlDFlmEQPrnOyxmZgSF2hMAPwD
 wK8znpQIbgDkBPbzDpZ3UrJIM31Z0OdYtqOBhfV8FsTcoBWxG02kRjFbaMVbTvhKd48NA4BwaMi
 mjkdV6KmIeNFr9z9vhssaosaec04SOvTEMSk=
X-Google-Smtp-Source: AGHT+IE3wmqWQC8hH6zZI3LxdJ0W45BhWmHg3wpq0EuaM73ZIPGiS2LC/8R6MAF1HWhkBv59JXB0Iutnq0JiQV7NQ+E=
X-Received: by 2002:a05:6214:4909:b0:6b7:b1b7:c44a with SMTP id
 6a1803df08f44-6bf5d1846ffmr17979386d6.16.1723611498599; Tue, 13 Aug 2024
 21:58:18 -0700 (PDT)
MIME-Version: 1.0
References: <87sev9wrkj.fsf@intel.com>
 <20240813033508.781022-1-daiweili@google.com>
 <871q2svz40.fsf@intel.com>
In-Reply-To: <871q2svz40.fsf@intel.com>
From: Daiwei Li <daiweili@waymo.com>
Date: Tue, 13 Aug 2024 21:58:06 -0700
Message-ID: <CALhna8C4Ux27SWYRxY4iViwRPSjReUgQpiJtfivNT-bCZLhuqQ@mail.gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 14 Aug 2024 15:05:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waymo.com; s=20230601; t=1723611499; x=1724216299; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :reply-to:in-reply-to:references:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=cZbsYN7hywOio9CebOtG5ipZd6XqFXAATkmmHXXoYiY=;
 b=KpQgfCcfTo+NWb2g6UvQpBsg3kwxDhTP/uzqZWVqe7Wjls/T3GkQJrcIK7nekAVeCX
 jJvNk2i2OaKBUV72bvStxC9DbViSrYxZ+FbOjpTEG+pIOxM6DZmu7cS4Oc/FP4XzUUOP
 oG59uNmU/LAfiIPcDhSxoTLS60h/Q9bOqNAPDLc9C0sagz4Xrma/m0lxjJ3qb8dmlZYg
 SG24O81oIbzZXyyu6WajUxQE/JriBQw/SLHkiiCvp+CbPvQ1TN+pOJXXpeVtT/AgPi1z
 +YsTMGPN1p6uJvdd4Sm7dZhwDB7l4RmTyc8ymft2Pg5XHkGgcYx71Otc4LrLFU6kQ3O/
 R8Gw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=waymo.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=waymo.com header.i=@waymo.com header.a=rsa-sha256
 header.s=20230601 header.b=KpQgfCcf
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Reply-To: daiweili@waymo.com
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 kurt@linutronix.de, linux-kernel@vger.kernel.org, przemyslaw.kitszel@intel.com,
 edumazet@google.com, daiweili@gmail.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thank you for the review! I've sent out another patch that hopefully
addresses the comments.


On Tue, Aug 13, 2024 at 3:26=E2=80=AFPM Vinicius Costa Gomes
<vinicius.gomes@intel.com> wrote:
>
> Daiwei Li <daiweili@google.com> writes:
>
> > 82580 NICs have a hardware bug that makes it
> > necessary to write into the TSICR (TimeSync Interrupt Cause) register
> > to clear it:
> > https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@intel.com/
> >
> > Add a conditional so only for 82580 we write into the TSICR register,
> > so we don't risk losing events for other models.
>
> Please add some information in the commit message about how to reproduce
> the issue, as Paul suggested.
>
> >
> > This (partially) reverts commit ee14cc9ea19b ("igb: Fix missing time sy=
nc events").
> >
> > Fixes: ee14cc9ea19b ("igb: Fix missing time sync events")
> > Closes: https://lore.kernel.org/intel-wired-lan/CAN0jFd1kO0MMtOh8N2Ztxn=
6f7vvDKp2h507sMryobkBKe=3Dxk=3Dw@mail.gmail.com/
> > Tested-by: Daiwei Li <daiweili@google.com>
> > Signed-off-by: Daiwei Li <daiweili@google.com>
> > ---
> >
> > @Vinicius Gomes, this is my first time submitting a Linux kernel patch,
> > so apologies if I missed any part of the procedure (e.g. this is
> > currently on top of 6.7.12, the kernel I am running; should I be
> > rebasing on inline?). Also, is there any way to annotate the patch
> > to give you credit for the original change?
>
> Your submission format looks fine. Just a couple details:
>  - No need for setting in-reply-to (or something like it);
>
>  - For this particular patch, you got lucky and it applies cleanly
>  against current tip, but for future submissions, for intel-wired-lan
>  and patches intended for the stable tree, please rebase against:
>
>  https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/
>
> For credits, you can add something like:
>
> Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>
> >
> >  drivers/net/ethernet/intel/igb/igb_main.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/et=
hernet/intel/igb/igb_main.c
> > index ada42ba63549..1210ddc5d81e 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -6986,6 +6986,16 @@ static void igb_tsync_interrupt(struct igb_adapt=
er *adapter)
> >       struct e1000_hw *hw =3D &adapter->hw;
> >       u32 tsicr =3D rd32(E1000_TSICR);
> >       struct ptp_clock_event event;
> > +     const u32 mask =3D (TSINTR_SYS_WRAP | E1000_TSICR_TXTS |
> > +                       TSINTR_TT0 | TSINTR_TT1 |
> > +                       TSINTR_AUTT0 | TSINTR_AUTT1);
> > +
>
> Please move the declaration of 'mask' up, to follow the convention, the
> "reverse christmas tree" rule. Or separate the attribution from the
> declaration.
>
> > +     if (hw->mac.type =3D=3D e1000_82580) {
> > +             /* 82580 has a hardware bug that requires a explicit
>
> And as pointed by Paul, "*an* explicit".
>
> > +              * write to clear the TimeSync interrupt cause.
> > +              */
> > +             wr32(E1000_TSICR, tsicr & mask);
> > +     }
> >
> >       if (tsicr & TSINTR_SYS_WRAP) {
> >               event.type =3D PTP_CLOCK_PPS;
> > --
> > 2.46.0.76.ge559c4bf1a-goog
> >
>
> --
> Vinicius



--=20
Daiwei Li
Software Engineer
Mobile: 415-736-8670
waymo.com
