Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482B2443950
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 00:04:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D94B34033A;
	Tue,  2 Nov 2021 23:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FAg_C9kE7iUc; Tue,  2 Nov 2021 23:04:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF47140327;
	Tue,  2 Nov 2021 23:04:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7924E1BF406
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 669E560616
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5nokAVXBFvu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 23:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DDBC605D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:04:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="218294838"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="218294838"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="541425054"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 02 Nov 2021 16:04:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 16:04:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 16:04:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oLtlIM93t5n/5r5RYRwOBRyaOGu++Ahuqf11PrwZZF26ERvJNA/KAU7gCq//1k03mUMuqgSaSG4bhX7SQaQ8bOeCmaL/So/87z0mxX4fpBTX7WjYIdv5Xm4FIvyGFuLn1MmYccXopfEqRSoU5yfRbWgNaGC+8kuDyjtcBBUmTrqp3rfYlRAeSYsrvFRjCcuIZBPpCfY3pM8uP1kVKP8B+wtuEQXjl2dRFH378MGcNaiss9untn2qR7WPzRkjRR+9O4Lo5kKDTyvRL3cmxUnDyJJSTPFDaq79LQewCDzdGsL975bWg20UjoACoRWcGlZK7483dAxHbF+ctIuPaWohuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mABHFBbj2NC4S3G5Phowi5dyc8+/tM6vsn5uWQtUD80=;
 b=dca8ttT6NF+GC3ZfxJpc4VfOyNHxxfL8KumanCXKWB1LjsrVpN4QCE6r9KG7BGXh5i7DzPZNrhMv0/kYlLYZyrf0DPZ3j80+bpDbcn5Qs9aaHbRD4+JqhOxA3IXnoe1qUWG8/yXQbGnsrRIiWM2XVyNs0j7GLlLb0LUuU8XPZbQvNCtY7SLdbTwLqUlAPvGZEzs8CooE6uJn7Z1Hba2gsyUOdtOHscfpxYuUPxBGASfFi920oMkx/6gP1Kt2v7vp10BXMctEClQ/4QPBgFbdPmYjDc4EnMqMEHLQxRPhhsmvrnabF5Bqz0l9VkqtVY4aSUVtQMeGoWb038EkJlph1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mABHFBbj2NC4S3G5Phowi5dyc8+/tM6vsn5uWQtUD80=;
 b=wCZRE2bEIdT4qCPCYkv/CzFIsAyARL/6RlUvQsC7+seWSJLcjNrzI1VPskFhahzRTfdtfRVIMFsyfVL0IlWB8aCZp8fEEgFyzHd01FlHnItUa+V1o1HoVn+/SzB3SM2NYsqu488NZzQSoGspQeGjc+xZHSjn/X4yrZcA8joytPM=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB2946.namprd11.prod.outlook.com (2603:10b6:208:78::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 23:04:15 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Tue, 2 Nov 2021
 23:04:15 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/1] iavf: Enable setting RSS
 hash key
Thread-Index: AQHXepIRTNqmExGe90+zt1Cc9h2zUKvxhrig
Date: Tue, 2 Nov 2021 23:04:15 +0000
Message-ID: <MN2PR11MB4224AB4C3C3519E61DA054CD828B9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a3e3436-c7a0-4347-65f1-08d99e5517b6
x-ms-traffictypediagnostic: BL0PR11MB2946:
x-microsoft-antispam-prvs: <BL0PR11MB2946263B1E32596735C1083C828B9@BL0PR11MB2946.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EKfbT1NB6tcFC/E5uKgmIYLWk1LwDnv42cVzAqtNiCk0tUMiZhdo9xj43sxylWlMYt1ZLq4zF+q4KbfUV39CwMtWTZhYIZFYrJazF4kp3F5zGXrt6IKLdZpqIhn9lq0PX1I4WiJm/Zw5BsLijRWQDngxEDsP6qlMh0ZU3YTXFKRFTFRb6OfoVG0Udx3iGtpaSwlEaKnHbo0da5NgA6y5w0kwJpgB+z8KNd2sRsZXLQB4pmD5rBLmkxT5lu0pBALWR3/Cy0wUX2jmj5NggCIA0xp8Lv3sBOZSjVqscqPJSZTJY5tV24Oz1zCtjua4UWY7LeozyfLQOt/H40g0DPItY9N63xPAYEjbYPJemEm8qH44UjKK1b/wGfBNHM47WODc588VJBXbxcXenOMka3mcDZSoBsgA+uKMM3pE8JiCfKgKIqT/a06R0a3G3SgcwRCNeSQ9NII3ux1h3XWkmXe3v7GB9t3D9QLFIOMTAFxOOH45uEuFiS8TVedSEJ/aVW/dU6FPXk1i27hhLNdz6vjTfErGYJhNfv8cWNMSEjI9vf/+U1vkyhFTqQ1n6DOFLxqFgFL9MAXQYrYuQDBzxI6Y5XgHFhaXl6IdTf5Z18QMFqoD3FND7GsVTJDhX4sHF52SdEmWqgGQocg79CpG7YkMNSs1yQCiX2m7/CMWllrOgItY8d1yaW+gWnS6I7hqNJvt4ys7418q04DmlV8UzZ4/Vg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(316002)(66446008)(4744005)(7696005)(186003)(55016002)(66476007)(508600001)(64756008)(71200400001)(66556008)(122000001)(8936002)(76116006)(66946007)(83380400001)(6506007)(82960400001)(9686003)(52536014)(86362001)(2906002)(8676002)(33656002)(5660300002)(110136005)(53546011)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PKQhmBCXRe4sgsh9GWWbp4L9gZfc1LqcZx6c3HKb25Y5h1vjLRaXXxlZGA4V?=
 =?us-ascii?Q?Xh4iCktO8OocxyfgeyNVf73aO+clnHd/Bw4Jan8BCyi3BJslcHPHz3EKE76T?=
 =?us-ascii?Q?kQR0biJDDxcueeD3Qp/WiVSOcrz9y0HpaZx5Qyi9bzdrbxoHgNKsEM9K7BnR?=
 =?us-ascii?Q?0JtVXF714alfCLWkWQgLswDeuZnNxIMjQl+iJSNgICLU6RWC7rZl43mmkcLO?=
 =?us-ascii?Q?URxON+o0r5jxB/FjlewqqZCAIp7unMLExgWgo3ijgy+6+jljbwPCBlBlorGA?=
 =?us-ascii?Q?/A/M2lJVM6L54Yx/E+9Bpp1v+Q1Bd2tTRorUuIVZZWwyAzQZyl9RNM9WVEMB?=
 =?us-ascii?Q?EdHuaD1OIrc97OgHWZJJEcFr90Nkhpq811B53RfrUMPLDMw2Flr/hKuDFUWZ?=
 =?us-ascii?Q?Rn82X6I9k5knuOHFaoNki6QJm/wiE4ErXnBpbTk5//Aw0Zg9tFcIxkwHMojP?=
 =?us-ascii?Q?PQ/FU6lijV7etrw4kgFtROIBw5s76/ChIlABVW6ksNlca/KmlOTtSdV/V5AB?=
 =?us-ascii?Q?lLkiilm4sEn7uLaIYEYis6blzlhl40fJKpseEgjpSdn8Dn4NA4wHOnilIOJx?=
 =?us-ascii?Q?29ulvlwso/jwfDv6s6gU4fVsXAvMchUWlHVaXnra43FxVkuCMBzjaC8wgSnG?=
 =?us-ascii?Q?U9Y94XWX1qxFcWhlREPivlM4RyJjrcGlo5g401jOunBDEt4RlMLZ9MDner6d?=
 =?us-ascii?Q?5h4GhXJjSJdTPBOwaFBHrpYOpf8zFAvZg56YYDFDp6b9TYb988ua44uuu5l+?=
 =?us-ascii?Q?jw011ZAPuEAd9zfiLl7k5/nNcL6X0OcW9BAtYC1b60s9PgQCAnl+5v+XI+1l?=
 =?us-ascii?Q?WPhK4YuOSMrnVDoGxaS6LDPedZYcTHeQvxYu1o+1LEfo+5CL6s4+9zLfoHRh?=
 =?us-ascii?Q?VNzt860QzNF2qLuLMs2NVjBSvcskCgDyMwVocfRvcR3AMy5Ec+Jbf87I93bH?=
 =?us-ascii?Q?KvdaS0tljxt79stj/Q1QoVBmFLn9U1185i1NdvNemfhwr3L2cKYFciXvJyRx?=
 =?us-ascii?Q?2TxSKAA2td49RAgKLYJg6S6gU4rC3OngwCnxUoY+QbBiFCZtl3N87oFe+/Tm?=
 =?us-ascii?Q?sXi6J3hzapJZJIs4WJD+ccIf6lRyYE8YPMNDECRG0/7Rt6heX49x7Y92qTo6?=
 =?us-ascii?Q?bYGm/ZkVoC3G2bDMLVUPtCepvbmIMTtpqknAoxMZ5qZ3ubGjg/Am2G3ST3kQ?=
 =?us-ascii?Q?sS7fniRosnOIObDtg+IcDbrYINp4E6DGqN+1JQU4ezNayQ5iC+m1F1UTOTLB?=
 =?us-ascii?Q?w5RwOcw45vWxXySycHUHpv14YaiaE/BlG7r+9dCKhpWpwhxFLCzCCN7uWT5z?=
 =?us-ascii?Q?iDR0hvbpKhVxDzZ2nPVw7bpkseDGrUjYPjY4Ch+Sa40y4/awP00uqtLRfrZj?=
 =?us-ascii?Q?/fJv2LAVfXUu6vSiBgHey7LNrB36ix+rCd5Za1dbQ4t2P63O2wbdieRXERQd?=
 =?us-ascii?Q?OekwtO1RgqUR8aZEtbujlaQb9OcwKjA/9qv2d/if3YuX55nrsh0oIX2P5O4K?=
 =?us-ascii?Q?SY5FWx+Z48TFF82iAKIpqXfj52S8KHLHviON5usa7Jn8IwX5kfEMbFT0v+4/?=
 =?us-ascii?Q?c7qx4xBFrvlWbEWmO+WL2N0kYq3rEv0vYqL7D7v6JzJzvOEfAcxPVpOTDa8E?=
 =?us-ascii?Q?kab60VOsAYZQiM/+UZ1ATtgubl6GLejtaYuCB9r2l+u+6LtptP5jBaf7ClaY?=
 =?us-ascii?Q?ftRwNw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a3e3436-c7a0-4347-65f1-08d99e5517b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 23:04:15.5694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RJIKSWk23kAKf3r3HbW5cEDqM5WfMf+POrvznaNn33dJGNm0H0PHy7y3Av9rzA1A/0Uwqnow41bG3sPP+HaXNY1CQs6QaUpWyRBcTEKKyhQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/1] iavf: Enable setting RSS
 hash key
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
> Nguyen, Anthony L
> Sent: Friday, July 16, 2021 3:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 1/1] iavf: Enable setting RSS hash
> key
> 
> Driver support for changing the RSS hash key exists, however, checks have
> caused it to be reported as unsupported. Remove the check and allow the
> hash key to be specified.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
