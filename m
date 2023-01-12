Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C71D668756
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 23:53:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 788E840447;
	Thu, 12 Jan 2023 22:53:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 788E840447
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673564002;
	bh=mVrPAyF0DthxFA+Qi6E0wLtjBR/lqODZdrsFdcQ+c7I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CdADLten/2obnLcXAOdD+VGc0dJkJX2EANmPwBFswjaMjtXsZiUfWrekK6xWP2g4b
	 /5S4kGbxWLXqKZzqerxWAszSjnOjyKdG5F7PaV+IJj0EZ6WOZuJ9rs5PYgBaMiLige
	 EZarSpoIjeRPJ/TACRi/ZJv5uKqPhOfOO82cfQK58Tptjck40Js+pfrhTEkSDFeLNy
	 dIaTb3yVBD5UgInZWgiZTF66FDcLLJhRcOummY+PUmzOqmJEOuwvS7Uk2zBfOsDqm/
	 4Nr81Ajx34V0tOlnZFd1EcTBMmFunenpWyXvUOWBlsI78/HPoRFJmzIFsFhHAUbley
	 jWWqFKdsM1PYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p3BfwebMWwec; Thu, 12 Jan 2023 22:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11B45402EB;
	Thu, 12 Jan 2023 22:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11B45402EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26DCF1BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 22:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0156E4168B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 22:53:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0156E4168B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wsep6-lD7T8i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 22:53:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DB4341527
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DB4341527
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 22:53:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="303547097"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="303547097"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 14:53:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="635557869"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="635557869"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 12 Jan 2023 14:53:13 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 14:53:12 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 14:53:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 14:53:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 14:53:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BlBkqlZZG7nD8tZca4+KXBiA7EPFN6Dkm8ATToJZOejg1xtE+9rD1kdtzwlKX8HU6cyt5Sv6Hygb2w4Zi/eO5rD0NuMvqADKoeOF+bhwpCGL5VA71gB62DssvspIiNM8NjZ1xKU/ONtA9AV0yMSjB+G+y2ZuEMbVndCKjpLodD2B5glL9PDZSUxT2X4GhmGnFTQFUD/fSKMZmWinqIiGcmezhuWFaHV+2AUgdgzI1VZ4eeCG5bc/iSCnSUkkeV4uNH4tU7ftaL7O3E4MBFE6Nhq0a8CZ7lZj147ht0+W5LUbW5SbKXHHCvTUgVFMoeza2AsagpYtX3G7k6IJczrs+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQrJghRVU8sZlNSVa32mwoTYZTU0vQQMLVyrDAGonbo=;
 b=l2hJeWLyNDTcHWUGpDv/TyE53nmIxEgFN+pFVXlzPvP0R7GCN12LCRDQzUasmRMAT4vg9RQUzSI+ds1oHuEOvtMeM8lOQZUZH/0Zt063cSJv9IQfqsLzU7qp+xnZ7M7hBJ/DfTI3IAwQGp2xU4fO8PCdwThYvNl9K+qi4aJX3SFFOJmkoVA01+oUE1MCPG4nyUTqdpZNUcomUYVKdaHEMyn1KObhsFnDBLOlSoQtFpe/41wRbDFFNqqGnE1ySdDvV9x4OTKDMK6kCqxa/a+4z46xBL2f6aHBPJC8mXyboV/0n7ob7F0gL8uNVoY7Xkm49//IfM+NYPUZgTF7NXfoQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by MW4PR11MB6933.namprd11.prod.outlook.com (2603:10b6:303:22a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Thu, 12 Jan
 2023 22:53:10 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7%9]) with mapi id 15.20.6002.013; Thu, 12 Jan 2023
 22:53:10 +0000
Message-ID: <06ad56ba-0c55-d286-f565-aea63504c73c@intel.com>
Date: Thu, 12 Jan 2023 14:53:07 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
 <20230111191906.131-3-paul.m.stillwell.jr@intel.com>
 <Y7/VAvhHiCmEcdgf@localhost.localdomain>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <Y7/VAvhHiCmEcdgf@localhost.localdomain>
X-ClientProxiedBy: BYAPR02CA0006.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::19) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|MW4PR11MB6933:EE_
X-MS-Office365-Filtering-Correlation-Id: 40583242-7bf4-4951-cabb-08daf4efc6f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DkmRo6aeFWYIi3xK+wvloW+F7m3Hl+KxOZ48Kq3VGFYdCxuCCXuvCYIw2S1da9/JQuvgrXzBltA5WZLJtlr1hnGpvgJ1SRzMBwsEoQNrH+WYvu7XXWPqJlja7PzfWR5bEIcmpnMPrt01geOtceaMCjd/0CX4fwvEz2IcjYo8XbR4TIIZDIfS7/pPW4QQNQeuuZ7ZDPmLiXvsjrcofM66f5M3khd6GogybVT3cC9MC6WuNl6K4Fmak3MXBPBGUHMPp1NVVgGePVTg1BBWHkdZUfm4PpsMc+87g7MryCVGLrYK9EIoCtPx8gw9gAbkYLr8lCzUqZDgCVqIsxXHG9pYMu55LP0wDm5Ti+jE9MVwKN3JfxHOc+6bk1YEmSjyFfw6qd55r2F/aUG7fNSp7CVfXi7eWCrBeKIYukUvf3JmDnb80utYgTCKh8Ccz5NUa0e5FtvFSZWyjZijP19jmawFZVmg9aLNeFzu12eLiG1ve0NjjdXpX4CV9Ew/37cT9g3A/8fFhA7VvxC4A2sIZCSwpgxPYsrhMuFm1IFLJZ6DpQ1PT8CSvPfqW5tQIwVahMlr9gir9B/GjfwktcB0zMoOcOS3NESZDDfwOblG0Yqt4lCec0v58tOehkqxs2VaOCX8UiYvgJPMer5h/0rJ60DDsDqMEJbB/Y6DAQiZR8gsuf4W2r5hdkVbJ/8IUxrCGLehEO5yplYSZ5UNZXeKXXaYFdy7QAiJI8EQMQj6OiLkyOXqo1TTRscsglQXn7s8FeH6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(396003)(366004)(136003)(451199015)(36756003)(31686004)(86362001)(83380400001)(66946007)(4326008)(66556008)(8676002)(31696002)(41300700001)(66476007)(82960400001)(38100700002)(6916009)(53546011)(186003)(6506007)(6486002)(26005)(966005)(6666004)(5660300002)(316002)(8936002)(2906002)(478600001)(2616005)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnlucGJVVUdEZ0RiYVp2Zlc3aTAwOUdDQlkvc1c1WkppbVlrQjdnWXkrMmhJ?=
 =?utf-8?B?bE1jR2JDcXZUaU93ZTZvWEFZa3RIMmtCVFU5RE5FYzMyK2pISzN1RTZJZEtU?=
 =?utf-8?B?ZHZjM3EzZHd5U0N3T1FMZ3MraVNjUXpkZzE3Z3ZUMmR1SkZTazBiKzN2NElM?=
 =?utf-8?B?cHFPdlhTWlhCOW5EWndGRVltcjhHNWM3SjVhQmxmUW4zUzYrWXI0MFZMTExh?=
 =?utf-8?B?ckVUZGdybndoa2NMeDRrc0gvS2ZkTFN4L1ZodHBMcGVHZExOOFhhN1I2Sjg0?=
 =?utf-8?B?SlRTM1hCbkFlU0IwaWRGQXpZdUxIYnlBUEhIbjVIbTVsQkV6TWpVbHVQNzlP?=
 =?utf-8?B?V29VY3laUGRYclJhN2lTeEVXL09EMFowRzdVdGgzSFIrUWNyYWpSZytjWUhE?=
 =?utf-8?B?czRma0tLSE84RmVYbWFVeWJUN3dBZ01rSytjcTFVdTM4QnhJTm1NVnp6RUE5?=
 =?utf-8?B?eWZjY3MwNWlsMFVabUc1T0ZJeGhTM1lxSzFiaFJyS1l2K3k4d0hacEM0RTJF?=
 =?utf-8?B?MUIrQ3RtQWp3RElYdmNrQ2xKOEhUWnpVL1poQkFOVk82RWZQeCtCUkhsUHRD?=
 =?utf-8?B?dTBOUjczTDNORTkrVVFsMFpzZkZ3cmlGSFNGSWVPS2ZaK1V4WWRRdTRteFhX?=
 =?utf-8?B?bjlRNzA3emVFTm9SYWtla0Y1T3lrTVdsRFdXcDc1T2tnd1RiZThlWEdNWUJn?=
 =?utf-8?B?MFhKcWwrMHVOWTJkQmVScUlLQmtlcld3RmZ0VnMwWnZ3bUJRSzV3UkYzSnN5?=
 =?utf-8?B?STVxWjBiVWFhckJnUHNkcXlLVkpFcFo1Vks3MzUrdmpGOWhORHI4YU8zTUdD?=
 =?utf-8?B?dlZsL2MwbDZ0NEMyVkVpcW0vQU5MQVhoaG5OdmZ2dFloMkdsZC8vbTh4NVBO?=
 =?utf-8?B?bFo4RlFYWVNuUjFtb3lDeTFRK2Z4RWtVY3VEUEZaWnV3ZnRYWUxrbzRuT2Yy?=
 =?utf-8?B?dXByUkVjTUNRWTl4NUhEWkJaejJwaFh5T3AvQjZIZXRBdURpTFc3azJtYzNX?=
 =?utf-8?B?N2k2UkNNRHRSSXBReUdjcmE1a1IycEFPcFVTRGl4UWoxUW1KckNaM2ErR3Q1?=
 =?utf-8?B?ZGdOZXBpL0YwaTV6V3k2MUNhNEJQeFVNUWkxN0M4WitTMCtQQ25KWEs4cldn?=
 =?utf-8?B?NlhkcnUvbkRRNXh0TWZ2bnNKOGdFdmNFejBPWjBFOTlBRzFVWEVZdWNtYlcy?=
 =?utf-8?B?NjF0WGtmZjl6by9OU3hiRnlyVzdjdG1RN0p0SE9zRHZ4UTZHY3ptdVYzaExN?=
 =?utf-8?B?dGVBdXdKeHZwTkNlcUI4VlJ6OXBHaUpqaWNQVUZHeG5md2huRzZHbHdQTHFr?=
 =?utf-8?B?aGZaWlg5bGtZS21WK0F4Z21OZWVaWWNpTDZWT29QRWJRaHpBUHE2bDI3a2lL?=
 =?utf-8?B?aFM0R2R1R2dDQnhXcHRoMUNUU29ZenFtWWN1MnZOd3plNXF0ZHV3TmZqNzFt?=
 =?utf-8?B?Zlg1NHlYUE0vKzRYZ0FtT2YyNGlpWXhndCsrVjhDSTRVVWZCY3VjSjY3dVNU?=
 =?utf-8?B?cmlmeFdsQU1MaC9NeWJWU2xIUGJsZWI4YmwrVHFRSDIvSFFzRndsOFhIWWdi?=
 =?utf-8?B?V3hxUFBsZXNua3JsRFhyT09hK0dmazQ4WkFPSFdta2lxRkpTcnB5NWlpTzZm?=
 =?utf-8?B?RGRTbjh5RDF0cW50SE1PM2syZzZGdlA5VS81Lyt5Q295dFlrTmlidHZmNTFS?=
 =?utf-8?B?Y1VRQmVCN0p6ekpGVktBZTFUMCtkTTZtTjM4YlRYZjVKYkN5dnJrVkpBZzZt?=
 =?utf-8?B?MlhGWE56U1RMekJKOHgvamF5RXF3WmluaEtFMEdyTzkvY1M2bFlDOWVyY2pR?=
 =?utf-8?B?NXJLaEdBeGJqWGNOaXhQbE52VXR0dUs3YW96ZC9NSXJ0R2p0ckp3b1Z3T211?=
 =?utf-8?B?clhhTG9yTTA2WnQyUVo2VFlxL0c0a1AvU2FwYW5KT05nczNTQnNHc0laNzhp?=
 =?utf-8?B?UE5mYVN0MnUrNEVITG9YZS9iVnFNR2JHb3JNTTJiR1dvYktuOWRUNU10U1NJ?=
 =?utf-8?B?V0V2L284cG5uOWltb2cyb0VKZlVKM0ZKUEJZb29hNjlseXU2Q1pJZFhVbXIv?=
 =?utf-8?B?OEQ1NDZXOENHOXNlbTNucjhLaGpRbjc4L0RMb25xUkhDbElVNHhZWGo2cVBW?=
 =?utf-8?B?eTl2NkYzV2g4akhhUGJHUW5xZm9DcTcrODIwOHVSSlNSbVFzYkJwR2J1V0kw?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40583242-7bf4-4951-cabb-08daf4efc6f4
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 22:53:10.0669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gD+BXvzuxBIlbCmaP3UzOQ5P0S/LFAzxlOOyW/qQ8yInmmQsT0rlpNFin2yCXJ69DiVpSl1IMiBIyKzEXLVWPyikiqRwlotwvHP0iaJOV6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6933
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673563994; x=1705099994;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cfVAKTNcKOO5hcWccP9mIxUuyMUnldwnrMhk23IPaRs=;
 b=erBs/yR3Y0EYiKxS9CP3X90D1tjh3ap5heShfbac3IeGk2R1YAO5zHVI
 ErWhoBhbj+yubgERYiV5gPMpVogtUYBi/yZrpXOAgS+3N1cbAB0ZQFYG3
 uah9AEoNr3PMVs05JVTnD/4efQlhgJnr95/UMsx91XrkzYUQaPNDPvSjf
 whvZQ96RwpnqOt+r/TLPyXXb75tWSm4WkzaLUNFheucW9k+m8zIa8KMAJ
 YQGJjMljY1yduMo42Q1L/k1gCt3vB22jzZeLFvhGCYKD0jDVdWMfWdjcu
 StvSHmgh3+S0mrePgcG33Tguvv+YQSO+Fr4QNpsDNoeF2BkDG6U+eeZH6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=erBs/yR3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/5] ice: enable devlink
 to check FW logging status
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/12/2023 1:38 AM, Michal Swiatkowski wrote:
> On Wed, Jan 11, 2023 at 11:19:03AM -0800, Paul M Stillwell Jr wrote:
>> Users want the ability to debug FW issues by retrieving the
>> FW logs from the E8xx devices. Enable devlink to query the driver
>> to see if the NVM image allows FW logging and to see if FW
>> logging is currently running. The set command is not supported
>> at this time.
>>
>> This is the beginning of the v2 for FW logging.
>>
>> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
>>
>>      pick bfdfb2dc6192 ice: add ability to query/set FW log level and resolution
>> ---
>>   drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  81 ++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>>   drivers/net/ethernet/intel/ice/ice_devlink.c  |  73 ++++++++++-
>>   drivers/net/ethernet/intel/ice/ice_fwlog.c    | 118 ++++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_fwlog.h    |  52 ++++++++
>>   drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>>   7 files changed, 331 insertions(+), 2 deletions(-)
>>   create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>>   create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
>>
> Hi,
> 
> Great changes, does it mean that after applying the patchset we will be
> able to for example dump whole switch block?
> 

I'll provide an answer but I'm not sure I fully understand your question:

The switch block is part of the FW logs, but there isn't (currently) a 
way to specify just the switch block. This is because there isn't 
(currently) a way to handle hex numbers in devlink as far as I can tell. 
If I'm wrong then feel free to point out how to do it; all my testing 
has not worked. We need to use a hex number because the modules for FW 
logs are all bits within a 16-bit value. It doesn't make sense to me to 
have the user take some hex number and convert it to decimal to specify 
the module we want to log so currently we enable all the modules. So we 
will get the switch stuff in the FW logs, but we will get other stuff also.


> Looks good, only cosmetic comments.
> 
> [...]
> 
>> +
>> +/**
>> + * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
>> + * @hw: pointer to the HW structure
>> + * @cfg: firmware logging configuration to populate
>> + */
>> +static int
>> +ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
>> +{
>> +	struct ice_aqc_fw_log_cfg_resp *fw_modules;
>> +	struct ice_aqc_fw_log *cmd;
>> +	struct ice_aq_desc desc;
>> +	u16 module_id_cnt;
>> +	int status;
>> +	void *buf;
>> +	int i;
>> +
>> +	memset(cfg, 0, sizeof(*cfg));
>> +
>> +	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
>> +	if (!buf)
>> +		return -ENOMEM;
>> +
>> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
>> +	cmd = &desc.params.fw_log;
>> +
>> +	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
>> +
>> +	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
>> +	if (status) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
>> +		goto status_out;
>> +	}
>> +
>> +	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
>> +	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
>> +	} else {
>> +		if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX)
>> +			ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
>> +				  ICE_AQC_FW_LOG_ID_MAX);
>> +		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
> Maybe:
> else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
> 	ice_debug();
> 	module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
> }
> We will save one indent, but it is cosmetic, so feel free to ignore.
> 

Will change

>> +	}
>> +
>> +	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
>> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
>> +		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
>> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
>> +		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
>> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
>> +		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
>> +
>> +	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
>> +
>> +	for (i = 0; i < module_id_cnt; i++) {
>> +		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
>> +
>> +		cfg->module_entries[i].module_id =
>> +			le16_to_cpu(fw_module->module_identifier);
>> +		cfg->module_entries[i].log_level = fw_module->log_level;
>> +	}
>> +
>> +status_out:
>> +	kfree(buf);
>> +	return status;
>> +}
>> +
>> +/**
>> + * ice_fwlog_set_supported - Set if FW logging is supported by FW
>> + * @hw: pointer to the HW struct
>> + *
>> + * If FW returns success to the ice_aq_fwlog_get call then it supports FW
>> + * logging, else it doesn't. Set the fwlog_supported flag accordingly.
>> + *
>> + * This function is only meant to be called during driver init to determine if
>> + * the FW support FW logging.
>> + */
>> +void ice_fwlog_set_supported(struct ice_hw *hw)
>> +{
>> +	struct ice_fwlog_cfg *cfg;
>> +	int status;
>> +
>> +	hw->fwlog_supported = false;
>> +
>> +	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
>> +	if (!cfg)
>> +		return;
>> +
>> +	/* don't call ice_fwlog_get() because that would overwrite the cached
>> +	 * configuration from the call to ice_fwlog_init(), which is expected to
>> +	 * be called prior to this function
>> +	 */
>> +	status = ice_aq_fwlog_get(hw, cfg);
>> +	if (status)
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
>> +			  status);
>> +	else
>> +		hw->fwlog_supported = true;
>> +
>> +	kfree(cfg);
>> +}
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
>> new file mode 100644
>> index 000000000000..3a2c83502763
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
>> @@ -0,0 +1,52 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2022, Intel Corporation. */
>> +
>> +#ifndef _ICE_FWLOG_H_
>> +#define _ICE_FWLOG_H_
>> +#include "ice_adminq_cmd.h"
>> +
>> +struct ice_hw;
>> +
>> +/* Only a single log level should be set and all log levels under the set value
>> + * are enabled, e.g. if log level is set to ICE_FW_LOG_LEVEL_VERBOSE, then all
>> + * other log levels are included (except ICE_FW_LOG_LEVEL_NONE)
>> + */
>> +enum ice_fwlog_level {
>> +	ICE_FWLOG_LEVEL_NONE = 0,
>> +	ICE_FWLOG_LEVEL_ERROR = 1,
>> +	ICE_FWLOG_LEVEL_WARNING = 2,
>> +	ICE_FWLOG_LEVEL_NORMAL = 3,
>> +	ICE_FWLOG_LEVEL_VERBOSE = 4,
>> +	ICE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
>> +};
>> +
>> +struct ice_fwlog_module_entry {
>> +	/* module ID for the corresponding firmware logging event */
>> +	u16 module_id;
>> +	/* verbosity level for the module_id */
>> +	u8 log_level;
>> +};
>> +
>> +struct ice_fwlog_cfg {
>> +	/* list of modules for configuring log level */
>> +	struct ice_fwlog_module_entry module_entries[ICE_AQC_FW_LOG_ID_MAX];
>> +	/* options used to configure firmware logging */
>> +	u16 options;
>> +#define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
>> +#define ICE_FWLOG_OPTION_UART_ENA		BIT(1)
>> +	/* set before calling ice_fwlog_init() so the PF registers for firmware
>> +	 * logging on initialization
>> +	 */
>> +#define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
>> +	/* set in the ice_fwlog_get() response if the PF is registered for FW
>> +	 * logging events over ARQ
>> +	 */
>> +#define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
>> +
>> +	/* minimum number of log events sent per Admin Receive Queue event */
>> +	u16 log_resolution;
>> +};
>> +
>> +void ice_fwlog_set_supported(struct ice_hw *hw);
>> +bool ice_fwlog_supported(struct ice_hw *hw);
>> +#endif /* _ICE_FWLOG_H_ */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
>> index 126605b7eb3b..1284fe8d78f2 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_type.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
>> @@ -17,6 +17,7 @@
>>   #include "ice_protocol_type.h"
>>   #include "ice_sbq_cmd.h"
>>   #include "ice_vlan_mode.h"
>> +#include "ice_fwlog.h"
>>   
>>   static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
>>   {
>> @@ -859,6 +860,9 @@ struct ice_hw {
>>   	u8 fw_patch;		/* firmware patch version */
>>   	u32 fw_build;		/* firmware build number */
>>   
>> +	bool fwlog_supported; /* does hardware support FW logging? */
>> +	bool fwlog_ena; /* currently logging? */
>> +
>>   /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
>>    * register. Used for determining the ITR/INTRL granularity during
>>    * initialization.
>> -- 
>> 2.35.1
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
