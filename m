Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APlINkUL3mnRmQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:39:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 693643F80E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:39:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1129F429EB;
	Tue, 14 Apr 2026 09:39:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zz9P-RvjS2LK; Tue, 14 Apr 2026 09:39:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D6A1428CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776159554;
	bh=1l4dH2drHoukG4zkJIWtzgRKTUAWEajAv4whB9gIY+I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kIw7n6BZ3SWRk4rmlSTWOh6Ubu0LfLnnEvrILxvKbdZR6wYZjJY186jSX4wnzqd+d
	 US/+7a7Qb4yjlN+FcdgttLUoDgNtTv0vco80oUZyG5fr4MFpU6EzMD4H+GqxHrqL0j
	 cOuloPbR/s88+1VVjQzB6ilzTNJE0hqcDbQmpHySF3CkdvKYUhRp0Od9iavkQ1pYji
	 kUL3nTggBl0IgidH1FYIsHZGlFw+50h7V/1naMi7JZkOvNlCa8JbNkxOtHPzLFvmSY
	 waqti9XbE93cenWrWEQa3W16g61zNg+mEAETEkxGQEmiFXNM4q7VN9EXjSbiIZxUBe
	 CL0cbA1MQb1dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D6A1428CD;
	Tue, 14 Apr 2026 09:39:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 783CF237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E16784B85
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:39:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0mHQDOr7S5QU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 09:39:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5BACF84B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BACF84B26
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BACF84B26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:39:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5CFEB60018;
 Tue, 14 Apr 2026 09:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E917CC19425;
 Tue, 14 Apr 2026 09:39:08 +0000 (UTC)
Date: Tue, 14 Apr 2026 10:39:06 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20260414093906.GB469338@kernel.org>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-10-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410074921.1254213-10-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776159550;
 bh=9CjN8QKJaZS37XrLND/7+2tyRPuh4F/grHoUHubMTT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RwjmaZ8DHe0zIwVGglFq9cxfKVCEwO20jDRuv964bAglwYo6CXg9lLqIVLWUmR8uF
 A4/QKiHBuIZf/p1Q2FVSlzmucksuTz8UBvnhMF1+0eydGxWQia78Pa2UxRg3BUcG7r
 urFTXrtrrsbdpgHp5Hh8uHA/IUx/s9RySuc9v7TWODBIJF+nT6uqQnmqoO++ImIAFe
 J8RhnUHnmPx7OoBzPhy8c87Ubv3UnH2v/bGhsWs0XrCOzJSMOZVlZrmhwufFZ6pJ2x
 /f1Ph0SkaNCxTFVWeiOAiqSfCnCiY53MGuXTK/s8GJBpFNhoK/MN4ElIxbu2TgWhJm
 k7uklo0bwxVmg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RwjmaZ8D
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 9/10] ice: use inline helpers
 instead of memcmp() for IPv6 mask checks in ice_ethtool_fdir
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:larysa.zaremba@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 693643F80E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 09:49:20AM +0200, Aleksandr Loktionov wrote:
> Replace static full_ipv6_addr_mask / zero_ipv6_addr_mask structs
> and the associated memcmp() calls in ice_ethtool_fdir.c with the
> kernel-provided ipv6_addr_any() helper and a new ice_ipv6_mask_full()
> inline, reducing boilerplate and making intent clearer.
> 
> Suggested-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

