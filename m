Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHdDJ5mXCWqXgwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2026 12:25:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CEE560765
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2026 12:25:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F5B842794;
	Sun, 17 May 2026 10:25:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4GiraYJZEO8r; Sun, 17 May 2026 10:25:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DB96427A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779013523;
	bh=VFbxUw4K1OptBGSFfyetzoI7FxA1zN8MHHDwAdJ+k1M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0otDY3NyJSgeKHB5eq3TKMuVmd62cuXZVkDYVz2NuY3VjbZN0GKRz11+lx3s5Dol3
	 uW17AjHLzY+/Igg/V6fPIZJj8WcNUquytlUVVy2Yq8Adgjh4lIKtFu8bwopGKyW5Sq
	 tMKBEzsobu8tDX5np4ySsn/MzL0RWQfuVMe3h/KOePE6EQIdirSYKvvUmsy5OFNdvl
	 Dr77jELIxY4Pw6+iCj36iC4g9yBE0X1KLETjN7d+MJ1FRfrfidRvG4Kkvuw8RHg2Z1
	 fz5VwBAyHbACOT1OV5ebTQkl1fwojGxu5915YpSvhI8lWJCz8xDEMPY+/e3H5ZG5J3
	 Ln7fcnwGXBf7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DB96427A1;
	Sun, 17 May 2026 10:25:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 84FAD282
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 10:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7566B85495
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 10:25:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vIeSTI0k2JiX for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 May 2026 10:25:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DA2A485494
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA2A485494
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA2A485494
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 10:25:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6258A440C0;
 Sun, 17 May 2026 10:25:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B2BBC2BCB0;
 Sun, 17 May 2026 10:25:18 +0000 (UTC)
Date: Sun, 17 May 2026 11:25:15 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Piotr Skajewski <piotrx.skajewski@intel.com>
Message-ID: <20260517102515.GA98116@horms.kernel.org>
References: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
 <20260512140904.4105236-4-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260512140904.4105236-4-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1779013519;
 bh=8D9fs/PRk1JXXmpJR1ypWxBztd3OCrUpyzGGXF4Cqfw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rj+SMoP1rgaa2ACXValosTDUUUhc+/XLyeQmxx1aqcFbMH17as72kjO9MZ4OOwRhv
 NwP3E+jJQnD3nmKarRVk9guZ46EGjavEDR5abug7ALbsVJ9LfMBqXW77yr1HJfPr1R
 IadiPsXmf1PAblH0IP5KsWTYkNJEaXytDbspFZLzega2meiTtJRXr84a7P17/gSqax
 IhkGUYk3RQmXpdZDReCq1UHTRUlI7KP0rfmK/wP2Wv8BZVNSLzAt6QJxexvL5HT0pN
 zHKScZ2DA/3s6z862BmmjMO/B4F5oHwmPjsktY+sIl1fbVHV9sFAHa9tBpB1wMu0WX
 4AukxFBvWql3A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rj+SMoP1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/8] ixgbe: prevent adding
 duplicate FDIR perfect filter rules
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
X-Rspamd-Queue-Id: 35CEE560765
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:piotrx.skajewski@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 04:08:59PM +0200, Aleksandr Loktionov wrote:
> From: Piotr Skajewski <piotrx.skajewski@intel.com>
> 
> When the same flow specification is added twice (same 5-tuple with
> different sw_idx values), ixgbe_add_ethtool_fdir_entry() silently
> programs the duplicate into hardware using a second FDIR table slot.
> This wastes a scarce FDIR entry and can cause confusing behaviour
> when deleting rules.
> 
> Add a helper ixgbe_match_ethtool_fdir_entry() that walks the in-kernel
> filter list before programming hardware.  If an entry with an
> identical filter (excluding the sw_idx) already exists, the new add
> request is rejected with -EEXIST.
> 
> Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

