Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vQoANV0GPGoxiwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 18:31:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F17146BFFC2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 18:31:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=yZjKPhi2;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99B5A4060C;
	Wed, 24 Jun 2026 16:31:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOjtO7KiejDg; Wed, 24 Jun 2026 16:31:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF01D40627
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782318682;
	bh=wazYbUJgqhR8xpd0IySqVbbECzd3A9b0ORDczmzdtjE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yZjKPhi2rNIpdetnuzAMYquol0k4Ihdza2FNWpTyiywQ+JXlnKm9ekRC/piUuVq9F
	 rU0P/1rTVmSsMBooOpDLm0uc082xTE+ISPbyaCe0YrRFdDXef3UN1G6AFt4VGyxvt6
	 UdDRbYkK6q9L8BKBDlQDatue+aPyOReSNr8eWKJaGva5ICb2pSiKAgJ0z92MAWbGxM
	 lZMMcZ0aXxq7ryOeM8T7PHceZpoV+/7vZeLsbukCxiqkqsL5C5qTfC7o9h9NLAFih8
	 tXl3Fo1rYtMkEth1yJ3qYuSS7iUMvNSNI7nRfmIMJvMDXju6WD+h3RqXj/wTSISBDI
	 QC0d1Ww6P7cZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF01D40627;
	Wed, 24 Jun 2026 16:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D3AEA367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 16:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C53AA81BBD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 16:31:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WGno7Um5bead for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 16:31:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C109481AC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C109481AC4
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C109481AC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 16:31:19 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id A852E419B5;
 Wed, 24 Jun 2026 16:31:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B89D1F000E9;
 Wed, 24 Jun 2026 16:31:16 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: jtornosm@redhat.com
Cc: Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Wed, 24 Jun 2026 17:30:50 +0100
Message-ID: <20260624163050.1145761-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260623101800.991293-3-jtornosm@redhat.com>
References: <20260623101800.991293-3-jtornosm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782318678;
 bh=wazYbUJgqhR8xpd0IySqVbbECzd3A9b0ORDczmzdtjE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=avUXvY8w1AXOVduxO/tTRy1iRjmdGJhuo4pzWmoXFrM6oHXianuWIienD9U4+MB0+
 EMHNKKrr9zq5OkrZxvSPUxrOmavv8u3H0+XqIkX3TPjCfgSi1ZMFEzY62+ywdmT0Nu
 uYB6Qpr36+TsACDN9cxsuI57L4Uttu5q3lfiye5sgze2xNMdv+hLfjyhnmjMr/ZCXv
 gZrDK4N8SVhCNyfgD1legdXXGwVfNoWUcGb0gXBu1SwNWxmDAaWi2mP9mqaBJzIyce
 GK93JWkM6QYmk9+ybrunZoXa5wBN3yK08iFEpiHHx5BpZfTs8o7/LycVQy/Q8iCQAB
 i0R2BSFhPTAqA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=avUXvY8w
Subject: Re: [Intel-wired-lan] [PATCH net v7 2/4] i40e: skip unnecessary VF
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,osuosl.org:dkim,osuosl.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F17146BFFC2

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://netdev-ai.bots.linux.dev/sashiko/
---
i40e: skip unnecessary VF reset when setting trust

This patch avoids the ~10 second VF reset delay on trust changes by
flipping the I40E_VIRTCHNL_VF_CAP_PRIVILEGE bit directly, and only
resorting to a full reset when revoking trust from a VF that has
advanced features (ADQ, cloud filters, UC/MC promisc) configured.

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index a26c3d47ec15..0cc434b26eb8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4987,19 +5004,20 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
>  	set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
>  	pf->vsi[vf->lan_vsi_idx]->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
>  
> -	i40e_vc_reset_vf(vf, true);
> +	/* Reset only if revoking trust and VF has advanced features configured */
> +	if (!setting &&
> +	    (vf->adq_enabled || vf->num_cloud_filters > 0 ||
> +	     test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states) ||
> +	     test_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))) {

[High]
Does this revoke-trust heuristic miss MAC/VLAN filters that were only
installable while the VF was trusted?

A trusted VF is allowed to add many more MAC addresses than
I40E_VC_MAX_MAC_ADDR_PER_VF (i40e_check_vf_permission() uses
I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF) and more than I40E_VC_MAX_VLAN_PER_VF
VLANs.  These quotas are enforced only at add-time.

The previous always-reset path went through i40e_vc_reset_vf() ->
i40e_cleanup_reset_vf() -> i40e_free_vf_res() -> i40e_vsi_release(),
which destroyed the VSI and its mac_filter_hash, and reset
vf->num_vlan = 0.

The new fast path only flips the PRIVILEGE bit, leaving any
trusted-quota MAC/VLAN filters installed in hardware on an
now-untrusted VF.  Should the heuristic also check
vf->num_vlan > I40E_VC_MAX_VLAN_PER_VF or the size of the lan VSI's
MAC filter hash before taking the no-reset branch?

[Medium]
Is the sampling of vf->adq_enabled, vf->num_cloud_filters and the
UC/MC_PROMISC bits race-free against the admin queue worker?

i40e_ndo_set_vf_trust() runs under rtnl_lock and
__I40E_VIRTCHNL_OP_PENDING, but i40e_vc_process_vf_msg() (called from
i40e_clean_adminq_subtask() in the service workqueue) takes neither.
A virtchnl handler such as i40e_vc_config_promiscuous_mode_msg(),
i40e_vc_add_cloud_filter() or i40e_vc_add_qch_msg() can be running
concurrently and may have already passed its CAP_PRIVILEGE gate but
not yet set vf_states / num_cloud_filters / adq_enabled when this
ndo samples them.

In that window the ndo would observe a "clean" VF, take the no-reset
branch, and clear CAP_PRIVILEGE while the in-flight handler still
goes on to enable promisc / install a cloud filter / set
adq_enabled = true on the now-untrusted VF.

The previous always-reset behaviour masked this because the reset
moved the VF to I40E_VF_STATE_DISABLED, after which
i40e_vc_process_vf_msg() rejects further messages.  Is some additional
serialization (or a recheck after clearing the bit) needed here?

> +		i40e_vc_reset_vf(vf, true);
> +		i40e_del_all_cloud_filters(vf);
> +	} else {
> +		i40e_setup_vf_trust(vf, setting);
> +	}
> +
>  	dev_info(&pf->pdev->dev, "VF %u is now %strusted\n",
>  		 vf_id, setting ? "" : "un");
>  
> -	if (vf->adq_enabled) {
> -		if (!vf->trusted) {
> -			dev_info(&pf->pdev->dev,
> -				 "VF %u no longer Trusted, deleting all cloud filters\n",
> -				 vf_id);
> -			i40e_del_all_cloud_filters(vf);
> -		}
> -	}
> -

[Low]
The dedicated "VF %u no longer Trusted, deleting all cloud filters"
dev_info() is dropped in this hunk, and the commit message does not
mention the logging change.  Operators or log scrapers that key on
this specific string for audit of cloud filter teardown will no
longer see it; only the generic "VF %u is now untrusted" line
remains.  Was removing this message intentional, and if so could
that be called out in the changelog?

>  out:
>  	clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
>  	return ret;
