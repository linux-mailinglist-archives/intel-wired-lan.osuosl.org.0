Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C57F329586
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 02:38:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1252B4F1B8;
	Tue,  2 Mar 2021 01:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8AATtWLglsYc; Tue,  2 Mar 2021 01:38:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C20554F1AE;
	Tue,  2 Mar 2021 01:38:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48E111BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 01:38:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4095943101
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 01:38:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RaVyaddYS72b for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 01:38:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC4AE42FDC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 01:38:05 +0000 (UTC)
IronPort-SDR: szzWyB8DyrFb1HuoORDA39x/h20BYGItjbH2GVLUsjgmmxXUDr7kxSM99c3cbxC9r61IG/p/79
 PKzVP3yfQaCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="184215139"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="184215139"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 17:38:04 -0800
IronPort-SDR: M7p/gFp+4RPBsW6e20wdHOeykqGbuzLOaX8GzqVYb/Y5W4Ma3iizWTIcQEja7vWo+Yn2AnKqC1
 g3Fj8P8oYYfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="517643180"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 01 Mar 2021 17:38:04 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Mar 2021 17:38:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 1 Mar 2021 17:38:04 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.56) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 1 Mar 2021 17:38:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8sthX4CkGEA+NFpWytxSMFiIOXBtraBSyme/E8J7Ki6U6KWTfHU8UxSY6wENvwbNg1WGoOok5tVENNOjopSmq7edVR4px/40Bou/ByB0PyzVC/pjl/qVfqEsA5Zm0yxTPEQiFLNykzbEjakqV15FFI0l6QDn28A4MRbow7+/+UZd8Lp3ZZuOew2qJhOeN6Sc8WkIHrvsIv9cnT9q3N6HxSrsKe/F0Yk6AIhZipJBcbZPQn+SNVJFF0DG5mZ9Z4qjtvocEl0UzukT1QHWa9YaWbMSKS98dXPmdx/kGJQmV2vpqTDw7ZnYiyt0abyecWK6DTe+spnQMc36RoyDL9aUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9QfGhFhNbmHZtgFIrHFptiMATEZg6ilnIkQWjaxMJs=;
 b=V7amDe6/SxNhA4IzNHGD7uqvotuo2oGbif1gKAbRqgF4UIkl4v3brQxFGgUhqcpl0uanKyYHB/vWcJassqhbuFSb/ApyN1n2QVdGuJDSrL2r/Nr97riYPvi/QJJiuF86b37Dt8xmtOY3muIHRqF71LuzF+meE2m4kZSYPIY1F8MRWUkcb+RrRcLljO4yuflViwMoxtdllZHEP6lhhTelotrE1CDFr8wMW6FGqHcaTNz9xMsRAp+e48djpPPU/mLioxg+TAo4YJEGNsFHHBF9n0izRZhD3bdfLb9NNg05yXOEYRxceN0l7IMzXrKaX6pmWf+E0zbRWPfsG52ShbPsRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9QfGhFhNbmHZtgFIrHFptiMATEZg6ilnIkQWjaxMJs=;
 b=nLB5KrSVMJx9zYTlWpqRdXpBEq68IVNPYIirlqa2GuA1nWPEMvty0uWDt6LUVqVpII0iQ/BsTf0GnKLL7UvRrQke4b0kBvd1UmTbseozQrxpqh86+yliz+3pEPazy2tRbf5jr00mvdmRP9EDw/mKElTlff2Ipmt/ZAYRHtz2S10=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5194.namprd11.prod.outlook.com (2603:10b6:806:118::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.23; Tue, 2 Mar
 2021 01:38:00 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3890.028; Tue, 2 Mar 2021
 01:38:00 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Thread-Topic: [PATCH] e1000e: use proper #include guard name in hw.h
Thread-Index: AQHXDO8220/8Px32aEy/RxzhMss/Kqpv73oA
Date: Tue, 2 Mar 2021 01:37:59 +0000
Message-ID: <df502c9f145e8ca26d7c79f291fc7abd48066b88.camel@intel.com>
References: <20210227095858.604463-1-gregkh@linuxfoundation.org>
In-Reply-To: <20210227095858.604463-1-gregkh@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01ae156b-8755-4923-9fdd-08d8dd1bd096
x-ms-traffictypediagnostic: SA2PR11MB5194:
x-ms-exchange-minimumurldomainage: ozlabs.org#7287
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5194C93211752F6E2DFEE35DC6999@SA2PR11MB5194.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wnn7aDhl4pm6G4E0aTiruhmxcRU1LCZ1Q9E6nTquO2wZ+3GFlsButBgU1Edz/ISAuq4MgW9kWLwRBV7PZ00LuSxlXqMXVf4HByfFNKEOXObxd+ndlpCf6uL3dx8mErg9K7Rln9v9axKPSqACy4sqiTnAm8Rx9iJdp3w6SpDm5YFdPz2FR1ngRYUS8EYXNwAvUcK8ZtjpCpHjGdUWRUg1Ky1jBzW+L49GY3am+aCXEXg8o/vcE6gPL76VBOYhvUV40ydMQSpI/vEnXOfTI/O/S63End7+O+fsA3NG1j/pW/xZmyDH0Mitp8c89QZnXGlEKo8H46urZesH1zTGX3tZJTH3IqWTS6s7HdnCh0Dn/EX85S/zRQWMscrIMqfewo/28ds5FD5zf9HjMpWJuD50FbJeI20fmrMBwWVh9QxHx+aqnvljQZ3SNgHLvnNIKSyPjZADtRLyovFMErNBY00rP/SiKZSbIuy1wsd2lhrbQzkwlLK6jcOTTjpoCnwfL7HvQNod+kr8UUnB2QtQqEHB9nZimw5wZNz7N8oM9ISCMHcJgsyI7v6+IwcmI3KJUV2QlwfH9dj8QQMTQ9M6l/zHWfAKhy555D9A/vXVsZdnu2aa/5TQ3m2vFLCTK3530WBCh8uzlsAQwqBQhH3+loI9fA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(376002)(39860400002)(366004)(136003)(966005)(2906002)(91956017)(4744005)(8936002)(86362001)(478600001)(8676002)(316002)(6512007)(5660300002)(4326008)(66446008)(186003)(36756003)(54906003)(66556008)(66946007)(66476007)(76116006)(26005)(83380400001)(110136005)(71200400001)(2616005)(6506007)(64756008)(6486002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UVN5UnpRY2RTQWdENUYzZm5CZ3hnUW94YjBGb3Q0Q1M3OVpPem1iVk1GVUlt?=
 =?utf-8?B?YVFpaHVYU0hSeU83U1VqVlRselNKeUV0SXVXUWh3Y3lHSlI0R2xJamdpWXR3?=
 =?utf-8?B?M0o3Q1JFWlJhQmZXcTBVa3FXS1lZa01RMmdWM2lteVJGOVp0SkZWdm9WSDcz?=
 =?utf-8?B?bUJ3ajRwczJTK3lCUGRTTUJQd2RtTlBseVZYY3gvRDBGd1hUdTYxYXYyak9B?=
 =?utf-8?B?WVdRYkZISUYwejFFdi9HMlN3eXVlNS85SUhJNXZTNWhxdi8xcFB3dFJJbmt4?=
 =?utf-8?B?TENGb3FUYU9NTUU5b1ZyMEU2d29hZDhsUGJ1VlVRM0FUOHlEalBWai9aRzVC?=
 =?utf-8?B?bW9aTTFlN2dmOVdQekkyUUcxSzNZZ0RmY2owbFRkRm1PMFV4N3JYOTNkaFBr?=
 =?utf-8?B?Q1l1U0FsVDlNV3NKUW5NNUxWOFhCeG95VkFOUktOOVVtWCt2bzZ0Z0pYSFJR?=
 =?utf-8?B?RkUwT1dWVVBrckkvcWZudEUraXh0bW9RZzRnb2srRGR1a0c0STE2bFVYeXdN?=
 =?utf-8?B?Z0RtZFhmTDNCVENib1ZJOXNzNnBOQjJEeXMvaTBDRWt5SVl6dUxBbXo1cmJp?=
 =?utf-8?B?amVaUVl1S0NMN2NNMUw3anVOUi9Dd2RMZllrNlVRRnI4UnQ3MnpQQ0hvTlpN?=
 =?utf-8?B?YXBVUytscVVhSk1pYWd5TWFZNEdwb1c2dGNkYkRIRDc1Z1c1cUFrUHh3dzBQ?=
 =?utf-8?B?SlZoVlEwWVUzc2lPZG94OEJscmJ4cXkydC9pNEZkSDRTTkpCTS9Ib094dmJr?=
 =?utf-8?B?bUM1RkJacHAyUlN4dCtnaWY2SE94WUc3VUNQcWYwdFhlM2YrMDc2c0dZeEYv?=
 =?utf-8?B?TnlIMmUydk0xaWgvMmUrR2JqOTNWc0R3ZmFsenVMM3JKYURtK2p1Z2dxZGY1?=
 =?utf-8?B?STJacytydVhmRWhLSll6THFxNDVmR05ZbzRJUDhiZzJXSmlDVVFlblRjZkx5?=
 =?utf-8?B?ZXlPV0JvRlY2aE50WE8yUmU4bDdFVzA3cHR3ZnJSVnFNYUNVUVdUKzM1eEhw?=
 =?utf-8?B?alZqRHVGS0lrZStjZDhwb0dYWFRTZmVxajRnVHBxcXVVWW1vWUVQNHM3MVpo?=
 =?utf-8?B?VXQ0a2pBZEZzdnVNYWVCbjA5bEJiYnpxZ0d6YUJDVkQwMUcyaGQ1SllvZjBp?=
 =?utf-8?B?WjNEM3dhaGdpQmFxWWVEd3B5M2FpVk1qd01HRVFKeXUvU2ZHYUhmYWJTSmNP?=
 =?utf-8?B?WTVWcytMaEN4dGNHd3ZteUc1TjI3VVlLbFRRRnZzOUtQRHhySzVIZEkyVE8y?=
 =?utf-8?B?VFNhTjBScndYcWJjdHpSSXdUQUVteHJ0eWtkMnBPZHU4endvdGgyUXpSUmwz?=
 =?utf-8?B?bnZLajZhbCt0N1hpYmg2YXk3UURKNEluVjRhZGxDN0h4Vy9jLzdiMjZCQmZI?=
 =?utf-8?B?N0hKTVNaNm9XK1R0YmVYSXdVWEN0d0d4SGJDYWg0V1pIVG5TSXZwVnlKOFVE?=
 =?utf-8?B?bFcvNzFTNHZJQ2lncjZxbVFiRnNKclRmcGdWYmdyQ3FFVzNQQkg2MTkzblNi?=
 =?utf-8?B?QUNKYk5vL1V0MUt3czFKYU5teklnVkFKMUZUaXJNK1pwNHRHblhUMXV5TUkv?=
 =?utf-8?B?TDNxaUVmYkdnR3p6MVFvSlFyclhVU055MjR6Z1V3TUNQYVlaTnUxRTdnWXgr?=
 =?utf-8?B?TENiVzU4Y3NOQkJENk5Ea1lZb3lOVDM2cVJIM2Vod3I5TklMdGFaRlBscHBV?=
 =?utf-8?B?cjI1eE9TOXNXaFhxZDNqSjNYUXlGa3pSODd1UUJ1Q044S3hPeVIzazFIb2k1?=
 =?utf-8?Q?y50kvvXBvTjV5bdbSmJ/FdqLynvOImEhL87X73Y?=
Content-ID: <C5682D69F904E84C94B6062EB1C59F97@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01ae156b-8755-4923-9fdd-08d8dd1bd096
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2021 01:38:00.4853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JUxMQuqH+GafLHoFft/Wa1yvEsMP54hOMj1wF36ru7MV1EroKMEbZ/wgboacFD3RkhLp/HK2ch33RgsTKSGbGqLsktqtDN1/m0ZQe0y68kw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5194
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: use proper #include guard
 name in hw.h
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 2021-02-27 at 10:58 +0100, Greg Kroah-Hartman wrote:
> The include guard for the e1000e and e1000 hw.h files are the same,
> so
> add the proper "E" term to the hw.h file for the e1000e driver.

There's a patch in process that addresses this issue [1].

> This resolves some static analyzer warnings, like the one found by
> the
> "lgtm.com" tool.
> 
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: intel-wired-lan@lists.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

[1] https://patchwork.ozlabs.org/project/intel-wired-
lan/patch/20210222040005.20126-1-tseewald@gmail.com/

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
