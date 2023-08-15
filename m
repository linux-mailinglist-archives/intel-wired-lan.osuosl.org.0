Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695F877C74B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 08:01:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBE184091C;
	Tue, 15 Aug 2023 06:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBE184091C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692079265;
	bh=m+WnEPq9u0DCkKMwHRIcMN4VfuPcIApYNHqtL1wD1p0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PiprUEAbyyiXSHir/SBuqgjjAw9fYh/Ch8ijmKmwkJCtJeLrB+rdKA0KDu2OX9k1J
	 malXvvaS6yiSDePJ4NM5FG3ZjdXCrmYpGLbobB8yHIpjXEaWa7X4UO97cjOZRcnW8F
	 iH8sZ3HRDJpvUB5W6qcFnALAYink1kycYHDwvrqLTCrT1kfnAhNHYq3rypqbNawGIo
	 6d0cQPdBU2tGAPl9buGKetgAsuu82WzsHvDDncFlPS8HGZtTG/dFGFMxH209+uMner
	 DWmJakHofTzjzPGBP06ZgDluPrmL97PaDlsYuq34LUW8nv0nBSFVi7qtButl5Hbd7H
	 C+v6f9pdIRG0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id adtnEzJlw6Xh; Tue, 15 Aug 2023 06:01:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1DFF403AF;
	Tue, 15 Aug 2023 06:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1DFF403AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C98401BF31F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 06:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD34260F27
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 06:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD34260F27
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S_SFpOaHMJzQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 06:00:57 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9FCB760BF0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 06:00:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FCB760BF0
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-3fea0640d7aso11390535e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 23:00:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692079254; x=1692684054;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ATuGiDRRt6vLATPUxSeo+7i81xqN5HyTALEXdeKA4F8=;
 b=dg4Ugw/qVI8tERKgYRkQ3+gfk17/KX9rtBhapHmtg6ytB1LMMaz9O4deZLg25t6eBF
 udhztxCs+6c/ZqY8EECK+4jcjqth6wf/PbW2OclLXk+WjTolmq+oPB9pkbXicizwtVes
 /nWaS4vLvUYc85+Xjx/qrwwWHgRlud8MelhWOn0ehQaWv6qdZrEpfNSAqeS1KXH4Vkbp
 Cbj8iF0uvE/OYEFqTTqTbqpaZy8zO6IDHxgI34xDWjU48qsJfZMoVsNwmVGKxDVoKf3c
 E9wV/Wv6rmL3V8Q94uK7NMxY9cK3F2lGZDz3unrICMmjzWwSkw01oOOucln4pKhkjXwS
 4yuA==
X-Gm-Message-State: AOJu0YzB2E7fVN3RSxV+CX/JbBy8ZFtIbSAnx04tmu/qNYrr5iL9BlrE
 U1ZUOWiK2/HTMPfNCPXpib6dFg==
X-Google-Smtp-Source: AGHT+IH8cmixjntyPDKCP530AEOMW0rBts8FuLSUpsAjovyOl5LT8jngycJtfLakdIg/yNABjQ9QLg==
X-Received: by 2002:a7b:ce90:0:b0:3fb:ef86:e30 with SMTP id
 q16-20020a7bce90000000b003fbef860e30mr8635975wmj.10.1692079254020; 
 Mon, 14 Aug 2023 23:00:54 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 l10-20020a7bc44a000000b003fc06169ab3sm19280308wmi.20.2023.08.14.23.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Aug 2023 23:00:53 -0700 (PDT)
Date: Tue, 15 Aug 2023 08:00:52 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZNsUlAk/XIcPsMY0@nanopsycho>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-4-vadim.fedorenko@linux.dev>
 <20230814201709.655a24e2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230814201709.655a24e2@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1692079254; x=1692684054; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ATuGiDRRt6vLATPUxSeo+7i81xqN5HyTALEXdeKA4F8=;
 b=SsENlgM7QwFBr4fyrbLmlKEqIOdsbrkBW2fnqHH5I2nXrhsqj2FyMeX3t7E9PdQGv6
 4w3Q5NO2ODfd50GcDA/PcpYdIdFq6nutLetkQeTZxjhv6FLVuDYHZZlGMqLX3SeAkg/n
 92909bebuwsmYgZ5i+5UQG5pUc6VCB1jV4+iEG7syt29d/2lbK49DGBeH45mJZgezNMI
 tug6zMwxljUWocIraQL5YPO2RD7mehMNmwGTdZdL4qDyCPcmGAMNogk1jMor8GFY6rNO
 /x7ESOnP5Re+gF9gxek0LS3Uq1kGzI2gzTBiE21SomQ/h2qnxDxC8lj49n6LWWFJOCC9
 ak8Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=SsENlgM7
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jiri Pirko <jiri@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Aug 15, 2023 at 05:17:09AM CEST, kuba@kernel.org wrote:
>On Fri, 11 Aug 2023 21:03:34 +0100 Vadim Fedorenko wrote:

[...]


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
>Is the registration flow documented? It's a bit atypical so we should
>write some pseudocode somewhere.

We have examples in 3 drivers with actual code. But sure, could use some
documentation.


>
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
>Where is rclk_dev_name filled in?

Leftover, should be removed.

[..]

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
