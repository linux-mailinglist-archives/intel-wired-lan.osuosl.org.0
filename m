Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DAB413612
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 17:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC4F182950;
	Tue, 21 Sep 2021 15:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPQAkpcsZ66E; Tue, 21 Sep 2021 15:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03328828B5;
	Tue, 21 Sep 2021 15:22:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D98261BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 13:36:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5CA8402A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 13:36:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o5A3RAlklM6c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Sep 2021 13:36:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wnew3-smtp.messagingengine.com (wnew3-smtp.messagingengine.com
 [64.147.123.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7E1B401F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 13:36:49 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.west.internal (Postfix) with ESMTP id 0A5552B011EA;
 Tue, 21 Sep 2021 09:36:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 21 Sep 2021 09:36:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=lKxLHh
 UqsgxPtzaPsQjSQ9FkHSNCCx7h6WzPiI38knc=; b=rOR1L7+co5Fc2ifL7EMIOg
 aOAeq2qPw1hv20cDirpcoz6qJmgof23dwz3ZkCdTYK4DW+b6Ft96fKfw78KgRLzJ
 uwRR/WX9MbkvZ8EDskI6qvE08X5/OIyJ1wkM3M6FqCOLjOGRbhGGQTCwwNwtA+zx
 fyjKo2M5anfybLUjAkhxOZR9+50G83+R/KGk3phKPw1qMHg4BB3lzpSsyflyHpHD
 frnk9aN9kV2dtsR/GySZrwYvcdPdRi1cbpUSRh6KSlHGDnM5bGh7GS7cTa1r7ili
 ztLcTyCgk+A7lJ+jdQCWbU9/4MgRkLv/M5bTEKmg6dGL/wQNSaLHLVdVKCHC+Hwg
 ==
X-ME-Sender: <xms:7d9JYZkWMG8hsrO_6ZkRXU0P5JQ2nwFGErnmms7_KcfueeaMinLAgQ>
 <xme:7d9JYU0xyVZxS75AZnvNjyPvU4Jisv6SSJlycJBTPDyvwESHz02hUrhMV48DALhVw
 ecyDhxZ8vW7zkc>
X-ME-Received: <xmr:7d9JYfqDUeaGBcTK2VoW6bjyFHd0CdYUZyPXbC1iXVEbZOLo0PSNzNcWfDxtvB2XkQiCOIWVXy8_N5gM8b_1EIv-03x_Bg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeigedgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpeejhedufeelkeefveekieeiieeffeetjeeigeduveeikedvteeileekgffhgfel
 vdenucffohhmrghinhepmhgvlhhlrghnohigrdgtohhmnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhr
 gh
X-ME-Proxy: <xmx:7d9JYZk5owgeEI0YZTjz81J81swNz46JP_BF24Ng4clhodLfUmWZKg>
 <xmx:7d9JYX3Ajla1-j5BDOwkto8789ZHWnffuFlvMmmmk5qlKVPJOM8OJQ>
 <xmx:7d9JYYvf2nXhyyJ7BUTuNKlEQNoiHBPU687wZaKXgjvcyCdKixoNxA>
 <xmx:799JYQvr40t1RWoWoT3dbzv5qvtZ1S8vKtVHq95-AL0IX_U2JJpjSul2GGQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Sep 2021 09:36:44 -0400 (EDT)
Date: Tue, 21 Sep 2021 16:36:41 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YUnf6V5F/hAslHnJ@shredder>
References: <PH0PR11MB4951623918C9BA8769C10E50EAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906113925.1ce63ac7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailman-Approved-At: Tue, 21 Sep 2021 15:22:24 +0000
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>, Saeed Mahameed <saeed@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 08, 2021 at 09:21:15AM -0700, Jakub Kicinski wrote:
> Mumble, mumble. Ido, Florian - any devices within your purview which
> would support SyncE?

So it's public info that Connect-X has it:
https://www.mellanox.com/files/doc-2020/pb-connectx-6-dx-en-card.pdf

Given the nature of SyncE, I think you can extrapolate from that about
other devices :)

Anyway, Petr and I started discussing this with the colleagues defining
the HW/SW interfaces and we will help with the review to make sure we
end up with a uAPI that works across multiple implementations.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
