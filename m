Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C260784E8A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 04:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92B36416FA;
	Wed, 23 Aug 2023 02:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92B36416FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692756714;
	bh=DEQ3hu11jJVZqpv371PzFc4VVBUifjWkzCdDCWRK910=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FEAp4UqFrAh4lvUDigo3/jRwWhsN+/jP8/Ql8YXAYLEldgzTNDIv4awxEioxVc4O6
	 vj3Si9CLxwp1cb0xkDfElIAjCQnJG6+LpAPmA+rZ+espDgULjR8zma2+rkiMtZsrIN
	 Gif2jfkUHah+Du1x/eRu2XY69Ad0ZYhBORUXzjaj4JOhpPKuYU6n1NSZ1do3WC0JJB
	 3n3xdEqPxeTbrEXRQCk/8hREyxGa49O73QXET9at+3/4PaqymnO7Ol5CLmvx9nE9mF
	 tFWSIHrFUpmU7zw/+TMwiV5S/zyEc49cIRo0JiKADA0BEJa1E1Yo+9+fQofJuCwacF
	 BYWZCzeBOitIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QFfiWlwaKQg2; Wed, 23 Aug 2023 02:11:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58674416F8;
	Wed, 23 Aug 2023 02:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58674416F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C25381BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 02:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 96E3E818CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 02:11:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96E3E818CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9dSnuah8I2W for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 02:11:47 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6F10818C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 02:11:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6F10818C4
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7FDCA60B38;
 Wed, 23 Aug 2023 02:11:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48F2FC433C8;
 Wed, 23 Aug 2023 02:11:44 +0000 (UTC)
Date: Tue, 22 Aug 2023 19:11:43 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230822191143.119c3d72@kernel.org>
In-Reply-To: <20230822230037.809114-6-vadim.fedorenko@linux.dev>
References: <20230822230037.809114-1-vadim.fedorenko@linux.dev>
 <20230822230037.809114-6-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692756704;
 bh=bOWWtdMrF6LJFfQBK2OyDOfqMh/CaDEbXH4MQR6WIx8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G/strxObU3F+RipWOvkJ6xnnffkARZQjH0Z3vyUGjNETnFW6R07oUa7NDJSn1yNXK
 ZmscwhsPWeU/cwMl8VWfAHOsnRWnf+IKuw5RhHg5vCBzfL0IrA2p9Y9xy/WfGM+WXm
 k+qtph6ry3KA87EExFLcNihAo1uKmOBnsY9rkeO3M/EHt4DhG/ScQZeK7GC2NOUbqN
 Bi7CWDmv567jULq25ZYlNnHPLqG981FISRLvN5BGNM/2FpBZXRD7PONfr8bkmBcyXQ
 gJyOiRLOptSsD6C4yBtttIrsw1dHaBzyVTtzBHVMGe3q0qEu1W+rUcuW6WxpSoabfA
 9nnHUqipQXyEw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=G/strxOb
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 5/9] netdev: expose DPLL
 pin handle for netdevice
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
 netdev@vger.kernel.org, Jiri Pirko <jiri@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 23 Aug 2023 00:00:33 +0100 Vadim Fedorenko wrote:
> static int
>  dpll_msg_add_mode(struct sk_buff *msg, struct dpll_device *dpll,
> @@ -340,6 +352,7 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
>  
>  	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
>  	ASSERT_NOT_NULL(ref);
> +
>  	ret = dpll_msg_add_pin_handle(msg, pin);
>  	if (ret)
>  		return ret;

Chunk out of place

> diff --git a/include/linux/dpll.h b/include/linux/dpll.h
> index 2202310c10cd..9b612038b538 100644
> --- a/include/linux/dpll.h
> +++ b/include/linux/dpll.h
> @@ -101,6 +101,26 @@ struct dpll_pin_properties {
>  	struct dpll_pin_frequency *freq_supported;
>  };
>  
> +#if IS_ENABLED(CONFIG_DPLL)
> +
> +size_t dpll_msg_pin_handle_size(struct dpll_pin *pin);
> +
> +int dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin);
> +
> +#else
> +
> +static inline size_t dpll_msg_pin_handle_size(struct dpll_pin *pin)
> +{
> +	return 0;
> +}
> +
> +static inline int dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin)
> +{
> +	return 0;
> +}
> +
> +#endif

The only empty line between #if and #endif that's needed is the one
between the two static inline helpers

>  struct dpll_device *
>  dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
>  
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 0896aaa91dd7..36a872774173 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -34,6 +34,7 @@
>  #include <linux/rculist.h>
>  #include <linux/workqueue.h>
>  #include <linux/dynamic_queue_limits.h>
> +#include <linux/dpll.h>

Please no includes in netdevice.h, it's included in way too many places.

All you need is a forward declaration of struct dpll_pin, AFAICT.

> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index ce3117df9cec..2e7df321f345 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -377,6 +377,8 @@ enum {
>  	IFLA_GSO_IPV4_MAX_SIZE,
>  	IFLA_GRO_IPV4_MAX_SIZE,
>  
> +	IFLA_DPLL_PIN,
> +

No empty lines, no idea who started this trend but let's stop it.

>  	__IFLA_MAX
>  };
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
