Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAmKA+72vGkt5AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:27:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE0B2D69B9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:27:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C9E984725;
	Fri, 20 Mar 2026 07:27:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xwdCxek-bc6N; Fri, 20 Mar 2026 07:27:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FADE84726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773991659;
	bh=vvg9NvEmDP+fuDbIX9VVuONLbZYI0ChtqQABOODXlfw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nkhgXZ+3sdrm6zrUFaWdqnJbQH2KkZcRgdUyvLONwliSOCX8bCm5PG0446xphg+e2
	 2lD3T2qza5ztby0CKXhHPeEHnMcVc6UVDo2F2SFlMF+PKsMWCYEbhaOsPEwl/IesBA
	 8S6Iz3BWCPXpoIQaAgyLwfkDxg0KkbDSV5dYhvTBU/r39MPEetAmr5xXoq0A7CegTr
	 pe0B+kuBss0Hpoo03Fb7YM5Dv1ndY3TI+M7pNGTjK+h1F3ar+j4uNGf0x7PWuJUEhg
	 eY9fFGVyRNVIoYnRmLGvm/ZKsbMFK4sbmTlh7pp3BPWdLWnEI0zRYjZUibE5NYCjke
	 ts/dlU+HfYT3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FADE84726;
	Fri, 20 Mar 2026 07:27:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 49C171B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FAD484724
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:27:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xb4m8WbyVAbu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 07:27:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0EF568471E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EF568471E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EF568471E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:27:35 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-614-tMBRQGkBPb2flvdNZmlMbw-1; Fri,
 20 Mar 2026 03:27:30 -0400
X-MC-Unique: tMBRQGkBPb2flvdNZmlMbw-1
X-Mimecast-MFC-AGG-ID: tMBRQGkBPb2flvdNZmlMbw_1773991648
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5FB1F1944F01; Fri, 20 Mar 2026 07:27:28 +0000 (UTC)
Received: from [10.45.225.20] (unknown [10.45.225.20])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id D3E9330001A1; Fri, 20 Mar 2026 07:27:24 +0000 (UTC)
Message-ID: <e898f409-3424-46de-90b0-86c96300787c@redhat.com>
Date: Fri, 20 Mar 2026 08:27:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20260319205256.998876-1-poros@redhat.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260319205256.998876-1-poros@redhat.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: FeZRUqQg07E_ZjyhFMROrakb5Gjf-y7Qbm1lz9m17Zo_1773991648
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773991654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vvg9NvEmDP+fuDbIX9VVuONLbZYI0ChtqQABOODXlfw=;
 b=YegGWJU4xnYqLMlGWHFW8B065so6ZMwMBNYEPYuV9XatfMVomBMLiZScW+ET6AytBWtNSb
 il1a9ajCOqRkeRb6gfKFeQtufN7Mu3UQpEUjiBQ9FM55biHMXELyjwoHCDbzKRiZ40lKQK
 zaUF7m9671Prs2k2rVBl9DIaVz8Uy8A=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YegGWJU4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix missing dpll
 notifications for SW pins
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:arkadiusz.kubalewski@intel.com,m:horms@kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5CE0B2D69B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 9:52 PM, Petr Oros wrote:
> The SMA/U.FL pin redesign (commit 2dd5d03c77e2 ("ice: redesign dpll
> sma/u.fl pins control")) introduced software-controlled pins that wrap
> backing CGU input/output pins, but never updated the notification and
> data paths to propagate pin events to these SW wrappers.
> 
> There are three problems:
> 
> 1) ice_dpll_notify_changes() sends dpll_pin_change_ntf() only for the
>     direct CGU input pin stored in d->active_input.  When the active
>     input changes, SW pins (SMA/U.FL) that wrap the old or new active
>     input never receive a change notification.  As a result, userspace
>     consumers such as synce4l that monitor SMA pins via dpll netlink
>     never learn when the pin state transitions (e.g. from SELECTABLE to
>     CONNECTED).
> 
> 2) ice_dpll_phase_offset_get() returns p->phase_offset for non-active
>     SW pins, but this field is never updated for SW pins.  The PPS phase
>     offset monitor updates the backing CGU input's phase_offset
>     (p->input->phase_offset), not the SW pin's own field.  As a result
>     non-active SW pins always report zero phase offset even when the
>     backing CGU input has valid PPS measurements.
> 
> 3) ice_dpll_pins_notify_mask() does not propagate phase offset change
>     notifications to SW pins either.  When a HW CGU pin gets a phase
>     offset change notification, the SMA/U.FL pin wrapping it is never
>     notified, so userspace consumers (ts2phc, synce4l) monitoring SW
>     pins via dpll netlink never receive phase offset updates.
> 
> Fix all three by:
> 
>   - In ice_dpll_phase_offset_get(), return the backing CGU input's
>     phase_offset for input-direction SW pins instead of the SW pin's own
>     (always zero) field.
> 
>   - Introduce ice_dpll_pin_ntf(), a thin wrapper around
>     dpll_pin_change_ntf() that also sends notifications to any
>     registered SMA/U.FL pin whose backing CGU input matches.  Replace
>     all direct dpll_pin_change_ntf() calls in the periodic notification
>     paths with ice_dpll_pin_ntf(), so SW pins are automatically notified
>     whenever their backing HW pin is.
> 
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
> v4:
>   - expanded scope to also fix phase offset reporting and phase offset
>     notifications for SW pins (problems 2 and 3 above)
>   - replaced ice_dpll_sw_pin_needs_notify() with ice_dpll_pin_ntf(),
>     a unified wrapper that covers all notification paths
>   - squashed into a single patch
> v3: https://lore.kernel.org/all/20260220140700.2910174-1-poros@redhat.com/
>   - added kdoc for ice_dpll_sw_pin_needs_notify() helper
> v2: https://lore.kernel.org/all/20260219131500.2271897-1-poros@redhat.com/
>   - extracted ice_dpll_sw_pin_needs_notify() helper for readability
>   - moved loop variable into for() scope
> v1: https://lore.kernel.org/all/20260218211414.1411163-1-poros@redhat.com/
> ---
>   drivers/net/ethernet/intel/ice/ice_dpll.c | 47 +++++++++++++++++------
>   1 file changed, 36 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 62f75701d65205..5cfa19da099bfc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -1915,7 +1915,10 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
>   				       d->active_input == p->input->pin))
>   		*phase_offset = d->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
>   	else if (d->phase_offset_monitor_period)
> -		*phase_offset = p->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
> +		*phase_offset = (p->input &&
> +				 p->direction == DPLL_PIN_DIRECTION_INPUT ?
> +				 p->input->phase_offset :
> +				 p->phase_offset) * ICE_DPLL_PHASE_OFFSET_FACTOR;
>   	else
>   		*phase_offset = 0;
>   	mutex_unlock(&pf->dplls.lock);
> @@ -2609,6 +2612,27 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
>   	return pci_get_dsn(pf->pdev);
>   }
>   
> +/**
> + * ice_dpll_pin_ntf - notify pin change including any SW pin wrappers
> + * @dplls: pointer to dplls struct
> + * @pin: the dpll_pin that changed
> + *
> + * Send a change notification for @pin and for any registered SMA/U.FL pin
> + * whose backing CGU input matches @pin.
> + */
> +static void ice_dpll_pin_ntf(struct ice_dplls *dplls, struct dpll_pin *pin)
> +{
> +	dpll_pin_change_ntf(pin);
> +	for (int i = 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
> +		if (dplls->sma[i].pin && dplls->sma[i].input &&
> +		    dplls->sma[i].input->pin == pin)
> +			dpll_pin_change_ntf(dplls->sma[i].pin);
> +		if (dplls->ufl[i].pin && dplls->ufl[i].input &&
> +		    dplls->ufl[i].input->pin == pin)
> +			dpll_pin_change_ntf(dplls->ufl[i].pin);
> +	}
> +}
> +
>   /**
>    * ice_dpll_notify_changes - notify dpll subsystem about changes
>    * @d: pointer do dpll
> @@ -2617,6 +2641,7 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
>    */
>   static void ice_dpll_notify_changes(struct ice_dpll *d)
>   {
> +	struct ice_dplls *dplls = &d->pf->dplls;
>   	bool pin_notified = false;
>   
>   	if (d->prev_dpll_state != d->dpll_state) {
> @@ -2625,17 +2650,17 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
>   	}
>   	if (d->prev_input != d->active_input) {
>   		if (d->prev_input)
> -			dpll_pin_change_ntf(d->prev_input);
> +			ice_dpll_pin_ntf(dplls, d->prev_input);
>   		d->prev_input = d->active_input;
>   		if (d->active_input) {
> -			dpll_pin_change_ntf(d->active_input);
> +			ice_dpll_pin_ntf(dplls, d->active_input);
>   			pin_notified = true;
>   		}
>   	}
>   	if (d->prev_phase_offset != d->phase_offset) {
>   		d->prev_phase_offset = d->phase_offset;
>   		if (!pin_notified && d->active_input)
> -			dpll_pin_change_ntf(d->active_input);
> +			ice_dpll_pin_ntf(dplls, d->active_input);
>   	}
>   }
>   
> @@ -2664,6 +2689,7 @@ static bool ice_dpll_is_pps_phase_monitor(struct ice_pf *pf)
>   
>   /**
>    * ice_dpll_pins_notify_mask - notify dpll subsystem about bulk pin changes
> + * @dplls: pointer to dplls struct
>    * @pins: array of ice_dpll_pin pointers registered within dpll subsystem
>    * @pin_num: number of pins
>    * @phase_offset_ntf_mask: bitmask of pin indexes to notify
> @@ -2673,15 +2699,14 @@ static bool ice_dpll_is_pps_phase_monitor(struct ice_pf *pf)
>    *
>    * Context: Must be called while pf->dplls.lock is released.
>    */
> -static void ice_dpll_pins_notify_mask(struct ice_dpll_pin *pins,
> +static void ice_dpll_pins_notify_mask(struct ice_dplls *dplls,
> +				      struct ice_dpll_pin *pins,
>   				      u8 pin_num,
>   				      u32 phase_offset_ntf_mask)
>   {
> -	int i = 0;
> -
> -	for (i = 0; i < pin_num; i++)
> -		if (phase_offset_ntf_mask & (1 << i))
> -			dpll_pin_change_ntf(pins[i].pin);
> +	for (int i = 0; i < pin_num; i++)
> +		if (phase_offset_ntf_mask & BIT(i))
> +			ice_dpll_pin_ntf(dplls, pins[i].pin);
>   }
>   
>   /**
> @@ -2857,7 +2882,7 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
>   	ice_dpll_notify_changes(de);
>   	ice_dpll_notify_changes(dp);
>   	if (phase_offset_ntf)
> -		ice_dpll_pins_notify_mask(d->inputs, d->num_inputs,
> +		ice_dpll_pins_notify_mask(d, d->inputs, d->num_inputs,
>   					  phase_offset_ntf);
>   
>   resched:

Good catch, Petr.

Reviewed-by: Ivan Vecera <ivecera@redhat.com>

