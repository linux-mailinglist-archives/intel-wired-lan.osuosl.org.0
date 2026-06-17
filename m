Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7uA7ClFlMmq5zQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 11:13:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE02697CD1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 11:13:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=CVy2bV7j;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=none
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92A326F848;
	Wed, 17 Jun 2026 09:13:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yPAxKY5NAFZd; Wed, 17 Jun 2026 09:13:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAF616F82E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781687628;
	bh=23puGXIypBlmUdx5Gozs+7CTziEYu3u7rfo0VnH+3bI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CVy2bV7jtAQfgyFMi//OYK3B3S1eAbo9JcusekRyeuWZyLSMGftOU10jCPuOjyYaT
	 iy7iNk0XbvAJ43p+l16BGPA9iS9CBPOrnIDZ9LyTUGrkcy1+2IdP07ieTKrEB3JK2x
	 sDgGQ8Wf5CjkP80aRra7ni3Iwa8JJ+ahAhasoEmnqQj9DHn5mfJdWKWg/UAQIwJQOb
	 SLfO4YyViif/VJfalEoRWweIoKfIJRd5G9LwoMCJgy6j73dq+jAdiY2TyGy87/i4LE
	 sdwRY9EVIMkPDHBkxyvtWiBXmE/HOtbPOxr/dygEGyZGNjsvfAJNFFb5C8AjK91KOT
	 QHuLi1JVnBwOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAF616F82E;
	Wed, 17 Jun 2026 09:13:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C316347
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 09:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DD5A4ED1C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 09:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cUndhHcCkDYJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 09:13:44 +0000 (UTC)
X-Greylist: delayed 600 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 17 Jun 2026 09:13:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4AD5540354
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AD5540354
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AD5540354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 09:13:43 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id CB1D64C2C37F03;
 Wed, 17 Jun 2026 11:03:26 +0200 (CEST)
Message-ID: <bd5ab9e3-ab93-43ad-a2ce-03d56e2d2ecf@molgen.mpg.de>
Date: Wed, 17 Jun 2026 11:03:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org
References: <20260617084329.199110-1-sergey.temerkhanov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260617084329.199110-1-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Implement PCI
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:bhelgaas@google.com,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,molgen.mpg.de:mid,molgen.mpg.de:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DCE02697CD1

[Cc: +Aleksandr (as in Reviewed-by:), +PCI subsystem]

Dear Sergey,


Thank you for your patch.

Am 17.06.26 um 10:43 schrieb Sergey Temerkhanov:
> Implement PCI device reset handler to allow the network device to
> get re-initialized and function after a PCI-level reset.

Please describe the problem in more detail. When does PCI-level reset 
occur, and what is the current problematic situation?

Also, what is ixgbe specific compared to a general PCIe implementation?

Please share details how to test it, and how you tested it.

> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 72 +++++++++++++++++++
>   2 files changed, 73 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 594ccb28da20..c4b0c5bb89c6 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -912,6 +912,7 @@ enum ixgbe_state_t {
>   	__IXGBE_PTP_TX_IN_PROGRESS,
>   	__IXGBE_RESET_REQUESTED,
>   	__IXGBE_PHY_INIT_COMPLETE,
> +	__IXGBE_PCIE_RESET_IN_PROGRESS,
>   };
>   
>   struct ixgbe_cb {
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 2ac274c73d61..a61ee5fff7be 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -12352,6 +12352,76 @@ static pci_ers_result_t ixgbe_io_slot_reset(struct pci_dev *pdev)
>   	return result;
>   }
>   
> +#define IXGBE_PCIE_RESET_RETRIES 1000

Why 1000? Isn’t there a generic PCIe macro? Please extend the commit 
message.

> +
> +/**
> + * ixgbe_reset_prep - called before the pci bus is reset.
> + * @pdev: Pointer to PCI device
> + *
> + * Prepare the card for a reset, preventing the service task from running.
> + */
> +static void ixgbe_reset_prep(struct pci_dev *pdev)
> +{
> +	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
> +	unsigned int timeout = IXGBE_PCIE_RESET_RETRIES;
> +
> +	if (!adapter)
> +		return;
> +
> +	/* Prevent the service task from being requeued in the timer callback
> +	 * while we're resetting.
> +	 */
> +	if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state)) {
> +		timer_delete_sync(&adapter->service_timer);
> +		/* Prevent the service task from running while we're resetting. */

One of the two comments seems redundant.

> +		cancel_work_sync(&adapter->service_task);
> +	}
> +
> +	pci_clear_master(pdev);
> +
> +	while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state) && --timeout)
> +		usleep_range(1000, 2000);
> +
> +	if (!timeout) {
> +		e_err(drv, "Timed out waiting for __IXGBE_RESETTING to be released. Reset is needed\n");
> +		pci_set_master(pdev);
> +		return;
> +	}
> +
> +	set_bit(__IXGBE_PCIE_RESET_IN_PROGRESS, &adapter->state);
> +	smp_mb__after_atomic();
> +}
> +
> +/**
> + * ixgbe_reset_done - called after the pci bus has been reset.
> + * @pdev: Pointer to PCI device
> + *
> + * Allow the service task to run and schedule re-initialization.
> + */
> +static void ixgbe_reset_done(struct pci_dev *pdev)
> +{
> +	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
> +
> +	smp_mb__before_atomic();
> +	if (!test_and_clear_bit(__IXGBE_PCIE_RESET_IN_PROGRESS, &adapter->state)) {
> +		e_err(drv, "Reset done called without PCIe reset in progress\n");

How can this happen? What should the user reading this error do?

> +		return;
> +	}
> +
> +	/* Allow the service task to run */
> +	if (!test_bit(__IXGBE_REMOVING, &adapter->state)) {
> +		clear_bit(__IXGBE_RESETTING, &adapter->state);
> +		smp_mb__after_atomic();
> +	}
> +
> +	/* Schedule re-initialization */
> +	if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
> +		set_bit(__IXGBE_RESET_REQUESTED, &adapter->state);
> +		if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state))
> +			mod_timer(&adapter->service_timer, jiffies + 1);
> +	}
> +}
> +
>   /**
>    * ixgbe_io_resume - called when traffic can start flowing again.
>    * @pdev: Pointer to PCI device
> @@ -12384,6 +12454,8 @@ static const struct pci_error_handlers ixgbe_err_handler = {
>   	.error_detected = ixgbe_io_error_detected,
>   	.slot_reset = ixgbe_io_slot_reset,
>   	.resume = ixgbe_io_resume,
> +	.reset_prepare = ixgbe_reset_prep,
> +	.reset_done = ixgbe_reset_done,
>   };
>   
>   static DEFINE_SIMPLE_DEV_PM_OPS(ixgbe_pm_ops, ixgbe_suspend, ixgbe_resume);

Kind regards,

Paul
