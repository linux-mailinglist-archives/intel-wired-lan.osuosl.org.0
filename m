Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC92098BA10
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 12:50:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D49C812DB;
	Tue,  1 Oct 2024 10:50:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hIAXfqujEDtT; Tue,  1 Oct 2024 10:50:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8D1E812DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727779824;
	bh=/gkRZPS/8NJ5xBOveHciZQtbDe9tQPHhbLiS0/aIjBM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ia4cOatHe7sXQNSgouVXm9sH4vRuA79ww2voiPc7DEzjs2FOJefKPu7Bk7UA2odG+
	 5f1tQQqiFwcHJ+wLGJ8xugAQRsDPRvINTfVaXH7JGonUmSMRM++Zy0Ap3x02v5vQzK
	 0xO8ZiD3ADE7cmPJKVlvlHsfNTfk4VbsR8wtZUAvQNimKM2PL6FQOnl0a1T4JgOYAv
	 zVd1r0PdxD4/v4Dz5qWjhJKbyonmZ6VdS14OZ3KlX1ZwHGQ02xkkscHCN6+cG19eIH
	 DULS5GQ4msRF9Dsn9CfKlSGlNtR387p0dMHonXQXkH9sDs16272r+CZq65VH0VhBpI
	 HedMG+D9AxqaQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8D1E812DE;
	Tue,  1 Oct 2024 10:50:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF4971BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D27E405DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c8_usHXxoEbp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 10:50:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D18A940491
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D18A940491
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D18A940491
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 10:50:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4D72A5C4C10;
 Tue,  1 Oct 2024 10:50:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 286BDC4CEC6;
 Tue,  1 Oct 2024 10:50:18 +0000 (UTC)
Date: Tue, 1 Oct 2024 11:50:16 +0100
From: Simon Horman <horms@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20241001105016.GL1310185@kernel.org>
References: <20240930171232.1668-1-jdamato@fastly.com>
 <20240930171232.1668-2-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240930171232.1668-2-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727779820;
 bh=n82QbT4D+Hou7BZb3ZZDWSX7M2VQuk0TBBZcS/uSaL0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lZbf3QW25Y/i8G3VJXAJXcvM63CV6HkIF0awNCqYPrhbapeTA0fdROsjQOoCR/R6a
 k8EkRcs7wx9dV7uLbIA4UGtZX1+MlZbg26eCB7BsoQ83+Bu/TAuiNhkvqw+Z0O6jug
 YvYcacKVeaQ9qPKaeLyC1gFAvwyFKiB+RugYc2jD9XFDkVGQpdEftbst+k/ZoO+GEu
 pQrDaWea7bJeOgPYYRPwM6UGVneD2EF7VCkIBIZQnjvoxLIDmijNJ3pvP/HUPh3zOv
 7sWItD8FpsAc4X4nxIZAwharmRROOB4jd3bYGh3MyINYZJH1ZqzC3zPWjtDioaYRJU
 6I0hcJOcPo7SQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lZbf3QW2
Subject: Re: [Intel-wired-lan] [net-next v3 1/2] e1000e: Link NAPI instances
 to queues and IRQs
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 30, 2024 at 05:12:31PM +0000, Joe Damato wrote:
> Add support for netdev-genl, allowing users to query IRQ, NAPI, and queue
> information.
> 
> After this patch is applied, note the IRQs assigned to my NIC:
> 
> $ cat /proc/interrupts | grep ens | cut -f1 --delimiter=':'
>  50
>  51
>  52
> 
> While e1000e allocates 3 IRQs (RX, TX, and other), it looks like e1000e
> only has a single NAPI, so I've associated the NAPI with the RX IRQ (50
> on my system, seen above).
> 
> Note the output from the cli:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                        --dump napi-get --json='{"ifindex": 2}'
> [{'id': 145, 'ifindex': 2, 'irq': 50}]
> 
> This device supports only 1 rx and 1 tx queue. so querying that:
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                        --dump queue-get --json='{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 145, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 145, 'type': 'tx'}]
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>

Reviewed-by: Simon Horman <horms@kernel.org>

