Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DD541E051
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 19:45:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7C7F4258C;
	Thu, 30 Sep 2021 17:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J5oJkhgxAOEq; Thu, 30 Sep 2021 17:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB81542599;
	Thu, 30 Sep 2021 17:45:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9AEE1BF281
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 17:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B83B461431
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 17:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSVScvk7iKQN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 17:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24BB760724
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 17:45:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="310794366"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="310794366"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 10:45:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="655980804"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 30 Sep 2021 10:45:24 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 10:45:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 30 Sep 2021 10:45:24 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 30 Sep 2021 10:45:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYZk1W0KGxiYUmRHrYYnyAvfdphPbKqV7fpoI+gDHjy2jw2u3hrnTLs214S/aj2u/5svLm4g7GqgbKVzD4sGT5uZFTCZUR9PQ818jJQkbM1wvU31g6YsPpe20/eulVm0T2qARgxldIvW6ki+AzCP4q0BLLiZ37NvBKo9LUK+DJeyPL2hkDsK/uuzrV0z5v5ddsxEPrEvhBA5MX6c4/GgY1LRIEzqJbXHt/XuPYEAIlIVgNPSGJlWxO+8VfBRMNaqDdA3NS1uCDjmVzKZIhrv6+3vGVYA5xz4947YvoPDHNvOdqLs37BljmtwQR2InLmiC3gUuW/jq5YpIs9vGkpRQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=VZevC0XM075zs0RT7S4zAgr1w3fmmLHOjaDA+L8gq8U=;
 b=g394RT1vPp+Jl8KOybABC2XJJoIJHTpAZ/b5YKFWbkLsVWAvYCuYp8MuMmD28O0ITC09cofjgH6pflyPLahqF+ZMIgSLznOQMs9Xrs9iGZEcUtK9WHQjlID94j/b1ijNP7gWMrcDobyTYSOvdlfDhlcU93jCRrQ9X6BAmsNiexIDpbraoetQhxUdJmFsTeQ/nwWxhaVvOkyKpNagJb21qifwckm/w0VMUM6rp4JpXwA+Eh5mAY/SAgcK1wiN88Lab9N0wtf1Ke40CHhGE4wE0aVNh70Bf3Ues5JsqHWcuyRr1+85kwrdfV6EFu9AARYOhvpxGLPdZqDZOqP/suJT9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VZevC0XM075zs0RT7S4zAgr1w3fmmLHOjaDA+L8gq8U=;
 b=yyd5ImW6NBGoSNNobRYx4Uka93yqMstyDpboStjyoTr3Ee/swSNmFt0XJ5owjil+dc8bvoaXNgR4CSEfTNLMUA6slLrqmWrkWQzSm1HnbLd65UKYe12xItA1ArE7keCEYwN90JuTlc3Dtk+cRVushOhpVb7GbEoDt7HaYjIf1BQ=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4450.namprd11.prod.outlook.com (2603:10b6:a03:1be::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.18; Thu, 30 Sep
 2021 17:45:22 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4566.015; Thu, 30 Sep 2021
 17:45:22 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next 1/4] ice: devlink: add shadow-ram
 region to snapshot Shadow RAM
Thread-Index: AQHXpQxBPMWz9Vbed0SLpViG3PGVZau8+5iw
Date: Thu, 30 Sep 2021 17:45:22 +0000
Message-ID: <BYAPR11MB336740251CC04C039B4877C2FCAA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210908234924.3416592-1-jacob.e.keller@intel.com>
 <20210908234924.3416592-2-jacob.e.keller@intel.com>
In-Reply-To: <20210908234924.3416592-2-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53952fd3-aef6-46f3-ad6e-08d9843a139c
x-ms-traffictypediagnostic: BY5PR11MB4450:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4450A6E861B81DFC139C11CAFCAA9@BY5PR11MB4450.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tWKyR/xe+ab8t1NwuneKgIh2ckDXOIiWolx7a9zeXF0pxhMO2k0qLLCiNz3ns+ZMvk3sLxUZgkElMAZWreEU8dV8KKgqS+m9UBVER7hleUsfcmnzWw1bBeVbfQRrHf6zc2qSfLKP8QJIH4JI2Iy8mTlIDtge9ZOJpwRiE9ODiDGnbW5+yMUEWS6nn7v2N+kxEMd56nLa1Kl7RoDl16ecu70F+deFVgGmnL9hCBFZFh7rMYM9/B9O2DF/piX7WwKNxzWaIyLeAmxbGvS2xFiLdVQBP1FPhKVSxueSTeaa/0PEGdtBN0KjP7hXaouWANsk1y9KVEjxZPgTkM3sOJPhMuWOtTvMnip0TgbO4eDYNzquhovhj159NXAPboo9CGEWwnAP8giRPKItqVyAerZabUuc/G/i5Qhr6qO55du7SoqqARxsO/rcNpxCg9O1mX0x7/Jn+czti1wxIjCXpS20AFz0b/KAU6c+wt9RiHD6jSNKsBFQ9peBO8ZTPM7K3NVuNAWt7fwBn+YRC7wDBiyTB3Oov4v10g9ydHaH7fKq3G8HsAw1s+q/f1lJ7GSoMjMmpHiz32mork8gzSr2r/BDDtwcBDB0LIr4sE7eQfZgdsapNMK4zHwz700VtS6f4R7/bEB9CqraxMZXETtxbJLwHVQcMaM5MZ7ARBCg733ds6K/GBA2EhOoK0IdmEJZQOhtIx4oTemDQYgts9c8RRmtOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(7696005)(38070700005)(53546011)(71200400001)(8936002)(6506007)(33656002)(186003)(26005)(83380400001)(316002)(122000001)(55236004)(9686003)(8676002)(66476007)(66946007)(66556008)(76116006)(64756008)(66446008)(55016002)(86362001)(508600001)(38100700002)(52536014)(2906002)(110136005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+2Zv6xS0T6/fkE4fVf51r6lBt+ymaZ3dD/F6taaYEU5yEbI84pLQ3F/yoJ66?=
 =?us-ascii?Q?YjRJwi9RtkqRfYqNhPW8PoQ/K7P/xvyoo8eYa5HpXztFaUsN+znPWGonZi5N?=
 =?us-ascii?Q?BaCeGI6psnAtKbcdRsvXEaCAhP2a8A3jGs9yaVE9XSEsCM/Ay7gktweliLzz?=
 =?us-ascii?Q?0nF4bPJECP4o3u37JFwvx3m/n0sgipqSYuVnwkabTIuMEENEbdmEYCeF2gis?=
 =?us-ascii?Q?3tj9L+1WwahVS6nJZ9rJQb0zRM+OawRYSDAqIQ+7HF99QrkukMsN6kIvKIhQ?=
 =?us-ascii?Q?v5b8QlhG1D5iHnuDsO1gCf7P8rIaz5tQkEetielW18ctr06SOFATtt8LOV9K?=
 =?us-ascii?Q?yGBHJOfR+yZBqu/0GAAz2Dd1OXYB3HIwrXWqmntQbPtRSGQ/elYEsHKvgEmf?=
 =?us-ascii?Q?CCz32uR9NcGdYgEFSzJNGABkx6BX/iNtek9MIcCg94RhIK/r6r1BShIMAlC9?=
 =?us-ascii?Q?OI156hqjpIFxBkuYZ0tBTmu6MXufi337rjCetKFwjhwo40ePOzXp2dJJZk9X?=
 =?us-ascii?Q?k25kuN87jFSSstX37EZkgqr549nKOuDXIKzl/oMXqTXjlsnE49qabw8qnqSg?=
 =?us-ascii?Q?bA+g4g4W4OVSfCm9HXBgD/Dyek6/4AweMUBEXieUBXsbNwFQZlgPxwvDmgEj?=
 =?us-ascii?Q?20106FlXn1K+d9sqU7q1mTt3CwsAAm8X7czBtOvG2IKQNvs5Hfhv/vuYV/dz?=
 =?us-ascii?Q?BPTLXsTE4jDSBm8N3bDkI0A2gwKcLEJfl/KstS6Hyfo3jYNPDcnACYc52uIT?=
 =?us-ascii?Q?VfmOR7XtofRXlC4cwR1KIh6LdY9znQsa0bb7oVmkWKcidtmDMiCi6nElkzl7?=
 =?us-ascii?Q?2HCrtQZUFyeldPWowXMYZSZItNzvl2Q4lpPOw7S7wBqJjCoTzKNuH+l0HRvP?=
 =?us-ascii?Q?xvHIoqD1Nx9x2zvc3y9ofZgsF/pi6lOtSPu2np9N3+bAD9nxWYCw8IpibP0Y?=
 =?us-ascii?Q?ZK0Ry2p2DpU0vKaXh8zBMDRtSLcXd//5XeI0TZ9U3Z74rDRTWNVWTjDEqbEq?=
 =?us-ascii?Q?g87G1EhpsJcCoO6BImeqIwaAV7VGfCkw9dHnsFdbGVMzVLRNwXzIHorvS08L?=
 =?us-ascii?Q?4DJCF0/Ft9DGlJr8vUJxh/1nG5NEUWwGL4hz7U7eWHTMwqZr96YUznUIIs5p?=
 =?us-ascii?Q?mDHeNnSW6o3tu+ton3a4WkuRNByynp8NUJQKXfe+kvVIm2PgT2edRatNwxSa?=
 =?us-ascii?Q?ZYFcG/JAP80dYm8EZkGd5U4tvMXnonV/UIx5ZyGivKz9gpC2Ctp6k6OEk6Ov?=
 =?us-ascii?Q?QKrpHzqzKEPKQaZ1Sy1K0jORrWHvWcf8kWq/fU/l+lhfsY0C4BDwDsTSa9y2?=
 =?us-ascii?Q?kaQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53952fd3-aef6-46f3-ad6e-08d9843a139c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 17:45:22.0651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vLP/B7VJHraO1w3PJ+5Fi+m8IYzT/XWixoyl3O0AU/uYONMCCRxc38T4oF6WqKAWof6J5CAkMk7wsA7skyAEvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4450
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next 1/4] ice: devlink: add shadow-ram
 region to snapshot Shadow RAM
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, September 9, 2021 5:19 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next 1/4] ice: devlink: add shadow-ram region
> to snapshot Shadow RAM
> 
> We have a region for reading the contents of the NVM flash as a snapshot.
> This region does not allow reading the Shadow RAM, as it always passes the
> FLASH_ONLY bit to the low level firmware interface.
> 
> Add a separate shadow-ram region which will allow snapshot of the current
> contents of the Shadow RAM. This data is built from the NVM contents but is
> distinct as the device builds up the Shadow RAM during initialization, so being
> able to snapshot its contents can be useful when attempting to debug flash
> related issues.
> 
> Fix the comment description of the nvm-flash region which incorrectly stated
> that it filled the shadow-ram region, and add a comment explaining that the
> nvm-flash region does not actually read the Shadow RAM.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 93 ++++++++++++++++++--
>  2 files changed, 89 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
