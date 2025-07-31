Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4D4B17008
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 13:02:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36EF8845BC;
	Thu, 31 Jul 2025 11:02:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHS3Dg8c79X2; Thu, 31 Jul 2025 11:02:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4677C84523
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753959728;
	bh=4dDA2otzVdDV/PvIJW6Ya81idCTYgeh6NW+7uCTLjRM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Jpo/jtL5hT+1kLBCy5HmRY7AGZjW0Dn6vIOz6A90u5Avcy2SbU9WMsLAUfpLmk3Y
	 4GwH2fDBYfH4chcgmSMW/uXiAOj98I83z//TpABkEFdj3F+ZpenhM10YkzL8ipSgYy
	 AjAd4iqg1r9+xS+ddBijqDY80RM2JmmPeldJ7u5xb4uiZubk+JGAVNDzeZ+7xbEn/5
	 W+Bt30GFZlWaa3UmgqM69DdVAcmUEG7eBilMSJ0EzBfp9EN1L6kzZUn2jr/g/7+uAT
	 PG9DD8QPkml0qcSxKLH63ZyULmawE93zA34Te9iDQPkqzv1fsqieUSIWXg5VqBz9CA
	 nqArXwzg6Mieg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4677C84523;
	Thu, 31 Jul 2025 11:02:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 43EA113D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3429984526
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IfkyZWBpUPAA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 11:02:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 34A7984525
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34A7984525
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34A7984525
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:02:05 +0000 (UTC)
X-CSE-ConnectionGUID: nuFGhsFXRS+P1KmeHNOBEQ==
X-CSE-MsgGUID: QBPSAk9gS/Oug+z+JG/OqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="43884686"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="43884686"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:02:03 -0700
X-CSE-ConnectionGUID: qUdQAgxRTPmlqidETGocKA==
X-CSE-MsgGUID: jwiHpmwVSVaowxg7qD8dkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="162943735"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:02:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 04:02:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 04:02:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 04:01:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=js25Mlpb/B16WLjqQDod4BVAsgYAVj6ZG6iG9bXaIsfG+WcvB+Run7gT/YwRKU6d8aN7W8c3Zc0/KZ5X5bsgyaGGPXlQwQepcaTSBWYE4+38lz9Z9yLcMhm1JWh8IXPzE+iUQUr/56c/Hi6DaJrtDGCDCNiaAvWJNmXcVdut+jNjAxH6Y9SdgEYwt/QZS4tFMb23/tiMuRfQsr4fYdNCjbKC5yAhmcaIUtsMIMGmdOOPEQ/duCwcRBKOCCLgcAfVcnOnabyVC9rdoNiiu4xltJvBMuN86oe/3PMHXbKqEFpSb10SXDwFK23lB/aIINYt2+2XXsu33tj0RrDJHuTLXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4dDA2otzVdDV/PvIJW6Ya81idCTYgeh6NW+7uCTLjRM=;
 b=YFzZ5NSfg9V0k+15VW+MJgJNOlItKFfbBnAFWmFFYeMAsWQurdX25DeLeEJSIYbBgp73Pk/F58EHcWQpOP5HCzVBvdHGcXOCxEIgCeHrDLeBA8OQU+L4roYelJDp/CEim5n+1a5wNQFB7k5XxLLJSiiK2zd8MSx6NjkRD1QOOvM8pgh//0SMd3CsulEL6EJ0b8gyrZML+jtNNkMs1sH4SEtzJDkyHdRe4CYn126I4O7//4DLViG4XaVMjqBeygFkRcetduoBTm9UwFmtUpMDehpmRZGbtzK8VT9gnY10YT5mVwsEcpg+EMmoYvq0M/jCshwPZcYUwT2SyoGcuug3Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SN7PR11MB8025.namprd11.prod.outlook.com (2603:10b6:806:2dc::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Thu, 31 Jul
 2025 11:01:33 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%5]) with mapi id 15.20.8989.011; Thu, 31 Jul 2025
 11:01:33 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>, Frederick Lawler
 <fred@cloudflare.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, AndrewLunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "kernel-team@cloudflare.com"
 <kernel-team@cloudflare.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] ice: General protection fault in
 ptp_clock_index
Thread-Index: AQHb/9tmL/f/7GmFSEiI0agCd7QVfLRMEzkA
Date: Thu, 31 Jul 2025 11:01:33 +0000
Message-ID: <IA1PR11MB6219645389921FD751CA0C8B9227A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <aIKWoZzEPoa1omlw@CMGLRV3>
 <8743bbc9-8299-495c-8aef-842197bd8714@cloudflare.com>
In-Reply-To: <8743bbc9-8299-495c-8aef-842197bd8714@cloudflare.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SN7PR11MB8025:EE_
x-ms-office365-filtering-correlation-id: 0d21ce65-7dd0-4856-0d45-08ddd0219c81
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bTlPNnBYQ05SOS95SHZ5Z2pKOHlOY1BjT1VLOFBlYW9rbXlJNmNmOHozSFRD?=
 =?utf-8?B?Ym56UGwzNnc3ZGxnSTNBemNZT3Q5QmtheHJRUm5CN1Rlbm1YWHlLT1E2ZllQ?=
 =?utf-8?B?SlBCS3FxRTcwRkhXVklZNGJJeDR1OHkxR3F2anp6QlZVWXVWWjhiNWpUd2Rh?=
 =?utf-8?B?eTdKZjUvajRnSWZhajliSm5YREZ6TkE2dkJTeXNTbEpJWVljRW9yN0FoT29j?=
 =?utf-8?B?YVRLMy9YVUpXczhXTHF1Wm4wM2RGQllGRU5jUnhHVHpEZzdjcWUvSG00R3N5?=
 =?utf-8?B?MlBkYUp0bktwaHYwSGp3a0NYK1VVbGNSRllmMG0rRWlXNk1PWWtHTTdtMWxN?=
 =?utf-8?B?WkNQY3RJSmRSQUxDQ1BRSk51bVVvS1VJSFBRZnZIOEVQOGk1dGMrZzlHQVBK?=
 =?utf-8?B?SXFPekJVMzY1SzFTSzF5dnkrL3hoTDQ4Z3V1Q1VCc3NZRlFCc1h1KzdOWU9r?=
 =?utf-8?B?QjQxMUFxellnTXRqQm93R2xTNHZmUDEzSXVQSWZIYTFMSHVNd3c0ajU2cWFz?=
 =?utf-8?B?WWVkYlNTeDVJQ2YvbXp6SW9KWHdPbThQMXZjdDRxcjdSeXpyUWRwemFEVDFE?=
 =?utf-8?B?bFE4WUxHQ1BhZjNLVzNnYW8vNFhGT0R2OTY4aFNyeS9OOGdLQ0hoWDZZZ0pW?=
 =?utf-8?B?aXFUT3RjeXZ6ZSsyYjlSejd4OVhYRFJoalIrWVc3clhKdG42bWI0OGR6ckhR?=
 =?utf-8?B?ejFsSTRieU4waVdreEtBRTJPUkZMblpXdE9URnhxUWo4clI1Q0RVeEtmK3l6?=
 =?utf-8?B?UmNhbW5YdThOc2VYNXVWLyt6NVZpa1YvQ1pKT0RCY2VUTkFFb3ozWStEbWEv?=
 =?utf-8?B?OGNOSzhLNzdPOUVIdmgvdUR5UG1NamdaaTFCeGpLOVlVQzlEWnAzTjAzRWVv?=
 =?utf-8?B?a1BYbVdGNGZkRGgrL1U0WWY1RHA5b3FUS1N6dTJuN2E0QlFyU1g2Q2I1all5?=
 =?utf-8?B?V1pCMzZ5Z0xlVUpKNzVyZzRwM25BRkZWbGlLanBmNVYrS2JGM3NJS2tSZ3l3?=
 =?utf-8?B?Y2k0THhCaVNQSGorbSt2ZVAyaExvVnZWYlltWERiSSsxZlR1UVNRbGt1WE1n?=
 =?utf-8?B?aWd5YVM0WnZuV2VuZ05JeGVtelp3emZMUFdDcERIYjVzRFIyK0tUY2YwQWJL?=
 =?utf-8?B?UUJ3R3d2YmVPczg4UC9QWnNYYm1USEwxYkZINTNOVmQ1VVJaWDFkZFdpTXEv?=
 =?utf-8?B?MUptQjIrOFlIdnZESlZzdmVabHMrd0RsTE9rQTFob3dlQk5sSnhDZThQZVVl?=
 =?utf-8?B?aUtkK1hNMC8xOFN4akFVa0QzUFI3UUFqYTVrYVE5U05lWjR5dU51Z2hJL2tE?=
 =?utf-8?B?Rk5majBvTDdlbEdnK2RRMXdNV29KT1psNERDV2gxcnp4YWtsSkpRZmhGM29E?=
 =?utf-8?B?LytNS3Z6K3I4dmpEQTg3bXVBbTR5SmxxNnhTRHY0dm1CaWNkMkgxV0dOam82?=
 =?utf-8?B?eGxVcXZPcy9Sak9Gc1dvTGVXaFltUW55S2NjSnlLN0Q5WlBlWjFJa3A0ZmZZ?=
 =?utf-8?B?N0tLb0tNUXZxYVFCbnNYR1k0VzgvZ21adElhUldLM3V5eC9EcElwcm1BWEN2?=
 =?utf-8?B?a0ljWUhEN0EvYzJZU1NNZ2JRVEZKcjJueFdEZThtd25vZjFZRkpNa3plM0dp?=
 =?utf-8?B?TVpEWEI5QjJzV0NWaG1ZSHFydmlPVmxlai9vZWRFL2lBT3U3K1JsWVUySWVm?=
 =?utf-8?B?Q0drOE9NZ0ZhUDZ6K1hNbXBnV0RXNFFkTWFXRkVnMzJsS3EzaEFHaS9wVFVI?=
 =?utf-8?B?Wi9ZUlFUQ1ZQMDFXc3k1aVNtTmZVamJXRU4wR0VTYkVNWFY3amRWT084QU5l?=
 =?utf-8?B?UFJReXJBMjFPOFp6Yi9OTUlsdWl2bnd0OW1IR0ZYWmxKSXYwSjJIenYwNmE4?=
 =?utf-8?B?dmJUNkhXcmVQek1zc2VPckxnRGpCVmROZWFnRnptSFNGWnAwdFMzY2llUGU0?=
 =?utf-8?B?VkFSeWRWK2dFZEFmei9WVElLdFlLNjErcUY0QUVvVWoraFI3QzV5eElzL0sz?=
 =?utf-8?B?UGhQZDlnVjRnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzhhd2hBYW9qRUVYNFBCZy8yTmRKSkxzYUdUT3A0QjRWQ2VLd2wzRUdaZkx0?=
 =?utf-8?B?amNJYXFDQzdWMElyMWd5YUVLallEVEM1QnByTE52bHp1R1UzYm9nWFROa2d6?=
 =?utf-8?B?cnZ2QmJGaDVnc3ZoWW1YY3lsOEVrSk8rRjF3VnhVcHhJUHJ1TDVlNmVvSHZn?=
 =?utf-8?B?aHFENTVrdTJMOVRtYXJTUDV3T2xCVUhIeUY2ckJkS0lZUGFRQ09ZWXRzVzVB?=
 =?utf-8?B?ZTM0Mnl6MUVYN1hML0g1aDhRTWZEbyt6WkJvTDdVVXRzVnhvVkFQY0pBRFZq?=
 =?utf-8?B?aEVhV2xQdXhpWlRuRHg2NzE4UGFJcTNnTU1Mek1kZ2VqdGlnYVBnUDVENGJW?=
 =?utf-8?B?T3NkN2FRSjI5SFF0TzZZYThHYnIyY3ZIV1c0T0Z3a3V5ZEJWVzRFTmdOc2Jh?=
 =?utf-8?B?VlRiMDVBTk5yZDNuQ1pBSXplWDZNS1Z2K3YrYk1TY2czcElRMEVIZ3NJMll3?=
 =?utf-8?B?R1dBSHpCYWtUc1gwZFJMK051alBRaDlObW9YNGhqY3dEdUNmZHlWa2pPV0pr?=
 =?utf-8?B?bng0Qm5JMzNoRW9oenZWdmYwVlpmRDBWTC95V3JaYk9nMHRpS3JNZWllMWho?=
 =?utf-8?B?SHV1S08xMDJ1Q3BEMzhmZ3hsZ0EvOTd0bk5OMEJBZ2gvcVNpait3MUlIOFZp?=
 =?utf-8?B?NHdzTUFMS29PdW9KMzNIUXZCdFlpYkpSWHcxZFNraCtzZjhzcG1tYzV2ajI4?=
 =?utf-8?B?UjBjZUVkb21NaHBVZitKVkpzRmZvblVtTWZCRmNzY0FSd1lTY2JrWWVYa1Nr?=
 =?utf-8?B?QTRpRHcxcTZwS3V0Sno5eEh5bXRDOWxCdFo1WHJoMVRieTFsd3RNTTJRZGk1?=
 =?utf-8?B?MmJaUkRCOHNQQ3RPL1hZWE1zeTBRWjlRMzd3bTJKcjZUc0xSWTRpcU5kTWUr?=
 =?utf-8?B?QkU5STFFYUlweGVGNkNJcVNqWGMrMmtCVE1UK0NPMS9OeHVFMkR6d3IwSG1w?=
 =?utf-8?B?M1FKaER2NThEODNySjZDRHIrc2tIdkx6UWZMY09JaFRUVUlOSzBtMzVPRUhJ?=
 =?utf-8?B?aUhSREtoT3I2VStsUFpLUjE5NmdYTHdFVElPWFUrMG9xN0R2OFNjTWxMQUZR?=
 =?utf-8?B?Z0pKMnFncVhYV1B0eDVhVFR1UFhlR25EcHhIUDR3VlpmcHdjazI3aEt2cjh5?=
 =?utf-8?B?SUJTWFNMb0svZ01JZkFLWTluVFVOQkxLb0lwYzN5KzZVVzFjNTduSHUyVWZI?=
 =?utf-8?B?MUJxMTkzc2NLSTY4ZmtkaXpKZi92RmdxL1VYTG5qM2VlL3dRWmIrSW5rVmto?=
 =?utf-8?B?eGJPK1lCMWhSMkE4THkvUlNseXQ3ZHhzWEw3SGFzdjFNNlVydEZVbE1oYndj?=
 =?utf-8?B?YmFic21RT2d4V0JIOVIvZU9WYW5MdUQwNWFmUFR6NklFVVNXQ2tuVTROWCtJ?=
 =?utf-8?B?aElKVFVxQ04yUXVUb0R3NVVsMlVXdi96ejFJdTZ0d0FCTFZMK2xSVW5MY0Mv?=
 =?utf-8?B?aGIzMHJRTi9iQ3pqcDRTNEhPMzBIL2RtUXI3V05pMTZ6RW5BSG5MdzlXVDBR?=
 =?utf-8?B?QlhTRjhJNytZVUEveHNHTis5bWl0cG1WaGdzRGxBNEVIenpUb05aWWRXTFBJ?=
 =?utf-8?B?VHRJMlQwVXJJR2NHWVNkemllTFVBL0xKamJ6UzdTL2hNeG1xbjZhZm1pb1FV?=
 =?utf-8?B?V3o2MFpVNFk5b1lwSFY5eG5PdzFmWldDS2tDMStJY0ZCbWMzZWRWWWxYVjgr?=
 =?utf-8?B?M3BWamRKTTZrNUhYWGlkbzhvRGFiMnNGeFRIUW5rMzdrbkx1c1FJdlhSVnMv?=
 =?utf-8?B?OE9RSjQ0RnJhTGJ3cEw5T3k4T3loVjBJSmlHZFN5UVp2UG1QemZjM29waE0w?=
 =?utf-8?B?dXYzTjNzWHpiZDE4NmZnNHg3QXBJbzdPcGlRbXhEY0FrQjZXZjExUHN0YmNa?=
 =?utf-8?B?S096cE1lUVdBS0MzQ1ZkWnJjWXJJWEVRYUY1dVpmV3VnYktQTEtFUEpnM2c5?=
 =?utf-8?B?d1V5ZmlObjlaK2lQazNYWWdkNDRsQzljVFZ2d0RTWFA3b2RFY0krRFovcTB0?=
 =?utf-8?B?bXdjRCtxakEyd2lYUGY2dzhXckhMd1g4YktoalphQ1h3Wkg0cTlDWnV5Z2dN?=
 =?utf-8?B?WDNlR2xaMzQ4Vm02RkVLUVMzYmtNZXovZWl4VlRWM1lEMTlGRmI3UENsUVho?=
 =?utf-8?Q?oZzPx/GgXQtfihCoFej885tEV?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d21ce65-7dd0-4856-0d45-08ddd0219c81
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2025 11:01:33.4405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OmCW2YdQXQdOJ2a76+zoxvsPih81E4KN/yUwDrBS+8qDFrNq+SHKt2coKeP9Q5BtJF/VQjplCNMvZJ9dTAEkZvAcFJw9p+Q/ctZxvMBscJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8025
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753959726; x=1785495726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4dDA2otzVdDV/PvIJW6Ya81idCTYgeh6NW+7uCTLjRM=;
 b=JmkbFmZIXG8+2M3k/G2aN44KeZ/1GqNlyoUyZ8Wah+7i8YHgobld8lsF
 rOIHp6EC7UikAK5ljNPK7dahyjafMvpN43s/J74OnZHRNJzLt/qqW4rZ2
 cHGeAeGzfLGD2xOrW++4cc1X0jFm13zqZBLUWTh82sWVy8o0DmCxv2MHQ
 PWekqdMW/a9C0r5AEhCaUNG7WBbSGNQ6jkwmXObUZhGCt20F33AiwKHyh
 KF00rQbI4lQi69Ldk+yc78O5c7b2VFR3JZF5SrqPg85+y/5L5LWu816nQ
 kTU0u3K4ZxDNLKIXpmZAGVRpyCTJf/akNY5vXxDV7/m3MCsEnC0h8nkJg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JmkbFmZI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice: General protection fault in
 ptp_clock_index
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBKZXNzZSBC
cmFuZGVidXJnDQo+IFNlbnQ6IE1vbmRheSwgSnVseSAyOCwgMjAyNSA2OjE5IFBNDQo+IFRvOiBG
cmVkZXJpY2sgTGF3bGVyIDxmcmVkQGNsb3VkZmxhcmUuY29tPjsgTmd1eWVuLCBBbnRob255IEwN
Cj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8
cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEFuZHJld0x1bm4NCj4gPGFuZHJldytu
ZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVy
aWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJh
QGtlcm5lbC5vcmc+Ow0KPiBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBrZXJuZWwt
dGVhbUBjbG91ZGZsYXJlLmNvbTsgaW50ZWwtDQo+IHdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3Jn
DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBpY2U6IEdlbmVyYWwgcHJvdGVjdGlv
biBmYXVsdCBpbiBwdHBfY2xvY2tfaW5kZXgNCj4gDQo+ICtJV0wNCj4gDQo+IEhpIEludGVsIHRl
YW0sIGFueW9uZSBoYXZlIGFuIGlkZWEgb24gdGhpcz8gTG9va3MgbGlrZSBtYXliZSByZW1vdmFs
IG9mDQo+IGRldmljZSAwIHRoYXQgaGFkIG9yaWdpbmFsbHkgcmVnaXN0ZXJlZCBQVFAgY2xvY2sg
aXNuJ3QgaGFuZGxlZCB3ZWxsPw0KPiANCg0KSGkgQWxsLA0KDQpUaGFuayB5b3UgZm9yIHlvdXIg
bWVzc2FnZS4gV2UncmUgbG9va2luZyBpbnRvIHRoaXMuDQpZZXMsIGF0IGZpcnN0IHNpZ2h0IGl0
IHNlZW1zIHRvIGJlIGEgcmFjZSBjb25kaXRpb24gaGl0IHdoaWxlIHJlbW92aW5nIFBGIHdoaWNo
IGlzIFBUUA0Kb3duZXIgKGFuZCByZXNwb25zaWJsZSBmb3IgcmVtb3ZpbmcgUFRQIGNsb2NrKS4N
Cg0KS2luZCByZWdhcmRzDQoNCkdyemVnb3J6IA0KDQo+IE9uIDcvMjQvMjUgMToyNSBQTSwgRnJl
ZGVyaWNrIExhd2xlciB3cm90ZToNCj4gPiBIaSwNCj4gPg0KPiA+IE9uIExpbnV4IDYuMTIuMzks
IHdlIGFwcGVhciB0byBoaXQgYSByYWNlIHJlYWRpbmcgZXRodG9vbCB3aGlsZSB0aGUNCj4gPiBk
ZXZpY2UgaXMgcmVtb3ZlZC4NCj4gPg0KPiA+IFdlIGhhdmUgYXV0b21hdGlvbiB0byByZW1vdmUg
dW51c2VkIGludGVyZmFjZXMgZHVyaW5nIGVhcmx5IGJvb3QNCj4gPiBwcm9jZXNzLCBhbmQgd2hl
biBzeXN0ZW1kIGlzIHJlc3RhcnRpbmcgdGhlIG5ldHdvcmsgYWZ0ZXJ3YXJkcywgd2UNCj4gPiBn
ZXQgYSBwYWdlIGZhdWx0IGFuZCBnZXQgaW50byBhIGJvb3QtY3Jhc2gtbG9vcCBzdGF0ZS4gV2Un
cmUgY3VycmVudGx5DQo+ID4gcmVuYW1pbmcgdGhlIGludGVyZmFjZSB0byBzb21ldGhpbmcgbGlr
ZSB1bnVzZWQwIHRvIGNpcmN1bXZlbnQgdGhlDQo+ID4gaXNzdWUuDQo+ID4NCj4gPiBJIHdhcyBh
YmxlIHRvIHJlcHJvZHVjZSB3aXRoIHRoZSBmb2xsb3dpbmcgc25pcHBldDoNCj4gPg0KPiA+ICQg
d2F0Y2ggLW4wLjEgL3NiaW4vZXRodG9vbCAtVCBleHQwDQo+ID4gJCBlY2hvIC1uICIxIiB8IHN1
ZG8gdGVlIC9zeXMvY2xhc3MvbmV0L2V4dDAvZGV2aWNlL3JlbW92ZQ0KPiA+DQo+ID4gaWNlIDAw
MDA6NDE6MDAuMDogUmVtb3ZlZCBQVFAgY2xvY2sNCj4gPg0KPiA+IC4uLg0KPiA+DQo+ID4gT29w
czogZ2VuZXJhbCBwcm90ZWN0aW9uIGZhdWx0LCBwcm9iYWJseSBmb3Igbm9uLWNhbm9uaWNhbCBh
ZGRyZXNzDQo+IDB4YWUwOWUyYjNiMGM2NjVmMTogMDAwMCBbIzFdIFBSRUVNUFQgU01QIE5PUFRJ
DQo+ID4gVGFpbnRlZDogW09dPU9PVF9NT0RVTEUNCj4gPiBIYXJkd2FyZSBuYW1lOiBMZW5vdm8g
SFIzNTVNLVYzLUcxMi9IUjM1NU1fVjNfSFBNLCBCSU9TDQo+IEhSMzU1TV9WMy5HLjAzMSAwMi8x
Ny8yMDI1DQo+ID4gUklQOiAwMDEwOnB0cF9jbG9ja19pbmRleCAoZHJpdmVycy9wdHAvcHRwX2Ns
b2NrLmM6NDc2IChkaXNjcmltaW5hdG9yIDEpKQ0KPiA+IENvZGU6IDM4IDFiIDRlIDAwIDY2IDY2
IDJlIDBmIDFmIDg0IDAwIDAwIDAwIDAwIDAwIDY2IDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkwDQo+
IDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkwIGYzIDBmIDFlIGZhIDBmIDFmIDQ0IDAwIDAwIDw4
Yj4gODcgOTQgMDMgMDAgMDAgZTkgMDcgMWINCj4gNGUgMDAgNjYgNjYgMmUgMGYgMWYgODQgMDAg
MDAgMDAgMDAgMDANCj4gPiBBbGwgY29kZQ0KPiA+ID09PT09PT09DQo+ID4gICAgIDA6CTM4IDFi
ICAgICAgICAgICAgICAgIAljbXAgICAgJWJsLCglcmJ4KQ0KPiA+ICAgICAyOgk0ZSAwMCA2NiA2
NiAgICAgICAgICAJcmV4LldSWCBhZGQgJXIxMmIsMHg2NiglcnNpKQ0KPiA+ICAgICA2OgkyZSAw
ZiAxZiA4NCAwMCAwMCAwMCAJY3Mgbm9wbCAweDAoJXJheCwlcmF4LDEpDQo+ID4gICAgIGQ6CTAw
IDAwDQo+ID4gICAgIGY6CTY2IDkwICAgICAgICAgICAgICAgIAl4Y2hnICAgJWF4LCVheA0KPiA+
ICAgIDExOgk5MCAgICAgICAgICAgICAgICAgICAJbm9wDQo+ID4gICAgMTI6CTkwICAgICAgICAg
ICAgICAgICAgIAlub3ANCj4gPiAgICAxMzoJOTAgICAgICAgICAgICAgICAgICAgCW5vcA0KPiA+
ICAgIDE0Ogk5MCAgICAgICAgICAgICAgICAgICAJbm9wDQo+ID4gICAgMTU6CTkwICAgICAgICAg
ICAgICAgICAgIAlub3ANCj4gPiAgICAxNjoJOTAgICAgICAgICAgICAgICAgICAgCW5vcA0KPiA+
ICAgIDE3Ogk5MCAgICAgICAgICAgICAgICAgICAJbm9wDQo+ID4gICAgMTg6CTkwICAgICAgICAg
ICAgICAgICAgIAlub3ANCj4gPiAgICAxOToJOTAgICAgICAgICAgICAgICAgICAgCW5vcA0KPiA+
ICAgIDFhOgk5MCAgICAgICAgICAgICAgICAgICAJbm9wDQo+ID4gICAgMWI6CTkwICAgICAgICAg
ICAgICAgICAgIAlub3ANCj4gPiAgICAxYzoJOTAgICAgICAgICAgICAgICAgICAgCW5vcA0KPiA+
ICAgIDFkOgk5MCAgICAgICAgICAgICAgICAgICAJbm9wDQo+ID4gICAgMWU6CTkwICAgICAgICAg
ICAgICAgICAgIAlub3ANCj4gPiAgICAxZjoJOTAgICAgICAgICAgICAgICAgICAgCW5vcA0KPiA+
ICAgIDIwOgk5MCAgICAgICAgICAgICAgICAgICAJbm9wDQo+ID4gICAgMjE6CWYzIDBmIDFlIGZh
ICAgICAgICAgIAllbmRicjY0DQo+ID4gICAgMjU6CTBmIDFmIDQ0IDAwIDAwICAgICAgIAlub3Bs
ICAgMHgwKCVyYXgsJXJheCwxKQ0KPiA+ICAgIDJhOioJOGIgODcgOTQgMDMgMDAgMDAgICAgCW1v
diAgICAweDM5NCglcmRpKSwlZWF4CQk8LS0NCj4gdHJhcHBpbmcgaW5zdHJ1Y3Rpb24NCj4gPiAg
ICAzMDoJZTkgMDcgMWIgNGUgMDAgICAgICAgCWptcCAgICAweDRlMWIzYw0KPiA+ICAgIDM1Ogk2
NiA2NiAyZSAwZiAxZiA4NCAwMCAJZGF0YTE2IGNzIG5vcHcgMHgwKCVyYXgsJXJheCwxKQ0KPiA+
ICAgIDNjOgkwMCAwMCAwMCAwMA0KPiA+DQo+ID4gQ29kZSBzdGFydGluZyB3aXRoIHRoZSBmYXVs
dGluZyBpbnN0cnVjdGlvbg0KPiA+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0NCj4gPiAgICAgMDoJOGIgODcgOTQgMDMgMDAgMDAgICAgCW1vdiAgICAweDM5NCgl
cmRpKSwlZWF4DQo+ID4gICAgIDY6CWU5IDA3IDFiIDRlIDAwICAgICAgIAlqbXAgICAgMHg0ZTFi
MTINCj4gPiAgICAgYjoJNjYgNjYgMmUgMGYgMWYgODQgMDAgCWRhdGExNiBjcyBub3B3IDB4MCgl
cmF4LCVyYXgsMSkNCj4gPiAgICAxMjoJMDAgMDAgMDAgMDANCj4gPiBSU1A6IDAwMTg6ZmZmZmI1
NjY0ZjY1N2M4OCBFRkxBR1M6IDAwMDEwMjgyDQo+ID4gUkFYOiBmZmZmOWY0ODU0YzIwMWEwIFJC
WDogZmZmZmI1NjY0ZjY1N2QzNCBSQ1g6IGZmZmZmZmZmYzFjNmE1YzANCj4gPiBSRFg6IDU1NTQ4
NTYwN2FhYWRhNTUgUlNJOiBmZmZmYjU2NjRmNjU3ZDM0IFJESTogYWUwOWUyYjNiMGM2NjI1ZA0K
PiA+IFJCUDogZmZmZmI1NjY0ZjY1N2RmMCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiBmZmZm
OWYzMTI0YzU3MGE4DQo+ID4gUjEwOiBmZmZmYjU2NjRmNjU3Y2MwIFIxMTogMDAwMDAwMDAwMDAw
MDAwMSBSMTI6IGZmZmZmZmZmYWZhYjQ2ODANCj4gPiBSMTM6IDAwMDA3ZmZjODI4ZmRiYjAgUjE0
OiBmZmZmOWYzMTI0YzU3MDAwIFIxNTogZmZmZmI1NjY0ZjY1N2Q4MA0KPiA+IEZTOiAgMDAwMDdm
ZjVhYmJhMTM0MCgwMDAwKSBHUzpmZmZmOWY0MDJmNjAwMDAwKDAwMDApDQo+IGtubEdTOjAwMDAw
MDAwMDAwMDAwMDANCj4gPiBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAw
MDgwMDUwMDMzDQo+ID4gQ1IyOiAwMDAwN2ZmNWFjMDNmMGMwIENSMzogMDAwMDAwMGE4NzY4ZTAw
NiBDUjQ6IDAwMDAwMDAwMDA3NzBlZjANCj4gPiBQS1JVOiA1NTU1NTU1NA0KPiA+IENhbGwgVHJh
Y2U6DQo+ID4gPFRBU0s+DQo+ID4gaWNlX2dldF90c19pbmZvIChkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYzozNzc2DQo+IChkaXNjcmltaW5hdG9yIDEpKSBpY2UN
Cj4gPiBfX2V0aHRvb2xfZ2V0X3RzX2luZm8gKG5ldC9ldGh0b29sL2NvbW1vbi5jOjcxMykNCj4g
PiBfX2V0aHRvb2xfZ2V0X3RzX2luZm8gKG5ldC9ldGh0b29sL2NvbW1vbi5jOjcxMykNCj4gPiBk
ZXZfZXRodG9vbCAobmV0L2V0aHRvb2wvaW9jdGwuYzoyNjUxIG5ldC9ldGh0b29sL2lvY3RsLmM6
MzMxMg0KPiBuZXQvZXRodG9vbC9pb2N0bC5jOjMzOTApDQo+ID4gPyBzcnNvX2FsaWFzX3JldHVy
bl90aHVuayAoYXJjaC94ODYvbGliL3JldHBvbGluZS5TOjE4MikNCj4gPiA/IHRyYWNlX2NhbGxf
YnBmIChrZXJuZWwvdHJhY2UvYnBmX3RyYWNlLmM6MTUxIChkaXNjcmltaW5hdG9yIDM4KSkNCj4g
PiA/IHNlY3VyaXR5X2ZpbGVfaW9jdGwgKHNlY3VyaXR5L3NlY3VyaXR5LmM6MjkwOSkNCj4gPiA/
IHRyYWNlX2NhbGxfYnBmIChrZXJuZWwvdHJhY2UvYnBmX3RyYWNlLmM6MTUxIChkaXNjcmltaW5h
dG9yIDM4KSkNCj4gPiA/IF9feDY0X3N5c19pb2N0bCAoZnMvaW9jdGwuYzo4OTMpDQo+ID4gPyBr
cHJvYmVfZnRyYWNlX2hhbmRsZXIgKGFyY2gveDg2L2tlcm5lbC9rcHJvYmVzL2Z0cmFjZS5jOjQ1
DQo+IChkaXNjcmltaW5hdG9yIDEpKQ0KPiA+ID8gc3Jzb19hbGlhc19yZXR1cm5fdGh1bmsgKGFy
Y2gveDg2L2xpYi9yZXRwb2xpbmUuUzoxODIpDQo+ID4gZGV2X2lvY3RsIChuZXQvY29yZS9kZXZf
aW9jdGwuYzo3MjApDQo+ID4gc29ja19pb2N0bCAobmV0L3NvY2tldC5jOjEyNDIgbmV0L3NvY2tl
dC5jOjEzNDYpDQo+ID4gX194NjRfc3lzX2lvY3RsIChmcy9pb2N0bC5jOjUxIGZzL2lvY3RsLmM6
OTA3IGZzL2lvY3RsLmM6ODkzIGZzL2lvY3RsLmM6ODkzKQ0KPiA+IG9zbm9pc2VfYXJjaF91bnJl
Z2lzdGVyICg/Pzo/KQ0KPiA+IGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSAoYXJjaC94
ODYvZW50cnkvZW50cnlfNjQuUzoxMzApDQo+ID4gUklQOiAwMDMzOjB4N2ZmNWFiZTEzZDFiDQo+
ID4gQ29kZTogMDAgNDggODkgNDQgMjQgMTggMzEgYzAgNDggOGQgNDQgMjQgNjAgYzcgMDQgMjQg
MTAgMDAgMDAgMDAgNDggODkgNDQgMjQNCj4gMDggNDggOGQgNDQgMjQgMjAgNDggODkgNDQgMjQg
MTAgYjggMTAgMDAgMDAgMDAgMGYgMDUgPDg5PiBjMiAzZCAwMCBmMCBmZiBmZiA3NyAxYw0KPiA0
OCA4YiA0NCAyNCAxOCA2NCA0OCAyYiAwNCAyNSAyOCAwMCAwMA0KPiA+IEFsbCBjb2RlDQo+ID4g
PT09PT09PT0NCj4gPiAgICAgMDoJMDAgNDggODkgICAgICAgICAgICAgCWFkZCAgICAlY2wsLTB4
NzcoJXJheCkNCj4gPiAgICAgMzoJNDQgMjQgMTggICAgICAgICAgICAgCXJleC5SIGFuZCAkMHgx
OCwlYWwNCj4gPiAgICAgNjoJMzEgYzAgICAgICAgICAgICAgICAgCXhvciAgICAlZWF4LCVlYXgN
Cj4gPiAgICAgODoJNDggOGQgNDQgMjQgNjAgICAgICAgCWxlYSAgICAweDYwKCVyc3ApLCVyYXgN
Cj4gPiAgICAgZDoJYzcgMDQgMjQgMTAgMDAgMDAgMDAgCW1vdmwgICAkMHgxMCwoJXJzcCkNCj4g
PiAgICAxNDoJNDggODkgNDQgMjQgMDggICAgICAgCW1vdiAgICAlcmF4LDB4OCglcnNwKQ0KPiA+
ICAgIDE5Ogk0OCA4ZCA0NCAyNCAyMCAgICAgICAJbGVhICAgIDB4MjAoJXJzcCksJXJheA0KPiA+
ICAgIDFlOgk0OCA4OSA0NCAyNCAxMCAgICAgICAJbW92ICAgICVyYXgsMHgxMCglcnNwKQ0KPiA+
ICAgIDIzOgliOCAxMCAwMCAwMCAwMCAgICAgICAJbW92ICAgICQweDEwLCVlYXgNCj4gPiAgICAy
ODoJMGYgMDUgICAgICAgICAgICAgICAgCXN5c2NhbGwNCj4gPiAgICAyYToqCTg5IGMyICAgICAg
ICAgICAgICAgIAltb3YgICAgJWVheCwlZWR4CQk8LS0gdHJhcHBpbmcNCj4gaW5zdHJ1Y3Rpb24N
Cj4gPiAgICAyYzoJM2QgMDAgZjAgZmYgZmYgICAgICAgCWNtcCAgICAkMHhmZmZmZjAwMCwlZWF4
DQo+ID4gICAgMzE6CTc3IDFjICAgICAgICAgICAgICAgIAlqYSAgICAgMHg0Zg0KPiA+ICAgIDMz
Ogk0OCA4YiA0NCAyNCAxOCAgICAgICAJbW92ICAgIDB4MTgoJXJzcCksJXJheA0KPiA+ICAgIDM4
Ogk2NCAgICAgICAgICAgICAgICAgICAJZnMNCj4gPiAgICAzOToJNDggICAgICAgICAgICAgICAg
ICAgCXJleC5XDQo+ID4gICAgM2E6CTJiICAgICAgICAgICAgICAgICAgIAkuYnl0ZSAweDJiDQo+
ID4gICAgM2I6CTA0IDI1ICAgICAgICAgICAgICAgIAlhZGQgICAgJDB4MjUsJWFsDQo+ID4gICAg
M2Q6CTI4IDAwICAgICAgICAgICAgICAgIAlzdWIgICAgJWFsLCglcmF4KQ0KPiA+IAkuLi4NCj4g
Pg0KPiA+IENvZGUgc3RhcnRpbmcgd2l0aCB0aGUgZmF1bHRpbmcgaW5zdHJ1Y3Rpb24NCj4gPiA9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ID4gICAgIDA6CTg5
IGMyICAgICAgICAgICAgICAgIAltb3YgICAgJWVheCwlZWR4DQo+ID4gICAgIDI6CTNkIDAwIGYw
IGZmIGZmICAgICAgIAljbXAgICAgJDB4ZmZmZmYwMDAsJWVheA0KPiA+ICAgICA3Ogk3NyAxYyAg
ICAgICAgICAgICAgICAJamEgICAgIDB4MjUNCj4gPiAgICAgOToJNDggOGIgNDQgMjQgMTggICAg
ICAgCW1vdiAgICAweDE4KCVyc3ApLCVyYXgNCj4gPiAgICAgZToJNjQgICAgICAgICAgICAgICAg
ICAgCWZzDQo+ID4gICAgIGY6CTQ4ICAgICAgICAgICAgICAgICAgIAlyZXguVw0KPiA+ICAgIDEw
OgkyYiAgICAgICAgICAgICAgICAgICAJLmJ5dGUgMHgyYg0KPiA+ICAgIDExOgkwNCAyNSAgICAg
ICAgICAgICAgICAJYWRkICAgICQweDI1LCVhbA0KPiA+ICAgIDEzOgkyOCAwMCAgICAgICAgICAg
ICAgICAJc3ViICAgICVhbCwoJXJheCkNCj4gPiAJLi4uDQo+ID4gUlNQOiAwMDJiOjAwMDA3ZmZj
ODI4ZmRiMjAgRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDoNCj4gMDAwMDAwMDAwMDAwMDAxMA0K
PiA+IFJBWDogZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA1NjM3MGU2NzU4MDAgUkNYOiAwMDAw
N2ZmNWFiZTEzZDFiDQo+ID4gUkRYOiAwMDAwN2ZmYzgyOGZkYjgwIFJTSTogMDAwMDAwMDAwMDAw
ODk0NiBSREk6IDAwMDAwMDAwMDAwMDAwMDUNCj4gPiBSQlA6IDAwMDA1NjM3MGU2NzU3ZTAgUjA4
OiAwMDAwN2ZmNWFiZWU4YzYwIFIwOTogMDAwMDAwMDAwMDAwMDAwMA0KPiA+IFIxMDogMDAwMDdm
ZjVhYmQyZjMxMCBSMTE6IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiAwMDAwN2ZmYzgyOGZkZDgwDQo+
ID4gUjEzOiAwMDAwMDAwMDAwMDAwMDA1IFIxNDogMDAwMDdmZmM4MjhmZGI4MCBSMTU6IDAwMDA3
ZmZjODI4ZmZmMWENCj4gPiA8L1RBU0s+DQo+ID4NCg0K
