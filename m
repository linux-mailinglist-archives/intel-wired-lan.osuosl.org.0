Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCA4A3DD71
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 15:56:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5305640815;
	Thu, 20 Feb 2025 14:56:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 94rd-AxK5Rrf; Thu, 20 Feb 2025 14:56:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87D8240704
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740063411;
	bh=GOFTaz7LPAvCWfJxsIva/p2LnVxagwILaX5Xxw552oY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K5TNsfQ8RV9iStIuY5UlcLIu4KyyDnScECqmbr0FH/G0d+uLWxTigCtapJ+OdrirS
	 rfMeHk/HkEWepcagFViF04i52XxCPQNUjb2D4mg7J2Pv3c4fJT+/HQJQ48iVtMpHDV
	 RZ8oY0RryGy+yUjHF5/LaDGR1YXfY3B7liH949O01u1s3ljK2/x2+23LsIiLd8yyld
	 HBP390JJoUK/UZp4msOiJk7OU2f4YjaSlsnyUoBQaUCtf0/9Z04xs4G6lXXp5HwdfG
	 eNjT1sNZK6x7vQr8ll+/+q7Y/C/AsJpmFQHOTHiqMgwdFfPCzF7RAU0ENyEYvOjtst
	 emCLOZaIOvzlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87D8240704;
	Thu, 20 Feb 2025 14:56:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A9F0CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7689B406D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:56:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sya44LhGNM-C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 14:56:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 948654053C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 948654053C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 948654053C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:56:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 49DF35C5E72;
 Thu, 20 Feb 2025 14:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A59A0C4CED1;
 Thu, 20 Feb 2025 14:56:44 +0000 (UTC)
Date: Thu, 20 Feb 2025 14:56:42 +0000
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Message-ID: <20250220145642.GZ1615191@kernel.org>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-3-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214085215.2846063-3-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740063407;
 bh=QiwnkF0UwAVnyULwhSlHoGTh1+lJb0Epz5yXz5sNWO0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K+4m2CYpSkgijm+ur0lwT45RhojCSbFVS/e4S+PVccsAmjOE0DCvfiEWhqgKYLTlc
 LY/hEzRjK6a2UY1fyZwouKCHJLbGUxcUpv/szZgUW8k9sWUP+tr/acU320eBt/7zLh
 sEg5M3pzflsn0Gu99aZ/UcWR9A8Mjm/xroDvJhAO9Wp5bWtPgd8mbVxOJvy+59DtMy
 9EePASrsQ6iLZWq/ha3Gg2tQjmc60q81xaYEpazBpHR/86YqRDp/ZC0A03/WQtSlcC
 aRcvO7Fo5318UvaAX0rw4fVFOrouBm90EJCVDPHds30lEtCu/9iav7SzP56PUuBy21
 BT+2RvmPUII9g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=K+4m2CYp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/6] ice: do not add
 LLDP-specific filter if not necessary
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

On Fri, Feb 14, 2025 at 09:50:36AM +0100, Larysa Zaremba wrote:
> Commit 34295a3696fb ("ice: implement new LLDP filter command")
> introduced the ability to use LLDP-specific filter that directs all
> LLDP traffic to a single VSI. However, current goal is for all trusted VFs
> to be able to see LLDP neighbors, which is impossible to do with the
> special filter.
> 
> Make using the generic filter the default choice and fall back to special
> one only if a generic filter cannot be added. That way setups with "NVMs
> where an already existent LLDP filter is blocking the creation of a filter
> to allow LLDP packets" will still be able to configure software Rx LLDP on
> PF only, while all other setups would be able to forward them to VFs too.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index aaa592ffd2d8..f2e51bacecf8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -6010,15 +6010,21 @@ bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw)
>  /**
>   * ice_lldp_fltr_add_remove - add or remove a LLDP Rx switch filter
>   * @hw: pointer to HW struct
> - * @vsi_num: absolute HW index for VSI
> + * @vsi: VSI to add the filter to
>   * @add: boolean for if adding or removing a filter
> + *
> + * Return: 0 on success, -EOPNOTSUPP if the operation cannot be performed
> + *	   with this HW or VSI, otherwise an error corresponding to
> + *	   the AQ transaction result.
>   */

Thanks for adding the Return section to the kernel doc.

> -int
> -ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
> +int ice_lldp_fltr_add_remove(struct ice_hw *hw, struct ice_vsi *vsi, bool add)
>  {
>  	struct ice_aqc_lldp_filter_ctrl *cmd;
>  	struct ice_aq_desc desc;
>  
> +	if (vsi->type != ICE_VSI_PF || !ice_fw_supports_lldp_fltr_ctrl(hw))
> +		return -EOPNOTSUPP;
> +
>  	cmd = &desc.params.lldp_filter_ctrl;
>  
>  	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_filter_ctrl);

...
