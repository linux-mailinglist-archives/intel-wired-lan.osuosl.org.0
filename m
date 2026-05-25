Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CL2Jl4LFGr6JAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 10:42:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 527B45C7EC6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 10:42:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 216F583E82;
	Mon, 25 May 2026 08:42:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AHeIbT5lmVO7; Mon, 25 May 2026 08:42:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9346C83E88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779698522;
	bh=4ymDG2GVXdx6oeISnQOvYNd6lgXKrAStJO8KaaI00Wc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sa5lL0oAuPY+fIFCqhTJGSI3kQsoheQisKQym94YqLW0iHmGEEoagUxj+/4bHijlL
	 QoHyekJmz4gJrXAEdgSaRbozluMb1Dh9N50mXVfOWsB9rkQUF0HVcQZmBkcsi1nNsU
	 iblp0EoGh2thelfYmOJg55SCpD92gLK0CptB1n54+GU2FLoFYtX0xJkrv/LrAWs3Ba
	 KG+tNES8K5+kvBEWGFSkziBHJWL0arBsvR6dMVpICy/yT/TktsGcilaw9JQuFZzVNw
	 MiA9hlhnB3MarTT+yK+o1d+ipDGmMyEGZIQHqD0OINjCSOOV7TsrGbHDhDDJvvy717
	 cZXacaPhvm6XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9346C83E88;
	Mon, 25 May 2026 08:42:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A0E5297
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 08:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FC2460F58
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 08:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MilrFbIdzWGk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 May 2026 08:42:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1265560F57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1265560F57
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1265560F57
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 08:41:59 +0000 (UTC)
X-CSE-ConnectionGUID: 494soIceT8qY/ChWVHJc7g==
X-CSE-MsgGUID: kM3bXvktSlWLkIzFvAQtaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="80573294"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="80573294"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 01:41:59 -0700
X-CSE-ConnectionGUID: gLbUkuDPQIWiN/GyEKrUig==
X-CSE-MsgGUID: rLiXsHtuSmKtObQezY+cSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="238968437"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 01:41:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 01:41:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 01:41:58 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 01:41:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WwaCfbAnLOUuZdYuOUDbukl5d+qxGrH6erMGC8JK4tPfvKz/LtiVZOAbuC809hPVYs/GPQUyj2tFnt5jtLnDRkmw47IsLUpDbGC2Zq5fJDirIZsCfN6uTfMz3BFHxAd3Kc8L/qKVnRCFub3uNwYO2N2AFbp1f/S5LfqoR4iRCueNhSQSxoRu2AYF1s5uuRAjt9zeDMHp60M1X1lTdClHIEyVFbS/f/VA2+/OSggXzrFKxG32G5sbKbIdaNBDW5YO4+ntSop63r9lXOozHYpArdg5VLA644n8Nqhzef9zJSHmAzpeRN+2L2VDkW+hZZEUW3WH5StlDr3v9ZslmcV0SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ymDG2GVXdx6oeISnQOvYNd6lgXKrAStJO8KaaI00Wc=;
 b=H3c6Wll+UEfFQPgZb0Uhwx0fcIn/r1FtOJmgHHvncLUXqUnkGn9AlsPHf4F+O//YS8QenCzYxFRUhNq32yCIWvanONjdDAFtVP79gHlCKNgwHDxsByOU53HyTBkyb6iY9w8HFxEGpsSOUa2o4YhaGRI+i/dPBzRb40r9kWu/MD7cpuVFjzSjnAaYdeVcU6n/C/WwlqaCAWvRWm01M0voZULZzqYnrXoKveGcxdUT4C7y734/cIOTAMFihAQRDp9VOeRZO72vdVA2KClRMArJNv6qVT52FO/FnT2qGTKydXoe9yNlc4V+Aw2cBgxnLPx8C6kHHewnzIDHUSd4ZRSd1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB6812.namprd11.prod.outlook.com (2603:10b6:303:1ee::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 08:41:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.21.0048.016; Mon, 25 May 2026
 08:41:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Ashwin Gundarapu <linuxuser509@zohomail.in>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, andrewnetdev <andrew+netdev@lunn.ch>, davem
 <davem@davemloft.net>, edumazet <edumazet@google.com>, kuba
 <kuba@kernel.org>, pabeni <pabeni@redhat.com>
CC: intel-wired-lan <intel-wired-lan@lists.osuosl.org>, netdev
 <netdev@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] e1000e: fix memory leak of
 msix_entries on MSI-X failure
Thread-Index: AQHc6nyjBt/ds8WJZUiAsgmw9wceALYebs4Q
Date: Mon, 25 May 2026 08:41:55 +0000
Message-ID: <IA3PR11MB8986E6D8396AA3A50C9FFF5CE50A2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <19e537fa55c.56218d6244367.1765806925055659075@zohomail.in>
In-Reply-To: <19e537fa55c.56218d6244367.1765806925055659075@zohomail.in>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB6812:EE_
x-ms-office365-filtering-correlation-id: 0c27ec40-719f-45d3-c356-08deba3979bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003|38070700021|921020|11063799006|6133799003;
x-microsoft-antispam-message-info: JiP0P4i7bUJ63JFw1CUYJnWoodCGRZmd75wWpHWAqApPS94kOW/uoVXIqsKp7nlGC/uTtro6O1WcM/+o8JhG2zfhr/cprShVMltzlAT64kVUsjgxCff8+6Pebeo7bx/2oLleTSC4XSoLUv5IkCdip0xeNA4hCSw5RXkGh/w9maEiSQ45CIGODkk+B9QVOITpwbkR1nXBM55yfA0SFcFWKpnTQ3+6rC11BwAoOKfAxxpEYszxEzfEt2TYTXzh6fFEVL27AqBKztZsV1/1BAh19dtJUYR8XHrYQvgCAuRvdoBi7RVcJ8icahOHJ97HswwdzF0WsSzReRZOpwV3PUQ9ZxerFz6x6W/+qr8CJ7YPk5KSGO6E3fb/AvTVa3lYEJNkERnQBsKHQp62qJLRO1Abx+Mf7xWBtePB158DVGytefOhRgdrawqznvIXb99ObY4lIokB7FDa2E23KqSDLaKY91NWerbELK0zWmyZMpeEnkgX02yMT/MOGO71B/z3Gd6VeE0KbQsi/AwdcbLkxl9B+71cWPOnMIOjVbIX+piTSqj79x6WpoiHSyka1IbbqH7OmnPlFPagIIAaBIecrta5r7NgJWWO6OcxuLQHFE6QgVqbu1nBmiMlrYcmiUxZjaEsEmurFX2sfDC1Y8kRIXPH2V2dHlWqDTtHwqSDpRx7doshtE7LtnRpx85aZxj8v6oPfIUl++DzQR9MW9J6GkA1XpI0jWcf3jnDcNeG5mrXv9M5VIzYLLXZoV/l/JtHxiG2rS/7BSDE1OPIbPbFhrlneA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003)(38070700021)(921020)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFFhKzMxcXYzOENrTEw1RERmQ1BhaWtBMEJ1Y3FwSHZWayt5VWZsVDdCNHJB?=
 =?utf-8?B?ZGlQcnd4TlliSnR3Qzgwd3NVUXBabGN4ZXBNRzNBWG5ic3hNSkw0WTZ6eXNr?=
 =?utf-8?B?N3RMQ250YjhQRDE1ZjJ5S3oxQUdhbnBqbkExK0xIS0ViZklOTHE2My9DZ0dx?=
 =?utf-8?B?ZkN2cEp2cWpiSVVxSW5SMXF3aDRyUVllMUNRcEdsV2NGODMvT2RhNm9KYWx2?=
 =?utf-8?B?QkxndFhKT0QwUG9EcFRjMG16SVdjYWN1QjVsT3lQVVQvbzEyakF1aE5NakFy?=
 =?utf-8?B?YlF3eFdmR0Zqa1ZidnhXa212QkF6UER6V0lhdWNEbUtBZVhkU1EvVWJZMzNZ?=
 =?utf-8?B?dGZBdytEWGo5S2NJL0JrOGZGclRoTEwvNU5GZWFidHJKbGpHRkNjL2N0Z1VG?=
 =?utf-8?B?L3grRFVWL2sxYlR2QWF5K0QxRmsxUTVjdjExNVVlUDdXMDVBeUlzTDBLWHla?=
 =?utf-8?B?NzkvejI4a3ZMcWdTbXFLc2V4aURoQkVNQzl5V3dtdkZiRTUxNUxCSHJoT0cx?=
 =?utf-8?B?V1VwVzdDTHl6aHZVbi9lWGlIZVU2Y3B5Z0xKYk5kS0ZOSkhkU09FUTZzV0Vr?=
 =?utf-8?B?bFQvUmNia0pvMXZoeGw0UitxNWJHc1FyeSttR2RpWWwyZWo4M1gxcmQyOUtl?=
 =?utf-8?B?SEpDeXdMOHZhejVGRDU0VCtUdlZYZzFid3MzdVVldzA1NXF0b3QyOHNaNmlr?=
 =?utf-8?B?UmY0eFFCZng4bDlhd3NhUDd2MThQOVZnL3d6cHNkaHMvcG9DK0xwcFZqdHJs?=
 =?utf-8?B?SW5uYlY2YlF3TkNrS1pMNWNreHZ6eXZGSElKUDhrNllXMlNVZi9CK0ZYT2RK?=
 =?utf-8?B?M200d2pGTFNvTHc1Y2oxRUdscFcveDN3YmVmRm9CeVVicjc3WEcyT29qVXYw?=
 =?utf-8?B?QlZ0cDZGcXN0a2t5bHFyZGNDOUxFSmtYbTYxd2xSazlmWGVrZEpETTJUMEZy?=
 =?utf-8?B?WUtScEx1ZmtHKzFuYk5pQkEvU1A3dVZkYTZ1WUplOEJ0SE0xTUJSNVNaM0tE?=
 =?utf-8?B?THM5NDJabWhzTWJXeHZzeldCaW9mY1pnciswR3JkVDVHTkhkUnRwQ2VGNXNq?=
 =?utf-8?B?SFJQN0RHc3cwU0o3VTk5VmNFUnk4MkljdG1OdlpIcmhCQng2TXhUOWFZWUlL?=
 =?utf-8?B?bStmQlQ4Y0NQZ0J3ZmEvSFlkWVZpbXVCYUZjZ1lmT3NBRnpxamFEdzdEdnds?=
 =?utf-8?B?ZG5aVXFPSHRvU3huNzhzSkFuc1cxL1YzaU80aFZiSVgvN1dzVis0aFJlTTEz?=
 =?utf-8?B?TklRUGhJVkdSWXVwTDBLVkMwSG5ZZXpBT2FSM2piMnRSTDVLdGpaV0hWZGhQ?=
 =?utf-8?B?RVVGZzNGOUtSWXpRTVU5ZFJKWVFBVEhCbUxFRlBnYjRnbnNUZ3ZMSWwyY0ky?=
 =?utf-8?B?Z2tuSVBUcktDdmhKckJhNU5XeHhLSHg1RlYxeE5yeVNySXNhSEJOSitoRVVU?=
 =?utf-8?B?NDVqSElPTForcE9BWG04a1lQT3o2eW8wYVVVN1dIcnMzdmhGZ0phcE1UYkR3?=
 =?utf-8?B?MnNRYjNycTREVFZKb0ZlUlJFVGQzM3dxTUVTdElqOG1lZzg3cUFLSlNlTFls?=
 =?utf-8?B?dUdxNHAwSkFqQnNDbHBtOVlCMWxxdG9tOHlqSHFPTVVUMDRrSm5vWXZZUHlk?=
 =?utf-8?B?V2NNMDdvS1VIVzd2MTU3eHI3eFQxTXZFcFF6Qkg2QzRhbjhTVGJMMmNzYzh1?=
 =?utf-8?B?TEpPbE44ZkFlb3p3YTdoUEtMQ0E1KzE0VkZwOUo3QnFUYjNLcS9VeUZnTjFz?=
 =?utf-8?B?M1V0THRFZTAzWUYxSXdDZ3pLNzFBUmoxZzVsSDZpdEhHWlh6RFVkaHpDM1Vj?=
 =?utf-8?B?bFFqNWtJR1FCRVZPdEUyb0Q1VHp3WkF1SHVQM2I3TXRvYkl2eDE1TjRTKzRX?=
 =?utf-8?B?bkMySFo5THUrMWlXdkp3VGZ5NU12TWZETUZhSkhteXpzMnZKKzFSeVY1MEtH?=
 =?utf-8?B?M3VXNWNWRGsvOE9pN1BqVUUzdnJzZ1JnaXNpeGFzWGtsL2ZPdTEzSXZmcGk3?=
 =?utf-8?B?T0xXZzlFdDdpR2pESVV0VHVjdU1YYXdvK0x0czNsUGRudURQaDJWczNBaTUw?=
 =?utf-8?B?cnN1TW0yNk1kbnBwUGtCbWR1djl3WHJKNzdLQ3RXVkxId3FTTXd1OUs4ZUlu?=
 =?utf-8?B?bHhsckgvTHUwTVlzVlhPdzBlR2dBRVdKWWoxM1g0NU5ORlhaZDJzTDFLMmhR?=
 =?utf-8?B?TWdnV09meTYrcTZWZ1l3RmZ6c2JiY0xnamYzT2VTa0tsaDhpOGIxTFRxL211?=
 =?utf-8?B?MnlwTGJIOXU3dllvREdDWmNhM0xDQWpZUnUweVMrQ0hxMm44ZDE1cktoVTdr?=
 =?utf-8?B?Z3hnZEY5dmo4QUNLeVZET1NPQ0p1b3F3MnBRQkZ5YUloWVE0eTNnMk1KN2dM?=
 =?utf-8?Q?v8EafzaTR1gbEkcQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XwobsIJUkICaoWVMNJdDJvZqg+7EsuNl7kEI08dkQIFAaTnQn6ABRVzkaAv1N86Q4tUaHaxvV5r+UFsjGkaGz27AyspMndhyNIBCsrJGP9uG2ivttffpN3Z6O0eajyoZlJqnSKeiVv9LBmUI1OrVm7dHu2UqSnN9O5O7WcuZH9G1ppQQQDu2ubCaEciyIavzgiClo5FgOZcOImGxrWjY4l2N74Gu0Jfs26zw4wqM69YlZp56FbFIlpD/6f1hvzBR8qmU8W0yp2UFxny0Wo/fuN9y/CCUN7OUvfVryuWOvWuSWKY0bwU7a+9ng2Hr1zJSHSXjQ8JVd+dU83lD0OyN5w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c27ec40-719f-45d3-c356-08deba3979bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 08:41:55.1426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A6iGiuV/98Pcvi+bXdd/b1A2BJDBf0VcWEvFvXTWhvZaxEfbhFJSeNaltoluf0GN9GYqfCOTrx5FE01JE8Ry3d/hOW5hOfqlEHBWgcL0DGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779698520; x=1811234520;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4ymDG2GVXdx6oeISnQOvYNd6lgXKrAStJO8KaaI00Wc=;
 b=VHrRIBrwiFQa60j/LX02bViYc8Gt0OrxAZ+ec8+okeG8+5j1OekY0RMz
 XNpGIZaNd+zo+E5+6VzXPvUm0Vhr3Mn3gBkvKMjHm2K3Gnf+p1dd8MfhM
 xJu4ryhcecbNYBWgXuC26aPf1AnJNyrgrgXyb/Yzt0u06XwlKIiLHcbQF
 NDJqN1deNmyt+8wymcGK0eR1Qeg1aInUcLbB7b5Faks0D8YcRC62nACOx
 O7y5Afm74rQDr/thRQY7CCzkYi2uyo1952fm2P2F4QwmDW7tlgGRK0lc6
 yHLt8jgGCuH/Do9k+2ol41hh6sD7KfAx6mflnxZ3TAU9nK9o/NgmWGeO8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VHrRIBrw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: fix memory leak of
 msix_entries on MSI-X failure
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linuxuser509@zohomail.in,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_SPAM(0.00)[0.830];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Queue-Id: 527B45C7EC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQXNo
d2luIEd1bmRhcmFwdSB2aWEgSW50ZWwtd2lyZWQtbGFuDQo+IFNlbnQ6IFNhdHVyZGF5LCBNYXkg
MjMsIDIwMjYgODoyMiBBTQ0KPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVs
QGludGVsLmNvbT47IGFuZHJld25ldGRldg0KPiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgZGF2
ZW0gPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBlZHVtYXpldA0KPiA8ZWR1bWF6ZXRAZ29vZ2xlLmNv
bT47IGt1YmEgPGt1YmFAa2VybmVsLm9yZz47IHBhYmVuaQ0KPiA8cGFiZW5pQHJlZGhhdC5jb20+
DQo+IENjOiBpbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3Jn
PjsgbmV0ZGV2DQo+IDxuZXRkZXZAdmdlci5rZXJuZWwub3JnPjsgbGludXgta2VybmVsIDxsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBb
UEFUQ0ggbmV0LW5leHRdIGUxMDAwZTogZml4IG1lbW9yeSBsZWFrIG9mDQo+IG1zaXhfZW50cmll
cyBvbiBNU0ktWCBmYWlsdXJlDQo+IA0KPiBGcm9tOiBBc2h3aW4gR3VuZGFyYXB1IDxsaW51eHVz
ZXI1MDlAem9ob21haWwuaW4+DQo+IERhdGU6IFNhdCwgMjMgTWF5IDIwMjYgMTE6NDk6NDAgKzA1
MzANCj4gU3ViamVjdDogW1BBVENIXSBlMTAwMGU6IGZpeCBtZW1vcnkgbGVhayBvZiBtc2l4X2Vu
dHJpZXMgb24gTVNJLVgNCj4gZmFpbHVyZQ0KPiANCj4gV2hlbiBNU0ktWCBpbml0aWFsaXphdGlv
biBmYWlscywgdGhlIGRyaXZlciBmYWxscyB0aHJvdWdoIHRvIHRyeSBNU0kNCj4gb3IgbGVnYWN5
IGludGVycnVwdHMuIEhvd2V2ZXIsIHRoZSBtc2l4X2VudHJpZXMgYXJyYXkgYWxsb2NhdGVkDQo+
IGVhcmxpZXIgaXMgbm90IGZyZWVkLCBjYXVzaW5nIGEgbWVtb3J5IGxlYWsuIEZyZWUgaXQgYW5k
IHNldCB0byBOVUxMDQo+IGJlZm9yZSBmYWxsaW5nIHRocm91Z2ggdG8gdGhlIE1TSSBmYWxsYmFj
ayBwYXRoLg0KPiANCj4gRm91bmQgYnkgY29kZSBpbnNwZWN0aW9uLg0KPiANCkl0IHNvdW5kcyBh
cyBzZXJpb3VzIGJ1Zywgc2hvdWxkbid0IGl0IGJlIGZvciBuZXQgPw0KVGhlbiBpdCBuZWVkcyBw
cm9wZXIgRml4ZXMgdGFnIGFuZCBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTaWduZWQt
b2ZmLWJ5OiBBc2h3aW4gR3VuZGFyYXB1IDxsaW51eHVzZXI1MDlAem9ob21haWwuaW4+DQo+IC0t
LQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIHwgMTAgKysr
KysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
bmV0ZGV2LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMN
Cj4gaW5kZXggN2NlMGNjOGFiOGY0Li4xNTI2MDY5ZDdmYzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0KPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMNCj4gQEAgLTIwNjUsMTAgKzIwNjUsMTIg
QEAgdm9pZCBlMTAwMGVfc2V0X2ludGVycnVwdF9jYXBhYmlsaXR5KHN0cnVjdA0KPiBlMTAwMF9h
ZGFwdGVyICphZGFwdGVyKQ0KPiAgCQkJCQkJCSAgICBhLT5udW1fdmVjdG9ycyk7DQo+ICAJCQkJ
aWYgKGVyciA+IDApDQo+ICAJCQkJCXJldHVybjsNCj4gLQkJCX0NCj4gLQkJCS8qIE1TSS1YIGZh
aWxlZCwgc28gZmFsbCB0aHJvdWdoIGFuZCB0cnkgTVNJICovDQo+IC0JCQllX2VycigiRmFpbGVk
IHRvIGluaXRpYWxpemUgTVNJLVggaW50ZXJydXB0cy4NCj4gRmFsbGluZyBiYWNrIHRvIE1TSSBp
bnRlcnJ1cHRzLlxuIik7DQo+IC0JCQllMTAwMGVfcmVzZXRfaW50ZXJydXB0X2NhcGFiaWxpdHko
YWRhcHRlcik7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICB9DQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAvKiBNU0ktWCBmYWlsZWQsIHNvIGZhbGwgdGhyb3VnaCBhbmQgdHJ5IE1TSQ0K
PiAqLw0KPiArICAgICAgICAgICAgICAgICAgICAgICAgZV9lcnIoIkZhaWxlZCB0byBpbml0aWFs
aXplIE1TSS1YIGludGVycnVwdHMuDQo+IEZhbGxpbmcgYmFjayB0byBNU0kgaW50ZXJydXB0cy5c
biIpOw0KPiArICAgICAgICAgICAgICAgICAgICAgICAga2ZyZWUoYWRhcHRlci0+bXNpeF9lbnRy
aWVzKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIGFkYXB0ZXItPm1zaXhfZW50cmllcyA9
IE5VTEw7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICBlMTAwMGVfcmVzZXRfaW50ZXJydXB0
X2NhcGFiaWxpdHkoYWRhcHRlcik7DQpQbGVhc2UgdXNlIHRhYnMgaW5zdGVhZCBvZiBzcGFjZXMu
DQoNCg0KPiAgCQl9DQo+ICAJCWFkYXB0ZXItPmludF9tb2RlID0gRTEwMDBFX0lOVF9NT0RFX01T
STsNCj4gIAkJZmFsbHRocm91Z2g7DQo+IC0tDQo+IDIuNDMuMA0KPiANCg0K
