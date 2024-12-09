Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E15569E91E0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Dec 2024 12:14:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF2D38101A;
	Mon,  9 Dec 2024 11:14:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMlTPeTDnaCs; Mon,  9 Dec 2024 11:14:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0ABBB80DB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733742850;
	bh=1Bdu/HALJDoCXVfug/gWKnl62g/tVaBth73u213kufo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gzRTttKGGs2rO18pqpDy99+niHlIKWmn2jvPTLK8fsxXO1v0LwYKsSXbcRMb1NpCc
	 uClWs4vBNAEtQCIXzvdmQx3zXc0OSqcv/OjFztYYEd23ndm9LlBYAiqW+5Ha/eBF5v
	 8MlIR9zC51B2Kqe55m+mXXjnd9N2U1r+nhoM0b/ji5i+AHAX/C9xlENMog4GrTEcQo
	 0D7xnUucmH0oAKdupXcFgiE0D/juC088QNZg8K21blNeeWrCVHNbWhrDmITpg4Jh1Z
	 hBWFVaKQwxCG8DPkGLSLXQ6xsyIg+j6F6tmkGHDSscw2K3J/BxYIMvq53ie1w/qsZ5
	 vJhTCo8U0oEXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0ABBB80DB3;
	Mon,  9 Dec 2024 11:14:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 753AA979
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 11:14:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55BC0402BE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 11:14:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CkcY1zjdFA5t for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Dec 2024 11:14:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F3D2E402EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3D2E402EC
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3D2E402EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 11:14:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C5958A40B30;
 Mon,  9 Dec 2024 11:12:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9759CC4CED1;
 Mon,  9 Dec 2024 11:14:01 +0000 (UTC)
Date: Mon, 9 Dec 2024 11:13:59 +0000
From: Simon Horman <horms@kernel.org>
To: Konrad Knitter <konrad.knitter@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, edumazet@google.com,
 davem@davemloft.net, andrew+netdev@lunn.ch,
 Sharon Haroni <sharon.haroni@intel.com>,
 Nicholas Nunley <nicholas.d.nunley@intel.com>,
 Brett Creeley <brett.creeley@intel.com>
Message-ID: <20241209111359.GA2581@kernel.org>
References: <20241204122738.114511-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204122738.114511-1-konrad.knitter@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733742844;
 bh=cjhEXeueBX1NeVabk8lXTMVekFREvlG2q8IWFYDSF2Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=meXzZQGJaf3cJW7U3u8ZVQeaKovguZYSnawlGko491TvcQ49zUhnLafyczucFVZYk
 R2bvkGhu5+azab62x8OdM/x6J943GoTJblzIlmtRFwlJccEEFlZFbqAnnl3nNZBBmY
 iFLM3jyirUhlEU1fqfjvMwyS1nX5MzX0LFPDT9r5eHCF/RVjDq4bgx4Mo1jquBI3eU
 4vbu3Ok0vyABNkuXVfB9HJ0GNSubmTx1eSommaoUpv4ecY0Hq+kR6zDZJsQAGIlcMc
 NhCz1KsG4iTz8TdDgrdZWW7o5WuGyD/tNGM2NPUhCOs6BNICX40H9MlCPoPIeTANRd
 qBZROA6XLU3DQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=meXzZQGJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: fw and port health
 status
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

On Wed, Dec 04, 2024 at 01:27:38PM +0100, Konrad Knitter wrote:
> Firmware generates events for global events or port specific events.
> 
> Driver shall subscribe for health status events from firmware on supported
> FW versions >= 1.7.6.
> Driver shall expose those under specific health reporter, two new
> reporters are introduced:
> - FW health reporter shall represent global events (problems with the
> image, recovery mode);
> - Port health reporter shall represent port-specific events (module
> failure).
> 
> Firmware only reports problems when those are detected, it does not store
> active fault list.
> Driver will hold only last global and last port-specific event.
> Driver will report all events via devlink health report,
> so in case of multiple events of the same source they can be reviewed
> using devlink autodump feature.
> 
> $ devlink health
> 
> pci/0000:b1:00.3:
>   reporter fw
>     state healthy error 0 recover 0 auto_dump true
>   reporter port
>     state error error 1 recover 0 last_dump_date 2024-03-17
> 	last_dump_time 09:29:29 auto_dump true
> 
> $ devlink health diagnose pci/0000:b1:00.3 reporter port
> 
>   Syndrome: 262
>   Description: Module is not present.
>   Possible Solution: Check that the module is inserted correctly.
>   Port Number: 0
> 
> Tested on Intel Corporation Ethernet Controller E810-C for SFP
> 
> Co-developed-by: Sharon Haroni <sharon.haroni@intel.com>
> Signed-off-by: Sharon Haroni <sharon.haroni@intel.com>
> Co-developed-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Co-developed-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>

Hi Konrad,

Some minor feedback from my side.

> diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c

...

> +/**
> + * ice_process_health_status_event - Process the health status event from FW
> + * @pf: pointer to the PF structure
> + * @event: event structure containing the Health Status Event opcode
> + *
> + * Decode the Health Status Events and print the associated messages
> + */
> +void ice_process_health_status_event(struct ice_pf *pf, struct ice_rq_event_info *event)
> +{
> +	const struct ice_aqc_health_status_elem *health_info;
> +	u16 count;
> +
> +	health_info = (struct ice_aqc_health_status_elem *)event->msg_buf;
> +	count = le16_to_cpu(event->desc.params.get_health_status.health_status_count);
> +
> +	if (count > (event->buf_len / sizeof(*health_info))) {
> +		dev_err(ice_pf_to_dev(pf), "Received a health status event with invalid element count\n");
> +		return;
> +	}
> +
> +	for (int i = 0; i < count; i++) {
> +		const struct ice_health_status *health_code;
> +		u16 status_code;
> +
> +		status_code = le16_to_cpu(health_info->health_status_code);
> +		health_code = ice_get_health_status(status_code);
> +
> +		if (health_code) {
> +			switch (health_info->event_source) {
> +			case ICE_AQC_HEALTH_STATUS_GLOBAL:
> +				pf->health_reporters.fw_status = *health_info;
> +				devlink_health_report(pf->health_reporters.fw,
> +						      "FW syndrome reported", NULL);
> +				break;
> +			case ICE_AQC_HEALTH_STATUS_PF:
> +			case ICE_AQC_HEALTH_STATUS_PORT:
> +				pf->health_reporters.port_status = *health_info;
> +				devlink_health_report(pf->health_reporters.port,
> +						      "Port syndrome reported", NULL);
> +				break;
> +			default:
> +				dev_err(ice_pf_to_dev(pf), "Health code with unknown source\n");
> +			}

The type of health_info->event_source is __le16.
But here it is being compared against host byte order values.
That doesn't seem correct.

Flagged by Sparse.

> +		} else {
> +			u32 data1, data2;
> +			u16 source;
> +
> +			source = le16_to_cpu(health_info->event_source);
> +			data1 = le32_to_cpu(health_info->internal_data1);
> +			data2 = le32_to_cpu(health_info->internal_data2);
> +			dev_dbg(ice_pf_to_dev(pf),
> +				"Received internal health status code 0x%08x, source: 0x%08x, data1: 0x%08x, data2: 0x%08x",
> +				status_code, source, data1, data2);
> +		}
> +		health_info++;
> +	}
> +}
> +
>  /**
>   * ice_devlink_health_report - boilerplate to call given @reporter
>   *

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index faba09b9d880..9c61318d3027 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -6047,6 +6047,44 @@ bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps)
>  	return false;
>  }
>  
> +/**
> + * ice_is_fw_health_report_supported

Please consider including a short description here.

Flagged by ./scripts/kernel-doc -Wall -none

> + * @hw: pointer to the hardware structure
> + *
> + * Return: true if firmware supports health status reports,
> + * false otherwise
> + */
> +bool ice_is_fw_health_report_supported(struct ice_hw *hw)
> +{
> +	return ice_is_fw_api_min_ver(hw, ICE_FW_API_HEALTH_REPORT_MAJ,
> +				     ICE_FW_API_HEALTH_REPORT_MIN,
> +				     ICE_FW_API_HEALTH_REPORT_PATCH);
> +}

...
