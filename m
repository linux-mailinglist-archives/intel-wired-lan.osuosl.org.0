Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCD24423AC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 00:03:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC033400DB;
	Mon,  1 Nov 2021 23:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUSjOYSBc--P; Mon,  1 Nov 2021 23:03:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2DF04026B;
	Mon,  1 Nov 2021 23:03:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E7B7F1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D474980C90
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9SsMYG1ZWNSG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 23:03:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 304A580C5A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="317340749"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="317340749"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:03:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="727585490"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 01 Nov 2021 16:03:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:03:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 16:03:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 16:03:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SV4NcPws+JFh932RV1mvTjqzbxYOMwE3UPgDx09ojTGK8gnnIBkgyAdZvBSAj5KhD6CeNOwM0fYlNiSOGaq1ebTgxtTjKO8kdHjGzDraD8Yd9zLJn5HSfr6eM/htbbtcALc8aZzVmP3XYWxyT6KeiaSdOyovDVb1O6dypXWAch2ZCHdMNo+lIzYoFYdpGfhdgYwVjjVMF6ONEaZ3LN0gGrgX3xkt6JOCyULZ5Kx7KFOCEOBfV36/zm+e0MJOP1FDFkkzSWR79eeSlmTrSRpZsN2a0ilkl6NyKhfnIZNjpXXpwaaJEAWTokqf6+V9N66dqq8xFbTMUAx0EhQdh/SCBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i04xyUHcFmx90RgvsHSPmcE/JJ0B2m5r/+ZdG9Mbgpw=;
 b=XQTdarJGeBCJJ6i9KL7Ca7iTxSAIy74B/wZDELCeg6sBU3NkfswhiUFxeD8cpgwnmxQABFkE0aSMT/S21nSlEF22M/bjqPo+eqT03BlwiPvVpVEL+sXbM+Or1LJg+kvxx1wGB4tNGAx/G/4d+OVqHIWigMgd3zny2enUwzCSe7DyHCtQXMeaFwIkhLPPx/xDz2pOTzfW9dFnjA443xa4na1I4x9YP/7rxEineCHearIGQmbLyxHIzNknuz+yuXlFQKOViudRFXXKL7rUgdTCYOSqS7rdTVnnjpYNJMkLN4Ayyr5kzaZTa84fr7nBhwC7HnUpFJqSBZ/dqNQCz7tmkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i04xyUHcFmx90RgvsHSPmcE/JJ0B2m5r/+ZdG9Mbgpw=;
 b=TRbmGkEBCSa0xCyMzqV1R1Tx0WFc2X2S0lC7/hemJtq4kAXAoVQ0emTBbQj5rcqR/krxJUpHM1sKU8qeiMi8PNiqQJewa6Riilqp2O+iJs00gGttMGYlQ22sSpfV5mrt1K5vatDIpqUKol6YrZ+uXH4kjvfYXyhOGT6r7MAP6P8=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB3315.namprd11.prod.outlook.com (2603:10b6:208:6c::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Mon, 1 Nov
 2021 23:02:59 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Mon, 1 Nov 2021
 23:02:59 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 5/8] iavf: prevent accidental free
 of filter structure
Thread-Index: AQHXWWNnMlc7lI2x9UaARNAWkXog4qvwNmCA
Date: Mon, 1 Nov 2021 23:02:59 +0000
Message-ID: <MN2PR11MB4224B5EC0C8143C2437D9434828A9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
 <20210604164900.33156-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604164900.33156-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: d789b408-4eba-4014-892d-08d99d8bc027
x-ms-traffictypediagnostic: BL0PR11MB3315:
x-microsoft-antispam-prvs: <BL0PR11MB3315488A262DCEF90733ADFE828A9@BL0PR11MB3315.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ImI/fKiF/mOHKlCt87X2XEAOXDoRHw/7KvxrfhUNegizmZ+gIxithKQSRMKQcGqHwbfkEWo+NZXrImkwG6kqjr7bq1uu58QGTDCfB2R3/DdmBTBLd81dJlGuh4hcAHyvz1NdHocqZiSns1Er0BDc26gZSk6ned+Uvk7BR67a7lzHySa+K9KKdzt11oEE6A9fAKPlVdVMNu9BbQgAfart/dapbtEizwLDjrGXHuJdYcz4H6Cp7k1wmNdWjX884tZCK7hH1sX7efWf0k5BMRpw9zFQhYTLVZps9cciWLsYgC29wzTJ/lcRpL1hHyYVpGfw2F2/cbOm7O9YDOo6Eh7Dsp+uI0IqtA41QlSyZT6Heeg+h/uVuf3cndzidE9KvvpnoNrtab2pAptPopTH0ee/uh47t2n+FBwMZ3DOS+SHNow4lMD7PG0WZCzmE1o07MvtI1LJuvfwX7hW6IvSof1o5DbDH4v4d3O7G9GkgPDl4kxGaoJSN/ndltZqdZwWSCDpqY1i58dckGJKzs4FkFzL4hEWwpTZ+ZYoOZnyAzFwYHbPNqD3YYuyB1RFySBqNvFr/+b4EFxUWx2JNB19ZBmKlRsX8fzHZoAxlqz4IAX9s7oGEqxzEpk10i4kxtiDp5W6SWBxuRkGuaDsLj00hQQn8FNzIsVTOkerSDaZAR0wkAW0A62Dy+esIps5NTVX0viRKP27zMpkuKdM2POUfONSvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(66556008)(66446008)(316002)(38070700005)(76116006)(55016002)(64756008)(83380400001)(186003)(110136005)(66946007)(9686003)(66476007)(8936002)(33656002)(5660300002)(26005)(82960400001)(2906002)(53546011)(6506007)(38100700002)(52536014)(71200400001)(7696005)(122000001)(508600001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1qttVZfmR+cI17XoSORZyUi36DAguFgbK2X7lumG0bhGBa6Sqk7AUzg/hvUq?=
 =?us-ascii?Q?RbB/B7xu2PklySOzVlESdvwdILkvsHvkvpGdP8HPoX4o9aSkckxAQNDW06KW?=
 =?us-ascii?Q?WmrmXS9Dd1QnZqQDC4nOLDs+qUIuMVHSX0golFgp6XKI+/+Iyyken1GJM38o?=
 =?us-ascii?Q?6eB9KI/K9Ol7roXrvNUM7Wnjz1BiuPijQN8l3PVLozs+n2v2JPUS19Aw4XIg?=
 =?us-ascii?Q?jijy7KLcIBfWkgdlNrIJ6EWiO7olv/7jl/4jFzyOrsjZwmgjfUrnwLk2Of3q?=
 =?us-ascii?Q?RPiVFeuFnTjEU0syaZXZ/gBzWBVfjQPHQF9yTUWjkmat+Kcmt6Ina49EFfNv?=
 =?us-ascii?Q?eWeH7L3vB8Wn9hm1HBzGXZoqG3HzH1gIdkV/6YosZTgTVQJAFDR8Zg6DEzWD?=
 =?us-ascii?Q?q5r22kL+lct3aDaXyGHcgG3rOottEcr7ikWtl2KcR5OCnA/jmkxzjdiM5htz?=
 =?us-ascii?Q?qIo6Y/wsday0z27dt4P6+VF5cKenqWuJEiYYpdHKlZVY6Z3BNVGBPSIG6L0o?=
 =?us-ascii?Q?iNG51EJy5XIaoGw0nKcMxrXaMODPM8VX9uiN4O/wbzTC9zLr+JhUetN2pWBK?=
 =?us-ascii?Q?YAQytcTDXHa68/nDGYIG/W/iYdLX7x4t/46loy1lWnlO5WARaClBAYyqY2bZ?=
 =?us-ascii?Q?abXzGxXs70zf3gi77vzmD88Nrtf1JvL4zFSIwwXCUEWQPo6PForeECEaos2H?=
 =?us-ascii?Q?WmVsNKveKFFrsFQmLaZ38wcAq3VNKTjFSeBkiWwC3iInayHAZnrSjM32q6lJ?=
 =?us-ascii?Q?GOEEHzB4+4TX99LEOZsWm1nsMCmhU6HCXoRuXJ6Zqr4F821kSHJAVp1C+Ved?=
 =?us-ascii?Q?r56jh3ZbZK47dMelxFtPE/dc+JH6l5k4GTQhlCt2pJDTk2mlWJY3dkN1kydY?=
 =?us-ascii?Q?3gdfNxWFsMDHS9ySy1+dcoiDVSBWNf5FDwM/cstwZ2udbl2+AusB4jAp3Mf/?=
 =?us-ascii?Q?/i6vcogfDLsc3HbJacCXpT50W/AXLWnEbCIrN5j655KL4Sd7d15XHbeLy00F?=
 =?us-ascii?Q?53Ld5/ApBc2cQZYjcR7llAVy5RjUHMtW1Oqq8fLerxpDUtEFj9bmtcbLheUX?=
 =?us-ascii?Q?tr1le/A5iWyiiSr3Uf+hXWUG2u9ESrOSckTOWbEy6h0EiT7rxcp9PiVLeCg1?=
 =?us-ascii?Q?Z39QjtkwUoVZ9Nx7/IlcoA99I5gUeeAnEw8TlhCDCQRXFLHbGBnRfkcsfBVy?=
 =?us-ascii?Q?h0Hx3j0FgubtlljyzhrKcCYCq+1XIm3WlxeP8LrQdqIgubT0lJ+to7U2PHYO?=
 =?us-ascii?Q?nfi2BiFWV0ZzJCUbCUJP1X0WYgoL+rATMuqbwDhlevg69aEr8OZYydV2SitL?=
 =?us-ascii?Q?35A+jOjijNUDxReO6lgBAQwhidPWERYkpv1A0IfdvizKZN1ce7Zo59I1Q+c/?=
 =?us-ascii?Q?FZdtJkyB4CKmd13SYya9oQbddKYNDpnrgFTxEiXFOOGduSC7NIgjyL9g92PC?=
 =?us-ascii?Q?PgBNhC/BtriWLAjuklMrJFdyD8OkImLjhBBFXP2kjXatdUeZSHt8mvn+dq3Y?=
 =?us-ascii?Q?qt6MzkGUKcaauhZMkEaFUXDsHZ9rUyjaNkPZWyILfy9iXUBzhIU9+z36KKYp?=
 =?us-ascii?Q?6zL0pDjbwD8lwyPifDhELjg9s1S2oE2EZiQc7cV5BfsWdMuBK8Ezpvz0Yvdu?=
 =?us-ascii?Q?0wTYyeOGj/9TJ4c1YcEbjYPRkwpTCyIlisYXG0U8dZ+Rl6u5WKS5c8x12mbq?=
 =?us-ascii?Q?sj017Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d789b408-4eba-4014-892d-08d99d8bc027
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 23:02:59.7768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yFECJ/TM+dRXxbeUM3cR/Gz8FDIVOrlra3D9I9FWN5gJdIWLi1VKeuNQwha7HTMJidUy+rNn2IWb/N5NsaxEOYnL1skRXW0CZMNN8t/BALw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3315
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 5/8] iavf: prevent accidental free
 of filter structure
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
> Sent: Friday, June 4, 2021 9:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 5/8] iavf: prevent accidental free of
> filter structure
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> In iavf_config_clsflower, the filter structure could be accidentally released at
> the end, if iavf_parse_cls_flower or iavf_handle_tclass ever return a non-
> zero but positive value.
> 
> In this case, the function continues through to the end, and will call
> kfree() on the filter structure even though it has been added to the linked
> list.
> 
> This can actually happen because iavf_parse_cls_flower will return a positive
> IAVF_ERR_CONFIG value instead of the traditional negative error codes.
> 
> Fix this by ensuring that the kfree() check and error checks are similar. Use
> the more idiomatic "if (err)" to catch all non-zero error codes.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
