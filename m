Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BFD9AB503
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 19:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53C9680ED5;
	Tue, 22 Oct 2024 17:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YV3WAXBS7TPs; Tue, 22 Oct 2024 17:25:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A049980E9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729617948;
	bh=8hSaLvXn0yFSyVHQRsC6QU/aD2ssRpmAbQU7NlsTtv8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=om1pZQkAe2+bpqdOzOQYvT7lOvAbQ6O+ELThRK1MCvgq3hejNgDDicOgaasp+9CSU
	 jcXPNKd9p3lUbiwiJ5Fljhr6m9pYN7ZHD/+m+9ScZt78UYE0/Cj+DPjpZprIHGFctq
	 ETnuGHiol5XtOsTOHGSH51oVsh9z9eceXrMqX8D0TwfynMo6OMXJerJUJvojn+3jea
	 c1/NaNcCKoqWmuI3D4r2mVaiwdmFK0TPMRcCWBLfhx2xXvA1UDBtEtBPyl65cT6fdY
	 nWB2F9LJN7m2em66zZ9USf3heOj+ZPp8zDegrmBlBduA1TRAe+fFYymwU2Ii3UTW7/
	 igGI2e+gaW3dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A049980E9B;
	Tue, 22 Oct 2024 17:25:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A9DCF5126
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83EB380E9B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:25:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 20MjtgZ3YGUB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 17:25:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42d; helo=mail-wr1-x42d.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BDE9780E8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDE9780E8F
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDE9780E8F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:25:45 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-37d6a2aa748so3886229f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 10:25:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729617943; x=1730222743;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8hSaLvXn0yFSyVHQRsC6QU/aD2ssRpmAbQU7NlsTtv8=;
 b=m4/uQFeTQHRH76LID/3iorELn4HQR11jf6LkMq9nFdU1eOQC4ooht0CILjXtDgaA0Z
 ljfOfsVxTAlfOXndg82BalYLdFga39hfvrGvpQmJKMPbqjdroIkTkrWW4PXDXDBXNTBK
 nc1n+SmcVx53QzYzc+i8y0JotE9ZDL6MlKMSP5kG+IfGT9Ge1SlK8/Ms6V7hII2eLLEc
 dTqK1txS7rLtGMuXKxG/OpMUTgKRNmo6Ilkhx3Rfk3tdkzn8pdW4oslGasiMbw5FOcOH
 9qtbzaHYY5wlGAwVoIZfMle3kVhjq/663pKcM2j3exL2LIXrN1Ycf60ru+RuBd0gqtMe
 VF2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXLboobzLViM1eETep8saLmGEz51iOe0MLPdbwXCwh9MjH7QhfajON4UA6zUt16AmcDW3fexeEzRJg5L++QkIg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxYsV0oOkQNr5MRB+WtCjvzxn7ck91w3LNjGegupfsQ8qRrqQ11
 sYcJt53h20VMdma8MecilOWoxRKMdQ6fwCXHA5p7uM170U68+o7PTFHymmD/8r2+/zQkzAXIBiD
 cNF+gc8L3QR27AoyU+1P8x1AfAek=
X-Google-Smtp-Source: AGHT+IGxopSoSXyvwbJ6SKHOpDdmPOBrDcSJm2a7wqW79AZWdLvLfWKswYFr8bJMo2INs1l8UXbKTnIUlZkgiBLm3/w=
X-Received: by 2002:adf:ab03:0:b0:37d:5103:8894 with SMTP id
 ffacd0b85a97d-37efb7f7abemr186717f8f.42.1729617943335; Tue, 22 Oct 2024
 10:25:43 -0700 (PDT)
MIME-Version: 1.0
References: <20241022063807.37561-1-yuancan@huawei.com>
 <20241022155630.GY402847@kernel.org>
In-Reply-To: <20241022155630.GY402847@kernel.org>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 22 Oct 2024 10:25:05 -0700
Message-ID: <CAKgT0UdvnjZo6pNtnZuDFuOQ9Hg=BCeJOAiToS_CFSwpKD8LWA@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Yuan Can <yuancan@huawei.com>, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, cramerj@intel.com, 
 shannon.nelson@amd.com, mitch.a.williams@intel.com, jgarzik@redhat.com, 
 auke-jan.h.kok@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729617943; x=1730222743; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8hSaLvXn0yFSyVHQRsC6QU/aD2ssRpmAbQU7NlsTtv8=;
 b=cXuxEK4vUkT0L/1TFnGRYoUutJ9pEmwTh675ZCorkR+IoQT2Fbb/3tBxYWrJ5uthEZ
 P4hDEJEWEfCcs64RLGKdrUoThuUrnOjr7qodkZOZmnAd2WCwKygqWyDfcIXXjbFcO0ST
 78rMubWSY4vnMJ7uCVNlLkMdKGz/qFBUGrVmmcV6j/o/BWdORu62roCFEDviDFPsxkNc
 OLjaX6KeuCKKiI5ElKUGA0barOAhWA+2/TeiwT1OTrs35lDGqRwgrFkqcoq1HBEEAEb8
 IMpxd9cT+BORn9x/qgSMDqxTZgVUgXn8HY4rp71KLMlyKRoendsYwnub356kMXw4cdhz
 7Bmg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=cXuxEK4v
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix potential invalid memory
 access in igb_init_module()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 22, 2024 at 8:56=E2=80=AFAM Simon Horman <horms@kernel.org> wro=
te:
>
> + Alexander Duyck
>
> On Tue, Oct 22, 2024 at 02:38:07PM +0800, Yuan Can wrote:
> > The pci_register_driver() can fail and when this happened, the dca_noti=
fier
> > needs to be unregistered, otherwise the dca_notifier can be called when
> > igb fails to install, resulting to invalid memory access.
> >
> > Fixes: fe4506b6a2f9 ("igb: add DCA support")
>
> I don't think this problem was introduced by the commit cited above,
> as it added the call to dca_unregister_notify() before
> pci_register_driver(). But rather by the commit cited below which reverse=
d
> the order of these function calls.
>
> bbd98fe48a43 ("igb: Fix DCA errors and do not use context index for 82576=
")
>
> I'm unsure if it is necessary to repost the patch to address that.
> But if you do, and assuming we are treating this as a bug fix,
> please target it for the net (or iwl-net) tree like this:
>
> Subject: [PATCH net v2] ...
>
> > Signed-off-by: Yuan Can <yuancan@huawei.com>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/et=
hernet/intel/igb/igb_main.c
> > index f1d088168723..18284a838e24 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -637,6 +637,10 @@ static int __init igb_init_module(void)
> >       dca_register_notify(&dca_notifier);
> >  #endif
> >       ret =3D pci_register_driver(&igb_driver);
> > +#ifdef CONFIG_IGB_DCA
> > +     if (ret)
> > +             dca_unregister_notify(&dca_notifier);
> > +#endif
> >       return ret;
> >  }
> >

Makes sense to me. I agree on the "Fix DCA errors" patch being the one
that is being fixed. So essentially this is a notifier leak since we
are registering it but not unregistering.

Thanks,

- Alex
