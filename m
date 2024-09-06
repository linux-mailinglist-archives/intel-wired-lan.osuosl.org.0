Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB63A96FD31
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 23:16:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E89B460774;
	Fri,  6 Sep 2024 21:16:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5_nV-hDmr_nz; Fri,  6 Sep 2024 21:16:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5200560778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725657407;
	bh=8nFQHo2ghyhvokHZ6+EGLSubemTGhRk/G+4dRIbMtbY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LNpN63u3DNi6z7OLjCY+pyk/qX3yJnUqoi6f0IJZHdmkytuVBITbviEF0BmHIZx2/
	 0AyNcp2leZMhXbTUd3GACz161vDt81xuHjv1JZ7CO3hptrpjHWJbEiBfMyh0iN4WTV
	 NWtvrhxsA9WUZbX80U4PwLVAeWiJPHkG9P4cqBIK/Wk9IccMK+2lgjtShrJm2uZ+KD
	 1De1ufF/VDz1P++/aSaBi36XapCVkaK+Mgt52ppw7YB8AdRVywZuoy5kbzEhMQyyVU
	 7d0dvAOEUNm5GNgXqC/YO1nGDS4sL09OEPD/t0BtBp6oA/NRV0FkaPg+K85f80AS+r
	 nqUkfD96tHz+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5200560778;
	Fri,  6 Sep 2024 21:16:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EDEC1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 21:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B38940490
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 21:16:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HSjBJF5T1R9K for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 21:16:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3665C403CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3665C403CA
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3665C403CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 21:16:45 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1smgJk-006rO3-5P; Fri, 06 Sep 2024 23:16:32 +0200
Date: Fri, 6 Sep 2024 23:16:32 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jeff Daly <jeffd@silicom-usa.com>
Message-ID: <ac2faac2-a946-4052-9f61-b0c1c644ee59@lunn.ch>
References: <20240906104145.9587-1-jeffd@silicom-usa.com>
 <becaaeaf-e76a-43d2-b6e1-e7cc330d8cae@lunn.ch>
 <VI1PR04MB5501C2A00D658115EF4E7845EA9E2@VI1PR04MB5501.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <VI1PR04MB5501C2A00D658115EF4E7845EA9E2@VI1PR04MB5501.eurprd04.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=8nFQHo2ghyhvokHZ6+EGLSubemTGhRk/G+4dRIbMtbY=; b=LRgmsziqFqunwIT6m6FdlhMbpB
 2Ta4V3S2iBQ+IuAW4S6p9MjpLJRdCSDTgZwCZitXANJQsDZEU7vXutCLCuWHP3eXrWqfEXuOAtr7l
 p1Z1BwVC1cyrXSHLze5GQw1rO6qYCGfpMhf1AewYr4QHffDWJv5wHSjMkhu0SE7I9+ME=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=LRgmsziq
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
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
Cc: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> It turns out that the patch works fine for the specific issue it's trying to address (Juniper switch), 
> but for (seemingly all) other devices it breaks the autonegotiation.

So it sounds like you need to figure out the nitty-gritty details of
what is going on with the Juniper switch. Once you understand that,
you might be able to find a workaround which works for all systems.

    Andrew
