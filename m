Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E632272D51B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 01:45:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8154540932;
	Mon, 12 Jun 2023 23:45:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8154540932
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686613528;
	bh=z9IxACZG14nV/kFwkzl4j5vMsvIYQJaRVJOH0TTDrvA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=byuSGKEwNQRKVmyugdfBKYk5jLcnrnCPbfmcyUuNvz5YyaZ7hR623gShmXLrmQ7ZD
	 G6s8ZCPIumLLVHgwmes0xg6AdkfISxNH5K/XkcdFuE4x5PNUiHFbqk/phDSmRk4ZlU
	 NHTvE/hRRQKdATfmk1+uBJqrc957CdFU1iBC0xvrQsjUyaXCpOxnb9lu1mJ22Jy2ki
	 OieiSYdjNfSlELT/EGKkVbkmb/RuYbL+no4Sa2x/70b6fC4EGXaGU4R9Mmx+Vr93R6
	 V5liXtBBNC9s1gueBwKcXLMIN5PGsrMSvrcITNhpi4eg/TSS9tvltP+ADroAnnmrbr
	 aaY/hb3OHn5rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F5HZTjn1_URz; Mon, 12 Jun 2023 23:45:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2086E40918;
	Mon, 12 Jun 2023 23:45:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2086E40918
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE82D1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A367660D70
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:45:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A367660D70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZxJzvmmffv5R for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 23:45:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F5C960B36
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F5C960B36
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 23:45:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0655461786;
 Mon, 12 Jun 2023 23:45:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6862DC433EF;
 Mon, 12 Jun 2023 23:45:16 +0000 (UTC)
Date: Mon, 12 Jun 2023 16:45:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20230612164515.6eacefb1@kernel.org>
In-Reply-To: <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686613518;
 bh=wiSNyZ18E7j0+vGKZGV00souZm1bq4VUlxQ/AgkGk+M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=J/MbfG7MqX/927qmjvcVnKooeZ6fLV4ndi1AMb2SvblEdbUjlOz3OsBYSj7Hb2YxX
 p1UDScovbSf5bMhh7Wj5E9CIrguJ/9jISL1SL83WoQmh0XafXF+1pYkc/JWTCq0QZP
 w8RNro1J+vNs9ODuH5Ry+9ABjZh9vMybvqv3FnW/Xa1DFv4gHlkZUV3ONDL42+45kw
 9NkF5K7GWjvQHRD84IifFKUHQefevWPmINHyeKebUTarV7OZnETKsrrZdIvVFml7YD
 Q5pXXPFTmIdOttGbUj2lZ+nxblghEnDRRXezc++cLqoqTE3lmI61WYh+dktineV29n
 VYg0dlPUojOKg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=J/MbfG7M
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
 ricardo.canuelo@collabora.com, jiri@resnulli.us, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
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

On Fri,  9 Jun 2023 14:18:46 +0200 Arkadiusz Kubalewski wrote:
> +	xa_for_each(xa_pins, i, ref) {
> +		if (ref->pin != pin)
> +			continue;
> +		reg = dpll_pin_registration_find(ref, ops, priv);
> +		if (reg) {
> +			refcount_inc(&ref->refcount);
> +			return 0;
> +		}
> +		ref_exists = true;
> +		break;
> +	}
> +
> +	if (!ref_exists) {
> +		ref = kzalloc(sizeof(*ref), GFP_KERNEL);
> +		if (!ref)
> +			return -ENOMEM;
> +		ref->pin = pin;
> +		INIT_LIST_HEAD(&ref->registration_list);
> +		ret = xa_insert(xa_pins, pin->pin_idx, ref, GFP_KERNEL);
> +		if (ret) {
> +			kfree(ref);
> +			return ret;
> +		}
> +		refcount_set(&ref->refcount, 1);
> +	}
> +
> +	reg = kzalloc(sizeof(*reg), GFP_KERNEL);

Why do we have two structures - ref and reg?

> +	if (!reg) {
> +		if (!ref_exists)
> +			kfree(ref);

ref has already been inserted into xa_pins

> +		return -ENOMEM;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
