Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E216386C8AA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Feb 2024 12:59:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CD90417FA;
	Thu, 29 Feb 2024 11:59:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jwVnk6LeWQHJ; Thu, 29 Feb 2024 11:59:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A358141802
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709207968;
	bh=VolezgJi1iwAMA4TFnuuyCCbby1yxjA/C1mGS1p3Qqg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7a4CfFEWNWzKrPje1GcbzDW1R65ImVIYR3hhajtDZczJ8LszkyxEaruO0ahWjsZab
	 jd5WXsAPYvXLzZjcoBs0NFCTWUFBnDDadI5ieg7cZPXQrtyF9SqyoqrxlRpgrZrO95
	 PsPFPLwSJQ9uKtCLpXZxLU9Q2pR6lajmZMQFWc5VpichbfxD28ghQpv6WscXA2bFCN
	 oquu++sju0BYZ10Xi9ePHzj+JyyDzcWsTzisL8WnN74kLG9MHfCpomryC021OqmjLV
	 6gSzM19ndIS3v9Q9garlsF4wAs9LqkmrmkNEzi21Yil6q2Zkc3VfX690PRXJLmn3/e
	 zLK/jDMPDtF1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A358141802;
	Thu, 29 Feb 2024 11:59:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7286F1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 11:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B4426086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 11:59:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VZ6jkqOVnjUD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Feb 2024 11:59:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lukasz.plachno@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EF56260797
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF56260797
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF56260797
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 11:59:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3550256"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3550256"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 03:59:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="38644306"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 03:59:15 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 03:59:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 03:59:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 03:59:14 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 03:59:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XMcoGiS7KUySDTmoktO/qf6jsixapgeVmHyj0lpQY1zCsjqoKm0pwm2EGHWtEYVXfRZi8ffhjX4/tskn3Wz8diOs3kMrvjUTnmrQRnDSDP9Lb6MLPSDvX67rIWuFsqi5mLc/OD3+62dvegkH0FRYi+o8p2Vvt77ylBR5ONZqkyJi9Jz5GarhFYdsbro5aI+SGtC+FVzxUHDYPj8Mbc9Icom5dpXr4Z3scfiPtEvJ68KmYp5xJ1L7JNBtYEGm+zEFX0XWc1IvSaIGvoD3IiDxS5+wZauDnPpAENNF2GNL/oU9Cg3W+rxYTSoBaYVMjWfRmS7LWbHmfzN/6VuB7PjxLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VolezgJi1iwAMA4TFnuuyCCbby1yxjA/C1mGS1p3Qqg=;
 b=BiJVAu0xbm2BpJtMpZJIFkUPTxhTpb0m/QAEF0t95YEnz3HTFDygQDqojyRQLH8v/7FhSrknTvOl4gY/Fx9jPl4nR/Q9OYhZjYUimqQoOTqoyypEnuB5tz5/zGWbSL9xy9nIoZkfs34ytInpPEJLU3Biiv69LNuz4BOB/G/dT6v2mYsXoYamQls7/GK0MB0vlKlhDv/YFWbg0rWSPHhI/s/AF1/pQU38gu0zJ/lc0M7M+lVyafdWHOgIF0KY8F6BT91deCWOhkoZlKTq1yCKFzezB6oDzlG7PcA1uLlFk00WTxcXtIMRqd+MsORQeeEA9o1Ru/uSCyDaysRaUFt5RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8464.namprd11.prod.outlook.com (2603:10b6:408:1e7::17)
 by CY8PR11MB6939.namprd11.prod.outlook.com (2603:10b6:930:59::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.24; Thu, 29 Feb
 2024 11:59:11 +0000
Received: from LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::9e80:a6c6:5f1:d19b]) by LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::9e80:a6c6:5f1:d19b%4]) with mapi id 15.20.7339.023; Thu, 29 Feb 2024
 11:59:11 +0000
Message-ID: <47c4c421-c9fe-4f93-bcf9-f32c55be5e7d@intel.com>
Date: Thu, 29 Feb 2024 12:59:02 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@lists.osuosl.org>
References: <20240212110307.12704-1-lukasz.plachno@intel.com>
 <20240212110307.12704-3-lukasz.plachno@intel.com>
From: "Plachno, Lukasz" <lukasz.plachno@intel.com>
In-Reply-To: <20240212110307.12704-3-lukasz.plachno@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0029.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::22) To LV8PR11MB8464.namprd11.prod.outlook.com
 (2603:10b6:408:1e7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8464:EE_|CY8PR11MB6939:EE_
X-MS-Office365-Filtering-Correlation-Id: 41a5fffc-921f-461a-7fa9-08dc391dd793
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CPkpUnCcvd+WoatXSP/hoLgYwxcqJmXPCsv8Z462WmgVOswn10CLTjo8Sp18rJZ2ESmgjX1Adi4cGivD95NYmRWL3hj6egMgsrpx6Vs7qLl0Q2t5s8OJNJNKMekTa/WatUJsFIBB2Lh2amb/5YLpomzr2okKyA4OWlcXMxotO+dhm0u3RA+L2flU+ZxVx8U1KZrT4ZZD1vOzAma8Jbh9BHqrjUMjTQYZYuGmSau6THGMrZD5w6qEbjnQX9IZ/ZKjqOpVD27Xr9wvnv/x1avPG1Pb00jZlYTmJwYwFM1c9rQlt1fQhwjzEQus4Zn3Wcdyj6ht/XU82Ny0XzCRUHZB3di0oZuvV3eSGEcsZv4bPJolQwEAKmCDa6piQcb9TVj3zyBRKz/jDVjcM7eGQlnuT5Lt0thIUGJ0ECeNGC9mDn/ykVbmseJLAxP6bl8K5+8Ft9dt7+avsc4+TyAhXmi1zugF8lQ415vQmFQKwCqqegsG8nz1F/dXubbOE7UVEfQuZIisbUmgSLdVc0eewTlGLAgeNMT4Sih+iUXVVaB29GbpDkEMz7KWsAbhVmMQ9/8T+WBTvUsYYXiD9lrQWCKPEzwjG6gmRja7P5THYYiAOETCPiABKIdy4olM1qSkvm7o
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8464.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qm5qZzdQMnk4REpnV3BxSTFZT2dUY0NESHhRZU91NzBzYnpIWVBhL3B6bVRM?=
 =?utf-8?B?ZHpmbmNldStVeC9kdDhFZjVBbWRmU0hiT0xhMXFJV1h3RHpVUDU0S1lEOW5v?=
 =?utf-8?B?SHlsT25pMHNlVCtzT0phL1ozQ0JYQzFlYldQMVR0M3VRQWprNVM1YnU5ODhH?=
 =?utf-8?B?czVPS2xyNTJxdXJwTE5RaEkrYmhqSmpKamFrSWJma0dFVFA1b1Ztbzh5bjZl?=
 =?utf-8?B?bCtSWHJmU3liZDZjeEhLYW0za3ZmM0NySFhEcG5va3hvV0dwdDZKSEVaRUcz?=
 =?utf-8?B?aDJTZ0ZDYVpCR1JRM0xGOC8wOTAxVk83Wk5rOUNiWnhHZWF3SUQ5bGlKS2dO?=
 =?utf-8?B?dmF1Tm9JWFp4UzI4T1VCQkRIT2ZKL0kvaklZZUhVaUIrcTJ5WHBtRmhUcUk0?=
 =?utf-8?B?eVdUTWl3MlQvWnMydmNwcjB6eHZ1SFpVVElUZWw1R2xQWHlTS1JWbFZBanNz?=
 =?utf-8?B?dC83S3J1bmVTT3V3SjNacGhiaTlwQS9qMVlmQ2hoQm1SV24xYzhLV1J5UU5n?=
 =?utf-8?B?NnpRSGRRalVsOU50WHBtSXh5WDdmdklPTlJhQTNJeHhZeVhyYkdUeE9yNjFo?=
 =?utf-8?B?MHI1czRvR20rK0NzMmdubXFIT2JHUmRlalAzZ1dQak9vaWhDbDBhTGdldlBY?=
 =?utf-8?B?T21pa0RaNjBPSWUxclN3T2I1U0Fab2pSRGV1eDJ1L1VVcWkzYWhOMCtUbjR1?=
 =?utf-8?B?ajlLZVM1WXhFa2t6VzJLdVVlOTBLQ0dmbVRDQWdKRUtJVThLNVg4ZktUdE1O?=
 =?utf-8?B?N1pwbGtkdWovRFpPK0Y2ZUZ1MmU1eVAraGszbHNmWXhjb1YyOVFDVUNGYVB0?=
 =?utf-8?B?V0RmVW1HNDRBNlF2Y2x2UkNKbzJsajJ4Mm8xRG1GNVQ4cGVzTGhRc09nUU92?=
 =?utf-8?B?a0JxNnQ5eURIRFNSWUNjcXl1aHZ2UmlvOUxZb3NiUGxTWHFwWHovWE5WczJz?=
 =?utf-8?B?VjNkZjZONUVERWlnZjdBellNdUNqSWtqMGV5NjJhUEM0MXRENWFGY3VEMnF6?=
 =?utf-8?B?RkhieEVTdTJNckQySytqeFQ5aHkyendpSnZ4bGZLZ1BRV0h1WkQydDdwalhM?=
 =?utf-8?B?WmR5UE95UGxKN21CMjZhaEtmM1lkVDBJbzJpSmo4RlV1ZURRc2U2R3N3Tjg3?=
 =?utf-8?B?SEl0S2o5MnNQNVcwRW1xUlJ0UmVsUUJKODJNdVllaGFPYU8yVm04dTkwc0Y3?=
 =?utf-8?B?WTVOanhwVWN1VFFTUnFsbmFMMnI0V0pxTjJPR21SQVpKR0h2blJxOU9nTG4r?=
 =?utf-8?B?Z1NPVXA2Q2FZL0NxLzVHeWlFVWljUTF5MTU5Q0hPUlZ5ejF0MGZjbUMvL0s1?=
 =?utf-8?B?RnBCUk9Wb2Q5ODIvVXhqbEhsMFJYcG4vU2tUN1Rnem1Bd2x1MzBQdGIxWHUw?=
 =?utf-8?B?akV6K2N0MzZJajVVb3BkSWsxem9oR1M3R3NMS09yN0NOdG13VERPWjhLSlNl?=
 =?utf-8?B?d016bXFxSHFIOW1OT2djb281a0Q0OXF2TTJ5VzdKeWhUQjluM3RtRGl6UXVZ?=
 =?utf-8?B?U1haN0dpSjUvMVIrUFRldHlHTzRsVG9ldkJUWUtrazA5YTFFaVFUQWdGRVBn?=
 =?utf-8?B?Vy82UEV1eXdBY0VLQ1ZBT2JXWjdjSnhRaHkvZTZQTWtKay90M0N0aU5jU1hK?=
 =?utf-8?B?OW4zVjRDNmd0M1dNeGNJdkJ4ektlKzQvaURPWi96ZEhDbjRuODJYQTI1TGda?=
 =?utf-8?B?aEc0MkRXM1NyUWhXSm5UdnVVNkFNdTJBVFZaZ0lNRjh5cDEyYnNyZW92d2JN?=
 =?utf-8?B?ZDBhb2JPUkd0TFROU2tHVWxEaUIrczRSWVlreW5HQ1pWUi9LckhnbzVZOHFq?=
 =?utf-8?B?N2NiTWFqYWNUaXk3TG9XYnIwZkl1NFNFU0ptUnFYZU5PbTNPSzZFRXhQNGZJ?=
 =?utf-8?B?Wk9VQXNob1kwMytkNjU0dGJXOGlTRUUrOFVrTVROREY4T010TWhWRmc5bmdl?=
 =?utf-8?B?bjBuY0xWaHNMMW9ScStNNXNhYzg5MVJJREZzUDlGWXFMS2hSeWV1QW9HMDJa?=
 =?utf-8?B?dWJ3QzhYbWJKa1N0Uzl1SWVSZE1uNnpQOEtnQ09tbisvaFN0dzJlMjlDQWgr?=
 =?utf-8?B?Sk0vSEt1Vm93YWRJZXYwbVFtRWozenVqUFVvbk9BOUo1anV5SDlsRjdiQ1p6?=
 =?utf-8?B?TDhOZlRUVnMzSDB3RG9kOTg2bTJjcHlmV2VGR1NxbUhtRXNqa0lvWWh6U2tO?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41a5fffc-921f-461a-7fa9-08dc391dd793
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8464.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2024 11:59:11.5153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nzrkRWPnqgLgMso7SyMQXD70v26+9jqSIJvR7qilov59ixRyskHG+QzZbIHaXcWhgJQm9Ji+cGk8DaUoH7c913HsZQQ5FhU2J9v8eCg4Bbo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709207966; x=1740743966;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vGZxmvvFN6zhXqS4WqqMkObghtovGoquh5p/jvIXTpk=;
 b=B+cRRkxkZu+lcvDcHwzYsDqv0koZGi6HNX0dWIDXeqBsOiLcaBDn0jeU
 2PfdNzCbqrbD0JW6zyxHdZGTXfhVefwmycZsZtPt0sD44cbjkiu8YrdxJ
 JeJWioDI3AQHJ8BZvgiqhwHuP7d5hn3SwprICCAsqi4KF0cL4GZitM1Oo
 SvILaS/EGEtSQKFVwh8PxlyXQFYzdJN07DISlpjGQUOrrYmlnTTJ0QiZu
 fuZAxHOfMh6r9N/ZtrKqnuNbGTLV4Eoxd6i+FibXzthl0BgyaGVBy79wp
 30zenZT6SKCJZGyFdGP9u4hpSXtHtGoEk3NXXgF937ihUgSAR3gZbrYKa
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B+cRRkxk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 Jakub Buchocki <jakubx.buchocki@intel.com>, aleksander.lobakin@intel.com,
 horms@kernel.org, Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/12/2024 12:03 PM, Lukasz Plachno wrote:
> From: Jakub Buchocki <jakubx.buchocki@intel.com>
> 
> Add support for 'flow-type ether' Flow Director rules via ethtool.
> 
> Create packet segment info for filter configuration based on ethtool
> command parameters. Reuse infrastructure already created for
> ipv4 and ipv6 flows to convert packet segment into
> extraction sequence, which is later used to program the filter
> inside Flow Director block of the Rx pipeline.
> 
> Rules not containing masks are processed by the Flow Director,
> and support the following set of input parameters in all combinations:
> src, dst, proto, vlan-etype, vlan, action.
> 
> It is possible to specify address mask in ethtool parameters but only
> 00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
> The same applies to proto, vlan-etype and vlan masks:
> only 0x0000 and 0xffff masks are valid.
> 
> Testing:
>    (DUT) iperf3 -s
>    (DUT) ethtool -U ens785f0np0 flow-type ether dst <ens785f0np0 mac> \
>          action 10
>    (DUT) watch 'ethtool -S ens785f0np0 | grep rx_queue'
>    (LP)  iperf3 -c ${DUT_IP}
> 
>    Counters increase only for:
>      'rx_queue_10_packets'
>      'rx_queue_10_bytes'
> 
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
> Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 130 +++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_fdir.c     |  27 ++++
>   drivers/net/ethernet/intel/ice/ice_fdir.h     |   5 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>   4 files changed, 162 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> index 9a1a04f5f146..6963e0da6518 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> @@ -41,6 +41,8 @@ static struct in6_addr zero_ipv6_addr_mask = {
>   static int ice_fltr_to_ethtool_flow(enum ice_fltr_ptype flow)
>   {
>   	switch (flow) {
> +	case ICE_FLTR_PTYPE_NONF_ETH:
> +		return ETHER_FLOW;
>   	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
>   		return TCP_V4_FLOW;
>   	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
> @@ -72,6 +74,8 @@ static int ice_fltr_to_ethtool_flow(enum ice_fltr_ptype flow)
>   static enum ice_fltr_ptype ice_ethtool_flow_to_fltr(int eth)
>   {
>   	switch (eth) {
> +	case ETHER_FLOW:
> +		return ICE_FLTR_PTYPE_NONF_ETH;
>   	case TCP_V4_FLOW:
>   		return ICE_FLTR_PTYPE_NONF_IPV4_TCP;
>   	case UDP_V4_FLOW:
> @@ -137,6 +141,10 @@ int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd)
>   	memset(&fsp->m_ext, 0, sizeof(fsp->m_ext));
>   
>   	switch (fsp->flow_type) {
> +	case ETHER_FLOW:
> +		fsp->h_u.ether_spec = rule->eth;
> +		fsp->m_u.ether_spec = rule->eth_mask;
> +		break;
>   	case IPV4_USER_FLOW:
>   		fsp->h_u.usr_ip4_spec.ip_ver = ETH_RX_NFC_IP4;
>   		fsp->h_u.usr_ip4_spec.proto = 0;
> @@ -1193,6 +1201,112 @@ ice_set_fdir_ip6_usr_seg(struct ice_flow_seg_info *seg,
>   	return 0;
>   }
>   
> +/**
> + * ice_fdir_vlan_valid - validate VLAN data for Flow Director rule
> + * @fsp: pointer to ethtool Rx flow specification
> + *
> + * Return: true if vlan data is valid, false otherwise
> + */
> +static bool ice_fdir_vlan_valid(struct ethtool_rx_flow_spec *fsp)
> +{
> +	if (fsp->m_ext.vlan_etype && !eth_type_vlan(fsp->h_ext.vlan_etype))
> +		return false;
> +
> +	if (fsp->m_ext.vlan_tci &&
> +	    ntohs(fsp->h_ext.vlan_tci) >= VLAN_N_VID)
> +		return false;
> +
> +	return true;
> +}
> +
> +/**
> + * ice_set_ether_flow_seg
> + * @dev: network interface device structure
> + * @seg: flow segment for programming
> + * @eth_spec: mask data from ethtool
> + *
> + * Return: 0 on success and errno in case of error.
> + */
> +static int ice_set_ether_flow_seg(struct device *dev,
> +				  struct ice_flow_seg_info *seg,
> +				  struct ethhdr *eth_spec)
> +{
> +	ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ETH);
> +
> +	/* empty rules are not valid */
> +	if (is_zero_ether_addr(eth_spec->h_source) &&
> +	    is_zero_ether_addr(eth_spec->h_dest) &&
> +	    !eth_spec->h_proto)
> +		return -EINVAL;
> +
> +	/* Ethertype */
> +	if (eth_spec->h_proto == htons(0xFFFF)) {
> +		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_TYPE,
> +				 ICE_FLOW_FLD_OFF_INVAL,
> +				 ICE_FLOW_FLD_OFF_INVAL,
> +				 ICE_FLOW_FLD_OFF_INVAL, false);
> +	} else if (eth_spec->h_proto) {
> +		dev_warn(dev, "Only 0x0000 or 0xffff proto mask is allowed for flow-type ether");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	/* Source MAC address */
> +	if (is_broadcast_ether_addr(eth_spec->h_source))
> +		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_SA,
> +				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
> +				 ICE_FLOW_FLD_OFF_INVAL, false);
> +	else if (!is_zero_ether_addr(eth_spec->h_source))
> +		goto err_mask;
> +
> +	/* Destination MAC address */
> +	if (is_broadcast_ether_addr(eth_spec->h_dest))
> +		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_DA,
> +				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
> +				 ICE_FLOW_FLD_OFF_INVAL, false);
> +	else if (!is_zero_ether_addr(eth_spec->h_dest))
> +		goto err_mask;
> +
> +	return 0;
> +
> +err_mask:
> +	dev_warn(dev, "Only 00:00:00:00:00:00 or ff:ff:ff:ff:ff:ff MAC address mask is allowed for flow-type ether");
> +	return -EOPNOTSUPP;
> +}
> +
> +/**
> + * ice_set_fdir_vlan_seg
> + * @seg: flow segment for programming
> + * @ext_masks: masks for additional RX flow fields
> + */
> +static int
> +ice_set_fdir_vlan_seg(struct ice_flow_seg_info *seg,
> +		      struct ethtool_flow_ext *ext_masks)
> +{
> +	ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_VLAN);
> +
> +	if (ext_masks->vlan_etype) {
> +		if (ext_masks->vlan_etype != htons(0xFFFF))
> +			return -EOPNOTSUPP;
> +
> +		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_S_VLAN,
> +				 ICE_FLOW_FLD_OFF_INVAL,
> +				 ICE_FLOW_FLD_OFF_INVAL,
> +				 ICE_FLOW_FLD_OFF_INVAL, false);
> +	}
> +
> +	if (ext_masks->vlan_tci) {
> +		if (ext_masks->vlan_tci != htons(0xFFFF))
> +			return -EOPNOTSUPP;
> +
> +		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_C_VLAN,
> +				 ICE_FLOW_FLD_OFF_INVAL,
> +				 ICE_FLOW_FLD_OFF_INVAL,
> +				 ICE_FLOW_FLD_OFF_INVAL, false);
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * ice_cfg_fdir_xtrct_seq - Configure extraction sequence for the given filter
>    * @pf: PF structure
> @@ -1209,7 +1323,7 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>   	struct device *dev = ice_pf_to_dev(pf);
>   	enum ice_fltr_ptype fltr_idx;
>   	struct ice_hw *hw = &pf->hw;
> -	bool perfect_filter;
> +	bool perfect_filter = false;
>   	int ret;
>   
>   	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
> @@ -1262,6 +1376,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>   		ret = ice_set_fdir_ip6_usr_seg(seg, &fsp->m_u.usr_ip6_spec,
>   					       &perfect_filter);
>   		break;
> +	case ETHER_FLOW:
> +		ret = ice_set_ether_flow_seg(dev, seg, &fsp->m_u.ether_spec);
> +		if (!ret && (fsp->m_ext.vlan_etype || fsp->m_ext.vlan_tci)) {
> +			if (!ice_fdir_vlan_valid(fsp)) {
> +				ret = -EINVAL;
> +				break;
> +			}
> +			ret = ice_set_fdir_vlan_seg(seg, &fsp->m_ext);
> +		}
> +		break;
>   	default:
>   		ret = -EINVAL;
>   	}
> @@ -1823,6 +1947,10 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
>   		input->mask.v6.tc = fsp->m_u.usr_ip6_spec.tclass;
>   		input->mask.v6.proto = fsp->m_u.usr_ip6_spec.l4_proto;
>   		break;
> +	case ETHER_FLOW:
> +		input->eth = fsp->h_u.ether_spec;
> +		input->eth_mask = fsp->m_u.ether_spec;
> +		break;
>   	default:
>   		/* not doing un-parsed flow types */
>   		return -EINVAL;
> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
> index 1f7b26f38818..b51ca73ca6c4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> @@ -4,6 +4,8 @@
>   #include "ice_common.h"
>   
>   /* These are training packet headers used to program flow director filters. */
> +static const u8 ice_fdir_eth_pkt[22];
> +
>   static const u8 ice_fdir_tcpv4_pkt[] = {
>   	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
>   	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
> @@ -416,6 +418,11 @@ static const u8 ice_fdir_ip6_tun_pkt[] = {
>   
>   /* Flow Director no-op training packet table */
>   static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
> +	{
> +		ICE_FLTR_PTYPE_NONF_ETH,
> +		sizeof(ice_fdir_eth_pkt), ice_fdir_eth_pkt,
> +		sizeof(ice_fdir_eth_pkt), ice_fdir_eth_pkt,
> +	},
>   	{
>   		ICE_FLTR_PTYPE_NONF_IPV4_TCP,
>   		sizeof(ice_fdir_tcpv4_pkt), ice_fdir_tcpv4_pkt,
> @@ -914,6 +921,22 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>   	 * perspective. The input from user is from Rx filter perspective.
>   	 */
>   	switch (flow) {
> +	case ICE_FLTR_PTYPE_NONF_ETH:
> +		ice_pkt_insert_mac_addr(loc, input->eth.h_dest);
> +		ice_pkt_insert_mac_addr(loc + ETH_ALEN, input->eth.h_source);
> +		if (input->ext_data.vlan_tag ||
> +		    input->ext_data.vlan_type) {
> +			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_F_OFFSET,
> +					   input->ext_data.vlan_type);
> +			ice_pkt_insert_u16(loc, ICE_ETH_VLAN_TCI_OFFSET,
> +					   input->ext_data.vlan_tag);
> +			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_VLAN_OFFSET,
> +					   input->eth.h_proto);
> +		} else {
> +			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_F_OFFSET,
> +					   input->eth.h_proto);
> +		}
> +		break;
>   	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
>   		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
>   				   input->ip.v4.src_ip);
> @@ -1201,6 +1224,10 @@ ice_fdir_comp_rules(struct ice_fdir_fltr *a,  struct ice_fdir_fltr *b)
>   	 * same flow_type.
>   	 */
>   	switch (flow_type) {
> +	case ICE_FLTR_PTYPE_NONF_ETH:
> +		if (!memcmp(&a->eth, &b->eth, sizeof(a->eth)))
> +			return true;
> +		break;
>   	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
>   	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
>   	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
> index 1b9b84490689..021ecbac7848 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
> @@ -8,6 +8,9 @@
>   #define ICE_FDIR_MAX_RAW_PKT_SIZE	(512 + ICE_FDIR_TUN_PKT_OFF)
>   
>   /* macros for offsets into packets for flow director programming */
> +#define ICE_ETH_TYPE_F_OFFSET		12
> +#define ICE_ETH_VLAN_TCI_OFFSET		14
> +#define ICE_ETH_TYPE_VLAN_OFFSET	16
>   #define ICE_IPV4_SRC_ADDR_OFFSET	26
>   #define ICE_IPV4_DST_ADDR_OFFSET	30
>   #define ICE_IPV4_TCP_SRC_PORT_OFFSET	34
> @@ -159,6 +162,8 @@ struct ice_fdir_fltr {
>   	struct list_head fltr_node;
>   	enum ice_fltr_ptype flow_type;
>   
> +	struct ethhdr eth, eth_mask;
> +
>   	union {
>   		struct ice_fdir_v4 v4;
>   		struct ice_fdir_v6 v6;
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 6df7c4487ad0..391e48d2bb92 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -203,6 +203,7 @@ struct ice_phy_info {
>   enum ice_fltr_ptype {
>   	/* NONE - used for undef/error */
>   	ICE_FLTR_PTYPE_NONF_NONE = 0,
> +	ICE_FLTR_PTYPE_NONF_ETH,
>   	ICE_FLTR_PTYPE_NONF_IPV4_UDP,
>   	ICE_FLTR_PTYPE_NONF_IPV4_TCP,
>   	ICE_FLTR_PTYPE_NONF_IPV4_SCTP,

Internal validation in Intel reported issues with handling of vlan-etype 
parameter, I will send v8 when I am able to fix the issue.

Łukasz
