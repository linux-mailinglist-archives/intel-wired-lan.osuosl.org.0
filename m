Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF72876E9A1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 15:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16192613CC;
	Thu,  3 Aug 2023 13:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16192613CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691068313;
	bh=WkmhkbGgz57ABI3HeEMWAdkDrKwb14N+ycvLShD164Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6Gh77a9OF1/c1EzXkMeqvMb/bSMpiFi+e3UlE8o6YI7BmdiHX1NyJfSu/pZOUtzU3
	 VD+IkXNlayh4pKNqEN1z72xIN2XZcRtUCCP0ZSaDa+Yyjz2Jsgsw7785/JAZa3C+Dl
	 AjgP+be0W/ozsSvZLTHy6wg1Lu0WBzg5QpNmb6Yjc7RnVY+QxK1wsMOr8jJzPSJpAE
	 DwJ+rbdi7TN6ErHKl6OfeViU3VGPKicfmBdWvsM4dHHPl0C1BKENP2eOqTMVP83v/C
	 XK/i+QbQQbHRVFnH259rJ5et/ZJgm4oAUZK+Gy82VBlJ66ztiEWlSar48KuAbobqYE
	 ctImJah7SFc4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0DxO1X9iYO_t; Thu,  3 Aug 2023 13:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B1EC60D80;
	Thu,  3 Aug 2023 13:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B1EC60D80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B53B31BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 13:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A8C38318C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 13:11:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A8C38318C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W-3isDiwnFoI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 13:11:33 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A89D9833CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 13:11:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A89D9833CD
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2C7BF61D49;
 Thu,  3 Aug 2023 13:11:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A311C433C8;
 Thu,  3 Aug 2023 13:11:30 +0000 (UTC)
Date: Thu, 3 Aug 2023 16:11:26 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20230803131126.GD53714@unreal>
References: <20230801115235.67343-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230801115235.67343-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691068291;
 bh=NFgjhsYWKg2kV+IdSU2QgpqJ/xaClNZ3CuB7+zRizSM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QItRHDP0Kz/gHLGpJUI7kH4nlfINPbSSuXKkXQAeJswaJN1lpxtIG0ydN0DoqQyw+
 4ktIX+sNgpp6y3H6P5s6X1YoxaFn9loWWSL+ebUxdGw5JGT8i8PaHHmvgWY5x7yfa2
 8fqHWuvaK4Tz2r6EJGjalQPqv7Bqv3CIxQHtFNw1rBJTwK66yNCtyv+ThOHyw/AiwZ
 uG0VqyjFKqWEhi/26P97oo4sS4D+HRlyTUw0vMN2sw1F/dB9LkdWRHjSbVMFWabbIK
 KlBti9mA5dUQqdGuk9H7OYp12UK1qeka+W2rnniWjxO7zUowFfsykM+cHSdiC0+2GH
 IEBBzezxejJLA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QItRHDP0
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Block switchdev mode
 when ADQ is acvite and vice versa
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 01, 2023 at 01:52:35PM +0200, Marcin Szycik wrote:
> ADQ and switchdev are not supported simultaneously. Enabling both at the
> same time can result in nullptr dereference.
> 
> To prevent this, check if ADQ is active when changing devlink mode to
> switchdev mode, and check if switchdev is active when enabling ADQ.
> 
> Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 +++++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 6 ++++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index ad0a007b7398..2ea5aaceee11 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -538,6 +538,11 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
>  		break;
>  	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
>  	{
> +		if (ice_is_adq_active(pf)) {
> +			dev_err(ice_pf_to_dev(pf), "switchdev cannot be configured - ADQ is active. Delete ADQ configs using TC and try again\n");

It needs to be reported through netlink extack.

> +			return -EOPNOTSUPP;
> +		}
> +
>  		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
>  			 pf->hw.pf_id);
>  		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
