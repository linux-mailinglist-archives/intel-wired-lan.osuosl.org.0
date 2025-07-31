Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7E5B177D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 23:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA8B4429EB;
	Thu, 31 Jul 2025 21:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y4QXJMfoAtsC; Thu, 31 Jul 2025 21:09:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C69A5429F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753996169;
	bh=e1nhN+ABxIdmpvSyVSYLXAE3lfGxJF4Phwjt+uVxLv4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UHkNZmF2C6N+BKgYc3rJiKAgUBxnAPzxtXCNjHCCfBTpI9eSoDBPU/l9ZdtoGoGAx
	 dQjKX+fymoK5AZLTWmD+ddhkRS2xm40DlPIE+fvG5S+eeQv5wF3K3XKN+hxx1LDHPc
	 mzeDS81hujrntlh/oLRH/ZTmtVLasVjbqpdQYnzcNqT+4PKVqk/HINjpRyCz6/5y+R
	 7iwoXzVkqY9wtPaCfGgCMrCJI+iRgR3LVYYY8C+T3xweVprBngGPQCqsb8FiRDfQSb
	 XmObANnIqbvmHbz2jjYssfJj/4Gus14LXEc6YG7CZWw1OYBDVyHlygvQJ5nBmB3DCg
	 3uEQC0eg1/yGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C69A5429F8;
	Thu, 31 Jul 2025 21:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EA399168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 21:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC5328225A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 21:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KXBv1ZJEy0vz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 21:09:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 210F082212
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 210F082212
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 210F082212
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 21:09:26 +0000 (UTC)
X-CSE-ConnectionGUID: /22kKxv9QVmeemyoSfJbBg==
X-CSE-MsgGUID: r9ktB2OCT/uoTNEkLre9OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="55537811"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="55537811"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 14:09:23 -0700
X-CSE-ConnectionGUID: GYFfpzHtS/+sAFcLgURtEQ==
X-CSE-MsgGUID: CvQ19PyWQ/2jm4gSUfi7Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="194346914"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 14:09:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 14:09:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 14:09:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.59)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 14:09:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qw9l0OApxdeiV+/ckfZmYcLO+Jgn7VEKCM+SVYfTrMWSfJBwhRIkKxKPc7/725nJka+LoIBWa4e8aEFdmp0wo2lA0uib7qbxEfC2OEgvIIQ0RpvFtHDiQ+iBm5A/9cUSmL51TUtS7/ScYDnbOPZKNujVvtRQWCdCajy4bmfPfHV6y3/HL7ereyp+gE16sLDpgRalLZOEtLMIj54hUEg8pRH0UV19C5xG29sUxpeN3I0rGYd8/8DvW5x2WgAUHtPiDrRCLNym71nzq4SzLHO7BdZGoHEFeIaLo5sQHAUQ+N3XI9F4hDeFtcgLaHOvVUMhBrA2wud/RiIdx+BixcxKRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e1nhN+ABxIdmpvSyVSYLXAE3lfGxJF4Phwjt+uVxLv4=;
 b=STlgJaxYTTrA8Vk0VbQ3q1q9dUGS1370Iv/Tv/Ah0KLX1Rlf0BOUnCtqqLZxt79c8c35VzVLUN2R6TQlTpnWlDMhUIWqgIzW3x3umc8MYv1ZlyHXv8CqI/P2DCl+UUw4HqQKvsFeia4t2NfZJYpDirpYBr007d4Cnu+3x7BV10KP4C31JQcJryYupJjZECaDzZa53sYR6zi3pidh6Zttb7fkQKtSydP6vStVtcoiMkHe5BraQStyr2WhE+YV66vwrKGp3IGV6JhH8kjsbJuTpgAVhkXlBUSbfkG6V30PbrM8j/qLNdic3cKeqSvjrecVAa5W2Q1lMrJuRn9MS9pvyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 LV2PR11MB6000.namprd11.prod.outlook.com (2603:10b6:408:17c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.13; Thu, 31 Jul
 2025 21:08:53 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%2]) with mapi id 15.20.8989.011; Thu, 31 Jul 2025
 21:08:53 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 1/6] idpf: add support for
 Tx refillqs in flow scheduling mode
Thread-Index: AQHb/ZLVR74ABX3+/kiNIRvA7bjSALRHyKUAgAGPi5CAAGP6gIADBaNQ
Date: Thu, 31 Jul 2025 21:08:40 +0000
Deferred-Delivery: Thu, 31 Jul 2025 21:08:04 +0000
Message-ID: <DM4PR11MB650204E85BA63C9E528AD920D427A@DM4PR11MB6502.namprd11.prod.outlook.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-2-joshua.a.hay@intel.com>
 <f23248bc-b873-41ed-b6b3-a9638b51eb3f@molgen.mpg.de>
 <DM4PR11MB65023EC8F1B1FC4664EB1F86D425A@DM4PR11MB6502.namprd11.prod.outlook.com>
 <47059a58-a12c-4a4d-ba00-fb057088a3f0@molgen.mpg.de>
In-Reply-To: <47059a58-a12c-4a4d-ba00-fb057088a3f0@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6502:EE_|LV2PR11MB6000:EE_
x-ms-office365-filtering-correlation-id: adf30e2c-4f81-475f-8c44-08ddd0767421
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SXh2T0NTSzd0MmRhSUhEUmdTRmw0NFJaOEUzU1RJZkxGTGIxajdUMDRwVDIr?=
 =?utf-8?B?YllDQ2RVSEZ5ZnBDTE1La3FrZC9CRXVpWkJOYTI4L0wzRXNKaFhJcUU0UUhi?=
 =?utf-8?B?bE1DMDlXNkNXS1M5aXdma05qV3laK0plc1I5VnhDQ1lYSlRVRHR6Qnk1TXo1?=
 =?utf-8?B?N0d4N29CWFhiVUFlbG8wa1A5eFVkbFN3WXNXb2hiSGdDbzUyS3A2cW5IWDUw?=
 =?utf-8?B?bDBEUGFtMFMrcExOTFZYczN6ZVllbTRPVEJlZkcyZWlNZ1pzeDlGZ3p0Rlpp?=
 =?utf-8?B?dFlua2ZMWnpRU1hNS2gzcGxpM1dzdStvbkVTcW1kd25Pa3d3Mnk4RjNGTFZt?=
 =?utf-8?B?RjB0REhRdkRnWFFOSTBkUGlSbzBhbm5kdXl0S3JGVHRRa1dCdUpoTzJRYWZR?=
 =?utf-8?B?blg2RzZtT2dHeiszbGJnczQ0clB1cTZVOXVCWjA1d1h4MTVoMnk0cE5hMnhw?=
 =?utf-8?B?T1Y2b0JvNlZPUFdLd3AwVkZVaHZGUmpwdVd0NlRLTnl4NDFmZkIrMThOL29N?=
 =?utf-8?B?ZCt5UjlKdzdsNkwwVXl5LzdzSFRRbWFNS3VJVUNBbVBCcDhIZTZpakJBSmZs?=
 =?utf-8?B?OXBHMUp5cTV2MXRvek5sWUF3bU5FV0RUQm9LRFUybjJCK1dIUkVDZVZKb0Fq?=
 =?utf-8?B?S1JzeTJ0SEkzZGM4c0dUOEl6ZnEreWJMcWNCSktjWXdZNENhVitjcjJtZTVE?=
 =?utf-8?B?YTAzd3JQV0dDSDhVclBWNllTdDBWakp4bzQ3dUljN3VQUFd5aGZYZ1pSNm5U?=
 =?utf-8?B?NWNGZFB0NEpIaEp4Q3NFd1d5UyszK05zOUdhTXJBak9DWnlBRGZWVjdJM3Zk?=
 =?utf-8?B?a0RRY1RkR2w1b3VrZmJNdVNJVFg0Uk1saFpUS3l5aVVHU0pKcFVqNGpMMG1i?=
 =?utf-8?B?VTVwN25EVCtKeDN5dkZ5VUhUNWZodUZwM1FMWm1KZ0QzRHFZSDA1RnpNRzlO?=
 =?utf-8?B?VXdDMW04MDFGV0xJNDgwc05nSi8zeCtBUWp6SVhHcHM5K2RjTlhSeXBxV2ts?=
 =?utf-8?B?cmpvcUU4bFdkVDcvOGNvOVdzclZlNWQ2T3RxbC9wWjRZU2JjeXNENk5HMnFj?=
 =?utf-8?B?TmY4RVJ4Y0tXckllellLZ3RnNkZBTVVJS3h2eEJRZXJCZXdtS2IxSGRCZ09B?=
 =?utf-8?B?WnlVR2EvK0d3TWZZTDRJNGRLRlRDSFprbm9LcXIvRDVPSFdJVWpONHp2MjFz?=
 =?utf-8?B?VHRuWnJwRnFOUU9BUUFEdk85WTdLU2hCZmF1RzZldys3YjJJNmNRUkordkNB?=
 =?utf-8?B?KzRZczRweGZuOFJMdTd0RGRPbndNM281azM3UDZLOGEwNElyOWtZMDU4Qnp1?=
 =?utf-8?B?NWVnVllmdVdBT3dFOTJYcFRWckxkUDh5MTdSWXM0WFRhWUtiUnFUUTlnM082?=
 =?utf-8?B?ckVaSEpVdDRKRUdkZ2pQUEc0dzIwQXN6Zkk5YlVZZXQvMmZEYWpVYW9DRURF?=
 =?utf-8?B?Yzl1amZFaTIyUGZjYUhZeXdZNGE4aDliSUtMMlR3VUgwL0gzNTRPOTlwYnhV?=
 =?utf-8?B?NllsamlKbU5xbDM4ekJSNGw5eTZ1MUliTnlzRE00K0FTek5ubFlxQzR4SUhk?=
 =?utf-8?B?eU01ZUJIYnBaTzEyZFhCbzljaXJ1ZzBoOE1PRXp3THpYeStKczRnU1NIM2Fv?=
 =?utf-8?B?cXlhV3lKdHMrMkZMdStEcm9uZVJNb1V2WmpybU1ZMGp1MGpoeSs4blJOSlV5?=
 =?utf-8?B?cS8vYytlZFJBNEtaSVdmUzRlYk1NeFZGRUlJWTRzekhkNVNxTjdOZEdUVFlI?=
 =?utf-8?B?VWRPRHdnei9selFRSkRwQlVpL0RxQ0tBdWdhMDREd0NYN21HbHRacG1DRCsx?=
 =?utf-8?B?alVuYUUremJrK3Rvdmh5Y1NEZnFDRWl4TFl1N0ZUck1XeXQ4SkJBUGJqMkJ2?=
 =?utf-8?B?QnIyOFVkNVNQY2UvNVE4SE1sNU5ELzdRbFc2WFM0d2FIam1oT3EyTzJZWmw1?=
 =?utf-8?B?Y2Jyb3c4UEc2OXNnUzZBcUNna1JZZmVnZ3lYdXh6SWFaT3d5T1JaRlFzbTZx?=
 =?utf-8?B?aEV1L0hCVFdBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dExEcWdSbkdzTVhJQ3R5VXFiMVI1Mjh6UWxqaGtxUk4vMWNTM0t1K2p5UWhO?=
 =?utf-8?B?THdpQzdVRTJnOTVoZTVNbDJyWHBERkF0WHlnbkxMUE01R3lTRnIvaG9DWTJQ?=
 =?utf-8?B?ck5zQlYxRzBzMHVCSUtROGRoam94ZWp6SjZOZzZKVDJ3aWx0Um1RLzNFb0E3?=
 =?utf-8?B?VGxsQ1RWbWpuY1cxZVNBV1Rya3pkaGRZbERJZGhmNklPb3VBOC9xYXRpL0JT?=
 =?utf-8?B?M214NEc2VDBrUTVZeHFwaTExR0p5TG54MW90eWgwY01NSGhHalh6dm8reVdk?=
 =?utf-8?B?M2NBSDRKQTU0VmhhVHpMdG1IMTRBNmhvZG1pa3BQZkRWSjc2TEMvb0xwQU1n?=
 =?utf-8?B?bEFrOXVuNC9LL3ZFWkVySUpGb2I0SGZEai84b3NsenJZYXpQbktObnpiRmty?=
 =?utf-8?B?RVhlWFVpYVNOZytNWDlaMEozbEVxTzdtWW5JaWgwZGZXeDRRU0ZxMTE4TlR5?=
 =?utf-8?B?aEY1aXgxeVdsUElocGV5M1pUWk5xb3Jvb05Sd0JkeWJyYzM5dEVreGJ4T08y?=
 =?utf-8?B?eVEvVGcxMnYyM3kxRkRRWmVHdVMxOXVvbmgzalpkQXpVenNndVVCRVRHSmZR?=
 =?utf-8?B?RjR4Uk16K2x2WTRxS1BTaGdma0VsVEJvRk9sUUkvcWtUUUN2NkExMTBDbEpw?=
 =?utf-8?B?YlRiejhzN2ZwR0ZwbnFYM0lsRkU2N3FVcFZ1L1l4NUluOGRhZmRKelh4cFE4?=
 =?utf-8?B?ZXhKQS8vTkpNbGtzKzdWZk5RODBGZjgrRjNLQnZoNkhSK1J1bGcrWTBTWThz?=
 =?utf-8?B?UnhKS2hQZy8yVEg1TnRZV1FrUlJ5QldYTUI1dzZ6ejd2cTErdmF3aHJ2b09P?=
 =?utf-8?B?QWpwOHJlckZOV3g3OGpBRk1sN1dScVJvNHFEZHNCbW81RmJrcGJkL2NtOFFt?=
 =?utf-8?B?a1puVVduNXlBdnUwUUorTDY5RWg3bk5NNzhCRkJTTjMvQTZrQlRYWnlCK0pQ?=
 =?utf-8?B?WTJxTlkxWlBlQWFLSnljQmp3OVk1U3JsNHJUbzdJdk9waVRTSVkxR0dEaFVz?=
 =?utf-8?B?WHRRWFhPeGgzdTBXR2tYUHRKVVZFSGFOTWdoL2w1YnhHYXhMM2s1RFlmbXRh?=
 =?utf-8?B?VHI1UDJjUFNJNWhHMFBONVR5dFRnL053TUQvNTVrZTEzdVNWUzdOMzlFZWo2?=
 =?utf-8?B?M1NNYW8ySE5TWXlMKzRVQVlCZTROWGZZOVY5R1kxaW1JS3NzMnI2ZGpBMjda?=
 =?utf-8?B?a1RPTE9tWGt4UE1XSXh4TnpPbUJzaUhDN0JPZ0VvV2RHSXhCM0grTGdIUVNS?=
 =?utf-8?B?RzhjaHZFVlNOa2Rwd3Mvb01uWEFPZVd3WERRemJqaENBamFWdkc4Nno2d1Rl?=
 =?utf-8?B?TXN5THNhVk1GTjAydm9valNtVDlyUE82bEpZMjFjN1VtZzNGTERiM21hNlE4?=
 =?utf-8?B?eFlISGdaS1IvOGRoUmt6MVI5RzNvaHpsY2l1NDVQVXBGeGVUUnNhbnVUZUFq?=
 =?utf-8?B?ZlR0d2tJSHFZcDZ4R2x2UThRY1VCaWFUK20wMWl2WFpNQW15d3VNSXRkZWl0?=
 =?utf-8?B?aW1ic0JYZjVReVpsak03TURSWXVlVnMrMFFGdVg5bVVQWU9NOGNjbVVjdVRR?=
 =?utf-8?B?WnJDaGJCNVBiTEUrUUFCS3c3OFZBaGsyQnZoN2M3bm9MMTVCalkzQUF6TWg2?=
 =?utf-8?B?UGRsRkFkcHdLbjFlK2JyOWpFcUxJaTI5cXMvaUlsN0lRc1dKT3Y1aEl5VldU?=
 =?utf-8?B?YTNuR0Znak1BS2ZVTFI2enM4MENwUXdWM0lSbkRZcmNIV3dCZng0K1B3anQ4?=
 =?utf-8?B?cXFvZCtJang4RmVoQmIyYTRkaGRKN09ydHRtWGdJbmFKMlUvTlpjYUdjZElZ?=
 =?utf-8?B?ZjhBbVJtNE1zaGhycC9GOFBqczNHREZFM2Y3K2s3Y2p3c0pleHpCTDRLakZF?=
 =?utf-8?B?Q1N6NU05ck0yU2xYV0lIVVFnc3Q4MGpxNzZBRGsrcFdicmI5Q3o5N0UzYURW?=
 =?utf-8?B?WjFLa2REOEE4SXQwTFNDeEpGUW5Sci9hQmtpLzMxczdGbisyNU0zY01LT3Vu?=
 =?utf-8?B?WGdQTVRzWHdMclRRaU84NjZpT0p6YUxLTmxpWkswTEJHbjNRcVpjUFVxSmFM?=
 =?utf-8?B?akV0MGtQZVdLWUZuajgwU2k2dkFzZkp2Zzh0RmVnTDBGdFVKLzFSU1ZWVFJE?=
 =?utf-8?Q?kzh9SwzYbiLc7PcnPTpyvnjCj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adf30e2c-4f81-475f-8c44-08ddd0767421
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2025 21:08:52.9082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HCrqrukIvEt/yW2pjLYn7xUyvI4a3O23VTrbqiRIAEfzjjCOU2UPkqlnqQIbKTv1CjPNhoCaFUiP9CWYp8czgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6000
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753996167; x=1785532167;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e1nhN+ABxIdmpvSyVSYLXAE3lfGxJF4Phwjt+uVxLv4=;
 b=EHWzA9yUI9EKCIs48h5BOaO7JAo/CGphvW0pnSbff02i98ZT79RRAXJW
 1x/+O+5X0qkoTICLhl12bnfyQuT91G7sM45zT2KZXRZEmQqe/Yt39kAhZ
 8P5qyvDvTwUsfD8g8xGSqpGPg44RsBVj/gDb4vlyvTO61nu5Q6KYcnkda
 iqqWwsYeEPdntMSOOoM4eLt/A8AkYyyHqFhzTl4cBs+1dTQHsT68yRtWg
 brxmIS+AtpM1wTK60Nl0U4WZH7P5ckaJ2wNnrtwWD5iwIzaoTo8ItC1bu
 troQsarKVy2ps0Y5rBG1D7Fb0yfEg8LhOtKqacISWgpIbXSanyTJuV3X9
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EHWzA9yU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/6] idpf: add support for
 Tx refillqs in flow scheduling mode
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

PiA+Pj4gSW4gY2VydGFpbiBwcm9kdWN0aW9uIGVudmlyb25tZW50cywgaXQgaXMgcG9zc2libGUg
Zm9yIGNvbXBsZXRpb24gdGFncw0KPiA+Pj4gdG8gY29sbGlkZSwgbWVhbmluZyBOIHBhY2tldHMg
d2l0aCB0aGUgc2FtZSBjb21wbGV0aW9uIHRhZyBhcmUgaW4gZmxpZ2h0DQo+ID4+PiBhdCB0aGUg
c2FtZSB0aW1lLiBJbiB0aGlzIGVudmlyb25tZW50LCBhbnkgZ2l2ZW4gVHggcXVldWUgaXMgZWZm
ZWN0aXZlbHkNCj4gPj4+IHVzZWQgdG8gc2VuZCBib3RoIHNsb3dlciB0cmFmZmljIGFuZCBoaWdo
ZXIgdGhyb3VnaHB1dCB0cmFmZmljDQo+ID4+PiBzaW11bHRhbmVvdXNseS4gVGhpcyBpcyB0aGUg
cmVzdWx0IG9mIGEgY3VzdG9tZXIncyBzcGVjaWZpYw0KPiA+Pj4gY29uZmlndXJhdGlvbiBpbiB0
aGUgZGV2aWNlIHBpcGVsaW5lLCB0aGUgZGV0YWlscyBvZiB3aGljaCBJbnRlbCBjYW5ub3QNCj4g
Pj4+IHByb3ZpZGUuIFRoaXMgY29uZmlndXJhdGlvbiByZXN1bHRzIGluIGEgc21hbGwgbnVtYmVy
IG9mIG91dC1vZi1vcmRlcg0KPiA+Pj4gY29tcGxldGlvbnMsIGkuZS4sIGEgc21hbGwgbnVtYmVy
IG9mIHBhY2tldHMgaW4gZmxpZ2h0LiBUaGUgZXhpc3RpbmcNCj4gPj4+IGd1YXJkcmFpbHMgaW4g
dGhlIGRyaXZlciBvbmx5IHByb3RlY3QgYWdhaW5zdCBhIGxhcmdlIG51bWJlciBvZiBwYWNrZXRz
DQo+ID4+PiBpbiBmbGlnaHQuIFRoZSBzbG93ZXIgZmxvdyBjb21wbGV0aW9ucyBhcmUgZGVsYXll
ZCB3aGljaCBjYXVzZXMgdGhlDQo+ID4+PiBvdXQtb2Ytb3JkZXIgY29tcGxldGlvbnMuIFRoZSBm
YXN0IGZsb3cgd2lsbCBjb250aW51ZSBzZW5kaW5nIHRyYWZmaWMNCj4gPj4+IGFuZCBnZW5lcmF0
aW5nIHRhZ3MuIEJlY2F1c2UgdGFncyBhcmUgZ2VuZXJhdGVkIG9uIHRoZSBmbHksIHRoZSBmYXN0
DQo+ID4+PiBmbG93IGV2ZW50dWFsbHkgdXNlcyB0aGUgc2FtZSB0YWcgZm9yIGEgcGFja2V0IHRo
YXQgaXMgc3RpbGwgaW4gZmxpZ2h0DQo+ID4+PiBmcm9tIHRoZSBzbG93ZXIgZmxvdy4gVGhlIGRy
aXZlciBoYXMgbm8gaWRlYSB3aGljaCBwYWNrZXQgaXQgc2hvdWxkDQo+ID4+PiBjbGVhbiB3aGVu
IGl0IHByb2Nlc3NlcyB0aGUgY29tcGxldGlvbiB3aXRoIHRoYXQgdGFnLCBidXQgaXQgd2lsbCBs
b29rDQo+ID4+PiBmb3IgdGhlIHBhY2tldCBvbiB0aGUgYnVmZmVyIHJpbmcgYmVmb3JlIHRoZSBo
YXNoIHRhYmxlLiAgSWYgdGhlIHNsb3dlcg0KPiA+Pj4gZmxvdyBwYWNrZXQgY29tcGxldGlvbiBp
cyBwcm9jZXNzZWQgZmlyc3QsIGl0IHdpbGwgZW5kIHVwIGNsZWFuaW5nIHRoZQ0KPiA+Pj4gZmFz
dCBmbG93IHBhY2tldCBvbiB0aGUgcmluZyBwcmVtYXR1cmVseS4gVGhpcyBsZWF2ZXMgdGhlIGRl
c2NyaXB0b3INCj4gPj4+IHJpbmcgaW4gYSBiYWQgc3RhdGUgcmVzdWx0aW5nIGluIGEgY3Jhc2hl
cyBvciBUeCB0aW1lb3V0Lg0KPiA+Pg0KPiA+PiDigJxpbiBhIGNyYXNo4oCdIG9yIGp1c3Qg4oCc
Y3Jhc2hlc+KAnSB3dGloIG5vIGFydGljbGUuDQo+ID4NCj4gPiBXaWxsIGZpeC4NCj4gPg0KPiA+
Pg0KPiA+Pj4gSW4gc3VtbWFyeSwgZ2VuZXJhdGluZyBhIHRhZyB3aGVuIGEgcGFja2V0IGlzIHNl
bnQgY2FuIGxlYWQgdG8gdGhlIHNhbWUNCj4gPj4+IHRhZyBiZWluZyBhc3NvY2lhdGVkIHdpdGgg
bXVsdGlwbGUgcGFja2V0cy4gVGhpcyBjYW4gbGVhZCB0byByZXNvdXJjZQ0KPiA+Pj4gbGVha3Ms
IGNyYXNoZXMsIGFuZC9vciBUeCB0aW1lb3V0cy4NCj4gPj4+DQo+ID4+PiBCZWZvcmUgd2UgY2Fu
IHJlcGxhY2UgdGhlIHRhZyBnZW5lcmF0aW9uLCB3ZSBuZWVkIGEgbmV3IG1lY2hhbmlzbSBmb3IN
Cj4gPj4+IHRoZSBzZW5kIHBhdGggdG8ga25vdyB3aGF0IHRhZyB0byB1c2UgbmV4dC4gVGhlIGRy
aXZlciB3aWxsIGFsbG9jYXRlIGFuZA0KPiA+Pj4gaW5pdGlhbGl6ZSBhIHJlZmlsbHEgZm9yIGVh
Y2ggVHhRIHdpdGggYWxsIG9mIHRoZSBwb3NzaWJsZSBmcmVlIHRhZw0KPiA+Pj4gdmFsdWVzLiBE
dXJpbmcgc2VuZCwgdGhlIGRyaXZlciBncmFicyB0aGUgbmV4dCBmcmVlIHRhZyBmcm9tIHRoZSBy
ZWZpbGxxDQo+ID4+PiBmcm9tIG5leHRfdG9fY2xlYW4uIFdoaWxlIGNsZWFuaW5nIHRoZSBwYWNr
ZXQsIHRoZSBjbGVhbiByb3V0aW5lIHBvc3RzDQo+ID4+PiB0aGUgdGFnIGJhY2sgdG8gdGhlIHJl
ZmlsbHEncyBuZXh0X3RvX3VzZSB0byBpbmRpY2F0ZSB0aGF0IGl0IGlzIG5vdw0KPiA+Pj4gZnJl
ZSB0byB1c2UuDQo+ID4+Pg0KPiA+Pj4gVGhpcyBtZWNoYW5pc20gd29ya3MgZXhhY3RseSB0aGUg
c2FtZSB3YXkgYXMgdGhlIGV4aXN0aW5nIFJ4IHJlZmlsbA0KPiA+Pj4gcXVldWVzLCB3aGljaCBw
b3N0IHRoZSBjbGVhbmVkIGJ1ZmZlciBJRHMgYmFjayB0byB0aGUgYnVmZmVyIHF1ZXVlIHRvIGJl
DQo+ID4+PiByZXBvc3RlZCB0byBIVy4gU2luY2Ugd2UncmUgdXNpbmcgdGhlIHJlZmlsbHFzIGZv
ciBib3RoIFJ4IGFuZCBUeCBub3csDQo+ID4+PiBnZW5lcmNpemUgc29tZSBvZiB0aGUgZXhpc3Rp
bmcgcmVmaWxscSBzdXBwb3J0Lg0KPiA+Pg0KPiA+PiBnZW5lcippKmNpemUNCj4gPg0KPiA+IFdp
bGwgZml4Lg0KPiA+DQo+ID4+DQo+ID4+PiBOb3RlOiB0aGUgcmVmaWxscXMgd2lsbCBub3QgYmUg
dXNlZCB5ZXQuIFRoaXMgaXMgb25seSBkZW1vbnN0cmF0aW5nIGhvdw0KPiA+Pj4gdGhleSB3aWxs
IGJlIHVzZWQgdG8gcGFzcyBmcmVlIHRhZ3MgYmFjayB0byB0aGUgc2VuZCBwYXRoLg0KPiA+Pj4N
Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IEpvc2h1YSBIYXkgPGpvc2h1YS5hLmhheUBpbnRlbC5jb20+
DQo+ID4+PiBSZXZpZXdlZC1ieTogTWFkaHUgQ2hpdHRpbSA8bWFkaHUuY2hpdHRpbUBpbnRlbC5j
b20+DQo+ID4+PiAtLS0NCj4gPj4+IHYyOg0KPiA+Pj4gLSByZW9yZGVyIHJlZmlsbHEgaW5pdCBs
b2dpYyB0byByZWR1Y2UgaW5kZW50YXRpb24NCj4gPj4+IC0gZG9uJ3QgZHJvcCBza2IgaWYgZ2V0
IGZyZWUgYnVmaWQgZmFpbHMsIGluY3JlbWVudCBidXN5IGNvdW50ZXINCj4gPj4+IC0gYWRkIG1p
c3NpbmcgdW5saWtlbHkNCj4gPj4+IC0tLQ0KPiA+Pj4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWRwZi9pZHBmX3R4cnguYyB8IDkzDQo+ICsrKysrKysrKysrKysrKysrKystLQ0KPiA+
Pj4gICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguaCB8ICA4ICst
DQo+ID4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDkxIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9u
cygtKQ0KPiA+Pj4NCj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZHBmL2lkcGZfdHhyeC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9p
ZHBmX3R4cnguYw0KPiA+Pj4gaW5kZXggNWNmNDQwZTA5ZDBhLi5kNTkwODEyNjE2M2QgMTAwNjQ0
DQo+ID4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5j
DQo+ID4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5j
DQo+IA0KPiBb4oCmXQ0KPiANCj4gPj4+IEBAIC0yNjcsNiArMjcxLDI5IEBAIHN0YXRpYyBpbnQg
aWRwZl90eF9kZXNjX2FsbG9jKGNvbnN0IHN0cnVjdA0KPiBpZHBmX3Zwb3J0ICp2cG9ydCwNCj4g
Pj4+ICAgIAl0eF9xLT5uZXh0X3RvX2NsZWFuID0gMDsNCj4gPj4+ICAgIAlpZHBmX3F1ZXVlX3Nl
dChHRU5fQ0hLLCB0eF9xKTsNCj4gPj4+DQo+ID4+PiArCWlmICghaWRwZl9xdWV1ZV9oYXMoRkxP
V19TQ0hfRU4sIHR4X3EpKQ0KPiA+Pj4gKwkJcmV0dXJuIDA7DQo+ID4+PiArDQo+ID4+PiArCXJl
ZmlsbHEgPSB0eF9xLT5yZWZpbGxxOw0KPiA+Pj4gKwlyZWZpbGxxLT5kZXNjX2NvdW50ID0gdHhf
cS0+ZGVzY19jb3VudDsNCj4gPj4+ICsJcmVmaWxscS0+cmluZyA9IGtjYWxsb2MocmVmaWxscS0+
ZGVzY19jb3VudCwgc2l6ZW9mKHUzMiksDQo+ID4+PiArCQkJCUdGUF9LRVJORUwpOw0KPiA+Pj4g
KwlpZiAoIXJlZmlsbHEtPnJpbmcpIHsNCj4gPj4+ICsJCWVyciA9IC1FTk9NRU07DQo+ID4+PiAr
CQlnb3RvIGVycl9hbGxvYzsNCj4gPj4+ICsJfQ0KPiA+Pj4gKw0KPiA+Pj4gKwlmb3IgKHUzMiBp
ID0gMDsgaSA8IHJlZmlsbHEtPmRlc2NfY291bnQ7IGkrKykNCj4gPj4NCj4gPj4gTm8gbmVlZCB0
byBsaW1pdCB0aGUgbGVuZ3RoLCBhcyBmYXIgYXMgSSBjYW4gc2VlLg0KPiA+DQo+ID4gQXBvbG9n
aWVzLCBJJ20gbm90IHN1cmUgSSBmb2xsb3cuIENhbiB5b3UgcGxlYXNlIGNsYXJpZnk/DQo+IA0K
PiBTb3JyeSwgZm9yIGJlaW5nIGFtYmlndW91cy4gSSBtZWFudCwganVzdCB1c2UgYHVuc2lnbmVk
IGludGAgYXMgdHlwZSBmb3INCj4gdGhlIGNvdW50aW5nIHZhcmlhYmxlLg0KDQpBaCwgc3VyZSwg
d2lsbCBmaXguDQoNCj4gDQo+IFvigKZdDQo+IA0KPiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4g
UGF1bA0KPiANCj4gDQo+IFBTOiBKdXN0IGEgbm90ZSwgdGhhdCB5b3VyIGNsaWVudCBzZWVtcyB0
byBoYXZlIHdyYXBwZWQgc29tZSBvZiB0aGUgY29kZQ0KPiBsaW5lcy4NCg0KTm90ZWQsIEknbGwg
bG9vayBpbnRvIGl0LiBUaGFua3MhDQpKb3NoDQo=
