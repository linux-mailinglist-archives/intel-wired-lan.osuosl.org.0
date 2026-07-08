Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lJx1MhJoTmpdMAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 17:09:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCBD727C53
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 17:09:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LhaRjWCB;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0FF981F87;
	Wed,  8 Jul 2026 15:09:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPwMFREddI_2; Wed,  8 Jul 2026 15:09:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D0E981F8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783523343;
	bh=1ZUa0blMBqAoJRKAtQ0QJv01MxVkhA4vbmrOiPcRiPw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LhaRjWCBMTcgh03Wt4J8teRSsBDXP0zWQnf2XYY8Dr/gm2fQ8e06gox6v+9h8mdA8
	 /7gIhMgQ58gpBhlbneLAJuAQALawbyoxrwmznd0qAWutNiLpxe6rTlUVpzq2KBkp+V
	 HkOsvVPpq972rBP5kndr2bU4ASVfgYWTrzKrOv0vXOwC/khJE+TJ5mvQA5355SNHco
	 LjVGaZkfsz0wK2AOHMMiDpB5XZwYnNc4M1/JRPD5z6CG+zB7g3INiqooT6euqNZZQO
	 tZGVFd1b8Az4AcwRCmKyFgPHbNsEMUcsxv3MHJozkkaiYlDUVm06lgpSWCd6/PW3ir
	 D7ONQxce6QO0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D0E981F8A;
	Wed,  8 Jul 2026 15:09:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 838BB15C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 15:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7550360A90
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 15:09:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FUGVqQAEUjJK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 15:09:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 945516076F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 945516076F
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 945516076F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 15:08:59 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 2800743C7C;
 Wed,  8 Jul 2026 15:08:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 375911F000E9;
 Wed,  8 Jul 2026 15:08:57 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: maciej.fijalkowski@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com
Date: Wed,  8 Jul 2026 16:04:56 +0100
Message-ID: <20260708150455.1498611-2-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701124524.13644-3-maciej.fijalkowski@intel.com>
References: <20260701124524.13644-3-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783523339;
 bh=1ZUa0blMBqAoJRKAtQ0QJv01MxVkhA4vbmrOiPcRiPw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KAWT8s6cTXJYENmK5oe51oLfS2bvFHJM8JZPRc18aHFD1/IIJYdcj5fx0+WrjZTZk
 aVg5yLw/40Xdy6LXmof9wUB7qXTg16oHZhlU+ieI5OAfNMQvKn+JSmup2k6X7vU1wF
 i/tuz6A6ObQvz2IYfhIhFt67L8Y1qJz+YZwViyTluicRIASDlxwvEm+Bo+wYflVpIl
 USW+oDWBUF6l31lyfejsbszgn9hjJmJDrXaBCL2QvXesml7mX0qQFQmCIYo6MXMpDD
 1NjrlZwbXjhpBZH/GsJJ07m38G3XAD/Up/qyKH8Gda0WOtuYYtxt+tRBYYUDR+H4tb
 +uQU96/pqhcnw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=KAWT8s6c
Subject: Re: [Intel-wired-lan] [PATCH v5 net 2/7] i40e: avoid null ptr
 dereference in i40e_ptp_stop()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:from_smtp,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FCBD727C53

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
i40e: avoid null ptr dereference in i40e_ptp_stop()
    
Check if main_vsi is not null before calling dev_info() to avoid a null
pointer dereference when i40e_vsi_clear() frees the main VSI during rebuild.

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index ff62b5f2c8150..ca93df4d67859 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -1556,8 +1556,9 @@ void i40e_ptp_stop(struct i40e_pf *pf)
>  	if (pf->ptp_clock) {
>  		ptp_clock_unregister(pf->ptp_clock);
>  		pf->ptp_clock = NULL;
> -		dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
> -			 main_vsi->netdev->name);
> +		if (main_vsi)
> +			dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
> +				 main_vsi->netdev->name);

[Severity: High]
This isn't a bug introduced by this patch, but this lockless check appears
to introduce a time-of-check to time-of-use race condition.

When i40e_remove() calls i40e_ptp_stop(pf), it does so unsynchronized from
the background i40e_rebuild() task. If i40e_rebuild() fails during setup, it
calls i40e_vsi_clear(main_vsi), which frees the VSI and its netdev.

If i40e_ptp_stop() caches main_vsi right before it is cleared, couldn't the
if (main_vsi) check pass, but the subsequent main_vsi->netdev->name access
dereference freed memory, causing a use-after-free?

[Severity: High]
This is another pre-existing issue, but I noticed that i40e_ptp_stop() doesn't
seem to cancel the background workqueue task ptp_extts0_work.

During device removal, i40e_remove() calls i40e_ptp_stop() and then
subsequently frees the i40e_pf structure. If the work executes after the PF
is freed, will it access the deallocated i40e_pf structure and trigger a
use-after-free?

[Severity: High]
This is also a pre-existing issue, but I am looking at how pf->ptp_tx_skb is
cleared earlier in i40e_ptp_stop(). The teardown uses I40E_FLAG_PTP_ENA as a 
gate guard:

i40e_ptp_stop() clears I40E_FLAG_PTP_ENA, then locklessly checks and frees
pf->ptp_tx_skb using dev_kfree_skb_any().

The interrupt handler i40e_ptp_tx_hwtstamp() uses the same bit as a guard:

    if (!test_bit(I40E_FLAG_PTP_ENA, pf->flags))
            return;

If the interrupt handler passes the test_bit check just before i40e_ptp_stop()
executes clear_bit(), both contexts could concurrently read the same
pf->ptp_tx_skb pointer into local variables before it is NULLed out. Could
this result in a double free of the SKB?

[Severity: High]
There is a similar pre-existing issue related to the teardown of the
timestamping state in i40e_ptp_stop() racing with the TX datapath.

The TX datapath i40e_tstamp() protects the state using a bit lock:

    if (pf->ptp_tx &&
        !test_and_set_bit_lock(__I40E_PTP_TX_IN_PROGRESS, pf->state)) {
            ...
            pf->ptp_tx_skb = skb_get(skb);
    }

However, i40e_ptp_stop() checks pf->ptp_tx_skb locklessly and only clears
the bit lock if the SKB was present. If the TX datapath acquires the lock
and is preempted right before assigning pf->ptp_tx_skb, i40e_ptp_stop()
might execute, see a NULL ptp_tx_skb, and skip the cleanup block.

When the TX datapath resumes, it assigns the SKB pointer. Since the device
is subsequently destroyed, does this cause the SKB to be permanently leaked?

>  	}
>  
>  	if (i40e_is_ptp_pin_dev(&pf->hw)) {

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing the driver's
cleanup paths, I noticed a potential leak in the i40e_probe() error handling:

drivers/net/ethernet/intel/i40e/i40e_main.c:i40e_probe() {
...
err_vsis:
        set_bit(__I40E_DOWN, pf->state);
        i40e_ptp_stop(pf);
        i40e_clear_interrupt_scheme(pf);
        kfree(pf->vsi);
...
}

If initialization fails after VSIs are successfully created, this cleanup
path calls kfree(pf->vsi) which frees the pointer array, but does not appear
to unregister the netdev or free the actual VSI structs and hardware rings.

Could this leave an active, registered netdev with dangling pointers to the
subsequently freed PF, potentially triggering a use-after-free upon network
traffic or userspace access?

[Severity: High]
This is a pre-existing issue, but I noticed an ad-hoc locking pattern in
i40e_remove():

drivers/net/ethernet/intel/i40e/i40e_main.c:i40e_remove() {
...
        while (test_and_set_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
                usleep_range(1000, 2000);
...
}

This attempts to synchronize with the background reset path by spinning on
a bit flag, which acts as a sleepable lock without the standard fairness or
deadlock detection guarantees. 

Since this ad-hoc locking scheme fails to provide proper mutual exclusion
earlier in the function, could this be the direct cause of why i40e_ptp_stop()
executes unsynchronized from i40e_rebuild()? Should a proper mutex be used
here instead?
