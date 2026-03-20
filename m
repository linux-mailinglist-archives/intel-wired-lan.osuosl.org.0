Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eISZBbGlvWm4/wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:53:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 981212E0892
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:53:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F1AF60BB9;
	Fri, 20 Mar 2026 19:53:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BiDnPOzamNuB; Fri, 20 Mar 2026 19:53:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E2CE61118
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774036397;
	bh=6uekhhH1gD5oWdAiMDbUp85rMOTFq6Bf63bsQMFUkoE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bqhjpo7t/kUNCAGe8WU/2Nw6kKrcEVoe9u4krFbvq9b1Mo2bQG2p1jY2m/8E7fzNS
	 5/Pjp+dmx5SAjVbXkTcTv3yo/DeAWHqMiIyL/BrV/B3RWAQ2Ul75I5qWauEYzHqrSU
	 +uEX0cVm9ympYD8Jho1A/Gilvns5sVguV2syHkmvTssqfU0qE+jLNR5F/ErldurOuU
	 dBGrg689tps2O+SOTVGCVVuNVI7Fg6UUwqaqwstMWfYWN/9UPGq9x7KaGULkUF0QSR
	 9fCzq9adGz56nhHNAe20ABDoqIMktKNFTt00u255oCakP7EU5monvX53fBFwo8l00k
	 7ES5a6EiM0W+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E2CE61118;
	Fri, 20 Mar 2026 19:53:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 28A4C25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E0638478B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NKCE1v5buwTY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 19:53:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6E68D84771
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E68D84771
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E68D84771
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:53:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D8C4F408DB;
 Fri, 20 Mar 2026 19:53:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9506BC19425;
 Fri, 20 Mar 2026 19:53:13 +0000 (UTC)
Date: Fri, 20 Mar 2026 19:53:11 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jakub Staniszewski <jakub.staniszewski@intel.com>
Message-ID: <20260320195311.GK74886@horms.kernel.org>
References: <20260320050533.422475-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260320050533.422475-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774036394;
 bh=yOlwrnfApgSr2V+5A7pE8Ew2hiOEjPzACHrqChYg0ng=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ojiZCEL4DYXNLde91ANXhlXkvVIodJ9nQVyh0mL6mvlhYb++J1Dx2Jb+v/LwSu3c0
 i9XTCgoc4/7q06a0yIwC8LWoqowP9qsDN27ib/VOj7w49P6RG31wv01p5TW05oa1h2
 cIfz+hOxDFiuqx5cWQiESIfq2TVrB+q14vK0MM6cjQsRHR9io/o/K73C384TC7L9Sk
 Zfk7QdhNZXPBlMx9ngO6as3bPtNUvd0Nqu9uahQ9VnA9ztGC0Zr4C5iMlwApLtzLt5
 uF+Y4r1hfkV7HoAu0LvofsAZANRWQR7kNyJF7vwTAbevewN1DvmBJN2a/+utzZHSKE
 vH5Pb6ztbJHPg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ojiZCEL4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix FDB deletion
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
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jakub.staniszewski@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,horms.kernel.org:mid,osuosl.org:dkim,intel.com:email];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
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
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 981212E0892
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 06:05:33AM +0100, Aleksandr Loktionov wrote:
> From: Jakub Staniszewski <jakub.staniszewski@intel.com>
> 
> Correct the logic in ndo_fdb_del() to align with other drivers in 
> upstream. The condition was inverted — it was rejecting permanent
> (NUD_PERMANENT) MAC addresses while allowing non-permanent ones to be
> deleted, which is the opposite of the intended behavior.
> 
> The correct logic is to reject deletion of non-permanent entries,
> mirroring the fix applied to ndo_dflt_fdb_del() in commit 645359930231
> ("rtnetlink: Fix inverted check in ndo_dflt_fdb_del()").
> 
> Fixes: e94d4478669357cd ("ice: Implement filter sync, NDO operations and bump version")
> Signed-off-by: Jakub Staniszewski <jakub.staniszewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

