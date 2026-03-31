Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCjCEZg6zGlyRgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 23:20:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9563718ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 23:20:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2684C406A1;
	Tue, 31 Mar 2026 21:20:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T3RlgvJIKw4H; Tue, 31 Mar 2026 21:20:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F610405C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774992021;
	bh=5DvVx6PbNlpflgGfuZQ68r4Cn8y5/hbcEpH8HIMSLPQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yeEU7kPosjnTYn+DdGAWlOQz78EMDsz0cRsUUOvC8AinZ3JMEeDsHrQsycDHPkgnf
	 H/VHWiX3UKIuWZLw8c2OJoXnPIZaGp+tnINFb8RznpipB0UjsxbYCYbKz7Y3K1lQTu
	 wEj05hhi+MvL0axYmgQOv1noP+xDTMokAGn4gkmdm2g10/V5jv6AFYsGObGCz3vUqw
	 fZtEXyt20wUoSUcW7cNDei1LFppZsEf3vfioUElQAB7Fd7dTEKHDDKUDvJWkBeq2jr
	 1vXKnuwelPIKaYn3hXWdMDmkbqcv+IrwnGlE3uA2mEqeFzFwSEihKlsqUfOx1p/E/R
	 AxOQDNJk5rw/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F610405C1;
	Tue, 31 Mar 2026 21:20:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E8261E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 21:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E517B60ADF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 21:20:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UTvADiyR_LwC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 21:20:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0DC8F607B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DC8F607B2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DC8F607B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 21:20:18 +0000 (UTC)
X-CSE-ConnectionGUID: +/ram0RIQgWpI6Bh6QADEQ==
X-CSE-MsgGUID: av4EiiQJTSm9ParSQ3uSYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="79625038"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="79625038"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 14:20:18 -0700
X-CSE-ConnectionGUID: nqg6EjzyQHWY03xzfMgjsA==
X-CSE-MsgGUID: R9f+hOGxRG6KPhm2zvreUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="221627173"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 14:20:18 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 14:20:17 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 14:20:17 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 14:20:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EZH2uKPXv4rROkw81wbWHWNa58kgTzEcw2qZJWeE9Uq+FlpTmhsREUs54L6DDIfGj0qSBO7GzW0XecpLTvpxo+MO/DioYRd8Kb5xcIMaA8mBwtvaRtVDm7ogSuQ1oN1u7pjRrKFEdEpTgX6RDGpalNZXSxdrtc2wI8zsHdf6RFR+1uSFQPvo0snuVfP06unN8ePA1iFzlio51VgfO5aNnZqlLVft7NTconY0lFx/trHlnbIwOo6Cz/7ltf/5zmPnJBUpMhh5+7oBmDMvMec06h+vZHHHvYj2a/mPcW5QWGbSD+5+WDMNWrhce+UyO6+5Ee+QzB4bnnHiG0nYA4q4eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5DvVx6PbNlpflgGfuZQ68r4Cn8y5/hbcEpH8HIMSLPQ=;
 b=VoIGFaAGXQRHwfR3Y5N9mIWgpmx/xeMUr5AxN+ARG/8Cjfv+IxirS5lorI7LXAid4/j8IkU4m63eSFzB19DCd5M8gHxBOEyN8xNr9DgDnpeRdO0nN4Cu7nmJ0ts/iWSXJrzJQnPDAE+4IgQSJt0Gbqr0vA0fvTUi8lht9bdNqj0x8u8R2nI4wWtjRI2xx4izpi7Ov5IogSONmiWVb0opmtSAU3LWaEViARo7ywpugwnnVrtD3qtNmZ1PktHnDXd1dQQVynGK9Auo16b/7foqRQKvGClLw1HbJhT0BuUz9icmf4ABhutk1Le3xZEkVo0PSlc+HpulNRxSgOR16u0ehg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH0PR11MB7471.namprd11.prod.outlook.com (2603:10b6:510:28a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 21:20:12 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:20:12 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
Thread-Index: AQHct5HDdy20lJJyb0mGcszQ7uelC7W/fYqAgAkvCICAAIyPQA==
Date: Tue, 31 Mar 2026 21:20:12 +0000
Message-ID: <DS0PR11MB757911A26E07294D5B36E27BD653A@DS0PR11MB7579.namprd11.prod.outlook.com>
References: <20260319111659.551039-1-przemyslaw.korba@intel.com>
 <dbe4af5f-b8c6-4abe-bd55-8f970e18add9@intel.com>
 <PH0PR11MB4904757F3E979FAD9ED44EE29453A@PH0PR11MB4904.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB4904757F3E979FAD9ED44EE29453A@PH0PR11MB4904.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7579:EE_|PH0PR11MB7471:EE_
x-ms-office365-filtering-correlation-id: 5c14085e-e193-46ef-4cf1-08de8f6b4bac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: XODsKxTPsOmwjBDWabxVt1AS9uIzOUSX6Wqy6UnFLqoXtICzbkoxmJ6rvJzb8zxheknVJRUBpmHRU4kXTQLzkWvJK5u1OE87H/gi93Pk6cyGP7tsYKJR9Qj8+VLZ5Fwaq0UNR+srlz+gkMamxeAOnsbzhLcKB5EOkmhIj6b7tXM0RdmjybeN1Rmq2sGlFPvNuNPnKYDDrVD5AaTbxLIeJzzv71pBv6DhFouUNm+EWGPof0is/MmaXIU0TNtEUOtfkZVnGtwpL9TPrtLpQfGapHOB1IhNmu42ixdXDsg48d7Z9f2n3t9DiwLJyyq0Dw0YksV8QvCdy29uiX5veaJvwJgrzzrWiZmQ4OttUmI/YRQPcIcdZSKjUmLdgEHIuPHDaqiXFQhjxGYwT/oQLXJmtSzNW8pUz5Dkg6nqVcwRnyvxwVYFY+/ozUa1gnzbkg3ospDOCF6nQdJ/fbBw8NZY7ReleYkimfGnepRDLHTy/mDQXKF385KN4PswWI2IuhuNFIt4NDgvZwjpiHNweNB4c2rCOV1RP1X52+XlITMBv0oyZ9Gt4kRNgb+cc3Lmv+QcyFnj+0lJiOPLSbx0LbdHl9CCG/mDT0qHmq49fH6GWogqE0kQo5uk+6x5cZtm5NkusMu7NtCx9TO+PX23M90ayjiih+qPsyFi+iCOIH+Ej4vjt+iiAKFuDXWo27kJmOIQIBVc/wE41qDru7WM881Ft6qh9aZsvz3xXn2Ees6PtB2IKll73KysxBdgeRWgTiS5SwGFLkIWIIXTWVw+LnGt7SKp/pOI84ld7WMWlZahONd3uqGF4yxaVtSeJBK9JMMq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1MzRTVlSURBcFFFdkV2MSt5OFl2bjRUTklucmUwT1UremNVZ2lKMDFNSjEz?=
 =?utf-8?B?ZnRxWmhudGtqOGRNY2s1Y3MzTGpkMG9Wank0dHdLblo4STZZcWdjSjE3L0hk?=
 =?utf-8?B?WWszbTZ1NjNnZEVKN054dXRKSmlmSlFkT1dhR3Vpb0JSbnBPNWIzRm1NU3RK?=
 =?utf-8?B?N2NRY05ZSjFyS0VZNGN3ancvajZWN0t4YVhkd2NBUU4xMUtSWjhGQTFKT0ly?=
 =?utf-8?B?cXRGcS83MFZKVDhKUTF1bjJYMFk4UXl5MWtQNS9rRGtsSU9FYVpkZFZPZ1Er?=
 =?utf-8?B?MGE1WmtrbHZSdk9lTGpUZXgwZGhLRFRsL0s2QU1jR2hPbStJRzl4ODRJNUkz?=
 =?utf-8?B?aENvUHdCSzg0Tlg0T296cDdhM01vajExOFBvN2t1bFAzMEhmR1k1RHYzV2ps?=
 =?utf-8?B?WWdpbzlIbVhRV1R2cUxhZWMrSFZZSC9MeklORkVKcmNabm9oTWtaYmpMSTlH?=
 =?utf-8?B?MmZYOEYwbVpXL3FzVXVJT3ZtQUgwZ0lWTDZCZHJyV05oNld2VG1aZVFKT1NP?=
 =?utf-8?B?MFM3eFZIcFdtQlRrd0ZqN0xnbWsxTFgzZDMxYSt4amdMd0ZCcXFIcXZZbDVI?=
 =?utf-8?B?Ly9NakxtVTUzYlJvMGhncXZFRjF0RWhOOWc5Q3BnM1JkMDVwZ3poUFJtZVlQ?=
 =?utf-8?B?SXp1TWgrUEZKWEI0UmQ4U2RCei9QaXBlTzgrT09GdG1SZXkzaHlpWHhDRWw1?=
 =?utf-8?B?M044clNtZmwvYW5HaHpRMHRSOS9BaGZYVHpsZEF0WWRpd2dzUUdpS3ZFekFQ?=
 =?utf-8?B?VG9DMkJrbDRaVUV6Z2NGVUJVL0VpUXBsM0J6ZTBlVWt3ZlRZelQ3TUJHWmxK?=
 =?utf-8?B?WFBDdHAzblNvV1JESjlxZVkzNE0xUERGclRXYnprU1FoWjhmQlU5RDJvdzVE?=
 =?utf-8?B?S1ZtWDA2THVpVFZwWTQwV3crcFI4YUIxb0ROQmx1cGxsd0Q0MXlFbUNjakVi?=
 =?utf-8?B?d25CZTc4YVZKSkNJTGtqUVJINlRmQlg4Sk5meDJmaWk1UFluZVhyY3lxcm92?=
 =?utf-8?B?TldnM1BGdE9ncnQ3YUtPQ29NQUloallMOTlibWJVcmUyZmluVXRTWUVBSUM3?=
 =?utf-8?B?L002RFg0aEJUTWM1VjlySkwxUlFjU0Z6QWNjZERDNGN5Y2pTL21hcm9YT3cx?=
 =?utf-8?B?MEZZUzE2UG83d3IzcjV1L2tHV04vb3RHcVVmbFpQaXNlZHlKVTdaandoTTZN?=
 =?utf-8?B?UWhod1U1RjVreFlKOFlNS3MxUWhScnZjRW5UMnpRb3VWL3dRQkQ0c1ZJc0ww?=
 =?utf-8?B?MlRKU0pWRVRHdDdiZXNBMmxGaFpGK2Y3YlpsNW1temZEdWZ5Y2lsMWdWZDJo?=
 =?utf-8?B?UGNvUjRBbDJid2h0SkZ6ZjQza2d5ZWc0VkRaNG01YVNQSHdUNG1TSjJETC9V?=
 =?utf-8?B?dVBOUkU3S1NVM0RwM25zNGJzaHhqRlJ2UFhMSzFOZEIxclFyTEJRYllnaERx?=
 =?utf-8?B?UnNSOFh1TndmdXJVZVByZ0NCd0JXTVAva3BSMG9YY0JsQ1Q3c1RPTTJKMG5v?=
 =?utf-8?B?VFpFNXdhSE1qdmkyQXhkc0FaWUNhVGplRHhXaFl5MnFSdTAwWHg5Nko0WFZ1?=
 =?utf-8?B?d3lYYVh5Ri9paHFZV1ptU2l6bU1SWnVFMkJkNTBRTHZseEFXeDhiWHB0ZW5i?=
 =?utf-8?B?ejB1QWh3blR5VEpVRVRqMXBBbmdCNDd5bmhXSXcrLy9XYUFBMWNIWit6Y2pp?=
 =?utf-8?B?OUxTaDB1aXB6QTQ3OXhCeFJmcFNFVEoyNTJHQlJNTWpoQXMvYzlweStLdmdp?=
 =?utf-8?B?V0o0ZHdYZWFqUDFVV2hONGlkNmdDNE9Nam9OUlY2NG5BY0NzdEM3cTBPZjBG?=
 =?utf-8?B?cHpHSHF3TzBDZi9jcENCVFR4eXpidTc1SFJBY0dxazk4N1RjZkZ5a1JqWWJh?=
 =?utf-8?B?R3M4LzNRbGdDQUNMTkJBOGJpcnpXb3dqS2d3RzhGSEQ5c3JmQnc0MWpLVkFS?=
 =?utf-8?B?czNrQ09wbjRLWnd2YURLNVUzMHdTSWhjd1JycmZ2Rm4yUFdha1NoUnFuVFJP?=
 =?utf-8?B?VXUwWTEyVG1rOEx5eTVuWXEvM1UvaVVwMm0vVVl6R2VscXIrYmw0ZlM0NUl1?=
 =?utf-8?B?WCtwcDExRjJDZHBJbHJ5bTQxWkpjV3dXdlc5V005d2o3TE9uWHpHSVd5ZnlZ?=
 =?utf-8?B?YkJyVXhZUHorV1l6aWI1ZWZoVXBpQW9QVlFSeEdsTGlsWmFhSVdHd2JHL0xH?=
 =?utf-8?B?Zk0xaU5zL09BZ2d3RDloRGI1eHBKN0JlbXdVQ0hCZ2RzcHh0YnhvRGRMVkc0?=
 =?utf-8?B?U1Mva2dUc3V2dXVHZzh2aE1FWHJEUk42SXJ6SHQrZHJsM0xoZHFUZnB1QzFP?=
 =?utf-8?B?ckRQRVV4NU4vSFFwOFVRZllQUzNrQVlWbTRDUVVkTWNvK29YT2tkQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: K3ZjsxOSjrAlp81B0jBRy3emo/FqK1sFuCnKD76soSpVeeTB84cWDt3Q7UAy3/MnQi+2Q+FkGoVZKVN/rKw30QuTwM8IB0DJH9KsGn6TKxa6xw0Fh5/qtWDsbqqIievjycBUpGvKPj7FYqquNL03KdH/PAWdD2XUfPbDpDqKtZyHgDQDiTF0x5y0I2QFfJHEy/GFVmn3kU0E7cweyzL9FEvz4N0tQAfTWdePpO7zEw6/RnJVaM+USOF4N8Ox9yrVI9vhcWcK8ZhxnPJTZYbv7nBf0OeHmIZOU/KsXSdg7FeClEKVcBuhW8qoDJ1HEE5McNjpMIKa+QCcbELHqhG/uA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c14085e-e193-46ef-4cf1-08de8f6b4bac
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2026 21:20:12.6237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KwUKC32qX12O/UgX/s/snF5DnjXXFkfAK0CXu6o6L9SMbYGJkh7U00xfp54HHwyetCs1lB1QuXr4k5VwcIt79hZX9B0eA0ayX/mAzAfEcdI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774992019; x=1806528019;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5DvVx6PbNlpflgGfuZQ68r4Cn8y5/hbcEpH8HIMSLPQ=;
 b=QiKU7qC6Wr0vt8zmupM+y0+zrfMZGrFMhsAFxrN4W89WF7zq1SSOXvUU
 Hq0eOBXOpvmmWXnd+dOVSQbKBIIcQhv2yua1nQnJqe7HFrHQbgNLPZMOz
 5jpkm5AVLol50ho7vfbz1feMTX3e4hjfmJjdjbUMlTFN1f7OJAPmWD4lF
 XYDcLAU/rjkHxonwRsdsPc9VMSkTjwjOfbDJKq7Sww3Xtil1kR8rt0+l2
 bUpC24WsdNaOB8zhPdbqwCEAwTexi7u7TO779WU0uk9e/Zy4aLRXXFmRK
 jS8IZ/Xah2y1j6ToPwdBBd0hxcgysK8KrBROF2MM5SxLVpI1Ir++0qQOr
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QiKU7qC6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,DS0PR11MB7579.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 8A9563718ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS29yYmEsIFByemVteXNs
YXcgPHByemVteXNsYXcua29yYmFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBNYXJjaCAz
MSwgMjAyNiA1OjU3IEFNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBp
bnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQg
djJdIGljZTogZml4IHBvc3RlZCB3cml0ZSBzdXBwb3J0DQo+IGZvciBzaWRlYmFuZCBxdWV1ZSBv
cGVyYXRpb25zDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTog
S2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVGh1
cnNkYXksIE1hcmNoIDI2LCAyMDI2IDEyOjQyIEFNDQo+ID4gVG86IEtvcmJhLCBQcnplbXlzbGF3
IDxwcnplbXlzbGF3LmtvcmJhQGludGVsLmNvbT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMu
b3N1b3NsLm9yZw0KPiA+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBOZ3V5ZW4sIEFudGhv
bnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3
DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbSW50
ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCB2Ml0gaWNlOiBmaXggcG9zdGVkIHdyaXRlIHN1
cHBvcnQNCj4gZm9yIHNpZGViYW5kIHF1ZXVlIG9wZXJhdGlvbnMNCj4gPg0KPiA+IE9uIDMvMTkv
MjAyNiA0OjEzIEFNLCBQcnplbXlzbGF3IEtvcmJhIHdyb3RlOg0KPiA+ID4gT24gRTgzMCwgUFRQ
IHRpbWUgYWRqdXN0bWVudCBjb21tYW5kcyBzZW50IHZpYQ0KPiA+ID4gU0JRIGRvbid0IGdlbmVy
YXRlIGNvbXBsZXRpb24gcmVzcG9uc2VzLCBjYXVzaW5nIHRoZSBkcml2ZXIgdG8NCj4gPiA+IHRp
bWVvdXQgd2FpdGluZyBhbmQgcmV0dXJuIC1FSU8sIHdoZW4gdHJ5aW5nOg0KPiA+ID4NCj4gPiAg
SG0uIElzIHRoaXMgcmVhbGx5IGZvciBFODMwPyBJIGRpZG4ndCByZWFsaXplIHRoYXQgZGV2aWNl
IGFjdHVhbGx5DQo+ID4gc2VuZHMgU0JRIGNvbW1hbmRzIGZvciBQVFA/DQo+ID4NCj4gPiBBY2Nv
cmRpbmcgdG8gaWNlX3B0cF9hZGpfY2xvY2sgZm9yIEU4MzAsIGl0IHNheXMgIkU4MzAgc3luYyBQ
SFlzDQo+ID4gYXV0b21hdGljYWxseSBhZnRlciBzZXR0aW5nIEdMVFNZTl9TSEFESiIuDQo+ID4N
Cj4gPiBEaWQgeW91IG1lYW4gRTgyNS1DIGhlcmU/IENhbiB5b3UgY29uZmlybSB0aGUgZGV2aWNl
IHR5cGUgYWZmZWN0ZWQ/IE9yDQo+ID4gYW0gSSBtaXNzaW5nIHNvbWV0aGluZz8NCj4gPg0KPiA+
ID4gcGhjX2N0bCBldGg4IGdldCBhZGogMiBnZXQNCj4gPiA+IGRtZXNnOiBpY2UgMDAwMDoxYTow
MC4wOiBQVFAgZmFpbGVkIHRvIGFkanVzdCB0aW1lLCBlcnIgLTUNCj4gPiA+DQo+ID4gPiBBZGQg
c3VwcG9ydCBmb3IgcG9zdGVkIG1vZGUgbm90IHRvIHdhaXQgZm9yIGNvbXBsZXRpb24gcmVzcG9u
c2UuDQo+ID4gPg0KPiA+ID4gRml4ZXM6IDhmNWVlM2M0NzdhOCAoImljZTogYWRkIHN1cHBvcnQg
Zm9yIHNpZGViYW5kIG1lc3NhZ2VzIikNCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFByemVteXNsYXcg
S29yYmEgPHByemVteXNsYXcua29yYmFAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiB2MjoN
Cj4gPiA+IC0gY2hhbmdlICJwb3N0cG9uZSIgdG8gInBvc3RlZCINCj4gPiA+IC0gaW5pdCBzdHJ1
Y3Qgd2l0aCB7fSBpbnN0ZWFkIG9mIHswfQ0KPiA+ID4gdjE6DQo+ID4gPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9pbnRlbC13aXJlZC1sYW4vMjAyNjAzMTAxMTA3MDAuMzQ1OTA0LTEtDQo+IHBy
emVteXNsYXcua29yYmFAaW50ZWwuY29tLw0KPiA+ID4NCj4gPiA+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jICAgfCA3ICsrKysrKy0NCj4gPiA+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMgfCA0ICsrKysNCj4gPiA+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmggfCAxICsNCj4gPiA+
ICAzIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+
DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9j
b21tb24uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMN
Cj4gPiA+IGluZGV4IDg4NjY5MDJlZmI5MS4uYzg5YzZjYTEyODFiIDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYw0KPiA+ID4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYw0KPiA+ID4gQEAg
LTE3NjUsNiArMTc2NSw3IEBAIGludCBpY2Vfc2JxX3J3X3JlZyhzdHJ1Y3QgaWNlX2h3ICpodywg
c3RydWN0DQo+IGljZV9zYnFfbXNnX2lucHV0ICppbiwgdTE2IGZsYWdzKQ0KPiA+ID4gIHsNCj4g
Pg0KPiA+IFRoaXMgYWZmZWN0cyB0aGUgaWNlX3NicV9yd19yZWcgZnVuY3Rpb24gd2hpY2ggaXMg
dXNlZCBieSBzZXZlcmFsDQo+ID4gdmFyaWFudHMgaW5jbHVkaW5nIHRoZSBFODIyIGRldmljZXMs
IEU4MjUtQyB3aXRoIEVUSDU2RywgYW5kIGV2ZW4gRTgxMA0KPiA+IGRldmljZXMuDQo+ID4NCj4g
PiBEbyBhbGwgdGhlc2UgZGV2aWNlcyBub3QgcHJvdmlkZSBjb21wbGV0aW9uPyBPciBkbyB3ZSBz
aW1wbHkgbm90IGNhcmUNCj4gPiBhYm91dCB3YWl0aW5nPw0KPiA+DQo+ID4gSSBkb24ndCBzZWUg
YSBzaW5nbGUgY2FsbCB0byBpY2Vfc2JxX3J3X3JlZyBmb3IgRTgzMCwgc28gSSBzdXNwZWN0IHRo
aXMNCj4gPiBpcyBjb3JyZWN0IGJ1dCBmb3IgYSBkaWZmZXJlbnQgZGV2aWNlLCBhbmQgdGhlIGNv
bW1pdCBtZXNzYWdlIGlzIGp1c3QgYQ0KPiA+IHR5cG8/DQo+IA0KPiBIaSBKYWtlLA0KPiBUaGFu
a3MgZm9yIHJldmlldyEgR3J6ZWdvcnoncyBwYXRjaCBoZSBtZW50aW9uZWQgaW5kZWVkIG1ha2Vz
IGl0IHNvIEU4MzANCj4gdXNlcyB0aGlzIGZ1bmN0aW9uYWxpdHkuDQo+IFlvdSBhcmUgcmlnaHQg
dGhlcmUgYXJlIG90aGVyIGRldmljZXMgd2UgbmVlZCB0byBjb25zaWRlci4gSSd2ZSBmb3VuZCBt
b3JlDQo+IGNvbXBsZXRlIEthcm9sJ3MgcGF0Y2ggdGhhdCBkb2VzIGV4YWN0bHkgdGhhdCwgYnV0
IGdvdCBzdHVjayBvbiByZXZpZXdzOg0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRlbC13
aXJlZC1sYW4vMjAyNTA1MjAxMTA4MjMuMTkzNzk4MS03LQ0KPiBrYXJvbC5rb2xhY2luc2tpQGlu
dGVsLmNvbS8NCj4gSSBhZGRyZXNzZWQgcGFzdCByZXZpZXdzLCBhbmQgd2lsbCB0cnkgdG8gbWVy
Z2UgdGhpcyBwYXRjaCwgSSBzZW50IHVwZGF0ZWQNCj4gdmVyc2lvbiB0byBvdXIgaW50ZXJuYWwg
bWFpbGluZyBsaXN0IGZvciByZXZpZXcgOiApDQo+IA0KDQpHcmVhdCwgdGhhbmtzIQ0KDQo=
