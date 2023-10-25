Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 090217D7290
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 19:44:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4289281F0F;
	Wed, 25 Oct 2023 17:44:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4289281F0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698255868;
	bh=9iaDewp/Ma+eCj95lcDlTWWVAgH0bfzyOpvPCdWRivA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NJpFEKDcHgIFInugJLqhUG7VU25pvzTRw4TdQ+rvw46u9phgyzN6t+TLOlz8IZEWH
	 eboscsElBd5Wez4jrKkQ2u7oOkdZ4o0Wr53Bikul4MxLbI9g6tsCiqApDxkZw3EFgj
	 vdbp/HBctoHszMfWl5WGrfmEHsp1Pbo3IOHfPPh6RnnL33rcJ8Szs7N1fbsEjATmD5
	 nnxo4lEa5HCnkXcAqWpz1kEYdrhwEIUpw+fFrLkPjv98rQoAbOKKv8xVDasQMFnGiA
	 d6OJvji6vFDpZCs4zgQdBL0zLRbpl77xLLYY4dB+6SHbqJmeRzMAdtvfHPW06GCk9N
	 JG9jSYNPzo5TQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3tyVSQ-1ECz8; Wed, 25 Oct 2023 17:44:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE03E81EE1;
	Wed, 25 Oct 2023 17:44:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE03E81EE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 430E51BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 17:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25DF540292
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 17:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25DF540292
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T698ztRiZe32 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 17:44:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 873CB40291
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 17:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 873CB40291
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="387185982"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="387185982"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 10:43:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="6933138"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 10:43:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 10:43:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 10:43:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 10:43:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 10:43:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CjGvpRwIWzB4o5ONhYZJlVJlFPeKu+dRvMjQo6CxTU3HwVTUQoXKfcVWk2Sj0c/c39h7CAgX4lqk25TUk0uWT6Y/GfC3S/ibJLv2PVe+xLpAtp2w+C1P5wE0HGZpSFSw+5zRqQHSg9PtnloMtGORtsxKny0bCnzHKODgxQUFAn+XrZPcFMB9qznfzCG+/cCeEH+Oks/x5bRJoBmsMrYETt5r9b7LGCJQiJe/3gX+2XDWk0YDY25x9IbhN5Kcirs6GkEAfqv+xPQQCBRfkCVg9eDfcjoLr4vc/nlRk5ieVBGHxnkZT5MfWCcEodIg7IdpDUBw1PEHX+wY8aO8vzq+1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sxSaXRzD2CUER731m/S9NPtjSwiVGUMS1qLp8qVLdU8=;
 b=J0T8Q2GIoMAYmAkHhEhWuB7ez9e2xVY1L+O6Igwlw1RtZYChqHvv7yY9J7m0CE8YjZwTFLy7G/pulpyVZd2GIgnBkVsBmB2XfklumU5TZKQwWDqIMMlc4/gygHdEDQ74VXK1kipiEh20VzpOMC9kAoFiFTgvODsLyRhw5HsIF32RqyyreqfLdKEKdDD20LLT2Qxv9yBYP195GiylEob1Lgw6PNzGslt4ztGQkPCqJhhszRiIEfJZ/v2TA5A+lyyrgCSv8MPDrcVYv20WHKs2wvtVgBVsKl2AimfJE+uFp+3/v2+phx0QJhWWcWF1SBCKwFbpgCVKRXCDdyzQXY//Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6038.namprd11.prod.outlook.com (2603:10b6:8:75::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.33; Wed, 25 Oct 2023 17:43:45 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::f216:6b2b:3af0:35c1]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::f216:6b2b:3af0:35c1%4]) with mapi id 15.20.6907.032; Wed, 25 Oct 2023
 17:43:44 +0000
Message-ID: <5d8cbed6-45ff-449e-a849-d7707852a877@intel.com>
Date: Wed, 25 Oct 2023 10:43:42 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>, Jiri Pirko <jiri@resnulli.us>
References: <20231025103315.1149589-1-ivecera@redhat.com>
 <20231025103315.1149589-2-ivecera@redhat.com>
 <8a8f54a8-1a18-4797-a592-b57bc6fc45c1@intel.com>
 <ZTkHJ6IP4tj3EmCV@nanopsycho> <ZTkIH68kCzb+4VME@nanopsycho>
 <6cb52295-a20c-47ae-b75e-c841f665fdaf@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <6cb52295-a20c-47ae-b75e-c841f665fdaf@intel.com>
X-ClientProxiedBy: MW4PR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:303:b6::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6038:EE_
X-MS-Office365-Filtering-Correlation-Id: e95136c2-619f-440e-30f7-08dbd581ef30
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IQJlwIYsjFqglENPfyuhrEH2JPC9+bf45LROzNdhr1PA+ioecFn8zAPGgZ1D2YNY7nwgDijl2CMppnd3uufvrFKlK5sDIwUanwChvCDZgBddaH4da/roTt7jYvdgcHSWTdymZwyYsbwBb4VylfpfMGWGikTAyvvtZiBOcin/9v6hHIGsJFgPgGIQp4V/MrlbKwoFB6e0D9Uxg7FP4s5KSGZ4+jydgX4CtBibsGbhUnInJCH8cvu3HFvYQrHnD8Lm96igxXR7ab6WSNBT6oAF3Wh8gMrWhbBPG91PFat6sy/kUTESSH4oyo/4UBNoiAzNm0VxS818TjFCYXNtVZY/QfH1FeA8/Hgd0qDVby1Baz7BTW3eCXfi6Z+i3517HiPh0qyrm0AYOeDh9duh2qQBO6A7QVBzamZWXSkxV2BikCn90q9YI5yEJSF54XiMciEhgwa7dfl9zbYGor2CJ8UP/F+AoB0gr/SbFpJWSx9AdLYDt1TjYIahaIjikX9kJWMFQN+xtx3x5tXraFVzemhrB/xdPEvOooXCGalPK3W4QXm4+Okwp5hRIXNCCXwrC+GelF9CEp/INIfD+EjkKPjlTPoDJMwN+IlZ314ytCuP76rlWE14cu/3SgLoodkEMJ38D74iUFMSaJTreWxjI4PBjg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(6486002)(6512007)(6506007)(53546011)(478600001)(8676002)(4326008)(8936002)(41300700001)(82960400001)(31696002)(86362001)(31686004)(36756003)(2616005)(26005)(38100700002)(83380400001)(54906003)(66946007)(66556008)(66476007)(316002)(5660300002)(110136005)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3lnMkxFcHRESytGTlRodEIxc1NzMHhvT3liY3J2TlVqTTEyZ1dyTHlId0gx?=
 =?utf-8?B?U3R5cGtPWU1UL2tqN2FlR0pzK0RBbWNwYmdXMzR3dlg4TUhlcXd4d2w1NjJr?=
 =?utf-8?B?UHozaEZaNHBDSGVUaldVaXMvaXdmY3phWFFSbDV2ZzJ2RFE4WmNTaUgyMVpG?=
 =?utf-8?B?OUJLcGtHOVNVb0FuN0dnNzZqc2k1NkhnQko3dFIwNlZmMWt2NkhmV3JWUEpO?=
 =?utf-8?B?QUZpaVBzWXVER1NJK0U0OXBPL1FrcW1WL0E2bzI5ZFYxNktPSGJLcGdIbUth?=
 =?utf-8?B?R2o3WVcrSVNQVmtHSjg1bUhSelMrZGFHUFYrMkVqS0hBMUhiSG01RHZRMmk0?=
 =?utf-8?B?bFRET2M5Nm1qVlJXQXNwTWxaRmJ6UStUSlVwVGkyR3Npc3JFODEzWFFIMHdX?=
 =?utf-8?B?WHJsWHFEQURCWlF0VmV5SGo0dldYTFlRLzZqQklzcFczTkc3NnZ2SEZlUFgr?=
 =?utf-8?B?NmtNNGVqM2JXK1k0RzNiZ20xbTlGMmgxOWZ5UG94WlhBMytDTm00dVk4bjUv?=
 =?utf-8?B?MlJHejIwZXFSeGRrL1pucUFmMVhKM29ZNEVYekNrYVZJU0tONmU1aWNyWkNh?=
 =?utf-8?B?RXNOTFluU3lDZTlLYkZUT3dJaDVjaUkzVUNWTzkrazd3U3dNTW44UHd3ckhX?=
 =?utf-8?B?ZXlTRUlrZlBaU0llMDZpQWNlQldFWFdleE02N1RHanVsT2kreWF1aHN5Rjcz?=
 =?utf-8?B?VXZ3L2sraUMzcUJOV2ZMZ0VxaTVLaGVmWDRSSG13UHZwaGZ2UElkQ0EyQ0py?=
 =?utf-8?B?VFZDL0JLNFU0disvVkFEcTY2RkVwQlc2M1hQS0l3dnlnZ0p1V0NGTzdMaTJo?=
 =?utf-8?B?UExRSTFxZVNEVFVSNUM0enJ1MkpLaDFZSHRVMktwT2Q0ZFJ4MXNqNFc2d3ZN?=
 =?utf-8?B?alhmdTN1c0RNYnhlOVJjKzJ3Z3lIY2RDeHI0QTFsRVFhcFhERnNKbklNd1Rw?=
 =?utf-8?B?c1lrVW1ReVFHQVlLWWZEK2dWbStmTXhBZ0hac2o5L3FNQ0JHeUxib0c1eVZn?=
 =?utf-8?B?ZXBRUlV5RCt5RjFQL3dma0xoTVo5anpOZWx0dXRFOFE0MVJBd1d6ZFgzKzlP?=
 =?utf-8?B?emRGQ3RnN2RXVjBjSXNOb09UUUZ0WEZzUTBDMVM5aFk2RFJYQUpIOGxyWU1z?=
 =?utf-8?B?Q0ZRYmV3ZkQveHBtU3NUTG91bTlES2xWaEdJNDJkTjFDN0I5SXNHTlpLYlNy?=
 =?utf-8?B?MnlONklQRmZzbzhVYXJ5TVRjK1dlS3NoblZ1WWY2RXkrbmNUcU5ySTZKVXRh?=
 =?utf-8?B?aU5oZGhiUUVpVURFUnVMVkRMdG5kT0IzSkZyTmdkOE5pR2g4eDZnOWtFRHZp?=
 =?utf-8?B?SUprSGVwSkpGVjJlVC9uUlIwQ3Z5ejIxbVZWVnpWRkRJanc5OTV3Um0wYUFK?=
 =?utf-8?B?ckhwRThDQy9wd0ZtbkdmUHc1cWRGYklmVmJ4NkNaM0E2MWdPbWZNbStCdy9h?=
 =?utf-8?B?Z3dJVllPenArWUlWZWpZMkZzbTRET3Z5dEhOeXJ0c0pnWis5d3VhWUlkU3NN?=
 =?utf-8?B?UFJ5cjBoQ1Z0RDA2bnZzOEtTR2VZb3BpbU5mL3VLNmY0WkwyTGJMYkpsWjRn?=
 =?utf-8?B?RW1yVlJNRUovR1IwU3pUeW1pcFlYUXR2Y3VqckplaUVDV05NOXRTR05YQTNZ?=
 =?utf-8?B?Wm9JQit5MjdrNU8xRDI4aXcxa2FaTkVKQ3JVVGljNkJ0MGQyMnJRZDNkS0hm?=
 =?utf-8?B?djU2V1Q4WFpDUHZEL3RERkVnR1VLam94OHVhNXMrRml5SVMrTHY3RzhRd1Bp?=
 =?utf-8?B?eGtsd0d4NWkyZTVTdlNIY3BJeUdOeW1CejgwWmtmN2dTdzh0MU13a1RjWEtK?=
 =?utf-8?B?czkvMUhtVXZyZ3dRMGswUnhiSzl2KzNraGs0N1pEa0RKQWVrditGOXYyakdm?=
 =?utf-8?B?c3ZGcVd2OTM4dnRFUFZmSjRzTjR6ekZhN2cwMGk0UWIyemJJeGw0MVBBT3la?=
 =?utf-8?B?ZFFleG5mRlZzRjQ3SkJoREhSWEI2SlRITTNSMGhEempMMUppU2xWdkhWTnhi?=
 =?utf-8?B?OFVTYTRFMXFoYUdQSEc1YW9SK05oZlNMQWFaZnk3SkJ0QUUrTTcxbDNJNFdk?=
 =?utf-8?B?T2c3YjhQS2dTV2NFd09USFZtU3RoUHdpQmZOQ2ZMVUt0Ni9zQ1RVclNiQWNJ?=
 =?utf-8?B?a2VqQ1ZQcUN6aW1GaklmSTN5UFIzYzNMckk5ZjZWNDlEQU9XbGFkbllBSnlC?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e95136c2-619f-440e-30f7-08dbd581ef30
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 17:43:44.4702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /B4WNOpDhAxK/1frDArTdMDAGRzxPioeECK947O4WUldEtrncDZtXAVJE8sPU1n0WMC0IHDA0iQJMOoW63Ud85PNaoAFshBDgAs6ics9csE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698255855; x=1729791855;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NicTAr+IqlXsycZZI+pxizldGOhFu7rNtk7wosA9528=;
 b=axa7H7vb9mu/9gj5NCFkjcqyaDgVHz+FIHBstTOZgcTC88ZQQ+wu5g0y
 zcDKNvSwag6XNSJJwEzDvckUoHVNSF+os3yKcW05MBBjwg+0237I159Cf
 SEeANs51uOuGNQPwGgCoXX30bt6E/BnyVMW+DkYvt9CwFSritktVPzxIr
 MuOKCcje1gQL/m+N4XjiBRR+9UkFMu5Qk71fEcRP9mWqXkLi5Qv6YTHnC
 x2zssr5uPmQTkcMnoAiY1OWFRURr9Hiwrl+2nXUEm41N6Zh4OJk+rRvJJ
 UQeao/sT2GQkk6ZQFBaSz1hlJ7d2HmEe+wJ0auU5F7a6/UfAJBcJE4xyb
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=axa7H7vb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: Remove VF MAC types
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
Cc: netdev@vger.kernel.org, Jesse
 Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/25/2023 5:27 AM, Wojciech Drewek wrote:
> 
> 
> On 25.10.2023 14:20, Jiri Pirko wrote:
>> Wed, Oct 25, 2023 at 02:16:39PM CEST, jiri@resnulli.us wrote:
>>> Wed, Oct 25, 2023 at 12:48:37PM CEST, wojciech.drewek@intel.com wrote:
>>>>
>>>>
>>>> On 25.10.2023 12:33, Ivan Vecera wrote:
>>>>> The i40e_hw.mac.type cannot to be equal to I40E_MAC_VF or
>>>>> I40E_MAC_X722_VF so remove helper i40e_is_vf(), simplify
>>>>> i40e_adminq_init_regs() and remove enums for these VF MAC types.
>>>>>
>>>>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>>>>> ---
>>>>>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 33 ++++++-------------
>>>>>  drivers/net/ethernet/intel/i40e/i40e_type.h   |  8 -----
>>>>>  2 files changed, 10 insertions(+), 31 deletions(-)
>>>>>
>>>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>>>> index 29fc46abf690..896c43905309 100644
>>>>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>>>>> @@ -17,29 +17,16 @@ static void i40e_resume_aq(struct i40e_hw *hw);
>>>>>  static void i40e_adminq_init_regs(struct i40e_hw *hw)
>>>>>  {
>>>>>  	/* set head and tail registers in our local struct */
>>>>> -	if (i40e_is_vf(hw)) {
>>>>> -		hw->aq.asq.tail = I40E_VF_ATQT1;
>>>>> -		hw->aq.asq.head = I40E_VF_ATQH1;
>>>>> -		hw->aq.asq.len  = I40E_VF_ATQLEN1;
>>>>> -		hw->aq.asq.bal  = I40E_VF_ATQBAL1;
>>>>> -		hw->aq.asq.bah  = I40E_VF_ATQBAH1;
>>>>> -		hw->aq.arq.tail = I40E_VF_ARQT1;
>>>>> -		hw->aq.arq.head = I40E_VF_ARQH1;
>>>>> -		hw->aq.arq.len  = I40E_VF_ARQLEN1;
>>>>> -		hw->aq.arq.bal  = I40E_VF_ARQBAL1;
>>>>> -		hw->aq.arq.bah  = I40E_VF_ARQBAH1;
>>>>
>>>> What about removing those I40E_VF_* defines?
>>>> This is their only usage here, right?
>>>
>>> Wait, do you suggest to use the values directly? That would be
>>> wild even for i40e :)
>>
>> Ah, sec. This is duplicated in
>> drivers/net/ethernet/intel/iavf/iavf_register.h. That confused me.
> 
> Indeed, in case of i40e they're going be unused after this patch so
> there is no point in keeping them, I think.
> 

Ya, this is all a relic from early days when i40e planned to share code
with i40evf.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
