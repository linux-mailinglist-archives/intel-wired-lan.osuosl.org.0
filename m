Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A8E90EAB9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2024 14:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2A8C610A9;
	Wed, 19 Jun 2024 12:18:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bbthGQYldnVR; Wed, 19 Jun 2024 12:18:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48BA5610AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718799512;
	bh=ei1UltZHgO5hpBuS0nly8mSq8LeWpXh9eKa/Ukx69qA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I10iSpZH2nbxF4Bk1pd5Ot4uO/vuWLQAOqBdZadeSI0+1sA2xOrWW0ywqY/DML2QJ
	 Hu7MzEOMvMyOF2ja+a/mAA70Pfk1g+x1OJV76zvXxMCcvISbf4WkcwTnP4VXYbHujr
	 qP4bZ3yeSZ4IGv9BymsgKn5lVow7rOk7cLO+NbFdGva67OWojTXs5QNgeEFcWyf7H8
	 YgYTdmfSmkCXFPpUKv586VRDWOIGsMDMf0WVF4n8VhkJdSDz6LAnPkJ17q1qnlKxYM
	 APz6sWGBrp/+rTgYDuuBmTpfKUEK1zWy4AsU5ZfkmYhMNPCimJ1YFd7Az2kNcRdj6E
	 TviAeZKuxdZPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48BA5610AD;
	Wed, 19 Jun 2024 12:18:32 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64E7A1BF3AF
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jun 2024 12:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D0154025E
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jun 2024 12:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z52bHdXx_ySJ for <intel-wired-lan@osuosl.org>;
 Wed, 19 Jun 2024 12:18:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 68F1F401F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68F1F401F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68F1F401F6
 for <intel-wired-lan@osuosl.org>; Wed, 19 Jun 2024 12:18:28 +0000 (UTC)
X-CSE-ConnectionGUID: jQ/UUSXtQpOWCCrYvg1LFA==
X-CSE-MsgGUID: tRFwscbATtaNHX4vycMzMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="19554941"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="19554941"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 05:17:51 -0700
X-CSE-ConnectionGUID: rmDmO9vhTIOhPmrlpkT2UA==
X-CSE-MsgGUID: irgcF/o1QsuGECqP8YYIkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="42042627"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 05:17:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 05:17:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 05:17:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 05:17:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezoynySzWPRtRfZxvM+88qhBxvLvxYmJN9t1Tv0ThxAxXRpSBuRmheRkyBpTIwmkFwfqyPHe9AvDQ3RAmdj15zoIgVFc10+txE/cwL0F1mYf76KcNxUPXs+699rCD6wWjj2Tl72tVecJ+bpzpf2XiIhUMV8rVP4G0RG5yGxCyD2MSGrkpRY6P86T29xBIQhniF/K8cAzyLQj4NqzKShTrzTW4NI6pN1+4oy4q4ITG2AqCqcytQYUkokLOYdZHHWCCg5I87IWJhEbJs4tzZFnfWKkZSid1uBlGuOZf8G8SvV2kDKwd62SJsQjv+/by7AlGM4npjogjbGxx+ogrIKi9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ei1UltZHgO5hpBuS0nly8mSq8LeWpXh9eKa/Ukx69qA=;
 b=NnFBcARLpp/aOaTWf9ch/CrnswEcf1/BiqXpvfS2XswTK7lcjd4v5Qj0M76Yedv7w8nYAA1ctw0uFB3P4z7xDKKsTmo9fcAJnqMdqz06T884wRkirCVwZz7D2Dq7Pv8SXWA7nT0ZDPChDqpd7NI7ZDx+1EDweMtcV70Pcuwfkao0xp8bPhlVjoxTEf10jWbbw7pwr832pj2Ad3XoHkYO0o33N3knQRF94Yi2wXUCn+UHugPIXsGoX+hLXbcxEW2/ygT5k9d8Z9xn/j+WOq6j/hln02dliXvsGqVumL8jwluKi9rTTFGyjMqDXheGxPTqXa5412K5gZZVx60QlZLgPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ0PR11MB4959.namprd11.prod.outlook.com (2603:10b6:a03:2de::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Wed, 19 Jun
 2024 12:17:41 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%7]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 12:17:41 +0000
Message-ID: <94c2e910-de36-4e6a-b8d4-34ac5baad328@intel.com>
Date: Wed, 19 Jun 2024 15:17:34 +0300
User-Agent: Mozilla Thunderbird
To: Hui Wang <hui.wang@canonical.com>, <intel-wired-lan@osuosl.org>
References: <20240613120134.224585-1-vitaly.lifshits@intel.com>
 <4c367721-e893-48e2-9de3-f4f6b0a3ba73@canonical.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <4c367721-e893-48e2-9de3-f4f6b0a3ba73@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0010.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::14) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ0PR11MB4959:EE_
X-MS-Office365-Filtering-Correlation-Id: 07644084-bb51-4949-1ac5-08dc9059d10e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bkNzYTB6bnVQYytIOFlxQ2JYQUxCbjBqTWs1RHJmaWtsaDRDNGpKakx1YmZw?=
 =?utf-8?B?VWRIcWV4dlBRaHFhZHY4SjdWQnBzc29MMU1yVGo5Z2dsNWRWTTdMZXNmODZ2?=
 =?utf-8?B?cXhCdDM4bEM5QlhaMEJKMmQ0b0R2UkNRUHRxb0ZWWUZ0VllhUGI2RHlqQWNY?=
 =?utf-8?B?OGZ2MG1Ld3NGMVRYYUx1RGZHbVdkcTlVTzZzZ2duRkVob2xzMGRQcmlNNEQx?=
 =?utf-8?B?NEt4MmxsRWpYeEVValgwRWw5WE9NeXloa0EvRDg3VnlLUmV6SzQwMGhtc3Q2?=
 =?utf-8?B?c2hIZjkvR0NSbGxqU1NWS1JVaHVhTW5SR3IzaGdMai8xRnkwc0RINU5vUWJI?=
 =?utf-8?B?ZmtMTTRTbXVNZlUzeUl0b2d6SGM1c0FWQkdpaHhNRDNCT1hib1VwYWpXUmlx?=
 =?utf-8?B?RlFmVTM2ejhxaVR4N3h6dTAzbjJIR1RjeExLM0YrUzJ4Rlk5cU5LZkdpcUh4?=
 =?utf-8?B?R1lqY1lOZmh2Z29jcWtqWm1VaWlBZHZ6RXZJdkpueDloRHU5Z09HRlFQRjkw?=
 =?utf-8?B?TnRqSWhUV2o5NDVLMWhQbjFtMnFHOXc4VGs0ZmQzd2tpb3NuNnpFaFRuZVlV?=
 =?utf-8?B?QlB1aGZYUG81YmJLTkd0NDRVU3g5aFdPRWYzblJHYm9jQlF1WUlhRFZubDVr?=
 =?utf-8?B?cG9KS3FndndWWFg1N0J6NU9mOEJsdWl0U1hhRmtCSE1NbmJoQ01ieWdtVWll?=
 =?utf-8?B?djNRYlNPZk9maEUxRW93RWtrOGxHZEdMWXd2aWZDTFl1K3ZCZUJtSUtpTERr?=
 =?utf-8?B?VVNpSTRMUDM2a1huK3RINTh1Ymp1YnFPbCt4S3IvWEZuYTluVUlOelpobVBo?=
 =?utf-8?B?VGFQanA4Nll0ZnRDOFFOTm9KVjB2WDhVSCtFSjFkVkw4YXkwbUZieUYzSm1L?=
 =?utf-8?B?T2RTaXQ3Ti9IdVZvL2haeFZPdDdkNDRXOHVvUGxheGZqM2NxSUJrZjVUODBE?=
 =?utf-8?B?L21tVTZFSmRUNjNUdlpiNTRJdG5mMDR0SVZJUFI1M1B4NFpmQnAxTWNlSHBn?=
 =?utf-8?B?MW1uMk5STDdoRkt6dXhqYW1NUmhBZi9PK2ttUzYxaWpPRmJHR3dUZmp5Q2Q5?=
 =?utf-8?B?N0wzWVhEdUtvekpTaHRyM0NCaDhxTUNjeGk5MG9RZ2pxRWxyMjZ3c3p2T1pV?=
 =?utf-8?B?SUpBc0NUY1FHc01iQVA1MFFpUUNXRlJldWIzYlV5RWNWNnUxNXJkam9uVUJW?=
 =?utf-8?B?SEprMjJBL2dLeGo1ekU4WGVMYzVUUnFvNjVvQXplam9WWi9MTFJvbkZtVjFl?=
 =?utf-8?B?SHdydGMvZEpabS8va0s4MjQ5VXNhTExUeXZiZVhGV2VMdzhWTkNrcmZMNFRx?=
 =?utf-8?B?ckpMREhGalErZ2wwN0NVM2tSTnZhRFcyZXpCWTNxNnlCRkJXYVZYNDFocnJC?=
 =?utf-8?B?L25kY0tYNTg1eWlveC9pbzd2SXRGQWtVajZSWld6VG05c1E3bUF1VUxlOHND?=
 =?utf-8?B?QVhzTUtJL3UyYmI3SjFJb1IvaGRWN3ZwTjJwNHhpK2JPU0NTWXdNcHFCdE1u?=
 =?utf-8?B?blJwVWZ2a1NIVFVxdy9iVU5LSmhyNEZhZjI4RGwvWXZiN25jTUJ4a2FYOEhP?=
 =?utf-8?B?cUlZL0ZvWkNMQ0xQcVdpTm9oOW9hb3hGSmRoNG1MVm1NTGJiZG0yc0o1ZVln?=
 =?utf-8?B?NVlqem1MU3RkNU9zZzRTb3Bra2hwc292cGx4RjVhamc0MHFWVnlIa1NpQWFM?=
 =?utf-8?Q?pQxKc0K9RqiyqiYc3p12?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1ZEbUc3aTV5WWxYRGR4bEZ1dmpRdS9RZVAzb3UxM2k2bGUyWTQ2ZEdEcnRC?=
 =?utf-8?B?emxDU01pMzFkYklnOHFaVHVoNmovaUpGMUpDdWVEU3dCSXdqSWdBZW9LeUJa?=
 =?utf-8?B?VUZKcmRkTUw1b2k4clFGZFIwTzMydklVWWRrWWZHU0J5UnYzNERqZ0w0OFRO?=
 =?utf-8?B?QllKcDIydlgraXNiMzl3Ump5UmpPSVhOelhvUTRRdnlZNFpkK25DRE9XQ0lR?=
 =?utf-8?B?a21Cc0VqOUpSUEI3L3BEUDdTdjhjSFFXSjdKZm5HbmZ0ZE5VVjZya0pyYkpl?=
 =?utf-8?B?SDAyWnVpNkxSeGFTbzYyZ2Y4QkYyZU11MXFROThjQVRpb2ZNTWI2a3djMytW?=
 =?utf-8?B?UGJvT1VvcVQwV1gzWTJ5OTFUdnRVck1LQTJlMnJ1K1ZmU0pnS1FIck9zMnZt?=
 =?utf-8?B?ZjhwaDZTM2FOZzU0c2U0S0k0VHJGcEt2Vk4yMndtZmZRNkdFRHNwNGs0aFBu?=
 =?utf-8?B?QzEzd1Vsd1pkUmxzdXpaaUxMYnA1M0hhd2dHalpFWnR1S0tZSzJJbnFpVjZl?=
 =?utf-8?B?TXZrbDIzb2tXUmd1Wnpya1FIWjdsMjJla1NnazJEcjBPd1Frd1JIZ3ZTMHZD?=
 =?utf-8?B?bC8vY3dLSXVIOHAzNUx1TVoxcHVNUnMyMTZDR1ljQ01IblhqUG9ZUlFLT2Rt?=
 =?utf-8?B?bkRMU2hHbVZGOVpQU0lKZlloZHBBNlhxYlRiL3lNQ0dKQkV3czdJMGhKenMw?=
 =?utf-8?B?VjhTUEF0YUhiVjlCdjE2QlB1Vnl0aW84aVpNN0FVWWxYUitXMWN4cmpJTFZ5?=
 =?utf-8?B?STh0Y05UZ3RNQm16YlFOSEtybklpbW5CSGpRQUd1ekxEbUpjbHVZK2tHcTV1?=
 =?utf-8?B?Nk5DdUZMUWdXcko3STFRUEd1ZHpmSWNnYmFXRmNuOStIUERSdE1JNkM5a3Rp?=
 =?utf-8?B?c05SczY3OVRJM0duc3EwRTlpbmhFcGNrU2JwcXhmMlBsWDRNZFdRTnM4bzd5?=
 =?utf-8?B?cEN5MUlibUdpK29OWGRsYkFNbHdZaC9tY0h3VDVhdGVlZks4TU5qNWp4djgx?=
 =?utf-8?B?K1dpUTVQM3IwSFhxbVJWcFd5enl0c0R1ZTNXN1BjUVFjVFJIQXAvMThuZGpD?=
 =?utf-8?B?T21ycjZROFFueWU2MjEyaFhMSjhDVHVGUExSQ0poNUQ4V2w5L2w5QzB1Unla?=
 =?utf-8?B?cFBxamIzWWV1czJLVEcycHd1WUY3WGdIM3lpYmRRdUpjejcvbjdPVUdVR2dl?=
 =?utf-8?B?Z2NucnRMVXNFelBzd1VXN2s0Q1B4bEdUdytORFNGZnVmRzNyU2xCeXR4ekNW?=
 =?utf-8?B?Zzk1RDFhS1BVbmxCejRHNHdIN0VwMW5pLzRkREJiV1FiUnB4TDYvNFlSK2tF?=
 =?utf-8?B?dllicTZwMGx4bUV6SlNqV3JKbFRxNDYyMG53dEV1a2NjclFLRUc5amdJUWlF?=
 =?utf-8?B?NHlDWmZvWkhxS3FpK1VMRDd4R0VpVmFwRHNjQzFVcS9GZ3B2K0pSamJ1Nkpk?=
 =?utf-8?B?QTF5T3NUZ1lsWGpNdHFmUThncTZtMk9oblRLMkNuNlByUldwR1FjMWhma25y?=
 =?utf-8?B?Yi9EWEU2QjMrelgzYUJSVFdXU0EwdXBCd2RiWms5eDFRTnlENjZCZnZNdVFF?=
 =?utf-8?B?SXJOek9iM2J1Nk1KOFc5R2pVVmVaeWxRMlBpTVhacC9DdmpxUDQ1TlZRanN4?=
 =?utf-8?B?ZkFoNHMrZ3AvK0s4YWs4RjNHcmRpd3l2OU9UUUdNNE9YZ2RYTHVvTEtOTlNR?=
 =?utf-8?B?cXVFbWRxVitMNzZkL29MbUNCempMOG1hU1pPQnE1QmdXWTk0SUpVQjRtUVN1?=
 =?utf-8?B?UkJ6K1E0Qmx0VVpMS05SVldFNWdQbjJOMnNlUXNmQXJVeWo2TWJPbk5Yek9U?=
 =?utf-8?B?M3NIT211bmNNQWU4TndTeGd6UHhKWm5lOStyTlZXRmNZOG9tc2h0cWpCVUNr?=
 =?utf-8?B?ZFpnaGh4bjlNUXhZVzZ0WEpQWkpwQ2Q2TkhLbmxlYlBodmhaSEhGVGtUNTNO?=
 =?utf-8?B?Yzg2RFBIY0oxRHJKanVWMS80c2NZWWR6VkRkTTBnSVhEMndFU1lGUlpUTnFm?=
 =?utf-8?B?V2NSZEk2UjZVWmtXNGdHcldDdE42MDZLbStqZExSQ2ZWR21MNGFtNVBiOGhL?=
 =?utf-8?B?eGk3MVJ4UmZQYityR2JWR29zMm5CVk9JRzAybENRaTJnS0RSZ3pVTEtwLzdm?=
 =?utf-8?B?MmdPV2FETDlQNzdkbERjSjlYRTJQYjJUOWN4cjhPTXZNbnArY1JoTDI0VFZG?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07644084-bb51-4949-1ac5-08dc9059d10e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 12:17:41.6424 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ilU/H/ks2CEUN3JAZRFCXwEls/jQgWm2hRI4p4OnVM5ue3gSDZT9m6EaH4foquqL0tuPUlQZ5it2uspbPdJlerp9lSp8aJANGN8L+PGdR+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4959
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718799508; x=1750335508;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uK19d1hc3qiCyg8iwxevk/vf04F0cx03al2P+A3GdfQ=;
 b=Oep3LNVsdaDa0FJoF3lz/qPLqvG5war54wKnX0qhVJJuow0bLjKg2npp
 EHByGnhEIBITYYLaDhOoGU/j/3KR182u2phg3dx0ByCRHk6kZuIngXc8N
 sexgVwhTOtdyIPANKsnaF2j+PYZYC75VHiDSxgTXaZ6xKp2+97t28hlhg
 96zw4K9qplmyct3VnqTbq1NjkpiGch/SLvJDJz17nzU+dwJSFcwk07c66
 kpWF1ZVNa7QX8Yayk/vY5/TWFnQhfb7UGOPgrXRICleagBj+MPon1p0Dm
 vzBU89OJ4FB31/wqspMt0Lrl3aENAxtMr6WsmHdiOhjDgpNR2JuvprDL6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Oep3LNVs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix force
 smbus during suspend flow
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Hi Hui,

On 6/14/2024 4:53 AM, Hui Wang wrote:
> Hi Vitaly
> 
> I tested the patch on a laptop with the ethernet card [8086:550A], the 
> system suspend and resume worked well with the cable plugged or unplugged.
> 
> But I still think that reverting 2 regression commits is a better solution.
Reverting the patches will bring us back to the starting point where we 
had a PHY access loss issue during suspend flows on MTL systems. I don't 
think that it is what we want to accomplish.
> 
> Thanks.
> 
> And some comment below:
> 
> On 6/13/24 20:01, Vitaly Lifshits wrote:
>> Commit bfd546a552e1 ("e1000e: move force SMBUS near the end of
>> enable_ulp function") fixed an issue with loss of PHY access during
>> suspend on Meteor Lake systems. However, it introduced a regression
>> on older devices, such as [8086:15B8], [8086:15F9], [8086:15BE].
>>
>> This patch aims to fix the secondary regression, by limiting the scope
>> of the changes in that commit to Meteor Lake platforms only.
>>
>> Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of 
>> enable_ulp function")
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Link: https://bugzilla.kernel.org/show_bug.cgi?id=218940
>> ---
>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 68 +++++++++++++++------
>>   1 file changed, 48 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> index 2e98a2a0bead..7b1da97e82bf 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> @@ -137,6 +137,7 @@ static void 
>> e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate);
>>   static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force);
>>   static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw);
>>   static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool 
>> d0_state);
>> +static s32 e1000e_force_smbus(struct e1000_hw *hw);
>>   static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg)
>>   {
>> @@ -1108,6 +1109,41 @@ static s32 e1000_platform_pm_pch_lpt(struct 
>> e1000_hw *hw, bool link)
>>       return 0;
>>   }
>> +/**
>> + *  e1000e_force_smbus
>> + *  @hw: pointer to the HW structure
>> + *
>> + *  Force the MAC and the PHY to SMBUS mode.
>> + **/
>> +static s32 e1000e_force_smbus(struct e1000_hw *hw)
>> +{
>> +    u16 smb_ctrl = 0;
>> +    u32 ctrl_ext = 0;
>> +    s32 ret_val = 0;
>> +
>> +    /* Switching PHY interface always returns MDI error
>> +     * so disable retry mechanism to avoid wasting time
>> +     */
>> +    e1000e_disable_phy_retry(hw);
>> +
>> +    /* Force SMBus mode in the PHY */
>> +    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &smb_ctrl);
>> +    if (ret_val)
> Does the e1000e_enable_phy_retry(hw) need to be called here?
Yes, you are correct. Thank you, I'll fix it in the v2.
>> +        return ret_val;
>> +
>> +    smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
>> +    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, smb_ctrl);
>> +
>> +    e1000e_enable_phy_retry(hw);
>> +
>> +    /* Force SMBus mode in the MAC */
>> +    ctrl_ext = er32(CTRL_EXT);
>> +    ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
>> +    ew32(CTRL_EXT, ctrl_ext);
>> +
>> +    return 0;
>> +}
>> +
>>   /**
>>    *  e1000_enable_ulp_lpt_lp - configure Ultra Low Power mode for 
>> LynxPoint-LP
>>    *  @hw: pointer to the HW structure
>> @@ -1165,6 +1201,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw 
>> *hw, bool to_sx)
>>       if (ret_val)
>>           goto out;
>> +    if (hw->mac.type != e1000_pch_mtp) {
>> +        ret_val = e1000e_force_smbus(hw);
>> +        if (ret_val) {
>> +            e_dbg("Failed to force SMBUS: %d\n", ret_val);
> Does the hw->phy.ops.release(hw) need to be called here or "goto 
> release" instead of "goto out"?
Yes, you are correct. Thanks for noticing.
>> +            goto out;
>> +        }
>> +    }
>> +
>>       /* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>>        * LPLU and disable Gig speed when entering ULP
>>        */
>> @@ -1225,27 +1269,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw 
>> *hw, bool to_sx)
>>       }
>>   release:
>> -    /* Switching PHY interface always returns MDI error
>> -     * so disable retry mechanism to avoid wasting time
>> -     */
>> -    e1000e_disable_phy_retry(hw);
>> -
>> -    /* Force SMBus mode in PHY */
>> -    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
>> -    if (ret_val) {
>> -        e1000e_enable_phy_retry(hw);
>> -        hw->phy.ops.release(hw);
>> -        goto out;
>> +    if (hw->mac.type == e1000_pch_mtp) {
> 
> Maybe we should also check ret_val like below:
No, because we want to unconditionally force the MAC and the PHY to 
transition to SMBUS mode. This is how it used to work previously before 
moving this part of the code to the end of the function.
> 
> if (!ret_val && hw->mac.type == e1000_pch_mtp) {
> 
>> +        ret_val = e1000e_force_smbus(hw);
>> +        if (ret_val)
>> +            e_dbg("Failed to force SMBUS: %d\n", ret_val);
>>       }
>> -    phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
>> -    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
>> -
>> -    e1000e_enable_phy_retry(hw);
>> -
>> -    /* Force SMBus mode in MAC */
>> -    mac_reg = er32(CTRL_EXT);
>> -    mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
>> -    ew32(CTRL_EXT, mac_reg);
>>       hw->phy.ops.release(hw);
>>   out:
