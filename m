Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67650771651
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Aug 2023 19:32:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01C3381BB0;
	Sun,  6 Aug 2023 17:32:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01C3381BB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691343156;
	bh=xEm7AsfcS+o8nE3Pzi2czU5gqeE+hdS+UPBrEYRmq28=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JwRt5YM07ZiYTeKemhOaFIu73y0IOcPO9BwKyHPwwu+M0wD9ySmvJy3klrgsSJiRr
	 k1uHUbZ5+LdhgegL8+g0zCMl++BIOzUjpaAnbhNk5BGKNvzNygjXHyaWztAvW8SSax
	 ewGcLM68HNVCmo6vPlG44DBXSWegDWu9fF5Fk9mZpZ7osqN1dXytWIr5TWn63VZ+a5
	 WZYwBb6IyWTR9jnSQSoNQO6wOSoT6YDcaL3ge532qr/cjbu3YlT4wVP4+taLEhPwvS
	 KTyJZ6JiE2l7TWPTnhOF+B4lymmU65yXy0mGxg80vVN4F40AV8e/14jKokNrVdQ9b2
	 H4kcQSKaoCYIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0chEoiRZRupy; Sun,  6 Aug 2023 17:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3262818CD;
	Sun,  6 Aug 2023 17:32:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3262818CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 497FD1BF909
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Aug 2023 17:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 928D0605A2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Aug 2023 17:31:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 928D0605A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9trkRc22Yff for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Aug 2023 17:31:46 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4FC660B14
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Aug 2023 17:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4FC660B14
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E6EFF6119D;
 Sun,  6 Aug 2023 17:31:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F63AC433C8;
 Sun,  6 Aug 2023 17:31:42 +0000 (UTC)
Date: Sun, 6 Aug 2023 19:31:40 +0200
From: Simon Horman <horms@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZM/Y/PjPVNxbwLOL@vergenet.net>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
 <20230804190454.394062-7-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230804190454.394062-7-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691343105;
 bh=WqQcq/iEINXz8RMnCvagZGNodm+OM0Vsc80wKSLiO8s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IKEg7He7kFUl20AIIDoHuxBcTaAREW7VOD8eI3toZ9y+9qGYMhnjDGnOUlDjRifcR
 UrRZbEKDp+JE/25p6YyGgYpfavyiNv3nhHSiGZnOxRDBXGi+YEhGI6reJLaWaxWvOW
 //vh2vD9+RridiJxcIej5D6SspDL1fRgo/VWAbZoIYeQkpeQNmsc4LKCAMCuxWRXJI
 0jmLfv9GnH7cNhfEXxoLFfnPesjZiXwHcukekgX7aOPPKvwgvoOU+rOdXWi8T92rWb
 s5EM9mzqxlNGSwVbelT5lfeks7vnvek8uhzcHziVotAe1d7T325DOksT/+TD9MGOW8
 Neuu6smhSFg3A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IKEg7He7
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/9] ice: add admin
 commands to access cgu configuration
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
 linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 04, 2023 at 08:04:51PM +0100, Vadim Fedorenko wrote:
> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> 
> Add firmware admin command to access clock generation unit
> configuration, it is required to enable Extended PTP and SyncE features
> in the driver.
> Add definitions of possible hardware variations of input and output pins
> related to clock generation unit and functions to access the data.
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>

Hi Arkadiusz and Vadim,

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c

...

> +/**
> + * ice_aq_get_cgu_dpll_status - get dpll status
> + * @hw: pointer to the HW struct
> + * @dpll_num: DPLL index
> + * @ref_state: Reference clock state
> + * @config: current DPLL config
> + * @dpll_state: current DPLL state
> + * @phase_offset: Phase offset in ns
> + * @eec_mode: EEC_mode
> + *
> + * Get CGU DPLL status (0x0C66)
> + * Return: 0 on success or negative value on failure.
> + */
> +int
> +ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
> +			   u8 *dpll_state, u8 *config, s64 *phase_offset,
> +			   u8 *eec_mode)
> +{
> +	struct ice_aqc_get_cgu_dpll_status *cmd;
> +	const s64 NSEC_PER_PSEC = 1000LL;

Probably this should be in lower case, or an (upper case) #define.
In the case of the latter it should probably be moved outside of the
function.

> +	struct ice_aq_desc desc;
> +	int status;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_dpll_status);
> +	cmd = &desc.params.get_cgu_dpll_status;
> +	cmd->dpll_num = dpll_num;
> +
> +	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
> +	if (!status) {
> +		*ref_state = cmd->ref_state;
> +		*dpll_state = cmd->dpll_state;
> +		*config = cmd->config;
> +		*phase_offset = le32_to_cpu(cmd->phase_offset_h);
> +		*phase_offset <<= 32;
> +		*phase_offset += le32_to_cpu(cmd->phase_offset_l);
> +		*phase_offset = sign_extend64(*phase_offset, 47) /
> +			NSEC_PER_PSEC;

This causes a build failure on x86_32.

  ERROR: modpost: "__divdi3" [drivers/net/ethernet/intel/ice/ice.ko] undefined!

Possibly you want (please do check for yourself):

		*phase_offset = div64_s64(sign_extend64(*phase_offset, 47),
					  NSEC_PER_PSEC);

> +		*eec_mode = cmd->eec_mode;
> +	}
> +
> +	return status;
> +}
> +
> +/**
> + * ice_aq_set_cgu_dpll_config - set dpll config
> + * @hw: pointer to the HW struct
> + * @dpll_num: DPLL index
> + * @ref_state: Reference clock state
> + * @config: DPLL config
> + * @eec_mode: EEC mode
> + *
> + * Set CGU DPLL config (0x0C67)
> + * Return: 0 on success or negative value on failure.
> + */
> +int
> +ice_aq_set_cgu_dpll_config(struct ice_hw *hw, u8 dpll_num, u8 ref_state,
> +			   u8 config, u8 eec_mode)
> +{
> +	struct ice_aqc_set_cgu_dpll_config *cmd;
> +	struct ice_aq_desc desc;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_cgu_dpll_config);
> +	cmd = &desc.params.set_cgu_dpll_config;
> +	cmd->dpll_num = dpll_num;
> +	cmd->ref_state = ref_state;
> +	cmd->config = config;
> +	cmd->eec_mode = eec_mode;
> +
> +	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
> +}
> +
> +/**
> + * ice_aq_set_cgu_ref_prio - set input refernce priority

nit: refernce -> reference

> + * @hw: pointer to the HW struct
> + * @dpll_num: DPLL index
> + * @ref_idx: Reference pin index
> + * @ref_priority: Reference input priority
> + *
> + * Set CGU reference priority (0x0C68)
> + * Return: 0 on success or negative value on failure.
> + */

...

-- 
pw-bot: changes-requested

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
