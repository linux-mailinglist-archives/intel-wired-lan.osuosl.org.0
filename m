Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C36B6E0E5A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 15:17:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6EF0041E55;
	Thu, 13 Apr 2023 13:17:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EF0041E55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681391858;
	bh=70pOhtoNHIkFcbqsP4in69GgqvUnm6wS9/Eq5vf5tS4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6KADnjmRUit/9gfjLn2aLsuOgxws4v8sxM23xV765FtqyBzvAA7xjZCGZcrhehrHR
	 Zw/7UJnavtGN9h1mZPzfCLkaHtCsm4ViZGoCqox8dC8NbRW24VIY9f+0JBdn/OBOgg
	 t+11ZntzlAb+PXo8JEj+3oAOcv/jORPbzRXfIpdoIbWLZT7Vh1k4IrHaPJfH2WYmFl
	 D70z/O68sNyT7JjXSjYkMQbM+ItI9e4Ze7yelyduioP9R6aIYY8/QuBb6z1+PTY7q7
	 VjVh3Q65N6IQbfEukJWUiZfAm9U1auPwiFufs/AjxApEJQXNneFyggN3sv2meQJhXw
	 vm3xT42XY6dZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQj-xiYvV1bs; Thu, 13 Apr 2023 13:17:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4267B400C7;
	Thu, 13 Apr 2023 13:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4267B400C7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F3B41BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 13:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36C8384011
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 13:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36C8384011
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxQDLlau7KFz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 13:17:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B0688400D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B0688400D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 13:17:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E201463DED;
 Thu, 13 Apr 2023 13:17:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6812C433D2;
 Thu, 13 Apr 2023 13:17:29 +0000 (UTC)
Date: Thu, 13 Apr 2023 16:17:26 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20230413131726.GQ17993@unreal>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681391850;
 bh=7uIdzByMCPIBnJwGBw9YRimVbN0v8WEcqNv51/alYJU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=REpMDWaIBoLA+IPnRO57KORI9zHTj2xncqoTk5RkrSSPU6NQ7dPvhfKkz2aSHQ5qq
 1jv2sNAXAJfapTbAJFjM8/4kpyvTe3Erv6AfIwWTeJ94CKu4jzS8olCfG9arOtjH2x
 Ua97KXyVwxbpgkZdfhIE3CtVckFUPBiUraFqB3qaQpjb/FdsXAF5HG8ic31ry+Yn/I
 ig4XygzltSNgmZAg8aoA6eRDNsTFjzGkK8IgTFAUdkE+zfC4fbJH7Zi67sNgh+dhNE
 1DGQtGlhqBicsBrg0ewL8HMW15yHQSkz+/waHqeiJ6rNRjFUfAHv+urJLP/r1YYkOR
 rU9ihvvN8gbzQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=REpMDWaI
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Cc: jiri@resnulli.us, corbet@lwn.net, netdev@vger.kernel.org,
 richardcochran@gmail.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 12, 2023 at 03:38:11PM +0200, Arkadiusz Kubalewski wrote:
> If Clock Generation Unit and dplls are present on NIC board user shall
> know its details.
> Provide the devlink info callback with a new:
> - fixed type object `cgu.id` - hardware variant of onboard CGU
> - running type object `fw.cgu` - CGU firmware version
> - running type object `fw.cgu.build` - CGU configuration build version
> 
> These information shall be known for debugging purposes.
> 
> Test (on NIC board with CGU)
> $ devlink dev info <bus_name>/<dev_name> | grep cgu
>         cgu.id 8032
>         fw.cgu 6021
>         fw.cgu.build 0x1030001
> 
> Test (on NIC board without CGU)
> $ devlink dev info <bus_name>/<dev_name> | grep cgu -c
> 0
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst     | 14 +++++++++
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 30 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c    |  5 +++-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 12 ++++----
>  drivers/net/ethernet/intel/ice/ice_type.h    |  9 +++++-
>  5 files changed, 62 insertions(+), 8 deletions(-)

<...>

>  Flash Update
>  ============
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index bc44cc220818..06fe895739af 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -193,6 +193,33 @@ ice_info_pending_netlist_build(struct ice_pf __always_unused *pf,
>  		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
>  }
>  
> +static void ice_info_cgu_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
> +{
> +	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
> +		struct ice_hw *hw = &pf->hw;
> +
> +		snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.id);
> +	}

Please use kernel coding style - success oriented flow

struct ice_hw *hw = &pf->hw;

if (!ice_is_feature_supported(pf, ICE_F_CGU))
  return;

snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.id);


However, it will be nice to have these callbacks only if CGU is
supported, in such way you won't need any of ice_is_feature_supported()
checks.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
