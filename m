Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O0eDkQegmmhPQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 17:11:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFA2DBB90
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 17:11:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4BA26088B;
	Tue,  3 Feb 2026 16:11:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C5prowNPdzrE; Tue,  3 Feb 2026 16:11:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0B6260893
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770135105;
	bh=/4UJZARiyNctX172Uz5r9BlyF2OUQ/oXLstSw8D9f9Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZKekmR7mDg2ZlClBQymzDSJcVcfH+4fBsLPGuXHnWHCMFDdvxepDt8xoNBFzciBVK
	 wvQtXJNKGio4Yy3x6RPe40oYf/L/hTRj9agzYgmnXtChA9cODepIAkeQAdaGRoiFjr
	 AO/VGkBkDvtCI9RRFOZod1EJrwcLPEhf6Riy/ZV81WxigtTONWeWkEno1w85iUBGo3
	 a5bltu/kZDBymMx0MdxnhkWymnV62WCmi7MeG1izaxaCc+IYFVZ4O0t/fmIaw/vSaL
	 ueNYdh+4xeyR13VjAE1yt8jBAx11aRKHI4J0D1Ui3RsG6t88uVZaMkuXeZpMpb7Af3
	 /i9+40mBi9Thg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0B6260893;
	Tue,  3 Feb 2026 16:11:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B019013D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 16:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91F864003D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 16:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1RNDqc30HhGk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 16:11:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A30F40025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A30F40025
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A30F40025
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 16:11:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 21694444DF;
 Tue,  3 Feb 2026 16:11:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27E6FC116D0;
 Tue,  3 Feb 2026 16:11:35 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: ivecera@redhat.com
Date: Tue,  3 Feb 2026 16:11:20 +0000
Message-ID: <20260203161120.1894163-1-horms@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260202171638.17427-10-ivecera@redhat.com>
References: <20260202171638.17427-10-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770135101;
 bh=8AFrNtNyxouFp5sBXSOwVYkSaZGYEOX6ETwIRjArO5c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XmGSAn8bXBxp2dUl7h9K+p4mf6wV+mAZZ+woQdoM0nkc8Eiv3qrfCC6BDYHdtSGn/
 mpahJma3SVnJBszur6Qt1XrbnyuvPhyR2fWTmLXWSNth4RAPZjmK05c5FTy7IhM7Yj
 zBiMf5a9tDPrBhTCMnljx2xufa+UA2sOPRs9OgV3SPCQxeQPTxXbrG4QWXRmC9pefM
 tFC32AY2jiEERUVHjSkkcmbxXs2n2Yma8jFtrizDTH/GiUfsfmSVsVdRaSFE2Rru5V
 +ASQJRIJBh5sIGXQzAKDyKh8b++zTjOouiny8xq9B5IwlBx4UheYDycQP9iqcqZ/Mz
 rWev/pJs7rVyA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=XmGSAn8b
Subject: Re: [Intel-wired-lan] [net-next, v4,
 9/9] ice: dpll: Support E825-C SyncE and dynamic pin discovery
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
Cc: edumazet@google.com, anthony.l.nguyen@intel.com, leon@kernel.org,
 andrew+netdev@lunn.ch, linux-rdma@vger.kernel.org,
 przemyslaw.kitszel@intel.com, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, jiri@resnulli.us, richardcochran@gmail.com,
 Prathosh.Satish@microchip.com, vadim.fedorenko@linux.dev,
 netdev@vger.kernel.org, mbloch@nvidia.com, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, aleksander.lobakin@intel.com,
 Simon Horman <horms@kernel.org>, jonathan.lemon@gmail.com, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:jonathan.lemon@gmail.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,lunn.ch,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6EFA2DBB90
X-Rspamd-Action: no action

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ice: dpll: Support E825-C SyncE and dynamic pin discovery

This patch implements SyncE support for the E825-C Ethernet controller
using the DPLL subsystem, with dynamic pin discovery via firmware (ACPI)
and asynchronous registration using the DPLL notifier chain.

> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 4eca62688d83..a8c99e49bfae 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c

[ ... ]

> @@ -528,6 +529,92 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
>  	return ret;
>  }
>
> +/**
> + * ice_dpll_rclk_update - updates the state of rclk pin on a device
> + * @pf: private board struct
> + * @pin: pointer to a pin
> + * @port_num: port number
> + *
> + * Update struct holding pin states info, states are separate for each parent
> + *
> + * Context: Called under pf->dplls.lock
> + * Return:
> + * * 0 - OK
> + * * negative - error
> + */
> +static int ice_dpll_rclk_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
> +				u8 port_num)
> +{
> +	int ret;
> +
> +	for (u8 parent = 0; parent < pf->dplls.rclk.num_parents; parent++) {
> +		ret = ice_aq_get_phy_rec_clk_out(&pf->hw, &parent, &port_num,
> +						 &pin->flags[parent], NULL);

Is it safe to pass &parent as an output parameter when it's also the loop
counter? Looking at ice_aq_get_phy_rec_clk_out():

    int ice_aq_get_phy_rec_clk_out(struct ice_hw *hw, u8 *phy_output, ...)
    {
        cmd->phy_output = *phy_output;  // Read as input
        status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
        if (!status) {
            *phy_output = cmd->phy_output;  // Write back from firmware
        ...

The firmware could potentially return a different value than was sent,
which would be written back to 'parent', corrupting the loop counter.

This corrupted value is then used as an array index:

> +		if (ret)
> +			return ret;
> +
> +		ice_dpll_pin_store_state(pin, parent,
> +					 ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
> +					 pin->flags[parent]);

Both pin->flags[parent] and pin->state[parent] (inside
ice_dpll_pin_store_state) could access out of bounds if firmware returns
a value >= ICE_DPLL_RCLK_NUM_MAX (which is 2).

Would it be safer to use a separate variable for the phy_output parameter
and validate that firmware echoes back the expected value?

> +	}
> +
> +	return 0;
> +}

[ ... ]

> @@ -3239,8 +3683,8 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
>   * @d: pointer to ice_dpll
>   * @cgu: if cgu is present and controlled by this NIC
>   *
> - * If cgu is owned unregister the dpll from dpll subsystem.
> - * Release resources of dpll device from dpll subsystem.
> + * If cgu is owned, unregister the DPL from DPLL subsystem.
> + * Release resources of DPLL device from DPLL subsystem.
>   */

This isn't a bug, but there's a typo: 'DPL' should be 'DPLL'.
