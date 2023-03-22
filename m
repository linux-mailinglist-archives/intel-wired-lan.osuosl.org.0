Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5F36C49DE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 13:04:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E129341679;
	Wed, 22 Mar 2023 12:04:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E129341679
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679486682;
	bh=s6SSsheI/EtxoLqnfapJ7aQsgciQT/NRyht62SJTvx8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bqg9BunRcUZM5QD0aS891k9wPImmEfpmRKMrVsOLopdmrOnYKsZD7jmcYms7SVw/8
	 4iM05DXFTmgoVhgYlEj7nbsow5qigdlbmoKihJtp94hu3kSJHijkcG48V9XsM6SK8+
	 00vowbyi5AHQfeeUiq5cmMCi6RZ+S9q8KLhmhAFW2eY+eBaJ3DHWrf48pL0tn+Fvw0
	 nLDg4Ig9yIGhG2Wacjnzo4dZrMbio/G3wTLee/KQ+L7PiuA8wNJXO840zK0oyA4jHE
	 QurHQJsGUeNgfQxr1KMwClKV7YfmzdwJeqapew86DYEUACRGVIOszrf/zfQUSR+hjS
	 AdlA3W0E8iXYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U20dwN0DZWHO; Wed, 22 Mar 2023 12:04:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1FF6409A7;
	Wed, 22 Mar 2023 12:04:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1FF6409A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 579731BF82D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 12:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BA70613F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 12:04:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BA70613F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P0iqI6_FxcTF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 12:04:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D00E60DFF
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D00E60DFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 12:04:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="337915190"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="337915190"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 05:04:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="681871401"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="681871401"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 22 Mar 2023 05:04:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 05:04:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 05:04:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 05:04:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 05:04:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fh5DjPwr9PHCOT4bxF0Uq6VpObnVbKCkk1aToQiMpy2Y9vNotE3PhvNUjN4ZAfwWEAVYpmLRkH5ogrILVdRGipu6tDt8+lR0+RId1jz2lzBFGU/uHO83+png+Z2NyK4j19w9wPWsioLtYUMW7CV4YYY3bMCAmwZHE4yjkG8mnJR8RtieFpr1DW5Xwl+lq7XvS7iaOvNcj5TKyo5eD5kYxAlsRGIfJZEzUA47g3GpKkiw5tO9MBuPICSvaaxlTTqsk7m6oCxx80u+lp4x2j4oJe4jnW4U6p+sdFE1okckOiID1wSVruUPi/uyxw+GtRmutQR/Hr7y2p7R59XxhKzOVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tvWFy2YZiSMbVIfavR2XYDxoGjH39GNXRtlW2lqDEgA=;
 b=DaNz4n7+o+oapUS1epT/ZodIH9ImAD7HXqP04CVDYrpinN4ymmkriouDRipd6+Ykz6iN29ccrNBdWhx6YSRCeanxRoIzpeIn8FT8XRWWUXF7OJTma1SCVVmMrbqFBw180onu+JGCQfClHalVbPmnAYGUMJ/1eTUqbiTQo70xuzA7/Tcpj2NFKWkHkb/mqCnfc929sQDnhXaikxXBEB8QyGxy/bSz+ZNCEvapigJCWFVU7r2XInqDYLp2y9tryYqWu56D32FBxZE5oWZaZ7LA3+nsPBf5+1eWQ7x2ufefNxRhlt4nzm3c9cBHQQ8ySDEhbznmAfL6uwDnFIbzaW1RjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by PH7PR11MB5943.namprd11.prod.outlook.com (2603:10b6:510:13f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Wed, 22 Mar
 2023 12:04:18 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::db8c:a4c3:1b01:5c94]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::db8c:a4c3:1b01:5c94%4]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 12:04:18 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Thread-Topic: [PATCH net v3] e1000e: Disable TSO on i219-LM card to increase
 speed
Thread-Index: AQHZRsekTk3jI64hCEGOW1zAgzP6nq7bBKkAgAAI2wCAINv14IACzryAgAgmefA=
Date: Wed, 22 Mar 2023 12:04:18 +0000
Message-ID: <BL1PR11MB528825786C2DB1BFD1A71DDD87869@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20230222140741.35550-1-mateusz.palczewski@intel.com>
 <20c52c7c-c3c6-ff3c-469f-ed3cfea88e1d@molgen.mpg.de>
 <CAAd53p72mMcUnLujy2GXMmjtZHUM5kvtx1nEBtS5OsqFzftmLA@mail.gmail.com>
 <BL1PR11MB52886D1CD0C802757A2C6E3587BF9@BL1PR11MB5288.namprd11.prod.outlook.com>
 <CAAd53p6=nmGXnPnN8NRdheX43sn8Y_xRyWizUTmwF5=n_poJaQ@mail.gmail.com>
In-Reply-To: <CAAd53p6=nmGXnPnN8NRdheX43sn8Y_xRyWizUTmwF5=n_poJaQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5288:EE_|PH7PR11MB5943:EE_
x-ms-office365-filtering-correlation-id: 2f76fbc5-ab50-4c5a-c6e6-08db2acd908b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x6HGv6/Vm1AZOgUjz7wyj9+OIFhaXFDDnK7cjkjNVKANRVtrPBHnEdUundDEPXnROI1wx0Eo9w/j27J1gCmPzpjz3BnQmGYVB4N431kXSt+ZXfp20F29HdVKc/QTc2vmDaNT6iuS0a66+30Nox+F8E58Pa8mTygVeP3+00k2gsW6ig3xXTIsoi18dXZYgMPTP649vo9MKJNhwvabhhwsM2sbwN5frR0SME+uGt3xpMM2Kjed6pcVsDm0QLOUgjfQ6GFBm0fsOGPhj4cPkPRHWSNBth9RIbguV6zPPg9c/ZgACS8mce5mX/5ds+b1Fw/578RfEKJPzEDxPKcCKZjevTpexivP0OjLBaMVCjySUDN7FV/q5YqgfeLMOSnop49qFAn9IOalxW2usJ7bD+Bq7OsjdXAnkDGZUVd/5J4SimO79VLzXbCycfr5k/TJLh4JXupIXnvQ1erRcVLpvIlqKoeVfU+z0qpUWKWsm3eUhSHvHSstQDmeYoHYpNLtA09U5Ji+6gGbb55TC5eo3smijhWjn/qYnynOTCwUfGUs65nW5sENS8fIGOE/x4MlmXrMRJTL7z2tuixjMdsNd6Yz3+oKiJUnF6BtW2XjvdzfrjABozd5FyeHqnEA84EoKrnxLu1wbeiAVADxsn5RtFbJ3cvDneE671QU6fkPkSxqvms7h2mGeYqU8+vE6a9VNpQl1asZ5cy3T4AtNFhxkL+r9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199018)(76116006)(478600001)(8676002)(55016003)(6916009)(8936002)(66946007)(33656002)(71200400001)(66446008)(41300700001)(66556008)(38100700002)(4326008)(82960400001)(38070700005)(64756008)(2906002)(122000001)(86362001)(52536014)(26005)(316002)(54906003)(66476007)(186003)(83380400001)(9686003)(6506007)(7696005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2xJUWkyMEhVcEJLTmxTU2tBd1g0M0tQZVQ1OXpJZWRXa1RseWRXVE1UR05j?=
 =?utf-8?B?dVJSOTlxM1F3SW9DbElFTXhlRXBrcnBNMmlCc2M1aHZEalBNSXJBbG1VbGE0?=
 =?utf-8?B?QngvUGFpVUYyR3pqdFgySlpuZFRRckd2aHpvMEJHVy94NjJySS9NeFlDSDM2?=
 =?utf-8?B?ZzhUeXlHNW5hN0RWK0tGMStGSVB5UWd6YlJ1Z2tDQk1yVVNzUnJ3NUwwWWc5?=
 =?utf-8?B?Q0NaOUpFQ2gweEw5aUNvMnFLSitwOWJQUzRTS0VLU0xWZVp0MkpOcm9IWGdQ?=
 =?utf-8?B?NGRNc2xneDFCZGNqOGRpU1A4ajdrOUhrVTJCUUlUQ1VYMzNNUEdVc1pIQXhO?=
 =?utf-8?B?WmV6ZWFBUC9pSGtURzUydno3SndCK3JiRkh1Qkk3N1V2VGw3amxNOFIvOVRN?=
 =?utf-8?B?c1NvMUF2R0g5MFpxbk1EQlcxYWFETjRudytNY0xuNVFaL3AyOW04RDl0THNX?=
 =?utf-8?B?K1draEFjMGx6dFhCcmhDVERaY2dlNjdNbVpDZFVVY0owWUM1dWhJckJaSW96?=
 =?utf-8?B?NDJJWHpOL0N0UHUvNWpxWHowNWcxcGc3VW45dFpSRWgyYUdvRE80TmJVamVz?=
 =?utf-8?B?YkpyaDY0dnBhZ2RJNDlTNDVpM0RpbXZob0ZGN3NsY0dQdk16bXhMeCtMWXVS?=
 =?utf-8?B?bE94N0NST0lHWWFHS3M5TGZOWWRXd3lIaC9KdDRURHlBbGVVbmJMYVZaV0dn?=
 =?utf-8?B?Y0tMS1hrTG1SdjNENnpnRFM3b2VURStPV2VrOTFuYjlOcWpqQVhXbjdXVHNI?=
 =?utf-8?B?MFAvalA5L2FSR1lJL3RidE9vYkZPZVNoVm1qSkdGTUREa0J2NjBwclh4cUV3?=
 =?utf-8?B?V3lJOEo1dXNQRWZTcm9YcngzTENLZEdFMVlycXdtS3JPa0NOWUtZT3pvTTd1?=
 =?utf-8?B?WWFIMDhReEpRQUxzb0JiR3U1V0JHR3N0anJkeTNuL0FwQkZKbHFlV016R0ta?=
 =?utf-8?B?ckExMS9NM0RKdUtUMlV5VlluODV4amdLUjZmZnhNUjAzMkkwYlIyNlZxRDhC?=
 =?utf-8?B?R2NIT1poMWhuSFdMdTNLUTJXdTZCbHlBUFpqTTlXUGNZbWlKQTZtTGswRWpk?=
 =?utf-8?B?U2ZKS3FDWlFueGtYcHhXMllRMFVvWk02Q0FMaXgzSERFTnZBTTl1K3RKK0lG?=
 =?utf-8?B?U3VDUXVuNWRWUWNQKzQwdDBmT0dLNDcwSi9pdld5SVdFTEhPcDFzVXBweWll?=
 =?utf-8?B?bmxaNC80eVhac3YvYVlWeDdjeXFQUFdFUUlMMGhOYlBabmxCQkdpRi8rYS9t?=
 =?utf-8?B?L2hGQzRNenROR2pwZ3lBbk1hU2ZwU0RJL1BoNkFRN3Yvd3NONmEzSk12R1Rt?=
 =?utf-8?B?VzF0NHV0eTl5ZkFzU0wyTjV4cmc3K3lNd0hVSEtXYjZYUlJsS1dnazFPOGpY?=
 =?utf-8?B?RmUxTjBGNGFacnJnWFBzUmNaQzZrTER4Y0dsMjdxWEduZjkxM3FTSURkL29Y?=
 =?utf-8?B?NU9UU1g4bm9tMmhldTdrNlRJc3RKVHNGa0dwd3VKNkdXZGh5eUZFK0RiakdO?=
 =?utf-8?B?eGxqMndDSU5QWFh4QWdzeE1kWER2NDd1a1pGT0JqY3B6RlZuOTNJNWZQOFhI?=
 =?utf-8?B?N2t0Z0p1UDlVWFJoTUFHQ3dGYk9LRTlSRFZHU3VoSnZGSlZXR1lVU1NqdnB1?=
 =?utf-8?B?WVFaYW1jbDZ1R3FhR2RJZElxM2JRY0ZGTnZ4ZElncUhDS1RrajZtZDlBbXJJ?=
 =?utf-8?B?YXVSQ0dIdnFlN1dheVVyL3o0U1IzY3FHSHBHcVZWWkswZ3JhTGFYNXdHUndK?=
 =?utf-8?B?a3pKWlVqcmtqSW96Tkd4bHlnWVg4T0JlaDZEUjYzaGVtMlFVWHphM2NEWGkx?=
 =?utf-8?B?Ni9jSW9nN0k0aElsYldsbmdvWTBCQVcrb2FUNDNNY3FnV2ZlWXp4V2pXd1p5?=
 =?utf-8?B?UHJLL3hXQmZFQmRvTjJIamlUL2N5akdyblNLUWxwZlplZUJYYnR3TmxJV1NR?=
 =?utf-8?B?aEtvVWlDV3VwUjJvY1ptZEZ3bW95YTFIczdlZVQ4dzFnVUlLQkh6L3lWUlYz?=
 =?utf-8?B?d25nSnMzVDk1WERXODNPdnNhL001UXNyMFlHalk5c0hiTUlLUzJrTXlzVTNW?=
 =?utf-8?B?djBLSjUyc2c2Z0pWRXFrbkVFQmpxdDJ4b29TeGh4ZHNJOGRZL1JaVWRTTm5I?=
 =?utf-8?B?UDM5VjEyaGMwSldib0kvamNFQXVMcnYzRHNhSHJ0RnFnays5U0x4c01HcFlr?=
 =?utf-8?B?dlE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f76fbc5-ab50-4c5a-c6e6-08db2acd908b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2023 12:04:18.4486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YE3tTWK38O3XAHuQZ7sLRoVojGyRVgzS0rvKLIE46KBtGw3ibT1OrYWlThHsfVM62sNRxdll6wuYD5gwQmy7jq6puT1pyoSlAFaOlXQavQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5943
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679486675; x=1711022675;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tvWFy2YZiSMbVIfavR2XYDxoGjH39GNXRtlW2lqDEgA=;
 b=YXc0vNoz2I11O9Jw6rvABQP80BkzMBWujOSedbe8Rg+7s/42NVvyQDLS
 IH61rc9hmegQ+MRM5V34xAJE3LceL/Lx/uDYuMJKKG2KRKWKPcU8TOwBJ
 a/FkMeN+qcxpMBo3F8Pu/c1rcPL0YgliDlh/z0PHfyVpegliTS/HflNOD
 d0aHAvjR50xldCiGCn9fl8FVG27pAVB0EJIHmswl/wgdsuI2RPlOkdNOX
 5006qbm8BTjE4Xl+dK8z/kma8fVpboY4Rb03y0awHwXThdMNOSiZ6u5cu
 KSl8Sv0aMMXv0xucawqwg2T2oiG/LVSOA3L2//YWyYCeMDYiqvVzXBrz/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YXc0vNoz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Basierski, SebastianX" <sebastianx.basierski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

>Hi Mateusz,
>
>On Wed, Mar 15, 2023 at 8:44 PM Palczewski, Mateusz <mateusz.palczewski@intel.com> wrote:
>[snipped]
>> > > Also the questions from the discussion of v2(?) was not answered, 
>> > > why the conditions in the if statement of the code added by commit
>> > > f29801030ac6 where not true.
>> > >
>> > >      /* disable TSO for pcie and 10/100 speeds, to avoid
>> > >       * some hardware issues
>> > >       */
>> > >      if (!(adapter->flags & FLAG_TSO_FORCE)) {
>> >
>> > Yea, my idea was to take FLAG_TSO_FORCE into consideration hence the adding the change to this if block.
>> >
>> > Maybe someone still wants to enable TSO despite of the downside?
>>
>> By disabling TSO during probe we are not shutting it down completly, if a user wants to use it anyway despite speed decrease it can be done manually with ethtool.
>
>Maybe move the whole block of "FLAG_TSO_FORCE" to probe routine? So the code is logically grouped.

Sure, I will test how this works on my setup and then if everything will be fine I will post new version on IWL. 

>
>Kai-Heng
>

Regards,
Mateusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
