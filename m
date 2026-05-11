Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJtnJbeiAWpKhAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:34:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD48F50AFD5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:34:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15E0F4106C;
	Mon, 11 May 2026 09:34:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hy0zwoBTW2-O; Mon, 11 May 2026 09:34:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 871C2410E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778492084;
	bh=Q0lAIPjH77nr57U8WufJX27rS3o1/83VWs2WfLYqVkM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ImjZvPsEkIvleOfCa0AA7G3BCk4a25GX6p8mNnZyh8t9Xcpj7ZEWqg9HX1J+JpKPe
	 oUGar9D5VZoRzIQqz62XIa3xAg2KXtmgaVJIdF24L+SsZsdSgRdmEEMZyqJ20aizpb
	 mSyP4rbZmbeFW7RWPxmbeownzXEpbpJZBc5892H1nkNbBk6TIa+s3/Zt9Clrsvjpfr
	 3IKERAJ19KDtbX7bhpk3UFrSBYi/KsmXrF0Xo0oPOt3p4v688feJ8PRX0Vpx18oL/K
	 DX1KeW0lJkWUSJ6S3En0KT5JxaLIDXLIkaw3VEFslHne7Lu4ERyLGTfWPnzLrujTNW
	 a2vfttqbNfp8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 871C2410E4;
	Mon, 11 May 2026 09:34:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 24E1C272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A71B6079D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:34:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ztKlFxN8HToW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 09:34:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7524860799
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7524860799
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7524860799
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:34:40 +0000 (UTC)
X-CSE-ConnectionGUID: 6dG9bLdMTLSNqX9v5Y62lg==
X-CSE-MsgGUID: Tf9X1NA1TE6In8G6F3jDdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="96938899"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="96938899"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:34:40 -0700
X-CSE-ConnectionGUID: /HaFg4NTTQiSv4xnesfBew==
X-CSE-MsgGUID: X4XxSylqRCeJFUjo7fkk+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="234742993"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:34:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:34:34 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 02:34:34 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:34:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l1YM9HoApNB88MkEmrCTK1TsaRBZ5CL5jrPK4SFqWC9Pv3MZdBP3cl3bwSIR1ui5QaCs7Bmf+KgE+c+ipLCf8t68+BHJjmFsxIgFyMBLTRtHXWcv8KMu0Vns56LyzoIxbdqiT77efebUbFB3J1hv/VWcd17G4mvpfUtEoJad61Zihi6G4oAygxf7UkuhXa1W2RBNNtRbkta3w+C+QIDFFhfqEmWGtXatsPYHUe74hH/HWYaIIBEHdJ9MmC3IevqmYHhF1TPDnHPUtzvWKfUJEpRpsfTdcOpExKk9SU6DgvLcFozAWMn/nzuFaWQimflwJZxtkHcq8w+tvS6Uejxs1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q0lAIPjH77nr57U8WufJX27rS3o1/83VWs2WfLYqVkM=;
 b=c7PSTJNLYJ7xm+q/h1eudq9bqVLEMS4fm40iuM+pSgikTuTMlcmGgS6iYnkSjS/z8sPeM/8frpUJpQkEQttVKIJnOVstkZ1L9GLHlhjScK28kf8yPYJfl96eeA8FN9DhbPj1sQxXLp7FviE1/XGz9WUpfDrv2uIV2qnB2oMoshwOsuzp6YhBT3Z8LJK9allYML0NNvCWXmG4S0jh4IyVW5gOClw+FPi46XXsToeRkKDDeanNyQOcDonU6gaZAGDH0U15+WMmBVDCapMvkz0HYJQsGJctXFpatA7+SjmJA9QMSEQs9ULH/X3pVsr4bJxahGyIbmRJMHQqDlC3swfBMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BL1PR11MB5317.namprd11.prod.outlook.com (2603:10b6:208:309::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 09:34:19 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 09:34:19 +0000
Message-ID: <d9fba1ad-b401-4d50-b05c-957c594cb40d@intel.com>
Date: Mon, 11 May 2026 11:33:48 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
 <20260508124208.11622-5-przemyslaw.kitszel@intel.com>
 <IA3PR11MB8986D8AC00918C492A712404E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB8986D8AC00918C492A712404E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0007.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::12) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BL1PR11MB5317:EE_
X-MS-Office365-Filtering-Correlation-Id: b037b4ff-b6de-4872-c7e4-08deaf4079fb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: uo+PdzpZUolwS8Qw8SomPD6fKBe1SSzZ8y6q8B+WbzaNgDn6gt+aY1JIvrRk+sC4zpqJGabaH1gnSvK/Znevu3XSMWTuXb9SLsHtXN88+ACsbDrzJaRlJtHslP+DzK9E5gmK0QwuGGcN/47LeoKyhrt8sGHp4wNuksgi39I+YcdwieZSABOb+Ksz1G1D3S5EtfApkgRqfkg5QzlGQDmHED1XLSP4rXCU8KjNdT+s+mcELnYlhTT0aKsid3OAGkZOTVMvevxKZNdb7seSlqwegRoEdb9sq0rWkoIcXkbXc8L5YuS5MRchVyxlsfzFmoM8rm8/qt/EskxNeWmudVNvF/tHLcAhL4WbB3jdA7SaCRVsOayhx2yb5HW3YffY5FkIGJozR4rGgMQaa1c3Hu0GNMXB2dkHyUQTzbfxUwpbeKUwnCp/iGzy6srTUF7Q5T0exAcw9Lss9gKJ/1w09KuxYCFpUhCG2sFeKYofcyxYN3Dc2wo1Zj/lqDYABdUVjX0TWgwhEk/ChIDidqa4boWxvT1S21OuKOZuEfD1i3h74XKnvv34mYtr0AXH7rBtG2p5FTkjkzKirz9pT/Qbn16zW5pFHELw71CQnRjlbfyUHEM42l+QTbJMA7f0xMbevG+K/MDXwdo9b1xa276aIoUXxoeTzg5Z9z0wfn2JB0aO0+tH1j0wVqZAeL0WT7i8j++x
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjdTQUtzRmlMOFcvRlJsbzMvUTE2d2s4MWFKcW9XS0JkZVh0MS9nR2xIc25R?=
 =?utf-8?B?bkNCRnZ5Qk1VK2MvU1BiTTNHVEo0R3JqbER5cjRjeUtGTkVYZmFaeHcxMkV4?=
 =?utf-8?B?N01MT2UxNnlzVCtNbjR2MFJwS2Q2VmdwWXptNzJYdlAvZ01jK2lKcitqZVht?=
 =?utf-8?B?YUV0RC8xOTNybGlhTnJFUVBsY0d6V1NRTkYwa1hxRk5LaU9pUGd4dklqK0di?=
 =?utf-8?B?ZEd1WDR1UTZFNmhrYWNYK3dNQU9vUFpqdldjdlJFeFY4Zk9JYTgrTGJ5M2hu?=
 =?utf-8?B?eXlDRUxUYmNHSS8rWGQvQ2xGNEliRnlFZTQxRHJ5UjZCcWM0T2NTM01ySjZO?=
 =?utf-8?B?aGFUN0lyVmhCVHB5bFZJQ0VYcGhzMXg5SG5OMEdQL3FPMnlSRU5OakR4cHpM?=
 =?utf-8?B?aWErZHhBV3lrS1lCeWhvcncvSE5aUEhlV1UrajlLUnJSMGpKNTE3QnMxUHFs?=
 =?utf-8?B?cllqR3BoSkcvVUhJbXVPei91V3E2VFVXMW52TDJFZmVFckNOY1NqdW5kYmNw?=
 =?utf-8?B?cUM2S1lya3drVWRoaHZYcTFtdjROSlQ2VkNoWS9qWHMzS3cvNzlJTzdQSGRv?=
 =?utf-8?B?K2FBWDN2ZkpTZ1A2Qk5TYkI1LzdYYXB1MEtCYWFITzQyV2RoUzhHS1ZyalFq?=
 =?utf-8?B?U1c4aWxyUEM1dzF3SE9jNW9XTWUrdlorcTF6TjFkVGZvcm80NWZNdXFCeUFU?=
 =?utf-8?B?NHBsb1F3dTZoVFZVWXZjMDJkRTV0ejNnalVVNzVqMnNOSi9JR2NFRTZpTDdv?=
 =?utf-8?B?TmhHOGRTa3FWOHAzZjVBb0gxb052MlV5WHBQV0NsV0JBQldlU1hIU2daQzQr?=
 =?utf-8?B?MEVIbXhSZnRiMEp0cWZlb3dGams3MTBXeHJGbGJVTFIyL3ROWFd6TDlnSEIy?=
 =?utf-8?B?LzZXVS9GbFUzUGJRaEJFcmMzUy9QaFBsZXA2bEIwWC8reWU4d0ZxcXVETjl3?=
 =?utf-8?B?T0F5TXM5N3lwUDFNUlFOSlc5cFN6cXVXYXM4WlhvbG9sVTBPZUVEVmFFMS9B?=
 =?utf-8?B?ZjlWM2x2YTQxTnUzbWYwamRqWG5yZG5wQlVLazNMY3ZsYXRRYXdkTjlvemVY?=
 =?utf-8?B?NWtnakQ4U1dSN2N1alhwalBtaXNJaGluMlpKcHA3NmZzYStZdXFKMXRISzlF?=
 =?utf-8?B?MFo1OTloa0dObmFNNDdpUGRJdll5d2ZQZGJoYzhqbWlNTjlYVWlYRStheG9L?=
 =?utf-8?B?NEtmRy9lUm9icWQwam1CMDBINXdheWtrNElOcVZJVkpDV2VWTGd4eGpVWlpn?=
 =?utf-8?B?MGZ3YW5QMklpNDB2cGlqZkp1dFJFdnBwQ0YvRWNtSDdaSFd4MjM4WjArTVNH?=
 =?utf-8?B?ek56MDZWVVNCM2RmUEhGVmpjcHA2amJ1NGhGak45WlpvZkJtaXVoaE5nSVRU?=
 =?utf-8?B?cFJUVTdOR3NCSXJBbkhacDVsdUF6RTRnTXdyYnk5TXc5UWJZV0RhTVVDdVFw?=
 =?utf-8?B?cWcyb3FOSlBmdUlOSXhRdldjb1RjeTRMZDR2N2s5cjhLT0NhUzJxcVFoK2xy?=
 =?utf-8?B?RDdsQU5yWlhnY1JDNUhjT1BYeTh2MHcvTGNtOEd4c2o0YnB5VWJ0aWJqbDk4?=
 =?utf-8?B?cFlyTkdLbnhQU1JyVmVrOEdvcHhUZlBaRS9ub21YVkxwdHVFWW1KaFdNbU91?=
 =?utf-8?B?MWh0NzhwZU5ReUU5OTJDMDBSeE0xTVFMcUxuUTRlQkpuWG5ONEtiY0I4cTkv?=
 =?utf-8?B?VHlZakI0MmR0eWR0YUZRS1JSWHA1T2NSSEFlQ094ZCtxUE9rQit2bnlMcUNj?=
 =?utf-8?B?bDU5blg5QjlOT0lSMWhKREtUSk9BRzNXNGRIbjgyeVNVWWVwY3VDSkJHYVFD?=
 =?utf-8?B?UnFqd3lvWWhRWkdBaGRySTRPK2RMenVVM2pkYmswSGNTYUdxUUxiSTRoWkR4?=
 =?utf-8?B?N083TW1oT3JRZG5MUk84eW9qanBReUNaK2M2TC9PcG9aT0h1aGdOamZtQ0tC?=
 =?utf-8?B?NW9XeGp6cGMzZVd5UWRKeDBsT1BGNjBORk9INkJiSWFSdFZIekpDdDN2bnF4?=
 =?utf-8?B?NnQ1QXJkVmVkTzJIRzhtTEZ3RjJyNW5zcmdRVGo3R1c0bVZFN2NhSnV6d294?=
 =?utf-8?B?L3RGOXR6Y0ZjVlhaNnZWeXFmd0ZieFN2TjRRQzhsTWNNeVVZbEV2VllqdXZq?=
 =?utf-8?B?UHRpK1A4Q3c4RVZsM0dWNFFCelE5TXdhVlVJdkhQZms1ZHZBN2hYcHdBSHp5?=
 =?utf-8?B?Ri9xMGNXMUhqc0IycHdMdVRoZEZMcDQzdzJpYTN3cGltSXh6VlU1UlM0WU8r?=
 =?utf-8?B?dmRkY1VvME5yVHhSL0dlQXVBclB6aHhiZGVnMkZGWSt4akRETjlyL2x3dUFw?=
 =?utf-8?B?MjZzOFFhVEM5STFRWTBMYUpWbUYrd3NFaFJmMWZkcmoxYi8wbHlDQjJpcC9i?=
 =?utf-8?Q?VFRE0ESDutG0yJoc=3D?=
X-Exchange-RoutingPolicyChecked: pna3J/nkRpTVr6Jy+d0E8VOlkmpJI9ox33B3LV/tz8kELaFT0X9ypEBrEqqHu1wHyv9S1ZflyQbDtn1mHpSyFL7+/lZKUtiDIQ190+1/OigSvbnJIfoTg0OiFsJVEBrW/d4Ex9RqfHFsLRulOlx+80eR2zkoy+iM5LMf4ywtWKY8EHyvigdQ7lgrE0kuQL2o+00ucz3nAFrsOPLwKpxQ+bDog+WBdVvG7dwveSrpfKOdkJa7senajsiCBOmrVkFZGfo+xyO1twlDIt4wtw42xi7kG6VFI/UE51xY2y0dVppg2ZV6KHyVCgFNSkYfZA6S4pSpfgdHfJ5c+lhj7vB45Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: b037b4ff-b6de-4872-c7e4-08deaf4079fb
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 09:34:19.6569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oDoDpxRuAFEFJPIsPH17Zno4gmdvZgzcRm4jtAbOSJpeJ7tmup2d/avGsslYH0+ulXXrYNCDfQ1L0e90j4Vb56QKEMFp/pIn52iGB4QtaxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5317
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778492081; x=1810028081;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DnwlklORnvAXk1mP/kvc+ULr/4HpBt9xAU7OMy5zKKs=;
 b=eLhKS+tWyv+Uc4swvn9IGgNf63ruOEFnOYua/hYAcNd/RtjxB+MFwvqT
 uM6t6EaVRaV4i0I4pxJrv1IULYYguz+RAteAcSwISfGgSHPZTIMnY9BBf
 ZJGK4fw8L/epy5J+zUh2qm0wvZ9zNACfq3lWZwMckMIyjvvnWcBqokhn9
 cA+3jxm7jjYcsCpqC1rdQdJq47hGG6wUYiDu9CkxSWK027cYXAPPXmpip
 znJLYrRQs7Sd2yZ/PDh5tcQXFnfRsJrY/maixbO1dfYpS2m7TGMFOvb2I
 gh63A7IBFZ++HWVsf1jqJsqzQIQnSsmshAL2/gQP0Y1z3OOf4Cpvtr3va
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eLhKS+tW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 04/15] ice: add VF queue
 ena/dis helper functions
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
Cc: Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "Drewek, 
 Wojciech" <wojciech.drewek@intel.com>, Leon Romanovsky <leon@kernel.org>,
 "Medvedkin, Vladimir" <vladimir.medvedkin@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Miskell, Timothy" <timothy.miskell@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>, "Richardson,
 Bruce" <bruce.richardson@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Connolly,
 Padraig J" <padraig.j.connolly@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Mark Bloch <mbloch@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Saeed
 Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: DD48F50AFD5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:ananth.s@intel.com,m:wojciech.drewek@intel.com,m:leon@kernel.org,m:vladimir.medvedkin@intel.com,m:jedrzej.jagielski@intel.com,m:timothy.miskell@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jiri@resnulli.us,m:bruce.richardson@intel.com,m:lukasz.czapnik@intel.com,m:padraig.j.connolly@intel.com,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:tariqt@nvidia.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action


>> +/*
> Please use linux kernel style:  /**

this comment is not a kdoc
there is not much left to make it one though, will do

> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

thank you

> 
>> + * ice_vf_vsi_dis_single_rxq - disable a Rx queue for VF on relative
>> +queue ID
>> + * @vf: VF to disable queue for
>> + * @vsi: VSI for the VF
>> + * @q_id: VSI relative (0-based) queue ID
>> + *
>> + * Attempt to disable the Rx queue passed in. If the Rx queue was
>> +successfully
>> + * disabled then clear q_id bit in the enabled queues bitmap.
>> + */
>> +static int ice_vf_vsi_dis_single_rxq(struct ice_vf *vf, struct
>> ice_vsi *vsi,
>> +				     u16 q_id)
>> +{
>> +	int err;
>> +
>> +	if (!test_bit(q_id, vf->rxq_ena))
>> +		return 0;
>> +
>> +	err = ice_vsi_ctrl_one_rx_ring(vsi, false, q_id, true);
>> +	if (err) {
>> +		dev_err(ice_pf_to_dev(vsi->back), "Failed to stop Rx
>> ring %d on VSI %d\n",
>> +			q_id, vsi->vsi_num);
>> +		return err;
>> +	}
>> +
>> +	/* Clear enabled queues flag */
>> +	clear_bit(q_id, vf->rxq_ena);
>> +
>> +	return 0;
>> +}
