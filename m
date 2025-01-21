Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D2EA1755C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jan 2025 02:03:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ED9C846DF;
	Tue, 21 Jan 2025 01:03:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zoU_ljkGLW-2; Tue, 21 Jan 2025 01:03:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9ADF846E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737421398;
	bh=FG8PzPqnjDonpgNAgL6Eju9h+4lINhGl8KU3daBZR30=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VTJxEj1lYES+f08FjStWrErETn2OU0EL1rC7XaJ4DD50L5/qIKKOs7rh59sbkM8bQ
	 rdztCPUG//wLwJje+G7EUs4Emz7s5McJn+208A5a8M+lke+LFPiJg1uXWSMRCICHbq
	 g0IYwzdWbLxruYkGRhz8bRIWsRXS7wZ29F1Y/BsDgAUXd9WQYEKLwGoCVR/uC0jtch
	 XyGGhlJjMmxE0kKxQ8dsOcSkjy+WstJmdvheUxaO3fHwye4nt8PNQ5hzp6XRv+dCpi
	 Rj9wMu/wD8U87xq+FUa+GDRYACUmc2N3c2H0ZtR2uy6u493ml071trlaA38lKf2MPb
	 gLGUXFLYyN9SA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9ADF846E2;
	Tue, 21 Jan 2025 01:03:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E7678959
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 01:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D1C7841372
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 01:03:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zF-XHls-Ma53 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jan 2025 01:03:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0BC3F4053E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BC3F4053E
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0BC3F4053E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 01:03:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1FD1FA407F6;
 Tue, 21 Jan 2025 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D804C4CEDD;
 Tue, 21 Jan 2025 01:03:13 +0000 (UTC)
Date: Mon, 20 Jan 2025 17:03:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <20250120170312.1af6b7e7@kernel.org>
In-Reply-To: <20250118003335.155379-3-ahmed.zaki@intel.com>
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
 <20250118003335.155379-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737421394;
 bh=HIln73N/dQ2ILuF1idi0OzbqxA6tjCry3FqLwVF1xw4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DEMcPYGwE428CyHvjSlw0gUAw63W4xUihW2zm4MousoVWF8udWFwonIm5fGlWfkks
 Vqf7X7drFUToeF79ZW8SJZcyVE6wKqRVUop/wdmckXbiPjMiTu0/oCkO+EUExrzUG4
 6/Huh5gqyqniTPUSSeWJ3zfliQ8gnjq2wNT8VHcrfbFa2C94iq4SQRegZSw9L6oE9A
 S8DKYtTe5WnZP1hEaq2iQQOgG9Sh/pjKGP8Q6po04VBVkU8AzraGl3wYQHxfxV8fUL
 yzHbEqd+2ZZXBJ0TTXz6kRlPTjneQfr/iSU1kVnBCI7TQPlFc82iBCcHJtU372AyyZ
 x4hD1Cg9Ulkng==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DEMcPYGw
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/5] net: napi: add CPU
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

On Fri, 17 Jan 2025 17:33:32 -0700 Ahmed Zaki wrote:
> A common task for most drivers is to remember the user-set CPU affinity
> to its IRQs. On each netdev reset, the driver should re-assign the
> user's settings to the IRQs.

> @@ -393,8 +394,8 @@ struct napi_struct {
>  	struct list_head	dev_list;
>  	struct hlist_node	napi_hash_node;
>  	int			irq;
> -#ifdef CONFIG_RFS_ACCEL
>  	struct irq_affinity_notify notify;
> +#ifdef CONFIG_RFS_ACCEL

Let's remove the #ifdef completely, one int won't make much difference,
it's ~1% of the whole struct..

> @@ -11585,7 +11606,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
>  {
>  	struct net_device *dev;
>  	size_t napi_config_sz;
> -	unsigned int maxqs;
> +	unsigned int maxqs, i, numa;

nit: reverse xmas tree

>  	BUG_ON(strlen(name) >= sizeof(dev->name));
>  
> @@ -11681,6 +11702,10 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
>  	dev->napi_config = kvzalloc(napi_config_sz, GFP_KERNEL_ACCOUNT);
>  	if (!dev->napi_config)
>  		goto free_all;

nit: empty line here

> +	numa = dev_to_node(&dev->dev);
> +	for (i = 0; i < maxqs; i++)
> +		cpumask_set_cpu(cpumask_local_spread(i, numa),
> +				&dev->napi_config[i].affinity_mask);
>  
>  	strscpy(dev->name, name);
>  	dev->name_assign_type = name_assign_type;

