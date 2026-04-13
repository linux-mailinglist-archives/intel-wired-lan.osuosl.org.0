Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENUMDubF3GmcWQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 12:31:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EC93EAAEA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 12:31:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 033DD60BE1;
	Mon, 13 Apr 2026 10:31:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SEhXU6CmAfv8; Mon, 13 Apr 2026 10:30:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 670DA60D65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776076259;
	bh=sUUF+72eSb9zEIZzvMPZr0bN9WaFPdpDxmbWRONnTUA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=97xs6mSHeqJVYOK8Ypmpeir2jNbY8QTqv0RDq1Ty9iLWb8x6S0UtChLxz4+cjE4ao
	 Czlta7ilSHEQwMuGebmr6uPhbO88yWvci+vzoQH/mJlEXaC+9CIoKHMSMSaTxdwvIZ
	 meaa6ew4cbZm/bJekBx8OAeP74Y0mZtX3Z4CuDDElyyEcivW0/vkhAvxQj9dNdWpD3
	 LEVxMJ8E8sYybVY/0eyePN7aXnmDR3G6tI9m5pbQaboxP+IzxxOrAUxO1+Trege2Ix
	 endwE4o3M6jz4xnOyVyPRVBuAy6DikhFTFJ8qfb2aIuMaIbLjOKwDDRlDIDpENu388
	 AFxIMowI4u+Bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 670DA60D65;
	Mon, 13 Apr 2026 10:30:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 80242283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 10:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65A9C60BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 10:30:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wxXpVkI_m3ou for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 10:30:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E05D60B09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E05D60B09
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E05D60B09
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 10:30:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id EC8DD60180;
 Mon, 13 Apr 2026 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 845FFC2BCB5;
 Mon, 13 Apr 2026 10:30:53 +0000 (UTC)
Date: Mon, 13 Apr 2026 11:30:50 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <20260413103050.GL469338@kernel.org>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
 <20260408131154.2661818-3-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260408131154.2661818-3-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776076254;
 bh=ZZ5n5swHim3raXBjfjDTGvGtf3AkWA9HWolWBpnbGSI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hi3v3CtyoEcPmYpmhDY4nfGSXYwTU80Qf8lFCGEC3mLRH9b6GWU38gKyBkhg6kqpx
 nGG0Dh+HoSB0FMn5SJR7dCmunvpBQneZ5bS4Vxk9NBGBsoH3T2mFnf3BuTHlKSk4j3
 C7WW3FToIAqDCGUawKdHmhZfEmwcBzJyAcPtoaWi9/5nUPdlSPtbpZM0Y7+eSTU5q7
 xcJUmGfzl6JSJVUMW4VWkaRqRGmkvpa556FTsUewU7VKH6UsVHvzXBFsf3+basZN8+
 p5FdC4hUxoR8MJISV/kJsxKOh7fnKqyvwqYVmlV/fHLhUoEJgrshLwF9ZMBYBhunCz
 9A2+7wgktv5GA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hi3v3Cty
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 61EC93EAAEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 03:11:50PM +0200, Aleksandr Loktionov wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Prevent out-of-bounds MMIO accesses triggered through user-controlled
> register offsets.  IXGBE_HFDR (0x15FE8) is the highest valid MMIO
> register in the ixgbe register map; any offset beyond it would address
> unmapped memory.
> 
> Add a defense-in-depth check at two levels:
> 
> 1. ixgbe_read_reg() -- the noinline register read accessor.  A
>    WARN_ON_ONCE() guard here catches any future code path (including
>    ioctl extensions) that might inadvertently pass an out-of-range
>    offset without relying on higher layers to catch it first.
>    ixgbe_write_reg() is a static inline called from the TX/RX hot path;
>    adding WARN_ON_ONCE there would inline the check at every call site,
>    so only the read path gets this guard.
> 
> 2. ixgbe_dbg_reg_ops_write() -- the debugfs 'reg_ops' interface is the
>    only current path where a raw, user-supplied offset enters the driver.
>    Gating it before invoking the register accessors provides a clean,
>    user-visible failure (silent ignore with no kernel splat) for
>    deliberately malformed debugfs writes.
> 
> Add a reg <= IXGBE_HFDR guard to both the read and write paths in
> ixgbe_dbg_reg_ops_write(), and a WARN_ON_ONCE + early-return guard to
> ixgbe_read_reg().
> 
> Fixes: 91fbd8f081e2 ("ixgbe: added reg_ops file to debugfs")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2:
>  - Add Fixes: tag; reroute from iwl-next to iwl-net (security-relevant
>    hardening for user-controllable out-of-bounds MMIO).

Thanks for the update.

And sorry for not thinking to ask this earlier: this patch
addresses possible overruns of the mapped address space if the
supplied value for reg is too large. But do we also need a
guard against underrun if the value for reg is too small?

...
