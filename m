Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8B38136F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 17:53:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4385983CEC;
	Thu, 14 Dec 2023 16:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4385983CEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702572801;
	bh=ndEOuYUUJzTH4mc3Va+2/WabIPIwIOmNpbJZnU7ycXg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cdeECFVspe5LhpSuYg8O+H1Q+UQo4CzAcEDiSSpMuf6YN1TPs9tu0QTEbHaNGhrch
	 qqDQVBqEwxnnaXW5/3cnk6EQCIvdDcLYpHes0YfeJheUA8yz2IaZwF7zlVj3ifWCyE
	 WznUxaXBc1iergzHNc9o0VaaexMiAnDybtSPkqTFjtxG3RU7D9SLxMEy6ps2MkP7fI
	 fZyLKA1LTqCpo2v1rj7GA7hsskxoMa1QVyD5J68419jF/ARKWVHN+X+d3xm6BJc5z7
	 WV7YMYVQfiSYhBJKV7W1dkfGtU2dEGtVNORUfxNN+CKjbrznPA+Zl2uKVZ/c8sof7l
	 xLrhgajV/xKug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PYgU47O7JtU6; Thu, 14 Dec 2023 16:53:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EAF483BDC;
	Thu, 14 Dec 2023 16:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EAF483BDC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A305B1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 16:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78401403C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 16:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78401403C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jg3w7u1cL28D for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 16:53:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B0114010D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 16:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B0114010D
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="375303855"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="375303855"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 08:53:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="844780191"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="844780191"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 08:53:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 08:53:10 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 08:53:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 08:53:09 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 08:53:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gk9cLFsuKtqd+bx283XRftG5G62axhMIxLxWheKfi1iEbGJkR+fpnwvnkuygVCx47hmhWRIPaHs0P1BNeymsX0wAYX4qA3GamUs31Hz/sQowMmroGnOJM9+nYvNg3x0nM+tUc/0zuWF1okG1P+LXEp1hpN/W+G6ILFFxGbop2Uqf2LZSpgAmYkWZ36fuUH+7FRoifehdJjc93ssQOVoq9+rbhIn7A0gxQlOZlB8YLJHFkWhiDK5PfEqf13RERgzq4jHtYwvyrhEofJwA/DF5i4E0i7pCcIwYno49Ru/En6gtpIWepBAwFwQJmL3Q/dUfHULDiU1WgmK07BBuoT40hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j/o47soJqTH0+7JCTljAnFcGwwy/2bjyFyQu5E4B4Fw=;
 b=W2LPdLbD2P5hZtOe8n6RfTxEsJlyXWWCWCjEaUYih8gGtZClvSY1sptz1dlPVnzBBXOO2KR9g7p5pgqgeWAS+a3TLN8evABvUafxEQYydNRtdUf0VxDRglMD43WHxFV9va+UhQ0bg34OoUZf9OQqS4nckZ83hmjTBZRS2fc/98HETUg2E3lHg1si0u+HFzPvKpQm21gi7+1zz0a3OaeJpoLwK08nCkfnoa0ZIwKosc6fecCB2SaIBcSb/ROqGemCopwmj1PIDa2xta3IlUZli0HOp1zYuefyLCZQuUWvkfL+yzwlQ95ZE86Qqd3+5ET2aklhKok0eUQ+Xlt1GfphjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 16:53:02 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7c0f:4cd6:d4e0:307a]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::7c0f:4cd6:d4e0:307a%7]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 16:53:02 +0000
Date: Thu, 14 Dec 2023 17:51:08 +0100
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <ZXsyfFHcFnaqeWe+@baltimore>
References: <20231102155149.2574209-1-pawel.chmielewski@intel.com>
 <CADEbmW03axMX30oiEG0iNLLiGYaTi6pqx9qdrLsR7DSC-x-fyw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CADEbmW03axMX30oiEG0iNLLiGYaTi6pqx9qdrLsR7DSC-x-fyw@mail.gmail.com>
X-ClientProxiedBy: WA2P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::25) To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|PH7PR11MB6007:EE_
X-MS-Office365-Filtering-Correlation-Id: cfa670e7-d24f-4218-c444-08dbfcc52274
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O3Ctb5gbhNoKnoI2s8o0Et6s9EsT+2YEPnktKBHhWpAq10kaqOv3PHolAAAcFgaQyfqvFs1GB79o8qM2Zma/sINCQGM/37YzxYaBQTzTAo8T3/yBBJOm+sgzgfXoRkHdXQQxJkM5M9ay8V++J7AdDPhWY1Z6fV2i6fqY/kQFmWH7styyoVWZpJkIaf082/4PHyXUuaAqyxqLtwgEps7YwWcmRMZg/Sjdzz9Q6rWBFVJwSC3XtqyffBff6pGLxparbp9owE98YprpMzywhPkA6iLJU8kBMBO6RDuYdPcqNN9fpx7Mqx8osfiJmKuqKyVpdFUyXN9F90pnVLFtl2xZFR4aJcoYlAqhw5eq9oDWzd1NlvzEQqsaPy1Ge38l0cO4VXWyvHfpkG1XNiL6Niy4SSIQbm1q9FF8+Jez720R8nU029VXa8RmZ5u1hxkxhvydAqelXYrthEuD0cxRFK2mTuQ2VJ9y84+K/f0F2tBlyuswGPiLsh9uFQKmzoK1lg+zq9QAPX2SayNahv2gnPWdr9Yw9OGVRTYrI1ygoJptOiMk1hZgO0YZA2UTLV9XArPW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(346002)(136003)(366004)(396003)(39860400002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(38100700002)(4326008)(8936002)(2906002)(316002)(83380400001)(33716001)(82960400001)(8676002)(5660300002)(44832011)(26005)(41300700001)(9686003)(6512007)(478600001)(6486002)(54906003)(6506007)(6916009)(53546011)(66556008)(66476007)(66946007)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkhnczNaaWxEMkhGTVk5dEJid3l2WGRtZE5jZzBLUW54ZGcyOWtob2RleHA3?=
 =?utf-8?B?U1E4aktVVGVPSlZYSzE2V0lkNmowd3BkUE95clFWa2RyUHBTcnlqRDdiK3Zo?=
 =?utf-8?B?c2FVVldnYWRkQTBhV2ZrTSt0TnRsZTlpQmpXVnlkOVY2T0k1MG8zc1hUZ1Uz?=
 =?utf-8?B?Z0lYUFpIQWpvN2JST1MrVFR6Tlo3U3kraEdpNzBXVUdoZUhqSUp2R3Z2UXdT?=
 =?utf-8?B?ZnZUTy9WM2wxdUNiVEhzck5GeEg3NGR4MWxBTS9ORUY2ZVV3dHFlSnJyS0RN?=
 =?utf-8?B?ci9PZjVCbXFMMkVXZTNCcVBVTVprYlVhYmN3bGZqOGM0THB6VU5VR0YwRXVu?=
 =?utf-8?B?T3pYMjJCSVlDc3d0STZMbWs0RUN1SUMxNVVidWtCWXFjUngvQ08xN3g5WjFU?=
 =?utf-8?B?V2VZeS8rVGJ5eWJFa0JXM2NIa1BTMUV5dG04ZlBHTXVHM2Y2YkUvZWxKL29O?=
 =?utf-8?B?M3hOdmhRUmVseEo3d2l1dEd2V3BhUlhpWUlQTXhCQkZHRjFQcjVhRTlKYmc0?=
 =?utf-8?B?eExaRUhtNkppU1R6VGVaalhibkxZdXpiYmJKd1ZRVFZxQS9yUllWYWdPbDl4?=
 =?utf-8?B?VkcwdWhXcnZGaFowRzgrQ1IzYXJEU1cxQmhrYVh0M2hrdXlTVWRwSjAvMXBi?=
 =?utf-8?B?OEh2QzA4WHc4ekFGV3ZyLzRQdDFheERVSytORk93eEdYWkhOS3FYVHo0RzZn?=
 =?utf-8?B?QVUxbEdOMjcvek9mRTJHREp1RjZSaXhjOVg4Z2tjNXlCamRHSjBZYVFPZFNu?=
 =?utf-8?B?WEFJTTdiRGVJWEtWSEpnUHdHNkZXOGVqbXRyNFROWFFselJTb2tETENxanl3?=
 =?utf-8?B?emUzbnpObXhYSGk3VDJUL01JWGxxU1lpcko3K0taSThEK0lVTkFxVXBuV3B3?=
 =?utf-8?B?OHViQ2pIM1ZQcng5aGpldmFTOW9jMGx1akNXK2FiRHpSVTJxR3JULy8vSGov?=
 =?utf-8?B?ZDZZU3VrWjRlMEJ5akpvM21neUdFMkUxcUx1TVd2WHVsVGFRNlhiWDYyMDVp?=
 =?utf-8?B?TCt1NG5jOTBrRk5LR29KZ1RZdzF1NXo1V1R1VE5DVHl6aWNPd0dhR3BlZ3BN?=
 =?utf-8?B?ZHJ3ZjdHRXZkendwYi9manJmbmE0TVJIWWZha2FHVEdWN3VvMnFEWEJDdWdy?=
 =?utf-8?B?TThZWG82cGlieHM1VlBhOE9jalJRSy9JYlE4SVgreUJNVGRkOVBwbFh4V2lv?=
 =?utf-8?B?SzRYQlpSczc4a3IyMm5TS0J4NGJpa0xEY3NLcWZHNG9hMDBMZ3hyY0c3SFJG?=
 =?utf-8?B?NnhGTE8wM2FHcXZtc2Yycy9DWWZzb1gxVWl2SUFEVysvMGw5cWtSY0FacnZh?=
 =?utf-8?B?K2pOVUt5aU1mMmpDV3VMSmVHL2dHVW5ad1BHMEhpTnd6SzFLcXZKRTZESkJh?=
 =?utf-8?B?VnFRQVQ2VmI0RlhvWXRXMWE0cnI1MGhvNHltdGQ3bjNld2pHNDFsS1F6SDZJ?=
 =?utf-8?B?TGs4c1ZjSFNXWktOcVAzazVMT1JmdmVKejNpSXhXRnNEd2hBZXBkQUdHQlRC?=
 =?utf-8?B?WmdJS1Nvck9oYllRYTIyY2MxcXJqVWR2NGlqZFV0a2thQU1HWlF5Sno4cWsr?=
 =?utf-8?B?VDdUQTZTL3dHd1k2R0JnVWI1LzNYbVBsajlPMFpBQVQ5WS85VHlxanB5aG1G?=
 =?utf-8?B?aHJNdFBDVjZZWm44b1ZvL3BZZzBhWVo0RVdEQlFtY01sUVh1OVpxQ2xackZa?=
 =?utf-8?B?T20ya3o0SDA1MlNDZW55U05GRFR3c1hGMzNYQmkrUjN1NXB4Sk1RUjRGbEI1?=
 =?utf-8?B?NGJGOXlUSk1ZdzBOLzgrQXZJOXFHUm5nVGdWRzJyZ0pLcFNySkk3clBVQ0Fn?=
 =?utf-8?B?aEdvamVxa1VZUUFveE1LQUJzcldlcHdJOVEveWlJUnpTcnJzbFUxNEVVU3U1?=
 =?utf-8?B?bitVRWtxYWdEdG1ac0s2VEgxYVdBeC9Lby9iKzF6RzFTTVRwajJMWlUyUFoy?=
 =?utf-8?B?T1hwNFJLREUzelNreXZraEZsVFhsODdPTU1iLzNPeWo3L0tNZDVDZDJHUm9N?=
 =?utf-8?B?UTZDdUdCWTh1MVk1cDhJT1ZDdGp4dno1a2FsMEFCejB3dHU3dHZuRyttOEla?=
 =?utf-8?B?aGRXR1dVUGpMRkY1MnNLSlQyY2Q1cHJJaDVjbTJFdmR0L3BsNGdNN21oQXMx?=
 =?utf-8?B?VjlWRDdSa1BWbFp6VDNJdUkwSGNiSGIxRkZ1SjJHQWh1MGRDQThLWWNieks5?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cfa670e7-d24f-4218-c444-08dbfcc52274
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 16:53:02.5118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DY9ZvmqsKc8z8J5k8ZF/f/BxbxPkKGKUj+/GxgK/Q6GFdCxyPVSF1nBaQV4dR7XhUBZtiDOLOL/LujWb58faFxOzchc84A1N/cO6BBOR0yc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702572792; x=1734108792;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=GDQKT2agmerywj9jWojH1O8+CRnBro6qh0/zwFtt6sA=;
 b=HRSLuwx7YGgvFL/dzQ7A/V1Hi5DkoIDYkUQjcSndQAx1E7mj+3117jdF
 bXUljOuyQ5yscjEuOa9MhYPGlo4PFX75zvgOWgtfYW18vvannpzEn476S
 TYhBBinOvCkC5ci45eZKZ6FUjYa1buq3UePinLO28gfiiNS73rrVsM+0Z
 H69SUL6W06TBFgZqbEEZaROeKoaN3Z9PuZwYsdiGIG03bJPO/96lnnAk9
 iDhk68gJ8TsPpB7oU254t7BDfqyprTVpMM2PY3TUM+DR6FV6Fn7fTU3bQ
 V6iwWTWO0Q9MtG51BBa5w6KwbODy/xBsirQgZKXQVMOZHQRVhkEPaUYnf
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HRSLuwx7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Reset VF on Tx MDD
 event
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, lukasz.czapnik@intel.com,
 intel-wired-lan@lists.osuosl.org, Liang-Min Wang <liang-min.wang@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMDk6Mzc6MzJBTSArMDEwMCwgTWljaGFsIFNjaG1pZHQg
d3JvdGU6Cj4gT24gVGh1LCBOb3YgMiwgMjAyMyBhdCA0OjU24oCvUE0gUGF3ZWwgQ2htaWVsZXdz
a2kKPiA8cGF3ZWwuY2htaWVsZXdza2lAaW50ZWwuY29tPiB3cm90ZToKPiA+IEZyb206IExpYW5n
LU1pbiBXYW5nIDxsaWFuZy1taW4ud2FuZ0BpbnRlbC5jb20+Cj4gPgo+ID4gSW4gY2FzZXMgd2hl
biBWRiBzZW5kcyBtYWxmb3JtZWQgcGFja2V0cyB0aGF0IGFyZSBjbGFzc2lmaWVkIGFzIG1hbGlj
aW91cywKPiA+IHNvbWV0aW1lcyBpdCBjYXVzZXMgVHggcXVldWUgdG8gZnJlZXplLiBUaGlzIGZy
b3plbiBxdWV1ZSBjYW4gYmUgc3R1Y2sKPiA+IGZvciBzZXZlcmFsIG1pbnV0ZXMgYmVpbmcgdW51
c2FibGUuIFRoaXMgYmVoYXZpb3IgY2FuIGJlIHJlcHJvZHVjZWQgd2l0aAo+ID4gRFBESyBhcHBs
aWNhdGlvbiwgdGVzdHBtZC4KPiA+Cj4gPiBXaGVuIE1hbGljaW91cyBEcml2ZXIgRGV0ZWN0aW9u
IGV2ZW50IG9jY3VycywgcGVyZm9ybSBncmFjZWZ1bCBWRiByZXNldAo+ID4gdG8gcXVpY2tseSBi
cmluZyBWRiBiYWNrIHRvIG9wZXJhdGlvbmFsIHN0YXRlLiBBZGQgYSBsb2cgbWVzc2FnZSB0bwo+
ID4gbm90aWZ5IGFib3V0IHRoZSBjYXVzZSBvZiB0aGUgcmVzZXQuCj4gCj4gU29ycnkgZm9yIGJy
aW5naW5nIHRoaXMgdXAgc28gbGF0ZSwgYnV0IEkgaGF2ZSBqdXN0IG5vdyByZWFsaXplZCB0aGlz
Ogo+IFdhc24ndCBmcmVlemluZyBvZiB0aGUgcXVldWUgb3JpZ2luYWxseSB0aGUgaW50ZW5kZWQg
YmVoYXZpb3IsIGFzIGEKPiBwZW5hbHR5IGZvciBiZWluZyBtYWxpY2lvdXM/Cj4gU2hvdWxkbid0
IHRoZXNlIHJlc2V0cyBhdCBsZWFzdCBiZSBndWFyZGVkIGJ5IElDRV9GTEFHX01ERF9BVVRPX1JF
U0VUX1ZGPwo+IAo+IE1pY2hhbAoKSW4gc29tZSBjYXNlcywgdGhlIE1ERCBjYW4gYmUgY2F1c2Vk
IGFsc28gYnkgYSByZWd1bGFyIHNvZnR3YXJlIGVycm9yCihsaWtlIHRoZSBvbmUgbWVudGlvbmVk
IGluIGNvbW1pdCBtZXNzYWdlKSwgYW5kIG5vdCB0aGUgYWN0dWFsIG1hbGljaW91cwphY3Rpb24u
IFRoZXJlIHdhcyBkZWNpc2lvbiB0byBjaGFuZ2UgdGhlIGRlZmF1bHQgYmVoYXZpb3IgdG8gYXZv
aWQgZGVuaWFsCm9mIHNlcnZpY2UuIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
