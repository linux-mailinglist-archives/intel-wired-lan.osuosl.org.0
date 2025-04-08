Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0FBA81192
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 18:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 708F860AEF;
	Tue,  8 Apr 2025 16:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BEGG9MiFfQfl; Tue,  8 Apr 2025 16:10:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C925460D91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744128640;
	bh=gc2itI022s8dW+s9KqI+5JfR2+E5wndR5hXO0nPhlBM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nJd9/OcMfhTY2lTsqdvvs12iB7xjiHDSeGsU8Tq6XhpZvJ+G+UZ78RE792vWH9Nhf
	 D+ZUALlCBdDaoEDr/llPhru9v52c5RvwrdzNaxGVBPBLLLoYOCX4hRvzPV0w0Bhott
	 34udfSmtePcZxqcc7w/bNqK7v3114RuzutCSYtWl7xDYjDRs8j25JV3s4TOgHuIc73
	 TyjCts23NszTl1uUoZqWdj6whPlM3qzbbBHbs9FHJV35MT7OWafHT/HbgmblQgLCUb
	 dHipHN6oUecK4ftYhD28ROzGL0OCFHLhtF30p8tyTtm8gcBd8zURyIQZ0wc1EUTLS4
	 2LrfbdPAGD5aA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C925460D91;
	Tue,  8 Apr 2025 16:10:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B203DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 16:10:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C9B781166
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 16:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oJXjlwq9FHlR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 16:10:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6E2058101A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E2058101A
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E2058101A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 16:10:37 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1u2BWx-008Q8q-Ow; Tue, 08 Apr 2025 18:10:31 +0200
Date: Tue, 8 Apr 2025 18:10:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Marek Pazdan <mpazdan@arista.com>
Cc: aleksander.lobakin@intel.com, almasrymina@google.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com,
 daniel.zahka@gmail.com, davem@davemloft.net, ecree.xilinx@gmail.com,
 edumazet@google.com, gal@nvidia.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, jianbol@nvidia.com,
 kory.maincent@bootlin.com, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com, willemb@google.com
Message-ID: <6f127b5b-77c6-4bd4-8124-8eea6a12ca61@lunn.ch>
References: <8b8dca4d-bdf3-49e4-b081-5f51e26269bb@lunn.ch>
 <20250408153311.30539-1-mpazdan@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408153311.30539-1-mpazdan@arista.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=gc2itI022s8dW+s9KqI+5JfR2+E5wndR5hXO0nPhlBM=; b=G/blntR4GT2mMoncHyE/hjY+Zv
 NOvxnRYgBX4JWkjvDzSnUG4CjYhiibzDikvqlTcidubSSNr1HIX+rxOx8rP3T0PwT1AblSKGrxzSs
 F2UxzrYwE3fIDJyKUhGYo3ZLoVGB77oBGTJiA6MNxS6Ccqr4WLKlreEsv9X0KDnL3yXk=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=G/blntR4
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ethtool: transceiver reset and
 presence pin control
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

On Tue, Apr 08, 2025 at 03:32:30PM +0000, Marek Pazdan wrote:
> On Mon, 7 Apr 2025 22:39:17 +0200 Andrew Lunn wrote:
> > How do you tell the kernel to stop managing the SFP? If you hit the
> > module with a reset from user space, the kernel is going to get
> > confused. And how are you talking to the module? Are you going to
> > hijack the i2c device via i2-dev? Again, you need to stop the kernel
> > from using the device.
> 
> This is something to implement in driver code. For ice driver this reset will
> be executed through AQ command (Admin Queue) which is communication channel
> between driver and firmware. What I probably need to do is to add additional PHY
> state (like USER_MODULE_RESET) and check it when driver wants to execute AQ command.
> 
> > Before you go any further, i think you need to zoom out and tell us
> > the big picture....
> 
> In my use case I need to have ability to reset transceiver module. There are 
> several reasons for that. Most common is to reinit module if case of error state.
> (this according to CMIS spec). Another use case is that in our switch's cli there
> is a command for transceiver reinitialisation which involves transceiver reset.

Now zoom out, ignore your hardware, look at the Linux abstraction for
an SFP, across all NICs and switches.

There are ethtool calls to retrieve the modules eeprom contents. There
is an ethtool call to program the modules firmware. There is an
ethtool call to get/set the power mode. Modules can also export their
sensors via HWMON, the temperature, receive power, etc.

How does your wish to reset the module fit into the general Linux
model of an SFP? Should it be allowed in the middle of a firmware
upgrade? Should the power mode be lost due to a reset? Can you still
read from the EEPROM etc while it is in reset? What should HWMON
report? Should it be a foot gun?

It does however seem to me, what you want should somehow be an ethtool
operation. And it probably needs to be plumbed through
net/ethtool/module.c, and you need to look at how it interacts with
all the other code in that file. And you maybe need to force the
netdev to do a down/up so that it gets the new state of the module, or
you only allow it on an netdev which is admin down?

Your patch needs to explain the big picture, how it fits into the
Linux abstraction of an SFP, and how other vendors should implement
the same operation, if they wish to implement it.

    Andrew
