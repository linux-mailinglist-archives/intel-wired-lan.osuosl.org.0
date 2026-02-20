Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CL89GeOAmGlMJQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 16:42:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D104A168FA9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 16:42:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7599D83F1E;
	Fri, 20 Feb 2026 15:42:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1v537yFe9V4m; Fri, 20 Feb 2026 15:42:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6F8583F23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771602144;
	bh=67b6teLexKniaLcuw99MhHpDK/+wT7F7WVUO/b+g5RI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yjOtt/hUTv5/zOVHpz9nKPci2A15cKk0REHBQr/qSbwa5m0K/xXZ7BNuvjZrUD6QH
	 W21nBNE2qvlsy+aY6RgJkURxDBvjiMB9RBnsz4elgyppK4mmYOB6rH4ywJO2bO0oHF
	 e1kuhEzE8+RbjmU9SQ4thTai3gv1RAgkqjRYsFqAiyDXLEiRFkFXH3rzweojqek9oT
	 q/3TUfxNfyixoWAqcXn5tiQkpeSCv4jaYKQgnkgVMCV7pJhfzxt14MXHIancICMc46
	 JZWcGc/kY0xB9gyTKnBgQjCZRmo1XU5mzYwdmG0xmfTLQ6BEKPnhTybT1Av1d+TQ/s
	 4roy0fShZKP8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6F8583F23;
	Fri, 20 Feb 2026 15:42:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D150E206
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BCD9140431
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:42:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YcC_Ba9NpkEG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 15:42:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3275400D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3275400D3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3275400D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:42:20 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-679-RCBguz5rOTOTqyCvsXWH3w-1; Fri,
 20 Feb 2026 10:42:16 -0500
X-MC-Unique: RCBguz5rOTOTqyCvsXWH3w-1
X-Mimecast-MFC-AGG-ID: RCBguz5rOTOTqyCvsXWH3w_1771602134
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E88F21956052; Fri, 20 Feb 2026 15:42:13 +0000 (UTC)
Received: from [10.44.32.156] (unknown [10.44.32.156])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 229D23000C26; Fri, 20 Feb 2026 15:42:09 +0000 (UTC)
Message-ID: <0226868b-ff1c-4923-8593-f1a8ed529a57@redhat.com>
Date: Fri, 20 Feb 2026 16:42:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 piotr.kwapulinski@intel.com
References: <20260219131500.2271897-1-poros@redhat.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260219131500.2271897-1-poros@redhat.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: V8_hM4V5d5xHYz0lfbvZpecNDPbV4WOd_O8Tw3gCcQE_1771602134
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1771602139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=67b6teLexKniaLcuw99MhHpDK/+wT7F7WVUO/b+g5RI=;
 b=aOa669sKM7Lfbt2cc+iKUmipu0M1hAENU8P9jzTwLY1A5B/rkUSIJOs3HX5+9xVWTLcrwN
 ayB/6uj/s0mUCIz35DnsbNWRpRhKIeUKD8bJP3O1YVThyuL77AzoOwKie5cx8orEcX33cz
 qXuhMzGPpJFfv2AE6N2GPZ2KrfGMuss=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=aOa669sK
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix missing dpll
 notification for SW pins
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:arkadiusz.kubalewski@intel.com,m:linux-kernel@vger.kernel.org,m:piotr.kwapulinski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D104A168FA9
X-Rspamd-Action: no action



On 2/19/26 2:15 PM, Petr Oros wrote:
> ice_dpll_notify_changes() sends dpll_pin_change_ntf() only for the
> direct CGU input pin stored in d->active_input. Software-controlled
> pins (SMA/U.FL) are separate dpll_pin objects that wrap a backing CGU
> input, but they never receive a change notification. As a result,
> userspace consumers such as synce4l that monitor SMA pins via dpll
> netlink never learn when the pin state transitions (e.g. from
> SELECTABLE to CONNECTED), even though 'dpll pin show' reports the
> correct state on demand.
> 
> When the active input changes, also send dpll_pin_change_ntf() for any
> registered SMA/U.FL input pin whose backing CGU input matches the old
> or new active input.
> 
> v2:
> - Extract ice_dpll_sw_pin_needs_notify() helper for readability,
> - Move loop variable into for() scope.
> 
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_dpll.c | 20 ++++++++++++++++++++
>   1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index c2ad39bfe177db..2a505d924fcbae 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -2468,8 +2468,18 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
>    *
>    * Once change detected appropriate event is submitted to the dpll subsystem.
>    */
> +static bool
> +ice_dpll_sw_pin_needs_notify(struct ice_dpll_pin *p,
> +			     struct dpll_pin *active, struct dpll_pin *old)
> +{
> +	return p->pin &&
> +	       p->direction == DPLL_PIN_DIRECTION_INPUT &&
> +	       (p->input->pin == active || p->input->pin == old);
> +}
> +

Move this function above comment that documents function
ice_dpll_notify_changes().

Ivan

>   static void ice_dpll_notify_changes(struct ice_dpll *d)
>   {
> +	struct ice_dplls *dplls = &d->pf->dplls;
>   	bool pin_notified = false;
>   
>   	if (d->prev_dpll_state != d->dpll_state) {
> @@ -2477,6 +2487,8 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
>   		dpll_device_change_ntf(d->dpll);
>   	}
>   	if (d->prev_input != d->active_input) {
> +		struct dpll_pin *old = d->prev_input;
> +
>   		if (d->prev_input)
>   			dpll_pin_change_ntf(d->prev_input);
>   		d->prev_input = d->active_input;
> @@ -2484,6 +2496,14 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
>   			dpll_pin_change_ntf(d->active_input);
>   			pin_notified = true;
>   		}
> +		for (int i = 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
> +			if (ice_dpll_sw_pin_needs_notify(&dplls->sma[i],
> +							 d->active_input, old))
> +				dpll_pin_change_ntf(dplls->sma[i].pin);
> +			if (ice_dpll_sw_pin_needs_notify(&dplls->ufl[i],
> +							 d->active_input, old))
> +				dpll_pin_change_ntf(dplls->ufl[i].pin);
> +		}
>   	}
>   	if (d->prev_phase_offset != d->phase_offset) {
>   		d->prev_phase_offset = d->phase_offset;

