Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E958894DFD5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2024 05:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94CFA41280;
	Sun, 11 Aug 2024 03:38:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qYTMQC3MIgwt; Sun, 11 Aug 2024 03:38:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9410940B7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723347531;
	bh=avbGM1sbA9CxYJu+ECFbKbubqBCIVu3mo6oM6fPB3eU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zRO5hKGMgkzqPG9uWMD1IbgqnhPYCVSAxUMVzbx71xCl7B/zyuPvlVWGvy8TkUkqF
	 KNjbmDdczU3vQAeijGJ4nkGGF8i1VOnzzBUN0hCt05OgQXdwObbAsRv8erE3VQWw2v
	 1Php/z58wSCr9JRSGEhwDEMa3QHJa6vlgmXTKU0C50xGt5FFMf5cRtFxR8EnybboHv
	 0yGPO/6i9QQ5s/YMHvA6Qp1KIY9SobWCYdivnFLXv+1Gs7vpaeDKEuduBsFr1b+Xl/
	 N8xVafi6+5y61P9Ln+fiAWSgKRu3hW4TOLWXRrCP+Zao1Me+rGr7nDp2QfPPWrA3Ip
	 bs0wrwyJrk67Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9410940B7B;
	Sun, 11 Aug 2024 03:38:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F08F31BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7BB540C4B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1zeTUDHV-QPO for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 03:38:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A27840B7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A27840B7B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A27840B7B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:41 +0000 (UTC)
X-CSE-ConnectionGUID: fh8ukQkATvCXNshUH5aloQ==
X-CSE-MsgGUID: z1ejVXt6QC+r9pf/7756BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11160"; a="38933459"
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="38933459"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2024 20:38:40 -0700
X-CSE-ConnectionGUID: CGZzNj1nT/mMp6K1G2Cd6g==
X-CSE-MsgGUID: GG+Lyo07RtquAg2XczUHWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="58002943"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Aug 2024 20:38:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 10 Aug 2024 20:38:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sXtPswx2dF2MJOth6aTgPXjRwCrkE03DyOJfLW7KE9aDq8ZwPeD1JTJ0qsTHuh88QdeHEJL3D9RxPuIDAGayRS3MCCzlFrQyjY4mUvlBHo6aRNHPw4aajbeHHjG1lDl5nXzUwN+ciILCKkV1DLjSYFra52n2dNlyDc6cl70MZPrZ+OfExuxoB+ivKbn3WeO4Tr9UFDEul+HOelVCHS0y3BsTbpBGYpIPIyeZLjyV0Y7ZI8sIl2XEBwWCV8Qz43dcvlp3sxgaZ5oB22eTwaUNhQNzQUCKDOhi3JyChnC6xtr01j9Ocz37/mkT52vDHh1Ky9AkMtGC12PpzC0iTZbyTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=avbGM1sbA9CxYJu+ECFbKbubqBCIVu3mo6oM6fPB3eU=;
 b=SCJgl0sHbcPXCnnDvOVeaVhI/ZDG86TSc9r0D4h4WREaGEEaz61QmrBkVeaYEVKvW976RkcoAJESxLlUu0Ve0LgQUgHjmRRBEgCN913Kz8nxf6p4WXldUggGbpoAAotv5nIsnPqtdfxlQOwQNZjc8TwHur4aTeQAAT0o5uRaqAE8W3Wu4xp8/vmFpj8HmkD+vKxjfmd1dxplNxyp6+hzSPB8tY0ZxWr+643C7RtltMeOQ//PiuC0n7iDdj7VmpKSMm0fjECAKrYHoc9wwOeZN/19qVr+N4ufWlG/fapP0MMjy+Oq7qmbnE3/TcM3hvjildqtHjIgnDsVjWtyFIs+rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Sun, 11 Aug
 2024 03:38:37 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Sun, 11 Aug 2024
 03:38:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "\"netdev netdev\"@vger.kernel.org"
 <"netdev netdev"@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 5/7] ice: reword comments
 referring to control queues
Thread-Index: AQHa6EHj7xucLlWQikmBxOzqRIzlaLIgWVPw
Date: Sun, 11 Aug 2024 03:38:37 +0000
Message-ID: <CYYPR11MB84291FCB07B6C2334CA2BAD8BD842@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
 <20240806-e810-live-migration-rd32-poll-timeout-v1-5-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-5-b5ada29ce703@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: 281d61ab-e8b6-4d6c-75aa-08dcb9b71598
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bEltWW9wMzZtQ2dGTmhUVTUva3pEdkFJZ3FpWjRSSlVLUUJaRElvM0dKQzNF?=
 =?utf-8?B?emIwOUxtOCtQRFpSOW9SSkhFQlUwMkpkZTNaRGlEZkZvb3VWNWdpUE9yRk96?=
 =?utf-8?B?aTNsdWY3aWV3Zzg4TjVYK3dYYjlhWnI0T2hyL2lYdUhBMi82ajFHelBYR3Vy?=
 =?utf-8?B?TlhITVlTL3lBNWtFWlZzTE9jV25tKzlBekxPQ0lucU1WTTNraVBvTkRueDUv?=
 =?utf-8?B?OTlaclZGYUwzOVlpRjVzRkZpZDMyWDc4OWtkSHdtRlpiU3ZON1RvZ1ZCSEhk?=
 =?utf-8?B?SFd5RzNudWwzK052N3JuL3pRaVVza1REVVdjV2dNaUxldytUbzJaWWpiemh6?=
 =?utf-8?B?KzZOdVBuV3dndXB0WnFFb1BFeUJKcStYVk52RUI4YW9KQ0ZvaXRqZllWcVhR?=
 =?utf-8?B?dFcybXNMemVMOGpjSWtFdzRnNHh6eFQ3dHJqakUvMHVQbXpBYSt1Y21wNGdQ?=
 =?utf-8?B?a1VCTnRJbXladjZCdTgvd1k4RjFtcVRzNGovRFh5ZDR5aUEyY1lwM3Mwa2xT?=
 =?utf-8?B?VXA1bWVpZ2Z5OUpMckZ5anVPY0h6RUNwbWE5eWxQNkVxZDVrTUFCT252SjhC?=
 =?utf-8?B?aXpPbXVtOTNDeityWGpqVnJhUzNGNy9iemdVbUN1RUNSMHpNRy9jb3NoN1Zs?=
 =?utf-8?B?bmk1bVJReWdMdk1UeExOSnZaNmxnckRqck83VGp4eVhJMXIwbzB1MjJOd01D?=
 =?utf-8?B?WUlqek1EUjAvUnc4Rk5EZm1zSEwwekRyR0tDcmZxNGZ1MVRxelU4dUphNXJV?=
 =?utf-8?B?VHZSVGFUTC92d05PUnJNZ21aR1pneS9qRy9uYlFHd3YwRnZ2enc4akFCa1FV?=
 =?utf-8?B?M2dJSjlVdEJxNlVjNWJEdmF6VDVCVUF6UHhQbktYME1pSmUrWU5hSGIwL1B1?=
 =?utf-8?B?VXM3NFZ1YVBTZkZ5bXdzZndJRFp3WVJHTzI0RUVYbUlsUEhnbHVnMVpqUFJn?=
 =?utf-8?B?VnJ4cjJVT0JkaTJ4dThBZmNYSDhYcW5KT2VNZkdCR3RtVlRjNDdLNzk4bFYz?=
 =?utf-8?B?ZW1sdS9VbVBiUE5vWWlaek9vRlBiTDByM0lmTkk3YVVCYU9lZlEyNmozUmxY?=
 =?utf-8?B?L2VLVUxnQjdoYUwwb0V0OFQxNktDN3ozT1c1d2hNZ00zSW5qYTc0M0huVGZp?=
 =?utf-8?B?WUphb2tMZVE1SjYyUzlqZHl5S3dXMHNUOHlKYjIvSUxZL1BIb1M4YjBhQjQ0?=
 =?utf-8?B?Z05YQk92QmFPRnhtU0hZQjhoekpSOWdIRUxQbDBva1cxNHY3REdDdjdWOWpT?=
 =?utf-8?B?WU41R25ZUHBVRTFMV2JLWGd1WlFHMXJ6U1E1YnczNWFRa2FaZmdBY0pHalNy?=
 =?utf-8?B?ckhncGtORzAxOEs4cDhMcTBvVks2YWp5Ykw1cm9oU2dvTFkxVG1hZGlYa29B?=
 =?utf-8?B?SFZQNitJRnhzTzdpdGIxU1pWV29TYlkyOXcwUDVoMlRNQ2pPbnhyV0FkMWwz?=
 =?utf-8?B?TkVoSWwxMGIrOE9odGV4Vit4UkNTa1VjSlc5RGVRcHJvbW5DaXYvZmZYYW1V?=
 =?utf-8?B?SVZpTjhpck1WcFU0cEljZ2pBT2twbzF4eEZlNkgrZXhCYUZuLzhyTkpnd1Vo?=
 =?utf-8?B?VjNhYStIRkgxZy9TejRIWDJvdlA0OVcwdTV2RmNKalJOUHJ3WWhCdFV3T0VC?=
 =?utf-8?B?ZTJNRWg2TEpETGovSm15Q3VhdUtRKzY3VVB2NzMrUG0vZXhMc041UUhoWURG?=
 =?utf-8?B?blN1M0ZJL1piejloWE5SVWpEWGNMQXB2NGhycmJ1UTY5d0pHdGhYMC8xSGJO?=
 =?utf-8?B?WnR4NklMU2w3MFN0TnFuSmd2MjJISW1xZkxTNVZ4MEFFNzdRK1MxZVhlZWdj?=
 =?utf-8?B?QlI3bmVKK201Ump3bUlOUGcvQi9TUjBjZW9wL3Q0RTBoaFc3Wk4zdEpRUXds?=
 =?utf-8?B?cUpya21kdFRSL05HRkxMSHdTajZjaGFlOFppT3gwS3RuVnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0w3dGw0OXpmaGVHL09ySFdGZnZKcWFWWmlrSkZIVUhqdldNL3RYZG13SXFZ?=
 =?utf-8?B?WFNTa1ZuVm5UMEJCOTkxcmR6czJFOEdhQUltQ0owMnVFU2E5azF2OWFQSG5s?=
 =?utf-8?B?NDhwR25yb2pyRFdJM3hFZldWNUVnWVVvR08zcG9Cd3dDMWlNcExVMXBPanhT?=
 =?utf-8?B?bXZmem4xRERmU2JhQmtqUklURElzaVNmZVEzY1JTbVJHUGp4cGdPeUxqTFJ6?=
 =?utf-8?B?YXA1SWU4RWV6L1ljRTZxQVJZaDdXWXJrOWQ4dmQ2R3JKN1BJU1J5bGR6cFhZ?=
 =?utf-8?B?VXk2d3F1TStNSmlyaHBHU3hYc2RzaFlZbTNzcnBkMFkzbkdRNE91N1JadTJK?=
 =?utf-8?B?QzRhbzBkSlRkaWcyaE1VVnF3SHU3VHBmaDRWWi90SitsUm9ibmgxZ1FwaVNH?=
 =?utf-8?B?S1FhS1c1bVVHU3JNcVhjTFNmaGQxS0hDV1gzUTNRSVFHeFl6V211c2w0OHFZ?=
 =?utf-8?B?WWdiRDYzUUVOM1JOTVdFa1h6cDJ4aHFTcGM1bWh4NFcrSkVjaUFWc1hYVVgw?=
 =?utf-8?B?MnRTNlBrTjhmLytaM0E5TDI4MWtTWFJYMkZWdmZNdjJoeUZjNEZtMEhnOU1u?=
 =?utf-8?B?elVES3ZNa1FNQlZJQitVY21zN2huM0JMb1crbmgvbjJvYm9yK3BYVDNpRVBm?=
 =?utf-8?B?dnhFNys1cXNwQldQZzVCMkZ1VG9HQXlOajA5dll2bFkvMVNoSjlPbVV5ak5y?=
 =?utf-8?B?UVRMWFRsZFdNRjdNQ1RLWHpETHRxbm52M3hQNHdRdDhveXlLMURnb3ZOS2pR?=
 =?utf-8?B?WHJwZGxoakJST0FGL2x0VUJhRWlPRVBBSHIxNzhyeURYSnFoaXBMekhScndM?=
 =?utf-8?B?VnV0YzNCNUZUa21vTy9vZ2FRUEZEYW1kQWNRNElBd2QrcmJ0azNpaHdoeVBl?=
 =?utf-8?B?c1BxaVJKM1BpdDNvUGduK2ZJbTAwcjRYQXkzNzVDcVI0NDhWTTQ1TlNTNjEz?=
 =?utf-8?B?V0hXRGMrdXFmandBTDdoZ3luWWZyazhNajA5U3laaGJ5bnlQQlBiVmxWMDlQ?=
 =?utf-8?B?Z3VRMGpZZGtxN3QrbEcwcG5qaVorbElhL3cyQ200TC8rZDhxdGcydDRpUUFy?=
 =?utf-8?B?S0h4Q0FDSEVSZFJwNnlSU2ZFcHcrNWwxU0lNYjNocjk4SUZjZnAyWEpGS0JR?=
 =?utf-8?B?Wi9LSkh3MDFDWjFZRGpJaElHM0VGbXE4Y2FWc0sxVzFiYnNXaXYvOHFUazcr?=
 =?utf-8?B?QmxLU0hRWFRhOGk4MmtadDFKYytnWSsweEJmdWo0RmxxU1BvWXdRaExZdnVC?=
 =?utf-8?B?aXgrbUg1YjJrKzVLUDNOUDAzVW5ZVzZsMUZ0NUhzRSsvcVEzalhSWExlcCtt?=
 =?utf-8?B?ZzhIZDJIc2pILzlvaUFNSzZKeU5WQXZPUEcrbk1MbWZxeklyWFMvZ0JCSHhN?=
 =?utf-8?B?WkliMWNUYWkwQXFmcTdGUngvSWZmT1FCbllaUkpDTG9SWjc2dTZXNlYzMW96?=
 =?utf-8?B?RW5HUXc4VmhJNjN5VS9QWHExUjhjU0VnZlFJZmlaYXppYUxVN3ZUZmxiOFFp?=
 =?utf-8?B?SG1HN0FnUE9XRVU2UWhsYjZMMFpVVVJZZ3c5QUtxWnAxeWhPcVk0TDEyZ0pt?=
 =?utf-8?B?RjdJQUhDTDNmZ1RncHNOOGtGQzl1RTRhVTF6U0tvUzVIVHlVN1ZSczdHL093?=
 =?utf-8?B?Mm9OL0FOUkFrUEZlVWpYdGNtZmhadzF6WDlnVWlqQTR3RjM3SVpaQ2grQVQ2?=
 =?utf-8?B?Z0JXSzdTeklJcFNxTlV4RlBOekhxbWFTYTBIUGd5MVQ3MktmdUJleWJETkM1?=
 =?utf-8?B?dWRWdE96enBkeWJtYy90TXRvcG5yZVBXWFRLOUk3MzVSM1hxOWhRS3B2VnVL?=
 =?utf-8?B?eGhZTzI2eFhEa1hib2pOVUV5RXJlZWJWN2Rrc3VzMFJFMkptdXlIQ3VXc2Jk?=
 =?utf-8?B?RitqRzNscUFvdjJJRXVTamNsZUpsbkVsWmt0QU0rdkwxY0E3c1U5MVA4UXlQ?=
 =?utf-8?B?VWpCRVgxeld1eHMxaDNIdnFoaDJKcWJBNi9weHJCOCtFRXRiY1ZPT1lLMDQ3?=
 =?utf-8?B?anpHQ01RSFptWlprR3FkSG45RnE3c1RhWjNUMnpWMUVtbFFaenlxWWZOV2JN?=
 =?utf-8?B?bzUxZnJucmluaTJaZDMzSHQyOS9lSkRmamFCTllBMGlycDNHMnJENHVXSU9p?=
 =?utf-8?B?WnROMndEWXlsVFdjNEJOV21acUg3Y2VHN1NHRnhuVjFVL3BqWk5EVDZxWGFO?=
 =?utf-8?B?OVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 281d61ab-e8b6-4d6c-75aa-08dcb9b71598
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2024 03:38:37.2106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ad9PYxjygw/qE1zfwPl297F1Gf6eefFSmBtfqmgvIQKV6sx9hk+hvnCeIZ0PAqDfCvLwvfXtFHJawQdbeeI3YyfLvm5OsIyNufiT54TN9I32/PXXIccYz3v7tsq/5fDd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723347521; x=1754883521;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=avbGM1sbA9CxYJu+ECFbKbubqBCIVu3mo6oM6fPB3eU=;
 b=Bmva7HZEP6Q4nZt/y+d//VfFoVwYv+mV73i0IJFnVm97bJQdVdPl3/o2
 XNwDol18D3XOW40PBAz5vq9FHx5MKF4fzR2whMl8kV8Vg9n/XMZn5eXrZ
 F4uMVCTp1N4GNVYZMAQXSHqES7cROazA5w57MOvJ90GH0Q9itkQHGP4A8
 AXURC+wjfFpBzSrC0SthOKk21YN8oZGuIdcSbqg4ipZLMyk229vOfcdXL
 ibP921EyAncDIVsA2UbzrDr5zNfI9ES61t/SH3/7Sdtk+pFMtCMgJtdpb
 unZW5DHxm8fKcZxxWH47tWnEhGkcb823+6EC1zuXDGanAWFX+U0UFDHDD
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bmva7HZE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/7] ice: reword comments
 referring to control queues
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Wierzbicki,
 Jacek" <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCAyOjE2IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgIm5ldGRldiBuZXRkZXYiQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogVGVtZXJraGFub3YsIFNlcmdleSA8c2VyZ2V5LnRlbWVya2hh
bm92QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBLb2xhY2luc2tpLCBLYXJvbCA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
OyBXaWVyemJpY2tpLCBKYWNlayA8amFjZWsud2llcnpiaWNraUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCA1LzddIGljZTogcmV3b3JkIGNv
bW1lbnRzIHJlZmVycmluZyB0byBjb250cm9sIHF1ZXVlcw0KPg0KPiBNYW55IGNvbW1lbnRzIGlu
IGljZV9jb250cm9scS5jIHVzZSB0aGUgdGVybSAiQWRtaW4gcXVldWUiIGRlc3BpdGUgdGhlIGNv
ZGUgYmVpbmcgaW50ZW5kZWQgZm9yIGFyYml0cmFyeSBjb250cm9sIHF1ZXVlcywgbm90IGp1c3Qg
dGhlIEFkbWluIHF1ZXVlLg0KPiBSZXdvcmQgdGhlIGNvbW1lbnRzIHRvIG1ha2UgaXQgY2xlYXIg
dGhhdCB0aGlzIGNvZGUgaXMgdGhlIGdlbmVyaWMgY29udHJvbCBxdWV1ZSBsb2dpYyB0aGF0IGlz
IHNoYXJlZCBieSBhbGwgb2YgdGhlIGNvbnRyb2wgcXVldWVzLCBhbmQgaXMgbm90IHNwZWNpZmlj
IHRvIHRoZSBBZG1pbiBxdWV1ZS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxq
YWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBQcnplbWVrIEtpdHN6ZWwg
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5jIHwgMjUgKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygt
KQ0KPg0KDQpUZXN0ZWQtYnk6IFB1Y2hhIEhpbWFzZWtoYXIgUmVkZHkgPGhpbWFzZWtoYXJ4LnJl
ZGR5LnB1Y2hhQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQoNCg==
