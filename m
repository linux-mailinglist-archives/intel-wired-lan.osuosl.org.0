Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENxzDtAe/WnXXwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 01:22:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A33514F0117
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 01:22:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22016412B6;
	Thu,  7 May 2026 23:22:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3SVRII89-x_5; Thu,  7 May 2026 23:22:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E00A412AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778196172;
	bh=ZtSrFONol4K282YcONekrC5UvgtQoyBprQ32xYjycBI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e+Xn8ZPbJBLHRmEJCFpv9MXAM4BtDZUO0h0IDFXJNN4hTR2wc+hJFwirO8H4WTVBV
	 Z1qa1rysghU+NCvVHEjpjR+5vMtDRoK2J7pJ7CSjTH5I13uq5SMOLDmV3ZeoboiaJP
	 cNGt8/CcIcGW62vLq2Y6XAnVLsWwLaBpVt/0jzNZXVcAeT/eY2c/Th4xtq9RGVMP54
	 ElbRaOrXOA7eCZELo0EqJ5UDYmsemEbuIC/2bb5F4KcjNtxaE+MBroWCs7VLY5DgTp
	 4q1gtif57lzN9YulqMjtxS1Cfmm+NWyeupnEJnyCUfibp0fy43DC7Ye6hzV1tvQvD4
	 ea7AwLPlQUqNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E00A412AC;
	Thu,  7 May 2026 23:22:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D82A6272
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BDF4280EEC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:22:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YxvTtrToVJXl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 23:22:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F051480DD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F051480DD5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F051480DD5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:22:50 +0000 (UTC)
X-CSE-ConnectionGUID: Sudhr2aKRAWnOaehdxXvHg==
X-CSE-MsgGUID: MPE6v21kQ9utUhoJD5jq4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="82783026"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="82783026"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 16:22:43 -0700
X-CSE-ConnectionGUID: 92Gu+Rl0T+qH+l3ClBI0Xw==
X-CSE-MsgGUID: scX4UQbfSCu4ZJCwgwnj4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="233947299"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 16:22:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 16:22:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 16:22:36 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 16:22:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k3gVMNR17WApDfPSIOQYLsm53lzZQXi6/inWTlCvOB60AjvffvRgWcTdAMlwPthZ9wwe8S5g5KtnS6lp8CHomqx+D5GrPHM9uQO8SvA5BZqaQ6Dc+mDPmgv0Ti1xEVJXPBcKRNuIG1xbWn6AfCJaLIuTL/LVXcbGO3QKmqg7JiJF0YydRXjL91sWFnBzIwU7rnX15jajB/eu/RIv5tKnnJGR4kZoggobSqeGuoP/KO8zQtb5KKsMyi7l6dN5O3Gsak6w06fwVYvNn2V4rtwPZgRRpm4vpqdmHqzLSbbbRyZREb+fPY9p+T9QE3rlWK0v/PGKdMuicveugWCa3ucXOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZtSrFONol4K282YcONekrC5UvgtQoyBprQ32xYjycBI=;
 b=OUeU0JrwbUfgQTfeZhtDb7qZ1dporG57U56mXoDOfmPMcXSAPAFI5VB18z171pTZaCnnmtaU+C2A7d0a3Ras22u6TgnLCGwSpGmTRO5ojCjd1mkoM4ICyXH4xTjHh5upongrsnBy+yGEJBTBjQj5xCFyhMW4+hhy+aja2QyRuiPt+sizcjOYqwo6i701lEGFDTIpi4VPcTERPFuEoOz+VnI5M/2mJ30CznOjDhTKj7iLq5OXQ3A5l1IP1wkYMmbVF2U7W//t0+IKy+WZPZk/Qrf96Q5zbXid4OjuCighRUEa9odPtLpNVYXnCCqHMClyxNGKLlv0loeqUE+w0Vj7EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by SJ2PR11MB7502.namprd11.prod.outlook.com (2603:10b6:a03:4d3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Thu, 7 May
 2026 23:22:33 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Thu, 7 May 2026
 23:22:33 +0000
Message-ID: <8f72b0ff-94b3-41b1-b16b-9d7b9e675ace@intel.com>
Date: Thu, 7 May 2026 16:22:31 -0700
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0006.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::11) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|SJ2PR11MB7502:EE_
X-MS-Office365-Filtering-Correlation-Id: ed704bea-4c87-46f7-0820-08deac8f840e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: ILxZ9k1IVx5EOLGh7y5BFFyr/LBUUiVqA+sU4JsJ2EKuBKsk8DeQ7P6MUkFU2uD+RsBm6UPHqXBQpQE72Dk1G8akFs8nNH7l0IbismuvrIocYfU1LoEYnfzJekJV+ADbQYnR9weqNLjmvUwbldXJkJE/nwwZmsgFs5aydAFbXti+5dZ8fo4z01ZtqTD6BxzT8Whp/S5qjMa0hxp3A8LDvlofOrqcaiHq8Gmd0vrwK2dWYEBEM+f8onjsATcobi2lFpTWEveYu5JeRvLuQpGlWI/prSZa+CN2M2HVSzcCbSYC/ifbfnx+BHp+tc5tGZJnongPqyECB5FhPS/LuNbzH32CRoWCVnW1Qy3JyfWOmVw5bC2Cyofye04zNUYqwai31U5LH6CIdrnwSKLIbV3jrkk4PXkg41LKIAisdgrsxvHQ3M84vV0p64dMKEOtNG3rsROHxBkqSdpxJaULR0M3z5qnJ+VprIJQ98iU0qwX/sLgVXYkrmFgNHRw2CsMbhiAJeSd6SYxmYVR/AHBMt86T/DAr+j+AipTYgW4Mf8ZHc04HR0vZthDOc5XK3t0kpc6q58p8mnRgPueaC9hzzIrYSl+vPMUGGCwx3F0OvYONAcK4+YF2GFnNjcKMWRAWRzZZ5K4WWPab44bkG0B7bBrDlCVQfr35aElthHe13dBTPnovncG6hyGHivBVDaUtAxA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVZuZVdQVnFaN1IyTXkwcFhhaDlxcE15ZWppdHBkRkRPb0FlTURTaElJZ0Nv?=
 =?utf-8?B?VVVkZEVEdFlhbDZJbVNzOVFoU3B0cUZsbGpQMStERmZGRkFhbUIvTWtjcVlm?=
 =?utf-8?B?STNKd1JPeGo0dG9HSzFRK0wvUDh0U3lVMXhQL1dGQlRqN0Z5SUNYVTVoSnVu?=
 =?utf-8?B?eThCMkhKSnBnWmVseGlkVEdiZDBGWVJXNnN3QnZQRERsMmRaN2k3Y1AzMlFy?=
 =?utf-8?B?NnF5T1pCa2dkRC9tWGwrb2xielZkbVBQQUdOTUxmSUh0M29WUHJqUTRyTEtV?=
 =?utf-8?B?aDBwMXBVNG5JV2RwRk1aSVpGOE5WeEdOa1NxVWEwemdPckZVQ3N0Vnk0ZC9P?=
 =?utf-8?B?WDloM1ZzUW9uRG1DZFpDalFuc2gyZUl1Y3Z0L1U4cm5uSEZVTEd4V0NmdjI5?=
 =?utf-8?B?SER0aERFMnVXaUhoTExTVXc3ek9LeDNYUE5pYkNQemIzemNrWmozY3ovSlRr?=
 =?utf-8?B?b09lYi9PQVFSS1JHaTFadmx3V3V4MEdKdVJqUmJhUlZaSlhzdlRYWTJwTVZ4?=
 =?utf-8?B?dDMxMlNBbDhJamE4Q2NPUEpPOW80NnlyRE1Bc1htR0ppallPTEFXZHcyOEFD?=
 =?utf-8?B?WWg4VE5DeEFSWlIvaDRwRDFYOXpFMnQ5OXg2c0FXODJMaTFXMGZ6K2k5OXcz?=
 =?utf-8?B?MmVwS1RCZUNVNDExQXBNRjA3bDh4T2VtajBkMmhUaWRUL0JtSUxVaGNRRWMx?=
 =?utf-8?B?T0pKMW1Za1VRY0VnVUZvUjFLano5SmpSTjJ0dEpYSXNneTAwNDdxeEtOVTRD?=
 =?utf-8?B?VGNRYUVCMDZURUtPVmovaTV5anVDWExGNUVudmhmV0lTUGVBNlZWZGM0WVBB?=
 =?utf-8?B?c1NsVHBDRU9QclZsZ2RrVFh3aGl6TVQzYjFHVGYzd2dTaUJTeUluOE5RN3ZL?=
 =?utf-8?B?S2N4WVkwSzRqM1ZwVFFCcjBmem9Ld2VvWkNHblJTdUFkbTdtSndjb3RZM0t4?=
 =?utf-8?B?ejNCTy91SDBoclFwbCtJNGRVdGtDMlpIWkRnZGY4My9nUVhFcWxSbHRabHNM?=
 =?utf-8?B?U2tIMXpKZWk0UW1tMWU0MncrV0p6MTN2aDVBOWdGZ011NllKRW9QZlVZQ3Z6?=
 =?utf-8?B?amxxNGRjRnVGbytGQ2NzQlB5cmVxVXIrTnJONGM1c0xPYktpZzhmVjBBQXRT?=
 =?utf-8?B?QlRrUkhMSllwSUpodmFMMmZTVTJpd3luMjhReXI4WTdjR1ZpWCsxQzhDWVA2?=
 =?utf-8?B?Tkg1RkZzbDk4L2l0ems4Sk1paVJHNW9YbUdPWFBrVFZYQ3U4QVJsRHlSbGZO?=
 =?utf-8?B?aDZPTXlkd0o3NzdYczh3dE0zOElEN1cyTVpCRXRTQ2dEMUFzbjhCcXMrWHBY?=
 =?utf-8?B?UGtDdXc2UG9nWi9QQ3FPbUJwZnVMZTdCcGlRdTdoNlQ3QXlXUGxKYUFrRm1j?=
 =?utf-8?B?N0s3am8rbGVWdGhUMmJnVDNaNjMva2UrS1ZycmFJR3JGM0JhZktla2pCRDdF?=
 =?utf-8?B?bVVNc011bUVsVXhEV1FPcUlxa1NpK0lrRUZaMWpPaEtUNjR0aEpoQ285ODlI?=
 =?utf-8?B?TFROcWROR3VRRjFFYzZjYjdmY3NkeTBDL0RMeFJnZERDVUMwb1VwUG9Cb0hl?=
 =?utf-8?B?Z0NacU9OSTVJVEEwM055T1NtKzhqemFrb0diRWp1UjJEVmFpOW10ZEwyaVZJ?=
 =?utf-8?B?dmw4YVRHa3h2ajVBWjlGVkhKbUlueHJSZWYzSlJXYnNVbms3dUVrbFZSRE5i?=
 =?utf-8?B?bXlCRktKbVI4SFJ2MWdZayt5cEMrMGNSdDU5S1l2SkJYR0QwOS9Ea2FZT1Fw?=
 =?utf-8?B?bnpua3MrNVp2L3RFR09Bc2ZIdlFYNGluN0VRK2VjRmU3d2NnK09mSTdJWTdI?=
 =?utf-8?B?N0puWHEzMU5PbTNsditBK1hPSy93T0JZWkpNek5TYUhWbkFBQy9lNmlkK1Bh?=
 =?utf-8?B?SlVtWGZmR2tMQkdHTVRYOWFKdUNuSllub1g2a3lJM1l4aGRKL0xkeklsejNT?=
 =?utf-8?B?UXFmNEFxT2hPU29XdkwvM2JkK1VjbCtKRTdFTUd6RGMzSFhnQXBXb2VoZXk4?=
 =?utf-8?B?T21lZUFTZzN5S3BNN0dnejE2OWFqZ1dUR2JzTWlIT3FMMGhtRXEvRVlHdTVo?=
 =?utf-8?B?Q3FEYmxlUFQyNmVaaW4wNHh4R3ZzL2hXdnN1YzUwNGxqYlp0UE9qQVRZR3Y5?=
 =?utf-8?B?UHpxWmt1bnRzYmJQM0hlSTVXSGZXUHpxSkpyQ092bDdvTStIcVRvN2NKUWhM?=
 =?utf-8?B?SnRSYXdlM3V4dWhsVE5LV1ZBRDFuSjJackdxblR4bWpXVVhScmlYbVUxWm5F?=
 =?utf-8?B?c2JUZzBDTXQ5M3o2b3c4YWk3N0RoRno1RUlMTm91a3RtSUhyQ2xPeUprVXRL?=
 =?utf-8?B?SnY3Q1NFNHJGaFNPUHJ5M1p6Vkp2dG1HVUZwLzA1cEhObEpVOXl0bmNvVjVL?=
 =?utf-8?Q?/GHroIdOMt438y70=3D?=
X-Exchange-RoutingPolicyChecked: h3f2PljJUsCNIILwuu3EjRCZDBC0YIncVOuUTwjTkvBe4IEj/jqkpag6uStQ6z27VHeiB9JUAmMrk3/P8D+r27xeg811MyMpwDSf8xNxRcvLxhuNMkGSCQ/SvbyaeegKUKG5XS9ImwwCwbc1MUJ/T/AdSLLRCeTIxL2JTU0jruSFbX51YphrWCa/uzncdFUvCuD+c296UizPzSFBkArb0s9qEFX7RBHWaxgajtoxby+pidtlBVqpCGsWUyT15OvllrawWNqJfHd8+7SdgxiTMHbFGZ/vzC+9lvPcohgUvH15ncjdMJ772JWD3iDYAyi5BSzv48nQ7BBthZgVrqUNfA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ed704bea-4c87-46f7-0820-08deac8f840e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 23:22:33.0689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ThGCtWnCEUEimEj7YHEle4yX/OpZ5bnk7ArdZTzLaTTCcfCxtX9Ese5yJEfHIyT6j5CSm+GB7lm5GfuSYHfvGQgQLffkLN148vaC5ctU++s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778196171; x=1809732171;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W2OdlB5G5YRXuHQSkHz0Oom2iKhaPCcSZwd6GJ2jDSQ=;
 b=g0vO5BE5M3/My9yTeQpgLnSw6hkJJcDOiZp+MjminZz4DddS7E38HHKI
 kDPkfrtGtCuGFNQrabOMTrRXnPpinKBxiPEnU4oGi3lcaxK1JNz1++l5B
 gVba4dm039MEZm1QssVNmRYEtj0eOwASx0YHNLeoURayUnak+azeWI9dx
 JknPkcywqgn8tQRvJok7oxVDlYPYmjLpAw9rsR+h+G+1rwGivzPcDLbJf
 kx2eUKPLunJRReuLXyykM4ToMOWfkRTkWoI/8jvcQCqrNw8JWwIwEhesM
 l4UNE18KNxaUWEINWUA3bLuCIrgpd7samXZkuX7IU31KXOyVDkNAQFyCl
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g0vO5BE5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
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
X-Rspamd-Queue-Id: A33514F0117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Action: no action

On 5/4/2026 4:00 AM, Sergey Temerkhanov wrote:
> Rework usage of the control PF pointer in struct ice_adapter, so that
> it is always has a consistent state, since it is global for an adapter.
> Utilize RCU for reading the pointer value and atomic operations for
> changing it. Zero out the ctrl_pf pointer when the control PF is removed.
> 
> Sergey Temerkhanov (3):
>   ice: Convert ctrl_pf pointer in struct ice_adapter to RCU
>   ice: Zero out the PTP control PF pointer at ice_adapter cleanup
>   ice: Cache struct ice_hw pointer for split register reads
> 
>  drivers/net/ethernet/intel/ice/ice.h         | 10 ++-
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 66 +++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 26 ++++++--
>  4 files changed, 89 insertions(+), 15 deletions(-)
> 

What base tree did you apply this to? It doesn't apply directly to net,
net-next, or either the tip of dev-queue for iwl-net or iwl-next.

It looks like you have this in your context:

>  static void ice_ptp_setup_adapter(struct ice_pf *pf)
>  {
> -	pf->adapter->ctrl_pf = pf;
> +	rcu_assign_pointer(pf->adapter->ctrl_pf, pf);
>  }
>  


But the ice_ptp_setup_adapter() function has other logic that has been
there since its existence?

Could you please rebase and make a v2 which applies cleanly to the
current tree? I don't want to make a mistake while attempting to resolve
conflicts for a change with this big of a scope.

Thanks,
Jake
