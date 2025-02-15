Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FB9A37005
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 18:53:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E116460662;
	Sat, 15 Feb 2025 17:53:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FYfIEi4B9-8E; Sat, 15 Feb 2025 17:53:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 004506066B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739641994;
	bh=v5Lgcg2rnx3TmFyRyfQ8U3Qru510wAFdMLD6N1aaLJM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2NLbKS6tketxK8r+KHU+ZEAU9KrHEIe1xXyO2nX1JNC/e3KcLOaPMpqa6OZNI+rGI
	 UJXW1IKUNnV5yQihwfZcpkQnoXFmw1x81VqmNlLs2jKDYXDRi7TIjQuNMicUaTDQhh
	 75RF6dy8D+2/x79HJJ8FJGxdbQu+RBQbn3wAShK5Urf1r+t/XFQJPP+JCzEtB8SCZU
	 2qda4r3UKj7vAGIpbRA3oQGrHx4uacvNy1pAtN4xJQC4rCHJSef1Wn9l1llXOvxjs+
	 ojXvlA/ObxwWGEIZSjcKXsQSzqGDpfSG7ZDloD9F5eE+M03Sl1GvAopyAZOxLohYQA
	 UnTPHKajcthHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 004506066B;
	Sat, 15 Feb 2025 17:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B811DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B704401FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:53:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kTRti4a4VAMl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 17:53:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0C5BB4016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C5BB4016B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C5BB4016B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:53:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 76E315C47AD;
 Sat, 15 Feb 2025 17:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5793C4CEDF;
 Sat, 15 Feb 2025 17:53:08 +0000 (UTC)
Date: Sat, 15 Feb 2025 09:53:07 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, pavan.chebbi@broadcom.com, David
 Arinzon <darinzon@amazon.com>
Message-ID: <20250215095307.44063132@kernel.org>
In-Reply-To: <20250211210657.428439-3-ahmed.zaki@intel.com>
References: <20250211210657.428439-1-ahmed.zaki@intel.com>
 <20250211210657.428439-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739641989;
 bh=/VwOi7JHYXww23VMcFdE0eR8CHmnyINnz/AcYnfDQP8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m0R+CpUNiW1n1doiqpC0WL/3wWIQU+Jy28drehP+9AV+gQ4w11okvdfjpd/UpRxxH
 XHF5l5tZ0ztcUe/AF57mMG1tXf/ky5pYiG8HWlpV5rP6YN68ex53IVgO8Db/GiT+42
 mefae3H/1evbY3XJU7dZZTHL8A6SFBhnOhD8ZBC09n6cI5jCpEsNJH9AdK969ZVcdP
 1LruU1viBH+5zAhVYtcWTXUZv3O6e9PWF+C7lyvyufHQFSsWUx5ahB1IuxrArmuE5k
 MK3NgBvR4zNqZ8ZuVGzCSRj1CHBLG/Zmv01sl+xO8Cz+/geFE+S0hWUiLavv8SDa5r
 rEhmO3N30CDtA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=m0R+CpUN
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 2/6] net: move ARFS rmap
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

On Tue, 11 Feb 2025 14:06:53 -0700 Ahmed Zaki wrote:
> +static void netif_napi_affinity_release(struct kref *ref)
> +{
> +	struct napi_struct *napi =
> +		container_of(ref, struct napi_struct, notify.kref);
> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> +

We should only get here from our own cleanup path, otherwise locking
and state sync may be a concern:

	netdev_assert_locked(dev);
	WARN_ON(test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER,
				   &napi->state));

> +	rmap->obj[napi->napi_rmap_idx] = NULL;
> +	napi->napi_rmap_idx = -1;
> +	cpu_rmap_put(rmap);
> +}
> +
> +static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
> +{
> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
> +	int rc;
> +
> +	napi->notify.notify = netif_irq_cpu_rmap_notify;
> +	napi->notify.release = netif_napi_affinity_release;
> +	cpu_rmap_get(rmap);
> +	rc = cpu_rmap_add(rmap, napi);
> +	if (rc < 0)
> +		goto err_add;
> +
> +	napi->napi_rmap_idx = rc;
> +	rc = irq_set_affinity_notifier(irq, &napi->notify);
> +	if (rc)
> +		goto err_set;
> +
> +	set_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state);
> +	return 0;

some of this function is common with the code in 
netif_napi_set_irq_locked()
under 
	} else if (napi->dev->irq_affinity_auto) {

could you refactor this to avoid the duplication 
and make it clearer which parts differ?

> +err_set:
> +	rmap->obj[napi->napi_rmap_idx] = NULL;
> +	napi->napi_rmap_idx = -1;
> +err_add:
> +	cpu_rmap_put(rmap);
> +	return rc;
> +}
> +
> +int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
> +{
> +	if (dev->rx_cpu_rmap_auto)
> +		return 0;
> +
> +	dev->rx_cpu_rmap = alloc_irq_cpu_rmap(num_irqs);
> +	if (!dev->rx_cpu_rmap)
> +		return -ENOMEM;
> +
> +	dev->rx_cpu_rmap_auto = true;
> +	return 0;
> +}
> +EXPORT_SYMBOL(netif_enable_cpu_rmap);
> +
> +static void netif_del_cpu_rmap(struct net_device *dev)
> +{
> +	struct cpu_rmap *rmap = dev->rx_cpu_rmap;
> +
> +	if (!dev->rx_cpu_rmap_auto)
> +		return;
> +
> +	/* Free the rmap */
> +	cpu_rmap_put(rmap);
> +	dev->rx_cpu_rmap = NULL;
> +	dev->rx_cpu_rmap_auto = false;
> +}
> +
> +#else
> +static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
> +{
> +	return 0;
> +}
> +
> +int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
> +{
> +	return 0;
> +}
> +EXPORT_SYMBOL(netif_enable_cpu_rmap);
> +
> +static void netif_del_cpu_rmap(struct net_device *dev)
> +{
> +}
> +#endif
> +
> +void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
> +{
> +	int rc;

maybe netdev_assert_locked_or_invisible(napi->dev); ?

> +	if (napi->irq == irq)
> +		return;
> +
> +	/* Remove existing rmap entries */
> +	if (test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state))
> +		irq_set_affinity_notifier(napi->irq, NULL);
> +
> +	napi->irq = irq;
> +	if (irq < 0)
> +		return;
> +
> +	rc = napi_irq_cpu_rmap_add(napi, irq);
> +	if (rc)
> +		netdev_warn(napi->dev, "Unable to update aRFS map (%d)\n", rc);
> +}
> +EXPORT_SYMBOL(netif_napi_set_irq_locked);
> +
>  static void napi_restore_config(struct napi_struct *n)
>  {
>  	n->defer_hard_irqs = n->config->defer_hard_irqs;
