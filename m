Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFukKJnDz2lH0QYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:41:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0119D3949FE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:41:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FF7060BC3;
	Fri,  3 Apr 2026 13:41:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OSsyfxkGX4x1; Fri,  3 Apr 2026 13:41:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 080AC60DE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775223702;
	bh=PUiPlppH9uGZasUaXEhKYQJxXuuOtwJaSaTZyIjRQs0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vQ0mf2q5oVcUPM31WYOUT5DQOlK5Ku6P9pROgjXU6PipEOIbnmr6E+k8KVf2L75n0
	 MjB1X2+7hMQ2HNUgaHXX9URws9BzcgUazAIJGqj05n+pkWWqNi1nkGy8FvLuj/hebj
	 Ptb6yG47/TPzme241PIBizjEhf9o2bg7CajrSkX0gmWgL4+wOAPD+fEZjMe3Qxisg7
	 RRLdAIJKA6Q4J01mPK3iOKbX4YptEMvB8RrBjrSvQ8k1BxWEd2rgwQJMXnFuXL3Qu+
	 c+HWJeMNHEKdbJYMBhWBM2R6ZtnrsOrZpwLLN3bQf1V4BrmupuzoNoosJ0jw3AG9AV
	 RRPIjL7xm8byA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 080AC60DE0;
	Fri,  3 Apr 2026 13:41:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EB012CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3085C813BA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:41:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P0IoX9Qp2I4I for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 13:41:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B33E81339
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B33E81339
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B33E81339
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:41:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E2C0B406E3;
 Fri,  3 Apr 2026 13:41:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB98CC4CEF7;
 Fri,  3 Apr 2026 13:41:37 +0000 (UTC)
Date: Fri, 3 Apr 2026 14:41:35 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260403134135.GF113102@horms.kernel.org>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-9-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327073046.134085-9-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775223698;
 bh=qkkNXg8SORBJx4yNPcKd2O3V2nNnyEmd9wSwLv2f9wE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mdZ+71BlBuJBkHPFuJPR6nXGwZZqPOBsU3OcYWzeTcyGOjU6ATCkjXxE/XGGMn6hS
 X2AYVKn/Y2nE5BTJt7w0kKLVutj/6XVKcWGB+fZkZPhljlvbpVi3hiSDu3meamTv9k
 cw9a3vE11fgJFYl1K6D0H33Lnvvfnv9KXimwLtvYZ58BLDdzSelkqtESNUETcLEvhW
 9UiO0PYYWfZ9WwqlC7SoPxA7BDaDs4qhXo/W+ujybjqkjjrjLLCQhbv1o0Ph6CpMZA
 imUjval8xBSFm4HFe2pwmTxLQJktnOcYRHZlFlJT+a8sYSq3hmH54TNyE89GuKuJ0j
 ynGXbCfXnoIdg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mdZ+71Bl
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: use int instead of
 u32 for error code variables
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0119D3949FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:30:43AM +0100, Aleksandr Loktionov wrote:
> The variables used to store return values of kernel and driver functions
> throughout the ixgbe driver are declared as u32 in several places.  Such
> functions return negative errno values on error (e.g. -EIO, -EFAULT),
> which are sign-extended negative integers.  Storing them in an unsigned
> u32 silently wraps the value: -EIO (0xFFFFFFF7) stored in u32 becomes a
> large positive number, so any "if (status)" truthiness check still works
> by accident, but comparisons against specific negative error codes or
> propagation up the call stack would produce wrong results.
> 
> In the Linux kernel, u32 is reserved for fixed-width quantities used in
> hardware interfaces or protocol structures.  Using it for generic error
> codes misleads reviewers into thinking the value is hardware-constrained.
> 
> Change all such local variables from u32 to int driver-wide: one in
> ixgbe_main.c (ixgbe_resume), three in ixgbe_phy.c
> (ixgbe_identify_phy_generic, ixgbe_tn_check_overtemp,
> ixgbe_set_copper_phy_power), and six in ixgbe_x550.c
> (ixgbe_check_link_t_X550em, ixgbe_get_lasi_ext_t_x550em,
> ixgbe_enable_lasi_ext_t_x550em, ixgbe_handle_lasi_ext_t_x550em,
> ixgbe_ext_phy_t_x550em_get_link, ixgbe_setup_internal_phy_t_x550em).
> 
> No functional change.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Nice cleanup, thanks.

Reviewed-by: Simon Horman <horms@kernel.org>
