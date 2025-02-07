Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CB6A2B922
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 03:37:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 537844139C;
	Fri,  7 Feb 2025 02:37:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8-14YQ796ohv; Fri,  7 Feb 2025 02:37:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 705C0412EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738895851;
	bh=Q6Gh0SSGRSsTRFo1I6jA3D/J2f8JGN3vZL80Zk32ppo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VSo9/YL7/c6Xlubf31kbifVYhS6UH4X4ZK7M9CgMzHqbNQOEuA2ETJ/qKWz6+jp9S
	 Jh6at9lYiDQjNiUeqeaS0SWMO4XTMuwg0G/aptAa8ZycZ/TPp7IQbovZwqxJQecbbA
	 SECaesvayHSgJ1iu7G9NIR0JiqRWP7Zu8PmvI5kB9k6tIa3H09Y+WOz3WUBL0IX41y
	 nvbkEqkqpViELxp0lfDVuStX7QZE32Sly3vw1KSQ+GdqbnVw7dhTwdYUXHtsESx+6A
	 l4TlzANSghXdOSqk+x1VKGSNroo2hieMC09/4JoZEqEiNOYpgmuOwsrSWwFjCM6GQl
	 vkeMhkW/zRPuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 705C0412EA;
	Fri,  7 Feb 2025 02:37:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2563FE4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 20B1D60846
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:37:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fcxun9-hpAC8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 02:37:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75AB860673
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75AB860673
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75AB860673
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 02:37:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8C2E95C227D;
 Fri,  7 Feb 2025 02:36:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BDF1C4CEDD;
 Fri,  7 Feb 2025 02:37:26 +0000 (UTC)
Date: Thu, 6 Feb 2025 18:37:25 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <20250206183725.7da19b5c@kernel.org>
In-Reply-To: <20250204220622.156061-3-ahmed.zaki@intel.com>
References: <20250204220622.156061-1-ahmed.zaki@intel.com>
 <20250204220622.156061-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738895847;
 bh=IpOs8bZ1l+1vPpWpZ68iIFwqWwg5GZcdljkc6X5jQUc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OD9fAU4rrXS6DO+oUKUbCR3VXB87MKi30VaUdgAg73bSkcQ0qS5DO6C1NdgTOdbQs
 p18r2gv6WDhuF9COK8dcOZyhE4wRl4wrqNwFdNeecQQSjC1AsZT/Te7REDRfklBKqZ
 yp7Wc4Tg++QLrkgMgunNApTE3esj0KmFeiQYNtPDN6T8R4UE+M3FqtI5b/yoNIHAGz
 SKB74SPsKdXgjoQOm1koOuUfGiNPLLIrWDQ7OHN5DhVbXw07HooaUvgSw2KWtDGFCR
 g3g1XklIr3yzEIn5Wrc/gURBV4T9knlCvuJUXDSVu1H7LBMXLIrdUFJVViEAUBYaaK
 Y0aFyoDrE2xWg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OD9fAU4r
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

On Tue,  4 Feb 2025 15:06:19 -0700 Ahmed Zaki wrote:
> + *	@irq_affinity_auto: driver wants the core to manage the IRQ affinity.

"manage" is probably too strong? "store" or "remember" ?
Your commit message explains it quite nicely.

> + *			    Set by netif_enable_irq_affinity(), then driver must
> + *			    create persistent napi by netif_napi_add_config()
> + *			    and finally bind napi to IRQ (netif_napi_set_irq).
> + *
>   *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
>   *	                   Set by calling netif_enable_cpu_rmap().
>   *
> @@ -2402,6 +2406,7 @@ struct net_device {
>  	struct lock_class_key	*qdisc_tx_busylock;
>  	bool			proto_down;
>  	bool			threaded;
> +	bool			irq_affinity_auto;
>  	bool			rx_cpu_rmap_auto;
>  
>  	/* priv_flags_slow, ungrouped to save space */
> @@ -2662,6 +2667,11 @@ static inline void netdev_set_ml_priv(struct net_device *dev,
>  	dev->ml_priv_type = type;
>  }
>  
> +static inline void netif_enable_irq_affinity(struct net_device *dev)

Similar here, "enable affinity" is a bit strong.

netif_remember_irq_affinity() would be more accurate IMHO

> +{
> +	dev->irq_affinity_auto = true;
> +}
