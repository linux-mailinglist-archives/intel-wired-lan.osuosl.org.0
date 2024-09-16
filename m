Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A96A5979F4F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Sep 2024 12:32:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4E1460A89;
	Mon, 16 Sep 2024 10:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VFHrIVK8vYPi; Mon, 16 Sep 2024 10:32:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC40B60A8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726482742;
	bh=7SNx+Zpj5SlCBFGN7IjwWlcjtLDi5ogR6I2H/anbqC4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yGdsgc4EB2YRdE6ugWPXnCPm7qtgqoGobB7GgBv+CEZ7mtdpZOS9gNpcUa2BWxeqp
	 Y6P0G1XQ8ayK5PXbGM0mgPjeQ/NzCVjKQjhVUZjbxY1XOPiuchij7Nr53+/wgcf+AU
	 Q2SLF+IKAVWNoXIPZo4llHcDVqLZ8YUs9uouUVww5aiz9OjSVxjnoA9VRops+LX2oP
	 IHrdR+iuYcdHr3jv5v947JE5/qJMh95ZDxdOCDgtoaL8TJcR7FQ6rNBdesl1NSJ/Mr
	 0OSLexC7SoqIDOJcAfmg3huLbvyN4x3Pu8LyeZvjJgjZVISBczBUtiM8qCzrdDCjHF
	 hP4IFSDvx3oMg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC40B60A8A;
	Mon, 16 Sep 2024 10:32:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 302C11BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 10:32:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1DC6660A81
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 10:32:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SPNAZvnIdfaf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Sep 2024 10:32:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D2B96086C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D2B96086C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D2B96086C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 10:32:19 +0000 (UTC)
X-CSE-ConnectionGUID: PTJ/Oa7vQTinWSS2FIDDpw==
X-CSE-MsgGUID: D1XSRkKQTIaXS9R/K0ZMkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25428907"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="25428907"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:32:19 -0700
X-CSE-ConnectionGUID: T2kKn0EpSMWCgRuvhtea3Q==
X-CSE-MsgGUID: FgLZ/NuISNmbho27oou66g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="72922458"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 03:32:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 03:32:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 03:32:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 03:32:18 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 03:32:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wh/te+AmD+ogWW/HxXAjs2T6eu3JhkaZqJGKICoPK4x+YhNuLaz/KbVg86nZRYH4YWdaTsgf/uKZUfiQzeTMM24JGaPAnhoMkzOZLGhd1KrSSMSt+nRNu1hb5l5TKkRgH1ieo6s0jKy7xRFaSWZZsk/AoDcmuLD98nswrWZDdmQ/ecwyzKz6H6kE9FjtGLiIf2bz/eOd3oh3414/rEgfg6Igdp5ug/sHH/fuGnPlDrAouD7h3p35o0x/Ah7JXvuyXi6bgMKj79dv2K3c8Q4NBrRC81jYbU74tRiRsVTB8edMZ92YzQqun5V2lGMIo7bupODx37qgWZtGgzIGS1JpBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7SNx+Zpj5SlCBFGN7IjwWlcjtLDi5ogR6I2H/anbqC4=;
 b=lJ1DqQXvLXaRq1x8mQPJuYVRJY5U8UhXlFzEZ36mTI6G1426hS9MqP5MByGJKK2GeK2VktNj6o7ANzgk4V16mpZ4OZbyKsWeaBvJS0i6I9rkG7eLWiQAVeGJtlyT8X+os30wVr6f84/tVfrM3GBNxVNbYuTBSkjSJ9NJXjyP5E/npFhyRfDzD71kZq+fjTDTsNN6b2jsnVv50fXrHL1DEXSTgIN6qj367Zz/CuUlKQrUB+QOkoQoP2LgqMk8fJRbh8WAGwz1YonLuof6Jj9EKnL+NRBfoQ5TaYO6EJ1Gpwkg9j/adliPW1BluiXcfzMJDG9EfAy/LiXCoxj0GAF6Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by DM4PR11MB7205.namprd11.prod.outlook.com (2603:10b6:8:113::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Mon, 16 Sep
 2024 10:32:16 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%7]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 10:32:15 +0000
Message-ID: <b833aea6-b499-4b9c-90fe-aab31510544d@intel.com>
Date: Mon, 16 Sep 2024 12:32:09 +0200
User-Agent: Mozilla Thunderbird
To: Ben Greear <greearb@candelatech.com>, netdev <netdev@vger.kernel.org>
References: <9ac75ea7-84de-477c-b586-5115ce844dc7@candelatech.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <9ac75ea7-84de-477c-b586-5115ce844dc7@candelatech.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA0P291CA0011.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::23) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|DM4PR11MB7205:EE_
X-MS-Office365-Filtering-Correlation-Id: f87a4f23-f0ec-4927-0b9b-08dcd63ad4d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzlTTXNuSU90ZThudFlNMXRsVmVkNDFlY1JRc0dPT2pMTUthV0ErSTNGbjNp?=
 =?utf-8?B?eTk5WW5zYlBxRlFFdzFwS3VpUi83Y05Oc29qcDZsOXhOUHpXWk44OHlhaTJ4?=
 =?utf-8?B?a1AvdGVXYkVpYy9VWVRMT1VoNUJzV013N2ZXZWhZcElJY0RKVmRET3pGWUUr?=
 =?utf-8?B?U0ZWSlBCakxrOFNVS1lBbmlBMkRuYU5pQkpHMWg3TzJFdG5YbDIxRFNvUVVo?=
 =?utf-8?B?NWdVZVVkU2VWV1dkNXBDandxQU1HNm41YnlXYlFmVXpxVlE0K2F2ckRQN3BZ?=
 =?utf-8?B?dzFLU2VDMGc2bEFGK3lZaXBBS1ExaEdGRHhrS01DMHdKOTNTbFN6WDlTUTBx?=
 =?utf-8?B?ZGZrQ3hHSlJqK2hBY0YyT2pmNVBWSkJacGliMnFDS3FjNUJ5b0J4ZnYxTzBz?=
 =?utf-8?B?dXdxYzZ5K0NEZ25zY1h2WFhSdGV3REdwN2o5WnNmanUwRVY0Uk5TZk83QWpV?=
 =?utf-8?B?VDNSdWhkZnNDYWVvak4xaTV4ZHE5UUJYOWNRR3dKWHlzWmhxc3dvOENxU2ww?=
 =?utf-8?B?bkNtZmNzS09LOTBCUlpncVlFZW1Td2FHTFFoY25ENmIvR2g2Y3BzT0cxWFRF?=
 =?utf-8?B?RitjZEpkcEFuQ1J6Nnl3bkxTV3R3dlZvejV2RzcwV253L3RTS0xMRUU2b2pU?=
 =?utf-8?B?UzVIcGIvZk9qSzJpK0F3aG1HeEJRcmRtVWZuUGxsTUh5dnhYZG9tMUc3SGR4?=
 =?utf-8?B?MkpYaEVtT0VtUVBkWno0RitnZ1lseFhram5kVVo4NURYME44Z21BTFNlWFlD?=
 =?utf-8?B?SE5OSUZMUzJ1dFo5NzhxZjQyWlRtWlpNdklYd3EzZU1uYWZHMEpEeXh3b1Vv?=
 =?utf-8?B?Yzd1SFRKbmdFNzVKTFh3RFZXdTZpaUtXRU9LZjYrbjN2MCtBZXFXeGoyWVlL?=
 =?utf-8?B?QkIyV2d1NGhYSXNwY1RQYlV2ZEtMdTBPb1h0dGsrL2laZlVjcUZRWnNIbFpO?=
 =?utf-8?B?VEVlMFJOOUk1U0pCMFZ6VHluUFVSems2QU05eDRSSUFsRUdtN0Q1RWYycUUr?=
 =?utf-8?B?NGg4OGRnZkJhRzJXVzc3b3RBUUZZRURPeGtLcUhWUjVsZ2ZBZ3hiWERJM2ho?=
 =?utf-8?B?cnhvWjlKdlhrL3dOcUlNVXdKbStOUkNDMXRWVzYxTC9JeTFzWUlqcW1HNStJ?=
 =?utf-8?B?WFR4bFVkTmZtSElWY2RwUGpWZWVpUlZYczl5TDlMTk10SHNmbG9Qai92TlU3?=
 =?utf-8?B?cU5sRGVJc2VKRkhMaXB5Y2hNMDB0RTlDRnplY2N6QWJsbHZMRG04UXdnaFlm?=
 =?utf-8?B?RTQwTm9ZVUJMSzI1ODRJcHJ0NXFJODFKUXRZaUV2R3dUQVZXd2lOSnZvZWZ3?=
 =?utf-8?B?cWdLWGFHeHBTNGdNWHE2Sjk1SzV4M1VJRHIzNVdZdHl6ZTRINW9XM25rVWFp?=
 =?utf-8?B?R1ROdXIva0dYVjdMWlVnVEJxM2N4UkExTmdUN0hLTEVzMG1nMmlZdFNmMTAx?=
 =?utf-8?B?dEhMN1lHLzE1RWdaVmVpY1hqamxjck5TaFVoR0N4czdDT1ZKMTF0Y3E1OGhn?=
 =?utf-8?B?YzdmTi9VdkY5MWdhbXVLaXdwQlBFaGZBN004RGNWTW5GamtlQ0dpNkdzSWxh?=
 =?utf-8?B?WHNYRkxyVzQvWGtVVWdEbjN4TDQreW0wcm9mdXVpclN4azdTM1ZuZ0V5Mkpj?=
 =?utf-8?B?QkV6UzJEeERrQXNjMWZCZHJqY095dG5ybEhxME5sTmpSRG5tOHlZdzlISDlX?=
 =?utf-8?B?Mit1b3I2di8wQ3ZwTzRYT3AyQmdla1RZVG1RckZUVktkaWE2SlFhU3pZa0VJ?=
 =?utf-8?B?T09VUEEvUytYMWhYSUNIUkc1TUFnOTBQeFFWZG94U1pIbTRVZHhsUWowSDZ1?=
 =?utf-8?B?b2J6WFpnWnR5OThxSlMxQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3JYR0hkTnhtYkgxRGJhMGVNQTcweDhPY1pwQjdkeE1KNTB5d1o5WUprN0Rn?=
 =?utf-8?B?RFBsOEo3eDZ0bWgxbHc5K1F1VFZGUlFDNk1NOFBtK201amlkR0VwMGFVdUZB?=
 =?utf-8?B?OUZWcFlLc3J6NEZTcTJndHk0K0p0OG5SQmUybmdXOFBvYjlZUk5iYWFJYng1?=
 =?utf-8?B?YzBySzFVMG0vT1BMS1RNelQvVGRub01LakxXL2tqbG9td0N2L3phKzIwaWFr?=
 =?utf-8?B?ZkU4aWRLeFRNYStKc1VjYU41cHRrejRaczA5TC9iUHRMZmM2bWtNMGN3d2Vs?=
 =?utf-8?B?SUlLT0lCZDJxUjdxS2h2Z1JEVC8vcTRQdTlJVGZGeVVNYktCaDV2aTlKT05V?=
 =?utf-8?B?dWNzTEs5U28ybGZaWmdyYWpnSzNNaFN0cUtYd05yeE9zVXNwNmZJNjRubWRX?=
 =?utf-8?B?Q0dpcUJIeDVCYWlYMWdBV053ZldkNHFZYk1TbFF1REdNdGdWNG1PczdoTUt5?=
 =?utf-8?B?cC91ZWZQTmMwT09tWTVBMjBIeVRocjZMOUZUTVBuZmxFYnJqSmNiSWNmRUtV?=
 =?utf-8?B?TUkvNW5ycmZsS05WeGdxN29TYWZDb0RiWE1ONzMvQ0ZaZlp2NFhwUUR5S2Nv?=
 =?utf-8?B?VTEvTkJuSGMzL0x3akZuT1I2QVEzSzBReTR4VGcyYUlBN3Bma0xCRkgyd1J2?=
 =?utf-8?B?Q2Rmc1VXRUNEMjUxMW1ZcDBtMXByTlZGNHFiVUxnOG8rakV0Yk9mVmo4VEUv?=
 =?utf-8?B?cHVMcjBldzNXY2ZCNGdZL0xObllkSHA4Ykg4N3dEbmU5bWk2S1ZpMFFLbGM4?=
 =?utf-8?B?UEtvSWlnWStBcmNhQXRnQlgvb1l4MWlQMnM2cE01OGNqL1NZdjhUV3dIWmxt?=
 =?utf-8?B?Nm1TczRKUWc3MVNrVGVPREZoWmROOWh5b3Rpd2h3MFJGRXZDeEkrSk9Cay9r?=
 =?utf-8?B?N3VUTkU2K0VMcGhraVFOUXpoT3dQL2dmRWVwQklaSjJjWkcrcVBOUWU4U3hi?=
 =?utf-8?B?aDFnWWRIVkNRYVBXd3FWSm8zcTUwcVNhcS8xbDhiNWJSVStzbG10TXp6bzYz?=
 =?utf-8?B?S1A4N3kxT2Ezc3U3Y09WSEJCTkpSdFU1TTJSa0hBcDhhZmgyUk1GQVRVUnZj?=
 =?utf-8?B?Yk5JU1QwdmUrRkJWWjU0WkxBOHNOamNvaTRHVWdOT29ZSlVPQTZqVDRoWDJu?=
 =?utf-8?B?QVlGYkZTVUFHUHZJSUlvcWFRdHB0YWxOVXlnSUZkWm9UdkU3L2FCMlpCenVh?=
 =?utf-8?B?Z1RQUUdTcldqUVJ0djE1cHhqaWdzVzB0cWlMWmt5WVVxS0V5aHRlQWIvOWlC?=
 =?utf-8?B?ckNrTlNkMXlVcE5qSW5RVUQrejQ3ZXZiQWo4WHA2M1MvOEZiZWhsWEFnOU95?=
 =?utf-8?B?b2l3VlA4SWRGYWRjRlFIUCtNb21hcXl0RjdLV1FsQTE0ZTh0VXpKME91dk9x?=
 =?utf-8?B?eXBJNk1XT01OdFhoMkFOMkd6dmpnVW9ra3Y5QnVkWlBVMnIxRGtpVkJSbUtJ?=
 =?utf-8?B?L2wrTnhPRzFZMmMxM3hMYm1TUzFXSGFsY3k3U2c3US94Z3B3bUtURk1Oa2lI?=
 =?utf-8?B?NDN4WjNIaTQ2Mmk0VUZUMEx0bkZjYitlTTZDbFRoR2tJZ09xbVowQUh1Qm1l?=
 =?utf-8?B?RVNjNnFUd2RycXlONkZHQUhIU2RpVEh2WmtIOWdVTkIrd042eFNVbTVFQkts?=
 =?utf-8?B?QSt2RFlKcFBFdkFXSUxmbXBmaW41dmROL0FVZnhVT3BxdFFZb2o2WExTZTUx?=
 =?utf-8?B?SmIwa3F6MEh4QUQ0YU4wZFc1R0I0eFRMTHQ2Y05pU0lhRUdJa1hsSDJQc3hz?=
 =?utf-8?B?UmhHakxEa04xWTlDOFJDMlRhWU81ODdBQ3ZqVTBmVXNGcWFka3U1ejA0VVVG?=
 =?utf-8?B?c3FOMGFjVFg5R1g5dVFGd2xkS2MyalU5Z1hHSzNRNEtLbjM5aEZvZHFHN1hs?=
 =?utf-8?B?UHpvWXJrWlM1NU9pZVJTSXNMSWs2c3lscCt5UldZc1JZK0NCVVNkUTZvZzhC?=
 =?utf-8?B?S0U2b1J6K3pZSDdZdFlYZmJyY2tnS2NuaFp3b0R5dmgyaGVMOG5hbXFNRksx?=
 =?utf-8?B?RktHWFk4OC9ZTEM0OTNSRGlGc01oaXhldGc3Szl1Sm84RndFM0UyeWZvbWs3?=
 =?utf-8?B?bXRvWGRyYmlUc0svSy85dE40b2JNRUxaL2J3bmdwMTFxazVlQXZiNlJqdXZD?=
 =?utf-8?B?aTdxNWtSa3p2dENNdFZESE1RMUZkanM5eDFxL0lCMFJuOFpoWnJXQTE2ZTlC?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f87a4f23-f0ec-4927-0b9b-08dcd63ad4d4
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 10:32:15.6029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8QQY9s9mMyB6vn/WQn4vUMDQyTdWwdqFclS8KMG6qebmq09gOjFZQZK2NkZ1NwDM9tV9PDzmh7DX/eQH0lRE2aKBuwbHAgbzL2r/+UGd8f4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7205
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726482740; x=1758018740;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ULDuaxlhGnARjNl4BOGQcU4gy71WcpHy7rpHXqwHg0=;
 b=WeThGjXTj8jnlLi6BmoIaa3lDSZC3+6fiTGw3pIimG3rDIlyr3qSaLKO
 gmaTQxtlt8IL4Zt6rCtYqB/v/I2DI0mxl3tHFoIKlEFAgnnvFhqDoGzt6
 TpGcBs258CarNTNDdyeH5o9YGiRS5u4OgILlReF3dN8UDgVFWhlcCHU2O
 cQBLKjsaKeXmI/xVucs71HNizHwCp/M3SCTGgXAIDSxJaTsFNMYdYTC/y
 0kdyrMI0l94qY51SLOE/9MK5qQ62AZ/GPUj5Zetam5V+k1J+nT6D6DgYg
 r+03ylpRyYM2MzPpy1qE+jSGIuwhi7kUWxpOSYu9dT6LBmjMwpb0KYQw/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WeThGjXT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] tcp_ack __list_del crash in 6.10.3+ hacks
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/14/24 07:27, Ben Greear wrote:
> Hello,
> 
> We found this during a long duration network test where we are using
> lots of wifi network devices in a single system, talking with

It will be really hard to repro for us. Still would like to help.

> an intel 10g

It's more likely to get Intel's help if you mail (also) to our IWL list
(CCed, +Aleksandr for ixgbe expertise).


> NIC in the same system (using vrfs and such).  The system ran around
> 7 hours before it crashed.  Seems to be a null pointer in a list, but
> I'm not having great luck understanding where exactly in the large tcp_ack
> method this is happening.  Any suggestions for how to get more relevant
> info out of gdb?
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000008^M
> #PF: supervisor write access in kernel mode^M
> #PF: error_code(0x0002) - not-present page^M
> PGD 115855067 P4D 115855067 PUD 283ed3067 PMD 0 ^M
> Oops: Oops: 0002 [#1] PREEMPT SMP^M
> CPU: 6 PID: 115673 Comm: btserver Tainted: G           O       6.10.3+ 
> #57^M
> Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020^M
> RIP: 0010:tcp_ack+0x62e/0x1530^M
> Code: 9c 24 80 05 00 00 0f 84 56 09 00 00 49 39 9c 24 50 06 00 00 0f 84 
> b2 04 00 00 48 8b 53 58 48 8b 43 60 48 89 df 48 8b 74 24 28 <48> 89 42 
> 08 48 89 10 48 c7 43 60 00 00 00 00 48 c7 43 58 00 00 00^M
> RSP: 0018:ffffc9000027c998 EFLAGS: 00010207^M
> RAX: 0000000000000000 RBX: ffff8881226a8800 RCX: ffff8881226abe01^M
> RDX: 0000000000000000 RSI: ffff888126a3d4c8 RDI: ffff8881226a8800^M
> RBP: ffffc9000027ca28 R08: 000000000005edf6 R09: 0000000000000000^M
> R10: 0000000000000008 R11: 0000000084d9074f R12: ffff888126a3d340^M
> R13: 0000000000000004 R14: ffff8881226aac00 R15: 0000000000000000^M
> FS:  00007efc82a2f7c0(0000) GS:ffff88845dd80000(0000) 
> knlGS:0000000000000000^M
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033^M
> CR2: 0000000000000008 CR3: 0000000125477006 CR4: 00000000003706f0^M
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000^M
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400^M
> Call Trace:^M
>   <IRQ>^M
>   ? __die+0x1a/0x60^M
>   ? page_fault_oops+0x150/0x500^M
>   ? exc_page_fault+0x6f/0x160^M
>   ? asm_exc_page_fault+0x22/0x30^M
>   ? tcp_ack+0x62e/0x1530^M
>   ? tcp_ack+0x5f1/0x1530^M
>   ? tcp_schedule_loss_probe+0x101/0x1d0^M
>   tcp_rcv_established+0x168/0x750^M
>   tcp_v4_do_rcv+0x13f/0x270^M
>   tcp_v4_rcv+0x1236/0x15f0^M
>   ? udp_lib_lport_inuse+0x100/0x100^M
>   ? raw_local_deliver+0xc8/0x250^M
>   ip_protocol_deliver_rcu+0x1b/0x290^M
>   ip_local_deliver_finish+0x6d/0x90^M
>   ip_sublist_rcv_finish+0x2d/0x40^M
>   ip_sublist_rcv+0x160/0x200^M
>   ? __netif_receive_skb_core.constprop.0+0x30d/0xf80^M
>   ip_list_rcv+0xca/0x120^M
>   __netif_receive_skb_list_core+0x17f/0x1e0^M
>   netif_receive_skb_list_internal+0x1c5/0x290^M
>   napi_complete_done+0x69/0x180^M
>   ixgbe_poll+0xd93/0x13d0 [ixgbe]^M
>   __napi_poll+0x20/0x1a0^M
>   net_rx_action+0x2af/0x310^M
>   handle_softirqs+0xc8/0x2b0^M
> __irq_exit_rcu+0x5f/0x80^M
>   common_interrupt+0x81/0xa0^M
>   </IRQ>^M
> 
> (gdb) l *(tcp_ack+0x62e)
> 0xffffffff81c8601e is in tcp_ack (/home/greearb/git/linux-6.10.dev.y/ 
> include/linux/list.h:195).
> 190     * This is only for internal list manipulation where we know
> 191     * the prev/next entries already!
> 192     */
> 193    static inline void __list_del(struct list_head * prev, struct 
> list_head * next)
> 194    {
> 195        next->prev = prev;
> 196        WRITE_ONCE(prev->next, next);
> 197    }
> 198
> 199    /*
> (gdb) l *(tcp_rcv_established+0x168)
> 0xffffffff81c88b88 is in tcp_rcv_established (/home/greearb/git/ 
> linux-6.10.dev.y/net/ipv4/tcp_input.c:6209).
> 6204
> 6205        if (!tcp_validate_incoming(sk, skb, th, 1))
> 6206            return;
> 6207
> 6208    step5:
> 6209        reason = tcp_ack(sk, skb, FLAG_SLOWPATH | 
> FLAG_UPDATE_TS_RECENT);
> 6210        if ((int)reason < 0) {
> 6211            reason = -reason;
> 6212            goto discard;
> 6213        }
> (gdb)
> 
> Thanks,
> Ben
> 

