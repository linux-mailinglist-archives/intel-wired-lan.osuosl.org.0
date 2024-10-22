Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C67189AA362
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 15:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 428EE405E8;
	Tue, 22 Oct 2024 13:40:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0cY4QBi3NMAq; Tue, 22 Oct 2024 13:40:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 758F1405DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729604429;
	bh=gi9RDA6yW/W0cdFcfJsWNcgdrdRyvN05HWyCb6lBA+o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B2PMA+u1+DAdhcX/V1yFBPAVN6ls7/C5Adk4Bku74WgpTnhkc7GrbnYvUJ1ge4PTD
	 JRyNHNvc6VegVHv3ewEpHiUMK9VYjB5YmW4nIOUvuXj24Pb9QlD0yzOw0jtLuxdvGQ
	 147P8wqYtA8rKrObyxbQbZp2JPsgUlU+2gSJK9fqR1phReJKfM5iD0QvJRij96zUE8
	 /ox3tayYHo2dyVp73DQpvVWPlxOHm9VMxtuBEsUlT/O+R7hWwKQlEurmrT5S5X8vZd
	 UXS7ttsCXVoF2ELR4MjA083i0zIBswKO/v8YG6NyAFLnT413khPLdN3GxNQ7ZtlfGo
	 wgfPcTnkAH1OQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 758F1405DE;
	Tue, 22 Oct 2024 13:40:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D3DB2072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18926405DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zDJPN5aZbXvn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 13:40:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 05AE9405CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05AE9405CA
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05AE9405CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:40:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 73EC6A40072;
 Tue, 22 Oct 2024 13:40:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2605DC4CEE7;
 Tue, 22 Oct 2024 13:40:21 +0000 (UTC)
Date: Tue, 22 Oct 2024 14:40:20 +0100
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 richardcochran@gmail.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20241022134020.GU402847@kernel.org>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241021141955.1466979-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729604424;
 bh=pF1IpggiByKmR/27T8AuIrXxWJtE41D0QTv9xCkVc10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gfkPK3laOvGMLmLXPWmlZQYjnKGZYfmLVjoSud/9pHb1oGrBGH5owNOBlBZMxITiN
 Wfeo1WUPww6IdL4oKAsJ9g2hjG81OfKQcrIz15rmtwnxAVT7kQp+Hqo+l4jPWv5/dh
 6LCP8JMeanhag874fVC9MgNLDIj5Psx/uai4OMq/zMG5tSMwm71wonLjUAX8GqHB3n
 B/0gm5Ov8WVFuxyaIfsjMPBGPy2nP8Rz6TWX0fJNKgts2LmpG1ftL5se5J3Ouf/z7Y
 ilYKHwxupDGQPwG2NJooHzf311+e8L2YeGD1QmTOxw6oRTmWnNYQk2VGk2xwlr3BBi
 X1lcFNAX1zo6g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gfkPK3la
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: ptp: add control
 over HW timestamp latch point
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

On Mon, Oct 21, 2024 at 04:19:55PM +0200, Arkadiusz Kubalewski wrote:
> Allow user to control the latch point of ptp HW timestamps in E825
> devices.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 46 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 57 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
>  3 files changed, 105 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index a999fface272..47444412ed9a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2509,6 +2509,50 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
>  	return 0;
>  }
>  
> +/**
> + * ice_get_ts_point - get the tx timestamp latch point
> + * @info: the driver's PTP info structure
> + * @point: return the configured tx timestamp latch point
> + *
> + * Return: 0 on success, negative on failure.
> + */
> +static int
> +ice_get_ts_point(struct ptp_clock_info *info, enum ptp_ts_point *point)
> +{
> +	struct ice_pf *pf = ptp_info_to_pf(info);
> +	struct ice_hw *hw = &pf->hw;
> +	bool sfd_ena;
> +	int ret;
> +
> +	ice_ptp_lock(hw);
> +	ret = ice_ptp_hw_ts_point_get(hw, &sfd_ena);
> +	ice_ptp_unlock(hw);
> +	if (!ret)
> +		*point = sfd_ena ? PTP_TS_POINT_SFD : PTP_TS_POINT_POST_SFD;
> +
> +	return ret;
> +}
> +
> +/**
> + * ice_set_ts_point - set the tx timestamp latch point
> + * @info: the driver's PTP info structure
> + * @point: requested tx timestamp latch point

nit: Please include documentation of the return value,
     as was done for ice_get_ts_point.

     Flagged by ./scripts/kernel-doc -none -Warn

> + */
> +static int
> +ice_set_ts_point(struct ptp_clock_info *info, enum ptp_ts_point point)
> +{
> +	bool sfd_ena = point == PTP_TS_POINT_SFD ? true : false;
> +	struct ice_pf *pf = ptp_info_to_pf(info);
> +	struct ice_hw *hw = &pf->hw;
> +	int ret;
> +
> +	ice_ptp_lock(hw);
> +	ret = ice_ptp_hw_ts_point_set(hw, sfd_ena);
> +	ice_ptp_unlock(hw);
> +
> +	return ret;
> +}
> +
>  /**
>   * ice_ptp_set_funcs_e82x - Set specialized functions for E82X support
>   * @pf: Board private structure

...
