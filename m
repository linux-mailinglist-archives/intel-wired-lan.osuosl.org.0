Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GinAx5P+GmQsQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 09:47:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB034B9979
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 09:47:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D98461323;
	Mon,  4 May 2026 07:47:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOhFj2vqKVDQ; Mon,  4 May 2026 07:47:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E87A661319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777880857;
	bh=IxMZkhv9Sw2whX7X+Z6a+ZVWByTFPUSV8L8IzlrSNiw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Vv4gZxFWUZ4VvCgCFJ5gxIn/xRWn6gE5ZCkPrxnQqZkvjG3LYhmGFkgVPSXDKGVQx
	 AAfwIJoQQ51HIwJflWQU/Em7RAaqcNvjj3pjml7Z0ClN14eMULR1lwLvikWPSYewUQ
	 7EafnicQ3/BFMSQuhBX0Gz9+QQIji0vR5jMUWrtR25TnFB9mfJ8n1wuDrASyqg+P4W
	 I/QPPNmD9PGLuUzGxHGBHZZxx7Ogsk3c4Zjr94a/8vQ41R++ITwX7Kg9AOBQ4iTl6H
	 ITNfTbHyV2JgMbNdXJ3j4p34CIuokhDb7WtSJR/l4sId97LOry/XCTGmwixKdUofne
	 rUJFP5nti2WPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E87A661319;
	Mon,  4 May 2026 07:47:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 18E6C25D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 07:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A71541122
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 07:47:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lvL7LCXpNq67 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 07:47:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C18254110D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C18254110D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C18254110D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 07:47:33 +0000 (UTC)
X-CSE-ConnectionGUID: dLaBr6zqTXSj6jD8GVx/BA==
X-CSE-MsgGUID: tnl8sjNbTgGLU2j1aYbdAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="78725358"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78725358"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 00:47:33 -0700
X-CSE-ConnectionGUID: 0xYKYJyiQ7yUmqIlw7LFlw==
X-CSE-MsgGUID: 9Y5NoFtkReC0yws01E2xNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="234586400"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 00:47:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 00:47:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 00:47:32 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.8) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 00:47:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FZSpznLsGLWlGn2d5v/MS+9dqeLdfW/5e1kf1WCu5tOHZ6diq7vQoqZXuDQGzgVya8aNESs2BsDnA2iTAl5WrXBekO9pZGSEqZSTr204NBF2yRPJKi6X9eZdxDelZgpvkPRSob/L4FmWN6CefYc75+98CuI2ln2zZWtJi5VPSxgqnMw250swFjEW4+GD7xW4i2RtPqeE25jHZpirua6UBSBbb02ykU1HUn+ngZ6IPD35JwwOvYIsdxftoapib0WpiTI9RrqXbIqmGA44RT9k+4nLTYj5NeJUkhzjFim4SpMMmMLIm9S63tOgdcO0SBqK0ioh7lsutxJCtwVzcAAmFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IxMZkhv9Sw2whX7X+Z6a+ZVWByTFPUSV8L8IzlrSNiw=;
 b=ogv8BsdhXfFN7rMMqFFazCLFFEZhYc5kXXi9q8j3lsoBwU0/8RfQn9rqVuoaOO7U0QLn32Dbt9PqqtJEpQQruo2fAECZnBUbj35Th2Z8X47lsmzV85/x/v/Z6nltMv/oJ8FxqCmdwKJNVl4bjx+gX1nS9fUlL4vPBAVVPgleEKEthtI0lA4Ki50zP2mRe/w399xfgv/e+ZQT+9myg2pH+mg1cZJTP63odBBOoijO9xHcBgSPi9SL+OQlXwLxmzG83EhK/+uPcQDo19hmI+zDBIYSCM4+SNOGN3ZTTBsQC7qRAatIS7bgFeQhq92rLxRlI4LyLPawenIq9RVf1oLYOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PR11MB8681.namprd11.prod.outlook.com (2603:10b6:0:49::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.25; Mon, 4 May 2026 07:47:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 07:47:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: reject out-of-range ptype
 in ice_parser_profile_init
Thread-Index: AQHc2Ky4ZI4ad7CI30qvQR+cczrSM7X32g6AgAWoTmA=
Date: Mon, 4 May 2026 07:47:29 +0000
Message-ID: <IA3PR11MB8986EB5B79F3DD4E371453E1E5312@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260430142153.249062-1-aleksandr.loktionov@intel.com>
 <1737f22d-1eca-4dee-95cc-6bd397e655dc@molgen.mpg.de>
In-Reply-To: <1737f22d-1eca-4dee-95cc-6bd397e655dc@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PR11MB8681:EE_
x-ms-office365-filtering-correlation-id: 03496254-b112-46c4-0fae-08dea9b164ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: ttkUndIBLR2UdkQlK114p5eBV7XGX3yKsQsV+BIfCc98B2cJYsAbw1L0OotDOh0F31Vnmm811WraRcpo2LgTII/tS3cdkHrdgKhkv3E8LdBCvM15mc33tNnOnTx0nLxZYBiVRIKAuraLiph3auSEq5ziAjq/qZgzCOI3uMMXHrLEuVRBiu73n8Oj1vicGCfupYxgzuKHndfecpFTdg4/mpzev/wV6l+KOn3povqfq8ebSNkj4T15S+/9KNTdGFdvdU1NzpTW82G6TEcenv8CdWy1SRtehXHtaXvtJLmEY2FL/6R9xM77b32XVzMnZl8lTsnx7POK7LDikGCzagMDxNQGP5MuqTsGn2IBA7f+C1Nqa9Ohum4BoRIQjp4XasHSd9uT6pjw/0zC+wbidgNxcv/7wKGBE26uMUw7zZYmPXJ+BK5mS3sKwE616RPdmqsLiJ7zZ2rvuZI7qHBZVFBH5RCc6uDjRGCEL/iZ9FcZR9oFL555zaLtIiyx4TZYDiSknwM6LIC3uNkphmUkG/lonzyNCU71492GVXzhssEIO1NHSfcPfEG4P3VSBsS2Yu7l+8RB6HUmRwapaQ/cZOAiWz+Id1gXgtijHoCmwonB4jBf10bv5IVsiZEVqCdrZXGT2V3zWPZtLgjv7cyc/23SeFJRgJV3ybVUCB8oBRIUjPXYUkdTflgXbQHDRdJ9qBR643YRp7DUlJ2BqSHgCkoNjP9IWaMOFJyczKK8SQSA17vO66p99tKsIDW9l5k5Odnh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bU9POG56dllqb2sxcjBUZzg3VHVaVlpaMHk2RkpwSE1MTmU1Z1pBeFJLdjgx?=
 =?utf-8?B?N1NuZDhxdUJWVGFES2swMWZ6ZnplMGNGbVlnVitKNTd4bE00VnI3bEFoSmJJ?=
 =?utf-8?B?dTV5RzVac0todUlOZ2R2cmZXN09udmhnbEpncDlNSlc2YlNmYmtRb0s3WTlS?=
 =?utf-8?B?UGk2ejVBOGg2RkljakVTTEFhS0VNWFlpWWR1ZHY1dk1URFdSaG1lRGFxVDIz?=
 =?utf-8?B?SVZoWnA1ajdWZjYzQWVDbDlqVCszTFdvVW5SbXk1alhHWGdTNTQ0T285Y0hF?=
 =?utf-8?B?Um40d2pxVW9HVHdnV0grVnFqKzdaS08yUlBpNjNVSSsvR2lmM09GOGNQK0xn?=
 =?utf-8?B?dG5CdUUrbXprai9DYnVmYStkNUpIRjd2TkFhS1Q4QzRsSVU0YWxGTU1uYkRo?=
 =?utf-8?B?Z21LTTBPQVA4NDN3azhxdnFNcWRYa2tmU3RkczQ5YzNCMGJwRHQvbUFHK1lW?=
 =?utf-8?B?RjYxdmduN1YyVmpQMURrL2FQZEQwa3VDZ09yeDZEWFlEdy9IbzF5TkdBSUFh?=
 =?utf-8?B?UklyU1VNSlRYYVcyek5WRnlaa2lJOHJyd3lnZUpNSG1acG54a250MDBaaHNl?=
 =?utf-8?B?Z1BaNE01YmFadHlEMXJoaEZUa2dFbm5zTVRDdnRydVhVaG1lNURiN0xWVTVV?=
 =?utf-8?B?S1pvS0JQSFNQdEZsamZTT3h6Rkh6OXVHc2E5clBESDVVdXhzVHJhYk9TTk5L?=
 =?utf-8?B?cy9HRlhvalJmQUVlT1ZMK2dSNW9EWGlkVTU4ZXg5WE9ER0lGL05ra2J3VUZn?=
 =?utf-8?B?cXVBbWFzMTd4ZjRpa0VZNWtnbUJWNG1NUGhRWERFNFhkZjhVL054QTlrVEh5?=
 =?utf-8?B?TTNDeGZJMk1rclFaZU9UUFJvK2FoZkplNDRUTVlpR2hEbzREWWJES0VIb1lV?=
 =?utf-8?B?eENtUG5RTEg5ZGh5WVJKSjkzODdhOC93cGhac2kxNXY2VVFpUE03aXlObzlz?=
 =?utf-8?B?MGIveVJHcnUvWmgxR3NCL2QvS1BoRDBqeGRvWHA1TTBGN29FS2dnNHI0bVlo?=
 =?utf-8?B?MHlubWU0KzVQV3EyQkh4eHdXMjFDblZKMWxTQUJudHdzVEppZ1JVSVRpaEYy?=
 =?utf-8?B?OHh4dTdRNy9UOWJoZTM1VU0yNFZkWGJib1VGeXFmVHQ4MSs0R2l0bW53S1RQ?=
 =?utf-8?B?bU16WHNXSnRkS2xySEZ2K2N2eUdEWE9GM2dxRFJseFBiZUNSRVdwLzhibXMz?=
 =?utf-8?B?dzA2TmFqU1Q2K2srbDB0Rm5wNVJTSnJudlNvQ2RYeFgyQ2kzbWxNZXo2aVZr?=
 =?utf-8?B?Sm1qdzJyZ1RjbGovOGRWWEo4NmxUVVFEMGJTVlpKMG1jQzVIb3lPN0MxdWF4?=
 =?utf-8?B?TVhhMThjcVpTTGlONmo4NzhUN0pJM21GT08wR3A0emRHaUE3MzRuQ1h3U0lH?=
 =?utf-8?B?ZldWdUwvZEYxQ09lRzl4bE9HZVd2SG9XZGZzczhqS0MrNm1GNjhTRFpjWUFG?=
 =?utf-8?B?OFBOaWkramFqNXc1WVBOQzJiVmJ6VC9RalFHU21zU0RvZHhNaUVBSnkwL3Z1?=
 =?utf-8?B?NFhNVmFSUlJqTVYyV0dpcXp3OE81akRnbCs3THFPR2VEV3Q0cDhTQkJvUkg3?=
 =?utf-8?B?OU4wWWRCbVkyZlh5WXEzeHFzV092ZS9PVjM1M3hPcHlVM0NveXF1eVRnZWo3?=
 =?utf-8?B?MlVKSENRdkcrRWt4VmRPL1ZMRWVnVkpXUVd6V0RMSHhJZTVGSmd3NWVHU3VS?=
 =?utf-8?B?emlKT0pJR2QwZ3NmYjh1UEJrVVBjNE9PRlRrVUpIdEJpcVhrMzdBY2M0K3A5?=
 =?utf-8?B?ZUdzWGZBczVRM0dMTW9jWE9INlZIc3ljYUt1VzZXYzBBWmhhRjZLd1VzdGY0?=
 =?utf-8?B?M0dXbDcwazRIYVdldDI0dHI2MHNpVTZZU1o1MURsd3ZZT0lXazl4RzUrYWd1?=
 =?utf-8?B?bGRQZ1NMNytuZ2ZKejRGTG9CK0R4R2hFQVdQZ29JY2tVOTQ4bUxGQTF1dCt5?=
 =?utf-8?B?MGxIaWl4b1Zycy9CTnFmVVJJNytEelpHaWcxZ2hLRkVuYURKRk1QQ3dmdCtJ?=
 =?utf-8?B?S1ZLc1BJYTFtbnlyVno5MUFkOHB4a3MrQ2oyaG9CekxIUEhLMG9WbkN3N3JX?=
 =?utf-8?B?TDFyWEFPajdnNWlHWU1RdkErcmlZdDYyL25IUk1uci9JVzU4bURiNkZyODIv?=
 =?utf-8?B?VUtXWW1ENGVzdHc1OFRyUmY2S2ZRTVpUZjJ5T3FXcXk5eGdmOW5UVHRsTGEx?=
 =?utf-8?B?TzdZNEwxbklYWk93Q3EyR2xQTnBSek1VS1JpRU1aMGg5OGZoNmFoSXY4b3dL?=
 =?utf-8?B?OEJKOE9abHVKYm5oMU5yZlpGckk5eGc2ZUM2SU1VR0VoUFRoQkJ4YjQrUHY4?=
 =?utf-8?B?aVNNN3pJa3AyVmtackVIQ2dRS3RVd1dtVzAwZUxqSm9mV1lZQTEzRm9mQmhl?=
 =?utf-8?Q?u7knHtsoh7JVEjFY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: D73ZudaoIgJW41d7eKt/Ao1eEVvQnyTdGZ8GLmvC6MNj1f1iizPKrQ7ncQTJgAP24KjwG69/yvYx1D+cNf5Etk4mXJYrVwoyrdk0Yz/PuOjCelqSSxnoSppzslu8hnog7O4vYG8VfT/mNv882F+pxoR1aQBpUFP31oAJHpNeXeItI1TU2k3CzY/5SDyzgFAL3BTh26rKDOdIOe02F1QwvDroCv3Q40G2CrDVgNr2TrnuS7i5EkXckJAYNuKDvUGH4/a9qPxRxO3vEgmO6/UqfNBFm2PbTofgOQZdR/dGDJ589jKb+5zmhfHBNCkykDO7hqnpkvjRfu3JMpAnYuKQCg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03496254-b112-46c4-0fae-08dea9b164ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 07:47:29.8343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +qJoA2F9fLmWxz9KQ2kp+r59/9H0mGhQpOrN1coun0KeQHAlzZnK3Ku917cZan7Yza5LAalZk2dFAr8A/1azZWxepCf1bZXVRV/vGviAxyI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777880854; x=1809416854;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IxMZkhv9Sw2whX7X+Z6a+ZVWByTFPUSV8L8IzlrSNiw=;
 b=NBixm4mQlUaCiBW93drxjSgzr30D5GRoV/h6sUQK9mAZRRE0I5oDFMEv
 TM4YPu5HCHlZc4jm4U57j4pxnSal20rcPMUdEOouTiLBHIkHac8yTqtup
 Bmc3uhGRA9V2gUF2W7tsUJ+27SFt/OdjlnYWBswLEqk+sSMMKTm4RZK92
 CU5NSqVkAs28oQdBMcmKqqsgNXAFhk6W7IYDg5qq3SJOZcBEzx8GC1HhG
 o2FMVSjoulH8+ywrGP6gDujFDBrJw93m61b4uQeE0LEW4SWJbuJCeYGFx
 aiN9jAAAXnkt1LmzZkI0fx6L2lJ4V94wVvVziGdY2prNebSxdpcC4n/oq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NBixm4mQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: reject out-of-range
 ptype in ice_parser_profile_init
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
X-Rspamd-Queue-Id: CEB034B9979
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogVGh1cnNkYXksIEFwcmlsIDMwLCAyMDI2IDc6
MjEgUE0NCj4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGlu
dGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBOZ3V5ZW4s
IEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5l
dF0gaWNlOiByZWplY3Qgb3V0LW9mLQ0KPiByYW5nZSBwdHlwZSBpbiBpY2VfcGFyc2VyX3Byb2Zp
bGVfaW5pdA0KPiANCj4gRGVhciBBbGVrc2FuZHIsDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB5
b3VyIHBhdGNoLg0KPiANCj4gQW0gMzAuMDQuMjYgdW0gMTY6MjEgc2NocmllYiBBbGVrc2FuZHIg
TG9rdGlvbm92Og0KPiA+IHNldF9iaXQocnNsdC0+cHR5cGUsIHByb2YtPnB0eXBlcykgb3BlcmF0
ZXMgb24gYSBERUNMQVJFX0JJVE1BUCBvZg0KPiA+IElDRV9GTE9XX1BUWVBFX01BWCAoMTAyNCkg
Yml0cy4gTm90aGluZyBwcmV2ZW50cyBhIG1hbGljaW91cyBWRiBmcm9tDQo+ID4gcHJvdmlkaW5n
IHB0eXBlID49IDEwMjQgdGhyb3VnaCBWSVJUQ0hOTCwgcmVzdWx0aW5nIGluIGEgd3JpdGUgcGFz
dA0KPiA+IHRoZSBlbmQgb2YgdGhlIGJpdG1hcCBhbmQgYSBrZXJuZWwgcGFnZSBmYXVsdC4NCj4g
Pg0KPiA+IFJlcHJvZHVjZWQgd2l0aCBhIGN1c3RvbSBrZXJuZWwgbW9kdWxlIGluamVjdGluZyBh
IGNyYWZ0ZWQNCj4gPiBWSVJUQ0hOTF9PUF9BRERfUlNTX0NGRyBvbiBFODEwLUMgUVNGUCAoODA4
NjoxNTkyKSwgRlcgNC45MQ0KPiAweDgwMDIxNGFmDQo+ID4gMS4zOTA5LjAsIElDRSBDT01NUyBE
RFAgMS4zLjUzLjAsIGtlcm5lbCA3LjEuMC1yYzEuDQo+IA0KPiA3LjEtcmMxIChubyBuZWVkIHRv
IHJlc2VuZCkNCj4gDQo+ID4gY3Jhc2hfcGFyc2VyOiBpY2VfcGFyc2VyX3Byb2ZpbGVfaW5pdCBA
IGZmZmZmZmZmYzBkNjFiNjANCj4gPiBjcmFzaF9wYXJzZXI6IHNldHRpbmcgcHR5cGU9MHhmZmZm
IChtYXggdmFsaWQ9MTAyMykNCj4gPiBjcmFzaF9wYXJzZXI6IGNhbGxpbmcgaWNlX3BhcnNlcl9w
cm9maWxlX2luaXQgLS0gZXhwZWN0IE9PQiBjcmFzaCENCj4gPiBCVUc6IGtlcm5lbCBOVUxMIHBv
aW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwMDANCj4gPiAjUEY6IHN1
cGVydmlzb3Igd3JpdGUgYWNjZXNzIGluIGtlcm5lbCBtb2RlDQo+ID4gI1BGOiBlcnJvcl9jb2Rl
KDB4MDAwMikgLSBub3QtcHJlc2VudCBwYWdlDQo+ID4gT29wczogT29wczogMDAwMiBbIzFdIFNN
UCBOT1BUSQ0KPiA+IENQVTogNTYgVUlEOiAwIFBJRDogMTY1MDExIENvbW06IGluc21vZCBLZHVt
cDogbG9hZGVkIFRhaW50ZWQ6IEcgUyBVDQo+ID4gT0UgNy4xLjAtcmMxICMxIEhhcmR3YXJlIG5h
bWU6IEludGVsIENvcnBvcmF0aW9uIFMyNjAwQlBCL1MyNjAwQlBCDQo+ID4gUklQOiAwMDEwOmlj
ZV9wYXJzZXJfcHJvZmlsZV9pbml0KzB4MmQvMHgxZDAgW2ljZV0gQ2FsbCBUcmFjZToNCj4gPiAg
IDxUQVNLPg0KPiA+ICAgPyBfX3BmeF9pY2VfcGFyc2VyX3Byb2ZpbGVfaW5pdCsweDEwLzB4MTAg
W2ljZV0NCj4gPiAgIGNyYXNoX2luaXQrMHgxMjcvMHhmZjAgW2NyYXNoX3BhcnNlcl0NCj4gPiAg
IGRvX29uZV9pbml0Y2FsbCsweDQ1LzB4MzEwDQo+ID4gICBkb19pbml0X21vZHVsZSsweDY0LzB4
MjcwDQo+ID4gICBpbml0X21vZHVsZV9mcm9tX2ZpbGUrMHhjYy8weGYwDQo+ID4gICBpZGVtcG90
ZW50X2luaXRfbW9kdWxlKzB4MTdiLzB4MjgwDQo+ID4gICBfX3g2NF9zeXNfZmluaXRfbW9kdWxl
KzB4NmUvMHhlMA0KPiA+DQo+ID4gQmFpbCBvdXQgZWFybHkgd2l0aCAtRUlOVkFMIHdoZW4gcHR5
cGUgaXMgb3V0IG9mIHJhbmdlLg0KPiANCj4gSXMgYSB3YXJuaW5nIGxvZ2dlZCBub3c/DQpUaGlz
IGVycm9yIGlzIHBvdGVudGlhbGx5IHBvc3NpYmxlIHRvIGdlbmVyYXRlIGZyb20gVk0gdmlhIG1v
ZGlmaWVkIGlhdmYgZHJpdmVyLg0KSSB0aGluayBpdCdzIG5vdCBhIGdvb2QgaWRlYSB0byBsZXQg
dXNlciBvdGhlciB0aGFuIGFkbWluIHRvIHNwYW0gaG9zdCBkbWVzZy4NCkkgY291bGRu4oCZdCBm
aW5kIGEgZ29vZCBleGFtcGxlIG9mIHN1Y2ggbG9nZ2luZyBmb3Igb3RoZXIgQVEgcGFja2V0cyB0
eXBlcy4NCkRvIHlvdSBoYXZlIGEgZ29vZCByZWFzb24/DQoNClRoYW5rIHlvdQ0KDQo+IA0KPiA+
IEZpeGVzOiBlMzEyYjNhMWUyMDkgKCJpY2U6IGFkZCBBUEkgZm9yIHBhcnNlciBwcm9maWxlDQo+
IGluaXRpYWxpemF0aW9uIikNCj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiA+IFNp
Z25lZC1vZmYtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wYXJzZXIuYyB8IDMgKysrDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wYXJzZXIuYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wYXJz
ZXIuYw0KPiA+IGluZGV4IGY4ZTY5NjMuLjNlZGU0YzEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wYXJzZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyLmMNCj4gPiBAQCAtMjM2OCw2ICsyMzY4
LDkgQEAgaW50IGljZV9wYXJzZXJfcHJvZmlsZV9pbml0KHN0cnVjdA0KPiBpY2VfcGFyc2VyX3Jl
c3VsdCAqcnNsdCwNCj4gPiAgIAl1MTYgcHJvdG9fb2ZmID0gMDsNCj4gPiAgIAl1MTYgb2ZmOw0K
PiA+DQo+ID4gKwlpZiAocnNsdC0+cHR5cGUgPj0gSUNFX0ZMT1dfUFRZUEVfTUFYKQ0KPiA+ICsJ
CXJldHVybiAtRUlOVkFMOw0KPiA+ICsNCj4gPiAgIAltZW1zZXQocHJvZiwgMCwgc2l6ZW9mKCpw
cm9mKSk7DQo+ID4gICAJc2V0X2JpdChyc2x0LT5wdHlwZSwgcHJvZi0+cHR5cGVzKTsNCj4gPiAg
IAlpZiAoYmxrID09IElDRV9CTEtfU1cpIHsNCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0K
PiBQYXVsDQo=
