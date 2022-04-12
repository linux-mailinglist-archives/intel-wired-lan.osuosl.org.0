Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEB44FE73A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 19:36:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 632C841754;
	Tue, 12 Apr 2022 17:36:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zjs9Eq8A6Ogv; Tue, 12 Apr 2022 17:36:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B44E4033B;
	Tue, 12 Apr 2022 17:36:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7848C1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65FE940324
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JBBMOZpncQCF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 17:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4636B40268
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 17:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649784967; x=1681320967;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oal717jvYqgmG57u5MuXOhOvA+aj5whwOPhxDrU2TEk=;
 b=YzZp7yA4GyezgItxFOLNpppeezmy1wqZCRLbG69f1CDlYiPNssOrLiTZ
 gNb/9cUTXg2niwxdWxdLWu0PNdw4/hayHpiRsXX9VWbVDAbVflquasscF
 ZZTvDbc2r+PN2wK5Zcud6OR+3Yki1yHtnJUcnpkLijUaXbTDpaMHJnou2
 0B2OrVlWf/LgjTvpBeNPzGoCPrDNnaePL17lUwHx4sulBzip6sNJBXB6R
 SFos8JYAGTLs4fYqj6Fak8+O2TahqNsfStbe98ROhfbvJ5yqOQmI92GH/
 FFvDrCCyDagtMp3Gg7wXxLCx91jW5QL9kK87y/tWOnYugw4fTJG4oRqhp A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="325360039"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="325360039"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 10:35:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="660595868"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 12 Apr 2022 10:35:59 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Apr 2022 10:35:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Apr 2022 10:35:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Apr 2022 10:35:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Apr 2022 10:35:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lsz9SoASbWmXPcr8qIxLOIy1l7ihHLx4SWmyYiF6L9ckUM2GCqwwhB3rPXQ689+IpVuvIA8wiU73hb3Bu31oxRoWo+IdrP/2vdMLt0oBkq+J6rumuXaq6cupdcrEWjnEQ8H2L8/HHYd2qjDU5pJEb6eNgeqfONaLo3hUu3w9urdE6Gk3urNzWcLcg5e4jsQXZZrE9w319be9ub5ffzX3XPX7Sp8KrNB+IW3XBxZuy6him3LG4XB614I8CyadHLdVgOBxXW9iwnYNOmJeXzAPqdrmoTU+Jkm719fgcVfIuNescXw567If0kU+uf6+3hCKCHMXsuxYiG20s8pXUK3aCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RSY8K+0SNk+uzCBvICpDPua2tA7xQtfZr56EEr5ySA4=;
 b=Du6HKaAF/aDtP31vmwKCm8aV5n68L8SezsMnj5yRMzy41Wdym1iZ66kEm+aIwwfOsBTHxD/TXgBLM7yhcBh2toEUh/SWZ01yE/3wPOPxlbEmm+yIuXfcWhS+imEHj6XnhDzy9ss3T8+Co8LJ7B6iw2JRsaJh2TkRHdDZe4UwBIHOcarsrK0D7ce7Qo1jdrRdL4rrTqpnpo1Q7C98nxTCt8CnZaY731p356aMxeNpWMj5Rni0ssXeHuSw+Cdriz3+rKb2OsLoIOAg+wM3uKZpQKTvoGWISbtoL9ZsfiaakdZCaNjDB6zqOskHCBE8FUMRyGHVqjpauOdzIEvHShoRSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB4810.namprd11.prod.outlook.com (2603:10b6:806:116::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Tue, 12 Apr
 2022 17:35:58 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::815d:8ff7:538c:b10e]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::815d:8ff7:538c:b10e%9]) with mapi id 15.20.5144.030; Tue, 12 Apr 2022
 17:35:57 +0000
Message-ID: <987480f6-9fc1-bd67-8803-9b88645b514c@intel.com>
Date: Tue, 12 Apr 2022 10:35:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
 <20220411232907.1022602-3-jacob.e.keller@intel.com>
 <e079ab74-48fc-65d1-4d3f-2c0cdd4ffcb9@molgen.mpg.de>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <e079ab74-48fc-65d1-4d3f-2c0cdd4ffcb9@molgen.mpg.de>
X-ClientProxiedBy: SJ0PR03CA0247.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::12) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1bf7fe66-cc1e-49de-d30c-08da1caae72b
X-MS-TrafficTypeDiagnostic: SA2PR11MB4810:EE_
X-Microsoft-Antispam-PRVS: <SA2PR11MB4810029CD88D90A63A212949D6ED9@SA2PR11MB4810.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZFiSpnSgZi0DX+goTeOEfzJLHGPwgHz9KZ1zQRoiKnWxCc5Ql6EGHM1sv7/jFogH/SwwRmkd9vVWpRyJ4gUUR+U7C/u1WR45D2A1tsTzrAE/Zj0Zx3xXUlVGT1CD8o0lHniYF/q349Pr4D1NrVCMh+3hr0NX8m8Y3aet5oPA4kP6rDuQkzEDFgF/YRTsP6H1XcBIAIQ7mxQovm7fDSAv3N7QsJ13HhhE88UGHIk1QEJy7ox8I1J+HOgQDaNOQXO695b1ORcwwZzmnKTERsxtHM7kT0FHoF3J81rhNp7eZ115NTeFhEl+4lFm7ZWqOf4pnHVpOthj0hC6QJhjX/wxcHGJvnpzc0vuaVZMx2nTgbhE/o9IV9AX0XBPiaqt2dRulH3CCNxWHlT8wl/g4VfYePEx7kDR/dnDjAvQU1mgMr+dre7F2AX+vwBKBfIfE/DbgU0DN94mheNfJ7oq6T12u4fu0aP5+6hXE4ArpBLTmzj/NRRT2SW6PVMJbueCRDiVrwD2VZZVo5jlG5h5AZndmvtRet08KyKd0wZUlvG9RGS4qshS5acpUDgtD67XYayQzEUFX+2rWzKOrlQO2fzvHo0iC4t5yJVrrrRIzs2bh5uXuelLMStZcWcQ7M1WavRYaHi+cWAGhIVBHnzwmkTYLkPS6dksUt/YZiJ5YHf+PC//VtEdnpx0W8f5kDfDAfcHt0Y3wHS9TeR7oB1bwpslB+dUFk7GvJ05ml626IEnWWRB3gsReXdREE8Vq1Q/m6Ze
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(31696002)(38100700002)(6916009)(508600001)(6486002)(82960400001)(86362001)(6506007)(8936002)(5660300002)(4326008)(8676002)(316002)(66946007)(66476007)(26005)(186003)(83380400001)(66556008)(6666004)(2616005)(53546011)(6512007)(31686004)(36756003)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzVFaXJPQXl5ZWkvU2dwNEg2UkdHZUNMZEw1elJPS3ZIeUFLM1YwVGZXQkJP?=
 =?utf-8?B?bjB1Njd1dUxYZFhUV1lqcm0xUmNKeUFlK2V5UlA3a2RaL2U2NytuM0xnZFA1?=
 =?utf-8?B?YXFEckZvOVN4Nmx5NmtqdGMyZnBqOTlXd0xoM005UnBUZ2c3ZElSVVU4Z2Zt?=
 =?utf-8?B?YjFha2x4TVQxeXJtS3krY1F4ZTZHMkQvWFEycGNTeTM4a05zZ0ErN1ovSkpD?=
 =?utf-8?B?N3YyVHFET0ZGODJtWnBkbkt2WWRBclpqNlNSdHdIaXRNajVXMHVXTkN5M3pi?=
 =?utf-8?B?NVQxUjlyZ2QxaHMrVzBPV2pkTkdHTGhyckVlZTh4WWtlMVlZditGdUgvTGVr?=
 =?utf-8?B?L3d1cEh6T2pLOXE5RWljL3FIZkRNTXdZVkdjQ0JETjl6elpyZ1pJR2NpOWtF?=
 =?utf-8?B?WFB4Z1F2Rnp1OEkyczVjQTNlSU1FUVVOQVN3d09RbnN2dlFCOHRNaDVtYWVv?=
 =?utf-8?B?aW9JTG1ramRYWVFRbWdJQlpWZGFwTmJPNG1COEFWOGRvRFdPUk9SbkI0ancy?=
 =?utf-8?B?aEgwemt0N2ZzbytuczRaTFVRbzJDdEMwQUJHRmE1M01hSUhaYnEzRTEvWG85?=
 =?utf-8?B?ckFldHlpMGpOYkV1RG1lRWRaTGtOcnVpeWcvQ2hWR3F1b2VqT1JxY2drWHQv?=
 =?utf-8?B?L1ZGRmhzenNoaUY2OGYvNDUzQzN1L1RGY09acnArbmxTZHpvZVBZQnEvTnFW?=
 =?utf-8?B?SC8xQjdOYUd6UzU3bWpkUzFKSSt5cmZJK2Vmb2xYL2I4dDd0K1N3TzhSYmw1?=
 =?utf-8?B?T0V2QnNYK0orK2lZb3BEbXF0MFpwRW0yTXJhT294OHhuN2owSDRyZ1NJT0VU?=
 =?utf-8?B?ZCt4Q3hIYkRYRkJyT3ZwNENjSm4yVDBiWUZURTBnaTJacjdaRVFoZ3lvRGtF?=
 =?utf-8?B?RFRqbkF6cXZsUENiUFdyNkxoOXMwZXVtK1o3Ykx3Q0pDNjF3VkJpQXV2Z0Ju?=
 =?utf-8?B?VFpRWVRsL2dDWGYydVhMWkRNUVJoaU1MM1JhaDkwNktla0FJd1hTR0xEMXND?=
 =?utf-8?B?S1dIck1MZEtJNUtmTFlNN2hWTG96eExQWEpUdVFBVHFTRHNlQUZNMDloWkZx?=
 =?utf-8?B?UVNBckZoeWE2K1o3Y2xSUUFONUZWUE9jMmpnUkY5b2phRjJGZUJjQVdzcUZD?=
 =?utf-8?B?N0lVR2t2WWxxUHVHRTRaSnFUS2FpUzRBMkJmVUxwVzV4YkFRc3J0SDJ0ZHlh?=
 =?utf-8?B?N0FwQlBsM1VDOFVTTUpSZmF0QWUxRjZaSnkveHhlSHhYZFIzM0Q4WlJnTnNH?=
 =?utf-8?B?RjZNVnoyOVVnSXlxWitmZWhMU0FLTzdyTWtQdzJ2czZUekI2WUdUVlZQelFR?=
 =?utf-8?B?YW1UYzhRdmhUckZIMlpHUHB3YW85TW9DTUZkekc0dFJ1MGlaNm5WZjhFK3JZ?=
 =?utf-8?B?K3padWdOcnpCT3lOYno2amFrd205ZXNqU3R3QWNFMk5WcUhvc2xJSUwydTEw?=
 =?utf-8?B?RWN2Z1A1TUJYa0Iva3dmb0VPZkQxelhnKzQ3aGwrS3dGbjVsUGxldUdYUWNu?=
 =?utf-8?B?UlBBYzRRWGZiamI5eWVLOGFkd3NiNWVDWDNHMVN1ekIxUEpwa1NiakttVGRC?=
 =?utf-8?B?TVVtR2JqMm5GZEJVVkg1Tk14RTZFUDJUWWZCUTNuY2JJOWtJejEwczRkQTc5?=
 =?utf-8?B?QWQ0TXZsOC8vRllaejJLb1pSZ1JRZ01LME1uUjhtMW8rZ0VWSm1saVQwWUNh?=
 =?utf-8?B?WWtVZmpFOXZxaWZnTktqaGtlejdDTTBUc0o1OFY3cG1nZGxKeXFvVTZFZTlm?=
 =?utf-8?B?ZGo3STFCUlBnRDhrWDFwZWR0R0xoUUxRMC96Zml3Umk2L0RKZ2oveDMvTkxF?=
 =?utf-8?B?aDgyUzd0RzEwTFJWZXFtSS9YRVB2VElMbVpabU0xZWxkekdhUjl4RkV4QWRv?=
 =?utf-8?B?REQ5aFRjUS9FTDVab1dpSWlYU041U0dWc25UajF0Q3dQS2YraHNuWDIzeTRu?=
 =?utf-8?B?eGJVdkE5NUs3OGtjanZhSnF6TzFVbVpXQnZabHlidnpac0h4aFg4c25tanNo?=
 =?utf-8?B?M1p3ZVZkcE9QUlVqZG5BK0RWN2pVVmZsa0ZJMFVaaXFSSDdrQ3VaakNHUWtX?=
 =?utf-8?B?ZlZuOU5tY0JWR1NpajN1QjY4KzRTeXU2Zjg4akFUM1JZaHZ0RTdtbFlaU1Fz?=
 =?utf-8?B?L2xkZnF0SWNtVjVFN1ZObFFlRUZrS3RHU29kS2JsdnAvQXJKUmJ5RFhxbnJX?=
 =?utf-8?B?NDRCbEU3Ymw3NnBYOUMvTnFWNkorSDZEMncrV3QxUDUvaWgvMXpBMlNWRER1?=
 =?utf-8?B?NVh6My83RXRTV0Q5bmk5cWRmamZWeitvZUNmd2hDdDlNL3E4SE8raWh2c2Mr?=
 =?utf-8?B?VjJpWjBpTUlZazc4SVBwa1Z6ZHlJMzdCS21aOCtDdHhJUnd5dzRMZUtBRVJx?=
 =?utf-8?Q?0n+GX90j+QP5qnac=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bf7fe66-cc1e-49de-d30c-08da1caae72b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2022 17:35:57.5867 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iQ5Fm4vqh6KlTOnvQ6liRhxy3cRXGRlBkvH6bxQ6+DyaAVEpSYWX1uAyiNcDZKzEw06YSuHZ2Jsj4VZs9KYQezmuF15oZ2h+gAZ0KLvMiqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4810
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/6] ice: always check VF VSI
 pointer values
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzExLzIwMjIgMTA6MzggUE0sIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgSmFjb2Is
Cj4gCj4gCj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4gCj4gQW0gMTIuMDQuMjIgdW0gMDE6
Mjkgc2NocmllYiBKYWNvYiBLZWxsZXI6Cj4+IFRoZSBpY2VfZ2V0X3ZmX3ZzaSBmdW5jdGlvbiBj
YW4gcmV0dXJuIE5VTEwgaW4gc29tZSBjYXNlcywgc3VjaCBhcyBpZgo+PiBoYW5kbGluZyBtZXNz
YWdlcyBkdXJpbmcgYSByZXNldCB3aGVyZSB0aGUgVlNJIGlzIGJlaW5nIHJlbW92ZWQgYW5kCj4+
IHJlY3JlYXRlZC4KPj4KPj4gU2V2ZXJhbCBwbGFjZXMgdGhyb3VnaG91dCB0aGUgZHJpdmVyIGRv
IG5vdCBib3RoZXIgdG8gY2hlY2sgd2hldGhlciB0aGlzCj4+IFZTSSBwb2ludGVyIGlzIHZhbGlk
LiBTdGF0aWMgYW5hbHlzaXMgdG9vbHMgbWF5YmUgcmVwb3J0IGlzc3VlcyBiZWNhdXNlCj4+IHRo
ZXkgZGV0ZWN0IHBhdGhzIHdoZXJlIGEgcG90ZW50aWFsbHkgTlVMTCBwb2ludGVyIGNvdWxkIGJl
Cj4+IGRlcmVmZXJlbmNlZC4KPiAKPiAoc2lkZSBub3RlOiBzY3JpcHRzL2NoZWNrcGF0Y2gucGwg
Y2hlY2tzIGZvciA3NSBjaGFyYWN0ZXJzIHBlciBsaW5lLCBhbmQgCj4geW91IHNlZW0gdG8gdXNl
IDcyIGNoYXJhY3RlcnMgcGVyIGxpbmUuKQo+IAoKRm9yIGNvbW1pdCBtZXNzYWdlIHdyYXBwaW5n
PyBJIHVzZSBzb21lIGRlZmF1bHQgZnJvbSBhIHZpbSBwbHVnaW4gd2hpY2gKSSBndWVzcyBkZWNp
ZGVkIHRoYXQgNzIgd2FzIGEgZ29vZCBjaG9pY2UuIFRlY2huaWNhbGx5IHRoYXRzIDgKY2hhcmFj
dGVycyBsZXNzIHRoYW4gODAgd2hpY2ggaXMgb25lIGZ1bGwgdGFic3RvcCBpZiB5b3UgcmVuZGVy
IHRhYnMgYXMKOCBzcGFjZXMsIHdoaWNoIGlzIHNvbWV0aW1lcyB1c2VkIGFzIGEgbWV0aG9kIG9m
IGluZGVudGluZyBjb21taXRzIGZyb20KZ2l0IHRvb2xzLi4KCj4+IEZpeCB0aGlzIGJ5IGNoZWNr
aW5nIHRoZSByZXR1cm4gdmFsdWUgb2YgaWNlX2dldF92Zl92c2kgZXZlcnl3aGVyZS4KPiAKPiBJ
IGRpZG7igJl0IHVuZGVyc3RhbmQsIHdoZW4gV0FSTl9PTigpIGlzIG5lY2Vzc2FyeSwgYW5kIHdo
ZW4gbm90LCBidXQgCj4gbG9va3MgZmluZS4KPiAKCkkgdHJpZWQgbXkgYmVzdCB0byB1c2UgV0FS
Tl9PTiBpbiBwbGFjZXMgd2hpY2ggaGF2ZSBubyBzdWl0YWJsZSB3YXkgdG8KcmVwb3J0IGFuIGVy
cm9yIGJhY2sgb3V0LCBidXQgZm9yIHBsYWNlcyB3aGVyZSB3ZSBjYW4gc2ltcGx5IGZhaWwgdGhl
Cm9wZXJhdGlvbiBJIGF2b2lkZWQgaXQuCgpUaGlzIHdhcyBzaW1pbGFyIHRvIGhvdyB3ZSBoYW5k
bGVkIGludmFsaWQgVkYgcG9pbnRlcnMgaW4gY2VydGFpbiBwbGFjZXMuCgpUaGUgV0FSTl9PTnMg
YXJlbid0IHN0cmljdGx5IG5lZWRlZCwgYnV0IGdlbmVyYWxseSBzcGVha2luZyB0aG9zZSBmbG93
cwpzaG91bGRuJ3QgYmUgaGl0dGluZyBhbiBpbnZhbGlkIHBvaW50ZXIuIChJbmRlZWQsIHByaW9y
IHRvIHRoaXMgcGF0Y2gKdGhleSB3b3VsZCBoYXZlIGJlZW4gQlVHcyBpbnN0ZWFkISkKCkhvcGUg
dGhhdCBleHBsYWlucyB3aHkgbm90IGV2ZXJ5IHBsYWNlIGhhcyB0aGUgV0FSTl9PTi4KCj4+IFNp
Z25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+PiAt
LS0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RldmxpbmsuYyAgfCAg
NSArKy0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3JlcHIuYyAgICAg
fCAgNyArKystCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zcmlvdi5j
ICAgIHwgMzIgKysrKysrKysrKysrKysrKystLQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfdmZfbGliLmMgICB8IDI4ICsrKysrKysrKysrKysrKy0KPj4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMgfCAgNSArKysKPj4gICAuLi4v
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubF9mZGlyLmMgICAgfCAgNyArKystCj4+ICAg
NiBmaWxlcyBjaGFuZ2VkLCA3NyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IFvi
gKZdCj4gCj4gUmV2aWV3ZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+
Cj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBhdWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
