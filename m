Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1782B3E23F7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 09:27:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB0BD60AB0;
	Fri,  6 Aug 2021 07:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZIbyzDBLYSB; Fri,  6 Aug 2021 07:27:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4E4A60901;
	Fri,  6 Aug 2021 07:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 088E11BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 07:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E987B40455
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 07:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EgSfk6Qc1XiX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 07:27:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 322A540453
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 07:27:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="201497075"
X-IronPort-AV: E=Sophos;i="5.84,299,1620716400"; d="scan'208";a="201497075"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 00:27:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,299,1620716400"; d="scan'208";a="442821546"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 06 Aug 2021 00:27:25 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 00:27:25 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 00:27:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 6 Aug 2021 00:27:24 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 6 Aug 2021 00:26:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mH+/Awshr1/VUWdp1eWanWiAJXfpjF2pLSQ3H7hQ9Ws4y3t3x8TbtsAy7FvWLDZqwbFZ99AZUc4qg7L9zk0UDKXU8+V1RlKjUE9cT32qk5Ty8ZLW4UHsNeVygDJ4vNjre6vkQhcHGid9qdp6/8P0zG7Ro7XS06BnhjP2TfeVivfaXTR8gwwEecOXVfozb7QbG66d4+72/XiLwtX1RqVEV/PDuG7BfuRdtlEtlqEdNS0/W9U42qd/sDT+KQlRQYGDjaoLTBu53HjjqEMO4aqZ73LShL/Bmpd7uDeSaEZ/r8NlgCmToEBH4JpU1wZkXzPJWjpjrQjMdTPwzGqwXm6ZPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EcscGggALruqKm+BHQT2rcmxOq/rmHXAkiKN5xCQm4s=;
 b=PDgoG8+RTd8abd1Ty04KiNsZGMbc8/VOgiIphMsOLYQR1tV7tIdO08LY4W3TxNDs/55CH+eUhAmcJ277rC5aO/+juNG/sb6SdcxrDet+QLPLi27GYhz9y0XPluM8rj0gp18vaLmoU3TzzlQZSQejQi5GE3QjSFD0Gsp5UsJjqWYZH0b6gPDrbTZbEEcLubmdDbRY/jWGqWc6nB7IrM0YAF/0b6Hph+cpoRGrawU9drpU8rYFEockpeu0M7sSGE2V47rJETYCQpebphRuFMs2sQe4U2pcGARf0fngA9eLt8UH+X3vEnkbH61HsfsTNQtWriSDMh/TUciSXFm4dc4vUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EcscGggALruqKm+BHQT2rcmxOq/rmHXAkiKN5xCQm4s=;
 b=E82qONyNLWEK3rFhq/Tk/EFi+6l+EwOgq8cqwIIibDXuadPRxJ2GTbAetlRaHxgK1VgQ+U0a1RSMKqQ6hbmAFfnzSdxUed8XcS5UyCi3iymmRBKUpbmIELVEdHWMm7b7huQ4r3U/X1PzMa+ClFiKWoIhFFwEIhHm6tMqe70B3kw=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5589.namprd11.prod.outlook.com (2603:10b6:8:26::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.17; Fri, 6 Aug 2021 07:26:53 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::29:72:2933:497f]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::29:72:2933:497f%3]) with mapi id 15.20.4373.026; Fri, 6 Aug 2021
 07:26:53 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 13/15] iavf: Set RSS LUT and
 key in reset handle path
Thread-Index: AQHXWWP8zz15wAMydk2RdDf9Dkph5qtmdcjg
Date: Fri, 6 Aug 2021 07:26:53 +0000
Message-ID: <DM8PR11MB5621A235D39CEFA250B87D47ABF39@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604165335.33329-13-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbf84b0d-7545-4736-c920-08d958ab909b
x-ms-traffictypediagnostic: DM8PR11MB5589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM8PR11MB5589F9AFFD1DD7D22E70BCF8ABF39@DM8PR11MB5589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P09OSvREN0HL74MbtGFkK0cHe3fj1isDku8MMcpkgwPeZ0uz9HAy2rzwfSteMA4I9rEy8axp3VnounZOr/W5Zf5qV/BEYAz0mS2Rm/Krv2DYWix/hh4Y4sJgg6s5rODmHaDygZKUyF79P1rNZVg1pzV+HHea+4hZ9Tst+PBGUeL02tm/idzjYS5eTaJod7/viaiuaJiZY+Yw6kQXg+FdORIIsk8KWG9Os4mmdN3YXQq/aLVa9xRKMdrHhzJZs2HWw70coDLCrwJdQ3siuLxVxppmOpSv4ovDt95zLIPBWOZdL4Y1ao7uTEslPe/LkDDIMy/OY8bOrouLXmqxOAG14r1CxT64BKX4Z9yK+su7mX4EYHRTkS+lRkYc2GKsKnMD1rvcEG0UcJaai7Td57dIupzXPLrimKesqpeYyvHYsAn2274a7ZwxW6lKekCnX+ZsMitpkGj0za9KGsh9KS4S3AOjvOzVyJEGBIjoju/oakzWmNT8pwq/OXzaXFH+xKzYHAR+wCQ5AH2TLSN/ylukfCLoadZvrF+JfEyUxTcsUP7a8OX9BzPaUm397jizFsHS57/17fPa9TaQN/kodhza0rcxGn2N/SJ79YuC1eXvWs4jO1OXMmR0/hhslNgxXDmmVU3ulJOdDNMNQd0woNksQu24wzWWNoY51dYAusbl2i1RmVYL1bpdOL77Q7+9JvaqV6tjO5XbrYZyD9QdWri7/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(55016002)(5660300002)(71200400001)(33656002)(9686003)(110136005)(2906002)(508600001)(52536014)(66476007)(66556008)(8936002)(76116006)(64756008)(66446008)(122000001)(38100700002)(316002)(6506007)(7696005)(66946007)(26005)(83380400001)(186003)(8676002)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8kkybjNT89UOanPUBhMQy4jk2BLvEZl2yuf6pVJKqZfHFii0+/gmLsHy6qzy?=
 =?us-ascii?Q?hMeEkA93xs7PZsydVjckhiu5oFfObFGDzITXVjKQvKdCbBzpZWsres9O+ds7?=
 =?us-ascii?Q?qKumtQ3q2Vqb92NzHH1xKHMQ5DJPkj1ksYWbzjhaFkAiq0uKekA91pGQKWJc?=
 =?us-ascii?Q?5xzGOi9Yenvn9kAgcAdrN1anSrz2WzH5Ugdbe78EFOAjceUBUpDNeF+KKE12?=
 =?us-ascii?Q?YotnDWEKm3RTOVsGjJSbz6X0T2ChG1bGPQGFua9ipIbN3CE5LkCdO2nFiAG0?=
 =?us-ascii?Q?jmz26DEAik+nh6t7fT/eSXru4VaNgSgqnG+E4+GpJLJ3nhAaYGnsnq4jb7dA?=
 =?us-ascii?Q?fCfiSQECnmbysMbZn7VIhU5gDwwyUGiiUKh7kIhqvOSda9yzxhktX1Bcuel9?=
 =?us-ascii?Q?jeWDeYtzDTF6dLaXlDwi4vtAT2mUDok0K8LSf7TQmfmj3wXcTdmZFPFHT2jf?=
 =?us-ascii?Q?UGTq9FWcWd4oxTV8KEk2B6F9e6iIcjEicgO0SWV+NCAyWXbLOyysS+RflVM5?=
 =?us-ascii?Q?RTqBEL73DMtDQd4e4sQPQtjxajJFxiNtoKRj1jX4o1WrDo4u5yVNshhOYviM?=
 =?us-ascii?Q?SG/cLnkWvAkOFBe20H3NOgK18FV4mkw9xyZQGnHYbVktVeE84dHlVTWvRh4W?=
 =?us-ascii?Q?8zPCTHe9b1t67KHAFzzImu6mBZh20MQPnJUA9NgrzlouT0TO3coG9fvtBcY1?=
 =?us-ascii?Q?nB0mnlZq4lRsfRotbxqsyAwnzDguswxtsJeZg6nYwSCvol1GHVJmZ4le8wBS?=
 =?us-ascii?Q?eqkcsBgzvxg5uzJRDvDgY6L/rSNfoTLXCJUBWvK6LJ8vflwDX6U9yzgdJ28a?=
 =?us-ascii?Q?yktIegY44Ys15losPSBtor9RPdqK6YQ1VW3cpl5b5OR1rBIw4hjDbohAuKuA?=
 =?us-ascii?Q?QSXuP8cW4yF1gi7dRCIWthzDoxTsC2DNgUtGDQXt3dJDYO/LZZIaDehGKfNY?=
 =?us-ascii?Q?1PwlSG8hUINVfCzuQpnKsPRI480Ft0N1SPHrONsmQWPPxNESEhVY74WPCLeB?=
 =?us-ascii?Q?xSusQCrA1Ry2H37stSP6qyT7vILggJwVM00sqOD9UTt1TGmpShYZ0iX3iiqg?=
 =?us-ascii?Q?DZJ4nDnNyQFs1dSFwKjYKB8ioo3MnTcRxelDF3oNWaBa0S+UXmCwa0uM6DOF?=
 =?us-ascii?Q?2+bHJ3DxlUjIiGA17QkrVLIYQpipbnfPPP3pvyzEftfn3NN4JKyKgWcmCDPM?=
 =?us-ascii?Q?gmRHJ3BbW/NJcLGdXIVQaxKxRCjM1OWkIyljfmsVraGOwEugWaIqotOrKsJq?=
 =?us-ascii?Q?aWNhzEPGGDrbA6bcKS1ygg7re1psV4O2lf+0U/Dd61NcxjsROUfBhTvMb0Px?=
 =?us-ascii?Q?5B7w7O6DcxWOJW0daP50k+TH?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbf84b0d-7545-4736-c920-08d958ab909b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 07:26:53.7161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L9WacAylv9rpLMMOH5YuVQzthbdAi1HIx7MdCsGHUImVrt0rChPwAkn3hN4AwWC+snSVsY5UtjeKs5OrKODM8HpYN1UfMhw/+u5Ig3r5jwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 13/15] iavf: Set RSS LUT and
 key in reset handle path
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> From: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
> 
> iavf driver should set RSS LUT and key unconditionally in reset path.
> Currently, the driver does not do that. This patch fixes this issue.
> 
> Signed-off-by: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index e7b9c64db3b5..892aa22b39da 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1534,11 +1534,6 @@ static int iavf_reinit_interrupt_scheme(struct
> iavf_adapter *adapter)
>  	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
> 
>  	iavf_map_rings_to_vectors(adapter);
> -
> -	if (RSS_AQ(adapter))
> -		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
> -	else
> -		err = iavf_init_rss(adapter);
>  err:
>  	return err;
>  }
> @@ -2233,6 +2228,14 @@ static void iavf_reset_task(struct work_struct
> *work)
>  			goto reset_err;
>  	}
> 
> +	if (RSS_AQ(adapter)) {
> +		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
> +	} else {
> +		err = iavf_init_rss(adapter);
> +		if (err)
> +			goto reset_err;
> +	}
> +
>  	adapter->aq_required |= IAVF_FLAG_AQ_GET_CONFIG;
>  	adapter->aq_required |= IAVF_FLAG_AQ_MAP_VECTORS;
> 
> --
> 2.20.1

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
