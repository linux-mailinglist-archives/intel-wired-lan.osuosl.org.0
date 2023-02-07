Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6E568CB76
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 01:52:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBD0E405C4;
	Tue,  7 Feb 2023 00:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBD0E405C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675731154;
	bh=vBbqvnbQqYVrLT82wZUSBa9ZKaHtPafKmwU+ak3RoYc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WAnP/VZXAGkswnP4+cxlGRlOkzw6c8VM2mbrhLCENuvHI+woS6ldv1Mn9XQs0m8dL
	 hHOjTPpDKTHWY1YtxjjY5jd1jSmUk7x+PIuftgdYrJN2XjURCH48IAe3w38J+Cqrgy
	 sT8q2Brh/2RDDsTjFnjGSJ3rS5QdbiZBpPnFVK5qMJVhBCwxmCk05s4+HHwhfh8h8I
	 HoaSVThyQYG5PUW4oAuq0QLSFubOflmgsqb5soAmuF54CAlzpWd9L3rMHpwZMETHLj
	 u/CGRzUl8auZKycGRh5N6W9baPjA8OPhV96BkR5ZLjaD0P6ld4tp2eaDlm6aVrExim
	 z+dmlw6YQzV6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Frd6un7kvvkh; Tue,  7 Feb 2023 00:52:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A64624047C;
	Tue,  7 Feb 2023 00:52:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A64624047C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 731D11BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5837B81413
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:52:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5837B81413
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAAGoSi6J12O for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 00:52:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE6B0813FF
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE6B0813FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 00:52:28 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pPCDa-004Fik-5A; Tue, 07 Feb 2023 01:52:18 +0100
Date: Tue, 7 Feb 2023 01:52:18 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <Y+GgwjKiX57LX4BL@lunn.ch>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-7-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206135050.3237952-7-o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=ZCMlk4dF9hmjbp4sd9eFvQHgOlp8nyVr2WMB4c1JQSI=; b=rTnJp9Y/4bSfG9/NEOzxEjg1HK
 fho11pc6E9YpPHWyMz9q7SmRWINmti0us5pvOeuO0mKnCMwGIxNdbjTNLGs6je/qMCPyqjTuSbUWP
 oKe4AWsfR3qP8ywhRDtJqig67Lu8tqFMrM+rppgH9lfw2QaxsvTPMHhxsYFRU2HWCG+Y=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=rTnJp9Y/
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 06/23] net: phy: c22:
 migrate to genphy_c45_write_eee_adv()
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Arun.Ramadoss@microchip.com,
 Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 UNGLinuxDriver@microchip.com, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 06, 2023 at 02:50:33PM +0100, Oleksij Rempel wrote:
> Migrate from genphy_config_eee_advert() to genphy_c45_write_eee_adv().
> 
> It should work as before except write operation to the EEE adv registers
> will be done only if some EEE abilities was detected.
> 
> If some driver will have a regression, related driver should provide own
> .get_features callback. See micrel.c:ksz9477_get_features() as example.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
