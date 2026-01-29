Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKx7BG02e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:29:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57637AEAB5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:29:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C234821FE;
	Thu, 29 Jan 2026 10:28:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JR03K7KJhAyj; Thu, 29 Jan 2026 10:28:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 768C183D46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682538;
	bh=MQt/mYfF+n1NUP1+XhuN7P9PCXVYXV2ubWe3CsloKHg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wDY8Tv7S4dLk6Lb/jmQIh/ncw0lKMY8bL0SXl6XEIE05znND2zA9nA2vZGjG7CTbe
	 BjEkJSoTxyJAxi7/FMKuy53YwvGrhpknFigBgSzxco2ogtcSU59hRxxbdeJRKqjmBz
	 Ltvokoaykd0GKu0J+hvSXne5Uydm/JB3mCYaDcYxT5WUb2Hw29Vc1+J3acLxb9NtEF
	 Hdy1ir/hAc4/HqzL9Kk3L7XKAcraEA2x91Qj6jH0pJFdpKnkCzmfXi45FEZfDQsZHB
	 7EBbiQHFBRSXwJsmwWpe/CstrTsiwTV5L3958Nl93qKpWTUoXq8KFY8sL59ZjSrV/I
	 jocnmMK68kdFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 768C183D46;
	Thu, 29 Jan 2026 10:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 32BCB1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23C1E6086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:28:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vn5H1FIG684b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:28:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2AB7E60866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AB7E60866
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AB7E60866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:28:54 +0000 (UTC)
X-CSE-ConnectionGUID: q7FNDQ1eSjOHKEwKDiWnyg==
X-CSE-MsgGUID: cqOe7XUNS6yVG3iuqx1EuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74778650"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="74778650"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:28:55 -0800
X-CSE-ConnectionGUID: 9s0KM594TfCOUkgIdmNB3A==
X-CSE-MsgGUID: KhzSx2fHQNm8uqyjL5KZ/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213041986"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:28:54 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:28:54 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:28:54 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.49)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:28:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qxbM4wce/7rgyLMTK+YxbdcIsraeT/XZwVc3uSv3KAEwxzwJ10VOUyaTxj+SwBRlI9RLq6RdrUjwOR6uFdZFLsr87Nb+zP6+28w09S978efrm4oXvZak8nUbM+skamKE2DEJzBJggROYo7XYhJy6UHYkjnN7YYxTkia4tzDf20VMd1BQGtBoTSfbLq6iStqBl8gYr7MYHKnyu3GWJmZDeWbWnjmyt9M6sAGCbm1q7ONAR5zp3A0J38O5kEVaRLfyZpV6fTMFsp9SptE/AxkzHc+Wze0yrzUXC90qVUSZ2+rSEf3VZDfqDz3n/2u73q+kHx8LIbynWAxLJmNPKzBJ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MQt/mYfF+n1NUP1+XhuN7P9PCXVYXV2ubWe3CsloKHg=;
 b=Z6t4jAs1TI6/zpPv6VSprgHjamcS8fvGNN7Bker8mJ8GaBUxAQeZ6ALEhpDiW+ea8b8+7kwmNKTJgi7GGVl5+e+XzZUyC/emqNZGYYanRzbndRuAMYv4MDkFs6nCIPqyFJc6OzxnYzjBdf26EShJLm7hGnwcSC46VwBpixCrc3wYjIUGKAn+Elf0sBqTqAbYufeYIxq8OU43FJz0F5AQXGFYF5iKa0DpRXMAErFxzM8Vl/pfRtAIQyjGVxSvDPd56vk3qnfAxkfxY6URlXH7NIWt5PN9My6w2wpGRnpwccsO44oDPC4w6zyrVb2JSY2OlGyJYw0b5ZJas+L66XedQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:28:51 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:28:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 09/30] docs: kdoc_parser: add some
 debug for variable parsing
Thread-Index: AQHckPaF6zeLPVoZnUC5LohaWZZ6E7Vo8ipA
Date: Thu, 29 Jan 2026 10:28:51 +0000
Message-ID: <IA3PR11MB8986F85BF8627055FCAB10B1E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <ea69d87d4de04e3112b893a3a49adda47c6c87fa.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <ea69d87d4de04e3112b893a3a49adda47c6c87fa.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: 13fa881a-1165-4742-1fc5-08de5f213234
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?eUVZOFROYW8ram5OYk0rdE1HQkNGbm5tNGs5c1pBd2lmdFpOcnUyaDhUTDdZ?=
 =?utf-8?B?cytFS3JJL290elNXOVl1bFVVbWRRL0tNUTdyQ1A1YUx6OWVJRkRoMnpOZmhR?=
 =?utf-8?B?V0VXVHpVN2dhM0FsZWJjN1JrSDBYZjFRQW9wdG1nd1RPdlI0ckJNdzRuRExl?=
 =?utf-8?B?blQwNzBhNFFURXNydTJQdEFzSmo4RFpsOG10ek15Zk5MajdkQzBwU0llYWdD?=
 =?utf-8?B?V2k3VVF2eDliZHZLZHBVejA5Y1RnUG14MGVmTU5PbFVuMnFUQ0prR21BeWxx?=
 =?utf-8?B?Yit3d1hteFlTaEx2WE9OY0lEaDEzTHpMaVNsaitYbjJUMUNHVGxWVHhpcXBQ?=
 =?utf-8?B?TWZwcDRyc1JwUjBhaGhzKzdqcjlxUi9QMzcrL2h5a2tOT3pKZU9vL29OT1Rt?=
 =?utf-8?B?YUZ4SkUwVlV0WUJZQ0JhTmVCZkd5eVRodmJWUCtXMEEvSmFQVTh1SHNnblpF?=
 =?utf-8?B?TEJmTUN5b0lwSS9JNEpNVUoxSWVXRWd0VnZmclY2Z2Y0VFRDOUxnZmVsN1Zz?=
 =?utf-8?B?bHAra2t6ODQrUk5Vc1ZTOFVlY3BGNi9pdkxOdW9rbkt4SmYvUW5sakRSemty?=
 =?utf-8?B?SHpVbXdWMHdvQTB4WHFZQm5KSGFRZTV4MHVQMmRPRlFYVFVtdmZUdU9EcjFU?=
 =?utf-8?B?MkdyU3QrQUwvR2NVK1VuaU5JNGUvczVxdE1ZTjd4YmV5VG5GTDJYTmpNZVIx?=
 =?utf-8?B?N2FpYUR0OXRKUjIvM2txa0l5clc4ZW9tOXVvLzd0ZThRUUhoNnhTd3RuYTVW?=
 =?utf-8?B?cE41RWUydVExazEvNUtaMUZRYjgrU0NpUDNJRWxQWXJ4Q3UwbVZhb0pJdG8w?=
 =?utf-8?B?V09BeVV5RzV6aWlidU5zL09FOE1qSFFXV25CSVk3dkw1Rm9BdFVNT1o3UW5M?=
 =?utf-8?B?WGk3ak5WZTFQdU5QMXVhekNrUEhaNkFhZSszdDN0Ykw2bGxnL0d1WHFoNXpZ?=
 =?utf-8?B?ZWNSNGpPQURydUUrYkNIRmltdkFnTWVUalU0a1FLNC91TjhyM1hRMDFla0Za?=
 =?utf-8?B?SnlBQWttcFZRcmdFZlhGQUNqQzd4L0RqQlhiVXE5RFJzZDVVNnhHcEJ4L2dk?=
 =?utf-8?B?M3Y3R2pGdFFWdmk5RnA5bUhmakhScWIyM3NUUUg2bGdpdG9vUEJiajZNY0tx?=
 =?utf-8?B?WHZNR3ExR0JwVGYxR2FuVnAvZkYxSElmYStiTlVKM1lRczE5RExBTXJISERY?=
 =?utf-8?B?Z2tKS0txZ2JiM1NLNTg5THBEVVR5T25DUjUyRkFrYUJvWGJDVldvN0xVT1Z6?=
 =?utf-8?B?b09McVRkekF1cXpuNFJvZ3FGWmEzMmlOOXJ1dURDR0N3WUpRcURHNU54VE5Z?=
 =?utf-8?B?aXMxZHIyWENjenVnQzVTZGxkdkVIa1dyVmZNVVdYYXdMZWFXYTVDRlRCVGVU?=
 =?utf-8?B?R2ZQSTFqaW0zTHAxSms3Q0pEYnU0V2Z5aGREK0xwQ2xtUldjVVJWWDNkWGxt?=
 =?utf-8?B?UHFUR09wem8rbW0vL2lWaWFNeUwvL25LcXdyVzZJUWhOT3FRZ0YwVnZsV25u?=
 =?utf-8?B?L0hiOEYyR2dKYjl5UXRlSEMySFhXOFZXM0VBazNHYlNXZ1k4cFBXUitVQlc4?=
 =?utf-8?B?YkNTb3pFOHFZeGRzTEJJWkFPYWhEMC9ZWGdVbExxZHJnVTlxaEVMZEZ2RzMw?=
 =?utf-8?B?V2pheDVwQmVkOFI0MDluOEVuRWQ1dmxHN2xwYXVLOG1LOFhTTEZweEp5TUpi?=
 =?utf-8?B?Vm9xaFBRNE5YbW9JMVpNT3J3UXJEYzlHelh6RnExRHljSEd3NTNPOGRIeXlj?=
 =?utf-8?B?eFp2ZDJEbHd2c1VyL1EyeHV4ZXYwaVh4c1ExT2NueVpmYVdiOXN6OE14L05n?=
 =?utf-8?B?amIwWmxpd3RmRnFYNVc1aHphQ3ZRTTRQd2E3RU1kK3pHMUduOFcrcFc5Mmht?=
 =?utf-8?B?b0gxdmoyTS9VZzFUMGJValBSNTloeWZGSVlTa1JQemowb3RKZDM5NU1LR0Z6?=
 =?utf-8?B?eTZCZVExSjVDQ3dvWjZGdXpOZU9WOVZ4UDZQdW12QXhldGZoVlNuTzZjYXA5?=
 =?utf-8?B?eVhBVUZ4YTU5TDk1QzJMZjZFK0FHQk9aSlZTd0dXTkdXWVloVWhnTWgrOTVw?=
 =?utf-8?B?Y1drS1pualozaUNoam5WNEFZWkpQbENEbDkwR0dCa1NUa3gvU0FPYnFUTit1?=
 =?utf-8?B?SVBMWmFkZ0t0eCsvMTFYcDk0TE1rZENEKy9PaWxjWTdNcVNabHBUWUlrbDhp?=
 =?utf-8?Q?LXfboVxcGnVFvj4FyIioPbc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THJpeUEyTzM2aFlRTDM3aXhnK1JJYmlDWC93TXJKVi9FTG5zTXcrVytaSVVN?=
 =?utf-8?B?SmYwUnFXVkI2cVlYV0U3UnhXZjNZZGI0TzU5Q2FoczR1ZWkwQ3pCcE80RDlU?=
 =?utf-8?B?Um8wZElyTVVaVGxEeENHTFc4cHdnazhGdVRLZ2JsT2JLdjBnZkM3dElRc3Va?=
 =?utf-8?B?RFVIRFIvc2hKL3c5NDFlMFgycVlHbm5xR0oyYmI0Rk1sV1MyQWRNN0dKKzV4?=
 =?utf-8?B?NkM4d3RKZUpyNlRzc293TlgwTG0xblRMWUlkMnFtL3NCMTVmTVpwSk1qa0k4?=
 =?utf-8?B?cjFwVFhTbi9xd3Y1QzVaYnNFc2FqaGlxRGFqTzlsTEYxNkQ3b1g0aFZnUjdt?=
 =?utf-8?B?aVB1ZUdnNmhiRUVjUUlUQ2QrSzhaQWhuOVVmY0x0Y20zTDJHNlRsL1k2RHVu?=
 =?utf-8?B?VzhYTVcwRjNzRmx4T0JYSmYwT29lMHVRRG1CUUdtNVVLRS9zNE94d3NTY0Vy?=
 =?utf-8?B?WVRDYTYxQ3ZFMi9tRWhoOHp4YmN5bkg0dGJzSnhqMk5wcjhuSUlRZjh4Vnk1?=
 =?utf-8?B?cjd3VkFlMHVucHRldG5lUGtUZERBcUQyU2J4TDBpbEtybmhja05IMmsvTmsx?=
 =?utf-8?B?c0VEWFhRTWNRWUo2MGNsSXl5M25DRWdBTnhBNVl2TzhHcTRoV0RKQVJJSXVn?=
 =?utf-8?B?NGk4YzBLUEJPSlZBN1MxUHpPTG5xYWRBSWVwV2Q3TXFLblo4a3daR1BUWlh1?=
 =?utf-8?B?OWU4d1Y0d29qR3VXNW83UG1QQ3EvZG9pb3J3L1h0STVuelhGM1JSTFpjalBr?=
 =?utf-8?B?RWtsOHhTaURGMHIxdGROWFlqS0w0d1k0dDA5ajY4YXg5WWZ6dEhHbWJMMk1V?=
 =?utf-8?B?UUlSbUEzUjBmOHo1Z2tiWm10emRUWDY4enNKV0JtYmNKY1NRKzQ3b2lydE9J?=
 =?utf-8?B?aUNSWldpTnA5QWg5RTdyczFMYk9raHFIVDc5TEltTlhRQmtaN2pYRVl0cmUw?=
 =?utf-8?B?TFpRU2M5c0xOWjhVT1NsajdibGtBN1orZklWZ3BzaStTUWNUcE9SNmRTZUtF?=
 =?utf-8?B?bzBzNm12TXJnOUNmcmFucDBld1JuNnoyQWxDcmhtcGE2QlhmSWFSTTRPMXhq?=
 =?utf-8?B?OEVncGUzcmQvbUxyOHZtSFhnK1lUMSt2Q0lEK2V4SjMzclNndFBQMHNIRTZD?=
 =?utf-8?B?YzRCdmpWeGVERTJaTzJnRm14eGJUaTQ0NmZRTi9uRWhWSFdXcEFwaDgvUTFJ?=
 =?utf-8?B?bC95QlBiNENaS1IrNlhlaXRWK09QaEZLUU1jeDRmNUFNODdoZmhVOFgvM3dh?=
 =?utf-8?B?dml5ZjlSeXRqOEtCSmdpbm91aEs2ZndDVTJLOXgyRGREOVZPbGdQaS9kTjlP?=
 =?utf-8?B?RFFyOEw2Q01tdnRWQ2U3RGt3M2Q5NVlMK3dOTE5mdkZQUVNUSVNjNDNWcW9i?=
 =?utf-8?B?ck5XdUlkdW1YNEhHbzR2dHgrZ25RRW9kSGFueUxqd0dQaUpidkFDMThkVFhn?=
 =?utf-8?B?bEMxbzBFZ1MzenFueHB6SDlpQjlINVNGMUsxVEhwV3g5MUlUNnB3N0pWakNS?=
 =?utf-8?B?Mk51ei9lQ2tndHZ1NnczZHZMcWk2cVVZYUszNVpFdzlOZTFlTkp0STJBZ2pp?=
 =?utf-8?B?M01pY2RrZnR4dUZreDJQVCtaOTMxQnJwVU96THFpS2tZditlUXZSL05MOUR6?=
 =?utf-8?B?cXpNVWk3clhYREh3TDYyT3c3RzI3ZWVXMWVaMEZHTExWWm9Ob21TbmFLeXo2?=
 =?utf-8?B?Qk9JM3lMVC9HZWRkb0M5bk5LZWRIaFNnaWdpQ2dyUTlmcWxtZURPQUZFaVFG?=
 =?utf-8?B?Yk9JNkp5djYxSGxIZTNGYlRJQjY1TkpFaVFLcHhOTERVRk1rbVdkUVBYbisr?=
 =?utf-8?B?SytsWUdwcjAvSWdTa1JSUkhheWIrME5vY1RJM0NnOE00YTkxMkpvRTRRWkdh?=
 =?utf-8?B?YUpLRTBPNjdiak9ERVdmcEVtUGpBak5la3ZIVDF6bjB3Uk1ZcXRJek9NZlF4?=
 =?utf-8?B?QTdENHVhZDlUK1Jaa1dNelVLK0p4RldabTdlQ1oxZnhBWmVMUjlET1liSHJW?=
 =?utf-8?B?NVNqemRaNnBNa0tBQVFURjN6TVcwRzllQmpTMkd1N09Pd1AvMEpZZG9Ha05a?=
 =?utf-8?B?K1JmS2h6RzV5OEhaYjZIVGNmT1JwRW0zcDJ4UEc4bWtTRTNTeXZyemtVdDha?=
 =?utf-8?B?ZGdtcDNVbGFPOXh6Z2dUZ2ZYaytlWDhtY3JIUzdyZy84VHl1a2RQanNkVFVI?=
 =?utf-8?B?UWFRd0tCdDJReFMzd3A3c2pGVHdEVDV5dUN5V0pWcXB1eHNnbFkvcnhYaWE5?=
 =?utf-8?B?SXVTUmRFQTJiTjBQWTBqcXcrdTdub1c5UWI1SWJNRTYwUTN0R2Y2QmVVNjNt?=
 =?utf-8?B?SFlqdG1sVkRFRnFOMUswZmRNSDllV1YzbE93bG43WHNydm1IRXEzeEgrdU1l?=
 =?utf-8?Q?sr8C4wfABaZT3VtI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13fa881a-1165-4742-1fc5-08de5f213234
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:28:51.3423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g9wpIwF01Y0IIi0CWwSsnYXGl/YRIXQAF0qcPe4xIXc65R6WtIn7RnJbbFhjkrQNyNYDHs/cQ5l0Y6NcNfsCEMqNZAqLLsVizy+J9qK884A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682535; x=1801218535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MQt/mYfF+n1NUP1+XhuN7P9PCXVYXV2ubWe3CsloKHg=;
 b=eUXnHn/r5+7h2GWRNLWzQciqs/20nY3R/EfarBcVQN2wr1miFtKB7sAZ
 KfNRMIdVZmeevhBix62be3BJbkm45eizZnA+HUdz7UBMnaaExhvDhq2eI
 vh+D6B3TOeZIG7QfsYTwt6xAGfxHIL9UbZm7u0D0IcHEBJRGr2YzeOdCV
 h/X/Vy0cjYLl8njt+HnruEiBcc1mu0ODi8zI1owxPJQ4jDKjuCHsHzcR1
 mP548BqoVJHiTM1pgPAVRYuqcEwHIKHfg00T0rCGXKJQLus6qntUyWXJG
 J4PvDfA0/7dAGrt6eFVHOtRTyITj2t3xhm41Lo4yNsHiZNZJvErSHCCCD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eUXnHn/r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 09/30] docs: kdoc_parser: add some
 debug for variable parsing
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,lwn.net:email,infradead.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 57637AEAB5
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDA5LzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogYWRkDQo+IHNvbWUgZGVidWcgZm9yIHZhcmlhYmxlIHBhcnNpbmcNCj4gDQo+IFRoaXMg
aXMgYSBuZXcgcGFyc2VyIHRoYXQgd2UncmUgc3RpbGwgZmluZS10dW5pbmcuIEFkZCBzb21lIGV4
dHJhDQo+IGRlYnVnIG1lc3NhZ2VzIHRvIGhlbHAgYWRkcmVzc2luZyBpc3N1ZXMgb3ZlciB0aGVy
ZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYito
dWF3ZWlAa2VybmVsLm9yZz4NCj4gQWNrZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZy
YWRlYWQub3JnPg0KPiBUZXN0ZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQu
b3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weSB8IDEx
ICsrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBiL3Rv
b2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBpbmRleCBjYmZkYWJhMzk0OTQu
LmNjZWU0ZTBiY2FhYiAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2Nf
cGFyc2VyLnB5DQo+ICsrKyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0K
PiBAQCAtMTAzMywxMSArMTAzMywxOSBAQCBjbGFzcyBLZXJuZWxEb2M6DQo+ICAgICAgICAgICAg
ICAgICAgZGVjbGFyYXRpb25fbmFtZSA9IHIuZ3JvdXAoMSkNCj4gDQo+ICAgICAgICAgICAgICBk
ZWZhdWx0X3ZhbCA9IHIuZ3JvdXAoMikNCj4gKw0KPiArICAgICAgICAgICAgc2VsZi5jb25maWcu
bG9nLmRlYnVnKCJWYXJpYWJsZSBwcm90byBwYXJzZXI6ICVzIGZyb20NCj4gJyVzJyIsDQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgci5ncm91cHMoKSwgcHJvdG8pDQo+ICsN
Cj4gICAgICAgICAgZWxzZToNCj4gICAgICAgICAgICAgIHI9IEtlcm5SZShPUFRJT05BTF9WQVJf
QVRUUiArDQo+IHIiKD86W1x3X10qKT9ccysoPzpcKispPyg/Oltcd19dKylccypbXGRcXVxbXSpc
cyooPS4qKT8iKQ0KPiANCj4gICAgICAgICAgICAgIGlmIHIubWF0Y2gocHJvdG8pOg0KPiAgICAg
ICAgICAgICAgICAgIGRlZmF1bHRfdmFsID0gci5ncm91cCgxKQ0KPiArDQo+ICsgICAgICAgIGlm
IGRlZmF1bHRfdmFsOg0KPiArICAgICAgICAgICAgc2VsZi5jb25maWcubG9nLmRlYnVnKCJkZWZh
dWx0OiAnJXMnIiwgZGVmYXVsdF92YWwpDQo+ICsNCj4gICAgICAgICAgaWYgbm90IGRlY2xhcmF0
aW9uX25hbWU6DQo+ICAgICAgICAgICAgIHNlbGYuZW1pdF9tc2cobG4sZiJ7cHJvdG99OiBjYW4n
dCBwYXJzZSB2YXJpYWJsZSIpDQo+ICAgICAgICAgICAgIHJldHVybg0KPiBAQCAtMTA0NSw2ICsx
MDUzLDkgQEAgY2xhc3MgS2VybmVsRG9jOg0KPiAgICAgICAgICBpZiBkZWZhdWx0X3ZhbDoNCj4g
ICAgICAgICAgICAgIGRlZmF1bHRfdmFsID0gZGVmYXVsdF92YWwubHN0cmlwKCI9Iikuc3RyaXAo
KQ0KPiANCj4gKyAgICAgICAgc2VsZi5jb25maWcubG9nLmRlYnVnKCInJXMnIHZhcmlhYmxlIHBy
b3RvdHlwZTogJyVzJywNCj4gZGVmYXVsdDogJXMiLA0KPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZGVjbGFyYXRpb25fbmFtZSwgcHJvdG8sIGRlZmF1bHRfdmFsKQ0KPiArDQo+ICAg
ICAgICAgIHNlbGYub3V0cHV0X2RlY2xhcmF0aW9uKCJ2YXIiLCBkZWNsYXJhdGlvbl9uYW1lLA0K
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdWxsX3Byb3RvPWZ1bGxfcHJvdG8s
DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRlZmF1bHRfdmFsPWRlZmF1bHRf
dmFsLA0KPiAtLQ0KPiAyLjUyLjANCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3Yg
PGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
