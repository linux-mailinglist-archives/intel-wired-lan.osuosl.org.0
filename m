Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAm+MuC/02kalgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 16:14:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5027A3A3D53
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 16:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8C3760721;
	Mon,  6 Apr 2026 14:06:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HMLQjsFycAHG; Mon,  6 Apr 2026 14:06:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CC7260640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775484386;
	bh=6dvUwkTyEiFOcgg/rtaSGFzUpJXNrZgNepii9xrmX4g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OZ7QB0MFuLa5AT8V6Cub6yo6eTeS+fZtfWJ+nJ8GwdqoMv1Nip/zbX8OblQY4Ihqt
	 qRl4SDfYXuRt1I1HgpZdIZ9ww98ZSBQkmjm46z9PHtc/RdlvglVq0TeXmyKK2oU9DU
	 GrjwEnaTbz8Yc3FR4FzN8dwnUc0aNAX3rnO4IPNzW+s7FuvM4CNlpBwnkAGXbsDCiV
	 zIdN3wO2Y+4FfXXJ9IjLrCejBiIeD82KB3xqd4vkp9FN/VOseMW2mm7Xl2OZDmJJa4
	 SjJrxaVSWORz0wIfUSorhLUngyfey4EL4QVxOph2iZP8lw5DaCOg3ON/9ayfgCEcFt
	 J6QTXFsGAdeOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CC7260640;
	Mon,  6 Apr 2026 14:06:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 492271EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 14:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 272804072F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 14:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d1fYQuBgwpUN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2026 14:06:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6291F40712
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6291F40712
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6291F40712
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 14:06:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 916AC60123;
 Mon,  6 Apr 2026 14:06:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C230C4CEF7;
 Mon,  6 Apr 2026 14:06:20 +0000 (UTC)
Date: Mon, 6 Apr 2026 15:06:17 +0100
From: Simon Horman <horms@kernel.org>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20260406140617.GC395680@kernel.org>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-11-aleksandr.loktionov@intel.com>
 <20260403131857.GB113102@horms.kernel.org>
 <IA3PR11MB8986472BF64AFBF2191A381EE55EA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986472BF64AFBF2191A381EE55EA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775484381;
 bh=lSOhJktgpXKPmVSgZ1HfGR78lmK+3sPi09aFmGX56q0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AG7paG2FM97zut6Ait4Vs9oVl0bVsbqvUMoTJdkG9GcrMOE+LVmL1NCho4pjItkAi
 GsHNFBkYtZGbu0UfS/lLqHWNhdlUqggZWm2uICusyTcRkhLx8hR34suFlBn1YzCyVf
 Dj0zTvtLlFVOanXrdSrTzfYbOXoRwO+zHS4tEG+15ErwBpcmJDlEgHxfgqx/QLEjkH
 ULhlyOiVF6Pwvf1cbSVj5l5/74pB72e1i4BSFy0IfUp6riyqwYG8B53Ep24jQB6NDu
 Az6wHh8QM1MhWk7NrXgiOYW0IFjja5Ho7lPRkwhd+pAhRrUw2lZwQtUUW6evlruVsS
 CrItt9ADHf3iA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AG7paG2F
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: fix ITR value
 overflow in adaptive interrupt throttling
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
X-Spamd-Result: default: False [8.69 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:email];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email];
	GREYLIST(0.00)[pass,body];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_SPAM(0.00)[0.462];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	R_SPF_ALLOW(0.00)[+mx];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5027A3A3D53
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Fri, Apr 03, 2026 at 04:12:02PM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Simon Horman <horms@kernel.org>
> > Sent: Friday, April 3, 2026 3:19 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org
> > Subject: Re: [PATCH iwl-next] ixgbe: fix ITR value overflow in
> > adaptive interrupt throttling
> > 
> > On Fri, Mar 27, 2026 at 08:30:45AM +0100, Aleksandr Loktionov wrote:
> > > ixgbe_update_itr() packs a mode flag (IXGBE_ITR_ADAPTIVE_LATENCY,
> > bit
> > > 7) and a usecs delay (bits [6:0]) into an unsigned int, then stores
> > it
> > > in ring_container->itr which is u8.  Values above 0xFF wrap,
> > > corrupting both the delay and the mode-flag on the next readback.
> > >
> > > Separate the mode bits from the usecs sub-field; clamp only the
> > latter
> > > to [0, IXGBE_ITR_ADAPTIVE_LATENCY - 1] via min_t(unsigned int, ...)
> > so
> > > overflow cannot bleed into bit 7.  Add a WARN_ONCE() when the raw
> > > usecs value exceeds U8_MAX so out-of-range ITR computations are
> > > visible in dmesg during development and testing.
> > >
> > > Fixes: b4ded8327fea ("ixgbe: Update adaptive ITR algorithm")
> > > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > 
> > Somehow - perhaps because there is no m/n notation present in the []
> > in the subject - Patchwork has treated each patch in this series as
> > it's own patch-set.
> > 
> > And in the case of this patch, it didn't apply - I assume because in
> > order to do so an earlier patch in the series needs to be present.
> > 
> > So CI didn't run on this patch :(
> 
> Good day, Simon
> 
> I have a bunch of simple /* independent */ patches for submission every week.
> Whis way you'd recommend to send them to ease /* and accelerate review */ ?
> 
> 1. submit one by one
> 2. submit as a batch by one git command (with the same internal main ID tag internally)
> 3. imagine a cover latter and submit as a patch-set 

Hi Aleksandr,

I would suggest 3 and lean towards small batches.
