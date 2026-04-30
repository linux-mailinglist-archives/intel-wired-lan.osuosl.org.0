Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJqiI4sU82llxAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 10:36:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5195449F4C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 10:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECD0D61B1F;
	Thu, 30 Apr 2026 08:36:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WpUAMWPD1_W8; Thu, 30 Apr 2026 08:36:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 643BA61BD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777538184;
	bh=5oiOLxNRgOTIGgoyvkcEMZYbiI+2Y1hdivQepJsFLgw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LHY+KQ9gIZNIWokIAyALK9IXXPVjCujR3xncSyAicNxKgBs73HKXTQflXCNtw9ezl
	 eFm3s5hzPenxcWU5eY7mQd0SrSHGAzp66yDGaEz8Jb387PKD0xM8TpiCiYprCHTjsT
	 cZDC4d7B4i0y2taDu5Is93vYiawZIBffWQnv9xTUlbJCMjC0ZBAliatgLC2OuBWQO7
	 Rddoa+jHUe9OtimCf0ptHxGVVPlf/WzbPyoD9KXjPTaqHa31AzQmDLdWjhWcjIfX7c
	 CgIOAzgjMj0wQkmRIsXGh+mj7x59EeajmXwXD0cAZ05dk1IBcKCB+dPwh8u7SZmDQl
	 mxfsYdYPuJr/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 643BA61BD5;
	Thu, 30 Apr 2026 08:36:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BAE918F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 08:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F12CF84522
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 08:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CeHlAieRc3Od for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 08:36:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E296884596
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E296884596
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E296884596
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 08:36:21 +0000 (UTC)
X-CSE-ConnectionGUID: Ia93uMaTSyifX7sYwxO+sA==
X-CSE-MsgGUID: wl9TQ1CURxKZbc4GAA6pxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="82346162"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="82346162"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:36:15 -0700
X-CSE-ConnectionGUID: adhQR9hdQ+WfE7JOQPaxaA==
X-CSE-MsgGUID: leDhEbsUSc21VbrAvv6ytQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="264892989"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:36:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 01:36:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 01:36:14 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 01:36:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=obLHvZZmJRpqPpesUTBqx9yFP78oM7DPdITUIvO4jHgjxIHRyodC1rlSxYPUZdgiP0KTM4KmK5hWkuIwVY2De0Z7L0aFCIe1sbkhPeJtzQn25VJTtt0NSC+rFnQfnEnC9sGEWtfyyWAFkgTxx2m4HfyUWNMTFxqPG41laLgUKGGleIm/r40PgxZ9K/Cvq/x4+fpLbazp6Id20TEW8NE4hRS22u7QDQY2dO9sUA9EUwqvtnoXZb1+f2ARFg9RwJ3xao53vt33dWdzLLr6OOOPFMR94vfhlupZM3LaGW1rtx1ld0GGRCkenIWHYHzXI3vD47Y4ZOrkylG6qKni9YMYIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5oiOLxNRgOTIGgoyvkcEMZYbiI+2Y1hdivQepJsFLgw=;
 b=cuckwqTMmIvsUiagNadawyCYDLcuRiiJp3U2CD865EZ+EPH/N3s1Ys8P6HocimR56MikwwkUIMNBi1oNgG65Md4SzPW7ydmxFhBUInwVaIKcw9mWR7guT5sHlBkCMAN7ksx6xbD/IFoPNzovmcOdeIQkZs6cPAqPbBaCWrHNqAjtiWO/qoQSj5H3DdsIZGxDW1mu4KixqB+cXv7lA/aYjUYC09dfiUAY5JyMW86KtxkF6PWAAZHDDB9fIS5pLRgt+IIbOGQXIDsEKSZ7DbCtzUAt6Ui5+TC48+hQssLDqd2WxcYxrgphKVsJcOPFZ3Qpi1PjkyumsJBJW9pezfq7Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8138.namprd11.prod.outlook.com (2603:10b6:610:158::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 08:36:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 08:36:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] libie: log more info when
 virtchnl fails
Thread-Index: AQHc2BihK+GMa1EmWEWdLE9SK1g4BLX3PkxQ
Date: Thu, 30 Apr 2026 08:36:11 +0000
Message-ID: <IA3PR11MB8986449FB3714E23C389F6D1E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260429204128.2865817-1-boolli@google.com>
In-Reply-To: <20260429204128.2865817-1-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8138:EE_
x-ms-office365-filtering-correlation-id: 900cd9cb-a7d5-4460-4a36-08dea69388c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: W/5oN0ps3O53Gp9vm3cEOY1jl4tOQjWtBJ3Lnv/Z4uD4tRD63UB0VIN4SDK0V/Fk090uFr36mVTS1cFOWGOFWC72gNfqUqKC/UWCHcQr1vwIzXGmxmriZ+cKh3dbqg89DPqcuXNrkdkG6AxumwFGC254fryi0KJyE3LDFveC/T6avB7v8OSgdF+Y3qiWgT6i52FLFdpB3Th42Cw42Nw0brEj0WE2Im/dVbYunWWCcNhCy4mM5q5u7UKxzc3UAAHZKHfeX1cyB3dgKXpUOJ2rJHzi/Qxr5l0GHAyzzueE6sbcifg7Qb1+RTKLD5n22d9thimXSSgG87OKz8SWbvG71+nuYVSJ1QyG161P1bPR8a0GcxE4GH5bS6kvJwrDP6Y9oJPyIOB3q56/Tp3ZyKGboD0VGihmmkOnLN0Wc5C7JfJgBOMhMEQDtOor8kn2eojLeFFB7I7mRZr1NtjXJdo61hVV68qUcJlzAqK+BU7hO3ePWJblerSDFhiYBNEUq0nhki13vv3gdhPjaJOQwJLOisC2gEJxvinx6SdGn8WidCZEtYbSiPWoANbQtFORFfX2gLmysrgUmDGfJ/0uQ9TdAbPeSA0vV/kWA7aax6G3BV1f2yUkkxeUL7Pb+ZUoqGmzp2nAWaOrHfOuu3KhvFK9Autt35AbOG0S3TuZdy4v9sH8WHE//kNvT+maUB58huaUeeD31+xlZqyBwY/jCE/2dl9I0cQUsLydSbbfzzSsDhYB/f8vB4H8SuMfkHRFaUIlmkeoseQ2JsFQZJjnIOGNXbLNtAFBpFj5PnMb1q/9NPc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1NrZTR4MVBlUmNvcnBhWlIwSE5YcXNuRXAzendDL3lqN2NmcjlEWnpLSnh5?=
 =?utf-8?B?SjgyWUhmbDN0by9TUE1qSmRPNFR5MHdpcERxTjNJcVpiWThwWWxFZUpZVGpZ?=
 =?utf-8?B?eU85U09vS2YxOC9scG4xUWc4cVlzUUFiMU1JMXJBUk5hZ0VGUHk4a1hWSDZG?=
 =?utf-8?B?clNSYU0yblBnVmhYYjZPbG9qTWRqc0h1NTExOWtWTVlGTk5NVnRsRlVRQ1Z3?=
 =?utf-8?B?OEgwV1ZZZTQ5MEw4S3AzckhHWkxpRlFpdi9meHpCSG4rUHVxRTNjWTdiVGlp?=
 =?utf-8?B?RkFUNkdrb1hpOUtBZFM1MGYrd3hwZGhPNHhVUjZadlN5Vkt0UlF2TXRmeC9p?=
 =?utf-8?B?MXZramZnU0lxME54UmZ4VU5JZ3B3MVM5YzdVVjV0dFVIeWw5UEFYNUhkM0xt?=
 =?utf-8?B?R0lhSlpkcjdWOHllRDlTMXpDVEpiOE96cU54RElUbHhLUms5WFkxcW4vNUN6?=
 =?utf-8?B?Z3E0KzBTbnN0dlJkcmdwclZ4U2hGVkc1cEg2MngzMjU0ei83MmNqdTkzTEFt?=
 =?utf-8?B?V3BYSEhqR3FEY0VuS3pyWGFvSEczQjNuS3JhT0dqVENjbjVPVVQremNyUHpz?=
 =?utf-8?B?eDZNdnRyaVF5RXVFbHdWckY3akR1bGhIcmZhR0krTlVyUkw4SzVVZU1rU2xS?=
 =?utf-8?B?NG1nbzdjZ1d6RFZsT2pmZ05RMHZ4Y1BVcUdtTkN6eXJMeTU5SkEvVzFyV3Jl?=
 =?utf-8?B?V0VyM3N0bFZYUUhiSWhxaE9vV0NtUm5BOFJGZXJIS1lRazVSWHFRbU85YnhP?=
 =?utf-8?B?eisrVktRcmN1MnIzSURMZ0hzTlNYUGM1eFlhMEFKY1FwM3FmUWZ3Z0RKOW9x?=
 =?utf-8?B?Qkp5dmtiYi9nUjNXOCtRM3p4SExaZmdLL2lsQTlFd05LUzk5Mkl1Q2RKb0JR?=
 =?utf-8?B?WVV6UWxDSVl4bUh3L2k2SmpBcUxnMkRYNUVNeHZVc0o5aVFTelMwZzNzMVdX?=
 =?utf-8?B?MG9LNzNkZDRvTDMwWFhLbmttTlMwUngxUGpSbFN1ZU9QYkY3SVdaTnIrY3RZ?=
 =?utf-8?B?MGR5TW1sbSthaWhyVzYwd0o4OGhGSlliZVZnK1RtdTZuRjI2NTRwUE1nYVJO?=
 =?utf-8?B?NWZKNEFUb0VEK1RWb3N3Q0c5OTdjTnJlUlZ4UCtHQW5SdExZUER0ZVE0bGI4?=
 =?utf-8?B?UWZxbGZ2U1dBK3V2TlFvRUpsMlRxVjlWNDhpVXBpTHF6N1Jxb0FlOGQ2eU4w?=
 =?utf-8?B?TzQ2MG41dGlvN09qNnhDazVuTHJQaXNnU3RpUzVQUVY5WGpFOXhoOUQ1Skpp?=
 =?utf-8?B?dlY2NkNVcWRONVF4S3I4U1ZxbmpXNGVYOERQdWh4YlJZUGdpc0dNbkNVV1VJ?=
 =?utf-8?B?bGRXZ3JXclRqVUMvY0tiTE5GYnZOSUVPbnFPYXIxNWUraDNvN3JSREVKdzBC?=
 =?utf-8?B?NzRZVzBiMlVkcGx4Mng0Q1lMdmdHeFlNbzNEWmljamFUejZMdXJGdGE0NjQz?=
 =?utf-8?B?eVVIbVNHTlFyaG92cXZhSmNyS0pldVJUa3ZaUkZIb29lVHFIQ1BwNlI2K2V3?=
 =?utf-8?B?WUNkWmdGOG5xUHhuL1lRbWtSclJnSmlYRHNKeDMwVlBxcGZEVHpnRFJGakpi?=
 =?utf-8?B?bTdlRk5Yc1JjUi9oamJKQmVpcjBUU0JncW41Q2JXQTJuNUxzY0hzZTgzVFpy?=
 =?utf-8?B?WjJXRHJlZjhENmlVVnA4dXYxSDlDcFV4OHc4d2syMWNwKzI1YnMvVXBvYkhZ?=
 =?utf-8?B?VzI3Z1ZHQlI3WVBpSXY4L21KdXJxMXhNUkVURGJiK0xEcHk2akhvYUkvT1Qw?=
 =?utf-8?B?b0RPQzNmZE5uMjZ6NmtSaExadzR3bGJzRUpiQWNDNmlEelg0S2NLdm1ZeU9a?=
 =?utf-8?B?dFl4bWVwSFRDWTg3R3ZaamRmY1NYN1EzbmM5VkFKRjZvaUZGZjBSUjdndEFv?=
 =?utf-8?B?bEtXYTl6aVRHZ1M1TDhobDNwYnZ6d01Xc2JwVzY2cWZJeDdMcUdKcGRMbGpw?=
 =?utf-8?B?L2ltYXlGZ3poelE4YXV6bGtQVEpMNkwvZ0VvR2VpN0xBWE5qSE1CUWJjdmw2?=
 =?utf-8?B?OUV3OFN0eWNTWk5ML3NFWFpDeGlPeXRhaXFSTW9OcnBjY2hzRTVPL2tGbExr?=
 =?utf-8?B?Vm5uM0w1LzQyR1FxdWp6TnZybC9LbWYwOTRZcVJjdjNmOHpwTGptUlVVeDd5?=
 =?utf-8?B?Uy8wcDF5clRvSzRST25Qc2pUY0VJNzNxL00yYzFiUFZMQzMrZG1wUDB0MDB2?=
 =?utf-8?B?ajhocVIrcmFLVGtXWTIyVUFDaFFlbFkzaFlLMGlCQkpoMTRwNCtKVTZudEE4?=
 =?utf-8?B?S28ycW8wa2FqNjhVMVJ1TkNiOTJCT1NZaUVhOGpyRWhPOGJOU04zbkxqclZw?=
 =?utf-8?B?N0ZqR2ZSN2RSWm5nMS9sN0p2SzdwRGlkcFd3MGQrcStEMEhlOWZCeWFlUFRY?=
 =?utf-8?Q?kJfTxTjem3UKZoRE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: czhamNz4s7u3CaglW0KBV4buMI1nRlwoK6hFpgwO2oJjeFvxvNhcbEnWAGn1enbCk+NXskIGfxuPNc/SF0CR7if8Xto+1/xZG48Ibq4KO3bBAg0NlaoqaZkp6nKmXpnZaHDyOCdnLGldKz3mSPb6Gt9m8FvJ1uZ+X1KcxUQku8bNzav6K/yo8KPkObCrGfxqLHr4tcyg2m85X+xaWACObqvep+M0Z559nKbajFSPeAXBxZHEKZTzbj66ubiBar2JuZsvhK+EWRObOsB6NbO+OOAg6Q1P9OPJ0RgpyaRXDqUHWRdWPaUdN51JzCOGfiZqu4TxARIqkI7A8dYylLA/KA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 900cd9cb-a7d5-4460-4a36-08dea69388c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 08:36:11.8021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rfaPlF4LmFm6KAVFOW10KJMY5iYBeS2SonflCywfj7J6J6G55Ycp8yF8PFp4i23AzaGq3ofcwSgBllnpUJbG2hmFPl4GplNPbBPYgKMs1sk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8138
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777538182; x=1809074182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5oiOLxNRgOTIGgoyvkcEMZYbiI+2Y1hdivQepJsFLgw=;
 b=YnEtBmhP1/vB5jGpUAham5u20YhZB7TPRtUcPHhhPrtBy9A1kaybP5Ru
 YIv9C7mJsIgNyQ0IlpwoQKjhtaJvtslJVqSHaZMU3hRtxI1C03Own0Gq3
 BD/M9XiMyzHlsgeEzWDYBQ9Y3rgueyqGysfEfgouwtJadYnkPXbnWPD3g
 BP2cDwZNM+J3EqfkTEoXNT0rNaB0d3SOaaUDyytDsgV6kkNIob0x+32AZ
 dgTCc+4OVI5cjBjHhRynDZleNBqVuHu8azigVgUBl8V8QQIOeMP4vkEV/
 C2nPH6VQqK/JJWgDCD7GdWXQLm/qQDZYCSAiC73v8JwPDtd46FEAQ2LUn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YnEtBmhP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] libie: log more info when
 virtchnl fails
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
X-Rspamd-Queue-Id: 5195449F4C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBXZWRuZXNkYXksIEFwcmlsIDI5LCAyMDI2
IDEwOjQxIFBNDQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwu
Y29tPjsgRGF2aWQgUy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMgRHVtYXpldA0KPiA8ZWR1bWF6ZXRAZ29vZ2xl
LmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBEYXZpZA0KPiBEZWNv
dGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPGFuamFsaS5zaW5n
aGFpQGludGVsLmNvbT47IFNhbXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJhbGFA
aW50ZWwuY29tPjsgQnJpYW4gVmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPjsgTGkNCj4gTGkg
PGJvb2xsaUBnb29nbGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYz
XSBsaWJpZTogbG9nIG1vcmUgaW5mbw0KPiB3aGVuIHZpcnRjaG5sIGZhaWxzDQo+IA0KPiBWaXJ0
Y2hubCBmYWlsdXJlcyBjYW4gYmUgaGFyZCB0byBkZWJ1ZyB3aXRob3V0IGxvZ3MuIExvZ2dpbmcg
dGhlDQo+IGRldGFpbHMgb2YgdmlydGNobmwgdHJhbnNhY3Rpb25zIGNhbiBiZSB1c2VmdWwgZm9y
IGRlYnVnZ2luZyB2aXJ0Y2hubC0NCj4gcmVsYXRlZCBpc3N1ZXMuDQo+IA0KPiBUZXN0ZWQ6IEJ1
aWx0ICYgYm9vdGVkIG9uIGEgdGVzdCBtYWNoaW5lIGFuZCBzeW50aGV0aWNhbGx5IHByb2R1Y2Vk
IGENCj4gdmlydHVhbCBmYWlsdXJlIHRvIHByb2R1Y2UgdGhlIGZvbGxvd2luZyBsb2c6DQo+IA0K
PiBpZHBmIDAwMDA6MDE6MDAuMDogTm9uLXplcm8gdmlydGNobmwgcmV0IHZhbCAobXNnIG9wOiAx
LCByZXQgdmFsOiA2LA0KPiBkYXRhX2xlbjogOCk7IHhuIGlkOiAwLCBjb29raWU6IDANCj4gaWRw
ZiAwMDAwOjAxOjAwLjA6IFRyYW5zYWN0aW9uIGZhaWxlZCAob3AgMSwgeG4gc3RhdGU6DQo+IDMs
IGlkOiAwLCBjb29raWU6IDAsIHNpemU6IDgpDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMaSBMaSA8
Ym9vbGxpQGdvb2dsZS5jb20+DQo+IC0tLQ0KPiB2MzoNCj4gIC0gVXNlIGRldl9lcnJfcmF0ZWxp
bWl0ZWQgaW4gYm90aCBsb2dzLg0KPiAgLSBNb3ZlIGxvZyBwbGFjZW1lbnQgdG8gYWZ0ZXIgdmly
dGNobmwgZmllbGQgdmFsaWRhdGlvbi4NCj4gIC0gUmVtb3ZlIHJlZHVuZGFudCBvcC9jb29raWUg
ZmllbGRzIHNpbmNlIHRoZXkgd2VyZSB2YWxpZGF0ZWQuDQo+IHYyOg0KPiAgLSBVc2UgZGV2X3dh
cm5fcmF0ZWxpbWl0ZWQgaW5zdGVhZCBvZiBkZXZfbm90aWNlX3JhdGVsaW1pdGVkIGJhc2VkIG9u
DQo+ICAgIHJldmlld2VyIGZlZWRiYWNrLg0KPiANCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2xpYmllL2NvbnRyb2xxLmMgfCAxMyArKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2xpYmllL2NvbnRyb2xxLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9saWJpZS9jb250cm9scS5jDQo+IGluZGV4IGViYzA1MzU1ZTM5ZC4uY2VjYThhMDc2ZDc5IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9saWJpZS9jb250cm9scS5j
DQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2xpYmllL2NvbnRyb2xxLmMNCj4g
QEAgLTc2Niw2ICs3NjYsMTQgQEAgbGliaWVfY3RscV94bl9wcm9jZXNzX3JlY3Yoc3RydWN0DQo+
IGxpYmllX2N0bHFfeG5fcmVjdl9wYXJhbXMgKnBhcmFtcywNCj4gIAkgICAgbXNnX2Nvb2tpZSAh
PSB4bi0+Y29va2llKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiArCWlmIChjdGxxX21zZy0+
Y2hubF9yZXR2YWwpIHsNCj4gKwkJZGV2X2Vycl9yYXRlbGltaXRlZCgNCj4gKwkJCXBhcmFtcy0+
Y3RscS0+ZGV2LA0KPiArCQkJIk5vbi16ZXJvIHZpcnRjaG5sIHJldCB2YWwgKG1zZyBvcDogJXUs
IHJldCB2YWw6DQo+ICV1LCBkYXRhX2xlbjogJXUpOyB4biBpZDogJXUsIGNvb2tpZTogJXVcbiIs
DQo+ICsJCQljdGxxX21zZy0+Y2hubF9vcGNvZGUsIGN0bHFfbXNnLT5jaG5sX3JldHZhbCwNCj4g
KwkJCWN0bHFfbXNnLT5kYXRhX2xlbiwgeG4tPmluZGV4LCB4bi0+Y29va2llKTsNCid2aXJ0Y2hu
bCByZXQgdmFsJyAncmV0IHZhbDonIGxvb2tzIGxpa2UgYSBkdXBsaWNhdGlvbiBpbiBkbWVzZy4N
Cg0KDQo+ICsJfQ0KPiArDQo+ICAJc3Bpbl9sb2NrKCZ4bi0+eG5fbG9jayk7DQo+ICAJaWYgKHhu
LT5zdGF0ZSAhPSBMSUJJRV9DVExRX1hOX0FTWU5DICYmDQo+ICAJICAgIHhuLT5zdGF0ZSAhPSBM
SUJJRV9DVExRX1hOX1dBSVRJTkcpIHsgQEAgLTEwMTEsNiArMTAxOSwxMQ0KPiBAQCBpbnQgbGli
aWVfY3RscV94bl9zZW5kKHN0cnVjdCBsaWJpZV9jdGxxX3huX3NlbmRfcGFyYW1zICpwYXJhbXMp
DQo+ICAJCXBhcmFtcy0+cmVjdl9tZW0gPSB4bi0+cmVjdl9tZW07DQo+ICAJCWJyZWFrOw0KPiAg
CWRlZmF1bHQ6DQo+ICsJCWRldl9lcnJfcmF0ZWxpbWl0ZWQoDQo+ICsJCQlwYXJhbXMtPmN0bHEt
PmRldiwNCj4gKwkJCSJUcmFuc2FjdGlvbiBmYWlsZWQgKG9wICV1LCB4biBzdGF0ZTogJWQsIGlk
OiAldSwNCj4gY29va2llOiAldSwgc2l6ZTogJXp1KVxuIiwNCj4gKwkJCXBhcmFtcy0+Y2hubF9v
cGNvZGUsIHhuLT5zdGF0ZSwgeG4tPmluZGV4LCB4bi0NCj4gPmNvb2tpZSwNCj4gKwkJCXhuLT5y
ZWN2X21lbS5pb3ZfbGVuKTsNClByb2JhYmx5ICV1IGZpdHMgYmV0dGVyIGZvciBlbnVtcyB0aGFu
ICVkLCB3aGF0IGRvIHlvdSB0aGluaz8NCg0KPiAgCQlyZXQgPSAtRUJBRE1TRzsNCj4gIAkJYnJl
YWs7DQo+ICAJfQ0KPiAtLQ0KPiAyLjU0LjAuNTQ1Lmc2NTM5NTI0Y2EyLWdvb2cNCg0K
