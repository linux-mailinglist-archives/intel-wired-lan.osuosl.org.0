Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A275A37007
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 18:58:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 012DE60B20;
	Sat, 15 Feb 2025 17:58:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mOH_0Osd0bvr; Sat, 15 Feb 2025 17:58:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57C6F608F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739642319;
	bh=KYdkkh/9SXs1CsOP9oNqZPcqy5Wi9i0YrY5bXFD2+LU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ILll7iORpi+ox0K4ApctVGQXZRrh4Xa1hK+UBe7LNCKwSzxY9kjv3rvXp6Iveb3xx
	 wlGx74tYDJb+PyWkRt1E//z67vtr0G32LAEjnY2t8WFhDNViB4O/MehmjQ5qchO5gg
	 G4X88BB7qeFsZtT0rEG8D+dXlzieRv+zUtcgk3PtjNU7CjuJzPLIa3Wfn2QNJwgipy
	 vRN5y1MkUfjdJQB+7LSslSuoavqKDM6KU8BMWs6QoajXnCx7TxdHG/y6kEEYtkpFNc
	 p/Ugtmm/3pWAQHL3CPb6YTg4Y7TUscCQ9DUYB4AvaFhhTV0VO+Dkxxxun0YIEr5aro
	 dpXfa8zRprKXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57C6F608F0;
	Sat, 15 Feb 2025 17:58:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 30A75DE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11944831AC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rMsYiPwVRn-9 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 17:58:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 73E3280BC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73E3280BC4
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73E3280BC4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:58:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 02066A407CD;
 Sat, 15 Feb 2025 17:56:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21F73C4CEDF;
 Sat, 15 Feb 2025 17:58:35 +0000 (UTC)
Date: Sat, 15 Feb 2025 09:58:34 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com, pavan.chebbi@broadcom.com
Message-ID: <20250215095834.6cfc923f@kernel.org>
In-Reply-To: <20250211210657.428439-4-ahmed.zaki@intel.com>
References: <20250211210657.428439-1-ahmed.zaki@intel.com>
 <20250211210657.428439-4-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739642315;
 bh=MhdHAwfVerP/+KdwSgCSiIHb8HB1mk3tyt3VInWBKL4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FcU+8KPGSUOtq2thnW5VdOci5oOm9vfHnuH3lZ1f1d4MFMXCTaFAhzxO1vPR5fCZN
 J5U3sjysFMOpXZpRwocq0lCaisHVT7kt/fNHzYbD1dvoagp+F/WDQg3P3mswmJ7y6h
 kHbQr2JCDBDzC//JEG2RClR2V3HHRm4wSW5B1I+KrxveDZOwpWMe8DroNmFUzApCtS
 8uiQTQFK0HE0HU6f8UPEEFnS4Y1bQmm1/sV0Fo7QDMfN9h8eUWK8ADIdFOrc7tWL8R
 4rcMGWw9cpA83JjgwBMY5LYbwoBjLoxy086TaOQrConypxP6HA/jSEjdaHEdn4BZrw
 1lSfo/+f8xVeg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FcU+8KPG
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 3/6] net: napi: add CPU
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

On Tue, 11 Feb 2025 14:06:54 -0700 Ahmed Zaki wrote:
> @@ -11575,9 +11615,9 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
>  		void (*setup)(struct net_device *),
>  		unsigned int txqs, unsigned int rxqs)
>  {
> +	unsigned int maxqs, i, numa;
>  	struct net_device *dev;
>  	size_t napi_config_sz;
> -	unsigned int maxqs;
>  
>  	BUG_ON(strlen(name) >= sizeof(dev->name));
>  
> @@ -11679,6 +11719,11 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
>  	if (!dev->napi_config)
>  		goto free_all;
>  
> +	numa = dev_to_node(&dev->dev);

Does this work? dev->dev is the "software" device, IOW the netdev itself.
The HW dev is dev->dev.parent but it won't be set at this stage, we'd
need to move the init to register, or maybe netif_enable_cpu_rmap() /
netif_set_affinity_auto() ?

> +	for (i = 0; i < maxqs; i++)
> +		cpumask_set_cpu(cpumask_local_spread(i, numa),
> +				&dev->napi_config[i].affinity_mask);
