Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3673372ADD0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 19:38:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9456240AB2;
	Sat, 10 Jun 2023 17:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9456240AB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686418725;
	bh=Nt3X/pZk8uFm5bmeUWQK2M3gyI96qBnoN90SqfU9ZaI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ad5lGzTO3YRKfmAk8TfGHyLyjn5b6AZKQhCcMYKE5DMPTH+8/rovzU9jO1xa3ZBmk
	 yzdON+6GYznTBkmhxb3Cu6VJAGxGIWbws3bAnGQ44FfYp9YmfYAqrmZ8Sz/KO3HF85
	 VDyCYoT3Wfp6f+tp02U5F1QeHbbyfjnYyDvz07SvKbUBNw71fIjapWSav4AZyprABN
	 c0o8kpy62Wk2oc+focN68UGp+TeeMHcky2lsEsJ8YKMJ+8CvzxInmSGtSSt8H2zLVL
	 mksy3XwhCF1edhj2bt22YqL4mT9MQUcpyUGIA2cJEf6ZpeRBHbvOd+/b1eqK8ZKWz4
	 UAzcSiMIuyHjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J3YuC1tZgMgv; Sat, 10 Jun 2023 17:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F1D040217;
	Sat, 10 Jun 2023 17:38:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F1D040217
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 927F01BF32B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 17:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6613941878
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 17:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6613941878
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MOPAZ94nSlGC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 17:38:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF61C41876
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF61C41876
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 17:38:33 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-3f7f4819256so21508815e9.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 10:38:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686418711; x=1689010711;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ikwjO8NkZTKjfdjVINFRoUMhU1t8PMCgGQnib1/D/hw=;
 b=RK8MAv89kaHJgpXLRDZj84f5AKUmDcV7M/kP1cYbOh094Csuutrp6JrIGWuo2iWAFf
 3P+ckMIi0S2OcAr98XzvHR7to228rx6j6WiAo2QnJ2tGFRXEwJwFwTCTcbvclfMfgLJY
 I1/c54Qe7mSSZG+asfdwlxqnKxcCELquhiA4h8bGNLCQEX3hOTzPVRF0ETFzUu0/MQUn
 PKkLHuYzPT1pb7jflJVObr+yIFhG7ONCAPYW15pWGrd4692hPUoeH1p754lUyL/pQXhp
 vdDDKOHMGp/yIuHdaGY9+SeHUJ78IQQP+RSU3ZSWSF5oXhxemDzoPao+NqA1kSjdEzID
 AuhQ==
X-Gm-Message-State: AC+VfDyKMshC5gz+eFK5ecPn6C0gplY6VnPvBJIaO7CIgfO5OiqvkDtp
 ZYmohcOTNrrMlPH5PrBjb4QT/w==
X-Google-Smtp-Source: ACHHUZ4orWPhw2sKo3+kF1bBq4ecCnnZ3peJ22gbMIqbzgUpdIkDAUGCw0FA22as4+xUdaiIYo+2gQ==
X-Received: by 2002:a05:600c:2044:b0:3f7:e800:abc8 with SMTP id
 p4-20020a05600c204400b003f7e800abc8mr3374188wmg.15.1686418711304; 
 Sat, 10 Jun 2023 10:38:31 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 c2-20020a5d5282000000b002fae7408544sm7639784wrv.108.2023.06.10.10.38.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 10:38:30 -0700 (PDT)
Date: Sat, 10 Jun 2023 19:38:29 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZIS1FX0QAqDSvVUK@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686418711; x=1689010711; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ikwjO8NkZTKjfdjVINFRoUMhU1t8PMCgGQnib1/D/hw=;
 b=DGugIusjt3R7Hm4htlbvV511MaxcR9/XXFYmFLg0G/xJrNzWm2qLfWU+kWlyEauQgh
 3EzfnNarp5jPoKlPP3cdS+PPAw6BZX8IblW1/jxGGJlR6vI6MYVqdl278SsR2wTVg1tt
 ooksxhRAMzR/SmOMM+ScHKnq93MBBkPEzq6usjBROAikEq/aF3ntE+e9EYgz4bfzyNxk
 DMcjVdMADXKz3dl63NaJDVEX5U0spnohfc7DgSE2rDhogXsvnmIuITkdLuOXYuaVlAez
 hdnfAezXcU+hdPSmZwWLL9sr82vbUTaNU82e8APXbne//eic6VOad3rG5yYNQA6sSqnT
 imkw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=DGugIusj
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 03/10] dpll: core: Add DPLL
 framework base functions
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, kuba@kernel.org,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jun 09, 2023 at 02:18:46PM CEST, arkadiusz.kubalewski@intel.com wrote:
>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>
>DPLL framework is used to represent and configure DPLL devices
>in systems. Each device that has DPLL and can configure inputs
>and outputs can use this framework.
>
>Implement core framework functions for further interactions
>with device drivers implementing dpll subsystem, as well as for
>interactions of DPLL netlink framework part with the subsystem
>itself.
>
>Co-developed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Milena Olech <milena.olech@intel.com>
>Co-developed-by: Michal Michalik <michal.michalik@intel.com>
>Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/dpll/dpll_core.c | 953 +++++++++++++++++++++++++++++++++++++++
> drivers/dpll/dpll_core.h | 104 +++++

Overall, looks very good! I pinpointed couple of nits below, nothing big.
General question: Why do you put documentation comment to every static
function? Does not make any sense to me. Even for non-exported functions
I think it is overkill. Most of them (if not all) give the reader no
additional information and only make the code a bit harder to read.
Care to drop them?


> 2 files changed, 1057 insertions(+)
> create mode 100644 drivers/dpll/dpll_core.c
> create mode 100644 drivers/dpll/dpll_core.h
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>new file mode 100644
>index 000000000000..ee515b7c18be
>--- /dev/null
>+++ b/drivers/dpll/dpll_core.c
>@@ -0,0 +1,953 @@
>+// SPDX-License-Identifier: GPL-2.0
>+/*
>+ *  dpll_core.c - Generic DPLL Management class support.

What's "management class support"? Does not sound recognizable.


>+ *
>+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
>+ *  Copyright (c) 2023 Intel Corporation.
>+ */
>+
>+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>+
>+#include <linux/device.h>
>+#include <linux/err.h>
>+#include <linux/slab.h>
>+#include <linux/string.h>
>+
>+#include "dpll_core.h"
>+
>+DEFINE_MUTEX(dpll_lock);
>+
>+DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
>+DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
>+
>+#define ASSERT_DPLL_REGISTERED(d)                                          \
>+	WARN_ON_ONCE(!xa_get_mark(&dpll_device_xa, (d)->id, DPLL_REGISTERED))
>+#define ASSERT_DPLL_NOT_REGISTERED(d)                                      \
>+	WARN_ON_ONCE(xa_get_mark(&dpll_device_xa, (d)->id, DPLL_REGISTERED))
>+
>+/**
>+ * dpll_device_get_by_id - find dpll device by it's id
>+ * @id: id of searched dpll
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * dpll_device struct if found
>+ * * NULL otherwise
>+ */
>+struct dpll_device *dpll_device_get_by_id(int id)
>+{
>+	if (xa_get_mark(&dpll_device_xa, id, DPLL_REGISTERED))
>+		return xa_load(&dpll_device_xa, id);
>+
>+	return NULL;
>+}
>+
>+/**
>+ * dpll_pin_registration_find - find a pin registration record
>+ * @ref: reference between dpll and pin
>+ * @ops: searched pin ops pointer
>+ * @priv: searched pin priv pointer
>+ *
>+ * Search dpll's registered pins for given ops and priv data.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * NULL - if pin was not found
>+ * * pointer to `struct dpll_pin_registration` if found
>+ */
>+static struct dpll_pin_registration *
>+dpll_pin_registration_find(struct dpll_pin_ref *ref,
>+			   const struct dpll_pin_ops *ops, void *priv)
>+{
>+	struct dpll_pin_registration *reg;
>+
>+	list_for_each_entry(reg, &ref->registration_list, list) {
>+		if (reg->ops == ops && reg->priv == priv)
>+			return reg;
>+	}
>+	return NULL;
>+}
>+
>+/**
>+ * dpll_xa_ref_pin_add - add pin reference to a given xarray
>+ * @xa_pins: dpll_pin_ref xarray holding pins
>+ * @pin: pin being added
>+ * @ops: ops for a pin
>+ * @priv: pointer to private data of owner
>+ *
>+ * Allocate and create reference of a pin and enlist a registration
>+ * structure storing ops and priv pointers of a caller registant.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * 0 on success
>+ * * -ENOMEM on failed allocation
>+ */
>+static int
>+dpll_xa_ref_pin_add(struct xarray *xa_pins, struct dpll_pin *pin,
>+		    const struct dpll_pin_ops *ops, void *priv)
>+{
>+	struct dpll_pin_registration *reg;
>+	struct dpll_pin_ref *ref;
>+	bool ref_exists = false;
>+	unsigned long i;
>+	int ret;
>+
>+	xa_for_each(xa_pins, i, ref) {
>+		if (ref->pin != pin)
>+			continue;
>+		reg = dpll_pin_registration_find(ref, ops, priv);
>+		if (reg) {
>+			refcount_inc(&ref->refcount);
>+			return 0;
>+		}
>+		ref_exists = true;
>+		break;
>+	}
>+
>+	if (!ref_exists) {
>+		ref = kzalloc(sizeof(*ref), GFP_KERNEL);
>+		if (!ref)
>+			return -ENOMEM;
>+		ref->pin = pin;
>+		INIT_LIST_HEAD(&ref->registration_list);
>+		ret = xa_insert(xa_pins, pin->pin_idx, ref, GFP_KERNEL);
>+		if (ret) {
>+			kfree(ref);
>+			return ret;
>+		}
>+		refcount_set(&ref->refcount, 1);
>+	}
>+
>+	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
>+	if (!reg) {
>+		if (!ref_exists)
>+			kfree(ref);
>+		return -ENOMEM;
>+	}
>+	reg->ops = ops;
>+	reg->priv = priv;
>+	if (ref_exists)

If you set refcount to 0 couple of lines above, you can drop the check
here.


>+		refcount_inc(&ref->refcount);
>+	list_add_tail(&reg->list, &ref->registration_list);
>+
>+	return 0;
>+}
>+
>+/**
>+ * dpll_xa_ref_pin_del - remove reference of a pin from xarray
>+ * @xa_pins: dpll_pin_ref xarray holding pins
>+ * @pin: pointer to a pin being removed
>+ * @ops: pointer to ops of pin being removed
>+ * @priv: pointer to private data of registerer who invoked pin removal
>+ *
>+ * Decrement refcount of existing pin reference on given xarray.
>+ * If all registrations are lifted delete the reference and free its memory.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * 0 on success
>+ * * -EINVAL if reference to a pin was not found
>+ */
>+static int dpll_xa_ref_pin_del(struct xarray *xa_pins, struct dpll_pin *pin,
>+			       const struct dpll_pin_ops *ops, void *priv)
>+{
>+	struct dpll_pin_registration *reg;
>+	struct dpll_pin_ref *ref;
>+	unsigned long i;
>+
>+	xa_for_each(xa_pins, i, ref) {
>+		if (ref->pin != pin)
>+			continue;
>+		reg = dpll_pin_registration_find(ref, ops, priv);
>+		if (WARN_ON(!reg))
>+			return -EINVAL;
>+		if (refcount_dec_and_test(&ref->refcount)) {
>+			list_del(&reg->list);
>+			kfree(reg);
>+			xa_erase(xa_pins, i);
>+			WARN_ON(!list_empty(&ref->registration_list));
>+			kfree(ref);
>+		}
>+		return 0;
>+	}
>+
>+	return -EINVAL;
>+}
>+
>+/**
>+ * dpll_xa_ref_dpll_add - add dpll reference to a given xarray
>+ * @xa_dplls: dpll_pin_ref xarray holding dplls
>+ * @dpll: dpll being added
>+ * @ops: pin-reference ops for a dpll
>+ * @priv: pointer to private data of owner
>+ *
>+ * Allocate and create reference of a dpll-pin ops or increase refcount
>+ * on existing dpll reference on given xarray.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * 0 on success
>+ * * -ENOMEM on failed allocation
>+ */
>+static int
>+dpll_xa_ref_dpll_add(struct xarray *xa_dplls, struct dpll_device *dpll,
>+		     const struct dpll_pin_ops *ops, void *priv)
>+{
>+	struct dpll_pin_registration *reg;
>+	struct dpll_pin_ref *ref;
>+	bool ref_exists = false;
>+	unsigned long i;
>+	int ret;
>+
>+	xa_for_each(xa_dplls, i, ref) {
>+		if (ref->dpll != dpll)
>+			continue;
>+		reg = dpll_pin_registration_find(ref, ops, priv);
>+		if (reg) {
>+			refcount_inc(&ref->refcount);
>+			return 0;
>+		}
>+		ref_exists = true;
>+		break;
>+	}
>+
>+	if (!ref_exists) {
>+		ref = kzalloc(sizeof(*ref), GFP_KERNEL);
>+		if (!ref)
>+			return -ENOMEM;
>+		ref->dpll = dpll;
>+		INIT_LIST_HEAD(&ref->registration_list);
>+		ret = xa_insert(xa_dplls, dpll->device_idx, ref, GFP_KERNEL);
>+		if (ret) {
>+			kfree(ref);
>+			return ret;
>+		}
>+		refcount_set(&ref->refcount, 1);
>+	}
>+
>+	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
>+	if (!reg) {
>+		if (!ref_exists)
>+			kfree(ref);
>+		return -ENOMEM;
>+	}
>+	reg->ops = ops;
>+	reg->priv = priv;
>+	if (ref_exists)

If you set refcount to 0 couple of lines above, you can drop the check
here.


>+		refcount_inc(&ref->refcount);
>+	list_add_tail(&reg->list, &ref->registration_list);
>+
>+	return 0;
>+}
>+
>+/**
>+ * dpll_xa_ref_dpll_del - remove reference of a dpll from xarray
>+ * @xa_dplls: dpll_pin_ref xarray holding dplls
>+ * @dpll: pointer to a dpll to remove
>+ * @ops: pointer to ops of dpll being removed
>+ * @priv: pointer to private data of registerer who invoked dpll removal
>+ *
>+ * Decrement refcount of existing dpll reference on given xarray.
>+ * If all references are dropped, delete the reference and free its memory.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ */
>+static void
>+dpll_xa_ref_dpll_del(struct xarray *xa_dplls, struct dpll_device *dpll,
>+		     const struct dpll_pin_ops *ops, void *priv)
>+{
>+	struct dpll_pin_registration *reg;
>+	struct dpll_pin_ref *ref;
>+	unsigned long i;
>+
>+	xa_for_each(xa_dplls, i, ref) {
>+		if (ref->dpll != dpll)
>+			continue;
>+		reg = dpll_pin_registration_find(ref, ops, priv);
>+		if (WARN_ON(!reg))
>+			return;
>+		if (refcount_dec_and_test(&ref->refcount)) {
>+			list_del(&reg->list);
>+			kfree(reg);
>+			xa_erase(xa_dplls, i);
>+			WARN_ON(!list_empty(&ref->registration_list));
>+			kfree(ref);
>+		}
>+		return;
>+	}
>+}
>+
>+/**
>+ * dpll_xa_ref_dpll_find - find dpll reference on xarray
>+ * @xa_refs: dpll_pin_ref xarray holding dpll references
>+ * @dpll: pointer to a dpll being searched
>+ *
>+ * Search for dpll-pin ops reference struct of a given dpll on given xarray.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * pin reference struct pointer on success
>+ * * NULL - reference to a pin was not found
>+ */
>+struct dpll_pin_ref *
>+dpll_xa_ref_dpll_find(struct xarray *xa_refs, const struct dpll_device *dpll)
>+{
>+	struct dpll_pin_ref *ref;
>+	unsigned long i;
>+
>+	xa_for_each(xa_refs, i, ref) {
>+		if (ref->dpll == dpll)
>+			return ref;
>+	}
>+
>+	return NULL;
>+}
>+
>+/**
>+ * dpll_xa_ref_dpll_first - find first record of given xarray
>+ * @xa_refs: xarray
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: first element on given xaaray
>+ */
>+struct dpll_pin_ref *dpll_xa_ref_dpll_first(struct xarray *xa_refs)
>+{
>+	struct dpll_pin_ref *ref;
>+	unsigned long i = 0;
>+
>+	ref = xa_find(xa_refs, &i, ULONG_MAX, XA_PRESENT);
>+	WARN_ON(!ref);
>+	return ref;
>+}
>+
>+/**
>+ * dpll_device_alloc - allocate the memory for dpll device
>+ * @clock_id: clock_id of creator
>+ * @device_idx: id given by dev driver
>+ * @module: reference to registering module
>+ *
>+ * Allocates memory and initialize dpll device, hold its reference on global
>+ * xarray.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * valid dpll_device struct pointer if succeeded
>+ * * ERR_PTR(-ENOMEM) - failed memory allocation
>+ * * ERR_PTR(X) - failed allocation on dpll's xa
>+ */
>+static struct dpll_device *
>+dpll_device_alloc(const u64 clock_id, u32 device_idx, struct module *module)
>+{
>+	struct dpll_device *dpll;
>+	int ret;
>+
>+	dpll = kzalloc(sizeof(*dpll), GFP_KERNEL);
>+	if (!dpll)
>+		return ERR_PTR(-ENOMEM);
>+	refcount_set(&dpll->refcount, 1);
>+	INIT_LIST_HEAD(&dpll->registration_list);
>+	dpll->device_idx = device_idx;
>+	dpll->clock_id = clock_id;
>+	dpll->module = module;
>+	ret = xa_alloc(&dpll_device_xa, &dpll->id, dpll, xa_limit_16b,
>+		       GFP_KERNEL);
>+	if (ret) {
>+		kfree(dpll);
>+		return ERR_PTR(ret);
>+	}
>+	xa_init_flags(&dpll->pin_refs, XA_FLAGS_ALLOC);
>+
>+	return dpll;
>+}
>+
>+/**
>+ * dpll_device_get - find existing or create new dpll device
>+ * @clock_id: clock_id of creator
>+ * @device_idx: idx given by device driver
>+ * @module: reference to registering module
>+ *
>+ * Get existing object of a dpll device, unique for given arguments.
>+ * Create new if doesn't exist yet.
>+ *
>+ * Context: Acquires a lock (dpll_lock)
>+ * Return:
>+ * * valid dpll_device struct pointer if succeeded
>+ * * ERR_PTR(-ENOMEM) - failed memory allocation
>+ * * ERR_PTR(X) - failed allocation on dpll's xa
>+ */
>+struct dpll_device *
>+dpll_device_get(u64 clock_id, u32 device_idx, struct module *module)
>+{
>+	struct dpll_device *dpll, *ret = NULL;
>+	unsigned long index;
>+
>+	mutex_lock(&dpll_lock);
>+	xa_for_each(&dpll_device_xa, index, dpll) {
>+		if (dpll->clock_id == clock_id &&
>+		    dpll->device_idx == device_idx &&
>+		    dpll->module == module) {
>+			ret = dpll;
>+			refcount_inc(&ret->refcount);
>+			break;
>+		}
>+	}
>+	if (!ret)
>+		ret = dpll_device_alloc(clock_id, device_idx, module);
>+	mutex_unlock(&dpll_lock);
>+
>+	return ret;
>+}
>+EXPORT_SYMBOL_GPL(dpll_device_get);
>+
>+/**
>+ * dpll_device_put - decrease the refcount and free memory if possible
>+ * @dpll: dpll_device struct pointer
>+ *
>+ * Context: Acquires a lock (dpll_lock)
>+ * Drop reference for a dpll device, if all references are gone, delete
>+ * dpll device object.
>+ */
>+void dpll_device_put(struct dpll_device *dpll)
>+{
>+	if (!dpll)

Drop this check and rely on a basic driver sanity. I'm pretty sure I
asked you to drop checks like this during the last version review.


>+		return;
>+	mutex_lock(&dpll_lock);
>+	if (refcount_dec_and_test(&dpll->refcount)) {
>+		ASSERT_DPLL_NOT_REGISTERED(dpll);
>+		WARN_ON_ONCE(!xa_empty(&dpll->pin_refs));
>+		xa_destroy(&dpll->pin_refs);
>+		xa_erase(&dpll_device_xa, dpll->id);
>+		WARN_ON(!list_empty(&dpll->registration_list));
>+		kfree(dpll);
>+	}
>+	mutex_unlock(&dpll_lock);
>+}
>+EXPORT_SYMBOL_GPL(dpll_device_put);
>+
>+static struct dpll_device_registration *
>+dpll_device_registration_find(struct dpll_device *dpll,
>+			      const struct dpll_device_ops *ops, void *priv)
>+{
>+	struct dpll_device_registration *reg;
>+
>+	list_for_each_entry(reg, &dpll->registration_list, list) {
>+		if (reg->ops == ops && reg->priv == priv)
>+			return reg;
>+	}
>+	return NULL;
>+}
>+
>+/**
>+ * dpll_device_register - register the dpll device in the subsystem
>+ * @dpll: pointer to a dpll
>+ * @type: type of a dpll
>+ * @ops: ops for a dpll device
>+ * @priv: pointer to private information of owner
>+ *
>+ * Make dpll device available for user space.
>+ *
>+ * Context: Acquires a lock (dpll_lock)
>+ * Return:
>+ * * 0 on success
>+ * * -EINVAL on failure due to wrong arguments provided
>+ * * -EEXIST if device was already registered
>+ */
>+int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>+			 const struct dpll_device_ops *ops, void *priv)
>+{
>+	struct dpll_device_registration *reg;
>+	bool first_registration = false;
>+
>+	if (WARN_ON(!ops))
>+		return -EINVAL;
>+	if (WARN_ON(type < DPLL_TYPE_PPS || type > DPLL_TYPE_MAX))
>+		return -EINVAL;
>+
>+	mutex_lock(&dpll_lock);
>+	reg = dpll_device_registration_find(dpll, ops, priv);
>+	if (reg) {
>+		mutex_unlock(&dpll_lock);
>+		return -EEXIST;
>+	}
>+
>+	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
>+	if (!reg) {
>+		mutex_unlock(&dpll_lock);
>+		return -EEXIST;

-ENOMEM;


>+	}
>+	reg->ops = ops;
>+	reg->priv = priv;
>+	dpll->type = type;
>+	first_registration = list_empty(&dpll->registration_list);
>+	list_add_tail(&reg->list, &dpll->registration_list);
>+	if (!first_registration) {
>+		mutex_unlock(&dpll_lock);
>+		return 0;
>+	}
>+
>+	xa_set_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
>+	mutex_unlock(&dpll_lock);
>+	dpll_device_create_ntf(dpll);
>+
>+	return 0;
>+}
>+EXPORT_SYMBOL_GPL(dpll_device_register);
>+
>+/**
>+ * dpll_device_unregister - unregister dpll device
>+ * @dpll: registered dpll pointer
>+ * @ops: ops for a dpll device
>+ * @priv: pointer to private information of owner
>+ *
>+ * Unregister device, make it unavailable for userspace.
>+ * Note: It does not free the memory
>+ * Context: Acquires a lock (dpll_lock)
>+ */
>+void dpll_device_unregister(struct dpll_device *dpll,
>+			    const struct dpll_device_ops *ops, void *priv)
>+{
>+	struct dpll_device_registration *reg;
>+
>+	mutex_lock(&dpll_lock);
>+	ASSERT_DPLL_REGISTERED(dpll);
>+	dpll_device_delete_ntf(dpll);
>+	reg = dpll_device_registration_find(dpll, ops, priv);
>+	if (WARN_ON(!reg)) {
>+		mutex_unlock(&dpll_lock);
>+		return;
>+	}
>+	list_del(&reg->list);
>+	kfree(reg);
>+
>+	if (!list_empty(&dpll->registration_list)) {
>+		mutex_unlock(&dpll_lock);
>+		return;
>+	}
>+	xa_clear_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
>+	mutex_unlock(&dpll_lock);
>+}
>+EXPORT_SYMBOL_GPL(dpll_device_unregister);
>+
>+/**
>+ * dpll_pin_alloc - allocate the memory for dpll pin
>+ * @clock_id: clock_id of creator
>+ * @pin_idx: idx given by dev driver
>+ * @module: reference to registering module
>+ * @prop: dpll pin properties
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * valid allocated dpll_pin struct pointer if succeeded
>+ * * ERR_PTR(-ENOMEM) - failed memory allocation
>+ * * ERR_PTR(-EINVAL) - wrong pin type property value
>+ */
>+static struct dpll_pin *
>+dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
>+	       const struct dpll_pin_properties *prop)
>+{
>+	struct dpll_pin *pin;
>+	int ret;
>+
>+	pin = kzalloc(sizeof(*pin), GFP_KERNEL);
>+	if (!pin)
>+		return ERR_PTR(-ENOMEM);
>+	pin->pin_idx = pin_idx;
>+	pin->clock_id = clock_id;
>+	pin->module = module;
>+	if (WARN_ON(prop->type < DPLL_PIN_TYPE_MUX ||
>+		    prop->type > DPLL_PIN_TYPE_MAX)) {
>+		ret = -EINVAL;
>+		goto err;
>+	}
>+	pin->prop = prop;
>+	refcount_set(&pin->refcount, 1);
>+	xa_init_flags(&pin->dpll_refs, XA_FLAGS_ALLOC);
>+	xa_init_flags(&pin->parent_refs, XA_FLAGS_ALLOC);
>+	ret = xa_alloc(&dpll_pin_xa, &pin->id, pin, xa_limit_16b, GFP_KERNEL);
>+	if (ret)
>+		goto err;
>+	return pin;
>+err:
>+	xa_destroy(&pin->dpll_refs);
>+	xa_destroy(&pin->parent_refs);
>+	kfree(pin);
>+	return ERR_PTR(ret);
>+}
>+
>+/**
>+ * dpll_pin_get - find existing or create new dpll pin
>+ * @clock_id: clock_id of creator
>+ * @pin_idx: idx given by dev driver
>+ * @module: reference to registering module
>+ * @prop: dpll pin properties
>+ *
>+ * Get existing object of a pin (unique for given arguments) or create new
>+ * if doesn't exist yet.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return:
>+ * * valid allocated dpll_pin struct pointer if succeeded
>+ * * ERR_PTR of an error
>+ */
>+struct dpll_pin *
>+dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>+	     const struct dpll_pin_properties *prop)
>+{
>+	struct dpll_pin *pos, *ret = NULL;
>+	unsigned long i;
>+
>+	xa_for_each(&dpll_pin_xa, i, pos) {
>+		if (pos->clock_id == clock_id &&
>+		    pos->pin_idx == pin_idx &&
>+		    pos->module == module) {
>+			ret = pos;
>+			refcount_inc(&ret->refcount);
>+			break;
>+		}
>+	}
>+	if (!ret)
>+		ret = dpll_pin_alloc(clock_id, pin_idx, module, prop);
>+
>+	return ret;
>+}
>+EXPORT_SYMBOL_GPL(dpll_pin_get);
>+
>+/**
>+ * dpll_pin_put - decrease the refcount and free memory if possible
>+ * @pin: pointer to a pin to be put
>+ *
>+ * Drop reference for a pin, if all references are gone, delete pin object.
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ */
>+void dpll_pin_put(struct dpll_pin *pin)
>+{
>+	if (!pin)

Drop this check.


>+		return;
>+	if (refcount_dec_and_test(&pin->refcount)) {
>+		xa_destroy(&pin->dpll_refs);
>+		xa_destroy(&pin->parent_refs);
>+		xa_erase(&dpll_pin_xa, pin->id);
>+		kfree(pin);
>+	}
>+}
>+EXPORT_SYMBOL_GPL(dpll_pin_put);
>+
>+static int
>+__dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>+		    const struct dpll_pin_ops *ops, void *priv)
>+{
>+	int ret;
>+
>+	if (WARN_ON(!ops))
>+		return -EINVAL;
>+
>+	ret = dpll_xa_ref_pin_add(&dpll->pin_refs, pin, ops, priv);
>+	if (ret)
>+		return ret;
>+	ret = dpll_xa_ref_dpll_add(&pin->dpll_refs, dpll, ops, priv);
>+	if (ret)
>+		goto ref_pin_del;
>+	else
>+		dpll_pin_create_ntf(pin);
>+
>+	return ret;
>+
>+ref_pin_del:
>+	dpll_xa_ref_pin_del(&dpll->pin_refs, pin, ops, priv);
>+	return ret;
>+}
>+
>+/**
>+ * dpll_pin_register - register the dpll pin in the subsystem
>+ * @dpll: pointer to a dpll
>+ * @pin: pointer to a dpll pin
>+ * @ops: ops for a dpll pin ops
>+ * @priv: pointer to private information of owner
>+ *
>+ * Context: Acquires a lock (dpll_lock)
>+ * Return:
>+ * * 0 on success
>+ * * -EINVAL - missing pin ops
>+ * * -ENOMEM - failed to allocate memory
>+ */
>+int
>+dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>+		  const struct dpll_pin_ops *ops, void *priv)
>+{
>+	int ret;
>+
>+	mutex_lock(&dpll_lock);
>+	if (WARN_ON(!(dpll->module == pin->module &&
>+		      dpll->clock_id == pin->clock_id)))
>+		ret = -EFAULT;

In other cases like this you return -EINVAL. I think it is better. One
way or another, be consistent please.


>+	else
>+		ret = __dpll_pin_register(dpll, pin, ops, priv);
>+	mutex_unlock(&dpll_lock);
>+
>+	return ret;
>+}
>+EXPORT_SYMBOL_GPL(dpll_pin_register);
>+
>+static void
>+__dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
>+		      const struct dpll_pin_ops *ops, void *priv)
>+{
>+	dpll_xa_ref_pin_del(&dpll->pin_refs, pin, ops, priv);
>+	dpll_xa_ref_dpll_del(&pin->dpll_refs, dpll, ops, priv);
>+}
>+
>+/**
>+ * dpll_pin_unregister - unregister dpll pin from dpll device
>+ * @dpll: registered dpll pointer
>+ * @pin: pointer to a pin
>+ * @ops: ops for a dpll pin
>+ * @priv: pointer to private information of owner
>+ *
>+ * Note: It does not free the memory
>+ * Context: Acquires a lock (dpll_lock)
>+ */
>+void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
>+			 const struct dpll_pin_ops *ops, void *priv)
>+{
>+	if (WARN_ON(xa_empty(&dpll->pin_refs)))
>+		return;
>+
>+	mutex_lock(&dpll_lock);
>+	__dpll_pin_unregister(dpll, pin, ops, priv);
>+	mutex_unlock(&dpll_lock);
>+}
>+EXPORT_SYMBOL_GPL(dpll_pin_unregister);
>+
>+/**
>+ * dpll_pin_on_pin_register - register a pin with a parent pin
>+ * @parent: pointer to a parent pin
>+ * @pin: pointer to a pin
>+ * @ops: ops for a dpll pin
>+ * @priv: pointer to private information of owner
>+ *
>+ * Register a pin with a parent pin, create references between them and
>+ * between newly registered pin and dplls connected with a parent pin.
>+ *
>+ * Context: Acquires a lock (dpll_lock)
>+ * Return:
>+ * * 0 on success
>+ * * -EINVAL missing pin or parent
>+ * * -ENOMEM failed allocation
>+ * * -EPERM if parent is not allowed
>+ */
>+int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
>+			     const struct dpll_pin_ops *ops, void *priv)
>+{
>+	struct dpll_pin_ref *ref;
>+	unsigned long i, stop;
>+	int ret;
>+
>+	if (WARN_ON(parent->prop->type != DPLL_PIN_TYPE_MUX))
>+		return -EINVAL;
>+	ret = dpll_xa_ref_pin_add(&pin->parent_refs, parent, ops, priv);
>+	if (ret)
>+		goto unlock;
>+	refcount_inc(&pin->refcount);
>+	xa_for_each(&parent->dpll_refs, i, ref) {
>+		mutex_lock(&dpll_lock);
>+		ret = __dpll_pin_register(ref->dpll, pin, ops, priv);
>+		mutex_unlock(&dpll_lock);
>+		if (ret) {
>+			stop = i;
>+			goto dpll_unregister;
>+		}
>+		dpll_pin_create_ntf(pin);
>+	}
>+
>+	return ret;
>+
>+dpll_unregister:
>+	xa_for_each(&parent->dpll_refs, i, ref) {
>+		if (i < stop) {
>+			mutex_lock(&dpll_lock);
>+			__dpll_pin_unregister(ref->dpll, pin, ops, priv);
>+			mutex_unlock(&dpll_lock);
>+		}
>+	}
>+	refcount_dec(&pin->refcount);
>+	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv);
>+unlock:
>+	return ret;
>+}
>+EXPORT_SYMBOL_GPL(dpll_pin_on_pin_register);
>+
>+/**
>+ * dpll_pin_on_pin_unregister - unregister dpll pin from a parent pin
>+ * @parent: pointer to a parent pin
>+ * @pin: pointer to a pin
>+ * @ops: ops for a dpll pin
>+ * @priv: pointer to private information of owner
>+ *
>+ * Context: Acquires a lock (dpll_lock)
>+ * Note: It does not free the memory
>+ */
>+void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
>+				const struct dpll_pin_ops *ops, void *priv)
>+{
>+	struct dpll_pin_ref *ref;
>+	unsigned long i;
>+
>+	mutex_lock(&dpll_lock);
>+	dpll_pin_delete_ntf(pin);
>+	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv);
>+	refcount_dec(&pin->refcount);
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		__dpll_pin_unregister(ref->dpll, pin, ops, priv);
>+	}

Drop "{}"s for one line statement. Didn't checkpack warn you?


>+	mutex_unlock(&dpll_lock);
>+}
>+EXPORT_SYMBOL_GPL(dpll_pin_on_pin_unregister);
>+
>+
>+/**
>+ * dpll_device_registration_first - get first registration of dpll device
>+ * @dpll: pointer to a dpll
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: pointer to the first registration of a dpll
>+ */
>+static struct dpll_device_registration *
>+dpll_device_registration_first(struct dpll_device *dpll)
>+{
>+	struct dpll_device_registration *reg;
>+
>+	reg = list_first_entry_or_null((struct list_head *) &dpll->registration_list,
>+				       struct dpll_device_registration, list);
>+	WARN_ON(!reg);
>+	return reg;
>+}
>+
>+/**
>+ * dpll_priv - get the dpll device private owner data
>+ * @dpll: registered dpll pointer
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: pointer to the first registration priv data
>+ */
>+void *dpll_priv(struct dpll_device *dpll)
>+{
>+	struct dpll_device_registration *reg;
>+
>+	reg = dpll_device_registration_first(dpll);
>+	return reg->priv;
>+}
>+
>+/**
>+ * dpll_device_ops - get the dpll device ops pointer
>+ * @dpll: registered dpll pointer
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: pointer to the first registration ops of the dpll
>+ */
>+const struct dpll_device_ops *dpll_device_ops(struct dpll_device *dpll)
>+{
>+	struct dpll_device_registration *reg;
>+
>+	reg = dpll_device_registration_first(dpll);
>+	return reg->ops;
>+}
>+
>+/**
>+ * dpll_pin_registration_first - get first registration of dpll pin ref
>+ * @ref: pointer to a pin ref struct
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: pointer to the first registration of a dpll_pin_ref
>+ */
>+static struct dpll_pin_registration *
>+dpll_pin_registration_first(struct dpll_pin_ref *ref)
>+{
>+	struct dpll_pin_registration *reg;
>+
>+	reg = list_first_entry_or_null(&ref->registration_list,
>+				       struct dpll_pin_registration, list);
>+	WARN_ON(!reg);
>+	return reg;
>+}
>+
>+/**
>+ * dpll_pin_on_dpll_priv - get the dpll device private owner data
>+ * @dpll:      registered dpll pointer
>+ * @pin:       pointer to a pin
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: pointer to the data
>+ */
>+void *dpll_pin_on_dpll_priv(struct dpll_device *dpll,
>+			    struct dpll_pin *pin)
>+{
>+	struct dpll_pin_registration *reg;
>+	struct dpll_pin_ref *ref;
>+
>+	ref = xa_load(&dpll->pin_refs, pin->pin_idx);
>+	if (!ref)
>+		return NULL;
>+	reg = dpll_pin_registration_first(ref);
>+	return reg->priv;
>+}
>+
>+/**
>+ * dpll_pin_on_pin_priv - get the dpll pin private owner data
>+ * @parent: pointer to a parent pin
>+ * @pin: pointer to a pin
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: pointer to the data
>+ */
>+void *dpll_pin_on_pin_priv(struct dpll_pin *parent,
>+			   struct dpll_pin *pin)
>+{
>+	struct dpll_pin_registration *reg;
>+	struct dpll_pin_ref *ref;
>+
>+	ref = xa_load(&pin->parent_refs, parent->pin_idx);
>+	if (!ref)
>+		return NULL;
>+	reg = dpll_pin_registration_first(ref);
>+	return reg->priv;
>+}
>+
>+/**
>+ * dpll_pin_ops - get the pin ops pointer
>+ * @ref: dpll pin ref
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: pointer to the first ops registered with the pin
>+ */
>+const struct dpll_pin_ops *dpll_pin_ops(struct dpll_pin_ref *ref)
>+{
>+	struct dpll_pin_registration *reg;
>+
>+	reg = dpll_pin_registration_first(ref);
>+	return reg->ops;
>+}
>+
>+/**
>+ * dpll_init - initialize dpll subsystem
>+ *
>+ * Return:
>+ * 0 - success
>+ * negative - netlink init error
>+ */
>+static int __init dpll_init(void)
>+{
>+	int ret;
>+
>+	ret = dpll_netlink_init();
>+	if (ret)
>+		goto error;
>+
>+	return 0;
>+
>+error:
>+	mutex_destroy(&dpll_lock);
>+	return ret;
>+}
>+subsys_initcall(dpll_init);
>diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
>new file mode 100644
>index 000000000000..ef95e272937c
>--- /dev/null
>+++ b/drivers/dpll/dpll_core.h
>@@ -0,0 +1,104 @@
>+/* SPDX-License-Identifier: GPL-2.0 */
>+/*
>+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
>+ *  Copyright (c) 2023 Intel and affiliates
>+ */
>+
>+#ifndef __DPLL_CORE_H__
>+#define __DPLL_CORE_H__
>+
>+#include <linux/dpll.h>
>+#include <linux/list.h>
>+#include <linux/refcount.h>
>+#include "dpll_netlink.h"
>+
>+#define DPLL_REGISTERED		XA_MARK_1
>+
>+struct dpll_device_registration {
>+	struct list_head list;
>+	const struct dpll_device_ops *ops;
>+	void *priv;

You don't need this struct in the header. Move to .c


>+};
>+
>+/**
>+ * struct dpll_device - stores DPLL device internal data
>+ * @id:			unique id number for each device given by kernel

Who's kernel? Say "dpll subsystem" instead.


>+ * @device_idx:		id given by dev driver
>+ * @clock_id:		unique identifier (clock_id) of a dpll
>+ * @module:		module of creator
>+ * @type:		type of a dpll
>+ * @pin_refs:		stores pins registered within a dpll
>+ * @mode_supported_mask: mask of supported modes
>+ * @refcount:		refcount
>+ * @registration_list:	list of registered ops and priv data of dpll owners
>+ **/
>+struct dpll_device {
>+	u32 id;
>+	u32 device_idx;
>+	u64 clock_id;
>+	struct module *module;
>+	enum dpll_type type;
>+	struct xarray pin_refs;
>+	unsigned long mode_supported_mask;
>+	refcount_t refcount;
>+	struct list_head registration_list;
>+};
>+
>+/**
>+ * struct dpll_pin - structure for a dpll pin
>+ * @id:			unique id number for pin given by kernel

Who's kernel? Say "dpll subsystem" instead.


>+ * @pin_idx:		index of a pin given by dev driver
>+ * @clock_id:		clock_id of creator
>+ * @module:		module of creator
>+ * @dpll_refs:		hold referencees to dplls pin was registered with
>+ * @parent_refs:	hold references to parent pins pin was registered with
>+ * @prop:		pointer to pin properties given by registerer
>+ * @rclk_dev_name:	holds name of device when pin can recover clock from it
>+ * @refcount:		refcount
>+ **/
>+struct dpll_pin {
>+	u32 id;
>+	u32 pin_idx;
>+	u64 clock_id;
>+	struct module *module;
>+	struct xarray dpll_refs;
>+	struct xarray parent_refs;
>+	const struct dpll_pin_properties *prop;
>+	char *rclk_dev_name;
>+	refcount_t refcount;
>+};
>+
>+struct dpll_pin_registration {
>+	struct list_head list;
>+	const struct dpll_pin_ops *ops;
>+	void *priv;
>+};

You don't need this struct in the header. Move to .c


>+
>+/**
>+ * struct dpll_pin_ref - structure for referencing either dpll or pins
>+ * @dpll:		pointer to a dpll
>+ * @pin:		pointer to a pin
>+ * @registration_list:	list of ops and priv data registered with the ref
>+ * @refcount:		refcount
>+ **/
>+struct dpll_pin_ref {
>+	union {
>+		struct dpll_device *dpll;
>+		struct dpll_pin *pin;
>+	};
>+	struct list_head registration_list;
>+	refcount_t refcount;
>+};
>+
>+void *dpll_priv(struct dpll_device *dpll);
>+void *dpll_pin_on_dpll_priv(struct dpll_device *dpll, struct dpll_pin *pin);
>+void *dpll_pin_on_pin_priv(struct dpll_pin *parent, struct dpll_pin *pin);
>+
>+const struct dpll_device_ops *dpll_device_ops(struct dpll_device *dpll);
>+struct dpll_device *dpll_device_get_by_id(int id);
>+const struct dpll_pin_ops *dpll_pin_ops(struct dpll_pin_ref *ref);
>+struct dpll_pin_ref *dpll_xa_ref_dpll_first(struct xarray *xa_refs);
>+extern struct xarray dpll_device_xa;
>+extern struct xarray dpll_pin_xa;
>+extern struct mutex dpll_lock;
>+#endif
>-- 
>2.37.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
