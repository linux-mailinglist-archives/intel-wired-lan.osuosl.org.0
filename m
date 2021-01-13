Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF5E2F48C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jan 2021 11:41:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A68CB27515;
	Wed, 13 Jan 2021 10:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LGZK11OdL7wS; Wed, 13 Jan 2021 10:41:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 44FD0274B3;
	Wed, 13 Jan 2021 10:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7AB601BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 10:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 75E4886362
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 10:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vyyIFOphuY8x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Jan 2021 10:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 642E386352
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 10:41:40 +0000 (UTC)
IronPort-SDR: HW3G/G47GSUVip6pNhppEOg6qeMhPzW05TYxZTU4a7J5ZlSliw26hwO6LvGvi+H1X9O5Me7jxJ
 8mDLc1744g5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="242260870"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="242260870"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:41:38 -0800
IronPort-SDR: 8twJbT+QSVA2TiZFK0ZBIODUSCbSC1xWKR3YgHLyIVd7VpSKoInhuLoYruviCB1TBRZfcBkuKc
 pNNlXvDCYxbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="353408186"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jan 2021 02:41:37 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Jan 2021 02:41:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 Jan 2021 02:41:37 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 13 Jan 2021 02:41:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGtPV8Onvj9Ld6mC0sfrDJBWNFzC+gWyqpSjI37n//7Fq57TBZ2CS9MG6+E4/u6t2nfW4B0KAcdQ9kgR7yS5KVKr04e1Duf8RoxHhbic4atLPMflxPLCBoUHyWK+n76+yL7q8Y9KCluuh6YiraFmZfnQRyJdTf0ip4qW2S7ph39ykx5EO1R7H76CXsqRgT4BoUH7wdNtxlAOutjb1a4O9pneGEPl5kILRut8EmwG7B2hZzsHMuYpmH6LLr2E0UPDVIK98U0WyOoTfWFq859EVIvGW0k1hpGqudVI0QxapyrE6FqwaAtZkCyAiZ5td0yyM0FsXFEyX5P0RkOjwigXeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MHEqIT/GyntWahiYZJUj80j2fgZQcME27FBrelP6iHM=;
 b=O7ONAr+PcgFrclB9BgeS/rdYSm9QVKzn99+E85JRIKA0QyQzdydXZxdPqnorymJj2iu1Q30LztOlnyyVXMe+JMiC2tpm74GHBri0PoM4tgpYsqRJDuqWBNtkGaaFpWXMBc3EDUsDAYozrAbvSoDQXAhtNB7xNpJLhYelQaKcImvf4+MvEx10erX9ssynquMVeNpdIH/GSetz/Z/jK41oIroUoQWZmPvOcNhaKeIuHyDHHiRFPVxbGDKUuPuHxjf8KK7MFCpBgmb6oWy1dRH3cymN+legTJVzaQkoAKYJ8cki0leTXwsmClpSr7zbSUFrAJE8TnqUmN+R3exjL5WngQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MHEqIT/GyntWahiYZJUj80j2fgZQcME27FBrelP6iHM=;
 b=r2m1sBLDdV3AoUkTRhK9bfCtNp2w8qpkP+6cyTvh6DBiL+Kt0CvydNOcgWN3WdlCLpGN/RPKBxUiza70aAernFPl7kwC7sO9Kq1dYBmJCX9SDaTb+LftrJUPn7KK8kZ5RB2KESc83j9HSUhx1j3w2qKerVnM3pKmrlABrFippFo=
Received: from CY4PR11MB1621.namprd11.prod.outlook.com (2603:10b6:910:10::10)
 by CY4PR11MB1783.namprd11.prod.outlook.com (2603:10b6:903:11d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.10; Wed, 13 Jan
 2021 10:41:35 +0000
Received: from CY4PR11MB1621.namprd11.prod.outlook.com
 ([fe80::d1a:c861:e317:cc15]) by CY4PR11MB1621.namprd11.prod.outlook.com
 ([fe80::d1a:c861:e317:cc15%10]) with mapi id 15.20.3742.013; Wed, 13 Jan 2021
 10:41:35 +0000
From: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
Thread-Index: AQHW1U5AEU0nu1Zg80m2g9FtVxVhx6oadC6AgAGQHgCAAa21EIAH1Eag
Date: Wed, 13 Jan 2021 10:41:35 +0000
Message-ID: <CY4PR11MB162180D89412D92EBBF263AFBFA90@CY4PR11MB1621.namprd11.prod.outlook.com>
References: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
 <e983a9eb-3d87-8fb4-3221-1f012e04d5a6@molgen.mpg.de>
 <20210107092828.GA30484@ranger.igk.intel.com>
 <CY4PR11MB162177CD462300F781703059BFAE0@CY4PR11MB1621.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR11MB162177CD462300F781703059BFAE0@CY4PR11MB1621.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [89.64.109.15]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0950a5cf-689d-454c-caf0-08d8b7afcc96
x-ms-traffictypediagnostic: CY4PR11MB1783:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1783D7CFAE77F5DF057EAED7BFA90@CY4PR11MB1783.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TQqBQx5UWKrhc0Fnrb3UUwmwiMEddq71Lscnxy9eKaoe5dERoF7RU66i1PNA7NAm9GjlLAB/0VwscE3Bja/Z+JNpPKOo34xptezqYSBdHn8wqQKVRS6/kO8d35VLHWVB38r6CMGudSjRi2Y/LHaDa7k9PPEqCpB9MxKMqi6++/0Tg2OqI38/IfezqqMEBP4joWBgOLfNRz6IH9jNcmOrhen98V5BobZN5zHJ5KPfGPXd4P2KBi6zmM1VThIbMHcGwaT/UW30QW5mvhoKtvcWOaXtw8INnAlISY8Bo9OSZpdihlJqQx1R4fm0Z8KJ9Do2nnI8hLA3sK/S47riF6WU6CubiNk/pEVFHM4S1r6AA9lPgt0GIOpP0imBiQjgg/UgqUso0Tjiv7knD+WsYCDA6tWSQ1BeW7T3S3GKV4TdI0RVxL+fXg5vTE+xx8oSlk8MlvtXtbe17cOGihsam3+17QzV5DF5o+FYo55JhcsIEN8tmbC3Hg1arzM52LcVQh1tCWUrXK56uOwAYXlhnkqoyg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(66946007)(966005)(478600001)(55016002)(15650500001)(52536014)(7696005)(64756008)(66446008)(71200400001)(186003)(110136005)(26005)(316002)(66476007)(33656002)(8676002)(86362001)(76116006)(8936002)(9686003)(2906002)(66556008)(83380400001)(4326008)(6506007)(5660300002)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?S0FYM2ZPR2ppWk9WK3ZOb3orRGY4cWJDeFk0Z1lYY2x0Z3hQQUFNZzFpRnZw?=
 =?utf-8?B?aDNHYytQdkNsS0dGUDhsQmVSbVo2UFRZYXJJeXAzR292SFJIcDNoanc3MU43?=
 =?utf-8?B?OEV5VWl6YUxKVjVyRTNaWmpGVk1SRkIvcmp6QVY3Z1NwMjdMNWFabzU4QzUr?=
 =?utf-8?B?Z1FGcUlFQ3ovam5DRDZkQkVWb2Y2aURocit3OTBabUkzaHk3MCtDOFdSNk9l?=
 =?utf-8?B?L2xaZmFra3pJWGRPalBmOFlhUmNOSU42VmsreUxpeE05YjBFaDEvUVJicjFQ?=
 =?utf-8?B?MmcvUG1YNWpVU25WYi9LM2p1K2pqR0ZtU0YzOG8zTEl4RDd4a2FYdmx0UzJ5?=
 =?utf-8?B?QmhONUFyeUNyZWMwb2hzL1BWTkZOM0FHYmR6Qm9UNnN3a3VGdzBFSVQ5amJa?=
 =?utf-8?B?aDEyeisrWlFESURWQ25SdGIxZ0FCSHdkdjV4bll3UDB1b0hpalBaY2xRV3Er?=
 =?utf-8?B?elhodm83bHE5VVBYc2VZalByRG1HZjQzcnpyT3k5M0ZyMzNteUU3aTMzank0?=
 =?utf-8?B?ODVDLzhpZ2lJajVFcTQ0dk5nUFg0aFFVR0ErTXNtQmpucEI3M0k4Q3ZFRm5B?=
 =?utf-8?B?NWROQ3pqWkkvSEY2VndoYWY3VFVWWlNkVUF5WjUzN0F1SUZHVlFsZFBZKy9P?=
 =?utf-8?B?RGhMSThjZk02enhYSERtYU5qU1lZTjd6cUx2a1pkU2ZiQkh6QnBwTGJjdUdN?=
 =?utf-8?B?Tkd3Z0QrTU8vRS9vbm1oWUMxNldnN01IL1N3VGdZbm41WU1JcFFGRkxzZ21z?=
 =?utf-8?B?N2Zja2Q0SThpUkVmejFsU2JSTTU2NC9kWjdHSjgzUFA3U0JmTXZ6Nis4YXo2?=
 =?utf-8?B?ME9XelZBSDJQRUpuUnlxWnZvK2Q3OXlyeExId2VJekhxTkQ3aFEyUmd3WlBr?=
 =?utf-8?B?blVVS05vcUhPcE9hdC9MYTVackFXMkZmRU93VjhWM0pNei9nUUZPVlBDQXBp?=
 =?utf-8?B?ME82Z3VXNmh2RVo1MVo2OFozS1poY0w2ZXpYaFBBc0xKVnBqMXpna0VkVGtD?=
 =?utf-8?B?VkpTektrYVd2Mm5TZFRpUDJLT0oxOFZ6bWFJbVZqU1FTdHJmVENxUDJnZE12?=
 =?utf-8?B?TE9TYnJRamZQbXRtYjFSYWVOcmJYT2JLRnRPSHVJNjdpUURDNlpiTXpscHRL?=
 =?utf-8?B?WWQzRWdpcVRYdEdkaEdSVHVqNTBKTGxYZXV0NGVvUkxFNElzTWk5dFdQd1Q3?=
 =?utf-8?B?emM0RDdQWjI3WUlBQURPTzVQTGR0SFJZSFhVNlNYVWVicTRldEJ0QTBVUFFp?=
 =?utf-8?B?Y1BacHBtc0NFblVmRnFHOU1XUlJiOUFaenFZNEJFc2J0V2R5T0c0bjRVenhX?=
 =?utf-8?Q?Lpax8kTqhIpaQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0950a5cf-689d-454c-caf0-08d8b7afcc96
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2021 10:41:35.1729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zwb30jIvVsAl6/Tsm84GqwJEhJm5/2GohMskJiWy+vtkYyfHBoBMeYAReZ9yVryHixMOF7tRcIMg23ApPFl2/+Fl2EhW4wFU3BBtaF+F7AI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1783
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

R3V5cywNCg0KRnJpZW5keSByZW1pbmRlci4NCg0KSU1ITywgZG91YmxlIHRoZSBsb2cgbWVzc2Fn
ZSBpcyBub3QgdGhlIGJlc3Qgc29sdXRpb24gaGVyZS4gSG93ZXZlciwgSSBzdWdnZXN0IHRvIHBy
ZXBhcmUgc3RyaW5nIG9uIHN0YWNrIGVhcmxpZXIgYW5kIHNlbmQgaXQgYXMgZXh0cmFjayB0aGVu
Lg0KV2hhdCBkbyB5b3UgdGhpbmsgZ3V5cywgTWFjaWVqL1BhdWw/DQoNClRoYW5rcywNCi1Fcnlr
DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFJ5YmFrLCBFcnlrIFJvY2gg
DQo+U2VudDogRnJpZGF5LCBKYW51YXJ5IDgsIDIwMjEgMTI6MTkgUE0NCj5UbzogRmlqYWxrb3dz
a2ksIE1hY2llaiA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT47IFBhdWwgTWVuemVsIDxw
bWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+Q2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wu
b3JnDQo+U3ViamVjdDogUkU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSF0gaTQwZTogQWRkIGVy
cm9yIG1lc3NhZ2Ugd2hlbiBNVFUgb24gZGV2aWNlIGlzIG91dCBvZiB0aGUgcmFuZ2UNCj4NCj4+
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+RnJvbTogRmlqYWxrb3dza2ksIE1hY2llaiA8
bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4NCj4+U2VudDogVGh1cnNkYXksIEphbnVhcnkg
NywgMjAyMSAxMDoyOCBBTQ0KPj5UbzogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5k
ZT4NCj4+Q2M6IFJ5YmFrLCBFcnlrIFJvY2ggPGVyeWsucm9jaC5yeWJha0BpbnRlbC5jb20+OyAN
Cj4+aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4+U3ViamVjdDogUmU6IFtJbnRl
bC13aXJlZC1sYW5dIFtQQVRDSF0gaTQwZTogQWRkIGVycm9yIG1lc3NhZ2Ugd2hlbiBNVFUgDQo+
Pm9uIGRldmljZSBpcyBvdXQgb2YgdGhlIHJhbmdlDQo+Pg0KPj5PbiBXZWQsIEphbiAwNiwgMjAy
MSBhdCAxMDozNjoyM0FNICswMTAwLCBQYXVsIE1lbnplbCB3cm90ZToNCj4+PiBEZWFyIEVyeWss
DQo+Pg0KPj5FcnlrLCB5b3Ugc3RpbGwgaGF2ZW4ndCBzcGVjaWZpZWQgdGhlIHRyZWUgdGhhdCB0
aGlzIHBhdGNoIGlzIHN1cHBvc2VkIA0KPj50byBsYW5kIChuaXQgLSBpdCB3aWxsIGJlIG5ldC1u
ZXh0IDopKQ0KPj4NCj5TdXJlIEkgd2lsbCBhZGQgdG8gdGhlIHNlY29uZCB2ZXJzaW9uIG9mIHBh
dGNoLCB0aGFua3MgZm9yIGhpbnQuDQo+Pj4gDQo+Pj4gDQo+Pj4gQW0gMTguMTIuMjAgdW0gMTc6
NTIgc2NocmllYiBFcnlrIFJ5YmFrOg0KPj4+IA0KPj4+IE1heWJlIGEgc2hvcnRlciBzdW1tYXJ5
Og0KPj4+IA0KPj4+ID4gaTQwZTogTG9nIGVycm9yIGZvciBvdmVyc2l6ZWQgTVRVIG9uIGRldmlj
ZQ0KPj4+IA0KPj4+ID4gV2hlbiBhdHRlbXB0aW5nIHRvIGxpbmsgWERQIHByb2cgd2l0aCBNVFUg
bGFyZ2VyIHRoYW4gc3VwcG9ydGVkLCANCj4+PiA+IHVzZXIgaXMgbm90IGluZm9ybWVkIHdoeSBY
RFAgbGlua2luZyBmYWlscy4gQWRkaW5nIHByb3Blcg0KPj4+IA0KPj4+IE5pdDogSW1wZXJhdGl2
ZSBtb29kIGNvdWxkIGJlIHVzZWQgaW5zdGVhZDogQWRkIHByb3BlciDigKYNCj4+DQo+PisxLCB0
aGFua3MgUGF1bCENCj5UaGFua3MgZ3V5cywgZXhwZWN0IGJldHRlciBjb21taXQgbWVzc2FnZSBp
biBuZXh0IHZlcnNpb24gb2YgdGhpcyBwYXRjaC4NCj4+DQo+Pj4gDQo+Pj4gPiBlcnJvciBtZXNz
YWdlLg0KPj4+IA0KPj4+IFBlcnNvbmFsbHksIHdoZW4gYWRkaW5nIG5ldyBsb2cgbWVzc2FnZSwg
SSBmaW5kIGl0IG5pY2UgdG8gc2VlIHRoZW0gDQo+Pj4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHRv
by4NCj4+PiANCj4+PiA+IFNpZ25lZC1vZmYtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIA0KPj4+
ID4gPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4NCj4+PiA+IFNpZ25lZC1vZmYtYnk6
IEVyeWsgUnliYWsgPGVyeWsucm9jaC5yeWJha0BpbnRlbC5jb20+DQo+Pj4gPiAtLS0NCj4+PiA+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyB8IDExICsrKysr
KystLS0tDQo+Pj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+Pj4gPiANCj4+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+Pj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9tYWluLmMNCj4+PiA+IGluZGV4IDYzMDI1OGUuLjRmZGVmMDAgMTAwNjQ0DQo+
Pj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+
Pj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+
Pj4gPiBAQCAtMTI5MzMsOSArMTI5MzMsMTAgQEAgc3RhdGljIG5ldGRldl9mZWF0dXJlc190IGk0
MGVfZmVhdHVyZXNfY2hlY2soc3RydWN0IHNrX2J1ZmYgKnNrYiwNCj4+PiA+ICAgICogaTQwZV94
ZHBfc2V0dXAgLSBhZGQvcmVtb3ZlIGFuIFhEUCBwcm9ncmFtDQo+Pj4gPiAgICAqIEB2c2k6IFZT
SSB0byBjaGFuZ2VkDQo+Pj4gPiAgICAqIEBwcm9nOiBYRFAgcHJvZ3JhbQ0KPj4+ID4gKyAqIEBl
eHRhY2s6IG5ldGxpbmsgZXh0ZW5kZWQgYWNrDQo+Pj4gPiAgICAqKi8NCj4+PiA+IC1zdGF0aWMg
aW50IGk0MGVfeGRwX3NldHVwKHN0cnVjdCBpNDBlX3ZzaSAqdnNpLA0KPj4+ID4gLQkJCSAgc3Ry
dWN0IGJwZl9wcm9nICpwcm9nKQ0KPj4+ID4gK3N0YXRpYyBpbnQgaTQwZV94ZHBfc2V0dXAoc3Ry
dWN0IGk0MGVfdnNpICp2c2ksIHN0cnVjdCBicGZfcHJvZyAqcHJvZywNCj4+PiA+ICsJCQkgIHN0
cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykNCj4+PiA+ICAgew0KPj4+ID4gICAJaW50IGZy
YW1lX3NpemUgPSB2c2ktPm5ldGRldi0+bXR1ICsgRVRIX0hMRU4gKyBFVEhfRkNTX0xFTiArIFZM
QU5fSExFTjsNCj4+PiA+ICAgCXN0cnVjdCBpNDBlX3BmICpwZiA9IHZzaS0+YmFjazsNCj4+PiA+
IEBAIC0xMjk0NCw4ICsxMjk0NSwxMCBAQCBzdGF0aWMgaW50IGk0MGVfeGRwX3NldHVwKHN0cnVj
dCBpNDBlX3ZzaSAqdnNpLA0KPj4+ID4gICAJaW50IGk7DQo+Pj4gPiAgIAkvKiBEb24ndCBhbGxv
dyBmcmFtZXMgdGhhdCBzcGFuIG92ZXIgbXVsdGlwbGUgYnVmZmVycyAqLw0KPj4+ID4gLQlpZiAo
ZnJhbWVfc2l6ZSA+IHZzaS0+cnhfYnVmX2xlbikNCj4+PiA+ICsJaWYgKGZyYW1lX3NpemUgPiB2
c2ktPnJ4X2J1Zl9sZW4pIHsNCj4+PiA+ICsJCU5MX1NFVF9FUlJfTVNHX01PRChleHRhY2ssICJN
VFUgdG9vIGxhcmdlIHRvIGVuYWJsZSBYRFAiKTsNCj4+PiANCj4+PiBDb3VsZCB5b3UgcGxlYXNl
IGFsc28gcHJpbnQgb3V0IGJvdGggdmFsdWVzPyBNYXliZSAodW5zdXJlIGFib3V0IHRoZSB1bml0
cyk6DQo+Pj4gDQo+Pj4gICAgTVRVIG9mICV1IGJ5dGVzKD8pIHRvbyBsYXJnZSB0byBlbmFibGUg
WERQIChtYXhpbXVtOiAldSBieXRlcykNCj4+DQo+Pk5vLCBleHRhY2sgZG9lcyBub3Qgc3VwcG9y
dCBwcmludGYtbGlrZSBmb3JtYXQgc3BlY2lmaWVycywgDQo+PnVuZm9ydHVuYXRlbHkgOjwNCj4+
DQo+Pk1heWJlIHdlIGNhbiBkb3VibGUgdGhlIG1lc3NhZ2UgYW5kIGhhdmUgYSBzZXBhcmF0ZSBk
ZXZfaW5mbygpIGluIGhlcmU/DQo+DQo+SU1ITywgZG91YmxlIHRoZSBsb2cgbWVzc2FnZSBpcyBu
b3QgdGhlIGJlc3Qgc29sdXRpb24gaGVyZS4gSG93ZXZlciwgSSBzdWdnZXN0IHRvIHByZXBhcmUg
c3RyaW5nIG9uIHN0YWNrIGVhcmxpZXIgYW5kIHNlbmQgaXQgYXMgZXh0cmFjayB0aGVuLg0KPldo
YXQgZG8geW91IHRoaW5rIGd1eXMsIE1hY2llai9QYXVsPw0KPg0KPj4NCj4+PiANCj4+PiANCj4+
PiBLaW5kIHJlZ2FyZHMsDQo+Pj4gDQo+Pj4gUGF1bA0KPj4+IA0KPj4+IA0KPj4+ID4gICAJCXJl
dHVybiAtRUlOVkFMOw0KPj4+ID4gKwl9DQo+Pj4gPiAgIAkvKiBXaGVuIHR1cm5pbmcgWERQIG9u
LT5vZmYvb2ZmLT5vbiB3ZSByZXNldCBhbmQgcmVidWlsZCB0aGUgcmluZ3MuICovDQo+Pj4gPiAg
IAluZWVkX3Jlc2V0ID0gKGk0MGVfZW5hYmxlZF94ZHBfdnNpKHZzaSkgIT0gISFwcm9nKTsgQEAg
LTEzMjU0LDcNCj4+PiA+ICsxMzI1Nyw3IEBAIHN0YXRpYyBpbnQgaTQwZV94ZHAoc3RydWN0IG5l
dF9kZXZpY2UgKmRldiwNCj4+PiA+ICAgCXN3aXRjaCAoeGRwLT5jb21tYW5kKSB7DQo+Pj4gPiAg
IAljYXNlIFhEUF9TRVRVUF9QUk9HOg0KPj4+ID4gLQkJcmV0dXJuIGk0MGVfeGRwX3NldHVwKHZz
aSwgeGRwLT5wcm9nKTsNCj4+PiA+ICsJCXJldHVybiBpNDBlX3hkcF9zZXR1cCh2c2ksIHhkcC0+
cHJvZywgeGRwLT5leHRhY2spOw0KPj4+ID4gICAJY2FzZSBYRFBfU0VUVVBfWFNLX1BPT0w6DQo+
Pj4gPiAgIAkJcmV0dXJuIGk0MGVfeHNrX3Bvb2xfc2V0dXAodnNpLCB4ZHAtPnhzay5wb29sLA0K
Pj4+ID4gICAJCQkJCSAgIHhkcC0+eHNrLnF1ZXVlX2lkKTsNCj4+PiA+IA0KPj4+ID4gYmFzZS1j
b21taXQ6IGQyYzJiYmFkOTNiODE4MDIwNjU3YTgyMTIxYTE0N2U5YWNlMTIzMGQNCj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+IEludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QNCj4+PiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KPj4+
IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCkludGVsIFRlY2hub2xvZ3kgUG9sYW5kIHNwLiB6IG8uby4KdWwuIFNv
d2Fja2llZ28gMTczIHwgODAtMjk4IEdkYXNrIHwgU2QgUmVqb25vd3kgR2Rhc2sgUG5vYyB8IFZJ
SSBXeWR6aWEgR29zcG9kYXJjenkgS3Jham93ZWdvIFJlamVzdHJ1IFNkb3dlZ28gLSBLUlMgMTAx
ODgyIHwgTklQIDk1Ny0wNy01Mi0zMTYgfCBLYXBpdGEgemFrYWRvd3kgMjAwLjAwMCBQTE4uClRh
IHdpYWRvbW8gd3JheiB6IHphY3puaWthbWkgamVzdCBwcnplem5hY3pvbmEgZGxhIG9rcmVsb25l
Z28gYWRyZXNhdGEgaSBtb2UgemF3aWVyYSBpbmZvcm1hY2plIHBvdWZuZS4gVyByYXppZSBwcnp5
cGFka293ZWdvIG90cnp5bWFuaWEgdGVqIHdpYWRvbW9jaSwgcHJvc2lteSBvIHBvd2lhZG9taWVu
aWUgbmFkYXdjeSBvcmF6IHRyd2FlIGplaiB1c3VuaWNpZTsgamFraWVrb2x3aWVrIHByemVnbGRh
bmllIGx1YiByb3pwb3dzemVjaG5pYW5pZSBqZXN0IHphYnJvbmlvbmUuClRoaXMgZS1tYWlsIGFu
ZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvciB0
aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gSWYgeW91IGFyZSBub3Qg
dGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNlbmRlciBhbmQgZGVs
ZXRlIGFsbCBjb3BpZXM7IGFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uIGJ5IG90aGVycyBpcyBz
dHJpY3RseSBwcm9oaWJpdGVkLgogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
