Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDB4771645
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Aug 2023 19:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FB5D81A64;
	Sun,  6 Aug 2023 17:14:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FB5D81A64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691342084;
	bh=Z+JBV0iLNuwx/hwkxFejA+1cDu6EfOvcjIyi7YNeLJY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kE38Rb9+huyw4pSr0w46jl1cpHcVYuiYBo9cz076eQ9UEUxE0LnVNmY5zEWYOIP+9
	 TTBKh8ckoMaUJdoNseB9QuaxEWaR6+4OLFvXP3yEpb6Jjh6Twx0dDI/wfHHMnJ+MAZ
	 5zGqfPSr+O/E/eMz9RvPwdmXPNLh3r7GNaLaIDr+/389Y6yNeH+HsRbeEtzIqLpxzW
	 nWLMq42razV1jiMsa9Qd8pInnGd7P9PCf+egz+BcKK0NlD6vSL0Y/H5lq8jOsboEZm
	 VPN4IamAlCSyXZsoxp/XHsON7HjzrEKHVOjahgoqY+oZ4vDzTjNcQbbeubYgCG91je
	 0tZC7mht8paPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GMklSXKPivev; Sun,  6 Aug 2023 17:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1526380BDB;
	Sun,  6 Aug 2023 17:14:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1526380BDB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 572B81BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Aug 2023 17:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D863E818C4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Aug 2023 17:13:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D863E818C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CMD06m90QQ7d for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Aug 2023 17:13:37 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E29A81375
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Aug 2023 17:13:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E29A81375
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EE1AA6119D;
 Sun,  6 Aug 2023 17:13:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DB64C433C7;
 Sun,  6 Aug 2023 17:13:32 +0000 (UTC)
Date: Sun, 6 Aug 2023 19:13:30 +0200
From: Simon Horman <horms@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZM/Uuhl4GwOWjku9@vergenet.net>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
 <20230804190454.394062-9-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230804190454.394062-9-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691342015;
 bh=8VwOuLhwvYu1ICpyXAxr3nOtAto35ExIqTjSqrKxShA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A7yDcOUAGy0TOQasoI8de3nHnwJ2aMJwoAgm5qc76YoNlTGrCKzDYGFSKUUCm2f7q
 7GNh6F7t5sqjHV9GPTXeB+J+8OTqH17Xvfyca0Xk4Bt1DcMCbyJfOdiLU2bvzGGPnO
 BH99LhiUgcBc9+VVqN8ybZurWn4PRoUG26Zf4hQRs8y8wWOkfrmxTWMxXBHZ3mZX+z
 5AI4KriL1loB13bBFWQh6RCxSUjORPKOc7E2OFmydAJAQ/X563ATbBkbTTkhdFpX4D
 JWdL/yJGiKpmELsGObQNWh9g348nszbZ47GNIBPKVUyFURGvioOqQfTzITiOlrIdI/
 Cq40xjQ/3fxBw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=A7yDcOUA
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 8/9] ptp_ocp: implement
 DPLL ops
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
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 04, 2023 at 08:04:53PM +0100, Vadim Fedorenko wrote:
> Implement basic DPLL operations in ptp_ocp driver as the
> simplest example of using new subsystem.
> 
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Jiri Pirko <jiri@nvidia.com>

Hi Vadim,

...

> diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig
> index 32dff1b4f891..e4da62ac9a9f 100644
> --- a/drivers/ptp/Kconfig
> +++ b/drivers/ptp/Kconfig
> @@ -177,6 +177,7 @@ config PTP_1588_CLOCK_OCP
>  	depends on COMMON_CLK
>  	select NET_DEVLINK
>  	select CRC16
> +	select DPLL
>  	help
>  	  This driver adds support for an OpenCompute time card.
>  
> diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c

...

> +static int ptp_ocp_dpll_frequency_set(const struct dpll_pin *pin,
> +				      void *pin_priv,
> +				      const struct dpll_device *dpll,
> +				      void *dpll_priv, u64 frequency,
> +				      struct netlink_ext_ack *extack)
> +{
> +	struct ptp_ocp_sma_connector *sma = pin_priv;
> +	struct ptp_ocp *bp = dpll_priv;
> +	const struct ocp_selector *tbl;
> +	int sma_nr = (sma - bp->sma);
> +	int val, i;
> +
> +	if (sma->fixed_fcn)
> +		return -EOPNOTSUPP;
> +
> +	tbl = bp->sma_op->tbl[sma->mode];
> +	for (i = 0; tbl[i].name; i++)
> +		if (tbl[i].frequency == frequency)
> +			return ptp_ocp_sma_store_val(bp, val, sma->mode, sma_nr);

val appears to be used uninitialised here.

As flagged by clang-16 W=1, and Smatch.

> +	return -EINVAL;
> +}

...

> @@ -4233,8 +4437,40 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  
>  	ptp_ocp_info(bp);
>  	devlink_register(devlink);
> -	return 0;
>  
> +	clkid = pci_get_dsn(pdev);
> +	bp->dpll = dpll_device_get(clkid, 0, THIS_MODULE);
> +	if (IS_ERR(bp->dpll)) {
> +		dev_err(&pdev->dev, "dpll_device_alloc failed\n");
> +		goto out;
> +	}
> +
> +	err = dpll_device_register(bp->dpll, DPLL_TYPE_PPS, &dpll_ops, bp);
> +	if (err)
> +		goto out;
> +
> +	for (i = 0; i < OCP_SMA_NUM; i++) {
> +		bp->sma[i].dpll_pin = dpll_pin_get(clkid, i, THIS_MODULE, &bp->sma[i].dpll_prop);
> +		if (IS_ERR(bp->sma[i].dpll_pin))

The function will return err.
Should it be sett to an error value here?

As flagged by Smatch.

> +			goto out_dpll;
> +
> +		err = dpll_pin_register(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops,
> +					&bp->sma[i]);
> +		if (err) {
> +			dpll_pin_put(bp->sma[i].dpll_pin);
> +			goto out_dpll;
> +		}
> +	}
> +	queue_delayed_work(system_power_efficient_wq, &bp->sync_work, HZ);
> +
> +	return 0;
> +out_dpll:
> +	while (i) {
> +		--i;
> +		dpll_pin_unregister(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops, &bp->sma[i]);
> +		dpll_pin_put(bp->sma[i].dpll_pin);
> +	}
> +	dpll_device_put(bp->dpll);
>  out:
>  	ptp_ocp_detach(bp);
>  out_disable:

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
