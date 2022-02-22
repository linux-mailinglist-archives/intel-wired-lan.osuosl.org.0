Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764064C04A2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Feb 2022 23:31:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2463140227;
	Tue, 22 Feb 2022 22:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zlMXQiVZSNU9; Tue, 22 Feb 2022 22:30:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8674240207;
	Tue, 22 Feb 2022 22:30:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1940F1BF429
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 22:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 061BC60AB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 22:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4e2BVLuLoI5F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Feb 2022 22:30:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AE1360803
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 22:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645569053; x=1677105053;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0ma7HkPcWmdEQi5Szx5hae6NDcly/HiRJbns2AEhuqo=;
 b=LtJwSPoL0MWRoeEpDlmMVH/T4aGxIk5V0zn8B9WF4WayKy02y72RRczX
 ZP2geXgyBJOFfX5u9k5+swxcBmXyc3YBo0uZu2jPekpbJP4woUEDX3YnV
 STDLZOpW0kJPw9OpHk8wugsvTC7OLwrMwdYJ1ugRjlHOhf+vYhXCq0FDY
 6+3uTKdoje0KLbyK4wKr+FfKkJojMNo2XqvubiUEp7H+qn9F3CRikUjiR
 nx0UxsDXacGvapYopjhNoh00b8K5ijBnDbO5NEvm5v7MSurxRddJPXpdv
 ySVEMtTttAIQixUhJCONe3IqGbv0c4zY4vkPyg7O6fRPhc7GgMg9NHgZ4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="250654741"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="250654741"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:30:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="547957322"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 22 Feb 2022 14:30:52 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Feb 2022 14:30:51 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 22 Feb 2022 14:30:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 22 Feb 2022 14:30:51 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 22 Feb 2022 14:30:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QnCxgWcc4Qjso+dU0iPRFPLZmTaiphybTRGMVIxIcMw00VvY0axCL4yZ8/HxEu6ctlJJYonl/F1qJTUlDcQfX1cJEnnI1/B2p30SVEhqAc/rAFsExsgJj/jiYFvGZtzLnloNwlxx7EedAhUF22TOXLSuXb7WSz9eqFbpbhCwgBkgB8yyqS3qUvurY2SuJb3p/4ajRixkzn/ZFWSqv8duyeEyZFfPR84uV0JBUW8hcBBAFqxTj691YLdbZw2Fk/pt4LgrrLt99zRU5dRYqEvBdRcrEYk/H9KdkuXWtw/QH9Ahrja3Y++bwgo1rFR7tycP3jEq/8E0UGzA73Y4+uoDIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ma7HkPcWmdEQi5Szx5hae6NDcly/HiRJbns2AEhuqo=;
 b=bYKHUoCudmyhkpEi4ZoXBnPwHeYxVxw/tYENoM7HTAkXP/nzb0aqZTExwAaJ5xmGTyPSuAEDqf72W1SanuMThkfd2KTiUpKs+7kf1SmfMiJJylUDcDwsZl/MUH3h18V8j+3yL5QXW5YADV4716BuLn/W426OcUCQMYvmckUkH4MyDamXEPp02bkjzxUIehaSE9Hdw/vnCr2YENkdHo415MeJbkHp9GjIB82WiK29P49DrH19fJ8HsMvcR2BVc+9+x2MaZ9eN5b6ToA1FIo3YVfYqQQxeo/qhZ5Z8zeXro8OyT2fnwcmfFxr5Q8j9EkR69lKA0mVWCg4NqfuMuozD7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by PH0PR11MB4774.namprd11.prod.outlook.com (2603:10b6:510:40::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.21; Tue, 22 Feb
 2022 22:30:49 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::cc77:3e10:281a:347d]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::cc77:3e10:281a:347d%7]) with mapi id 15.20.4995.027; Tue, 22 Feb 2022
 22:30:49 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Jonathan Toppins <jtoppins@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Fix error with handling
 of bonding MTU
Thread-Index: AQHYJPsHrmwGEreRbUW+rdn8djlGWKydYnYAgALIbXA=
Date: Tue, 22 Feb 2022 22:30:49 +0000
Message-ID: <MW5PR11MB5811BFA8616F2CDB01105426DD3B9@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20220218190604.1888716-1-david.m.ertman@intel.com>
 <6b531cbb-76c0-3c9f-fd20-f0e3b5fd12ed@redhat.com>
In-Reply-To: <6b531cbb-76c0-3c9f-fd20-f0e3b5fd12ed@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a701f53-877a-4aa3-f3e3-08d9f652fa3a
x-ms-traffictypediagnostic: PH0PR11MB4774:EE_
x-microsoft-antispam-prvs: <PH0PR11MB477408E666D6AB0D4056DCFBDD3B9@PH0PR11MB4774.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TmPNupHsEepARx9BgrmVv9gGzg2Jkwlcna5qPLP19Y+rYsMeOlq2Yf9ixKztUZFyKajK4rIvWa/iK1n9MVCBOY4qFkfrh7g1nAy9LPVygO+64wzTc8rxv+s4l4L+ehiBOcDqwbK8cmnbweEJdc8x9Vie8i87rbfeBbzqRPiFWMSjoW3t42BEKUXz6nX5VVhwUH7JcSYEhCikb63rC8ElkeVc/Ys8Q3b8fK8XkAnrWAzjy5A+kC/3C7S+7lg5gcnrHITLStYmN8w7ysVaxnxNmEzUyHWkVnaogJc2VPSoRe7usDRq+7oSV4t6xSXS16nfM38T7ClyirffX2tQriDnFb/V9PxL6D+WNuU9cN3ppEZsN2A2svI248aaE00t/iBr5nkXG+62aYscXi5rOYj/ebTOwDvaRtLOwBE7ZSVLSulFIdSqV0WoBgU/f9lQsDPg1JYOXiDp6oDl/5kzviTJVFcXGr7cims/Qv4VCKXF9VnvaZOMZ+x1ROH3ziFv3HIfJfUC3VVZYvEiGvz4yzFEbAkmE/wYLf3gQ8vlHbqAInJ0h8FCUA/TAHHMDA30It8eLr/1Cf52wfYOZpZK9V3c7iFDMgVVGVsEnutsR52orp7PVMcM4t6KhX7gV1KWiuPale41HrUyomBdVHxRDAUwYIMaCCXcT1miaWSKgr4jxyF2Bc5ATDo/t7blYTgLed0Cek5LnNYxD0q0QlUaGv7L7g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(122000001)(52536014)(2906002)(38100700002)(8936002)(5660300002)(55016003)(83380400001)(33656002)(110136005)(66476007)(508600001)(38070700005)(64756008)(66446008)(71200400001)(86362001)(8676002)(9686003)(186003)(26005)(316002)(6506007)(7696005)(53546011)(66946007)(76116006)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0xIQjA3MTlDZDZFNlZWRzlESURBOS9yWXA4UDhtckE0a1JteU4xNFAvaFZV?=
 =?utf-8?B?Y3lSOVdUdDFFZTJkdk1TSmpVMFFRTTBxL05RMmFZbVlXSHpFbFE3MU1XRWZy?=
 =?utf-8?B?a0xZb0hTMjFUVk1WWU9hQnNrU2xaY29EZjlmTVRqQU1MbE5ITTJHNGRRN2ZP?=
 =?utf-8?B?M2dxN3dFOWlQcytxTHVpMlRGcDFPK1Rad2ZWSnhOK0djb0ZMTFgwcHBDeGZk?=
 =?utf-8?B?djJnWkl5VFFHTWpnYy9mdmJwN2Z2SUNNNjNCWHRPeno0SG1jL3F6eEJKTzVZ?=
 =?utf-8?B?bUc4djBtK3o3SHZrT3QxaUdhaEdCcHh1c29vMzNpcE9UOTVTaGlHbWRVQTFn?=
 =?utf-8?B?U0l0SXhsUVFoMFk3RmQweTJreTU3QTkya2hudE00c2s5ckJOelBML0M5UUFO?=
 =?utf-8?B?NVVVcWlLZzNGQnBXYUlTampsRzEvaC85dTJ3R1J5WDZJQTEvSUdROTdBSGJs?=
 =?utf-8?B?Q0xjZ29uMWpjc2R4WUpkbHVMcE5jbFVCbWkxMTgwSGJPYkJ2QVdrYWFld2ZP?=
 =?utf-8?B?Z21xSTFUSExYSHlySkdaRXRYNzczTnM2U2dlenJEYVlxZVp4L0g0QzV2NVJh?=
 =?utf-8?B?d2NEMkNQaW1HU3QxM3EyWHk1WHNxaFhkODM5bXR0eERoZWpxdWl3UmVNaHN6?=
 =?utf-8?B?eUw5dXlUSTlLZ3N2RkwzNmh6MVl5N0ZzaGpFTGZJMEQ4TjZLV2c1RFBQTFNo?=
 =?utf-8?B?MWV2WkdqNnRjT01OWTZTbU1PVVdWakI0THZtYVpGS1FNcG82YUZub3J0TTV3?=
 =?utf-8?B?VUxkSSswQVIzdWxzTGE4WEJzQmQxcThCc045eTBjVzRiL2ZmR0g2NCs2SWow?=
 =?utf-8?B?SDhJVTVIK29hVFFDSGxycVM1MTJBNkZ4dVoyRUJPSmpaU3BRWldrdklia0Ns?=
 =?utf-8?B?cmVqenVQVmNBanlHcGlLcjU0c0VCUmpuZzlnNTRkR2VOMGhEME5GT3FINWJR?=
 =?utf-8?B?WTZBclNtZm44cmY5VnlWbitLUWJCOHZ1MmhCT2k0bGhvakFTVTltVmcxS2lQ?=
 =?utf-8?B?Tzc0TDA3TTNRVE5TcHlER05yaDFOdGlxaTZZNWMzc3d6Rm9SMHN6cm5MY0py?=
 =?utf-8?B?R3ZwZWJVZ0FUL2VLRThrK1QvOTNZRXhuL2kxRm9mU0xtNTVlVllORkExY3F0?=
 =?utf-8?B?ZkdSbWZ5N1A2UEpKTVlremNVYmllWlZrc0NIQk4zcUlhS0FwVmhjT1JiR2lz?=
 =?utf-8?B?TTRRL0pLVkM0K0diQlpQSXU4TnkyWUg2SmthSm5jWVcxMk5od2VvL0ExTDIv?=
 =?utf-8?B?OFFpMzl5QmhoYkNFdHdyNmdFOWVKS05FMm92MGk0SHlmTll2ZHdodzQxbjBx?=
 =?utf-8?B?b3M5WVpIWFBmcTZEVVRUSnVmUTlDN2ptR01KdElCQzZkREtuWXZtMXVXcmtU?=
 =?utf-8?B?bGp2MERyUWtaVWJYMWJTUGQ4aWw1Q0hLandhalgvVjBZRlNKV0NKMXB2SUV3?=
 =?utf-8?B?d3RSQXJpaHlkTGMxalZ4elJWVDRYb0QrRVBSbVRmN2JGUU5YTlQvSWJYV2R0?=
 =?utf-8?B?MjNGY29BRmNndkUxbVdIMU5ta2ZTVzR6T1VHcjBqYTdhZTgvUVBPdlJIWXJa?=
 =?utf-8?B?VXZPNjRJN1IwdS82ZElvTXBsUXRlMjNPRTJpR3NvMmtuN0F2ckVScmFxSE1s?=
 =?utf-8?B?RXhsUmN4M3FrQ09oanQ3L3JISXlNV0RJaVRJR3pONUZQaWdlV3M4U3ljMW96?=
 =?utf-8?B?dE83ak1Fd1VySWFzUGFYNUUyNS9FVlFBYUxCMENTYUdsUlVTWnhBN3VtNzhE?=
 =?utf-8?B?aGU1QS9VbnVjWVFBL05FM2xjNGY4aEtTQWdpU2Zmd0hML2ovclBsVUJ0K0hI?=
 =?utf-8?B?dTVHMDNxOHhSa2NpL0VIRkZ0R0JZeFhiZEZFaUpOQ2FLNkpJQUNkOSs1QXhP?=
 =?utf-8?B?Q2tsQ3BkeGtNVHp0WVN1U1dma2tyMm0vQmM4enlFSllCYk55RmZPelJ1ek1k?=
 =?utf-8?B?a05WczNJR2M3bGJYV1NNSW1xdTJUTzFocTZER2xMSFlDR3lQS1NJYlJYTURZ?=
 =?utf-8?B?QUZOb1hZckNNa0JEK1NmZU0vVG04SU1NNzluZWpGeWVSNmtZeEpIckplTkl4?=
 =?utf-8?B?SnBSVjVsZWVtS0hKNkVYY2I2ODlsM0pTdEtiVkRqS2srVDlRYUhuZ2RsRmdw?=
 =?utf-8?B?WFhVOGRnNGttTERFMDRqVm9QZ3Jab1R1MktGU1AzUXl6dnJIZlpWQXg3bUpO?=
 =?utf-8?B?S3JQczl5eERKUEFQNSs0cWp4QmcyTVhEc2JTM1BMeEMxKzdxTEt6STRabHZy?=
 =?utf-8?B?VVpPVTFwNlhWalFZMTVCWFBpRnF3PT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a701f53-877a-4aa3-f3e3-08d9f652fa3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2022 22:30:49.4773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WLPpVsOEFMYrX7p/Pg1cj6xDEIHF177FotPwqP/oGNILSB8T7ZXMOak4zC8ZwmClh/88gdD5YT/fjPQ5AOzF8sPVxOiYPojY1k02rPoa53U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4774
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix error with handling
 of bonding MTU
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
> From: Jonathan Toppins <jtoppins@redhat.com>
> Sent: Sunday, February 20, 2022 7:51 PM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix error with handling of
> bonding MTU
> 
> On 2/18/22 14:06, Dave Ertman wrote:
> > When a bonded interface is destroyed, .ndo_change_mtu can be called
> > during the tear-down process while the RTNL lock is held.  This is a
> > problem since the auxiliary driver linked to the LAN driver needs to be
> > notified of the MTU change, and this requires grabbing a device_lock on
> > the auxiliary_device's dev.  Currently this is being attempted in the
> > same execution context as the call to .ndo_change_mtu which is causing a
> > dead-lock.
> >
> > Move the notification of the changed MTU to a separate execution context
> > (watchdog service task) and eliminate the "before" notification.
> 
> It would seem all net notifiers for the aux driver could suffer from
> this architectural design. Is there any effort to look at the design and
> move all notifications to a delayed work queue to avoid this recursive
> lock problem? I do not think ndo_change_mtu is the only net device
> operation that takes or expects RTNL to be held. Additionally what
> requirements does the auxiliary driver have that require the
> notification to be immediately processed?
> 
> Just trying to think of how to avoid this class of bugs all together
> instead of finding them one-by-one.
> 
> Regards,
> -Jon
> 

Hi Jon,

Thanks for the feedback.  I took a look at what contexts that IDC events could be generated in.

The first (which was the original issue) is with the interface entering or leaving a link aggregate.
The only other one that I see now is with the ndo_change_mtu callback being accessed with the
RTNL lock being held.

All of the other events that would need to be sent to the auxiliary driver(s) are things that should
not be generated in a lock-held context.  They also need to act as blocking calls that stop the flow
of the thread until the auxiliary driver has dealt with the event and returned.

The basic concept of holding the device_lock on the auxiliary device while accessing the auxiliary driver's
event handler is to avoid a race condition where the auxiliary driver is unloaded.  The only time that the
PCI LAN driver can be assured that the state of the auxiliary driver will not change is between the
device_lock and device_unlock.

I believe that with this change we should be ok for now.  I do have some work progressing in providing
support for co-existence between RDMA and LAG that I will definitely have to account for this issue for.


> >
> > Fixes: 348048e724a0e ("ice: Implement iidc operations")
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice.h      |  1 +
> >   drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++------------
> >   2 files changed, 15 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> > index 8f40f6f9b8eb..219b7c9d230e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -487,6 +487,7 @@ enum ice_pf_flags {
> >   	ICE_FLAG_VF_VLAN_PRUNING,
> >   	ICE_FLAG_LINK_LENIENT_MODE_ENA,
> >   	ICE_FLAG_PLUG_AUX_DEV,
> > +	ICE_FLAG_MTU_CHANGED,
> >   	ICE_PF_FLAGS_NBITS		/* must be last */
> >   };
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> > index cff476f735ef..f81b4732b8b2 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -2259,6 +2259,17 @@ static void ice_service_task(struct work_struct
> *work)
> >   	if (test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
> >   		ice_plug_aux_dev(pf);
> >
> > +	if (test_and_clear_bit(ICE_FLAG_MTU_CHANGED, pf->flags)) {
> > +		struct iidc_event *event;
> > +
> > +		event = kzalloc(sizeof(*event), GFP_KERNEL);
> > +		if (event) {
> > +			set_bit(IIDC_EVENT_AFTER_MTU_CHANGE, event-
> >type);
> > +			ice_send_event_to_aux(pf, event);
> > +			kfree(event);
> > +		}
> > +	}
> > +
> >   	ice_clean_adminq_subtask(pf);
> >   	ice_check_media_subtask(pf);
> >   	ice_check_for_hang_subtask(pf);
> > @@ -7016,7 +7027,6 @@ static int ice_change_mtu(struct net_device
> *netdev, int new_mtu)
> >   	struct ice_netdev_priv *np = netdev_priv(netdev);
> >   	struct ice_vsi *vsi = np->vsi;
> >   	struct ice_pf *pf = vsi->back;
> > -	struct iidc_event *event;
> >   	u8 count = 0;
> >   	int err = 0;
> >
> > @@ -7051,14 +7061,6 @@ static int ice_change_mtu(struct net_device
> *netdev, int new_mtu)
> >   		return -EBUSY;
> >   	}
> >
> > -	event = kzalloc(sizeof(*event), GFP_KERNEL);
> > -	if (!event)
> > -		return -ENOMEM;
> > -
> > -	set_bit(IIDC_EVENT_BEFORE_MTU_CHANGE, event->type);
> > -	ice_send_event_to_aux(pf, event);
> > -	clear_bit(IIDC_EVENT_BEFORE_MTU_CHANGE, event->type);
> > -
> >   	netdev->mtu = (unsigned int)new_mtu;
> >
> >   	/* if VSI is up, bring it down and then back up */
> > @@ -7066,21 +7068,18 @@ static int ice_change_mtu(struct net_device
> *netdev, int new_mtu)
> >   		err = ice_down(vsi);
> >   		if (err) {
> >   			netdev_err(netdev, "change MTU if_down err
> %d\n", err);
> > -			goto event_after;
> > +			return err;
> >   		}
> >
> >   		err = ice_up(vsi);
> >   		if (err) {
> >   			netdev_err(netdev, "change MTU if_up err %d\n",
> err);
> > -			goto event_after;
> > +			return err;
> >   		}
> >   	}
> >
> >   	netdev_dbg(netdev, "changed MTU to %d\n", new_mtu);
> > -event_after:
> > -	set_bit(IIDC_EVENT_AFTER_MTU_CHANGE, event->type);
> > -	ice_send_event_to_aux(pf, event);
> > -	kfree(event);
> > +	set_bit(ICE_FLAG_MTU_CHANGED, pf->flags);
> >
> >   	return err;
> >   }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
