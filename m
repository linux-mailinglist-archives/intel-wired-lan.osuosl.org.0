Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B16358F53
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 23:39:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69C4260699;
	Thu,  8 Apr 2021 21:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KWZWZnHytRmO; Thu,  8 Apr 2021 21:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E4C7600CA;
	Thu,  8 Apr 2021 21:38:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBFF51BF860
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA67140144
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N36pCn_2pSuE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 21:38:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1ECA40140
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:38:51 +0000 (UTC)
IronPort-SDR: IpAE4UCsKxSafNDMQ80hmn1Wo/W/Qi5kQt8QV3NAIqE/04BxtOGL1io0yjUD3IAG+IXSMMc3YD
 m/cM1+P2dODA==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193181670"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="193181670"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:38:51 -0700
IronPort-SDR: KFV5nQSIMelCusppS8mgUEzLwu6juu7M3U4u20GKiBjhtKgxgBqTQQgKmOocIVFnfHknqugsx/
 nBr0gGzGPIiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="441908235"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 08 Apr 2021 14:38:51 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 14:38:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 14:38:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 14:38:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gAkjFVNGt9NyTlPvrG2QiUb8cDu80F6hIltF+jB0RKLlvHdDBy/EGJxWfhbCovQwojb+m8fUIHYOndf1UM2YmO1BWzWYMYmhylkkasBsvc9AFDdoSHu2ttq9vdWzm5jpQ4I1EaBNxLuRD7k/2CVY00aU4boVcwQPTmqq+KUUQhayiza+e4jWZQ0ZndaDXosksYn3328vT+Zl8uoeC4d+/PempIGYBy+q3H6cxPaEY2q0L1HByNZo4fwola7u6y4+jqEGJU/a5gTvjp+Y7eVUmbK5zFEnTD6w1z8GqNSlmMhFz60TEagFTZQXmQdxEsw+SkMAiDtD6D/Oj0C21bUekQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xghW+Y8Qq/o2HuO9EAjebxX1sUw8OvLvZBgZfORPcB4=;
 b=KIsp95arqgQTHLc+u/xmqH7C44pIKHl5Y4HBLQTvs5Ps8BUUpbIFUpbmytVbUzO1siIzhcXhgvJzAhS1pE+FNnHLpeYorM9r0BiBkmSbrdd8XxmFoNN32Ff87cpYCgn/X80GTTSqXmlh6oDNmJyZInYjUlssNGW2KTvOhy+g1/A/9hJQzDUbqgguaA1EhWTIKBGIPbkIXpBurC1DUsL68xn2t04KTYgAz1L1X0muNRKkbRm6pjismRlVDKX5om1DshayaFfmsZ9z6if9JAbvhtiTgyTZFgTA64lU1F1XgiCqJAnTtbP552I0DyjTepbxj7SWG6+zpP1ZmFKUZl7QOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xghW+Y8Qq/o2HuO9EAjebxX1sUw8OvLvZBgZfORPcB4=;
 b=gY07gnKD7wId3RbvYQDWYRsrbnYAm/8jtjHrvTJN4Zyi3V/isyKyjv7ckChHfBhrpuyw6l/Xpxgzc+Ju2tu7dYQwcWfRNbWosDMfpt6F1KGr51eFrWk0vHULlBqm+QvbAkXEgoTc1M3XlbS62jquBjTRrMutYqHCKinSYKcHq1E=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1294.namprd11.prod.outlook.com (2603:10b6:300:2a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Thu, 8 Apr
 2021 21:38:49 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 21:38:49 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 07/13] ice: use local for
 consistency
Thread-Index: AQHXJnS6xyAOSRGOg0y1S2m9dwtrfKqrMiEQ
Date: Thu, 8 Apr 2021 21:38:49 +0000
Message-ID: <CO1PR11MB5105459197328AED732E8DE3FA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59e444bd-c80d-432f-53d4-08d8fad6b24e
x-ms-traffictypediagnostic: MWHPR11MB1294:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB12943B1F3C29AAAB62336B7BFA749@MWHPR11MB1294.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X8DKpsMDMBWe565mkfsgCA7pnl2kaW6A5nBTJuA8SKIR4xGtbcTYkRYU7Zpazgn1y2YJCDIt86/yNUPOWTTIt0aMSvkxHIEOLEA6WDKNHT2bWV6hM554945G8ne8EVzOlFRTnA/wO3yKlILZUUWpkpM4q2NBoZV1TlH8+/eh8NZWvdClVYTyIIDSopsJlPlBQXna/2lZsTxx4Aa+ZANk8Nsfs41QYJOpM51T1Y5y7uMUvdteDhE7l2LtEgjMZmde+fJGVxRxZdaha6XzY/PQu87VEAbhjSlY41SF6iC+i+RxdRaLYh9Mz+fgIRJ6Tz4zdcDcyGtGhaSF3584+tk9fd/Q9vSZ1gy8ZZnG5gm6AwT8LD9zW1AqUtiqXqHku2kdwp8+6IGzrc9QYgIWgsBSoJiIXhhLZqnKIrR7Wdq07Rcc/pLH3onRXFwuEZrEN7TeEqMT95lSIxt2beLlsbHP+IHPfWnNTYu1qEgQvvWQzizb6mQR02Chbw4IkZ6QO9+nQaWz3lpKfsv/kU5ENjzbUdk67h3bK3DI8FfHMe8XhP2uojMtlz02m9am4SzYtl1BdrM9sDzXezx2GaCsmzPD2bgBJziGP+SnD9Hfx4Z/Pf1PhablptI7cQ/kJQy8l43gX2UEis4kU5XossXd/Bity0DH9n1uQXUUIRzI7BX8ed0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39860400002)(396003)(346002)(136003)(52536014)(83380400001)(2906002)(55016002)(64756008)(38100700001)(316002)(4744005)(66946007)(76116006)(66476007)(33656002)(66556008)(9686003)(66446008)(5660300002)(26005)(71200400001)(86362001)(478600001)(186003)(8936002)(8676002)(53546011)(7696005)(110136005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?KEj3cd5dEHArnZCuILhpdoDT61ecxB9RlFJYIBTL0C4JQdJUAkHw+qtM2UeR?=
 =?us-ascii?Q?7mjKOsYNDX95W+nLsWB1gzAM2ZXNHzahKRwt1iHVacczS/Kzn6LXNSmPPYH5?=
 =?us-ascii?Q?62PrfFfVJyCl1SYH0CU5mWN7EUx7J4cbQzUydoLEUnbQI8sU8gHYBJD8rV2l?=
 =?us-ascii?Q?3iFMsC2cDUXOqsjvjYfGU2SYz0RvoKFnfDVmq3aRraUoQf6DJ47sCpIfTfmN?=
 =?us-ascii?Q?MEcoEuiSuG/YcqaZdV0uvtWwFsiaC6qvj08MQzCQDBwxuAL6EKH6QoSYORbt?=
 =?us-ascii?Q?zrl743wX+AhMHzrXVZN41xsZw1z2BS+HI28XPEVlDpE/GNYqyOcgIY6AtT3K?=
 =?us-ascii?Q?TuGKq/uIOUVf0LLumPIVCQTEYr4NepZHszPQSJsqIRhQdOAmLfi7TZHHONJ4?=
 =?us-ascii?Q?DHslNUwgoA2Nqs3WgWm/KsVh6/ffgNgPLbHpSDRj69yJGpwtfK46ZZJ+Jop8?=
 =?us-ascii?Q?9YPUP1tVj341BzXx6XzT5m6RcS7Z4mYZdsmooJKjqpor4/30FcK6//zRAp3z?=
 =?us-ascii?Q?je9B4a0xT55Y/xB8iDrfJkaN83UlgfJ2mbqquyeyaVObcZLzzWnZWJj5YZ6X?=
 =?us-ascii?Q?v/T/6edo302hl1mWWTNiM8Iv/LmbeNmeeTvI+eN3ZVGtVzXV2tdsKuNHp6Em?=
 =?us-ascii?Q?GetXONIh5+9uTrDEWUl1UYoKBaKultOfq3nt0DddnSdBPHLa9NMABKHxDBgB?=
 =?us-ascii?Q?B3ChgfytuNtk35w9UzqvXalGvK3ZyJWM46h73gJpMt7A6fchqHj8/pr6RYi9?=
 =?us-ascii?Q?yx65yNtUzuuiY0hvWASzCdANvKfF1hpgWuHW37s0gakGNhO+SYmf+24zbWz9?=
 =?us-ascii?Q?AXJLnLQ204omvb5sf8LZIjTuOnKwJfnbSSQS928UCHz5MtcKU4xog9B1M8GP?=
 =?us-ascii?Q?bIvgf/LFVJgLpf3y+k+8KA5qez9tGSYXiyngXDjPnwczDdr9XDFe4HckvVzz?=
 =?us-ascii?Q?yJv2T1wjjuI4GgfzFTMHMiBGUSjjWhGbF7mLlWdlkw3rWvImdfPKtg51nFYU?=
 =?us-ascii?Q?Yp+hLpHuAbVaYvVJykQVHclMr4l2Bry8WMH9debUeYEzlQEaGAWpxFeV6Ceo?=
 =?us-ascii?Q?b9hC7wBkqP9ZZpiahEfgVcSvZhmuQUuzPFKNFwNrDYCplF/kvqEbEwJcp7z0?=
 =?us-ascii?Q?kw4ofX6UvPYbbx0Kjap5c5rGYye3/raT1di0NuvGaR3eK+9AWGh4g2ln+wAn?=
 =?us-ascii?Q?J89CIsi+T6CBbPDCbZKMUieje/pZ/ejjJOaoQ+EpqVhh2Fqk7qoyC7mkZAME?=
 =?us-ascii?Q?6Mrzz3Secglvo9tiO6e6m/I1XrVgGwTfg7V6JsciYQiHOIs93Wuj6/BhiRGI?=
 =?us-ascii?Q?IjzFWaDB9T1m2k38DswIAo95?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59e444bd-c80d-432f-53d4-08d8fad6b24e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 21:38:49.3611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i+oGaIXpptu63BIGH+/BEqDcljUuF2w6PDKoyel6DTbNYHxT8nt2UG3EOAFk1sYStm+AGZXlBUDeUJMotb7K09IfTCa047mK1oSFsFTeU8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 07/13] ice: use local for
 consistency
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
> Tony Nguyen
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 07/13] ice: use local for consistency
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Do a minor refactor on ice_vsi_rebuild to use a local variable to store vsi-
> >type.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
