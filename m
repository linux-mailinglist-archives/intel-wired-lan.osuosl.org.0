Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D5E4BA708
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 18:25:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9039860BAD;
	Thu, 17 Feb 2022 17:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 07RlI9VSrxRK; Thu, 17 Feb 2022 17:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FE8D60B4B;
	Thu, 17 Feb 2022 17:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED2061BF322
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 17:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4B2D415BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 17:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgL7BJDvgSoV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 17:25:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2281D414C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 17:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645118700; x=1676654700;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8QM/bzZ5ymwPNCnLFmsWaJ3VgtDd7BnL3bI0gD+oLXE=;
 b=ndE1BU5b66PiqIzxIHpYvqOhFudmg7FAhXf878kfjBqMW0eCnP2p4W2e
 5lM6Naoa1PPinWH/0bXHdxN+k79uaG8MWXJDlR5yCe8d3VmuMKrN7KyQR
 7HztYhRugogfeZPdFDmixz3NIXhKjt1mKztimyhhM6zwN9lOlhGCYFoJG
 x7bK0pAMwl/eTBzbTXbDSyoqbc1bbkqmoI0mrP/wF+cbI8Y6mOfuKFjKM
 jM+LO/f5k3A2ov5h8puQZLIYVjF69B6XMsJbckylZTmYLDAgEnkpA37mC
 r2drE+w9J0xSOES/VVfoO8s8Z41t9d39YKBagp1prn6fVTUTkocYZwr60 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="238332350"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="238332350"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 09:24:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="637251954"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 17 Feb 2022 09:24:59 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 09:24:59 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 09:24:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 17 Feb 2022 09:24:58 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 17 Feb 2022 09:24:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wd6W+agNCeEUj29iDwHgeMrCo07UIB/aMBfRIW2t32OsucxAzS69fNMuqztsew95krOr7+kj8KNw5ulikKy9wom2QwadP9ZO/fH6C80CQMB22b4h2DsDm3dUFmhOVmaI9RF1NsklWEfk1J3zMfyq1Ha38S1ZcTjSjT7BmdGNZSicy42B2a52mPjYDSZ7xm5aUpidLAe8nmX0G3/a+ejJixksVUtYFBkiIh3BqlALhq6d9H6ZBN6cagqvYFrEs/YMmUimIaGNUXrk06OJ4vir+QOpTOVgTjgTvSAFxp3T6sv3QcredMHuOoiHQssOjziBP7xkTrxgIKZ3XF2hT2H3Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8QM/bzZ5ymwPNCnLFmsWaJ3VgtDd7BnL3bI0gD+oLXE=;
 b=XMzy6mw0obYdzjg9kXvCy6NNuMkdRebExousLljrtq0QpZUXNHjvJle9piWp10i1GG6tcP30v9lbGkqGXt8Miq5uaFnuCkCky3/0w/V2zXvdCOe494CNE45sKhbm1J9MIPo8ROfwge93HmauFymYdhI33bH8f6Z7A/GRlP7UhJU6LVGlOxVqwt1e6xYWJfOnzCr/fdsWFcy+cSbYl3xHvvkiDG6jT3k1BHbMHCXCy1OwKeXSSvzVM4e6B6HGusWMXQvMpTf92iQe9uRsqx6gTnJmiqR3pj5eMyxeLch/Bi6FsPzPns4TpDHpzvg0di8FXMVoLNj2op5cyFsnrl8lFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3344.namprd11.prod.outlook.com (2603:10b6:805:c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Thu, 17 Feb
 2022 17:24:56 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f57d:8a79:f838:ff1f]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f57d:8a79:f838:ff1f%6]) with mapi id 15.20.4995.017; Thu, 17 Feb 2022
 17:24:56 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due to
 PF error responses
Thread-Index: AQHYI5ildKTY6ECSikSc3LxgrONaIqyX/2MA
Date: Thu, 17 Feb 2022 17:24:56 +0000
Message-ID: <043ae533aa1225387da24e35578da76029be08cd.camel@intel.com>
References: <20220217005136.75627-1-jacob.e.keller@intel.com>
 <20220217005136.75627-3-jacob.e.keller@intel.com>
In-Reply-To: <20220217005136.75627-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c90dd5dc-882a-4b5c-efa7-08d9f23a6acd
x-ms-traffictypediagnostic: SN6PR11MB3344:EE_
x-microsoft-antispam-prvs: <SN6PR11MB3344A0654AE76AD1379F752AC6369@SN6PR11MB3344.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: onwfNP+EQb7dImMeoVqLO56YIgQeMUIr4PFPK7MKJNTKUp7hqU9dFGDnwxyBDmVDwv4P/Fb+yDn0XuK+nDRhdK9f1M33m8ollmcQJ677YtA26+GpNqxhIpVDB/5uA5C/5yh+oZ3M+EaXNQpQVqh3lhiXtGcUd2vS0YA03twuCEyCR1D2mfshrEnEpAtBuAAfejd7wrQ+5Ayhk/IPXhuyApNDOhEw68lQUZCo/QaXcFY1cbDxeuoZx8n5O3FHiyCxwNTxhHNPcVsy5lNlWraF7aL9Ui74229wkfYdEDT66HMCOhyylp2oweVOFFQ9HsLyWqvvDF+NLnqWUKiSoWfgJc5sLYZ7Xjt6/T6MvBfC6piraVsJaLLmgE3bquv/yDcC5meZZBs8a96rgc1PID09ErHO+EkhYI12KZIKtvjf2Nq2oTUxM7Wu0iarj6XXCui7xC0XKoqeMkuBbcYptGxfDvgdMm51pW+n9NT9MFWqMla/8v8wVZN4JifY2W5MJzkT49bXIUC2/goUa+q8gVhYs+x6HeD75cChvl0vpj44JbRewQH0/i7W4h2uAkwwVr/4K3loH/+lfmGH4uyd2xaM+FVt4oJZIraR46lTwWTdXgVByy6VjR+/7OkjRW7KgxWgJdBW5wZiGK0thzah/elAbTlmwyjbYJwY6zcV85IgwEOJPxWrnWaH8w58EIkIY4ByTACD90uYdDh2wutFoUvwGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(6512007)(71200400001)(6486002)(38100700002)(8936002)(122000001)(36756003)(2616005)(186003)(5660300002)(82960400001)(26005)(508600001)(110136005)(83380400001)(66476007)(8676002)(66446008)(66556008)(64756008)(76116006)(2906002)(66946007)(91956017)(316002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTlObS8zclBtZ0lObGJKM0htMElPUWR5L2NXUE1iMlk3SGtrc3hJaE9oZ1Vk?=
 =?utf-8?B?ZXB0cHBHKy9tU2c1V1lBVUlKQnVRWnJCeG5CT1liUnNCNzdqMThrVUZPM0F2?=
 =?utf-8?B?NjllWHFBSzFJMFlEYXRsTEJEZEF0ZndVNkxHTkZiNUxZeHc5MExGcnJIR0RW?=
 =?utf-8?B?T1VjZHJUV3JsNTFSYnBydi83cTFQTVh1TnZKS3dsY2trSUgxcmNZdmpvYklL?=
 =?utf-8?B?VlBUL2prMW5KSGh4Mk9iNXdDVm83MFlSdXF6UTJIQVZ1YmhXb2RJWE9yQysz?=
 =?utf-8?B?c3I5RWNXRmFVWWpIU3F3TktJWVE4alg1RGFqdFlwYVdGeTRkYzhjK20veThH?=
 =?utf-8?B?aUVXMkJtaW53RE5TYVhVRFQ5VklSekxwZllYWXNYanZreUtkM2hGVDFUWGgr?=
 =?utf-8?B?TTE1MFdkMjZkM2d1WEo4eDlPQ2dzcW43djlhdHB4bENKdFdUOElpYnd3VHds?=
 =?utf-8?B?ZnZ2QVV0ODgwWmN2NEtPRTl1cmdlcEtvejU5aXRiUURPbXVSbDVHL2wxY1NH?=
 =?utf-8?B?RWp6ZWNrb2dKY2M3a3Ewc3NIdFF1RXlrdjZ3TDFsTTRYNGl0V2ZUWXYzcmdG?=
 =?utf-8?B?QXRoUTlYaGQwRmp4MFVFVXpFeVFSNmV3Qmp3dlFRVTRBVWNQTG5TdEpiQW01?=
 =?utf-8?B?MXVHaUVydWdBS2JVZXYxVmc1THNTbUJXNFFqMFdYN09jaUxhQXF6bmxlQjZ6?=
 =?utf-8?B?TFlaWXJhaENZNm55eEVFWXVVVzJSWk43ZzZVd3JCaGloUlI5alNQT2NNb1pn?=
 =?utf-8?B?dTFKcmNYY0UwUW5xeHJ1a0h0S1plQURCOXE1T0NaT09scnBaL0tBNHVJRE5p?=
 =?utf-8?B?UnBkSkpsL1g1bGt1a0xRL1lmQ1VNUjZmK1lTZWJVRGNpNFZ1V0lTV0ZGMnR5?=
 =?utf-8?B?YkszdHF6cTBobCtXYzRBZE0yeUFWZkU3V1RhaHhoQ2xndjFPWHpIQ0x2Y0tw?=
 =?utf-8?B?SWJzTEFIS3gwQnJ3Uk54MzRpV2pZOHJzYzRQUWNTSVN2MWFkZDZaeHVTZmMy?=
 =?utf-8?B?LzNQV204MlUzMFJ3Q3VudjNlRnJKMEdVOStQcGdJak1RTzluVVBGRHM2NUxp?=
 =?utf-8?B?NXRIUGhLYktyUzl0bkxMcUlmUVNIYXJEY0paeTd2a01pMkRqUWY0R2VFUjFW?=
 =?utf-8?B?b0hGTG42UnZ6WWpjWElFaUJ0N3FSNzRNMklPaUswY2RNM1VvUUJYOXQrcjBZ?=
 =?utf-8?B?aGRqaUhPclhEZ25MaDJkWm5XT25CZVVWdlVCajk5TlJNbXBuNXlOdHZVaFlL?=
 =?utf-8?B?UG0wUEFjYWRjRU1zbHVYN1JpcHNhc1Y5MlhJOFVobWRidHJZUVVLUkkrU2tQ?=
 =?utf-8?B?U3pDWWRPN1BaaUxROXR3K1NaWlhTb3Fqb3c1bWl2Q29DWVRaTUlXUHh2RU5Y?=
 =?utf-8?B?VXFIRUtzNjlBV3FnVXd3emVSdG45ZzJVbEl0Wjk1Z1B4MGlldDNwdXo1RXIy?=
 =?utf-8?B?cFRFaGU3a2hyT0d2czdSSlVQWnlwV0pHMlNERXYyN1grZGVpVTRYN2xweUE4?=
 =?utf-8?B?ZE1OUU0xdUkyMFh2blV1UW9vN2dTcEpFaWI4Tm5ZWkw3b3UwVFZGVWF6dlNQ?=
 =?utf-8?B?ZmEzZXpQdXpaOFFQOHc3aFRSRXd2SXFTNVg1U2E4clNhNHZpZlYyekpGOUgy?=
 =?utf-8?B?QkpXTnI1QzE4UUM4clE3aDlDci9Cb0JUZzA0bFdheEtTK1J0eTNHbzdVdmk4?=
 =?utf-8?B?VTQ2cmhkNCtQN3FUN3NFL1krRTZ5YUhoUHhqZ3FXRUIyRFN3UXJMbEhSVG9Y?=
 =?utf-8?B?RnYxSFRWcmFZRmVHRHVBU1VmU1c4K2h4cDhCUFJCRjVLcFhvTlovZzRTQ2VM?=
 =?utf-8?B?QVJQNEd5U1R0TndRSkdKeTFnOEhzc2lOSFRneFRQZWdvRHZuaWhOcHpVR3ly?=
 =?utf-8?B?Z0FzclNJNDJIbFlaTUQzZmM4TUtmTVl2eTdMVHFueitNL2g2R3BZeU9wa3Mv?=
 =?utf-8?B?QXBNNnJXOU9mRUpwUWF6Ui8xNWFtV2I3V1lyVDk1R21DdUtxRzF3Sm1qcnhH?=
 =?utf-8?B?UEFISExoOFFOMGR4a2dMajRkME1ZQ080UTBleUNRV01VdUVRNEhqb1RRUFZC?=
 =?utf-8?B?cWdRWmhQZU8vanJIYTVzVjVycVhYa2hQMXdOS21zWVE0VjUrNTNNdmN4enE2?=
 =?utf-8?B?SHhoamRMWnpVTzVPbXBRd2xSeGh1UngycG9CYkRrN3B5UTM4Rzg0M0lzNzZG?=
 =?utf-8?B?c0tNTkZ6L3FnckVTd2dHdWRCTkxHS0h0MVZBdnVsZStnaThPUlU2NWVwNjBI?=
 =?utf-8?Q?dpWngX3RlKQn994pZeqqy0BEz2XyA8/dCIYkX6tacA=3D?=
Content-ID: <7513D21A25E70D44AF93114390D69E8D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c90dd5dc-882a-4b5c-efa7-08d9f23a6acd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2022 17:24:56.0417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qfgFhsgPeRiqJ3ILig3FyTz7Ga8+nseKdLfKWMqIj4at3m2V9wEMBaXFGHghPcwcem6rU2uoa0bYZCGpex6qG38pm8n+RQNhrZ4nmwewgB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due
 to PF error responses
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

On Wed, 2022-02-16 at 16:51 -0800, Jacob Keller wrote:
> The ice_vc_send_msg_to_vf function has logic to detect "failure"
> responses being sent to a VF. If a VF is sent more than
> ICE_DFLT_NUM_INVAL_MSGS_ALLOWED then the VF is marked as disabled.
> Almost identical logic also existed in the i40e driver.
> 
> This logic was added to the ice driver in commit 1071a8358a28 ("ice:
> Implement virtchnl commands for AVF support") which itself copied
> from
> the i40e implementation in commit 5c3c48ac6bf5 ("i40e: implement
> virtual
> device interface").
> 
> Neither commit provides a proper explanation or justification of the
> check. In fact, later commits to i40e changed the logic to allow
> bypassing the check in some specific instances.
> 
> The "logic" for this seems to be that error responses somehow
> indicate a
> malicious VF. This is not really true. The PF might be sending an
> error
> for any number of reasons such as lack of resources, etc.
> 
> Additionally, this causes the PF to log an info message for every
> failed
> VF response which may confuse users, and can spam the kernel log.
> 
> This behavior is not documented as part of any requirement for our
> products and other operating system drivers such as the FreeBSD
> implementation of our drivers do not include this type of check.
> 
> In fact, the change from dev_err to dev_info in i40e commit
> 18b7af57d9c1
> ("i40e: Lower some message levels") explains that these messages
> typically don't actually indicate a real issue. It is quite likely
> that
> a user who hits this in practice will be very confused as the VF will
> be
> disabled without an obvious way to recover.
> 
> We already have robust malicious driver detection logic using actual
> hardware detection mechanisms that detect and prevent invalid device
> usage. Remove the logic since its not a documented requirement and
> the
> behavior is not intuitive.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

If this is for net, it should have a Fixes: as well.

Thanks,
Tony

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
