Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +ASnAVFoB2o82AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 20:39:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D0255660D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 20:39:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB37461370;
	Fri, 15 May 2026 18:39:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E6smXUsC_iAE; Fri, 15 May 2026 18:39:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32DAF61440
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778870350;
	bh=phXTIkRdDW79+3IUaUBPZ4VZbcHHw1Hfs3mbvZODsVA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OlsE0jl8xQ7+jiKSlOP9eEe7GJA++jGX97KtAm8PJsO3VJAmR3xQPCZexHbxSfrVA
	 daG2a+o9ddlXq+Oeo+2aJdDAiCrKuXr6bknsVbJ4HaNeNrLrmsoI1xxTV8LeuwAma/
	 oSuFhXIBXb8rudIEskeUWT2iKyqXqGd/HfJZT91Zz90sMgJTyzuSNOb3Q/Moy12ZvX
	 UN5YlmzhPypZSyetBNwg/jJQAMOKvyF/3Mz0/Koc6plQbLtyE3rFO+mIiUKUFYTRK3
	 QoI2HEJGBJAP2n/P9PS2wWlB/YCFnB7GfeAN0CWGcMXLFN+E2n0PSOuYZTxkZjQDvN
	 boM4UbFhS2bOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32DAF61440;
	Fri, 15 May 2026 18:39:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 52F9823F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 18:39:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 44AC283CC9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 18:39:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bjxy4SOO6yFv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 18:39:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A23383CC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A23383CC4
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A23383CC4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 18:39:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B1CE7404A5;
 Fri, 15 May 2026 18:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDB3CC2BCB0;
 Fri, 15 May 2026 18:39:05 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: przemyslaw.korba@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 arkadiusz.kubalewski@intel.com
Date: Fri, 15 May 2026 19:38:52 +0100
Message-ID: <20260515183852.280895-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260511083841.1078696-1-przemyslaw.korba@intel.com>
References: <20260511083841.1078696-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778870347;
 bh=alyM4fL2zP9I3YpMAWZdGzHyvU+rcfKXgtXzmLlxz5o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CpcHhAafYdNJIZjTmlcyy+G8z8ZDFrFHmttbjLFFxwIFrOpkjRX56KVyPUAvLagjb
 iLsOA4Zj0zBM5MpYbSDsIEa8K10zAjinzUzdlWIYd/CG9lrYDPWruO4dNNkmcIUerq
 CYjezSixDI/2YcqxP7oGISc9bd51+yvSbLUyNoZ7lpggwNoZwcNmy3TBWrWIOXiZQN
 p9At37cn8+bMa7tlKH7/K1WrIp3Tyylk6vBU441PMaliOUG1JBUNBghF6Ey2FvlTu+
 c16UGY/dVYVcXZPO8IdFZ8LjJipIVhf5XkzQTPHFi5hEl/ezAzH4k3N0SDbJE+uarL
 shaqNZuF+lIWQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CpcHhAaf
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: suppress DPLL errors
 during reset recovery
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
X-Rspamd-Queue-Id: 70D0255660D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: suppress DPLL errors during reset recovery

This commit suppresses DPLL error logging and counter increments when the admin
queue returns EBUSY. The intent is to avoid unnecessary warnings and prevent
the DPLL periodic worker from being disabled during reset recovery.

> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 0704e92ab0430..78b8836b534b3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -784,7 +784,7 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
>  				   ret,
>  				   libie_aq_str(pf->hw.adminq.sq_last_status),
>  				   pin_type_name[pin_type], pin->idx);
> -	else
> +	else if (pf->hw.adminq.sq_last_status != LIBIE_AQ_RC_EBUSY)

Could this check of sq_last_status race with other admin queue commands?

The sq_last_status field seems to be global state that is modified by any
admin queue command. If this is checked outside of the admin queue lock,
could another thread (like an ethtool operation) issue an admin queue
command and overwrite sq_last_status before this check runs?

If it gets overwritten to LIBIE_AQ_RC_OK, this would falsely evaluate as not
EBUSY and log the error anyway, incrementing the error counter.

[ ... ]

> @@ -2955,7 +2957,9 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
>  	    d->periodic_counter % dp->phase_offset_monitor_period == 0)
>  		ret = ice_dpll_pps_update_phase_offsets(pf, &phase_offset_ntf);

Does the reset recovery suppression also need to be applied inside
ice_dpll_pps_update_phase_offsets()?

If ice_aq_get_cgu_input_pin_measure() fails with EBUSY during reset recovery,
it looks like ice_dpll_pps_update_phase_offsets() only checks for
LIBIE_AQ_RC_EAGAIN before logging an error, which might still spam the log
with EBUSY errors.

>  	if (ret) {
> -		d->cgu_state_acq_err_num++;
> +		/* EBUSY is expected during reset recovery */
> +		if (pf->hw.adminq.sq_last_status != LIBIE_AQ_RC_EBUSY)
> +			d->cgu_state_acq_err_num++;
>  		/* stop rescheduling this worker */
>  		if (d->cgu_state_acq_err_num >
>  		    ICE_CGU_STATE_ACQ_ERR_THRESHOLD) {

By skipping the increment of the error counter on EBUSY, will this create an
unbounded polling loop?

Looking at the end of ice_dpll_periodic_work():

resched:
    kthread_queue_delayed_work(d->kworker, &d->work,
                               ret ? msecs_to_jiffies(10) :
                               msecs_to_jiffies(500));

If the firmware gets wedged and persistently returns EBUSY, the error
threshold will never be reached, and the worker will continue to hammer the
admin queue every 10ms forever. Is it expected to poll this frequently
without a backoff mechanism or an upper bound?
