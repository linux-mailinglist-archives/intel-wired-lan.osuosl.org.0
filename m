Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C91A8A4180
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Apr 2024 11:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA36A4019D;
	Sun, 14 Apr 2024 09:17:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ujH93sO4wCvP; Sun, 14 Apr 2024 09:17:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B330C401C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713086277;
	bh=NHPcUl8fxDC7LyYEBHeTLjtRtQDpl2KyGHtQ3K8DsBE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P//nGjCba5GcxhJ6D2KqZ1/yN30qGoVJdCXZuhzNbS8771yFoZQZ9q9xieYMxO6Bw
	 3d6+NKPspFzaVrkUsy1ypoBbsKimpAkjcCk+r+JHly9kPD2G+KacYxTJ3yZjuj9k14
	 kLU93MZtMNmbgCp2J+AEG5aDflCGvnXeCHTJ+Ncvl+yNfnP5BsRCKvZM4Gy9kA2NOo
	 BfjaemrLcShUhOY6teRtXrrwSkgw4jPd1+SdabDyLmA6hCOtCHzEdiybwv36/4iacU
	 s4YCL/HVGE9JYSQ2Bf1T7S+05b3mFi5hf2DQOi6ZC6ij41N88bYrLveIh4Thm7UVbl
	 4VIfzZbPAdXfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B330C401C9;
	Sun, 14 Apr 2024 09:17:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B44051BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 09:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E05F81E89
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 09:17:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9KVYO0RX7whw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Apr 2024 09:17:54 +0000 (UTC)
X-Greylist: delayed 599 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 14 Apr 2024 09:17:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C438481E2E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C438481E2E
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=2a01:37:1000::53df:5f64:0; helo=bmailout1.hostsharing.net;
 envelope-from=foo00@h08.hostsharing.net; receiver=<UNKNOWN> 
Received: from bmailout1.hostsharing.net (bmailout1.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f64:0])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C438481E2E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 09:17:53 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout1.hostsharing.net (Postfix) with ESMTPS id B0CB43001F874;
 Sun, 14 Apr 2024 11:02:06 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 8F6CBEE4D; Sun, 14 Apr 2024 11:02:06 +0200 (CEST)
Date: Sun, 14 Apr 2024 11:02:06 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Kurt Kanzenbach <kurt@linutronix.de>,
	Roman Lozko <lozko.roma@gmail.com>
Message-ID: <Zhubjkscu9HPgUcA@wunner.de>
References: <20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de>
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix deadlock on module
 removal
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 intel-wired-lan@lists.osuosl.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[cc += Roman Lozko who originally reported the issue]

On Sun, Apr 14, 2024 at 09:44:10AM +0200, Kurt Kanzenbach wrote:
> unregister_netdev() acquires the RNTL lock and releases the LEDs bound
> to that netdevice. However, netdev_trig_deactivate() and later
> unregister_netdevice_notifier() try to acquire the RTNL lock again.
> 
> Avoid this situation by not using the device-managed LED class
> functions.
> 
> Suggested-by: Lukas Wunner <lukas@wunner.de>
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

This patch is almost a 1:1 copy of the patch I submitted on April 5:

https://lore.kernel.org/all/ZhBN9p1yOyciXkzw@wunner.de/

I think it is mandatory that you include a Signed-off-by with my name
in that case.  Arguably the commit author ("From:") should also be me.

Moreover this is missing a Reported-by tag with Roman Lozko's name.

AFAICS the only changes that you made are:
- rename igc_led_teardown() to igc_led_free()
- rename ret to err
- replace devm_kcalloc() with kcalloc()
  (and you introduced a memory leak while doing so, see below)

Honestly I don't see how those small changes justify omitting a
Signed-off-by or assuming authorship.

I would have been happy to submit a patch myself, I was waiting
for a Tested-by from Roman or you.


> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -164,6 +164,8 @@ struct igc_ring {
>  	struct xsk_buff_pool *xsk_pool;
>  } ____cacheline_internodealigned_in_smp;
>  
> +struct igc_led_classdev;

Unnecessary forward declaration, this compiled fine for me without it.


>  int igc_led_setup(struct igc_adapter *adapter)
>  {
>  	struct net_device *netdev = adapter->netdev;
> -	struct device *dev = &netdev->dev;
>  	struct igc_led_classdev *leds;
> -	int i;
> +	int i, err;
>  
>  	mutex_init(&adapter->led_mutex);
>  
> -	leds = devm_kcalloc(dev, IGC_NUM_LEDS, sizeof(*leds), GFP_KERNEL);
> +	leds = kcalloc(IGC_NUM_LEDS, sizeof(*leds), GFP_KERNEL);
>  	if (!leds)
>  		return -ENOMEM;
>  
> -	for (i = 0; i < IGC_NUM_LEDS; i++)
> -		igc_setup_ldev(leds + i, netdev, i);
> +	for (i = 0; i < IGC_NUM_LEDS; i++) {
> +		err = igc_setup_ldev(leds + i, netdev, i);
> +		if (err)
> +			goto err;
> +	}
> +
> +	adapter->leds = leds;
>  
>  	return 0;
> +
> +err:
> +	for (i--; i >= 0; i--)
> +		led_classdev_unregister(&((leds + i)->led));
> +
> +	return err;
> +}

"leds" allocation is leaked in the error path.

This memory leak was not present in my original patch.  Not good!

Thanks,

Lukas
