Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F88A2B91F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 03:34:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE6B04290D;
	Fri,  7 Feb 2025 02:33:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yIGtxT15A9C8; Fri,  7 Feb 2025 02:33:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6E8642918
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738895638;
	bh=VgwCxQUNcDT5oug4p7vGxpIxwv78fpBiTo2oabxf+mI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r0t2J7PaPl+S43zNjaJ8pu/EN87fOx8QmNbvcynfQNYdCGq5FrDka+yzPIHmduY+R
	 Dc9FP4GhzcqqCliWkS3bytw40f52sJS+/HoocMI1elxjgK3hKzkhRyhPgK7ASbGqLl
	 /TKQMTEYKrdto2tGtWwpYeGnJ5COZburp4rjSt2UiBEbxLjsY/PXubC7kLOhMIsqKV
	 xgzULm39nm1kxCd8KtQbzI46rnhWQxLjg+Uk2qQshOPXWyje3w0rOzYcV9S8QXOIKg
	 slIU7NADxIS1nATv7S0XsYrc4c84ZHDybF+/14cVrqXohV+OHhp0Ajc+qe5hcGuQV2
	 yKX7okV8PPr1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6E8642918;
	Fri,  7 Feb 2025 02:33:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 889BFE4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 774D342912
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:33:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1_Lx44oRehWD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 02:33:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AA5C54290F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA5C54290F
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA5C54290F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:33:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BC344A44440;
 Fri,  7 Feb 2025 02:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A292C4CEDD;
 Fri,  7 Feb 2025 02:33:53 +0000 (UTC)
Date: Thu, 6 Feb 2025 18:33:52 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <andrew+netdev@lunn.ch>,
 <edumazet@google.com>, <horms@kernel.org>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <shayd@nvidia.com>, <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>
Message-ID: <20250206183352.4cecc85e@kernel.org>
In-Reply-To: <8270a43c-61f8-446d-8701-4fbd13a72e32@intel.com>
References: <20250204220622.156061-1-ahmed.zaki@intel.com>
 <20250204220622.156061-3-ahmed.zaki@intel.com>
 <Z6KYDs0os_DizhMa@LQ3V64L9R2>
 <8270a43c-61f8-446d-8701-4fbd13a72e32@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738895634;
 bh=GdDbyGIzviXjTeSXk/FPXDQ2vguVeuJkFIC2V1e/OoQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pcwn6q13hRXYMLVPzLkpUE3XNdu5FK8aSZaVdBXIT3SlnQ3hEFO/9VHDf2myjE9RZ
 NmYaM32lmEPEMtDRzpHbnYDR5zaTNEkYR6XHJEq1hyWkkBAS4s32vF05Mwg8fcxA2Z
 etsT1WQzHfZA1fAAXpGGVr4/b9M+92Nqu9wx7jAh2M4/9187ovosBft3hEzg9TFk21
 iUe4gjPaJAid6Rn8P/9p6e67kLK1RMtKD0tLyFUxuvECO3PyO61FzY8A0jN1lBoA97
 v+o7KW8WwIH+vSIe/VYfHGx8flmtqQcnBwb3qXjkUMCmhbnp3w7dGQDCM6VrgrAtN1
 eyie2xQ1JAwuw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pcwn6q13
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/5] net: napi: add CPU
 affinity to napi_config
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

On Wed, 5 Feb 2025 08:20:20 -0700 Ahmed Zaki wrote:
> >> +	if (napi->dev->rx_cpu_rmap_auto) {
> >>   		rc = napi_irq_cpu_rmap_add(napi, irq);
> >>   		if (rc)
> >>   			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
> >>   				    rc);
> >> +	} else if (napi->config && napi->dev->irq_affinity_auto) {
> >> +		napi->notify.notify = netif_napi_irq_notify;
> >> +		napi->notify.release = netif_napi_affinity_release;
> >> +
> >> +		rc = irq_set_affinity_notifier(irq, &napi->notify);
> >> +		if (rc)
> >> +			netdev_warn(napi->dev, "Unable to set IRQ notifier (%d)\n",
> >> +				    rc);
> >>   	}  
> > 
> > Should there be a WARN_ON or WARN_ON_ONCE in here somewhere if the
> > driver calls netif_napi_set_irq_locked but did not link NAPI config
> > with a call to netif_napi_add_config?
> > 
> > It seems like in that case the driver is buggy and a warning might
> > be helpful.
> >   
> 
> I think that is a good idea, if there is a new version I can add this in 
> the second part of the if:
> 
> 
> if (WARN_ON_ONCE(!napi->config))
> 	return;

To be clear, this will make it illegal to set IRQ on a NAPI instance
before it's listed. Probably for the best if we also have auto-remove
in netif_napi_del().
