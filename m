Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A49859F65
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 10:16:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7524240751;
	Mon, 19 Feb 2024 09:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZmrF29zJ__wb; Mon, 19 Feb 2024 09:15:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96C6D405FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708334158;
	bh=NZfdVdpv1YhIA6JLe7ba9Pzh3jDlJK2CcS0K/cmhsGA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5f8M2WcduQLqFxry2hPQUktgX8wFDIOV8D0K0URFwdAPRF4oRbGooC0SdTHiOrKH9
	 RHZIf3kkK6Sk001q5OhRrRge5zM/euLp6hzhnWK1QUajv0qv6NEVt9eEOSZT8Qz3DA
	 n2WB7e96Z+7hhf9YuLsCvdCInrXQYyV61DponciZjaNfJKFaCYUsn41NfMPA+tl5qa
	 80B913853KBsl2kukkTOcQAboVPVuI7NuQguwQTcv+NC7sZa7JuBf39F8O+xgdoHYk
	 06+9rVqHgOvagiTOX7tlQrn/5nCjFIqOuXsLV4WuK5yK1fVLBmgc/GjyoemBtezU01
	 5XsZzzsfgZM4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96C6D405FF;
	Mon, 19 Feb 2024 09:15:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D47571BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF1B140607
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cyp0AlzSYKn9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 09:15:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A233A40144
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A233A40144
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A233A40144
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 09:15:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 74995CE105C;
 Mon, 19 Feb 2024 09:15:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFBB9C43390;
 Mon, 19 Feb 2024 09:15:44 +0000 (UTC)
Date: Mon, 19 Feb 2024 09:15:42 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240219091542.GS40273@kernel.org>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
 <20240210220109.3179408-2-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240210220109.3179408-2-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708334146;
 bh=9VV68o31k6fg5obU3U9SI3UIbPyFr2icRfRLTVpufGg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GApodCAMX12icns9otjHfa5LlWl9vlVRhpuMoFpoeSfoOIbxI6eJb1kVF0MfINDuJ
 p7YI+W8NaaHtEY8hletGL3G/i2fuJ0Hxk/NfeqUeAf4qkZ6cyklfyoGcdSvkCfux+L
 8zRHPupywDI2wlne5gVDsPzT0yafnRRFAVGKXnaE90YFw9cnwG++Exh6f9Ncy0zO+I
 VGR8G4TErUJhvNzxg6EcgrBsBurmdBs2TQYh4Y62pkUXQ3CqZ2VgsA8JSApG4pZBSQ
 1AZhYhry8JXRehJcLxxvMte4T4VViq76O8H3YF+sDTTOXD1nlXR9ffcowS/2GJHYdw
 n7si8VBkkjW/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GApodCAM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: simplify pci ops
 declaration
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Alan Brady <alan.brady@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Feb 10, 2024 at 02:01:08PM -0800, Jesse Brandeburg wrote:
> The igb driver was pre-declaring tons of functions just so that it could
> have an early declaration of the pci_driver struct.
> 
> Delete a bunch of the declarations and move the struct to the bottom of the
> file, after all the functions are declared.
> 
> Reviewed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

...

> @@ -219,19 +203,6 @@ static const struct pci_error_handlers igb_err_handler = {
>  
>  static void igb_init_dmac(struct igb_adapter *adapter, u32 pba);
>  
> -static struct pci_driver igb_driver = {
> -	.name     = igb_driver_name,
> -	.id_table = igb_pci_tbl,
> -	.probe    = igb_probe,
> -	.remove   = igb_remove,
> -#ifdef CONFIG_PM
> -	.driver.pm = &igb_pm_ops,
> -#endif
> -	.shutdown = igb_shutdown,
> -	.sriov_configure = igb_pci_sriov_configure,
> -	.err_handler = &igb_err_handler
> -};
> -
>  MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
>  MODULE_DESCRIPTION("Intel(R) Gigabit Ethernet Network Driver");
>  MODULE_LICENSE("GPL v2");

...

> @@ -10169,4 +10142,24 @@ static void igb_nfc_filter_restore(struct igb_adapter *adapter)
>  
>  	spin_unlock(&adapter->nfc_lock);
>  }
> +
> +#ifdef CONFIG_PM
> +static const struct dev_pm_ops igb_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
> +	SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
> +			igb_runtime_idle)
> +};
> +#endif
> +
> +static struct pci_driver igb_driver = {
> +	.name     = igb_driver_name,
> +	.id_table = igb_pci_tbl,
> +	.probe    = igb_probe,
> +	.remove   = igb_remove,
> +	.driver.pm = &igb_pm_ops,

Hi Jesse,

the line above causes a build failure if CONFIG_PM is not set.

> +	.shutdown = igb_shutdown,
> +	.sriov_configure = igb_pci_sriov_configure,
> +	.err_handler = &igb_err_handler
> +};
> +
>  /* igb_main.c */

...
