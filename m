Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GABwCQahvWkM/wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:33:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BA72E00A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:33:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DF5D61BE1;
	Fri, 20 Mar 2026 19:33:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AFim0L2V5vob; Fri, 20 Mar 2026 19:33:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89C5A61BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774035203;
	bh=3OeaZ8QKPqU3qD0elwA/N3Qp4+TWZuuiUnzjc03g3mY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XhirCXQOQU246C1QApQk3RmQ/klrGarBJtEpXYmK/nuoP+gMx4dTKjtmojIApXPtO
	 MANf0wrAz6cwUxds3qNnZCCvzd7QBiH/qlqZcnV7AEKgA6PHb2XrwJQABR7Kp7gYJH
	 wen0c1nMLBSQAjFrIRe/DxthBU9z3BG+gQBI4bDONplWAmLIRfseNxrh+YsAW8h6sn
	 /d8RpF66GeTfxkfP4mS5K/3HYtSlng9p7d2K5Aof1fWZtOmYzsClSMRo3TS9NTscBY
	 Sh7SX3sFYDGwynpCRFrbyB43fZ5POVRc5hXl8kLpEKzNXrlBcp8DuVSiGd1sfgkEa9
	 vKQ0crTzdtmOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89C5A61BE2;
	Fri, 20 Mar 2026 19:33:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EC97A21F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE6998466D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:33:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B1xd9j5lqPPl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 19:33:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 04CA48466C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04CA48466C
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04CA48466C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:33:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E978860126;
 Fri, 20 Mar 2026 19:33:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72F9EC2BCC6;
 Fri, 20 Mar 2026 19:33:18 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Date: Fri, 20 Mar 2026 19:33:14 +0000
Message-ID: <20260320193314.171338-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320050525.422403-1-aleksandr.loktionov@intel.com>
References: <20260320050525.422403-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774035199;
 bh=54I0tzUts4x3NXl1LeohI/qgD2qdo+/1/ND8yVEEsiE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hkoTiZaEXvskL0gEFvykoMJgxgG7HC8L6R+Ki8kZzonvCQeKfLvdJKvZIfo48/e24
 F/7ZpbNWvDcdU0ntns6UCHogQJRied1gUV223U+jCCcRX1c3Ls2oNVHKuGbHnvNKqc
 NAoJRKoW4ZAZipKhmCOOLSvmbvYlX9tHki39OzsFI9IgT1bOZUXJ2EY0Q7amHXKNX4
 fSfdWBFGQmKznAL1ax/hBq2ZN+O0kkMK8cC9CsNdvhQMfCmekjTUUiP8XNjw3N/iNK
 pJpgIfpR2//XnOjJa6VoOeStUunJs7gStzXc2QNrDdQa2iHc27AAnN4pwezLlI7RBH
 4w2ltkkvd4hWg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hkoTiZaE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: do not carry link
 status over to link event data
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,linux.dev:url,osuosl.org:dkim];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A2BA72E00A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ice: do not carry link status over to link event data

This patch removes code that updated the link_up parameter with the
current firmware state after calling ice_update_link_info().

> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e7308e381e2f..348c86b7328d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1127,12 +1127,6 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
>
>  	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
>
> -	/* Check if the link state is up after updating link info, and treat
> -	 * this event as an UP event since the link is actually UP now.
> -	 */
> -	if (phy_info->link_info.link_info & ICE_AQ_LINK_UP)
> -		link_up = true;
> -

Could removing this check create a race condition with stale link events?

Consider this scenario: firmware generates a link DOWN event, but before
the driver processes it, the link comes back UP. When the driver later
processes the event and calls ice_update_link_info(), the firmware query
returns the current state (UP).

Previously, the removed code would check phy_info->link_info.link_info &
ICE_AQ_LINK_UP and override link_up to true, reflecting the current
reality. Now link_up stays false (the stale event data).

Later in ice_link_event(), the comparison checks:

    if (link_up == old_link && link_speed == old_link_speed)

If the link was previously UP (old_link=true), the comparison fails
(false != true), and the driver proceeds to process a link DOWN event
even though the firmware reports the link is UP. This leads to
ice_vsi_link_event() calling netif_carrier_off() and
netif_tx_stop_all_queues() inappropriately, marking the network interface
DOWN and causing packet loss until the next link event.

The removed comment explicitly documented this protection: "Check if the
link state is up after updating link info, and treat this event as an UP
event since the link is actually UP now."

The commit message states "changes that occurred from update link
info...will be handled appropriately by itself" but doesn't explain what
mechanism handles this. The ice_update_link_info() function only queries
firmware state; it doesn't generate events or trigger link state change
handling.

How does the new code prevent stale link DOWN events from incorrectly
bringing down an interface when the link is actually UP?

>  	vsi = ice_get_main_vsi(pf);
>  	if (!vsi || !vsi->port_info)
>  		return -EINVAL;
