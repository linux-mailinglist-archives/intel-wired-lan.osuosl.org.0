Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bh/XJiBVNmo89gYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jun 2026 10:53:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D3D6A89FB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jun 2026 10:53:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=xREVyvS7;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DE6A86187;
	Sat, 20 Jun 2026 08:53:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qWcIj5wz68g3; Sat, 20 Jun 2026 08:53:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BD7B86184
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781945628;
	bh=u8+egrML541MWpVVt07sjq5yP5ImkoHuZ/0MZ8y1gg4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xREVyvS7Mi2iTAImqR1eg5x8nIlemp6UnkVR5Va5rm6DFaXWAAWduhQcWHmtXd/Y0
	 ILkpTkh5RaOrSmeAXfQ8QHvCn5S45Sv9DT1dyrtB0XdT2XMwKcK1yjxFeioLemzLO9
	 NVsUYJ5aJhYbVpokTxy25EBfRUIlhpbSl+3+jG0jaOWJEojA1g8VOv5DTvb2cQ4qgf
	 kIcB7UvoBF+ogWe6Jz2KII0p+KfqfTtWoFKsjgiknEjOoAY72LXseEeSsByBIjXit6
	 B9K0Z29WQTb5gFznQanrMDkduiltfh2kpPzlfnyD79dw/llFQVKCYyWp+RD6QczrKE
	 mh8pheIeWVFyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BD7B86184;
	Sat, 20 Jun 2026 08:53:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 38CCF367
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jun 2026 08:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1EFE06FAAA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jun 2026 08:53:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g-ddOZczePUs for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jun 2026 08:53:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3564D6FA9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3564D6FA9E
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3564D6FA9E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jun 2026 08:53:45 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 5931343A5D;
 Sat, 20 Jun 2026 08:53:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 239751F000E9;
 Sat, 20 Jun 2026 08:53:43 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: sergey.temerkhanov@intel.com
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, pmenzel@molgen.mpg.de
Date: Sat, 20 Jun 2026 09:53:27 +0100
Message-ID: <20260620085327.965597-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260618142212.310475-1-sergey.temerkhanov@intel.com>
References: <20260618142212.310475-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1781945625;
 bh=u8+egrML541MWpVVt07sjq5yP5ImkoHuZ/0MZ8y1gg4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ZbMwWP+OaUZQPJMq0cU94POElOt381gzO7lVWcWpjfoKStmc75w+NTkz8MJ76jMIa
 L8EASZqerFldTUtqDkUQLke/ZaHg3KAHPDys2XuUB02AVf48l6jsNxTvgPNfwaCgJ6
 KpqzSkYG6Y9mbhRh7NLifqUVKT9dvDROm2AbUU9oIi5booQnBl/4TP6pYYjhu0cFMU
 mzoGcI+6SUPiDrevr/xZxtO4eyz69EK37qwX5ZaQPgwwkcmKmQZ4ThFrcdzLf4WICv
 3HT61xPbZUlzU3Ilx513/2CyRMyHbFUFPfb0YOHklKzObZ397WjaQPfzlL46JiLalV
 09x4CsWyEpANg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=ZbMwWP+O
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Implement PCI
 reset handler
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97D3D6A89FB

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ixgbe: Implement PCI reset handler

Implement PCI device reset handler to allow the network device to
get re-initialized and function after a PCI-level reset.

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
[ ... ]
> @@ -12338,6 +12338,86 @@ static pci_ers_result_t ixgbe_io_slot_reset(struct pci_dev *pdev)
> +static void ixgbe_reset_prep(struct pci_dev *pdev)
> +{
> +	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
> +
> +	if (!adapter)
> +		return;
> +
> +	if (poll_timeout_us(test_and_set_bit(__IXGBE_RESETTING, &adapter->state),
> +			    test_bit(__IXGBE_RESETTING, &adapter->state),

[Severity: Medium]
Does this introduce a new instance of an ad-hoc bit lock?

According to the networking drivers guidelines, using bit operations like
test_and_set_bit() to guard critical sections instead of proper
synchronization primitives like a mutex or spinlock can hide issues from
lockdep and lacks deadlock detection.

[Severity: Critical]
Does this misuse the poll_timeout_us() macro?

The macro executes the operation before evaluating the condition. Since
test_and_set_bit() unconditionally sets the bit to 1, test_bit() will always
evaluate to true on the very first loop iteration, regardless of whether the
lock was already held.

Doesn't this completely break mutual exclusion?

> +			    IXGBE_RESET_PREP_POLL_INTERVAL_US,
> +			    IXGBE_RESET_PREP_TIMEOUT_US, false)) {
> +		/* ixgbe_reset_done() will exit early if this happens.
> +		 * A retry will be needed
> +		 */
> +		e_err(drv, "Timed out waiting for __IXGBE_RESETTING to be released. Reset is needed\n");
> +		return;

[Severity: High]
If this times out and returns early, won't it abandon the software
reinitialization process while the PCI subsystem proceeds with the physical
reset?

The .reset_prepare callback returns void, so the reset continues. By
returning early without setting __IXGBE_PCIE_RESET_IN_PROGRESS, critical
teardowns are skipped, and ixgbe_reset_done() will also bail out early:

ixgbe_reset_done() {
    if (!test_and_clear_bit(__IXGBE_PCIE_RESET_IN_PROGRESS, &adapter->state)) {
        e_err(drv, "Reset done called without PCIe reset in progress\n");
        return;
    }
}

Could this permanently break the network interface until the module is
reloaded?

> +	}
> +
> +	/* Sync __IXGBE_RESETTING */
> +	smp_mb__after_atomic();
> +
> +	if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state)) {
> +		/* Prevent the service task from being requeued in the timer callback */
> +		timer_delete_sync(&adapter->service_timer);
> +		/* Cancel any possibly queued service task */
> +		cancel_work_sync(&adapter->service_task);

[Severity: Critical]
Can this sequence cause a deadlock with the service task?

Here in ixgbe_reset_prep(), __IXGBE_RESETTING has just been acquired,
and then cancel_work_sync(&adapter->service_task) blocks waiting for
the service task to complete.

However, if the active service task reaches ixgbe_reinit_locked():

ixgbe_reinit_locked() {
    while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state))
        usleep_range(1000, 2000);
    ...
}

The service task will spin infinitely waiting for __IXGBE_RESETTING to be
cleared. Since ixgbe_reset_prep() holds the bit lock and is blocked waiting
for the service task, neither thread can make progress.

> +	}
> +
> +	pci_clear_master(pdev);
> +
> +	set_bit(__IXGBE_PCIE_RESET_IN_PROGRESS, &adapter->state);
> +}
[ ... ]
> +static void ixgbe_reset_done(struct pci_dev *pdev)
> +{
> +	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
[ ... ]
> +	/* Allow the service task to run */
> +	if (!test_bit(__IXGBE_REMOVING, &adapter->state)) {
> +		clear_bit(__IXGBE_RESETTING, &adapter->state);
> +		/* Sync __IXGBE_RESETTING */
> +		smp_mb__after_atomic();

[Severity: Medium]
Does this provide the correct release semantics for the ad-hoc lock?

The clear_bit() operation does not imply a memory barrier, and
smp_mb__after_atomic() only orders memory operations that occur after the
atomic operation.

Could memory accesses from within the critical section (like the
pci_set_master() call earlier) bleed past the lock release, allowing other
threads to acquire the lock too early?

Is it possible to use clear_bit_unlock() or place an smp_mb__before_atomic()
prior to the clear_bit() instead?

> +	}
[ ... ]
