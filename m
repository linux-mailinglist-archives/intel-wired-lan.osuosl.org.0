Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4G4ROrWFlWm/SAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 10:26:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3995154B67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 10:26:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 710EA6079B;
	Wed, 18 Feb 2026 09:26:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xyClLBGTuyAj; Wed, 18 Feb 2026 09:26:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAC7360797
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771406770;
	bh=NXE46Iq+ZRGqIZghj/MG1spLwP3gedxYrigSc2VFcEk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NFLz9I5RmC7MNw/enkrH91wIRPze3lEAQjruvEKBegC3xHhNeFScBmceRxHMggDUT
	 abZBoHT4pUkH7u1BkUDXdfTo9DPZbg6Dr5vSbuxzXyZQCoBIGry7wpJchFcPAGriXQ
	 21O1ap5eoM5kT/XOH9FpSDGZ0XJssekzn53PstPP4dIqv79CNadPGecvdI8CEXYQ1D
	 o26x/pMOf2H1EhHiAgGYdQ3F6GPIZ+yCyNygucksX6olyaKYACLLwFklSYJzbugst5
	 XJ4mgmF8ytxjxjAVfbPchX/uRkfuqL6s4UeSReMKJiPIazM4Pn54q5MgXMFtg80OfH
	 X/+lw8GvlrqzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAC7360797;
	Wed, 18 Feb 2026 09:26:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 684271CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 09:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5975F4009A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 09:26:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y2XcfZSP-UnE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 09:26:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E323B4011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E323B4011A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E323B4011A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 09:26:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8093E40269;
 Wed, 18 Feb 2026 09:26:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69F13C19421;
 Wed, 18 Feb 2026 09:26:06 +0000 (UTC)
Date: Wed, 18 Feb 2026 09:26:04 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <aZWFrEqPvAKxQB3z@horms.kernel.org>
References: <20260217130039.1802805-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217130039.1802805-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771406767;
 bh=TLfKk2qADOrbfEuoBvhVTAIQXEmEQg3OyhClYssyi+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rd25Sy6BoRHD4/ffww6s9HAOxt1aJRcGlZVuLkXC1340br/EyvtvtNKzn9cq6Y9YB
 rzGXypO7d1nPBiW4mAg2gp80FS5nXuVmTZlboU5bwELH8GJTdcvgjSUd5Pqyk5qLxS
 Xak01NvEqNjC48nRlLUCFonz22EHPoujXM6XrnLBfRyMi12T3or+sfLvpZqsc0pYeo
 p2PgXOt8uSFvV2RnebrsWw2HcD0DbWtc5sPlQ0bKmy+A3j6BDC46J46/9ZgNbCxxu3
 FIALwvy3I+YmiNcOIwVu4QQQl1C1PWG81fdfr87VnsfVT8xIg1yg3LY9kr8gnn2WuC
 KBNRph9BdlNug==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rd25Sy6B
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: implement symmetric
 RSS hash configuration
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,horms.kernel.org:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F3995154B67
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 02:00:39PM +0100, Aleksandr Loktionov wrote:
> The driver advertises symmetric RSS support via supported_input_xfrm
> but ice_set_rxfh() ignored the input_xfrm parameter, making it
> impossible to configure symmetric hashing.
> 
> Fix ice_set_rxfh() to check rxfh->input_xfrm and call
> ice_set_rss_hfunc() with ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ when
> RXH_XFRM_SYM_XOR is requested.
> 
> Modify ice_set_rss_vsi_ctx() to use vsi->rss_hfunc instead of
> hardcoding ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ, and export it for
> use by ice_set_rxfh().
> 
> The kernel requires get_rxfh_fields() to report symmetric hash
> configurations when symmetric transforms are supported. Update
> ice_get_rxfh_fields() to return symmetric field configuration
> (src+dst IP and ports) for all flow types.
> 
> Tested with tools/testing/selftests/drivers/net/hw/rss_input_xfrm.py
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2 preserve valid symmetric RSS fields.

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>
