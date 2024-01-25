Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FFF83BD22
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 10:22:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81B6543546;
	Thu, 25 Jan 2024 09:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81B6543546
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706174567;
	bh=oDxCJ6scPjn/SKkZSb4D0WCpFDCy/P/Ms8uKH3s/yIU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5cswP7X7UB9uZxj1RBIYurd9L9UuWdIo703nW8iQUlfcYDk9Oz3EXdY6NtBpggjaQ
	 J7JlpfyouB0sbpirbKuArIBVYe7TVS6Mn42FtD7R7Z75CoJZq7V89lmYtqPaTid+Hq
	 xM+x/XxA/WMk9reWndT/DJV8NNwUzSC/1erC7C+QEM2tzqcnun3fhtI4/TorNZ5GUQ
	 SxuTwoz4Q92fzj0T0RXzG7UVL6tOMDznWw+SpgrJiL1pjELkIkWirAubWFgAsD7B5G
	 CT0AIFT/iT+pDIuECptpXmcO0uAhyxP78ExlpoTDuAe/ykA4bFBSSYbYe7enyYod/P
	 cvG2bVkL3pwcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9qFR0uwADnaD; Thu, 25 Jan 2024 09:22:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 687C140533;
	Thu, 25 Jan 2024 09:22:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 687C140533
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9BD71BF301
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 807C0613D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:22:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 807C0613D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m9z-FM8NnXMI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 09:22:37 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 25 Jan 2024 09:22:37 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D131611C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D131611C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:22:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="1982365"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="1982365"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 01:15:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="2360570"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 01:15:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 01:15:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 01:15:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 01:15:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JDui4299R2UwrqUhNOZYzEuG0D4yAXOOYdreR4Xb1nAJN7QRdKrQjLxfZP/ktzLTRpncKo3LEaxsOnhRznGM0GX+gZ2o+Fhg233CGG/E6abQ3Ccli01/ImhRnMHcV0Kc5+nG4bslxWZtvUOLQe/T+xqZ/Hufxqvnxx6VuF0mklZF2By2tfJB+WKxVIubpE9eCrtx85JgZUlB4bo/TBjnQwRwPrTsJtqYBhoImkuXhS9iJGBecHUKPKzz9CuTTbp5/WJtmQ6PpGYiKKOb4/39+1pqtEMaGvzXehzD4JEP3UR7u9kIr86vEK7aUg11FfW41yuzbG9IMHtjDzfieJsWoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oDxCJ6scPjn/SKkZSb4D0WCpFDCy/P/Ms8uKH3s/yIU=;
 b=dud9FDKFH+9cmDiPux2i1pGcjt2dkwIRZvVyYcv5zrn41Uv6/DUzEr8FK9RRHH++xGbsVPDV3LJnYugQ0MEjZ+s0cAWDGBA03sC1d2riAQbeXbNMDCB5YNcgtMD06Ve7dlYPDvggoOSUsYZIq1RjjHQry0PFnLXtfIBOrxYP8+It7Zj4NbOp0MyFN+aaYeYyAsy21cCyCXrMBuUdYEmFsSd4RZV40IXVI3BSVvgEyvr3RjVkndmwavnus3DaBFSQiDutALOhZbbUCoF+IfWoCEYllABDHi4I65L+nte/+rp2s+jxNY7WamKTCUZUmtJmwK5vTYE44SQU+Hek4U8LRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB7878.namprd11.prod.outlook.com (2603:10b6:8:f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 09:15:24 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7202.035; Thu, 25 Jan 2024
 09:15:24 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v7 iwl-next 3/7] ice: rename
 verify_cached to has_ready_bitmap
Thread-Index: AQHaTepgPi7mKXTMFEGHvQJdnjo0NLDqQNPw
Date: Thu, 25 Jan 2024 09:15:24 +0000
Message-ID: <CYYPR11MB8429B62F0B354E33ABD4141CBD7A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-4-karol.kolacinski@intel.com>
In-Reply-To: <20240123105131.2842935-4-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB7878:EE_
x-ms-office365-filtering-correlation-id: b2146c9a-6f6b-4064-7d8a-08dc1d8629e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R4av85N5OA9Aaijvod6xIWJPF8UhmQLDEoDYMxAd0bnflWj764jSF0cfId1uiiD0KQiHCwtyOpg2eynDfbgfitHZNQXrBjuselB0bP8dACwg0hsYXGXMYdvd1Wd4bGmcmHjOiqAen6njc/FHA+Q7sFYKQzHDiXJRTyzajNDQtM0KrCpoSY/JUVSVQL3ResrXy+d0VJ4k1x0g9vmKG2PZIFxZbwPs2cJZOttSI0urHPn7UVKP9dRzndJT2huzI7paLWAcAmOSX8/TswSeOfVHZnCERSUhBr/LMd772pcKV/t+p7gUaVqF7F8EoMb4gjLNokSIVnSTMVhvxgpwvl6sMJXq8DyMM5Vaauk3Bh1NenAUkiklXVEMbJH7cq6kCpHxVj+n0kBxCHAuAEIkQz1xKSklXDJs0KnOZcNjZZxUWNl6ACHx5CJ1UfS2jq7sP3En4AbtE+4rrGriCWkazsQ/GBhaU5+qG3PrMmCEXqIvjweBRLd996itjyTdpcfOnRV9YCg0N/KEN9cqR4exU2gKDRyUdAHcelBUeRqOvImnc7YsiESVL3FFtFcPp9YHHrj4/r+tgJxY5jRi4GjWQBfibOPP2w1mF9exFERregbZqoX6zVQ9AZECIOA/WYqqBF6A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(136003)(376002)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(82960400001)(66476007)(110136005)(316002)(66556008)(66946007)(64756008)(55236004)(53546011)(26005)(122000001)(54906003)(66446008)(9686003)(107886003)(478600001)(55016003)(38100700002)(6506007)(7696005)(71200400001)(8936002)(76116006)(8676002)(4326008)(52536014)(5660300002)(83380400001)(41300700001)(86362001)(2906002)(15650500001)(33656002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kH16rrL5czORzBXchKfK3XbbPR4pGXyVLlIEb8sYR8Wj/y8ch1Zj4a3Cqxe6?=
 =?us-ascii?Q?dV/+jvX9ZpZdaX3Ghn2br5JVlZiAVCCQxTVZLcdwqtJdOp4r8X87g/pUr+a6?=
 =?us-ascii?Q?ot/4pt6f8lgnEljRFJB+AyA3xuFHI/H9bY8CLoAtGYxQGFzgyZHTNafrrWYl?=
 =?us-ascii?Q?cDO6SOErn8QPrrX6jJhfTL1GM5DK5Jz7N9t/vQ/MFARBAmbyV8gJWKGBexg1?=
 =?us-ascii?Q?cMsdxkH2MA98gR+HKgOMOlt4zOCmiR2n5Wvqm3WWN58P1eeFCGrlHViBHR5f?=
 =?us-ascii?Q?IPrrl8zxoSjS2J5tSaC4pu8U+t5OjcY5r2vr/kzZrdR4ZKgPDQW7eBcmVKVj?=
 =?us-ascii?Q?6udi6E1PrVCQh32+p2nqauHIUtDS6XFgUguYnnnhzr1n0lUCqO38zzqT5KKC?=
 =?us-ascii?Q?pi+MKWxmnDaj5Ez/7mk56RPVFRIx7TPWO8pkkD2r5lChFVRJp0lIuhFAT9R1?=
 =?us-ascii?Q?CarTi2zY6YwE4oe6/M+Pof9WR45uMGiAW/nhrLTjeaB01c4NlcBfGNm+qF7D?=
 =?us-ascii?Q?P2kE3RxBocoxVRRj4If4uNXkg/eYpHYSTpz/cv3qhrEmxZCnPpiP9AOKokvS?=
 =?us-ascii?Q?NaCC2XgUiQGfqvQnOTEIDMEo80FogPbg1afXOVF+2reUnjcDpO1ni34GmRkd?=
 =?us-ascii?Q?BE6R33DB7XSBgSLz5Vpk6GZvYCRbPsubzusobdtRCUo6Qv00Fzrr9lRCw6J8?=
 =?us-ascii?Q?XkQKLvLKuqBrTSCIZzYPsv8s3fvyTXUYItvJhAW/Zkcj+Kpng5Cg/ZNItD7L?=
 =?us-ascii?Q?JmL+F8UAQO531hxyjdasL9ulTq1J75tjXZwUd4pdRDD5So7nb/wMvYcK+WRd?=
 =?us-ascii?Q?7KBMhlYwUuIvDapgEijQ2H8ahdyUwjTxSND89tf5JvECIx8ZH8ZRZpeWxMPq?=
 =?us-ascii?Q?7BVGQkHA+My1Uc4gU7My+062r1pwR36UWcldJY2iRdlwK0zYFumsbBKS2sCa?=
 =?us-ascii?Q?vtw/06GipVsBbRpd/R0aYeFLVZBPlDJ8XlJwGwcJUKb/3pdxJV0+FM+WVDd+?=
 =?us-ascii?Q?U9l5hOZctyNjl/bL79z0X5McE41Z/v87UzCEGgqIEaqPC1zVuInhASCASqMG?=
 =?us-ascii?Q?8pcTvVO2S0VVlT3J3ZIQn9gt06VrmXJgAUv88lsEzRcTEt3KxGZHT/KXyzF2?=
 =?us-ascii?Q?Ufr2arGmuPvITw8OdLJLTukOh8vyI/ApeAjmrSOUiET/X3Sp75Ck/iCXlyQy?=
 =?us-ascii?Q?JrKGQOKBIjmrXDzW7BSqllqnj8eAbVgZqNjizvs9BnhDN7BsfqYVJbBlSuS/?=
 =?us-ascii?Q?ICv8+QYwpfivnSf+8cR6nBKES03b2pGxGX9RoYtwqeJwx6PflfMwP794T9WM?=
 =?us-ascii?Q?bnVj5HvB+a64F/805ie/3wXLrtc/6oCd/xt5ofDCtc3EYPJ3jsdGJCG9pJ+v?=
 =?us-ascii?Q?yY3JWTaq97oc3V0zSWQhXklhJmsGam92+NquluZDMWtW3ApITatMX77+7Ugd?=
 =?us-ascii?Q?flPoFyAIVXraZIlrFKwzb2MA8t2BTOcQ8/DYZlec1pCwCW/Zu7C2QcpCsf/V?=
 =?us-ascii?Q?SH7pOAoxbwJDj8weogYjTtzRoXvcRGeU0ce9Mitwicf/7m3z1N5nn8wlFThp?=
 =?us-ascii?Q?aNAVAQpEZ6zywa0YfzeQ0TDJV2bxWCLDOy4XeVSDzZB5HJTceXfqk/MI04aU?=
 =?us-ascii?Q?3w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2146c9a-6f6b-4064-7d8a-08dc1d8629e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2024 09:15:24.5340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qxf0VKMiVu7wSYn1TWpqsMx3TcITDg7KO96KUkHE5kzPgfsixNHZMCz2DdDv5HnFVGextFXuy56Zg7/ypUsgrEMSrxF6wNW3wK35EF6jh8nby/RaQMQx+JZ4bGVb2Jt4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706174558; x=1737710558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rj6zNWyu7xBRA1v1sQMIqRHysaWQXNgU8Igjc2jnsGk=;
 b=E3kECAB6WDGobVohzf0mawQkUBnan6KucL9WmQBNNAl97NIehtGrnqek
 qFYnKZ1YzsSJTP9iFplzkGtEFt1F2dwFbe+jXRh/oYkedVeO7xrtWqKtp
 0/WMSi+8ZkCaXRQ6P4EfQNA2tvOrhfjLCoH7oWDETZA5RjM3ot77pzClQ
 ENY60/rN6ffweRrtZYLoOYpRx1TlbWMZZjbtLDE2Usj1XNTFdRqWeedSP
 J0poALuaXYzq9XrIQYNvEee3qZxpk910Lz5eFbSIh7vvmAVJai29My/PP
 +rN9vTg5xJhnu8Q3LZ9s27aotSG569TC/C1zWckdQIRa7odfcPsOIKgw3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E3kECAB6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 3/7] ice: rename
 verify_cached to has_ready_bitmap
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Tuesday, January 23, 2024 4:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v7 iwl-next 3/7] ice: rename verify_cac=
hed to has_ready_bitmap
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The tx->verify_cached flag is used to inform the Tx timestamp tracking
> code whether it needs to verify the cached Tx timestamp value against
> a previous captured value. This is necessary on E810 hardware which does
> not have a Tx timestamp ready bitmap.
>
> In addition, we currently rely on the fact that the
> ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware.
> Instead of introducing a brand new flag, rename and verify_cached to
> has_ready_bitmap, inverting the relevant checks.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> V6 -> V7: renamed one missed verify_cached
> V5 -> V6: split the patch and left only rename part here
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |  8 +++++---
>  2 files changed, 11 insertions(+), 9 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

