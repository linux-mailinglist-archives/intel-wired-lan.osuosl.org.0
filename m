Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E87DD7BB7B7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 14:33:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8970E611EA;
	Fri,  6 Oct 2023 12:33:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8970E611EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696595631;
	bh=0lst5d7trgOHeLfSEeubZLKXu68S8dpczbCqJjGGbeo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZKL3apFY4XTy1wlR7A6EwgwIm/Ti2oQtpd14IHQfhq7HERIfDfuckNg2+0XoqJrlg
	 ZkoMJa68tE62Kns2/FKRFoPydxSquHYOlkECW1buJ+1jLcINPuxfb/RS9Iupgc+VHX
	 KzgeauSdTdzyBTnm99u8U5f8AB5fyRAWiAdy5DLoINwO2bD8AqdDOrLUiW3DbUTSy/
	 jHucyH31QEw4iprrT5hRJcLzPwtnLJp9sYwGqbgk8cO3ntE8HBhPfcm1LJWIMVK/HY
	 qF9BPeCmVo9sdk1RMsNO2hMOCDeMrxYywuZhkhOylQR5tzYVn7ng3RFjLdENpBnEsw
	 Oa49UPg83RTVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57gPW2Km2ent; Fri,  6 Oct 2023 12:33:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E2F0611B1;
	Fri,  6 Oct 2023 12:33:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E2F0611B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13F9F1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFCCE611D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:33:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFCCE611D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjurnZEaTb-t for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 12:33:43 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63980611B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:33:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63980611B1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 7CF82CE27D2;
 Fri,  6 Oct 2023 12:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79B3EC433C7;
 Fri,  6 Oct 2023 12:33:36 +0000 (UTC)
Date: Fri, 6 Oct 2023 14:33:34 +0200
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZR/+noRCdnsy6QJo@kernel.org>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-5-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231006114101.1608796-5-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696595618;
 bh=C0l7PeGE1vtEgo9DM9OGtxhUx5rYGAf3MThJoKdVq7U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ny9UHmuNzt0oHqRHoVuzX6mix3ZySYkhx3RVjnK+s1jzfIoQhCC2KKfXRiyneWF6/
 S6KS4GGL1wCrNhYmxwc55p9xyTCTjQrZzEbUUiHSgaXeqY6UgWtBsggqbI4IA9qSBq
 ay2XMiEe1UlsI1HkZ15xNeIbHukbaDfIen9EcQEdQ80Bcq6tsuXBHNXgRi5gWru8z7
 YC0zrUGwSDI6+BjTAIb+aHYpo1n0eaMjN5LtgmF/tJdAhrvvJY//ZdL2wUlOQbl/g1
 vzOYJookGLQzCEeo0RNGUjjUrLzJ7SYcaq/DK28xFJkqtr4nFVVuInynNjyvB/T5F5
 ctK6dyBdcTYAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ny9UHmuN
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/5] ice: dpll: implement
 phase related callbacks
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
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 06, 2023 at 01:41:00PM +0200, Arkadiusz Kubalewski wrote:
> Implement new callback ops related to measurment and adjustment of
> signal phase for pin-dpll in ice driver.
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Hi Arkadiusz,

some minor feedback from my side.

If you do end up re-spinning the series, please consider
running checkpatch.pl --codespell.

> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 224 +++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
>  2 files changed, 230 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c

...

> +/**
> + * ice_dpll_phase_offset_get - callback for get dpll phase shift value
> + * @pin: pointer to a pin
> + * @pin_priv: private data pointer passed on pin registration
> + * @dpll: registered dpll pointer
> + * @dpll_priv: private data pointer passed on dpll registration
> + * @phase_adjust: on success holds pin phase_adjust value

nit: The parameter is called phase_offset, not phase_adjust in the code below

> + * @extack: error reporting
> + *
> + * Dpll subsystem callback. Handler for getting phase shift value between
> + * dpll's input and output.
> + *
> + * Context: Acquires pf->dplls.lock
> + * Return:
> + * * 0 - success
> + * * negative - error
> + */
> +static int
> +ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
> +			  const struct dpll_device *dpll, void *dpll_priv,
> +			  s64 *phase_offset, struct netlink_ext_ack *extack)
> +{
> +	struct ice_dpll *d = dpll_priv;
> +	struct ice_pf *pf = d->pf;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	if (d->active_input == pin)
> +		*phase_offset = d->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
> +	else
> +		*phase_offset = 0;
> +	mutex_unlock(&pf->dplls.lock);
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
>   * @pin: pointer to a pin

...

> @@ -1656,6 +1867,15 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
>  				return ret;
>  			pins[i].prop.capabilities |=
>  				DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE;
> +			pins[i].prop.phase_range.min =
> +				pf->dplls.input_phase_adj_max;
> +			pins[i].prop.phase_range.max =
> +				-pf->dplls.input_phase_adj_max;
> +		} else {
> +			pins[i].prop.phase_range.min =
> +				pf->dplls.output_phase_adj_max,

nit: It probably doesn't make any difference, but perhaps ',' should be ';'.

As flagged by clang-16 with -Wcomma

> +			pins[i].prop.phase_range.max =
> +				-pf->dplls.output_phase_adj_max;
>  		}
>  		pins[i].prop.capabilities |=
>  			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
