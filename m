Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9919BBBA4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 18:20:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67A014042F;
	Mon,  4 Nov 2024 17:20:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2X5S35pG17Nb; Mon,  4 Nov 2024 17:20:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 957D7403F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730740806;
	bh=QHX4S6K1Q4HHC1NQorlV3qeIezf1Y0ZhfBB2uK2OVOY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XX9ICW88ypdKTieNdRTzeNE+LiUr/H/mFmRi31HeNuYH3NavAF2D+b4aVohUcx5s/
	 buxSIyfrbAvLGUmj0cAxdu3u1/1628w+xIscfgb0DqokrjjC9TXO40bNBSzhH8T7Ck
	 e3m9tNMGXeJJUVosSgo2Fin9phG1yqvjg+VpmE5j8GComAeVDtQDCifAZL2vFzdf/T
	 XU0GkRIrmvmmj8LTkxXKodhojRxppeZYtUBvDt3JCRKgXbOPcmUWASVOr/5EXVsf4s
	 N2mHDIYEB1upWdufpC4dFcDHHXJzcFOLTGNgEYqbuc1thrh2h8WNyYllioE+nFKj0V
	 Nxl/Q7aMGFCzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 957D7403F4;
	Mon,  4 Nov 2024 17:20:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 35D0FB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 17:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 236C640193
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 17:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cv3YRt40TWHD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 17:20:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C223A400A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C223A400A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C223A400A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 17:20:02 +0000 (UTC)
X-CSE-ConnectionGUID: dg2cvIsFQHqGDbmdqWt5Ag==
X-CSE-MsgGUID: 3NWBF6TUR6qI2BnSyF8nzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563822"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563822"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:01 -0800
X-CSE-ConnectionGUID: jph8vuvHQeKhFx9fwA6TcA==
X-CSE-MsgGUID: P88thbaqT5ecMzIq48rkGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88290052"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 09:20:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 09:20:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 09:20:00 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 09:19:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A42SNODk09BCFhoi6MwgIyk7ZnHmgiNp+Nz+UvhgSO/lhxsB7ct3ADzk4Jh3INMGAIcNH2a0mlY+r16jGS+B51hgQ6N2JxLjU2oWeu7Z7SWUR0dfUrGTzOUqiJLak1Bw8CQIsW88SSFQ7l0VafA2ei8uSu0EO3oju9aJEheqfi8riiwXQrBLvadb7Fxv+WyXIBa8S0Y7XaY4nNayi2JWnB3RjQdRcwNG12oo5HWcH/cFfuFWZVogE1oE+HtIq/FrSTIE+USQTNBRkouvzFmHA7f65BdMX2yCZSYVfft4UVnHeGyafaGVPoAraDSXxdP7c11yyQqsF1EhmMRIBqGW9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QHX4S6K1Q4HHC1NQorlV3qeIezf1Y0ZhfBB2uK2OVOY=;
 b=gx9HkBhcn1fAcN03Ea82GXpimVcrNlqK0jt5TAH6Kgv0EARjj/34lJs7P6HgBnVIfkatAm0QxAwxYpjVdvkocSx1SP+nrQU9SpP2kPrC82/XhgMUXeYWCzqONmoO4B90qjkxF9ADRo3Y7tRzyzBjLBZpbFPQmKlnjnRhcoETebu1dA1l1dBY2vEb0fyyqbjlcKdzo4qrh3YBT4rx9bsmLs+6cpTrdcplgFddpWqvOrjpeFjghc0QWSw6TXgJBW7a2AnDawjfpgihXNAZMUivQb/XtxX5jnALTGm5yDUl4bPRiZm18vvdyCToAsTQnimJjg5edrxUsCszf+1qazx/ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH3PR11MB8344.namprd11.prod.outlook.com (2603:10b6:610:17f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 17:19:54 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 17:19:54 +0000
Message-ID: <a91c5981-ffd3-4c52-8b84-e81b506f0869@intel.com>
Date: Mon, 4 Nov 2024 09:19:51 -0800
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Jan Sokolowski <jan.sokolowski@intel.com>,
 Padraig J Connolly <padraig.j.connolly@intel.com>
References: <20241029123637.1974604-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241029123637.1974604-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0124.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::9) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH3PR11MB8344:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f854ed3-492d-4f73-1c5c-08dcfcf4e63a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmhkWjBJOWVTdTFSR09UMWNHMXB3MHE3ZDU4dDIvT0tVN2dialRzK01tNVZi?=
 =?utf-8?B?ZGFSMDBEYTJHam5MQTRRNUs3VG9HcWQrOFN3YS93TXB3ZVpESG10UVA3MFBS?=
 =?utf-8?B?bGVYbi9TMlUyMExxMW1aQ1VFWENrdER1OFA3b1J3cnUvZ09IU0NPc1V2d2RO?=
 =?utf-8?B?c2lWRGxmbTFKUFcyY2dFcU9oWVNEVE9pZ0JYZEk0Ykhpa2pMNzF5YW0zNmVR?=
 =?utf-8?B?Y0txZVJuamhuVGZOZnZydW8wUFBrQmhnNDh1eWo1YmQ0dmFmNTcwenNhVW5I?=
 =?utf-8?B?aXBid21iQmMxRnRsSWEwSTAwdWFjWWpXL1E4MjZHWWJHeUp1ak9mdU1HSzNw?=
 =?utf-8?B?MWp5T21jMzBPNnJrNU1nK0laek82OC9OS0Y5d3VEVDV1S3F5NTkyUlMrU1Ji?=
 =?utf-8?B?TWRHbDltY2pmcmhSamc3S3RGU0FqOE9Kd2tBVkdWWnYzTGZQenRwTVdkamcv?=
 =?utf-8?B?V25MbENCN1UwUzB6NmhTZ0xsSTJZQnJ1eHhwdFFoQmlTM21uQ1dvU3NLME42?=
 =?utf-8?B?ZXR3ZFJQVHE1QlZVZHZDRkt0L2MwcVd0VjFHMlZja1RxU1hidHdqemNBZ3hr?=
 =?utf-8?B?dXc2SGI5TjdQVnJnZ2ZnMjdEcytqdlNGbWRvMmFmWkQ3cmdMNklScE1nWmhp?=
 =?utf-8?B?U3ROdVhoeFRDQWFXSFJPY2poeTdlbzNlOGZLeWV5UjlsYStYWVkvNDVsNmVU?=
 =?utf-8?B?Qmo5RXFQR1Q3WVZvN3o0VENhdy9UUnJQVk44UTB5VHFKSzZZYVdsa0F0NUht?=
 =?utf-8?B?dUo2TGdJRzU0SzBJZ3BSMHpkSGdXbGVjT29qdGpKNFFrbWo3dys1di9yZ1pl?=
 =?utf-8?B?YVlueit1M28wc0kvSHE0ZGs2Z3ZqeGpBL3g2LzA1bFVZM1RPNS8reFZXVitM?=
 =?utf-8?B?cDg2R0lDMHJJbGtManpkblZ5bm03OW45QVh2V2FkQW02dFJqd2RmUjM0Ymo3?=
 =?utf-8?B?ZXI1aWFNL1pjdk8rMk9vM0FmSXV6WHQ2MFQ4SXY2TjNKcEFxQjRTWXVkR2JE?=
 =?utf-8?B?OVowMzRhMjk4L1UrQ0RVR2lxL2JXYm9mcTZUenpIUUFpWjdKYVdWa3pNakho?=
 =?utf-8?B?UzE4Uzk5dHN5WXZzWTViby9iUUFWN2h3OFp4ZmFlSk1VV1RQbWh6QUJ2dzdO?=
 =?utf-8?B?NEFBZTFYOEZuK3F1SE1iRkRzWnYyV1ZTZzdHTU5XaVYyei9QRWJaZC9pcEh3?=
 =?utf-8?B?YjVMT1VndDZFUW5ZM0hZOGVLbGpKR2xncWtQbmIvdGMwUEhNNW42WlQybWFI?=
 =?utf-8?B?WmZLbDExSS9kZG96TGl3U3ZRNXJnSC9yQldQRVl4bXFCSWJkWjR4VkJPbzRK?=
 =?utf-8?B?UnkyTkpKUUJlQ1h0WXN6V3BHTElxRXY3UnVlb1JLMERQQzc2dzNMa2l2RXNz?=
 =?utf-8?B?djdHZVFrUTRUd0FQSlYwSCtQai95TzkwUlB1UVlMSE5BcnduVUpBYlRQVEF4?=
 =?utf-8?B?S2sxaW1qd24rUUZxL0hMUE5vdzh0MlNyemRqUU5uY05BbnMrZHpuTWNzUmo5?=
 =?utf-8?B?RDdocnI0c0x1QzZjbWcwVkppZnNLcExzMXAwVmJMcm9YV3lheXNMVi9tYkdP?=
 =?utf-8?B?WDdTcktLL2tMaWU0MU11b3lMc0pRQ1NlRXVhaVU3Q21nSERVOWxmRldaclpL?=
 =?utf-8?B?RHhQSWh5R2cybnNUSzU4aFJvdDg0ZDNmVWYzYW0wMU9NeGJ5N2s0V1FkeFV2?=
 =?utf-8?B?VUphUmZTbERlZWlPRnZFeG9WSWI0Q0NWNTB0d0xCLzZieXFMZ0J2Um9Gb0Vm?=
 =?utf-8?Q?+KmOWv4qqLbhS96G2Wusabsqnva9Zy7VrPSxmny?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWx1Nkx4Tzl6SkZjckZiNHUxVXEwbWRhRFpKY01ZV1NRWTF2Ukg2TjFqSnB2?=
 =?utf-8?B?Z1ZXYlpNQnMxNUNFN1FxZy9lc3pNbTVhZWxsd0J2ZlFFa0dQVE8xL0M5bGV5?=
 =?utf-8?B?K2RxbVkyUUVhdnZRc3Vzc0JDek83N2IwYys3UG1ZM2xLWXNvdGdqYzFCbDBN?=
 =?utf-8?B?YzdwbkxjMHFqbVByaWQyYjVIWkorU1F2ZFBCUmNhNTlZbEc0NSsyRTF4elZU?=
 =?utf-8?B?bzQ1bHRiS2hzWCsrQkd5Sm1OeVVBL29wUE5xc3JNZ2YwQ09DcHZzVjArU0Vy?=
 =?utf-8?B?bkJhd3ZFcHhQYVJaRlM4L0xrUEtLeHlvRkN4ZU0wYlZ0dnRFNGRjWDZhTWI2?=
 =?utf-8?B?dCsvMVZVclg4N24yR01OMFBiVHdMeGlTZVg2K2g4TGRtb21VY3N6VFFHbmNq?=
 =?utf-8?B?Sm9TRnZqQ2RSS055RmRGMi9LNXpkcG9lM0Q0RFFEVmxvSjFQYkdRZTNKSWRE?=
 =?utf-8?B?SERZbVB4SnJpZW5CaWhVN2J5aUYwWTVHY0lLelMreTQ1dWhLSnErS0J0Z25j?=
 =?utf-8?B?bkZoa3ZwWFBUNE53a3JjeENxb290Q0FTRG9QbXE2aWdkZVRCazRKOHpKU0Ey?=
 =?utf-8?B?UVRYWW1yS2UrdWdtRlRCVHBXK0liOHFNMlNsR011TllIQVFuL05zcENiVEd3?=
 =?utf-8?B?eTkvUGRWbkMrYTBSZW5PVkUxSmtabmxvY2FHb20zeDdmaW80OWlma2p1Zmlm?=
 =?utf-8?B?bE9NeTAvcHdJSFY1bTM4YXdJSnF2YjV3WWZXT0pqUTBwZERMcFdmdjdZdkx1?=
 =?utf-8?B?dElUTElpVDR1MnlZNHFQOXZnMFV3MmZTOWJTUzl1V0JPSUJJazlHMWRYOHoz?=
 =?utf-8?B?RGdlZWpTcFJqSlRvaVNKK2lmc0xqaVE3UDZ5dkdmZnJDZnc2YjV4a2RJZDN2?=
 =?utf-8?B?T2p5ZzYxQTBQaG9MT3pYQkhCZGxVOThnZHBHR1hzUExYTCtReTFicWE1cTNp?=
 =?utf-8?B?TDN2UGlsUjZVRFlwQ25CeFdlNDZ2MDY2eFl5bzRkOW5vQ2ZXL21qMWNmY1d6?=
 =?utf-8?B?NVMxL3BqSzE3eW5ycVpvR3BwWTE2ejJSRExIZG9SenZmN0lNcy9jbCtmc1k2?=
 =?utf-8?B?MlZLRkhvUVNwdG04eW9pYUhuNTBqS0VUb3gzdEVwQVIrNzViQ0ZIeG1TK21F?=
 =?utf-8?B?K3VtRiswQlgyZDVEMjBzTVdoNXZxaDZ0SlpUMFFXb1UvK0NvS2U1TkFJTDBk?=
 =?utf-8?B?NWpBUlhaOWdwdW5YVXdCMUphb29BTWRReGZDWUdnWVdaU0FLMVNKVzI3aDZ0?=
 =?utf-8?B?NFRoYi9BWHc0OWRibW9WRVVpdzM0R2RVcnFBWUVoajFLUWsvMFljcjdoZzJk?=
 =?utf-8?B?UG83N3pmMFRMTUJ0ck92TmgxWHVyL05ZMXg0eURya1JRbjhPVDE1SEhXTnlS?=
 =?utf-8?B?TWFZWVhQU2pyRlpwU1RmQytrSFdzSUk1TjVWM1JURi9DajNQdmdrWXBqNTAw?=
 =?utf-8?B?c3JoQ2JsRmpmTzQvYk1mMlNrVUpSMHZMVXBXM05mcnBzRmcwcnpWNzBTeUFZ?=
 =?utf-8?B?c2djaGN2Vmg3MEJxSzg0WnFkbTBON0FWaTFlSkorRXNrZjlPZkZWaDMreFNj?=
 =?utf-8?B?Q2t3ZGEyYUZrZm9HTUVzTGhWQjNqbzk5MWJ5V3k4b1JRbDVqSVFiODlEUjNJ?=
 =?utf-8?B?RU9JS2xzMFoza3ZpcDR0cllQVC9WSHErektKR1RCT3ZkemtBQzdBVDRJckpQ?=
 =?utf-8?B?Z296YjUyVWRUTzI5R3BFWExhck00ZW8zWWIxT0ZUd1Vkcy93ODJ5blVzV0hP?=
 =?utf-8?B?c1lETzlOT3Z5Tk50a0piazYvUEsySkJDL3JZS3NJK2JsU1FCVFFHNWt5dnZy?=
 =?utf-8?B?YyttYWVlU1ZIUUVVVlJvckc4TjdBTlEyZFlWT2JTZ0hlUFVLcmZVMHRveFNM?=
 =?utf-8?B?dU1ocEJ0YzV0eGh4M0NUZWZtWXFHZmNqM3pRU0lsZXZVS3hDVFVNZGdITGNZ?=
 =?utf-8?B?ZHVXSXczbUhHUkhVaFlhOGtMd2IyMlhQVnlLZEFTUG5VOG9jaXNEYkVWTjE4?=
 =?utf-8?B?SVpDeGtiVTBQU1JDWHY2Um1Kb3FjTTVPTlk4b1RRdGt1bXpNczJJWGhZWWVC?=
 =?utf-8?B?WEdlSmVQcVR2anltVVJIclFmdzFESXRmbVlHeW9kYThPYkZmcFdsTEMwbUZy?=
 =?utf-8?B?d0RqT05NajduMEZVWjhlRlhlM0FoeThCWXovQXJ6RXpBa1FDelJhRFh4SWw0?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f854ed3-492d-4f73-1c5c-08dcfcf4e63a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 17:19:54.6688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RSnnEA6IzxSdS/e/9coxNjjOTD77TW6SDDaAfkFugfBUh2ChowtaJ6jGMXo5cLupm/xgdJyOUKCN/1tn9k2FM4ky0vZfJg6oLboPfaYEH4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8344
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740802; x=1762276802;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+CuqF0hgwaIHiGcgSxG8xSqwFNYUsQ4nqvNVpQ64rbg=;
 b=K3WsDTQvipP3keA9qcM8v00zhl2aHomUeOhlDr3gPspnvPi3+EAyhc/s
 IOpB/3zGvlp4ZEAd1B/Oi2GpDqV6KloU2B3mtLQFtAXe4itDO0i4zOddC
 JmgOK8zH4Tytq2T3VKLDCaHAiivPmxWyn+KrTS5OJIq7qhK6gVEm66I/a
 Wq86AQ9EtOqrsFXB/yNfl+4oN65D9cGuVdrAgSgTh/Shwy1TqUmt1LAL9
 tbwux7PzI/Yd5l1vKAtwxXrQAyF6ACHbH0/tjTBgZGs2zErWmt65iJdFz
 pVTOl9upG1eReR4mwZb5m2TSRE0BTyN04X1WtkAcE7JCOnY6TwSoKgi0B
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K3WsDTQv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4444] i40e: add ability to
 reset VF for Tx and Rx MDD events
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



On 10/29/2024 5:36 AM, Aleksandr Loktionov wrote:
> Implement "mdd-auto-reset-vf" priv-flag to handle Tx and Rx MDD events for VFs.
> This flag is also used in other network adapters like ICE.
> 
> Usage:
> - "on"  - The problematic VF will be automatically reset
> 	  if a malformed descriptor is detected.
> - "off" - The problematic VF will be disabled.
> 
> In cases where a VF sends malformed packets classified as malicious, it can
> cause the Tx queue to freeze, rendering it unusable for several minutes. When
> an MDD event occurs, this new implementation allows for a graceful VF reset to
> quickly restore operational state.
> 
> Currently, VF iqueues are disabled if an MDD event occurs. This patch adds the
> ability to reset the VF if a Tx or Rx MDD event occurs. It also includes MDD
> event logging throttling to avoid dmesg pollution and unifies the format of
> Tx and Rx MDD messages.
> 
> Note: Standard message rate limiting functions like dev_info_ratelimited()
> do not meet our requirements. Custom rate limiting is implemented,
> please see the code for details.
> 
> Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by:  Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |   4 +-
>   .../net/ethernet/intel/i40e/i40e_debugfs.c    |   2 +-
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 105 ++++++++++++++++--
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   2 +-
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  11 +-

Could you add info on this to the i40e Documentation/

>   6 files changed, 111 insertions(+), 15 deletions(-)

...

> +/**
> + * i40e_print_vf_mdd_event - print VF Tx/Rx malicious driver detect event
> + * @pf: board private structure
> + * @vf: pointer to the VF structure
> + * @is_tx: true - for Tx event, false - for  Rx
> + */
> +static void i40e_print_vf_mdd_event(struct i40e_pf *pf, struct i40e_vf *vf,
> +				       bool is_tx)
> +{
> +	dev_err(&pf->pdev->dev, is_tx ?
> +		"%lld Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n" :
> +		"%lld Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=%s\n",

This string is largely duplicated. Seems is_tx could adjust Tx/Rx only?

> +		vf->mdd_rx_events.count,

This needs to check for, and report, Tx counts?

> +		pf->hw.pf_id,
> +		vf->vf_id,
> +		vf->default_lan_addr.addr,
> +		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" : "off");

This could use the new str_on_off() string helper.

> +}


Thanks,
Tony
