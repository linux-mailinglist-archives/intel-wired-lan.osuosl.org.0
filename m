Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ON+IX333GlaYgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 16:02:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 391CF3ECE81
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 16:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D89A841BC;
	Mon, 13 Apr 2026 14:02:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id io3JUUVMY5UB; Mon, 13 Apr 2026 14:02:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA9038475A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776088952;
	bh=yDI/S1cf2z4jAKp7tXIb7f2qhf89hxakF7BSm1HpTAw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TYg6kHRr0a6liTQJ7GnW/q4J6stw+KRnYcHawO6sjLixZuuFzio8PBq3yUtrHqGtF
	 qPTUvX4fXAKDy+Y2vIe6PViI/9TGyAYVih4UdncStGiA3DvHxNlfSPQMy8WHiMukJ+
	 SSGmTSOUhewrmy9iPbxkUhXx9mWUSCnJgcMs7bTVVTIzRWZSUej58kXePIufBEj4XE
	 eILiwc71KV2xcHfXg+wq4vSUkTHcaSrIJ/YJ2fjuML9dkM0ho24ZUDKrobLvFfd1ju
	 DOXxySCYbHZDXYyChW0Kn2TamvEuQbvb6hADDZiYlFLVVL+IE5oavnhEenvBy8/xYw
	 N39M9kY9v+WyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA9038475A;
	Mon, 13 Apr 2026 14:02:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AF663237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9BCB6608B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n1R0ZpksbLMV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 14:02:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F155360ED7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F155360ED7
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F155360ED7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:02:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 394B3441C0;
 Mon, 13 Apr 2026 14:02:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F623C2BCAF;
 Mon, 13 Apr 2026 14:02:28 +0000 (UTC)
Date: Mon, 13 Apr 2026 15:02:26 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260413140226.GQ469338@kernel.org>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
 <20260408131154.2661818-7-aleksandr.loktionov@intel.com>
 <20260413134334.GP469338@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260413134334.GP469338@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776088950;
 bh=lsCmK8bgfymrGWmfnrdu1HhqbYmux52O5R+oq3QNKiw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TrHvvPzrpaItVhm08JmAQ2LYc1MyMWm5ZlJgajH2XrONzWtxui2XUkOlSEA6SjRrn
 JWxyBP38OFwqjqr4nN+52tbPPgBT28Q0TpaeRFlc6NSfWPA9Faox1scws8YQTJrpKD
 asmbtxTCSwiskLxl2sGMpV0Ntr1eGYa0XHELW5SHmbc+2eo2BSMye23okJaRP2Id2J
 mSRh2QM0HsGvP0o/z04EGtlud04GcO+gktRQr/oAu2PArDfb+8nSjdszoFUEvoPPRr
 tlwLJ/3DwadsQ1VblrpnvCoS6Kc7bNJRtDlcztSEFvm7TmHq6aN6qL7Be+3PhyMldb
 pkLEY4qsNClCg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TrHvvPzr
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 6/6] ixgbe: fix integer
 overflow and wrong bit position in ixgbe_validate_rtr()
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 391CF3ECE81
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 02:43:34PM +0100, Simon Horman wrote:
> On Wed, Apr 08, 2026 at 03:11:54PM +0200, Aleksandr Loktionov wrote:
> > Two bugs in the same loop in ixgbe_validate_rtr():
> > 
> > 1. The 3-bit traffic-class field was extracted by shifting a u32 and
> >    assigning the result directly to a u8.  For user priority 0 this is
> >    harmless; for UP[5..7] the shift leaves bits [15..21] in the u32
> >    which are then silently truncated when stored in u8.  Mask with
> >    IXGBE_RTRUP2TC_UP_MASK before the assignment so only the intended
> >    3 bits are kept.
> > 
> > 2. When clearing an out-of-bounds entry the mask was always shifted by
> >    the fixed constant IXGBE_RTRUP2TC_UP_SHIFT (== 3), regardless of
> >    which loop iteration was being processed.  This means only UP1 (bit
> >    position 3) was ever cleared; UP0,2..7 (positions 0, 6, 9, ..., 21)
> >    were left unreset, so invalid TC mappings persisted in hardware and
> >    could mis-steer received packets to the wrong traffic class.
> >    Use i * IXGBE_RTRUP2TC_UP_SHIFT to target the correct 3-bit field
> >    for each iteration.
> > 
> > Swap the operand order in the mask expression to place the constant
> > on the right per kernel coding style (noted by David Laight).
> > 
> > Fixes: e7589eab9291 ("ixgbe: consolidate, setup for multiple traffic classes")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v1 -> v2:
> >  - Add Fixes: tag; reroute to iwl-net (wrong bit positions cause packet
> >    mis-steering); swap to (reg >> ...) & MASK operand order per David
> >    Laight.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

Sorry, I was a little too hasty there.

AI generated code review points out that the cited commit
doesn't seem to have introduced the code being fixed,
and that perhaps this Fixes tag would be more appropriate.

Fixes: 8b1c0b24d9af ("ixgbe: configure minimal packet buffers to support TC")

I will also forward on a review from Sashiko, although it
is for an existing bug and thus is strictly FYI.
