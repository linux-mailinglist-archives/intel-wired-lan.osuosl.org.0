Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCA9874996
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 09:27:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EC29824DF;
	Thu,  7 Mar 2024 08:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nUvPjFm56gJV; Thu,  7 Mar 2024 08:27:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35B208246D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709800066;
	bh=WLdwKbBSdROedAD9rZYUd374lyBn5xiL+i60HjMcvD8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q/RdiTy0iGvO1zmF10Ana27l4pv770gGwa4aB8V0S4Zajib3rsx/F/UBwBLbL4lNa
	 5fVYJE0wvpZQeOZ/S5/WPLOfSliCIehxRvI05ke5V1q34ztcJtJ0WQ8ESepB6zd9tC
	 TYN92g0CeLJAVIoW4fNPhMmbleEdNeXLNkmsXwz9vXLTApohiNWQN9agAXL85VnAx/
	 CFgt9iPN90N+9WLOl7M5AaVWPDEJG0Fywaj9qmx+VfpQmOK05y10XOMxCn69OX+g14
	 l4w3aFWlGJ8G9FGc9ab7hePI6FjCYRFkx3mS16hZ3dB0aeBo98JriFJSP1DgTNV1w8
	 dJShStvV8Ctrg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35B208246D;
	Thu,  7 Mar 2024 08:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B812C1BF263
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 08:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B14E8606EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 08:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bL7St3Dt-6wi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 08:27:42 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112b; helo=mail-yw1-x112b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 084AD606E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 084AD606E3
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com
 [IPv6:2607:f8b0:4864:20::112b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 084AD606E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 08:27:39 +0000 (UTC)
Received: by mail-yw1-x112b.google.com with SMTP id
 00721157ae682-609eb87a847so4503617b3.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Mar 2024 00:27:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709800059; x=1710404859;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WLdwKbBSdROedAD9rZYUd374lyBn5xiL+i60HjMcvD8=;
 b=cjxPzYxuK8x6U34dKTwJF1ZmWuYqL7RAB0HxmNjKfW67P2ocVPUErayMHhMmPE/jMT
 yIgCKJ7U7HbRSzYu1wGGbWQgN5x101Ovv3AytiWd1pP4n0Jx3Q7tTzHc9f5ZyQh2X701
 mUeTeLjCqiMHIl0pR4YvBZdp2FPcSJRcVek8Zq7X5md/Sj3diR+MHVaLvyp1p03lOnPs
 eh4O4iZO9/OEp0i704c+zCExI3TUWWBm3OejvnXsqC05isvLwTIijtpanyXUN6V7XEqb
 F1yItvymZu9uTuI9OyKCzfOevSgEpjFRYxKFY3uY5GsJE09HL9WLydBzqxjlgNw5mGIX
 C1wg==
X-Gm-Message-State: AOJu0YxZ/BqhoMofiMfaeOz7WqSVIkICdt6IMEc33wdWzrUCq+oc5qWf
 Gwm5v7Re7bdq5qjNXrUwbdF4mhgSCJ3oa3zJy+xEObWUYnNSqfyYpTCskV6mzlc=
X-Google-Smtp-Source: AGHT+IHKnrCpyN9nT9JhDmAhsTl7hjgiZLiQGEH7VKTnqdBVaTui4J2wZEDU7wOl63uVyE5A3gWEVQ==
X-Received: by 2002:a0d:df84:0:b0:609:ed7d:19eb with SMTP id
 i126-20020a0ddf84000000b00609ed7d19ebmr446046ywe.2.1709800058765; 
 Thu, 07 Mar 2024 00:27:38 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 p205-20020a815bd6000000b006093e3336b2sm4095339ywb.60.2024.03.07.00.27.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Mar 2024 00:27:38 -0800 (PST)
Date: Thu, 7 Mar 2024 09:27:35 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <Zel6dy7PhfP258jk@nanopsycho>
References: <20240306162907.84247-1-mschmidt@redhat.com>
 <20240306162907.84247-2-mschmidt@redhat.com>
 <ZeihFVgwBBLOZ4CL@nanopsycho>
 <CADEbmW1CtULCvYxW+yyB1=PRzAkAUMOE6LYfk3v6kODJTwXcsA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADEbmW1CtULCvYxW+yyB1=PRzAkAUMOE6LYfk3v6kODJTwXcsA@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709800059; x=1710404859;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WLdwKbBSdROedAD9rZYUd374lyBn5xiL+i60HjMcvD8=;
 b=tkgRyPcDVdyV7QqoDPLtaobvzTvyVxpHruwvdoRxVdJFFaVeOPo/VSwMh28FiVTlC7
 FpzL3nPdgd5Rtn535mV99lG3MZUYcDF72eflRWAO0lwCuiw1rBYzM2siih3X6FPqBCmh
 N7t+4uCboIAFzaawA7EIdzC1z7DJr00a8BjxMFVophyLijJ569RFpFGtcwbCYAsAv8XR
 dJq9bzlFSmVGENTgof68PPLCXSL00qoH+c0Ukp9sy8zFZj9R7WXXs9cYD8QwbZlIKpLE
 NeF6kghlFobgf2EcvLgZGBl/2qLo5MRyURZdprBA51z5f6bSkM8yK1+o9WjODSSP7pLT
 FCxw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=tkgRyPcD
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

Wed, Mar 06, 2024 at 08:20:33PM CET, mschmidt@redhat.com wrote:
>On Wed, Mar 6, 2024 at 6:00 PM Jiri Pirko <jiri@resnulli.us> wrote:
>> Wed, Mar 06, 2024 at 05:29:05PM CET, mschmidt@redhat.com wrote:
>> >There is a need for synchronization between ice PFs on the same physical
>> >adapter.
>> >
>> >Add a "struct ice_adapter" for holding data shared between PFs of the
>> >same multifunction PCI device. The struct is refcounted - each ice_pf
>> >holds a reference to it.
>> >
>> >Its first use will be for PTP. I expect it will be useful also to
>> >improve the ugliness that is ice_prot_id_tbl.
>> >
>> >Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>> >---
>> > drivers/net/ethernet/intel/ice/Makefile      |  3 +-
>> > drivers/net/ethernet/intel/ice/ice.h         |  2 +
>> > drivers/net/ethernet/intel/ice/ice_adapter.c | 85 ++++++++++++++++++++
>> > drivers/net/ethernet/intel/ice/ice_adapter.h | 22 +++++
>> > drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++
>> > 5 files changed, 119 insertions(+), 1 deletion(-)
>> > create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
>> > create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
>> >
>> >diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
>> >index cddd82d4ca0f..4fa09c321440 100644
>> >--- a/drivers/net/ethernet/intel/ice/Makefile
>> >+++ b/drivers/net/ethernet/intel/ice/Makefile
>> >@@ -36,7 +36,8 @@ ice-y := ice_main.o  \
>> >        ice_repr.o     \
>> >        ice_tc_lib.o   \
>> >        ice_fwlog.o    \
>> >-       ice_debugfs.o
>> >+       ice_debugfs.o  \
>> >+       ice_adapter.o
>> > ice-$(CONFIG_PCI_IOV) +=      \
>> >       ice_sriov.o             \
>> >       ice_virtchnl.o          \
>> >diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> >index 365c03d1c462..1ffecbdd361a 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice.h
>> >+++ b/drivers/net/ethernet/intel/ice/ice.h
>> >@@ -77,6 +77,7 @@
>> > #include "ice_gnss.h"
>> > #include "ice_irq.h"
>> > #include "ice_dpll.h"
>> >+#include "ice_adapter.h"
>> >
>> > #define ICE_BAR0              0
>> > #define ICE_REQ_DESC_MULTIPLE 32
>> >@@ -544,6 +545,7 @@ struct ice_agg_node {
>> >
>> > struct ice_pf {
>> >       struct pci_dev *pdev;
>> >+      struct ice_adapter *adapter;
>> >
>> >       struct devlink_region *nvm_region;
>> >       struct devlink_region *sram_region;
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> >new file mode 100644
>> >index 000000000000..b93b4db4c04c
>> >--- /dev/null
>> >+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>> >@@ -0,0 +1,85 @@
>> >+// SPDX-License-Identifier: GPL-2.0-only
>> >+// SPDX-FileCopyrightText: Copyright Red Hat
>> >+
>> >+#include <linux/cleanup.h>
>> >+#include <linux/mutex.h>
>> >+#include <linux/pci.h>
>> >+#include <linux/slab.h>
>> >+#include <linux/xarray.h>
>> >+#include "ice_adapter.h"
>> >+
>> >+static DEFINE_XARRAY(ice_adapters);
>> >+
>> >+static unsigned long ice_adapter_index(const struct pci_dev *pdev)
>> >+{
>> >+      unsigned int domain = pci_domain_nr(pdev->bus);
>> >+
>> >+      WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
>> >+      return ((unsigned long)domain << 13) |
>> >+             ((unsigned long)pdev->bus->number << 5) |
>> >+             PCI_SLOT(pdev->devfn);
>> >+}
>> >+
>> >+static struct ice_adapter *ice_adapter_new(void)
>> >+{
>> >+      struct ice_adapter *a;
>> >+
>> >+      a = kzalloc(sizeof(*a), GFP_KERNEL);
>> >+      if (!a)
>> >+              return NULL;
>> >+
>> >+      refcount_set(&a->refcount, 1);
>> >+
>> >+      return a;
>> >+}
>> >+
>> >+static void ice_adapter_free(struct ice_adapter *a)
>> >+{
>> >+      kfree(a);
>> >+}
>> >+
>> >+DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_free(_T))
>> >+
>> >+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>> >+{
>> >+      struct ice_adapter *ret, __free(ice_adapter_free) *a = NULL;
>> >+      unsigned long index = ice_adapter_index(pdev);
>> >+
>> >+      a = ice_adapter_new();
>>
>> Please consider some non-single-letter variable name.
>
>Alright, I can change the name.
>
>> >+      if (!a)
>> >+              return NULL;
>> >+
>> >+      xa_lock(&ice_adapters);
>> >+      ret = __xa_cmpxchg(&ice_adapters, index, NULL, a, GFP_KERNEL);
>>
>> This is atomic section, can't sleep.
>
>It is not atomic. __xa_cmpxchg releases xa_lock before it allocates
>memory, then reacquires it.

Ah, cool.


>
>> >+      if (xa_is_err(ret)) {
>> >+              ret = NULL;
>>
>> Why don't you propagate err through ERR_PTR() ?
>
>It seemed unnecessary. ENOMEM is the only failure that can possibly
>happen. EINVAL could be returned only if attempting to store an
>unaligned pointer, which won't happen here.

Yeah, the point is that you have valid err, you toss it out, the caller
then does:
	adapter = ice_adapter_get(pdev);
	if (!adapter)
		return -ENOMEM;
And reinvents err. So my point was to propagate it through.



>
>>
>> >+              goto unlock;
>> >+      }
>> >+      if (ret) {
>> >+              refcount_inc(&ret->refcount);
>> >+              goto unlock;
>> >+      }
>> >+      ret = no_free_ptr(a);
>> >+unlock:
>> >+      xa_unlock(&ice_adapters);
>> >+      return ret;
>> >+}
>> >+
>> >+void ice_adapter_put(const struct pci_dev *pdev)
>> >+{
>> >+      unsigned long index = ice_adapter_index(pdev);
>> >+      struct ice_adapter *a;
>> >+
>> >+      xa_lock(&ice_adapters);
>> >+      a = xa_load(&ice_adapters, index);
>> >+      if (WARN_ON(!a))
>> >+              goto unlock;
>> >+
>> >+      if (!refcount_dec_and_test(&a->refcount))
>> >+              goto unlock;
>> >+
>> >+      WARN_ON(__xa_erase(&ice_adapters, index) != a);
>>
>> Nice paranoia level :)
>>
>>
>> >+      ice_adapter_free(a);
>> >+unlock:
>> >+      xa_unlock(&ice_adapters);
>> >+}
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
>> >new file mode 100644
>> >index 000000000000..cb5a02eb24c1
>> >--- /dev/null
>> >+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
>> >@@ -0,0 +1,22 @@
>> >+/* SPDX-License-Identifier: GPL-2.0-only */
>> >+/* SPDX-FileCopyrightText: Copyright Red Hat */
>> >+
>> >+#ifndef _ICE_ADAPTER_H_
>> >+#define _ICE_ADAPTER_H_
>> >+
>> >+#include <linux/refcount_types.h>
>> >+
>> >+struct pci_dev;
>> >+
>> >+/**
>> >+ * struct ice_adapter - PCI adapter resources shared across PFs
>> >+ * @refcount: Reference count. struct ice_pf objects hold the references.
>> >+ */
>> >+struct ice_adapter {
>> >+      refcount_t refcount;
>> >+};
>> >+
>> >+struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
>> >+void ice_adapter_put(const struct pci_dev *pdev);
>> >+
>> >+#endif /* _ICE_ADAPTER_H */
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> >index 8f73ba77e835..413219d81a12 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_main.c
>> >+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> >@@ -5093,6 +5093,7 @@ static int
>> > ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>> > {
>> >       struct device *dev = &pdev->dev;
>> >+      struct ice_adapter *adapter;
>> >       struct ice_pf *pf;
>> >       struct ice_hw *hw;
>> >       int err;
>> >@@ -5145,7 +5146,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>> >
>> >       pci_set_master(pdev);
>> >
>> >+      adapter = ice_adapter_get(pdev);
>> >+      if (!adapter)
>> >+              return -ENOMEM;
>> >+
>> >       pf->pdev = pdev;
>> >+      pf->adapter = adapter;
>> >       pci_set_drvdata(pdev, pf);
>> >       set_bit(ICE_DOWN, pf->state);
>> >       /* Disable service task until DOWN bit is cleared */
>> >@@ -5196,6 +5202,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>> > err_load:
>> >       ice_deinit(pf);
>> > err_init:
>> >+      ice_adapter_put(pdev);
>> >       pci_disable_device(pdev);
>> >       return err;
>> > }
>> >@@ -5302,6 +5309,7 @@ static void ice_remove(struct pci_dev *pdev)
>> >       ice_setup_mc_magic_wake(pf);
>> >       ice_set_wake(pf);
>> >
>> >+      ice_adapter_put(pdev);
>> >       pci_disable_device(pdev);
>> > }
>> >
>> >--
>> >2.43.2
>> >
>>
>
