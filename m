Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EF577D1A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 20:20:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 105D141139;
	Tue, 15 Aug 2023 18:20:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 105D141139
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692123648;
	bh=rkKWFsQ4etJk+BOR+olaq0v221zlyGCwOGeDzDI4C2I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=foppHuFeckxrVbjYvIIjj87OGyYPwViS81ZtQo8JVrgDzCBgpYFDrECs7KXmEvp5g
	 CoMXpRJdEqmU/Ssu4pn9h0DG9EmBusC3UcQ7+r70zozAgYFXBPYlO4iziyej9/KVjn
	 3MhlzN1qQLMu+l7mJ+X/THE4Xb/aOTGJmxFzRjTMHv+QIYhBJBRyNQAMj2izqmOrde
	 ocX12pnRygwA5HDFSQEuuib0cnjK24zNE74h4qu1YMbPfuLgYav+Aya1YVUVReXyc6
	 HxzWjzzrtMx5X87ena7jF5RnaMG9RVJ+pXkD7QQCNqrB+MKgA0gt9saIZvpMM0/E1k
	 75e3S/V1t+J9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MYWnIXihSSQD; Tue, 15 Aug 2023 18:20:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95531405BD;
	Tue, 15 Aug 2023 18:20:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95531405BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 648301BF422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 18:20:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10A1E404FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 18:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10A1E404FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hjhvLgZBN561 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 18:20:39 +0000 (UTC)
Received: from out-16.mta1.migadu.com (out-16.mta1.migadu.com
 [IPv6:2001:41d0:203:375::10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A832405BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 18:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A832405BD
Message-ID: <ef2eca98-4fcc-b448-fecb-38695238f87b@linux.dev>
Date: Tue, 15 Aug 2023 19:20:31 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-4-vadim.fedorenko@linux.dev>
 <20230814201709.655a24e2@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20230814201709.655a24e2@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1692123635;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rfj/I2U5lSypaHfr+RNkX86cmcJmTgFoRPPvni+deJM=;
 b=SsD9mfnukB+vgW2iwRCL53+e3FiIO4/flFG93D/vSt5AaPzJKxNUivJbYTit35xOtN3+Vb
 2afp6ZjXfCba+gBvI9RpcOeRNtGvar8QOR6pL68lfk6SgX4RQH2luWgjlDRtxeS8zJuBhb
 o6nHSxC2klS59Pq3fri/tAak1oFkJJ8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=SsD9mfnu
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 15/08/2023 04:17, Jakub Kicinski wrote:
> On Fri, 11 Aug 2023 21:03:34 +0100 Vadim Fedorenko wrote:
>> DPLL framework is used to represent and configure DPLL devices
>> in systems. Each device that has DPLL and can configure inputs
>> and outputs can use this framework.
>>
>> Implement core framework functions for further interactions
>> with device drivers implementing dpll subsystem, as well as for
>> interactions of DPLL netlink framework part with the subsystem
>> itself.
> 
>> +static struct dpll_device *
>> +dpll_device_alloc(const u64 clock_id, u32 device_idx, struct module *module)
>> +{
>> +	struct dpll_device *dpll;
>> +	int ret;
>> +
>> +	dpll = kzalloc(sizeof(*dpll), GFP_KERNEL);
>> +	if (!dpll)
>> +		return ERR_PTR(-ENOMEM);
>> +	refcount_set(&dpll->refcount, 1);
>> +	INIT_LIST_HEAD(&dpll->registration_list);
>> +	dpll->device_idx = device_idx;
>> +	dpll->clock_id = clock_id;
>> +	dpll->module = module;
>> +	ret = xa_alloc(&dpll_device_xa, &dpll->id, dpll, xa_limit_16b,
>> +		       GFP_KERNEL);
> 
> Why only 16b and why not _cyclic?
>

I cannot image systems with more than 65k of DPLL devices. We don't
store any id's of last used DPLL device, so there is no easy way to
restart the search from the last point. And it's not a hot path to
optimize it.

>> +/**
>> + * dpll_device_register - register the dpll device in the subsystem
>> + * @dpll: pointer to a dpll
>> + * @type: type of a dpll
>> + * @ops: ops for a dpll device
>> + * @priv: pointer to private information of owner
>> + *
>> + * Make dpll device available for user space.
>> + *
>> + * Context: Acquires a lock (dpll_lock)
>> + * Return:
>> + * * 0 on success
>> + * * negative - error value
>> + */
>> +int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>> +			 const struct dpll_device_ops *ops, void *priv)
>> +{
>> +	struct dpll_device_registration *reg;
>> +	bool first_registration = false;
>> +
>> +	if (WARN_ON(!ops))
>> +		return -EINVAL;
>> +	if (WARN_ON(!ops->mode_get))
>> +		return -EINVAL;
>> +	if (WARN_ON(!ops->lock_status_get))
>> +		return -EINVAL;
>> +	if (WARN_ON(type < DPLL_TYPE_PPS || type > DPLL_TYPE_MAX))
>> +		return -EINVAL;
>> +
>> +	mutex_lock(&dpll_lock);
>> +	reg = dpll_device_registration_find(dpll, ops, priv);
>> +	if (reg) {
>> +		mutex_unlock(&dpll_lock);
>> +		return -EEXIST;
>> +	}
>> +
>> +	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
>> +	if (!reg) {
>> +		mutex_unlock(&dpll_lock);
>> +		return -ENOMEM;
>> +	}
>> +	reg->ops = ops;
>> +	reg->priv = priv;
>> +	dpll->type = type;
>> +	first_registration = list_empty(&dpll->registration_list);
>> +	list_add_tail(&reg->list, &dpll->registration_list);
>> +	if (!first_registration) {
>> +		mutex_unlock(&dpll_lock);
>> +		return 0;
>> +	}
>> +
>> +	xa_set_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
>> +	mutex_unlock(&dpll_lock);
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL_GPL(dpll_device_register);
> 
> Is the registration flow documented? It's a bit atypical so we should
> write some pseudocode somewhere.
> 

Yeah, I'll add it and point to the drivers as examples.

>> +/**
>> + * dpll_device_unregister - unregister dpll device
>> + * @dpll: registered dpll pointer
>> + * @ops: ops for a dpll device
>> + * @priv: pointer to private information of owner
>> + *
>> + * Unregister device, make it unavailable for userspace.
>> + * Note: It does not free the memory
>> + * Context: Acquires a lock (dpll_lock)
>> + */
>> +void dpll_device_unregister(struct dpll_device *dpll,
>> +			    const struct dpll_device_ops *ops, void *priv)
>> +{
>> +	struct dpll_device_registration *reg;
>> +
>> +	mutex_lock(&dpll_lock);
>> +	ASSERT_DPLL_REGISTERED(dpll);
>> +	reg = dpll_device_registration_find(dpll, ops, priv);
>> +	if (WARN_ON(!reg)) {
>> +		mutex_unlock(&dpll_lock);
>> +		return;
>> +	}
>> +	list_del(&reg->list);
>> +	kfree(reg);
>> +
>> +	if (!list_empty(&dpll->registration_list)) {
>> +		mutex_unlock(&dpll_lock);
>> +		return;
>> +	}
>> +	xa_clear_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
>> +	mutex_unlock(&dpll_lock);
>> +}
>> +EXPORT_SYMBOL_GPL(dpll_device_unregister);
> 
>> +/**
>> + * struct dpll_pin - structure for a dpll pin
>> + * @id:			unique id number for pin given by dpll subsystem
>> + * @pin_idx:		index of a pin given by dev driver
>> + * @clock_id:		clock_id of creator
>> + * @module:		module of creator
>> + * @dpll_refs:		hold referencees to dplls pin was registered with
>> + * @parent_refs:	hold references to parent pins pin was registered with
>> + * @prop:		pointer to pin properties given by registerer
>> + * @rclk_dev_name:	holds name of device when pin can recover clock from it
>> + * @refcount:		refcount
>> + **/
>> +struct dpll_pin {
>> +	u32 id;
>> +	u32 pin_idx;
>> +	u64 clock_id;
>> +	struct module *module;
>> +	struct xarray dpll_refs;
>> +	struct xarray parent_refs;
>> +	const struct dpll_pin_properties *prop;
>> +	char *rclk_dev_name;
> 
> Where is rclk_dev_name filled in?

As Jiri said - left over, will remove it.

>> +struct dpll_pin_ops {
>> +	int (*frequency_set)(const struct dpll_pin *pin, void *pin_priv,
>> +			     const struct dpll_device *dpll, void *dpll_priv,
>> +			     const u64 frequency,
>> +			     struct netlink_ext_ack *extack);
>> +	int (*frequency_get)(const struct dpll_pin *pin, void *pin_priv,
>> +			     const struct dpll_device *dpll, void *dpll_priv,
>> +			     u64 *frequency, struct netlink_ext_ack *extack);
>> +	int (*direction_set)(const struct dpll_pin *pin, void *pin_priv,
>> +			     const struct dpll_device *dpll, void *dpll_priv,
>> +			     const enum dpll_pin_direction direction,
>> +			     struct netlink_ext_ack *extack);
>> +	int (*direction_get)(const struct dpll_pin *pin, void *pin_priv,
>> +			     const struct dpll_device *dpll, void *dpll_priv,
>> +			     enum dpll_pin_direction *direction,
>> +			     struct netlink_ext_ack *extack);
>> +	int (*state_on_pin_get)(const struct dpll_pin *pin, void *pin_priv,
>> +				const struct dpll_pin *parent_pin,
>> +				void *parent_pin_priv,
>> +				enum dpll_pin_state *state,
>> +				struct netlink_ext_ack *extack);
>> +	int (*state_on_dpll_get)(const struct dpll_pin *pin, void *pin_priv,
>> +				 const struct dpll_device *dpll,
>> +				 void *dpll_priv, enum dpll_pin_state *state,
>> +				 struct netlink_ext_ack *extack);
>> +	int (*state_on_pin_set)(const struct dpll_pin *pin, void *pin_priv,
>> +				const struct dpll_pin *parent_pin,
>> +				void *parent_pin_priv,
>> +				const enum dpll_pin_state state,
>> +				struct netlink_ext_ack *extack);
>> +	int (*state_on_dpll_set)(const struct dpll_pin *pin, void *pin_priv,
>> +				 const struct dpll_device *dpll,
>> +				 void *dpll_priv,
>> +				 const enum dpll_pin_state state,
>> +				 struct netlink_ext_ack *extack);
>> +	int (*prio_get)(const struct dpll_pin *pin,  void *pin_priv,
>> +			const struct dpll_device *dpll,  void *dpll_priv,
>> +			u32 *prio, struct netlink_ext_ack *extack);
>> +	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
>> +			const struct dpll_device *dpll, void *dpll_priv,
>> +			const u32 prio, struct netlink_ext_ack *extack);
>> +};
> 
> The ops need a kdoc

Ok, will add it.

> 
>> +struct dpll_device
>> +*dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
> 
> nit: * is part of the type, it goes on the previous line

Fixed, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
