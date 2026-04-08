Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gES9ChGC1mmwFwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 18:28:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AC43BED03
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 18:28:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23E9760F88;
	Wed,  8 Apr 2026 16:27:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VBFANjD0Cdr6; Wed,  8 Apr 2026 16:27:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63E8760F89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775665678;
	bh=DYRfVSgz4owZLDI/ocXpU8b8l7pYzkfmHaO7VL83kC8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sxs9YD2PjlF0suK4WcKYWzFEAbjFtZnlHh8wcFFhsrHXXKQZdI/8jTKNPzWZMFjF+
	 TSJhqe59F+Roqqrdy67O4USxOfujbDqFZeO/46QFKaZtl+JxmdgnyZG7K74pW1yxAO
	 tOADVJqFtkE8Ctb9WvFgrYfVoRJpjgGPiPaVcpFMbnX+X4GTiHk9ov7ewg3ckcZmuV
	 hOszgsMjxFs+LZaUx3Kse2OMZBTWxfSp5V1tXpV6KtV1dEBIgdo/1QZMzFQFwzoGCh
	 I9LuSVuSUou9lxVBpxh5hzs6yWheMI7UjhXZP72nnLyrTZxotqM5vjPJXGHHGvIt8A
	 SH/H9rUNdagDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63E8760F89;
	Wed,  8 Apr 2026 16:27:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A8A4237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 16:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5BEA34033D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 16:27:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AAv_RnJIXUaU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 16:27:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A4928400C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4928400C1
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4928400C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 16:27:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 247184326F;
 Wed,  8 Apr 2026 16:27:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 367B5C19425;
 Wed,  8 Apr 2026 16:27:52 +0000 (UTC)
Date: Wed, 8 Apr 2026 17:27:49 +0100
From: Simon Horman <horms@kernel.org>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, milena.olech@intel.com,
 jacob.e.keller@intel.com, konstantin.ilichev@intel.com
Message-ID: <20260408162749.GD469338@kernel.org>
References: <20260403153538.11516-1-emil.s.tantilov@intel.com>
 <20260407160241.470945-3-horms@kernel.org>
 <626f3619-499d-458e-8536-2cc30984656d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <626f3619-499d-458e-8536-2cc30984656d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775665675;
 bh=9Aj6Lw7cNs33pOaJ8kTW0W5iCQ1Qu6l87NcJHj4Zyes=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hmhIq463mdAgSJJmPsbHuHN9fSnUReA8mAjepwiLZ5CjFFGlNDBVo6WpRRj/z4yDc
 7NWVquzHt7uY6MAU5fcSFLMiM1Wc3CAjcMBu3aIdXyS+KL/A9iH4WlxqRHD5a38A2o
 ojwsGYoTeWYYsl/TT1g8sctXqMaM1hBOUhVhRT+QAKDFawfWKSrcnYUK+XOYpWw5sz
 AvwPVOEmapLQHL5wJpRVKDuyRjNuzb3BF+s4n6zWh6D6FuAYBHwvjrPs1lrxjVhpWH
 +1v/8KHWV1uCnkJGI41+/xRY0OVw/cpFaKdZGikdE0au+HC2fp/ud4JJb6s+F+EVXm
 RW9ugAOKVdhIA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hmhIq463
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix read_dev_clk_lock
 spinlock init in idpf_ptp_init()
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:milena.olech@intel.com,m:jacob.e.keller@intel.com,m:konstantin.ilichev@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 76AC43BED03
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 03:00:22PM -0700, Tantilov, Emil S wrote:
> 
> 
> On 4/7/2026 9:02 AM, Simon Horman wrote:
> > From: 'Simon Horman' <horms@kernel.org>
> > 
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > Full review at: https://sashiko.dev
> > 
> > Simon says: I don't agree with the regression characterisation made by
> > the AI review - I think this patch is good. But I do think the issues
> > flagged by the AI review warrant investigation.
> 
> The point of the change is to resolve the use of uninitialized spinlock. The
> questions below appear to be generated around that code, which would
> be out of scope for this patch, but I will address them anyway ...

Right, I agree with that general statement on the review: it muddles
up potential problems in nearby code, with problems introduced by
your patch (none seen).

I do thank you for analysing the problems raised. And I'll leave it up
to you to provide follow-up patches as you see fit.

For this patch, I think we are good.

Reviewed-by: Simon Horman <horms@kernel.org>
