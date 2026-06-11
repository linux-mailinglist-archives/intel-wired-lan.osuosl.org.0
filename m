Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id akd2N2dQKmpgnAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 08:06:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4B266EE30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 08:06:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=ZohZkGde;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.in:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E32360755;
	Thu, 11 Jun 2026 06:06:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ygleM8Cj8gYQ; Thu, 11 Jun 2026 06:06:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43B2F60757
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781157987;
	bh=r0Kg9efrQxEut61eww4Xt0pjV45uZm/MNUVicYS+0EA=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=ZohZkGdeuEaFoLEoFD1/sjnCdeevRdttm0ncX9XuXM9OvbWI3501eIsfVwrhl81Ro
	 tLYtd5Wz6XQ0PNWTZB1whP1Mf4NHt/dvSErzEh7zY+bZkcNwcJyRywjw6VNys1j6fY
	 hg8Lr3XZ3N1eqAjZBv3QOGJnhNthHu0nyRc680ZO1ZWbX5Bpyyvd2TuOlDRY1/yDZF
	 6a9t9jkX5dETnCw0W96meEGen61qx/HXz3UDnAOw45h4tJoJL3tv+SrZPd7OZKQuKR
	 O4lSjGRcRkN0avp1W40lkRJQFu54Gvhw904pcXMp++l8SwxMHu12k3zlMqEplWKPuc
	 lptEy2ldDrxVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43B2F60757;
	Thu, 11 Jun 2026 06:06:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B937192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 06:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CBF14013E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 06:06:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pIdu6ecWbfCw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 06:06:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=kshitiz.bartariya@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4947840136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4947840136
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4947840136
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 06:06:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781157929; cv=none; d=zohomail.in; s=zohoarc; 
 b=TMjTp3zeIK6uw/cbwKlAx9dyiBHjfSds/CzSqgab180ExLHIre1s8A+HFB8VnuwKsDvshzdbfuFaK4kyLlx4t7dvdywFYlvWc6T+ZiqnbRUH3P4EhxK/46W85oLlvvwc4Md8IMCp8FuQlBFBcGEp5lRfgwlx+iJLNfNuW70bers=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1781157929;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=r0Kg9efrQxEut61eww4Xt0pjV45uZm/MNUVicYS+0EA=; 
 b=RjKJnO48OGOMYNVV0etwQWOBm2VYI2P6oQqKE2YXkF3dLy/ek1OL3zyCQJxTZdZ6lv0b4P8m/WYqp0bbx1OEZKxGzTnmsV182W28GsuWVBXIYhREsOgSOpP4QHU3pnxE39a9f0yCBy36MU3ym2EQelIERdheJd+VYN+FT2/X1aY=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=kshitiz.bartariya@zohomail.in;
 dmarc=pass header.from=<kshitiz.bartariya@zohomail.in>
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1781157923106916.71298730993;
 Thu, 11 Jun 2026 11:35:23 +0530 (IST)
Received: from  [192.188.171.47] by mail.zoho.in
 with HTTP;Thu, 11 Jun 2026 11:35:23 +0530 (IST)
Date: Thu, 11 Jun 2026 11:35:23 +0530
To: "Simon Horman" <horms@kernel.org>
Cc: "anthony.l.nguyen" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev" <andrew+netdev@lunn.ch>,
 "davem" <davem@davemloft.net>, "edumazet" <edumazet@google.com>,
 "kuba" <kuba@kernel.org>, "pabeni" <pabeni@redhat.com>,
 "aleksandr.loktionov" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller" <jacob.e.keller@intel.com>,
 "jedrzej.jagielski" <jedrzej.jagielski@intel.com>,
 "piotr.kwapulinski" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan" <intel-wired-lan@lists.osuosl.org>,
 "netdev" <netdev@vger.kernel.org>,
 "linux-kernel" <linux-kernel@vger.kernel.org>
Message-ID: <19eb549091a.56e4a82b51051.8566636820791024878@zohomail.in>
In-Reply-To: <20260608184733.GJ3920875@horms.kernel.org>
References: <20260603174857.78666-1-kshitiz.bartariya@zohomail.in>
 <20260608184733.GJ3920875@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1781157929; 
 s=zoho; d=zohomail.in; i=kshitiz.bartariya@zohomail.in;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=r0Kg9efrQxEut61eww4Xt0pjV45uZm/MNUVicYS+0EA=;
 b=QlDXpLstGe/4JNoSwERAFlqVNcO9c6+FWXLptBLMIzqNpdIwrZVfS//GFWjNKn99
 IMERLDyvfvI6cDzEsy05CHuhdAjB/ym2hgZtI+NdPUMIFwwalCwBvVM1y54NGgz+eL9
 CXUyRWEw0z08EYxoBa4cUM5RCFIAIhrLOTijPqwE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=kshitiz.bartariya@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=QlDXpLst
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: implement
 get_queue_stats_rx
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
From: Kshitiz Bartariya via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.20 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:jedrzej.jagielski@intel.com,m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[kshitiz.bartariya@zohomail.in];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D4B266EE30

Hi Simon,

I was thinking of making these changes in a separate patch, as it could make a single patch big.
I'll do the changes as suggested and will v3.

Thanks,
Kshitiz


From: Simon Horman <horms@kernel.org>
To: "Kshitiz Bartariya"<kshitiz.bartariya@zohomail.in>
Cc: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <aleksandr.loktionov@intel.com>, <jacob.e.keller@intel.com>, <jedrzej.jagielski@intel.com>, <piotr.kwapulinski@intel.com>, <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Date: Tue, 09 Jun 2026 00:17:33 +0530
Subject: Re: [PATCH net-next v2] ixgbe: implement get_queue_stats_rx

 > On Wed, Jun 03, 2026 at 11:18:51PM +0530, Kshitiz Bartariya wrote:
 > > Hook into the netdev_stat_ops interface to expose per RX queue
 > > statistics through the netdev generic netlink API.
 > > 
 > > The following counters are filled:
 > > 
 > >  - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed
 > > 
 > >  - csum_bad: maps directly to csum_err, which is incremented for both
 > >    IP header and L4 checksum errors in ixgbe_rx_checksum().
 > > 
 > > The new per-queue stats can be observed with:
 > >   $ ynltool qstats show scope queue
 > > 
 > > Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
 > > ---
 > > v2:
 > >  Amended commit message with command to get RX queue stats as 
 > > suggested by Jedrzej Jagielski.
 > > 
 > > v1: https://lore.kernel.org/lkml/20260602100932.21838-1-kshitiz.bartariya@zohomail.in/
 > > 
 > > 
 > >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++
 > >  1 file changed, 16 insertions(+)
 > 
 > Hi Kshitiz,
 > 
 > There is AI-generated review of this patch-set available on both
 > https://sashiko.dev and https://netdev-ai.bots.linux.dev/sashiko/
 > I would appreciate it if you could look over that.
 > 

