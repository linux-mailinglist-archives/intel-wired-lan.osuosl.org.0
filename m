Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yZJyLVUrMGqOPQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:41:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3B06887B4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:41:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=5mawQlgW;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (relaxed)" header.from=lunn.ch (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87C554085E;
	Mon, 15 Jun 2026 16:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9oSLX2iOeRtC; Mon, 15 Jun 2026 16:41:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A81154099E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781541713;
	bh=1feUzV+qKxhM/bwZTbO91sNKEd6o+oGqSqcybnfFb7w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5mawQlgWULZHIRU1Rq8bEClXR16DD+UImVeoUDHzoGsqWjJIBEVWWV4C5qzCjOQAH
	 yYKM5IOvTLHzlY/4T8J7tG9wM0edRTWUYJ5iMJCcnoHf9DKsU8kbCghSJtzHNsnUEh
	 VnzNKVz7VPGvDlWOPY/D+WuUOe+8eaWYWRUCNSx0GIPQ2fbWqG9b5qpHzDCz4Rw5eY
	 RRgjoNMxzoTYvyvlQuIU2ggHWRD2Af8auNjNyUXkTvOSmTLnOrIP3n+Gena1XRgXPv
	 J11YzXBw/h6SEC6kBbb6aYKkUJqsmSJUxeAeM/gG5mT1/QcTnZDJmI9Z8s0Hnjoy75
	 b9QK4/tR5WRmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A81154099E;
	Mon, 15 Jun 2026 16:41:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D9E7DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F54C40571
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:41:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I1gz9ctk287M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 16:41:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 073D440514
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 073D440514
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 073D440514
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:41:50 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1wZANb-007pjm-PZ; Mon, 15 Jun 2026 18:41:43 +0200
Date: Mon, 15 Jun 2026 18:41:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Helge Deller <deller@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <e78576e0-9b55-446f-9d10-da3b7aec9b31@lunn.ch>
References: <ai8hmGQmXQu64Ld3@carbonx1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ai8hmGQmXQu64Ld3@carbonx1>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=1feUzV+qKxhM/bwZTbO91sNKEd6o+oGqSqcybnfFb7w=; b=wpN356hgfQ0aAux7PwYMbOnW8h
 SSnMbxaQiiEj9TkWzC8XlQGRbbndOaXcnX+GXXFQDIVS8sUb5SGA/iNr3NztkZc7wraEvlTL9Nicj
 /Dnj0h+RW5DMHmQkSmWZnDTi6xmg8MIy3DGjun5d+xySOq/Ay27r8wUrzqB05OEa75vs=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=wpN356hg
Subject: Re: [Intel-wired-lan] e1000e: Report link down after "Detected
 Hardware Unit Hang" ?
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
X-Spamd-Result: default: False [0.39 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:deller@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E3B06887B4

On Sun, Jun 14, 2026 at 11:48:08PM +0200, Helge Deller wrote:
> I'm regularily facing the known "eno1: Detected Hardware Unit Hang:"
> with my on-board intel e1000e NIC hardware.
> Since none of he various tips on the internet helped, I had the idea
> to setup a master/slave bond networking to fail over to another NIC when
> the Intel chip hangs.
> 
> Sadly this doesn't work as intended, because the link of the intel NIC 
> isn't reported "down", so the failover never happens, unless I manually
> start "ifconfig eno1 down".
> 
> My question: Shouldn't the intel NIC ideally report Link Down if we know
> it hangs? That way a fail-over should at least happen, right?
> 
> Below is a completely untested patch.
> Does it make sense that I try to test and/or develop such a patch, or
> are there things I miss?

If the interface is dead, then setting the carrier down makes a lot of
sense. One question i have is, what do you need to do to recover the
hardware? Will it correctly set the carrier up when you do the
recovery?

Also, just looking at your proposed change, it is not clear to me why
such an assignment will result in carrier down. It would be good to
explain it in the commit message.

	Andrew
