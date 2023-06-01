Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6054C71F322
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 21:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B60EE84394;
	Thu,  1 Jun 2023 19:46:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B60EE84394
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685648775;
	bh=rS+tYBC5HMTnj40zz3kU8O36qtgr0Jsyj4mUWR7RLeU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yorbWAu91L9npXcdPIB9C1Qxuh5vBRCmvujoZ6Yt0r937aTzP7wyy8e2ePPrKwm/+
	 +DPGGf4KLI0ftQCGYm1VfylE9nssFwfpO6eRbB+gMsocz2yGLbX8DLC3er+381aFUX
	 oVkothzdWyOoPyewCItVZg78g8ftrIlZwdvzvps97Edit9APbRjKCWkFw8QkwANW2R
	 9zkRF9xzuDnC0X7Z3/KuokPbwLGrs66sIylaz8ky1hEbX9JA7wUAnmH1aHe+4dJyYa
	 83C0689Kkx3PcyWrY/vUyO4WfFVw4qz5b3dtjFn/IctOCRk2xoZXTEnH4KV5OjzNoh
	 89DKo/rxkyPrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gpKG7-_L2y3q; Thu,  1 Jun 2023 19:46:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 400CF84323;
	Thu,  1 Jun 2023 19:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 400CF84323
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E26171BF57B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 19:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3B2F424C6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 19:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3B2F424C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gsAiR5vJ2T84 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 19:46:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 808054240E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 808054240E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 19:46:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="383942149"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="383942149"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 12:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="851840268"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="851840268"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2023 12:46:06 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 12:46:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 12:46:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 12:46:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oTHoS0auG7LQonwNTpAieHskwPv3NE9Z1OO7Onxk8KOwjo8kWfIkhtjGyhtc6XPJYv6uIVhHJJLnfWb6Jg7Hxf9d3hkiH+rEIshjGMGaQg6qL5VZXk7GqZKX5Vvq4UPvqU/rk33G8N0ZjLHUuxKx/HuVaWT7Cz+wGdcm/BjQSoq3+P2O65XfiThu8WeU+PYg6rY5XKVf+F3fWkVqJIklFEaFfORHycLfUb/WCkD1av/knnJUSUyFUFbNwil012jFDK9EJLrncK14XEcZ0dBJl1BY04fDjrnGXeVFbvhbcMNp/FMukalD5HWTkl6kuWGm/HZMW0JXC8OvuCNKqnoI3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IUDeyJaO2EjrarwgwhfHxK1yQNmoKiM3acaJd0dg5dA=;
 b=dQLyo/vXcN7uzqGIwmIPgFIUG9AbeO10j+YCyLAM25qstAZSz9ln6YuIiVslS7moreY58eF+N9loI/Nx7an0M7xHZX3w3nTXwq6P/8lTJsIm4yo43CJzakc/vtdHymfZiOcsj+nNmSP6dKdAOXJFRkua3YF+bFdfirdW12K0DTL3HGTQcYYIS8bST0XSq9STq2Y7Tyu54mDwx7BDgWc/wTuAei6xrkZD/EAvUkmRG70oM/PQr+HmFjDOKyYEfkRy4Qpzns9QcYYx0y0F8pANPO1G2oQn673etfS9EPJWVKIQW4/LtGFfoEXb28egSQZfqasH0E5MPOB9g19NdFUNUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.22; Thu, 1 Jun 2023 19:45:57 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::ce1c:e002:49d:9185]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::ce1c:e002:49d:9185%4]) with mapi id 15.20.6455.024; Thu, 1 Jun 2023
 19:45:56 +0000
Message-ID: <b303f83b-ad80-d3e1-0374-e6a4a3d8b74a@intel.com>
Date: Thu, 1 Jun 2023 12:45:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>
References: <20230530174605.2772054-1-jacob.e.keller@intel.com>
 <20230530174605.2772054-6-jacob.e.keller@intel.com>
 <CADEbmW0zqcb9AqHTcy=+bk70ippSR0Ze9FJDMcXBAeT7XWgsLg@mail.gmail.com>
 <ff2ae1ce-98df-48af-8079-4b47e5828f0d@intel.com>
 <CADEbmW1jxrNGjNJjj1AX0eNN1Cfs2ea0H2R8GipgHv0jKPTS_g@mail.gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CADEbmW1jxrNGjNJjj1AX0eNN1Cfs2ea0H2R8GipgHv0jKPTS_g@mail.gmail.com>
X-ClientProxiedBy: BYAPR03CA0032.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::45) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|DM8PR11MB5573:EE_
X-MS-Office365-Filtering-Correlation-Id: 27fda886-a1c2-4acc-3bfd-08db62d8d0b8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BMXsj4QJHDJJqzqSds9yUk/w2CpI4iH+Pasq6EI4nz/x6E3rJivs6G67TF8KIkBdAubFMEBsDAMNeVYpyt+Gn92ZvWlF1uJZerHBi6qiKDODUmDbDCEJWGzZT7qti00SgQ6ZMIEAUpEUDwnCvKlsmVkYwZr8Z2BdP0wNaq5PkPkJH4+h7lPrcIlAwQ5H953TNj139z3gLL274zKgRakIOeZd9WtsluWeOTbUECu3b+YA/wN6FQimrbd/jjLx6sLCyE7CYH0VJ0HziwkKTeNf2ZMTnqTozybYPRTMxPwgnnP1emI9/VKfaokkO1+9PqediXEStM7DqJuBxRVXQFR74yNNCUFQJWerxv7Ve28ms2e9noWpaKDnmVxOxdiI2jGDxjboKbAeyvbu3A0VtMSQI19krXsQW+xdSdPsS19d6kX+MVvKVroQ/iAGnjv+4+Enx7CYFcMQMgE4sp7rRfJ9H9EGswXu5oYIp+ujia1rixruzBF1rJzYMWTDJIM6n5ZTY6duiIMlT9iKX9oLEyTpzsyyxYn2VLPO1fxWGQn/3pNtYro8w6VbbOfJcz1bMOxbr8TO3QsLKCGzqbsOii6jUxDR7aI5FlLrzmxML5PtNJ8wPl+vOzKUhVZQm5Ncsz8UK7QWtPyIpZs77o6rUcBjRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(396003)(136003)(376002)(451199021)(5660300002)(6512007)(36756003)(6506007)(53546011)(107886003)(26005)(6916009)(66946007)(66476007)(66556008)(82960400001)(38100700002)(8936002)(4326008)(8676002)(83380400001)(86362001)(41300700001)(31696002)(316002)(6666004)(31686004)(6486002)(186003)(54906003)(2906002)(478600001)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFJuNEE1anNab0xqTEpGMGI1dUlKQng2RVYwcHIwYXczbG1WS2ltL01SaEpr?=
 =?utf-8?B?dWo2SFhTSElLT2pUTFRvU1hxeU15OERHaUduT3VZbngvMzRJZUIwY2hidHJI?=
 =?utf-8?B?MlNJOTBkR1dRSVE0QWRVVGNkbCtnRXN3ckIydFBETGl1YURvdjhsQ3FwUmh6?=
 =?utf-8?B?YURJOHk1MFRIVTRJL05XYlk1MExGOWRZSEpXTlQrNTF5aFdob2lxQ0tuMnBF?=
 =?utf-8?B?WDIxZ0pYVW5ock9qakdqNjdTcjFHVnBtV1pOOW9BRnU1S29mcjhiR0lCTlhD?=
 =?utf-8?B?bXU5UmR5dlpsUjBpRDU0RC8rd29RdDQyUWoyTUN6TVVvd2xrTzh3T25sanFz?=
 =?utf-8?B?bHJ1bGViT3BNN01GQU9iWGFyRXFBSUpqUnZEVnRMMWRPbVpMckpYV29GcWZQ?=
 =?utf-8?B?aHFRQWRIOHJsQnhMOXVVL2VsYzZXN1pXWXNSbndPSFhDVExOSzZKVUoxNXhj?=
 =?utf-8?B?RVpsbTBaUk5Gbnpxd0IzRTJ5R291anVVRE84K1lqOHUvN2RjSXplTDl2U2hX?=
 =?utf-8?B?WmFYcmZpMWVHaXN4Q1FGS25NR1A2MzkzQkY2dkxvdi9HOWc1T0pMSVhMZzYv?=
 =?utf-8?B?S2V6UXpldjNOVmtnY28wQXZJcHJsMTFQb3pUVkJUNUxQTjA5YjdmOE8xL1dP?=
 =?utf-8?B?OU02SnIxVG5LWnRMR2pOSC9OWWJYTjErMzF1czNLeUxwb1VZUTduVlhGOUhV?=
 =?utf-8?B?TURYSGRRL0hWa05uZ0owYXl1YkZ3UUN3OFNaUXlkVVpLdE1ycVAyK0hZTW5l?=
 =?utf-8?B?UFAyK2tXaWtBSmtmZmZVNlBSK2owNlpsYjQySmxVSVlPSCs3dVVnM3NJRFZI?=
 =?utf-8?B?NlNuMFEyRE03aERQdnJneVRUbGttS01VUkYvVElaYnl2Y1ZIejF1MHBzTlVi?=
 =?utf-8?B?aHZHUk5TaDNEY1loWmxVTm5RbjI5NCttR0FuZmNCV1JaSTBMSW1Pd1ozWjBx?=
 =?utf-8?B?RGM0UkgzOS8xamtqYXUyYnh4di92R0hqR1pHdlg2MGVya2NsclFvY3lyS1VL?=
 =?utf-8?B?T3NVdVl1d2k2ZUNpR29JSWF2NTlycjk5Yk0wR2ptMnpxeFVyVGtGMmJjaGJT?=
 =?utf-8?B?TDZnMHhSWm1ERUVXd3NYZkhHcTY4eU84cXRMajQ1bklTNlp1dDF3L1o3R0wz?=
 =?utf-8?B?QXB6UVJ1bEVtRUtid2gvU0lKM0c2MkVaZW9wandSV2p6eHk2TzNUMFlEUEh6?=
 =?utf-8?B?SGlCQko2MXRQODdHaDZUa0dWMzVxTEFLYmZEOFI3RHdxYUg3YkxnVTRGNkZ2?=
 =?utf-8?B?UjlOQy9iZ2hxWmxCQ3pialozTVhkZFgrbDEramlCcEovUWI0ZE4yaVJTVzNa?=
 =?utf-8?B?b2FtS21RRHczVUlWeGxaVzV6VDdJd2pwZ25zUm9ick1ST0sxcVUwalVad2F0?=
 =?utf-8?B?elNXaktPVWpHVytQVDFvQ3FkVUdMV3BuTHRVYzBlZWpHZzVrUmFqZGFkcFpQ?=
 =?utf-8?B?SXRaY25mNW1oeWtud1dCN0NxU3J3cGpvd3RUZitOMWc2OHFaSFlXMDhWOGJE?=
 =?utf-8?B?ZklMMFRQSXczU1YrbENrSzlYTjdjM0FKaXhrOXJYUUlSZ3dLSUl5ZTY3dk83?=
 =?utf-8?B?US81TmRFT0xCTTVHYzc0WHE4eTR0VnVMby8rNkZEVkZZeXgrR1pDbG9ldm1m?=
 =?utf-8?B?Y0FBVXBoa2lJanVoNkRFZ2tUdzZMdlBuUGx1Wll3dDhaR3NmQUJ5NzdhWGhk?=
 =?utf-8?B?clpxSVM3SlBLRWtUMC9tRXcxeGpUdlJmVnl4TlZTZ3g1S2VrN0UyektLTE01?=
 =?utf-8?B?U0ZNTnE5eVpwd1MzcnJvYS9tcm15bk04ZU1TYmRJVlZ6MTJzQjQvUS96Y0hD?=
 =?utf-8?B?RG1NSWFvbFhwWHkyekd5K0RMUWdjb250V0NjUUQvSHIxUFlDL3VrT3p3bEVa?=
 =?utf-8?B?YlV4N0k2SlBaT0RZcFRZVVdQdFhyYXcyelU2TlBaY1FIdU1JQU52ZHRlTGNM?=
 =?utf-8?B?ODJHdnVNSXJOSG5Lek5XSFB1OEFLeWpEZmZtZVdEZUdER1JuVVcrTW5hbkRJ?=
 =?utf-8?B?cDFac2tSdDMzcHdSbTFXSWxOV0VNdTdvWmpqYndoeFBFSTZQUG5aT25IN2tn?=
 =?utf-8?B?MjV1Z3lyWVBuSmk1MkJXOVBRQWhwU0pwV2xJYk4zdlZmU1luY3hVMzI1d2RO?=
 =?utf-8?B?c09SNFNGWkRBTlNBdS9DUnBDcDRPWTlSencwMGo4K0w0d29mUkd1WnF4NXMy?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27fda886-a1c2-4acc-3bfd-08db62d8d0b8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 19:45:56.1184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5+P/Gbhlm9IOMFBhbMwVvxKbvDbTBD9iYoGDdqBAGnGxdzVn/vu+aqH/8IBMzny/ThWWzumisbCq3CLEyocBTtdHAQKkW3ecgpV+9sgZaks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5573
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685648767; x=1717184767;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uv44vDQ22xRnbPkqEGYpX8SNfIpy0vzTBVU7YI0HVSs=;
 b=CoRigphRPlXAJpO1IU7ErBTJ27pDZz+q4hQHtx0XqR2RkTRqL5XSttvm
 oLxndRjDFlslXCHkFSkdPkIrQZuYzbKhzBX58yXmVvuej4qK37lHIlr5R
 v3B11nvbebdbheTQV199B1Bp2Wev/Y62u2QA+8lwYqsmQ31HO+hXe0JGc
 nik8Efh3gO9hly6JtiRnBhQOW0n2rRApv8dEopo8pilGVCiSqdLBo0cie
 6b3Gi5yayudIrcd1Qq7MTa3ra7IaFi4YotBmXtVwSnAAErK027TU1Jn2r
 Fne6l51aSjqgkyv9AP8NVZS2K7BtdIYU+8s9AjUcwtsmEfcd3DJcTZb5A
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CoRigphR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: do not re-enable
 miscellaneous interrupt until thread_fn completes
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA2LzEvMjAyMyAxMjoxOCBQTSwgTWljaGFsIFNjaG1pZHQgd3JvdGU6Cj4gT24gVGh1LCBK
dW4gMSwgMjAyMyBhdCA4OjQ24oCvUE0gSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+IHdyb3RlOgo+PiBPbiA1LzMxLzIwMjMgNzoxOSBBTSwgTWljaGFsIFNjaG1pZHQgd3Jv
dGU6Cj4+PiBPbiBUdWUsIE1heSAzMCwgMjAyMyBhdCA3OjQ24oCvUE0gSmFjb2IgS2VsbGVyIDxq
YWNvYi5lLmtlbGxlckBpbnRlbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gQXQgdGhlIGVuZCBvZiBp
Y2VfbWlzY19pbnRyKCkgdGhlIGRyaXZlciBjYWxscyBpY2VfaXJxX2R5bmFtaWNfZW5hKCkgdG8K
Pj4+PiByZS1lbmFibGUgdGhlIG1pc2NlbGxhbmVvdXMgaW50ZXJydXB0LiBUaGlzIGlzIGRvbmUg
YmVmb3JlIHRoZQo+Pj4+IGljZV9taXNjX2ludHJfdGhyZWFkX2ZuIGNhbiBydW4gYW5kIGNvbXBs
ZXRlLgo+Pj4+Cj4+Pj4gQWNjb3JkaW5nIHRvIHRoZSBrZXJuZWwgZnVuY3Rpb24gY29tbWVudCBk
b2N1bWVudGF0aW9uIGZvcgo+Pj4+IHJlcXVlc3RfdGhyZWFkZWRfaXJxKCksIHRoZSBpbnRlcnJ1
cHQgc2hvdWxkIHJlbWFpbiBkaXNhYmxlZCB1bnRpbCB0aGUKPj4+PiB0aHJlYWQgZnVuY3Rpb24g
Y29tcGxldGVzIGl0cyB0YXNrLgo+Pj4+Cj4+Pj4gQnkgcmUtZW5hYmxpbmcgdGhlIGludGVycnVw
dCBhdCB0aGUgZW5kIG9mIHRoZSBoYXJkIElSUSwgaXQgaXMgcG9zc2libGUgZm9yCj4+Pj4gYSBu
ZXcgaW50ZXJydXB0IHRvIHRyaWdnZXIgd2hpbGUgdGhlIHRocmVhZCBmdW5jdGlvbiBpcyBwcm9j
ZXNzaW5nLiBUaGlzIGlzCj4+Pj4gcHJvYmxlbWF0aWMgZm9yIFBUUCBUeCB0aW1lc3RhbXBzLgo+
Pj4+Cj4+Pj4gRm9yIEU4MjIgZGV2aWNlcywgdGhlIGhhcmR3YXJlIGluIHRoZSBQSFkga2VlcHMg
dHJhY2sgb2YgaG93IG1hbnkKPj4+PiBvdXRzdGFuZGluZyB0aW1lc3RhbXBzIGFyZSBnZW5lcmF0
ZWQgYW5kIGhvdyBtYW55IHRpbWVzdGFtcHMgYXJlIHJlYWQgZnJvbQo+Pj4+IHRoZSBQSFkuCj4+
Pj4KPj4+PiBUaGlzIGNvdW50ZXIgaXMgaW5jcmVtZW50ZWQgb25jZSBmb3IgZWFjaCB0aW1lc3Rh
bXAgdGhhdCBpcyBjYXB0dXJlZCBieQo+Pj4+IGhhcmR3YXJlLCBhbmQgZGVjcmVtZW50ZWQgb25j
ZSBlYWNoIHRpbWUgYSB0aW1lc3RhbXAgaXMgcmVhZCBmcm9tIHRoZSBQSFkuCj4+Pj4gVGhlIFBI
WSB3aWxsIG5vdCBnZW5lcmF0ZSBhIG5ldyBpbnRlcnJ1cHQgdW5sZXNzIHRoaXMgaW50ZXJuYWwg
Y291bnRlciBpcwo+Pj4+IHplcm8gYmVmb3JlIHRoZSBtb3N0IHJlY2VudGx5IGNhcHR1cmVkIHRp
bWVzdGFtcC4KPj4+Pgo+Pj4+IEJlY2F1c2Ugb2YgdGhpcyBjb3VudGVyIGJlaGF2aW9yLCBhIHJh
Y2Ugd2l0aCB0aGUgaGFyZCBJUlEgYW5kIHRocmVhZGVkIElSUQo+Pj4+IGZ1bmN0aW9uIGNhbiBy
ZXN1bHQgaW4gdGhlIHBvdGVudGlhbCBmb3IgdGhlIGNvdW50ZXIgdG8gZ2V0IHN0dWNrIHN1Y2gg
dGhhdAo+Pj4+IG5vIG5ldyBpbnRlcnJ1cHRzIHdpbGwgYmUgdHJpZ2dlcmVkIHVudGlsIHRoZSBk
ZXZpY2UgaXMgcmVzZXQuCj4+Pj4KPj4+PiBDb25zaWRlciB0aGUgZm9sbG93aW5nIGZsb3c6Cj4+
Pj4KPj4+PiAgMSAtPiBUeCB0aW1lc3RhbXAgY29tcGxldGVzIGluIGhhcmR3YXJlCj4+Pj4gIDIg
LT4gdGltZXN0YW1wIGludGVycnVwdCBvY2N1cnMKPj4+PiAgMyAtPiBpY2VfbWlzY19pbnRyKCkg
cmUtZW5hYmxlcyB0aW1lc3RhbXAgaW50ZXJydXB0LCBhbmQgd2FrZXMgdGhlCj4+Pj4gICAgICAg
dGhyZWFkX2ZuCj4+Pj4gIDQgLT4gdGhyZWFkX2ZuIGlzIHJ1bm5pbmcgYW5kIHByb2Nlc3Npbmcg
VHggdGltZXN0YW1wCj4+Pj4gIDUgLT4gdGhlIFR4IHRpbWVzdGFtcCBpcyByZWFkIGZyb20gUEhZ
LCBjbGVhcmluZyB0aGUgY291bnRlcgo+Pj4+ICA2IC0+IGEgbmV3IFR4IHRpbWVzdGFtcCBjb21w
bGV0ZXMgaW4gaGFyZHdhcmUsIHRyaWdnZXJpbmcgaW50ZXJydXB0Cj4+Pj4gIDcgLT4gdGhlIHRo
cmVhZF9mbiBoYXNuJ3QgZXhpdGVkIGFuZCByZXBvcnRlZCBJUlEgaGFuZGxlZAo+Pj4+ICA4IC0+
IGljZV9taXNjX2ludHIoKSB0cmlnZ2VycyBhbmQgc2VlcyBQVFAgaW50ZXJydXB0LCBzbyB0cmll
cyB0byB3YWtlIHRocmVhZAo+Pj4+ICA5IC0+IHRocmVhZF9mbiBpcyBhbHJlYWR5IHJ1bm5pbmcg
KElSUVRGX1JVTlRIUkVBRCBpcyBzZXQgc3RpbGwhKSBzbyB3ZQo+Pj4+ICAgICAgIHNraXAgcnVu
bmluZyB0aGUgdGhyZWFkLi4uCj4+Pgo+Pj4gVGhlcmUgaXMgYSBtaXN1bmRlcnN0YW5kaW5nIGhl
cmUuIElSUVRGX1JVTlRIUkVBRCBkb2VzIG5vdCByZW1haW4gc2V0Cj4+PiBmb3IgdGhlIGV4ZWN1
dGlvbiBvZiB0aHJlYWRfZm4uIFRoZSBJUlEgdGhyZWFkIGNsZWFycyB0aGUgZmxhZwo+Pj4gKmJl
Zm9yZSogaXQgc3RhcnRzIGV4ZWN1dGluZyB5b3VyIHRocmVhZF9mbi4gU2VlIGtlcm5lbC9pcnEv
bWFuYWdlLmMuCj4+PiBUaGUgSVJRIHRocmVhZCdzIG1haW4gbG9vcCBpcyBpbiBpcnFfdGhyZWFk
KCkuIEV2ZXJ5IGl0ZXJhdGlvbiBvZiB0aGUKPj4+IGxvb3Agc3RhcnRzIHdpdGggaXJxX3dhaXRf
Zm9yX2ludGVycnVwdCgpLiBJdCB1c2VzCj4+PiAidGVzdF9hbmRfY2xlYXJfYml0KElSUVRGX1JV
TlRIUkVBRCwgLi4uKSIgdG8gY2hlY2sgaWYgdGhlcmUncyB3b3JrIHRvCj4+PiBkby4KPj4+Cj4+
PiBTbyBpdCdzIG5vdCBwb3NzaWJsZSBmb3Igc3RlcCA5IHRvIGZvcmdldCB0aGUgaW50ZXJydXB0
IGxpa2UgdGhhdC4gSWYKPj4+IHRocmVhZF9mbiBpcyBzdGlsbCBleGVjdXRpbmcsIHRoZSBzZXR0
aW5nIG9mIElSUVRGX1JVTlRIUkVBRCBieSB0aGUKPj4+IGhhcmQgaW50ZXJydXB0IGhhbmRsZXIg
d2lsbCB0ZWxsIHRoZSBJUlEgdGhyZWFkIHRvIGdvIHRocm91Z2ggdGhlIGxvb3AKPj4+IGFnYWlu
Lgo+Pj4KPj4+IE1pY2hhbAo+Pj4KPj4KPj4gT2ssIHNvIG15IG9yaWdpbmFsIHVuZGVyc3RhbmRp
bmcgd2FzIGZsYXdlZCwgYnV0IEkgdGhpbmsgSSBzZWUgdGhlCj4+IGFjdHVhbCByYWNlIHRoYXQg
aGFwcGVuZWQuCj4+Cj4+IEknbGwgdHJ5IHRvIGV4cGxhaW4gaXQgaGVyZSwgYW5kIHNlZSBpZiB5
b3UgYWdyZWUgd2l0aCB0aGUgb3V0bGluZSwgdGhlbgo+PiBJIGNhbiB1cGRhdGUgdGhlIGNvbW1p
dCBtZXNzYWdlLgo+Pgo+PiBUaGUgUEhZcyBrZWVwIHRyYWNrIG9mIGhvdyBtYW55IG91dHN0YW5k
aW5nIHRpbWVzdGFtcHMgYXJlIGluIG1lbW9yeSwKPj4gYW5kIG9ubHkgZ2VuZXJhdGUgYW4gaW50
ZXJydXB0IGlmIHRoZSBjb3VudCBvZiB0aW1lc3RhbXBzIGdvZXMgZnJvbQo+PiBiZWxvdyBhIHRo
cmVzaG9sZCB0byBhYm92ZSBhIHRocmVzaG9sZCB2YWx1ZSAoc2V0IGJ5IHRoZSBkcml2ZXIgdG8g
YmUgMSwKPj4gc28gdGhhdCBpdCB3aWxsIGludGVycnVwdCBpbW1lZGlhdGVseSBvbiB0aGUgZmly
c3QgdGltZXN0YW1wKS4KPj4KPj4gQXMgbG9uZyBhcyB0aGVyZSBhcmUgdW5yZWFkIHRpbWVzdGFt
cHMgaW4gdGhlIG1lbW9yeSBiYW5rLCBpdCB3aWxsIG5vdAo+PiBnZW5lcmF0ZSBhIG5ldyBpbnRl
cnJ1cHQuCj4+Cj4+IFNvbWVob3csIHRoZSBkZXZpY2UgZ2V0cyBpbiBhIHN0YXRlIHdoZXJlIGl0
IGZhaWxlZCB0byByZWFkIHRoZQo+PiB0aW1lc3RhbXBzIGZyb20gdGhlIFBIWSBtZW1vcnkgKmFm
dGVyKiB0aGUgaW50ZXJydXB0IG9jY3VycmVkLiBXaGVuIHRoaXMKPj4gaGFwcGVucywgd2Ugbm8g
bG9uZ2VyIGdldCBhIG5ldyBpbnRlcnJ1cHQsIGJlY2F1c2UgdGhlIFBIWSBzZWVzIHRoYXQKPj4g
dGhlcmUgYXJlIHN0aWxsIHVucmVhZCB0aW1lc3RhbXBzLiAoWWVzLCBJIGtub3csIHRoaXMgaXMg
YSBwb29yIGRlc2lnbikuCj4+Cj4+IEJlY2F1c2Ugb2YgdGhpcywgd2Ugc3RvcCBwcm9jZXNzaW5n
IGFsbCBmdXR1cmUgdGltZXN0YW1wcy4KPj4KPj4gVGhlIGFjdHVhbCByYWNlIGlzIHBvc3NpYmx5
IHNvbWV0aGluZyBsaWtlIHRoZSBmb2xsb3dpbmc6Cj4+Cj4+IHNhbWUgc3RlcHMgdXAgZnJvbSAx
LTcsIHRoZW46Cj4+Cj4+IDggLT4gaWNlX21pc2NfaW50ciB0aXJpZ2dlcnMgYW5kIHNlZXMgUFRQ
IGludGVycnVwdCwgc28gaXQgc2V0cwo+PiBQRklOVF9PSUNSX1RTWU5fVFhfTSBpbiBwZi0+b2lj
cl9taXNjLgo+PiA5IC0+IHVuZm9ydHVuYXRlbHksIGljZV9taXNjX2ludHJfdGhyZWFkX2ZuIHRo
ZW4gKmNsZWFycyogdGhlIGJpdCBhZnRlcgo+PiBleGl0aW5nIGZyb20gaXRzIHByb2Nlc3Npbmcg
bG9vcC4KPj4gMTAgLT4gb25jZSB0aHJlYWRfZm4gZXhpdHMsIHRoZSB0aHJlYWRlZCBJUlEgbG9n
aWMgcmUtcnVucyB0aGUgZnVuY3Rpb24uCj4+IEhvd2V2ZXIsIGR1ZSB0byB0aGUgd2F5IHRoYXQg
d2UgaW50ZXJhY3QgYmV0d2VlbiB0aGUgbWFpbiBhbmQgdGhyZWFkCj4+IGZ1bmN0aW9uLCB0aGUg
c2Vjb25kIHJ1biBzZWVzIHRoYXQgUEZJTlRfT0lDUl9UU1lOX1RYX00gaXMgdW5zZXQsIHNvIGl0
Cj4+IGRvZXNuJ3QgcnVuIHRoZSBsb29wIGFnYWluLgo+Pgo+PiBUaGlzIHBhdGNoIGZpeGVzIHRo
aW5ncyBieSBlbnN1cmluZyB0aGF0IHRoZSBoYXJkd2FyZSB3b24ndCBldmVuCj4+IGdlbmVyYXRl
IGEgaGFyZCBJUlEgaW50ZXJydXB0IHVudGlsIHRoZSB0aHJlYWRfZm4gY29tcGxldGVzLiBXZSBj
b3VsZAo+PiBhbHNvIGluc3RlYWQgZml4IHRoaXMgYnkgaW1wcm92aW5nIHRoZSBjb21tdW5pY2F0
aW9uIGJldHdlZW4gdGhlIGhhbmRsZXIKPj4gZnVuY3Rpb24gYW5kIHRoZSB0aHJlYWQgZnVuY3Rp
b24gYnkgdXNpbmcgYXRvbWljIHRlc3RfYW5kX2NsZWFyKCksIG9yIGJ5Cj4+IHVzaW5nIGFuIGF0
b21pYyBjb3VudGVyLgo+Pgo+PiBJIGNhbiBzZW5kIGEgdjMgd2l0aCBhcHByb3ByaWF0ZSBmaXhl
cyBhbmQgYW4gdXBkYXRlZCBjb21taXQgbWVzc2FnZSwKPj4gb25jZSB0aGlzIGRlc2NyaXB0aW9u
IG1ha2VzIHNlbnNlIHRvIHlvdS4KPiAKPiBPSywgdGhlIG5ldyBleHBsYW5hdGlvbiBzZWVtcyBw
bGF1c2libGUuCj4gTWljaGFsCj4gCgpSZWFsbHkgYXBwcmVjaWF0ZSB0aGUgY2FyZWZ1bCByZXZp
ZXcgYW5kIGhlbHBpbmcgbWUgdW5kZXJzdGFuZCBzb21lIG9mCnRoZSBhcmVhcyBJIGxhY2tlZCBz
dWZmaWNpZW50IGtub3dsZWRnZSBpbi4gSSdsbCBzZW5kIGEgdjMgd2l0aCBpbXByb3ZlZAptZXNz
YWdlcyBhbmQgSSB3aWxsIGFsc28gY29udmVydCB0byB1c2luZyBhdG9taWNzIGluc3RlYWQgb2Yg
YmFyZSB1MzIKdmFsdWVzIGZvciBwYXNzaW5nIGRhdGEgYmV0d2VlbiB0aGUgZnVuY3Rpb25zLiBJ
IHRoaW5rIHRoYXRzIGJldHRlciBldmVuCmlmIHdlIGxlYXZlIHRoZSBPSUNSIGRpc2FibGVkIHVu
dGlsIHRoZSB0aHJlYWQgZnVuY3Rpb24gZXhpdHMuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
