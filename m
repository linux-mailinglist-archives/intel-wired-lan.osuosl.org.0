Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA5EB387EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 18:43:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A97BA814EE;
	Wed, 27 Aug 2025 16:43:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6z6koRTovZKE; Wed, 27 Aug 2025 16:43:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9C6E81509
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756312986;
	bh=M6kQR8wCV75nKZAFBguoL3qYyUObMEKlHlhDX03Gr3A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TuvvF+UEdTwUTMtw+i85b1k1RENMXSt+2GT/MkY+AAehIqkzaXfveLWCXb5Fq4ekF
	 6GXzUHYZI0t15i4OzPLt9zcRf10PKi5gegHEF2mhIuaUm9Pd7vlW0cxFgssjxnhMiX
	 oNhZ/ptubaY/MfpoMtQA8fpLcmGw0SHBkNus83Y3bPf+GCb/jdKpu1TP9n/dYC1DDO
	 kXHZZkEB5hgIBPUQgWJLxbPITwse0BctMmatjdC5jxNN+ewQnRmMVA8ZK/Yk+e+Ms6
	 ANIYEAsBnoAfrfXyYdBZLztG95UtV3eM1R0WDQylxFYS1PHq5lLF6pA6hCFCqkguF8
	 Wd3sbqskD/t6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9C6E81509;
	Wed, 27 Aug 2025 16:43:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 73508114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 707E5405B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:43:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CHs-nKy0D5zs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 16:43:04 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 27 Aug 2025 16:43:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AC5CB4059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC5CB4059E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC5CB4059E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:43:04 +0000 (UTC)
X-CSE-ConnectionGUID: YfphgjTKQb+Kxxu01Xc3tw==
X-CSE-MsgGUID: NLPJ3nc9TGaDg82i9QAmlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="69163394"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="69163394"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:35:56 -0700
X-CSE-ConnectionGUID: NUGByOqjQUayJ/wRhg5wuw==
X-CSE-MsgGUID: U1vwQCiqR2CIqlyXypIYXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169401948"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:35:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 09:35:56 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 09:35:56 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.70)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 09:35:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rLEHZmmxYDMR5WQuIpM3qFK67ax9sB0NTY0qKgYoOofkz9FOsu2gVHnZrcIWOXb32f8flNtdFOrOyN9jPfn731bVqdsor/84QDy7sDTK515+a0pRAA+swOZ/lh1Om54cTnI0oJ1jYnDVMYq+5r9mxGNOy3UNQxb+h2gK7nXg7Iejye3NGs54O1XpeDf4UiDBpypLrZWynTW0d/c+0yihXUUnBWZY6z7C0LzyTr3lgpWK0BhajJ4L63KYVRIaZAANvni7sRfHFZDeWYABKBMe+gempsbIGCJeomyglWksG+IWOZykNvmuV3bql8eaVN0WJG7ZR34dQnWNSJBj/DD3AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M6kQR8wCV75nKZAFBguoL3qYyUObMEKlHlhDX03Gr3A=;
 b=YGhr9QPb9M3Sj/vzWSyNRp++U1AfRwZzktlYDxsqMbC0i3x0FDKoU5zUj7NsKimA0GwK/7EoGUDr8ejTLQrLglbQAYZFCMCoNQOmZYrDwb6iqpGuLzDiGt7LWYI/wM6VUIT3skJhNpeAvxNi2jUJ/URfkBN/QZD/pHbZgfeQZAEcgrd1ZTe6PlB880pK3KEZyjxpD/eJKX4zFpV6O079So+TDwOSS8p8xymQBT4hOpDWfQFCVLkPd6yIa++AEAXVG9Uba9tL524EQTCeVXVrZAVqW8tcJp4tOTVBeJitvLMScWs7UaBQHaaWD2idkW+gBK/JQYTim9c9FOYoQW8T/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by IA1PR11MB6097.namprd11.prod.outlook.com (2603:10b6:208:3d7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.22; Wed, 27 Aug
 2025 16:35:51 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::7cb0:a763:c89e:974b]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::7cb0:a763:c89e:974b%4]) with mapi id 15.20.9052.014; Wed, 27 Aug 2025
 16:35:51 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Cleanup legacy code in
 VF reset error path
Thread-Index: AQHcFxBkAqad5cc8Jka91qQ4m+y9C7R2q1fw
Date: Wed, 27 Aug 2025 16:35:51 +0000
Message-ID: <IA1PR11MB61946109FE89CCD0144EB5DEDD38A@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20250826112545.495010-1-david.m.ertman@intel.com>
 <2a763bc5-5d36-4757-8fa1-758580fee6c7@molgen.mpg.de>
In-Reply-To: <2a763bc5-5d36-4757-8fa1-758580fee6c7@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|IA1PR11MB6097:EE_
x-ms-office365-filtering-correlation-id: a7796b20-f9ab-4353-23dc-08dde587c903
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NSt4SzVCaXhCU2ZsNVQ1UE5KS1NucS9ucnFWRlpuNkJvY25na2h1SnFIOU1q?=
 =?utf-8?B?SCtsUEd0RmJ0ZUZWVk5BWldYZFdRdGkyam5DMnd0Yy9qbElYNkNkcTMvS1Zo?=
 =?utf-8?B?eFoxRkpkVmIraFJ3bkNON2NkdlZDNEkzVnI0ZFBZZEFEV2JFdXFJNDZBVWly?=
 =?utf-8?B?d3ZxRXN3dFRKWTY1RC9uUE04YXh4WmMvelB5NWlQQnpPc3BPOEhlazBPSUVm?=
 =?utf-8?B?YnIzL1F0L3I5R3V5Wi9nR01kL1NSQkt3c1kyU3pTS2ZaTUxuNy9BRmRBQndH?=
 =?utf-8?B?R0VxY1dsaVFWalB5b2tNbkZlY1VrVnJjdjF0U0RRTkkzUGU1N3lXRDYreUt4?=
 =?utf-8?B?bmlnaDlGdlVaYVFZc1huNFd3Z3RJZnk1YVFLTjNRejBDVTVzWFNzSlR3UTcw?=
 =?utf-8?B?Ti9JbkJsZ1BVQW5DNnlsTmp3cE1FSHBlQU55S1E4dFFjQ1UwRGcxemhCdFZy?=
 =?utf-8?B?c0xsVFFVSnorTUY5RVVmWXlyd0RBd0NhT0tPNEFUQW1jU28vSEc2bHFRQlBZ?=
 =?utf-8?B?cXhNUGtXZnNhbCtMNjVESTU1bkc0cUJDZFhQdjQvUS9xUGtxVjRJU016RTYy?=
 =?utf-8?B?d2VqRXNyaU8xTU9DSWh0QUVMaFJyd2FWemIveUpmS29ZMnUxOWEvYUxyMUU5?=
 =?utf-8?B?OWFaZDFSb0pBdjlQZG96VDJsbWdOZkhoblVsejdRWllNQ0xoRW53YzZibE1j?=
 =?utf-8?B?SFlTeEY1L1dPaW9GK1RtVmFQUGNzL2NaOEljQldIM0pmWWtFQklqd3Q4WjNz?=
 =?utf-8?B?L0k5TjhRaCtRRjh4Z2tWc3dHcC9YRjhIL1JYeEJINkxnMktQb3hMblJuRXE5?=
 =?utf-8?B?akgrSGd6WVN2MTJ6RTBodUJkMGxVODNWbHcvQ1lZUkdZZGJJcTYrVSs1bVNC?=
 =?utf-8?B?RDREc3lhajY3TmlrYm1lV2NZeGJRNHNhVWVzYWM0dlU3Y1BGdC9tRnlmbXFC?=
 =?utf-8?B?K0x0SFRWdzZCRHJRMG1GZFkrdkFYNXNWVHdkc0pLdDk4L2djUmoydmMyM1lj?=
 =?utf-8?B?dGlRL1BydFpKaER0Zm9XMmw0UE1JRWRVNEkvUEU5V2xXdW9rQ3VVSFhPaFlB?=
 =?utf-8?B?WHpYamVsUWhSUVo2cXMxNzNLWEljQXF6anp4ZnE3TnF6QzZFYks2RUNlVCtC?=
 =?utf-8?B?eVJqYlphdEdDQzNIQXBldExmL1JhbHBxV3dDdllkandVaU5YSEM5WE5MUS9E?=
 =?utf-8?B?ZmlGb0R6dk5Bc0k5T01wVUNRcUpRTG9yWlAwamc1V1RtbG5yWFU5WUpOSjlU?=
 =?utf-8?B?eFN4SlhmTkFXc3NwdElxNkxjSUROSnA1SmNZZUYyQWJveWRLSm1YYjRYTVBZ?=
 =?utf-8?B?WjNHcFFlWS8wd1NUMkdzUTR3eUgyc2VWM3NhcnNxWVhkcllFZnBuMU5NdEJp?=
 =?utf-8?B?cmh2c25NUWFRZ0F6bnZSMXUrS05lNHJYbkFCSlk2cE9jK3ZLRDV4aTBkeUdk?=
 =?utf-8?B?c1BsbE81MlF6ZjcrM2VBcXJCczRHVjhpNm9TU2pYcjhRcU5VVmlZMnVXb0JJ?=
 =?utf-8?B?VzlpclJDSDRGN1RaZEVRUHZwNk9NWHJ0a2pnWW8waWQxMXNaY0dKbk42SnU3?=
 =?utf-8?B?R0tjUkY3VHVHa0FObm90S1NJbmdSeWdqa1FxNGo1L0NQRVRHc1ZudWZnM1Ur?=
 =?utf-8?B?dGFOY3h5TzlxMlVndVREb2VWNVZYb093Y1BOMU5oYjdQNHNidWpPcVBHMzky?=
 =?utf-8?B?cWd6T1QxdjVBNEl2MjAyS21QUkFLS2xua3N4WGZhZ2o2ZEZVaHZTc1UrY25l?=
 =?utf-8?B?em1oUEU2VmVBN3IyalRPd1dCRXFRWWlITUNFSlFDOEErSTZEUFd2dmsxTXRT?=
 =?utf-8?B?RmhjRElVR1o3K09rS1hMd2d1dXg4QnVrSWRFNGxnM0FDSnNzdGxqdmQ2V09z?=
 =?utf-8?B?eUVTVFBmM1NsZzZRc24yaVRtSWh1elB5d1VTb0QvZkJTaFpuR0JpbnZvQkFL?=
 =?utf-8?B?UVc3ODV1ZmtFbmpoS2g3THRkcW1hd01vZGZTd3R5L2c1YllwcTZQdDUyS2pi?=
 =?utf-8?Q?ZH4SvPVeMTSPSFHpZA2W9zVFY2KIDo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHpmbEtGQnJiQ3RsbEVZZWd3MjhLWjNmdkI5STlSNDVjUVVEWThSSEg0Nm9T?=
 =?utf-8?B?cjA0SlllOFo4dkVvWGpGZENZamY1UUZlVWI3RHI2dnRIeUtacm5mK04rNFZ2?=
 =?utf-8?B?dzZWWDdPZ1RMZnZuRm1ET3F6SzRwMTZ4M2lvSmt0Sjgzdmc2VDdZb3ZnczdH?=
 =?utf-8?B?Z05zUlBFZVZVQU1VcEp1clVGTEFYVlNNOWRVcjhZUElqOFBHWnN0WnVQVTlp?=
 =?utf-8?B?aUVQMXp0TERsay9FREk0QklZcU1EUE52bnJDbGlyTTBTWk0vKzk1LzBTQStx?=
 =?utf-8?B?UlhqUzBQUFVsaEkzK3pZdGNHUkIyMUxCZzkzbkN6UHFISGFlb1QxUG01WFBZ?=
 =?utf-8?B?UWJJSGFPdGlyRUJFOWl2YXlaL09pZC9UTVZiSThMOHZWOGUvUUoyZm9MR3dj?=
 =?utf-8?B?UGVWRCt3MDZkYlRvUE1leTgxUUhmQ0UzMEF4Y0NMYWxnT2Z1OFVSdGJRM253?=
 =?utf-8?B?ekF0ajNuZEYyb0ZzaXNVRk8yNHExallTZWtTMFN3THJQcW5FTGVDVzlFMTVk?=
 =?utf-8?B?M0NydkVuU1Zqdk0yQXBoa3BmVmRuS3BFUlg0QU1BV29ONHlIcFllUTFXTHp3?=
 =?utf-8?B?R1E4NUJCRmFEUGQ2d1JkamU4LzlpQzRVRVk3VElPOWxnTGJ5RWJ3Vm10SG5l?=
 =?utf-8?B?bEhoWFpYdUdlUGVzMmN5aE44ODdNN3JOSm1HY2tzdFd0RSttajNrMVhpZ2tG?=
 =?utf-8?B?amVoYURoZ0xHcVhMMkxnQmZHeXUxcXNRdWZQTDNIbjd5a1NyTVZoSFp1YWd0?=
 =?utf-8?B?L01qa1ROdWZUV3F6YmxwWFNKRk9LczhaNWJ0QmVDcDNmS0hVaU9MTlEvMGFk?=
 =?utf-8?B?RzhvRGN0QUhCOG92dEh4cllvLy82R1FjMjZPbnI3K2VlZDUwYVhrMGhiY253?=
 =?utf-8?B?ekpqTDZHMHdMV0F4ZytSNHA4cGMyVmNKTDVLS1Q5eU83L2JvTTlpL2dFWVdC?=
 =?utf-8?B?VVNnY0lGV08wMWo1dml1Z3dGSERvTXJnQU9saWNCYTBiWi9mZmVrcXRsNEhQ?=
 =?utf-8?B?Y1lpVE10aTF6eEVXME5Ea0Q1SWxqaGlFWGZsWjNURWJkNFIrbVdyYU5QTWNJ?=
 =?utf-8?B?TWc1dUdnR3FYb01Dd0JBNE9KZkZDbVlERnIvUXNCdXdMYnh3c1drN1VMWHZr?=
 =?utf-8?B?UjM1aUo3RXRmY2hnYmozK1llTEpmYk1OQmdxWTRPYlk4Qno2RW1BOW1hSVR0?=
 =?utf-8?B?L1ptWWNvRWRzTGVtMkJyL3k1TmtjckRiWU9BMTMrT0Z4cGZYajJwNEVJZjFj?=
 =?utf-8?B?RHExbkcyLy8yV1ovQ3UxZUk0VUZTWHo3WkZhUzdHVzZkYW85cnJpaThBWXFl?=
 =?utf-8?B?OWNGYW5nb1FWcEdNdTdWam1CK3hwNVZIMStFRlZSWkdIOWQ4MnNDQXRJSm9J?=
 =?utf-8?B?ZStKdExFRncrbTIyMkFHMHd6THB6bGpSOGZPOXMwbStvVzl0ZEJCNVNDazho?=
 =?utf-8?B?QUdoNHpCVUxYL09DMFZacmF5TncvM0pKM1czNHlJaHloUWV3WWhBWEpjdnJ2?=
 =?utf-8?B?bWhobGorNnl2ZXhXaTNSaTJEMjh0OHZCVE9xbUlyY0xLbGc2Q0IwMG55b3J2?=
 =?utf-8?B?NFQ0OW1qRFU4WmREbURMa3cvM0c4eHhRNzliR2RJOXF1OVJQOXJWQ1JhLzlp?=
 =?utf-8?B?M05uS3llaG1MamdmYUdKTUZiQlBKY0xhL08yTDA2M1RvUVlqaWUxc2tKUlZ0?=
 =?utf-8?B?bHJQZjh0YzRZVzVqU1A5NWZ1WEQxbUNja1d5WEx1OVFwQjNFMkRmTEhtQkZN?=
 =?utf-8?B?enRQMEFZMWpXaU5ZOVRxWEc3MjBkQllKZU1FSWwybjlBQnl1NzhCM01RbmZv?=
 =?utf-8?B?SEJ1T2dXOEtuK0xvMjEyakxWT0JxSXJ5bmVXZThKYldVSFdNcnJNeHRNdmZS?=
 =?utf-8?B?K2tBVjFEZm5RK3Q5alBpc2d2dnR6Q2trTjZ6SDVIQXZLZFpxK01Hc2JKdHRK?=
 =?utf-8?B?WS9zNGtockQ4ZWVHNnJtamU0VVhIMXBLWk1uWGNJSmVEQUV3aTd3UGJGR2J4?=
 =?utf-8?B?SnNWVFNVMUFic0JrVEZyWmhFdXRseGNVSVVLQWwrT0JIRnBJaDRpL0pyUW9p?=
 =?utf-8?B?T1F1ZlJuclNUeUl2RUs3OTJtd0xESG1DdDc1RStMVjVwdE9CeGVReVp3SitH?=
 =?utf-8?Q?ahwgKe0WLN9p4RGobU941fuk5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7796b20-f9ab-4353-23dc-08dde587c903
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2025 16:35:51.1647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 86YR0ZyQ/fWSAX0It47JyhlueRcZs9DXRP8GUZdUbMqJj4RIyH3Tuczb6icMKNacBZWM1h2BhiPmrte7i+BPYNyMbWkvTYeviZw8ptf1lp0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6097
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756312984; x=1787848984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M6kQR8wCV75nKZAFBguoL3qYyUObMEKlHlhDX03Gr3A=;
 b=GueTTjse85Zzvh+pI6sF0RDNmWjjjUsSx0JDYayVOk50qEvkRYEAT+2B
 1PRbxxsm6UOai8a0vFM6j4oh77phwLHCu1dBcaTF+urWomEObpqHjPEi0
 S3NdphAoq2J4Rek2mGNxbAb7NbRdjHq4/vNzW5QgGsK7z7rEMHVz11SEQ
 aqolVHb6h1V+4Wmt2wHuHm8dASB614/JjmOr7YW1AE5zfybwkOXbORudh
 +6Bkm1UDdJkaEQUazxZDT/KyLoXQbA1Zz3AeRQvIMYsteeSjmWdrk3t+O
 16TreKyW9GW1zyf1dmFNDYeOmcU2FztD4GlQTrb8DxaR+RoE9P4/t009X
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GueTTjse
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Cleanup legacy code in
 VF reset error path
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnpl
bEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBUdWVzZGF5LCBBdWd1c3QgMjYsIDIwMjUgMTA6MDYg
UE0NCj4gVG86IEVydG1hbiwgRGF2aWQgTSA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPg0KPiBD
YzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IEtpdHN6ZWwsIFByemVteXNsYXcN
Cj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBMb2t0aW9ub3YsIEFsZWtzYW5kcg0K
PiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwt
d2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHRdIGljZTogQ2xlYW51cCBsZWdhY3kgY29kZSBpbiBW
Rg0KPiByZXNldCBlcnJvciBwYXRoDQo+IA0KPiBEZWFyIERhdmUsDQo+IA0KPiANCj4gVGhhbmsg
eW91IGZvciB0aGUgcGF0Y2guIE9uZSBuaXQgZm9yIHRoZSBzdW1tYXJ5L3RpdGxlLCB0aGF0IHRo
ZSB2ZXJiDQo+ICpjbGVhbiB1cCogaXMgc3BlbGxlZCB3aXRoIGEgc3BhY2UuDQoNCkZvbGxvd2lu
ZyB5b3VyIHN1Z2dlc3Rpb24gYmVsb3csIEkgd2lsbCBjaGFuZ2UgdGhpcyBsaW5lIHRvIG5ldyB0
ZXh0Lg0KDQo+IA0KPiBBbSAyNi4wOC4yNSB1bSAxMzoyNSBzY2hyaWViIERhdmUgRXJ0bWFuOg0K
PiA+IEluIGEgcHJldmlvdXMgY29tbWl0IChzZWUgRml4ZXMgdGFnKSwgY29kZSB0byBoYW5kbGUg
dGhlIExBRyBwYXJ0DQo+IA0KPiBJbnN0ZWFkIG9mIOKAnHNlZSBGaXhlcyB0YWfigJ0gSeKAmWQg
YWRkIHRoZSBoYXNoIGFuZCBzdW1tYXJ5IGludG8gdGhlIHRleHQgdG8NCj4gbm90IGhhdmUgdGhl
IHJlYWRlciBqdW1wIHRvIHRoZSBib3R0b20uIE9yOg0KPiANCj4gTW92aW5nIHRoZSBjb2RlIHRv
IGhhbmRsZSB0aGUgTEFHIHBhcnQgb2YgYSBWRiByZXNldCB0byBoZWxwZXIgZnVuY3Rpb25zDQo+
IGRlcHJlY2F0ZWQgdGhlIGZ1bmN0aW9uIOKApi4NCj4gDQoNCldpbGwgY2hhbmdlIHRvIGZvcm0g
dGhhdCBkb2VzIG5vdCByZWZlciB0byBhIGNvbW1pdCAtIHRoaXMgd2VudCBiYWNrIGFuZCBmb3J0
aA0KSW4gaW50ZXJuYWwgcmV2aWV3LCBhbmQgdGhpcyBzb2x1dGlvbiBzZWVtcyBjbGVhbmVzdC4N
Cg0KPiA+IG9mIGEgVkYgcmVzZXQgd2FzIHJlZmFjdG9yZWQgYW5kIG1vdmVkIGludG8gaGVscGVy
IGZ1bmN0aW9ucy4NCj4gPiBUaGlzIGRlcHJlY2F0ZWQgdGhlIGZ1bmN0aW9uIGljZV9sYWdfbW92
ZV9uZXdfdmZfbm9kZXMoKS4gIFRoZQ0KPiA+IGNsZWFudXAgbWlzc2VkIGEgY2FsbCB0byB0aGlz
IGZ1bmN0aW9uIGluIHRoZSBlcnJvciBwYXRoIG9mDQo+ID4gaWNlX3ZjX2NmZ19xc19tc2coKS4N
Cj4gPg0KPiA+IEluIHRoZSBjYXNlIHRoYXQgd291bGQgZW5kIGluIHRoZSBlcnJvciBwYXRoLCBh
IE5VTEwgcG9pbnRlciB3b3VsZA0KPiA+IGJlIGVuY291bnRlcmVkIGR1ZSB0byB0aGUgZW1wdHkg
bGlzdCBvZiBuZXRkZXZzIGZvciBtZW1iZXJzIG9mIHRoZQ0KPiA+IGFnZ3JlZ2F0ZS4NCj4gDQo+
IERvIHlvdSBoYXZlIHRoZSB0cmFjZT8gSWYgeWVzLCBwbGVhc2UgcGFzdGUgaXQuDQo+IA0KDQpJ
IGRvIG5vdCBoYXZlIGEgdHJhY2UuICBUaGlzIHdhcyBkaXNjb3ZlcmVkIHRocm91Z2ggY29kZSBp
bnNwZWN0aW9uLg0KDQo+ID4gUmVtb3ZlIHRoZSB1bm5lY2Vzc2FyeSBjYWxsIHRvIGljZV9sYWdf
bW92ZV9uZXdfdmZfbm9kZXMoKSwgYW5kIHNpbmNlDQo+ID4gdGhpcyBpcyB0aGUgb25seSBjYWxs
IHRvIHRoaXMgZnVuY3Rpb24sIHJlbW92ZSB0aGUgZnVuY3Rpb24gYXMgd2VsbC4NCj4gDQo+IFJl
YWRpbmcgdGhlIG1lc3NhZ2UgYW5kIHRoZSBkaWZmLCBJ4oCZZCB1c2U6DQo+IA0KPiBpY2U6IFJl
bW92ZSBkZXByZWNhdGVkIGljZV9sYWdfbW92ZV9uZXdfdmZfbm9kZXMoKQ0KPiANCj4gPiBGaXhl
czogMzUxZDhkOGFiNmFmICgiaWNlOiBicmVha291dCBjb21tb24gTEFHIGNvZGUgaW50byBoZWxw
ZXJzIikNCj4gPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6
ZWxAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVr
c2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIEVydG1h
biA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IFRoaXMgZ29lcyB0byAt
bmV4dCBhcyB0aGUgY29kZSBpcyBub3QgeWV0IHByZXNlbnQgaW4gLW5ldA0KPiA+IC0tLQ0KPiA+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9sYWcuYyAgICAgfCA1NSAtLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9sYWcuaCAgICAgfCAgMSAtDQoNCi4uLg0KDQo+ID4gICAJcmV0dXJuIGljZV92Y19zZW5kX21z
Z190b192Zih2ZiwNCj4gVklSVENITkxfT1BfQ09ORklHX1ZTSV9RVUVVRVMsDQo+ID4gICAJCQkJ
ICAgICBWSVJUQ0hOTF9TVEFUVVNfRVJSX1BBUkFNLCBOVUxMLCAwKTsNCj4gDQo+IFJldmlld2Vk
LWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiANCj4gDQo+IEtpbmQg
cmVnYXJkcywNCj4gDQo+IFBhdWwNCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3IC0gVjIgd2lsbCBi
ZSBpbmNvbWluZy4NCkRhdmVFDQo=
