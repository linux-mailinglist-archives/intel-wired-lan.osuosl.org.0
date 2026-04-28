Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHq5DLGB8Gn6UAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:45:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4925B481C35
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:45:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88137406FC;
	Tue, 28 Apr 2026 09:45:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H1rOPeMdxEwR; Tue, 28 Apr 2026 09:45:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA772406F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777369518;
	bh=hXPiyDd0ZkUo1HEJIGDPriqEgPNiky49ElRO6OeQArk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L9NLjfd/4lU2fk/IRjJmXcKqeW6dpg5LNyE9rbcSSKmGquCoJvEBUwPe9FKeQ7ZHs
	 NQ6rkwmHYfyer4Fk7G6gssVw+8Ursmgnx5ckTDLy2HeYwAdTrE8JqOEGcrav1vZPqL
	 t7soRmfBRJ/LrdpJjXXXH4FqRWOl8Y55fC51chcOwUxbjywvX5CpGavzzVEvV4XLsB
	 Mq8R2McZo1HmRdIQVlZxvmZBznhl562SPquSJScRIZIOzVhWLUnUsaJq/QU9pQ5Ued
	 skGEibQk4PWCSiCP2ljrYHXSUBe/9n4VMLnPlVpzovfclFQDpysaAmrMAEZBb/VaFD
	 b4jnEhv5fob7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA772406F5;
	Tue, 28 Apr 2026 09:45:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A58923D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37D0460F63
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:45:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VRjLaQ3oJzhR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 09:45:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4737C60F60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4737C60F60
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4737C60F60
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:45:13 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0A9F34C288718F;
 Tue, 28 Apr 2026 11:44:51 +0200 (CEST)
Message-ID: <f9fbc8c3-3b1d-456c-a389-4f95bf07822a@molgen.mpg.de>
Date: Tue, 28 Apr 2026 11:44:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vincent Chen <vincent.chen@sifive.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20260427031158.2665916-1-vincent.chen@sifive.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260427031158.2665916-1-vincent.chen@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [RFC PATCH] ice: allow creating VFs when
 !CONFIG_ICE_SWITCHDEV
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
X-Rspamd-Queue-Id: 4925B481C35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vincent.chen@sifive.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]

Dear Vincent,


Thank you for your patch.

Am 27.04.26 um 05:11 schrieb Vincent Chen via Intel-wired-lan:
> Currently ice_eswitch_attach_vf() is called unconditionally in
> ice_start_vfs() and ice_reset_all_vfs(), which causes VF creation
> to fail when CONFIG_ICE_SWITCHDEV is not defined or switchdev mode
> is not enabled at runtime.

I’d add a blank line between paragraphs.

> Fix this by adding switchdev mode checks at the call sites before
> calling ice_eswitch_attach_vf(), consistent with how
> ice_eswitch_attach_sf() is already handled in ice_devlink_port_new().
> Also remove the redundant check inside ice_eswitch_attach_vf() itself.

*Also* is a good indicator to make it a separate patch. I’d favor this 
in this case.

> This is similar to commit aacca7a83b97 ("ice: allow creating VFs for
> !CONFIG_NET_SWITCHDEV") which fixed the same issue for the previous
> ice_eswitch_configure() API.
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_eswitch.c |  3 ---
>   drivers/net/ethernet/intel/ice/ice_sriov.c   | 14 ++++++++------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  3 ++-
>   3 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index 2e4f0969035f..c709decb26d5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -512,9 +512,6 @@ int ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf)
>   	struct ice_repr *repr;
>   	int err;
>   
> -	if (!ice_is_eswitch_mode_switchdev(pf))
> -		return 0;
> -
>   	repr = ice_repr_create_vf(vf);
>   	if (IS_ERR(repr))
>   		return PTR_ERR(repr);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 843e82fd3bf9..6a0b724e46f9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -484,12 +484,14 @@ static int ice_start_vfs(struct ice_pf *pf)
>   			goto teardown;
>   		}
>   
> -		retval = ice_eswitch_attach_vf(pf, vf);
> -		if (retval) {
> -			dev_err(ice_pf_to_dev(pf), "Failed to attach VF %d to eswitch, error %d",
> -				vf->vf_id, retval);
> -			ice_vf_vsi_release(vf);
> -			goto teardown;
> +		if (ice_is_eswitch_mode_switchdev(pf)) {
> +			retval = ice_eswitch_attach_vf(pf, vf);
> +			if (retval) {
> +				dev_err(ice_pf_to_dev(pf), "Failed to attach VF %d to eswitch, error %d",
> +					vf->vf_id, retval);
> +				ice_vf_vsi_release(vf);
> +				goto teardown;
> +			}
>   		}
>   
>   		set_bit(ICE_VF_STATE_INIT, vf->vf_states);
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index de9e81ccee66..71595410174c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -807,7 +807,8 @@ void ice_reset_all_vfs(struct ice_pf *pf)
>   		ice_vf_rebuild_vsi(vf);
>   		ice_vf_post_vsi_rebuild(vf);
>   
> -		ice_eswitch_attach_vf(pf, vf);
> +		if (ice_is_eswitch_mode_switchdev(pf))
> +			ice_eswitch_attach_vf(pf, vf);
>   
>   		mutex_unlock(&vf->cfg_lock);
>   	}

The diff looks good.


Kind regards,

Paul
