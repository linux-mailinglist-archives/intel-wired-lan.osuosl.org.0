Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFxrINMQ3WkOZQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 17:50:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A39CB3EE2FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 17:50:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50E2E40EE1;
	Mon, 13 Apr 2026 15:50:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yyC9lSDVi97I; Mon, 13 Apr 2026 15:50:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A0C140F48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776095439;
	bh=QlHuDjWwTbII2UQLJeSMkY3ody9/ldfv/8v40wLXWW0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GIHAVpYMn6/HSZ8C/rGvvSWcRuGn0p0fzo/xApel5G4pQ061DDUP0DAf2pA7O3bpH
	 XswkYPng7acTRWi/idZC0dBmeh3kIug5WntHp6wFgBLdRNUhtQD6Zwmz9uADUtZ04A
	 zekI07e31UV7FsZNJFd1mGeotBYMEADhjDSm7DX2TMCYXCqyDUA4/lUXO40DGYSO/Q
	 8ESKGiorj30o/THz97LWcUpulgKkjXQQ+laR3UOkMNbxvIjVOQuh5E744y+IGl1w7s
	 P6Jm7/EcGPzXQbmxTWPm6Cv0qgOlF42n282hoF98XgPyZWIHro33vS1l7YVFXcnqED
	 J3iemIpKuXwDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A0C140F48;
	Mon, 13 Apr 2026 15:50:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B623283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07ECE40289
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m97f72N9aGp7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 15:50:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 62FC040094
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62FC040094
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 62FC040094
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:50:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A520C61336;
 Mon, 13 Apr 2026 15:50:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12803C2BCAF;
 Mon, 13 Apr 2026 15:50:32 +0000 (UTC)
Date: Mon, 13 Apr 2026 16:50:30 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20260413155030.GS469338@kernel.org>
References: <20260409075523.3728506-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409075523.3728506-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776095434;
 bh=GbXCe4AZJ6wicsCGLe6ipRR64a2u6eUyDZXiLtFO9C4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KcB1Q6HFzfWN5mQxagsPV2Twyxs6kE63fmDwruq2yPhAcNZiuAf2K2qPW9czREmRs
 Yd+VIsJDMzpcMDxZhgG8jyAcCd0YS0+ty7nYe9ydr+oSIAIJHVRpYNuc5+1F7ebXbv
 gJDsDqxleYITPzEgwf73UU+NyFTJd4nO74W2hpqcoMyZy0XosS7MmcKEgR3fymJjGq
 aM/8nzbiip+XIu1TGO/sZjameXp8ejJp0qRTacDbVim6HoEvjan/lmtwQb5xOGBuj5
 ZW3JoaLjjUFC4ileF3rqK8UgjxTrV7Q8vNHuwK42on9XK2lc8047j76ONQMaJB6+7k
 2v3clHkAsXK0Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KcB1Q6HF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: use ktime_get_real
 helpers in igb_ptp_reset()
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A39CB3EE2FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 09:55:23AM +0200, Aleksandr Loktionov wrote:
> Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
> ktime_get_real_ns() and ktime_to_timespec64(ktime_get_real()) with
> ktime_get_real_ts64() in igb_ptp_reset().  Using the combined helpers
> makes the intent clearer.
> 
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Suggested-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

