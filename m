Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJ0rA1VJvWlr8gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 14:19:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1202DAD9B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 14:19:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11429847D4;
	Fri, 20 Mar 2026 13:19:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dXYQDYpgWa8A; Fri, 20 Mar 2026 13:19:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79FCF847D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774012753;
	bh=9MLYYERdfFA1CB4OH/+XWHwZn9CqGwo7sksbez6iZNc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BViC/SGYYCoRsROLnOM1eNBeu5RMM+joaTuPADHyxbpFzd7WLUaGtm58vhsTYqdrL
	 9wHNyvBtl3yuRrvLPPLM+DX/il065ZTAnzYFAErv0wXOmSGZEvzaJcFwreRR/bEDtn
	 BvGp+rlAlv0UmBs89ve1q+LDTJbX4XnQhYU/jpb01fH1RrLESbY64CCojj4XKyLOKz
	 rXNRpYc07GNOlhc20AnuwgjU7axWENhx+n8jqHptzwzOB2Qi3ns0YLSG8cUaLfYMT7
	 aY0f1TOBy2fbxM8eJwr1Ndsn/IzbxVEKhzpL9Fv3QQYvJUYPzGf1ZT3/abdJfRgRUS
	 osSrhMYqDWj+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79FCF847D5;
	Fri, 20 Mar 2026 13:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F3D91B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0815041CC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:19:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gfN4uQBQ1EfD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 13:19:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFAFA41CC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFAFA41CC5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFAFA41CC5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:19:10 +0000 (UTC)
X-CSE-ConnectionGUID: UEHPyYT5R9qzJCQZEg9riw==
X-CSE-MsgGUID: W5XUoZUZQjORG3UOT0sDjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="85722485"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="85722485"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 06:19:10 -0700
X-CSE-ConnectionGUID: Lx423qDxSKu/l1MtS1QhTQ==
X-CSE-MsgGUID: USvdCJOpRS2ELwjrPwdxxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227409341"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.17.139])
 ([10.246.17.139])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 06:19:07 -0700
Message-ID: <ccac99ca-4a9e-4997-adf4-2eee389d60cc@linux.intel.com>
Date: Fri, 20 Mar 2026 14:18:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
References: <20260320050556.422762-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260320050556.422762-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774012751; x=1805548751;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qZa3UKNeYYMd21cN91QyetESTuvn9ZfMASz3YdI2F6c=;
 b=GPQ08PbE6YkIucK/2bcVqIGLNUrvsmiz4HCItJ4cYmgJXT8D72cV/WVf
 WFDLbvgSFXMBboyVg4RxwHqSsso4ORcnjo9NREpEGT0UiCOR2z8R8ZMql
 dM91emR7SFDBIRzyGro8jHkASwX+jBNjVOhYULLbqD8q40Mt7ffoT8VQL
 3ezwWnDd1tY4rhoRKBBkOE89BwXfP/ROT9n7LGQEGYgQLvI/zg0+YZnqR
 ALX6c8iuugERuoRAcTShHiE2TfBn3dg7TNEG6zT+EJjonsThrvF7Xt3Pn
 ZaiwXagv2eVXET1ZCo/XQkZSKmPG5zGb7zByQ7mq73Af8gLNiSofkNAKt
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GPQ08PbE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use ice_fill_eth_hdr()
 in ice_fill_sw_rule()
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@intel.com,m:martyna.szapar-mudlaw@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0B1202DAD9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 20.03.2026 06:05, Aleksandr Loktionov wrote:
> From: Marcin Szycik <marcin.szycik@intel.com>

ACK

> Use the already existing helper function to fill Ethernet header. Also
> replace sizeof with a (also existing) macro to reduce the number of
> variables.
> 
> Suggested-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index bb0f990..6496534 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -2612,7 +2612,6 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
>  	u16 vlan_id = ICE_MAX_VLAN_ID + 1;
>  	u16 vlan_tpid = ETH_P_8021Q;
>  	void *daddr = NULL;
> -	u16 eth_hdr_sz;
>  	u8 *eth_hdr;
>  	u32 act = 0;
>  	__be16 *off;
> @@ -2625,11 +2624,10 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
>  		return;
>  	}
>  
> -	eth_hdr_sz = sizeof(dummy_eth_header);
>  	eth_hdr = s_rule->hdr_data;
>  
>  	/* initialize the ether header with a dummy header */
> -	memcpy(eth_hdr, dummy_eth_header, eth_hdr_sz);
> +	ice_fill_eth_hdr(eth_hdr);
>  	ice_fill_sw_info(hw, f_info);
>  
>  	switch (f_info->fltr_act) {
> @@ -2730,7 +2728,7 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
>  
>  	/* Create the switch rule with the final dummy Ethernet header */
>  	if (opc != ice_aqc_opc_update_sw_rules)
> -		s_rule->hdr_len = cpu_to_le16(eth_hdr_sz);
> +		s_rule->hdr_len = cpu_to_le16(DUMMY_ETH_HDR_LEN);
>  }
>  
>  /**

