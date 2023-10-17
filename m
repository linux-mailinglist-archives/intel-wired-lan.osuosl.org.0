Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF097CC9FB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:35:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34522821DE;
	Tue, 17 Oct 2023 17:35:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34522821DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697564157;
	bh=rxwfhdNetkZsHQxEx56FYot3q475k4si+gtELB7ntlA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I3IyiH59AAGEB8rjKCYR18B/u0AK/MMvEzu0PAyx/mWi7WESrgIS/0vldF2Qf3AHU
	 zryirCLRb1SI+wxyxV+Q4up/HceVkIH8Kp29nZIFeemGppwItz2HojrWe8i3rqZ9uA
	 gGS13D6EShNEcbuiCu9g9kg04aXIlTAYwHze3DXlTGjgcubL4o3jiXJpTsJk5qRj+U
	 br8YSvz5IZyFfpAyhp7SZ9gneeZH+ypieDWJdiwcDmXUMEIllNj1lhEvE80HO8Xa0R
	 3FFZchjeaJqWXthL+v/Y8BkKBfPKw+ksCDfWyQUPDD/itOBigoytSHjVPzVsh6/RIH
	 P7lTuVIeSmlwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hKVeOu0ybO_1; Tue, 17 Oct 2023 17:35:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3C7F821B9;
	Tue, 17 Oct 2023 17:35:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3C7F821B9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 604221BF32B
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 354D3820F2
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:35:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 354D3820F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIqyk5cWVQil for <intel-wired-lan@osuosl.org>;
 Tue, 17 Oct 2023 17:35:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6DB3A81F36
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:35:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DB3A81F36
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="385680069"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="385680069"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 10:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; 
   d="scan'208";a="4020219"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 10:34:36 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 10:35:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 10:35:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 10:35:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dSrHaf0Yk0FUlQxWbj5rlO4uA0M8xrovXLbAZtm2Q67uh3Bbxr8pz0ZiR4BBd6V7MBUPd6gPmld5Yw3VloF5KkWtlfpl95L8d6HXvuzv1UTRimWMR5zGTCS6ETvjPl/MYclwMS9sCnY+odoztwRuk97svhj4p+xF6APDrFNuiYo3t9FSfCvtRoq4V3DGosPcyB43YNmv1XqDLin6EZozsvtv8ztNrJpkAauyYjhiuAj6b6N6XSohwIYaPJDIY9dZip3j+At55KXQSZpelqSvyPXQ1bafsg4vDRMADPhEFMhhyXuDam1hMZUDhesDXElGNHDO3zG1trMdd2KiLoPLOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FB5oQktAcAjAMQSaex/eChYSbaEA8mR/4VhGjDxgdIw=;
 b=AeT8PZY17dGDAKRTN88GbnCPfBxzxsp810ZoJZS7MJiy1iDmYArWvSG5hzg46GlvgMdmDF1b2OYQkG64FP1vWv8LBFYMTrZYOb4t3eLRQYYk1ZEJFzr4o7wWr8WzBYKKblPPKXaKchC2qDsgbIy2zIS+M1oZMHGQBNqRKo+RZWMMzXx7g6RGXzX5FLD6TTL9Rf1Ge1T3/8CVQiAxrHBDqfFN+qQS3YXrI7fxL8g2gOzlEIRNTwSX4icZPBxML+yrVI1Y/WTkCGHgYjy1G8OgqtUvrArGdQU5erCD07vGIUAk+Vy6EJEjop8d6eT0qadc/uIM7MyA+SHJd1BoWC9iNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 17:35:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.021; Tue, 17 Oct 2023
 17:35:36 +0000
Message-ID: <91efda87-c60d-4988-987c-9824717f5a2a@intel.com>
Date: Tue, 17 Oct 2023 10:35:35 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-4-mschmidt@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231016164849.45691-4-mschmidt@redhat.com>
X-ClientProxiedBy: MW4PR03CA0337.namprd03.prod.outlook.com
 (2603:10b6:303:dc::12) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4719:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cbfebec-96e6-453a-034b-08dbcf377929
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MYaCfmVQsi+LO1vGzn52agHV6gwBS7mm+QGgiRSh4C0sVbn2aRqKXHZNLckfZWfnh4NPxOgDB+ZP4oW0myAesTCVbE+mxE1z/2aPba5HggUvIWjKpuIGB6yQaqINYBRU1C4i0KurJ1Sqq7UEsQRfl3WKSjVm4OSFkiKzk1kw2VXYLiOjKsyVNNVWMcPKq1d+q2EFNdA5HcitVtaT748UxJavxqw4ADb4OCwPdLgRy8F+alKWaEJXy9Bz2zCn/IH34QZtbGvkF3EAJGf1VmcMKw28WyRdrXiLMoTjb/r3iGrnch7mZ/zT0otvzIwaUNbJ7ptqORCUpdRQ6g1Gsx+Kg+O+uLZdPGoH2YxjHY1sbB2hA+nyf1on1ZKPQYI9TQ+bOzFSlPLMGR2hPsP0AybjSfnAdiJ0H+do1lCkD8Gy3676w4njWFq/eVGyhZsQjG9TZkPgmf3F74r3p6tGBZoSfE2JiKEHAo8TcbZmb4Px5fFAspD/5g0IMBjg73XZW+qXg2ysEtnIFyuZ54TI1M9hQs/R8o7x/aLUEVMD1TLt4pcYN5y2mMeGcfkbnUJVXDT2ItpWDbG87QmLzN/r6RQV6ynTals5rvWBFh677QfGmAqCC9/Q8d5QfUUu0RFz3ExFoGy9E4QICPWJWj4Sj4Z9uQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(396003)(346002)(366004)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(6486002)(2906002)(5660300002)(41300700001)(8936002)(8676002)(6916009)(316002)(66946007)(66556008)(66476007)(38100700002)(478600001)(53546011)(83380400001)(6506007)(6512007)(26005)(36756003)(2616005)(86362001)(31696002)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RU9jZFJ5U3BvV0UwNHJwSHdPbFcvWndCSm5NcDJaVTVOTzZTM3lHaHdMOVY3?=
 =?utf-8?B?OWNqamZJTW9mTVlKRVk1V21SZVljT2JrR0w2dHE1ZmdTVEV5cldGNmlDR1Jm?=
 =?utf-8?B?K2svWXd2K3ZVaEpsb0RyU0FhVE5MYkkreld0ZXRSVDBETEd3VzlzcXNXUDZl?=
 =?utf-8?B?QW9QWkF3Sy84UHdGSE5xaVVFUTRFUmFtdVJuSlRZdjI2MG5rRnFneTJaVFlz?=
 =?utf-8?B?WUVkWEp3V29PMXN3Y3BocSsvK3RlS0pmTlFlSlVWb0FSYThVb2xmcXNxVFFl?=
 =?utf-8?B?SXFrbFJadVQrZ1VpcXBTcUNVTWQ5bzJ1ZElJL3lITXQ0YWN0SmkzR3dpUVRy?=
 =?utf-8?B?cFB6Tmw1blhtdHJpcmpLVHFkWlNwVStHNTVIMWVGMW5tbUpnTGtkMWV1VHNH?=
 =?utf-8?B?YTkrd0pOUFdueEFhY3pNa1RzUnozNmZYKzNZN0ErZkhvUFRhNnZnczBESXdv?=
 =?utf-8?B?SnFxcDdZSGVjY0cxOFcwU1JTSUFzVi8xd0xzV0wwNit5NjkrbVFyN24zTTdW?=
 =?utf-8?B?QUl3T1p5WnMxYklmaEQxaEdIcmVtdWZuUUNkSGNRVGtUcDdISnkyZkJqeHNY?=
 =?utf-8?B?bS9SWEFoZ0pCU2ZFTCtQTmtoMDB1NXdQL0NwTUI4RjRTZzVzN2t5Y1hDbkI0?=
 =?utf-8?B?WjV4RTlQdlRZTHJuWW00M2NYSjZKQ1RKR21oeWpvY2dPb0VoTFh4U3FTSUhq?=
 =?utf-8?B?VmhnMHVEZi9HZFNpci9QS2xuODNVYmd1ZXBIWDM4K21kSk5NaDBxSFd2WGg1?=
 =?utf-8?B?VWVuRURKa0VoRzVDT2NFL3l5eUcrVmtLOWdXL1Fwelg2M2ljREYzOU1PUWhz?=
 =?utf-8?B?a3FNQ1pBMHdRWkZFMnFlaFBlS1E1V2g3d1I0OGFRRVc2Tk1jTTFkY1NYc3d2?=
 =?utf-8?B?S2ZLS3p4bkJheXhJRFdsb3ZaUkJXempzN2xHcENGa1RlZExiWkVzbUNJZy8x?=
 =?utf-8?B?RmhWNWtSUnRIaldCbmMwNm42SVhLZ3ZoZXh1OGM4M3hMNjBNczBMdG9hdXlh?=
 =?utf-8?B?Q3JCTDdxbFJrc3E3WS9Ib2dHcjUyMCtpMUpuZjRUMVMwenVLa3JGekpWcUIx?=
 =?utf-8?B?VWlvdmF1MDNRaVdwbmptY2ZPWVhtYWxLeWdWZklaVnZIS2x0Tk5MWHhZT2Ew?=
 =?utf-8?B?NkZUR0ZxcnROQ2ptZGN5dXI3bEVVRjdVaW1VMTZRbUlZb1lLaWZobnZLV3hE?=
 =?utf-8?B?VVJVSW5WYjBOVDB1ekNKallEYmRzeWVXUnJkRnZ3NHB2UHVhTnRnTFdBaG1j?=
 =?utf-8?B?Z2FwUnVSUThiYkg3T20ya0ZNek9hKzdsSFd1eVp0V0RwSS9GWFk2enZidlc5?=
 =?utf-8?B?UXFiT1VyYi9ZR0syMW9UNFh2QkRjZlJYdEFOVDU3M0hCYzZZSjBaOXZtL242?=
 =?utf-8?B?YndleXhyY3pacDZZVWR0Z0tBdnUzUHhDb2ZMZUQyVHRtclNtOUdEV1FoOHdN?=
 =?utf-8?B?b2hBb2JMNjU0cXA3TkphdWNpZWpSYkEzOWVFV0dhY2p6YzlaTVdqK0hyb2hT?=
 =?utf-8?B?QU1JWlh6MGpjamJiNEJUdjREdFBicHN5Q1ZNVVdwRVh2NlQ1QlZYNUNGcHpi?=
 =?utf-8?B?SEpRV2VldVl6QzNTYnFFZUxtTy9lKzk4ZlpwV3dPZ0pPd2tUTm5zWURtR1JC?=
 =?utf-8?B?VU9sdjdGaDhTaURoaFJZUnB2M0ZvNXFlOFI3bGZqMUdHcWQyRjdWRDVDWU1U?=
 =?utf-8?B?NVpmRFp1ZXYvM0RBRkhpeVc4ZW9lL2ZlMHE2ZDlHSklaODVZbkJpamlYN0xH?=
 =?utf-8?B?ZzloS1ZUSzRVWDFOWDRsbWtPTXJOWUc1dkxTK3RDdUlhbjFvVnlWaUs0NUNI?=
 =?utf-8?B?aGQ1V2s4SEF4SHc4YUcweGNDaWdhZ0V6c1VPZXpZWXVHWU5VcVo1Ky9iNFd2?=
 =?utf-8?B?SmgzbTh0MVlTZVpGMUxQVUNrQmdMdnhId3hXYVZIZlFiUkRFcGlvQjUwd1Ev?=
 =?utf-8?B?UjZKYUNXbzd3UWVJeWttd2N2dzJZb0NlN29sNGtDY3YzZU42WHIvamRpenl6?=
 =?utf-8?B?UThUUGt3L0VSc212d2dQU3ZVblF5emE3bjJsNXpoTHplZXd5dS9SWkJ6ODBB?=
 =?utf-8?B?OVEzRFN4bk9tK01vVE5ZdnVGcW1uK2NtOS80L1VNd1pIZ3MrTzdNcHcyeGNw?=
 =?utf-8?B?a1FMQktXbmk5TytoV0JZSzFkamNEQnU2ZUp3dUU5ejg2YTJiVy85dTdPbjdD?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cbfebec-96e6-453a-034b-08dbcf377929
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 17:35:36.6789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1CHNugn6WEIngjAYeQrVU9TvdQhHK4mwdsZ0Kj/wbI8CSP+VWQ2TM4QZKMK6guX95zJK3S68QwywJ02GLkhbbE6CRkVANAuUzVuHpbFZq8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4719
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697564149; x=1729100149;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=71dydv4VPNY5VngRayZi4FI3xSTCcOTvSfC9NUfv3WQ=;
 b=K6PCU470ozwicjzHIgS/bBylXrsM3fDGQii9KiVuR04nE2nxMOh6Jz8S
 epex8qT763vXz0TWd7F68pnB7aeiRwacOo7XDQebNWbch+lAm1/0+UOZw
 CT2ucs/UAHRD0+MBcRTx4TDoFMcsBNk6oW4PMoR96IZEYIkZXWK7EaCg6
 cxNKHTjo73Byq4S0+8n5J+vdQT9hlOdThkBQfrpnRcGb0sDRA5+KcNtfR
 wV2b9p/dsrqyQO2P6OatPqXL7vV7zsod/ma997AIsLaK+z5gMbr1Jb55M
 LU04xrh2jvRkx5YZzVpLs2eTLpO2LyhBUGtSao01GnOFy4ZJIbgeIJ/Kz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K6PCU470
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] iavf: add a common
 function for undoing the interrupt scheme
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



On 10/16/2023 9:48 AM, Michal Schmidt wrote:
> Add a new function iavf_free_interrupt_scheme that does the inverse of
> iavf_init_interrupt_scheme. Symmetry is nice. And there will be three
> callers already.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/iavf/iavf_main.c | 26 ++++++++++++---------
>  1 file changed, 15 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6036a4582196..791517cafc3c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1954,6 +1954,17 @@ static int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
>  	return err;
>  }
>  
> +/**
> + * iavf_free_interrupt_scheme - Undo what iavf_init_interrupt_scheme does
> + * @adapter: board private structure
> + **/
> +static void iavf_free_interrupt_scheme(struct iavf_adapter *adapter)
> +{
> +	iavf_free_q_vectors(adapter);
> +	iavf_reset_interrupt_capability(adapter);
> +	iavf_free_queues(adapter);
> +}
> +
>  /**
>   * iavf_free_rss - Free memory used by RSS structs
>   * @adapter: board private structure
> @@ -1982,11 +1993,9 @@ static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter, bool runni
>  	if (running)
>  		iavf_free_traffic_irqs(adapter);
>  	iavf_free_misc_irq(adapter);
> -	iavf_reset_interrupt_capability(adapter);
> -	iavf_free_q_vectors(adapter);
> -	iavf_free_queues(adapter);
> +	iavf_free_interrupt_scheme(adapter);
>  
> -	err =  iavf_init_interrupt_scheme(adapter);
> +	err = iavf_init_interrupt_scheme(adapter);
>  	if (err)
>  		goto err;
>  
> @@ -2973,9 +2982,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
>  	spin_unlock_bh(&adapter->cloud_filter_list_lock);
>  
>  	iavf_free_misc_irq(adapter);
> -	iavf_reset_interrupt_capability(adapter);
> -	iavf_free_q_vectors(adapter);
> -	iavf_free_queues(adapter);
> +	iavf_free_interrupt_scheme(adapter);
>  	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
>  	iavf_shutdown_adminq(&adapter->hw);
>  	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
> @@ -5206,9 +5213,7 @@ static void iavf_remove(struct pci_dev *pdev)
>  	iavf_free_all_tx_resources(adapter);
>  	iavf_free_all_rx_resources(adapter);
>  	iavf_free_misc_irq(adapter);
> -
> -	iavf_reset_interrupt_capability(adapter);
> -	iavf_free_q_vectors(adapter);
> +	iavf_free_interrupt_scheme(adapter);
>  
>  	iavf_free_rss(adapter);
>  
> @@ -5224,7 +5229,6 @@ static void iavf_remove(struct pci_dev *pdev)
>  
>  	iounmap(hw->hw_addr);
>  	pci_release_regions(pdev);
> -	iavf_free_queues(adapter);

Strictly speaking this does change some flow because we didn't release
queues until much later.. but I think that should be ok. I don't see how
waiting to free the queues would matter here.

>  	kfree(adapter->vf_res);
>  	spin_lock_bh(&adapter->mac_vlan_list_lock);
>  	/* If we got removed before an up/down sequence, we've got a filter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
