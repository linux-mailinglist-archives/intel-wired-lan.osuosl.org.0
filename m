Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cID1Mhr2AWpXmwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 17:30:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F985112F6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 17:30:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65A9D844B2;
	Mon, 11 May 2026 15:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H8WqdEYijF16; Mon, 11 May 2026 15:30:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5CF3844B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778513431;
	bh=tylBo06HIvCZ9xec5TVErzmJWCyV/zkqvNtp7hZPmzg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6bJzwo6coBMHU3d+hmGsYWWSf2mOk/2EQv5Sol4IPfiemLLEhK7o5DlirY6OUVOuh
	 TgGfmF/uPaq3O2ISORF3LnkFgiFlpytp/gCYfyCUW7w2tOTUSy8wmfas909cNQnOK4
	 nDOD61ezmokG9cBO5RBPxFM2nnGVbrcrAGFWfMha6V1Z1b4XAkg9AVg/uGKCiRK698
	 RGKOucDNd+9k92vjpZ1WNnH7FxTG1lLSAQWlWp/dDiWByvInvcfcJCO8tNOEnfGJqj
	 OTZs3ewVkpekHhmOVBXD8YEvse4aTvK+QR7XXt5nvo7ZgINGj7y5lZPeh0VM0wdQWd
	 3CQXVK1TDDPpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5CF3844B3;
	Mon, 11 May 2026 15:30:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C2CA4272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B429F844B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J__SuckwYJ7U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 15:30:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 08C07844A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08C07844A9
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 08C07844A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:30:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9C1B842B15;
 Mon, 11 May 2026 15:30:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A495C2BCB0;
 Mon, 11 May 2026 15:30:28 +0000 (UTC)
Date: Mon, 11 May 2026 16:30:25 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260511153025.GB27589@horms.kernel.org>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
 <20260508031226.3601800-5-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260508031226.3601800-5-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778513429;
 bh=4SFwl8HVv5AMthvQ+awcRUJU0OPDPhHPyYcwUIJe6E4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DOko1oHEK/J2Orn3jwKYrgaDwO7Q4rcya6ehxtm9zSqyvneEqfH3/KEtz0p/dAp6a
 9ejKwAYEzh8Ai6Fsf6n07UAnv5eCCvcQCJqGSY9dJK3GYhHPq2D+wJWG/ur0CLSgez
 AOpxUJnbXX7vdTf2zBL55xBrWD4E2G+R236oSs2TjgvkuM+29j4smkkFazO3Nu7Bm0
 QmKOcUKEjCfcs8jyW3mprJV3pxx/9MpmMo1PnXjgP78t2Ld1HQdME73tLVsgiGQMGh
 xRJdPA4vcGNMvL72+uk1tOSU618lHXwPRVosqfsCmcdiQ2ux07olfh9Gtir9eyF+ZG
 5zpTsIHddxtLA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=DOko1oHE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/8] ixgbe: increase
 SECRX_RDY polling frequency in ixgbe_disable_rx_buff_generic
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
X-Rspamd-Queue-Id: 50F985112F6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,sashiko.dev:url,horms.kernel.org:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
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
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:12:22AM +0200, Aleksandr Loktionov wrote:
> From: Maciej Rabeda <maciej.rabeda@intel.com>
> 
> ixgbe_disable_rx_buff_generic polls for SECRX_RDY with 40 iterations
> and a 1000 us (1 ms) busy-wait per iteration via udelay(), giving an
> exact total wait of 40 ms.  On fast hardware the security block is
> typically ready well under 1 ms, so each iteration wastes up to
> 999 us of stalled initialization time.
> 
> Replace udelay(1000) with usleep_range(10, 20) and raise the iteration
> limit to 4000.  Because usleep_range(min, max) is guaranteed to sleep
> at least 'min' microseconds, 4000 * 10 us preserves the original 40 ms
> minimum wait before timeout.  The worst-case is now ~80 ms (4000 * 20
> us) plus scheduler latency, which is acceptable since SECRX_RDY
> failing to assert is a non-fatal informational condition (the function
> just logs a debug message).
> 
> On platforms where SECRX_RDY asserts quickly this reduces the typical
> stall from up to ~1 ms per iteration to ~10-20 us.  The function is
> called only from process context, so usleep_range is appropriate.
> 
> Signed-off-by: Maciej Rabeda <maciej.rabeda@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

FTR: There is an AI-generated review of this patch available on sashiko.dev

     It points out that scheduler delays can, in some cases, be
     large, and thus the theoretical worst case can be somewhat
     significantly than 80ms.

     If you spin a v2 for some other reason you may want to update
     the wording of the commit message. But I am fine with things as-is
     because the focus of this change is on improving the best case.
