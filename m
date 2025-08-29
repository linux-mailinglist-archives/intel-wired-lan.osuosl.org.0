Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24229B3B2D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 08:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FE3A61483;
	Fri, 29 Aug 2025 06:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IYbNkWYiXAYa; Fri, 29 Aug 2025 06:02:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA27F61484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756447331;
	bh=bDPheWMT1FyMWJDkoRiGKpkJPhE1sp/hyIfuJ4+q6IU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LmhHREQSiQWSrJln359eQtbfJ1M01GAReWZNrcQ3G6YOjBBZNcX/n0baNi5o9qvLt
	 vRfKkOvNMV+2JuNqjo/QJ82RI9blarx6QmaeV/B/dyvAG5kuXATMFICXj6MQ9dnIjl
	 WSZRiMjKYO8LY3LL1Vy7vVq7SwXWLyevxdf2fQLTT59kKQjcDbAqivhfc76eU74Bmk
	 SdkaDMuEke5h047A6q0/PM9yTxzwt6xuakq6xRbUc1/H+sTJomVL2w3cqcrdr15OIr
	 l5AaQEPspcdmB8xNAQGtCXdpLxfC88mmnDDVQN0ckSQuVvc6UqxZ999hXjKX4qmohU
	 3nooyb7Evz5wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA27F61484;
	Fri, 29 Aug 2025 06:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E670DD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD13A61481
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:02:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1h1fiFWDPblk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 06:02:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E9E506147B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9E506147B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E9E506147B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:02:08 +0000 (UTC)
X-CSE-ConnectionGUID: YoIX1GYhTsus2m9omR/rzw==
X-CSE-MsgGUID: yKgGSGkURoueYVyTPIueSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="69438561"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="69438561"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 23:02:09 -0700
X-CSE-ConnectionGUID: 3ZQhBQBZSX+uLNnjuEgECw==
X-CSE-MsgGUID: YwiEdYq4RqOu6wcXiVp5HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="169829721"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 23:02:08 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 23:02:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 23:02:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 23:02:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=heRjay4HMHeAJKK8iDR4RfxgGaoCMu7JSLG6koIL2VwthgB3Aqe/3d6eaQXpfkzRwBomgs+0H/QwkKgvWhud4aYxW1sP2WNbzSTj3gBLu4KiMJ5PoYOemuuCpuP6Sf52kqYP85ovmLtsPyGtDTs8GrjdMsSgIBUw8N0d++D+zkoZb0UKGUvN82FAD+mWXXWwRWIc1yHOElG3J1R0M9UaWgWZyp39U/xkRsZMaUhSdhlV3s/gclwmTilFgCbaf5tkzwMfgKp8pPxDnx+T9iNYSVHEavsRVA6pKxUgTvKbCPHBRuebR/XSaj9hcY+01+iTgI+RJzj7O0miZ+kDMJ/G2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bDPheWMT1FyMWJDkoRiGKpkJPhE1sp/hyIfuJ4+q6IU=;
 b=O+V35MW2V9oHk4f9K2u0duO2u/s4IJxL9Hv+rro5DF70AI2peao1q684Px7S4VfAxGbSamFZw9V776pbYI64oVqFsHpxpR3gOyrMlKNvxifDUXK4F0fNlAIV/KJduchb3VEMaXE2y15SSLIcZR3Vjg+SBOnUFLi8BVc/OPNIpFjqJBG2atoNfJQwsuVQDpIwR+0Sj4p0H4f1xjbfcWbe483jaURuwmXucfgl7XAC23Ss25Bn7DjoJj9039IVh3Q8AfpfAOCiKnNc4pQRCfUZ8g6JyeyE17DDGg3FFBFInuLFFjC7iVbJmVkPIKWdL1c5FVsM5pUnNy2ilnVTLOoHOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA2PR11MB4794.namprd11.prod.outlook.com (2603:10b6:806:f9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.13; Fri, 29 Aug
 2025 06:01:59 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 06:01:59 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
Thread-Index: AQHcB8G7vxeUCQI/Kkeby4IeURwCv7R5RGMg
Date: Fri, 29 Aug 2025 06:01:59 +0000
Message-ID: <IA1PR11MB62414B1EEB48F934788A3A6E8B3AA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA2PR11MB4794:EE_
x-ms-office365-filtering-correlation-id: db45673f-d6c1-4a07-49dd-08dde6c19161
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bkcwdnlTa1ErREwvanZhWElqR1hhOVNaY3Nuc2hQR0VwZkxmWW5xZ2laN3N6?=
 =?utf-8?B?TDVOMkJuQ2swR0FPYW1uOTV2N0FEbUc0LzdtS0UwMS92ODJ1K21uWllwSXhZ?=
 =?utf-8?B?OFlpbkphRVlOYUZUV0wvM0xjYkY0T0NBcXdYcFpBNms0M0E0WW1wRG9BL3hE?=
 =?utf-8?B?VHBxYjlLTDAwVHFmRmllY3RhNE1NMzFUdnBaQzRLZ3pxcG9VQWVYUGx0eWhh?=
 =?utf-8?B?dE5oUE5HWjlIY1ZHRCtUbm9vTnpPT0dodzVUU1dGd2ZURXkxb0tjc05oZk9x?=
 =?utf-8?B?NXBEYkJQUHNtNmZiNE1mb0FHaDV3aEw3blNGbndkandTamhXY3V1U3ViMGZm?=
 =?utf-8?B?RnUzYnRQQ05ZVjRTajBFVXRzaWhFS1V3Q2txdHRuWnNOUUlMK3pMYnptbWJq?=
 =?utf-8?B?aE8vVmtETzZ2cHBmeldFd2RDcjhsZ3ZqYjBtZEVzTHRuZG1Pakdpby9QbTRK?=
 =?utf-8?B?cXJPUTVNWkV3VVlxcG03Z1N5ZXZFZTE3VnE0YlB6UkRsSTVOQWNkYlM2QUNN?=
 =?utf-8?B?L3RmVmM0VUtMNGo1TWF4bEtHZ3hiTDI0ajZtNm5qYnNtc1lFUmR3dEdkektj?=
 =?utf-8?B?QkU1b3p0eGZkalhZZjlJa0R0YmpuaG9pOXRzdnEyTDZ2ZjEwSHBWelozQ2c0?=
 =?utf-8?B?MjEwc1VjMHpQMGxtNlkwSUdKbjUyMmRuRVdINXZhaGRMSjNDWEpjMDlxdHU5?=
 =?utf-8?B?NGszZlhjZlAwTFhTSHEvNjVmOVRYUDhmVi9nRlcreUJPYUszVlFKL3JIUkM3?=
 =?utf-8?B?SWwvMTBJdjhheUorUjM5WkxpcUtTVHpFNmlIeWtLbjBUOVJtSGhRUHRaeldM?=
 =?utf-8?B?Zkh0R0lxZWlqdVBOUytzcUFFVVk4dGVkcTI3ZzYzQXgzRmxXcTBIMkQrWmkx?=
 =?utf-8?B?cEtNaGYzNlBqZ05UUFllUFBQT3RMQmlXeTdKMHlhMFp5dE9uYXphalBKWHVJ?=
 =?utf-8?B?NmpYTXFkcG1pTEFmWGV0bDkrR1NvMS95NnozMUtBRnZFMUpvUS9jRmNlTlhp?=
 =?utf-8?B?bjdxTVN2YzlkVFBDK3JnWDhwT0VBejdIVXFHUjhsOFBUWkFLOHdqamZNN1pY?=
 =?utf-8?B?RnhRKzU0VnVhbXpjQXJ4Z2c2bzE3NU80SEtsa2dSLzBiODhHaEd5WUNUVUtJ?=
 =?utf-8?B?WmxPblg4emZKdlIrc0ZWWGk0QnpsNS9pUmM3SzRxRFpid3RFckd5c1NTS0Fh?=
 =?utf-8?B?Mm5QVFI3UXN4dU4rRVZMMjJhZXRQU3V5ZGdzekJRRGN3TlBsZGJIYm5wTGZS?=
 =?utf-8?B?T2dFdUl3YWcveGZGdVFXVDlKa3FXR2gwK0JxNEpnNDYvN3dyRGF5Y3dyVXhY?=
 =?utf-8?B?QmZWL0NKSXM2OTlINHN3R3k0NEcwTDc4TzAxL2N5OEoxanZFS00rMUszSlkw?=
 =?utf-8?B?bjVmYTFSTjA1MnJ2MVIvaXM3L0kwQ3hKNmJrYzFrK2NVVGg3SnVVOGJ0eGFk?=
 =?utf-8?B?VzVXRFhSaUN5YS94NVJzUkJmMmlodHM0dmY4Q2xNT21RS21lTExZMSt5dVdn?=
 =?utf-8?B?L0JUOGJablA2bFJ1Y2JIQWRGV0Q0L0t1MVdNdXpBU0VBM0dSK1hjbExpdmRj?=
 =?utf-8?B?eGlSWCsyMXlYS2NlUzNaYjZ2NzlyS1Y2VXo0NklYbkpZbWZJa21kWHQyT2xN?=
 =?utf-8?B?aHhvandnbi8ralhJcGxtWEdyUmd6UUF6NTZEOS9WYW5JMDQ2VkMwbVUwR2E1?=
 =?utf-8?B?MEVucHM0c3hOQW5HSU9sNU5BYzBXNklxcFdUOHFoSTBSWnNxNlhwaTJCdC9B?=
 =?utf-8?B?em5aTWMzemtyZW1nNjNXYTBBbU8zRXZLTUZqV0F2djJOWEdPV1QvM2JRY3NQ?=
 =?utf-8?B?T2Nvc3RwZEVCcFlQY1ZMbDRYQSs0SFZvZS9Ec0RvY25Sek9PTHFVb0k5ekVr?=
 =?utf-8?B?ZSsvbWtmT0REcWJ1Y3U2SDFORnBzSEt1dWtzVXgxdVMzUFRFVWhoUVZySXdF?=
 =?utf-8?B?VzNXUVlLRGxIRFJDbm5CM0ZXdVFLeDNPbEprUm51dmFicjg2bXVDSXFubHdN?=
 =?utf-8?Q?bCU/XHzcWaJ4W+wanp8CmgTvyK1UTM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUZjUlZ2aGQ5aVJ4VjVCeEMvZkxiamI5S2QxdXdtdVZBTTVWUWdPck9EWU9n?=
 =?utf-8?B?bUZPaVlzb1p6VFNlZ1NZcjRTVGo1MFRaYjJzWDdva1VRVTBPekFJOFZhbWxT?=
 =?utf-8?B?bzJ5Y2pCdlZmTVlidnRVeDVuQzlMYk9pcXpSenMxYXNzVWVGU0xLZFBTdnNY?=
 =?utf-8?B?TForRXZVMUhKMXRxazRPTUZzTzd3cXJDdXNUK0lwZnd6MjZ5OUxPSjc3NUpF?=
 =?utf-8?B?MmhYQ0syL0FrRXRwV0thNnhaeDUzeXc1V2pPWjEzWlpCSWJlbzVnWGg1RzRC?=
 =?utf-8?B?clFCMS90ZC93bUVoUmlTWjlrb1RQWVRmN2ZCV29sUFlGTXQ5YzA2VmZLRzNE?=
 =?utf-8?B?dllBbHEzTU9JeW5vWHBXNG9QbWRvcU0rSWlPSmpKUXR4SmtNWmhQcE5wYlVU?=
 =?utf-8?B?aW02aXNTeEVaVXMwOCsxY0JyTmpFdTA3WGZhUGMyeTdPOVdxYjRSb0IyNDBo?=
 =?utf-8?B?d1g5dWJwSmp4aHlQbDBQL0FSaVdYMHZiTFlFL0YzQlBmM29WZjVudTk2NWhi?=
 =?utf-8?B?czlIS2ZSYnVHSXoxd3VySW5xcXJ5VDNiUTlVTzdYaG1oZGJpbGk1cHJadlN3?=
 =?utf-8?B?VmNiZUxpUER4Zjd1ek50c1Fuc2lhbUp5Y3QyajF4VE43UFN4WDB5RWV3UytR?=
 =?utf-8?B?WDFmRHNkWEh4R1lBVHlUeHIxaFR2NW9hWEdEdEczY0ZjdVBaRGwvVi9uYnJZ?=
 =?utf-8?B?TE44eFlFWWtQS01Zdk1sS01lSlRTdFRXMXMyUHZhNDg5bGJqejFRQkNxaU5t?=
 =?utf-8?B?bXZ0cHFQYXZIcWNtaEJhMUJ3S2EyYllGR2F2Q004ZGtoaDA4OE00TEZzWThO?=
 =?utf-8?B?eFVRTTE4RG5yR2ZFaVEzWUhwTFRnS1dJV3JRUzRHL1A3elgzUS9RYnU5L2xT?=
 =?utf-8?B?R2UzTFNvVUdsTXdqTVZNb2ZtUHlGSk91YVVGQVI3OFZWT0JpczA5aGxST2Fi?=
 =?utf-8?B?eisrSFJvQU1mcTl0T2NYanQzMXdIUGlOZXQyTUFHQXVYUWlyZVNOc05mY2Jk?=
 =?utf-8?B?a2FnVFpCSStadXg4RldiRnVBb1VzNUhKNmtjNVFzbWR6QUY2b2s3SmRsYmdq?=
 =?utf-8?B?L0taeFR1V204c2JSRm9OL1lhVEVMdVRxbmVnYm1HcERMQ2h6cXoyTm0rMlMz?=
 =?utf-8?B?VDM4bjRNdDBvWXZSSjh6TUsreU5hdFYwUTNCWXZhU3dzd01zV04xUWlTWVJR?=
 =?utf-8?B?a1YxWTUvcEM3dFpaQ2lEYUR1eDhVU3FWU1l1aEw5Y0RTbU1nTjFDZ3gzUkJS?=
 =?utf-8?B?aTREeEpUOHRXQ3NLWUQzSEUvTnRmTG1zZ3owTFlvZUxqa0szbGE0QmlFdTVV?=
 =?utf-8?B?Q2pEOXVnMzFYRXc4M3U5bkJCT3hFVk5TSjI5UXlWczdCTjVlV0JJN2xzNjJR?=
 =?utf-8?B?QkhWbDA2TkUyTzg1L3FXTVBxN01Oczc5U01tYVZGSGZFWWtrK09BOS9DQ2xC?=
 =?utf-8?B?ZTJ6NWRueUU1VDlHWU9ydFRPSEFLTE84S2h6QXpwZHBpZ1Z6dlRHNjY2VHU0?=
 =?utf-8?B?VFAwSFpzNGluTEZwWXQ3cTl4VW5HSk5aQjdjU3JxKzA4ZTh2eEU0T2tQbW1y?=
 =?utf-8?B?RWU2WjA1eVUzNUUwZTNySVVBc05nSyszejZReTc0M1RrRzUrYkhkQ1NhQTht?=
 =?utf-8?B?QlJZOVIvQjVGOXFTSW1HZFdnd1g0REdVM2ZKMzF6WFlZZEU5aDMyalAxMGpL?=
 =?utf-8?B?RllUeW5lY2lRSHZuTGJKV0xrM1ZoWCt4eVNzNmFzd1U0WEZMZ2RNQXpUSURx?=
 =?utf-8?B?cHduQ3U3c3ZDeURiWUhWMWl5NWxCZDhWUWV3bDRKSmx3S1NIWGhNU3ZGbjVi?=
 =?utf-8?B?dy9DV3dtby93dWRUY0NkMnE4NEtBRjFGdTVoU1d5T2YyMjFmN09hVXpJaWhV?=
 =?utf-8?B?SjdnN0ZabWw2bTY0c21OYW1KTytGMUdxYWhFQ09RVXpzalJSOHEvMnFEbkw3?=
 =?utf-8?B?cFpwRElVY2lQd0F6RXE2R3pscFJ3YW1NdjdjUVh1Q1lxcmJOMVFFU0N4NXQ3?=
 =?utf-8?B?ZE9vemtjQ2J2UDhITXRDWE9uVTJJNytjUVpYNW0wWjR4UTNHejB6THBzVUhT?=
 =?utf-8?B?a3VQUGdJN0R2blZBK2VVRkYxeE1WdXlMcGoraDcrWXRSRm9YaERJeXFVYXBu?=
 =?utf-8?Q?hcpkncTGKjSl1EZ3xJ77CnsHe?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db45673f-d6c1-4a07-49dd-08dde6c19161
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 06:01:59.8364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zjGwM9PheBcNA1sRq3g9q6E38CAjD5wMYap25g9HcH+LM7SmzAtMneheBQq0oPaK7rY/6hoMvJBfxpyRN9UE9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756447329; x=1787983329;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bDPheWMT1FyMWJDkoRiGKpkJPhE1sp/hyIfuJ4+q6IU=;
 b=hWEPxuT4VJcryT3enptYarwpBhQpT/CvwjQQ82Ol43Sx+HQlEJxtWvBi
 vPmVQXf2SVPyFqGQZydU8YEpX6XSvtnPX8YT73fJ/7MB4GAAB0xTxhBtn
 IufGvwW4GHRKu2LLxLeIwuGK03r2ABvQExAIEvY1/FlKgFDNe3WgbN617
 9x+rvhUyqI9Z8H16vNmN88qMOkk1P9eRK0AQXDLYG80gsq9z+oCjfKrU3
 cCaRGrnEpq+hLPchLkplfpuEfyVD1J/cCG1iMPFcjgN8DnPTqBFqhKyDw
 FRSvg2oXo/RrcECPqRsdV2oethJtI0zf9mroTFYc8Dp9Y1XepLNUQIqlM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hWEPxuT4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDcgQXVndXN0IDIwMjUgMjM6MDUNCj4gVG86IEtpdHN6ZWwsIFByemVteXNs
YXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBMQU4gPGludGVs
LXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBD
YzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IDEvMl0gaWNlOiBmaXggTlVMTCBhY2Nl
c3Mgb2YgdHgtPmluX3VzZSBpbiBpY2VfcHRwX3RzX2lycQ0KPg0KPiBUaGUgRTgxMCBkZXZpY2Ug
aGFzIHN1cHBvcnQgZm9yIGEgImxvdyBsYXRlbmN5IiBmaXJtd2FyZSBpbnRlcmZhY2UgdG8gYWNj
ZXNzIGFuZCByZWFkIHRoZSBUeCB0aW1lc3RhbXBzLiBUaGlzIGludGVyZmFjZSBkb2VzIG5vdCB1
c2UgdGhlIHN0YW5kYXJkIFR4IHRpbWVzdGFtcCBsb2dpYywgZHVlIHRvIHRoZSBsYXRlbmN5IG92
ZXJoZWFkIG9mIHByb3h5aW5nIHNpZGViYW5kIGNvbW1hbmQgcmVxdWVzdHMgb3ZlciB0aGUgZmly
bXdhcmUgQWRtaW5RLg0KPg0KPiBUaGUgbG9naWMgc3RpbGwgbWFrZXMgdXNlIG9mIHRoZSBUeCB0
aW1lc3RhbXAgdHJhY2tpbmcgc3RydWN0dXJlLCBpY2VfcHRwX3R4LCBhcyBpdCB1c2VzIHRoZSBz
YW1lICJyZWFkeSIgYml0bWFwIHRvIHRyYWNrIHdoaWNoIFR4IHRpbWVzdGFtcHMuDQo+DQo+IFVu
Zm9ydHVuYXRlbHksIHRoZSBpY2VfcHRwX3RzX2lycSgpIGZ1bmN0aW9uIGRvZXMgbm90IGNoZWNr
IGlmIHRoZSB0cmFja2VyIGlzIGluaXRpYWxpemVkIGJlZm9yZSBpdHMgZmlyc3QgYWNjZXNzLiBU
aGlzIHJlc3VsdHMgaW4gTlVMTCBkZXJlZmVyZW5jZSBvciB1c2UtYWZ0ZXItZnJlZSBidWdzIHNp
bWlsYXIgdG8gdGhlIGZvbGxvd2luZzoNCj4NCj4gWzI0NTk3Ny4yNzg3NTZdIEJVRzoga2VybmVs
IE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczogMDAwMDAwMDAwMDAwMDAwMCBbMjQ1
OTc3LjI3ODc3NF0gUklQOiAwMDEwOl9maW5kX2ZpcnN0X2JpdCsweDE5LzB4NDAgWzI0NTk3Ny4y
Nzg3OTZdIENhbGwgVHJhY2U6DQpbMjQ1OTc3LjI3ODgwOV0gID8gaWNlX21pc2NfaW50cisweDM2
NC8weDM4MCBbaWNlXQ0KPg0KPiBUaGlzIGNhbiBvY2N1ciBpZiBhIFR4IHRpbWVzdGFtcCBpbnRl
cnJ1cHQgcmFjZXMgd2l0aCB0aGUgZHJpdmVyIHJlc2V0IGxvZ2ljLg0KPg0KPiBGaXggdGhpcyBi
eSBvbmx5IGNoZWNraW5nIHRoZSBpbl91c2UgYml0bWFwIChhbmQgb3RoZXIgZmllbGRzKSBpZiB0
aGUgdHJhY2tlciBpcyBtYXJrZWQgYXMgaW5pdGlhbGl6ZWQuIFRoZSByZXNldCBmbG93IHdpbGwg
Y2xlYXIgdGhlIGluaXQgZmllbGQgdW5kZXIgbG9jayBiZWZvcmUgaXQgdGVhcnMgdGhlIHRyYWNr
ZXIgZG93biwgdGh1cyBwcmV2ZW50aW5nIGFueSB1c2UtYWZ0ZXItZnJlZSBvciBOVUxMIGFjY2Vz
cy4NCj4NCj4gRml4ZXM6IGY5NDcyYWFhYmQxZiAoImljZTogUHJvY2VzcyBUU1lOIElSUSBpbiBh
IHNlcGFyYXRlIGZ1bmN0aW9uIikNCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNv
Yi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3B0cC5jIHwgMTMgKysrKysrKystLS0tLQ0KPiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8
c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
