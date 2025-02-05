Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC29A2891E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 12:23:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E077783A76;
	Wed,  5 Feb 2025 11:23:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jus-LOpnUv9P; Wed,  5 Feb 2025 11:23:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADE5583A6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738754613;
	bh=aCUh/3MV0sfiCuzeguwXRWA7Ujo0vqkl1NgzY9hweC4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f70mF3ak2p/6doiAU0s7Gcf5aabIBwjBIOiFeApc7lDrVbskpYv2IQfOAc9sdltba
	 25fIqXf1zHqCN9EfNuqQDJgJ6Usznh/BaOuuVz8omP95atrgtK1W3jQoMTZVRNbCu+
	 YS75y1NrgscPgRmMZTKfQEJmuh59nolDXKj82JJiFfSN+Z1KS+G9jZn1gbJERv2Kv/
	 J9eZvVc6pINzc/svKJ2M+QmMdu2bKP6MtBlHDmrfIf1M4grNUuDBdFrr4iKOEcFYUG
	 UWn4v9LyYhAsACXJazW2Tw7tqd/EE0M3DHcXY6VQPFGCVw+SfRiaGZ0e01fmawcxx8
	 pF4pon/oS9daw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADE5583A6C;
	Wed,  5 Feb 2025 11:23:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DD1C612A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:23:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C12F083A62
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:23:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6_9kHRmwPVQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 11:23:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 871DA83A65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 871DA83A65
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 871DA83A65
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:23:30 +0000 (UTC)
X-CSE-ConnectionGUID: BhNQrd8FTY+N9SCc0J5a6Q==
X-CSE-MsgGUID: p0PGKuhnQ46iFOht7mxf/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49963664"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="49963664"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 03:23:30 -0800
X-CSE-ConnectionGUID: +vAhKIm5QJi8tT6ww1tbFg==
X-CSE-MsgGUID: kJ44STgsRvW7OZ3VEmtcug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111314891"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 03:23:28 -0800
Date: Wed, 5 Feb 2025 12:19:55 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>,
 Qiuxu Zhuo <qiuxu.zhuo@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Kees Cook <kees@kernel.org>, Nick Desaulniers <nick.desaulniers@gmail.com>
Message-ID: <Z6NJUIQ+lzhBE5Yk@mev-dev.igk.intel.com>
References: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738754611; x=1770290611;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kTPA2cEJjPwaoqHnfY+66itOh73qdURMb0x4kl+2wbM=;
 b=cR4XNF0E/vw3cKu5iB12jpU/kQe7L6zswafDZmizE/csjDraNPGjJ85m
 kj5FcDY+mTRld7+PuMGbnfbVaqxyEPPQblcMlUxQiWleWtp/RZkNVcbQv
 x3Y2Bz52rrTkBDiZLDdYy0FT7OQ+TaM2SWl5J7VTSf5SXeaH8nKWqL05o
 wQEp7/0JGVZU4z4qGQOfyUOup+fdPXqn/KX9N64OkMSk7bXKq3N/ayKdI
 fbTVY1USaeSU6cYmqxLibvOk+3kdmgx4Tr2cARu1OT1qMouJVe2eouajd
 /6EoNvTZTYO+7RXLw+xrEuDOHVaWQdPZtCmQZJAMe0U+wrzutovou5GWI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cR4XNF0E
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix
 compilation on gcc 7.5
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

On Wed, Feb 05, 2025 at 11:42:12AM +0100, Przemek Kitszel wrote:
> GCC 7 is not as good as GCC 8+ in telling what is a compile-time const,
> and thus could be used for static storage. So we could not use variables
> for that, no matter how much "const" keyword is sprinkled around.
> 
> Excerpt from the report:
> My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
> 
>   CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initialization for 'ice_health_status_lookup[0].solution')
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>                                ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initialization for 'ice_health_status_lookup[0].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer element is not constant
>    "Change or replace the module or cable.", {ice_port_number_label}},
>                                               ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initialization for 'ice_health_status_lookup[1].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
> Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
> Closes: https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> I would really like to bump min gcc to 8.5 (RH 8 family),
> instead of supporting old Ubuntu. However SLES 15 is also stuck with gcc 7.5 :(
> 
> CC: Linus Torvalds <torvalds@linux-foundation.org>
> CC: Kees Cook <kees@kernel.org>
> CC: Nick Desaulniers <nick.desaulniers@gmail.com>
> ---
>  drivers/net/ethernet/intel/ice/devlink/health.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
> index ea40f7941259..4bc546bafad1 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/health.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/health.c
> @@ -23,12 +23,12 @@ struct ice_health_status {
>   * For instance, Health Code 0x1002 is triggered when the command fails.
>   * Such codes should be disregarded by the end-user.
>   * The below lookup requires to be sorted by code.
> + * #defines instead of proper const strings are used due to gcc 7 limitation.
>   */
>  
> -static const char *const ice_common_port_solutions =
> -	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.";
> -static const char *const ice_port_number_label = "Port Number";
> -static const char *const ice_update_nvm_solution = "Update to the latest NVM image.";
> +#define ice_common_port_solutions	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex."
> +#define ice_port_number_label		"Port Number"
> +#define ice_update_nvm_solution		"Update to the latest NVM image."

>  
>  static const struct ice_health_status ice_health_status_lookup[] = {
>  	{ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_STRICT, "An unsupported module was detected.",
> 
> base-commit: 4241a702e0d0c2ca9364cfac08dbf134264962de

Thanks for fixing
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> -- 
> 2.46.0
