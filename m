Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KN1vEophvml4OAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 10:14:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE6F2E452C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 10:14:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8964F612F2;
	Sat, 21 Mar 2026 09:14:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vRUZpBqDySqe; Sat, 21 Mar 2026 09:14:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBFB1612EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774084487;
	bh=snL4k6e6rTbBwtpEuFh/S9d23iDr14/DqmUlgH25KSQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8I5YQ4j14GMK0O4oNH0BvY4gurrMhN5ieEu1atD+SwIJmu221lyj57+feh6+x2/qN
	 PyGdnZjykqBidLih+SrGnzvj0vnn1DGgaOq8D9qGuDk15vtSMED3m6crlgpZXI7og9
	 YAQDa/JMox/vd7Ud9nduXtvfWJFXhU/bfgs56Tu5RLh5TMLOpPzWus0OfjUxoTDxJq
	 jvxe9GhBiaIahzPi09uOGsDiLvo6wFdGJANJqDLCtenWG8GNiteXI/jYV0Aze46cdJ
	 RU0Om5TAFnEi95DUsUKpmHB7WJ54/88VfKsdiV9BDhxsH8wjXDG5OhiW8d6EFRu1Rz
	 d6aSu07YR+6/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBFB1612EC;
	Sat, 21 Mar 2026 09:14:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B4B625C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 711E9405DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hLnQdeV3iedz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Mar 2026 09:14:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CE90C4023D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE90C4023D
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE90C4023D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:14:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 06F38416A3;
 Sat, 21 Mar 2026 09:14:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC9C8C19421;
 Sat, 21 Mar 2026 09:14:42 +0000 (UTC)
Date: Sat, 21 Mar 2026 09:14:40 +0000
From: Simon Horman <horms@kernel.org>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Wieczerzycka, Katarzyna" <katarzyna.wieczerzycka@intel.com>
Message-ID: <20260321091440.GR74886@horms.kernel.org>
References: <20260320050518.422303-1-aleksandr.loktionov@intel.com>
 <20260320180410.GA151863@horms.kernel.org>
 <IA3PR11MB8986779AEBF981B6AF66F3D8E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986779AEBF981B6AF66F3D8E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774084483;
 bh=UqZ8VzmgWhDv/uupfpMd/3DUo+HUmBI1g+qwzL27+nU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JoE6RpPAmMfSwff//GVuT4xxO4zDe+we7wWo0alVhkWaUW76yYIIvsjXu+JGKIjhv
 hTKuRZVoAPKKby9WuZ1TD2k3BDmFUksn03bzNSsdAyGSA4gWRmwyN14zfDB+dR+HkB
 HJr4sUHj2LBj5U8t6IB2Nz3H6JfRzjj8hFLxw5WW9xi/+0nrJDbVTUeBJxxjM58jes
 EZeDbWMayf/Iw7NW83lWqCYvIKKgXEv+RHffQ0GrVhYWLKpbXfGCda1Fm/XEzrQFhX
 WcIhIGevNDIp2t9R9mBFecyIoHLkk+iESn1BBTlMypHLcPMq8DGnmrw7eJ764w/pH/
 RntjBm9rJqnqw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JoE6RpPA
Subject: Re: [Intel-wired-lan] [PATCH] ice: add missing reset of the mac
 header
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:katarzyna.wieczerzycka@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0CE6F2E452C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 07:53:28PM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Simon Horman <horms@kernel.org>
> > Sent: Friday, March 20, 2026 7:05 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Wieczerzycka,
> > Katarzyna <katarzyna.wieczerzycka@intel.com>
> > Subject: Re: [PATCH] ice: add missing reset of the mac header
> > 
> > On Fri, Mar 20, 2026 at 06:05:18AM +0100, Aleksandr Loktionov wrote:
> > > From: Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>
> > >
> > > By default skb->mac_header is not set, so reset prevents access to
> > an
> > > invalid pointer.
> > >
> > > Call skb_reset_mac_header() before accessing the mac header from
> > skb.
> > >
> > > Signed-off-by: Katarzyna Wieczerzycka
> > > <katarzyna.wieczerzycka@intel.com>
> > > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > 
> > Hi Katarzyna and Aleksandr,
> > 
> > I am curious:
> > 
> > Is this a bug? If so then it should probably have a fixes tag and a
> > bit more of a description around how this can happen.
> > 
> > If it is not a bug, then is this defensive? And if so, is it really
> > necessary?
> > 
> > ...
> 
> 
> Good day, Simon
> 
> I'm upstreaming Katarzyna's fix.
> 
> From my point of view, it's not just defensive code, but real bug even on latest kernel because the gap is partially closed by packet_parse_headers(), but not completely.
> Sorry the patch header is malformed, I definitely need to add 
> Fixes: f9f83202b726 ("ice: Allow all LLDP packets from PF to Tx")

Hi Aleksandr,

I can see you have been busy.

I agree adding a Fixes tag makes sense.  If you could also expand the patch
description that would be well appreciated (at least by me).

> But not sure whether to send to net, because on modern kernels I have no real call traces only theoretical conclusion.

That is a line call in my opinion.

If you include a Fixes tag, which seems sensible, then the chances are the
patch will end up being backported to stable. And if the patch is in
net-next it might not have hit Linus's tree before that happens. Which
doesn't seem ideal. So I think it would be more sensible to target the
patch at net to avoid that problem. But that's just my feeling.

Either way, please consider adding a note regarding this.
So it will be more obvious.
