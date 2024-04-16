Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 544EC8A6CD3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 15:51:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 618B281E59;
	Tue, 16 Apr 2024 13:51:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fUgBGgp9QjXC; Tue, 16 Apr 2024 13:51:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55C7881E75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713275508;
	bh=rN6bZ8uAxzpnZ4WPddNCXKe3jyD5MtvynTLudhE3GO8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FPBLOX4oVfn5sHjISfL9DaVLhIO+5cRWGpnxn016HGtm/X5q7Ji2EV12/veay+1ak
	 c9JjY+LAgdKUpHGp21C/uzRGHp0kKm/hO7mexMYQ8vtAcRf19kMN9c2PQHjVyohC6e
	 /seenqnV2WUXdVCI/wu/D2xS4z9vz1Sa3inUob4TglDhMPlm3qWvMEDjAzy1h3jkSb
	 49v/JL1xmcYhOBPRIR1fpBw7ilTZKAGoFO+2skorWVn+ml4vBQcHgUp9pCichAp0/5
	 7ZSipo76wUuXC9U5O2otnKsXJi0Piw90ye7K+DM21aU4HDsNO/eEwbbJ8gu9dx1AGj
	 Dk0BQ/Ui5PnWA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55C7881E75;
	Tue, 16 Apr 2024 13:51:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 817171BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E55981E6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qs5TXf_V2RrW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 13:51:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2CF2C81E59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CF2C81E59
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CF2C81E59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:51:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 7ADF8CE105F;
 Tue, 16 Apr 2024 13:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9FD2C113CE;
 Tue, 16 Apr 2024 13:51:31 +0000 (UTC)
Date: Tue, 16 Apr 2024 14:51:29 +0100
From: Simon Horman <horms@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Message-ID: <20240416135129.GM2320920@kernel.org>
References: <2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713275494;
 bh=yzjOk/XT1m/fqB5jnXhoNIDg6Ef7jDbuSx6EqGNgTWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W0cqfBILIohuyYCKz1tkeVq/k4ktRDgW5CURsD1BRriJqR+l7N2ohQpxBU9O4Y6B7
 2iYEAeMYyv4RkEcbPCZLsMFy/ZY4r8N26rigKuaGkv3iaw520Df8hujfgYrIAn/GQL
 /wJDwLxUsk2Yue7uP840qBTRg3axkji5mNfKj8CtHh3hsi5vs0Hwmn6+W+EBIBMQ5u
 S/hOYqwfr6RccLtSsZKLP2B/lLHBVSp4SpcbrnDzXhiHrHm32N4mKz+y1kS4T6XX59
 cLw2jcrVScJAAU+uiih5OCi97s5/2s4hWz6JH4f8LBkAMnCGxETtqgfNCEnnDjn9wV
 wpy0vicjMPcPA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W0cqfBIL
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix LED-related deadlock on
 driver unbind
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
 Roman Lozko <lozko.roma@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 15, 2024 at 03:48:48PM +0200, Lukas Wunner wrote:
> Roman reports a deadlock on unplug of a Thunderbolt docking station
> containing an Intel I225 Ethernet adapter.
> 
> The root cause is that led_classdev's for LEDs on the adapter are
> registered such that they're device-managed by the netdev.  That
> results in recursive acquisition of the rtnl_lock() mutex on unplug:
> 
> When the driver calls unregister_netdev(), it acquires rtnl_lock(),
> then frees the device-managed resources.  Upon unregistering the LEDs,
> netdev_trig_deactivate() invokes unregister_netdevice_notifier(),
> which tries to acquire rtnl_lock() again.
> 
> Avoid by using non-device-managed LED registration.
> 
> Stack trace for posterity:
> 
>   schedule+0x6e/0xf0
>   schedule_preempt_disabled+0x15/0x20
>   __mutex_lock+0x2a0/0x750
>   unregister_netdevice_notifier+0x40/0x150
>   netdev_trig_deactivate+0x1f/0x60 [ledtrig_netdev]
>   led_trigger_set+0x102/0x330
>   led_classdev_unregister+0x4b/0x110
>   release_nodes+0x3d/0xb0
>   devres_release_all+0x8b/0xc0
>   device_del+0x34f/0x3c0
>   unregister_netdevice_many_notify+0x80b/0xaf0
>   unregister_netdev+0x7c/0xd0
>   igc_remove+0xd8/0x1e0 [igc]
>   pci_device_remove+0x3f/0xb0
> 
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Reported-by: Roman Lozko <lozko.roma@gmail.com>
> Closes: https://lore.kernel.org/r/CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com/
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> Cc: Heiner Kallweit <hkallweit1@gmail.com>

I am aware that Kurt has submitted what appears to be the same patch [1,2],
which I'm inclined to put down to miscommunication (email based workflows
are like that sometimes).

FWIIW, it is my understanding is that the patch originated from
Lukas[3], and thus it seems most appropriate to take his submission.

As for the patch itself, I agree that it addresses the problem at hand.
For the record, I have not tested it.

Reviewed-by: Simon Horman <horms@kernel.org>

[1] [PATCH iwl-net] igc: Fix deadlock on module removal
    https://lore.kernel.org/netdev/20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de/
[2] [PATCH iwl-net v2] igc: Fix deadlock on module removal
    https://lore.kernel.org/netdev/20240411-igc_led_deadlock-v2-1-b758c0c88b2b@linutronix.de/
[3] Re: Deadlock in pciehp on dock disconnect
    https://lore.kernel.org/all/ZhBN9p1yOyciXkzw@wunner.de/

