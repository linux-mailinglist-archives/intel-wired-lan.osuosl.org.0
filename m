Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJUYIDGBmGlMJQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 16:43:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04986168FE6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 16:43:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A88583F2B;
	Fri, 20 Feb 2026 15:43:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FarTrnUDIMpJ; Fri, 20 Feb 2026 15:43:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B845E83F2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771602222;
	bh=Z+Uv0d3wrPnSJ3SxLCH2RWTR/GFjVuhCCarj46UG2RM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BmPdQTVSsG6rmVdYtqrcJ7hIRaDjATxPil4Vw+CN+zdvaWUHeVHR9d923f1AljIQq
	 ifADIKgTKN3KWguGwO4Lj6CBcRt2/fh2/lkqgVRhfpGAWYjMPy+58wq97pXj9vepxr
	 U7m2hVEavntj7kzs3Sa4F2yfiOt3vnPIZw1InBYDXDiVk8WrMhdU3cX0RlYuJiqWZ/
	 P0HC/oGIvE3B7ixb92p0e9ZVaMBs50f5zDat9N4u7IycwZ9TzCTJO4i07NRBOAG7lj
	 R4LOWaQ/0S2CwWGeM1Ad5uCKVG8Dr9GEUN4jY9JqMaNCFc9hqt01lV60gkQX44nKAF
	 NMCeCUcBQkZYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B845E83F2C;
	Fri, 20 Feb 2026 15:43:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C8EB183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 31C3683F2A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:43:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VyArsGZPTdnH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 15:43:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2515F83F27
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2515F83F27
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2515F83F27
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 15:43:39 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-325-TU7hGJMAMh2LNowuTJn72A-1; Fri,
 20 Feb 2026 10:43:33 -0500
X-MC-Unique: TU7hGJMAMh2LNowuTJn72A-1
X-Mimecast-MFC-AGG-ID: TU7hGJMAMh2LNowuTJn72A_1771602211
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 272A21956052; Fri, 20 Feb 2026 15:43:31 +0000 (UTC)
Received: from [10.44.32.156] (unknown [10.44.32.156])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id F00081800361; Fri, 20 Feb 2026 15:43:25 +0000 (UTC)
Message-ID: <00243d05-7dda-4106-b56c-f772d3fa96be@redhat.com>
Date: Fri, 20 Feb 2026 16:43:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
References: <20260220140700.2910174-1-poros@redhat.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260220140700.2910174-1-poros@redhat.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: ZALrFW7N9mQNEBRu8hWEhSQNSqvZ0rsSPcipShDOqyY_1771602211
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1771602218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z+Uv0d3wrPnSJ3SxLCH2RWTR/GFjVuhCCarj46UG2RM=;
 b=VNrPkb8/6uf7s8O6bx3usfl+WYiJqCMBgtAcW+Flx0hubV2Sf72GUkvLeGWU3vwQTed+0e
 QkU4ojssCDsIooE6+f/vVd58QLN+gpNExuaQr8q/ZrfhaM4FJgcmsEcuWQkpuCE3E3h8xN
 BP0yac/2WknPhtyZ+xMSsdr7KKC+3fM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=VNrPkb8/
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix missing dpll
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
Cc: piotr.kwapulinski@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
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
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:piotr.kwapulinski@intel.com,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 04986168FE6
X-Rspamd-Action: no action

On 2/20/26 3:07 PM, Petr Oros wrote:
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
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202602200046.SGwK2tWh-lkp@intel.com/
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
> v3:
> - Add kdoc for the helper.
> v2:
> - Extract ice_dpll_sw_pin_needs_notify() helper for readability,
> - Move loop variable into for() scope.
> 
> drivers/net/ethernet/intel/ice/ice_dpll.c | 29 +++++++++++++++++++++++
>   1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index c2ad39bfe177db..a9db85a1026388 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -2462,6 +2462,24 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
>   	return pci_get_dsn(pf->pdev);
>   }
>   
> +/**
> + * ice_dpll_sw_pin_needs_notify - check if SW pin needs change notification
> + * @p: pointer to SW pin (SMA or U.FL)
> + * @active: currently active input pin (or NULL)
> + * @old: previously active input pin (or NULL)
> + *
> + * Return: true if the SW pin is an input whose backing CGU pin matches either
> + * the old or new active input, meaning its state has changed.
> + */
> +static bool
> +ice_dpll_sw_pin_needs_notify(struct ice_dpll_pin *p,
> +			     struct dpll_pin *active, struct dpll_pin *old)
> +{
> +	return p->pin &&
> +	       p->direction == DPLL_PIN_DIRECTION_INPUT &&
> +	       (p->input->pin == active || p->input->pin == old);
> +}
> +
>   /**
>    * ice_dpll_notify_changes - notify dpll subsystem about changes
>    * @d: pointer do dpll
> @@ -2470,6 +2488,7 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
>    */
>   static void ice_dpll_notify_changes(struct ice_dpll *d)
>   {
> +	struct ice_dplls *dplls = &d->pf->dplls;
>   	bool pin_notified = false;
>   
>   	if (d->prev_dpll_state != d->dpll_state) {
> @@ -2477,6 +2496,8 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
>   		dpll_device_change_ntf(d->dpll);
>   	}
>   	if (d->prev_input != d->active_input) {
> +		struct dpll_pin *old = d->prev_input;
> +
>   		if (d->prev_input)
>   			dpll_pin_change_ntf(d->prev_input);
>   		d->prev_input = d->active_input;
> @@ -2484,6 +2505,14 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
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

LGMT...

Reviewed-by: Ivan Vecera <ivecera@redhat.com>

