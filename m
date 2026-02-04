Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OrWGFs4g2nRjwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 13:15:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AFDE5AB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 13:15:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8EE960A5F;
	Wed,  4 Feb 2026 12:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ikm9-a-SsPt2; Wed,  4 Feb 2026 12:15:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DC7160A7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770207315;
	bh=x1jlQbbhOFdcywxemsMceExmnPb4Ajsntmzle01cJWU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FjksVSvAGAYADeWw6GLMMSPsFhB5frvDqpWJhqY0GiRmdfKjxnumtqsLRXRjP/Id2
	 EAHrty4YKkGsrbdCRjnSFUyLLEENAFBqSeepb2C5cp9REIwcpYPxHnZqDIdW7Ml27d
	 eCYcNKa8jxwslCc/blrFXFWearMh6yEt4QAQTD+f+zRxU4eAhvpvhryMegLivxgLH6
	 uoBjc/kuGUyFRlph85qmkVs69eZe26TeYGiJYqYFabmRJH+j70BtB2c2oH1bUzj9gg
	 aLVXOOLfsB7PtnVXIw+X07xDSIYjg1iFa5dpbxE5MONM+93LQE42Xmpqa3cQUSqsE2
	 lGKKyyd5TNEfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DC7160A7C;
	Wed,  4 Feb 2026 12:15:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 004BE173
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 12:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E27BF40AE2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 12:15:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lfpx5j9rT3er for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 12:15:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=adrian.pielech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F3DD340AE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3DD340AE1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3DD340AE1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 12:15:11 +0000 (UTC)
X-CSE-ConnectionGUID: KAi2yhU3TrmhoQkywuDfoQ==
X-CSE-MsgGUID: 6cZBVysUQSmdYSt/quJ2wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="70411154"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="70411154"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 04:15:11 -0800
X-CSE-ConnectionGUID: tslSCu9kT7aGZh95QN/OLA==
X-CSE-MsgGUID: VSbcVV2DTd6Wk5WwfGu5Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="233068664"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 04:15:11 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 04:15:10 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 04:15:10 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 04:15:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=voza6c33zoO6EnQ7YZgM8c6tqMiY/ABQvGcFnn78oArrk/wCqMcrA9dhkYgHi92c6tvTXSzjaaWIOF3Vh3Y634UQmtshUpDSGyf8NTyhirhSYWqd5ZF+W8HW/RHEUSdo9lFIgSakVwZNxDTTc7TiAJ1/YOWMtmUErBJoJKku2G/CzrRrEwr4yBacZeAAsXbbVtFrm2/VxXAPsYItrmhCKmwrjtDLNLAglkCFryZXvM72Beit46OvUutfgxgBToPDO2nxNzygO8Y4FLaODY7+hbNQyqz31i94/u7ttdjsTOP4+saq0fal78MM/D3VHLTm6tI8/j2GqH0NDMP+VmjB/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x1jlQbbhOFdcywxemsMceExmnPb4Ajsntmzle01cJWU=;
 b=XG9UJPnv2eq7JCllYtq7vGS14eKHzXyeqcXHY01VehyvladVrzjOwvaKEk4xzQg7M3l1Mo4CVujz6o4JfgpUE/Ms1O03LHjZDUmG4TOF1rx1BhDfmB6cbV4FQwbMM0ub3pMixQUZTa11sK6gBU0HApHnYc+w31mCOlBxBByJtcTMyZ+u2+EQxWNmL4eg5csLjUiNjGFWmci+nhmnIOnOZjh43GGy/X5HWifNmfa300IAnGG/bZl792/b0epzUmtIOi/KvIpwUNbJ42kdSjTrq70i29Jxxw0ospQlKdOna+ZstTkJqTx1sitvivi9W3RqsfWYhOSjucX12dhSqOOHtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB7323.namprd11.prod.outlook.com (2603:10b6:610:152::6)
 by CY5PR11MB6413.namprd11.prod.outlook.com (2603:10b6:930:37::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Wed, 4 Feb
 2026 12:15:08 +0000
Received: from CH3PR11MB7323.namprd11.prod.outlook.com
 ([fe80::abb8:c470:36ca:e556]) by CH3PR11MB7323.namprd11.prod.outlook.com
 ([fe80::abb8:c470:36ca:e556%4]) with mapi id 15.20.9564.016; Wed, 4 Feb 2026
 12:15:07 +0000
Message-ID: <a29bc22b-a1e3-4a9e-a63c-5d1c71a6f08b@intel.com>
Date: Wed, 4 Feb 2026 13:15:03 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <horms@kernel.org>, <andrew+netdev@lunn.ch>, <krzysztof.galazka@intel.com>
References: <b5446385-1f51-4359-b484-6dfccb50dad0@intel.com>
 <20260203190811.1f9e7530@kernel.org>
Content-Language: pl
From: "Pielech, Adrian" <adrian.pielech@intel.com>
In-Reply-To: <20260203190811.1f9e7530@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0119.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::17) To CH3PR11MB7323.namprd11.prod.outlook.com
 (2603:10b6:610:152::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7323:EE_|CY5PR11MB6413:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a33fec4-7f0c-466c-2336-08de63e70929
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXJZMW9rdmtpNlZ4c0ZUSCtrZTlrOVdKTEk1dVgrUkN3OW45Y2wweG9tNzlC?=
 =?utf-8?B?bmdtS3NoRnAyMzFNaXlMcGdNM2JhcVFCVXdOV2pwcHJhL2VpYkZlUWFOdG8v?=
 =?utf-8?B?UjU4VnZvbXdVTE1wbXE3NXdQR3Z5R25WWUF0NTFmekJyU3dVL0VQT01NUFdL?=
 =?utf-8?B?N2szV1VCSE1zblpmMW80QjUwT0E5eVFEc3BscHZUQVZCcHI0TUxIRmwvVGhq?=
 =?utf-8?B?T3lUc0NhS0M4bVJHcUVndURJTlRNYmw1WmN1WmQ4L29QRGFGT0NIZzJBdEcw?=
 =?utf-8?B?d3I5QlZvYllVRE5oMnVrcXExSTQ1TVVaTDJTK3ZHNVU2aE0vaTIxOHRUOENY?=
 =?utf-8?B?bkVwaXJST1ZGMlRvVE5OeFJiSE9lYW9LdnE4R1haaG5ITCtOWS9YMzlWNEJC?=
 =?utf-8?B?bU9FZHBMTjZMcmc4b0R1YUU1RGlkeUNTOVJ4NmVla05VY0prNVJoaHhobDFx?=
 =?utf-8?B?UTFMS2N3WkVXR1FrS0dORmxZK055R2VZRzJyd1JieGw2QldlRHo4T0ttN1F6?=
 =?utf-8?B?c2g0ZWNHeGM0bXhONE9PU1p2SDRTd0R0MHU0SVRXSm8wRS9VejBscGN0R05R?=
 =?utf-8?B?TmpMMnBnak5CdG9SM2QwUWp0QmRHaGd0OWZ5ckhnYm91LzNZa3E5d1dkYTNn?=
 =?utf-8?B?NUpsckNIM2EvVDdzVW5BS1RuWk1UMnJ1WTh6aEVINzRWVDVwMVpRSWhLMW0z?=
 =?utf-8?B?dmYrZkJHVzUrcGZVZHYwMkdaYzlHbXpvb3Z4VlVPa00rKzZhY01mckNoOEsx?=
 =?utf-8?B?N2JHR0k4SkRJTjBQc0lWbzQ4MjVqNWN4UWtkRHk5c2ZYUCtYZ2FSNzl1VTN5?=
 =?utf-8?B?SFE5cUYyV1pQcTk1SEtKeTVCeittRlBxM3FkckFjZkswV1JmTXQxdUJhRktj?=
 =?utf-8?B?RnhKRWY5ZlpUYjdic0xqTTNLN0FTSU5hNW5VQ0R3RkxKQ25WdzhUZVh5SEFJ?=
 =?utf-8?B?RDQwbVFDeTN5ZVZqSzg4YUp1ckhjR1l1N3VXQjF2YjFmcUpldE5DNDN6bkFt?=
 =?utf-8?B?aTFwRXBMdkxXZHdHaHRQZ0JKTkI5ZWtYN1M3cTlOZ1VYTHlzSTNKN3ZERElj?=
 =?utf-8?B?a0NDbERmMityNWw3SXJuMDgvQmNNeXVEeEZwSTNZbkFBNkRKR1R1NExrczlQ?=
 =?utf-8?B?THVGVE9vVCtkMmtQdlkzK2xlNVA2Ym1veE5wN3NPMGRqUUZRdkhrcnJaQWlJ?=
 =?utf-8?B?ZnB5RDhPWU9YNEFNWjRXdnB3YzBMMEF5MU1lOStTV0dNSEdwcVZyU2Z0aEEw?=
 =?utf-8?B?ZGI1eW5uV3JBeXZjb0RHdWlQU3NFMWdqanpEN1Q4SDRySEZFeWYxTlJ3T1RX?=
 =?utf-8?B?a0lmakNXVHprUVlTL255ZGJiSXE3TlhiT21Tb1pyZysyYnlBQ1V6QnQ5dFYw?=
 =?utf-8?B?cWRwY3BkMmovdVZtaFBaWGtNZjdycXRoVEplMmFhZVJWWDk5eWtQY1M3TFI5?=
 =?utf-8?B?VGozS1JMQ0NIWHIrVFdBNytydGRHdG43UFMvV2FVMGJvaGkxMVJ0NW90TGUz?=
 =?utf-8?B?UmtpcmNEcHMvSWJCaVhDckZtdHZtQTJJRG9WdFhrMjJYUThjK0tXcFNLbEtu?=
 =?utf-8?B?YkVaQVlWR1UxeVoxTzcyeW42K3NYSi93c2Q0SWR1b0xMSExBMlVONUdDME9R?=
 =?utf-8?B?M2FEbSswbnUvSUtBdURUME9UWXlGUFROR1FBMnc1TEpSY2p2NkYwTXE0OHlG?=
 =?utf-8?B?RWhTcmFhMGVobmVncHdFa04rdXA0My8wZGpjSW5ValEzYXNkTDJTa2xDTHJz?=
 =?utf-8?B?R3d6azZld1pQNjFVb1N3TTNzZFlyYWY4eDZTSzYrdmFTZCtENXBibXpwWTZK?=
 =?utf-8?B?SDM3WHVTT2lKS0FXYzJnRFRMZXlDTER6MDhSVGl2MURzdVN2OFFRbGg5TzJx?=
 =?utf-8?B?L1dXb3h4SlFYVS9KRExRSHlOaEQ5M0ZzUmE0K3ZMTTdZS3Y0Yk1oY25nZEk2?=
 =?utf-8?B?R0J1SFJ3ZVBMSmVTWW1QMTdDc21lQW5NdWVTNTJObDJyc0RKcjhTUkdseXEx?=
 =?utf-8?B?amdOK1ZBRnZlclp0ZjM1S3VsVWN1cUVrMmdlSnBsUzQ2RVZNM2ZFbHd4aXQw?=
 =?utf-8?Q?uuZRyN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7323.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXRkZmRkbmpBRUFlaTVQeGdzYjhia1BNWmRIOTQ4NW81ZXJGMmk0SWltWENa?=
 =?utf-8?B?cTJKb240enBaMlF5d0x1WDdiQWIwRFJUNkpPcTFOR25Hd1hlWUdNRmJUdEl5?=
 =?utf-8?B?QzFrR0NLdDJDYnRRQVNrRlpHUTFNN3cvUWgrL1BlV2pnemVhcHBZZzV1dmhz?=
 =?utf-8?B?SVJzQStEb21JMXQ0cmI2VzBodm5YdlRyaGFBZEc0ZXVYV1dkRW5VMnFJZldW?=
 =?utf-8?B?Q3YxUmk1Y1FvS1dIaG1yazgrQk5vdlhKYmdndy9NVDlOUDExTm9BTWx5QW1S?=
 =?utf-8?B?TU9tcnJwcG5mWGRlSDF2TGZPT0gyeUZVY01WZ2RUUWZUWmlSbzc0c1drVFA5?=
 =?utf-8?B?MGxmTll1dDZreXVUdVhWRnBRSmtjR3pRZDdSV0dRZTZkOWIwM2VKZEFtKy85?=
 =?utf-8?B?M3ZHR2NQMG5PYWlqRzFoa3lJNDNsUWZ5Zno4SzBEVGEyQTJVbVZIYnRWZ1hR?=
 =?utf-8?B?S1czbmljeFdDN1VBVE1xa0Ivcld6V0pKc1hhNnVTUzZER1IvRmxOcUk1aFJJ?=
 =?utf-8?B?aFJESGtEMTNBV1ZDM1RGWE9tV0dpWVl6WHJ6TkY4OEEzZzZreGUvRzdXY2hJ?=
 =?utf-8?B?RE9KWXhUUXY0Q0thb0tPVENrQkpLaldJZlZYS05TMXBDQUFIR1VzbWJJb1lJ?=
 =?utf-8?B?ajUzWko4eXZ4MEp0QlQyRzhJaUNUemFjVjV0ME93SzNrSVNCQkJpaUZuWlgx?=
 =?utf-8?B?UEs4ajJ0V2lYVGNadzQ0TnNJVTQ3aGNOSlQxZzJHdVNYa3hHQmhwdzVDMFJ1?=
 =?utf-8?B?L3hCWmZXVmxaUWZKcm9vUU5UUmJnWmswOGh0WjhJbkhBakY3ZFUxMEZSNTlx?=
 =?utf-8?B?K2EyM1JtZWJZbVdNL2p6U3I0bW0yQUgram1sazBoelhwVTFkTXUrOWY1ZkxT?=
 =?utf-8?B?d01LWXN1bG1INkxDWnZ0eHh2cHBCaE5DK2p5WFFBNUhwYkVPVzBxQ1MzcjU0?=
 =?utf-8?B?d3U5bkFWaDcrd2prU1JUZ0hCb2txVDZDYlVkQWl6YjUxWDIvQ0xJTnhlZHYw?=
 =?utf-8?B?OUlPVXdFMjhRZ0IwWHB0VElPVEN0b0JaTnNZWmpIZ3Z0UTRtUlkzTUlRd1JL?=
 =?utf-8?B?eDZ2Rk5Scms0QjZ1RGFaUW9TdFZaaXdFT3lUK2V2QnJvbFM0VXUwZGJsNEMy?=
 =?utf-8?B?QlFHUmdicVJHKzVjcnFZK0UzNlVNZmVkbFRXamNjazFZVkU3QWlIOWF2cDND?=
 =?utf-8?B?Tkl2VXR5cm42b2lPdTRHTTQxQ2k1azgvTW5MVVBNb1QrMGtGeTZPZTJXT0Rs?=
 =?utf-8?B?Z0xHY3dhRzVVZnZEbEhrRTREeFBEbXExVkc0bXZyRUd1amJFWDJWa1crd3RI?=
 =?utf-8?B?bG5wQ05FZ0RWRUk1M3dSb3U1SnlJc2xuNXcvRmZMbE1BRGpnRXVYeUhZMHBJ?=
 =?utf-8?B?VzFIdGIwODdrUTk5OUhvNFUrQndpNEVuMWV4bVVIMjA3bzdNblRIZkRCSU1q?=
 =?utf-8?B?SkJuV25GZjVYSlZHcTRwekVBQ3NHTHV4Z1ZSVG9Nc1pYMTh5cFhOZGFPaEVS?=
 =?utf-8?B?Njg4a3RpcmdvSVpONW5wQzM1akV6QTRyVUZRZERYTlEzclRZQnVJZ2JFczgv?=
 =?utf-8?B?aFZhaURWWDBqVlVLbGtLcmtOMG9ycXR5YmNtVWpmRjkxcHJoL1RpaW1nZ1VD?=
 =?utf-8?B?dzdqUUl3M1lkbWsrWngxUE0xYkxnemd6OFhkZ2ROZ3BCS3gyaE9FMzBIN2tO?=
 =?utf-8?B?cjRaVEJMVWVVRVdQekE1VS94K29aSlRTaHd5a2xQcHhJYThCN1VwWnByU1J6?=
 =?utf-8?B?ZGEvM1ViWjVtcm93U040T3RHbTJJRVlzUTNLdW13eEFQRjkzd0k3eTVKajVF?=
 =?utf-8?B?UzY5ZmFSUlRhWWVQY2x5aVFFSGNmazRxZ2Q4Z05Wa0hybW9hT2NGcnhRdzh0?=
 =?utf-8?B?YS9EZ0FHRkp6cFVrVEZ3czhhdGMxbnUrOThCY0Vtc2NSWXVET29sNGdQNTM3?=
 =?utf-8?B?cEVCNG9vRGpiS054WVYwclF3V00xdm1GdnZRNGFaNnFQdFRYWC9UOFNiTlV0?=
 =?utf-8?B?TjFrQ0JwUnVPdG5LTm5OaFBUYi9EY0NjSTNjVTBCT0dHb2ErMnNmTmZ1cUhK?=
 =?utf-8?B?QkNQNVZrRVJuWEhNdjB1ejBiQjljbEpaUk40Z2dPUHJkczNNczFNa0ttSElJ?=
 =?utf-8?B?WFVJWC81ODV5cG1RdHgrY3d0cjgzV3ZRTnN0R0lXc01ZRHhFMDdHQVVtZU4w?=
 =?utf-8?B?L1FVeFVXTDRpWDZLeVZZbnZETFdHTXNnelgyeVdEeGFIT0c3UVJxNkxXN055?=
 =?utf-8?B?M3laU1p2NmlRWHRoL1dQM0dVZHExOUo4WFcyOEN4Vk0rbzRVL0hqUU9MVnVG?=
 =?utf-8?B?aFRLNFY3WFNiVHhtMTk4UllIMnd3NlZLS2IwNXZEMzZHQWtGWnp0dE51V25o?=
 =?utf-8?Q?xSG7n4Qo5DxFrRL0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a33fec4-7f0c-466c-2336-08de63e70929
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7323.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 12:15:07.8445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x+aganW3iTxgiu13jtHBQLA1tbJWOrJeSVSYBHFKKpX5NJgDCEmBNxiWkzbEc7e3xsw62uGVulHhzdO+L7IiyzUrHKv9JzHUQMiIoxVNWE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6413
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770207312; x=1801743312;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BCsdrdf6BP1b/UL1ZTujROY7FTyvePSkhrF/sZLX+aw=;
 b=kIL78evR5p39VDOvn/ilHs8fxqTyfYdeTigJ2IP1PhVqkaJT2l2NJHyA
 dt+21VES4InBSqY6n4vjEBXHAlz6fNQY3m8Apfb0YWYWX9YNxxdcYhV8Q
 OzGNVHfSkkrwLOIEMbR4cDKV/UWY4INIcUaoby44xeMLg1Sk5tY9R4LM6
 ZFuMyjWSAnTdbHC6rdo41UUkAEIbtNnCdYrpj+xQhh5+ox5zAawde7r59
 p9mB230VJXRoaAL2OUnKU5pPIU73+f+U3FJOYV6+/XvmeXGUbHuFFkyYr
 KxI6h0mlYLnkQN66FuYBcXZEf2l11t2WiMERWHX4Zo618rUsMCuQIOkwS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kIL78evR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [ANN] intel's netdev-ci for i40e
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
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:krzysztof.galazka@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:url,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 48AFDE5AB1
X-Rspamd-Action: no action

On 2/4/2026 4:08 AM, Jakub Kicinski wrote:
> On Tue, 3 Feb 2026 13:35:11 +0100 Pielech, Adrian wrote:
>> Hi folks,
>>
>> I'm pleased to announce that we have set up infrastructure for testing
>> netdev on our e700 NIC (i40e), which extends our current engagement with
>> e810 NICs(ice).
>>
>> This work plugs into netdev-ci initiative by netdev maintainers to run
>> kselftests against current proposed net-next-hw branch on real hardware.
>>
>> Our results are here:
>> https://netdev-ci-results.intel.com/i40e-results/results.json
>>
>> Human friendly results browser:
>> https://netdev-ci-results.intel.com/results_browser/index.html?drv=i40e
> 
> Excellent!
> 
> Looks like the GRO test result parsing is off, the test cases are
> reported as for example:
> 
> 	gro-test-lro-ipv6-ip-tos # XFAIL Device does not support...
> 
> Looks like this affects all your runners, I haven't noticed earlier.

I have fixed that, XFAIL should be reported as fail even if further
message suggests that the test should report SKIP due to "device does
not support...".

Historical results were parsed again to remove test cases:
"[...] # XFAIL [...]".
