Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7789A4090A2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Sep 2021 15:53:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0CB6402C4;
	Mon, 13 Sep 2021 13:53:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GEPDl90p-iTJ; Mon, 13 Sep 2021 13:53:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 995DF4021E;
	Mon, 13 Sep 2021 13:53:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 760011BF389
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 08:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 637E740357
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 08:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 37of4JCHy0j1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Sep 2021 08:51:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C13704034C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 08:51:00 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id B658D580B05;
 Mon, 13 Sep 2021 04:50:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 13 Sep 2021 04:50:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=oEBMjG
 HbxkehBrxFgJqADlnGq31HX2RE4tw3YGcGOxo=; b=f35bXpQY4Dkcqm2P7Tp3sF
 uumChSSx8jFh7qOKyLaxeRTr5e0PSckEp04xgcGNXxkxo4AXRXZeFmCoXwSoS8zz
 ps5NQYIakD6Owa0YnOvN89SO75qvV1qQEzEP233A380UH2+jdxA0iUHv/q98oslE
 wcvd+rn1QtAZvPk/G7NxK25CrK/ivKKTR/ybuQYEmGlMYMBEqugBi0IPuSRieYBn
 tQVMZ0hzLKK5x36ORsDFEbTiKI1zIhfuAC6RV4g2/QRRFPNGDkqX3UtDih5krgLm
 o28yvTFXn5W/iOGBryVWdSWM3Ne2aoAWqBq9Nm5uWQGCa81yQZ/NpTBMba1fygeg
 ==
X-ME-Sender: <xms:7xA_YRDbnwoIwg1Mkok3tynI4u6_OZb2oZANpU-hMY04g1FcCDMcHg>
 <xme:7xA_YfjBlj_R4JgSeJ_J4oEtCbVeYIf4UN2G_EYZtte6XV9g2r8GE3vG6J2rvNcPR
 t5FouFOJPXkDf0>
X-ME-Received: <xmr:7xA_Ycm-dV0Z4DqdBDA44yjluaAo9IRItj0kgiIJzxSwuJQ2NLLD9HaWuvc4odd4srNbfKa0wGNCo7KZVD41fmhBZSMOMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudegjedgtdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:7xA_Ybw9uggka_pKgpmH_Ezv20W9TEz1eM9dqYTKIblStIMy018Z0Q>
 <xmx:7xA_YWT1VjigWlHdo9Atx-hTkQxxmDMQvLhEvhOaJmgVULCEGOWyBg>
 <xmx:7xA_YebvlI4FxCy66gU5jxA7JHZ1C_tW5Y-n3jImh_csP77blIGwFA>
 <xmx:8RA_YSbIfpC1B94dnYQ_r5KoDOw950dNMBzVAhXwys3VXemZ0CrDKQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Sep 2021 04:50:55 -0400 (EDT)
Date: Mon, 13 Sep 2021 11:50:51 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YT8Q6yWQGt0/B2iy@shredder>
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
X-Mailman-Approved-At: Mon, 13 Sep 2021 13:53:23 +0000
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

Sorry for the delay, was AFK. I remember SyncE being mentioned a few
times in the past, so it is likely that we will be requested to add
SyncE support in mlxsw in the future. I will try to solicit feedback
from colleagues more familiar with the subject and provide it here next
week.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
