Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA7D433DD5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 19:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59D884071C;
	Tue, 19 Oct 2021 17:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VdQEK6t0E2aq; Tue, 19 Oct 2021 17:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FF3A40707;
	Tue, 19 Oct 2021 17:54:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E4691BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 17:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 474A240344
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 17:53:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h0jMF5fvpUbJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 17:53:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FAE2400CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 17:53:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="215509333"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="215509333"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 10:53:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="720142892"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 19 Oct 2021 10:53:42 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 10:53:41 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 10:53:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 19 Oct 2021 10:53:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 19 Oct 2021 10:53:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nYYEJKZQzcRms3VSIT7Y4/W6UbCBSM6Hmrzlal+E74apX4dIgjZ/hUEHpFJ2XVfEaBLOge7CuNQpcO/0Jwd3AyzAlkHXY3alYTyMKyg/S0sEr/YXlDGqNG/V5XPr7OUweOaq+ac0+qKil7K4hwwios1bgTB+Rr21pEvviH5B7XSRk4mHQhsS9yn1RMy+4V+EIS+LMIQVPBwk9J1gSKf38BNK5QFinTSo2VilOc2G6i7js/9TXJK6GXOnyBfAgxaXawnJXKVrteyHLRyoaTAd9hmg/PGEmNDb7Kc+Zfg+UsKKmU/mzeeduHrphTRSgZo2YIdpAG8E5X21piXQwdEsvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pIRNso8xc+Sc8jgHoNAWtvXSMypjx0Zik5omIf7vMuo=;
 b=MAuBfwQKU+uzek2jRbhUGeQ+bSplf0EWNXXpCL4HFlcfgj0S73XrXlOLC8pzcQEz48LxeTo9CnKpMe3mPBhl3vETp2kN2JzRPzEQN+hJ8lMG9FfJKB7JO9EQkVxQgFvf22xNoSfEs3/EoGq7IuoxDpGR/yYh9IEyrWYNWX8fhBRUvoKLW3IecO6rIKTr6pmQfgCOJL/bBWJDevBrGw6ph7P5rEhfBd8OgzcitMquXzb/GzQs5zDuPaFq2CAhV6G7zlHg390VyP58GAwjFB2QT7YEc2k5zH8lQrLmqXyh8Z95K8iQrhzKpV6/jvPe+vXfn0Wz8pNJWOEb58mMY9hK8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pIRNso8xc+Sc8jgHoNAWtvXSMypjx0Zik5omIf7vMuo=;
 b=b/FnDxw+LcJSasExlG16ZE363Vpmp0/477eIDtupi0oY1AayfgDHI/6TVyTlqXDFdbhjeP7NbGvHnLa4vi8wWVYPfEz566EvyODTQPpWk4insN6GOEA991jHoBDDgByTHZeLLcvnYjCxmsLx/rNu6p043AXePwrlsS8nmWQDkkk=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3277.namprd11.prod.outlook.com (2603:10b6:805:c4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Tue, 19 Oct
 2021 17:53:17 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 17:53:15 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Add missing device ids
Thread-Index: AQHXxQAUNrk3MPpLCkCVPfXpQFhUZKvagXWAgAAYbwA=
Date: Tue, 19 Oct 2021 17:53:15 +0000
Message-ID: <1494d7bcbed00caff6f6391512dd8db5256d3770.camel@intel.com>
References: <20211019152758.58277-1-anthony.l.nguyen@intel.com>
 <c2e59ebe-4a7b-b2d7-f15d-759ad26c006b@molgen.mpg.de>
In-Reply-To: <c2e59ebe-4a7b-b2d7-f15d-759ad26c006b@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5d03a97-17d0-4757-7a10-08d9932953b5
x-ms-traffictypediagnostic: SN6PR11MB3277:
x-microsoft-antispam-prvs: <SN6PR11MB3277E3E9A96420E9A4CE6624C6BD9@SN6PR11MB3277.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j8lF4xRTVFuDVoSuOz5L+mwiKTo0zplk3L7UmJAMu4707C4183W5BvNY+0f1+bl5CwLjTFglqrU/FNydzDUvV22ie4gICEGKZl1ntDX39B64DDLv2nQFHar51G7xD4vp7SaKx5fhZLsKuoatV8VfKqZVYRJtBX9VVK508T/+B6MkuwPvTFKLYnsErQe5NE+aRvUGrRzMFyE3TRetdagtwTLttHrAP4Jz2ouDl0alzBlz0ml6vQUkndbA9Vymq8RjJR8WL1LwEfvkruqpwPOfnGNYwPrXf4FSVTzU8Fd5lm5c+KtYicQaTZq9Hw8vQ3XFc2qqaIFFTonW0Tt/c8wsexKHylaSC/UoLTriFIDHRBnSLUZ92wuLy1KDNMQiNqYfe2Ke5rE5RjRpaFSAv05gfuGzmTE90wkVMUT9ZBf+9vd5A1Emhr36ssd8F97jJeIRMQBfHwHmh1ftaZ6paSNk6RjvTA+6lB5dqE4+XH0tS6+trr9O2hSUq5VnLBSBPvDRPQE5qRaMpMgaQe6qMbEYXYoS8xqn9dovpVK1v6RoxUOCxpxj949irVBvL704jr84h+/ekU1Uh5WJBtQJGS4joP6yfF46Orf7tLLCfqaYfp0/ALLH4rOBrVNrF1CjHeZ+OwDMEQFzyskRbuClnVNbV5an6iJFNhyETb6FWbwzHOqs5melIsa90gVXSXngyOwY0v+z1y/IVmPPoE/EMVskSQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66446008)(64756008)(66476007)(66556008)(508600001)(122000001)(6916009)(4001150100001)(38100700002)(2616005)(6512007)(76116006)(91956017)(66946007)(6486002)(4326008)(38070700005)(6506007)(8936002)(86362001)(36756003)(316002)(8676002)(71200400001)(26005)(2906002)(82960400001)(5660300002)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OG9TNU5mQW1US0FFRGNST3ZoU3U3ZVpwUEMwWDVTM0VHOWFCNWdhaVNyMlUz?=
 =?utf-8?B?OUZmNzFUeEVIamJ6UTNScGZtU3M5S1JjTGRESFBKY1JDdGw1MFc4SEtpQlBk?=
 =?utf-8?B?dVRNdit6WkhFYWFmUThIbWJOM0E2ZlI3eDAwSVBIcExCWEQxcHNaS0dZZkVm?=
 =?utf-8?B?UEpOZVd5MW1nMmJBQklLTU4zYnQzQ1lmMXYySFd6R1I5UG1BdXpYbnl1Qy9q?=
 =?utf-8?B?UTF4UTJOMmpaRkF3aG44UjIwaVF2M1lTZnhhSnkzNExnK3FnelNrd2pSVTQ3?=
 =?utf-8?B?T002czZTSDZQNFBFVk9zbHBGMjh6bjJySkNPeTl6YVo4WDAwcUUyMUxaaUUv?=
 =?utf-8?B?MGNqb25iQnQxVUQxTW9aSEFNb0YzcGFFdkRGMms0WjNTYVZZeEVtODRmcHNv?=
 =?utf-8?B?WEwrc0lFMGhZM0VUM0p2VmZkZURTYm9zYlQxNURXeHdDbE5MMHpqdXdFYW1o?=
 =?utf-8?B?aGJVZXRTaXBFTmtKUXRIWWJVSHlXcEo3b3h6K2hKT0UxZjN5WVplRnhzbFV1?=
 =?utf-8?B?TXpMSUZRQW1zUnJ6VmR5a0l5M0pNTzBHbTB0MHR3U2FlK28xcGs3YnJSNWRR?=
 =?utf-8?B?bkRzekU1MnNSMEVCK0Z4WXY1c3Q3NEJ1ZEQ1b2s5ZHczOXNOb2g5aTFTOVg3?=
 =?utf-8?B?RUxmNjVhRjBWVld1eHNlVTZhcWg5YU5aR2Vyd2k3WmYwaFFob25sdThyNnlV?=
 =?utf-8?B?TlNlRmhaTS9CY2lMRlNiZnFyQUEyb1g0R2V1U3hMWHhMeXBrQ0dmbm9UR0FD?=
 =?utf-8?B?Mjdadk5zbFNPUGtWM2JDYkR0SmczQlRtTHdHNEU5TVM4ZGZRVXB2VEhXN0xZ?=
 =?utf-8?B?SlFKek1RbXhCbUNhZC9NUXdBU1E0dGlyOWhKQTRRekdDaFEweklCZEpPR1hs?=
 =?utf-8?B?SWpZWU44Qnk2L0wraFlqVFNmeVZkaG96dm9WUmtLYjZBMlFTSHptTmJlR1pI?=
 =?utf-8?B?WEl3S0xHNXNzQ0QwZmlkVFdyMFBMQUcxY0dWaS9zdDk2a2c3K3NNSTVkT1hY?=
 =?utf-8?B?RE55SGNZN2p3NTZPWEUzc0NDVDdsaGZoUDVXWkx2SHh2Z3dUenJLVFpPY1NG?=
 =?utf-8?B?ZFRkNG9wN0UrS25UOEtwZTNndVBDYWx5QVFyNnJnVjhLN21BeXpSNlNrS1J4?=
 =?utf-8?B?NHUvNG1YWXE4RFJ2UnFTZUp0MDBDeWtLcnNzMy9ZZXVCeitHZFlXV2NlZFZB?=
 =?utf-8?B?NlFtZkNpQnlNRzdnRkNUZTNGNk15bG1pMXFBRHFrdUpFdHNmVEpEbW5EVTl1?=
 =?utf-8?B?QUdvb3VLZzIwYmVCSEh5dzFqZ09LaFZqTDRjZlkvclZ0OThjTjBoVlRBdVB1?=
 =?utf-8?B?Zk1KMUVLNXMwZ2xQTEd6SEg3ZzA1bFp3dWJXcUl4UDFHRk5iN3IwcnBSWlBk?=
 =?utf-8?B?YUZvd2Nsa0JyWVFpd3JSMlV0K095d094SFJ0cUQvMnhhS3VEa0Yvc0d2NU1T?=
 =?utf-8?B?dVhyK1oxNFdVeGtvdXJ1SGE1NVdhdkY5b0R1NkRySFlLWWdzWk4yVmt0UjY4?=
 =?utf-8?B?Qm5vazUxeEFualM1S2MxUURhQUNScmI2TkF2SHdYdlVZTGtOUnJwWG5YcXNP?=
 =?utf-8?B?ZU1aYTVTNU9DU1krUkxHQm8weWdXdC9pTHkwY1pKQ2hjeXRLa1Znc2RJYWor?=
 =?utf-8?B?SktpdVprTjZBc1lXK2xYT0JKcXhvejZRR0tuMk1VZDF5eXdGRmFRMGxJd3pz?=
 =?utf-8?B?cHJSdTZRQzRPM2NlUXcyS29GYVgvVVVibUJVMzVSdE81UTRPRElSMGFGTHNQ?=
 =?utf-8?B?WlZocThQQ25QTUFEaU5UUy9PNkRsblIzZ01JNVNQZC9tSEZsMjZ2NzFQSnB0?=
 =?utf-8?B?ZDBoajR3dFNCM25MSWVIQT09?=
x-ms-exchange-transport-forked: True
Content-ID: <FF9A575214CCDE43BA140857418CD469@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5d03a97-17d0-4757-7a10-08d9932953b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2021 17:53:15.6150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anthony.l.nguyen@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3277
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add missing device ids
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

T24gVHVlLCAyMDIxLTEwLTE5IGF0IDE4OjI0ICswMjAwLCBQYXVsIE1lbnplbCB3cm90ZToNCg0K
SGkgUGF1bCwNCg0KPiBEZWFyIFRvbnksDQo+IA0KPiANCj4gQW0gMTkuMTAuMjEgdW0gMTc6Mjcg
c2NocmllYiBUb255IE5ndXllbjoNCj4gDQo+IFBsZWFzZSBtZW50aW9uIEU4MTAgaW4gdGhlIGdp
dCBjb21taXQgbWVzc2FnZSBzdW1tYXJ5Og0KPiANCj4gPiBpY2U6IEFkZCBtaXNzaW5nIEU4MTAg
ZGV2aWNlIGlkcw0KDQpJIHdpbGwgZml4IHRoYXQsIHRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24u
DQoNCj4gPiBBcyBwYXJ0IG9mIHN1cHBvcnQgZm9yIEU4MTAgWFhWIGRldmljZXMsIHNvbWUgZGV2
aWNlIGlkcyB3ZXJlID4NCj4gPiBpbmFkdmVydGVudGx5IGxlZnQgb3V0LiBBZGQgdGhvc2UgbWlz
c2luZyBpZHMuDQo+IFBsZWFzZSBtZW50aW9uIHRoZSBzb3VyY2Ugb2YgdGhlc2UgSURzLg0KDQpJ
J20gbm90IHN1cmUgSSBnZXQgdGhpcyBjb21tZW50LiBUaGVzZSBhcmUgdGhlIElEcyBmb3IgdGhl
IE5JQyBpdHNlbGYuDQoNClRoYW5rcywNClRvbnkNCg0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBQ
YXVsDQo+IA0KPiANCj4gPiBGaXhlczogMTk1ZmI5Nzc2NmRhICgiaWNlOiBhZGQgYWRkaXRpb25h
bCBFODEwIGRldmljZSBpZCIpDQo+ID4gU2lnbmVkLW9mZi1ieTogVG9ueSBOZ3V5ZW4gPGFudGhv
bnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgfCAyICsrDQo+ID4gwqAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9kZXZpZHMuaCB8IDQgKysrKw0KPiA+IMKgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jwqDCoCB8IDIgKysNCj4gPiDCoCAzIGZpbGVz
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jDQo+ID4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jDQo+ID4gaW5kZXggMmZiODFlMzU5Y2RmLi5k
ZjVhZDRkZTFmMDAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9jb21tb24uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfY29tbW9uLmMNCj4gPiBAQCAtMjUsNiArMjUsOCBAQCBzdGF0aWMgZW51bSBpY2Vfc3Rh
dHVzIGljZV9zZXRfbWFjX3R5cGUoc3RydWN0DQo+ID4gaWNlX2h3ICpodykNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgY2FzZSBJQ0VfREVWX0lEX0U4MTBDX0JBQ0tQTEFORToNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgY2FzZSBJQ0VfREVWX0lEX0U4MTBDX1FTRlA6DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGNh
c2UgSUNFX0RFVl9JRF9FODEwQ19TRlA6DQo+ID4gK8KgwqDCoMKgwqDCoMKgY2FzZSBJQ0VfREVW
X0lEX0U4MTBfWFhWX0JBQ0tQTEFORToNCj4gPiArwqDCoMKgwqDCoMKgwqBjYXNlIElDRV9ERVZf
SURfRTgxMF9YWFZfUVNGUDoNCj4gPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJQ0VfREVWX0lEX0U4
MTBfWFhWX1NGUDoNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGh3LT5tYWNf
dHlwZSA9IElDRV9NQUNfRTgxMDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGJyZWFrOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2Rldmlkcy5oDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Rl
dmlkcy5oDQo+ID4gaW5kZXggOWQ4MTk0NjcxZjZhLi5lZjQzOTJlNmUyNDQgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZXZpZHMuaA0KPiA+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGV2aWRzLmgNCj4gPiBAQCAt
MjEsNiArMjEsMTAgQEANCj4gPiDCoCAjZGVmaW5lIElDRV9ERVZfSURfRTgxMENfUVNGUMKgwqDC
oMKgwqDCoMKgwqDCoDB4MTU5Mg0KPiA+IMKgIC8qIEludGVsKFIpIEV0aGVybmV0IENvbnRyb2xs
ZXIgRTgxMC1DIGZvciBTRlAgKi8NCj4gPiDCoCAjZGVmaW5lIElDRV9ERVZfSURfRTgxMENfU0ZQ
wqDCoMKgwqDCoMKgwqDCoMKgwqAweDE1OTMNCj4gPiArLyogSW50ZWwoUikgRXRoZXJuZXQgQ29u
dHJvbGxlciBFODEwLVhYViBmb3IgYmFja3BsYW5lICovDQo+ID4gKyNkZWZpbmUgSUNFX0RFVl9J
RF9FODEwX1hYVl9CQUNLUExBTkXCoMKgMHgxNTk5DQo+ID4gKy8qIEludGVsKFIpIEV0aGVybmV0
IENvbnRyb2xsZXIgRTgxMC1YWFYgZm9yIFFTRlAgKi8NCj4gPiArI2RlZmluZSBJQ0VfREVWX0lE
X0U4MTBfWFhWX1FTRlDCoMKgwqDCoMKgwqDCoDB4MTU5QQ0KPiA+IMKgIC8qIEludGVsKFIpIEV0
aGVybmV0IENvbnRyb2xsZXIgRTgxMC1YWFYgZm9yIFNGUCAqLw0KPiA+IMKgICNkZWZpbmUgSUNF
X0RFVl9JRF9FODEwX1hYVl9TRlDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAweDE1OUIN
Cj4gPiDCoCAvKiBJbnRlbChSKSBFdGhlcm5ldCBDb25uZWN0aW9uIEU4MjMtQyBmb3IgYmFja3Bs
YW5lICovDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbWFpbi5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4u
Yw0KPiA+IGluZGV4IDk0MDM3ODgxYmZkOC4uMDZmYTkzZTU5N2ZiIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jDQo+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMNCj4gPiBAQCAtNTAyMCw2ICs1
MDIwLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkDQo+ID4gaWNlX3BjaV90
YmxbXSA9IHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgeyBQQ0lfVkRFVklDRShJTlRFTCwgSUNFX0RF
Vl9JRF9FODEwQ19CQUNLUExBTkUpLCAwIH0sDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHsgUENJX1ZE
RVZJQ0UoSU5URUwsIElDRV9ERVZfSURfRTgxMENfUVNGUCksIDAgfSwNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgeyBQQ0lfVkRFVklDRShJTlRFTCwgSUNFX0RFVl9JRF9FODEwQ19TRlApLCAwIH0sDQo+
ID4gK8KgwqDCoMKgwqDCoMKgeyBQQ0lfVkRFVklDRShJTlRFTCwgSUNFX0RFVl9JRF9FODEwX1hY
Vl9CQUNLUExBTkUpLCAwIH0sDQo+ID4gK8KgwqDCoMKgwqDCoMKgeyBQQ0lfVkRFVklDRShJTlRF
TCwgSUNFX0RFVl9JRF9FODEwX1hYVl9RU0ZQKSwgMCB9LA0KPiA+IMKgwqDCoMKgwqDCoMKgwqB7
IFBDSV9WREVWSUNFKElOVEVMLCBJQ0VfREVWX0lEX0U4MTBfWFhWX1NGUCksIDAgfSwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgeyBQQ0lfVkRFVklDRShJTlRFTCwgSUNFX0RFVl9JRF9FODIzQ19CQUNL
UExBTkUpLCAwIH0sDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHsgUENJX1ZERVZJQ0UoSU5URUwsIElD
RV9ERVZfSURfRTgyM0NfUVNGUCksIDAgfSwNCj4gPiANCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
