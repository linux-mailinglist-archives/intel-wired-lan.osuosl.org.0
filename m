Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E471874047
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 20:20:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 281C641923;
	Wed,  6 Mar 2024 19:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hysgfM2tyj-2; Wed,  6 Mar 2024 19:20:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7E9641925
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709752856;
	bh=92n/2V/ZZRBf/txj6fFiiPCDY877S/i43eKFF6hUfSc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7m00fOhZufW6cxqaaAqC+LMYqtRWu/eV1xk6P5nfdlo7i5wKRNWna0OJObZa9MGVw
	 LSHJ8QdWTzf/+3Ab5LcJgiBSycAx2ph6q13sFnfzdQ5au1FkQEvBfd1WMvrn/tWqPP
	 MSKUY2kN71kjBsL5c9vBVs2GvIEy4ehHmFEMpTaw+fwr9h1UEqb8KRO96iwvcvJoQp
	 DHAS6fjWPjGy6u9HwUF1x7wtjrZlcYmPvQZ2z6jA0VpDVmBy56t1uLrSVtv5H6TtK5
	 IR7m+wiJvkk4uMoDIjrZuCHlzwZLUgoMscyvUZZaTtsxjOsIuufgF4UMKUEzaEimaG
	 i0yl/FJTzF6iw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7E9641925;
	Wed,  6 Mar 2024 19:20:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FDCA1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 19:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5BCBA4191D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 19:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qKaDtOK8CID6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 19:20:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 511494191B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 511494191B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 511494191B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 19:20:52 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-173-q025EP0lMxG7cQjXR3ayFg-1; Wed, 06 Mar 2024 14:20:46 -0500
X-MC-Unique: q025EP0lMxG7cQjXR3ayFg-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-566ae32611eso1257222a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Mar 2024 11:20:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709752845; x=1710357645;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=92n/2V/ZZRBf/txj6fFiiPCDY877S/i43eKFF6hUfSc=;
 b=DkpOCH2ZAWfEGHpI01L3I/4F+XBUSnW0EZg+Fx7aUiQ+d/rCDYQF6jCAGRJW6BkQH7
 mlyLKKTA45ILFVRsug1dGESjZ0vYoJbhNlumtfluJv/MpacSlbJOXwPv1bOOZXdycVU0
 fbOBCrFJXNwdozAUJJx88sTB9EejFdKFqMeBH1Lv9sJmhGVPVXX9uYoWoatOTuD3YUCV
 9zuODmRKvZRJYtquxCChUdU78g9LYABFJG7pUVS7K7n+uoSb/t5PjAKMM7gl99rCJUGF
 F6/Aw2ij5CzM2SeaMd2OrHxfgstsOFnY4EUvTY2Be8p4PVAb5MeBvSXtkDed9avoTnFk
 uLow==
X-Gm-Message-State: AOJu0Yy1i4ILZrcRL3t+b/PxTpxWqK6Fey8qbAQafGhJ2czcs9mfCt3k
 XVrjgAuE0Ri66hNPtolxxhUmIY7BdywHkBsGjK0rvw+25TNbkRYslQUqLV9VEA3oJWqw9DF/2JA
 aajI55bSJgPjJc41sj/aXXMV74ZcTkCfcrvp76rP5PHBg/uVs6KUVchikj7B5xvtkJp1E4wxeDb
 hj2HrUyTRdUQJDz5uXTsZU+TNH0/UwnvN6uJsR4WTxXA==
X-Received: by 2002:a05:6402:1e87:b0:566:d083:df68 with SMTP id
 f7-20020a0564021e8700b00566d083df68mr5844908edf.21.1709752844853; 
 Wed, 06 Mar 2024 11:20:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJ+4MZ+S5iLviZ/Ho7O7H4DVf6nENriFc6UckU20uADT4vFV6ZITae9v4aD6avyEGzhhCiskVSQ5N4bwxtaI4=
X-Received: by 2002:a05:6402:1e87:b0:566:d083:df68 with SMTP id
 f7-20020a0564021e8700b00566d083df68mr5844891edf.21.1709752844530; Wed, 06 Mar
 2024 11:20:44 -0800 (PST)
MIME-Version: 1.0
References: <20240306162907.84247-1-mschmidt@redhat.com>
 <20240306162907.84247-2-mschmidt@redhat.com>
 <ZeihFVgwBBLOZ4CL@nanopsycho>
In-Reply-To: <ZeihFVgwBBLOZ4CL@nanopsycho>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 6 Mar 2024 20:20:33 +0100
Message-ID: <CADEbmW1CtULCvYxW+yyB1=PRzAkAUMOE6LYfk3v6kODJTwXcsA@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1709752849;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=92n/2V/ZZRBf/txj6fFiiPCDY877S/i43eKFF6hUfSc=;
 b=VUud0gd71EujeX6IDHUTsbsHUjx5Dwn2g/vWNOFVBk09x9XBrI9HLKKsKpI6t+XWNidZiq
 upSDXtTv+2+e3O3406EXWc9tP2e5Bg2jP+CuOMJUpUWDBzxqObmssTJVHxFGMcM+GSwNgo
 Tcr+o7SQkBIvqoEb43G6d7A6MuZtU1E=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=VUud0gd7
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: add ice_adapter
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 6, 2024 at 6:00=E2=80=AFPM Jiri Pirko <jiri@resnulli.us> wrote:
> Wed, Mar 06, 2024 at 05:29:05PM CET, mschmidt@redhat.com wrote:
> >There is a need for synchronization between ice PFs on the same physical
> >adapter.
> >
> >Add a "struct ice_adapter" for holding data shared between PFs of the
> >same multifunction PCI device. The struct is refcounted - each ice_pf
> >holds a reference to it.
> >
> >Its first use will be for PTP. I expect it will be useful also to
> >improve the ugliness that is ice_prot_id_tbl.
> >
> >Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> >---
> > drivers/net/ethernet/intel/ice/Makefile      |  3 +-
> > drivers/net/ethernet/intel/ice/ice.h         |  2 +
> > drivers/net/ethernet/intel/ice/ice_adapter.c | 85 ++++++++++++++++++++
> > drivers/net/ethernet/intel/ice/ice_adapter.h | 22 +++++
> > drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++
> > 5 files changed, 119 insertions(+), 1 deletion(-)
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
> > create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
> >
> >diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ether=
net/intel/ice/Makefile
> >index cddd82d4ca0f..4fa09c321440 100644
> >--- a/drivers/net/ethernet/intel/ice/Makefile
> >+++ b/drivers/net/ethernet/intel/ice/Makefile
> >@@ -36,7 +36,8 @@ ice-y :=3D ice_main.o  \
> >        ice_repr.o     \
> >        ice_tc_lib.o   \
> >        ice_fwlog.o    \
> >-       ice_debugfs.o
> >+       ice_debugfs.o  \
> >+       ice_adapter.o
> > ice-$(CONFIG_PCI_IOV) +=3D      \
> >       ice_sriov.o             \
> >       ice_virtchnl.o          \
> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet=
/intel/ice/ice.h
> >index 365c03d1c462..1ffecbdd361a 100644
> >--- a/drivers/net/ethernet/intel/ice/ice.h
> >+++ b/drivers/net/ethernet/intel/ice/ice.h
> >@@ -77,6 +77,7 @@
> > #include "ice_gnss.h"
> > #include "ice_irq.h"
> > #include "ice_dpll.h"
> >+#include "ice_adapter.h"
> >
> > #define ICE_BAR0              0
> > #define ICE_REQ_DESC_MULTIPLE 32
> >@@ -544,6 +545,7 @@ struct ice_agg_node {
> >
> > struct ice_pf {
> >       struct pci_dev *pdev;
> >+      struct ice_adapter *adapter;
> >
> >       struct devlink_region *nvm_region;
> >       struct devlink_region *sram_region;
> >diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/=
ethernet/intel/ice/ice_adapter.c
> >new file mode 100644
> >index 000000000000..b93b4db4c04c
> >--- /dev/null
> >+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> >@@ -0,0 +1,85 @@
> >+// SPDX-License-Identifier: GPL-2.0-only
> >+// SPDX-FileCopyrightText: Copyright Red Hat
> >+
> >+#include <linux/cleanup.h>
> >+#include <linux/mutex.h>
> >+#include <linux/pci.h>
> >+#include <linux/slab.h>
> >+#include <linux/xarray.h>
> >+#include "ice_adapter.h"
> >+
> >+static DEFINE_XARRAY(ice_adapters);
> >+
> >+static unsigned long ice_adapter_index(const struct pci_dev *pdev)
> >+{
> >+      unsigned int domain =3D pci_domain_nr(pdev->bus);
> >+
> >+      WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
> >+      return ((unsigned long)domain << 13) |
> >+             ((unsigned long)pdev->bus->number << 5) |
> >+             PCI_SLOT(pdev->devfn);
> >+}
> >+
> >+static struct ice_adapter *ice_adapter_new(void)
> >+{
> >+      struct ice_adapter *a;
> >+
> >+      a =3D kzalloc(sizeof(*a), GFP_KERNEL);
> >+      if (!a)
> >+              return NULL;
> >+
> >+      refcount_set(&a->refcount, 1);
> >+
> >+      return a;
> >+}
> >+
> >+static void ice_adapter_free(struct ice_adapter *a)
> >+{
> >+      kfree(a);
> >+}
> >+
> >+DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_=
free(_T))
> >+
> >+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
> >+{
> >+      struct ice_adapter *ret, __free(ice_adapter_free) *a =3D NULL;
> >+      unsigned long index =3D ice_adapter_index(pdev);
> >+
> >+      a =3D ice_adapter_new();
>
> Please consider some non-single-letter variable name.

Alright, I can change the name.

> >+      if (!a)
> >+              return NULL;
> >+
> >+      xa_lock(&ice_adapters);
> >+      ret =3D __xa_cmpxchg(&ice_adapters, index, NULL, a, GFP_KERNEL);
>
> This is atomic section, can't sleep.

It is not atomic. __xa_cmpxchg releases xa_lock before it allocates
memory, then reacquires it.

> >+      if (xa_is_err(ret)) {
> >+              ret =3D NULL;
>
> Why don't you propagate err through ERR_PTR() ?

It seemed unnecessary. ENOMEM is the only failure that can possibly
happen. EINVAL could be returned only if attempting to store an
unaligned pointer, which won't happen here.

>
> >+              goto unlock;
> >+      }
> >+      if (ret) {
> >+              refcount_inc(&ret->refcount);
> >+              goto unlock;
> >+      }
> >+      ret =3D no_free_ptr(a);
> >+unlock:
> >+      xa_unlock(&ice_adapters);
> >+      return ret;
> >+}
> >+
> >+void ice_adapter_put(const struct pci_dev *pdev)
> >+{
> >+      unsigned long index =3D ice_adapter_index(pdev);
> >+      struct ice_adapter *a;
> >+
> >+      xa_lock(&ice_adapters);
> >+      a =3D xa_load(&ice_adapters, index);
> >+      if (WARN_ON(!a))
> >+              goto unlock;
> >+
> >+      if (!refcount_dec_and_test(&a->refcount))
> >+              goto unlock;
> >+
> >+      WARN_ON(__xa_erase(&ice_adapters, index) !=3D a);
>
> Nice paranoia level :)
>
>
> >+      ice_adapter_free(a);
> >+unlock:
> >+      xa_unlock(&ice_adapters);
> >+}
> >diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/=
ethernet/intel/ice/ice_adapter.h
> >new file mode 100644
> >index 000000000000..cb5a02eb24c1
> >--- /dev/null
> >+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
> >@@ -0,0 +1,22 @@
> >+/* SPDX-License-Identifier: GPL-2.0-only */
> >+/* SPDX-FileCopyrightText: Copyright Red Hat */
> >+
> >+#ifndef _ICE_ADAPTER_H_
> >+#define _ICE_ADAPTER_H_
> >+
> >+#include <linux/refcount_types.h>
> >+
> >+struct pci_dev;
> >+
> >+/**
> >+ * struct ice_adapter - PCI adapter resources shared across PFs
> >+ * @refcount: Reference count. struct ice_pf objects hold the reference=
s.
> >+ */
> >+struct ice_adapter {
> >+      refcount_t refcount;
> >+};
> >+
> >+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
> >+void ice_adapter_put(const struct pci_dev *pdev);
> >+
> >+#endif /* _ICE_ADAPTER_H */
> >diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/eth=
ernet/intel/ice/ice_main.c
> >index 8f73ba77e835..413219d81a12 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_main.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_main.c
> >@@ -5093,6 +5093,7 @@ static int
> > ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unu=
sed *ent)
> > {
> >       struct device *dev =3D &pdev->dev;
> >+      struct ice_adapter *adapter;
> >       struct ice_pf *pf;
> >       struct ice_hw *hw;
> >       int err;
> >@@ -5145,7 +5146,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_=
device_id __always_unused *ent)
> >
> >       pci_set_master(pdev);
> >
> >+      adapter =3D ice_adapter_get(pdev);
> >+      if (!adapter)
> >+              return -ENOMEM;
> >+
> >       pf->pdev =3D pdev;
> >+      pf->adapter =3D adapter;
> >       pci_set_drvdata(pdev, pf);
> >       set_bit(ICE_DOWN, pf->state);
> >       /* Disable service task until DOWN bit is cleared */
> >@@ -5196,6 +5202,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_d=
evice_id __always_unused *ent)
> > err_load:
> >       ice_deinit(pf);
> > err_init:
> >+      ice_adapter_put(pdev);
> >       pci_disable_device(pdev);
> >       return err;
> > }
> >@@ -5302,6 +5309,7 @@ static void ice_remove(struct pci_dev *pdev)
> >       ice_setup_mc_magic_wake(pf);
> >       ice_set_wake(pf);
> >
> >+      ice_adapter_put(pdev);
> >       pci_disable_device(pdev);
> > }
> >
> >--
> >2.43.2
> >
>

