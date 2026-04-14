Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGIkI3p23mkqEgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 19:16:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E33263FCF5F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 19:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5DB484D69;
	Tue, 14 Apr 2026 17:16:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PA-qBKUkbP_U; Tue, 14 Apr 2026 17:16:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 280A084CAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776186998;
	bh=I699JIDyeUL9Ff7gnnz6ACPPehC+vYO0BQr3hqPowVA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K/Nbaf6kPWasLyXdlfd7lAxexPHg/wycGN2ZMcIZjCgcpGGZJNhJsNNviTY7FxLJa
	 1AeQ/M1oL4guuPm60NvMqwGuKWMfui63m53XlzS3+d6FmKo0wWxei2WLAvZI5Igs4D
	 JjnJDYnGqNKLUTmH8/yNoqlMLQfwPHc25h2Bq6h4UiTkjZDvQj6aic52VDkmhO8/va
	 hvMflLmr5YzosqgtiE3SbjViPapizkzPXmjsYJ9lPFAnJK7CCwuRTcaZPd+46ZowZk
	 UL0ur7o15c6X5ZvrsPJsJxkHNfJyEBMAT0E+dmTOFAqFutRewiL9FWo1TTsbE5nSDz
	 tHqaL6heRYw4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 280A084CAC;
	Tue, 14 Apr 2026 17:16:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 33E9A375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19A236F4B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:16:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tCoV1eGhchGL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 17:16:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 74C5B6080E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74C5B6080E
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74C5B6080E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:16:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A9C7E43D19;
 Tue, 14 Apr 2026 17:16:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 433ACC19425;
 Tue, 14 Apr 2026 17:16:33 +0000 (UTC)
Date: Tue, 14 Apr 2026 18:16:30 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <20260414171630.GA772670@horms.kernel.org>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
 <20260408131154.2661818-3-aleksandr.loktionov@intel.com>
 <20260413103050.GL469338@kernel.org>
 <dda1f0f3-f57b-418a-93e6-2cdaa1d2ef35@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dda1f0f3-f57b-418a-93e6-2cdaa1d2ef35@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776186994;
 bh=YglCd9xnuRc5fVSgrwjKGLYx/Zqhu1YuloxrREYHN98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OqJi3uzPfg8O/OIubAf/jG0KpIY5PG8BorLO55teIT3h8Ol1Wm9gA8o2dub7pdIiz
 kKW2f9iZugbrw7OumA1v01sV16LJsEBkhevAZ6X8NCtgbdB9pCRL+YajrcSiVTuAxi
 xB2A+0TVCW8J7/XFAaeEMizpQiUoTQZ28fShibOPArFq5feMVCp7RPTtFIB7FvyJk7
 GStBouimnx8nG5q67mQV5LpSCAIl8OlvmK0cal9jx7uFRVBVcG255g8asQWr+ba3W6
 EuINzZocNLYJVFqHId80Gtq+YJI24BMThCu5TPK3W89Vads5nlgQ/ryW2EGfKzSHHK
 wNG6Xr47OioLQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OqJi3uzP
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/6] ixgbe: add bounds
 check for debugfs register access
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,horms.kernel.org:mid];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E33263FCF5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 06:00:28PM -0700, Jacob Keller wrote:
> On 4/13/2026 3:30 AM, Simon Horman wrote:
> > On Wed, Apr 08, 2026 at 03:11:50PM +0200, Aleksandr Loktionov wrote:
> >> From: Paul Greenwalt <paul.greenwalt@intel.com>
> >>
> >> Prevent out-of-bounds MMIO accesses triggered through user-controlled
> >> register offsets.  IXGBE_HFDR (0x15FE8) is the highest valid MMIO
> >> register in the ixgbe register map; any offset beyond it would address
> >> unmapped memory.
> >>
> >> Add a defense-in-depth check at two levels:
> >>
> >> 1. ixgbe_read_reg() -- the noinline register read accessor.  A
> >>    WARN_ON_ONCE() guard here catches any future code path (including
> >>    ioctl extensions) that might inadvertently pass an out-of-range
> >>    offset without relying on higher layers to catch it first.
> >>    ixgbe_write_reg() is a static inline called from the TX/RX hot path;
> >>    adding WARN_ON_ONCE there would inline the check at every call site,
> >>    so only the read path gets this guard.
> >>
> >> 2. ixgbe_dbg_reg_ops_write() -- the debugfs 'reg_ops' interface is the
> >>    only current path where a raw, user-supplied offset enters the driver.
> >>    Gating it before invoking the register accessors provides a clean,
> >>    user-visible failure (silent ignore with no kernel splat) for
> >>    deliberately malformed debugfs writes.
> >>
> >> Add a reg <= IXGBE_HFDR guard to both the read and write paths in
> >> ixgbe_dbg_reg_ops_write(), and a WARN_ON_ONCE + early-return guard to
> >> ixgbe_read_reg().
> >>
> >> Fixes: 91fbd8f081e2 ("ixgbe: added reg_ops file to debugfs")
> >> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> >> Cc: stable@vger.kernel.org
> >> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >> ---
> >> v1 -> v2:
> >>  - Add Fixes: tag; reroute from iwl-next to iwl-net (security-relevant
> >>    hardening for user-controllable out-of-bounds MMIO).
> > 
> > Thanks for the update.
> > 
> > And sorry for not thinking to ask this earlier: this patch
> > addresses possible overruns of the mapped address space if the
> > supplied value for reg is too large. But do we also need a
> > guard against underrun if the value for reg is too small?
> > 
> 
> I don't think so. This is bounds checking a register offset which is an
> unsigned 32-bit value and begins at 0, so the map goes from 0 to
> IXGBE_HFDR. Since the value is unsigned, if it does underflow somehow it
> would then get caught by the check for IXGBE_HFDR right?

If the entire range from 0 to IXGBE_HFDR is mapped,
and it's ok for reg to have any value in that range,
then I agree there is no problem here.

Reviewed-by: Simon Horman <horms@kernel.org>

