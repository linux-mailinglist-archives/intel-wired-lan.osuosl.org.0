Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAh9Mjrl3WnDkwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 08:56:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E38D3F64BF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 08:56:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 893D242989;
	Tue, 14 Apr 2026 06:56:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3X8dTmJ3lbff; Tue, 14 Apr 2026 06:56:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5C5C4298A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776149815;
	bh=XV8ql2pvk3cDyGG95eDwi3SswnYQ64VNnGUu9+NMnDk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PLbqSiKP7AQn+6FPPW2gdvd+lFI9ax2lR3/I0GEy0W07cFzUM2XfrabdQjSfynRKH
	 8tcZ5Hb4X4ewzvFaogWvzTRi9//AE08D51pLAJWP879Tq0K8MWe8BJffMUuTIyL+zP
	 yfvaRidzEunjlObt3ylF2tx/5SR5NRPAjUI8v8KezPbohTe/avu9ZEtTTurFfMBy6n
	 uCJpGAi7LF636H5itjDkK/NPVdDwe0fknErkR0M3w0maj3xawGQXAE5/EU3H9Fj54d
	 0W5qJlz4oDbWNHTNUYOAspB70/OL7Z7WHZpcgdLiIysI9hx6vFkist3MdSJrh5/kYt
	 7ddXkO8Q2COEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5C5C4298A;
	Tue, 14 Apr 2026 06:56:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D404D237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 06:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9D0061CB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 06:56:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PVDa6ZvXCGNE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 06:56:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EA50061CA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA50061CA0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA50061CA0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 06:56:52 +0000 (UTC)
X-CSE-ConnectionGUID: JYx44a3JQISb/ctYO09KlA==
X-CSE-MsgGUID: P+i0PcJLRDC+NOavElOVXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76803723"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76803723"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 23:56:53 -0700
X-CSE-ConnectionGUID: mcDWhK2HR/u02rTOtKJBnw==
X-CSE-MsgGUID: kRn4OQ5nR2C5sYycRyEa6w==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 23:56:52 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 23:56:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 23:56:51 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 23:56:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OJ20fT9IZYF6wF+NyZFWPLZ2T01ALXvPMILF8w4qYkA+ozKdGxsc0CKZsIIOzmRx16xEBpG6RRCuFd1Wb0dvpNRg3tqiMRvSJLLjCehdA0qMpUSmSmFVYwcWgO2Hn+T+x9lFd/OjULGAyCGJkhANSfuLD+xmRo2FvFbfyA4pk4hq7o8cCIbWhb+hBWe93keRDa0MCQTrSLxQxJZ60WK2jN/aVSh6cp/Hy3tmVfjbUkUWhv1TAgX93by2Z07rs24lJ4hGW62zNRRL5R+1Exi5L+LERkSKpHmXNORBxBgq5PvmaP50NhZ0WBkjMEPX7g1+0OJUjY3MbE1N8HPCjRm9Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XV8ql2pvk3cDyGG95eDwi3SswnYQ64VNnGUu9+NMnDk=;
 b=SjbfgT7ILntXk6DuTXlQo3b3p8mhfYnX/RpzOBZMMaBiCFcBAD98aA2QvetMl5BTDTYovEqTAeccF6nHRf98BL9j1vCskfPFrMBlJhzKxkwU8+zbfZOxQD/iJI5vzcN4KpN6ztLyMIo/NphSGNZMBloeUs35J+va/5EMe74sQfi42QZ1kAplWLkVwtjCatjX6XL3PK9D9pIiInPID/oqlhpXizogHpsCqyLsVy/vD4HP7ZxN8qiF8Y1+qpBzwwrlfKT5aYWxSpeTSwSXZkKRJUU/b0Ds0PgvqTgLnBIbuwypEZAPnfCzsgApmHsUc1dWk9MHEESOj0cDxTSMBkDjew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by SJ1PR11MB6154.namprd11.prod.outlook.com (2603:10b6:a03:45f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 06:56:47 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%4]) with mapi id 15.20.9818.017; Tue, 14 Apr 2026
 06:56:47 +0000
Message-ID: <5f0622a0-f42f-4f27-b457-cd13a23b316f@intel.com>
Date: Tue, 14 Apr 2026 09:56:42 +0300
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@lists.osuosl.org>
CC: <jacob.e.keller@intel.com>, <anthony.l.nguyen@intel.com>
References: <20260414065144.2990497-1-dima.ruinskiy@intel.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260414065144.2990497-1-dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0020.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::9)
 To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|SJ1PR11MB6154:EE_
X-MS-Office365-Filtering-Correlation-Id: e68ac175-43a5-4564-2923-08de99f2feb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Wb8hblt9z+rbAKXYyR5jXe1hwVTjY9GJRNAoaKB35OcPUVeli6PwT39jkzCZqKa1d0p+Yv0bH2b6G3IxKRtw8qZOmV9z0DyfF0hG8J4oOhwXc8je2PvZwLpWrnW0kVMApptqRWeG4l9z578d2KFIjGxsoCd4OxRHdBVYNIjm0/Y8L+IucuH91vYLAcyXKb6/qbD7Fb7srJcJ/RQTL5Ckw17uWTItTb1Wz8evF7JmJp2R1DFulE1igfV8YQufHktw1LCsSXFsEEB8lcmXPQRPbxD5XTdQ9MIpiWrU73b3pg6Z1yxQ0s5MTqlyEJTW7E9mI82qbgLvpznvwaKEWhnSx+nIuU9MA/SvEHzhkBSBt7JRP3nNYV8grUWFNQFN6chlU3KfNPHPGyMf1aKaqQt92+bznfCQarCI2LWY3J6ia3J7VwFgTCHpDubO01eBwZLa9GO9x4VoKW/VCqkeYyiHmz02wmfF3+5Ifemx1JI1bshZZqyWty7u4/zXds6hz79Y3IlsUz2UjTBjSUwfPWcCKet+/aehUP3JyqapTM37p/Xz+I7DIIVgX+EhKnh3tcCvh5+NyZriuDqgpSTq8XtMr0jU40fRD6szNB1YCvee3qS+qC/zIRNoxrGz9qov8Z5dF9dy1kwvXzAbptUr/Fm1qePuUS4dVrO6SQJcN7ydR/8UnM29krvFxW1Ea0s45DfY2yxxzA7hFT8knS8WKj2V3Ej8a4/TImUAHLhne4rehBc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVVrSW0wdlgrMWIxaDRSYTJld2UwSlBHTEE3T2NVdlFjVmdrUThZcHU1aVc0?=
 =?utf-8?B?UUtHMVhsdVJlanNKWDl1ZlBlcmtWeWdaSk13azZWeEg4L0VJSEIvS2lnQi9Q?=
 =?utf-8?B?OWs3cGlCbnRJTnlnT29wcGhVQjFLa0tNVVNGY0htcStlZVBRZEJUY2crVE9r?=
 =?utf-8?B?SlZ1ajl2QlNvZFpWV0FUU283aytjUjJ3MnZ2TWFXdmFPTElaLzhSWS9QWkRZ?=
 =?utf-8?B?eTJpNGN2dTFXb1pvKytxRG9ubmhDNzgrZ2ZQK1BmZUJoemVaY3NhZStxcVo3?=
 =?utf-8?B?L0hzWVNxVzZHUWdqWC9VUmZMekRNMnJHeHg3anFwNzA1eC9NZzFEelhRR21H?=
 =?utf-8?B?Y21OcklHM1ZaOTY3UEs2NzJaVTZPc0FKdUQxUm1DeituVWRGN3JuSlA4RWIz?=
 =?utf-8?B?TFRsb0JsWDZ0YiszQiszSllxV3NKeUpwU0w2QXcxc2FjZ2pzUGZUc0tNd0V3?=
 =?utf-8?B?ak5nM0R1ZnFOU2FDTi9sRE9KQUZJenFHY3dOZFhvQWs5WEtMaE5ETDNSTW52?=
 =?utf-8?B?TkdYNk1HYmtWMFFJUCtuT0QxdGlJYjAvY0NyMUgrTW1hdEVXOU1tU0VzTFpx?=
 =?utf-8?B?TmJBOEsvZFRsYU5DTGdrekZ1MFVYbUlETlA4WTZ4RFFJY0hpaUdDQ1NvdFEy?=
 =?utf-8?B?NjZOMVVJOEl0RGlIeEpRSUkrNTJSL2s2L0ZxNXlmWEpUcmpUakRKaGZFWElm?=
 =?utf-8?B?TUFsK095MGNQSC8vOHZ0NXpudFFPS214S0dldnFzVGZWa1BoSk5XVXRlYTBj?=
 =?utf-8?B?OTdTMUN5ZFpmR0xZT3VsZzBuNzVNRzBDUWRsbGxMV3R4OVBDcS9DR2tmODlT?=
 =?utf-8?B?YmZ0UHhqdXpEbUpxdHBPdEVtRC9TUlRyR2VDeGdUWjdJM1NLRldzRzArS1U1?=
 =?utf-8?B?cXRFVEs1OTJiRmtYbDZCOXFtWnQ3QW1Wc1NwRndlT2hPUXRPZnNjZ2FFazNl?=
 =?utf-8?B?UTVrTFBOWG9DMnhwa05LSUYwQlBzbng5OVVqcnhwc2JDVFZtd3AyMzBiOXl6?=
 =?utf-8?B?U3NUOEtvMjZ5OWt4UHRKVnppWDgzR1A2bm1ETTc1dDFRVkhHOEZqR2JXRDFI?=
 =?utf-8?B?TStJZ2JzYVR2Q1AyZVVjZGxkZ0V2MjljYXVqeVp2OVBLSnk2dVpnWkQ4ZGN3?=
 =?utf-8?B?WVpYUnE1RWREVzZ4Nk9lQ3o2TlhPQWNTYTV2QjhCUEJucDFnR3puZytRREtK?=
 =?utf-8?B?dnJ2MXhqY04xZDRWQVROR1Y1L01aQUF5S0YrUDFJbXM3aDZNRHh3STNmSnBB?=
 =?utf-8?B?VmFhM1V0dy95UkJNSkFuYkl5SEsxbHNRaGFWbjNTQWp1dGo3MFBtOUdTNURP?=
 =?utf-8?B?d0xxNklxK0xEbGllbW9CKytHUFI3ODJ0TDJlQUt2NEVxMFQrSEhENC9Vc3NE?=
 =?utf-8?B?TmdwTmsxQzZaWm9xaHFOOXdqRys3ajZxMDBKS3M0c3RZMENRdk5lc1lLb1BH?=
 =?utf-8?B?MnpGZXFoSkZHQVJTYW1ma3JHYmNydXRwWHVRUWlvWHNNSlVndUpqa080aDl6?=
 =?utf-8?B?RS9lMGNjRDh6aWZHK3djd2JvdU81OFNRa0pYNnUySnFxeGQ5eFB1RXBkbnNs?=
 =?utf-8?B?ckFTN01mSlVXTVRkSW9yUnZsNnd5MjN1NkpyTW1Tdm1RWUJNOTQrOUtMUng3?=
 =?utf-8?B?WFpnQ0xjZzFKckZ2TllFd3R1cWxkNnJaWEt0dlRpMXlIa25ydWh4cGFsTVVW?=
 =?utf-8?B?d1RWMzJOanVyUkRpbWhlUXdnR3hKdnFxOTM0VmdCdktkWElTeFBzYWczYTF3?=
 =?utf-8?B?dy9iU3BiY0hNV3p0a1QvU3FoZGxaN2p0eDBJdWZrdWJUODVFZkx1NjE0S3lW?=
 =?utf-8?B?b0doMUNzWUxKc2V2cUZmNU8vTU1YUUFCZC9mR0F1eGxrSTMvd0NnemVuS2oz?=
 =?utf-8?B?S2xXZUZDL0REMGQ2djBDUllpZGNoSGNpT1R2bTgzcC80ekRrZDlRdGpzSzBo?=
 =?utf-8?B?VVBtMjV6U0ZFT0RkK1JodGRkbnpNSkFkcmNVb0RVTGYvY21FSGxhRUtxVUMw?=
 =?utf-8?B?U3Zab2tBeDRtVEJ2YTBhOXNCWnVjL1VVYXNkUTluZEcwNVExcGhGWUNzZ25Z?=
 =?utf-8?B?dG1meVEwcU5aSlJwQVhYY2RTbEZDaGg2a0NEbWwwSzgvK2I2K0Fad3JSZWw5?=
 =?utf-8?B?QzVUV0VtYk5jMlpYSjJjNEh4S2RJcmt3Rzh2RlQxV01lU3VRejZlK1ZxZ0Vs?=
 =?utf-8?B?WW11bjdQcG00eVVRNFJzYnMzM2VLSUZhZkt0cXpqVzV2MTFQZHZrQmNROVA5?=
 =?utf-8?B?TUtGRHM3bTRVS3RFVTRLVFhVV3JVeEMzUzJiZ0p4L3gxejhxQ3Fka2orbE5M?=
 =?utf-8?B?RmtreHdkZXYrQlR0ZG1UTlFWcyt5Ym84OFJ4dDNoVkFkbFNEZ1ZlbE52b0Y1?=
 =?utf-8?Q?zxdLz2Eiy08HLY1w=3D?=
X-Exchange-RoutingPolicyChecked: bAws2pfX7aG3+BRvM4V2JrQdSF/c01h+mugUXASZlVD/uBlsEUUDSatCf4u3W+Le8flR8z2sdOwBkhHju0C/Nb2DKqwpRADJYPhi9Tm+rQyphAzI3Edw0dG/eb9va49OdN9TDRt0j7ZxjgLCZUPw4C0htLtlzBXgaJKBmyxtfs6zrgcpnDy7o76SXndabnycilBLZKzu15w81Eyd+QU8fmNRflbY8mHwfpTMHzwqwJv/BrWskozor4M1PqFrsW86lmYm7xd+GQ1wI3rKAQB6pRLkwQ7vrq8R3VOIsSazlyIwhl6rgx5Y2mXP1exFwyhw6y6OKAnLTnEEymfuZ1HfHA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e68ac175-43a5-4564-2923-08de99f2feb3
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 06:56:46.9479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AeYh5GfsNcnKfu6RhEEjm6xoeJxlsZ7CmWCaS/zdG0/I+OspmYjpcnz5FOpFuib86J+WJGhki/bH2v+/D/53kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6154
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776149814; x=1807685814;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zn/hMAzuLUaIg2rTZFfw/fMtRw9gcSJ8XDNoaW4xwYE=;
 b=BYnGVWtCo/V5GlzEQOwM6NRdW+8YA+u5TTLT+aIjjGsfnJR+sXiDIbXy
 R3AYSp5l3a/celeZuTE5ABs4pcGyjHeQAheJpeL6Tb00zpdeilTUSsaP2
 CdiYgXCUKIsoIrDb7mYKQAZo0GYuh0++d2XtugW5t2zUevj6jO/unbBTl
 M7e5WCsNaQsqUAv/O9klauviQ3/lE9WwtTpKt/+/4a1mL9xUcYTkmRIIY
 tjEy6ksOiPwGbU6ei7XcZQ2g3e2VX6baqpjebf4nsU3GgtkkJUeiLROjF
 w7Z/Xu1Wc5vhakcpzbZL+nisffGfezYeAfT3WDbSQ8jFZySfXHCyMBGCK
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BYnGVWtC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: correct TIMINCA on
 ADP/TGP systems with wrong XTAL frequency
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 2E38D3F64BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 14/04/2026 9:51, Dima Ruinskiy wrote:
> From: Vitaly Lifshits <vitaly.lifshits@intel.com>
> 
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.
> 
> To mitigate this at runtime, measure PHC vs system time over ~1 ms using
> cross-timestamps. If the PHC increment differs from system time beyond
> the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.
> 
> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 16.000541250 (expected ~10s)
> 
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 9.984407212 (expected ~10s)
> 
> Fixes: fb776f5d57ee ("e1000e: Add support for Tiger Lake")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> ---
> v4: replace ktime_to_ns(ktime_get_real()) with ktime_get_real_ns()
> v3: fix cc.shift and wrap TIMINCA write in systim_lock
> v2: avoid resetting the systim and rephrase commit message
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 78 ++++++++++++++++++++++
>   1 file changed, 78 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 9befdacd6730..26fdef6075c8 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3902,6 +3902,81 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
>   		e1000_flush_rx_ring(adapter);
>   }
>   
> +/**
> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and system
> + * clock delta.
> + * @adapter: Pointer to the private adapter structure
> + *
> + * Measures the time difference between the PHC (Precision Hardware Clock)
> + * and the system clock over a 1 millisecond interval. If the delta
> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
> + */
> +static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
> +{
> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;
> +	struct ptp_system_timestamp sys_start = {}, sys_end = {};
> +	struct ptp_clock_info *info = &adapter->ptp_clock_info;
> +	struct timespec64 phc_start, phc_end;
> +	struct e1000_hw *hw = &adapter->hw;
> +	struct netlink_ext_ack extack = {};
> +	unsigned long flags;
> +	u32 timinca;
> +	s32 ret_val;
> +
> +	/* Capture start */
> +	if (info->gettimex64(info, &phc_start, &sys_start)) {
> +		e_dbg("PHC gettimex(start) failed\n");
> +		return;
> +	}
> +
> +	/* Small interval to measure increment */
> +	usleep_range(1000, 1100);
> +
> +	/* Capture end */
> +	if (info->gettimex64(info, &phc_end, &sys_end)) {
> +		e_dbg("PHC gettimex(end) failed\n");
> +		return;
> +	}
> +
> +	/* Compute deltas */
> +	phc_delta = timespec64_to_ns(&phc_end) -
> +		    timespec64_to_ns(&phc_start);
> +
> +	sys_start_ns = (timespec64_to_ns(&sys_start.pre_ts) +
> +			timespec64_to_ns(&sys_start.post_ts)) >> 1;
> +
> +	sys_end_ns = (timespec64_to_ns(&sys_end.pre_ts) +
> +		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
> +
> +	sys_delta = sys_end_ns - sys_start_ns;
> +
> +	delta_ns = phc_delta - sys_delta;
> +	if (delta_ns > 100000) {
> +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
> +		/* Program TIMINCA for 38.4 MHz */
> +		spin_lock_irqsave(&adapter->systim_lock, flags);
> +		adapter->cc.shift = INCVALUE_SHIFT_38400KHZ;
> +		timinca = (INCPERIOD_38400KHZ <<
> +			   E1000_TIMINCA_INCPERIOD_SHIFT) |
> +			  (((INCVALUE_38400KHZ <<
> +			     adapter->cc.shift) &
> +			   E1000_TIMINCA_INCVALUE_MASK));
> +		ew32(TIMINCA, timinca);
> +
> +		/* reset the systim ns time counter */
> +		timecounter_init(&adapter->tc, &adapter->cc,
> +				 ktime_get_real_ns());
> +		spin_unlock_irqrestore(&adapter->systim_lock, flags);
> +
> +		/* restore the previous hwtstamp configuration settings */
> +		ret_val = e1000e_config_hwtstamp(adapter,
> +						 &adapter->hwtstamp_config,
> +						 &extack);
> +		if (ret_val && extack._msg)
> +			e_err("%s\n", extack._msg);
> +	}
> +}
> +
>   /**
>    * e1000e_systim_reset - reset the timesync registers after a hardware reset
>    * @adapter: board private structure
> @@ -3953,6 +4028,9 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
>   		if (extack._msg)
>   			e_err("%s\n", extack._msg);
>   	}
> +
> +	if (hw->mac.type == e1000_pch_adp || hw->mac.type == e1000_pch_tgp)
> +		e1000e_xtal_tgp_workaround(adapter);
>   }
>   
>   /**
Oops, wrong title. Correcting...
