Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1B5A71CB9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Mar 2025 18:13:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AECC88477D;
	Wed, 26 Mar 2025 17:13:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zey5kFbXFEXa; Wed, 26 Mar 2025 17:13:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECB328474A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743009180;
	bh=RBEa3TveUdOQYG/dcJLG+MQoc8S2ttPOWv6WMtDMy98=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uXx0/aSp/fKNv20xVp+cx9Lz1yYKoc5FiydN2wuEDKw8n+xspzU7Lvy9XgqsAPcx+
	 kahgovyodL3DVxy++ANlYROtDJNUZG5B0b3B6xXvuvzUQBRzSiTFUwUwBIA/WVELWU
	 ySPmIbTv8yUauhpLri3THLt2CZ97c1/+c/om82Ud2Slwfs0ktUW/F5LK8MgrWqbuoB
	 4uBUJ5y/CcTxeM/jz3kmGBKXuJeHRlbobrThpvFyZPQP6fL5BqYpNp3aIkTlX2UyLB
	 4iqEG+kExGGdW1K6Oe77N7JiqFGLNBs6ENoF4ujH/o2o3hDwXPLfUUEIGzkdDTtyh8
	 vVrrDSlyaSnfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECB328474A;
	Wed, 26 Mar 2025 17:12:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E587C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 104DF6156F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:12:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CufipcZ3cIiE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Mar 2025 17:12:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5336A60631
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5336A60631
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5336A60631
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:12:56 +0000 (UTC)
X-CSE-ConnectionGUID: j2XhDEytQKybG4Lmj6hqvA==
X-CSE-MsgGUID: L6YIRvjqSgSqsqrsYbMEvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="31916819"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="31916819"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 10:12:56 -0700
X-CSE-ConnectionGUID: B3CTYLQET1ihug+EtM+ijw==
X-CSE-MsgGUID: F4LUVrtnSRKaGE4JzJf+rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="124808971"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2025 10:12:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Mar 2025 10:12:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Mar 2025 10:12:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Mar 2025 10:12:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HBelWP/u9RHtUzVPLA97uSgXD3EaT0CEObA0WhdbUcSKIbMZPeKqx5i/HKZk326qDQADAmak9X7qAGZzOnpy1y9fUOFDTJTqWSo/raJ6AJ0Z7qC/y+jUf7UTH66DRmF9dKJ2XpHCdKsKKC1hzTdTmXppHI+7hrXyuqYuhgpLBfTDfB/tPPDjQZxphUxrx/DI0KJjbS1FYWMI7lF6WFxuPFLdQRhMipO6FMjReCkjP+fVphCDuR+u4Q5UVy0q9lcS7ov7YBZmJCzJEIPYNFnP6q8cVweC2se3iyrtJ429JuKryjvS0CD+6UVHuQHdU2X4B7iP2UVFpkPx6/yFEwu5SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RBEa3TveUdOQYG/dcJLG+MQoc8S2ttPOWv6WMtDMy98=;
 b=jaeDqP/lHNvCwRUJK2+EN564Xseo10qPD0aNw0O6aKTTDNdEonfknx3tSWO4wiSrfFHZDCgpX4FG8hsoqlTBuS2QExVjjucYw8dA9vYcrid552CFTPZMoE6hT+o6vJg/Iv6OT3AtAIw/Iwuq6WZDkfhKMRRyZOFdGtU2OBauy6xPdKzhLnF0iIYZ49uJVT6fkEoT8cEq5MrFktYkPtAnTjjHeKYyEo5PnUEL54gQd3e6T2FKzC2//egKa2RiFNEUjrJzlZROH+rkSlfQzfhidfM2inQZ+XBCI2BNn5wUtuYlCRwD8+FQ6GlvJFQQqwKCyCHTRUbVuitUynyroq7HlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8722.namprd11.prod.outlook.com (2603:10b6:408:207::12)
 by PH7PR11MB7608.namprd11.prod.outlook.com (2603:10b6:510:269::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Wed, 26 Mar
 2025 17:12:50 +0000
Received: from LV8PR11MB8722.namprd11.prod.outlook.com
 ([fe80::314a:7f31:dfd4:694c]) by LV8PR11MB8722.namprd11.prod.outlook.com
 ([fe80::314a:7f31:dfd4:694c%7]) with mapi id 15.20.8534.043; Wed, 26 Mar 2025
 17:12:50 +0000
Message-ID: <19e7d4eb-3750-4a23-9dec-d81fc9933eac@intel.com>
Date: Wed, 26 Mar 2025 18:12:44 +0100
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <almasrymina@google.com>,
 <willemb@google.com>, Sridhar Samudrala <sridhar.samudrala@intel.com>
References: <20250324134939.253647-1-ahmed.zaki@intel.com>
 <20250324134939.253647-3-ahmed.zaki@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250324134939.253647-3-ahmed.zaki@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0126.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::19) To LV8PR11MB8722.namprd11.prod.outlook.com
 (2603:10b6:408:207::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8722:EE_|PH7PR11MB7608:EE_
X-MS-Office365-Filtering-Correlation-Id: 27f00ec0-e97f-426a-da35-08dd6c896fa9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFJpb2VEK2RTL0gzT091ck8reU5YV1ppUFgvOVVZVjlhN3NadFdWVTNFbkc5?=
 =?utf-8?B?dTZETkN3VmdRa0tEdlNMbTFld3BxTjlkZ1hJTmJiQ3pFZVRlZHc3dlVxWXNS?=
 =?utf-8?B?WElFTjNPK25xR1NUU0Qzb0RzbnN5cVFEQlJlNDh4bHloVEZ6bVZZL1NadUx1?=
 =?utf-8?B?Q3JiTlc0L1VqNzgvMUlqclZ1U0g1cUNYc2VMTFBURG1VL3dxWXVBeG13NEpk?=
 =?utf-8?B?c2YwU3RleDQ5SVo0RHJIR0dEeGwvZnI5T29ZclcrazU4YnJLTytnZTUrcFRZ?=
 =?utf-8?B?NWZnSXdiV0ZhYkpJdUZremJESlZTRndYWGNHeWxLdit4UTM3dkxuVFVLZVNX?=
 =?utf-8?B?Mnl1TFRkYit2MGRKc25ZcGFnUDU0dm10bEYvVkFBVzM1UFJ3MXh0K2xieEhV?=
 =?utf-8?B?NzA0NCtpYW8wd3NPTkRLb0loeXVMUkhzeTA1ejJFSm1LUFpZc24zUlpCZU9O?=
 =?utf-8?B?U0VTRnR2UzIvZU1oRnZkL3YzUU5QTEhiQnJiQXNWWU56VjVDTnVqZlV6aGR2?=
 =?utf-8?B?d1NCOGwya1hLK2hUQUdpMHhwOXlENFU1cTN3bDNaTkpabW8zTU9ERVpQMkpa?=
 =?utf-8?B?OFBkZlFSUEUwZmFBRXFFY0dYL1pjaTAySS9qL2wxekpMWXlEUGtOK1d3NW15?=
 =?utf-8?B?M2JzMGw1YVZUc2pHRlJqWURFZW5CM3h4TFJDMVJyZVZ2MkVGZUJBOHBTNFVO?=
 =?utf-8?B?cWRlZ2JrL3JzMi83alV3N3lsbXZGMDgvSnYrZFNZU1lLRnVWTCtlRnBoQnZO?=
 =?utf-8?B?ZmtCeHJaY2lQNVBXQlF4MDh5Y3FnaG92aWVZMSs4Y2g2OG1vckpibmFSZHF2?=
 =?utf-8?B?NTFJOVlQbUpPWmRhdWh3eFdZb3RZWGUzS2JHMytNcGRaOTdYRi83R3NMMFY2?=
 =?utf-8?B?ZERTRzFjeGdrWVRLNWZwK3JkSmpqSFZTZ2xSazlCQVQ2ZGhrbmN3ZG01MlZs?=
 =?utf-8?B?TEpJK3pISjZDTnVqN3RaKy9Pc2tSVTFpS0UwaGlSVDllcFhvVEx4VjBQWTky?=
 =?utf-8?B?N0FhYTJKZzdUSy9IdEppUWNZME1FdU9tMW5SUWVxUzN3NnVPUnZTdkRwdXlT?=
 =?utf-8?B?NTU3R3pVY3g2R3hRcnlhamF1d0hneURjc0dnanBIYVMwaDdNMWRqdjd2aUY4?=
 =?utf-8?B?NUlsU1FwUGdmNlFzSkltb1lNK0d5U2lxNDdjeEcvUGdHeUxrNUpPeFg1VkFF?=
 =?utf-8?B?RXo2YkxPeUdMVy9tUkNxMDFRSmdJSGtPOEF6R1lRZXNnajMyRG0ybmc1a0My?=
 =?utf-8?B?emQ5M1hRQWVyQmF0dHNOSDhwQTJ4aUx1T1pDRGRGMG5idmdRanJncXJCQ3VB?=
 =?utf-8?B?dHpYSklHdWs2VW5nejVhRE1WdEdrRlhGSnY2TWNCSmtyc3UvMmh0QXRDck56?=
 =?utf-8?B?UUVkQWx1Q3VxRTByU2Y5RjV4OU9IYzRFU2ZPdHRDMkpsZm1OYXlvYitpbmIx?=
 =?utf-8?B?RXNhRmhWNG5IK0w0aDZnYzVydUVvVGx0MUw4dmttR3J2Qy93U2xOajZnbGhF?=
 =?utf-8?B?MCthQkovSXB6bGFWMTBzQ214ZmVyVEF0eTk4R2k1dWs2bHFlOGl6b0VtZ0p5?=
 =?utf-8?B?Wm9WR3BFZ2xQVmEzNEVXeHFnZWREM2tlcnEzR1MyUy9kQzFnYVp3NjhhU2NS?=
 =?utf-8?B?VHdrN1IwK21haUtHbDVVR2kyWDZCZjJKODRuWVhOYTlob1hiZHlpYXU4Sks3?=
 =?utf-8?B?NDRSQ2REbjlzbnRCVDNNRE85UXFtd2d2cFBwNDdaNGZ4QTFrSFhLMkZSd3Jh?=
 =?utf-8?B?Q3R3N3g1ZGpqWk9UK1duVkd1L2c5M01ubjNoQWhreWlpUFBod2tUeDRsZG9H?=
 =?utf-8?B?Zkt6bVFNaHE2ZEtZWFdxQ3BvNWVCQ2JMMzZNMVFXZG5RdnZHekx6Z1hLQ0hn?=
 =?utf-8?Q?SkZqVz7Q/dlDm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8722.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aW1JZW5oN0ZHOXY4dmVqZUJ1ZndaZW42c0htWCtjMVBnc0Y0WEpoTWp6dGls?=
 =?utf-8?B?Q1QzaDUzMWdYRVViWmI2MlFPSzgxMVVCSklobXFITEVMN0xnY0gxdFFCa1FG?=
 =?utf-8?B?MnViVC80amQrQ0EyckNGeXhVR0paNkRBL1lzLzVDeWlyak5ZZDdPaEdSemNh?=
 =?utf-8?B?c1E5eGc4NGVVaFJmc0dNeGV3OHE2YVlla01ycmlSUUhzQUF3dE44MkpzR0JB?=
 =?utf-8?B?NUF4SXRVeFJKeUZVMkdZbUJyc21sVmR0anlVQnhvRENqblFxazd0TGNVNTVM?=
 =?utf-8?B?OHNOR2pyM0ZQZWYwd2pQTjJXNzRSMytjUWVrWWlsZE5NWVdZMnZFVkxlTTVi?=
 =?utf-8?B?ajFvZzAwOEFiYzJveEFoeDZpWTh5OEVzS1I2MGNwbUVoNEZCQzVORWR1dldv?=
 =?utf-8?B?aUhIZlFxSTd0VElrTTFZUFBHTTNHZzNhT3FkVEhhU2NkMWo4bWJiUFBmWEwx?=
 =?utf-8?B?NnVsT3dhQ3VDSHNJR0xMRysrY1RCT0JjYTZGWjR6UVk5WVBiWXlJbC95cEtV?=
 =?utf-8?B?UWloMTJEVXBHRWYzWW40T1RFbUZKTmFlblp6ZlJmVjNYUERaQ0xrQW1OMVZr?=
 =?utf-8?B?L2hvZXJ2TkVaRERFMHIzcnpmQWtyUi91V3ByaGloZjd4OFFiVHpZelk2WFJJ?=
 =?utf-8?B?WENpTytuMU9ualp0OThxVEJDVGloRFcvTzRGelN0TVN0N2VGU2t5UXN4Zk1l?=
 =?utf-8?B?ODFLMFQzR3ZXSGhMenJLd2lPZElzOTNlS2svYVdLTkFHUXU3Myt6MjUrVkJu?=
 =?utf-8?B?MnE5RG9MalY0cWhNZFRmZjVZdURPQjhvQUxzZWJHUjB3S1FuVnpqb0xUdUVR?=
 =?utf-8?B?OG1QRldsbUN1RWZBY08ra21lL3pweEdHM05lYmgxWXJBWG1wM1d4OTJ1MFlE?=
 =?utf-8?B?Ukw0WHVEdG1pNWV2RTdKVmVUYkNocFNGS1Irb0pkYjhhMDBROWFDclpOZHg1?=
 =?utf-8?B?QmJraS9tV205b0luTi91d1ZTakowcXIwbmM5NXNHSmN3QXVpVHdwbEx0L2Q2?=
 =?utf-8?B?TGhJMWI3ODJucE55T3lyYXprdVkxZVRURnBtRUN5S1FkRkJ6bUh5SUJIYjFX?=
 =?utf-8?B?NkJDWUR4VWd2eG9OZ2paWXB5RVlYcUxIN3Vucit2dThiN2pXbG96NVJXaW5J?=
 =?utf-8?B?TWhONnVKd1FNQTFoODlNdm1zWGxaSEFIZ2QwbDJBY08zVWhKdWlUMkIzSU9N?=
 =?utf-8?B?VWNGMTFUMUFPNmEweEJ1WUt5a0JXM3pBdk5FekZFVUdXUm5odmJYQjZ6d2lN?=
 =?utf-8?B?OFA4QytHWGtxTEYyeHdoVTI4TkhUU2E4VzhSRWMrZEtLOWVSeFpyZDRyZWU0?=
 =?utf-8?B?TzBzV1BZSHNrNFFCT2NWeWIySE1qa1cwVWRWTWg2OHpSaElKZWM3c2VjUzcy?=
 =?utf-8?B?ZjBmNVdDN3dNUmdWNHFBNjN0bG0yZTc3STFNNmVoMHJaelBVOWNJbEM2cHlW?=
 =?utf-8?B?N2lVWFNyRHM4WGJoUnViUjhienVEMkVOb3FqQkh4aEhTWlhnZ1Z1SWl2UHlp?=
 =?utf-8?B?MTA4cm1ZcTFUK1lPMTFMRE9NOXF4dFZYbkZYZ2MxRjNRS3djUXRpV0lxSU5a?=
 =?utf-8?B?RC9jVThsV3VzOWZUZWwrY2ZmL3pKQXZCNDN4UVZwZUJMR3ExK3JBeExuenVa?=
 =?utf-8?B?bkpkSFhSd3ovekNRSkFNMDhteXFOcnluUHd3dFdvMHR6M1Z5SzFhQmFhakRu?=
 =?utf-8?B?S0dWT0svZHdCNHFHSlQ1bUNCdEZzTHpmM3VjaDdHZjJ5WjVTY2xHTTB1UWhl?=
 =?utf-8?B?dkRzb2VLRmV1SUVsU0RhQktLMjZKRFZCUU94Vy9IZ2ZZUFFqYVF2NVpqSm5n?=
 =?utf-8?B?SVEyeTBmbjE2UmxOL1V1NEliRitZMTZFUkxKbDZmL25pMUFseDIvR1k1WE9C?=
 =?utf-8?B?bVhJWnpLL29KZzQrZUV2MjRDUENCSyt3SU5qSk5hVUxpbW1tdVk0WjQ0REwv?=
 =?utf-8?B?SUkwM3I4TURqMzJ5cjR5T1hzUVQvK3RYRXRtMWlDckxTTnE3RTVJUTJnWEp4?=
 =?utf-8?B?YUFJYSs2aEZ1N2U3V09BRGxZOERHc1F4M2VTSmpMbWZBbENGbzJqN0oxS1dX?=
 =?utf-8?B?UzJxUzBBRGdNN3pCYUtpL3N3OGs4cWJEZW5SYmNnV28xUVZLSkUzQmNkWFQr?=
 =?utf-8?B?ZFpBejVja3VWZ3Zid0lHa0JEaTg5RXJvSVdiTDl2aFpIRUNpbEJTNk92aDk3?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f00ec0-e97f-426a-da35-08dd6c896fa9
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8722.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 17:12:50.0472 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eX3UUJcWggLdM0lSFdZcx6EOw7ImdwVHnnMUlEcCSb5BsOneIsyRllpYOS3lWcgY/b5NbYq2cREQF5DBAF9P3ANDDq/Q0AVbM4JIGCN5GKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7608
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743009177; x=1774545177;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tZW3gjcZdTkFqjNuLe2/5yX47Z4YIaQausozZyXHFUQ=;
 b=d/yOCJHT0n7ig3T2wg42mthAcJecAHG8jKDKrzpAHDA7xnGTmFjc9LH/
 Ptd+qqSkGsffZRrSbjVlLdtbEOBexxg+ypOfb4DGL+CGKtqnmZVI/WfHB
 7Ew47hw+XyBdAIK58B1W45/m5VEmlepJeWsVz0XaKWjSwK0vScQsHO7SV
 Z4TUQsde8Q2SwGN8+CWAm2fMP8RPZcgXd82oKO/AWTac/bN4ediWsLW52
 vX6bPucOHO9Z4tWKiTHj1f6RJCJC3PmADpFRBV940UEDEIWHissdfDm2P
 4luaLsM1v62wFMCX393H9AOokqNC921XKLZC1HaBRYs4XpAUqotRUuZU/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d/yOCJHT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] idpf: add flow steering
 support
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

From: Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 24 Mar 2025 07:49:38 -0600

> Use the new virtchnl2 OP codes to communicate with the Control Plane to
> add flow steering filters. We add the basic functionality for ADD/Delete
> with TCP/UDP IPv4 only. Support for other OP codes and protocols will be
> added later.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  14 +
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    | 297 +++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   6 +
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 104 ++++++
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
>  5 files changed, 422 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index d7dbf7d9c7d3..4a76eb56c35f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -21,6 +21,7 @@ struct idpf_vport_max_q;
>  #include "virtchnl2.h"
>  #include "idpf_txrx.h"
>  #include "idpf_controlq.h"
> +#include "idpf_virtchnl.h"

Nack.

idpf_virtchnl.h was created to reduce the overbloat of idpf.h.
Now you're effectively reverting this effort.

Please look at Git history time to time and avoid including everything
into "one big bad header".

Thanks,
Olek
