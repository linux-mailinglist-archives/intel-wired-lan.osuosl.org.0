Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959C870CC03
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 23:11:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C03A44048B;
	Mon, 22 May 2023 21:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C03A44048B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684789876;
	bh=NBhgWdLEF0iIaxpmZ7zhsX2rTHJ0BtqRLuouzOCgV0k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YkcuqqbrkMr71CxISN7X4RERkOyyF+SimzVs9OO0i4nUc92FgO+kuj/Al3UNGxx++
	 cQHZroAgCXtYCMXXYViiMa40AAwy5jU0Fs6w9MnUB8MIvSsDR87Y/11CCzn4stbC/6
	 LlS6W113dzHgCaHN9xfj2dRUBxB02+9Lnw6pKmc49hNR/Mr7xtdCYQWmqGJiXPypey
	 wd9r7WinmLlqZoIsuUj8lqnIidCfMAmd43zVpcCBhR+HCCWQLsrsu1oubZCGvfueCS
	 BoDq6R+OkZnJnnOudZVYMVi3yYVBFYN6999mB2/KrOArtW+nJnZvRIpI4G8tiA2Ivq
	 6NOkVlCQuymFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nwz6wNkqxMYx; Mon, 22 May 2023 21:11:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DE7D40332;
	Mon, 22 May 2023 21:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DE7D40332
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56B7B1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 21:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3824981FE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 21:11:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3824981FE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id St-ygVGe68nf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 21:11:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57B35812E8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57B35812E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 21:11:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="416509231"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="416509231"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 14:11:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="827834911"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="827834911"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 22 May 2023 14:11:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 14:11:03 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 14:11:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 14:11:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 14:11:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hiRKnJztUKyzvWxIimT1bHGGzpsxQIChoyM9SFsxz9NxU9TwZSnda2aCVkvNQTeryGCfdJZf28qWOcFteKOw/VGmsk3+n1EOAnOttVo2hCJh8eF2TXAMaa1+ucpC7mE/U6GNzjR6z0BGW96Ju7Cc8y/QFt/Xp55b6E3zJvzb0vWz+hw6AkmkP8w0Mx0lRn82X5V3rHtSfjm25pg+XYDDd0fafV8j40WHdejxxbfIiHW4/siR1PEXoEKZQsevl5qZNRHRAJWUF3/yIrmdhOaGAlmuL6j2nv0/1lxknfcmO0JT6K19DLYoBped4OAZtFUP2bQ7kf6t+RCF7r4s5QgpBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OhrbAotFrNT/3ZnECqO46HxKswg2Uh/JOqShmsG1snU=;
 b=nickzmqoaDnTYMAxdHJzNFe3PljWxRXBaTltmPISJ2mJ+iyWnPteM/HvuZJr/7f/xQEbzCrfVpfLpUgzdUzt69PuTs4SOAIyZGP34VQrErD96NZsyktsODXAOGru4lBK92KzJAjgsHVlFCtBlhBRp4OjjX03HQZ/A+hNi8i7CbeJY52EbnLc24/dVOk6JaVUMl68zMw4Z/+ABHkdX1E/vIBv9kcex+eSXX5qznypTsYpmCLoPBbpjbQyZG1vLBsZ6PqdIBaPpfVNWZgPgfruGccBaMf6DkYQ2nM4tzS1KC33OCl1ecYtbGvJ4u6Rwwh2XacK1b0yzCLGufDnfX3qug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 21:11:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6411.027; Mon, 22 May 2023
 21:11:01 +0000
Message-ID: <673617aa-b0b1-cf6b-45d2-632ca2c52784@intel.com>
Date: Mon, 22 May 2023 14:10:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
References: <20230522111748.65089-1-kamil.maziarz@intel.com>
 <20230522111748.65089-5-kamil.maziarz@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230522111748.65089-5-kamil.maziarz@intel.com>
X-ClientProxiedBy: SJ0PR03CA0199.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::24) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB5894:EE_
X-MS-Office365-Filtering-Correlation-Id: 16f3af5c-57d2-4c62-264c-08db5b090b90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L9eNRNm3w+rqcsebrdKvppsWB3thvO3xNA4nU1Rh7v4l+0USR9BOJaD57DTlaO4FD3x695Nttvnb0zn+X+RfUKwTyEfPLL4wkPfwJsGHrfqi1rMdZuUh/wzKWhmtfW9Pby1SCRuzwE9CJ1jnQIhDPq5CGPfTl8RxhNWBclLlWd0bmoDTOV5lzkyt0+f+ANnZ+4XLqp1X7OWYcAUUmvmKFOsscfP+bUphoW7LGlPE8TVrL2dMaRppQt8lTlUtBQstSO2P4skqpKdNd5+J4AXSd+c9AH66E9zST3/GHXRhoG5RGdLfX2amTTYIviTBlxCHFcjQDJ3p6aJnNKxviUJraA1pMTWktbX9YM5cmp2oTeoAdb60I0dhQWILCrI6NXJI6VOIl3V1F3NuESvGoYWhOeCscgAADr1XUDrkK4KFS69DBKGlGdbJCtgLw1C12rEmcN8mLBuicnPOlDLQgJWVrk7wQPU2JcEoC9CLmgQQMqFi3F54RVQavwVUF/R2lm0N6I+9vfVewIozUD+uZtge7C3PQoaKWvZdiCogOT7KRc/Cc659iuYh3uwtpV2AWBlnYBBJOLOPphNEenirZkBrExYDlv8O9NdukzxPxFAdJf4R8ycJLsdNOsbB6kSo4LPs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(366004)(396003)(136003)(346002)(451199021)(966005)(38100700002)(5660300002)(36756003)(8676002)(8936002)(2906002)(2616005)(186003)(31696002)(86362001)(83380400001)(82960400001)(53546011)(6512007)(6506007)(26005)(110136005)(31686004)(316002)(6666004)(478600001)(66476007)(6636002)(66556008)(66946007)(6486002)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGFIUk0vOTJGa3VYTEl5NktqTU9LVDZLN01wMjNwWWdIbWtMSEFFaDA5Ny8x?=
 =?utf-8?B?UEM0bExGNVpON256eGFEM21qNndpY3FITXYrcFZIL0FSaFZLRjdOSW94eS9q?=
 =?utf-8?B?d2RVVEZOQS9ZYTNvdzBjSUhXeExVZzNod1hyZStHYlZnOURoeTZ4TjdMZDFM?=
 =?utf-8?B?WHFneGE5TEV3cFlDUlB3TExMd3N2NzVMd0RRZWx2WVdYNitsY3ZpeCtuaU5l?=
 =?utf-8?B?WTErbHZLRGoralNJQTRQZ3NUMkErWWlqVDZ0eUM2aFdBa1NydkFaa0cxcFJ6?=
 =?utf-8?B?UXFvZjdNUjZ6YU5nemNOUkdNN2x0NS80T2pXVVQ3N3J1Z21xa3MyR3RqSmNM?=
 =?utf-8?B?WjJHYldiRDhHS3FDQUExWlk1bEEzdHBSN0M0Z29hVUdYY0FaSG95a2hpTG9k?=
 =?utf-8?B?VzdyRURZQ0FYcEtuMHQvNWQybjJobFJnV2gvSGRKK3FVV0R5QkJBUlczZHov?=
 =?utf-8?B?NzZza3FCd1FvRGgwc2RmUmQzNFpIM1ZrR2JRSWZmL0I4cURLU2hRK2ptM1lV?=
 =?utf-8?B?RXNxVjc2V3hRY1hQZGZQR2lYTEp4Y1hyb1IvRG1JZW9NRlJtdmVMbkRUbjBR?=
 =?utf-8?B?ZUJSS1lrUXM1SzNiVlpaSDhJbkNNUEsrZ2RDVXNBRDV1bFgzN0RyMkVKVDE2?=
 =?utf-8?B?QjY1ZDhrWEZWdVhOa2JPSExoRHUvUERhTDJybzFJamhqbXpCOG91Y0M4QUFw?=
 =?utf-8?B?bGRwREUrTFowa3RXTUFXNlg1bGtrRVhyTUxHWWFqd3ZEVW84K3BUUHcyOEpM?=
 =?utf-8?B?a1ZXdmh1TStqRUduY0xvRW11ZXdZRjFPSWxxa2llaUtHdFI0Mlp5R0U1Nm5Y?=
 =?utf-8?B?OFlTVHIybDdJekRWdnVuY2IyNlhxT1F1Y2t4ZGVXYmZiM1FnemRQc3ZnY005?=
 =?utf-8?B?aW1LeU5lQkpYR0RTK1FPRlpuekRaSTJKUlBBUU1rQzJmdEU3SnlyeG1pT2lB?=
 =?utf-8?B?ajNnQmthQmNYWXpEcTI2d2Y0enUycGZMU04wWWNGQUc4am5jU1lObkxMTnY4?=
 =?utf-8?B?Zk1TaTJyL3Y1UStscGV4UnpXYi9GTWM4VVAyNy90WGEyWDA4QzRPZk9kaEdr?=
 =?utf-8?B?WHBxWjlJWnEyK0RHcWZ4djljVFNUWld0c1FDT1Btemd3ZGtRL01yWjd3NDBW?=
 =?utf-8?B?N0tsUzgvdUdyeGsveFYyb1V5TVc4d3EyUjMxSWtkK0svaHlIMHlzeFRWUWRR?=
 =?utf-8?B?cEtnUGgxSEYyTXlVNVBUMjlBdnVNN1d0ZUxEWEg1K2EwT1NUVFg1cUdQYzFx?=
 =?utf-8?B?RFlINlBGeW9wbjdkbWN6K3ltSkVSWG1xMFdNa1ZlYXFEUUhMaDJXWjZOWXFl?=
 =?utf-8?B?dThkMzMrT0RCYllqR09KYWZqdGUvdlJIUGRlbk81aFJDc05RWlh1UWJHQk1n?=
 =?utf-8?B?bGduNDVxZXRKWU9yakYxdTlObnphc0hmZno3aXBCQU52MEp1RXNFbE9JTUZ3?=
 =?utf-8?B?ZmQ1SWJGazBEZWVFY2tjZlE4c2NjS2FpZXZQYmdIa1djWUZsQ2FiVGxzek9I?=
 =?utf-8?B?cW5EdGFjOTZrRVJHalhKZDUvNVhpR0FlVUVLT0xVbTI0cEx1eGZKbTBrK2lV?=
 =?utf-8?B?OVBpZmRBMFVoWjdyZWdLYmJTS2M3YjA3M0dFTnVlYkZYcnpabmQ0MW0zb3h3?=
 =?utf-8?B?UmVqUFZ4Znc3cHBEenRtS0pWSG44Y3BPQTRjVnNvQyt2cVEwaW5uc2I4L05q?=
 =?utf-8?B?Y1orVmVOMEJ1SzJpUzU4bWZXNXA0N0loZ0RFNEFCSEtaOEpaOTY5OTFtMXZm?=
 =?utf-8?B?Q3BFdFJzeFN6aFpLZmRmL04xZ3U1Q0xkU3FSa3lFZC9CQTNhK1BXUEpUM3ph?=
 =?utf-8?B?RE1lNFBiVzlSQ1U2VkUwQkdoRTBsNzZPNW9qelRaekFtc3R4MjNMUlZYRjVh?=
 =?utf-8?B?cWIyMjVUZllxWW9JR3V1TU1MWW9vWTVUWlRad0FFNzhGdGI3WkdSbThvbHRy?=
 =?utf-8?B?Q21mR3E2dWJMcG15SSs3eVdnSGUzUVZmc2h4Y0tnb1pEbVpWVVNwYm15TVR6?=
 =?utf-8?B?Y0h4aGhia2FBWDN6YnFCczlzYVgveGVhazN0c2Y0Y1NVNzFVb2xROEZBMnA2?=
 =?utf-8?B?TDZVM0RqOGNyR3FydjZXYjMzTWxjS2poazZlV0lRQ01zNWdlR0w2bWdxd1Bh?=
 =?utf-8?B?dnlzYlE3a2Ztc0hIbE04blM2YnFjaS9SWi9ISTVFWFN6QUFrblNiTWErSEZP?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16f3af5c-57d2-4c62-264c-08db5b090b90
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 21:11:01.2612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AaNnhl4fHDIlTMOgJ6tGIQJKAzQy9VZ8y1LBXQxo2kK+kl08V/6QcZQqO2r/SWEQS6ZnVmbZM1sctYRvJj1jZh85AcbM0ipOabmlsTVAQPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5894
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684789865; x=1716325865;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uNMTjFhO1OIPPUopWHWO6D+iez6bXl03HMYE750w2Ec=;
 b=j1H77YR9u7AEUg4GFJvJyit3EXbv7SoauJ7MEkpwAyvpTpAGcboqfbun
 /qxljDVDYWB4JT7UdOwn2PwyVgGYO6cbjAm1MfOeEyH7FBsv5a3rARLZh
 5HUlP7sFI5JAUHiuxSo02gAgASRqnywN1x3r54DZtiyQRLftw4XybvVLK
 SRNHnBNth9DkEBAEPDtaHQKdhTFeuxABvx8QE4RpYSnAgh48w6phBW/0H
 ajkTWZ68Ooy7R+qC47HQ4lQuDnHIb3YqiGay2E+2ME6cVPyZ3CFa2is6f
 GWdiBhIMTryAkymej/UZI4nu4+V1ogHKp+F0EWmOM8xGzrstYQZklKywZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j1H77YR9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8 4/4] Revert "iavf: Do not
 restart Tx queues after reset task failure"
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/22/2023 4:17 AM, Kamil Maziarz wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> This reverts commit 08f1c147b7265245d67321585c68a27e990e0c4b.
> 
> Netdev is no longer being detached during reset, so this fix can be
> reverted.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
> v1->v8: no changes
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
>   1 file changed, 1 insertion(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 3d439f9ac97b..771463e53135 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2986,6 +2986,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
>   	iavf_free_queues(adapter);
>   	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
>   	iavf_shutdown_adminq(&adapter->hw);
> +	adapter->netdev->flags &= ~IFF_UP;

This has not been addressed:

https://lore.kernel.org/intel-wired-lan/e6e668ac-8175-ea5c-25c2-65bcfa60eca6@intel.com/

>   	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
>   	iavf_change_state(adapter, __IAVF_DOWN);
>   	wake_up(&adapter->down_waitqueue);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
