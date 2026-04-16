Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNQnO2Tq4GmmnQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 15:55:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4B440F454
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 15:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38E8980CEA;
	Thu, 16 Apr 2026 13:55:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KFmPSlNOP6e3; Thu, 16 Apr 2026 13:55:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7815080C95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776347745;
	bh=fQSVH5EnCCB38CeqTQiAH5evSRyO3uhQtiQydinxuuw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KTqh04jC5h85rD1aKrkwW4Q7hTIH8E7jhxMrZNMgwf7dkyBwjw8TDuLfPhYeMDe9v
	 0aQJSwbgbFiVrtyncKFfBWXyQHtTz7ZscrvuOnWTnucfawqTQAcUKcueEu165MQBwc
	 Nkiunpqwj5I+ICcc4Fr3KeO7OoBWENl8Ar2znPPuZYG6TwlO21/Q7Uf+222otx9t6s
	 YKp5nru/sM2w1UIQzwZWVmNi7h/mnj1pzQVAqHqY4QjqoKS4lraBDAf4aI9ZmdNf2P
	 QtVKcES733E3ve7gRIHe8WXvIvqJ5V7eDo5aOTO+RinhE+DsJ45l7d0xX6CeCxHeig
	 wDxxs0FnFVjug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7815080C95;
	Thu, 16 Apr 2026 13:55:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AFCA8775
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 13:55:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A143C606C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 13:55:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bqyEg-sKnAO3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 13:55:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BA4EE606BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA4EE606BE
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA4EE606BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 13:55:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3020B4020C;
 Thu, 16 Apr 2026 13:55:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5522C2BCAF;
 Thu, 16 Apr 2026 13:55:40 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: jtornosm@redhat.com
Cc: Simon Horman <horms@kernel.org>, stable@vger.kernel.org,
 davem@davemloft.net, jesse.brandeburg@intel.com, edumazet@google.com,
 przemyslaw.kitszel@intel.com, netdev@vger.kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 kuba@kernel.org
Date: Thu, 16 Apr 2026 14:55:19 +0100
Message-ID: <20260416135519.873936-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260414110006.124286-5-jtornosm@redhat.com>
References: <20260414110006.124286-5-jtornosm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776347743;
 bh=fFpcxlUO8GkQVJnT624RqhJ8wfJGsPEiug5f2tM8N84=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y7sXTEzuoc1itLxf7/1AMhRehGXWxIVJQm8eE1TG2fJank9owGVyz4xmOmxZ9ZiCM
 4x2ZcCaTlUzBj/i/Zfyx7MZuymnhZiapvaOo5aLIZvhS7pmnkUp322/Eo62DBaEZ8x
 RK6gkQSwUxF0Ax9K3WTLzndK2InSyheFkmqvBNEkmpXMukkv7lrIGPkoB2AEUZj3Ms
 dUyMeaLK5KqOdrfzcns8rfE2ErtLRicYS4C2OM+zYzJdMBL31BxAtHWBT1KNmoH48y
 tYF3ZWIlVm82JUkr8+lw9qtv0OA8pYOzjpAJBRTWcQDiZ+IOBjEc6z/Cgy+V8ap2gR
 ki5VKDDJDD1+w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Y7sXTEzu
Subject: Re: [Intel-wired-lan] [PATCH net v3 4/5] ice: skip unnecessary VF
 reset when setting trust
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:horms@kernel.org,m:stable@vger.kernel.org,m:davem@davemloft.net,m:jesse.brandeburg@intel.com,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DB4B440F454
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ice: skip unnecessary VF reset when setting trust

Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
ice_reset_vf() when the trust setting changes. The ice driver already
has logic to clean up MAC LLDP filters when removing trust, which is
the only operation that requires filter synchronization. After this
cleanup, the VF reset is only necessary if there were actually filters
to remove.

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1399,14 +1399,19 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
>
>  	mutex_lock(&vf->cfg_lock);
>
> -	while (!trusted && vf->num_mac_lldp)
> -		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
> -
>  	vf->trusted = trusted;
> -	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>  	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
>  		 vf_id, trusted ? "" : "un");
>
> +	/* Only reset VF if removing trust and there are MAC LLDP filters
> +	 * to clean up. Reset is needed to ensure filter removal completes.
> +	 */
> +	if (!trusted && vf->num_mac_lldp) {
> +		while (vf->num_mac_lldp)
> +			ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
> +		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +	}
> +

Does setting vf->trusted before the cleanup loop break the filter
removal? Looking at the cleanup mechanism, ice_vf_update_mac_lldp_num()
calls ice_vf_is_lldp_ena() which checks both num_mac_lldp AND
vf->trusted:

ice_vf_lib.h:ice_vf_is_lldp_ena():
    return vf->num_mac_lldp && vf->trusted;

With the new ordering where vf->trusted is set to false before the loop:

ice_vf_update_mac_lldp_num() logic:
    was_ena = ice_vf_is_lldp_ena(vf);  // evaluates to (num > 0 && FALSE) = FALSE
    vf->num_mac_lldp--;
    is_ena = ice_vf_is_lldp_ena(vf);   // evaluates to FALSE

    if (was_ena != is_ena)              // FALSE != FALSE is FALSE
        ice_vsi_cfg_sw_lldp(vsi, false, false);  // NEVER called

But in the old code, vf->trusted was still TRUE during the loop:

    was_ena = (num > 0 && TRUE) = TRUE
    vf->num_mac_lldp--;
    is_ena = (0 && TRUE) = FALSE      // when last filter removed

    if (was_ena != is_ena)            // TRUE != FALSE is TRUE
        ice_vsi_cfg_sw_lldp(...)      // called to remove LLDP filters

So the ETH_P_LLDP packet filters are not removed from the hardware
switch, leaving stale filter rules. Should vf->trusted be set after the
cleanup loop instead?

>  	mutex_unlock(&vf->cfg_lock);
>
>  out_put_vf:
