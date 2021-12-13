Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E614733F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 19:27:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E10960B2C;
	Mon, 13 Dec 2021 18:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jmVSgkkZCkQQ; Mon, 13 Dec 2021 18:27:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 706AC60B26;
	Mon, 13 Dec 2021 18:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9EF41BF3C2
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 18:27:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97CB860B26
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 18:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id thgorR88HkPW for <intel-wired-lan@osuosl.org>;
 Mon, 13 Dec 2021 18:27:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0ED9460B22
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 18:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639420061; x=1670956061;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=suu9/viAf6PMAs5/QjecbAKBokNmbsNuFnm+2iCHQYE=;
 b=CoZQr6Wny8VdzW1LyT4je0XXKIVSKiXJSV9piueVUNYaBb+DopxXYQnM
 pv5Gh2p5MKyJroIdCJxCjybO3W9q+lZMlj3RbOzLRGcROd2ElVmuWQRys
 zLgC6jpKXGBcnMrugVg1/CyUqTXYr+aE+lMkEwyE3QPXMLiuyxYJ4/LiR
 q2Pd562KehTvPuyOszqKLyRfHG+y2BdJ3HpreUUJc3fiDw9Y/Mkkrb+2z
 NKYBqMlPa+cX8qJuzovFsK2McoSGOP0kVHOckTPfx/KvJvhcPJ7zhGT6O
 h7X3sF4vegsRo7SvtdrEIf+1CLAumd4aEPNNltVZovkQ80tRPCQllXfuV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="219480335"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="219480335"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 10:27:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="566784011"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 13 Dec 2021 10:27:40 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 10:27:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 10:27:39 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 10:27:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mPc0pVqpoP0ziGRAWlrcSFGCKKCQIxduOiU8EMKOzxzED/pPG0lZ6Cq9+wP/tZGrzPzGKaWzGnHW5H2A9p5LyBo3BsDSV1ZoN0PHn43FwdmQufs0yWok7S0eMh5s1Cf3KIdF2lAqq8m7erva8P95Y5Um/uTWxdQgg+N5WLMXZAhglaBRDnCxxOxcbbGLIolDfpfBm0Dl/0WNFl9VuT1/tjI7jHItPTjb9bgkRaTWAEeQF+M7rpp1NDK97MEz9HxAMvtsiaVOe82Dx6UCUtMVJGjJYF4InGqzGeyd8YU0bsb0w/L02wSqYtGYQ7eQgvq19CxN2EQ2LbeQ+Z1+US5Aew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=suu9/viAf6PMAs5/QjecbAKBokNmbsNuFnm+2iCHQYE=;
 b=ntWIOvhGYF/lNtgqpPGjEWyhXGONpv4oSEuPyVBLETgJrpmRvaCjZWjgoO5H/XBfLkaBGTVlOt7EcFijlgtGn7aAQDSvOfWkZ4mMSCtKkpkM2nHXh4jNjMGb7GpHg+8J14cB1EhlOpW9ycx+0O1gqIK8L8NQG6QACD8qqQ6M6KYLKDkSZ7RNBe5MkHaeYUcOABX8Xr++PffFr0njvpwXvOsq1nV+w9B2XOZ3Qcv1E0qOr9lNzAUXRJ44hwVRUS1p5PhtgLUKknoCEBywic9PevnynDd1AUSHipn5HWpnokNP5FBECXWOBFqs/6Yn2CciYqAkg1MBISJ1ZJbPqYlcPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=suu9/viAf6PMAs5/QjecbAKBokNmbsNuFnm+2iCHQYE=;
 b=DjntwlVimCEd6pMGRqnzsa+ByuI5k2/2bdHkxBAxLbcaBOkvRXghsQNbjNHZukYtKephJMw0KZI91mnGSE5k1IC7eqjtp0kUZO8vNMagy6bcyCP5P0BSao83Jdpgg2DdaYFd4Kukrv//r7JGDY79VM5bBagVjl1ste5HXEE8aqs=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3119.namprd11.prod.outlook.com (2603:10b6:805:cc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.16; Mon, 13 Dec
 2021 18:27:38 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::10ca:cadc:48f6:b883]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::10ca:cadc:48f6:b883%4]) with mapi id 15.20.4778.018; Mon, 13 Dec 2021
 18:27:38 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "jkc@redhat.com" <jkc@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
 scheduled while adapter is being removed
Thread-Index: AQHX7B2CqwjtG2XDiUSYTH1BK3M6JawwxbmA
Date: Mon, 13 Dec 2021 18:27:37 +0000
Message-ID: <4ebe129aeecda496fcad40377903c14d9d0c2dec.camel@intel.com>
References: <20211208102153.669338-1-jkc@redhat.com>
 <20211208102153.669338-3-jkc@redhat.com>
In-Reply-To: <20211208102153.669338-3-jkc@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9733753a-ca90-40db-f1fd-08d9be663dab
x-ms-traffictypediagnostic: SN6PR11MB3119:EE_
x-microsoft-antispam-prvs: <SN6PR11MB3119D55D5EC33983B8D980A6C6749@SN6PR11MB3119.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xqh3kJuDN3t2dzVk6CZX90TXbSJVJEuYsnXWKuPXGItFs3gUlJJN8sHxAidBMiTxUI0Uy8yIiU2BtyiCJnCaYmZjnDuY/SywDPkdH9gSiHNeNW6MpWKE43djUVA3pXyhG8u80+o81LRpHaaBtgHgUtCAAiXvezuqQsFrfi/4DmequWof/BGuYkIhT7aPqj4eDx5jn7TD2raH/l+CNYmDxsMhXdiXQu/nPGoOXhGjqMugty9Bt32CtiBf59mFvtr726EoyVu1+XkNLiQWIskr7N/G5s0vFsnrq64MSmeUA8w9Q7HGwQGiRkXzv5b/PEcj2C3ZOWGGPQxk4eSszY2Iqnil5IQfLUxsTdy/89lUueGxf5s3ocjvav3M/ZMp1D3ayBJYUuwno0zBwaQxUulDd7lXrQ8Ll0mw8u42WvV1njYIXzqb1iWw40o/BOY6O444mYSnzJV+UEmTkIeZuMxvbUsRehoBhetKM5yB5p5GqSU+r2A6an7rY6bdnYHwKbXIbGYXM+9HMs+903Kg/fSXzHteZahCp6TYFYj8cjF+1FJLNccN/9Lj1mvW+AdO2DczRZamDLP+wdnABxVOa7jMQri+RlQt90M2U4oyefB5K9zkdaGrHZPUS12OMf2DfrHGZsUxCp4WHQFQU/UCviQPGbkCVwZmjvzSTpkXwccmGwCqotIJLtlJ808OtSsQilkWtxVNgkKWk+bp/ybH8mv4Vg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(91956017)(508600001)(110136005)(38070700005)(66476007)(66946007)(71200400001)(76116006)(36756003)(64756008)(8676002)(316002)(6506007)(82960400001)(6512007)(186003)(66556008)(66446008)(4744005)(2616005)(5660300002)(86362001)(38100700002)(122000001)(26005)(2906002)(6486002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YW5RM2lETVdZNjIxc2R2WEdZMmp4NUNzRE91dWc5SVM1Nk50K1YwY1VYMFFk?=
 =?utf-8?B?MTk1T1ZHeHl4b3RLR1ZZWlg0WUxTT2wxYUt0cVU5cFBsZWU3M1VpQ3lPRC8w?=
 =?utf-8?B?c2tXU1dMbENCUE1vdnRyYmVhWlFpTDdpN0hkdUxTTEc4enI0TkxrSmdlbUFw?=
 =?utf-8?B?dlNXcXdLdmVRSG1sdkpqbXIyV3BUa08rYzlkWUtrRFpnV1V5K2hFTUtxYld1?=
 =?utf-8?B?TWpMUDVPNTRIMlE5ajhNcG5iWUFFUFlKSzk0Z1ErY1dxT0pyY0dGVFNXSndL?=
 =?utf-8?B?d2tyUk9JQUw3STNMQ1FLM3RhOVgrTnQwZUhoVjViSVV2a25iaUNraGd3NXVS?=
 =?utf-8?B?bzI4L0tGT0VWd29kb3lBbTR6NTlTQmo1OW5lVzZraWhBMkkyYk9NcHBtcmZL?=
 =?utf-8?B?OWlVVE9YK3FpenN1NnU4SUZBalBzUXVjcHNtaGJEaUFRdGkwRlduTkg0TFRG?=
 =?utf-8?B?Y0N6dExWRFVzRGhSNTNtZHFzN0VPTXRVUFRtaWhlSmxLbVJXNndMcGVHUm9Y?=
 =?utf-8?B?ZDY2d3gyMWk1VGk3TDFGVklsZk1ZUExSR2c0V1N5aEU1YXBncitFY3NlRVNl?=
 =?utf-8?B?WjZwSkRIUEpiN2VpVTBqM3MwWkZiUUdTdURsYkx3a3VuNklETlptOHpaOXkz?=
 =?utf-8?B?NGpDZWpld2EvdVM3SzZUVXVkTElDUnBDMEpQaVk2c2k3RmJ5WGhsaStuc29G?=
 =?utf-8?B?OVRxcXpaYzl0b0YwMjQvQnNOVk1OejVDSDk1eEVGV3ZNZ1Nlb25uZk5HMlFa?=
 =?utf-8?B?bkdPOEpwUmh6ZmloTUxWTW0zYnJLVWRXWkRvNkExbGk2VGVOdnB5dUhIY2ZR?=
 =?utf-8?B?WkkxMHowN0ttaXM5aHBjbU1JZ2U4M2oyek96Wm1VZTdIRmRJMkVIR1JBbVpo?=
 =?utf-8?B?SU8wa3UyMVpZSUkwaEN2WmVOYklRQXowbzY3dGJQZWhyMVY5SnI2dnVpOFpC?=
 =?utf-8?B?aUQ4UmdDZHNRSTBWUUFOQ3d0ZFF4Z3pxSDlNZjJSa2oyanR5TDBWSENmdFNJ?=
 =?utf-8?B?MjJTdzRhVWUvK2NOSUMwdXUxeG9USzVqZkt3ZThSeTl2VW55TDAvMkp4Wm83?=
 =?utf-8?B?ZHV2YlVWNW82YjU4UHlrLzZ1L3MxYlgzYWJsVzFMVnZLSmd1YTBTb3RIa0tZ?=
 =?utf-8?B?Zk1sdWtYVnRJRXJML2ZQVGx1alNnNmJJL2owRXRQekwwRC93TC9hV0drL1V5?=
 =?utf-8?B?c0ZtYU03TlFBU2V5MlkxczNtTUtVL0pOMUxjWE5abjR2SGRTcXV5dUtiZFc0?=
 =?utf-8?B?RmFySHF6OFVrdnE2MjVJTkZKRjFGVFdOWWVpbFM4Yy9SNUhLWEdUdHZIT1RJ?=
 =?utf-8?B?WEtqU05XMUVZbUI0U0FCQXNDWUtPaHQ3MmIvalljeDdKR2M1NFZ4WGpsMm1n?=
 =?utf-8?B?di90Z3pFSEcyYUxMZHRKVzBqbmhlUlh1UW9STDFneVFEOTlSS2xHY3FxWTV4?=
 =?utf-8?B?VVFWc2J4MU5JVzhWWmlVS3lRUXVKSVI1UllSeTJkKzhTNVdRMmIrSUdTOEVa?=
 =?utf-8?B?V2MrRWdnamRrdDkxdXA1Mm9iNWFtRllnYi9HU2wyOXZiTUpUNGRMTEJIaXhH?=
 =?utf-8?B?Wk5OWkR6L3o0MFFNZ0hJZVJod20rNnY3L3E0dHI4cklJYURVdHphRVJlNC9P?=
 =?utf-8?B?MUJ2Mlo4MVQwQVQ0UEtJemFQUHNwTDh0T0ZGM3lCejFEY2REaEdyd3NLdUZr?=
 =?utf-8?B?RCtwQ3NhTjRTMmdhcWlZS3RuUW1ZOTlmU1NCMkd2RCtwenlJL3ZVb1dEWVFi?=
 =?utf-8?B?Zi8xb2NFdnJKdmxPV1I1WitvMzBFMFFRNmZYTFd1b1Z3R2QvRXJkV0U5ZmdF?=
 =?utf-8?B?VEVoMkxOb0VmNFVDeml2cHFnMEhINEFqNVl6K3FQOXNiMDQ3QmNlVzNkenJ6?=
 =?utf-8?B?U1NjOTV6YVFiN0NnWmdyL3FUSUo5Wnhpclo2UVJMZDVPSDNHUnRhY1BWNzdO?=
 =?utf-8?B?bHJoT3RrbDJGUHF1cmdlZStyT2FTV1RPS25qOVRqWU5zaUgvTXY1bU5lb1Iv?=
 =?utf-8?B?WFlXZXpzeU9nallqaElxMUJ0RzVzYUxIUHo3S3ByeWNmS2IzK3lSNm5PSyto?=
 =?utf-8?B?SVdpTzBna3RZQjlEdUp2b2JUWENpcDE4V3BEZnRIL1lyNGN4Y1E4MGUrM0ZO?=
 =?utf-8?B?djFFeGlkOU15S09TbWZmdDFMWVVoRFpBNkI3RVp3UEFwUGI0ZEJrS1lwcXZI?=
 =?utf-8?B?dnBhWWxhaVV6Kys4dDFZbFVWaDBRd0lLZU9wRkZHeTZCZVREOHZVb1V2REd3?=
 =?utf-8?Q?9/ONCoIBjrw6T0oJFdM29+436DDOkpSeq8688t+P6M=3D?=
Content-ID: <9E6945C435529F47B82DBF8270B445E9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9733753a-ca90-40db-f1fd-08d9be663dab
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 18:27:37.9631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlgpbcQo3X1MpTiYK2JF3JRJh1q5e6IrJ2xQD3H3g4c4UKThaPkiPDqC8BeYL2mejknR6X+ub12PZbyIqYXnfOen4HK9QJXAOV8YqQ2/gPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3119
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
 scheduled while adapter is being removed
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMDIxLTEyLTA4IGF0IDA0OjIxIC0wNjAwLCBLZW4gQ294IHdyb3RlOg0KPiBJZiBh
IHJlc2V0IGdldHMgc2NoZWR1bGVkIHdoaWxlIHRoZSBhZGFwdGVyIGlzIGJlaW5nIHJlbW92ZWQg
aXQgY2FuDQo+IGNhdXNlIGEgcGFuaWMuDQo+IA0KPiBUaGUgd29ya19zdHJ1Y3QgZm9yIHRoZSBy
ZXNldF90YXNrIGlzIGNvbnRhaW5lZCBpbiB0aGUgaWF2Zl9hZGFwdGVyDQo+IHN0cnVjdHVyZS7C
oCBpYXZmX3JlbW92ZSgpIGV2ZW50dWFsbHkgZnJlZXMgdGhlIGlhdmZfYWRhcHRlciBzdHJ1Y3R1
cmUNCj4gc28gaWYgdGhlcmUgaXMgYWN0aXZlIHdvcmsgc2NoZWR1bGVkIGl0IGNhbiBjYXVzZSBh
IHBhbmljLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogS2VuIENveCA8amtjQHJlZGhhdC5jb20+DQoN
Ckxpa2UgdGhlIG90aGVyIHBhdGNoLCB0aGlzIG9uZSBpc24ndCBhcHBseWluZy4NCg0KVGhhbmtz
LA0KVG9ueQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
