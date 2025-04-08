Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B062EA80C90
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 15:39:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EE7D60ABC;
	Tue,  8 Apr 2025 13:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1AzaKGnn6PtK; Tue,  8 Apr 2025 13:39:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDA0C60BE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744119546;
	bh=/5DuOk5Lz32I+hzVUzow3tCj/H6cg9T92ExW8sVWS/A=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vORE9G4yrk90RJeKdFNj+r4jf54uR4FaTn6nVY/0FxtZssBqGhNdsW8Oe4Z5MR7cE
	 t3ipEWaBDOVSMihRWunF6Sgun/4dwHqgPfpR8lyaXMlphw4nDgOhNE0EEguzmtP+ZY
	 2TREaWxpwak41NMWP1l/0syBHNhTfRfa0pk7fIM2MdOsMLiyrrcvP2vUsVO9p3sc1Y
	 aadGgokRHfsuvf3K/f0sJtI9Ht1AQmtArJ3iUB0SRhVJG8XhRpXAqa3OXS94s0gHEY
	 UqNQfC6nXiivIpSucXUY0enLu28ylwW61DVDnHeUCuZsxDlvtdVaVGjgiNOk6eiYcG
	 DV3hl+RB08mqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDA0C60BE5;
	Tue,  8 Apr 2025 13:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 173B01DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F140D40B82
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zYPAvHxltY8W for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 13:39:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3CE7C41049
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CE7C41049
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CE7C41049
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:39:03 +0000 (UTC)
X-CSE-ConnectionGUID: 5Z5+CYDxRN2yCrj7W/apsQ==
X-CSE-MsgGUID: BOOYOLX6ToOrJXtvEUga/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49396558"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="49396558"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:39:03 -0700
X-CSE-ConnectionGUID: 4oiwT0v9T6+0zInQGIRSvA==
X-CSE-MsgGUID: tduB8uX3Q6q3/sxfU/AxJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="159266513"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:39:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 06:39:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 06:39:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 06:39:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X0xpDiGaeIBn79G68ivFCvf7Me1bQWdDGxXiGAxqz+4LGhYUpKM45+vygdY5bGu2U2REHlypa+/EABgfPbj9A01j7PrC5G6aKMdes69TrkIcwLMHLDxQkrvQsrc1QCz/eIRiFY/YdshADgepqrRu3XCJlhauhBixLssAR/OreCZxBdlTHywCXxruWqQsS51t14Hxlj0q+jakGAnUUCOyFKCyDZTqxLpUYQ32gXyEYEFc6TqIv9DP9UdMdD0+c9QogI5dSt3vpG4kfzZJmQNFOHkn/+i1Li6K3lSjgR/QhlBXM50x5V2DnNApxLF2EP8pvJes5LxXSAB0zD56Arng/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/5DuOk5Lz32I+hzVUzow3tCj/H6cg9T92ExW8sVWS/A=;
 b=v421WlAJNDf0VGpUiQjhxGcIeyOO3xKXOr+bOtd2Cr1B2WpUmeZWW6MvBhA79796IlZiQg/j9YrWda1NT+nlYZLNKHpVRLaF4coM/V0stb47ychyu2jmO9my56WpAEEIBZcc3/PJnDc1+Oey1wDutWc87uQrwnvFl23K9ZFTfyq2ISN2WzUowzzfeEVSwL/l3QTD34mb1M2dS0Zq3UflEsYiEFDtiI34YK5AQxrOv9skxhB41ST7EAXIlwHkMd237GOlSU7yRErZei/lrvpuocA/iAEeoClVm2twyHKe6OBVfB9tbzNvyMqd12vGh1h4gk9zRzw2Ly3Hgj9oYyIjhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV8PR11MB8463.namprd11.prod.outlook.com (2603:10b6:408:1ed::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Tue, 8 Apr
 2025 13:38:32 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 13:38:31 +0000
Message-ID: <608aa954-d299-44fe-953a-05cff0e6db6d@intel.com>
Date: Tue, 8 Apr 2025 15:38:26 +0200
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-4-aleksander.lobakin@intel.com>
 <Z9BDMrydhXrNlhVV@boxer> <fc94190c-3ea1-4034-a65d-7b5e8684812d@intel.com>
 <Z9ruoGbEg/4iJG9/@boxer> <247bdd01-830e-434a-ae38-0c68fcc62051@intel.com>
Content-Language: en-US
In-Reply-To: <247bdd01-830e-434a-ae38-0c68fcc62051@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0048.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::10) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV8PR11MB8463:EE_
X-MS-Office365-Filtering-Correlation-Id: a543c140-e3a1-4262-36b7-08dd76a2a701
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RXhaNFhkalpTblJ0YUdaNVdKTW9TbHhHREZLaXNrbGdlbmN5TXgyMFl1Q3Ju?=
 =?utf-8?B?TU9kSkxBc3cyYzI0d08vQnNEVnRWMERCM0xSejZFQzczcTlZWXJucTU4ZkJa?=
 =?utf-8?B?aGJRNEhwN3hWRERzdit5NU93THExMzR1WU5qdFVnYTRnWTJxOTR5UUUvcmZ1?=
 =?utf-8?B?WDR3ckk3d1hvTkxLbWtta1F5Tmc4VksvZ2FSa3kyYUZWTnQrTU8wZkJpaEQv?=
 =?utf-8?B?V3pKelVRN1BPdlhrd09qdmVKRVl3bUlMaFpTdGZZdnZXZGprS2N4d1RsKzB0?=
 =?utf-8?B?MlNSNkpBOEpoN1lCaTMwZ1RtQjNlbTBEYW1USmo4dUhsUXJaSVYxNTlFTUVK?=
 =?utf-8?B?MGNhKytISEZIQWhKN29VVVRDTGJuOFJVcVJLSGF5d2lNVkVFZ1BDb0xLOXNW?=
 =?utf-8?B?SSthRGxlMS9YKzBGSTB5NHVrL1JUYmRJUmd1MVdRL2hWTnVEaG82WkJrTFBl?=
 =?utf-8?B?a0pGZ2cwYnF0QmhOZFVmRHp1YzFHMisrWVpLT3ozekp4ZmdGampDcDNuUnYy?=
 =?utf-8?B?SjlPNERmendPQ2JjdU03VVl0S2pVUzBMOCt1YkQ2RnNxTTNET3l0b1JXRWx3?=
 =?utf-8?B?eVJyQ0Z4OXNuMkVrVnRvRnRXWXpaOVcrU3VLcUtiOExFQ1BSTXBNZ3JSVkhV?=
 =?utf-8?B?ZFQ3bkI0eVNIMkJQR2V1WjlETTgzNGV3eDNWeXpMRVFwSGFoRTZnVmwwbW1G?=
 =?utf-8?B?VUp5Tk5TeVBvdktWUzBBMWgzcWZhcTVQNlNPNG9aeDQvNEFEUFp2THJZU29V?=
 =?utf-8?B?NG9vS0ZmQ0lRaFBQeC9vZUxNcVZ6Q25sWkJYbVd1WHNYUE9CYkovS0RCclRv?=
 =?utf-8?B?M2FKV2R6RXNwenp6Ui9Dd3hWNXZBa1lXK01JdFk0OVVLaDhEZEEyL1hRMUhu?=
 =?utf-8?B?SVFiZjhoTXZnZm9BT0JFYmc1RVVDMTFlZlpncXNacjVIeVFZZmlpRk9mczVT?=
 =?utf-8?B?MHF2cnI3Ums0MUc2UEFua0t5SG9YZWtJU0Uzd1JyV0NLZDN3VURnN0ZwUmJP?=
 =?utf-8?B?L01MRGNtN29aOUpObjZmcDlmZnJQR1lYY3MzTmlEYWdkWjZZYWs5VDFDeWs1?=
 =?utf-8?B?eEJuSXBqZys0bStmRnFPQlhubU1NeHpOVnV1R25Da3A3YUYzS2hwNUljK0NJ?=
 =?utf-8?B?cjZLRTRaSmRTR09jOVhWVWVTMm9ORFJkbW1MRmhEWnR1NWxxRmRmcDJPRndO?=
 =?utf-8?B?Rllvam0yR1RJbnZGNTlGU0xOT1FpVWZZWkh3WFZSYkdHVTNLWFVTamtjdmVN?=
 =?utf-8?B?YUdiNEQ4ZlBDZFlUS25UdUJSTnYxc2oyOHAxcXdZR3hTbDZmZExlRDVsNlc5?=
 =?utf-8?B?QkVkRE1yRVZwcU5Fbkl3RUpTSmplSnIwaGMwQ3hUTGlQVXdETWhDUk5hWXo2?=
 =?utf-8?B?R1ZHS0loZytxWk95RXBXRVBtYlpMekRuTGhCTkN5aWhGcVUyU3V2ZzFieGlL?=
 =?utf-8?B?bXg3dG56ekpYeklISGxjRU1jZnVLak1aVXBHdFgwcFBmR0NVWlhLNGZrNTZZ?=
 =?utf-8?B?aHhLaWx4MFBOODVVMUl0bHdDdkUzeWEvRzR1b3V5amhpK3hZVXh3SDI1dExK?=
 =?utf-8?B?LzY3am5qUVVXZW9nUlRKSUs4NVI5ZldEM2pJTW1BTkNsNGFLSERnOEVkdURL?=
 =?utf-8?B?Wi9sVTlnT1FDdHQybWI3bXYrT2pLTTFIdFlOVlEwMlBBZFJBSncrd1A0bllv?=
 =?utf-8?B?ZCtoU0hrS1RjY0pTdHFsbG1GTHNLVEh5TStoZWJjRXJOY3FULzd3OE5kMEdL?=
 =?utf-8?B?b3lnZmZOMFRoMjBReGR4Mkh3RzFqUEJpc0dNNGpUc0dBOStYQTNhcE1qWjFD?=
 =?utf-8?B?dkhaeWR6OVc5bFVQT0lZbzJldHo4cVYwbTJrYndNcUEzVnRzLzdndW5OS2Yx?=
 =?utf-8?Q?mFfJ9aBvcngtN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZG03b1Vyd2tPK05wSnc0SmNDQzhpNExsM1JYTmFuRkZkbVdmTjVaWGJSRWJC?=
 =?utf-8?B?RVpHQWovemlIdXA2OU8wMEhjZXJQQ0hDQkErOUFUTkU4MjRyYnBEemlIRGhL?=
 =?utf-8?B?WHB0MEg1U3phV29jK3hEM0NoeW1NYng2Mk5NRlV1eWI0Qk9HaWgrcWVPcTNU?=
 =?utf-8?B?cWRwa0pGbHZVcWxmTmFvTE05Y0FBclJ0Y1pnMWZRSmZMdy9XUkpYV0FwcmIz?=
 =?utf-8?B?aS9tZVYxcEVmQ1NzWE1MUmtJNVlTa0xoN2VBZkF2NmtIc25sdmZ3UzdabUlw?=
 =?utf-8?B?dlRpVzRrNGgyWXMvVmZiMzVxeHhlaVFmK3luT0JwWmlRZzJnNWxEY1N6dmho?=
 =?utf-8?B?RlBtbElXc2JlLzVua0I0d1dTc0lwTkxMZEVVYWJ3RFNFOGVENi9CWnZ3WElp?=
 =?utf-8?B?QjBrTE1pTkZBWHlBczl5Y1FhT3NHNWp5UUhVUzBJWlNwT080eGJEa3drU0lX?=
 =?utf-8?B?bWVhSWxUbDFEUDV4QnpGUkJQeFRJU1U4cVJOcGYzN293RWRPN1k0UHM1cGVM?=
 =?utf-8?B?angxNU9ieWRpNmJlbDNZaDBBZk9JTDFVaERIdmIrTEhPQlVqNnJkN2owdERq?=
 =?utf-8?B?dnJPRUZBMEk1V2pUWW45WTdwUWZ2Z0cwTGxPcGg1N3ZzbXBwekcrODVyL1dI?=
 =?utf-8?B?a0lSNEU1WUFFaGtqdkI5UTlWd2F0S2IyRlJSRGxmRWNqRWduSFBZMHBoazU1?=
 =?utf-8?B?dHN6TkphQ3lLajFEUElVZnZwbzcrNWlTUkZzM29pTlFWS1E5ampqa2hSNnI1?=
 =?utf-8?B?Y3hsQm9JM0JjSHA4ZTR6V016VHpiK0NEcFJmTExWU000Z0lYZjdPMGRiS2xo?=
 =?utf-8?B?R0cwd0RzazUyanhjWmZmWGZteERoZGs5ODh1eGtwc3ZRZ013aUZlY1NOajVo?=
 =?utf-8?B?Yno4ZjNKWU5aRVo4WEgwZGREbTBoU1JnTGFQdzFaeExuYkJXTUZXVWFrT04y?=
 =?utf-8?B?MyttaFdKRkk0cXNGRUJXRmJYWm5qSm13TzQ1aXZlR1hUSURmOTFVaTNSQWh6?=
 =?utf-8?B?R3ZxNnlpaC9yTXFVOC8rUnBSN2Jqa2NVV0txNG9pWktHdWFBYzUrR2JOdHNB?=
 =?utf-8?B?SXorWmt6ZTJWQXN2cElTQ1puZ1lRamVBa1BFdmRuQWlla2t2am9hRktxODYw?=
 =?utf-8?B?VVVZL3daaXJ5UFFpTEYrQ1RWWkRaaVdrUm1rSDFVRU9idWZoTGZta2VFdFkr?=
 =?utf-8?B?bUY4eHptTEhEbEo0SEVzbFcxaVRPSkd1Y0gxeEdBaSs1K1JKdFJXN2hLTGxm?=
 =?utf-8?B?SXRtOEwvVGVpOWVZeCtENDRzdTdjb0krWURYQklnUkdTemVTaURKVVNDUXNB?=
 =?utf-8?B?Nkc2MkEwY3VGdkJJWjNBY0JNUkxQMEt3dExnbnBpenpzdDNNS2pCQjVEM2tn?=
 =?utf-8?B?VnFjTlZDWFhwMTJjWHhpMXViOVVQL1JPU0dra29YS0dKK3QzK1JBc0tjYi9L?=
 =?utf-8?B?VURwRnhVWmJ0MGR6MmlESTdWczBvVWlBbFJ2RDhIMGU2a3VTTWhjL0F4U0RH?=
 =?utf-8?B?QiswWVd6ejVua2hsWk8ycjBGRTBqeWRvSEJkR1Mrd0lMZkIzNkdrV2tZQWUr?=
 =?utf-8?B?ZFBXV1FJeVpWWW5oVGJiQXdDWi9HTGxkYnduLzhOM1g2eGFmbm5aYXd5ZUFK?=
 =?utf-8?B?aUt5TzZzbGJickdYTnRQZUZoNTR6eDUxd2h0Vm4rVHcyMUo1TU82cjl1RStT?=
 =?utf-8?B?aUxSbms2c29XK3FvdVhURnJ5MXl1c3p4elVFK3BsT1VFdllUUTRvMW8xUjRL?=
 =?utf-8?B?ZGJjYmxoM3VmeWVuZUtvcFAwMi95TmM3MHU1a0FER3Jpc2FSeTVaMFJvN3hC?=
 =?utf-8?B?QmwxS2lwYmNUcU52MGxkbEg0UThpN0dTVVExcVlpK1R3YzJQM09maUdRcmtk?=
 =?utf-8?B?WWhxb21XVFRvcXl0UmNpSU41OHBPVDQrV0h0eFIvTWg2b1l1NXR6ZlY2TlJD?=
 =?utf-8?B?NCtoYkU5dTNnNHpQNm1aS0RDcTVIdWlFU2U5L29GQ3cxVnFUZ0N5cUdGOTlR?=
 =?utf-8?B?SEVtTmxEQ0dxSUdMemh3WitFY0g3ZkFkeGE3Z1VqRXBzYUpSWDcrSmF2WUt3?=
 =?utf-8?B?RTNoN0tmVlV4MnFsWmxybGVpRGh0eXY4YndXVmZNQjBMQWpSVmphWG1CdGp0?=
 =?utf-8?B?bHpwM0FYMWJCRUZWdUsyY2Zic1lBbGVkMVpCVlRXVlRZcTZIRk1BMDQ5blFM?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a543c140-e3a1-4262-36b7-08dd76a2a701
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 13:38:31.8116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uBQJh3PKBBGenZradh17onKXWwJFYM+/iejhdnzOXpC2C4AOGaFdU3DqCjBCHrKrailOaQV3ZVZaTTwvtzO4ZdZVn8OXhcaqN0tMG7wZt/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8463
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744119544; x=1775655544;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TzP9FoJXRsyKmcgRPVBk6bj0sqs5yYRsGCYKr/I6pW4=;
 b=FaO7ziEMt3W6pZO1xyMN1eHkh8nxTd9cI5H4F+6Wucn2fy1IKhYxpXm+
 jf+Re3vnfrkgvh+x3FVW2uXM2cuZli4vrx6UEb0UXarCgjW9LPPnRN7Ya
 eRHcVj199jgo3ka6H+zQBOX6L1RF8tB8DaUFy1oDDOR7/rx30cLlw/BpO
 iBrGl0ulsnVZMUxHLbMUjNw8jtzIND3PaFsHBDZlCGfyPjytPZv/+GuZy
 f95O1rA0ykaZGJ9qIU+MvmP0SVwS0fhsM66PmVV8eWsR+1WiS/TgAwc2V
 QBL8v+y8jbwMmQXEmi4mY4lmgq7+QrT3sbXW+k63WrKtm2asbKZoYIBeU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FaO7ziEM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 03/16] libeth: add a couple
 of XDP helpers (libeth_xdp)
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 1 Apr 2025 15:11:50 +0200

> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Date: Wed, 19 Mar 2025 17:19:44 +0100

[...]

>> Not sure what to say here. Your time dedicated for making this work easier
>> to swallow means less time dedicated for going through this by reviewer.

I think we were chatting already, but just for the record: I was able to
split 03/16 + 04/16 into 14 patches, so the next series sent by me will
be libeth_xdp alone as 16 patches ._.

> 
> Also correct.
> 
>>
>> I like the end result though and how driver side looks like when using
>> this lib. Sorry for trying to understand the internals:)
>>
>>>
>>>> through this code I had a lot of head-scratching moments.

Thanks,
Olek
