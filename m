Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHplFU6U72ktDAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 18:52:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0595476AE5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 18:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A4DD40660;
	Mon, 27 Apr 2026 16:52:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cd2mGiuYV_YL; Mon, 27 Apr 2026 16:52:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB0FD40664
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777308747;
	bh=2fu+xvwb8ZJWiTON3ATIujkArv76wZ5f5nn16cPbd0g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yCZdOG24OOcvp5Xm3ztr/a9Oa5PyLd9x8YLyeabB7K6xfMjRFFiqP/BmlVGkl9sPD
	 NqFhJ2lYuwTFiQDZa/F+0CWe+bo9rgK72dBgMVgsMwidG7g5lZVLSJdq/MtG2zK6+q
	 7Vmlr75o9sqVj8CpIzhRqZs5xkvxLl974pQLsWYfcpDDYYEWMsb6IQie/iVsd0untS
	 aqmxTwBYUuF5kBwzHWPHgRivQyjSTAzViCS+FVn6aoKUexf4dYvZo+j54Id6HyRRAB
	 xlSA2k/swTpvpfPA56z1au2gOay7+VZo/2xC5JTZ4ymBKc8BkrOvQzE2T+gLIEO6cL
	 mBPaX1fH4NsdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB0FD40664;
	Mon, 27 Apr 2026 16:52:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B35332DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 16:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A54CD4009E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 16:52:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ezj7XO6UEli5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 16:52:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DB0984008A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB0984008A
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB0984008A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 16:52:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 68FA64182D;
 Mon, 27 Apr 2026 16:52:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D34AAC19425;
 Mon, 27 Apr 2026 16:52:21 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: jtornosm@redhat.com
Cc: 'Simon Horman' <horms@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Mon, 27 Apr 2026 17:50:45 +0100
Message-ID: <20260427165045.1228721-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260423130405.139568-5-jtornosm@redhat.com>
References: <20260423130405.139568-5-jtornosm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777308744;
 bh=ETP5cbZBx5BXdzQHP8lPfMRyGrQXvV0TD9QSKFc4srE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TMiD9d/gnr+BdZknfY5sngLMZIcEnTQ7MPCD+wG+GIE8sWtujrLosR3Kg76IoB/x4
 RmbsYiy7jF4ZMGnnZvFHxVGjPtlXmooPqIjl8V71nI7qS701xa+NaB1oE2fC9SWotQ
 1knxWGrtAjoLGfGNDM1vv/1Mtg5L9p7ISN8ZHrzU7T3IJOOJbEwHwS9Fy7Nr7UwKH+
 JFNbLDea0DVJLVqZyZKHYMStfzQBVtoZpIvUv4dwLwepdzy5R89xrykQYPHZZua0Nu
 tskggTbfZ64hOS3Ai4xJypY/TDSf2caO6e3fclKV1/mvW2GDHHaJY5A/VXtMyYowHB
 eZs1kFyofFi4Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TMiD9d/g
Subject: Re: [Intel-wired-lan] [PATCH net v4 4/4] ice: skip unnecessary VF
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
X-Rspamd-Queue-Id: D0595476AE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: skip unnecessary VF reset when setting trust

This patch attempts to optimize VF trust setting changes by skipping the VF
reset when granting trust, and only resetting when revoking trust if MAC LLDP
filters are present. It also fixes a race condition by doing the reset before
clearing the LLDP filters.

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7e00e091756ddc..8686c382404f3f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
[ ... ]
> @@ -1399,11 +1427,16 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
>  
>  	mutex_lock(&vf->cfg_lock);
>  
> -	while (!trusted && vf->num_mac_lldp)
> -		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
> -
> +	/* Reset only if revoking trust with MAC LLDP filters */
> +	if (!trusted && vf->num_mac_lldp) {
> +		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);

Does ice_reset_vf() clear vf->num_mac_lldp to 0 when it calls
ice_vf_pre_vsi_rebuild() internally?

If so, does this make the following while loop dead code, bypassing the
ice_vf_update_mac_lldp_num() calls that cleanly decrement the count and
trigger ice_vsi_cfg_sw_lldp() to clean up the LLDP software switch rules?

> +		while (vf->num_mac_lldp)
> +			ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
> +	} else {
> +		ice_setup_vf_trust(vf, trusted);
> +	}

If we revoke trust (!trusted) and vf->num_mac_lldp > 0, we enter the if block
and skip the else block containing ice_setup_vf_trust().

When ice_reset_vf() rebuilds the VSI, vf->trusted is still true. Will the
rebuild process use this true value to set the ICE_VIRTCHNL_VF_CAP_PRIVILEGE
bit in vf->vf_caps?

Since ice_setup_vf_trust() is skipped, does this fail to explicitly clear the
privilege capability bit? Could a malicious VM add a MAC LLDP filter before
trust is revoked to ensure num_mac_lldp > 0, thereby retaining its privileges?

Furthermore, when revoking trust and vf->num_mac_lldp == 0, we take the else
branch and skip ice_reset_vf().

Trusted VFs are permitted to allocate more than ICE_MAX_MACADDR_PER_VF or
ICE_MAX_VLAN_PER_VF limits. Previously, the unconditional ice_reset_vf()
would tear down the VSI and purge these extra non-default filters.

Without the reset, is there any logic in ice_setup_vf_trust() to prune the
extra MAC and VLAN filters that were added while the VF was trusted? Will
skipping the reset allow an untrusted VF to retain excessive hardware filters
indefinitely and potentially exhaust PF resources?

>  	vf->trusted = trusted;
> -	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +
>  	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
>  		 vf_id, trusted ? "" : "un");
>
