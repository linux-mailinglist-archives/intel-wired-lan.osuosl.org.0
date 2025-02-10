Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 053EDA2EDA0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 14:24:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5767A821A1;
	Mon, 10 Feb 2025 13:24:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9eE9-OXGml9E; Mon, 10 Feb 2025 13:24:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB93382194
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739193879;
	bh=Jt6pQHoQVd00iFlOT0zKR71VJA5KHbXP387LWjI2wQQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t4//cjiJJeiJmt8y7qwOZY39MnHfjuf29HoRiErue42r6gkUnuZ5Pj3/UD0RCU9NA
	 gGlRnDOsB99SXdZ8eRRFRRL9OL3v7kgY2+4dxNAkOcOeZH+RwPDzyHd6Eiss90Z5P0
	 zDzg7ALedoAnI0WpNBz/z1VsJjXaMAoPPbYM62j9+yRxd43zhtcyZAwR1zmCt4WXu5
	 CECwuCqze/dUhjDOVw/HwxxsimEETkMW9axLM9kGNagNYDfz1xu1W/T0tMOW3p2Mmz
	 ZKClLcR03CwhAz23sHHYI7+zJz2+/TqdzPnFQ6rP/VjdCovPicusC62uHS1zqV2vcs
	 ++aiuBnCUhypg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB93382194;
	Mon, 10 Feb 2025 13:24:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A625C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 13:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9501C40C2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 13:24:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Y_BJfzvDiah for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 13:24:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B18D340BED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B18D340BED
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B18D340BED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 13:24:36 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1thTlo-00CiYV-0K; Mon, 10 Feb 2025 14:24:16 +0100
Date: Mon, 10 Feb 2025 14:24:15 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ethan Carter Edwards <ethan@ethancedwards.com>
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>, Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Message-ID: <a9070724-b4b7-4a23-8ed4-b6464175b660@lunn.ch>
References: <20250209-e610-self-v1-1-34c6c46ffe11@ethancedwards.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250209-e610-self-v1-1-34c6c46ffe11@ethancedwards.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=Jt6pQHoQVd00iFlOT0zKR71VJA5KHbXP387LWjI2wQQ=; b=z5QisoNQ0/YrhBAPBpWuEN7Kad
 nBuGUOEmIWDpWL4KSa+eVE00GHWoPktI4ietdBcYAILpJsvmQszRnQAX5ckDMqvC/8KmNhywc28Q7
 JCvb5nUq5gUvERun7RIXKSzqFRaDoN6NhP3CtEUbaYSD7RXWHWc1mk2Hofu+BPRQ2Zuk=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=z5QisoNQ
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: remove self assignment
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

On Sun, Feb 09, 2025 at 11:47:24PM -0500, Ethan Carter Edwards wrote:
> Variable self assignment does not have any effect.

Hi Ethan

As a general rule, it would be good to explain in the comment message
what research you did to find out why there is a self assignment, and
why just deleting it is the correct solution.

There are somewhat legitimate reasons to do a self assign, some older
compilers would warn about variables which were set but then never
used, for example. Or it could be a dumb copy/paste error when writing
the code. But more likely than not, the developer had something in
mind, got distracted, and never finished the code. Which appears to
the issue here.

If you cannot figure out what the correct fix is, please just email to
the list, Cc: the Maintainer of the file, pointing out the problem.

    Andrew

---
pw-bot: cr
