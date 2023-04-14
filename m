Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5266E2716
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 17:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B934484422;
	Fri, 14 Apr 2023 15:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B934484422
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681486392;
	bh=ikfynKScwpd4BrJRudOH2jxpc6gPL+5kStb7dDLpnEo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vkmr5CjB4z8vjZ6p0v4fuviaOSzO8nid+u/ab3EA2u5YgqlJX21M1gcQ22Mo0AOev
	 S9iFHeaQYCc6Zb0A8vFvnm7Xq/lJQOIJsrKqKb3KIP4j+dlbnxMHnSuusvMSvHfnOh
	 40Q3kuIoGuYNIvyeaZeGJQ/tpqnJhNID1U7JKFcAbqoc9pydHskERGsJuVtbLORXGm
	 TT6eXvmwQvbNiR29x05s1sIPVlg6uI5QMk98zdN65sjulT7DDWKibuRcMssQeEBGO5
	 w7USo2Goc4XV4a4XKQp8lwtaD970qUiCz/Ee6LS2E3+Og/wf2gfv1gwAmmVL4Y19/I
	 vqbyJEmVDLjNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id akTUErSIMKAO; Fri, 14 Apr 2023 15:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 881DF817D3;
	Fri, 14 Apr 2023 15:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 881DF817D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12C631BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 01:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA13A60EFD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 01:36:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA13A60EFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EQgBj1KGhmLB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 01:36:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FB8760AE7
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1FB8760AE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 01:36:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="430647495"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="430647495"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 18:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="801005540"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="801005540"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 13 Apr 2023 18:36:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 18:36:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 18:36:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 18:36:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXgVccS+Z1QHlGm6b6TvKLEvieIGTqgp+o8pWSLTNczcmD6BnN/YvWJRcVRgVgtfyohECJ7CHDNHGHpUk/JSRtjvOk5H6RDqf2At6mBumtBvz7VrbR5RBAOcioWBAz+im+MFB4jFjZaxu08S604rKg6z+0p3IQPKPNdknG+mVuQMLUraJiKYbdnpWbnGoS6yCSnqP73212H09RTT1khRir6BWiNRbMxVM7KxT9do61xCwro13dsYloWUx6mwyXsiXHiU6w9e5J0jNoG4xZemtZdhF6csu5G0qCdpZDwujYw6EVvvJLhu6EXZCSoKVXyNXmAOYBRwKX8TRMb8ttFfBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dx3QdiKQbHHs2a0a5adZFNyZh+8yQYrvuOb5yyVYsJc=;
 b=lchqXEgLdQ2qte6dZ8bjRMozYKyT2A0Rtp8BkwARpo2/SEZUPEtZPWaQvNmwjc2Ewu6JOJC0G7U8ugKUr+k7YYeQRl8czyL7+JeP3t715Ff9K45aqvJX8KkOciQubsRmEHo4Rraxrzrgw7MKNAJ+fIDHy2GFYfidAPICTBFvf8s9F14NI6fMwnnJ03d8jTOzI/btWyorU6bjRirEtUgssyzjpKFBW9yXOCnxXNe35jm5IZCG80I7ifEUfBFniBIPXfjFAinxTX6Cbf8Pvlk6YDg6MQm4m0zc/KNJrzGZKZzUJFHhDlSJLFYWNwXRtjy46tqC0unbawc3kKGk+pdqtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 01:36:13 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6277.036; Fri, 14 Apr 2023
 01:36:13 +0000
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
Thread-Index: AQHZbhp1VdIm3fVCg0ugMsk8Zltg9K8pmaEAgABsWtA=
Date: Fri, 14 Apr 2023 01:36:13 +0000
Message-ID: <PH0PR11MB5830F8D2E4D5E3955F18AEB4D8999@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20230413151222.1864307-1-yoong.siang.song@intel.com>
 <e7d81a89-da60-1da6-7966-7739ad545834@redhat.com>
In-Reply-To: <e7d81a89-da60-1da6-7966-7739ad545834@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|PH0PR11MB4790:EE_
x-ms-office365-filtering-correlation-id: 569d2458-cb7f-4fbe-84e4-08db3c88a222
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L9A3jK5quD+k0YeIUPwJjvKkMEwmmfPIRQx76RJJVKuFAA+rN0e4SirHW3ee+YHYeqCZeZo5osjL0cF+2hDcYtqTy+HvE0BtBIxEJlNRdGEx0ekA8aGPuvlUHw55q8CeizfIbH2j0KCUZBD0R67jHDl3pdLEea9ww1J5SktBw1Ty4GNySq78MDWeXsUKJ0PGFXzWmPUQvexPy3S4o58XzxbE6WWBOZG6qhIXIZmYq2pWJ0AOGjx2yvVe7Q0wDVH6TFoaIt8maEtKvT7yVWbrjuyVoiM9tioAPgqFh8Q0ZXOYLyirg0mBUdrZJLY6sudUBiBloTaQvC23p9zh4hgjcnDL3kgJtMkonpNIy7TZFkK6hsPP1/jzzaMoat3a+yw/JMHuOhDYkyByA6e2yZFRS0AlfWub4iaimX5Ohwj+MZ3J34TirXgc+VtWR5Q7jFHSvZALnJJKyezG+YDSAz5QmeeVtXgWY4F/9LDbFoA77H+zpRtazz3W2yOGJj0xagio/IW4hhBjvW1Ab0p7uQzC+WA5awXji9/Eg6THyp+RwcSaKyUHeqXEQCg3oKpJ7anRNIDAFIp7gqwBDuM7esamMcL0ZCZPZRpLi3Pmfgupgvtef6u9zopr4Q1EegQptSSVtAUkjOEx/BKfhvOlF+OmXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(346002)(366004)(396003)(451199021)(38070700005)(55236004)(9686003)(26005)(186003)(6506007)(53546011)(54906003)(33656002)(478600001)(55016003)(110136005)(122000001)(921005)(2906002)(7416002)(8676002)(8936002)(41300700001)(5660300002)(52536014)(38100700002)(316002)(4326008)(66946007)(66556008)(76116006)(66476007)(64756008)(66446008)(82960400001)(86362001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVpNTk1LajdBWHRBU0pvVDNrQ3MyYm5WeU1JeDNFWjg0M2JqeFNlajkrWXFM?=
 =?utf-8?B?QzVEZ1hYL1ZJR1YxR3FObWdsMFFHYzZVdnhDcG9mS0tUTW5zL2I3WGJrdUZ0?=
 =?utf-8?B?Rnk0WHMrRkFBSXFSdHJ6Tjd0b0xvekRXVTk5SE5BbjMzQk1aY3M1WmM0Qm80?=
 =?utf-8?B?SWN1ZlI2MkxPMFZZWDBnZmkySTVDTnR2RlkrK2w1Mm1rZWxkRkJ4QWJBTklT?=
 =?utf-8?B?RFdQMCt3YStPenRRZzhlcnY5MC9ucXpEMExMK1NLRzVoMmV2SHJPbnlMbkVM?=
 =?utf-8?B?bkJnTG1iTlA1MGJjcU1QcUJhOFVkZWhLYXlDRE9idDlsMDFLckw4YStFVnk5?=
 =?utf-8?B?emVnRVp6SzlUbzU1RERRUDEvcUc5eUovSHZaN1hqTGZGblhSWWpFM0lMZ1Vq?=
 =?utf-8?B?ZXpVaER6UGlzc3BPYzlXMmJqd2krc0VuNjV3RHRJRnFVYkNKWm9uWE5sOFpZ?=
 =?utf-8?B?U0dOR1d4UXFOOEVhdFZJc2RiTGtHMnkwTXBSRTZtc1p2WGt3WmlJelczaVFn?=
 =?utf-8?B?cjBlNWVSTXUxVFREdE9uWis3dW12RUVhcUNFTDlkbkw2aytaY2VxQmxMaGNa?=
 =?utf-8?B?d3hlWk5NM3hVZGRodWl6VjJWMldTZEx3ZXNBQUFBcXBUZVJiaFRkY0JmZkwz?=
 =?utf-8?B?amtLdlltMk5CSEhsZk0xWHE4M0FNc1hvSDAzVm95VDRDRW8xZWtyWEVrSEdN?=
 =?utf-8?B?WDdKSnR2ZW5nSEFvajRIYUgzajlZSkRwbzY5OU91dWhFQkJxanNxb3pScEVh?=
 =?utf-8?B?N3dhQ0M1VllGQzJmYnl0cE02N01GSmZUYkJ5MlRNWm5lZWR1anVXd0h6VGxH?=
 =?utf-8?B?RTFDYmhHNHNVRVpJbzZ4K0hFWlZpdmFzVjRDNFF0WFJ2eVN0U3d1VkpSVzJ5?=
 =?utf-8?B?aFprcDQ2YnJ2M3RpUlVlYUhmTVJnUUJsT2p6UlFFTkVrYjB3MWt5NzdYRU9Z?=
 =?utf-8?B?VFVlZXJVb3BRY2xjNVVCOGZ0d1hvZmM1dWh3M2NtcngyWnRXZjk0QkZ1amhs?=
 =?utf-8?B?YWVQRkcxZTUxZnBhK2RiVGR5aW45MTFwR1h4SDhMLytTcjNhUU9KcVZQL2Mx?=
 =?utf-8?B?R0czaktDVHNmYXBpcFg1Vi9XQk9qV1Jtejk2djBPWGlhSENKd3BHOU13aXRW?=
 =?utf-8?B?SHRXMzY3UlhiSktyS0IveVp0R2EwTVBLbWV3ODVHblNiY3IydU5mVjZieFB3?=
 =?utf-8?B?VnY3ZzFQRjExU2FlZ3Vvc3Njc3BuMExaMlhJMlZ2dFZnZFhrMS95aTlraG5w?=
 =?utf-8?B?TjU0cEc4MC9GMXEvNmd2Q0lKMi9HWkYvdU41aFNSRVIvd1V3Vi9rOXIwU1Yx?=
 =?utf-8?B?eSsyTkcwbDNseHI5alZPSGRQZGM2d2J3eHdSOEtJMXlST3E4Umlpd3ZBT2g0?=
 =?utf-8?B?VlIyZGdsNGcyeVpzamZ5VE1oWFpDcHFQT0xUdkVVekU3WURUZWs2cG94c3JW?=
 =?utf-8?B?VnNjWkhFeUsvdnNraW5zTWllZm5UNkZaakZaTUkrM2FEVy9Zek5WTTZ1eWly?=
 =?utf-8?B?QjI2SlloK3p4eENVRGZMa2xzMnhDdnRpaW9MdE54RVZWWCtoNjlYeTk3V1BF?=
 =?utf-8?B?R3B2eG9kL1h6RFAxSFNZeG5reHVCK0o5TFpFNExuMFJKRitydnh1VFFtanhQ?=
 =?utf-8?B?RDBMTVhSOWpSN1hrcEwrbnVIbWlTWk1xcmVRRG1jU1JLR2Yxd3J3SXVab1BW?=
 =?utf-8?B?N2Q2NHpISzZPQzk0V2ZhSjg5SENTUVdCdWhpbmhWMkk4Nmo1di9IRXB4RW9t?=
 =?utf-8?B?cWZ1VWhFKzJrd2gvSEZOQUlhaGUwOWdoZGg4a1Izcm8rZ1FoZGV6N09jOE5T?=
 =?utf-8?B?bmFSMUFIbzZGcUF2Y1pDaTVUWjl2bllQQTQvSWIyK3o4UUpnOW1YN0cvQ3hD?=
 =?utf-8?B?cmRldWR5ZnlMOWdrd0FPZlY5U01rSUd3azZjMmorS3BiSnFRRVB3T0RSS2s4?=
 =?utf-8?B?Rmt5TmNHN2FjZFVacm91dmRTa2VUVXBUOVlIMFhJV0w3V0JuYmtjVjhleENF?=
 =?utf-8?B?RVJlY3cyc0hiRjhDRHNSSEJjd3IwRlVxRE0wTWlYN2Q2VUlWNGROclU5MllL?=
 =?utf-8?B?UGZqcTh2c2hVMEY2U29lSTVZT3p1UWN3b2tMcTkvKyszMWRTU2hqWTVUL2Ev?=
 =?utf-8?Q?SH4zStOb+PC5L7Ac8QiZJxmeE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 569d2458-cb7f-4fbe-84e4-08db3c88a222
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 01:36:13.6369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AEBoCxX395irE1P0qZuBHupzzp5FIe8w0dUr0DSMmIPgsPOH5J9QzDKZCYhE2zl9vDOfSYS1iea6IjZ7BjUUCzO2hy4mvCudJ7hcgZ+DVzY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 14 Apr 2023 15:32:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681436205; x=1712972205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dx3QdiKQbHHs2a0a5adZFNyZh+8yQYrvuOb5yyVYsJc=;
 b=Z5h4gl5DnhuTT3dSRovcEEtr6chYyXKDFpoA/KYPshB+Zv5q6TXdMaEi
 x1/tdtaZPbDuYxbmGFw1i9SbNC8Vg2gsrg7nh05k1pXcOkOnQ6opfmNdr
 402D5iEw/XHYQ+8PUcEA//TLepY3N7rVnR6mvjOw/tLCyvThEblGbjfy6
 vEcRSZkBpXpT6/T/WXeW8rsGeO3sci0QqpmvlEf4ppOv+f61Uk8p+0Egl
 A6SL5UKMtSH5tNvSs9U0QGzh8dmmS7acdSfyofy0r9jjSwmiRVMhiteSD
 1EoYkCt2SBHYc7AydvsqhenDjnNeg67GaAMXjf9t2OvpcIoFKiGFC5N+t
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z5h4gl5D
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

On Friday, April 14, 2023 3:06 AM , Jesper Dangaard Brouer <jbrouer@redhat.com> wrote:
>On 13/04/2023 17.12, Song Yoong Siang wrote:
>> igc_configure_rx_ring() function will be called as part of XDP program
>> setup. If Rx hardware timestamp is enabled prio to XDP program setup,
>> this timestamp enablement will be overwritten when buffer size is
>> written into SRRCTL register.
>>
>> Thus, this commit read the register value before write to SRRCTL
>> register. This commit is tested by using xdp_hw_metadata bpf selftest
>> tool. The tool enables Rx hardware timestamp and then attach XDP
>> program to igc driver. It will display hardware timestamp of UDP
>> packet with port number 9092. Below are detail of test steps and results.
>[...]
>> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h
>> b/drivers/net/ethernet/intel/igc/igc_base.h
>> index 7a992befca24..b95007d51d13 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_base.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
>> @@ -87,8 +87,11 @@ union igc_adv_rx_desc {
>>   #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
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
>> @@ -641,7 +641,10 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
>>   	else
>>   		buf_size = IGC_RXBUFFER_2048;
>>
>> -	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>> +	srrctl = rd32(IGC_SRRCTL(reg_idx));
>> +	srrctl &= ~(IGC_SRRCTL_BSIZEPKT_MASK | IGC_SRRCTL_BSIZEHDRSIZE_MASK |
>> +		  IGC_SRRCTL_DESCTYPE_MASK);
>                   ^^
>Please fix indention, moving IGC_SRRCTL_DESCTYPE_MASK such that it aligns
>with IGC_SRRCTL_BSIZEPKT_MASK.  This make is easier for the eye to spot that it
>is part of the negation (~).
Sure. Thanks for your comment. I will fix it in v2.

>
>> +	srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>>   	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
>>   	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
