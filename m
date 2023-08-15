Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C03B077C651
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 05:17:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFEA160F25;
	Tue, 15 Aug 2023 03:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFEA160F25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692069440;
	bh=wDuQlj57eH7Jh4CmEnaZ1V291/G/qb0J3GA4defHxTM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cZv857wMCPweghaiQnPm1Rpd+TMZbVu7I5UoH43bssVY1W1hKLsyBC6G9Cib/7hZC
	 NZBBD8gTrK265D0pSE8WcNYLs78CPONBBS2KAIaLYGGW29K8HAxQDVOD2JS/xALOj/
	 PmyX4L1YeZzRUp7HETBKKEsRJ3z8UsoX7eGO8o/CvZP6+mQvqhsykf7gtYrWqTXc+5
	 HMAlN+gg6YcDupld1vTutqLZyzE+rgqbk4atjFwiGZCm0DTYXE93u/Hf3b6Y3GSGnF
	 RLMNnwFXXeMMDMKOcwLqpdXUJvGvkyI+yj7kJFoP9q0/a0oBdEVqcMmJ6SY6/x+liP
	 yP4peOg4cfLgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8e4t2YAOUL4H; Tue, 15 Aug 2023 03:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AB6460EF7;
	Tue, 15 Aug 2023 03:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AB6460EF7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 239F41BF380
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 03:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE539415C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 03:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE539415C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UQa2-Uz_hpFl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 03:17:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74508408BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 03:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74508408BB
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8FFD862B08;
 Tue, 15 Aug 2023 03:17:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EFD7C433C7;
 Tue, 15 Aug 2023 03:17:10 +0000 (UTC)
Date: Mon, 14 Aug 2023 20:17:09 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230814201709.655a24e2@kernel.org>
In-Reply-To: <20230811200340.577359-4-vadim.fedorenko@linux.dev>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-4-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692069431;
 bh=22kBBBnNdB/LlZZ6DoBpY7Dn8SwEgCysRQ5z6dwITWs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WLtA43ezjU4SB7ClVMO5p37HipKcIU4LFlDrvBoxm1cUVs35jEK7zYOQBWac9AUTY
 FEuGKsyVyKrnIS6Rlv2n+nZYwQGU8V68TWujfXNaRNWcPpToTeN/7L7BUIEbZCB8c2
 o2W2iNCMn311ApQCWT8Li6c5RGSiZVcXFvEJqAbw6qvivFGDR+T+eBGAYitLs0uXJN
 kUo9EjHiQsde80sESI71HGhiW/FRcrTsMFfwiGlVJeJUfJ2oau392lBl0jA1gikIGj
 Y9I2dGDsN7L6hJ7R58MSsmRRvC2nIkRazYrtkIj4majYv1KWp2Dw6Oor8mrQKRJ55A
 iiUK4ilPSXKWA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WLtA43ez
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/9] dpll: core: Add DPLL
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org, Jiri Pirko <jiri@nvidia.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 11 Aug 2023 21:03:34 +0100 Vadim Fedorenko wrote:
> DPLL framework is used to represent and configure DPLL devices
> in systems. Each device that has DPLL and can configure inputs
> and outputs can use this framework.
> 
> Implement core framework functions for further interactions
> with device drivers implementing dpll subsystem, as well as for
> interactions of DPLL netlink framework part with the subsystem
> itself.

> +static struct dpll_device *
> +dpll_device_alloc(const u64 clock_id, u32 device_idx, struct module *module)
> +{
> +	struct dpll_device *dpll;
> +	int ret;
> +
> +	dpll = kzalloc(sizeof(*dpll), GFP_KERNEL);
> +	if (!dpll)
> +		return ERR_PTR(-ENOMEM);
> +	refcount_set(&dpll->refcount, 1);
> +	INIT_LIST_HEAD(&dpll->registration_list);
> +	dpll->device_idx = device_idx;
> +	dpll->clock_id = clock_id;
> +	dpll->module = module;
> +	ret = xa_alloc(&dpll_device_xa, &dpll->id, dpll, xa_limit_16b,
> +		       GFP_KERNEL);

Why only 16b and why not _cyclic?

> +/**
> + * dpll_device_register - register the dpll device in the subsystem
> + * @dpll: pointer to a dpll
> + * @type: type of a dpll
> + * @ops: ops for a dpll device
> + * @priv: pointer to private information of owner
> + *
> + * Make dpll device available for user space.
> + *
> + * Context: Acquires a lock (dpll_lock)
> + * Return:
> + * * 0 on success
> + * * negative - error value
> + */
> +int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
> +			 const struct dpll_device_ops *ops, void *priv)
> +{
> +	struct dpll_device_registration *reg;
> +	bool first_registration = false;
> +
> +	if (WARN_ON(!ops))
> +		return -EINVAL;
> +	if (WARN_ON(!ops->mode_get))
> +		return -EINVAL;
> +	if (WARN_ON(!ops->lock_status_get))
> +		return -EINVAL;
> +	if (WARN_ON(type < DPLL_TYPE_PPS || type > DPLL_TYPE_MAX))
> +		return -EINVAL;
> +
> +	mutex_lock(&dpll_lock);
> +	reg = dpll_device_registration_find(dpll, ops, priv);
> +	if (reg) {
> +		mutex_unlock(&dpll_lock);
> +		return -EEXIST;
> +	}
> +
> +	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
> +	if (!reg) {
> +		mutex_unlock(&dpll_lock);
> +		return -ENOMEM;
> +	}
> +	reg->ops = ops;
> +	reg->priv = priv;
> +	dpll->type = type;
> +	first_registration = list_empty(&dpll->registration_list);
> +	list_add_tail(&reg->list, &dpll->registration_list);
> +	if (!first_registration) {
> +		mutex_unlock(&dpll_lock);
> +		return 0;
> +	}
> +
> +	xa_set_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
> +	mutex_unlock(&dpll_lock);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(dpll_device_register);

Is the registration flow documented? It's a bit atypical so we should
write some pseudocode somewhere.

> +/**
> + * dpll_device_unregister - unregister dpll device
> + * @dpll: registered dpll pointer
> + * @ops: ops for a dpll device
> + * @priv: pointer to private information of owner
> + *
> + * Unregister device, make it unavailable for userspace.
> + * Note: It does not free the memory
> + * Context: Acquires a lock (dpll_lock)
> + */
> +void dpll_device_unregister(struct dpll_device *dpll,
> +			    const struct dpll_device_ops *ops, void *priv)
> +{
> +	struct dpll_device_registration *reg;
> +
> +	mutex_lock(&dpll_lock);
> +	ASSERT_DPLL_REGISTERED(dpll);
> +	reg = dpll_device_registration_find(dpll, ops, priv);
> +	if (WARN_ON(!reg)) {
> +		mutex_unlock(&dpll_lock);
> +		return;
> +	}
> +	list_del(&reg->list);
> +	kfree(reg);
> +
> +	if (!list_empty(&dpll->registration_list)) {
> +		mutex_unlock(&dpll_lock);
> +		return;
> +	}
> +	xa_clear_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
> +	mutex_unlock(&dpll_lock);
> +}
> +EXPORT_SYMBOL_GPL(dpll_device_unregister);

> +/**
> + * struct dpll_pin - structure for a dpll pin
> + * @id:			unique id number for pin given by dpll subsystem
> + * @pin_idx:		index of a pin given by dev driver
> + * @clock_id:		clock_id of creator
> + * @module:		module of creator
> + * @dpll_refs:		hold referencees to dplls pin was registered with
> + * @parent_refs:	hold references to parent pins pin was registered with
> + * @prop:		pointer to pin properties given by registerer
> + * @rclk_dev_name:	holds name of device when pin can recover clock from it
> + * @refcount:		refcount
> + **/
> +struct dpll_pin {
> +	u32 id;
> +	u32 pin_idx;
> +	u64 clock_id;
> +	struct module *module;
> +	struct xarray dpll_refs;
> +	struct xarray parent_refs;
> +	const struct dpll_pin_properties *prop;
> +	char *rclk_dev_name;

Where is rclk_dev_name filled in?

> +struct dpll_pin_ops {
> +	int (*frequency_set)(const struct dpll_pin *pin, void *pin_priv,
> +			     const struct dpll_device *dpll, void *dpll_priv,
> +			     const u64 frequency,
> +			     struct netlink_ext_ack *extack);
> +	int (*frequency_get)(const struct dpll_pin *pin, void *pin_priv,
> +			     const struct dpll_device *dpll, void *dpll_priv,
> +			     u64 *frequency, struct netlink_ext_ack *extack);
> +	int (*direction_set)(const struct dpll_pin *pin, void *pin_priv,
> +			     const struct dpll_device *dpll, void *dpll_priv,
> +			     const enum dpll_pin_direction direction,
> +			     struct netlink_ext_ack *extack);
> +	int (*direction_get)(const struct dpll_pin *pin, void *pin_priv,
> +			     const struct dpll_device *dpll, void *dpll_priv,
> +			     enum dpll_pin_direction *direction,
> +			     struct netlink_ext_ack *extack);
> +	int (*state_on_pin_get)(const struct dpll_pin *pin, void *pin_priv,
> +				const struct dpll_pin *parent_pin,
> +				void *parent_pin_priv,
> +				enum dpll_pin_state *state,
> +				struct netlink_ext_ack *extack);
> +	int (*state_on_dpll_get)(const struct dpll_pin *pin, void *pin_priv,
> +				 const struct dpll_device *dpll,
> +				 void *dpll_priv, enum dpll_pin_state *state,
> +				 struct netlink_ext_ack *extack);
> +	int (*state_on_pin_set)(const struct dpll_pin *pin, void *pin_priv,
> +				const struct dpll_pin *parent_pin,
> +				void *parent_pin_priv,
> +				const enum dpll_pin_state state,
> +				struct netlink_ext_ack *extack);
> +	int (*state_on_dpll_set)(const struct dpll_pin *pin, void *pin_priv,
> +				 const struct dpll_device *dpll,
> +				 void *dpll_priv,
> +				 const enum dpll_pin_state state,
> +				 struct netlink_ext_ack *extack);
> +	int (*prio_get)(const struct dpll_pin *pin,  void *pin_priv,
> +			const struct dpll_device *dpll,  void *dpll_priv,
> +			u32 *prio, struct netlink_ext_ack *extack);
> +	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
> +			const struct dpll_device *dpll, void *dpll_priv,
> +			const u32 prio, struct netlink_ext_ack *extack);
> +};

The ops need a kdoc

> +struct dpll_device
> +*dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);

nit: * is part of the type, it goes on the previous line
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
