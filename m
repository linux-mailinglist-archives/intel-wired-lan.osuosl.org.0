Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHC/LklV+GmWtAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 10:14:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D87C4B9FFB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 10:14:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF9E18445E;
	Mon,  4 May 2026 08:13:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XjuB2Xn4HRTC; Mon,  4 May 2026 08:13:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E9BF84460
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777882437;
	bh=tl4JNUZMjesO8NuLiNKWkynVLkwduRuslw1outJxemM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2TlHcYuUW3xiZAgral+mAFxD7KxtpAziR5dH36eWXeNNvn5AFw0eeuB2EqzsTdsUG
	 N0zunrBDLmkVIS2rP3Ycph+gCwJiChKBPhDILitFUpMaPpKNW6g2AYxwh92V+kFGBC
	 7tAcyUdcT06H6TzXjAqwokFH8K/Io8o+R2yCODxb1tWnnY8UHQDA05PUcCPfdSQnV9
	 Y4IKFjqyAQt+Nqd+CXEZK34JFdeu58+H4kbS8c9JRKfK5+JjHyHEQfbORibkEpmvps
	 HwgjZihFPHk+O/JEMSjwxSQTL/btYR3UjYPzI/P1j2r/kANNz2hPg+L4HXvXPPLPW9
	 w3RuuBlQbjjMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E9BF84460;
	Mon,  4 May 2026 08:13:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 70508190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 08:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 559E34179B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 08:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DOVHuvSlnnjN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 08:13:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6AECB4179A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AECB4179A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6AECB4179A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 08:13:53 +0000 (UTC)
X-CSE-ConnectionGUID: qy20abcJTlSIWFfQb71uXQ==
X-CSE-MsgGUID: mlbxtTPpS5uiLPSv/l1BQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="66267431"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="66267431"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 01:13:53 -0700
X-CSE-ConnectionGUID: FJTjzmBeRjKWGxOzEDSmhA==
X-CSE-MsgGUID: UPX6moqJSWqissfla8fyxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="230852817"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 01:13:51 -0700
Date: Mon, 4 May 2026 10:09:55 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Cc: michal.swiatkowski@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, jramaseu@redhat.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com
Message-ID: <afhUUwTq7xPSe75N@mev-dev.igk.intel.com>
References: <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
 <20260430152948.1683359-2-horms@kernel.org>
 <20260430162149.GC900403@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260430162149.GC900403@horms.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777882434; x=1809418434;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=i0ow0BGME4ktvZKUNMDO7lIwbJDhWGcBGUZClqgLTvE=;
 b=C0Os4fDiK/tiJxWEygkm/r4sTvACATvvtm8Ebf4pL9vlN4At9W9/7TZb
 SL1YgRXP644wpbcdrvtsiIIBbFijc+n0h8VFX2eEnpOgWuuTWmV2o2AC9
 B6ASbWfNINq1g4H3Pq3qmpqJL4/sO0Qq5EwMkoXf2/6fhCnFqH3miLGeM
 TRS1OmB4X0YUFSD3BBgZ2jIlZDrdQY7KCPsCLohxOsX+6qgWnpfkWD90b
 BxMhb8teU5ZEv5BWxoRULUB7qHRpD/ddVa8J+g3VoE9TsQJU4Wc9/xo1Q
 /QkHwvwoXeG+ZVDlxMDRWkQ+c6csKi5cLpOg3mhQpcTznfX7O8ussmfv2
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C0Os4fDi
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: use
 NETIF_F_HW_CSUM instead of IP/IPV6
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
X-Rspamd-Queue-Id: 2D87C4B9FFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mev-dev.igk.intel.com:mid];
	FORGED_SENDER(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Thu, Apr 30, 2026 at 05:21:49PM +0100, Simon Horman wrote:
> On Thu, Apr 30, 2026 at 04:29:49PM +0100, Simon Horman wrote:
> > From: 'Simon Horman' <horms@kernel.org>
> > 
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > Full review at: https://sashiko.dev
> 
> Sorry, the email I am responding to was supposed to come with
> some commentary - it seems my method for adding it is broken :(
> So I'm adding it below (as best as I can remember what it was).
> 

Thanks for adding the comments.

> > ---
> > ice: use NETIF_F_HW_CSUM instead of IP/IPV6
> > 
> > This commit replaces the IP and IPV6 checksum offload flags with HW_CSUM
> > in the ice driver to allow hardware checksumming for IPv6 packets with
> > extension headers. It also removes the mutual exclusivity check between
> > TSO and GCS.
> > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index 5f92377d4dfc..33f252a6a22f 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -3491,9 +3491,8 @@ void ice_set_netdev_features(struct net_device *netdev)
> > >  			NETIF_F_RXHASH;
> > >  
> > >  	csumo_features = NETIF_F_RXCSUM	  |
> > > -			 NETIF_F_IP_CSUM  |
> > >  			 NETIF_F_SCTP_CRC |
> > > -			 NETIF_F_IPV6_CSUM;
> > > +			 NETIF_F_HW_CSUM;
> > 
> > By advertising NETIF_F_HW_CSUM, the network stack assumes the driver can handle
> > checksums for any protocol and passes non-IP packets (e.g., from AF_PACKET
> > injected frames) to the driver with CHECKSUM_PARTIAL.
> > 
> > Since ice_tx_csum() strictly parses the L3 header and expects IPv4 or IPv6,
> > returning -1 for other protocols, will this regression cause non-IP packets to
> > be silently dropped instead of falling back to software checksums in the kernel?
> 
> The problem above seems to be a legitimate concern, if a corner case.
> It seems to also exist in i40e.
> 

I think there is a lack of skb_checksum_help() before one error return
from ice_tx_csum(). I will add it.

> > Additionally, skb_csum_hwoffload_help() relies on NETIF_F_IPV6_CSUM to
> > safely fall back to software checksums when IPv6 extension headers are
> > present.
> > 
> > Does using NETIF_F_HW_CSUM bypass this safeguard, potentially causing
> > legacy hardware (like E810) or E830 without GCS descriptors to compute
> > incorrect pseudo-headers and silently corrupt IPv6 packets with extension
> > headers?
> 
> The issue above seems to be a false positive as the ice driver
> doesn't rely on the behaviour described. Rather ice_tx_csum()
> uses ipv6_skip_exthdr() to correctly handle extension headers.
> 

Yeah, righ.

> > 
> > Finally, for protocols other than TCP, UDP, or SCTP, the driver falls back to
> > calling skb_checksum_help(skb) in the default case of ice_tx_csum().
> > 
> > However, the driver appears to ignore the return value of skb_checksum_help().
> > 
> > If skb_checksum_help() fails (e.g., due to -ENOMEM during pskb_expand_head()),
> > could this result in the packet being transmitted with an uncomputed checksum?
> 
> The problem above seems real to me, but it also seems to be pre-existing.
> So I don't think it should delay progress of this patch.
> 
> If it is a problem, it also seems to be present in i40e.

idpf, igbe too. It should return error in such case and drop the packet.
What do you think, should I add the patch for that here or send it separately?
To be honest I prefer sending it separately as this is in already exsisting
code and touch more than one driver.

Thanks
