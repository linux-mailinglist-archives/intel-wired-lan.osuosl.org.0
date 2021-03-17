Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0878333F6C7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 18:28:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B81F43043;
	Wed, 17 Mar 2021 17:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJSzVmCuauc8; Wed, 17 Mar 2021 17:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F0FF4150B;
	Wed, 17 Mar 2021 17:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF4C31BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CADF56F971
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01flaYCNKp_8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 17:27:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A30526F970
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:27:44 +0000 (UTC)
IronPort-SDR: ciu3ByQtTPSgM9Ac7Hx2cQTme54x5pD6vD6mtEINwYc4sFJYpdYinyp/sUcyX9lA2QSyJUu99R
 9i9xWGBQMU4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="189603745"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="189603745"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 10:27:43 -0700
IronPort-SDR: o6mkpN5lYIkPifs/AvqLZfKn5UL7o1h+TAiN8dJZXVlJs/z6x3fL9iORAbOKxL88eizeyQO9Jl
 AeAUgYC/RbUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="602314323"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 17 Mar 2021 10:27:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Mar 2021 10:27:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Mar 2021 10:27:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 17 Mar 2021 10:27:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 17 Mar 2021 10:27:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VMKNVkfuxuQnCU6gpydKBTmhDRkchGoXiY+9oI9VPtAi3aDP8nb4pyreUrCXFuKhypgOBBVoeCk+WqQcuMqRq2NPJbg7Yum5Am4OtwAdxf8V6jbdMQIUxTOPOIqsn1kO5uX7iVqcv/i6gjGRwWqDnlm+ad1yy6qmC6Mdu2jZwhmnDKyTpbm0cWefTW2HPtu5JUjHQg7PYAW/xjWj3AgfVFpWbJ40nCh2Crvkh6+iMN0cRmevj64kiUv2PUbNVUDrv2cXGDBK7cHVxtqh3cIHOGtlkKucnE5m46yxLn5vNRvdOgJ5COd+vYXYvgBKGliH2EnTsei84HBXigQp+wegLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zEFGyjRmwigEUFMKDrWAmteLaCkqTzGdwKMWQ+p7U3U=;
 b=g/+DHY/dU+Ga3J0q5rGPV+kPBP40Z/lQO4niy7/CkzlCnWu0Q36Cf25PzkrPd5/O4+7L2W8TwDS7jisDxCE2cjzwNLR36hzinLYnv6J3Oqyzn62oXqJh0mPfC+6Iv5Oir2xN6r1kQAiYCRiF5UH6oin0/c/0QgbQtTqDFrt5rqdHlaOHc/Jkrf8HTYg1QnWp7BYlpRppN8qdsYr2ewpV8HaaQQqPRa36AJgpZszqQtsC18TAKDy5aU266eIfxjAQfjwmwafuEP1ut7iCGWG7uJx+v7pxZNjZ6jml6YJITPNgdPDuZSrD0PqWWIhvHdVqEmcKZaZVU3J6IWTyQglqOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zEFGyjRmwigEUFMKDrWAmteLaCkqTzGdwKMWQ+p7U3U=;
 b=P7qXNdGBfNH4V+VG1iKL1Ln7xzwLF7AwGybbhgLhh2nZN1GnJFRQRMifL90f7bTFkHJ16CFVGVQ8H/GeYW0+M9AgENXokZicJ5kWfLpY+uWHgRbCBHjgxG3o4UI0q8gQYXpdl4eAG519sTyZYrxSWzzUACKsoLmgg9URb190r1M=
Received: from DM6PR11MB3113.namprd11.prod.outlook.com (2603:10b6:5:69::19) by
 DM6PR11MB4706.namprd11.prod.outlook.com (2603:10b6:5:2a5::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.18; Wed, 17 Mar 2021 17:27:40 +0000
Received: from DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::d914:33fa:d174:7c52]) by DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::d914:33fa:d174:7c52%6]) with mapi id 15.20.3955.018; Wed, 17 Mar 2021
 17:27:40 +0000
From: "Laba, SlawomirX" <slawomirx.laba@intel.com>
To: Stefan Assmann <sassmann@kpanic.de>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH] iavf: fix locking of critical sections
Thread-Index: AQHXGkt2qKjHb8Aif0ag/sNf79F0m6qG2x+AgAADegCAADLUgIAAGgIAgACkIoCAAKAvcA==
Date: Wed, 17 Mar 2021 17:27:38 +0000
Message-ID: <DM6PR11MB3113AB6CE1D93EF28B3A7345876A9@DM6PR11MB3113.namprd11.prod.outlook.com>
References: <20210316100141.53551-1-sassmann@kpanic.de>
 <20210316101443.56b87cf6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <44b3f5f0-93f8-29e2-ab21-5fd7cc14c755@kpanic.de>
 <20210316132905.5d0f90dd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210316150210.00007249@intel.com>
 <3a4078fe-0be5-745c-91a3-ed83d4dc372f@kpanic.de>
In-Reply-To: <3a4078fe-0be5-745c-91a3-ed83d4dc372f@kpanic.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: kpanic.de; dkim=none (message not signed)
 header.d=none;kpanic.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.191.220.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a56363e-a16f-4dfb-4053-08d8e969f756
x-ms-traffictypediagnostic: DM6PR11MB4706:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4706F4F4789AAF404425EF98876A9@DM6PR11MB4706.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6szj9rW4/Jyh71wbMPdhLjcjQ4csx19LJWOIXbQBtlLuax2zOybjbkmzns5otaDfgepRIz+ItKhNocIFeE8q0zo3e0FvHh01e9CN15QO8OxDKtrh5j/2LcBZSfhanjIrV5oPlaB6u0ynaqEU4qXAepLuUSjJoyK87lGOhK5+6FgeuVLfuw9D1286/dLW5+fr6SZqIY1gEljWmhpFbocmw1o1uww5PEWVto3d+32DDLEb+2bMwp+XFdeZyYQKRxw3pbIyx6uTffKV164wAc7abAdXK0medUvUGk4Xyb39FXH7s0szC2rdJsxzqcW0j1J7yjKMMt0ObeMuAbNXOIvAw7bxfRD+DZ2Fkeif9xkjNzE9/B8Xaf4uh7o/P4gxYZrOQ5gfemsEXQghLXs7GpbcTd1P3/vIRjDV5I3VIS7SZryxV4OhtQqfnq41vpTy0yLd9A4FVsfPDHKBmjbfqrV/FjyewReS6Fu2mXMrcGe1NgI4MqscnoTc1Q837sMdJTyYGVk8oLK321wqcx5M0x0Bc5n6wQRDFP0xFk32bVylngfJHQL6OnflFlTqIYupmt2e
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3113.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(39860400002)(396003)(366004)(376002)(26005)(5660300002)(83380400001)(6506007)(53546011)(71200400001)(52536014)(186003)(7696005)(86362001)(107886003)(66556008)(76116006)(64756008)(8936002)(66946007)(54906003)(55016002)(2906002)(66446008)(9686003)(66476007)(33656002)(4326008)(110136005)(8676002)(316002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UFExTkFtTjA3QWxTSjM3VFVyUEpmelV4UlpLamFpdFRuQ1puTzB1czJpRjVL?=
 =?utf-8?B?ZVVWSHZUQ05kT1pBN21hbzZyWVIxamluVHJUdUNHa2l0MmVSeE9JdDIzM01X?=
 =?utf-8?B?SVFLcjh6SXVvbG40UzhrSjVzN1NsSk5GN3hRQWlFYXdQQjQwMytib1ovMVB3?=
 =?utf-8?B?UElDRmVOVzBLVDBCVWx3TnFqZWI3TVd3N3dsbFA1bXdYbTNLVXFtc2FpcENx?=
 =?utf-8?B?VyttQ0pEVWJlZTZUcWFjWWpaeFNaOFYzTHZWL2V2YjIwUU9NUEtzWjVEYmY0?=
 =?utf-8?B?QkhOOEUzQkJOeVVDRWh1Z2tXREtiTjVzYzB6K0VBRzdaWllCY1pzSktsSjNz?=
 =?utf-8?B?dnRIK3VVckdUbEJYMnpmWi9TRjliYnVzU3VtM0ViTTBkd3RZdTdNdUxSVUtG?=
 =?utf-8?B?VE01RE1qWHRmeW01K2h0ZU93RS9xT1ZKQlFodk8zREVWVys5a2cxM1preGsv?=
 =?utf-8?B?aS9ib0JrVTBLUW1NS3Z1VzB0SW5qOEdzeElqMnRQTzZaUTBSTE1JVkxZVUZI?=
 =?utf-8?B?U3VaVWJqVXRQem1sZW9BdFpIQW9SQmxxd2J2MDlXQ1d2SlNtYmF0S3VxZzkr?=
 =?utf-8?B?L09jTFZzWVJWSkVIQktwODd2MzRoSVZSWG9abytLZ1MxK2k4S1hWQlloSTVl?=
 =?utf-8?B?OVJqOFF1VFRvSnI4QU5nZWZHamNzcHJHS1o0Rlg2REJmaldSRXVyY01sR3BG?=
 =?utf-8?B?ZkpnbW1WYi9hazRVeVUwcGdZTE51dC9Cc28zZzdxbENOMEt0blYrcTh5R0Yx?=
 =?utf-8?B?Z1RuLzdLTFNwc003eHJRaG1xbDBPSUU3aE1uTU9UcFZORktUdjNNdHpwUjFu?=
 =?utf-8?B?QUl3NXZFWWxuKzRjZi9aVzA3aUxvVWJkMFB0Q0ZRcXk2QVZOQ3h1VUNQakxQ?=
 =?utf-8?B?ZitZZENwRXMwMlJKM1NURFY0U2hOV1M1OHk5eG9sZnd3WXZ1RTI5UzdxM3pW?=
 =?utf-8?B?eW1rWWh5c3lNODlHSTBUZE11L0YxcHF6OWYrblNSdnY5NDczc2dCNitOSFJu?=
 =?utf-8?B?Q0wxaHptTmZFVHMwck1ZbFNTVmR0RjlYRGRtVXFiamlyaWJlc0h4d0ZUTXh0?=
 =?utf-8?B?S24ybno3cmtxQXVZQWpnTEJaZkpBWVgwdWY0amJ2VGN4blROZ0VRZHhFV2Rj?=
 =?utf-8?B?U3lORHpubzFUT3Y1MlpPQlBWTnE5ek5EdEk5U2M4aVhHeUl4SW9zaHpRL3l4?=
 =?utf-8?B?REkzVjcxZkRpWGppeXliSnFrbERGa1J1d0s4ZzNQUnkrMThHcFNld3Bzdzhw?=
 =?utf-8?B?b0U3ZGRUZGRIaVZIS0xSZ29ZdVlleW1rekZ0OXZjSE1vdDRBeG1aSlQ4aHZa?=
 =?utf-8?B?bFdrb1hQSzRTTHgwZVZwWW92RE1rUmVZWlFOZ2F5U2RPMlppWXFPaHJKSHdz?=
 =?utf-8?B?RXRuRzd5Mjl4bUwzbTI5cnFhSUFTN1lzbkt6a3d1S3VNQTNMVXhwZmtrZko4?=
 =?utf-8?B?SStBZlVuMGF5dEpTem4xdVZlNk9UY2p1ZTN4NXR1MUNvait2Wms4TXAyMEZL?=
 =?utf-8?B?N1hsUHJnRUZPREFXeGdPblF1TWRmcll4czYwOFlsZ21lU0FqRGxxSmtpcE9L?=
 =?utf-8?B?ZnhEWXl1Q0FlaGNaTlp3SkhMSmp1dFMwZDR0bG1WZjFKSFJCVWZra2xtNENE?=
 =?utf-8?B?eUZRQlFwaTBNWnVSUjI2ck1WcitHWTRoOXZxWStwQmlNcURyY2YxT2FNNjU2?=
 =?utf-8?B?dmt5ckYrbFVydHlEV1hGSnFEWElDZ3JvNERFV0J6cWNDeVpKbHQwWFEyNDlh?=
 =?utf-8?Q?t2LhdAURW6sBh2ysiwhFUEo871qGOUduYH2BdMl?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3113.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a56363e-a16f-4dfb-4053-08d8e969f756
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 17:27:40.2038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4x7hdMreH3q0S/kdPocLanKy025rLmk97OkKy4+zuQfM/7wezpmn50525xxHf3/DKS4IR7wupDcq0mlmz80CXuaM0TxKEDmeKz6n3GY8+is=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4706
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 17 Mar 2021 17:28:31 +0000
Subject: Re: [Intel-wired-lan] [PATCH] iavf: fix locking of critical sections
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We were discussing introducing mutexes in those critical spots for a long time now (in my team).
Stefan, if you find time, you are most welcome to offer your solution with mutexes.

Slawek


-----Original Message-----
From: Stefan Assmann <sassmann@kpanic.de> 
Sent: Wednesday, March 17, 2021 8:50 AM
To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Jakub Kicinski <kuba@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Yang, Lihong <lihong.yang@intel.com>; Laba, SlawomirX <slawomirx.laba@intel.com>; Nunley, Nicholas D <nicholas.d.nunley@intel.com>
Subject: Re: [PATCH] iavf: fix locking of critical sections

On 16.03.21 23:02, Jesse Brandeburg wrote:
> Jakub Kicinski wrote:
>>>> I personally think that the overuse of flags in Intel drivers 
>>>> brings nothing but trouble. At which point does it make sense to 
>>>> just add a lock / semaphore here rather than open code all this 
>>>> with no clear semantics? No code seems to just test the 
>>>> __IAVF_IN_CRITICAL_TASK flag, all the uses look like poor man's 
>>>> locking at a quick grep. What am I missing?
>>>
>>> I agree with you that the locking could be done with other locking 
>>> mechanisms just as good. I didn't invent the current method so I'll 
>>> let Intel comment on that part, but I'd like to point out that what 
>>> I'm making use of is fixing what is currently in the driver.
>>
>> Right, I should have made it clear that I don't blame you for the 
>> current state of things. Would you mind sending a patch on top of 
>> this one to do a conversion to a semaphore?

Sure, I'm happy to help working on the conversion once the current issue is resolved.

>> Intel folks any opinions?
> 
> I know Slawomir has been working closely with Stefan on figuring out 
> the right ways to fix this code.  Hopefully he can speak for himself, 
> but I know he's on Europe time.
> 
> As for conversion to mutexes I'm a big fan, and as long as we don't 
> have too many collisions with the RTNL lock I think it's a reasonable 
> improvement to do, and if Stefan doesn't want to work on it, we can 
> look into whether Slawomir or his team can.

I'd appreciate to be involved.
Thanks!

  Stefan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
