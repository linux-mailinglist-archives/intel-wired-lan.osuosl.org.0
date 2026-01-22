Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGV5IRMJcmmOagAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 12:25:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC50065F2F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 12:25:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8C5B6F6E4;
	Thu, 22 Jan 2026 11:25:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id drhaEzcHcdhz; Thu, 22 Jan 2026 11:25:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D27666F6E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769081103;
	bh=uKOKcFFoogaiB1P8b/kmC1IvSAQjBs8go6/YrDHY/E0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tm/AAr8f2Bu0Jo739Oe8vnH//sL9VKqFLZHULKCEx53KS5tEOavG7eLPjRSnFdLT5
	 mVl/MfAgmjBU5VE/4JB2gJww+e2aAVJI8uJDNOmGGGlJkp+PcINUuVe3SOIvsKEcrg
	 uOMI5PJB1F9pjQ6eZ/HT/rTlmLzDgXLaHf5pwmXqDZZnIuhhdvoYSPAyIOPIakkovX
	 m+CFm1xd5gpLXAjeRXHTA9WpUPAr2rwyMV5f3YwRO7C5T3RjMxX74NZc5kYTXwTDHd
	 SA5+PwcupsFiYHBpZ0CS3sL9Kgb8TaaC5pJmHRujJbJmallhZxh/bIQg2WvRBwjX4g
	 vj1GnhJahO8bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D27666F6E5;
	Thu, 22 Jan 2026 11:25:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FEAE158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35FB48121E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHU1QWtmSF5X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 11:25:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5596C811F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5596C811F3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5596C811F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:25:01 +0000 (UTC)
X-CSE-ConnectionGUID: Unsj1phyQ2qi7Y5Mklx1mA==
X-CSE-MsgGUID: zj0PVCauRVCfoNGWpsZcyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="95794371"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="95794371"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:25:01 -0800
X-CSE-ConnectionGUID: KfcdM6zwTIa4Het3FII45w==
X-CSE-MsgGUID: Tln62CJ1TWuNGykYWGKILA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="207037861"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:25:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:24:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 03:24:59 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:24:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FZ8pDX0lV8ADSQm0pKrJKLej4cB/EZiwfJu+9AbTYlQxL88SqzJMzPD19C5j+rxeX0IH1BN1yq7OYpbnaCanLiOVNDsY6Qtn4SVCG0m3ShsFVGO5giY3SmtLV6+KuWCU0lAUaa+qJ0k6rIXmWW+OZwq0zCT46Vi+xgOzTXFnj4dUlOuA8c8WIJrMJwaow2+nxt24KGa2czUusVKg9XhgsGtZIuY6wEjQe08zRfjVvf5RY8uwvLdWaQ5qt+der+PA4ZRkFMi275nc7gjilDneLT720dX1RaO13OwGwf94XyB6+4Vw6ZiJX+BmTbGzHlYC5yffDOQCUtD4k6QX045oLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uKOKcFFoogaiB1P8b/kmC1IvSAQjBs8go6/YrDHY/E0=;
 b=bZOanBFR5UPqNx4GTbreHo6i556/XuzQ1cA+SUdkxG3kOq7tCHsSuxJI8V/i4T2BznDchzKQ5MoeLKW1YB/9Nv+0Wg+XmJVVG6fr/R0C+KzdnSYUncCha0YnL6Nl2ggTLrvcs+EVoO0HUk54w4RscJpmqugSVLAHjuVPneq7w7wMrUdfYaj1kbO7i89FdCrvcT0fYyALqBMu7w6xWXAB20FGzlxFmwz5/jnghADBMHCs3mLFOT47/nPvcZWILnw15zc3dZMiESR0jX/0IAPe84b1GK/kQQ/NDp3oqWxspYKIHqFBNn/CM0FL68X9zDq0El2o5maqDNcW2z9puzQDAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB8158.namprd11.prod.outlook.com (2603:10b6:8:18b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 11:24:57 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.008; Thu, 22 Jan 2026
 11:24:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-net] ice: PTP: fix missing timestamps on E825 hardware
Thread-Index: AQHciwYYn3duyFXoiUyxt0qMfI3XdLVeDVJQ
Date: Thu, 22 Jan 2026 11:24:57 +0000
Message-ID: <IA3PR11MB8986984ABB25D6D34B0693A6E597A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
In-Reply-To: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB8158:EE_
x-ms-office365-filtering-correlation-id: 277ace6a-cfd4-4a80-b342-08de59a8dfba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?MnlsRVdEQjJBR21oZkgreGtRRjk2Y1pXSXd6cUdleitYOEhDOG9ybXEydElK?=
 =?utf-8?B?bEsxKzRBZzlXOVpaVjlQVTQydGRKMnRDbnpUU2lUaVhJdUJvUFZUd2lrYzc2?=
 =?utf-8?B?K2NFU3pjUUtuN3AzdUV3VG5xUjFrV3dZN21IdVVvY3BTUmZiMEoyVXoxTE9p?=
 =?utf-8?B?RFQ3bE8wQVVxUTVtdCtib2ZFa1FnR3NLRm5STVBPZXZKeVlleXl5U2VYYUhS?=
 =?utf-8?B?aHVWSlpaazdReWh4b2xuVDdWdVhnc21kRXU4L0I3RTZiK1pSNC83cjlIOFRj?=
 =?utf-8?B?MnU2amdBR2l0YlpnMXpJc3gvMm1kNmc3eEMyUDFwTlNISk94SFBFaGNOY1M0?=
 =?utf-8?B?QWt5ZTF0ODlHTGNFWUYvQllmZnpadXJObmp1L3g5MWgxYmRnWW1IdHJyNXE3?=
 =?utf-8?B?SnQwd2VkV3gwb29RNjEwcnR3clMzYVE3UjdxNGVXSnJWUFI1bHNsUE5wczls?=
 =?utf-8?B?alNyNlluMjYxbjZYbUJ1TURsVnlmNWpQZU1LbGR6N3hBWDZ4UmYyVHJ5UTVZ?=
 =?utf-8?B?d241N1VHVFdTcWNiMVdsWVdIS0NSUHVUTGRJV2xWZkdsaGNXbkJmMkp4VGFC?=
 =?utf-8?B?ek8wc2VVN0pXK3pOVFBmbGwwZWdkMTgxdm0rZWtaZ3RIak83eDVuc09JdjVv?=
 =?utf-8?B?dlBNeUtpQy9rb29tNW5RaFlhVTNhUVozc2xCbmdxakoyVzhzMElhV01nWU1R?=
 =?utf-8?B?bHZLZnJTRkgxemZ3TjUxTU0wSSsxcWt3UUR1T256RkJtazlaUFordzJOWlJR?=
 =?utf-8?B?cUFiU0ZSN2hCSDVrTE5xWkVadkZLaFF3dGN1a2FvOGxJL2VVNmhuUlpRM1Ry?=
 =?utf-8?B?Y0xJQ1lhN3I1c3kveGpsR0J2YjAwbEJheEh4aUhiUnk5M1RJTWJKb0Y3Y3ZF?=
 =?utf-8?B?V1Z6Yi9XQytQNEZYYzdGaXBacGR3ZytNVmJrTXAwcE1sdW45S0dqc0RkQ200?=
 =?utf-8?B?UXVIblNhb0F1cTJhNDJvM0pVVjI0NUx1eHYveS9oVSsvdkU4Qng1MnhMdEVl?=
 =?utf-8?B?a1lta1lycGltQmdhSCt0WTRLZGFOU1lzTDRWMS9mcFFhME52cm0yZGJScmNE?=
 =?utf-8?B?dm01TS8rMXVMeVpub3lpTE1tR1R5aTVFdUx6cWpnZWhlMmg4MDZhOFc2aFVX?=
 =?utf-8?B?WC96K0NhbDBtRFV4bUcwWDljaW00eVh5Nks2MVpxMVEvS2s0NVlrMDF2dHIv?=
 =?utf-8?B?YWFDUk9paVlaNkpVTy8vdExrakdDRTRiaFhFNXNSWDM2T0hJY0llRzE2QTJN?=
 =?utf-8?B?dVgydU56cC8vdUp1cTZPVm1CQ3BwVHAzTEVSUXN1RDFaNFliS2JmT2FHU0k2?=
 =?utf-8?B?dHY2SVFOVC9tUWZVMDhHSmpjQjZpSDZodmZpSi9KSkpzOGlkalRjbG5mSTVh?=
 =?utf-8?B?U1pNRzNVS0xnTGk0dXpzV3RrdnpCM0duYnNXVzJVMExxTGVBc3F5MTJrVUd3?=
 =?utf-8?B?cEdLMEUyOGQybVVZUzJXRWpkMlhHYllwTTFrUlE2S3FEdDFJUXE5VitVT1hp?=
 =?utf-8?B?WkdTblJYcFIvZ0JEektjWHdNbXhKWTV2NkdoQ09oN3ZxZWU1aHVENUFJL0VO?=
 =?utf-8?B?dzhBVnlkbm9MN1AxUnJ0RUlTNzNNTFUwM0pBN0JxU3VMUEFOZE5DZWNEYXIx?=
 =?utf-8?B?VU1DWCtXc2NUMGg3Z09pRnlpaWg1V1h4NHlzSE9rQlV1ck94eFJSWE5jb0xj?=
 =?utf-8?B?OVNVbTl0SXg4NU5KZ1ptQ3FJa2VUZ3FHVzVmRk5lOWcwbmZlbnFaa29kZ3Ez?=
 =?utf-8?B?eG41MWlOL1l4UWtrMm1kNDFwYUEwWm1OUVIrVkkvZVE3MVlWNXpqbVFaWUVP?=
 =?utf-8?B?MzlDTmdDdmsycVFpM3lSM0dmT2o1NVY5N280Q1BSbDFHbXdYUmhhdWcxaFZr?=
 =?utf-8?B?enBoME93cUtGOElmYm1QbjNQTFQ5bzBSb2t1N0w3NGh1YzhpT0grRHFLa3hj?=
 =?utf-8?B?S05SQ0VtakpYbzJmSHNqbE0vMlZQMFByRHpWQWNscTV3Q1pWeXI4SFJRWEdz?=
 =?utf-8?B?Vldidzg1ZGhoUDNsZGhGODZ3V2dyQjRXcmV3Z0FTalZJakpPWXZqeTVZeXN1?=
 =?utf-8?B?QXBQaC8wY3liWXpRSFZWM1BFV21NSUlFTkJ6eURpTGtXR2RMMHhpSURZdDNF?=
 =?utf-8?B?dUFnWk1JMktSM0ZkSGlROGhQWU85eTduNnZEQ285Q2k3Zk00dnlCcm8wNXlC?=
 =?utf-8?Q?3dfqi3wpOlfUbkbNJV8Fzlg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blVuMENtY0FJYTRpWjVYN1VsOEdNK0o3NVVXMGdNZ2o3WnJsU0tBKzJ1RzRm?=
 =?utf-8?B?dmpqVVZ3eWZPcTkvUTVXT3VnWEUxc09kTng3WXh3NXg5Mzl6Y1JlSXczMklp?=
 =?utf-8?B?Q3c5elprL05ZckhLNTcvd2NFYmI5U3Jtb0xFeUliOTBnM2JEc0hrMkhYS1Fh?=
 =?utf-8?B?aHpXNSthODhFbUVaZDgxbDdiL2Jia21yY3BRNy8xSi9LYjNMcTlza2hER1Bz?=
 =?utf-8?B?SVhrMGhueTFERFZFSXRPSTFVZUJ2dlJTTHZGaFMvUGdzcDRWNlQ5VmhsVDRk?=
 =?utf-8?B?MWZHcTRTVXJZLzQwTWcvSWZJeG0yd3k4cTN6U1oveVBPTWRHSkkwYTZDOUh4?=
 =?utf-8?B?M1M5Q3k0Tk1oNUtxdnhHVjhHWU8vMFl1NE9kU1Rxb1NleG00OXZQcVpFbFhJ?=
 =?utf-8?B?aFROY25SWW15NUJvZGVjNi9tSWJhanRVWG42WHlML1c4bmx0THN6Qjlwb2sv?=
 =?utf-8?B?YXJlVzR3TDNtSCsxcnlxWjJ0Qjh3QWdZSHVPR2xZRktPTHRYYjhGQ0FkcGFK?=
 =?utf-8?B?Wlp1bXlzR3M1QUhJZ3dPOFR1M2sybVh5M0dqR2hwUjJrSExoNGczY2M4bVhD?=
 =?utf-8?B?UGpicmhkVVVFQW1DNzVRKzFISERmbmE3Y1E2R1FHbHZEQkM5K0VwZS9NNVpl?=
 =?utf-8?B?NExTVnFXanJrdjJFNWNFdVQyUXhmY1VZMmZPcG8xeWI4T2Jrb1lwdmFLV2Fu?=
 =?utf-8?B?eUtJSnI1UG1MOTFXNUtSellYUXMzQUw3dmtZN2U5TDM1aUM3VkJUYlBqUjZy?=
 =?utf-8?B?dksrUWtFOUhBbUZ1YWRUY2NrZWxsY2lmMzV0TW1Nd0R6QnZyMFdmQlp0a2kw?=
 =?utf-8?B?anJNb3ZTNGhBWXJjKzRmclZwRXdSM1MwbldJVmRrbnlHWWhWQ09VRm9Kcmd0?=
 =?utf-8?B?QUJtalVabGVsTUlmMlNaK3QyTUxMM21vd2cwZXVRei9VdFhrNlA2eFFRODJI?=
 =?utf-8?B?TlNrNUVlZzgxK2QvWjJrYUhkeWgvZDV3MTRDTUF5TmlldTNIYi9HcXBRV3Ay?=
 =?utf-8?B?MEFoeG8weEpUWjFIVk03eTVscHhmUCsyeUFPeTBzMDA0MEI5L3ZCQ3FHamRs?=
 =?utf-8?B?Qi9YdGY4WklHUHZMaS9GYUE1cmFFeEZoVWlaMmJhYXIyK2lzaldGS2VCbFZX?=
 =?utf-8?B?UEhOek9XRUJCd0kwQ1p5QzF4dHhkczlIaHlaK21seEVnR2JOZllDNEpBdnNV?=
 =?utf-8?B?ZHI4VzcrOFVmalVqb1p5LzhKMUZScW5WYlZnVngrcHZKYmQydWVsWmJlbFo5?=
 =?utf-8?B?OEdEaVRXL0t0RXdwamJKMnlScnpXTUFtdExaNjhuY3IrVkwrbk1Cb20zbzYz?=
 =?utf-8?B?bzVzUkJEVHRJWW1QdmNtS3BnanlKQnNWOW9rQlhUd3JPN094cGV0WFN1Z05q?=
 =?utf-8?B?dU9GbTJRM0U1a2QzZWVvMHkvTlNXeFRJSHh6ZlRFTmlSKzRGTGhpZ0xLMFR1?=
 =?utf-8?B?eXNBVjFaamthT1lvd0ZiV2NWZTVid1doMWJmdG5VajhuUURvb29yWW9SQ21z?=
 =?utf-8?B?UDAwQ3FVbzg5SU5zdDBocEUwYkhKSkZBNVdoTXF4d2JweElxaEdhSVVZcm5Q?=
 =?utf-8?B?eVhpbTZyUUVVckM4SDJqZzlmcDJ1cHhLMW1PUmZ5a2xLUmRrV2VaUWZtQ2hy?=
 =?utf-8?B?OVAvZHgvN1Vuc0RsTzBMc2JwSmxVaHcyUmN4b2ZONHRoMWhiZDJPdnBGL2hY?=
 =?utf-8?B?TERaWng5QWJOekI5cEZhU3VHSlBqaXY4QnQxcXZIMGZaWUp3Sk11b1RPTUZY?=
 =?utf-8?B?ODF3RnFhRkZtQm9rYnNjUTBJcmVQeEJ6dnlaakZWVjVWWnlETU1KUWN2c3Vm?=
 =?utf-8?B?OGFaZSswTyszQ0syT3dWQ2lnNTNNS2NIWlhRZnFwWSszU3FnUVVVVm4xcFpC?=
 =?utf-8?B?OHAxZWZtUzZDWWNUNHlDSm84VHhOblNSR0RwNDFxdi9WT0RjeWl2dGx6M2li?=
 =?utf-8?B?WnRQOFluRHA0Z2UxM2dDc2lHOXRJL2tYZ3hkbzd4WEpod28yaTdDUFh6a245?=
 =?utf-8?B?d040NlQ0Ri9XV1htejdwY2FWeVFEU1FPOG1hVW1hdDRSZy9CQXppeVkrRUlS?=
 =?utf-8?B?ZEgybEwzZWVPSGtraXlGZFd0OFBYWGFTRC9heVZoWG0vbHNyNzdidGdjNThx?=
 =?utf-8?B?M0J2RTlUWWR1dlhwRTVHamtIazBjcEx2ZmRXTjhleUxpWmt5Qk1ST3oxRStS?=
 =?utf-8?B?OTcweDY3aG9rSXVJWUNQWTBkZTZIOEhKR3lmTWk2OVdRWksrZWxHZlFRMDFD?=
 =?utf-8?B?UUlTa05NZVllYXI4a1lFUmFhZ1RJV0F1MVpCL2d3bitDQllYVTNLMTVQVXhY?=
 =?utf-8?B?TnJRMFJMdkEyUTBJcUxzTjBiNG1PVWZlbXE3T3dOdXJUUUJWbnhDWkdhaDVY?=
 =?utf-8?Q?Ty1Hv70dXBntHS3I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 277ace6a-cfd4-4a80-b342-08de59a8dfba
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 11:24:57.6057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Usf3ZqDEN6hrCKN/H6OKwl1b9J+L5l69AFLbN7oh2DwZ/hN0MUaNeFLvbHeXXtcxbUPDoXZRHexblBerFezuYK5BxDEIOtAt/6Kopr2jXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8158
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769081101; x=1800617101;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uKOKcFFoogaiB1P8b/kmC1IvSAQjBs8go6/YrDHY/E0=;
 b=AdL6k2bB8lPON5akFj834B5h58C8EKeJ0wbozGnneMi4eFxifRDFhdLC
 oMsQcIyY4lKfepZL/jrm/6RD956tIYELw21RKeOXyRTIqsgiPVoLSBzB/
 vV6J5fLmSZHTVUbyQ7aLBeDHtpiHwuw1xQRs44982ywtoED8WgUSq7ljs
 V0SXYF3hd09Q32kX+T+rgPFrHADxrrQGnavff6qWT5DyHW4pfa2DjYsov
 PK21n96kAyiJxRJ53muV/NTNtVA2Xuzb5keoPwChRWvIC4W9S9lTMS2SU
 EukB26xaNb3XHTfuVhMuMjaOL1DrwnbY8OPoc9zo6oLP2sXidvRuG6b68
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AdL6k2bB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: PTP: fix missing
 timestamps on E825 hardware
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: AC50065F2F
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAy
MSwgMjAyNiA3OjQ0IFBNDQo+IFRvOiBJbnRlbCBXaXJlZCBMQU4gPGludGVsLXdpcmVkLWxhbkBs
aXN0cy5vc3Vvc2wub3JnPjsgS29yYmEsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua29yYmFA
aW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsNCj4gTG9rdGlvbm92LCBBbGVrc2Fu
ZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255DQo+IEwg
PGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogS2VsbGVyLCBKYWNvYiBFIDxqYWNv
Yi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV0XSBpY2U6IFBU
UDogZml4IG1pc3NpbmcgdGltZXN0YW1wcyBvbiBFODI1DQo+IGhhcmR3YXJlDQo+IA0KPiBUaGUg
RTgyNSBoYXJkd2FyZSBjdXJyZW50bHkgaGFzIGVhY2ggUEYgaGFuZGxlIHRoZSBQRklOVF9UU1lO
X1RYIGNhdXNlDQo+IG9mIHRoZSBtaXNjZWxsYW5lb3VzIE9JQ1IgaW50ZXJydXB0IHZlY3Rvci4g
VGhlIGFjdHVhbCBpbnRlcnJ1cHQgY2F1c2UNCj4gdW5kZXJseWluZyB0aGlzIGlzIHNoYXJlZCBi
eSBhbGwgcG9ydHMgb24gdGhlIHNhbWUgcXVhZDoNCj4gDQo+ICAg4pSM4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQDQo+ICAg4pSCICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAg4pSCDQo+ICAg4pSCICAg4pSM4pSA4pSA4pSA4pSA4pSQIOKUjOKUgOKU
gOKUgOKUgOKUkCDilIzilIDilIDilIDilIDilJAg4pSM4pSA4pSA4pSA4pSA4pSQICAg4pSCDQo+
ICAg4pSCICAg4pSCUEYgMOKUgiDilIJQRiAx4pSCIOKUglBGIDLilIIg4pSCUEYgM+KUgiAgIOKU
gg0KPiAgIOKUgiAgIOKUlOKUgOKUgOKUgOKUgOKUmCDilJTilIDilIDilIDilIDilJgg4pSU4pSA
4pSA4pSA4pSA4pSYIOKUlOKUgOKUgOKUgOKUgOKUmCAgIOKUgg0KPiAgIOKUgiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIOKUgg0KPiAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKWsuKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KPiAgICAgICAgICAgICAgICAgICAg4pSCDQo+ICAgICAg
ICAgICAgICAgICAgICDilIINCj4gICDilIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilLzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilJANCj4gICDilIIgICAgICAgICAgICAgUEhZIFFVQUQgICAgICAgICAgICDi
lIINCj4gICDilJTilIDilIDilIDilrLilIDilIDilIDilIDilIDilIDilIDilIDilrLilIDilIDi
lIDilIDilIDilIDilIDilIDilrLilIDilIDilIDilIDilIDilIDilIDilIDilrLilIDilIDilJgN
Cj4gICAgICAg4pSCICAgICAgICDilIIgICAgICAgIOKUgiAgICAgICAg4pSCDQo+ICAg4pSM4pSA
4pSA4pSA4pS84pSA4pSA4pSQIOKUjOKUgOKUgOKUgOKUtOKUgOKUgOKUkCDilIzilIDilIDilIDi
lLzilIDilIDilJAg4pSM4pSA4pSA4pSA4pS84pSA4pSA4pSQDQo+ICAg4pSCUG9ydCAw4pSCIOKU
glBvcnQgMeKUgiDilIJQb3J0IDLilIIg4pSCUG9ydCAz4pSCDQo+ICAg4pSU4pSA4pSA4pSA4pSA
4pSA4pSA4pSYIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUmCDilJTilIDilIDilIDilIDilIDilIDi
lJgg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSYDQo+IA0KPiBJZiBtdWx0aXBsZSBQRnMgaXNzdWUg
VHggdGltZXN0YW1wIHJlcXVlc3RzIG5lYXIgc2ltdWx0YW5lb3VzbHksIGl0IGlzDQo+IHBvc3Np
YmxlIHRoYXQgdGhlIGNvcnJlY3QgUEYgd2lsbCBub3QgYmUgaW50ZXJydXB0ZWQgYW5kIHdpbGwg
bWlzcyBpdHMNCj4gdGltZXN0YW1wLiBVbmRlcnN0YW5kaW5nIHdoeSBpcyBzb21ld2hhdCBjb21w
bGV4Lg0KPiANCj4gQ29uc2lkZXIgdGhlIGZvbGxvd2luZyBzZXF1ZW5jZSBvZiBldmVudHM6DQo+
IA0KPiAgIENQVSAwOg0KPiAgIFNlbmQgVHggcGFja2V0IG9uIFBGIDANCj4gICAuLi4NCj4gICBQ
RiAwIGVucXVldWVzIHBhY2tldCB3aXRoIFR4IHJlcXVlc3QgICAgICAgICAgQ1BVIDEsIFBGMToN
Cj4gICAuLi4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VuZCBU
eCBwYWNrZXQgb24gUEYxDQo+ICAgLi4uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFBGIDEgZW5xdWV1ZXMgcGFja2V0DQo+IHdpdGggVHggcmVxdWVzdA0KPiANCj4g
ICBIVzoNCj4gICBQSFkgUG9ydCAwIHNlbmRzIHBhY2tldA0KPiAgIFBIWSByYWlzZXMgVHggdGlt
ZXN0YW1wIGV2ZW50IGludGVycnVwdA0KPiAgIE1BQyByYWlzZXMgZWFjaCBQRiBpbnRlcnJ1cHQN
Cj4gDQo+ICAgQ1BVIDAsIFBGMDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIENQ
VSAxLCBQRjE6DQo+ICAgaWNlX21pc2NfaW50cigpIGNoZWNrcyBmb3IgVHggdGltZXN0YW1wcyAg
ICAgIGljZV9taXNjX2ludHIoKSBjaGVja3MNCj4gZm9yIFR4IHRpbWVzdGFtcA0KPiAgIFNlZXMg
cGFja2V0IHJlYWR5IGJpdCBzZXQgICAgICAgICAgICAgICAgICAgICBTZWVzIG5vdGhpbmcgYXZh
aWxhYmxlDQo+ICAgLi4uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IEV4aXRzDQo+ICAgLi4uDQo+ICAgLi4uDQo+ICAgSFc6DQo+ICAgUEhZIHBvcnQgMSBzZW5kcyBw
YWNrZXQNCj4gICBQSFkgaW50ZXJydXB0IGlnbm9yZWQgYmVjYXVzZSBub3QgYWxsIHBhY2tldCB0
aW1lc3RhbXBzIHJlYWQgeWV0Lg0KPiAgIC4uLg0KPiAgIFJlYWQgdGltZXN0YW1wLCByZXBvcnQg
dG8gc3RhY2sNCj4gDQo+IEJlY2F1c2UgdGhlIGludGVycnVwdCBldmVudCBpcyBzaGFyZWQgZm9y
IGFsbCBwb3J0cyBvbiB0aGUgc2FtZSBxdWFkLA0KPiB0aGUgUEhZIHdpbGwgbm90IHJhaXNlIGEg
bmV3IGludGVycnVwdCBmb3IgYW55IFBGIHVudGlsIGFsbCB0aW1lc3RhbXBzDQo+IGFyZSByZWFk
Lg0KPiANCj4gSW4gdGhlIGV4YW1wbGUgYWJvdmUsIHRoZSBzZWNvbmQgdGltZXN0YW1wIGNvbWVz
IGluIGZvciBwb3J0IDEgYmVmb3JlDQo+IHRoZSB0aW1lc3RhbXAgZnJvbSBwb3J0IDAgaXMgcmVh
ZC4gQXQgdGhpcyBwb2ludCwgdGhlcmUgaXMgbm8gbG9uZ2VyDQo+IGFuIGludGVycnVwdCB0aHJl
YWQgcnVubmluZyB0aGF0IHdpbGwgcmVhZCB0aGUgdGltZXN0YW1wcywgYmVjYXVzZQ0KPiBlYWNo
IFBGIGhhcyBjaGVja2VkIGFuZCBmb3VuZCB0aGF0IHRoZXJlIHdhcyBubyB3b3JrIHRvIGRvLg0K
PiBBcHBsaWNhdGlvbnMgc3VjaCBhcyBwdHA0bCB3aWxsIHRpbWVvdXQgYWZ0ZXIgd2FpdGluZyBh
IGZldw0KPiBtaWxsaXNlY29uZHMuIEV2ZW50dWFsbHksIHRoZSB3YXRjaGRvZyBzZXJ2aWNlIHRh
c2sgd2lsbCByZS1jaGVjayBmb3INCj4gYWxsIHF1YWRzIGFuZCBub3RpY2UgdGhhdCB0aGVyZSBh
cmUgb3V0c3RhbmRpbmcgdGltZXN0YW1wcywgYW5kIGlzc3VlDQo+IGEgc29mdHdhcmUgaW50ZXJy
dXB0IHRvIHJlY292ZXIuIEhvd2V2ZXIsIGJ5IHRoaXMgcG9pbnQgaXQgaXMgZmFyIHRvbw0KPiBs
YXRlLCBhbmQgYXBwbGljYXRpb25zIGhhdmUgYWxyZWFkeSBmYWlsZWQuDQo+IA0KPiBBbGwgb2Yg
dGhpcyBvY2N1cnMgYmVjYXVzZSBvZiB0aGUgdW5kZXJseWluZyBoYXJkd2FyZSBiZWhhdmlvci4g
VGhlDQo+IFBIWSBjYW5ub3QgcmFpc2UgYSBuZXcgaW50ZXJydXB0IHNpZ25hbCB1bnRpbCBhbGwg
b3V0c3RhbmRpbmcNCj4gdGltZXN0YW1wcyBoYXZlIGJlZW4gcmVhZC4NCj4gDQo+IEFzIGEgZmly
c3Qgc3RlcCB0byBmaXggdGhpcywgc3dpdGNoIHRoZSBFODI1QyBoYXJkd2FyZSB0byB0aGUNCj4g
SUNFX1BUUF9UWF9JTlRFUlJVUFRfQUxMIG1vZGUuIEluIHRoaXMgbW9kZSwgb25seSB0aGUgY2xv
Y2sgb3duZXIgUEYNCj4gd2lsbCByZXNwb25kIHRvIHRoZSBQRklOVF9UU1lOX1RYIGNhdXNlLiBP
dGhlciBQRnMgZGlzYWJsZSB0aGlzIGNhdXNlDQo+IGFuZCB3aWxsIG5vdCB3YWtlLiBJbiB0aGlz
IG1vZGUsIHRoZSBjbG9jayBvd25lciB3aWxsIGl0ZXJhdGUgb3ZlciBhbGwNCj4gcG9ydHMgYW5k
IGhhbmRsZSB0aW1lc3RhbXBzIGZvciBlYWNoIGNvbm5lY3RlZCBwb3J0Lg0KPiANCj4gVGhpcyBt
YXRjaGVzIHRoZSBFODIyIGJlaGF2aW9yLCBhbmQgaXMgYSBuZWNlc3NhcnkgYnV0IGluc3VmZmlj
aWVudA0KPiBzdGVwIHRvIHJlc29sdmUgdGhlIG1pc3NpbmcgdGltZXN0YW1wcy4NCj4gDQo+IEV2
ZW4gd2l0aCB1c2Ugb2YgdGhlIElDRV9QVFBfVFhfSU5URVJSVVBUX0FMTCBtb2RlLCB3ZSBzdGls
bCBzb21ldGltZXMNCj4gbWlzcyBhIHRpbWVzdGFtcCBldmVudC4gVGhlIGljZV9wdHBfdHhfdHN0
YW1wX293bmVyKCkgZG9lcyByZS1jaGVjaw0KPiB0aGUgcmVhZHkgYml0bWFwLCBidXQgZG9lcyBz
byBiZWZvcmUgcmUtZW5hYmxpbmcgdGhlIE9JQ1IgaW50ZXJydXB0DQo+IHZlY3Rvci4gSXQgYWxz
byBvbmx5IGNoZWNrcyB0aGUgcmVhZHkgYml0bWFwLCBidXQgbm90IHRoZSBzb2Z0d2FyZSBUeA0K
PiB0aW1lc3RhbXAgdHJhY2tlci4NCj4gDQo+IFRvIGF2b2lkIHJpc2sgb2YgbG9zaW5nIGEgdGlt
ZXN0YW1wLCByZWZhY3RvciB0aGUgbG9naWMgdG8gY2hlY2sgYm90aA0KPiB0aGUgc29mdHdhcmUg
VHggdGltZXN0YW1wIHRyYWNrZXIgYml0bWFwICphbmQqIHRoZSBoYXJkd2FyZSByZWFkeQ0KPiBi
aXRtYXAuDQo+IEFkZGl0aW9uYWxseSwgZG8gdGhpcyBvdXRzaWRlIG9mIGljZV9wdHBfcHJvY2Vz
c190cygpIGFmdGVyIHdlIGhhdmUNCj4gYWxyZWFkeSByZS1lbmFibGVkIHRoZSBPSUNSIGludGVy
cnVwdC4NCj4gDQo+IFJlbW92ZSB0aGUgY2hlY2tzIGZyb20gdGhlIGljZV9wdHBfdHhfdHN0YW1w
KCksDQo+IGljZV9wdHBfdHhfdHN0YW1wX293bmVyKCksIGFuZCB0aGUgaWNlX3B0cF9wcm9jZXNz
X3RzKCkgZnVuY3Rpb25zLg0KPiBUaGlzIHJlc3VsdHMgaW4gaWNlX3B0cF90eF90c3RhbXAoKSBi
ZWluZyBub3RoaW5nIG1vcmUgdGhhbiBhIHdyYXBwZXINCj4gYXJvdW5kIGljZV9wdHBfcHJvY2Vz
c190eF90c3RhbXAoKSBzbyB3ZSBjYW4gcmVtb3ZlIGl0Lg0KPiANCj4gQWRkIHRoZSBpY2VfcHRw
X3R4X3RzdGFtcHNfcGVuZGluZygpIGZ1bmN0aW9uIHdoaWNoIHJldHVybnMgYSBib29sZWFuDQo+
IGluZGljYXRpbmcgaWYgdGhlcmUgYXJlIGFueSBwZW5kaW5nIFR4IHRpbWVzdGFtcHMuIEZpcnN0
LCBjaGVjayB0aGUNCj4gc29mdHdhcmUgdGltZXN0YW1wIHRyYWNrZXIgYml0bWFwLiBJbiBJQ0Vf
UFRQX1RYX0lOVEVSUlVQVF9BTEwgbW9kZSwNCj4gY2hlY2sNCj4gKmFsbCogcG9ydHMgc29mdHdh
cmUgdHJhY2tlcnMuIElmIGEgdHJhY2tlciBoYXMgb3V0c3RhbmRpbmcgdGltZXN0YW1wDQo+IHJl
cXVlc3RzLCByZXR1cm4gdHJ1ZS4gQWRkaXRpb25hbGx5LCBjaGVjayB0aGUgUEhZIHJlYWR5IGJp
dG1hcCB0bw0KPiBjb25maXJtIGlmIHRoZSBQSFkgaW5kaWNhdGVzIGFueSBvdXRzdGFuZGluZyB0
aW1lc3RhbXBzLg0KPiANCj4gSW4gdGhlIGljZV9taXNjX3RocmVhZF9mbigpLCBjYWxsIGljZV9w
dHBfdHhfdHN0YW1wc19wZW5kaW5nKCkganVzdA0KPiBiZWZvcmUgcmV0dXJuaW5nIGZyb20gdGhl
IElSUSB0aHJlYWQgaGFuZGxlci4gSWYgaXQgcmV0dXJucyB0cnVlLA0KPiB3cml0ZSB0byBQRklO
VF9PSUNSIHRvIHRyaWdnZXIgYSBQRklOVF9PSUNSX1RTWU5fVFhfTSBzb2Z0d2FyZQ0KPiBpbnRl
cnJ1cHQuIFRoaXMgd2lsbCBmb3JjZSB0aGUgaGFuZGxlciB0byBpbnRlcnJ1cHQgYWdhaW4gYW5k
IGNvbXBsZXRlDQo+IHRoZSB3b3JrIGV2ZW4gaWYgdGhlIFBIWSBoYXJkd2FyZSBkaWQgbm90IGlu
dGVycnVwdCBmb3IgYW55IHJlYXNvbi4NCj4gDQo+IFRoaXMgcmVzdWx0cyBpbiB0aGUgZm9sbG93
aW5nIG5ldyBmbG93IGZvciBoYW5kbGluZyBUeCB0aW1lc3RhbXBzOg0KPiANCj4gMSkgc2VuZCBU
eCBwYWNrZXQNCj4gMikgUEhZIGNhcHR1cmVzIHRpbWVzdGFtcA0KPiAzKSBQSFkgdHJpZ2dlcnMg
TUFDIGludGVycnVwdA0KPiA0KSBjbG9jayBvd25lciBleGVjdXRlcyBpY2VfbWlzY19pbnRyKCkg
d2l0aCBQRklOVF9PSUNSX1RTWU5fVFggZmxhZw0KPiBzZXQNCj4gNSkgaWNlX3B0cF90c19pcnEo
KSByZXR1cm5zIElSUV9XQUtFX1RIUkVBRA0KPiA3KSBUaGUgaW50ZXJydXB0IHRocmVhZCB3YWtl
cyB1cCBhbmQga2VybmVsIGNhbGxzDQo+IGljZV9taXNjX2ludHJfdGhyZWFkX2ZuKCkNCj4gOCkg
aWNlX3B0cF9wcm9jZXNzX3RzKCkgaXMgY2FsbGVkIHRvIGhhbmRsZSBhbnkgb3V0c3RhbmRpbmcg
dGltZXN0YW1wcw0KPiA5KSBpY2VfaXJxX2R5bmFtaWNfZW5hKCkgaXMgY2FsbGVkIHRvIHJlLWVu
YWJsZSB0aGUgT0lDUiBoYXJkd2FyZQ0KPiBpbnRlcnJ1cHQNCj4gICAgY2F1c2UNCj4gMTApIGlj
ZV9wdHBfdHhfdHN0YW1wc19wZW5kaW5nKCkgaXMgY2FsbGVkIHRvIGNoZWNrIGlmIHdlIG1pc3Nl
ZCBhbnkNCj4gbW9yZQ0KPiAgICAgb3V0c3RhbmRpbmcgdGltZXN0YW1wcywgY2hlY2tpbmcgYm90
aCBzb2Z0d2FyZSBhbmQgaGFyZHdhcmUNCj4gaW5kaWNhdG9ycy4NCj4gDQo+IFdpdGggdGhpcyBj
aGFuZ2UsIGl0IHNob3VsZCBubyBsb25nZXIgYmUgcG9zc2libGUgZm9yIG5ldyB0aW1lc3RhbXBz
DQo+IHRvIGNvbWUgaW4gc3VjaCBhIHdheSB0aGF0IHdlIGxvc2UgYW4gaW50ZXJydXB0LiBJZiBh
IHRpbWVzdGFtcCBjb21lcw0KPiBpbiBiZWZvcmUgdGhlIGljZV9wdHBfdHhfdHN0YW1wc19wZW5k
aW5nKCkgY2FsbCwgaXQgd2lsbCBiZSBub3RpY2VkIGJ5DQo+IGF0IGxlYXN0IG9uZSBvZiB0aGUg
c29mdHdhcmUgYml0bWFwIGNoZWNrIG9yIHRoZSBoYXJkd2FyZSBiaXRtYXANCj4gY2hlY2suIElm
IHRoZSB0aW1lc3RhbXAgY29tZXMgaW4gKmFmdGVyKiB0aGlzIGNoZWNrLCBpdCBzaG91bGQgY2F1
c2UgYQ0KPiB0aW1lc3RhbXAgaW50ZXJydXB0IGFzIHdlIGhhdmUgYWxyZWFkeSByZWFkIGFsbCB0
aW1lc3RhbXBzIGZyb20gdGhlDQo+IFBIWSBhbmQgdGhlIE9JQ1IgdmVjdG9yIGhhcyBiZWVuIHJl
LWVuYWJsZWQuDQo+IA0KPiBGaXhlczogN2NhYjQ0ZjFjMzVmICgiaWNlOiBJbnRyb2R1Y2UgRVRI
NTZHIFBIWSBtb2RlbCBmb3IgRTgyNUMNCj4gcHJvZHVjdHMiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBK
YWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5oICB8ICAxMyArKy0NCj4gZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgfCAgMjAgKystLQ0KPiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jICB8IDE0OCArKysrKysrKysrKysrKysrKy0t
LS0tDQo+IC0tLS0tLS0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEwMyBpbnNlcnRpb25zKCspLCA3
OCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cC5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wdHAuaA0KPiBpbmRleCAyNzAxNmFhYzRmMWUuLjg0ODliZDg0MjcxMCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuaA0KPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5oDQo+IEBAIC0zMDQsOCArMzA0LDkg
QEAgdm9pZCBpY2VfcHRwX2V4dHRzX2V2ZW50KHN0cnVjdCBpY2VfcGYgKnBmKTsNCj4gIHM4IGlj
ZV9wdHBfcmVxdWVzdF90cyhzdHJ1Y3QgaWNlX3B0cF90eCAqdHgsIHN0cnVjdCBza19idWZmICpz
a2IpOw0KPiB2b2lkIGljZV9wdHBfcmVxX3R4X3NpbmdsZV90c3RhbXAoc3RydWN0IGljZV9wdHBf
dHggKnR4LCB1OCBpZHgpOw0KPiB2b2lkIGljZV9wdHBfY29tcGxldGVfdHhfc2luZ2xlX3RzdGFt
cChzdHJ1Y3QgaWNlX3B0cF90eCAqdHgpOyAtZW51bQ0KPiBpY2VfdHhfdHN0YW1wX3dvcmsgaWNl
X3B0cF9wcm9jZXNzX3RzKHN0cnVjdCBpY2VfcGYgKnBmKTsNCj4gK3ZvaWQgaWNlX3B0cF9wcm9j
ZXNzX3RzKHN0cnVjdCBpY2VfcGYgKnBmKTsNCj4gIGlycXJldHVybl90IGljZV9wdHBfdHNfaXJx
KHN0cnVjdCBpY2VfcGYgKnBmKTsNCj4gK2Jvb2wgaWNlX3B0cF90eF90c3RhbXBzX3BlbmRpbmco
c3RydWN0IGljZV9wZiAqcGYpOw0KPiAgdTY0IGljZV9wdHBfcmVhZF9zcmNfY2xrX3JlZyhzdHJ1
Y3QgaWNlX3BmICpwZiwNCj4gIAkJCSAgICAgc3RydWN0IHB0cF9zeXN0ZW1fdGltZXN0YW1wICpz
dHMpOw0KPiANCg0KLi4uDQoNCj4gLS0tDQo+IGJhc2UtY29tbWl0OiBkNDFmOGFjZjdhODZkZTY4
ZDhlMWQwZDVhYjI4OGNhNWEwMDNhZTI5DQo+IGNoYW5nZS1pZDogMjAyNjAxMTYtamstZTgyNWMt
Zml4LW1pc3NpbmctdGltZXRhbXBzLWRkYWE5ZjA4ODMzZQ0KPiANCj4gQmVzdCByZWdhcmRzLA0K
PiAtLQ0KPiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29t
Pg0K
