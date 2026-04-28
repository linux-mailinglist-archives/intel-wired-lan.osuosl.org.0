Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMQsD+GH8GnuUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:11:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F7B48250F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B1F28179A;
	Tue, 28 Apr 2026 10:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C00sLZRw_Bf6; Tue, 28 Apr 2026 10:11:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A48DE817ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777371102;
	bh=106hAIgbQHLf8wAhNa7BlpV2WkOvHlnTWeXsrSaYDmc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iHRNFpmAIjVRx+Tio7wUiJMBYlOm2C7jow0pPbc9BuzR3w7lI7O0zzvLYekbZ9MSj
	 fexG4n7mOR7dILNOEL49nTJV4Dz/cmWSfCy/f+D1HXH7i9a+NWYu8E5KYH89YsKuml
	 w6Ma69ye3ZSQCSRXzHrE3ZRDo1ZNyj0RYWozpmh7PeTVHta4PQYpFOb9yWe1puJMGm
	 PjgU8ZwrJY8DgzruGTHfMW3Ua0siHgj4rl9G8fASomkYUCQVA/Yg12SZ0qc4f3ZRlA
	 tJxdD5Iu2ZZGPfJClVNEvf2mME3P7HJzBXBOzGiD+HcGW2pxGSB5uHNKR6u8PzDJud
	 ZvTl2wlVXcLLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A48DE817ED;
	Tue, 28 Apr 2026 10:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 39727231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:11:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F10C60F81
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:11:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id exerFnheYG1W for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:11:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 719C260DA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 719C260DA6
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 719C260DA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:11:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id BB877448E9;
 Tue, 28 Apr 2026 10:11:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97D55C2BCAF;
 Tue, 28 Apr 2026 10:11:38 +0000 (UTC)
Date: Tue, 28 Apr 2026 11:11:36 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <20260428101136.GP900403@horms.kernel.org>
References: <20260424061958.918404-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260424061958.918404-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1777371099;
 bh=QENjEpNoS7q5Ws0xYsiz+zv7m8XIjdGxrcgC8Z5U73I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DaPkkW9gYWt1N+rNjzv/iW+7EZRsU7TrxnfGhWD9uA8+JkrQGCKk5YyfgwnKYx3zl
 1MxbnhpIuRX+vPm7iDnxnzYi3r/Ce69x6sUrdrFwexpw+IZqoWquW7VgplS7OvCAx4
 dWtnl2aIQ/e9LsFMdzz9Fgr4cKxs6di5mbw+A/s9GVoKsbq6UvZqgwNY9fRmovRiDy
 PPvxmxlPjtBO+Z/JPC5f9eaEhx9GxBCKiErhYrK/yF52Pb/6/7xYzSbzE1TNlNIEUC
 rCWYXX04ot3dYw+4rbWTXTgtgu5EkBXVK9Zso+XTTaENp5NGoGRduReyT7V+xCWYc7
 WSha+Y3vVnPiQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=DaPkkW9g
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: only free LL TS IRQ when
 the handler is present
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
X-Rspamd-Queue-Id: E1F7B48250F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:sergey.temerkhanov@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,osuosl.org:dkim,horms.kernel.org:mid];
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
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

On Fri, Apr 24, 2026 at 08:19:58AM +0200, Aleksandr Loktionov wrote:
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> Free LL TS IRQ handler only when the handler was previously installed.
> Unguarded calls to ice_free_irq_msix_ll_ts() may result in a double
> free when the LL TS interrupt is not supported by the firmware because
> ll_ts_irq.index is zero-initialised and would pass the index >= 0 check.
> 
> Track whether the LL TS IRQ was successfully requested by initialising
> ll_ts_irq.index to -ENOENT in ice_init_pf() and when taking the
> "not supported" skip path or on request failure, then guard the free
> paths with ll_ts_irq.index >= 0.
> 
> Fixes: 82e71b226e0e ("ice: Enable SW interrupt from FW for LL TS")
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

FTR: There is an AI generated review of this patch available on sashiko.dev.
I believe the issues flagged there pre-date this patch and do not impact
this patch. So while I do not think they should block progress of this
patch I suggest looking over them to see if any follow-up is warranted.
