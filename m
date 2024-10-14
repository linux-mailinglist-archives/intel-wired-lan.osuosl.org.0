Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 496C299D9C1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 00:24:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D4CF401B0;
	Mon, 14 Oct 2024 22:24:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VonO1NVDHyPu; Mon, 14 Oct 2024 22:23:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07035401BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728944639;
	bh=yb9r+qOy7/6MWBUv2RLcrbEqfnBUgGgK6JqXmxvEvEw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KXRcBWbjdf1PeYUk2yOF9wvgvcbazggp52pghp3lIaznNkd16YWRk8jteFYhPa5EF
	 DlOqtRZNMvopTHZ1Qyt3AXKmoFVGZ4aqZbUzK5OnvJQbn6zQOuy0Oks1EReqV677Z3
	 OyOQOKNnVbHpFQi6PHbYFYW4hFBEcULlASu/OcdW+bEEKHdGZIaBftj4tt1ICpHs66
	 7nU1FHGX5TqZJPg3Il1mbo2Pxfo4tb1+Hb1D7e2XG3tscjHIiE7XxtdcBN4/bINo73
	 mqPwnmn/gGI9+MNVnR7U0HxYU9SDBDj6Sd7k/W+SNXf0MVHydk9G/hRSKJTTMnF+4R
	 JpbTrHWcJjm7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07035401BF;
	Mon, 14 Oct 2024 22:23:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 741461BF326
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 22:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6189E80DDD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 22:23:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tNnG7NvjAqCa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 22:23:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6617C80DCF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6617C80DCF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6617C80DCF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 22:23:56 +0000 (UTC)
X-CSE-ConnectionGUID: FnY1kt1XQy+lZmsE4JUDUA==
X-CSE-MsgGUID: tDf9pQ6gRHiPX2zLzIbO/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="39706969"
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="39706969"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 15:23:55 -0700
X-CSE-ConnectionGUID: FRRKZA3bRDm/O4WmaCs/zA==
X-CSE-MsgGUID: d5Sh4o7GRlKTwLNtDMze7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="77710208"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 15:23:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 15:23:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 15:23:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 15:23:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 15:23:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dlTc6vv5USAeVIGWfO52CpBGrsh4f/W284NdNSkW3PKB8E1vUACIQDWtnr4uLVDrve5Cl83R2qgk8Ooq5DX092RxN/eHKWNNrSDOlB7RYU03UuFX5l2iejm0u6ogQFtJFryFDFh90X1JvcJL5JB29nyWssgEVuP497not6vwa/7a+s92CRQ2Vq3Q8ZudFWtW3q+GYpkuyAldKBZzD9TQY9w8h6fRIUGF/vyoXHyhS84RqF/OZ/F0woDQYeGn0BebYE84C9q/bB7e3HTo5wLcrXEVvZmTJtBDGsXwrl2FzG73DPBQY7SqaUgA22k1pbcwrQFy32SUoylUSiWjLP1RKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yb9r+qOy7/6MWBUv2RLcrbEqfnBUgGgK6JqXmxvEvEw=;
 b=cLm+gdwnDsKyaB9uSiays1IiIhQO0F6UwA5QVzt80qNBg7Xd00dTH/w9LVs7GD8cc2ST+/GK/h2DsXhk55iUt8deZdPtu5Dng63I8iDKH/nsIU+gIL1Q/7FYpkDXVP4It0UcDBaWmmAHEVdg/9wzKB9vaxf+/O+1LL9cpwGeZ0nO1ZLmiOKU4cU+Rri5HOSm7/8hEDGxXtE9PxaXjXf5scXTjLqkAbUzaaszefmbzY3nXwExdPWHDWliDUc5PTrwTkNOs48r4AGcOMpegRgFFobqNbZEo6bZs28BgUtT9SPUnVTUi4k9bbX6gN5GSzIVnXkmQXBAPBcQs+3SNWAy+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB8004.namprd11.prod.outlook.com (2603:10b6:806:2f8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.22; Mon, 14 Oct
 2024 22:23:51 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 22:23:51 +0000
Message-ID: <534ab479-29a1-4a95-a9e1-d068b5290ebd@intel.com>
Date: Mon, 14 Oct 2024 15:23:49 -0700
User-Agent: Mozilla Thunderbird
To: David Laight <David.Laight@ACULAB.COM>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
 <20240930120402.3468-4-michal.swiatkowski@linux.intel.com>
 <20241012151304.GK77519@kernel.org>
 <636e511e-055d-4b7d-8fdb-13e546ff5b90@intel.com>
 <3e015d17e53f4cdd813c88c93b966810@AcuMS.aculab.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <3e015d17e53f4cdd813c88c93b966810@AcuMS.aculab.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0159.namprd03.prod.outlook.com
 (2603:10b6:a03:338::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA3PR11MB8004:EE_
X-MS-Office365-Filtering-Correlation-Id: 79ee36d7-e358-4a11-671e-08dcec9ee169
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHJaOUFzQ0tvWXlaQWRjUXJ3Nmk0TGxpVEpQbTlCdW45WXYxSWRwUWIvUlpT?=
 =?utf-8?B?TnNCVVJBZEQxZ2ZUVUVaQzFobWk1MWNBVlYzc1A1SnlJUnJMUTNOTFhmWElE?=
 =?utf-8?B?dGJDVGJyVDZWRFBjajRpdWRJMlhxdDM5Q2hRTUs2dVAyUisyMTVwRkVMM3hJ?=
 =?utf-8?B?elBBam1kcHdUc2hBRXFEZXZBOHdyamw3SEpVYzJnZXdDN0Vrc2hjcm5XNkNj?=
 =?utf-8?B?cVBqZmN3dFhueks0dFFxdXZ2YW1ES0owbUV3d2p6T3grR012ODJDb2M5ZHkw?=
 =?utf-8?B?bFFvcDZESUZyVWJUbVB6eUJ2L29JQjJIcFJtR3lVUzFPbTQ2aXlidUh6RzVw?=
 =?utf-8?B?TTZQS2JEb3VNNXZoUXBmeFVkTjVDa1NDTnBCaXRtQVZybXpqamtBWmg0RWZL?=
 =?utf-8?B?aUdBQ2RIc2tzMG1iNEVSRnRwUVNkVmFoVkFheEdmd0ZYRllqU3RuRnRzb01p?=
 =?utf-8?B?VlpSdEtlLzlFdlVwV3hudWM3VkZYUUk5bHNxdlJVUlFmbzJUUWY2Vko2bzBV?=
 =?utf-8?B?a1p6Rk4zWDlmRlR2T21DNWkvd0xXRUVxWFNFNUE3UWYrTUpmNitKTDYrWnNY?=
 =?utf-8?B?aGp0dXJHY0cxYW1FMmMrRytZdTFtTS84WC8weW53NWcwanY4bmpLVmpVbzdJ?=
 =?utf-8?B?aTNWZjVaMG1NeVNlc2JBZG04WFk1TE9aSXhTUk15MFZvbkdyMUdCVHF6blJV?=
 =?utf-8?B?MlpJc2MrR0NHM1h3bUdPV2hhc1lMTnRRWWpnVktJVUR1UmZIRjNRblBlZlJI?=
 =?utf-8?B?ck5LT1BZclc4ME9kSGN2OWxJOGxpc2RzeDd6VisySk9mQnhMWGhZZHZ4bmFU?=
 =?utf-8?B?NTN6OTdtTFlobkk1Q0x2YnZRRVBpTCt2NGZJUExUOWhIcWdLRVQ3bkJNTTM3?=
 =?utf-8?B?SC9ZM1hlZ0ZxM3pXdGU5WXcxT2txbndmWU1nWGlTdG15aHZRR1MvZG1DaXVp?=
 =?utf-8?B?dFJ3eVdzWjZJNTJRaGVkaXQ2SjhRTGlXeHh1Y25Hc1EwWlUzVCtNTmJNaG0w?=
 =?utf-8?B?M3h4b1B2SzNNbnJDRUdORUhaZ012dTJtZE51eVJlaU9Denc5Y01SNXlIMDJW?=
 =?utf-8?B?TnEweklpWWxJMmYyalU2K201c05wNEpzY2M2VXFoWFdzOU9RN0laaGR1Z3lU?=
 =?utf-8?B?OHp3V25hRmZZcVNNK2dNc2FqRER3U01LaG5MaDRwb0NTMzN5QkRwVWZsRnYy?=
 =?utf-8?B?b3JJUUFLa3FGaE5xMnBnV1Fab2lueWhhY1VmS3FqUndvM0JXYk5ZOHFKbWx4?=
 =?utf-8?B?V3p4ZEJwNWMyUkNJbmdwbGRrVUU1dVBPQ3RJbEIydmE4NTlVRVRiVHE1V01w?=
 =?utf-8?B?VDJyaG9sU3oxS2lpTFIwNVBKK1VIZzMrZTIwcVppVW13bWdLeUdUbkkrR0Fs?=
 =?utf-8?B?SG1TUzVjdkhIODF1Vm9Vdi93eWtRSFg5TVcyM0dFZEZkalRNbDErRHo0MVdY?=
 =?utf-8?B?YmRZSHdIR09aTjZuU3EvL3ExZ1piVXRwZjlmNG1EUko2aHg0OHRROWVkS0hv?=
 =?utf-8?B?TTRtcDJmdFRrcFk3MzVPa29EbFMyTWJiampEUzVqY2lpdUVCZVAwSnpIV1R6?=
 =?utf-8?B?TGVCTTlHblpOZVpkdzhEUkpVcWMyZWtNSFlNL0Y2T0VCSy9Oc0tybGNQSkZL?=
 =?utf-8?B?U2tweWxGN1JjVkxFdVl5bTVDZG43Tld0NDBlZTljTkNrMHQ3NGpzUXM2YlBT?=
 =?utf-8?B?b1Ayc1htWk5kWE1Qb04yRW0yZ1pLREc3M2lDQ0pwemkrbWx2VTdKWDVnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RS8rb25MUTBSWDNhWWg3R3Q1VE9hSkkyaEYrNTBRL2JZNWJ2NTgrYWMwRTZM?=
 =?utf-8?B?NFRITDZKMzhPMjBCWEZxM21tRmpqbnBhM3I1RXUyS2lLc2hmNHhTK0tOMlht?=
 =?utf-8?B?bFVsaEpvUjBkNHlreTRjSUttTUtNN0hybjVPbDk4V0l2Ymc0ek5HUExXWktz?=
 =?utf-8?B?VmppbHlkZllhQVZBOGpOcGtEZ0ZkTlpubXJ3S3BXZDhPbnpjbjRMMFBnVXNP?=
 =?utf-8?B?bnVRa2dVMFNIRHFBajV4dVBhL1lVR2VXNVdrcG5RazdOY3lXYzl4VlRVS1dB?=
 =?utf-8?B?UHo1TnJtRDE1aUtlSkx1L0JscG1WVzRZTW1ad1cxQTNSUHpPeTAxZnhUdkpj?=
 =?utf-8?B?RXJwei9idzhDZG00TmllaU93eC9iZGhhZmtyUkRoUTkyNXRITlRaOEZxQ1Vv?=
 =?utf-8?B?SkI2Z3ljSFdITEpjQXdQQWZ5ZzdOK3Z0TFI4b2ZYUWRRUlpDZkllK1JpU2Y0?=
 =?utf-8?B?aG9iMTBRRkYrbU9sOXZCeEZnb2hiNFhkUmxCaU8yQmlxZzFkMWd3SkFHZzI5?=
 =?utf-8?B?MnN3dFFZRTBGQjVFUFdhRVJ5ejFVbXFaRVRxeDE2TVBCL0FkZFB6VjEzUHRT?=
 =?utf-8?B?ejhEL3diUGJHbVpPSU8rUTlwL01ydFE5QndFSUQ2aUNBSHFvbThyOVpmTktv?=
 =?utf-8?B?dzEyQmRyS085ZXg3SEtEZzhxZHRNV3pUdUxSenN6Lzh3VmU1TGx4UWdYRng0?=
 =?utf-8?B?YTByWmZDN0dvUmVtRlF2Z0I0ZzJmclNHeno0OHMvbDVrS2JBUjlXUENVR3Q1?=
 =?utf-8?B?cUVkbUs5RnRWMU0wVjBDYjZ2ZmpxSDBmUzhiTTEyRTBkeno0KzBtSWZpNEJO?=
 =?utf-8?B?S2d3RDJIVWxzaVJPTTJJVy91TGkyNHdIR1NwT2JUNCt6K2E2a0JieHhKM1h5?=
 =?utf-8?B?Z29QUEVZTy8wWFlkSEZ0RkcwZi9TZm1IQmxMakppMGRYMDZKYkxPdnE0NXFL?=
 =?utf-8?B?bDVhOCtJU0FzaUdwcXFZRVRnMGRnekNpTW9qMjlmbE5vRlUxa2pkbkIyc1dz?=
 =?utf-8?B?VW42KzlZZVh4NEFROWpEdnNWMjh6elBIbzJQcFF3U0RXQ1BIb3dTQ3VoekhX?=
 =?utf-8?B?eVdXNmtqV0FjSHREVkhEK09zMFg0R2NBZzZVR2F6aHdDdTFOREh1THVGb3Ir?=
 =?utf-8?B?dmVmNkZTbjJnZjY3MzZJQkViY2lMdW9KcFpVSm9vL2RuZGFnUFg0U3ExY0xY?=
 =?utf-8?B?bXBIa3NwS3F0NzhoelNkK2Qwbkw0YTlGbWFiRXM5WlpERW9kTUZXRkJsWERi?=
 =?utf-8?B?Skp5R3EwUExGY0tPMzRKMGJMc3ZnSTg2VTJKb0FZQUJiblpxNUVZazhJYkxv?=
 =?utf-8?B?TW4rRmcvZ2tkYkhsQjRVZUUvS3MwVFZsZmtDczFWNmJ1bVhqcEpuNXhndXZh?=
 =?utf-8?B?Q0ZxQ1U3eGM3amlUSDR6WnhsVndCRERCT29NNFVMdUd2QWR6dmxyRlB4T1Jo?=
 =?utf-8?B?V2czSGsvM2kxNnVNbUF0a0xrZGgyRmNZbjEyVDlzVytZeXNHVWN2ZXlVY3Fm?=
 =?utf-8?B?WFA5dFZhVzZMdkNJOW5JVTJ3Y0hTcEVjWnZYUzhidGdxVXQ5a1FyNlVjanBI?=
 =?utf-8?B?YjVybUUyRlFiYy9sUHVVSEVLbFdwZVFjMFl4aUZjRG55NDRSY2YxTDduSCts?=
 =?utf-8?B?NDl3TWxZMytSQ3hNV3JwMjZSOFpPTDA5ZHVjU2NnTlZLUG9rWERmdDRFYndO?=
 =?utf-8?B?VDlxSjRjOW5RSm9VeGRLTHhEKzhyNWxET1Q1SjlWeHJ5Q0lvZVovUE4rM1dN?=
 =?utf-8?B?WFJQMG1sYnhYbXBxeVJocmtDb1NYclBEQXo3cTdDdUdiY1NFL0tCQzBsWDh6?=
 =?utf-8?B?UWtFSGdJZ00xNG1vNnFHNVA2L0xlUjVQa2k5T2hiR1k0Vm5PLzlPbUQ0UWQ2?=
 =?utf-8?B?dGRHNHhNdGNDUitISUtCaXVqWXM5Nlo3MnJwaS96T0lqRDcxNm9HNzJmK2hi?=
 =?utf-8?B?LzBiVlREMlBDa2FSYi9FRHVWbXZXOVB3QWQwNzNpMHF2SWxhV25qeVlWUjVu?=
 =?utf-8?B?enNFREJVeDNRR3lIckJoVHRzRy9sVmV2RlMzTUx1Nk9obE1hQTM2WTYwWk5Q?=
 =?utf-8?B?RERjY3lUeUpKNnNncnU2bDFWZ056Q2V3ZWsvek1JN0F1OVdRaUdpa3N4TTVT?=
 =?utf-8?B?Znh1ZnNJZ251OUtCSXdwNVBjZTFpTG1YU1dFTk12VDZoREhLL0RxVmVaOWFG?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79ee36d7-e358-4a11-671e-08dcec9ee169
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 22:23:51.2116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZQjWkSxNAQxi/s96ADsvzq1hoBgZoSkjbL0XDwt9s4owhsrluCveg3Pox24vBvz1lWTYXijhzumFn+kohO5k7/gssoR3HzgSqq576zLeNxg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8004
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728944637; x=1760480637;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AzlU4eVk39udyRvTlUy3kzSJdgbIRrmrXU/wS7l9NRY=;
 b=DbHrYncvzX0Rc5IfgfBo1LPkJzQQFpJK1FUxDbBhAEUq0hK3fOgEarcH
 JmLgUHIEidlZ/NAu3ZuN2c3+YQ6/wuXRfbdMbKaLTqCyHHXLejr0xHtkn
 3ZXaIqOAr2XnrjyBSqzxqBdQas0uMWamR3ozGy0gkCI9/LGvmEMMICQ+H
 VTxCVauyiWifyPy71HIydz5cuky/I3NiNlbJm/3i7CjsL2ULEzHCd5n0a
 SO4sUhwjPpkQjSAXMIUMCXwLf/7p663AdKyXQGXEnu3jMBCTm7LsxzLdu
 UN7pJ7DkJxalJSodGdry2uV7vBxAeBvXs/N9Cok+tWxbXlIzRzdHjXYR+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DbHrYncv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v4 3/8] ice: get rid of
 num_lan_msix field
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
Cc: "wojciech.drewek@intel.com" <wojciech.drewek@intel.com>,
 "marcin.szycik@intel.com" <marcin.szycik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "konrad.knitter@intel.com" <konrad.knitter@intel.com>,
 "pawel.chmielewski@intel.com" <pawel.chmielewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nex.sw.ncis.nat.hpm.dev@intel.com" <nex.sw.ncis.nat.hpm.dev@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "sridhar.samudrala@intel.com" <sridhar.samudrala@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/14/2024 12:04 PM, David Laight wrote:
> From: Jacob Keller
>> Sent: 14 October 2024 19:51
>>
>> On 10/12/2024 8:13 AM, Simon Horman wrote:
>>> + David Laight
>>>
>>> On Mon, Sep 30, 2024 at 02:03:57PM +0200, Michal Swiatkowski wrote:
>>>> Remove the field to allow having more queues than MSI-X on VSI. As
>>>> default the number will be the same, but if there won't be more MSI-X
>>>> available VSI can run with at least one MSI-X.
>>>>
>>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>>> ---
>>>>  drivers/net/ethernet/intel/ice/ice.h         |  1 -
>>>>  drivers/net/ethernet/intel/ice/ice_base.c    | 10 +++-----
>>>>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 +++---
>>>>  drivers/net/ethernet/intel/ice/ice_irq.c     | 11 +++------
>>>>  drivers/net/ethernet/intel/ice/ice_lib.c     | 26 +++++++++++---------
>>>>  5 files changed, 27 insertions(+), 29 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>>>> index cf824d041d5a..1e23aec2634f 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice.h
>>>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>>>> @@ -622,7 +622,6 @@ struct ice_pf {
>>>>  	u16 max_pf_txqs;	/* Total Tx queues PF wide */
>>>>  	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
>>>>  	struct ice_pf_msix msix;
>>>> -	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
>>>>  	u16 num_lan_tx;		/* num LAN Tx queues setup */
>>>>  	u16 num_lan_rx;		/* num LAN Rx queues setup */
>>>>  	u16 next_vsi;		/* Next free slot in pf->vsi[] - 0-based! */
>>>
>>> ...
>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>> index 85a3b2326e7b..e5c56ec8bbda 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>> @@ -3811,8 +3811,8 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
>>>>   */
>>>>  static int ice_get_max_txq(struct ice_pf *pf)
>>>>  {
>>>> -	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
>>>> -		    (u16)pf->hw.func_caps.common_cap.num_txq);
>>>> +	return min_t(u16, num_online_cpus(),
>>>> +		     pf->hw.func_caps.common_cap.num_txq);
>>>
>>> It is unclear why min_t() is used here or elsewhere in this patch
>>> instead of min() as it seems that all the entities being compared
>>> are unsigned. Are you concerned about overflowing u16? If so, perhaps
>>> clamp, or some error handling, is a better approach.
>>>
>>> I am concerned that the casting that min_t() brings will hide
>>> any problems that may exist.
>>>
>> Ya, I think min makes more sense. min_t was likely selected out of habit
>> or looking at other examples in the driver.
> 
> My 'spot patches that use min_t()' failed to spot that one.
> 
> But it is just plain wrong - and always was.
> You want a result that is 16bits, casting the inputs is wrong.
> Consider a system with 64k cpus!
> 

Yea, that makes sense. This is definitely not going to behave well in
the event that one of the values is above 16-bit.

> Pretty much all the min_t() that specify u8 or u16 are likely to
> be actually broken.
> Most of the rest specify u32 or u64 in order to compare (usually)
> unsigned values of different sizes.
> But I found some that might be using 'long' on 64bit values
> on 32bit (and as disk sector numbers!).
> 
> In the current min() bleats, the code is almost certainly awry.
> 
> 	David
