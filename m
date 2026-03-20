Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEKZF934vGlW5AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:35:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D455D2D6ACF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:35:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6096F84750;
	Fri, 20 Mar 2026 07:35:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id liJr1ZyIIGhf; Fri, 20 Mar 2026 07:35:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAE9F84756
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773992154;
	bh=9PeuPaUAxF6wPEe48zv31ASlM/mVrvhkQC0Ge3mlRlI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TADvsQoLE1IxSqah5vYiG7H8nWLkzKKyWfWxEUyVmxwE4JfAH4E6mEBa2zUSfzciw
	 C51f+cd1kM7wBlqBTfFZHKvA5G+kQvSw+7BmzadnnsCZaR7wI20xi3cOTotNBxxi+h
	 AFUPACN8R2D1ckJoomTXUVSiWSppIBaEwWn2oKd+luFctPkoA5y1Rh/Q3ZeKq+KAFg
	 BW3m/CyLpe6yGcjjxqbp5XdUcfdA96QVMGvNTW41VYj/Ok/4R1Pc+xTLM/+Y5XZqHd
	 62OL0Hf3nVN2uJ50asfljQlzHwc2tr6MeITPZhbrKGdaaS+ZxSTTaD3w/6x2VYteOE
	 ELSiC2aH+weDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAE9F84756;
	Fri, 20 Mar 2026 07:35:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 468C925C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23BD084789
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:35:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q2R9NGVat2rs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 07:35:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3259284745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3259284745
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3259284745
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:35:52 +0000 (UTC)
Date: Fri, 20 Mar 2026 08:35:47 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, clrkwllms@kernel.org, rostedt@goodmis.org,
 linux-rt-devel@lists.linux.dev, sgzhang@google.com, boolli@google.com
Message-ID: <20260320073547.yqDmYQ49@linutronix.de>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260319211335.23236-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1773992149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9PeuPaUAxF6wPEe48zv31ASlM/mVrvhkQC0Ge3mlRlI=;
 b=y8iAz9sMFwZkvlKFSdTHirwcWs3fvhGdg5WOKx0k0FboglbYAI2uVBDTeJ4HudeZaucFbS
 mEubXpZlkuLgCARmp1E9jHuSo5VDW9abwOyuhJKAeFYc+ss8Owc8b5RBpfPoTFD3Yphu34
 iG7fSXsV5KHDfhH6reFd0CZqFR8vjDX/TyBs8LpLIkCuRxHgi2TC7w6bVkIdT0zZDQraeC
 ilA++MWsRDx0V/p9ZibE+vCz04512ddMJgdYhIL5rTOu/V7spGMG0b7KbC1J03GEd0g7T5
 D3rlgWe9B6PyAiIYJ6l0MQATSM5NCQoGQsVKXtvlj8lHsMDLUH/ZGpA3alXPUQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1773992149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9PeuPaUAxF6wPEe48zv31ASlM/mVrvhkQC0Ge3mlRlI=;
 b=qgNGs6CoO3SkzuiELhVxh1HMQGJLy4PnEV508XLHDphAOGU1JvTy8pDdYgOhJ3QcpHnm4l
 vPwlXd6i/0uW63BQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=y8iAz9sM; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=qgNGs6Co
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/3] idpf: virtchnl locking
 and async fixes
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
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D455D2D6ACF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-19 14:13:32 [-0700], Emil Tantilov wrote:
> The main change in this series is the introduction of local spinlock_t
> which replaces the previous use of completion's raw spinlock. This allows
> us to make consistent use of the xn_bm_lock when accessing the free_xn_bm
> bitmap, while also avoiding nested raw/bh spinlock issue on PREEMPT_RT
> kernels. Additionally, we ensure that the payload size is set before
> invoking the async handler, to make sure it doesn't error out prematurely
> due to invalid size check.

Nice.
Acked-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Sebastian
