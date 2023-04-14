Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 105926E2715
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 17:33:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8CF48440D;
	Fri, 14 Apr 2023 15:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8CF48440D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681486388;
	bh=CTKaXuVujeHC8+76b4inkRbufWyBJ1DEGLCkMQjHj6I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9atJUDNUITbcGJ/1ZAuoxcW+kLzbhmCuBp7h4pfm4JdIp8NNMgSMynaBVEfIHCW4A
	 vgHREcTTfCRkrV0b7FucGJaG0Hh9zMAF6AeeS9Okh+C25RM+RCe1GFtoWoQlB7e9Ag
	 he3IDKL1wKsmSBoGMpkvezqUupXcKuMU3o7/3EmMx5DTVkBoG79jDN5ihtgSLY5DJN
	 FbI4zZ8wmthMBklqokiyRFQToMzeaTzKKMfuzILYp7ncUMIYuTovVGnVGrS51nIx/z
	 doxpS12IWx+HysbybwFtcNBLDgC9RAdMURgFJFM8lRz3Zwl4DnOHDNUpntcVgFf8u/
	 IHpBc+sZPwOUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fMLJXa4XLbtp; Fri, 14 Apr 2023 15:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E372817D3;
	Fri, 14 Apr 2023 15:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E372817D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C7271BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 01:34:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1365B42A82
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 01:34:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1365B42A82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlLE4nd06wFO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 01:34:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55A3642A80
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 55A3642A80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 01:34:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344353924"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="344353924"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 18:33:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="864022389"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="864022389"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 13 Apr 2023 18:33:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 18:33:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 18:33:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 18:33:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7GOIWkksv9GsifY3rHgfhSnRnYC5dPIRI0sUWNVRTgn2PqE0eySs48s6X6eCEPCGxPOAlUDxujGbjIVYCCzAGlLTC8AQiJJRvyo5bstnVVQecvSp8zP9im9QTT189XH4BE22ODodkMOg9ZQHtDVQ03vfc9hsc9ZeP3Z5sAhKLgiQRU9Cyglx0oaIKIjvkoq5h+qMSQb7BmRyJ09hsYTOglfJVjbyb+2MUjQwTTU+zkNCU030fLoaezoOEHPWWUUhe2heD8fTFqbLKs30K24ryyQr+Kh79MSFbFXLi11UX3BF5jfOh1vQtDJdQvMjYwd+wsH2cySmNt5zw1Pix98yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wbNBBcI/JI0xgJYdKZj5Lzk39FXHiUUByEF8YHZHV/M=;
 b=PHrgtyRrwzM219sbOUJWm5GpCYPDXnVgamM7JbOFM0c6IFum1PYhi+wi16rRVDqLkKWW7Ng4TMEEx3i6tbcHRD0gDeYSClN21xlPVvqKjrTmz0rCHyYJkw1+tO1CM5Rj/KNSyGf3x84mKkUiy8u/sMHjJ1WVyL4wcZIll9wh7GG+fykCnWHTFUi5egrD73Sv/Hco33pBWzQ3tcTMZ4r7BPqPX+QJrPUZfxIh7QQByisnfIk6uLyW2/DkrYAeedAmTe1xQhjwzfkeEQpUcBIAPZAisAMANtt9mVB12rscndzrPmCc77LuRHEyE2T2I5vWrrZ7e3jR57+AzrtKfjUmvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 01:33:15 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6277.036; Fri, 14 Apr 2023
 01:33:15 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Vedang Patel <vedang.patel@intel.com>,
 "Joseph, Jithu" <jithu.joseph@intel.com>, Andre Guedes
 <andre.guedes@intel.com>, Stanislav Fomichev <sdf@google.com>
Thread-Topic: [PATCH net 1/1] igc: read before write to SRRCTL register
Thread-Index: AQHZbhp1VdIm3fVCg0ugMsk8Zltg9K8pkyEAgABse+A=
Date: Fri, 14 Apr 2023 01:33:15 +0000
Message-ID: <PH0PR11MB5830186580A5A1AD15AD5961D8999@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20230413151222.1864307-1-yoong.siang.song@intel.com>
 <07a88087-bee8-e549-c069-63d52268aef1@redhat.com>
In-Reply-To: <07a88087-bee8-e549-c069-63d52268aef1@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|PH0PR11MB4790:EE_
x-ms-office365-filtering-correlation-id: 5b3f69e1-36d2-4ebc-d675-08db3c8837b1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qAm098mLSumby8WtiSW1LAzMa8wxPDe0JcPwpFOqTlMRrOLb6nRcTtUoZaYnnURbLyLIiF/ZaA7897sLuC98ysc5Dv+xMbMW9O/ZErw2GFpZG4gJrDE2YRHhFHMUUZYCYi4hEBilktLqKYkl7UuwYA+eyOc/yluuEoK0/o+cY/oPzNZWE5qw9Q4UADREtxa32mq3no2X0BBxoEPzsZkiGXBmvCoYG2eJ0SfYp+/u813E8m9QfJ5Bo17o4p0ylZYeINHNSv6RZi3R5HjhvPZD4sHsN9jkqvKtDWom6YCgOY+eD6fKZwWGrhq/HxjfSuhv9s+iPr8wGtZxe7ZFjaThbndEFgm+oNRXNGaYlL6mBNU0iywOrQuDaBeSyzr32Lb/mpmqBzC17gdAMzZLQj2gq2xv2YI4RWGsvH6KtN9YfjHEcOemX9TvbyTEU7sDoy7DlETMuPFaZUDlBhO0E5v8CLYyfCpqht5ixw2nJxp2VFoagdewWcYYsN0k8Dd9sU15KKntSBUC+58m8OmSDSQrEw/3D06HaIR0WasHHLUFTLYj9qTi0KwUEPGvcDZzKWvQIVv4nmN0bFm894eguDNZEwbfKkd4NysOMRIVdV7Xt+qz+gMlsWJWzQDK5pSdQSkfPQPF3RFJGGNboLJ+WpH7RQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(346002)(366004)(396003)(451199021)(38070700005)(55236004)(9686003)(26005)(186003)(6506007)(53546011)(54906003)(33656002)(478600001)(55016003)(110136005)(122000001)(921005)(2906002)(7416002)(8676002)(8936002)(83380400001)(41300700001)(5660300002)(52536014)(38100700002)(316002)(4326008)(66946007)(66556008)(76116006)(66476007)(64756008)(66446008)(82960400001)(86362001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWp2dWYwNVRFeDhsMWcvaTZLeTZxYWNnZU1iMENMQ1VkQ2JpT01iWEpLNWM0?=
 =?utf-8?B?a2RkRTRldUtKVzJSekZOTExwVDIrMCtVbDNVeDJNbVFzMU9rc1lWOVhzVTA4?=
 =?utf-8?B?dGVsUTVjMmxmZmFuQ1c5ZEExKy80YjA2NDZJMUdsbmFrblRMNi9aVjNkTEw3?=
 =?utf-8?B?VThrUVQ0TllITkJQdEErbGFGK1o3QlhCcWFIeFNTcm1jdDZ0ODc4OWh2ZkQz?=
 =?utf-8?B?Y1JMUjZnZXR0RVo5NGd4ci81blJsb29Jb1VQVHllQ1I0bXJldU8va0o1RXo4?=
 =?utf-8?B?N0dnTlFmUHJwWU1VaTE1WUhhblBYM2x2TUdPS29GYmdOVWJuNmZmMDkrZnBY?=
 =?utf-8?B?d0V0bDJ5ZHFaL0w2WUVQZlFYVExFMU40c2x6NWJKdUhjSE50L3YrYUo4cUVp?=
 =?utf-8?B?U3pCVXoxblA2N3NDK1JKYnI1L1ZRTVlRbDNMMjZHeThONTZYTlJOV3ZRTlRm?=
 =?utf-8?B?azgreEVmQVNtRkltUnZ3Si81bDlkVmVDYlppK0diekZGdDFQUVdpcCs4K1Jn?=
 =?utf-8?B?S25UTzB0WEhmSzQ2dk5mVitxa1FpcUZQSWZROVJ5aDk3ektuUmNlaHJNcFA2?=
 =?utf-8?B?SWhzTWU4NDZHcjVMZ3N0ZkdOeEc1eUJleEFVSWlzUVowSmdMOGV0M0RsK1Y5?=
 =?utf-8?B?bVh2ZzVDRUFkMkFHRTkxRVJmRXFrK1JnMDg5Y1QvbGdiZHUxYzQ1QWNkaGZo?=
 =?utf-8?B?ck5IN1BWTDJwSXI0K1M5VER5SmlFTmgrVkppSE5EbmY2dGkzUGJ1T0NwUmg4?=
 =?utf-8?B?SXE5SlZOcGMyZm10L1FETkVESW9KMk0ydndkc0s2L0FVVDlQdkdpcVlkaUNP?=
 =?utf-8?B?RFk1eTdIZUpNZTUvRGlqOUZVbjdMTitIUyt6aVNOd2NLUXg2RW9MWWNHQ0dW?=
 =?utf-8?B?SjVsbUQ4aHYzVG1pU3pISytDNE85SnBtckJxTFhKZWZ6LzNZSUxCUjJ2NnFj?=
 =?utf-8?B?RnFreHJhT1hhVWd6bXlsaEczMFZwcjNtNXBzazAxaHdlT2kwTms4aTExZXpS?=
 =?utf-8?B?dHFTZ3oxMVlOVEVIcmphWEtrMXZONWdIWjhKRW5Ld2pydmJMeWVqaUtmOHBz?=
 =?utf-8?B?enJ3bkMvOEFIL1NxeW9FeURSaFVOMlhTcEQ3SGZJSVFROG5OM0syc2hqdFdZ?=
 =?utf-8?B?VGhDM3hYaTFLOStrVmZPVHNZaklmbHNWV2FlbERHcjkyZ0hUNk5tdDdKaEM2?=
 =?utf-8?B?b0MxOEVkcmVuOUExL1JLNnJoYU1nVnlUOStyUng0d2FldkpkN0g0Rk9LRjN2?=
 =?utf-8?B?M1JEa2FKQjMvUGp4dEdhRzRvYUFSV1Z3Wk5rak5Ubk0ydnZYUHBVUlUrbk4y?=
 =?utf-8?B?THNqUWVQS0J2NnN5NTB2K2tVU1g3VlpiYlp3c0Q5SXVlTVdPbUdyQSt0eGlI?=
 =?utf-8?B?WlZPYUxiaFBXcktWamNLazhZVjFXT2FkMkREOUtMc09raWFuc0hyaXhCSzRR?=
 =?utf-8?B?ZXh3NVBSWUViUFZuN2Foc1c0TFd1TXlkbDBoYk9yN1QxUWFteXk0RWFxc3hC?=
 =?utf-8?B?NGltOFVPbU80QUR4YUVxU2VUVFhpR0pNSkV5R3BoYWdPbkRrZmpQUkNEUzMw?=
 =?utf-8?B?SVp6UWlCd0Ewb2RNcEhwV2dFS1ZtVUZNUlBSMDFOdlBxenBFQVpWQW05cWQ4?=
 =?utf-8?B?OWtJQWRoZ09iSjNGOVRuVitoSXR4VDgyK0R0K1REOEFmNmZtdEhpM1d4M1o0?=
 =?utf-8?B?RElVYjdhWEltdUJXN056b1hwbEZFd1RQZ2lKcHg2TTh1OWpJN3JFdUdpbm5y?=
 =?utf-8?B?dk43UGVGMFI2NFovbVZSaVZXcStLSlhvQmk2blNIanpxcGJ5OW5FZm5PTTRj?=
 =?utf-8?B?MkZ0aWlPaUd2bWtOL1pRVzFMOHY0K0NTdlhob3c1OVJrTnBpK1MvUVdKdG9G?=
 =?utf-8?B?YUpvNVh4dUNxaTltbCtoVjY3eExCcWRDOW4yN2IwNW10L0V4aytCb1p0Q0Rs?=
 =?utf-8?B?YkJadzlUbW1CTytoaGRRVDRtejNVa2JyMFZwT3FXdnIxTTE1MXp5bExTalVP?=
 =?utf-8?B?VlNIeUtXTUZHOE1BdTBDdUlkSGU5eFh5TDcwSjZuUnVpTHZ6d1ZRRXZ1aFRV?=
 =?utf-8?B?RjZYZ0NJSytaZDdmNm1ZejdhV25oZko3cHhHRGdsS1l5M0ZkT0xBRmdZOFhx?=
 =?utf-8?Q?B/uyc1aDcz+XehlcbqKM86hdu?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b3f69e1-36d2-4ebc-d675-08db3c8837b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 01:33:15.0340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6nnHCtaMNGZTba7gNJ3GXiu3SYA2RonHl6KRsOlbd95mzpB1/J/58lExXZbUM5LQaRKV7qLn2ph7+YS5Z3YS3kr27UDqRe++Hul5Z5uW6os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 14 Apr 2023 15:32:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681436053; x=1712972053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wbNBBcI/JI0xgJYdKZj5Lzk39FXHiUUByEF8YHZHV/M=;
 b=CRroJLxB5rk59ij8CwQ0PgHc1DNG9cwmDWpe2jBDKYVZ9XbuLfKYZ0Xb
 Ta/s0PMn8/35onJ6QFcPqIWUtV0ikerutQUWKRM1A0zomUxNVn+zZAInL
 mdhGmPULgnn0RlByRKwETePJV3K1zSTsM9OL1ofwLrjC6Xan/jwmaTlcq
 nwK6mam0IC4nBWNReA+o6ffRVQPEX7sKX1bz+AMeMDKM56E3EimWV7VSS
 xr466X3YVwlL/9WtdiQ8jUp9BGq6An0L6UucF7p0I9GwClPOvmYKmOlfY
 b/F96eHQfF0C/F7mYBAmcVUe6rtDtobhEJ8uGi89TP0bihlrtEaKwofv0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CRroJLxB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igc: read before write to
 SRRCTL register
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Friday, April 14, 2023 2:42 AM, Jesper Dangaard Brouer <jbrouer@redhat.com> wrote:
>On 13/04/2023 17.12, Song Yoong Siang wrote:
>> igc_configure_rx_ring() function will be called as part of XDP program
>> setup. If Rx hardware timestamp is enabled prio to XDP program setup,
>> this timestamp enablement will be overwritten when buffer size is
>> written into SRRCTL register.
>>
>
>Ah, I believe I have hit this bug with my igc patches.
>Thanks for fixing.
No problem. I found it when testing your patches too.
>
>> Thus, this commit read the register value before write to SRRCTL
>> register. This commit is tested by using xdp_hw_metadata bpf selftest
>> tool. The tool enables Rx hardware timestamp and then attach XDP
>> program to igc driver. It will display hardware timestamp of UDP
>> packet with port number 9092. Below are detail of test steps and results.
>>
>> Command on DUT:
>>    sudo ./xdp_hw_metadata <interface name>
>>
>
>Why port 9092 ?
>The ./xdp_hw_metadata prog will redirect port 9091
Yes, you are right. But this patch is tested without your patches. So, igc Rx
XDP metadata support is not there. We only can test XDP_PASS which
the timestamp is put into skb. xdp_hw_metadata tool will open a SOCK_DGRAM
server on port 9092 to dump out timestamp in skb.

I use xdp_hw_metadata tool to test because it can reproduce the issue well.
This issue happens only when we enable hw timestamp before attach XDP prog.
No issue if enable hw timestamp after attach XDP prog.
>
>
>> Command on Link Partner:
>>    echo -n skb | nc -u -q1 <destination IPv4 addr> 9092
>>
>
>Again port 9092 ?
>
>> Result before this patch:
>>    skb hwtstamp is not found!
>>
>> Result after this patch:
>>    found skb hwtstamp = 1677762212.590696226
>
>I usually use this cmd to see if number is sane:
>
>$ date -d @1677762212
>2023-03-02T14:03:32 CET
>
Since this patch is focusing on hw timestamp enablement. So I
think checking on whether Rx HW timestamp is there when
rx_filter = HWTSTAMP_FILTER_ALL is good enough.

Thanks & Regards
Siang

>
>>
>> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
>> Cc: <stable@vger.kernel.org> # 5.14+
>> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_base.h | 7 +++++--
>>   drivers/net/ethernet/intel/igc/igc_main.c | 5 ++++-
>>   2 files changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h
>> b/drivers/net/ethernet/intel/igc/igc_base.h
>> index 7a992befca24..b95007d51d13 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_base.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
>> @@ -87,8 +87,11 @@ union igc_adv_rx_desc {
>>   #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive
>Software Flush */
>>
>>   /* SRRCTL bit definitions */
>> -#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
>> -#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
>> +#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
>> +#define IGC_SRRCTL_BSIZEPKT_SHIFT	10 /* Shift _right_ */
>> +#define IGC_SRRCTL_BSIZEHDRSIZE_MASK	GENMASK(13, 8)
>> +#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT	2  /* Shift _left_ */
>> +#define IGC_SRRCTL_DESCTYPE_MASK	GENMASK(27, 25)
>>   #define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	0x02000000
>>
>>   #endif /* _IGC_BASE_H */
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 25fc6c65209b..de7b21c2ccd6 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -641,7 +641,10 @@ static void igc_configure_rx_ring(struct igc_adapter
>*adapter,
>>   	else
>>   		buf_size = IGC_RXBUFFER_2048;
>>
>> -	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>> +	srrctl = rd32(IGC_SRRCTL(reg_idx));
>> +	srrctl &= ~(IGC_SRRCTL_BSIZEPKT_MASK |
>IGC_SRRCTL_BSIZEHDRSIZE_MASK |
>> +		  IGC_SRRCTL_DESCTYPE_MASK);
>> +	srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>>   	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
>>   	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
