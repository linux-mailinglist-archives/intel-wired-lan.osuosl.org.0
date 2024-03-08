Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3942876572
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 14:36:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 994F383422;
	Fri,  8 Mar 2024 13:36:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h7nwQLkTIVJd; Fri,  8 Mar 2024 13:36:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8557E83412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709904969;
	bh=OVN+DUpohAJwpDuw4iW9LzvNFYeUKlYIl1TEylYcowI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jGE6WMNv0o3s+g12/OF+Ggw28h4nH1ziDLX6+9lrdl3WYcjrTKPuzNIt1aQnxGF4+
	 tQW8dIkrQ8omGikkCgnEupxkTzedox/7Gj8WfxZH5bv2edDlydgfemUiX/DdprUPGy
	 7obDimYruo3/9wlnliqKMOyvnYlyeC3ANSalXC/YlGmdrO/p7HYszJzcXY4kaoMljW
	 stMjOiKK5MbDHS4t5DOmw2FG7+3hbTNfoHgzeUQ7Ryk82X7o6ezpVcOi/jcEffK5Fe
	 BMafu91fvu43vvt6tJIj27Tjo5ACC1BFNQ06hJTbMdYbM3NRrQnJZd8EEgdCExGxhh
	 ZMXud5m+OKbeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8557E83412;
	Fri,  8 Mar 2024 13:36:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A76421BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 13:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9262341CC6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 13:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HwRXg2k2UfM3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 13:36:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5BD2141CBE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BD2141CBE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5BD2141CBE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 13:36:04 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-639-2s_1jSArOxyIgJItlQMx_Q-1; Fri, 08 Mar 2024 08:36:02 -0500
X-MC-Unique: 2s_1jSArOxyIgJItlQMx_Q-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-5682e95fc68so285633a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Mar 2024 05:36:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709904961; x=1710509761;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OVN+DUpohAJwpDuw4iW9LzvNFYeUKlYIl1TEylYcowI=;
 b=IgI2J5Dqfwr+39CKoa/3bGoMwL254JZdKZI6KtBIrf493qrsCG0iHS5p6Yg5qq8ood
 GTpmuzICBY1w+RZtNunI7QNE9UuWTvTcSDAqPf3b+jarkMjzUoIoQ7xd7VcLZAXyihxP
 PUktm44iFjs1dYLTn2NHmmJo735Q6wDXOl1oYQGvKsvmtflcLZMNJfUGsmcbTA6zN7v6
 CELboJnW0R5wd9sbJwZC87fTpdSHIC86RqGA1M/n2U1NxsMbmBCfG8gncY51YuyN5bCc
 LC7DFdtUDYeWMnBMYZ3Krk5k19sDIFqOhZzHopITasbs4OEZCtEizjQ12oN7c/r3dxoY
 57xA==
X-Gm-Message-State: AOJu0YyoaJ2xyATnXOaSlTXMTdlUoDRucaI2mL2Y6gX8D1xowX7405QE
 4jtzDbdLKnZ/wOz3JOZHR1Pvp9pwlYYvAetRpmbb4fMrfBcHLn4TvlZREqLW0r8luBvmEaC6mxw
 lMRh+/jkXPIz2IN/bIa6MXYwJ2KHjM9LhQ8k+JM6d7gF5C+vMoIPpS4RgsLYYVk1GEYGNBwlG1E
 +Fh7QQ2MCot/swtXtkRI4guCch43+JL07Co/0K97XTeQ==
X-Received: by 2002:a50:955e:0:b0:567:1797:426f with SMTP id
 v30-20020a50955e000000b005671797426fmr2071678eda.24.1709904961360; 
 Fri, 08 Mar 2024 05:36:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgSAyf1DSDhK474qE/kgu1rGJXm5N9O+6G16RkAUpT7163rTvhQT0SCt0k0ga0MGQNeEuG9fsShjcFKi7qt7s=
X-Received: by 2002:a50:955e:0:b0:567:1797:426f with SMTP id
 v30-20020a50955e000000b005671797426fmr2071664eda.24.1709904961000; Fri, 08
 Mar 2024 05:36:01 -0800 (PST)
MIME-Version: 1.0
References: <20240307222510.53654-1-mschmidt@redhat.com>
 <20240307222510.53654-2-mschmidt@redhat.com>
 <0a13e22c-790e-4ac2-ad6c-eb350ef8c349@linux.intel.com>
In-Reply-To: <0a13e22c-790e-4ac2-ad6c-eb350ef8c349@linux.intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Fri, 8 Mar 2024 14:35:49 +0100
Message-ID: <CADEbmW1hG_et13ZSMcX8R-6FFjaEPUvnUveeg8_dEic0QqLS+Q@mail.gmail.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1709904963;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OVN+DUpohAJwpDuw4iW9LzvNFYeUKlYIl1TEylYcowI=;
 b=Bl3LbHT/8qgT5N1G4GNuL0cKteP38D/naSQJh/zndzU+fKy/S74UmKYMHUnubTTVa2TAET
 8/ioUvh5HJCcD4Ib8JhHpqgcyHGffbRTLDfdZSmE/CvhmrgIXo2WtAdwxmj1yRWSPtYbFn
 TyGVxAGj5XGTzaUvqmoR+c/lnOe0nKQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Bl3LbHT/
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: add ice_adapter
 for shared data across PFs on the same NIC
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 8, 2024 at 11:57=E2=80=AFAM Marcin Szycik
<marcin.szycik@linux.intel.com> wrote:
> On 07.03.2024 23:25, Michal Schmidt wrote:
> > There is a need for synchronization between ice PFs on the same physica=
l
> > adapter.
> >
> > Add a "struct ice_adapter" for holding data shared between PFs of the
> > same multifunction PCI device. The struct is refcounted - each ice_pf
> > holds a reference to it.
> >
> > Its first use will be for PTP. I expect it will be useful also to
> > improve the ugliness that is ice_prot_id_tbl.
> >
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/Makefile      |   3 +-
> >  drivers/net/ethernet/intel/ice/ice.h         |   2 +
> >  drivers/net/ethernet/intel/ice/ice_adapter.c | 107 +++++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_adapter.h |  22 ++++
> >  drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
> >  5 files changed, 141 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethe=
rnet/intel/ice/Makefile
> > index cddd82d4ca0f..4fa09c321440 100644
> > --- a/drivers/net/ethernet/intel/ice/Makefile
> > +++ b/drivers/net/ethernet/intel/ice/Makefile
> > @@ -36,7 +36,8 @@ ice-y :=3D ice_main.o \
> >        ice_repr.o     \
> >        ice_tc_lib.o   \
> >        ice_fwlog.o    \
> > -      ice_debugfs.o
> > +      ice_debugfs.o  \
> > +      ice_adapter.o
> >  ice-$(CONFIG_PCI_IOV) +=3D     \
> >       ice_sriov.o             \
> >       ice_virtchnl.o          \
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/etherne=
t/intel/ice/ice.h
> > index 365c03d1c462..1ffecbdd361a 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -77,6 +77,7 @@
> >  #include "ice_gnss.h"
> >  #include "ice_irq.h"
> >  #include "ice_dpll.h"
> > +#include "ice_adapter.h"
> >
> >  #define ICE_BAR0             0
> >  #define ICE_REQ_DESC_MULTIPLE        32
> > @@ -544,6 +545,7 @@ struct ice_agg_node {
> >
> >  struct ice_pf {
> >       struct pci_dev *pdev;
> > +     struct ice_adapter *adapter;
> >
> >       struct devlink_region *nvm_region;
> >       struct devlink_region *sram_region;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net=
/ethernet/intel/ice/ice_adapter.c
> > new file mode 100644
> > index 000000000000..6b9eeba6edf7
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> > @@ -0,0 +1,107 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// SPDX-FileCopyrightText: Copyright Red Hat
> > +
> > +#include <linux/cleanup.h>
> > +#include <linux/mutex.h>
> > +#include <linux/pci.h>
> > +#include <linux/slab.h>
> > +#include <linux/xarray.h>
> > +#include "ice_adapter.h"
> > +
> > +static DEFINE_XARRAY(ice_adapters);
> > +
> > +static unsigned long ice_adapter_index(const struct pci_dev *pdev)
> > +{
> > +     unsigned int domain =3D pci_domain_nr(pdev->bus);
> > +
> > +     WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
> > +     return ((unsigned long)domain << 13) |
> > +            ((unsigned long)pdev->bus->number << 5) |
>
> Magic numbers?

5 bits for the slot number, 8 bits for the bus number. 5+18=3D13.
I did not find any existing definitions for this purpose in pci.h, but
I can add some local macros.

> > +            PCI_SLOT(pdev->devfn);
> > +}
> > +
> > +static struct ice_adapter *ice_adapter_new(void)
> > +{
> > +     struct ice_adapter *adapter;
> > +
> > +     adapter =3D kzalloc(sizeof(*adapter), GFP_KERNEL);
> > +     if (!adapter)
> > +             return NULL;
> > +
> > +     refcount_set(&adapter->refcount, 1);
> > +
> > +     return adapter;
> > +}
> > +
> > +static void ice_adapter_free(struct ice_adapter *adapter)
> > +{
> > +     kfree(adapter);
> > +}
> > +
> > +DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter=
_free(_T))
> > +
> > +/**
> > + * ice_adapter_get - Get a shared ice_adapter structure.
> > + * @pdev: Pointer to the pci_dev whose driver is getting the ice_adapt=
er.
> > + *
> > + * Gets a pointer to a shared ice_adapter structure. Physical function=
s (PFs)
> > + * of the same multi-function PCI device share one ice_adapter structu=
re.
> > + * The ice_adapter is reference-counted. The PF driver must use ice_ad=
apter_put
> > + * to release its reference.
> > + *
> > + * Context: Process, may sleep.
> > + * Return:  Pointer to ice_adapter on success.
> > + *          ERR_PTR() on error. -ENOMEM is the only possible error.
>
> What about ERR_PTR(xa_err(ret))?

The Xarray call can fail with -EINVAL or -ENOMEM. The -EINVAL would be
the result only if I'd attempt to insert an unaligned pointer, which
I'm not doing, so that leaves -ENOMEM as the only possible error.

> > + */
> > +struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
> > +{
> > +     struct ice_adapter *ret, __free(ice_adapter_free) *adapter =3D NU=
LL;
> > +     unsigned long index =3D ice_adapter_index(pdev);
> > +
> > +     adapter =3D ice_adapter_new();
> > +     if (!adapter)
> > +             return ERR_PTR(-ENOMEM);
>
> ---8<---
>
> Thanks,
> Marcin
>

