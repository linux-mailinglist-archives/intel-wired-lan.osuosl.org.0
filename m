Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6A8443948
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Nov 2021 00:03:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBB0D40148;
	Tue,  2 Nov 2021 23:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHQacxAF73au; Tue,  2 Nov 2021 23:03:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBC7740126;
	Tue,  2 Nov 2021 23:03:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E1901BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7892B80DF3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sxGlOderTC2B for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 23:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D027280DEE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 23:03:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="212138996"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="212138996"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 16:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="583883081"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 02 Nov 2021 16:03:22 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:03:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 16:03:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 16:03:21 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 16:03:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NOz5pbzFPbmtihubSBrSSUH+8fX72oEUXf/XyahFZDZ+aqAXiaXGSqbk5U4NubENQzIDaoTgvbjxcdAc/O/hoPnDiska2xYipVU0QL/iGile+wcXP8bvyuiPw4lHkf5lMrIKBiRA+bTKq2Za6KiO4gRDZUkN+8Mxr1V5OaC2dypX6nU6EBwffL7nTrdT2hiEMP75sqB02ess+/ewffoM3GnABDN+20AY2OcBrWjQ11kdv4T/BXfX9mtiabxv90XaepW4Q6gNK2aWdxHEmHLU2Ex1nRTjSn8jJXehdH0sJG/i0ellIa5vUAJXjxeVpxoi58jDkG30jsY2PQY5/xGtrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6TSA308HnDPrQnMf7g9W84lt1rQ4h0vnVS5jdYFhP8=;
 b=KeRz1k2eOA13tdZp/QRWuMADBnP67Hx2xJrkkxUlc8EoahnoO2Uq2l8j6YqYZ6p2HxJaqIT1wZYS1oaRSIxCBVgchl60nmlTzHhlPwcPojDEZZgM3on7DttjjlPEez5KuTamlcciMr0ObdGsFEMLdLiEBM+DGPyEJiX/vfEn9nCAn1lNwf7Ev5qBEK55LBoit/BurSfMa6FUL/lFvHIA4KIczHhYo0dKQ+mk7OroPSOtYiyupzdhry02qmXhruyeH+l6TRJN7CXbDTEpvLpgd3oowZcEgepSHMk56+OMY94JKlCU/QvCG0TgNWqB/K6hvVAGChZcKkt1RykXqe6SdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d6TSA308HnDPrQnMf7g9W84lt1rQ4h0vnVS5jdYFhP8=;
 b=MJ+3gb4ewSOoWVITv/YITl/BR8Xb668srDSKamTeIebR3BVXQK9GKU092lnHy170iUWwzXe6eaH/FoN+sa03GiV6ZuAfHB+QFPwTOUvEiYAGeg/y1MPE19jvJwRMoQIEczduaTF8u0BecNKY1vA4jZRljdtsGOeAz2jMyGSNruM=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL1PR11MB5496.namprd11.prod.outlook.com (2603:10b6:208:314::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Tue, 2 Nov
 2021 23:03:20 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Tue, 2 Nov 2021
 23:03:20 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add ensurance of
 MacVlan resources for every trusted VF
Thread-Index: AQHXY0kzbGApCvbHGEaqK0OHIhqZMKvxtP8Q
Date: Tue, 2 Nov 2021 23:03:20 +0000
Message-ID: <MN2PR11MB42247CC4F3287AFB46D05B07828B9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210617071926.256183-1-karen.sornek@intel.com>
In-Reply-To: <20210617071926.256183-1-karen.sornek@intel.com>
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
x-ms-office365-filtering-correlation-id: 0ae39317-94dc-40c0-eef6-08d99e54f6e2
x-ms-traffictypediagnostic: BL1PR11MB5496:
x-microsoft-antispam-prvs: <BL1PR11MB54965EF3B9FCBCBA341070EB828B9@BL1PR11MB5496.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k7xbwKFEM+7Jck1ydQwOqcPjqgUNsckfBHmgJ2NFluILi5eShKlV+ygW4yBkXAdyvGed8yh86pcWBBvML6VItsK8PPFY596ZdQlDrca/dXmqtEvkdrtJJAnaD9Zst3k2nO93ICFXmQ6FtJSiO8BAHarxFROpdKcwYldy0M+lq+UAob4sGzfaUrM9QTA8zYYCt8n1cAevx6oX31J4vt+TEW5q9ne4PYY847R7TvFBX/Trfi7piEbyGJ5e9eFn1i1moWmdAfsKkfDFa6WE9qjqJEyDpkrU5+ln8dfgW24r1Wpk19lmpC4hsto4IXEH+Qcx7TqqtJs3dLBmXLxzYS+mjjMCPibFvXW+jaOQBDN0JWyIkjiGRPUvo3oiYk3yhvNzr528nrH9Lnc81BY8nQC7JD9KHPaPbV1Ko7Lgssa57aT7AgLa81KcA1ec44HZER11EhE/cRSiU43t6rwn5KZlOyLNrTgy73MrUnsXSBejvjFVy0IMwKmBE4UXX+fVGm4xRWVQaZkRMgok2OAelBMLoSSomLhShaR/2udiZi34yOImj6R5CiHf4oRd9Bc2S9cvPHz2dAeveoOzrPEiwiE8ltEMSo2c48dSOMQdEY7/wIxDHK+vqq5rtqpHV95cwK8SIRTTiQUsVBprlumM+g/Q3OaAQ8zRfSIefin/ILBuXNSzOKOAP6q6KUz/V0Bakp2zhzNWfnGhymKFMmb4222/Sw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(8936002)(33656002)(8676002)(83380400001)(110136005)(316002)(4326008)(122000001)(38100700002)(508600001)(86362001)(55016002)(107886003)(2906002)(82960400001)(71200400001)(186003)(7696005)(4744005)(9686003)(53546011)(6506007)(64756008)(66556008)(66476007)(66946007)(38070700005)(66446008)(52536014)(76116006)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZRW+wMgVAz5uP1xR+p8G7Rnq07dsZsxBPhJGDUqgrOnH9vd2qXEQEfX4hKcx?=
 =?us-ascii?Q?GvVsCHsPfXwt8W3zWAGsAmdKBlYvBXdYX5way3VQSNkKqxHT2hTLEqs80K9t?=
 =?us-ascii?Q?wS8Z20yL/eNiBN2wLQCl4bp/T2LH0SE+qeWx6QHVePLkqlp6R4JFqG8dMXMi?=
 =?us-ascii?Q?rc0Z9JepWpW0Ol93x/3GLKc2Y6gwGCFr68hfCfwZt9qLRPLuWWR05/JRPDky?=
 =?us-ascii?Q?Urq+CEp4kAO4GAwIZAjY3625S2DRawtHEYilb63xZchN0dOKBl5ICKXV91CG?=
 =?us-ascii?Q?3KS3XJbBCTtCDTpNgnYKFZT6oIpIFkpxYo9DHxDfHo1Zm2qQprbsX0deMtF0?=
 =?us-ascii?Q?ywtAyptF8ZbHkZeQiMHvE/AShGRs8UnOdsj3ixwEXjdQrFdUdAG79V0PQ7e8?=
 =?us-ascii?Q?elgsyDoNCitJvTGd3G791lEtYRYYdT704JH/JlfCrAQFo6ET/MJkLgKGLO0t?=
 =?us-ascii?Q?99D3exH2/VDTOZ60ixreLsvgXaWaGlKds+wGvwU/pDE8mp9F66YxZPWeTouK?=
 =?us-ascii?Q?C3b1tUKkd31ve8a+4sn6DDnNOAyjFSzBZM7FKswd4OQnX9gkluJNR8RNb2+M?=
 =?us-ascii?Q?N486Sh9pllUNWt9k+E02ApYWjEymcbdxIboaJvtyp9dASNQgeDPKcH1JqD4F?=
 =?us-ascii?Q?jX8F+wJtJaurDEQFlVAvjG5zMhFtSXyLshHng222otd5ZiPBR0lXJSFnoZxA?=
 =?us-ascii?Q?QinrZdztIwJbr0SDnVYvw8voMcsO3xuYiUGODhVZSThRk1l2veqyBkucCu1c?=
 =?us-ascii?Q?o/J4IT8g8Xje1f1hOm3V0eKlMrFbHJcU38C8Q/DnOIdXl17iqAsppTglxiJ7?=
 =?us-ascii?Q?eydd3BQQeTDEzTIzFZrjnSdX2JByBDcGpeHgYfyzPfMcq2OPM424QKShlDC2?=
 =?us-ascii?Q?4JktF5vEyE/g0fqaPRnV0NhM0KoZ2I4GClfFzeSCg9eTX9b6AMgkfSY9eufr?=
 =?us-ascii?Q?aYwcMS1+F9l8LuoiVmb5ZWdMru6y2Keu8Jmu994hC5RIH9EkSm1i7i8hjjJU?=
 =?us-ascii?Q?iwq8rbUurub28otImZUWo7NJ17MFinvCCGxrzqaVbFg1Dai+XAVDq4bNOTW0?=
 =?us-ascii?Q?LgeEJydsYBrkfZ7d6UfGw0oGfaG03Ltq/6Ql8BsAcXcIV6Mxtlp7pZ9QLP4o?=
 =?us-ascii?Q?K4dyFukhOi9kl7Is1vNDuTH1wOdhikC3qzT+NOFkH6Q/Y5r0ESxcO1TImn7c?=
 =?us-ascii?Q?FzvPBQJrqWblQQQomBkzPVS9eDLjCi3IcmM83HikE0ChMxSRCYL51zUodblL?=
 =?us-ascii?Q?i604jRwADe/lvJAX2lp6aVS+9rO6ezudomE+05t+WhdkxhtsKSAcTaKoprki?=
 =?us-ascii?Q?nUlPtdt8pZ4ssSUpbtbvGtE+vQv4ZpxmBObH/Tw35XcX5TdR8sJvsY08TAmZ?=
 =?us-ascii?Q?S+/1snAEuRUk8Vnl8B2rkD9Lw+rFGb+Llr5aHICJ/QWA6/oerPU/VM5aawPs?=
 =?us-ascii?Q?pShCTwg3Rik1Fl/jUsSH0B7Ce/qnfSqt0eTDyxo72aR6+Yc+vTyeL5oQVJbT?=
 =?us-ascii?Q?ZNHs2m6LITskDJSpND4RX19w3ssR+e2WrZZpSdi6AvnaRUgz/lUUNCLEQgpa?=
 =?us-ascii?Q?AhTWvl8WTF3G6Rky6r7K0VPYlhtY9/mL8iW5BtlvxDr1OIHKbyh49jRe7maL?=
 =?us-ascii?Q?yaDGtoTdIancYunyQLq8AeUbI4wa3Eqv4wBzh4pDCSYGEEdA1xQEWkBjq/KI?=
 =?us-ascii?Q?Ne6oaw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ae39317-94dc-40c0-eef6-08d99e54f6e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 23:03:20.4765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yiPmVn+DNtePRs6bwTpIXlTgto2nVXchcj5bw73o+I5RwweXJkajm4uk4+JNSeOqxEFqHf7P0AJkbzHHwx9U5cLyShdd7f6qlqMnVWmDDDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5496
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add ensurance of
 MacVlan resources for every trusted VF
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sornek, Karen
> Sent: Thursday, June 17, 2021 12:19 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add ensurance of
> MacVlan resources for every trusted VF
> 
> Trusted VF can use up every resource available, leaving nothing to other
> trusted VFs.
> Introduce define, which calculates MacVlan resources available based on
> maximum available MacVlan resources, bare minimum for each VF and
> number of currently allocated VFs.
> 
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 34 ++++++++++++++++---
>  1 file changed, 29 insertions(+), 5 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
