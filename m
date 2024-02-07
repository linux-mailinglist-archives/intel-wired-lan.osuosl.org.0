Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F9D84D67F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 00:15:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7239642048;
	Wed,  7 Feb 2024 23:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v6wKaMfP-c4u; Wed,  7 Feb 2024 23:15:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB0C34207C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707347753;
	bh=7CFg46iziGbkoqCNx59PYISDoO+LtB3L2Zs/s31+P0g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kIK2EO0A3aNJbRdwG09vvzY/7sZKBhbkU48jel0pDY0i28BeZVWaNgemi31qON0ro
	 bbxPyYwhpJtxfY9ISoeQNCYcqe+jquPn8CMLDCjP+4H4IjjKR9Jm7F+RPSacR5yVYw
	 mzVtReXnCLiaoFF9Cm5Bkv480KCMP8dPA1ewCSbFS3bBo8XXltkplb5JeYukKpDvov
	 WbTwBBRyUmEiF3lOULwdgqFhWph9s/zV1QAxb25+5mooR2vSVxNylFqKm5xctoF5RL
	 WeC/DtA86yr3RzHmeeEElf7GIem1FDmI1oO9kLVB8KzcO1ec1AnQUVT6vr3U8YbuiN
	 6L+tPXjrCrihQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB0C34207C;
	Wed,  7 Feb 2024 23:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 149881BF82C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0090E41FAD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7-DKht1Gco3b for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 23:15:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC9F241FA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC9F241FA5
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC9F241FA5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:15:50 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rXr8m-007GAV-Cc; Thu, 08 Feb 2024 00:15:40 +0100
Date: Thu, 8 Feb 2024 00:15:40 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <4eaa21ca-9d14-444d-9b55-86ceeaad236f@lunn.ch>
References: <20240206-igc_leds-v3-1-390ce3d18250@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240206-igc_leds-v3-1-390ce3d18250@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=7CFg46iziGbkoqCNx59PYISDoO+LtB3L2Zs/s31+P0g=; b=s79taOEB+GBcOm2KGqTumfhQK8
 nTuc+rLVe2guMIiXT28M3TX6RcUD8XLQ2cqloRkrYcciyjvKK77cQ383H0ELldQyTIkBSlPzxt4Sz
 PXFfDJvAVFcAEirbAAUWxq61JLMVROCvwI4ZQGAFdeZMBxC7rSdjWVAC5Y8mVDOrOpb8=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=s79taOEB
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add support for LEDs
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 06, 2024 at 03:27:32PM +0100, Kurt Kanzenbach wrote:
> Add support for LEDs on i225/i226. The LEDs can be controlled via sysfs
> from user space using the netdev trigger. The LEDs are named as
> igc-<bus><device>-<led> to be easily identified.
> 
> Offloading link speed and activity are supported. Other modes are simulated
> in software by using on/off. Tested on Intel i225.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

It looks like the mutex could be a spinlock, which is probably
cheaper. But the code is O.K. as it is:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
