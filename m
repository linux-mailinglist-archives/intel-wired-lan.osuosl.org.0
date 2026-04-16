Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE46N8MB4WmJoQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 17:35:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E1A410F46
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 17:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA4504065C;
	Thu, 16 Apr 2026 15:35:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O7KRNNJqIOXq; Thu, 16 Apr 2026 15:35:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC3F04061E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776353728;
	bh=mAuUXGUOyiTke3TMbhJ0TWYEM6aNLECgocdEmSjfaCA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FEM/lDnZjsGgOCwt5acyGY8X2A7udgDDdsZiVpopThVdNxSKB/DRWzwarHqAQVPBt
	 giH+EQN5XE2g4KIFoqdVhg7IxW19/XXNw2AJ9RvNdTYocXNM8haJThdxQ6I++nM123
	 2o2onzubW1LUli3LvmYKlYaDE1AB+cdVPKbLblbX8ehdnXRbfxKTFHKmIbHjb5DnO0
	 X2TllVY/3IeRSVvjkg9ulUPCtr2g4uEOH46IHJ+IXe6vhA7oAJdU44IOHqunUDBona
	 vytrcuVV7Rc7j0h0eWzVkqeFpQxTVx8w79xdvgMVX6Rkp31CRIu9km0qLaa/ZxxYvn
	 L2p83KqkV7I7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC3F04061E;
	Thu, 16 Apr 2026 15:35:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 87A06775
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:35:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAD9A40535
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:35:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Ss6Dmkozmdu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 15:35:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 088854022B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 088854022B
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 088854022B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:35:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8EFEC41833;
 Thu, 16 Apr 2026 15:35:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FA62C2BCAF;
 Thu, 16 Apr 2026 15:35:22 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: jtornosm@redhat.com
Cc: 'Simon Horman' <horms@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
Date: Thu, 16 Apr 2026 16:31:47 +0100
Message-ID: <20260416153146.886427-2-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260414110006.124286-3-jtornosm@redhat.com>
References: <20260414110006.124286-3-jtornosm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776353724;
 bh=8FfjymGAZxK/xN8hy7FutAHj5tyBKeFyfluTizfoP1U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TQDDjBwzJgFg0GuwxXn1S+fV8XAtGeIQEkF0dbcxB4uDhtOStZRRqHKZpKjW37H2G
 6yRlNGMrZROYxavfe++NAbko/120DTjGZxj9oIu8UNQljG3LqMJE4HpTOrbAqHzK4C
 IrUoJHBQSBLQQtlBr7JAFre1ihN2Vq2brlW4CG3kpLNJdqM7gBbDv4In8yYGRW2j73
 7mEUcR3DKa0QR1ebiS5s5fjONpyzqYetLU4ec5TpZE1hMVnbo9g4Syz2FPO+whSIIH
 axBt1NptCLmAdN8vX1lSNYswTiLQD+vOxeSjHThI7qqQfdHrJc4AXp6w0u3uaZ9pgQ
 I6Tm4xDTZfr2Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TQDDjBwz
Subject: Re: [Intel-wired-lan] [PATCH net v3 2/5] i40e: skip unnecessary VF
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 53E1A410F46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
i40e: skip unnecessary VF reset when setting trust

This commit skips the VF reset when setting VF trust, unless trust is
being removed from a VF with ADQ cloud filters. The goal is to avoid
a 10-second delay caused by the reset during trust changes.

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index a26c3d47ec156..fea267af7afe6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4987,16 +4987,21 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
>  	set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
>  	pf->vsi[vf->lan_vsi_idx]->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
>  
> -	i40e_vc_reset_vf(vf, true);

By skipping the VF reset here, does the VF's privilege capability flag
become permanently desynchronized from its trust state?

The underlying capability flag I40E_VIRTCHNL_VF_CAP_PRIVILEGE is used by
Virtchnl handlers like i40e_check_vf_permission() to authorize privileged
actions. This flag is exclusively updated in i40e_alloc_vf_res(), which is
only invoked during a VF reset.

Without the reset, it appears that granting trust fails to give the VF
actual privileged capabilities, and revoking trust leaves the privilege
bit set indefinitely, allowing an untrusted VF to perform unauthorized
privileged operations.

Additionally, could revoking trust fail to scrub the VF's actively
configured privileged hardware state, such as promiscuous mode and excess
MAC/VLAN filters?

Trusted VFs can explicitly enable promiscuous mode and configure MAC/VLAN
filters beyond strict limits. In the original code, i40e_vc_reset_vf()
dismantled these states by calling i40e_cleanup_reset_vf(), which
explicitly invokes i40e_config_vf_promiscuous_mode(..., false, false) and
destroys the VSI.

By skipping the reset, an untrusted VF retains its previously configured
promiscuous mode, allowing it to continue intercepting unauthorized traffic.

>  	dev_info(&pf->pdev->dev, "VF %u is now %strusted\n",
>  		 vf_id, setting ? "" : "un");
>  
> +	/* Only reset VF if we're removing trust and it has ADQ cloud filters.
> +	 * Cloud filters can only be added when trusted, so they must be
> +	 * removed when trust is revoked. Other trust changes don't require
> +	 * reset - MAC/VLAN filter sync happens through normal operation.
> +	 */
>  	if (vf->adq_enabled) {
>  		if (!vf->trusted) {
>  			dev_info(&pf->pdev->dev,
>  				 "VF %u no longer Trusted, deleting all cloud filters\n",
>  				 vf_id);
>  			i40e_del_all_cloud_filters(vf);
> +			i40e_vc_reset_vf(vf, true);

Is it possible that reordering i40e_del_all_cloud_filters() before
i40e_vc_reset_vf() creates a race condition on vf->cloud_filter_list?

i40e_del_all_cloud_filters() performs lockless modifications on
vf->cloud_filter_list while running from the netlink context.

In the original code, i40e_vc_reset_vf() ran first, which immediately
cleared I40E_VF_STATE_ACTIVE. This prevented concurrent Virtchnl requests
like VIRTCHNL_OP_ADD_CLOUD_FILTER from modifying the list, because their
handlers in i40e_vc_process_vf_msg() abort if I40E_VF_STATE_ACTIVE is
not set.

By calling i40e_del_all_cloud_filters() first, the VF is left in the
active state. The PF service task could concurrently process an
ADD_CLOUD_FILTER message, executing hlist_add_head() simultaneously with
hlist_for_each_entry_safe(), which might cause list corruption.

>  		}
>  	}
>
