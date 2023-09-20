Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3611E7A8FCE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 01:23:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 665DD83BE0;
	Wed, 20 Sep 2023 23:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 665DD83BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695252186;
	bh=wGBhQ5zHTAM4MI/f9B9vOXUoy6z2Dp1k27tpbH92Qsk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3Oj5YjthI9GiW0hlMFbpr+mfSOe6yEDcnJXzY2bcdtOENrhgVQ8dKh4hMcAZDsOl1
	 5xUwtYzIMiaGZltuetoERwVCJPNt1+ZlHWt4P8vCgvNqyksGxmcaUx2B2+AH9jhWmL
	 2wtDf6TX2TDRv90P3IlF1c/jrr5BUn4YJV1mifhHoj39dHG0XzXBl3bHeLE2u3AIkB
	 j+i+SyGWJM7NGIz4EV8U1esKQnFv8BgLO8McDPOdt2QoIwm4GHbIwyp+HQ2aGEWbY5
	 Kz5M1jObmVqgsAlAh/i2OYZsIfLChSh3SQdrvKrHfGPQNiJWDrxc98VP7/B2vCBvt/
	 kVnFuGv1SyxiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sWfR_DQVOX13; Wed, 20 Sep 2023 23:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E22D83BDB;
	Wed, 20 Sep 2023 23:23:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E22D83BDB
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 393D61BF3EF
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1118B83BDB
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:23:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1118B83BDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2NysQt4aBwX for <intel-wired-lan@osuosl.org>;
 Wed, 20 Sep 2023 23:22:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D13BB81E5E
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D13BB81E5E
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="444469418"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="444469418"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 16:22:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="781913210"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="781913210"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 16:22:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 16:22:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 16:22:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 16:22:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z9g3tNXhcu+/3H49W66aPbMrczaCOTSDsSe99OwWgMlC//PQnnOH41ehtB8JlVk6N+0wnlx2fGlNLbGD08mJ41F3Ckrx9EYUKYMjWF6CmHgfCDEQdiYM4EgsddNs5HMFOSAUKsZVvwcmP7+e7qnnhfE/Hb5gurLOTp+vsfDS3WqyvpiJfyebNKKOl+tfm4sLrQadD5UT8dixjTLnNIF52r5tLj067JGm/F+OA43EYfYI3nS4Lmlex4isNHjHs/1tnR5PWajbiGM8vD09QyD0VONminTOpQ1GbcoCP4RNo9Po7BSczjcjuoxFc1Suf1vCRLHac7vLFOWlmOlhFghiOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ImF9Sj1e0PjHrNvU/rMhAUUnAkh5uy/VlZnsHv19wI=;
 b=gNa5/r/pvuB8LqOFnmcoHV+gISSl0S5m99WQD7dYlGuZzlLThvOLOGiq7j+M5jd9P0ysxEUD1kPNAIbJqRCO2aC10QjwPL956R4BD/WKcXmaECaMSzG7+tbWSj5OAxkO+0Os8xy4AwBPixm5qx3H8P9onGfP3dqFAkW4EGvdCsNy0qGoGQGSDFthBo27tvJVCrNmn03Ot1FYveUWL+LaNDvBYlsI2BSuprbK88zRxpxWPP6h7YJD06sp+Ymh26aiYDJQnGN2zcCtslsJ0Cdrr+BESMY7cWC+kBPUnDinrobYKjlcRWVlI+q4evgWVKiZrD1+kTE8L12Z+3won3W6nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7335.namprd11.prod.outlook.com (2603:10b6:8:11e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.33; Wed, 20 Sep
 2023 23:22:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%4]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 23:22:55 +0000
Message-ID: <f2ee77c4-81dc-9bb8-9e29-6213f41b1132@intel.com>
Date: Wed, 20 Sep 2023 16:22:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-3-aleksander.lobakin@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230920180745.1607563-3-aleksander.lobakin@intel.com>
X-ClientProxiedBy: MW3PR06CA0013.namprd06.prod.outlook.com
 (2603:10b6:303:2a::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7335:EE_
X-MS-Office365-Filtering-Correlation-Id: 3871afc9-cbe5-4cf4-3f05-08dbba3084e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FwejD0jQTzHiUawmxVOgzg95wnLs2IJQxUcY25bVqXlqP3b2kMbZTKWDizwENIuy5R3fGGXpD9NcSBb6bRWLiIB7BPInIazNxGc8d3wYtjbmN3nsPipMyNdoPt2Ay4eqsilmWB9NCavLC3Gdbvkg2iNLx8fxtlgWh8ODxYRX8/nRh7O8YZd1XRg3okL1TjKIxpfXMDLCrBecodyY226x6erYNlCCT/C7lttBxMIyyehEjiJkKzUzw6DEcsX3REN1oL9+duA0voUzNU5vIcT/Kqqox6dDCC7p3WH1shNv93IRzeKNvc3q+E3Xc2v9/1IT+i9cSlTW0m3TBnf//gNSWN4QzNiD9E3ti6tPQ9w53W6yaNq9WfbJwZMpGMz0N7VitUTRa9x1mN09laJlh333FFgfrOKm38oALvBy6yu6DZ0WsrQiq2jyVsN7RVI3hmMxWWLjaupDsXokYGWDIo54GnkZ1kbzWAJ+BTeqWlNQ1ovMwFNYrMhINTjtFj5Zk8Z130iApKihVdCYccvj+ROZN6bH85W0Q1s9uFZ+CpmykVPomeqSKYmAjIWhvZSvcRCIUHsAO5azFctjuytp4m/hyeY6o4ySmNB2WAAE+QLspdQXuKlvHqAZJ8wS/yfYcdpvNsEi25d6GBvECTCDhEvaOf8lly16eTFd+yAPUGdXXJP9Ygx2j+DSkr77FGZ7+FrW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(136003)(376002)(346002)(1800799009)(451199024)(186009)(26005)(2906002)(66946007)(66476007)(6916009)(316002)(41300700001)(66556008)(5660300002)(8676002)(966005)(478600001)(31686004)(8936002)(6486002)(53546011)(66899024)(2616005)(6506007)(6512007)(36756003)(82960400001)(83380400001)(86362001)(31696002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnYydERmMnJmbEdtb0J2UXZLZ2UvZXdQSm1jVnhoV2hjU3BxUHlQaVJxVjdC?=
 =?utf-8?B?MDhON092YTlROUdLZXorcUNFM0tEZElEOW45Q0dWQnVIQmp3UkdKT2twM05x?=
 =?utf-8?B?ZkR0UjJKeVZmRHpwZEhzSjFsTEx3K01HNE1tUEFuOHlNSVJJRVowMGR4bkFC?=
 =?utf-8?B?c1ROd0JFZk9kVHRZckRJb0tMZFVEVTBnR29mTWtuaUt6VlV1Tm5ObDUzU3VL?=
 =?utf-8?B?NlptY0YvSThqc0s0WDFQZ0JFU1BoQTZvakI1dzR3a1RVanBqM0ZyRm80Ymhs?=
 =?utf-8?B?dWlQUjJRQmdQMHpEaG85RTJZSklwejFzQVdpRWNTbHlRQW1IOUZQRVk1WHpT?=
 =?utf-8?B?cDBhUStmZDV4MVVURVJMOHI4ZUsrbGpnSE04Q29tbHRTRDBOWUx3WWxjaGRZ?=
 =?utf-8?B?Q1B0cHJjMnFJOWNPQXNMZklqelhIeWFIY1lJVmJqOUIwKzFwUVorQmFpYTNi?=
 =?utf-8?B?TlFtVWxlcmJKVzNTajJHUm4zRnhhMGY5MWhyVzA4TEF6NXdXM3NBQ2E1cGlK?=
 =?utf-8?B?dVNLM29xUWJHeTBZYkcxQmpISEdpSGJpUUdDRHVUNnA5SnNvcVh1NDk5NHpq?=
 =?utf-8?B?Ymg5YVlMa3huMlRBSDlWNEZDRnZKV1lDOUN4RC9nTjhnbWJPZmZKbWxkalZQ?=
 =?utf-8?B?c00xU1JBdzJkeUV4QWNDSmtOTHpsanpWNjF1RjFsOExnVlFwYnZBQTdhWTcv?=
 =?utf-8?B?cGJUZGZBcVQvcithaGpMR3Z4NGNRUWFqb093Z3UwVllHVGpBWWVNb3ozbjFx?=
 =?utf-8?B?VG1YWElBZWJNUStoWm4yWGpRSTlrK2dyS0hsN0dwZCtXZUtBS1E1SE1DMHhF?=
 =?utf-8?B?K3hwa1BacngrYnZrV09PWkFsbjdIcnVSZHJUanlFdHlUSXoxSC9HQkhWbUhU?=
 =?utf-8?B?OTBwNGx5MXVJR1cwNnZyK2c1STlOZFZBbDh6U1YyUEdUeHRXMUl0VEJ1Rldr?=
 =?utf-8?B?OUFuMnVyQVRhdUlhUGl3WWZIU3V2c1pOemlHaldzOTI2VjBxUWhyOGY5dXgr?=
 =?utf-8?B?Yy9EVENUSnFUNzdZTStUK0FURkpmT0Y2VVZESlNKcmN3cXA2ZVp3OUh4R2k1?=
 =?utf-8?B?OVhHVHJwTGhyWXY1ZFgydmxQOUJhcXRibXY2ZHVYcVI0S3MvOGxCYmF0R25u?=
 =?utf-8?B?WW5sRktJQlhlYVdMa1lveEhhNEZVd0J4YXQyT01kSGZNR3UxMEJIT01hN2Vq?=
 =?utf-8?B?SVVlSmowM1YxV0h0Z1FvWlFZSjl0M25Td09lOHdsamNHZEdVdkxoRk9RN3Bq?=
 =?utf-8?B?cXJCZ2N2MENoay9FRnE1ejFHSkdldzNPTk5QWk5pUVZhMFBDNnlEOWptN09H?=
 =?utf-8?B?aWN4a2hxV0JnV0xFNG9BYXJxTjdyTFZXS1Fvc25IclV3N2ZPQStmZVhhUkRG?=
 =?utf-8?B?MFhBZ3E4RjkzZWRUS1AwQjB3YmJyYWhMdEV6Q0MrY1llbXhSdUFFTXVTQW9y?=
 =?utf-8?B?NzAzNWtqK0prWFJvZHZ5N3IvRGg3cFR6OG96YkhPeFUyWjF4ZTNmNnYzazRR?=
 =?utf-8?B?cEFWMG82LytQckU2S2JNem0vUkNDUzQ1c0JqVi9VL05BUkp0czc3TFJrR29H?=
 =?utf-8?B?dlRUNjJPMWFrK0E5S0l3cHpiVk0raGVBYUpHZ25EQjBDcW11dCtnQzJsdWFp?=
 =?utf-8?B?aDg4blp2amZHTmZDdm9zTkx6MnlIekxKdHFSNVYrcWxBSUplbnNKOVNuYTBs?=
 =?utf-8?B?MDFucytMd1BSaGhpTEVxemM4MXowRzR1b0NWSVFickt4QW41SHZMTG5MNEhR?=
 =?utf-8?B?ek9vd2FNbTIvK2l1cStZdlhja1BQdmNHcUZ3NDdjZGdod0ovYXhBYnNqeHZK?=
 =?utf-8?B?SHdhRDFUdXJjZEpJMExNVDVJV2tyUTRCMGRLaEQ4dlJyMkdHZ3A0N1RjMjhk?=
 =?utf-8?B?T0dldTJBYTk5bEhldVdpVUFoYU4walMyZ29FUlpGejlPcFJqbXRwSDRySjhU?=
 =?utf-8?B?RTg1RWVjZUlGUFE5Wm45ZUY1YTlCemdLdnBjSlhNdk4yM3dyTHJwU2FQTHAv?=
 =?utf-8?B?c2VaM09ZZ1BhMXFuQ2sxeVFCQlM3bk9jaEV5UytWZGEvS3MyYUphSHhmalhJ?=
 =?utf-8?B?djhFUEErTWxiajBhYkk5Y0hTWVBqM24vRTZYVGRvTHVkTkJTR2xVbTBHT0No?=
 =?utf-8?B?aVBNSEJlaUsraGUwUzRvOERUbVptbTh5OTNTT2J6bEx6U3NkbG16Y1ZaWGV4?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3871afc9-cbe5-4cf4-3f05-08dbba3084e4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 23:22:55.4441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mdnf2AUuDksfyxyg1l9b12h9S5cqplh+mrDfFO6EBy3d4PeudVs1p+lBZhTPNfIXNGnFyZ6mFwEPezie27+YaiJP4XGvf1sTMUEK3AWlM7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7335
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695252178; x=1726788178;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VXv/VRo5bLHXPqozYTBFL9gE8WY51gEkTN860hj5wUM=;
 b=f7vnH0R0WhW4+3tKJdO478Uu4HIQW9vvgUKTYPDCjDs27uux2G+3Qrhg
 4N6OLEHg55+ZfgE1twGhPky5oA+MuCF1icoomo9XMhSCGn3adMi7dBEJo
 PQrNYA4iUGUnHu+4Q9sbEZ2czYRZ5orNXBCPxE+dTYU/FJDVNL13sbUkp
 hDBvOJoq0AfkBz5TLLSNBWy9NAovN3c6RhrdbPocMca9D5ms84pAhytr7
 3qdH8zNuk+KljiX+ytxT380pYos0AnpczCzGcq2E+uZfGEsDUxVjDrNCZ
 SjlsDKGcGhHVY++A5CxSq/zwEVBVLHUwiWud6Fdg6B4o+OIdwhXJmWv7M
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f7vnH0R0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ice: fix undefined
 references from DPLL code when !CONFIG_PTP_1588_CLOCK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/20/2023 11:07 AM, Alexander Lobakin wrote:
> DPLL code in ice unconditionally calls several PTP functions which are
> only built when CONFIG_PTP_1588_CLOCK is set. This throws a good bunch
> of link errors:
> 
> ERROR: modpost: "ice_cgu_get_pin_name"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_get_cgu_state"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> OR: modpost: "ice_is_cgu_present"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_get_cgu_rclk_pin_info"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_type"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_freq_supp"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> 
> ice_dpll_{,de}init() can be only called at runtime when the
> corresponding feature flags are set, which is not the case when PTP
> support is not compiled. However, the linker has no clue about this.
> Compile DPLL code only when CONFIG_PTP_1588_CLOCK is enabled and guard
> the mentioned init/deinit function calls, so that ice_dpll.o is only
> referred when it gets compiled>
> Note that ideally ice_is_feature_supported() needs to check for
> compile-time flags first to be able to handle this without any
> additional call guards, and we may want to do that in the future.
> 
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202309191214.TaYEct4H-lkp@intel.com
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile   | 5 ++---
>  drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++---
>  2 files changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 00806ddf5bf0..16f96d5210d8 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -34,8 +34,7 @@ ice-y := ice_main.o	\
>  	 ice_lag.o	\
>  	 ice_ethtool.o  \
>  	 ice_repr.o	\
> -	 ice_tc_lib.o	\
> -	 ice_dpll.o
> +	 ice_tc_lib.o
>  ice-$(CONFIG_PCI_IOV) +=	\
>  	ice_sriov.o		\
>  	ice_virtchnl.o		\
> @@ -44,7 +43,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o
> -ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
> +ice-$(CONFIG_PTP_1588_CLOCK) += ice_dpll.o ice_ptp.o ice_ptp_hw.o
>  ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
>  ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>  ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e22f41fea8db..9b48918dcdb7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4665,8 +4665,9 @@ static void ice_init_features(struct ice_pf *pf)
>  	if (ice_is_feature_supported(pf, ICE_F_GNSS))
>  		ice_gnss_init(pf);
>  
> -	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
> -	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
> +	if (IS_ENABLED(CONFIG_PTP_1588_CLOCK) &&
> +	    (ice_is_feature_supported(pf, ICE_F_CGU) ||
> +	     ice_is_feature_supported(pf, ICE_F_PHY_RCLK)))
>  		ice_dpll_init(pf);

We can stub ice_dpll_init and dpll_deinit in the ice_dpll.h header so
that we don't have to check IS_ENABLED here.

I posted that fix at
https://lore.kernel.org/intel-wired-lan/20230919233435.518620-1-jacob.e.keller@intel.com/
though I guess I sent it to intel-wired-lan first instead of sending
directly to netdev.

I would prefer the resolutions in my series, as I think they're
ultimately cleaner.

Of course: priority is getting this fixed so I won't begrudge pulling
this now.

Thanks,
Jake

>  
>  	/* Note: Flow director init failure is non-fatal to load */
> @@ -4695,7 +4696,8 @@ static void ice_deinit_features(struct ice_pf *pf)
>  		ice_gnss_exit(pf);
>  	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
>  		ice_ptp_release(pf);
> -	if (test_bit(ICE_FLAG_DPLL, pf->flags))
> +	if (IS_ENABLED(CONFIG_PTP_1588_CLOCK) &&
> +	    test_bit(ICE_FLAG_DPLL, pf->flags))
>  		ice_dpll_deinit(pf);
>  }
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
