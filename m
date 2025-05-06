Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 957F0AACCD9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 20:10:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4203860E14;
	Tue,  6 May 2025 18:10:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1m9OAw0UIqPZ; Tue,  6 May 2025 18:10:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 972A560DDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746555052;
	bh=x1RwdFnwrJmp/HPn0EOMQc/WXHkWHPs0KekcA7/3ZMQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qt1yd2n/CmkoZq4LK415wmg0EcLQM6M/3HWP66tWkUGO8/gbxFVgruHTpMsMIdtyK
	 8sFIKeKJdWyVLfUuScjUSUqglc34Vl3LAkDcW3cwBe2RoFE0ipMCcrCog6A/Cx7Io0
	 M1n2AcpUwNelUq8nAAR0SJ8+Ry555pqP5v263HfKlj3hcJKHZ2dqiOVXBNJ04It4Pf
	 44d6MWAVG5Nem/1mbH6RKdXj7UFT8T+50BMftgj40O8/N2BJoDnkYnRpbIl2kImQhq
	 VVdL62R+CbOKgdgkfuZkonG7RVCz8tKpuxveH5KMfB/a4HB76wK0Q/IXfSTWa3Oint
	 SsQY3X08xoxeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 972A560DDF;
	Tue,  6 May 2025 18:10:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 51A37EDF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 18:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36EC560A9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 18:10:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h-coLSz5YC_8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 May 2025 18:10:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9704060A6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9704060A6B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9704060A6B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 18:10:50 +0000 (UTC)
X-CSE-ConnectionGUID: TPavKXtuQjSvsRJl8efVoQ==
X-CSE-MsgGUID: XoAC5rB5Tx2J5BGKRdDGKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48150018"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="48150018"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 11:10:49 -0700
X-CSE-ConnectionGUID: 84k6oM0CQQ6DxfIFw4Bm+Q==
X-CSE-MsgGUID: aM05ruEBRKqDNqGK3JKjZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="140808509"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 11:10:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 11:10:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 11:10:49 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 11:10:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M+Rtim0J8bkQpJu/JFhqw2KMsfAhYgotDaJOKrQXgv8vgsm4fetNR/+I0cZLX3EwmXjMqj2xCbnDwoEZFYKnEl5FtfRcicnADMJpco+OOoAyh8Fxfi307nJ2xWDjujU/jjn1/DX1OzCU1F9INlOxxFIveWY3WF63Y5UjBEcHLm02COqlvK4/HsoBk82+BHxaSLL4jW2A19WRab7G+PwHXytYh9TFuyqHcqDp7/QXZrM/hMFiMY4R2vohZ8MeKEiDQaxy42m5X2g+/kERFlZR10iNpLSXgGwcX8cAB4xnxiockmaqT0JwY6KcyJbKEEX+r9ZzmtDaiyNRM+vxquFfZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x1RwdFnwrJmp/HPn0EOMQc/WXHkWHPs0KekcA7/3ZMQ=;
 b=qjVoYBl80C1QdiDYAqRSs4VMgGleKlCE5KeVtc5cFX+/Ipzd3sxo10cBvmui63zcuY20NL6WbejkXZO0IYYDMXajhx6SNLftqDyRFLJ0WTkOgZxnGKgqU1/z0xcsKr+Xtw+l3WlvT0//ByFkV9epA7I/jFjDSco2cPQRJZQuF89GNYAMGyDtj6si/3kEgKBLRX2cg6Rs6by3Ra82p4gemaMppfc2sjqDtdEHaUNGeNAXBeoTlndV3sbHEJrEspr1t4nABQBDiwiasFVdBeQ3PAs+fXYihY9QHU48OwKofmHC2eLil9drodNMyVcVmGsCwGCkWf0aSqFpG7nfRYqbOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ5PPFD25B21260.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::856) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Tue, 6 May
 2025 18:09:59 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 18:09:58 +0000
Message-ID: <29b84f90-f7c3-4222-a50f-a4112a63e96e@intel.com>
Date: Tue, 6 May 2025 11:09:56 -0700
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, Slawomir Mrozowicz
 <slawomirx.mrozowicz@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
References: <20250411130626.535291-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250411130626.535291-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0188.namprd03.prod.outlook.com
 (2603:10b6:303:b8::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ5PPFD25B21260:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c4d0804-f0dc-4a34-7a7d-08dd8cc93601
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q25Xa0FzYTgydTJLNGZ5SGpwd28reUl2MDc4YklkRUV1K0NnYTMxejJRT1pH?=
 =?utf-8?B?cFpzZmtNb1psWVpGVVVxU2M1eVRBQi9hZUt6bGlqcnJwY1l4b3VRZUVUZXd0?=
 =?utf-8?B?MzkrNGtMc1d4UkR5ZUsySk4xMTdSbEZENkR0Q0lyUmw4WTZCY2JLRFUwWk15?=
 =?utf-8?B?VjVGSzk0NHQzRnp5aWk5aGY1WGlOdTcvRk9CQXY0M1lBWUhTUXZVQkhxa241?=
 =?utf-8?B?dGJoK1JFN2VOQTdsUDR3R2llMUpwRVBHNHhQTWwwbzk2VFhUdkdmWkR4d1pu?=
 =?utf-8?B?Yklyay9wck1lL3RISU5TSXZpTnJIcEF5SDJBWDloa3hpbWpDUXJobXZtcS9h?=
 =?utf-8?B?Y1phUHpvTnRIQ0NxVWlvcm4vYTVlZGt6clNXUWYraXhBa0JHdVp2TnlZUm1D?=
 =?utf-8?B?KzR2Q1J5c2V5cDhwc1huMWtLbUNvbVJDM04vT1dkSm5sc3p1alVQaERzUGVa?=
 =?utf-8?B?VWpueVRYN2EzRUxjQUxaRHFYcnphVU5PVS9nNTYzMnV4RUpGT1dpa29QZ0I5?=
 =?utf-8?B?VjdpRG5WTjd3ZWFzTHdDTytmejdRTXNEU1cwZ3RpbGJoKzlBYkdRaUFZdnhW?=
 =?utf-8?B?Q3NlZFNTWW95bTNybk9yL2FZck9WaERmTlBScmd2R1F3cmdldS9XR2RtNWEv?=
 =?utf-8?B?YWxDQmdyQ2l0aXplYjJsMXdNbng2bTR4Zk9CN3FjUCtmSzVmTzV2ZXRDWTNt?=
 =?utf-8?B?bTdjMjZhZUFnbGxBMExHL28yaEFJVjJxc1gxVUdhYjJNUzZENVNDTFJUQ3NX?=
 =?utf-8?B?Z21oRUtLTUxCYVduMXk5c1QvY1dLWnBIaHZDZU5PSVcxbUN4MFNtZFVnc1py?=
 =?utf-8?B?dHpoQUJLL2RVdGxCaXU1UElOQW1ndk9SSWE0emNnZFd3R3dsUThieXlldE5p?=
 =?utf-8?B?ODgzejF6c3BhcXpZUWdzWjNsZk43Q2NuaFA1TkNKSThIMElUWG55cmJpUlps?=
 =?utf-8?B?YWRjQlRMWHM0cE9Xb2twakFWWUNmSFhZSTZ5VytrcnFkb3d3V05mN0M0T3po?=
 =?utf-8?B?UHFMa2psTWZlemt2YS8wNEw4UUJ3UzhuYm94SGRQWW41dHZETG1ITkxQckgv?=
 =?utf-8?B?RXBobC9uQ2tKdVErMUg4VzJvbnlpY2pEam0vVGtjMkY5dDh2ZzRTTHhGSUEv?=
 =?utf-8?B?dC9kRzR1VndRL2FJMXJSWDVxOEFkb1NEbzVpVHNRNE1tZUxqZUMwSFdadldJ?=
 =?utf-8?B?aEdENUFHUDNyWnArQ0tOdjlTS1BQRklvRW1weDZIb01lUGwxTG5GcCtRUXVW?=
 =?utf-8?B?VmlVWmFqM3dOVUl2cjh5eEw2SHVZRjJsZVFlcnN5RU1wZHhjZlRzc3IzOUZr?=
 =?utf-8?B?QmFWNlY1VGV3UUpsZ28wR0p5TFpnM3l3WWx2ZHJRdEgvZnpDR2NXN25FV0sz?=
 =?utf-8?B?TlFPd2ozcUR3VWQwa1JPRXRKbFF2OFA1QVBRc1NMVi8wOXQxSDRETUFYSW5E?=
 =?utf-8?B?OHg1QUNZRDJsMXpLMUwvdFhaN2JGbCtGVUh6L0xpRkhYSXRyWVJkNUpyeHB3?=
 =?utf-8?B?elR3czVTem5Xbm54LzdJd2FYWGhyc3pzcWkvWWVhY0xTZXhGcC9lUGJPV1Y5?=
 =?utf-8?B?bjFQWTFNckxia216bVlHbkdHcTI3Y2lES3NxRncvYkJjNzh0THZrbmdqdDFW?=
 =?utf-8?B?dWJuWiszbFVBWk01UEY4d09WaWJwQnliREYraEYwSmhtbUdFaUlZUE1oaEpz?=
 =?utf-8?B?TlNxZmpoSFg1QWo0NnFSY0Noek5LcFladmNyUStCa2RGMmVONG5tampTS1Mx?=
 =?utf-8?B?czk2ZnphbU5OQmcwMXFsOFpCc2RUbFNmQ2lGK0I1Ym5vOFZaZUhZQmczb3Vn?=
 =?utf-8?B?elhTWUdpZFpIZjgxQmxTai9oRUIzYzR1Vkd2QXdqVWR6MmZ4OVVSeUxab1g3?=
 =?utf-8?B?aE5LV2R6OTg5U3dIa0lkRXFlS3dITFNydWZ3d2s3WFhwbWE2anhKWEg2dXhm?=
 =?utf-8?Q?YUwMHgG5kUI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a25GWHUvQXYyT1E5ajlvUlVUT1Fkd1FuYTF1Q0xEWDk3RWRtaUFidHNuWXdK?=
 =?utf-8?B?YXV4b2R1aUt1WkZoaExNai9VTUlxU3g2cFRZSnF5NmlWVlgxR3lOMXRwaFAx?=
 =?utf-8?B?OEZjN2VYZXpnTWpsZGRoSzhhOFJ0a3FhVUg2OUE1NDh2WTdtOWtTZFF2bEU3?=
 =?utf-8?B?MmZmeUlkc3VJQlZVUUVaZGR1alliZFA2UDBTbXZDSWpTRXpGejFhMEUzZjRG?=
 =?utf-8?B?WHlHdlRra2pBbzZ5QURQU1gycGJoUUloeHRYNVBaQnRLbUM0VENhQkJicUdL?=
 =?utf-8?B?eGhVTTV1M1dZUk9ZL3pyTHN0eG9xQzBtSXBXMFVBVlRGcnpKTnVmbzZ4ZmhE?=
 =?utf-8?B?NWtiRkUzSjV6V1pGd2hmZHpEZWdjNCtmMk53alJKUnE4NTM3STZqb2hKMkdj?=
 =?utf-8?B?S0lYTmNBS0FYbW42eG9sOWNhNldFa3JDRzB0eHlCejlaL2J3bXNJcWd2ZEpX?=
 =?utf-8?B?NlMzQUlvbkdFQmh1bXJNM3E2QjJqRmFLclBpMUtlQ0haRExRLzZsSkthYnIx?=
 =?utf-8?B?MWhtTkh2dGdIMVJVd0RiY2hiMnkzdHU5OUthdFFNZTRJbU13NmZpbW5HUVBo?=
 =?utf-8?B?VDdSYzdTYTlBQjl4dFZZbHR6TDdQRWxEbVF0WGp2Yk5XUDNuKzBIcGY5aXdt?=
 =?utf-8?B?MWdPQ2QwRmtwWWVBNDNPckpyd0ZsYmlqNXVNYkk3aHJlMzV3WTVnT3Z1UCtN?=
 =?utf-8?B?VVVDRFZDeGkybzBpRmkwcFNsREROY1pBa1lFbGptdGd5cTlSVVpoTFl1cWxi?=
 =?utf-8?B?aVJqS1kxOUZRbzl5SlAxME1oeUFraTFieDNBMitYeHo3akJvd2JyRFEwSDE3?=
 =?utf-8?B?WStqb3FKTzVjMzZlS3BZOUR4L0JwcStuMEdiUUlOZ2N6WDVhUGl2VlZqUGNJ?=
 =?utf-8?B?cXdhTXNpejdHMFRJMjIwOTM3d0pGcFJRSkpZekVMSThFVTlLR2VmWjY0eUdX?=
 =?utf-8?B?elRQd2U5OUVjWDlkVitPR3A5MElWOERpK1JPZHVtQWlrcFp6QS9HWTVwWnd1?=
 =?utf-8?B?MlgxMXVpaURhWU9yRmFRWWdHa29saWQ2ODQyQm0vSERUTjRNbzBHSFRkbEVz?=
 =?utf-8?B?c1B1TkI4ck9hVHBsaGh3T25HVXJJK21NTEVHYTZWeDRTOUR3UXJiTGN0SDdC?=
 =?utf-8?B?SFdFRklpZHNiNXlyRERjbWkybFVnZWRuYWdiRlRzUEE2V3BrWi9BYVVCblhR?=
 =?utf-8?B?RWpLdXp5dWpJNWJMQUR2SGJQNW9RbWdoM2tQNEVQeG5kVjZ2MWtRSml2djhE?=
 =?utf-8?B?RzEydmZGdFc0OHVmMGFFK1BFOGpQbnh5Z2FySENzcW1NZEJDbXpBdDF1U2xh?=
 =?utf-8?B?akpHdyt4YmdhNWJEM1NwVndOVW1IRFJmYlZQTGR2bXhjNEYwb203OEFlWnQ5?=
 =?utf-8?B?SHFSY2lQNEpsWVNyeWtLYVpmMmJwV0M0MUhmR29CbWFGdUZKakZvUkdlZWFQ?=
 =?utf-8?B?bGVFWUZUMnpTVmc4ejh1Zzg1UjNIMUNOcEZQMXB2TGxCZFdkdlJVNmNsa1BS?=
 =?utf-8?B?TVpYNUo5VmRmYlovcjR1cHJLak5HbjN5NCtISjh2MUVBNmFLU3NkRHp0T2pR?=
 =?utf-8?B?MFdNSTN0UlZQV0kxNEYyTUtEZVBJOEVMN0JobEczSXRaYjU2VEFST2JiT3Yz?=
 =?utf-8?B?Y3E3Y2lJOVNxUkVGZGJrM0svRTlsWDh3ZWdDWWJvWjlvT2xITUxza2pVREhZ?=
 =?utf-8?B?TXFTaklSNVVvaTZ2cWl1YjIycFJOL0VwVXRraHk2UWNCbWJPYy83TWtnTTNH?=
 =?utf-8?B?OXUxeisyTTd3dlRMS0g1eXh1Z0hlYTFSVXRuR202YUt6UVF1U2xsYkIrZGti?=
 =?utf-8?B?Uyt5UUVkb1BOL202N3FYOW0rTkpuV0l0THdHR1Z3cGtac1hXWFNUdkNvMDlW?=
 =?utf-8?B?OWg0RFltSmg1KzlDdDFRQUpMMlpjdFVlVEkzTTdKaTh4dVpxNGVOU3RldTNz?=
 =?utf-8?B?TEpreWdDa2FOd0lhZldFOEhQN0wrV2psK2NJSkcwUmxaL011RE5kd082MXpS?=
 =?utf-8?B?M3JoNU00TDFQRXBNWm11V2FuOUtmcUhzSUovK1U4M0NyMUNhT0l4OEk4S2ZU?=
 =?utf-8?B?bGtkemdEZFNSTlFRSWEwSnJXVEVvaVczb1pwdXFTTVFRY2h4ZSt3dnNJY0tL?=
 =?utf-8?B?NDB0N1duRGRXQS9WcnlLR3BLTGkzcXZXMHBmZDB6RVY2anJ2RXpzdGtqbUto?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c4d0804-f0dc-4a34-7a7d-08dd8cc93601
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 18:09:58.9154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cR7RJLX42M9p7HQYxt7vG1E8MnDwrCPTh3dj7zaEpTJfJd9oZjkC+m5GPo2cyjZSDojK8cg8KMB6oH9N4dFyLWejXkA3TTKoZdg6WliG3Zg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFD25B21260
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746555050; x=1778091050;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IeQtBk7DkOR3tfi8T9c4/Of7nCTC+V5qkbmF8VwmzHI=;
 b=aSaoNjo2Oil3NgRa66YfbLA76AJCJ+r5WKe734KKeTZBBBKxDXf8Mza0
 SsJwQieSaS698fRV3dp/EEcoW3me5EL37v7V1Qt26BRM7q0LATv75pnlr
 Han/k4o8IaANp/CD90zKLkHV0GI8i1VwKZMow8jrpbTtIUOIXZGm2s82k
 N+2lvyV58Jy2r/eMcohFImeI1QmgMQ6veBJwRb9GRsrOoiE6YGgHIXol0
 VmqAz8abk8BjyqILV7sBs5qg4bmvBZDLscN/pQxmTEfUyB62S0zWZa8m/
 qZQOF4ZKMSF3JA3pvYbzqIhG4nG/3+kvG/7SyyBHzFl1V8Miqv3BsMO/0
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aSaoNjo2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: devlink: add
 devlink region support for E610
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



On 4/11/2025 6:06 AM, Jedrzej Jagielski wrote:
> From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> 
> Provide support for the following devlink cmds:
>  -DEVLINK_CMD_REGION_GET
>  -DEVLINK_CMD_REGION_NEW
>  -DEVLINK_CMD_REGION_DEL
>  -DEVLINK_CMD_REGION_READ
> 
> ixgbe devlink region implementation, similarly to the ice one,
> lets user to create snapshots of content of Non Volatile Memory,
> content of Shadow RAM, and capabilities of the device.
> 
> For both NVM and SRAM regions provide .read() handler to let user
> read their contents without the need to create full snapshots.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks!
