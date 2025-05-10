Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BA6AB2133
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 May 2025 06:48:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 924BD6080A;
	Sat, 10 May 2025 04:48:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2XWEhWD-uA5g; Sat, 10 May 2025 04:48:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58FE16084D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746852516;
	bh=U0ocF90m/d57s9zvLLyjTijFwmKaMiodfKLapvGz4i8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4vxZk9l50vib9ccrRdytbXWPUPWZdBMGgWGeL/rKhKAETZS84LyQCoFpIevtpNWwW
	 kWfPxPIVmj0t/hY7+HU3EjXMk+ZUzyc87CFXgvA+Pbe9t2u5s13U3NUAlQBmLbQTCw
	 kMRntGy7gdG6qR2vZ5ribg9lkq6FVLMJlNF5IwoWrXmjkM/4EadO+bpMMHUDxmnnyI
	 pO7GgbaTBPP46QiG8LQRpdyMAXXg7lxgGu1oRunO9NNx/RyjMpqpbGNiJ4+Uj9vQBx
	 fLuAPsJ8QgKxPKYzG4XH9UHbmLRxB/tbSWgkm1BRhgpIt/fwSGuhyEgXeO6yaKjboH
	 I4SM/aZ/mxaRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58FE16084D;
	Sat, 10 May 2025 04:48:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 01F6B154
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 04:48:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E731E83A87
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 04:48:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZeYddjolGUyk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 May 2025 04:48:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62a; helo=mail-ej1-x62a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B4E683A82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B4E683A82
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B4E683A82
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 May 2025 04:48:31 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-acb39c45b4eso429830866b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 May 2025 21:48:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746852509; x=1747457309;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=U0ocF90m/d57s9zvLLyjTijFwmKaMiodfKLapvGz4i8=;
 b=voG+0p7MGeCpl2hRvZubmB7iJ6BbyXOH5ewEWuMkjU7xKdBUSKO+UK7a5xwige1Z6o
 zsua6+2YEvAAucOJW0S/Zzak8Z8QcW8iVm6kvPkkC1zYw/ysuxg1gHYMwtByjuSkUUal
 A8PpfuNAMDTgwJ26NbGu+jl9FQ7vno8tTADr2HGbwywdDL+WAEbkWsPji1U2R7Kxdgrg
 2Maz/2mTSHl4PZujV0ToImOFna05XexaLDIQ0VYtgjitmaa1pMLFX8QZKD8zIgc+VWfc
 c7Ih96/GYFHDM2U1+eMqh87A1eL4JY/vJwjZp9O2QwhdM9p6RhC76qRgRevrSgXOjFgg
 KMew==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNTHJ5wda3Hu4vuN2L8+Iwue+ff5fuEAKURYp4WbNq98Fh07RBuyWarYPZK6ndQZU/BOtzF9uslbKsYQJPsJE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxYo/OWN8f2/IHcZdGL/Gll28gsA8p3u1sz5F2v9xh/tc08MBoV
 QD2RqRV9HTJ9PnVX+1NFaq3cH3dM8cEkDvUVGMK9QY7aisD7dtna9oDH2hXDr4w=
X-Gm-Gg: ASbGncvF94jnM+Bv0uInveKs1FqtKFDrX56Pl7MIJ+K3ToRkfAuA0Prh2ezYbNZp30V
 Upx+Ndh/Z2AofoMWladXZJ1yE509LFq38fZMPXduwjJogC6x3sVqnEWLh/al79xmlc2RnX1eZv8
 7tN3FIYd0jSE91CdRW+ZHxUBxJ/Cyp3bgl3ggwklfElVkeLg+jAVURskoGRVrZDPQjWNkrPE37U
 r4plufQwA/L7GDzIcxIG8pMz73Wuf4Ltvfuqa5OmNuDJUs94fGKfGc7yww5/OQPtq/h9+CwDukH
 2DcbcXUmJ6NNiXIXEt8wL4X2b4OorZ2mkg27fKmtlzLVtW/fXzq3jTcAoTdUEg4pZ1hgq5sD8PB
 pvdYzR5+iJJM4gzO0QQ==
X-Google-Smtp-Source: AGHT+IH4k9HquIX1L6xZv+URbpyHEpEdheEI4sKIxZlStd8mde80HQ5fZ7i2WWD/eBMuhvGJMGwV5w==
X-Received: by 2002:a17:906:794c:b0:ad2:d13:3c4e with SMTP id
 a640c23a62f3a-ad218e8900fmr621959566b.5.1746852508971; 
 Fri, 09 May 2025 21:48:28 -0700 (PDT)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ad23fc53229sm4761966b.48.2025.05.09.21.48.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 May 2025 21:48:28 -0700 (PDT)
Date: Sat, 10 May 2025 06:48:20 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net, 
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 Milena Olech <milena.olech@intel.com>
Message-ID: <icbprtryf7dhdwymtuvntfcfvl43b4rbzxukg7romz32cx2vmn@dkgfespynxln>
References: <20250509124651.1227098-1-arkadiusz.kubalewski@intel.com>
 <20250509124651.1227098-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250509124651.1227098-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1746852509; x=1747457309;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=U0ocF90m/d57s9zvLLyjTijFwmKaMiodfKLapvGz4i8=;
 b=gdPjIiMhxJzZJuu0WWGZbarVUKurEWcXlFQwbTnFd6fJNBsZxotdHkX5lFIERKB+Rz
 35Qs2I5b6mSPcNe18NFDaXPFHPV9KdAEPXEvNeOlzOLXqlT54+lMQE8vSn3BsXJq4pzd
 AYZfBGL2/ypogqkMBoxVgs2krsCk4od5uYwu9RHzxo4n723IrF0Q9MGFkQgnurCAyhuq
 U+7UIOwXggr/OfM6RmW+pZ85oxX4kN4r9IaVx/tWDobPV1xqQSbGVBDOwYY2yNExmbJ+
 qe0Hgk2Z2PF6KPm3nXy6Yma9iPT8znEcxlmZmwa3r7cspvs2ileT50s1ppHTAZwe5tg3
 pkPQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=gdPjIiMh
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/3] dpll: add Reference
 SYNC get/set
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

Fri, May 09, 2025 at 02:46:50PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Define function for Reference SYNC pin registration and callback ops to
>set/get current feature state.
>
>Implement netlink handler to fill netlink messages with Reference SYNC
>pin configuration of capable pins (pin-get).
>
>Implement netlink handler to call proper ops and configure Reference SYNC
>pin state (pin-set).
>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
>v2:
>- rename sync_pins -> ref_sync_pins within `struct dpll_pin` and add doxygen
>  description of ref_sync_pins,
>- improve commit message.
>---
> drivers/dpll/dpll_core.c    |  27 ++++++
> drivers/dpll/dpll_core.h    |   2 +
> drivers/dpll/dpll_netlink.c | 188 ++++++++++++++++++++++++++++++++----
> include/linux/dpll.h        |  10 ++
> 4 files changed, 209 insertions(+), 18 deletions(-)
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>index 20bdc52f63a5..805c7aca58c5 100644
>--- a/drivers/dpll/dpll_core.c
>+++ b/drivers/dpll/dpll_core.c
>@@ -506,6 +506,7 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
> 	refcount_set(&pin->refcount, 1);
> 	xa_init_flags(&pin->dpll_refs, XA_FLAGS_ALLOC);
> 	xa_init_flags(&pin->parent_refs, XA_FLAGS_ALLOC);
>+	xa_init_flags(&pin->ref_sync_pins, XA_FLAGS_ALLOC);
> 	ret = xa_alloc_cyclic(&dpll_pin_xa, &pin->id, pin, xa_limit_32b,
> 			      &dpll_pin_xa_id, GFP_KERNEL);
> 	if (ret < 0)
>@@ -514,6 +515,7 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
> err_xa_alloc:
> 	xa_destroy(&pin->dpll_refs);
> 	xa_destroy(&pin->parent_refs);
>+	xa_destroy(&pin->ref_sync_pins);
> 	dpll_pin_prop_free(&pin->prop);
> err_pin_prop:
> 	kfree(pin);
>@@ -595,6 +597,7 @@ void dpll_pin_put(struct dpll_pin *pin)
> 		xa_erase(&dpll_pin_xa, pin->id);
> 		xa_destroy(&pin->dpll_refs);
> 		xa_destroy(&pin->parent_refs);
>+		xa_destroy(&pin->ref_sync_pins);
> 		dpll_pin_prop_free(&pin->prop);
> 		kfree_rcu(pin, rcu);
> 	}
>@@ -783,6 +786,30 @@ void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
> }
> EXPORT_SYMBOL_GPL(dpll_pin_on_pin_unregister);
> 
>+/**
>+ * dpll_pin_ref_sync_pair_add - create a reference sync signal pin pair
>+ * @base: pin which produces the base frequency
>+ * @sync: pin which produces the sync signal
>+ *
>+ * Once pins are paired, the user-space configuration of reference sync pair
>+ * is possible.
>+ * Context: Acquires a lock (dpll_lock)
>+ * Return:
>+ * * 0 on success
>+ * * negative - error value
>+ */
>+int dpll_pin_ref_sync_pair_add(struct dpll_pin *base, struct dpll_pin *sync)
>+{
>+	int ret;
>+
>+	mutex_lock(&dpll_lock);
>+	ret = xa_insert(&base->ref_sync_pins, sync->pin_idx, sync, GFP_KERNEL);
>+	mutex_unlock(&dpll_lock);
>+
>+	return ret;
>+}
>+EXPORT_SYMBOL_GPL(dpll_pin_ref_sync_pair_add);
>+
> static struct dpll_device_registration *
> dpll_device_registration_first(struct dpll_device *dpll)
> {
>diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
>index 2b6d8ef1cdf3..d0b2b995fd62 100644
>--- a/drivers/dpll/dpll_core.h
>+++ b/drivers/dpll/dpll_core.h
>@@ -44,6 +44,7 @@ struct dpll_device {
>  * @module:		module of creator
>  * @dpll_refs:		hold referencees to dplls pin was registered with
>  * @parent_refs:	hold references to parent pins pin was registered with
>+ * @ref_sync_pins	hold references to pins for Reference SYNC feature
>  * @prop:		pin properties copied from the registerer
>  * @rclk_dev_name:	holds name of device when pin can recover clock from it
>  * @refcount:		refcount
>@@ -56,6 +57,7 @@ struct dpll_pin {
> 	struct module *module;
> 	struct xarray dpll_refs;
> 	struct xarray parent_refs;
>+	struct xarray ref_sync_pins;
> 	struct dpll_pin_properties prop;
> 	refcount_t refcount;
> 	struct rcu_head rcu;
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index c130f87147fa..7a3db0984b1e 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -48,6 +48,24 @@ dpll_msg_add_dev_parent_handle(struct sk_buff *msg, u32 id)
> 	return 0;
> }
> 
>+static bool dpll_pin_available(struct dpll_pin *pin)
>+{
>+	struct dpll_pin_ref *par_ref;
>+	unsigned long i;
>+
>+	if (!xa_get_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED))
>+		return false;
>+	xa_for_each(&pin->parent_refs, i, par_ref)
>+		if (xa_get_mark(&dpll_pin_xa, par_ref->pin->id,
>+				DPLL_REGISTERED))
>+			return true;
>+	xa_for_each(&pin->dpll_refs, i, par_ref)
>+		if (xa_get_mark(&dpll_device_xa, par_ref->dpll->id,
>+				DPLL_REGISTERED))
>+			return true;
>+	return false;
>+}
>+
> /**
>  * dpll_msg_add_pin_handle - attach pin handle attribute to a given message
>  * @msg: pointer to sk_buff message to attach a pin handle
>@@ -408,6 +426,47 @@ dpll_msg_add_pin_esync(struct sk_buff *msg, struct dpll_pin *pin,
> 	return -EMSGSIZE;
> }
> 
>+static int
>+dpll_msg_add_pin_ref_sync(struct sk_buff *msg, struct dpll_pin *pin,
>+			  struct dpll_pin_ref *ref,
>+			  struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>+	struct dpll_device *dpll = ref->dpll;
>+	enum dpll_pin_state state;
>+	void *pin_priv, *sp_priv;
>+	struct dpll_pin *sp;
>+	struct nlattr *nest;
>+	unsigned long index;
>+	int ret;
>+
>+	pin_priv = dpll_pin_on_dpll_priv(dpll, pin);
>+	xa_for_each(&pin->ref_sync_pins, index, sp) {
>+		if (!dpll_pin_available(sp))
>+			continue;
>+		sp_priv = dpll_pin_on_dpll_priv(dpll, sp);
>+		if (WARN_ON(!ops->ref_sync_get))
>+			return -EOPNOTSUPP;
>+		ret = ops->ref_sync_get(pin, pin_priv, sp, sp_priv,
>+					&state, extack);
>+		if (ret)
>+			return ret;
>+		nest = nla_nest_start(msg, DPLL_A_PIN_REFERENCE_SYNC);
>+		if (!nest)
>+			return -EMSGSIZE;
>+		if (nla_put_s32(msg, DPLL_A_PIN_ID, sp->id))
>+			goto nest_cancel;
>+		if (nla_put_s32(msg, DPLL_A_PIN_STATE, state))
>+			goto nest_cancel;
>+		nla_nest_end(msg, nest);
>+	}
>+	return 0;
>+
>+nest_cancel:
>+	nla_nest_cancel(msg, nest);
>+	return -EMSGSIZE;
>+}
>+
> static bool dpll_pin_is_freq_supported(struct dpll_pin *pin, u32 freq)
> {
> 	int fs;
>@@ -550,6 +609,10 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
> 	if (ret)
> 		return ret;
> 	ret = dpll_msg_add_pin_esync(msg, pin, ref, extack);
>+	if (ret)
>+		return ret;
>+	if (!xa_empty(&pin->ref_sync_pins))
>+		ret = dpll_msg_add_pin_ref_sync(msg, pin, ref, extack);
> 	if (ret)
> 		return ret;
> 	if (xa_empty(&pin->parent_refs))
>@@ -642,24 +705,6 @@ __dpll_device_change_ntf(struct dpll_device *dpll)
> 	return dpll_device_event_send(DPLL_CMD_DEVICE_CHANGE_NTF, dpll);
> }
> 
>-static bool dpll_pin_available(struct dpll_pin *pin)
>-{
>-	struct dpll_pin_ref *par_ref;
>-	unsigned long i;
>-
>-	if (!xa_get_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED))
>-		return false;
>-	xa_for_each(&pin->parent_refs, i, par_ref)
>-		if (xa_get_mark(&dpll_pin_xa, par_ref->pin->id,
>-				DPLL_REGISTERED))
>-			return true;
>-	xa_for_each(&pin->dpll_refs, i, par_ref)
>-		if (xa_get_mark(&dpll_device_xa, par_ref->dpll->id,
>-				DPLL_REGISTERED))
>-			return true;
>-	return false;
>-}
>-
> /**
>  * dpll_device_change_ntf - notify that the dpll device has been changed
>  * @dpll: registered dpll pointer
>@@ -887,6 +932,108 @@ dpll_pin_esync_set(struct dpll_pin *pin, struct nlattr *a,
> 	return ret;
> }
> 
>+static int
>+dpll_pin_ref_sync_state_set(struct dpll_pin *pin, unsigned long sync_pin_idx,
>+			    const enum dpll_pin_state state,
>+			    struct netlink_ext_ack *extack)
>+
>+{
>+	struct dpll_pin_ref *ref, *failed;
>+	const struct dpll_pin_ops *ops;
>+	enum dpll_pin_state old_state;
>+	struct dpll_pin *sync_pin;
>+	struct dpll_device *dpll;
>+	unsigned long i;
>+	int ret;
>+
>+	if (state != DPLL_PIN_STATE_CONNECTED &&
>+	    state != DPLL_PIN_STATE_DISCONNECTED)
>+		return -EINVAL;
>+	sync_pin = xa_find(&pin->ref_sync_pins, &sync_pin_idx, ULONG_MAX,
>+			   XA_PRESENT);
>+	if (!sync_pin) {
>+		NL_SET_ERR_MSG(extack, "reference sync pin not found");
>+		return -EINVAL;
>+	}
>+	if (!dpll_pin_available(sync_pin)) {
>+		NL_SET_ERR_MSG(extack, "reference sync pin not available");
>+		return -EINVAL;
>+	}
>+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
>+	ASSERT_NOT_NULL(ref);
>+	ops = dpll_pin_ops(ref);
>+	if (!ops->ref_sync_set || !ops->ref_sync_get) {
>+		NL_SET_ERR_MSG(extack, "reference sync not supported by this pin");
>+		return -EOPNOTSUPP;
>+	}
>+	dpll = ref->dpll;
>+	ret = ops->ref_sync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), sync_pin,
>+				dpll_pin_on_dpll_priv(dpll, sync_pin),
>+				&old_state, extack);
>+	if (ret) {
>+		NL_SET_ERR_MSG(extack, "unable to get old reference sync state");
>+		return -EINVAL;

Propagate ret. Not sure why you ignored my comment about this.



>+	}
>+	if (state == old_state)
>+		return 0;
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		ops = dpll_pin_ops(ref);
>+		dpll = ref->dpll;
>+		ret = ops->ref_sync_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
>+					sync_pin,
>+					dpll_pin_on_dpll_priv(dpll, sync_pin),
>+					state, extack);
>+		if (ret) {
>+			failed = ref;
>+			NL_SET_ERR_MSG_FMT(extack, "reference sync set failed for dpll_id:%u",
>+					   dpll->id);

Why you print id? User knows what he works on, don't he?



>+			goto rollback;
>+		}
>+	}
>+	__dpll_pin_change_ntf(pin);
>+
>+	return 0;
>+
>+rollback:
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		if (ref == failed)
>+			break;
>+		ops = dpll_pin_ops(ref);
>+		dpll = ref->dpll;
>+		if (ops->ref_sync_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
>+				      sync_pin,
>+				      dpll_pin_on_dpll_priv(dpll, sync_pin),
>+				      old_state, extack))
>+			NL_SET_ERR_MSG(extack, "set reference sync rollback failed");
>+	}
>+	return ret;
>+}
>+
>+static int
>+dpll_pin_ref_sync_set(struct dpll_pin *pin, struct nlattr *nest,
>+		      struct netlink_ext_ack *extack)
>+{
>+	struct nlattr *tb[DPLL_A_PIN_MAX + 1];
>+	enum dpll_pin_state state;
>+	u32 sync_pin_id;
>+
>+	nla_parse_nested(tb, DPLL_A_PIN_MAX, nest,
>+			 dpll_reference_sync_nl_policy, extack);
>+	if (!tb[DPLL_A_PIN_ID]) {
>+		NL_SET_ERR_MSG(extack, "sync pin id expected");
>+		return -EINVAL;
>+	}
>+	sync_pin_id = nla_get_u32(tb[DPLL_A_PIN_ID]);
>+
>+	if (!tb[DPLL_A_PIN_STATE]) {
>+		NL_SET_ERR_MSG(extack, "sync pin state expected");
>+		return -EINVAL;
>+	}
>+	state = nla_get_u32(tb[DPLL_A_PIN_STATE]);
>+
>+	return dpll_pin_ref_sync_state_set(pin, sync_pin_id, state, extack);
>+}
>+
> static int
> dpll_pin_on_pin_state_set(struct dpll_pin *pin, u32 parent_idx,
> 			  enum dpll_pin_state state,
>@@ -1193,6 +1340,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
> 			if (ret)
> 				return ret;
> 			break;
>+		case DPLL_A_PIN_REFERENCE_SYNC:
>+			ret = dpll_pin_ref_sync_set(pin, a, info->extack);
>+			if (ret)
>+				return ret;
>+			break;
> 		}
> 	}
> 
>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>index 5e4f9ab1cf75..f1f1fdda67fe 100644
>--- a/include/linux/dpll.h
>+++ b/include/linux/dpll.h
>@@ -95,6 +95,14 @@ struct dpll_pin_ops {
> 			 const struct dpll_device *dpll, void *dpll_priv,
> 			 struct dpll_pin_esync *esync,
> 			 struct netlink_ext_ack *extack);
>+	int (*ref_sync_set)(const struct dpll_pin *pin, void *pin_priv,
>+			    const struct dpll_pin *ref_pin, void *ref_pin_priv,
>+			    const enum dpll_pin_state state,
>+			    struct netlink_ext_ack *extack);
>+	int (*ref_sync_get)(const struct dpll_pin *pin, void *pin_priv,
>+			    const struct dpll_pin *ref_pin, void *ref_pin_priv,
>+			    enum dpll_pin_state *state,
>+			    struct netlink_ext_ack *extack);
> };
> 
> struct dpll_pin_frequency {
>@@ -194,6 +202,8 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
> void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
> 				const struct dpll_pin_ops *ops, void *priv);
> 
>+int dpll_pin_ref_sync_pair_add(struct dpll_pin *base, struct dpll_pin *sync);
>+
> int dpll_device_change_ntf(struct dpll_device *dpll);
> 
> int dpll_pin_change_ntf(struct dpll_pin *pin);
>-- 
>2.38.1
>
