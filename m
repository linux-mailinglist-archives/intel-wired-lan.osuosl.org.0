Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7DC83C156
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 12:53:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D86B405D7;
	Thu, 25 Jan 2024 11:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D86B405D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706183613;
	bh=yZieuJ5Tk20zO1kZN+QaX8JNlnXKZYsB+7yzAz3rpp8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vcH9yWo/wa0Enp9kWj6ofiGThw41ZzVlNFQSRYVuAUXjwgTYTwweBsaNXCZa8Ci/g
	 SlkQgmFotO8eXpP3ZKGl8FX1cSLHrohAMuTL9lZ6fdAbIseK344lSIPUBTH7kUVx+o
	 DjFUy+XM4Qxo7kZ5E46Yy90cFBvjLOd1vma9fYdCdKeaPIZltNO8PwpyE0WtPXp9Cl
	 NB1haG3ctcO73MXRHA4kfMHXu9YmN8UkTesIfnlnzsOdpF76HT8QaKp1h4zaZ8J0If
	 dsVC0OnPkvdXhVfdsxXqnr72OzJrKuXxmdWDlwIDPtb7l30LKhLGo5YP9jFqf/wIfS
	 d8L+vkkZ45L5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XWmeW1-gsQMe; Thu, 25 Jan 2024 11:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD69D405CF;
	Thu, 25 Jan 2024 11:53:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD69D405CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD7451BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:53:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A51C060AC4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:53:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A51C060AC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DuZBO5ub1yqH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 11:53:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D187260AC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:53:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D187260AC1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8F0E5611C6;
 Thu, 25 Jan 2024 11:53:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 813B1C433F1;
 Thu, 25 Jan 2024 11:53:21 +0000 (UTC)
Date: Thu, 25 Jan 2024 11:53:18 +0000
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20240125115318.GI217708@kernel.org>
References: <20240124082408.49138-1-kurt@linutronix.de>
 <20240124210855.GC217708@kernel.org>
 <87h6j1ev5j.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h6j1ev5j.fsf@kurt.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706183604;
 bh=h9mu/SRtva+3sHA+94qVBfMLNZBqZZ5vSWU3hU8vWQA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WC1vINH1bPG/0VkODv4Qx6BCl4vyaABchLnpyZoPEfAbbadwzZCeJv0R9wJlzfxrr
 G7AS20fAqh7l2RO6KjehNwNuyRNo4mlxwZcl8/UigMlT9lIG+pxbW3KxUmNJaF2TR6
 p/5l67kTbt/0YzvBNxXTiiY8NODH7R47y5kdjjeI812pOY1+I+GDfOvoufDKslxCsQ
 r9E44R2b++GzsOnL3AONqoO9sufnobiqxbJw+Zu3E8Y/oNMkM3d1uGAKp9elGLRzGB
 Br9UbStPiKPfLKFiX61xPEqqlXdgGC4uC+9HF7f6TjIWaEXiaGDTgP9oSwyetKXKpw
 4IXvXi2N+eIsw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WC1vINH1
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
Cc: Andrew Lunn <andrew@lunn.ch>, Dan Carpenter <carpenter@linaro.org>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Dan Carpenter <carpenter@linaro.org>

On Thu, Jan 25, 2024 at 08:20:40AM +0100, Kurt Kanzenbach wrote:
> On Wed Jan 24 2024, Simon Horman wrote:
> > On Wed, Jan 24, 2024 at 09:24:08AM +0100, Kurt Kanzenbach wrote:
> >
> > ...
> >
> >> +static int igc_led_hw_control_set(struct led_classdev *led_cdev,
> >> +				  unsigned long flags)
> >> +{
> >> +	struct igc_led_classdev *ldev = lcdev_to_igc_ldev(led_cdev);
> >> +	struct igc_adapter *adapter = netdev_priv(ldev->netdev);
> >> +	bool blink = false;
> >> +	u32 mode;
> >> +
> >> +	if (flags & BIT(TRIGGER_NETDEV_LINK_10))
> >> +		mode = IGC_LEDCTL_MODE_LINK_10;
> >> +	if (flags & BIT(TRIGGER_NETDEV_LINK_100))
> >> +		mode = IGC_LEDCTL_MODE_LINK_100;
> >> +	if (flags & BIT(TRIGGER_NETDEV_LINK_1000))
> >> +		mode = IGC_LEDCTL_MODE_LINK_1000;
> >> +	if (flags & BIT(TRIGGER_NETDEV_LINK_2500))
> >> +		mode = IGC_LEDCTL_MODE_LINK_2500;
> >> +	if ((flags & BIT(TRIGGER_NETDEV_TX)) ||
> >> +	    (flags & BIT(TRIGGER_NETDEV_RX)))
> >> +		mode = IGC_LEDCTL_MODE_ACTIVITY;
> >
> > Hi Kurt,
> >
> > I guess this can't happen in practice,
> > but if none of the conditions above are met,
> > then mode is used uninitialised below.
> 
> Yes, it shouldn't happen, because the supported modes are
> checked. However, mode can be initialized to off to avoid the warning.

Thanks.

> > Flagged by Smatch.
> 
> Out of curiosity how did you get the warning? I usually run `make W=1 C=1
> M=...` before sending patches.

Probably there is a better way, but I run Smatch like this:

 .../smatch/smatch_scripts/kchecker a.c

Smatch can be found here:

  https://github.com/error27/smatch



