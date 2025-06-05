Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AD8ACEC03
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jun 2025 10:34:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90E3060B48;
	Thu,  5 Jun 2025 08:34:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FJd1H0omLy1t; Thu,  5 Jun 2025 08:34:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B478B60B36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749112488;
	bh=9FXjDcvo6G7TnZT5UU9qXGv+z151xs2k209g6s730vE=;
	h=Date:To:References:Cc:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n0AoqNKEyyHn6lnP8ukeK/oSevUaEu2IUI9I0qcomwTk9m40RbNgb3iqJuUuCaQin
	 yO+q37hnai94wR5R4Z3eGgbE8Hm44SMann7DE/QcOBw9bfo9a6/w9rBTzpS1ak7KwJ
	 k7pdy6Po6tc7fKdTcwkrWPIopycvYdQ2DCcpFpIt3EftYPu8Z1ayATgpb8kZmzPTkg
	 sBetL9OULa56x8kBsSi172i6xP7AlcqiJ3bNCJ7/La44UsnqU5D1cz+YkgsIPLipuT
	 Tvqknpdm2k2lEnZzhoEyeq5ImZWRpUdfI1gY1gzfRGBtVVyjqnxOPnuU7gPYtWfR9p
	 imJqJLP8Nqtgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B478B60B36;
	Thu,  5 Jun 2025 08:34:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D34761A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jun 2025 08:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8E7F40C29
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jun 2025 08:34:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DGi0m3wPMpV2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jun 2025 08:34:45 +0000 (UTC)
X-Greylist: delayed 475 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 05 Jun 2025 08:34:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B65540B8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B65540B8B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B65540B8B
 for <intel-wired-lan@osuosl.org>; Thu,  5 Jun 2025 08:34:44 +0000 (UTC)
Received: from [172.18.249.96] (ip-185-104-138-50.ptr.icomera.net
 [185.104.138.50])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 23DDF61E6478F;
 Thu, 05 Jun 2025 10:26:33 +0200 (CEST)
Message-ID: <77a2ba00-174a-41f5-83ed-e3ffe86dff7f@molgen.mpg.de>
Date: Thu, 5 Jun 2025 10:26:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20250605070617.184882-1-vitaly.lifshits@intel.com>
Content-Language: en-US
Cc: intel-wired-lan@osuosl.org, ValdikSS <iam@valdikss.org>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250605070617.184882-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: disable L1.2
 PCI-E link substate to avoid performance issue
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

[Cc: +iam@valdikss.org]

Dear Vitaly,


Thank you for your patch.

Am 05.06.25 um 09:06 schrieb Vitaly Lifshits:
> I226 devices advertise support for the PCI-E link L1.2 substate. However,
> due to a hardware limitation, the exit latency from this low-power state
> is longer than the packet buffer can tolerate under high traffic
> conditions. This can lead to packet loss and degraded performance.

It’d be great if you could add details about the exit latency times.

Despite, you referencing some of the problem report in the Link: tag, 
that message is badly formatted, as lines are wrapped. As you have the 
details about the problem currently in your had, it’d be great if you 
added the report details too. Another advantage is, that the commit 
message would be self-contained, and people would get more idea about it 
without requiring Internet access or loading an HTML page.

> To mitigate this, disable the L1.2 substate during both probe and resume
> flows.

Were you able to reproduce the problem or only the reporter?

> Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Fixes: 43546211738e ("igc: Add new device ID's")
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 27575a1e1777..65ec705eac33 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7074,6 +7074,8 @@ static int igc_probe(struct pci_dev *pdev,
>   	const struct igc_info *ei = igc_info_tbl[ent->driver_data];
>   	int err;
>   
> +	pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
> +

Aren’t you disabling this unconditionally now? Also, a comment would be 
nice, why this is disabled.

>   	err = pci_enable_device_mem(pdev);
>   	if (err)
>   		return err;
> @@ -7498,6 +7500,8 @@ static int __igc_resume(struct device *dev, bool rpm)
>   	pci_enable_wake(pdev, PCI_D3hot, 0);
>   	pci_enable_wake(pdev, PCI_D3cold, 0);ValdikSS <iam@valdikss.org.
>   
> +	pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
> +
>   	if (igc_init_interrupt_scheme(adapter, true)) {
>   		netdev_err(netdev, "Unable to allocate memory for queues\n");
>   		return -ENOMEM;
> @@ -7623,6 +7627,7 @@ static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
>   		pci_enable_wake(pdev, PCI_D3hot, 0);
>   		pci_enable_wake(pdev, PCI_D3cold, 0);
>   
> +		pci_disable_link_state_locked(pdev, PCIE_LINK_STATE_L1_2);
>   		/* In case of PCI error, adapter loses its HW address
>   		 * so we should re-assign it here.
>   		 */


Kind regards,

Paul
