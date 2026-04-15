Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDl4KmCJ32kHVAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 14:49:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BF040478F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 14:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9080D8541F;
	Wed, 15 Apr 2026 12:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKU-PMDK-On8; Wed, 15 Apr 2026 12:49:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C990385423
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776257371;
	bh=5Fs0Q7x4X6iSmCYxRLhOeWOamuTG5Eeba6WYWdyMuYI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eM4bqxcxLXcnrOfpfu11sp0HYxolvks3Y6lKkhPxzs2DP5f9+f2rqfeNuFL6s3ECI
	 baSLODZdlyIgIYqflwkMIt6h5i2HbpqJdgL68Dp0eNLROWq6TAbPJQ2KPQ0cce1peT
	 4i7kKANnMD1GLvax5qvYlnM773U7uuIp1g8wfsgFeQZXdwFxiiLH8BQvRTeWsTM6Wo
	 OSVC4vInn5yTHgSfydjx6z9D0RNAWWDgaqbYNJB4xgH6Hhkart+At4o11traRqfmyN
	 HGQ5XENBwvielqh/jAlKZ0iXctd76mcBWEh35H75j3slwg04MZqCQj0XiTyZ2bDLnw
	 p7CetYlmJ7POg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C990385423;
	Wed, 15 Apr 2026 12:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CC51E237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 12:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B20E9403B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 12:49:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 207rdmjMnwNW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 12:49:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C71E440535
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C71E440535
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C71E440535
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 12:49:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1DDB9600CB;
 Wed, 15 Apr 2026 12:49:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2879FC2BCB4;
 Wed, 15 Apr 2026 12:49:24 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 kiran.patil@intel.com, sylwesterx.dziedziuch@intel.com,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 avinash.dayanand@intel.com
Date: Wed, 15 Apr 2026 13:48:45 +0100
Message-ID: <20260415124845.797759-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260413073035.4082204-2-aleksandr.loktionov@intel.com>
References: <20260413073035.4082204-2-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776257366;
 bh=GOwZ5doA46qVcWz3RPILsKEjPzaIRsf8e9HxV08nzL4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=J8Z7E+eaoXU5E36Ci2dtxMk1/QFNhGsdxvTszyuFWgzvwVnwmMB419YrtxS0qiImi
 O82QO67KWosKyuRvX72/MLD6BaW9Ml6DQd4N6ltTvgkugqfmtmdj//Fg/vMasEQiIq
 ydquxxeH3qwC5Rl/NCS1BXmi+T0VQkCTwUdRcte63xVwtTZxXJP9sG8jbLwHbpWiJZ
 i5zLGGJGAbFQ6njoeJtyPy+Tvo4cDmA3LzVWDS/nv/Wu7tqY4wJv1cVwPeGOb39BTO
 Dqhxe6lCosXo/yQhmG/DvxTbmm//HOfMBdk8ciMyXabCcRlLgX4cdQ9zTMSgrCg+N1
 UeeU+Q825PSYg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=J8Z7E+ea
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/5] iavf: fix null pointer
 dereference in iavf_detect_recover_hung
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:kiran.patil@intel.com,m:sylwesterx.dziedziuch@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:avinash.dayanand@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 79BF040478F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
iavf: fix null pointer dereference in iavf_detect_recover_hung

During a concurrent reset, q_vectors are freed and re-allocated while
the watchdog task may still be iterating rings in
iavf_detect_recover_hung(). Dereferencing a NULL q_vector inside
iavf_force_wb() results in a crash. Guard against this by skipping
rings whose q_vector is NULL.

> Fixes: 9c6c12595b73 ("i40e: Detection and recovery of TX queue hung logic moved to service_task from tx_timeout")

The Fixes tag points to commit 9c6c12595b73, but that commit only modified
the i40e driver and did not introduce the iavf_detect_recover_hung function.

The bug was actually introduced by commit 07d44190a389 ("i40e/i40evf: Detect
and recover hung queue scenario"), which added iavf_detect_recover_hung with
the code pattern 'if (tx_ring && tx_ring->desc)' that calls
iavf_force_wb(vsi, tx_ring->q_vector) without checking if q_vector is NULL.

Should the Fixes tag be:

    Fixes: 07d44190a389 ("i40e/i40evf: Detect and recover hung queue scenario")

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 363c42bf3dcf..e7e7fc9a5c68 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c

[ ... ]

> @@ -195,8 +194,11 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
>  		return;
>
>  	for (i = 0; i < vsi->back->num_active_queues; i++) {
> -		tx_ring = &vsi->back->tx_rings[i];
> -		if (tx_ring && tx_ring->desc) {
> +		struct iavf_ring *tx_ring = &vsi->back->tx_rings[i];
> +
> +		if (!tx_ring || !tx_ring->q_vector)
> +			continue;

The check `if (!tx_ring || ...)` tests whether tx_ring is NULL, but tx_ring
is assigned as `&vsi->back->tx_rings[i]`, which is the address of an array
element. This address is always non-NULL by C language rules, as noted in
the commit message itself: "the compiler can never observe since an
array-element address is always non-NULL."

This creates misleading logic. Other similar code in the driver correctly
omits such checks (for example, in iavf_virtchnl.c and elsewhere in
iavf_txrx.c).

Should this be simplified to just check the q_vector:

    if (!tx_ring->q_vector)
        continue;

> +		if (tx_ring->desc) {
>  			/* If packet counter has not changed the queue is
>  			 * likely stalled, so force an interrupt for this
>  			 * queue.

[ ... ]
