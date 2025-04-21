Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5937CA9518A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 15:22:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D232C812E5;
	Mon, 21 Apr 2025 13:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5isbzZuNdfUX; Mon, 21 Apr 2025 13:22:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A344812E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745241760;
	bh=QW0iMo6yzF5GPDGIc+Ipe4a7z9cuV1jVdBOAXYFzUGo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8YVUC/sGyLfpc2L8MhSadHtApjCWYcS1C3+FaMr2fFwiEB3dEGQbfkVTXGbT7DJc5
	 YldUtHgAnYFBU0v3UNfeYRh2j54V43hNbk3rhYkX0XNb8xOnmUMeRzwj+8xqH14zQx
	 a6YwprmSBzTLZpQ+YgcIjbsVzDQrv6qBgSpgoc4A3waU46LS0H250SBLpgQ9UCZmm4
	 51gjmFOPpzID8k45o52aItmItGD7QF7rvxPpsMtKRanh+5ECDljhWOkh68RTX5ikab
	 NyIEtu63sdILgzkS667dGp/UKtNBhyzIgT6HOjUMtoNHk4Je9+v8sVmpgK6nc3hCwv
	 RxAX7IeN5PBNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A344812E7;
	Mon, 21 Apr 2025 13:22:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 05AA168
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB3FF40BA5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:22:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A8-rtdzYSQz1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 13:22:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6AE3A40B42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AE3A40B42
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6AE3A40B42
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:22:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DF1BE61155;
 Mon, 21 Apr 2025 13:22:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 532B2C4CEF0;
 Mon, 21 Apr 2025 13:22:32 +0000 (UTC)
Date: Mon, 21 Apr 2025 14:22:30 +0100
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Message-ID: <20250421132230.GE2789685@horms.kernel.org>
References: <20250415175115.1066641-1-arkadiusz.kubalewski@intel.com>
 <20250415175115.1066641-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250415175115.1066641-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745241755;
 bh=O/Wl7D2AALWkD5h899UW87JVEqspsVHGQ7Vw+1YDJhw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XcEVkLLa18wZ/O/fdSVxTbdHCC+nICbmRPV8gkt1GbLw7ut8rPyP+enBmJ8BpaqWJ
 nhpRMbAjrqJJPDT5ZpWQYYQkjkuGYgbkV5t/cml7Uf0qhK7BJmuXBvliG7SKCkeM0h
 RT1Uhlqj/IoUY/8H5uRs5o7QDnS66tDCLJAO8MjYrW8r/p3Cm39rfDdjqd8bqjD7Uk
 oum9ogqBnYatc27BOKnnqIP6WmZnHmdGKD/PL4otQH0S8eNOF3ArFjj9dcFEIlxZH8
 xkFgqZn6HPRZ1iYjeCIPDxDFkUFzjI33Y4EKTRSkYhP02vdmbzlHhQzYvyhj7EBnp7
 PFxw2WOx4gmJA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=XcEVkLLa
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/3] dpll: add reference
 sync get/set
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

On Tue, Apr 15, 2025 at 07:51:14PM +0200, Arkadiusz Kubalewski wrote:
> Define function for reference sync pin registration and callback ops to
> set/get current feature state.
> 
> Implement netlink handler to fill netlink messages with reference sync
> pin configuration of capable pins (pin-get).
> 
> Implement netlink handler to call proper ops and configure reference
> sync pin state (pin-set).
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

...

> diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
> index 2b6d8ef1cdf3..b77e021356ca 100644
> --- a/drivers/dpll/dpll_core.h
> +++ b/drivers/dpll/dpll_core.h
> @@ -56,6 +56,7 @@ struct dpll_pin {
>  	struct module *module;
>  	struct xarray dpll_refs;
>  	struct xarray parent_refs;
> +	struct xarray sync_pins;

nit: Please add sync_pins to the Kernel doc for struct dpll_pin.

     And, separately, it would be quite nice if documentation
     of the non-existent rclk_dev_name member removed too.

>  	struct dpll_pin_properties prop;
>  	refcount_t refcount;
>  	struct rcu_head rcu;

...
