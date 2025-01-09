Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D29A9A07466
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2025 12:16:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8344640694;
	Thu,  9 Jan 2025 11:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id avuyhzyjo61g; Thu,  9 Jan 2025 11:16:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A315C40554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736421408;
	bh=yXt9cd/5NLSSDEVUU8yq6G1/eGlLU8JmPDqi1r8XwdQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5uBr1Y478rhV0Aw8AixjvheGIW6sEIz1gsgN+wLSRDtNjojCnccb5Rjhyjoxf1DSV
	 25mpkd46YjUCF7H8Snja2WaOkw+qxNkWad59rkRxgwUvFUr2WBzel6pRjBcyQlwBhb
	 hNoV1BxzT3lTCHTIaEnA7GZT2taxcYA30oVvEXxN80lcCyII5+eX2+6TuV0Nm4kxxP
	 XfW8QWQt10XCCU9uDz9gqSAKUpViQL97ESsryYlry/nHah5dYDtBOVl/5YvohYAYSC
	 /uz0auo3Ki/etrB1kv2+jjPONebfHqDpBhB4UZALafEG0xTV5a9ZIRW0Xt1+pvk1YH
	 9kWWtpbY71CRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A315C40554;
	Thu,  9 Jan 2025 11:16:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 00E0576C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 11:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D576760768
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 11:16:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qBfTOuwlrZwn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 11:16:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0BB0C60890
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BB0C60890
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BB0C60890
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 11:16:44 +0000 (UTC)
X-CSE-ConnectionGUID: goLtOV2jSoCOhGJjba0lTA==
X-CSE-MsgGUID: 2GmzPmvfTaery/yf27BcuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47346969"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="47346969"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 03:16:43 -0800
X-CSE-ConnectionGUID: pNSnsu4dTriv8dRwBnCToA==
X-CSE-MsgGUID: wGrYZy+STTCveh0JeKNtZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107418844"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 03:16:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 03:16:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 03:16:42 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 03:16:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Du0HnzkZqs2EXRdnRzIZiO5E45akwXUUXTVhzSXTpRKL8fzLBkzPR45Aus+1JaQea6P4guPdbnhT717a2LaoADpfh3GBAbEt0Icl2+p8Po9AzPgg7U1XIcfQXgcZio0ciD2aZx/P3wKwv8lu3NH2yXJHGTKU+sdLlbrcG6NGZTug7OeNZ2PgrQccB/xYSUzwIIcwsDhfrFK32BVQY6S6wwTroSOE5cIY8ynB073LTvZALASNAXKHYNvQ5TYrIm2MTpnNVzlycXufCTdkD3nLMb2hS3Vk/0mLGx2uPC8t5HOx+CE7qDeIH44beKiOHkB5ZrlvYvflhIlixhSgCC2qYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXt9cd/5NLSSDEVUU8yq6G1/eGlLU8JmPDqi1r8XwdQ=;
 b=J2OzUWIw2ZbHWIrDP4ImMvOt4FOksDGhZUwzFSxr3JK4UxTkyTxTgbhil+CxBEt1AkdoTttR102LDYy63gVao8+Wu/NfVFOxgsltsB9ug+mrg3oNrz4HxdVPNLlT8xiI0WtgHu5JRi2XGy/y15AErGkDrp7eVh3HH81ROK9381rqNWb6OYXCewYHFj1Ut6dD7W7GofjmHnUkEm+PBXhRDvHSj0KV2M/XbXdtx5UieZqAAheUtsmbHBIz++yRpPVVol9doqFLJVX3yzkeHCrcjSrdRjC4ViFy0cNYgw7P06d+Gc/ajlGz6Zij4CIhbZ636QslCLZ1e+iAdtv/H2ha7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CH2PR11MB8867.namprd11.prod.outlook.com (2603:10b6:610:285::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Thu, 9 Jan
 2025 11:16:39 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%4]) with mapi id 15.20.8335.012; Thu, 9 Jan 2025
 11:16:39 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Schmidt, Michal" <mschmidt@redhat.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Drewek, Wojciech" <wojciech.drewek@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net v2] iavf: allow changing VLAN state
 without calling PF
Thread-Index: AQHa/3y2QW6s4loFk0y1n2dmQGBPJbJJBlUAgMYKY8A=
Date: Thu, 9 Jan 2025 11:16:39 +0000
Message-ID: <SJ0PR11MB5865B10324BCE53BE60CEACE8F132@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240905091410.26909-1-michal.swiatkowski@linux.intel.com>
 <6c32336c-09ef-429f-8bf8-f591e90ae32b@intel.com>
In-Reply-To: <6c32336c-09ef-429f-8bf8-f591e90ae32b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CH2PR11MB8867:EE_
x-ms-office365-filtering-correlation-id: 0c8b6597-6395-4edf-66f9-08dd309f1691
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eTcxVkFWRTlmZE9ISTNVU24wTlNmTzk4SE53VzBDWnorUGM1SDNLVXI4N2J1?=
 =?utf-8?B?aXpiYnBadGpPNyt0WUhOK092aElXNHZ0Unl3Ynk5OVRmbURLZG1rYjVodC95?=
 =?utf-8?B?Q0hnb0ZVYkszVEd5OFdhcnZMR2JZSzlweHRRVElkUWNRSFI1YWZoT1F1VUVR?=
 =?utf-8?B?dTJySDlhSWk2cWVBN1ZvL0k2bWxKUmZDT1hzWVVXZ0V1SlBpRlJNMFl0TFBO?=
 =?utf-8?B?SjNQS1lxTWxvSnI3MzNxRE1OMXl4a29sWHdkYTZuTlQxanRrMmRWbHZFVDZY?=
 =?utf-8?B?ek9Bbml6VDI1TVlNN1liUEduM2c5d0tZVTIxY0cxOE5oeDR3MGlIb2pZa3JX?=
 =?utf-8?B?UkhCVjNpclZJWVVZMWJsRndYWElUMVEyZHAyOVBDejkyb3hBeWVma3VGR3E5?=
 =?utf-8?B?UkpWM0VzSkw2UWtnVkZ0YU11cEF6THFpc0ZJNHk2VGJPMlU0U0VGUW1CK0Ir?=
 =?utf-8?B?R3FPYzIxaUYwTzZZUnNCeWY3ek5kcjNMNDNEUS9DOXhoRlI5b0M2b3dsY0l1?=
 =?utf-8?B?bG4rWGJqZGUzZHNjWFdkRFJBWGNPSGVnNEYrbEYrV29WdUVQWjRRZFJlWTFo?=
 =?utf-8?B?cGR5MW9QOGVRRHN6bUtQQU1ZZ0lscmJMbXRaRVozbVJ5ZG1FS1JYdy9CTjBD?=
 =?utf-8?B?MFA3T25hNkFRZlQyRDBTMENmTGNOcXBKeVE3UVFYcVc0T2h3SXhxeG1mbGor?=
 =?utf-8?B?dWZMcTRxckdmeS9xRjAvUW5mdTJJVXJBTDR1QUl3bThBSSt0QnhnK3BBV3pU?=
 =?utf-8?B?M2JtMHdYcEM0RmszM3ZxcFNKQ2NmanRQQm0wVVJLT2JQRTF4VEpxUVlIZEI1?=
 =?utf-8?B?NTBLV1Blclk2VEJBcDVsUmZFMHlBSXZ5L0hoVm9OTjR2WlU0QVdXWkdRMDk3?=
 =?utf-8?B?ZXoyV2JVWlQ2OUhoak15Q3hBakJybjZCLzJ3ZGVsakgvbUZTdW1FaGRDR0VF?=
 =?utf-8?B?TElNWlU2L3YwSzlKdFpudTVCWXBTZHNNNHVVQ05SYWowa050RFoyUWM4YmJ0?=
 =?utf-8?B?bkk0bGowQUdFSkpkZllBZkFmcjZaaTBEeUVLQUs5eGlPMW1BZXQwTURmMlNH?=
 =?utf-8?B?ZmpRTHZIT2cvRDRPN2J2NE9GK0h3Y3Q5MTF1SEljek9maFhpZXFWODdHOTFo?=
 =?utf-8?B?Yit5ZzNiRkI3bHhNMmpObEgxVWdGbk0yU0RrL05pSytnRmhxbUVRZGZsci9x?=
 =?utf-8?B?R1RhYkxSV0Q1UmU2WjhXZlc4eHU1bVo4bFVrVE53a3NmcG90cVg3LzN2SnZM?=
 =?utf-8?B?NDBpRFBIVGVSL1U2NCtZczd4L1VtVzYzb2ltbWN6YThtWUFrKzU3NXZCczhG?=
 =?utf-8?B?bWtrKytKR3N5bW00Uk1WOVJWMDVlOU9xVDE0N1QvaFJGczlJbXdZS0N5WEE1?=
 =?utf-8?B?b2NEcDhMV2l0cllHWFFEdUJ3QnhJK256VXpZZW5NZ3lUd0NjOHUrZG5Ec0VY?=
 =?utf-8?B?SG1UV0h5bUNiOE9QZUdLVWpWblNLTU95WDNrR2xyWjlBeXBzTFdPaEx3L2NM?=
 =?utf-8?B?RXBqYnJBamtzMHlReUswUjJ6d1ptUm4yOEpTNllycE1kS0xjMVBIaXIrWHVU?=
 =?utf-8?B?OWhEQk8yR1NpWmowdmFydTF2cHZxVGhXSkdOU2c2NURCdW5mS0FSNXJGQllE?=
 =?utf-8?B?UXB3Vm9YeE11RHlXVW1VSXJFTVRyTzNPZDhNTmtHQjB4ODFhckRGeFRiTDJQ?=
 =?utf-8?B?bjNFN1F4L2grZWVueFQyTlNIVFZ4VW4vTlV0Wk9nZURDSjdkQk9tc1l5c0hh?=
 =?utf-8?B?UjBKdlB5TXhLeEo4S29GQmsyai9uL3pWb05lK3h5czE4M2dXdjYvejVOS2JW?=
 =?utf-8?B?ejlBYkJhNHZUVnRYQTlrMGtFV1RJTmFqWHhoUFRCOEdzdzNSWFUrd3JyeGFQ?=
 =?utf-8?B?Rk9xNE96NWdNT2xpcDlDSlM3WDlJUTlrc1l0YnRtTHY3UkZsbW15V25uM3pW?=
 =?utf-8?Q?DVkeXXWebQGizR3OWZwnZQhxFDlFn68c?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THV0RkFsTjNCVmc4dG1vNFBzSE5ySmxveS9FUmhvTisrSy9YYUk1MlB3d0h2?=
 =?utf-8?B?RnpSL21pVjB5czJhb21QellwbzRtblZNMG5NcWlqV0pLeWFVdmQ4OHN5VExs?=
 =?utf-8?B?Z212U0FCYVo3ZndCdkU0YW1PeVdDcEIySkxkUEhsSmRpZGpTQngyeS9CTzFB?=
 =?utf-8?B?YTJ2R2xMaHo1VUNLTDVLbzNBOVdDRmMyWDJlYnU1RGd6OWRudjZwTlFXYWd6?=
 =?utf-8?B?bVFVVmo5MkhEb3dJcEsrbTN6QlVjWWFaR09xWi9wNkdOTkNORWpOdUYvbkRX?=
 =?utf-8?B?TzN1TVROdzRDRlVyckF4KzJDUEs3VnlCT01XZmxjWCtqTGZGZ1JBeFlyWlBp?=
 =?utf-8?B?akNpajB1WWNhRWV5Y0ZWNXI1cWN5N20xRTNlOTlwMEpjb2Q1TUpUeGRnRVVr?=
 =?utf-8?B?M29ZbHNwNFNMZFBMYlNkcm5hRXFSK0Q3QlF3VU1MOVdKM1RBUFArQ250aGsy?=
 =?utf-8?B?YjFBcy9TMExLazg4QU9HSGN6Q1ZVeVB3M1J5eTBNd1ZaRDNjZm5RSDJ6UGdp?=
 =?utf-8?B?UUlnWmFiWWp0V0NTNWh6ejkwRlZHRDVQZU5MOFVOUXpVN3Jub01zQUJkQy9l?=
 =?utf-8?B?QUFVL09TK0VJY0Q5MHJMVVk0NWVrWlpjanlJTVk0VklOUmI1MHp2cUJGeTIv?=
 =?utf-8?B?M003d0tIZ0Q2RzJoRExaOHNkOWI3Qk9LVmJjLzBNdkR5bjFPU2U3VWdFNnR4?=
 =?utf-8?B?cFViNmFDMGtKYlFVYnl0b0NhSU93elo0K3hzTm43SXFNYnJ1NXRLOXZjbk1D?=
 =?utf-8?B?WXpYOCtObUJxUzdaRFFTci93QkJRc2ZKM0pVRzFFd2p6cTFoL1ZWT1Bta2N3?=
 =?utf-8?B?cExtbmZzMDlOQmh3WGttcVZ3S2lWbTdGem5rbCtHZzJadHFXWUFNWWROZHJR?=
 =?utf-8?B?M3hyQWI1d0Vqc3N4QmNyZ0lnNnNDV2t5RG5xZXorZWdwS1AvQUltYmlVMVZL?=
 =?utf-8?B?UncwamE4UnQvR0VpdnRnU0lEY1JlOVFsWVFPTldCd0wzcU1UVVJOYUJEM2tS?=
 =?utf-8?B?RUE3NHpsRlhWbGtqbjJiU2sySzhVRjVacm14c2htSllTdkJSSWZBUWhhVkdK?=
 =?utf-8?B?NUpkRmtsM3hxU2RVVUY1V2Ixb2U0a01uOGh1aXhvU3FiMWFXaU1oUnJxOVpp?=
 =?utf-8?B?NzhWMi9QdDNMdUxTWkI3bGtySFdnUlVsSlIzbVRNb21vYWJyZU5VdzVJc3lp?=
 =?utf-8?B?bVFESkJyL0cxRU05YnhYWFNEOWtZUHJHbURHZ3lwTzl6L21BeVM4d2VDMmFM?=
 =?utf-8?B?eVVPNVk4TTdGYzJCQ3JIZEN2S0JFbXF3WFRGdk8xK1UvQ0t5QVVYUFREd2RX?=
 =?utf-8?B?Q3hIZTA3U0RPUzRDcjFHS0ZUQmR2Tnl2dWtvRlV4WmJReGdMTEh5d2s3Vnpv?=
 =?utf-8?B?SStwTXp2VmJTT3hLZDlZSVFOdmhZQWdXSTB5TXlrbVRjeUdPRm9kR2JEMlVp?=
 =?utf-8?B?NFRzb2Fma1hmZkxkTTBNR09IekJZRGZGeVBWWTR6aklOYkk1ZDZZaXZveG80?=
 =?utf-8?B?dEU4UkkwbFkrR0E0TU5OL0RpMit2amg3QkJSUUtZeEM2YllndDdEWlpSU3Bo?=
 =?utf-8?B?ajZZdXRFRmIrcklLdFYwSExSQW9ra05rcXRWL0ZScUtDdVJORGU2OVFUaW1I?=
 =?utf-8?B?TnlKd2Y1SnZoMCtQeHRPdm9TbDh1ZGRzc3NkT1JXU3ptekplazhGd1FVRHJQ?=
 =?utf-8?B?RVpLMkZ1dHhYOVg4RTZRemg2QmxtU0xybUsxVWFpZWYvMS9kczZGdVBhSW56?=
 =?utf-8?B?WlF4czJ6THE4WG1tcTBHR2dmaHc5VGg4VUxoQ0JTMTFIbHpXMksvcEptZnZo?=
 =?utf-8?B?c3BjbllSYjh5NmVEQnIvZ1FaM3FsUUxuK05maDZ2UFB2cXNhVUtVV2dncGNR?=
 =?utf-8?B?K3F5UVhxdjA4emxDZmNZN0d0MndwT2tHYW96aHRRMFpKZ1BWNXVqVm9wSkMx?=
 =?utf-8?B?TFFYSUErSG5ONXZVQnFOc0RudTlidEdyK3RVb0JrOFVEVU4zY0tRNzFCTTVI?=
 =?utf-8?B?TkQ3Nm52aldCVXowaUZXQ1gwcGEvMktvUWFJMEdRZ29mVGF4ajQ3Q1Zxd2NF?=
 =?utf-8?B?UFJVUEh6Wkk1SWJqZnc1WjNsQ1duNjlkYmhGZ1kzV0c2L1hVSW1vVDR3QWMv?=
 =?utf-8?B?Zlc5SXdFSTRyL2hNM00xYWdReFh2cGc5S0JJY253N0tEcE54YVFPRDhQM0g4?=
 =?utf-8?B?UHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c8b6597-6395-4edf-66f9-08dd309f1691
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2025 11:16:39.2420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mWlGFoZOCQTWpAC02IEMP33gUiPiPPAW9UicW8j52erHAbLsO8AN9tSGZnjDtZmd+8wAgD5C+leGLOYxJ1AYvi55klyAb64N9jLMXOzoSGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8867
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736421405; x=1767957405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yXt9cd/5NLSSDEVUU8yq6G1/eGlLU8JmPDqi1r8XwdQ=;
 b=lvQrCy5XGJkatwVuMg1Oveu3vI6qOIzS/NOP8iZhHBBPDCxhPuHXOvu/
 OiFIdoVXAS+YEoX/DRki3ljpozm7RTIhnXx3ya+MSCpwU1k0rzRGBi4lv
 rHOjwC1dkGb59h+vpLyplzHRreYGzPynhA5boYvijd952v0sDTGLJd+69
 3H5KyR9YSEeCAzaXnmPi7QKpO4mJaNWrDP0sYj1OrncXbYsIVrLclLLPI
 RRdN8bFowiunwnLRHAAldBux3u9IJXPQpMA81xCpmpIWSA7K8aXJxsQ3V
 8eRPl2Uwe/dNMTAegbJJF21mR+8yIdExIUrf1lA8SxeE+oCdsm2mvIS0D
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lvQrCy5X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v2] iavf: allow changing VLAN state
 without calling PF
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQcnplbWVr
IEtpdHN6ZWwNCj4gU2VudDogVGh1cnNkYXksIFNlcHRlbWJlciA1LCAyMDI0IDEyOjU5IFBNDQo+
IFRvOiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5j
b20+OyBtc2NobWlkdA0KPiA8bXNjaG1pZHRAcmVkaGF0LmNvbT4NCj4gQ2M6IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBEcmV3ZWssIFdv
amNpZWNoDQo+IDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0lu
dGVsLXdpcmVkLWxhbl0gW2l3bC1uZXQgdjJdIGlhdmY6IGFsbG93IGNoYW5naW5nIFZMQU4gc3Rh
dGUgd2l0aG91dA0KPiBjYWxsaW5nIFBGDQo+IA0KPiBPbiA5LzUvMjQgMTE6MTQsIE1pY2hhbCBT
d2lhdGtvd3NraSB3cm90ZToNCj4gPiBGaXJzdCBjYXNlOg0KPiA+PiBpcCBsIGEgbCAkVkYgbmFt
ZSB2bGFueCB0eXBlIHZsYW4gaWQgMTAwIGlwIGwgZCB2bGFueCBpcCBsIGEgbCAkVkYNCj4gPj4g
bmFtZSB2bGFueCB0eXBlIHZsYW4gaWQgMTAwDQo+ID4NCj4gPiBBcyB3b3JrcXVldWUgY2FuIGJl
IGV4ZWN1dGUgYWZ0ZXIgc29tZXRpbWUsIHRoZXJlIGlzIGEgd2luZG93IHRvIGhhdmUNCj4gPiBj
YWxsIHRyYWNlIGxpa2UgdGhhdDoNCj4gPiAtIGlhdmZfZGVsX3ZsYW4NCj4gPiAtIGlhdmZfYWRk
X3ZsYW4NCj4gPiAtIGlhdmZfZGVsX3ZsYW5zICh3cSkNCj4gPg0KIA0KPiBSZXZpZXdlZC1ieTog
UHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KDQpUZXN0ZWQt
Ynk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJvbWFub3dza2lAaW50ZWwuY29tPg0KDQoNCg==
