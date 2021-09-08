Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EC54040F2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 00:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 833D282D12;
	Wed,  8 Sep 2021 22:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3blkJ6RyWFcL; Wed,  8 Sep 2021 22:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACF4082B69;
	Wed,  8 Sep 2021 22:20:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 032181BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4302404B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAjZ9M8EfycD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 22:20:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84DA0404B1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:20:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B30EA6117A;
 Wed,  8 Sep 2021 22:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631139629;
 bh=xlsGXGQEF0pJo6kgaRKxO6ptUCqz4jjwkMLI2N2IUYE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LjM14XNg9tGYSxvEMB3PXcULsmTXKhx3G/bcviG6FMjV+KxsEnisIWki5BZTW2VTH
 QuD1FivkttkbL5BLrFm8iGv9K4HK4kKMhcEvP5vTC2DZE+yqckjbaMtWOGVmbt7L3Y
 LJqUV4OAkDY2ujf7pCRzsMXqBlqFQVSUYdozi2Z32vTtSYyZkQkiE+zKARjR9I0mj9
 qamr3tU6BPku5RTW/Lm+mlLOQLKZg2JKd4ON6nW6fpF+yhRVxElR6s1uvX4WbURtYo
 GzHeZT0l7hRXP10VKH2XmAZXDKOtGopbdniqnDF2H49SCTb8zV+iJ3sXxz7nOOUQB+
 bygqFB1LrGkXA==
Date: Wed, 8 Sep 2021 15:20:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20210908152027.313d7168@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YTkQTQM6Is4Hqmxh@lunn.ch>
References: <20210906113925.1ce63ac7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <YTkQTQM6Is4Hqmxh@lunn.ch>
MIME-Version: 1.0
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

On Wed, 8 Sep 2021 21:34:37 +0200 Andrew Lunn wrote:
> Since we are talking about clocks and dividers, and multiplexors,
> should all this be using the common clock framework, which already
> supports most of this? Do we actually need something new?

Does the common clock framework expose any user space API?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
