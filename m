Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B26B3E28F2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 12:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2C5C83A53;
	Fri,  6 Aug 2021 10:55:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8a9p08spBYQS; Fri,  6 Aug 2021 10:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E25FA838C9;
	Fri,  6 Aug 2021 10:55:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00D591C1162
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE75940442
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qo05iC-0aJ-8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 10:55:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CAA44043F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 10:55:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="193942169"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="193942169"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 03:55:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="523418700"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 06 Aug 2021 03:55:26 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 03:55:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 6 Aug 2021 03:55:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 6 Aug 2021 03:55:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OgFIwjOMu+3Wf1fSSncxvY3nmD15L7DQvNdLlCacTY/ZZxWnIw6HuCdBPq5oV3Mt8deNFD/z5ZnLCfFkRJB4Xr2avqks94Grcq7DqEsvAHHZlrztVeKXG/YKlTL3xNDK3JMEqlH512EkLKBOGaA7MBTprLvX+fTBpHJ4o+QvHcBQ0PxShGXzXF18lNSnMq0IePJCzKzSoumgtrzqysGG4GokeIu6xokw2wP+i8oq2IfEvFhfSJuD/R+MxABwA3lD+JhfZ6ZYuru3wM6glGJpdVHAdG9u4KFTQh0zH2J/slIUNlZrHmluWhmw6tZRYPWhEWK9cjNKLsVLZgVcxwxT4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lml/zKUi4/JROSi6O7i0nG5vGG8W0rwOQLKz+CkwAR8=;
 b=Nhhpu+eBK0WAVQih/8U0EKSGlcuMpU/mnvzEeLrJWc3bP/zZcRvV8LNxew6XtJlKNyxWjB6fAcV++CjHO+rAcEiZVfQRFfWdw5M4Xu5BxztTpted/PcSFHoEV0gcbKRSlUtaHdiIuxY5/eacCHmrZVdtamKCWppcRWpwEC35pS2OAP/dxo47xFfaeugPMck0gDYbC645oQOol3xUgy9uXDadZtSgTUkDu47GAchpv7ADp3/uBDTRkBb3xuLRfxJ7Ga8UOp61h5ysrreZBbofCNLyTmZf3zNAwPG5ovTAB0EBh/YBbi4YdcDSl6XmfjH5aKWk/FaxqP+hHTdw/KXpiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lml/zKUi4/JROSi6O7i0nG5vGG8W0rwOQLKz+CkwAR8=;
 b=PhGJhYxVNOMkwwQLWNNM6Ij/tsdySub58qzYXJUaDtEAr6hibSF3xOJm0qd2fB6mYAT8S8ClQSOYo4HTFm9BU+/kvoKrW142hVXUFXEp5EB6S2yvxH3wW/YKrF0BnDKC01yJfOdL1gRxza/omN8AsVEEawmH9bU3uVYhr9X1a4I=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1423.namprd11.prod.outlook.com (2603:10b6:300:22::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.18; Fri, 6 Aug
 2021 10:55:25 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88%8]) with mapi id 15.20.4373.026; Fri, 6 Aug 2021
 10:55:25 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 11/12] ice: switchdev slow
 path
Thread-Index: AQHXaauztEvt3N3pOEyYX2445oKWAatmj6pQ
Date: Fri, 6 Aug 2021 10:55:24 +0000
Message-ID: <MW3PR11MB455438B88C21F2340A3A7EDB9CF39@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-12-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-12-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1665d2f7-b894-4da4-bceb-08d958c8b1e9
x-ms-traffictypediagnostic: MWHPR11MB1423:
x-microsoft-antispam-prvs: <MWHPR11MB1423E1440F88E95622BD39949CF39@MWHPR11MB1423.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fN+UbpV/ZPEnyu7/L1204x314ApkOdeG+ElPcHMtos026cE0qRDpjnQhvnxEfuNAZnXGZqWRFjd2mbE/dkJNF7XxSkhWHO6G2yE2A3U6PcJs0wvyGvrmCpcEzntJaJknWQSzm+GSp+BECEYoVxCQpgr5vpRPksRvNLwRd0vkZLT6ApSYQZ02hXr6xo1FDSotV3WvPcsNX2CfjYnCfBBfBtkeOLbcK1/S190wKjygaWV+l8Pp6eG6iuyQgAKlDw8RC4IoTxsRvC5lWeboms01Hc0s6TQUbn26+C0QYgp01QQ4YSrl8eSwIP+omAYYaqjTG8lAwUh1VtSK0fuAmvXqBRLweTwNNSrKDgUNIJYtfhXtdDmvc6GQNM6DQy8hw7GoPvY+ZY7zTVbTjd23DsvbKae98rlXjhjvDLTU/09jt4eC00GBFkUH7jaxfrfqlei3tKcU22qFcv4L+IEoHa3RJy+jHuAiHAn3l/WqRvD9iSpdHM7Na6jI7kHUOsUBaspKYeOvPa9/dpUiWIT5X+tXpEOKDuPQDldzFtbsuVO0gx6ZpG6GVZBj9yLuWoqMNFXWblxILd0EqwUtxsFC9sH0FpHHuPI97fHwM2C3wj9XXyE9AntIeYeZ3mYVPl/Yt/5/UgiKGZNgHV1531vG4KrpdInMTaOe14DA6OMsM9tk86b3BOSakfKASa97x+/4XsjDSNBo7BGTRKQncX01O6aQhQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(71200400001)(33656002)(2906002)(122000001)(86362001)(7696005)(6506007)(26005)(38070700005)(83380400001)(55016002)(316002)(8936002)(110136005)(9686003)(38100700002)(186003)(8676002)(52536014)(5660300002)(478600001)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A6BfUS3VzysbN3uqmvFZiO0h8JZarQJ0l4WGxtUVb+We/Q5wvQgnuqy9k8g8?=
 =?us-ascii?Q?xQFB1AGsKDL98+BPCjUmTB7/KMhBqnHq4C6qlL9JX9lSnWItD67ZK3lCcu7c?=
 =?us-ascii?Q?GIWGEM/cBg094VI27y06HT9sqnFGarFvUWZMPPlyrc2ZiduiwBsX2huqxZ/r?=
 =?us-ascii?Q?NYekaMfhblVU2t+HQj5ahabIkNBNkeYEFKfyXL5j1Cr7+2/N2M03TeOA3dMu?=
 =?us-ascii?Q?tcT+LJEdC0qH3Lbk3DSkLTc/rJZcyDYTpzo29FPsV977+UlzhLGEzySw9kiy?=
 =?us-ascii?Q?u1OF38bXLqQtvumstSaWusfDcCQtP133z9hMNZ3NXn9ln5ELalmwAjaIL2Mr?=
 =?us-ascii?Q?d7GfZ3QubvmKYtAwbzVvtHj6SPIZcIAmad+dFnsNAM67lEPq6RTdOD9Eu/LR?=
 =?us-ascii?Q?kNixBaTFCS37fvFWD6RvyKdC3WNfHRh7uSnSZjIhslHE9j515ykwsAjztQFN?=
 =?us-ascii?Q?CMB/BBmEjvtQuxyGw32TMJskVHA9ltQHOEmVdkFsoY7K00ssTMwzuudyYEgm?=
 =?us-ascii?Q?CDF9VVZo/yp8zVLFgfMEfJDivnsigI9W/A077DAPIcnqOvBRXpDr7QmKQ4mQ?=
 =?us-ascii?Q?WPszMGAN+mY/C3q9Bin5wkT566d4nuFpeQY06rc8wOnARPmPr6xThMmfSYAT?=
 =?us-ascii?Q?pUnuwW89w3DTBZnNSLLCS4AhGo35fnAd4puWHdg+ODesKJXRZLP8QtCECQVV?=
 =?us-ascii?Q?VfRSA9nhb+R6HGLiYR1Om0zMrjYrRYMdsH2FgFnPpUfgU7bbtAE2vIL0jCoi?=
 =?us-ascii?Q?BH5uhVYUbIrW9+i6F1zejdYvTe3zAVu4SGfUS60u8+2MsE+Pkgyc5ZcI+RCT?=
 =?us-ascii?Q?CHoZiqe8Uzu0PGOfERjnWcznHLgqtMRgj1HEYceQVAzNhYCRqJt5MUm7H9ce?=
 =?us-ascii?Q?4Dflu2TJTsRMxtcqFvzwDUsSLOdrKJfcmhLlHbMLzllSgcw3bP4R+2JGcC2c?=
 =?us-ascii?Q?MLhikGyfP5jLObAXOMrExIZqvbYk+S+vF/G2k5ILiMExK44/KnfZXMKEpPwo?=
 =?us-ascii?Q?oKkhuDmlBuWEYF8G9ub8QfHEZjY2vhfeTMeiru/SmOAHrmSiEFWgFV1UbiYW?=
 =?us-ascii?Q?biWBBD8WzAGTvtUSnzxmiagIEk2KG/OWj1SDceLVNNjRMUlLvJamEW8mMbn/?=
 =?us-ascii?Q?du9LvfhiAB49KQRtRMeoA5uCmGgqtevUDfbCQ1Rf5E9t+pv9nLGFrJHugM3Z?=
 =?us-ascii?Q?SYb6P347fWXEuilXFCrcyDkONMw559VjILFsJTfWnua/Nko6/GN2w/73y78G?=
 =?us-ascii?Q?Z6iLwpnuH58aC4lO1G+jcY4sbAFDajmZrXnLIelloHypv5bvR6uWnX1MB/d9?=
 =?us-ascii?Q?BAkcveA3+HrntxN7gmxaLgaN?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1665d2f7-b894-4da4-bceb-08d958c8b1e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 10:55:24.9960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FIdKr7m0dffyreIejHHxP2elGI+u1Vj7Mzr8CPSPrLyiTAwfh6SmD9AbgHQv3KSZDKMNUhrgtn6SQ5GOzx7gA5wJ6WUxDdZAQyeRBspklEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1423
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 11/12] ice: switchdev slow
 path
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 11/12] ice: switchdev slow path
>
>From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
>Slow path means allowing packet to go from uplink to representor and from
>representor to correct VF on Rx site and from VF to representor and to uplink
>on Tx site.
>
>To acomplish this driver, has to set correct Tx descriptor. When packet is sent
>from representor to VF, destination should be set to VF VSI. When packet is
>sent from uplink port destination should be uplink to bypass switch
>infrastructure and send packet outside.
>
>On Rx site driver should check source VSI field from Rx descriptor and based
>on that forward packed to correct netdev. To allow this there is a target
>netdevs table in control plane VSI struct.
>
>Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c  | 79 +++++++++++++++++++
>drivers/net/ethernet/intel/ice/ice_eswitch.h  | 26 ++++++
> .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 43 ++++++++++
> drivers/net/ethernet/intel/ice/ice_repr.c     |  1 +
> drivers/net/ethernet/intel/ice/ice_txrx.c     |  3 +
> drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  4 +-
> 6 files changed, 155 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
