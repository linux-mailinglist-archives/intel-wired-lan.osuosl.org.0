Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3639A2B917
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 03:29:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8549842A12;
	Fri,  7 Feb 2025 02:29:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pjcUlvrlrLZf; Fri,  7 Feb 2025 02:29:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B442342A10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738895389;
	bh=SGMgheBZsEe6Ql7ZHoyd+rY2bR2uRtVJdIzjASsP5Ok=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NwbKVE8NuMexhUZGFJOCpZ2gAGV6NFUUWyxhEZqonTCx0+JTG5qiu6zM9EvU/uMSk
	 U1RT+BsznoUQS8djfPQIPeTCS1AXV8B8k20SHaGYFUnyAAjSAiy35p3q7xFcTmMtv/
	 4tl5TdUCXIjj3Of5lQCUxziLDzwVLZ3sj3K0oeipnlNN9wQqpPr0HJ3r9/Ax9cBpYd
	 FYD1otutEb/LURN6Z4iPXmwgJCN9PORC0FeWWTxrR4hI7Sz4oF0DbNj850lTrKNEG9
	 yPLaDcWxVCTuT5WgNEVr/vPAfAlvRU+P4RN0VuF/mcm4J2qqDALB5QNQuowKlB/8iz
	 rgguIinRMj18Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B442342A10;
	Fri,  7 Feb 2025 02:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 64870C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33F3F42A10
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EOWbT7rZSxLr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 02:29:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 43E14429E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43E14429E6
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43E14429E6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:29:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DC045A44075;
 Fri,  7 Feb 2025 02:27:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFB0FC4CEDD;
 Fri,  7 Feb 2025 02:29:42 +0000 (UTC)
Date: Thu, 6 Feb 2025 18:29:41 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, David Arinzon <darinzon@amazon.com>
Message-ID: <20250206182941.12705a4d@kernel.org>
In-Reply-To: <20250204220622.156061-2-ahmed.zaki@intel.com>
References: <20250204220622.156061-1-ahmed.zaki@intel.com>
 <20250204220622.156061-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738895383;
 bh=+xr/KV12J8BWoyGbqrnreOFtNY+URYYHhJAD6BQ+ctM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qO/7Zo3kVyfZWSS9e3dF9d1tsP4rXA7qGmSm2rcUbAt7CVvV75fFYNpKR7lb6eSiC
 iSRxgpoJzJyA8LJpnlk17q44rv0d5dcvgZQfduM+J0M4LDS8N/vLQMck/g43Mrxqrd
 v1HudVDHrOQma0NPQuO7+pW1BDPBjbFF4s4PVlNpcOsVY6l0hEtH0AuZyCkPyzDZd4
 ZnPcRdOW8AHMjjRcPgVDW80rEpegyu2oKp8ksWqIy4gt7hYXu9FfRtEgs0Q9M0sUoE
 K5KOLmHHKkGYAw5fya+FzVHnbm97FSFBzHPm3bGCHZ/KldA7ngoC+TsN6pOY8RTWp0
 OIjreY6zTeelA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qO/7Zo3k
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/5] net: move ARFS rmap
 management to core
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

On Tue,  4 Feb 2025 15:06:18 -0700 Ahmed Zaki wrote:
> +void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
> +{
> +	int rc;
> +
> +	/* Remove existing rmap entries */
> +	if (napi->dev->rx_cpu_rmap_auto &&
> +	    napi->irq != irq && napi->irq > 0)

this condition gets a bit hairy by the end of the series.
could you add a napi state bit that indicates that a notifier is
installed? Then here:

	if (napi->irq == irq)
		return;

	if (test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state))
		irq_set_affinity_notifier(napi->irq, NULL);
	if (irq < 0)
		return;

And you can similarly simplify napi_disable_locked().

Speaking of which, why do the auto-removal in napi_disable()
rather than netif_napi_del() ? We don't reinstall on napi_enable()
and doing a disable() + enable() is fairly common during driver
reconfig.

> +		irq_set_affinity_notifier(napi->irq, NULL);
> +
> +	napi->irq = irq;
> +	if (irq > 0) {
> +		rc = napi_irq_cpu_rmap_add(napi, irq);
> +		if (rc)
> +			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",

nit: not sure I'd grasp this message as a user, maybe:

	"Unable to install aRFS CPU to Rx queue mapping"

? Not great either, I guess.
