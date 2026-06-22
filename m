Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EtWONT0+OWqHpAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 15:53:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E80DC6B007C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 15:53:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=S8eVdSJE;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D7BD4EF82;
	Mon, 22 Jun 2026 13:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hlM1-kDnVjaz; Mon, 22 Jun 2026 13:52:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E1E74EF86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782136378;
	bh=xzOoqAAxroPPZjBApkDwx0GEjpII3jjnrGM4r8kbMGs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S8eVdSJEZ2372YX6KCW1gfrTa02xdsZtulf4NW2PSDvm4PhD4Aa0CdY9xwE9zbD8O
	 YINRjRIp4JP/9ymahfZ1Jj6a26xF2xi1VAHGuet05xj7DEOvt5hXmMsmLCAIKBqGvt
	 Lj2a/Rd5wZGuBRQ/Yoiuj61Nd+h+W2fwAJXJrp+t5UYsDPiaPEH/EyE5Dx9wky4c9i
	 5C2ZMHMoKpmiRCQiNb0dlGmvGb2yyG1Om1F6sdDDGS97fotIaV5/u8iooS+vcUhc3p
	 Fhx7v3FhFSU4zAgdaq0yVyiYCH3nwkrIvJVt7fCZkHX7E13lvzL65Nz/xmSQAt7WNx
	 QC1VsBnVQl/Zw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E1E74EF86;
	Mon, 22 Jun 2026 13:52:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 50038F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 13:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D312400B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 13:52:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gxQsflpkXfTP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 13:52:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F19042E42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F19042E42
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F19042E42
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 13:52:54 +0000 (UTC)
X-CSE-ConnectionGUID: egldbWcNTl+ct7/w8mS/lA==
X-CSE-MsgGUID: cAoaZY82ROqyFjw0quPuPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="82874532"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="82874532"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:52:55 -0700
X-CSE-ConnectionGUID: TorE0h44SyapVDUhwFe1qA==
X-CSE-MsgGUID: Rlf3rkzbS+GNN13FUSGUJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="253133706"
Received: from unknown (HELO [10.217.160.239]) ([10.217.160.239])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:52:51 -0700
Message-ID: <4dc1eb2d-e69f-4f13-ab08-ed0077305098@linux.intel.com>
Date: Mon, 22 Jun 2026 15:52:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
References: <20260622081030.2312129-1-poros@redhat.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260622081030.2312129-1-poros@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782136375; x=1813672375;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8IGxnFLIvHPA5eCvzWhuRYe0PBGao496jKdiz07JBDk=;
 b=ljGgCYc1YS8EI0a0lFB9FSanQiITbmj8bSsBv1mzD0acjCCi161mNltC
 V2WQRhm7B9ZWolO1/GCYugvsepzvd7ktQ3rojFZbA9FUtE7Xx1eEyLbAC
 MfeOoVL0Q2+CR2UNroqrs5IT5dRc7tNq6unnMjyaFFq2W27y60cv6otgf
 T2Q6byymInPuC/hGkRS5Id7u372rMeHCBRWKGIZqIxndOYbGiDyUGPZbV
 4LVKQ74wxx2+KrHg7dyuwp0VXrfy1VpXGBcRJszhXgFcfGIkh5ptMj0pt
 Gy0KuAgROCcczAIfKlReVu+skR0SaI3b4SgALjwfzv59AKmE85NMduJJL
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ljGgCYc1
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: clear the default
 forwarding VSI rule when releasing a VSI
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E80DC6B007C



On 22/06/2026 10:10, Petr Oros wrote:
> When a VSI is configured as the switch's default forwarding VSI
> (ICE_SW_LKUP_DFLT) and is then torn down, the rule is left behind in
> the switch. ice_vsi_release() no longer removes it, and the SR-IOV VF
> free path (ice_free_vfs() -> ice_free_vf_res() -> ice_vf_vsi_release()
> -> ice_vsi_release()) does not disable promiscuous mode either, which
> only happens on VF reset in ice_vf_clear_all_promisc_modes().
> 
> A trusted VF that enters unicast promiscuous mode becomes the default
> forwarding VSI (this is the default mode, when the PF does not have VF
> true-promiscuous mode enabled). If the VFs are then destroyed without
> the VF first leaving promiscuous mode, the ICE_SW_LKUP_DFLT rule for
> the now-freed VSI is leaked. When VFs are recreated, a VSI reuses the
> freed hw_vsi_id. If it is assigned a different VSI handle than the
> leaked rule holds, ice_set_dflt_vsi() does not recognize it as
> already-default, and ice_add_update_vsi_list() folds the dangling
> (freed) handle into a VSI list, which the firmware rejects. The VSI
> handle assigned on re-creation varies, so the failure is intermittent
> rather than every cycle.
> 
> Reproduce by repeatedly running the cycle below on the two ports of the
> same card, where $VF0 and $VF1 are the netdevs of vf 15 once they
> appear. The VF must be brought up so iavf actually pushes the unicast
> promiscuous request, and the rule must settle before the VFs are torn
> down again:
> 
>   echo 16 > /sys/class/net/$PF0/device/sriov_numvfs
>   echo 16 > /sys/class/net/$PF1/device/sriov_numvfs
>   ip link set $PF0 vf 15 trust on
>   ip link set $PF1 vf 15 trust on
>   ip link set $VF0 up
>   ip link set $VF1 up
>   ip link set $VF0 promisc on
>   ip link set $VF1 promisc on
>   sleep 1
>   echo 0 > /sys/class/net/$PF0/device/sriov_numvfs
>   echo 0 > /sys/class/net/$PF1/device/sriov_numvfs
> 
> Within a few cycles the ice PF and iavf VF log:
> 
>   Failed to set VSI 25 as the default forwarding VSI, error -22
>   Turning on/off promiscuous mode for VF 63 failed, error: -22
>   PF returned error -53 (IAVF_ERR_ADMIN_QUEUE_ERROR) to our request 14
> 
> This cleanup used to live in ice_vsi_release() but was dropped by the
> referenced refactor. Restore it. Clear the default forwarding VSI rule
> in ice_vsi_release() when this VSI owns it, which covers every teardown
> path.
> 
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 2717cc31bff8fe..408464434506ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2872,6 +2872,9 @@ int ice_vsi_release(struct ice_vsi *vsi)
>  		return -ENODEV;
>  	pf = vsi->back;
>  
> +	if (ice_is_vsi_dflt_vsi(vsi))
> +		ice_clear_dflt_vsi(vsi);

In the referenced commit, the chunk of code that contained these missing 2 lines
was moved to ice_vsi_decfg(). It also sounds like a good place for them and will
be called from ice_vsi_release(). Are you sure we should place them directly in
ice_vsi_release() instead?

Thanks,
Marcin

> +
>  	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
>  		ice_rss_clean(vsi);
>  

