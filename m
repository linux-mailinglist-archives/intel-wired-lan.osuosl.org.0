Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B9083B399
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 22:09:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF83F40199;
	Wed, 24 Jan 2024 21:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF83F40199
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706130549;
	bh=tXia9XiqsM8kLitPz0hReQf3P4YJM2LFAmtRzg1DiyY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1dOsdiRHUOolEbGPWSk5z3Fhkf3+UW9m6+olbm0rVz/GBD4hAP/h01Pk7x3O0ALjF
	 4JtCFqhQGfRlUuUKrJnLyV3Nomm7UyiJgFkapgR+7EvYveZrzzp8BLUsyQkvmg6E87
	 4BVFV4QqVUrp0Rm5WANJ/0uU1aQXtLLEOWMyH/tC4u+Zx7HBvH0pIqtnh/cTpCx28w
	 71C6c11NePs36IHdL7tInURPeopUuTIEURQ8GGxxANBkOmRoVtDioMioZr+vn+79nb
	 nnIjQThdT0gsVWwCaJfQtD8Z46o7X2D4L6vHdYgH/RW+CcURoScanIDZ2QapI3CATo
	 nPePIVZf34Gqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oauVR92sARxo; Wed, 24 Jan 2024 21:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88BF8400B9;
	Wed, 24 Jan 2024 21:09:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88BF8400B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E2831BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5B6F81DFD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5B6F81DFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9b8k0aB92u4T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 21:09:02 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4373C81DF7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4373C81DF7
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6005A61E91;
 Wed, 24 Jan 2024 21:09:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90652C433C7;
 Wed, 24 Jan 2024 21:08:58 +0000 (UTC)
Date: Wed, 24 Jan 2024 21:08:55 +0000
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20240124210855.GC217708@kernel.org>
References: <20240124082408.49138-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240124082408.49138-1-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706130541;
 bh=OwqhiirMXNXI3ECk46Nz8ZChmmdmevlnfCw/AuOJ2Do=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o8UhNJRz0hfEcmfLtHLEYE4SKXgEMhIQDPe/he45noNkcGPAK8iEcOLvmb4O/mcw8
 uBp+Aop5NdoC0a6TTtMoLHUrp4v7t/61OfQoVL1kAVctzrua0FKMPt3MGEaQaugRHm
 V/qNjoIV7ujuYYMdHrEw35JIVmAhQEADBwVdDq7r+IA/qm7OR7w4Jd4librmz8m898
 9SKkkH8eq/6n0iUnfJlIgzGFrsiwRa+nnWl1P4oChya7GSdw7RtUad+6Clxk0yI7SB
 Id6bZvKu4JiTO/QAjHz2P8FqWzMtDaunJQpOTLxCxKkGvddlYFv1+t9zFzt/HJ21FD
 JON5+jjwyEJJg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=o8UhNJRz
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next] igc: Add support for LEDs
 on i225/i226
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 24, 2024 at 09:24:08AM +0100, Kurt Kanzenbach wrote:

...

> +static int igc_led_hw_control_set(struct led_classdev *led_cdev,
> +				  unsigned long flags)
> +{
> +	struct igc_led_classdev *ldev = lcdev_to_igc_ldev(led_cdev);
> +	struct igc_adapter *adapter = netdev_priv(ldev->netdev);
> +	bool blink = false;
> +	u32 mode;
> +
> +	if (flags & BIT(TRIGGER_NETDEV_LINK_10))
> +		mode = IGC_LEDCTL_MODE_LINK_10;
> +	if (flags & BIT(TRIGGER_NETDEV_LINK_100))
> +		mode = IGC_LEDCTL_MODE_LINK_100;
> +	if (flags & BIT(TRIGGER_NETDEV_LINK_1000))
> +		mode = IGC_LEDCTL_MODE_LINK_1000;
> +	if (flags & BIT(TRIGGER_NETDEV_LINK_2500))
> +		mode = IGC_LEDCTL_MODE_LINK_2500;
> +	if ((flags & BIT(TRIGGER_NETDEV_TX)) ||
> +	    (flags & BIT(TRIGGER_NETDEV_RX)))
> +		mode = IGC_LEDCTL_MODE_ACTIVITY;

Hi Kurt,

I guess this can't happen in practice,
but if none of the conditions above are met,
then mode is used uninitialised below.

Flagged by Smatch.

> +
> +	/* blink is recommended for activity */
> +	if (mode == IGC_LEDCTL_MODE_ACTIVITY)
> +		blink = true;
> +
> +	igc_led_set(adapter, ldev->index, mode, blink);
> +
> +	return 0;
> +}

...
