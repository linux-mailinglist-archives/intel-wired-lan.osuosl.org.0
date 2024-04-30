Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CD28B6DAF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 11:03:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E74C81F22;
	Tue, 30 Apr 2024 09:03:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ViA1Qec8oW5p; Tue, 30 Apr 2024 09:03:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2AA181F25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714467806;
	bh=sjBo2QVMI1CyWQlsIFe9ysVmh7llCcHOfQxc+A80P+Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XQywGiYeckj7nvrin1Idp1kKf84jg3CHxNNSDwIa2UsrUx+YlDK8HMK4BFvDpdDKw
	 kVkqZDcApINgplU+m0V7ikXRAJ7jrIVjvRyhpJyxOatSRnT15HbuK7/DS7tK52UtDs
	 c6Upgo6WFEwPFwKN/THPSaeDqErhmJUPK/zLDGyFZzLGcQflZMGNZfQvm/Xuj9m4Wz
	 QlR5dyh7qtnKBWd+CGvSypTu8NflmsXoaZZAJP/TrVbC+qyl80RFaYRNV2VmGSy+sY
	 vKqYjbtfkrE/d9+uIfGgmixTzA0T33MCVTlCjb0TEh7B9Ux7H35HacQpns0NGekhn9
	 ZOAa0Zn6kC4hw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2AA181F25;
	Tue, 30 Apr 2024 09:03:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A32351BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 09:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9934781F1E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 09:03:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W6nfaT-jTY7U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 09:03:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::530; helo=mail-pg1-x530.google.com;
 envelope-from=ross.lagerwall@cloud.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D97581F21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D97581F21
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D97581F21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 09:03:20 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id
 41be03b00d2f7-53fbf2c42bfso3852703a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 02:03:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714467800; x=1715072600;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sjBo2QVMI1CyWQlsIFe9ysVmh7llCcHOfQxc+A80P+Q=;
 b=AYhJVwbN19HHuxPQTKFRCg+CMW5pAgp+E//U1Q9fXtVpg1zb3/KCb66RbOF4DSojyz
 2ICTe7Mi++U/XVC5VGPtphUHIsE6BrgJplZyxN7S/pdPHOqR/SN8t/jt8wTwVPyaHyMx
 Qbi/ROiUueFU6uoTWUqu8feziHXyBP6hi/moYm6IMrsGrQs0J/nuBKsmN51hkDTDRd+D
 B8h4gh9nbbgiC2RlFw4bNA/C9SeWY4Qlq3g5SvruGsoIV4QtmrT4y4lAfL/biauYuYTd
 dQ5MCejDtLE2zXs2lEV6/cMNmChDboabkRNyOUhutfRuSk1469rF8L1/tXxtO3JTD2fC
 +Inw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVLMm0j2TTnaWPOnZJZWB/AkHvf+fwkh4H+B+N2GQPwkVBelz6M9+hpnciySG7s2j3D7rsKaeihUwGvBPy7Y2Q2DzEiCCEpgGjD28Tk4lHpyQ==
X-Gm-Message-State: AOJu0YyFRm/KpFEqq2tn6cRvZpfAzUEKiEfl7dE3rIr3XTatnT5yrdZ2
 APOqoeNDNGsoqZuKdxcKawnntOHJfPGJBBg8R5y1fp1PeGQAH53uleD7XI4my3oTCKOSTZ20REQ
 GC0yr+mPrudI1KLWmUnHeuij1uBibU2w+yfK3
X-Google-Smtp-Source: AGHT+IHFA3yXARPgRd7WfRg9inQlkDKb45T+L+W2rOOOIIWOKTAuDP2mXbHpPw5MN5nf9McFe4daxw7WvYNPhjm8Tkw=
X-Received: by 2002:a05:6a21:3948:b0:1ae:3d01:d with SMTP id
 ac8-20020a056a21394800b001ae3d01000dmr2256870pzc.9.1714467799596; Tue, 30 Apr
 2024 02:03:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240429124922.2872002-1-ross.lagerwall@citrix.com>
 <a0359435-7e0f-4a48-9cc6-3db679bde1ac@molgen.mpg.de>
In-Reply-To: <a0359435-7e0f-4a48-9cc6-3db679bde1ac@molgen.mpg.de>
From: Ross Lagerwall <ross.lagerwall@citrix.com>
Date: Tue, 30 Apr 2024 10:03:07 +0100
Message-ID: <CAG7k0ErF+e2vMUYRuh2EBjWmE7iqdOMS1CQv-7r18T1mVbK1aA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=citrix.com; s=google; t=1714467800; x=1715072600; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sjBo2QVMI1CyWQlsIFe9ysVmh7llCcHOfQxc+A80P+Q=;
 b=TS2dLMyIKg3P0/NJcuxA8jE4rzlwdEwVbZotl9U1vKmUX1nO4BbuMnQeki/v/gjHJ6
 yYgMNSZUvkIPmkuvhrYZO742SVudAIOOGER91junouKXX5+dtjx9sxRBk8ONG7KPOa0q
 gukxywlQgPwVmOO4AZiF2Pm5kYiUgswh2E8QA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=citrix.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=citrix.com header.i=@citrix.com header.a=rsa-sha256
 header.s=google header.b=TS2dLMyI
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix enabling SR-IOV with Xen
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
Cc: netdev@vger.kernel.org, Javi Merino <javi.merino@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 29, 2024 at 2:04=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de>=
 wrote:
>
> Dear Ross,
>
>
> Thank you for your patch.
>
> Am 29.04.24 um 14:49 schrieb Ross Lagerwall:
> > When the PCI functions are created, Xen is informed about them and
> > caches the number of MSI-X entries each function has.  However, the
> > number of MSI-X entries is not set until after the hardware has been
> > configured and the VFs have been started. This prevents
> > PCI-passthrough from working because Xen rejects mapping MSI-X
> > interrupts to domains because it thinks the MSI-X interrupts don't
> > exist.
>
> Thank you for this great problem description. Is there any log message
> shown, you could paste, so people can find this commit when searching
> for the log message?

When this issue occurs, QEMU repeatedly reports:

msi_msix_setup: Error: Mapping of MSI-X (err: 22, vec: 0, entry 0x1)

>
> Do you have a minimal test case, so the maintainers can reproduce this
> to test the fix?

Testing this requires setting up Xen which I wouldn't expect anyone to
do unless they already have an environment set up.

In any case, a "minimal" test would be something like:

1. Set up Xen with dom0 and another VM running Linux.
2. Pass through a VF to the VM. See that QEMU reports the above message
   and the VF is not usable within the VM.
3. Rebuild the dom0 kernel with the attached patch.
4. Pass through a VF to the VM. See that the VF is usable within the
   VM.

>
> > Fix this by moving the call to pci_enable_sriov() later so that the
> > number of MSI-X entries is set correctly in hardware by the time Xen
> > reads it.
>
> It=E2=80=99d be great if you could be more specific on =E2=80=9Clater=E2=
=80=9D, and why this is
> the correct place.

"later" in this case means after ice_start_vfs() since it is at that
point that the hardware sets the number of MSI-X entries.
I expect that a maintainer or someone with more knowledge of the
hardware could explain why the hardware only sets the number of MSI-X
entries at this point.

>
> > Signed-off-by: Ross Lagerwall <ross.lagerwall@citrix.com>
> > Signed-off-by: Javi Merino <javi.merino@kernel.org>
> > ---
> >
> > In v2:
> > * Fix cleanup on if pci_enable_sriov() fails.
> >
> >   drivers/net/ethernet/intel/ice/ice_sriov.c | 23 +++++++++++++--------=
-
> >   1 file changed, 14 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/e=
thernet/intel/ice/ice_sriov.c
> > index a958fcf3e6be..bc97493046a8 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > @@ -864,6 +864,8 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_v=
fs)
> >       int total_vectors =3D pf->hw.func_caps.common_cap.num_msix_vector=
s;
> >       struct device *dev =3D ice_pf_to_dev(pf);
> >       struct ice_hw *hw =3D &pf->hw;
> > +     struct ice_vf *vf;
> > +     unsigned int bkt;
> >       int ret;
> >
> >       pf->sriov_irq_bm =3D bitmap_zalloc(total_vectors, GFP_KERNEL);
> > @@ -877,24 +879,20 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num=
_vfs)
> >       set_bit(ICE_OICR_INTR_DIS, pf->state);
> >       ice_flush(hw);
> >
> > -     ret =3D pci_enable_sriov(pf->pdev, num_vfs);
> > -     if (ret)
> > -             goto err_unroll_intr;
> > -
> >       mutex_lock(&pf->vfs.table_lock);
> >
> >       ret =3D ice_set_per_vf_res(pf, num_vfs);
> >       if (ret) {
> >               dev_err(dev, "Not enough resources for %d VFs, err %d. Tr=
y with fewer number of VFs\n",
> >                       num_vfs, ret);
> > -             goto err_unroll_sriov;
> > +             goto err_unroll_intr;
> >       }
> >
> >       ret =3D ice_create_vf_entries(pf, num_vfs);
> >       if (ret) {
> >               dev_err(dev, "Failed to allocate VF entries for %d VFs\n"=
,
> >                       num_vfs);
> > -             goto err_unroll_sriov;
> > +             goto err_unroll_intr;
> >       }
> >
> >       ice_eswitch_reserve_cp_queues(pf, num_vfs);
> > @@ -905,6 +903,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_=
vfs)
> >               goto err_unroll_vf_entries;
> >       }
> >
> > +     ret =3D pci_enable_sriov(pf->pdev, num_vfs);
> > +     if (ret)
> > +             goto err_unroll_start_vfs;
> > +
> >       clear_bit(ICE_VF_DIS, pf->state);
> >
> >       /* rearm global interrupts */
> > @@ -915,12 +917,15 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num=
_vfs)
> >
> >       return 0;
> >
> > +err_unroll_start_vfs:
> > +     ice_for_each_vf(pf, bkt, vf) {
> > +             ice_dis_vf_mappings(vf);
> > +             ice_vf_vsi_release(vf);
> > +     }
>
> Why wasn=E2=80=99t this needed with `pci_enable_sriov()` done earlier?

Previously ice_start_vifs() was the last function call that may fail
in this function. That is no longer the case so when
pci_enable_sriov() fails, it needs to undo what was done in
ice_start_vifs().

Thanks,
Ross
