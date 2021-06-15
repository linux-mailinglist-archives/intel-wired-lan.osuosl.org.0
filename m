Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DD73A81C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jun 2021 16:05:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A88B83BFB;
	Tue, 15 Jun 2021 14:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id he1utO-k3xQe; Tue, 15 Jun 2021 14:05:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C21983BF3;
	Tue, 15 Jun 2021 14:05:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C24511BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 08:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B012D8398E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 08:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dA-hZpgOmdg6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jun 2021 08:13:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 810AB8380B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 08:13:36 +0000 (UTC)
IronPort-SDR: sxHx8v7YiXVtVbwmcZJ0X+shiYVaRlNmBaCjsAINiYnlIGEgrrlhyuol9Q5C047jB6sh2clpLU
 FZ84qQbT15YQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="227410537"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; 
 d="scan'208,223";a="227410537"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 01:13:32 -0700
IronPort-SDR: Gn+y5j2ocH4vjSaiMYRk3IEFJpTP/VXevV6aebSrVvXsteuvUGQW9aHO3OSEXgIufoHFxemSDJ
 Y28ICj0qwlIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; 
 d="scan'208,223";a="403904156"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 15 Jun 2021 01:13:30 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 15 Jun 2021 01:13:29 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 15 Jun 2021 01:13:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 15 Jun 2021 01:13:29 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 15 Jun 2021 01:13:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=drfA4o9Hd4DS8FQzGQX3Z+NfC82Z0u9/Lb7ofKt6CEwMlH8kx51Y7Gxzcae7r2iPka2yJ4pYyXiCW3Sr8AC+ncGOvTzRqBp4i+afMTZczdikMlpkA3xvfBSbRWKXO1h1D/sa9t4vI6FD5yE02CN1ENLrEGLu+PPGKWpEOHw2VW3OJ5fFNsPTFviyj+1QDiv1yWy8raZ3S5VGItP2gJeXWtZ6g7k6TA7akNc39emTxUGS+KQJ9NW608eFNl0EHDqAr97pE8XcUl/Tlrcu1GQQ8tAWfkE1O6XLYSOhX6yTjr6F/+cUY9Jj1BzxvxfHtJxFShgGQONlYVK8+jB+QzU64Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hs3N4y35SjEDsYZoPK6ZIjTCh20dOPUi5JvioMhnM0o=;
 b=TNTsDwaobHmJjWO3hNEAOSjJjetNfsqm/jrhyYxamuyUVsYnl1KE6NqM6opq6LRgnULs2kHL/vGqcyzhNqC8JZnHtUmeTvs3On9RMnu/2/Atpp7VfTsdltjcFHyYbzTdCbu/K8NeQVbmOoD9ZB7BisrnepGxXTD0oybKPCSHgyDL2ppOy85iy00DBGqMuy1zn+fcOSiDRm9oSj89Abiyvw0mgcowTt4lh+4MBhY5eyqm7Uf9xRcyi5FfqSWON3y5xo3B7JxslCF2cFjUQFZz2F731GtBB6Udw1vzk98kDtx0WzAA4Oe/5CSpehdIjhvNE5SNUBiU8bCLOuXTXc+w/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hs3N4y35SjEDsYZoPK6ZIjTCh20dOPUi5JvioMhnM0o=;
 b=gAv23zf4eRoSmN3Fnb/SC6DVvRPToDJJBiiCkeOGJ/Vwg4KlpVuqt3uWyQVv60oQ2eGzhiZThYonqSghlD4vxJIB2AuEZb5DEvjfobAXsaEgPe0Jt+MSSLaIb3laFpyxM2XQT/V/Ny7kPHniGVQb5ldijxrPLMSXd2WMdzp0G/8=
Received: from PH0PR11MB4951.namprd11.prod.outlook.com (2603:10b6:510:43::5)
 by PH0PR11MB4902.namprd11.prod.outlook.com (2603:10b6:510:37::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.25; Tue, 15 Jun
 2021 08:13:26 +0000
Received: from PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::1029:5aea:7b5c:11ac]) by PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::1029:5aea:7b5c:11ac%4]) with mapi id 15.20.4219.025; Tue, 15 Jun 2021
 08:13:26 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] ice: add support for auxiliary input/output pins
Thread-Index: AQHXXW5TY3SjvrzytUO8shrsD7+Um6sTxtgAgAADEACAAOAYMA==
Date: Tue, 15 Jun 2021 08:13:25 +0000
Message-ID: <PH0PR11MB495168C6A9DBB0429FEBC82DEA309@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210609202937.1135836-1-jacob.e.keller@intel.com>
 <81762743e833402ca3c959050862cbdbacf47e86.camel@intel.com>
 <0871761b-d2bd-4d98-b4c6-0779a19d62cf@intel.com>
In-Reply-To: <0871761b-d2bd-4d98-b4c6-0779a19d62cf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [83.8.236.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a31fd35-e0c8-4fbc-dcf4-08d92fd5736e
x-ms-traffictypediagnostic: PH0PR11MB4902:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR11MB49022E18A698F1F899B6B4D1EA309@PH0PR11MB4902.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /t8XPkDzhbPUwtjKPw24Q466sO8wvqrE7rBakWU2dh+kygxgLMM3Qgdh8QhfVWIjRbIHoDpqfVYlAqE2RW9QoTanka/Axo1ZE1TU0QHLatNfgBqTy6hK+iUlFfvaV4ht/wgowDGF+e10i1eHjOraMCK9GZoh5+e2qKH+vYS3oaNoTqTho9kqBvqGNJTh2+Xm5oD949WthcBLpr/vmvCNchT0ymKk7dy3/oYOnjhvrFNPVxhLyfkIFwIOBE5+ttKcLJze1RGFYzIbX5YyQvDC8k+Ryt3GHq3tQ9Xh70gdchwLT3G3CH95Wo7yy8dWSXmrnXTvtvbzLmrLRnEIG9yd+G5yWEzUZ3sTkBBTGjHd6urhAD1jh+0r4EVlkKHFo00Uiq3v3oaoq61/Gax+Xn70MGu3khebxxadGCUojcPVjqwLwPUHqvOLuYlouPk0u6vcF1+TZNK6SPAK4EFuv7cF5H36uuBhwmqMqJe7iKAiuiUN0U/2iP10V2ka16ihFY0JDOF5CMfglHOe6b+NOw/WgAwv0UY8x8aXTH0TZj802rEMwDCDIwvjzGL4QxiGBIZbTS/eww5/uXbctRuA9QD7f5ybeX84+X+yciOK6AtZQXQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(366004)(346002)(396003)(66616009)(66946007)(66556008)(66476007)(76116006)(2906002)(9686003)(64756008)(316002)(33656002)(52536014)(55016002)(66446008)(5660300002)(110136005)(71200400001)(122000001)(8936002)(186003)(8676002)(83380400001)(86362001)(38100700002)(7696005)(6506007)(53546011)(99936003)(26005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3QySzdQTTV5OHM4c3VXN2VJZHpvVWVuVm0raGVYN0hQNUsyTXFFTElhVjdC?=
 =?utf-8?B?b0NEbGM2MWpWY01vSFJpcFJRL0FtNTU4WWM5K0dMS3FNb0ZCUGJZMEJLdm9X?=
 =?utf-8?B?dEdWMGlETHlSYnY1REl0VmtJU00vQkJmamFJNVJaaXhDWlYzbk80a3M0bnNC?=
 =?utf-8?B?YUNYWVNlcGdNNVFreUQrZmZNb25IUkR3ZTNLV0FRNC9RNzVTTldhK2dHYWQw?=
 =?utf-8?B?d241eThodmltK29YeU5jN3grbEVocDFpajJkZi9hMmNIV0g0OWxkWUxvcTEr?=
 =?utf-8?B?UUJPZWFYOTJzY3V1VDBlZGx2Yi9jejZNSTkxVDRlcVFQTkhIeVRNZVJnYW9R?=
 =?utf-8?B?bHU0RXBaQlZIaFFtMDFrSWxXMy9yM0xtZ2FLV3ZOQTBuazkrYmZaRmc5ZHJD?=
 =?utf-8?B?OWk3aGRVeGtpclV6MTZmRmlLek9vRWhLdk01TGlMWi9SODJzNEszdEo1b3BN?=
 =?utf-8?B?V2ZqMGZER1IzUTQvK1k5NVpHbkx4QWVMMG9XeW1HZ3pIN2MxYUtKSFFQTCto?=
 =?utf-8?B?dEhYR2NKb2hRTHVneCtYLzd4bGJ6d0dUL241RGJjRkFxNEdRRjJYbFZzVWph?=
 =?utf-8?B?ZVNWcHcvc3JuMlF4STdKY3Z0N1FtTldFTTRqRGpmc05sOGJJRFZYN3JyRHQ1?=
 =?utf-8?B?VVBuVk1pazdpdlJnK2xwVWRVcUxmNkhVYi9hb09ERThkcVpaNStqbllDbmxt?=
 =?utf-8?B?cGJydWlxcmg0a3dOS3Jha1gwdUlzR1JoR3l1OENMK3NKTWF0UFpOK3dyUnla?=
 =?utf-8?B?YThZb09GUjdjdDhxemZ3VXYzZWc0cUxKYW1sdGROUUhaNWdhU3NiK09OcHVq?=
 =?utf-8?B?WjdCNDJsS0srRDgrbE5WdlhOS1YzWTNVT0hGdDRFVzJidDFibWplRUVPRDY4?=
 =?utf-8?B?NVRzdkRDdWUzeG50YlBkQVRJejVGd0l0SlVpOGRUSUFMOWpTd0EzbllaQUxL?=
 =?utf-8?B?WHU2Z01lcmVaMm9MalJyWGVXYy84TGYwNTNMdlFJa25SMmU5QTZBUGtYZjBz?=
 =?utf-8?B?WElaTEo0aFJONmhjbmxXWWpxWDhlNlVRdGkvcW9FQ0d2V0pkaDVWTHZCM1VO?=
 =?utf-8?B?ZTBWbUtTMlBEc0lESnhPSFNMenpPZ2tUS25EZU9GOHQ4TThua1R3YWh5aTM3?=
 =?utf-8?B?OGpzWmkxaEwwYytaSWl2d3psb2ZJb1RzVHdUZGpWajJLQVFOZ3pDSGZrSFBM?=
 =?utf-8?B?WXJwclBMWkdQbFB0YVE4Mk00VkIvVU9SSU9XM0VmS1hKUlM2ZHFzSG1wQmI1?=
 =?utf-8?B?TXp1UHpUdkk3V3MyQ3NOekNDOUo3akpKbm9KZklUQ1pWNHJUcEs1QzlIMUNK?=
 =?utf-8?B?b25MeWplL3lpN3l1VmV2cW5sdXVLSng3cVhwNHJiTmVHTnpyLytJeEUyMWE5?=
 =?utf-8?B?OG14VzhjaHRQd2V4SjQzQ1praXEyUDhNU0NGdklKWHRGNTBYUWdtbVBLMW5q?=
 =?utf-8?B?YjN6VzYrdFc0dGpNYXRFN1JCL25jNXRiU0ZleEF4QjJEK0t2dFlPRWtpNVhL?=
 =?utf-8?B?T0JJejRHd0trZUxjZWhsV2NFOFlzK3Nyc0l2Uzk1c0dxaFFmN0xUMzBibEg4?=
 =?utf-8?B?bkZQU084QTR3M0NXQk9CSlV3YmFBamRNaUVsWHZkdVNEM0RsSi9lZGQ1SDJN?=
 =?utf-8?B?SG9ZY1JEWEhyUmtyUk1YYjg5QUpudExhNWRFcEpiOWN5THQ5RzAvOGhYTmox?=
 =?utf-8?B?Y0VZYUUyQ1NBcnl2aExLTFVPN2dHL0F0YlB6OVRKK2Fuend1SWhLalpZUERS?=
 =?utf-8?Q?poBYgg6rx1CwYJB8Hw=3D?=
Content-Type: multipart/mixed;
 boundary="_002_PH0PR11MB495168C6A9DBB0429FEBC82DEA309PH0PR11MB4951namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a31fd35-e0c8-4fbc-dcf4-08d92fd5736e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2021 08:13:25.9974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dpMly4SJoOV8eTSuIZDMpNdUM21O+qm9pTPJAFKc1odsy8zPtykg6FZ6vg1Ew1Fgq0bSBZ5ISDH811RfHJF4oAa+E1Awu3CsWDrYYoBCyAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4902
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 15 Jun 2021 14:05:05 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ice: add support for auxiliary
 input/output pins
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_002_PH0PR11MB495168C6A9DBB0429FEBC82DEA309PH0PR11MB4951namp_
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgSnVuZSAxNCwgMjAy
MSA3OjI2IFBNDQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IE1hY2hu
aWtvd3NraSwgTWFjaWVqIDxtYWNpZWoubWFjaG5pa293c2tpQGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSF0gaWNlOiBhZGQgc3VwcG9ydCBmb3IgYXV4aWxpYXJ5IGlucHV0L291dHB1
dCBwaW5zDQo+IA0KPiANCj4gDQo+IE9uIDYvMTQvMjAyMSAxMDoxNSBBTSwgTmd1eWVuLCBBbnRo
b255IEwgd3JvdGU6DQo+ID4gT24gV2VkLCAyMDIxLTA2LTA5IGF0IDEzOjI5IC0wNzAwLCBKYWNv
YiBLZWxsZXIgd3JvdGU6DQo+ID4+IEZyb206IE1hY2llaiBNYWNobmlrb3dza2kgPG1hY2llai5t
YWNobmlrb3dza2lAaW50ZWwuY29tPg0KPiA+Pg0KPiA+PiBUaGUgRTgxMCBkZXZpY2Ugc3VwcG9y
dHMgcHJvZ3JhbW1hYmxlIHBpbnMgZm9yIGVuYWJsaW5nIGJvdGggaW5wdXQNCj4gPj4gYW5kDQo+
ID4+IG91dHB1dCBldmVudHMgcmVsYXRlZCB0byB0aGUgUFRQIGhhcmR3YXJlIGNsb2NrLiBUaGlz
IGluY2x1ZGVzIGJvdGgNCj4gPj4gb3V0cHV0IHNpZ25hbHMgd2l0aCBwcm9ncmFtbWFibGUgcGVy
aW9kLCBhcyB3ZWxsIGFzIHRpbWVzdGFtcGluZyBvZg0KPiA+PiBldmVudHMgb24gaW5wdXQgcGlu
cy4NCj4gPj4NCj4gPj4gQWRkIHN1cHBvcnQgZm9yIGVuYWJsaW5nIHRoZXNlIHVzaW5nIHRoZSBD
T05GSUdfUFRQXzE1ODhfQ0xPQ0sNCj4gPj4gaW50ZXJmYWNlLg0KPiA+Pg0KPiA+PiBUaGlzIGFs
bG93cyBwcm9ncmFtbWluZyB0aGUgc29mdHdhcmUgZGVmaW5lZCBwaW5zIHRvIHRha2UgYWR2YW50
YWdlDQo+ID4+IG9mDQo+ID4+IHRoZSBoYXJkd2FyZSBjbG9jayBmZWF0dXJlcy4NCj4gPj4NCj4g
Pj4gU2lnbmVkLW9mZi1ieTogTWFjaWVqIE1hY2huaWtvd3NraSA8bWFjaWVqLm1hY2huaWtvd3Nr
aUBpbnRlbC5jb20+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPg0KPiA+PiAtLS0NCj4gPg0KPiA+IEknbSBzZWVpbmcgdGhpcyBmb3Ig
YSAzMmJpdCBidWlsZDoNCj4gPg0KPiA+PiBtYWtlWzJdOiAqKiogRGVsZXRpbmcgZmlsZSAnbW9k
dWxlcy1vbmx5LnN5bXZlcnMnDQo+ID4+IEVSUk9SOiBtb2Rwb3N0OiAiX191ZGl2ZGkzIiBbZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5rb10NCj4gPiB1bmRlZmluZWQhDQo+ID4+
IEVSUk9SOiBtb2Rwb3N0OiAiX191bW9kZGkzIiBbZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZS5rb10NCj4gPiB1bmRlZmluZWQhDQo+ID4+IG1ha2VbMl06ICoqKiBbLi4vc2NyaXB0
cy9NYWtlZmlsZS5tb2Rwb3N0OjE1MDogbW9kdWxlcy1vbmx5LnN5bXZlcnNdDQo+ID4gRXJyb3Ig
MQ0KPiA+PiBtYWtlWzFdOiAqKiogWy9uZXh0LXF1ZXVlL01ha2VmaWxlOjE3NTQ6IG1vZHVsZXNd
IEVycm9yIDINCj4gPj4gbWFrZTogKioqIFtNYWtlZmlsZToyMTU6IF9fc3ViLW1ha2VdIEVycm9y
IDINCj4gPg0KPiANCj4gSSdtIG5vdCBjZXJ0YWluIHdoaWNoIGRpdmlzaW9ucyBhcmUgY2F1c2lu
ZyBwcm9ibGVtcywgYnV0IEkgc3VzcGVjdCBpdA0KPiBpcyB0aGUgcm91bmR1cCgpIG1hY3JvIGFu
ZC9vciBzb21lIG9mIHRoZSAlIG1vZHVsbyBvcGVyYXRpb25zLg0KDQpUaGlzIHBhdGNoIHNob3Vs
ZCBmaXggdGhhdCBpc3N1ZS4gSXQgcmVtb3ZlcyBhbGwgb2YgdGhlIGJ1aWx0LWluIG9wZXJhdGlv
bnMgZG9uZSBvbiB1NjQuDQpMZXQgbWUga25vdyBpZiBpdCB3b3Jrcy4NCg0KUmVnYXJkcw0KTWFj
aWVrDQpJbnRlbCBUZWNobm9sb2d5IFBvbGFuZCBzcC4geiBvLm8uCnVsLiBTb3dhY2tpZWdvIDE3
MyB8IDgwLTI5OCBHZGFzayB8IFNkIFJlam9ub3d5IEdkYXNrIFBub2MgfCBWSUkgV3lkemlhIEdv
c3BvZGFyY3p5IEtyYWpvd2VnbyBSZWplc3RydSBTZG93ZWdvIC0gS1JTIDEwMTg4MiB8IE5JUCA5
NTctMDctNTItMzE2IHwgS2FwaXRhIHpha2Fkb3d5IDIwMC4wMDAgUExOLgpUYSB3aWFkb21vIHdy
YXogeiB6YWN6bmlrYW1pIGplc3QgcHJ6ZXpuYWN6b25hIGRsYSBva3JlbG9uZWdvIGFkcmVzYXRh
IGkgbW9lIHphd2llcmEgaW5mb3JtYWNqZSBwb3VmbmUuIFcgcmF6aWUgcHJ6eXBhZGtvd2VnbyBv
dHJ6eW1hbmlhIHRlaiB3aWFkb21vY2ksIHByb3NpbXkgbyBwb3dpYWRvbWllbmllIG5hZGF3Y3kg
b3JheiB0cndhZSBqZWogdXN1bmljaWU7IGpha2lla29sd2llayBwcnplZ2xkYW5pZSBsdWIgcm96
cG93c3plY2huaWFuaWUgamVzdCB6YWJyb25pb25lLgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFj
aG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IgdGhlIHNvbGUgdXNl
IG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29w
aWVzOyBhbnkgcmV2aWV3IG9yIGRpc3RyaWJ1dGlvbiBieSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJv
aGliaXRlZC4K

--_002_PH0PR11MB495168C6A9DBB0429FEBC82DEA309PH0PR11MB4951namp_
Content-Type: application/octet-stream;
	name="0001-ice-Fix-phase-calculation-in-ice_ptp_cfg_clkout.patch"
Content-Description: 0001-ice-Fix-phase-calculation-in-ice_ptp_cfg_clkout.patch
Content-Disposition: attachment;
	filename="0001-ice-Fix-phase-calculation-in-ice_ptp_cfg_clkout.patch";
	size=2132; creation-date="Tue, 15 Jun 2021 08:06:00 GMT";
	modification-date="Tue, 15 Jun 2021 08:06:00 GMT"
Content-Transfer-Encoding: base64

RnJvbSA4NWQ2YmQzOGZiZGI3ZWE2OTYwYmQyNTJjZmY1YTg0NzQ4NjEzZWJmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYWNpZWogTWFjaG5pa293c2tpIDxtYWNpZWoubWFjaG5pa293
c2tpQGludGVsLmNvbT4KRGF0ZTogVHVlLCAxNSBKdW4gMjAyMSAwOTo0NzozMiArMDIwMApTdWJq
ZWN0OiBbUEFUQ0hdIGljZTogRml4IHBoYXNlIGNhbGN1bGF0aW9uIGluIGljZV9wdHBfY2ZnX2Ns
a291dAoKQWRkIHByb3BlciBwaGFzZSBjYWxjdWxhdGlvbiBmb3IgcGVyaW9kaWMgb3V0cHV0IGNs
b2Nrcy4KClNpZ25lZC1vZmYtYnk6IE1hY2huaWtvd3NraSwgTWFjaWVqIDxtYWNpZWoubWFjaG5p
a293c2tpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3B0cC5jIHwgOSArKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKaW5k
ZXggN2Q2YmRjZjk2YzAwLi4wMjUwM2E1ZDUzYTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9wdHAuYwpAQCAtNjAwLDcgKzYwMCw3IEBAIGljZV9wdHBfY2ZnX2V4dHRzKHN0
cnVjdCBpY2VfcGYgKnBmLCBib29sIGVuYSwgdW5zaWduZWQgaW50IGNoYW4sIHUzMiBncGlvX3Bp
biwKIHN0YXRpYyBpbnQgaWNlX3B0cF9jZmdfY2xrb3V0KHN0cnVjdCBpY2VfcGYgKnBmLCB1bnNp
Z25lZCBpbnQgY2hhbiwKIAkJCSAgICAgIHN0cnVjdCBpY2VfcGVyb3V0X2NoYW5uZWwgKmNvbmZp
ZywgYm9vbCBzdG9yZSkKIHsKLQl1NjQgY3VycmVudF90aW1lLCBwZXJpb2QsIHN0YXJ0X3RpbWU7
CisJdTY0IGN1cnJlbnRfdGltZSwgcGVyaW9kLCBzdGFydF90aW1lLCBwaGFzZTsKIAlzdHJ1Y3Qg
aWNlX2h3ICpodyA9ICZwZi0+aHc7CiAJdTMyIGZ1bmMsIHZhbCwgZ3Bpb19waW47CiAJdTggdG1y
X2lkeDsKQEAgLTYzMSw2ICs2MzEsNyBAQCBzdGF0aWMgaW50IGljZV9wdHBfY2ZnX2Nsa291dChz
dHJ1Y3QgaWNlX3BmICpwZiwgdW5zaWduZWQgaW50IGNoYW4sCiAJfQogCXBlcmlvZCA9IGNvbmZp
Zy0+cGVyaW9kOwogCXN0YXJ0X3RpbWUgPSBjb25maWctPnN0YXJ0X3RpbWU7CisJZGl2NjRfdTY0
X3JlbShzdGFydF90aW1lLCBwZXJpb2QsICZwaGFzZSk7CiAJZ3Bpb19waW4gPSBjb25maWctPmdw
aW9fcGluOwogCiAJLyogMS4gV3JpdGUgY2xrb3V0IHdpdGggaGFsZiBvZiByZXF1aXJlZCBwZXJp
b2QgdmFsdWUgKi8KQEAgLTY1OSw4ICs2NjAsOCBAQCBzdGF0aWMgaW50IGljZV9wdHBfY2ZnX2Ns
a291dChzdHJ1Y3QgaWNlX3BmICpwZiwgdW5zaWduZWQgaW50IGNoYW4sCiAJICogbWFpbnRhaW5p
bmcgcGhhc2UKIAkgKi8KIAlpZiAoc3RhcnRfdGltZSA8IGN1cnJlbnRfdGltZSkKLQkJc3RhcnRf
dGltZSA9IHJvdW5kdXAoY3VycmVudF90aW1lICsgTlNFQ19QRVJfTVNFQywKLQkJCQkgICAgIE5T
RUNfUEVSX1NFQykgKyBzdGFydF90aW1lICUgTlNFQ19QRVJfU0VDOworCQlzdGFydF90aW1lID0g
ZGl2NjRfdTY0KGN1cnJlbnRfdGltZSArIE5TRUNfUEVSX01TRUMgLSAxLAorCQkJCSAgICAgTlNF
Q19QRVJfU0VDKSAqIE5TRUNfUEVSX1NFQyArIHBoYXNlOwogCiAJc3RhcnRfdGltZSAtPSBFODEw
X09VVF9QUk9QX0RFTEFZX05TOwogCkBAIC02ODIsNyArNjgzLDcgQEAgc3RhdGljIGludCBpY2Vf
cHRwX2NmZ19jbGtvdXQoc3RydWN0IGljZV9wZiAqcGYsIHVuc2lnbmVkIGludCBjaGFuLAogCWlm
IChzdG9yZSkgewogCQltZW1jcHkoJnBmLT5wdHAucGVyb3V0X2NoYW5uZWxzW2NoYW5dLCBjb25m
aWcsCiAJCSAgICAgICBzaXplb2Yoc3RydWN0IGljZV9wZXJvdXRfY2hhbm5lbCkpOwotCQlwZi0+
cHRwLnBlcm91dF9jaGFubmVsc1tjaGFuXS5zdGFydF90aW1lICU9IE5TRUNfUEVSX1NFQzsKKwkJ
cGYtPnB0cC5wZXJvdXRfY2hhbm5lbHNbY2hhbl0uc3RhcnRfdGltZSA9IHBoYXNlOwogCX0KIAog
CXJldHVybiAwOwotLSAKMi4yNi4zCgo=

--_002_PH0PR11MB495168C6A9DBB0429FEBC82DEA309PH0PR11MB4951namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--_002_PH0PR11MB495168C6A9DBB0429FEBC82DEA309PH0PR11MB4951namp_--

