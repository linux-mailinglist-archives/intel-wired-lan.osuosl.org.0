Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 625CFAC3C95
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 May 2025 11:23:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9787380DA1;
	Mon, 26 May 2025 09:23:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fdyI-JDyZefN; Mon, 26 May 2025 09:23:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D587F80AF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748251408;
	bh=wzXeFZsicbZgaPV8QVkWzIT9gcieaViC9R0+wGacjzY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qqNIWa2PRaFnnLMn5nOeojF29pHZsniYyr/j2pnenPk0JXTst7XO4yJjtiu8Jhg5y
	 gPkS9PnakM4IX5ZPXuktoz3c9Rj+VhfFNZ0jEWYfh+FhaCUqNT32sY8EKdBh4nuFqk
	 NmuHrGG5bmbmLWo8RQso/4Tx1dzM4mWK6IYPrK//8uhk925wS0dLivcZJZO9q8SUPC
	 zvl8c0KiccCJ4B0m/fEktItoFeEN0fhCf5i8xJCne7moGrbkFIk2hCmQQX+DBeJbaS
	 6ad8VkSdK/jNvBXl3LnYahGLPet9E1yRWSDLa5JPOjbBA0mGCNYbKTgyeb56r+sVoO
	 X/7sYG7yVUUTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D587F80AF3;
	Mon, 26 May 2025 09:23:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E171268
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7E346070D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:23:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nbUAzvnZwKIe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 May 2025 09:23:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BFF2460008
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFF2460008
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFF2460008
 for <intel-wired-lan@osuosl.org>; Mon, 26 May 2025 09:23:25 +0000 (UTC)
X-CSE-ConnectionGUID: 3jMWbDzBR522Jt5zWBXzfQ==
X-CSE-MsgGUID: twIlLDp1Sy2lJixLrgytBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11444"; a="52840493"
X-IronPort-AV: E=Sophos;i="6.15,315,1739865600"; d="scan'208";a="52840493"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 02:23:25 -0700
X-CSE-ConnectionGUID: Y4ZpoEKrQaCA6a7js7PdTQ==
X-CSE-MsgGUID: pwpPMOaKRlOoe3rUiJ80EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,315,1739865600"; d="scan'208";a="179481769"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 02:23:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 26 May 2025 02:23:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 26 May 2025 02:23:24 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.73)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 26 May 2025 02:23:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oQZI2p8ezlZk3sSZEg8WY2bGvsagT/YWP9UN7b1CwrZSxv35HRr/KkTdIxvzCFxIBGtSrsiE1/UCPNs6KQP0ePRe3J9wSZObhE6w9fV9sl8YK09uUqcgK9KRNCjnq29bbP3y2KIa1++cTrhyEM0/2Zq9yAe1n3rlFWIM3eUPlkJzf4y+ku/4szZeJiyZ3hegM9lkPUxmluELILhS8UJnapoQ8zSc4Lpt/xDQWq0pv9NyrBTvKJHpFRDZMgGTNFlLXf4BIZjAp6oCOW89HJ22vAeiq+bkNt6/P5hPiHzgAYyCvgWxACFLRd6outz46DbsSxbvUoBLs+uJb+Trufznrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wzXeFZsicbZgaPV8QVkWzIT9gcieaViC9R0+wGacjzY=;
 b=nlsC/IXnToWfROuflY3P1xjlXzvudE9vQ2568B0Hak2OINjw7VDogF/n0AfBu1Pe1lES+NZTGCDbaZa0niQjwmLGy9xsmwtYG06QpGl8NnK3r2AG+h4yW4eYICa5zfa5zvKY/NhS2wnDNPoSl8l6BBOE3KRI49JAXUgYtRB7R6B3Wvi0SQewze2rmA1f+wcS09sFiQnIK0MuhLOHcw/IRxb1BxI9kOg0V4V+kXjdEZwfN0QAQ2mbIEiw8J6WFVIjBf5uzLxoNBLQqq9CmyRVYr+S2MYwlKMyeDtFGHWsdMu60G3wjtnMY+TOIeHw1cKXIQjsiOEIbQ6BKyJBY+yiWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6280.namprd11.prod.outlook.com (2603:10b6:208:3c0::15)
 by PH0PR11MB5807.namprd11.prod.outlook.com (2603:10b6:510:140::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 26 May
 2025 09:23:08 +0000
Received: from MN0PR11MB6280.namprd11.prod.outlook.com
 ([fe80::3f63:c727:6606:c089]) by MN0PR11MB6280.namprd11.prod.outlook.com
 ([fe80::3f63:c727:6606:c089%5]) with mapi id 15.20.8769.025; Mon, 26 May 2025
 09:23:08 +0000
Message-ID: <c2e87c57-15c1-4b16-b447-49abef86bc39@intel.com>
Date: Mon, 26 May 2025 12:23:04 +0300
User-Agent: Mozilla Thunderbird
To: Mateusz Kusiak <mateusz.kusiak@3mdeb.com>, <intel-wired-lan@osuosl.org>
CC: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
References: <203b3dac-87dc-451a-92d9-bcbc0e0a7a4f@3mdeb.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <203b3dac-87dc-451a-92d9-bcbc0e0a7a4f@3mdeb.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::14) To MN0PR11MB6280.namprd11.prod.outlook.com
 (2603:10b6:208:3c0::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6280:EE_|PH0PR11MB5807:EE_
X-MS-Office365-Filtering-Correlation-Id: a628cd3e-a28f-463c-611e-08dd9c36ed8d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ym45Z1Q5ci85OElURDd2TVJZaHIxa1lTK1ZtaDlQTnc3TlVZSTlqQ3dDMzVC?=
 =?utf-8?B?WFk4Zmlrb2ZNdmxNRXVBZlNXS2ptaEx2RC9mK3c1RVBnbU5TY0FROXdoYzEx?=
 =?utf-8?B?U2xQc0xzSHV2UjEwWUx5ckxnZnN1MlpxVnVpVjl4RnB2Q0FHZHMzTHYzU2ZB?=
 =?utf-8?B?R1UrdjBPcTdRdjZ5b3lGNS9Ub20vRnFuKzcvOXI2N3Z5OWJkSFB2WDIrNlY5?=
 =?utf-8?B?ejVtODNSc1dzODZKWWc1RHhwOVJ4cW9EazZia3MzQ0FpRGJ6RU5XVk9PazdB?=
 =?utf-8?B?SkZLVmZxWjdqWmNtUjVUL29INytLYTdwQmdwTEJySUlSRHhEeExodGZDYjFU?=
 =?utf-8?B?dXVYdFlLaFZxYU1RaDZRTldOQjRubkNwa2I1c3Nac2RKdU4zeGsyVTJsR1pV?=
 =?utf-8?B?OHl0RHpoZi9nTnZMYlV2TW8yWUh6V1BLZFhoVjVhdEpLRVp3N05UNUlYUEx6?=
 =?utf-8?B?aDcyNmgyNEpEbjM3NUtCYjVleDRNdldaQ3VteDBHT25MUjNwcFZ6K2ZRVlFh?=
 =?utf-8?B?Q3hhc08zR0FSa21ibjF1TVBCV3A0RTZvemVKYUlPaEtOVFRVMm1xVXlFcFdO?=
 =?utf-8?B?SmwxZlFLTnJCeTd4cmdsc3dmZVh0a0o4SkwvSHFOZ2xhZEk4bng5RnV0MnhH?=
 =?utf-8?B?ZmZ0L1plbGJONzdCUEV4dkhuZXRFS3dFSFNablYvU1dBc0licTA2aUNSZW13?=
 =?utf-8?B?Mk1UMWJtcVFFUUt1UnhxQVFmZ3JMVTJjbzVsR3YxZW5sQ3VuYVJpYVFWQXJI?=
 =?utf-8?B?YlhjUmZVTmZnK1ZGcktYM0VqUTA1RnVHd2N0MWtraHdBYkFDSFRiaWZiMjlP?=
 =?utf-8?B?VzR6UVQ5NGJpanU0UE1kUjNua1k2SHZENEhhN3RsaGZVcmZhL0NnNE40MkhP?=
 =?utf-8?B?RDE4UHlBdUxPM3pyZExpTEFlckdhUXN1ajBnbkRMOXlnR2dLbmw0bXRiL0ll?=
 =?utf-8?B?RVI2VFRTSTFVK0R4SHB0a0NmV1Q5dlU0WHVSR3JxZFlUZXZvV0lMNndLRDl3?=
 =?utf-8?B?M3c4TGFVYWdmakg2OFZmL0hyOTZ4Y0J4SWVYVVBIWmNRbTlrRFd2ditFaWhB?=
 =?utf-8?B?VW9zNU9UTXlMMjV0S0FXNDY1QUFaV3I1MHhobWZFeWtEU0JjcUtvNFczSHlN?=
 =?utf-8?B?akZYdWdVMHNUSkhBSEI3NGpiL3E2a1l1cjQySDlHazlMdXZUNHdncFdZWFlk?=
 =?utf-8?B?WjduK3VrdnpoeTRjcld6K2l1NUxtaVRrc2tlRzBzTjBubVI3RlRJc0lWb1Ro?=
 =?utf-8?B?enhGOXJKckpoZjFValJ4THp5KzNvRXVvYytJZGdVTFU1R1JmTzVGSGJ2YXR4?=
 =?utf-8?B?VnZOUzZpQzJjUzl6c0lDOEZZMHJuNmdMcTVuR1JjUlRqYUFldkpVRlpMbEsv?=
 =?utf-8?B?YURadkxORGlXd1h0NkM3bUh4NzZIL09JUDJEa0xIVmJaS3Q2eldjUjJjYnVS?=
 =?utf-8?B?UlhJb2JhMndydHJva21JT2ZVMVpHWjBUQzBZRUlPa1B4dVZkNHlIbGt0UWJ0?=
 =?utf-8?B?aFpEUnVuVTR4Z0FJQ3diQUVuTm1xbERZb0hiOVZIVSswRFNNUWF3dEp5V0wr?=
 =?utf-8?B?L0JtdGUwMmZ5MkZheVpWZ3NPK0RLa00rc3RKeUdXYjFxMnRScDJLaU5WVFFM?=
 =?utf-8?B?ZHdjRHNyS1RRWnhsd1QxbGdjR3hMM0VGeXQxaWNaNDg5N29hakdtWVJOaVdV?=
 =?utf-8?B?c25VYS9tWFU4cDVVOTQraHd3SzVuWmVreG1Jd1VjelI3V2tNdld1WDh0NTZN?=
 =?utf-8?B?TWVMZUM0S3I3bTdGVkhDUFo5a2VmSXdRSjFGMWJ1dkU4ZUtzcGlVQ3M4MG8v?=
 =?utf-8?B?Q1N2YnY5a0dHOGpuSjljVzhxYWNKeGIxWEJmSWJTYTFNTFdvczJVaGlsYUVP?=
 =?utf-8?B?S2djUmFJRmwxM0pJRW40YjRvQmZBbmJiaWtiMDE0REZWQ1lWTy8xZ3daQ3lV?=
 =?utf-8?Q?wwEM9oJk9LA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzF2WVdLdlF0bmN6QkNTRjY0WXAxLzlkRTVKVFN1RE4wZWVNV3RPVWdjM1R2?=
 =?utf-8?B?c1V1QTRiV2Y0ako5eVpVR2hGV1dXZ0ZlV1JyajRBYU8vTEFnMmNKb3N3NFN3?=
 =?utf-8?B?QVhuRkZTckE2M0RxeE1aRUZoblBzMmlYemNiZFdieXpTKzliTlJ6bGtSOFp2?=
 =?utf-8?B?UVlTU09QUjVuK3d1b0JZVkY4RWJMeGxiSGFaQ1BOU3ZEWit4d3J4RTdZN2lR?=
 =?utf-8?B?RVJGQzBxSTNWazl2ZWljTVJ4N0RMdGVrWCtrSHZrUS9mb25OSEU2T1NxWG1h?=
 =?utf-8?B?VFBlakw4OVliUDBvVTU5aDFjcGFQdDVBTWNyaXJMZ21MS0JVdS9taUE5Z1lU?=
 =?utf-8?B?dERUMVJmd2hiZ2ZyZk4vNHBLL3dHVUZaWDJORGdDKzE0bnlWNDNSMUhIVlI1?=
 =?utf-8?B?VU1xcDZmdUU0aHljeHoyVWhIWHI3Vll6VEl5THhvazJiUFlXUmsza1hDSnA0?=
 =?utf-8?B?MVFUeUlOcS9MazZWc2VTVkp3ZlFTVHBTbHBzbFQ5M1AwN2pMMmw5ak40NXlo?=
 =?utf-8?B?OUdKU3VzZjAxVzErQzk2dE80ZHF6aTFFTEU3ajlEUEpnNXQ3NDVTVVZ4T1V0?=
 =?utf-8?B?QTRLTmk1Q1hka0k3QmNSZmEwTEgvNDZ3Y2t0VFNZN0N3OW9YdEI0d2hEY29P?=
 =?utf-8?B?ZWR3T0kzSTFCL0hEWG1ScW1rRGtqditQRGxDUjU0QzNkeUJRQW5uUmdGWEFi?=
 =?utf-8?B?bm9uaVFTRnNhMm1VY2NzOTUzSmVyMmk0aHpGWTE3d2YvNUt0VFpaSWJwWWdy?=
 =?utf-8?B?ZVRPUGJpQlJMZE4xOWhRU05teFRIZlpIU01vU0R5UnZDNUlpODU2YlVEYllu?=
 =?utf-8?B?bHBwaGFIOGI0R0FzRGt5WWExcFhlYnUzd2twSnZnRnJRS0JuQ1J1elpmSVBG?=
 =?utf-8?B?a04zZk5QSjhFeEJMZ0lhaTBZeFRXVllrWkNIZEUxUTZ1dTBhTVo3cnlPMWZX?=
 =?utf-8?B?WkxSeDVhNU9Ecy8rZ2tjVVp0eFJ0eitFQVJ3SVMrbUVKWDNEL2hYQ0diTnc0?=
 =?utf-8?B?UmRSeFZSUG1HeWI4R1R5SUZBaE5IQnkwWVN1NGpqUTNEek01dmpISUdPZTgz?=
 =?utf-8?B?VldYVFFncWN4b2Rad0FmZHJrWnNURFlTTDNNNUFnWk53SkdUVzYwMURKdDdR?=
 =?utf-8?B?U2dZb0lKQlo5KzhKZ0VrTlhTSm5nbzEzeU53Q0s1cEZVbGw5bTJtb1FoWW1t?=
 =?utf-8?B?YSsvcmNGMytHWlQ5L1dtQXlNTVpyTDRKbnF4RmxCUW9TTENYKzRzaG1GQ0xw?=
 =?utf-8?B?WWdSVlFTbnl1K2ZhRk1aSndFeWt1RXR4Ui9hSWVZa1ZKQS9RZkNhQUVIN1dG?=
 =?utf-8?B?ZXRIRDRQcFRXSHlWTEhGNitjQ0xUUnFTS29uTzYrRll5eU1kOW0xVDRuZmpj?=
 =?utf-8?B?OUpmeEx2ZHZhb1pMaVdwdC9wTTErTXBhaVJJWHphV1BCNnVlRFB4K3NNUWlL?=
 =?utf-8?B?enlweEZMWkpXNEtIdHB5QkxVbmF2cEM0Q0tvOFFqc3RLUTBCWXd0aHdqQzFT?=
 =?utf-8?B?M010aWJPZi80UjlLSUNlOHY5RjBiVUVJQjJlUUpoMEFva2daZ3hqSXg5L2Fk?=
 =?utf-8?B?cGNGRlNFSDV2SlpLOHFWM1FUWjdNb0Ruc2d1a090dFpIbFNMOFBhNWVnRjE0?=
 =?utf-8?B?bkNsbzN3cDFKanp0Z01SNjl5WmNkbDB0VjRic2V3RjlvVEl1TEdjbkdtRGp5?=
 =?utf-8?B?bVJMUHlkNi95OTYvUTZ1amdYM2Q0Y2xyVnVValNLNHNvNFdrNk80aklPaVY2?=
 =?utf-8?B?YTZoR096aXZvNzJyQnJXamJNQ0k2aTdDOS9lNG5xSWlHcThnd2NjTkdLSTZQ?=
 =?utf-8?B?RGFOS2ZsT0llYUNxcGpuMVRwejhWL2gzVHJlQk5YcEtCbEgwN0NtZk8rNkJz?=
 =?utf-8?B?WnZKS001WXhYd1g3R3k3dUNtYWtxWHZJU3N5NWUwYjNCOFZSd1JLczFMUjl1?=
 =?utf-8?B?UHRHMStRRnVUMU9oOWxmVW9KUUhmeXhrVUkwYlowWkl3bFhKdk5OWEMveCsz?=
 =?utf-8?B?YmhidE81T2Z4MDljSVRxUDBxZDBtc002U1JWaCt2SnBYOEJlUDZjcHFFM25k?=
 =?utf-8?B?c0ttNm05UWdDTm5JclRiZ1ZIREMwYnZwWVhOeE5FZG9Nd3J4LzB4djJGVUdx?=
 =?utf-8?B?dHVaelhSTVpBWTI5czJxNGw3VzN0OUtoQUp6WWhQZlVPc0M1TUdwdFUwckUv?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a628cd3e-a28f-463c-611e-08dd9c36ed8d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2025 09:23:08.6289 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ahCBDm8PJoiDYvAKe0PHbJcvKLYyeyllSrnUp/Otpmy1w9z+d6KiPCJH491pq5/4Au2i908lvyw0wWWlvQl6iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748251406; x=1779787406;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=03piBCrJ+c6xhaa712R+Sjuk+vi080NSgUzRsB+vFFE=;
 b=P7w/iB6v1LWDXEierMyFGJZRxOkH+OBI8mChNV0yDfZbLgtYgpNSxgWr
 38OEuWWM0/2fuUhjjSZgqrr6MBfZezcGC74imWgf3e2uTPtT7VWF96uHa
 vFhCDw//xsNqMQ4SC8gn+THyPdvVOD7TUtx9AbgCazWOzHagImx1GOcy5
 zgia3RqDtZaa32Q+hxachugoGN70mwTiqbhtl5but0dwkmOt2rtmEPS+e
 8osQ+QTkO7DVNRZy1QEczW8RibOP0e+EJfPX4C4wpuKf6QWlae2cjDFqf
 K9ettF/0lGh/w2hnSsRnrsonw2+TQRdtl+sJRAUOQaDbleM5NlLKZmvlw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P7w/iB6v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc: Multiple failed link-ups on boot
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

On 22/05/2025 10:21, Mateusz Kusiak wrote:
> Hello,
> I was wondering I could get some help understanding the igc/i225 combo.
> 
> The issue I'm having is during boot-time, the i225 fails to establish 
> link multiple times and it takes a long time (2.5s) for successful link 
> up. I know this because I enabled debug logs in igc driver. I retested 
> this on newest 6.14.7 kernel and a few switches/routers and the result 
> seems to be the same. Is this behavior expected?
> 
> Log:
> 
> [    4.544381] igc 0000:01:00.0: PCIe PTM not supported by PCIe bus/ 
> controller
> [    4.578713] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Timeout is expired after a phy reset
> [    4.579619] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Masking off all interrupts
> [    4.599721] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Issuing a global reset to MAC
> [    4.599961] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> PHC added
> [    4.607852] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Masking off all interrupts
> [    4.627957] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Issuing a global reset to MAC
> [    4.627962] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Programming MAC Address into RAR[0]
> [    4.627967] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Clearing RAR[1-15]
> [    4.628015] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Zeroing the MTA
> [    4.628041] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Zeroing the UTA
> [    4.628059] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> After fix-ups FlowControl is now = 3
> [    4.628061] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Reconfiguring auto-neg advertisement params
> [    4.628597] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> autoneg_advertised af
> [    4.628598] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Advertise 10mb Half duplex
> [    4.628599] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Advertise 10mb Full duplex
> [    4.628600] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Advertise 100mb Half duplex
> [    4.628600] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Advertise 100mb Full duplex
> [    4.628601] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Advertise 1000mb Full duplex
> [    4.628602] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Advertise 2500mb Full duplex
> [    4.628679] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Auto-Neg Advertising de1
> [    4.629139] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Restarting Auto-Neg
> [    4.630941] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Unable to establish link!!!
> [    4.630942] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
> Initializing the Flow Control address, type and timer regs
> [    4.633280] igc 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth 
> (5.0 GT/s PCIe x1 link)
> [    4.642420] igc 0000:01:00.0 eth0: MAC: <REDACTED>
> [    4.871840] igc 0000:01:00.0 eth0: changing MTU from 1500 to 9000
> [    4.871856] igc 0000:01:00.0 eth0: Masking off all interrupts
> [    4.891959] igc 0000:01:00.0 eth0: Issuing a global reset to MAC
> [    4.891964] igc 0000:01:00.0 eth0: Programming MAC Address into RAR[0]
> [    4.891968] igc 0000:01:00.0 eth0: Clearing RAR[1-15]
> [    4.892016] igc 0000:01:00.0 eth0: Zeroing the MTA
> [    4.892042] igc 0000:01:00.0 eth0: Zeroing the UTA
> [    4.892060] igc 0000:01:00.0 eth0: After fix-ups FlowControl is now = 3
> [    4.892063] igc 0000:01:00.0 eth0: Reconfiguring auto-neg 
> advertisement params
> [    4.892599] igc 0000:01:00.0 eth0: autoneg_advertised af
> [    4.892600] igc 0000:01:00.0 eth0: Advertise 10mb Half duplex
> [    4.892600] igc 0000:01:00.0 eth0: Advertise 10mb Full duplex
> [    4.892601] igc 0000:01:00.0 eth0: Advertise 100mb Half duplex
> [    4.892602] igc 0000:01:00.0 eth0: Advertise 100mb Full duplex
> [    4.892602] igc 0000:01:00.0 eth0: Advertise 1000mb Full duplex
> [    4.892603] igc 0000:01:00.0 eth0: Advertise 2500mb Full duplex
> [    4.892680] igc 0000:01:00.0 eth0: Auto-Neg Advertising de1
> [    4.893139] igc 0000:01:00.0 eth0: Restarting Auto-Neg
> [    4.894945] igc 0000:01:00.0 eth0: Unable to establish link!!!
> [    4.894946] igc 0000:01:00.0 eth0: Initializing the Flow Control 
> address, type and timer regs
> [    4.923528] igc 0000:01:00.0 eth0: Timeout is expired after a phy reset
> [    4.923853] igc 0000:01:00.0 eth0: After fix-ups FlowControl is now = 3
> [    4.923857] igc 0000:01:00.0 eth0: Reconfiguring auto-neg 
> advertisement params
> [    4.924395] igc 0000:01:00.0 eth0: autoneg_advertised af
> [    4.924397] igc 0000:01:00.0 eth0: Advertise 10mb Half duplex
> [    4.924398] igc 0000:01:00.0 eth0: Advertise 10mb Full duplex
> [    4.924400] igc 0000:01:00.0 eth0: Advertise 100mb Half duplex
> [    4.924402] igc 0000:01:00.0 eth0: Advertise 100mb Full duplex
> [    4.924404] igc 0000:01:00.0 eth0: Advertise 1000mb Full duplex
> [    4.924405] igc 0000:01:00.0 eth0: Advertise 2500mb Full duplex
> [    4.924485] igc 0000:01:00.0 eth0: Auto-Neg Advertising de1
> [    4.924946] igc 0000:01:00.0 eth0: Restarting Auto-Neg
> [    4.926752] igc 0000:01:00.0 eth0: Unable to establish link!!!
> [    4.926754] igc 0000:01:00.0 eth0: Initializing the Flow Control 
> address, type and timer regs
> [    4.926828] igc 0000:01:00.0 eth0: Set default MAC address filter: 
> address <REDACTED>
> [    4.926830] igc 0000:01:00.0 eth0: MAC address filter set in HW: index 0
> [    7.036586] igc 0000:01:00.0 eth0: Flow Control = FULL.
> [    7.036590] igc 0000:01:00.0 eth0: 100 Mbs,
> [    7.036591] igc 0000:01:00.0 eth0: Full Duplex
> [    7.036593] igc 0000:01:00.0 eth0: hw->fc.current_mode = 3
> [    7.036596] igc 0000:01:00.0 eth0: 100 Mbs,
> [    7.036597] igc 0000:01:00.0 eth0: Full Duplex
> [    7.036604] igc 0000:01:00.0 eth0: 100 Mbs,
> [    7.036605] igc 0000:01:00.0 eth0: Full Duplex
> [    7.036607] igc 0000:01:00.0 eth0: NIC Link is Up 100 Mbps Full 
> Duplex, Flow Control: RX/TX
> 
> Thanks,
> Mateusz
> 

Hi Mateusz,
2.5 seconds to establish link seems to be well within the IEEE 
specification (4-5 seconds in nominal operation). So, yes, I would say 
it is expected.

