Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF47FA4DA57
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 11:27:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A33182093;
	Tue,  4 Mar 2025 10:27:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zxNdFUGPxIzu; Tue,  4 Mar 2025 10:27:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFEE182096
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741084034;
	bh=4KEOYb6avuWZMJOMRzxjILWMPyomDNXTQbTRAEIyaY0=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dg5jPBxDf1IXOx3u4nexpBvHfPn1IZkA8w9S8hrBSp7xvM5OQ4rxoGFDS8mcMk1aD
	 7HvEUHiBl5OFuHsEgVcpFKtyuO/1YgGlT3gOikBOxy4LaIfw6aHEPAXe339MbA1ym7
	 7OruGy59iOp/g4eyLOE98ojpY5QHrRQwGANSR38F3rsqRom1aX0OScDkqfdTF4Hcm5
	 v6DrgoIW/ASvRoPQQkrxME9gIvM6G/McJAovXc3E5SiHHRQup0BEyvcLXK0w3wN3gH
	 r+XCvDz8E8q1GYVg7GNBUZ6ihEjwAI/d2wro3lkLxhNgMPo5vEVyEW3nWvUl/x1Gkr
	 d0RbEzS37aU0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFEE182096;
	Tue,  4 Mar 2025 10:27:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 48B81944
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 10:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23D2981F9F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 10:27:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bCKjqe4r2Ybb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 10:27:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 108BB82034
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 108BB82034
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 108BB82034
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 10:27:10 +0000 (UTC)
X-CSE-ConnectionGUID: 74nVaGiIQJu+JgTt2pyotA==
X-CSE-MsgGUID: 1iOFv/4ETZWApJ7WSxuZCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41905375"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="41905375"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:11 -0800
X-CSE-ConnectionGUID: srUbIpnnS167EroD1Y4HUw==
X-CSE-MsgGUID: itwR2HijTGK5szTqubh9AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118193623"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 02:27:10 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 02:27:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 02:27:09 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 02:27:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w6LG9hOHRqTkPasu5ZxfSeD6vuWbqaiv48ZCOcaR/e+1xnRvPula9MzDTal+cmUd4tvIwNYoUtbmD4Nho8YeRcJGOWSA2Oo//9pYlC7ZQR7ytYegwNGPuNB7olLAo2qOFuPdhGJgTSq6Qjw9KSstjoLCyeQYYecxUKXZTcO5NSKHHowCNTjAkzFrzMxpVjM8CYFc3DyQbynqDG+cp9naKKE6fhQ5P2QqNkeWI//6UDG3IYx9PqW/a+18V7607HIVpjvl/2ZyNWkti+QKvdJNfaMahIROgGadKDybThqWShEVz4GHz7SEe4DRzCOddwIT+hrcPZjWcJr07gcowRugLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4KEOYb6avuWZMJOMRzxjILWMPyomDNXTQbTRAEIyaY0=;
 b=EAl5tcbtkRTlI3eQ+Qu0oDNjcNQwIkUAMrWYJ/b/5hjngXtH9pbRq4VsBdR+0gTSQQYiHgJ6Vi/3IgF09P4Ye2UGMLRV3lTeS/pfkv3FmjCH9qOxSWYkJoiszyn3Atr/WEDst2TpJRYO8Q/oIWc+x/EJlW0dlVF3oenJXqW5Fy/LnKJ9NFsM1Wqm3xC6hz8oVPExnUQruJvF1MswcuZS2vdiKJpdrfQOYwjSyrKBqghisPiW4u10lEKqsfrZDW1nKyG9csUdp5KzX6feKzlIBjmmnlX87HtXWN3M4mYWYp39VZxYGCnvhhkKINTuzzH5bPdPXnSIXI/DhFEVd/v5VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by DM4PR11MB6120.namprd11.prod.outlook.com (2603:10b6:8:af::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 10:26:53 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 10:26:53 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>
References: <18b6d329-87a4-44b8-9bc2-fda4dc0392f4@molgen.mpg.de>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <1cd510e7-6001-27e3-6fbb-6016c6d0163f@intel.com>
Date: Tue, 4 Mar 2025 12:26:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <18b6d329-87a4-44b8-9bc2-fda4dc0392f4@molgen.mpg.de>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0013.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::20) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|DM4PR11MB6120:EE_
X-MS-Office365-Filtering-Correlation-Id: 50ef32c7-6a21-4ad3-f58d-08dd5b071528
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkdGQ3FxbDNKWG5pWG5YUFlZRWJJOXpMUncrYThHQndBZEd2U2kzU2JPai9Y?=
 =?utf-8?B?TmNZOHdsbDBRVko2VGU0MktZUDBUUEtGbTlQVkpIeWh3OGVvRU1PZEUxdEp5?=
 =?utf-8?B?Y3VxVjlhdHBDVUFGUEUrQThiclV6bkV2RCtUd3F0TjhYR2MrN3FVbkM5UGZs?=
 =?utf-8?B?VTJFcUZwNVp4aXFGZ0xMSys4U3NhRjBjL0JEYW5IYytjMHE4NzZHQXAwcDRN?=
 =?utf-8?B?NHRkWmVtWHBReVhwUVI1blRjQ2Z6YmRlNFlpRTNrRVROdEtrM3RKKzQ4MlhZ?=
 =?utf-8?B?N3VzV3owc3hCTnJ5bWxFWWJWeVRDRkV1UHZGaXVqdUFtMTlheFE3b2R2dXVS?=
 =?utf-8?B?Qkh5WTZUb3dRMElrWHc3YktQcnJDRlh4TkhVQlJ0UW1Uc1NvbmFRWWZ6NDNZ?=
 =?utf-8?B?VU1XalpVcHV5b0Fsb2dEWkZ5UmRyNEFsU0d4WUZCRTVWeHB6eStNdDF1c1g5?=
 =?utf-8?B?dEVDT0gzbTlLS0ZjSWFzeHNObTMrZHF2QUFmbFBsWjdZNU5NQzBjZysrVGVh?=
 =?utf-8?B?S3NiMVRRY2ZLcjN2MHIram9yMDljSlZ3aFZQUHJzbzRqUnlYYUpVODVBSU1k?=
 =?utf-8?B?WVU3djRZOXRWcXZCUmZpd01GbmZwU0g0eHhGd21uU0ZuUCs1TWcyUlY2Z25t?=
 =?utf-8?B?Q3p1aDRmZC9vd3lUSEVrS1UxaS9pZmNQQVBCQ2F5clpENng5anM0VDIvNnVh?=
 =?utf-8?B?V05pWlZJc29kWUx2V3YwcnQ4ODFEWGFFN0NaTW9GUG1pWk1Xd1RwdWFZempa?=
 =?utf-8?B?WDROdzRqK25HOGp6M1ZxaTFyaVpteFBkM0Q1UjFyOTZQSHhyblB1WTRqbFVR?=
 =?utf-8?B?eko1bHhUT0tjSmxhVU5nR29lOGhJUWNjdktrTHU4amNsdkFjNGhGRjNoSUE3?=
 =?utf-8?B?aElWYkVMc0RoQjRCQlhIc043aTA0bUFKVHRrMkR3TDVIT1gzODRYQ1ZaVVBQ?=
 =?utf-8?B?SVJMcUJIN0tGV0NEQ1A0SkZOUHlvelZxaWJNMXlQQ29SYUV5UTd3UWhaNXcx?=
 =?utf-8?B?NmZBWmtSSmxXaGNKY0VxR3llVGxQVGtpWXFhQVA2L3VDMS9RK1kzeDl3VXpp?=
 =?utf-8?B?NWYyTkNETDE4Zk5hb2ZDcERCY05JRlo2TE14ZkNFc1EvZUNPR0FrRlBaMFg3?=
 =?utf-8?B?MW80QVVoNWRTalJEZmVsa1EvU3BqdS84YkYzV2tuaXZzc1VPN296RnB0Q1FI?=
 =?utf-8?B?Y2NLSTJTempJQThaYmRoRmpGZGMzZENHN1NkNUprZTZ6OU9mZlFycldxbFd3?=
 =?utf-8?B?OUJvV3FrY0VSYXRuYWUyRGJGSWo0YVlOdWljMS9mMVJKRzN3UmgwVFJORFRF?=
 =?utf-8?B?TVFTMUxSdXNiR3hUbDRpakU4Vnhnd3FLZFRNOVY2OXhqM21aYjAyUC9na28r?=
 =?utf-8?B?TytVczNYdDlwbUMxSmI0K2NkSDlxVkU2d2ZvZ3FpUXJuZHR1Sm1TTm9PaE9U?=
 =?utf-8?B?SjNHNVZvTmFEaGRXNWxFV3JvZ3pJRjVLRXEzd01ITlFQYXVTNzZMbDNVa1dR?=
 =?utf-8?B?ZnlVMys3SnRvRnd1Qi9rdTRJYi9WYVZuSDNwbUhHMFRZeC9YOHZSWkFBaWNu?=
 =?utf-8?B?SzhFK2R2NlEzM3lLczE0S0pGVXdNNlIxeEZuZVZZd1NpTlBlZ3dIamdpcHVk?=
 =?utf-8?B?Q0lmQW94VnBwZUx0ZlJEM2xwZUpLcW9YMVl1QjVEcjBEOTJwdFBnUmhiZEx6?=
 =?utf-8?B?UlUyZXR1ekdGNFNVNE5UYkhjQndFV3d0K2d4amJxNUNYUjg3b1dTUldubVVi?=
 =?utf-8?B?b3BWUC9WU094bWEwaEtYM3lTMEI3MW14V01RaWtkR0FwMS96REtXZTg3Wlcz?=
 =?utf-8?B?bTBHZVE4S3BCT0V0WHJUdmIzclM1bUJsRHpDMmRENUdYeno4Z2EvdDFMYW5v?=
 =?utf-8?Q?bmRRS4Oq7ZcpK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bk5NaGNDaFBRSzMxVXM2ZWhJMXhwOW1MRlZWR1Qrd29hSXB6MTFLdnRwWDdH?=
 =?utf-8?B?QnloYWxCNDJBY3c2bG1OaDRITytBN0pRQjRXSUhlbktHQWl1TWxsK09veUZL?=
 =?utf-8?B?Tk94T3NPOWY0QzZDNks5WXRRbS9DdmZCUk9SKzVYekozZ2JBZ3d6KzgzdFVK?=
 =?utf-8?B?VjdRZTNRcUVQbDExMUNpZUpWQStFNUt1R1A0ZjJEV20rTFUvUkNFbnVBV1ZO?=
 =?utf-8?B?MmZ6NENJNHNuQnlBT3VjYjhnbEE1a05OTCtnVUJsLzJoemNHUW9pUGJyNFFU?=
 =?utf-8?B?bVBSQ2oyZXBaVTNsbm0zNG5LSjhFTDZjdTdIRGhxeFZ2Qnl6bUU1a2Jrb2Vi?=
 =?utf-8?B?Z0wxbHF5Nno2dWpEQjVWVGIrYWFCbWpsNmFtMTZ1cEM3SklxUXdTcloyU2l5?=
 =?utf-8?B?N0ozM0phUE1GcW5OeVRnVG5pek8rQWdMNEZueGJMSFUrWlk1SGNIek5wTy9N?=
 =?utf-8?B?ZXpjNDY1eGRienJPQS8zRXA2VlpTbmZJMDNkcHRBcWJrZ2czeUhaYWRmWS9B?=
 =?utf-8?B?Z0NUTi83TFlEQitwaWFoSmZZNGk4VmYrMzh4dUJEMzJRNmxkYU8yTXo1SUtY?=
 =?utf-8?B?T2laV2RndnlGSkpQeEZJOFVhQmlTVUdDZ3FKeEh6SjFNVGoxM2xtZGk0Tkow?=
 =?utf-8?B?WU9lMmdSbklabUpIcEJ1djViTzZMSGVkVkN3QUVxdlNQcVRPWm5SQmtKU0hs?=
 =?utf-8?B?STg5VmNncDN0cVhTT0VNOXppYStudndXY05IQ3ZPN3JMNFJrY28yU20wT053?=
 =?utf-8?B?YkVYcU0yZCtvZ1J2WTRrZlFiaVBLSThFam96STZEVm9idWxvaVpjWFBoYW1T?=
 =?utf-8?B?U3UvUjczWjlHcmhRdklIK0RFTEFudTI1Y0JHQnRsTGtJbEl6L3FMUlo0ZFFn?=
 =?utf-8?B?Y056YytOLzE3TUw0UktNRlBva2d0ektyWjBuNExucGl4bUhKOEFqeWQ3S2kv?=
 =?utf-8?B?VGpmZlZ0anMybjN3UUVCWTU3dUVLTVFOVEo1UkwxRTNZRHZOL0R3eHBZOGhO?=
 =?utf-8?B?bDNFUzRndlhOb0hPUk81QXMxK2VNQ0kzQkpVSkF2UTZTNG0vdTdyeUljSDZY?=
 =?utf-8?B?TktxYUtXQjQyNkZXOXNZdEZ6ZGMrSkNMZU9RS3NiTHJUT3NwVWRQTmRrdDdi?=
 =?utf-8?B?a3lQQnV1dHczaGtLRjg0Y0dqTS9kODc0elpRM0pPR1ZzTldLTVhDWm9RTzhr?=
 =?utf-8?B?NitsUFp1OGd5VWxCNC9BNjVKTVd0TG9GdEIyajZvQnlEalI3YUg0M1NCZDFo?=
 =?utf-8?B?Q3VEVXVZQ2lXbU9GZ3dsdDhINkpheW1hZlZrUWJBWGVzYUp2WHc4dWE2SW1j?=
 =?utf-8?B?NWlVQ2t3RWQrSC85U0ZZMDFsM3dZMmpaMjBab0hteWcyOVpyTnNZWTBPNWFu?=
 =?utf-8?B?VHJaTit0MWZ2S1BBV2tzN2p5UTZ4SzdUa01OV0JGVWFFMFpnTHE5NTExeXla?=
 =?utf-8?B?dXhpV1Z2UlpPcHJtNTJFN2g3ZmxmVEFMTFJodDVlSEpybkJPOTVKSDUwNE1w?=
 =?utf-8?B?bzNXQmFUanROeFpRZW5MQmZxNzkzcHA1QlRCYU0wa1BNVXpCZlYycEwyOGNm?=
 =?utf-8?B?V2hjMStVRFkwcVVMWVVBeUlacnYwVldqQnFKYjdlN2ZENWlhOTNOcG1SMmlI?=
 =?utf-8?B?dHU0UkpmVFZyQXh0Nk5YbE1NN3AzQlBRTW9GVWwrSkNzMnZwbWtFdnlna0JI?=
 =?utf-8?B?blM5ODYwWXJpRU1QMmVRTStwQ1ZranRtS2Y5Vm9jdHdBcU9ZYlRpQUQ1L3do?=
 =?utf-8?B?TVVyWG16Vy9NUy9wRG1tL0s3YVdkZzhuenNHcGZ2d0NuK0NXb1dvSHN4eGNl?=
 =?utf-8?B?S3Fab09DckthRmwxVWErWmptLzZITlZqYnBEUDU4WEFmVk1YV3ZiY0ozQzhP?=
 =?utf-8?B?eWgremlwM1ZrMWQrWmpsb2ZYZUwva0MrS2hNRHNkUDZZcmFJbGFDTHRLTjZD?=
 =?utf-8?B?R2dRUFZENTRQb2tDUEZSTlJMTGdRbERJUmZNclRDeE5XUVN0SzBvWmw3VU5G?=
 =?utf-8?B?eFNDR3pLRjU5ZjRMUHhEWjh1YUFqY3h0NWVLYk1kVXJPT3dVQjlvR3JVYU53?=
 =?utf-8?B?dmF2LzdJNnFOZFBrcFRwS0tvVkNUWWl2K0o3OFhDbzAxYkM5YXVhdWZMOHVY?=
 =?utf-8?B?NlFoZ3l2QmJXblBWbkdzTm9JaytsWURrclRpWE9oL3I4eU5xRzBKL09QQWZ2?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50ef32c7-6a21-4ad3-f58d-08dd5b071528
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 10:26:53.7159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6EHnK5yJlufevi/4ZNqte0ORGj7anVtRD1wQKe9Mm1terjBsumkCk5SqheIXNw1Xr2wPX7Z5ooRHqKv8T3YWkt+S+dZhY0b44nHGOQrKKac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6120
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741084032; x=1772620032;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8mbohCzo2L3zbbeNFj8l/H3+Tr2xjgsbYPoiKHSKUtg=;
 b=FYn7cDdqAXm51QifBeNJHLD6ozO+29BM1qcMmT8k7XzixHMZWpKiK3Vq
 qRh+7GvEKsqwqOsSkjDR1rQSo6OSLjm17iFdNqDPN0p2U08R/wWH/ibmJ
 u6jnbFvFzHk2FTtDC2N/+lgemg/HdwOEU48lDI7Omf+PKwproKW434LXi
 v3d1HjTfja0hiP5RZpEKuZAMKUCkQD8WKdgT7bx/V5W4jCGWzZY0aIW3W
 8yOfq5Nij0hveCERGs2hgV4fgddeKz3QZxv1ias11LYf7CMTUNcuDj1po
 nsLaLFAUnhXIWiJy4xYELqDS/3hgoJ9BubGrVh8jPkoT5b1Cj7ANY3eFS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FYn7cDdq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] e1000e/I219-LM: Speed negotiation problems
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



On 3/3/2025 5:30 PM, Paul Menzel wrote:
> Dear Linux folks,
> 
> 
> On a Dell OptiPlex 7000/0F1HC1, BIOS 1.8.2 12/08/2022 with
> 
>      00:1f.6 Ethernet controller [0200]: Intel Corporation Ethernet 
> Connection (17) I219-LM [8086:1a1c] (rev 11)
> 
> and Dell OptiPlex 7071/097YXY, BIOS 1.1.2 08/29/2019 with
> 
>      00:1f.6 Ethernet controller [0200]: Intel Corporation Ethernet 
> Connection (7) I219-LM [8086:15bb] (rev 10)
> 
> we recently observed that randomly auto-negotiation would only result in 
> a speed of 100 Mb/s or once even 10 Mb/s. (Wake-on-LAN is enabled for 
> the device, although it does not work for the Dell OptiPlex 7000.)
> 
> Today, the Dell OptiPlex 7071 booted and only came up with 10 Mb/s. Only 
> after re-plugging the cable in both plugs (device and in the ground), 
> and applying contact spray, it negotiated a speed of 1000 Gb/s. Then 
> rebooting, it negotiated a speed 1000 Gb/s, but than a minute later, the 
> link went down, and, 22 seconds later, it came back with 100 Mb/s.
> 
>      Mar 03 15:35:35 sighup.molgen.mpg.de kernel: Linux version 
> 6.12.11.mx64.479 (root@lucy.molgen.mpg.de) (gcc (GCC) 12.3.0, GNU ld 
> (GNU Binutils) 2.41) #1 SMP PREEMPT_DYNAMIC Fri Jan 24 13:30:47 CET 2025
>      […]
>      Mar 03 15:35:40 sighup.molgen.mpg.de kernel: e1000e 0000:00:1f.6 
> net00: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
>      […]
>      Mar 03 15:37:31 sighup.molgen.mpg.de kernel: e1000e 0000:00:1f.6 
> net00: NIC Link is Down
>      […]
>      Mar 03 15:37:53 sighup.molgen.mpg.de kernel: e1000e 0000:00:1f.6 
> net00: NIC Link is Up 100 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> Then I enabled dynamic debug messages
> 
>      echo "module e1000e +flmpt" | sudo tee 
> /sys/kernel/debug/dynamic_debug/control
> 
> and tried to force negotiating a speed of 1 Gb/s:
> 
>      sudo ethtool -s net00 autoneg on speed 1000 duplex full
> 
> The Linux kernel messages are attached:
> 
>      2025-03-03T15:39:00+01:00 sighup  sudo:  pmenzel : TTY=pts/0 ; 
> PWD=/home/pmenzel ; USER=root ; COMMAND=/usr/bin/tee 
> /sys/kernel/debug/dynamic_debug/control
>      […]
>      2025-03-03T15:39:08+01:00 sighup  sudo:  pmenzel : TTY=pts/0 ; 
> PWD=/home/pmenzel ; USER=root ; COMMAND=/usr/sbin/ethtool -s net00 
> autoneg on speed 1000 duplex full
>      […]
>      2025-03-03T15:39:08.768806+01:00 sighup kernel: [  217.278630] 
> [1168] e1000e:e1000_reset_hw_ich8lan:4778: e1000e 0000:00:1f.6 net00: 
> Masking off all interrupts
>      […]
>      2025-03-03T15:39:08.834765+01:00 sighup kernel: [  217.344955] 
> [1168] e1000e:e1000e_setup_copper_link:1216: e1000e 0000:00:1f.6 net00: 
> Unable to establish link!!!
>      […]
>      2025-03-03T15:39:08.840771+01:00 sighup kernel: [  217.350769] 
> [1168] e1000e:__e1000_write_phy_reg_hv:2963: e1000e 0000:00:1f.6 net00: 
> writing PHY page 769 (or 0x6020 shifted) reg 0x14
> 
> Later the link went down again with dynamic debug enabled. It came back 
> 22 seconds later:
> 
>      [ 2848.096035] [2031] e1000e:__e1000_read_phy_reg_hv:2839: e1000e 
> 0000:00:1f.6 net00: reading PHY page 0 (or 0x0 shifted) reg 0x1
>      [ 2848.096121] [2031] e1000e:__e1000_read_phy_reg_hv:2839: e1000e 
> 0000:00:1f.6 net00: reading PHY page 0 (or 0x0 shifted) reg 0x1
>      [ 2848.096200] e1000e 0000:00:1f.6 net00: NIC Link is Down
>      […]
>      [ 2906.442227] [2031] e1000e:__e1000_read_phy_reg_hv:2839: e1000e 
> 0000:00:1f.6 net00: reading PHY page 0 (or 0x0 shifted) reg 0xf
>      [ 2906.442299] [2031] 
> e1000e:e1000e_get_speed_and_duplex_copper:1321: e1000e 0000:00:1f.6 
> net00: 1000 Mbps, Full Duplex
>      [ 2906.442308] e1000e 0000:00:1f.6 net00: NIC Link is Up 1000 Mbps 
> Full Duplex, Flow Control: Rx/Tx
> 
> Can you deduce anything from the logs? Of course it could be floor 
> connector or the cable. I don’t want to change too much in the setup 
> though.
> 
> 
> Kind regards,
> 
> Paul
> 
> 
> PS: Output of `ethtool`:
> 
> ```
> @sighup:~$ sudo ethtool net00
> Settings for net00:
>      Supported ports: [ TP ]
>      Supported link modes:   10baseT/Half 10baseT/Full
>                              100baseT/Half 100baseT/Full
>                              1000baseT/Full
>      Supported pause frame use: Symmetric Receive-only
>      Supports auto-negotiation: Yes
>      Supported FEC modes: Not reported
>      Advertised link modes:  1000baseT/Full
>      Advertised pause frame use: Symmetric Receive-only
>      Advertised auto-negotiation: Yes
>      Advertised FEC modes: Not reported
>      Link partner advertised link modes:  10baseT/Half 10baseT/Full
>                                           100baseT/Half 100baseT/Full
>                                           1000baseT/Half 1000baseT/Full
>      Link partner advertised pause frame use: Symmetric Receive-only
>      Link partner advertised auto-negotiation: Yes
>      Link partner advertised FEC modes: Not reported
>      Speed: 1000Mb/s
>      Duplex: Full
>      Auto-negotiation: on
>      Port: Twisted Pair
>      PHYAD: 1
>      Transceiver: internal
>      MDI-X: on (auto)
>      Supports Wake-on: pumbg
>      Wake-on: g
>          Current message level: 0x00000007 (7)
>                                 drv probe link
>      Link detected: yes
> ```


Hi Paul,

Thanks for reporting this.

I went over the logs you shared and I didn't see anything obviously 
wrong there. I suspect that it might be related to the manageability 
engine (ME). I would like to suggest to try disabling ME or AMT it they 
it is possible and see if it helps. You can also try removing all the 
mei modules from the kernel.

I will try to deep dive into the logs in the upcoming days.

