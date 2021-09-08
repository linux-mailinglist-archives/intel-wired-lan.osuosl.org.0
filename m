Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAE9404164
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 00:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C64F613E4;
	Wed,  8 Sep 2021 22:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PW38OivfUoG; Wed,  8 Sep 2021 22:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5989F613EF;
	Wed,  8 Sep 2021 22:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CDDC1BF232
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36BC4406C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3staikqMI2q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 22:59:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60372400AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=7Cew9e3UlL5P09S1oK6yvHHk9eW+3ig/EHObaHl7uN0=; b=E4Qbf0R1jMJ2BNuiIIqQQ771eY
 sQGaw9vSomjmLbAmMkpy9F3TRnJn6NeIrTlAmB1GlITkteIsivc5u5hGX7hJ5CYo8BV0kmLe5C+Zc
 hKrbRJsnJjvVWYNA9w2o3mZ37y/Eg69FucZu0Z0G7zVatQmrcsjo9w03Ybl+WPlNgq58=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mO6XP-005obr-TM; Thu, 09 Sep 2021 00:59:27 +0200
Date: Thu, 9 Sep 2021 00:59:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YTlAT+1wkazy3Uge@lunn.ch>
References: <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <YTkQTQM6Is4Hqmxh@lunn.ch>
 <20210908152027.313d7168@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908152027.313d7168@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 "abyagowi@fb.com" <abyagowi@fb.com>, Saeed Mahameed <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>, Ido Schimmel <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 08, 2021 at 03:20:27PM -0700, Jakub Kicinski wrote:
> On Wed, 8 Sep 2021 21:34:37 +0200 Andrew Lunn wrote:
> > Since we are talking about clocks and dividers, and multiplexors,
> > should all this be using the common clock framework, which already
> > supports most of this? Do we actually need something new?
> 
> Does the common clock framework expose any user space API?

Ah, good point. No, i don't think it does, apart from debugfs, which
is not really a user space API, and it contains read only descriptions
of the clock tree, current status, mux settings, dividers etc.

So probably anybody implemented the proposed API the Linux way will
use the common clock framework and its internal API, and debug the
implementation via debugfs.

PHY drivers already do use it, e.g. when the PHY is using a clock
provided by the MAC, it uses the API to enable/disable and set ifs
frequency as needed.

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
