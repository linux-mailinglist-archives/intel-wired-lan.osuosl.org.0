Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gI3LFy7CDGqJlgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 22:03:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1573584716
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 22:03:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4170681C6E;
	Tue, 19 May 2026 20:03:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_LD_ci3sUos; Tue, 19 May 2026 20:03:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9ED381CAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779221035;
	bh=/r9YFl785KQdMtzFPchEoXmlFNRrb5Ocaxtx4B6cJN4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jE7XekCFds2M5uDAAwtBiUBdPtkG7hXyybEFr1OSXjLs8ku+ZzDAJvH+RnkHFHipU
	 pqEqCsgu6qXMnP59Uk43pCEwOGruqWFQbCeH/7N7pjC8iXYYGiBUYzQO3eoMGp7ORc
	 itM4L92mdT9H3MrkW5f5Tit4Av2EV1cqm/tcoejH4C1yRjanabIVbhLKkfjeKSv7Mw
	 heSh4RM0EiSIKGDyGaugoQbVSeaCx2++gz7ip3CUpkWOROj+l58t4ltk5H2FdCteaF
	 16jiYme5dWgcvzfYHYYpQjhM2uTpSivs2sdHjy/ictZWJPEEo7ENO5gULs9xcRYQkq
	 cNyr6CbJWeK2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9ED381CAD;
	Tue, 19 May 2026 20:03:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 993EC265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 20:03:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F83E40550
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 20:03:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RNxyRdyApi8z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 20:03:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D124D4054E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D124D4054E
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D124D4054E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 20:03:52 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 366916025A;
 Tue, 19 May 2026 20:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8D441F00897;
 Tue, 19 May 2026 20:03:49 +0000 (UTC)
Date: Tue, 19 May 2026 21:03:47 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20260519200347.GL98116@horms.kernel.org>
References: <20260515063836.3300442-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260515063836.3300442-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779221030;
 bh=/r9YFl785KQdMtzFPchEoXmlFNRrb5Ocaxtx4B6cJN4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=I/zfszjEAE4IbyCqyB7uAb207Tc4oPCjUmoMlFzwUyLsUQDOI8LRPmT6IT4gLbZaI
 ry9AMXs/Oj0PRTWwN8YT/mux2lHmtnI76tjL3x1m3zLObCNpejcQeBu8nb3XZtCkBc
 2/Yra67gUCeUanLqEqoh1Df9ljuKLrnOtgiBZy1z3aNEWTSGzkvFKS7SofhhK0H8QF
 WWS56Kmsnc0TOXuKGnLceL6Z2Q2i0MfbRpH6IjdqHq2+eH3TIS4nasMWpeGBHMH1oT
 WhVGIOKi9Pme5nc720kLYZZUrADoFhFkRVjFqpXwG4aLkthZXlHvu0mXmgVQHVW9+5
 YhxRxPtLmwtfw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=I/zfszjE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: convert crit_section
 to DECLARE_BITMAP
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
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
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B1573584716
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 15, 2026 at 08:38:36AM +0200, Aleksandr Loktionov wrote:
> struct iavf_adapter::crit_section is a bit-lock container indexed
> by values from enum iavf_critical_section_t (__IAVF_IN_REMOVE_TASK).
> It is manipulated exclusively through the kernel atomic bitops API:
> set_bit(), clear_bit(), test_bit(), test_and_set_bit().
> 
> It is declared as a bare 'unsigned long' and every call site passes
> '&adapter->crit_section'. That is functionally correct -- the bit
> index is a compile-time enum value well below BITS_PER_LONG so
> BIT_WORD(nr) is always 0 and only the singleton word is ever
> touched -- but it relies on layout coincidence rather than on the
> documented contract of the bitops API, which is defined in terms of
> 'unsigned long *' arrays.
> 
> Static analyzers that model the same contract flag every such call
> site with ARRAY_VS_SINGLETON because the address of a scalar is
> passed where an array pointer is expected.
> 
> Convert the field to a proper bitmap using DECLARE_BITMAP() sized by
> a new sentinel __IAVF_CRIT_SECTION_NBITS at the end of the enum. The
> underlying storage is unchanged (a single unsigned long word on every
> architecture Linux supports), so there is no functional or ABI change;
> the type simply becomes 'unsigned long[1]' which matches what the
> bitops API expects and silences the analyzer warnings permanently.
> 
> Drop the leading '&' at every call site, since arrays decay to
> pointers.
> 
> No functional change intended.
> 
> Suggested-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

