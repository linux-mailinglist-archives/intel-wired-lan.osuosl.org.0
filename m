Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4910928BD96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 18:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B14F285FFD;
	Mon, 12 Oct 2020 16:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lOicabL9M3-4; Mon, 12 Oct 2020 16:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 186D0861BC;
	Mon, 12 Oct 2020 16:26:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21E5B1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 16:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1CA0F869DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 16:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vlYXO7eQLbgs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 16:26:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2BCDA8699B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 16:26:22 +0000 (UTC)
IronPort-SDR: QAm0tj7naMLrDKjuGyrrlLYAG7p6J2mIxkZPFQhxfBRZKWZUWM1F/RJVSAUP5JS2SaTka9wWyR
 1BJCmGen7S8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="145630085"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="145630085"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 09:26:19 -0700
IronPort-SDR: gKj5Erm961Gx5sT2SOmqTVd6D0b/AVCP0Ve2hsBB7DuIQK/FBaIbXV5So0MarLNdiD3/BXvCIW
 5j67whFxrKVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="530032236"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 12 Oct 2020 09:26:18 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 09:26:17 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 09:26:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 09:26:17 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 09:26:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BrxoJC4eXKER54QMl+0eTYFPkI/MvaY6Ua8H4OXQVtY8iDjWzpMdIpZGKVUi44R02Wl2QgrTzjVX0K48XmsbnRzhVaRB4K1FKOQqU2UKYgdDcd7Vk9xOW5/PpaOSOIDosZEHwDOjdST/P0gZXDKUdRPCd9O+UVxLUs3jTQqD3dMcxpipsDSQfGxCTZUIFkAd5pZNPa/1IidHTa5jBhR+awdqEo7Suz3+3FxyADv7g1+9wrXeYNUrRApjP7M/r7B1J+tr8TclHiiCEmdg+9lVT59kp1/jMyuS0IiHAmi4pE/DAsd9J/+kbVumOp+Sm8nsNSSSuQaBgMDPskoic7GXpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QNy8oTxxVjBM7DDpKCmoCbmwb0XRPL2IQsof+ElwzL8=;
 b=N+Ub6jMGGY7PQpvWKvl718EUE+cx7dc0+t0f/AAX3q6twoHqKnEhpWVdYoI/MRbw9+D+0kXg0+1m0jyt77Nl+rHL/8oV1c2MhrVNssEqA6J0D/OP3YMtLMocAdZZGGBUyr14rvaYEM4fMZEJkBIkK/E2LkL9UuOjJSHVetE/tnVFpOBRWpy7vm0tRDJgOAVaGHnap48yI72t5rczOiD9KtlM7KvFIOtLKUoBdj12kVER7q/UlKdLpKJv8p95vzqhfTPvsvYCa+nGFhwt6cWJZBGUj185Q85EQEW7Hqk9pJjHLHB66TlzL2OlZmxeh0BtUFjg5Mt+SfUSt06n8NsaCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QNy8oTxxVjBM7DDpKCmoCbmwb0XRPL2IQsof+ElwzL8=;
 b=hMJOMBIojCfA5ZsrzI2SPIVGqG2bWAFr55lkONTU4Cyj8z34Zq8aFaz6utE4qh2tSnEcxgD1ZhyXBRiynw1R0H2zR735BGstdlu/SPn8fZLFJXODvzTidvqSoY5Ebn8rIs9Cjd4hMMFGBS0OyiR7u4cZOnzVTguNta1nuKwWcZ8=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4843.namprd11.prod.outlook.com (2603:10b6:806:fb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.30; Mon, 12 Oct
 2020 16:26:16 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e%7]) with mapi id 15.20.3455.030; Mon, 12 Oct 2020
 16:26:16 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "kuba@kernel.org" <kuba@kernel.org>, "brgl@bgdev.pl" <brgl@bgdev.pl>
Thread-Topic: [Intel-wired-lan] [PATCH] net: ethernet: ixgbe: don't propagate
 -ENODEV from ixgbe_mii_bus_init()
Thread-Index: AQHWlWeRtduI/tDeMEOwGLDiloiyZKmT+UYAgAAxQYCAABN5gA==
Date: Mon, 12 Oct 2020 16:26:16 +0000
Message-ID: <ec4830bd7e15fc867725a867bf088077fdab2c09.camel@intel.com>
References: <20200928071744.18253-1-brgl@bgdev.pl>
 <CAMRc=MexKweGRjF5KNg1saz7NmE+tQq=03oR3wzoMsaTcm+CAA@mail.gmail.com>
 <20201012081633.7b501cde@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201012081633.7b501cde@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9fbce5e8-bc48-4003-5734-08d86ecb8b15
x-ms-traffictypediagnostic: SA2PR11MB4843:
x-microsoft-antispam-prvs: <SA2PR11MB4843438C79BBE653B656BBD6C6070@SA2PR11MB4843.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hoObZvwobU5FUkAq2JZIyjHU5sGMW8QQb2wyA/hAhqXd/pAdG5yYvShOPV2/ucA6Msb2khKTQ67rlgOvv+8PrPUPiYp9yS30JddbXntcjcWOJ8WrVjU86WQyWynq3HHGJX+TQmGPNN2wNAKb9Ys5NryMt5D2pDqZmja5eqq0miJiIXb6oW/qwmjh8MPhrmnJEmZwSKv83lsjnvA9ZYiNoOK7mm1cMlE+ptfghZDwjee0b7XRsGGNZopvA2/vZR4bXtYFe2nRlKZPPswe7UYEzqzkfwnbrt62sfeWBf/cLDLNwQp7/+gEWFVpfFqtunkYk7gvjuZBJvOExZEJFgKE1bZ93NLAyQX8A87Xsxwe2BbmoCepAehtWGeO7UDXXAyD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(376002)(39860400002)(136003)(366004)(66446008)(64756008)(71200400001)(66556008)(6512007)(91956017)(53546011)(26005)(6486002)(76116006)(6506007)(8936002)(86362001)(66946007)(8676002)(66476007)(316002)(4001150100001)(83380400001)(186003)(5660300002)(54906003)(478600001)(110136005)(4326008)(36756003)(2906002)(2616005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 4r8k05On+OKCiSJlPyvuN8DskZIZP84xhlciAkw9/vH4yp1h8vy1h9t9/w6GldqLV4LWSyM66ajeuX/LlbWnzjear7x3DQvNQSGOoEVdsJM/QPHIIF9z39bJgsq64ZNrUHJbVuVct0TwRjHtqnVnUc45izQbRiEnjgJPpI0/d9TYnbltYp28QeegKQr0PD5jPv6fzIoNSBfXNX60I5LfL1y+SypLaxKsoPA8Ux4WWc7BLnW5LFjqPpaz1AR3veQVL2Bp+/L72rHwvZZsHja1G9J5tXYxclyfDwRlmqsVIxjy9gu6ryf55mfgKXVakekZKmZcGyLfVd6c8VigNokU4jRRtNyuOBeYe0bTUczobHHMgcce/djpbzYETwrQwUBlpyfwn+NjqsJO8wnViHHznT+1N0KWIrLSftBvznji9swb9sQY4WVwkTvGd2DqBLGSHaFnlkJ2XbVaY6cuStINPqzmVQOTmM8LAGiFJDT9mpseDSuQbtgf+5xkzuIEyLAwMKlfSk2PS8k3qdPdLV5TYyRnoBnigeEZzo360xVj070qAw1s8OHagqISb/VLnjeVHQ5PqKKBIHamTQj8BGslfVL3LfhWukodL96d4AqfPY9odlJewN4U9GmWpSCpucGUt8nltXjWCOUctIMVheIGNA==
x-ms-exchange-transport-forked: True
Content-ID: <3C877D15BF7CA04A9DC69D820CE43879@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fbce5e8-bc48-4003-5734-08d86ecb8b15
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 16:26:16.2214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g9sEeEAI6gLr/VaU2jZOzhVbnExCuzMhE1Dohkbya5xqnX+sR1mmQb5CJ2qAQHqOfpKLiBMiwJTMZz2yfXpQ4XC9NrKix+pv/6WnLCoP3aI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4843
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] net: ethernet: ixgbe: don't propagate
 -ENODEV from ixgbe_mii_bus_init()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "yongxin.liu@windriver.com" <yongxin.liu@windriver.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2020-10-12 at 08:16 -0700, Jakub Kicinski wrote:
> On Mon, 12 Oct 2020 14:20:16 +0200 Bartosz Golaszewski wrote:
> > On Mon, Sep 28, 2020 at 9:17 AM Bartosz Golaszewski <brgl@bgdev.pl>
> > wrote:
> > > 
> > > From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > > 
> > > It's a valid use-case for ixgbe_mii_bus_init() to return -ENODEV
> > > - we
> > > still want to finalize the registration of the ixgbe device.
> > > Check the
> > > error code and don't bail out if err == -ENODEV.
> > > 
> > > This fixes an issue on C3000 family of SoCs where four ixgbe
> > > devices
> > > share a single MDIO bus and ixgbe_mii_bus_init() returns -ENODEV
> > > for
> > > three of them but we still want to register them.
> > > 
> > > Fixes: 09ef193fef7e ("net: ethernet: ixgbe: check the return
> > > value of ixgbe_mii_bus_init()")
> > > Reported-by: Yongxin Liu <yongxin.liu@windriver.com>
> > > Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > > ---
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > index 2f8a4cfc5fa1..d1623af30125 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > @@ -11032,7 +11032,7 @@ static int ixgbe_probe(struct pci_dev
> > > *pdev, const struct pci_device_id *ent)
> > >                         true);
> > > 
> > >         err = ixgbe_mii_bus_init(hw);
> > > -       if (err)
> > > +       if (err && err != -ENODEV)
> > >                 goto err_netdev;
> > > 
> > >         return 0;
> > 
> > Gentle ping for this patch. Who's picking up networking patches now
> > that David is OoO? Should I Cc someone else?
> 
> Intel went through a maintainer change of its own, and they usually
> pick up their patches and send a PR.
> 
> Tony, do you want me to apply this directly?

Hi Jakub,

I can take it. That way we can get some testing done on it.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
