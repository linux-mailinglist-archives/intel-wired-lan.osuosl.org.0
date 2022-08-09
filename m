Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEB658DD3B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 19:32:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABDDB405B5;
	Tue,  9 Aug 2022 17:32:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABDDB405B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660066352;
	bh=KvLNg96JqKQcYp3cIMEi91W0ww7oefDtFeKFlBjB0gk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fhty18+yBW+IQgUQahi04cE42crVM5rsJC26p/Z/lVRpd44lfdWq0OFJ0aXtBMzGf
	 /VYHKZ21AJ/wSpulreB3LqORPYI4txw7vGR1grSJBimcz+N0qI+LtFqV6Oy5fABvo3
	 AG4FhJcQNygLWbQDUG2i+SqgochRKckIQWdGOgPjTqELgVAKJT584tHKtYo7MylYdq
	 uldD8SeAW+vO8n+agr0psvOhCFQ9WtL0YrZ5OE7C3BKRTMORsz12Lgxao94ldgbn4y
	 2IaYO61REZMimjYpYC9cFPwfUVx3El6tSW86+Y8ysiMInp0kgF6adJraRhiZrW6FTR
	 Rc/1mk8yRQubg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bNHcEFLRMhC8; Tue,  9 Aug 2022 17:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B240140025;
	Tue,  9 Aug 2022 17:32:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B240140025
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5E31BF859
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 17:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 706D540872
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 17:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 706D540872
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hpfIwzQzlSzo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 17:32:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6538C40871
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6538C40871
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 17:32:24 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1oLT5T-00CreT-Vl; Tue, 09 Aug 2022 19:32:15 +0200
Date: Tue, 9 Aug 2022 19:32:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Linjun Bao <meljbao@gmail.com>
Message-ID: <YvKaH52bTGuqC4ln@lunn.ch>
References: <20220809133502.37387-1-meljbao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220809133502.37387-1-meljbao@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=0OAqZsPSAT9DIQMkYyz92e22EIs3wyqEVFdAW7vULWI=; b=wazugc4zwOPMK0NdAdL08HUQZ4
 yGt++ms8rGEbbuDGQOpJwhu7DQbNg2cUilx2xUiY0eEoOhIWxh+Uso8a9veLJX37B2/X4nXCn0IpH
 Zpem5/3DeuzfLHVxXDq2syto4e+fAe8RKR8OJk5WLnXWCYI9X+F3HxwCgquyZl/FZ0xk=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=fail reason="signature verification failed" (1024-bit key)
 header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124
 header.b=wazugc4z
Subject: Re: [Intel-wired-lan] [PATCH] igc: Remove _I_PHY_ID check for i225
 devices
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
Cc: , To-header@osuosl.org, no@osuosl.org, on@osuosl.org,
 linux-kernel@vger.kernel.org, "input <"@osuosl.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 09, 2022 at 09:35:01PM +0800, Linjun Bao wrote:
> Source commit 7c496de538ee ("igc: Remove _I_PHY_ID checking"),
> remove _I_PHY_ID check for i225 device, since i225 devices only
> have one PHY vendor.

This patch looks identical to 7c496de538ee ("igc: Remove _I_PHY_ID
checking"), which is already in mainline?

     Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
