Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMonOX38/WkdlgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:08:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 335F84F8544
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:08:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0E898437F;
	Fri,  8 May 2026 15:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kBk_WGBc_UUD; Fri,  8 May 2026 15:08:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A47984390
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778252922;
	bh=I13G0utElhy1I210dqBQzgFrPjyF6yFeMGVmg599ey0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4yKM1mhQqMJY+iT1rXpuLgbpXmJrVeWERwh0g/oAUkBHZFtcx3akGLJU5emYeaLgq
	 zADwJHAdSQbGTyk6SqkFI2wvGbaOX2qNMUtCfAnJfZ7B6AYJWPjk/6d+43BLa13sdd
	 cjSFm56kSDS3V1II29f5Vwule66mlsbgcaT8aTmKePNy2TKR6kLsFlWpcw6GcEn4Y1
	 4NWCIMM9bkG3LKYfhVCdi7Zz2tiz4pkkgdaYFyiw2Bm4NFFR/aVjkQWxrTSRj1ieyZ
	 uDJvbzb8t9F2Hwynd2E7C6wZxMKNkd+jb38P6WzBYzBJ0QuCpawU2pHoqBA77VsTMe
	 sJe/hQGoZHsgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A47984390;
	Fri,  8 May 2026 15:08:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ABE38272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FF888438B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:08:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N0g-ztdkF755 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:08:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6E378437F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6E378437F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6E378437F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:08:38 +0000 (UTC)
X-CSE-ConnectionGUID: 5Hil80Z/SByWAWqsD7XCfA==
X-CSE-MsgGUID: k41GbPRcQiyOZA623V9x4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="78365236"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="78365236"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:08:38 -0700
X-CSE-ConnectionGUID: TEAPp8KUTOiBpBhJZtzyKg==
X-CSE-MsgGUID: Axesa6V3QU+A8j95xDXRnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="236725131"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:08:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:08:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:08:37 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZU6s+YmxT5j/DQCMGrb/GenqHPC1vpoiCWnQ3Pgvvei7P1G0sbw/ziJ2Jt+lSNEKBlt38UrS6Jvrrk15qPXHXWu6BHQEgH7gKNqdLfiMpXs3f2AhMmU5AelTWgLjYx0e/nTrdlxceyI8vW101g400rkits6jaCsExDa9UNEFO1LsgOXmeC9OnCRGRMHRxErLZEt8V/kaFn49Er5IM4npNHqKpFv3TAGAe+1epioqP+zVZJVpnyeFZ8AfIasNUQWN2yBGCaB5iMD+wvtSe6hhOhy/tb8sW+Q+1GFBYUz2hUc2QuDmddUDP9dZn39gqtmk00sQYEFSoeRVP3g9WjnSEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I13G0utElhy1I210dqBQzgFrPjyF6yFeMGVmg599ey0=;
 b=cnPOyaaOU9zyOInllqd9SaENCVYrGNYfAy9OOZAWIDwOi3GFx0keYhoJeCTeXjNd/TEmBuGH5JYS2QvinlzfUzzO7SflQJbXsAmN5AUSIRaUlZAhvHYJJxJ+t6zrZ1FCM389wolbeaQ8+f/ncQXnIDe8M0JQh1pZfX/2q7hiZ0hRxaIy+rj520kqgQCTcwEyXj1TfazjS7bGG/+RLT2tkW1v+H6jIexG7JEnjzup90pifnCyC8AvpW3tT0czR6uzPRrJGYeP4N5o97d9S8ZYzUiFe2Jz1GsJdTq4o/Wri3/kVwinXNFkFwF3W3Lg0a8VIazSn8DagUsv1MdkTkY53A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA0PR11MB7306.namprd11.prod.outlook.com (2603:10b6:208:438::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 15:08:34 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 15:08:33 +0000
Message-ID: <4c0cacc0-b5f4-47fa-8865-72bd157c1cb1@intel.com>
Date: Fri, 8 May 2026 17:07:03 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <kohei@enjuk.jp>, <jacob.e.keller@intel.com>,
 <aleksandr.loktionov@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260505152923.1040589-5-aleksander.lobakin@intel.com>
 <20260508140758.1200568-3-horms@kernel.org>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20260508140758.1200568-3-horms@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::14) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA0PR11MB7306:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b7b255e-6508-4409-5456-08dead13ac0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: +QzH1VvVO7sqpy5XY0nu6DThrfJmSHARrSsqn8RBqMwA/Zaajj7SJY3buQ4ata3w4rlsNqyXuT7hljzFCUZXgAswDrtJMqn7QXa2+bPmQmaF3C7VTerhypAAlgsiL/3mWDhnV2VsGveHB93e3kDTChnDHANOYlZ0fvj/UO7p9wz7E/IDih3HvN0+UZAtv8PShvASz9qMH937RhJMxWxvRhgP+mQchcE/kK2pKkQZyKVluu0zM59wjjdVaHtRQFM5c9ePlqrGXU6918kTbz97uA0U3Xbcxy8NhgxaRi3E10t3YjMDtE49wp0px0vGoENcVbLj8lqkuFIG27LD37fS3zk8dnx2MjdegsexnTPVXr/5QD/xp20/9qrn3gICNGGGBsiyivrg2jiaAOSwVg89vukrg3CnHSaGezKkEoPBQT0BSe9hpcR2WWZ3noHWMt5BNnYM7JBgPfs3RRzyFYPrm51Pqg1TWKvW2Dm/7Gc/Il12taFBVoat0wwCutKhBgCgsTqgvtaNovmD2iFGtasTD+yR9qyvCfThks3PpW8S/6TmT1Z7ZbXOmFH0jtdFIs/UzZOx0EVkTUCBtiZ5V001yLxa56nZ5pfNbxp1J/szbhjtI6NYjJb5X3dd/zrla5tmjl3RxWYPlYsMgarzGN6OKQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tm1LMkdhYmg1ZVUzZGhabW5GWnpUUENKTVhESjZjN3ZzOXdpU1cvZnZPcmJl?=
 =?utf-8?B?TWRzN1kzUXRVakkyYlFXbEo0Q1ZwOEJNMXRqNk1jYzduVDdsMTFQUHhrRzRZ?=
 =?utf-8?B?UmUrZ3NjeVpVandTaVlmSzlSM3o5dzc4NnEwWWJZeEJnQk1IZnd2THJxVEwy?=
 =?utf-8?B?QjJENFJPaWw1Tmp3VHhsOTZMSmRYNEt3TnVYVVNOSHBIWS85ck1SU2Q3V0FF?=
 =?utf-8?B?RzlqaFUreUN0OXowQk1Yb3NsMHpmYVcrU1UyY1ZzNnZVZ29RZjArMjgvelcx?=
 =?utf-8?B?OFJiOXpXN2tvSWl2SG5IQVJPcWJCZWFJa3RuY29GMTZhMlNKNDBVYm1uekNV?=
 =?utf-8?B?aUxRZCtVOHZMNkhqTEd5Tm1HSFIxMXppVFpVVmF3ZDE3bEVPTmwyZnNCN3Mw?=
 =?utf-8?B?RjlER2w1R2pwVi9TWUF1VVhQN3daeEkvV0hPSDBtVlNiR2NLbjNtZkx0OVJw?=
 =?utf-8?B?dE5RWTVMVWVZYVlxTzdCQ2w5aU5zNjFXTHBsY3p2TkJpRTJFWEttalM1b3Jr?=
 =?utf-8?B?dU05UnhzWXBEbFNsRlFQcWgwYVN3Mms0SFhRN01ONU5RNTI0dloyTDZwZmxJ?=
 =?utf-8?B?QVEzU2cybGxXMGZMREMxZHhEQUlPL2hSUUZZMXZKZmRzL3VhdElqNTgxT3JP?=
 =?utf-8?B?eTRGcUZmU3hTUUFLY0lrT3dIckxXbEdpVk1SR2UvQnNqRkpMbUVpVEwwTUZ5?=
 =?utf-8?B?U2pUYTVaUWovQkFWMngwbXo4Nm9FbGVTVjduU0VtZnRLZ0JzOWU2TnRSYmFY?=
 =?utf-8?B?SC9TalBXWkJ3dnRxdytHLytHVkRqU1dBdk1qYitEUEtUVitDeUFWd1dCQlhj?=
 =?utf-8?B?SDUrV2dhaGhGaStEdzEvWXZ0MUJ0N3BxL0s2RFYzN3ZsQ28rWk5qTzJQU2VK?=
 =?utf-8?B?akhHZk9pcVZCT2ViRnZZb0YxSlRrS2grQWtVczI4a0tqdnZkaDk2QU9aUnVq?=
 =?utf-8?B?NXp4V01UT0s3a2g3RFZQV1pSY1crc1RWYVJnM1prNnBSZUhSemswK24wbGZx?=
 =?utf-8?B?T3d1R2I5VUR1U0N0ZkdtTVVjdCs2c2lITzZMeElZbldFOXltbGJUZHh0S2VT?=
 =?utf-8?B?bWllMnhGbDZycE9PRVNyNWFlSnp6bDBQcXhPRzliVUx4UmNTQlMrTGp0YlRD?=
 =?utf-8?B?VXJDMVV5WHFlOEl4ZUpBMUp3bC84UG94WWliUHJuZ3MwMm5obGEvS0pRM2xH?=
 =?utf-8?B?UktnYnpySVhycHVUUk5ERWk3bnRDTldqbEZvZGUxR3ZEcWZnYk1CSmUzckl3?=
 =?utf-8?B?TFZ2NjZzNlY1K21GSkVtbUFOUmM5TFJmK1pHWGZZd2hpOHRhQUlrMDdndlB3?=
 =?utf-8?B?ZUZQWXlyK3ZERFRSbWR1WWxLVXY2M0pJWHltS09hQlJoMldqS1JGemVzRkI3?=
 =?utf-8?B?YkJyMUo5WFRRd2lrM25HQWt3Ujdkc1hVTURsSmdGamJWTHg0YnBXR2FGMkxq?=
 =?utf-8?B?bG1maXFrdHNEM3cvakQxMFB1bmpTeHlYSTgvUTlxRmcvQlFncmU5UEFDeXY2?=
 =?utf-8?B?cHJCQ0ljNkxaZDFXblpkdUhtQkl2OENUbnB1YXlUdHc1c2dhWDFkWUdYNWlU?=
 =?utf-8?B?MWFiWnVPb2VKejBNZDlFQnRsSGhhUXdFWkRVY0Z4cEk3enorbWw5SEFydEpG?=
 =?utf-8?B?L001U2NzNC9IZHgwT0FJRFJVMnJNeUw0a0srYzM4aWFXWFRLVm5iNDJwaGc1?=
 =?utf-8?B?WWQ2MGEyVWFzM0crcEZ3TmNuMjdQTW9QVzg5QzN6cUs1Y2VpRURvYXZlUWxh?=
 =?utf-8?B?WFJrQVNRYUgvMGxTdDBzNHRmRUlxUVZPNGJONnJESW1DOFlMR04zeC94RTJB?=
 =?utf-8?B?OFV5U1VRamZTRzhNdVB5LzNVdXlqTEd2SW1kT2Z0RWlxZW9KZE1ONXIwYWho?=
 =?utf-8?B?UTBMdU9xWGMzUDk3WEI3V292N1dLVXdEYzJWVERrTXBWRTdFSlRxaURVZmgy?=
 =?utf-8?B?VUlZZXpRWjdtb0ZENUl1SHpreHBjYmNzclFYemtmemxnTmdzRGJhOXdQNDJp?=
 =?utf-8?B?SlBiNkV6VUVVZEh5WUc1dE9qNzZ4Wjd0R2VMditKYXVKak9iRWVnVUZnTDB6?=
 =?utf-8?B?NWlRV2R2Mk5iRktXV0FFUU5JekthOGtaWWV4eEp3R09MdW5TN3FEYVFqcWRP?=
 =?utf-8?B?Y0ZnWTNwanc2bkM3bklCWHBmSzZVSEVRcEgwV01yUGYxdnh5Y09wNmlLVVhV?=
 =?utf-8?B?c0xFVzVTRnhGeThvVngyNXN1Wi9pWmUwUkxybkJyaUNydVBQbkxSeUdWME5o?=
 =?utf-8?B?dVd4SFpMamUrWXVNWWZ4R3JDRnZiNzNnTXg0bHBCZGVYVXQxMWZpQTV5RzEr?=
 =?utf-8?B?U0ltMjA0dTFUWktEQjNYSUQvcGl2cHpCcVhoRTFYMjNyZ0ppRmdUU2xPQU42?=
 =?utf-8?Q?p7eS2jpt3viOuXQg=3D?=
X-Exchange-RoutingPolicyChecked: WBq1XWPZoCGtVrPgVr5BCBzTvsmuGa1fIF1vPYY6SRW2t0ekWPXmqbG0tk748gm2d+shpvmQQDiSnawL8xyjUFp34f9ayYNSGhpXO5KsyM4nlwpmKTlL+UVqrWqoK1ARwyhQXwNQkVsDFK8TOMtdheNBau8xueOYM/FuzT5NPKRc990LjxgMEsnN98uY3duzAVB0eB72Q6SvK6NsBpqseERSf7JqWiGLTKo+k2c35un6RfGfNOwg7/3H+I9CBLM6y2JrSzfrdf/8zWE7Bf1ZU/xWZJShRr8gSLuUGSGp4BInxqbh7GjnvH44ti9Ro8vQSroNjZDdBJjYbtj+oLEmww==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b7b255e-6508-4409-5456-08dead13ac0e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 15:08:33.8346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j1H9r6wb+CH7lyR2/NgdQUJ+ujaojZIzUHNb6hBuCYOL4aLuGyEakEAsQb76tsqimr+kNJo7l2KDGibhk/ql9Up2JwqwF2RJeBLYUmugGSw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7306
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778252919; x=1809788919;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DKjKQn5mWBvBPvkLpdkqlFBHyoYlsUhjTNlKERaHGwc=;
 b=FIQSyN3FP3MUKfTDHbUi6LXyHO45yQ6nbTqIbRCwu0fC27MQ0tUUlcs5
 bkR+C/IQSbztUnPaYK/v8f0q96u30S7rZ8X27rnkJx82W5YPQziV6Al6Y
 Zqoxa0iH02GV+g7yrEM+KiS/iG0+18oVKMzbNHeNCzCfT0j20lutUtfB4
 TkLTePM3448RCTtMtkqWExndArjh59Ob0GbYQZ8UYurQ3UAXu/BRsFdnG
 pi2Aj7X4ZtyxbQhoNGBjH/Fv+kdIkTaHFPhwjoUhRvqPO9dWISKDgaL16
 WtRcK6NcGpnpNmXnkbs0XUxZDpwxHwLBaTuw5mal9ReIJGd62b34ENs13
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FIQSyN3F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: implement Rx
 queue management ops
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
X-Rspamd-Queue-Id: 335F84F8544
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid]
X-Rspamd-Action: no action

From: Simon Horman <horms@kernel.org>
Date: Fri,  8 May 2026 15:08:00 +0100

> From: 'Simon Horman' <horms@kernel.org>
> 
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> Full review at: https://sashiko.dev
> ---
> ice: implement Rx queue management ops
> 
> This commit wires the ice driver into the netdev queue management ops
> framework, reusing the existing per-queue disable/reconfig/enable paths
> originally added for XSk. With it, ice reportedly passes the io_uring
> zcrx selftests.
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
>> index 1add82d894bb..4e0b8895c303 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_base.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> 
> [ ... ]
> 
>> @@ -1577,3 +1593,81 @@ int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
>>
>>  	return fail;
>>  }
>> +
>> +/**
>> + * ice_qp_ena - Enables a queue pair
>> + * @vsi: VSI of interest
>> + * @q_idx: ring index in array
>> + *
>> + * Returns 0 on success, negative on failure.
>> + */
>> +int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
>> +{
>> +	return __ice_qp_ena(vsi, q_idx, ice_vsi_cfg_single_rxq(vsi, q_idx));
>> +}
>> +
>> +static int ice_queue_start(struct net_device *dev,
>> +			   struct netdev_queue_config *qcfg,
>> +			   void *per_queue_mem, int idx)
>> +{
>> +	const struct ice_netdev_priv *priv = netdev_priv(dev);
>> +	struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
>> +	struct ice_rx_ring *new = per_queue_mem;
>> +	struct napi_struct *napi;
>> +	int ret;
>> +
>> +	real->pp = new->pp;
>> +	real->rx_fqes = new->rx_fqes;
>> +	real->hdr_fqes = new->hdr_fqes;
>> +	real->hdr_pp = new->hdr_pp;
>> +
>> +	real->hdr_truesize = new->hdr_truesize;
>> +	real->truesize = new->truesize;
>> +	real->rx_hdr_len = new->rx_hdr_len;
>> +	real->rx_buf_len = new->rx_buf_len;
>> +
>> +	memcpy(&real->xdp_rxq, &new->xdp_rxq, sizeof(new->xdp_rxq));
>> +
>> +	ret = ice_setup_rx_ctx(real);
>> +	if (ret)
>> +		return ret;
> 
> Simon says: I believe that the issue flagged immediately below is
>             a false positive; the cleanup logic unwinds things correctly.

Yup, our Sashiko also had concerns about this piece, but I rechecked and
seems like it's a FP.

> 
> 	    However, the two other issues flagged further down do seem to be
> 	    of concern.
> 
> ice_queue_start() eagerly copies new->pp, new->rx_fqes, new->hdr_pp,
> new->hdr_fqes and the entire new->xdp_rxq into real before ice_setup_rx_ctx()
> has succeeded.

[...]

> 
>> +
>> +	napi = &real->q_vector->napi;
>> +
>> +	page_pool_enable_direct_recycling(real->pp, napi);
>> +	if (real->hdr_pp)
>> +		page_pool_enable_direct_recycling(real->hdr_pp, napi);
>> +
>> +	ret = ice_alloc_rx_bufs(real, ICE_DESC_UNUSED(real));
>> +
>> +	return __ice_qp_ena(priv->vsi, idx, ret);
> 
> ice_alloc_rx_bufs() is declared bool and returns !!cleaned_count, so it
> yields 0 on full success and 1 on partial/failed allocation:
> 
> bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
> {
>     ...
>     return !!cleaned_count;
> }
> 
> That bool is then passed straight into __ice_qp_ena()'s fail parameter,
> which only overwrites fail via 'if (!fail) fail = err;', so a value of 1
> propagates unchanged to ice_queue_start()'s return value.
> 
> netdev_rx_queue_reconfig() treats any non-zero return as failure and
> propagates it back to userspace (netlink, ethtool, io_uring zcrx install),
> where the callers expect a negative errno.
> 
> Before this patch, ice_qp_ena() obtained its fail value from
> ice_vsi_cfg_single_rxq(), which returns a signed errno.
> 
> Should this be converted to a proper negative errno before being handed
> to __ice_qp_ena(), for example:
> 
> 	ret = ice_alloc_rx_bufs(real, ICE_DESC_UNUSED(real)) ? -ENOMEM : 0;
> 
>> +}
>> +
>> +static int ice_queue_stop(struct net_device *dev, void *per_queue_mem,
>> +			  int idx)
>> +{
>> +	const struct ice_netdev_priv *priv = netdev_priv(dev);
>> +	struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
>> +	int ret;
>> +
>> +	ret = __ice_qp_dis(priv->vsi, idx);
>> +	if (ret)
>> +		return ret;
>> +
>> +	page_pool_disable_direct_recycling(real->pp);
>> +	if (real->hdr_pp)
>> +		page_pool_disable_direct_recycling(real->hdr_pp);
>> +
>> +	ice_zero_rx_ring(real);
>> +	memcpy(per_queue_mem, real, sizeof(*real));
>> +
>> +	return 0;
>> +}
> 
> Can this leak inflight page pool buffers?
> 
> ice_zero_rx_ring(real) is called before the memcpy to per_queue_mem, and
> ice_zero_rx_ring() resets both indices:
> 
> void ice_zero_rx_ring(struct ice_rx_ring *rx_ring)
> {
>     ...
>     rx_ring->next_to_clean = 0;
>     rx_ring->next_to_use = 0;
> }
> 
> So per_queue_mem captures a ring where next_to_clean == next_to_use == 0.
> 
> The core then invokes ndo_queue_mem_free(dev, old_mem), and the recycle
> loop in ice_queue_mem_free() is guarded by exactly those two indices:
> 
> void ice_queue_mem_free(struct net_device *dev, void *per_queue_mem)
> {
>     ...
>     for (u32 i = rx_ring->next_to_clean; i != rx_ring->next_to_use; ) {
>         libeth_rx_recycle_slow(rx_ring->rx_fqes[i].netmem);
> 
>         if (rx_ring->hdr_pp)
>             libeth_rx_recycle_slow(rx_ring->hdr_fqes[i].netmem);
> 
>         if (unlikely(++i == rx_ring->count))
>             i = 0;
>     }
>     ...
>     ice_rxq_pp_destroy(rx_ring);
> }
> 
> With 0 != 0 false on entry, the loop never runs, so any buffers that were
> in rx_fqes[old_ntc..old_ntu) (and hdr_fqes[] when header split is on) are
> never returned via libeth_rx_recycle_slow().  ice_rxq_pp_destroy() then
> kvfree()s the fqes arrays and calls page_pool_destroy() with outstanding
> inflight references that are no longer tracked anywhere.
> 
> The new ice_clean_rx_ring() wrapper keeps the original ordering:
> 
> void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
> {
>     ice_queue_mem_free(rx_ring->netdev, rx_ring);
>     ice_zero_rx_ring(rx_ring);
> }
> 
> Should ice_queue_stop() follow the same ordering and perform the memcpy
> before ice_zero_rx_ring(real), so the recycle loop in ice_queue_mem_free()
> sees the real ntc/ntu values?
> 
>> +
>> +const struct netdev_queue_mgmt_ops ice_queue_mgmt_ops = {
>> +	.ndo_queue_mem_alloc	= ice_queue_mem_alloc,
>> +	.ndo_queue_mem_free	= ice_queue_mem_free,
>> +	.ndo_queue_mem_size	= sizeof(struct ice_rx_ring),
>> +	.ndo_queue_start	= ice_queue_start,
>> +	.ndo_queue_stop		= ice_queue_stop,
>> +};

Those two are new to me, I'll double check.

Thanks,
Olek
