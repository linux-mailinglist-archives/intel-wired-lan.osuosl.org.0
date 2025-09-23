Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F64B9752D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Sep 2025 21:22:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D2E440DD6;
	Tue, 23 Sep 2025 19:21:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id txpD7eTuT2GG; Tue, 23 Sep 2025 19:21:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF6CE40D7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758655318;
	bh=agC5fqDvy3ZuKEKnGz0Bb+FSVYvbYeeu1WekB4LgXgc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R1ZrWQLW/tntSBqQ5UWML5Ghljc8pjeQw2DB6Zhx6pAhzgZCjLqUF7u/GPFT7Pex5
	 mex6/czj9VxLzS0rT8IJD5EYKYkM5kELcc9ocisxVzRlXqmZhtzv9Q0hXwdUmlCpGW
	 P3s0BAq3q1fYDsQpTDtcMFillW4hBaaeZf7tx8eStnka1R6GhF1GwbrAzdj2Go8uGp
	 OLWhfYRkO5kbVwHt7dEpuEzRtmgTQxaI/gi5E9nmBiDe1GK9MPQgpxc2aXYm/jEXmt
	 kKKfgVBWU0THxrbTCZQ32SltqPC8ZlnfKs00JmufS9hOvglfuhwr98YlZKwkvLMvy4
	 MVmQq27I+uM0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF6CE40D7C;
	Tue, 23 Sep 2025 19:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C36B0129
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 19:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A245582315
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 19:21:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMidzgfFdaF5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Sep 2025 19:21:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 91F53822BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91F53822BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91F53822BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 19:21:54 +0000 (UTC)
X-CSE-ConnectionGUID: oUMpCXD7ShSf6HCHmjvgqQ==
X-CSE-MsgGUID: wCW01Yl8TdWq45NUZQx+Qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60647150"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60647150"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 12:21:54 -0700
X-CSE-ConnectionGUID: ECUY44fwTx2XfvKog36G5A==
X-CSE-MsgGUID: j9XRoUpfSMeHpsqiM8wdLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="181157599"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 12:21:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 12:21:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 12:21:53 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 12:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bfwb7MxFIJ8roQQ8umgpINX5HJWgXvxB3uMOGHNluF9/7CbQ2ap+kbjJiMjiCAcPLQVSXM8t0xlCy/qf1vqkp/cJvq11MEA7SqAFILT1K7ATXA3RqyCKKPc42QqcAHlNlSLWcG6K9lW9a4bENLnFO0m+/6x0C2iNDD0Yd+GOmMc6AzUnxcLckqN4HuHLSg7wkAi7Tm6HrYPG5EjZ7dhqBkDigeyY2z5m1i+HC+e3HGAtyndn09Z3ZnFD1gxGe51v139oGOWmJaIepuvbj53i2Cu+OWu+Hqxr6nMfmcczffzPMZytWjBApLSOO6F2jnWUBt6TyJUT1QKuBpykE/oJhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=agC5fqDvy3ZuKEKnGz0Bb+FSVYvbYeeu1WekB4LgXgc=;
 b=xKpb79iTMaFo3I6DhXaPYF8ei/VUoqq7AOv9gJFV5Dd/3YABpZvhDz11kDAY5WHEF7Qjr1rYTOTFIa9ezAOK+M8rtScWrWJEI2x4HfP+USL9xsn28bF0BxC0QbphOmMBofQ/LqrF2nYkfinXjavf8Y89NlX7mSXQdEMcRavVcKbfo4mQScef5ipobfYcuv3NcKo9P7ZcFWUwGeWNac/8f9/AVDE80JdnPGYHLdmbW8geLH9iHOap31Si8G448Lb13kGt6FNTRBMEWCNA6Fij4Sb3sayqHhsoGwwjRiVejRJ1l1XybUpuDiv0MqBK7FJgZqSSxkHFtLV0RqXngoFzuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7999.namprd11.prod.outlook.com (2603:10b6:8:123::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.21; Tue, 23 Sep
 2025 19:21:51 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 19:21:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Karol Kolacinski
 <karol.kolacinski@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix destination CGU for
 dual complex E825
Thread-Index: AQHcLJ8Yr9cUpmkcDU+hjxF6Q/ebc7ShJIeQ
Date: Tue, 23 Sep 2025 19:21:51 +0000
Message-ID: <IA3PR11MB898664E18FD62E9C3BA2FB26E51DA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250923152904.1869397-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250923152904.1869397-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7999:EE_
x-ms-office365-filtering-correlation-id: 4b5f41a6-a8cd-4737-75af-08ddfad672d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OG9LQVZSVWozcXBxaTVzLytjVlBzSzZpK3RaWWZzWVcvcnpRbGR2aDBnVWZ4?=
 =?utf-8?B?Z20zMXVwOU5rQjc2UUFsVTR6ZHU0K0VHZ2ZOWXA3aHZZTGdnS2hJNUxVSlNS?=
 =?utf-8?B?WFQrVVBocFlPOW9GTG9taWtOR0VaVzFPblBrT1dGUldBTVlBM1pZV3VReCtP?=
 =?utf-8?B?MVk5cFB5QlFrZFZhWWVpU25McTN5dDQzd01GOG92YW5YTjQvaVNteGNBU210?=
 =?utf-8?B?V2d2MEQwU0t4Y290OHFaVmZQN0NOcmZmVEFrNFB2NUE5Y3VSbGJoTFdhSTRn?=
 =?utf-8?B?MnBTWDhhUkhhenllODlhS2NoU2pQYlN1cFFRZmVrdG1NUXVJV0p5ZnpCTTdX?=
 =?utf-8?B?OVhyYkw2RXdSWlBROW5zT20wZGU5Y2YybFc2d2hmeWVWR3BZV3FaNThOZTc1?=
 =?utf-8?B?dzdnUzROKzBHZSsvcWhVWDQ2UmZiLy9TYkcxYlZCeUdFQWd2RWdsNUZJV1Rj?=
 =?utf-8?B?a1F3WjZ0QVdrMjRDaHhWVDBlT2k1eGFjZTdRUVZwUFlHUjkvZ1Zvek1nRXRp?=
 =?utf-8?B?azlOM0FYMC95bVpjZStzbkRSNUZvZm1YN2JuQ0IyK2J5L2dQZVJiMG9Pa05H?=
 =?utf-8?B?U1I2NEgvNjJXdVNwd0gzWmpYMEJQUFo1cGh6NGJDK0xjZ3dKOGJMU25kQVEv?=
 =?utf-8?B?OHJ2QjBYTUJOc1dpWEpnblBXZXIxemt2anpIbWYxY0NKM2xKbGc0OHlYeXBD?=
 =?utf-8?B?RG1TSlhSYXBKQ250a2pkRkdwS2hNNUI0SUpuUVcyL0w1WHNCNUY2RnJuaW1m?=
 =?utf-8?B?Vmkvc3lmbGpuMWtnZVRSRGpSWHptS1A1YzlRTUlPTUgzWVdxYjRLRmJ1VHk2?=
 =?utf-8?B?emFPTEtGZmU3cXBrcG83YXJkTFBaQWJVQ21DUkJ4T1Y3U0xoZjBvcGZIZGto?=
 =?utf-8?B?QXpObVRRRTFNcHRzVVNTcXlxbmEvazZUVzE1ZlhrUitTT256UkRnYW43eWpm?=
 =?utf-8?B?ek1sU1Rpc08vdjNlQ2xhaWkyMEpZS1lrUVRkNzRPWE5pWEZ1SzBOMEhhUFFP?=
 =?utf-8?B?eXBEV0Y3ZWlDS3BJc0ZKYms5L2FDWFUydmdOWnU0TjR3MFJLNnhDaXZSaWlE?=
 =?utf-8?B?Q0JqOEd0V0tkU1hXdk5ScVZmaXdzc0ZPVDcrRTJNREgvbTRIdTQzZU5JV3NN?=
 =?utf-8?B?bWh3NTFLakJhY1dDdGFQS1l0dVdhV2dMMkVXNDdQWTUrbDNDTlozUW1sZkEr?=
 =?utf-8?B?N0FOZXd0S0VBeDQ5bzVQYlQ2bElETHk2RFd5UVZYMUh2QThMNnNVeHA0cGhU?=
 =?utf-8?B?ZUJoQjBkUkZSOFloQXE3VkZMR3hWVndSVXdncHcvSzNjekFJSzYrYk5obkZ1?=
 =?utf-8?B?bElPQ3E4V1B4Q1dJa2p2ZGQ4MkFTTU9yMVpUazZJMWsvMFYyaWFqWUIwSk1F?=
 =?utf-8?B?Z3gzOVVVelZhUFA3N0lNSmV3WTBBbWhaVnMxazYraVpJNHV5YWVsUENuUGkr?=
 =?utf-8?B?K0l6eFRwQ0lxdnpsTk5JS1pmZDFCeGxtbFRnN3hBVUVQR2t6anFibkhtS3dP?=
 =?utf-8?B?OFluSEh1QUoxaUVQZ3JCY3gyd2RzTmRVTTUxRzlyS2NUSFYvNUFtL0pDRmdz?=
 =?utf-8?B?ZFRhT09BdUZ3T215VnFTMjV1Wno4ZHJITFVZWUxvZ0dWL0kvcmlOYTA0czFQ?=
 =?utf-8?B?ZEZYUnQxdEUyRFJleGxBVWJ4eGtySitOSDFMWUJCNU4xN1hnUWlSRXBiM2lN?=
 =?utf-8?B?RU4xWndVNFovZHE5aUozaUNLUGpOWEJVcE9PejcrTUlEN21ZZVVwcUJlSjZo?=
 =?utf-8?B?TUpSTjF4T21VTlhzWG1OWWYvTVpld1J2YllsWVlPWkY0T1RZbFpqSmM0aFND?=
 =?utf-8?B?eDhLUzNhUS9LZFpEak10bGZReFlxMEJicWtSSU9Oa013UG5xZmlPa1hyL2lL?=
 =?utf-8?B?SjA5NmovT205OUdLRVpNV0EyZnJUVlRIZ3ZzYWZQQWxoT1pXK0hYckVPcHVw?=
 =?utf-8?Q?yjpXZodib0M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czdmUjIwRjF2d3VKL0JuNS9DUVNDWVZEK3NTdVBlQmxSWUpOMWpxOEFUYlJN?=
 =?utf-8?B?V0JyQ2x0QzN3NjFzUjFOZzVjbjN0cE9zYk5MUWNJM0RaaE02Ym45aUxQNHdl?=
 =?utf-8?B?S1oySkZ5VTF3NHF1dnNTZzZjamVLYWtTdUdvRy85Ymh4cTJnd3R1VjhXaWY4?=
 =?utf-8?B?a2JwWEdZQUVraWtpYzNLZU45WU9nNTVxdHJCdU1PM3B2SmlWaVdvUGhhSEV0?=
 =?utf-8?B?T01YbXluSWFxbnFjSDVBTGxPc0lyK0hzUXFIY3B4M1B5ZGx1K09nd1dzZlB5?=
 =?utf-8?B?QUJGQU13TnF5K1RMVmY0YWNzMTJNaHYwMjBjblVuVncxaDZza2sxVmlUbU5U?=
 =?utf-8?B?MzlPWVZaZzF4ZUU2dU5nbjdMZDNUTVhDRVg2cFpaeS9sZi9nNERNcjlDbjF0?=
 =?utf-8?B?eFl5NUtyU3QrRzBiR0g5K3IyY3FIdG01ZTdPaVgySzhSZDN2YzNuYmh1b2VF?=
 =?utf-8?B?bFBnclkxakw4OEovOFNiSjRTVUZVYXZjT3ExNXAzakhZV2owUkQrWUJWRDFT?=
 =?utf-8?B?YUhRVFh4cGNkWE9ueVJXZmVxQjVYeDdiRm5MbDd6eUVpWGZRK0krc0JOcllr?=
 =?utf-8?B?cXh4ZFZjVXJqOVh1djBQLzl3Y2J4dkhRYkZ5L0xPcTA1Q0lvdGVyWUFkaW04?=
 =?utf-8?B?NndyMk9TTW9lNEtsUjhUZkl0YmlMbTJPcWQzcjNOZ1NycjNQa1lnWUhXeElx?=
 =?utf-8?B?czJHdVhQNzNZbFZHSHhlZE9zczN5MDJWWDZRUVBOQURORFNBNVFITjBMT2Zm?=
 =?utf-8?B?bGxJSnZDcmdWZmowS3ltVzAxSnRNRENLVGhhc2REOU5hT2kxaUFrL1NrVDBr?=
 =?utf-8?B?QjU2SHRLQXNXNWgwcE1GbnhyMmVOVVk0cDl3anlaa3dIc1dPWDZHVEJPUE9T?=
 =?utf-8?B?VC9KQ0JIUHd0cWxDTzFEQ0VzODNyazRIUFFhcnNkd21NYkdGZ0Z3UVZOUzlG?=
 =?utf-8?B?OFFzcjl3dnJvcDlCTnRWbEkyK3hNVVF1UlBObEN5Q2tveTRMY1VXbnN3RTZZ?=
 =?utf-8?B?QWwrZGVYK0hGelBVanhCVHN5bnEzcHJwNEt5SzJnTi94UkE3T3ZIbHB3MGZN?=
 =?utf-8?B?UGNBbFlQbTB3dldodHAvRlNKU1dxVFJmcHNTMkVGS1pmR1hOR3pkL2xBRU5U?=
 =?utf-8?B?UUVYbDFHRE1NTzNzWEFocGFWUFpwVzFRQjNiTWV6MThhSmVMZ1c4MWVmcFlX?=
 =?utf-8?B?WlQySTlPTXhSaU5JSk1lL1NuQ2s2MUUzWEhJYTF3MEtBb3NJQXpFdVhRWHZS?=
 =?utf-8?B?N1VWdW1uVFJiSGZHT1Y2akxTV0RQKzdSMWRzV01ab3RvbWdLdlJ1OHA3N3JT?=
 =?utf-8?B?c2NiazZSSnBibWJ3NDREYXNId2hVU1Z1aXVqbGRGTS9nWmZvNFAvelZoMGNq?=
 =?utf-8?B?MlVINFdsbHVpclFucU9sSS8xRmFKa05mSVAraWd3Yk9sYnZvRklpTDhUWm0y?=
 =?utf-8?B?bFFVREJwZ1RNQ01INDMrbGo1SFc2WTFsdDhWVi8zcEYwNW1ubmIyTXVhcGZ5?=
 =?utf-8?B?WGp5cFJZUW9XTGVlelB5azVPakhMRWtlTlpDVm9nbk9oWGZkN0x1dWlWMHVN?=
 =?utf-8?B?MGdEWVFaRU1FTjVIbi9jUENlU1diYW51TlZwYVVpZk05ZzlyeldjZitjSWhU?=
 =?utf-8?B?Ry9vMTRtMTVIcFhtcjdmTmxlUWFkUE5aSlJZOVNtaUZ5RFBrY1lNbUQ4TWdI?=
 =?utf-8?B?QWw2bU9CMFZqWjZRcEFhYWRVNEJHZERYYmpyZVFvSGFCb1J2NVhPOUNBbVFw?=
 =?utf-8?B?ZFpuKzVWYXh2TmR3WG9NU0FOWWJmUlE0QWtDV2FYYlRXSWRGMDVCVWVjejN0?=
 =?utf-8?B?N1YyZWY3amhka3JlRFQydytHLzNMTVpQQ2I3c3huUm9NZjZLaGdRTklseS81?=
 =?utf-8?B?c2NPSWdOYzBNZklmYUpmUzRPOXdxcmQzaCtPWUtJeGJWZkpraUd0Z1gzYkFw?=
 =?utf-8?B?d2N3WE9PL3ZXZXJ5YTdsTGkwMzl3UlhBYUlKRXZtU3BiTHJSTXhpKzNFdUhG?=
 =?utf-8?B?ZE9CK2JiY2NqVzVYdnNiT3JvbnVOY2o1ZXhUbVFFZ0JObUFHYVpkQWtsaXZC?=
 =?utf-8?B?QzhlY0grNGptVzRwNE5nZzA5RHFsakRFaXdmeFZiQ1h2Y1NxMlF0NURBTjJp?=
 =?utf-8?B?YUc0dmxJQkFYcE5pZDFFT0xCcWw2UkVHNFdHOHJ5U1l4TXptZlR1alRmbHBQ?=
 =?utf-8?B?MFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b5f41a6-a8cd-4737-75af-08ddfad672d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2025 19:21:51.2639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KrNPNX7qt/wE4hEXP8gwLxmflYxexBq7KHf8RJE1qC3c+hDXSU2iJs0fCmA/ajPJywTa/ESfv2sjGIRPNDwzTMzv4ZZTr7ob1WuiciFiAaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758655315; x=1790191315;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=agC5fqDvy3ZuKEKnGz0Bb+FSVYvbYeeu1WekB4LgXgc=;
 b=XX75VDpjRKlGeT4EHpO8Z/z3p/yZ5deJEjOOZH1R4uoN6+CMehcoG0/8
 erbsqqxqggr2wsST0aiipkfo10dwz1qjRiG7Dz0miP1q22+7eE6u4E2Ch
 JY8PfcwfDqNxWVmBIMqyeIjirD0qjlGUaFD53e+sxiwFSFKkhclHm5472
 3mo72gz8AT9x4jQ32qtn+mQQr1oVhVU9PGOfsRP2n6uL0LA3JkIqfNcu6
 SmGuJlLx/66m+ABw8N80mQzBIXgNZgAJTGKHZJK1zlwh9CgXwS0d2/Pk8
 82iZkaTI3N8Jwiepe97dl+2OY2y1wl8SN386ko/q4veB+pGZ7wNgyNPyf
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XX75VDpj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix destination CGU for
 dual complex E825
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgR3J6
ZWdvcnogTml0a2ENCj4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDIzLCAyMDI1IDU6MjkgUE0N
Cj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBLYXJvbCBLb2xhY2luc2tpDQo+IDxrYXJvbC5rb2xhY2luc2tpQGludGVs
LmNvbT47IEt1YmFsZXdza2ksIEFya2FkaXVzeg0KPiA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldF0gaWNl
OiBmaXggZGVzdGluYXRpb24gQ0dVDQo+IGZvciBkdWFsIGNvbXBsZXggRTgyNQ0KPiANCj4gT24g
ZHVhbCBjb21wbGV4IEU4MjUsIG9ubHkgY29tcGxleCAwIGhhcyBmdW5jdGlvbmFsIENHVSAoQ2xv
Y2sNCj4gR2VuZXJhdGlvbiBVbml0KSwgcG93ZXJpbmcgYWxsIHRoZSBQSFlzLg0KPiBTQlEgKFNp
ZGUgQmFuZCBRdWV1ZSkgZGVzdGluYXRpb24gZGV2aWNlICdjZ3UnIGluIGN1cnJlbnQNCj4gaW1w
bGVtZW50YXRpb24NCj4gcG9pbnRzIHRvIENHVSBvbiBjdXJyZW50IGNvbXBsZXggYW5kLCBpbiBv
cmRlciB0byBhY2Nlc3MgcHJpbWFyeSBDR1UNCj4gZnJvbSB0aGUgc2Vjb25kYXJ5IGNvbXBsZXgs
IHRoZSBkcml2ZXIgc2hvdWxkIHVzZSAnY2d1X3BlZXInIGFzDQo+IGEgZGVzdGluYXRpb24gZGV2
aWNlIGluIHJlYWQvd3JpdGUgQ0dVIHJlZ2lzdGVycyBvcGVyYXRpb25zLg0KPiANCj4gRGVmaW5l
IG5ldyAnY2d1X3BlZXInICgxNSkgYXMgUkRBIChSZW1vdGUgRGV2aWNlIEFjY2VzcykgY2xpZW50
IG92ZXINCj4gU0ItSU9TRiBpbnRlcmZhY2UgYW5kIHVzZSBpdCBhcyBkZXZpY2UgdGFyZ2V0IHdo
ZW4gYWNjZXNzaW5nIENHVSBmcm9tDQo+IHNlY29uZGFyeSBjb21wbGV4Lg0KPiANCj4gVGhpcyBw
cm9ibGVtIGhhcyBiZWVuIGlkZW50aWZpZWQgd2hlbiB3b3JraW5nIG9uIHJlY292ZXJ5IGNsb2Nr
DQo+IGVuYWJsZW1lbnQgWzFdLiBJbiBleGlzdGluZyBpbXBsZW1lbnRhdGlvbiBmb3IgRTgyNSBk
ZXZpY2VzLCBvbmx5IFBGMCwNCj4gd2hpY2ggaXMgY2xvY2sgb3duZXIsIGlzIGludm9sdmVkIGlu
IENHVSBjb25maWd1cmF0aW9uLCB0aHVzIHRoZQ0KPiBwcm9ibGVtIHdhcyBub3QgZXhwb3NlZCB0
byB0aGUgdXNlci4NCj4gDQo+IFsxXSBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2pl
Y3QvaW50ZWwtd2lyZWQtDQo+IGxhbi9wYXRjaC8yMDI1MDkwNTE1MDk0Ny44NzE1NjYtMS1ncnpl
Z29yei5uaXRrYUBpbnRlbC5jb20vDQo+IA0KPiBGaXhlczogZTIxOTNmOWY5ZWM5ICgiaWNlOiBl
bmFibGUgdGltZXN5bmMgb3BlcmF0aW9uIG9uIDJ4TkFDIEU4MjUNCj4gZGV2aWNlcyIpDQo+IFNp
Z25lZC1vZmYtYnk6IEdyemVnb3J6IE5pdGthIDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwu
Y29tPg0KPiBSZXZpZXdlZC1ieTogQXJrYWRpdXN6IEt1YmFsZXdza2kgPEFya2FkaXVzei5rdWJh
bGV3c2tpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2NvbW1vbi5jICB8IDMwICsrKysrKysrKysrKysrKysrKy0NCj4gLQ0KPiAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zYnFfY21kLmggfCAgMSArDQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYw0KPiBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMNCj4gaW5kZXggZWI2YWJm
NDUyYjA1Li41ZWE0MjBjNzZmNTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfY29tbW9uLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9jb21tb24uYw0KPiBAQCAtNjM4Miw2ICs2MzgyLDMyIEBAIHUzMiBpY2VfZ2V0
X2xpbmtfc3BlZWQodTE2IGluZGV4KQ0KPiAgCXJldHVybiBpY2VfYXFfdG9fbGlua19zcGVlZFtp
bmRleF07DQo+ICB9DQo+IA0KPiArLyoqDQo+ICsgKiBpY2VfZ2V0X2Rlc3RfY2d1IC0gZ2V0IGRl
c3RpbmF0aW9uIENHVSBkZXYgZm9yIGdpdmVuIEhXDQo+ICsgKiBAaHc6IHBvaW50ZXIgdG8gdGhl
IEhXIHN0cnVjdA0KPiArICoNCj4gKyAqIEdldCBDR1UgY2xpZW50IGlkIGZvciBDR1UgcmVnaXN0
ZXIgcmVhZC93cml0ZSBvcGVyYXRpb25zLg0KPiArICoNCj4gKyAqIFJldHVybjoNCj4gKyAqICog
aWNlX3NicV9kZXZfY2d1IC0gZGVmYXVsdCB2YWx1ZQ0KPiArICogKiBpY2Vfc2JxX2Rldl9jZ3Vf
cGVlciAtIHdoZW4gYWNjZXNzaW5nIENHVSBmcm9tIDJuZCBjb21wbGV4IChFODI1DQo+IG9ubHkp
DQo+ICsgKg0KPiArICovDQpOSVQ6IEluIGtlcm5lbOKAkWRvYyBmb3IgZnVuY3Rpb25zLCBSZXR1
cm46IGlzIGV4cGVjdGVkIHRvIGJlIHByb3NlIChub3QgYnVsbGV0IGl0ZW1zKS4NCkFsc28sIHBy
ZWZlciDigJxzZWNvbmTigJ0gdG8g4oCcMm5k4oCdLCBhbmQgZGVzY3JpYmUgd2hhdCBpcyByZXR1
cm5lZCByYXRoZXIgdGhhbiBlbnVtZXJhdGluZyBjb25zdGFudHMuDQoNCj4gK3N0YXRpYyBlbnVt
IGljZV9zYnFfZGV2X2lkIGljZV9nZXRfZGVzdF9jZ3Uoc3RydWN0IGljZV9odyAqaHcpDQo+ICt7
DQo+ICsJLyogT24gZHVhbCBjb21wbGV4IEU4MjUgb25seSBjb21wbGV4IDAgaGFzIGZ1bmN0aW9u
YWwgQ0dVDQo+IHBvd2VyaW5nIGFsbA0KPiArCSAqIHRoZSBQSFlzLg0KPiArCSAqIFNCUSBkZXN0
aW5hdGlvbiBkZXZpY2UgY2d1IHBvaW50cyB0byBDR1Ugb24gYSBjdXJyZW50DQo+IGNvbXBsZXgg
YW5kIHRvDQo+ICsJICogYWNjZXNzIHByaW1hcnkgQ0dVIGZyb20gdGhlIHNlY29uZGFyeSBjb21w
bGV4LCB0aGUgZHJpdmVyDQo+IHNob3VsZCB1c2UNCj4gKwkgKiBjZ3VfcGVlciBhcyBhIGRlc3Rp
bmF0aW9uIGRldmljZS4NCj4gKwkgKi8NCj4gKwlpZiAoaHctPm1hY190eXBlID09IElDRV9NQUNf
R0VORVJJQ18zS19FODI1ICYmIGljZV9pc19kdWFsKGh3KQ0KPiAmJg0KPiArCSAgICAhaWNlX2lz
X3ByaW1hcnkoaHcpKQ0KPiArCQlyZXR1cm4gaWNlX3NicV9kZXZfY2d1X3BlZXI7DQo+ICsJZWxz
ZQ0KPiArCQlyZXR1cm4gaWNlX3NicV9kZXZfY2d1Ow0KPiArfQ0KS2VybmVsIHN0eWxlIHByZWZl
cnMgZHJvcHBpbmcgZWxzZSB3aGVuIHRoZSBpZiBicmFuY2ggcmV0dXJuc+KAlG1ha2VzIHRoZSBj
b2RlIHNob3J0ZXIgYW5kIGlkaW9tYXRpYy4NCg0KDQo+ICsNCj4gIC8qKg0KPiAgICogaWNlX3Jl
YWRfY2d1X3JlZyAtIFJlYWQgYSBDR1UgcmVnaXN0ZXINCj4gICAqIEBodzogUG9pbnRlciB0byB0
aGUgSFcgc3RydWN0DQo+IEBAIC02Mzk2LDggKzY0MjIsOCBAQCB1MzIgaWNlX2dldF9saW5rX3Nw
ZWVkKHUxNiBpbmRleCkNCj4gIGludCBpY2VfcmVhZF9jZ3VfcmVnKHN0cnVjdCBpY2VfaHcgKmh3
LCB1MzIgYWRkciwgdTMyICp2YWwpDQo+ICB7DQo+ICAJc3RydWN0IGljZV9zYnFfbXNnX2lucHV0
IGNndV9tc2cgPSB7DQo+ICsJCS5kZXN0X2RldiA9IGljZV9nZXRfZGVzdF9jZ3UoaHcpLA0KPiAg
CQkub3Bjb2RlID0gaWNlX3NicV9tc2dfcmQsDQo+IC0JCS5kZXN0X2RldiA9IGljZV9zYnFfZGV2
X2NndSwNCj4gIAkJLm1zZ19hZGRyX2xvdyA9IGFkZHINCj4gIAl9Ow0KPiAgCWludCBlcnI7DQo+
IEBAIC02NDI4LDggKzY0NTQsOCBAQCBpbnQgaWNlX3JlYWRfY2d1X3JlZyhzdHJ1Y3QgaWNlX2h3
ICpodywgdTMyDQo+IGFkZHIsIHUzMiAqdmFsKQ0KPiAgaW50IGljZV93cml0ZV9jZ3VfcmVnKHN0
cnVjdCBpY2VfaHcgKmh3LCB1MzIgYWRkciwgdTMyIHZhbCkNCj4gIHsNCj4gIAlzdHJ1Y3QgaWNl
X3NicV9tc2dfaW5wdXQgY2d1X21zZyA9IHsNCj4gKwkJLmRlc3RfZGV2ID0gaWNlX2dldF9kZXN0
X2NndShodyksDQo+ICAJCS5vcGNvZGUgPSBpY2Vfc2JxX21zZ193ciwNCj4gLQkJLmRlc3RfZGV2
ID0gaWNlX3NicV9kZXZfY2d1LA0KPiAgCQkubXNnX2FkZHJfbG93ID0gYWRkciwNCj4gIAkJLmRh
dGEgPSB2YWwNCj4gIAl9Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9zYnFfY21kLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3NicV9jbWQuaA0KPiBpbmRleCAxODNkZDU0NTdkNmEuLjIxYmI4NjFmZWJiZiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zYnFfY21kLmgNCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zYnFfY21kLmgNCj4gQEAg
LTUwLDYgKzUwLDcgQEAgZW51bSBpY2Vfc2JxX2Rldl9pZCB7DQo+ICAJaWNlX3NicV9kZXZfcGh5
XzAJPSAweDAyLA0KPiAgCWljZV9zYnFfZGV2X2NndQkJPSAweDA2LA0KPiAgCWljZV9zYnFfZGV2
X3BoeV8wX3BlZXIJPSAweDBELA0KPiArCWljZV9zYnFfZGV2X2NndV9wZWVyCT0gMHgwRiwNCj4g
IH07DQo+IA0KPiAgZW51bSBpY2Vfc2JxX21zZ19vcGNvZGUgew0KPiANCj4gYmFzZS1jb21taXQ6
IDg0Y2IzNDgzNDQ1ZjlhYzBhMTA2ZWI4NDZmYTEwMDM5MzQzM2Q0NjkNCj4gLS0NCj4gMi4zOS4z
DQoNClNvbWUgc3R5bGUgd2FybmluZ3MsIG90aGVyd2lzZSBmaW5lLg0KUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
