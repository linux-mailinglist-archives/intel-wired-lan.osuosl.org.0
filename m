Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOsXAm8r1Wli1wcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 18:06:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB983B17D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 18:06:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B92C40753;
	Tue,  7 Apr 2026 16:06:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BNoaf2JyWRuP; Tue,  7 Apr 2026 16:06:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F1B740761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775577962;
	bh=CkQ8xalcUX4iFGCdyWe9tbQKqGpFEvyj3xBrSqd+GCM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bj0TcVnmwQThvWEhgmuRCg2j9FgVgRWToIUggp/ZCjf2IGhAaKTUlPkumSWXTDi1m
	 t5xmT6n2tTlFuusfQ9BQts8MVGyq3rApIqHBEvI/zyrw0RQvNJ0tFWuzhM5TXsVN2e
	 ofb9/jOEVBw1qGv+Ib5Idjp02Nd4528HIH7/CLwDklhqlqs9MObQ38X5tPVoxOl4fH
	 2izvrcYe1VAdqDEGNOcgqHh5YRQDLj1/L08CxggawWYRDrCFsa/OxrgYg+lMI9LG4o
	 RCQCjKaCwJKcp4/YR4LaXHIT0Lan4B7RS7nokNqkvjiPVoR9SXRfEn7MsQK0y68Mw+
	 RH6js2sTc6QbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F1B740761;
	Tue,  7 Apr 2026 16:06:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 80AC32EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 16:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 66D7F81090
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 16:06:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iejaG6a7KZ9Y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2026 16:06:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A65580E4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A65580E4B
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A65580E4B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 16:06:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B724B60123;
 Tue,  7 Apr 2026 16:05:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67AC9C19424;
 Tue,  7 Apr 2026 16:05:55 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: emil.s.tantilov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 milena.olech@intel.com, jacob.e.keller@intel.com,
 konstantin.ilichev@intel.com
Date: Tue,  7 Apr 2026 17:02:43 +0100
Message-ID: <20260407160241.470945-3-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260403153538.11516-1-emil.s.tantilov@intel.com>
References: <20260403153538.11516-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775577958;
 bh=WftREMo1u84xLMr+6YLVGdH39LN0KbhOC3B/w0TvlxQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GY4xCBGbTrz3MQyQjJvGIovIL3b8DFki2JMe0YyX/aJyHaXLmp0wD0EdRJHobRv17
 MmEszpcm8yOnzRPMq14WJ+Isl/3PuBJ82jp0VogQrutYGHKzW9xSFoGyyyTIKxnMCe
 l9MrQ84JCICzknpnhQq2B8FkEeoulfgjrQcoLVLIYarYsPgTqHQAArLmkj7NLcOrHO
 KhOak4aZVZXlQE/P+TFnjCLSmwqQq8F7Zalr0fLLQazio2UT7ORF7MQaGi2Lt2yS2d
 ICGV/WXhbYGTD/zWV4GbzDXrvE1xFV6l54h5re1wahmRkJLsKTkuFzpOd/Tod7J8X2
 zog+Yf7aerwEg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GY4xCBGb
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
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:milena.olech@intel.com,m:jacob.e.keller@intel.com,m:konstantin.ilichev@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,redhat.com,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.993];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6FB983B17D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev

Simon says: I don't agree with the regression characterisation made by
the AI review - I think this patch is good. But I do think the issues
flagged by the AI review warrant investigation.

---
idpf: fix read_dev_clk_lock spinlock init in idpf_ptp_init()

This commit moves the initialization of read_dev_clk_lock earlier in
idpf_ptp_init() to ensure it is initialized before the PTP auxiliary
worker is scheduled.

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index eec91c4f0a75a..4a51d2727547d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -952,6 +952,8 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
>  		goto free_ptp;
>  	}
>  
> +	spin_lock_init(&adapter->ptp->read_dev_clk_lock);
> +
>  	err = idpf_ptp_create_clock(adapter);

This patch moves the lock initialization to prevent the worker from accessing
an uninitialized lock. However, idpf_ptp_create_clock() registers the PTP
device, and shortly after, ptp_schedule_worker() is called. Both happen
before the hardware clock baseline and initial time are set later in
idpf_ptp_init().

Could this introduce a regression where userspace opens the PTP device and
interacts with an uninitialized clock, or has its settings overwritten by
the driver's delayed idpf_ptp_settime64() call?

Additionally, could the scheduled worker read the uninitialized zero-time
and overwrite the software cache after the main thread sets the real time?

Moving the device registration and worker scheduling to the very end of
idpf_ptp_init() might resolve these races and naturally fix the lock
initialization ordering.

Also, since this code manages worker synchronization, is there a regression
when updating cached_phc_time and cached_phc_jiffies?

In idpf_ptp_update_cached_phctime(), these variables are updated
sequentially using the WRITE_ONCE() macro.

Because this function can be executed concurrently by the PTP worker
thread and ioctls, thread interleaving could result in an inconsistent
state where one variable is from one thread and the other from another.

Readers like idpf_ptp_extend_ts() load these variables using plain C
accesses without mutual exclusion or a seqlock.

Could this cause valid timestamps to be extended using an incorrect or
outdated baseline, silently corrupting network timestamps?

[ ... ]
