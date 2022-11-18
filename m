Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 667D162FF51
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 22:22:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C38A141A2F;
	Fri, 18 Nov 2022 21:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C38A141A2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668806550;
	bh=0y4sqNwiZxHz8xPy7624+YuvWCe/gxRxxzewRFC8f68=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6JHFObvqxJi+uIqmtJ35gjkfRof3EE+P1pGRxLtVWd+FXuslfk9qyHn3TCO9Ab7Tb
	 UKxjUIHYULxgO65aI4fABl6m+OOLREPiBZOFjN53b/2WP8SZW5ZlAmEs302gztzvFL
	 EOoH6zJw1nkidPnacue/JI3VBjjmXalVNC+5qoCxrHbK9GGgPISw7k9JDC/jJTs/er
	 y9pnsYnOZENmBrhcDsyAzAaAWR3y0Jpj+62HMe50O5qVPWjSOXgd0pn/xagZYCGeYg
	 DtC4q68Sc0eq25ktBpCyY94kF0QCr8CUg1RWBQc4QjJSHbtQ58l/bd7q0t3nmSpxrb
	 +m+WZctiwJwWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AbtFqXMMrGuF; Fri, 18 Nov 2022 21:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 884A74177A;
	Fri, 18 Nov 2022 21:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 884A74177A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CE6F1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 21:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D63140297
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 21:22:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D63140297
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2GB6joZ8F7z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 21:22:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E5EC4013E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E5EC4013E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 21:22:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="292948490"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="292948490"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 13:22:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="765300979"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="765300979"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 18 Nov 2022 13:22:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 13:22:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 13:22:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 13:22:20 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 13:22:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MlZa1dv4cHg/365Uf1cL7B2Kp6AYSzlJCBJiRrK0LTPlES1mFVBLDJNBGH3/tdkGKiUyZAqToRvApRue/En70HZw08EhKYBzUzSN1ycK5itAz+Q4REJhjEM/hvAezafPUEeTyYKkh1XruRZHKyS10c6c4BvcGKbaUf8gPtFq3CUt21+cR4N7tF3KdhN5ZORy90npG/fpQ8AfXjz7ExujSCFgWe+kL8BVRA/d2GTx5SrEBJncNYGWL8e/Hcmpcj/QCR12cO34aqS42r9FQyGY52yjYpby04oAoA1IOvvSgbgrTRJ6ljTM3aGzIEWK+1c9fF2884p5hZt4VDzxHMFuhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r3d5XB1a37EmHz5U7XWscvif7klJMP+rYAxFJaBoT3A=;
 b=ZrhSTiE5Q1r2hekJbpUTtC/5ne8GB0/PY3LK6+J7yuqCizQ69knIJVT7ULnubTRjkBoinfmK/JQDs3HpvCX1TTmy2bRNRtryegIRvTjcTnPmfrY2a0Q6q9hhyS4eacox9jBVoIB1fV7zWJ+9f++bToIPjrF09ae3buEbJqpss5Esl3K7xBY+lDJhftfxt/0Zl2TbwUdmsj3E2iJkvlmmTAP/glYZkbikrfDgqx7sdwon4LxwzjMTsqiql6uVx4STbRMo8kdwh7oUVVZto/sh6aa0dF0u/3C0euTpczbxx7D3Dx5gXm9V9kdPB5b9KXNX8kXIdbfY9CtsuodfHQQrHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY5PR11MB6486.namprd11.prod.outlook.com (2603:10b6:930:32::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Fri, 18 Nov
 2022 21:22:19 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5813.020; Fri, 18 Nov 2022
 21:22:18 +0000
Message-ID: <8bfc72e6-4dbb-0aff-b135-d2945ffb5098@intel.com>
Date: Fri, 18 Nov 2022 13:22:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221118192042.14329-1-benjamin.mikailenko@intel.com>
 <20221118192042.14329-3-benjamin.mikailenko@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221118192042.14329-3-benjamin.mikailenko@intel.com>
X-ClientProxiedBy: SJ0PR13CA0066.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::11) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY5PR11MB6486:EE_
X-MS-Office365-Filtering-Correlation-Id: 5eeac517-5070-471a-c5fc-08dac9aaf91d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e31BaChNJLcHTNxNW4f3I7oPABYWJYVPKMlwUWe2UPAjE6RWu1NCU48OHSCgIEVufxn0tz51YBDDwsEyY0t1xrnbmrRbC3jiE1lXKNoHSbaV5ZBDPMaQpc4MUZrKN/vn38MM3sS/ByWeHQ5bvswm8sMvmjVdiz7cy+1DnTv7AbwEYiOuYbtyp+zLGp/p1OJ7AsovesiD/crAx4nkPutrbN76XMKZLGsQyPvTZJG28qfsh8DZEOPXNFb3bTK3FNEzr94dmlIgUMIDtjt/4Jl2fY78V/KGb1fY1Hob325M4nSiXAuvokfVtjwKeRUmxN2zdEJgcQCV0gzVjt92MK+qlxNSNgxmNCdbAN8pd7Qt3ax83jd8Kx8tc9W6j7TRxn7QRbWupgaJgFDahPYLknfbgwpYcI7kXtHGl5awVbF/2MBb9RlU/Iz8Txl4HdY2zoVPKyDrKzk1gPmsjnrmfy4L/GDqBaHVYD4chcTcGpLK6PCDXiGRbFQcNwtWbIMiwjZlBaSdB8J8GS9sy4pgfGYM7bzqakrUtN6jF7S2mQEr1afUqvn9GYsyD1z2o1z66WCF2hnaKyt10QsonU7IaZ0YO0lV9siebqO7wqtpjsTjym48O2T+glCduYJba0WUTpR/hkVE5jmINArOQhnXmwjTdD2Z45hfsXCvFMWkgBf1+Xo0tRaV9MGyDrHvduRFa2IH48sZicuncOHYeAVZ/O8K3MqS3s4b2KaIKZDeLBsEUkU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(346002)(376002)(136003)(366004)(451199015)(2906002)(31686004)(83380400001)(8676002)(38100700002)(41300700001)(186003)(36756003)(2616005)(478600001)(6506007)(53546011)(6512007)(66556008)(5660300002)(66946007)(66476007)(8936002)(26005)(82960400001)(6486002)(31696002)(86362001)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDdhUHh1SDZJRmhiY2JXYzBQUmE3eWNHUGNraVI3UXBweHpqZ1Y0SFdPTzJp?=
 =?utf-8?B?Q3o2YklRWFNpYk9WRzZ0em1tVzRZclpPMUZGdkpXM0E1OEs3TTV3MnN5TEFs?=
 =?utf-8?B?aHBTcUc4a2VFSkRjTkRKZFJydVZsVi8xRTJRNmlWS0srVzVHMmxzNXdVWGJj?=
 =?utf-8?B?S1c2Tnl0RGFRYkh4TTBlOW5NYjhEaEhKdVNGNWdkUHk1VExxVEFseWl1Z3hI?=
 =?utf-8?B?YWlQcTNFLzloSXl1a1BtbThablFaNjBlc1RvcFh5ek1BU0hjSWFLYy9yNTEy?=
 =?utf-8?B?Z0ZDT0VBVmdielhQaXJQdytzeEhINFVPSjIrL1U2cVBJUXBBeVBTSXF1Y1Jy?=
 =?utf-8?B?Unh4YVE1NWRSb1p6U3FHbWYrUTdvOWZEYVdqanlLaDgva3FRUWFkVUVZb0ZL?=
 =?utf-8?B?WlJjU3Ftd3VBdW00VjlBZ0JoazMyVnNVN2psVXRsMEJweExIaktmRkFnVEM2?=
 =?utf-8?B?NWxaYkVudHJQRzRJdzNmZTNuSm41U241dVloOXh3aUlsSGpBYXJmMFRDMGI4?=
 =?utf-8?B?UHRRTzg4aUFRMzhBZDJLd3hwenZGTTVya0xYenlSWEtmMnZzOUMwL3duNFFM?=
 =?utf-8?B?OHcvMmxDZFpJdEsxT0xvdXc0L2RKU0dOajNYeFpwM1ZBd2Y0SmZrbndieFBS?=
 =?utf-8?B?dVJLdmZSeW1LSXc2VnZvOHo5UnNrWHRyaitZRkRiMnJraVVRMklIaUt6V2wx?=
 =?utf-8?B?YkgvdFZSc2RqQVc0S2UvMnhQbzNQaHd3SG85MmwxcDJFNlFNaVVvbnNxQmls?=
 =?utf-8?B?czNyUW4zNnJJVlkyWWQyRC9mQndqdGc2ZFVCa3MrMW1qellKTGlNMFFQOXN4?=
 =?utf-8?B?OFpLWUxYb2lPRm9BeC9jdkp3SWFXdGhJSHc3ZWpGU1UzOVRzcWp6T1BYcW0z?=
 =?utf-8?B?Y1lBVTJra2lSdjZrSzNFOVJoU0I3dEVFUjRGc2VBbTJQZVFhNnU4SDFlQUkr?=
 =?utf-8?B?cjJYNFZnbHcwcG9VcFhxMmVaY0VHZ1VucHl4ZWVodjB6WnZ4TVZ3Vk1YY0ta?=
 =?utf-8?B?V0RxR05qWDhzWXIyZnF5b2crV0huMmFITnR2MDY3N1l4SEtZUGtZcUQxSHlt?=
 =?utf-8?B?N3o2SGtRRGZhNHBqNmgybGdDdEdyTTZMcEkvbzNDQy9SYjA3VHdNSDlYamN1?=
 =?utf-8?B?VzMrVU9DSnVJYjFNQ3haOXJGVER1YTVVRG4xb0pMWXk3Z1FTUFVkNWtiYUxv?=
 =?utf-8?B?bDM1dVBubHM3TjlvZVdjWEJHdk1NNlR5NSszMHlBeVp4N3JObzJzZ09ocVJC?=
 =?utf-8?B?eXlId2NFM1Z3ZmZGeXBQbkJuc2syejQzcU8vRHIrSjJZMCtGYXNYZXd6N0My?=
 =?utf-8?B?MmFwUjFkMlhCZW9wMWVxR3JwcnUxeEtMdHFpSngxd3dqZGlOTmcvY2hVT0ZN?=
 =?utf-8?B?WUtjOG1QcTA2d2FkaitnK2tqeldXZlBPMkN6aDNIbWNiM1o3QmxRYWQ1QUpS?=
 =?utf-8?B?UFo2by9FdFFtZElxemNHUGlvZFN1L20xTk5VYll3OXVWR0pYUFZLRXhmRmpV?=
 =?utf-8?B?WExpYXRoWS8rQzdLcElrVFZWTk4xNm83K2t2aDlMdHlRcUF0VmsrelgyTFpH?=
 =?utf-8?B?VWhOWjlPV21xb3MxMGViV3ZaRXdkNkZ5bjlzNExLa1JzOEZoS2xOeHhXWEhi?=
 =?utf-8?B?TVFZUkpaS01OVHFlQzN6SkJGRTdvb2Z5ZjIxUC8wUTZQaXZJYUliOFRTZEUw?=
 =?utf-8?B?SjIzSWd4SHBKcEF5bmZEUU9QNS9lMG5JS0RNTXl6Skg4cDMzZUt0ZHJwakxk?=
 =?utf-8?B?ZkYxK3ovc1ZqSmRxU3NEVGVvRDNUVXY1YVdFYXNyaElEanAxWURMeGJkSm5T?=
 =?utf-8?B?bXBvTzhnVmRuK1piKzN0aHB1bS9MSENaSHc3TU1ka2RKaDk1dno4NUNxekRz?=
 =?utf-8?B?eXRqN2lXSE9ZajVqeEFDbVdPd2JNd05ETVd6MkVTSlBKL3UwVUQrcFZKN2wr?=
 =?utf-8?B?aFRsbXpSV0hPZFRwVy9WNThIR2psbXpQT2RhaWVmeU1oanVNNkhkUHRCb3g4?=
 =?utf-8?B?OHJwcHRCc3QreFN0TjhsblQ5UGRNTjBiSWJ1VUI2RVU2ZTVrWVZoTXBrVS84?=
 =?utf-8?B?aENTZnV3WW9tcm5kMHRkd0tKd0lPVHpYRksvY0JCMHRVK2lsRDN1Q3hnVGw2?=
 =?utf-8?B?Tkd3OWt1cm5JZnlZZDJvb0NvYmc5bFhTdlJTOXorUU92ZzBXUWU1bWJLUk94?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eeac517-5070-471a-c5fc-08dac9aaf91d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 21:22:18.9478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CYvmzBkc2HLzoJMBCb4n+PoIqVpnar+rI+RHv88KwKi0KjfcJ5NcUPMZcVbZX7QairpoNvQauF9IlBGPqBcw9/QlqahMM/sxRVemV/DmpiU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6486
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668806542; x=1700342542;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ioV8MGVl6PnfQWH8enX+AEdfDPPaTSyxjiITYvLGMh8=;
 b=U7VvByjcb5ko/laAyzHDJmBKuaPYnoGXROCvmJGmo5IZi7lDr6Gh3pEg
 Dv4MdMEFGuUCePkAWapLwRy6r3qtwkL/8IQlCft50G9nMUxYOB4TAFDHT
 QfMt5/OgUdHtiyr2Tvhc3V2qFq0ksFo0aSJIhro4V5qpVJzWwnTYrd2Or
 20QCrX0uZLJOe47mqcg6WevOSbGk0pYYUv27RyzEKDqPRodjSoMO2EwL3
 WZ8mfLFuxBT6Kn9TC1MZ5ZbH8EjqY0tAVDYWBX/B3I6xz2Cco1kKYwue7
 fVmy8f6R2sOsJhFeS66XNJW28qPqO/UoIbA3CWrsnwG0eZd/0uEeLZbpH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U7VvByjc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v7 2/2] ice: Accumulate ring statistics over reset
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS8xOC8yMDIyIDExOjIwIEFNLCBCZW5qYW1pbiBNaWthaWxlbmtvIHdyb3RlOgoKLi4u
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5j
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+IGluZGV4IGZlYTY1
NzM1YjJhZC4uNTc2MmE1MDM1ZWY0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbGliLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2xpYi5jCj4gQEAgLTQ0Nyw2ICs0NDcsNTIgQEAgc3RhdGljIGlycXJldHVybl90IGlj
ZV9lc3dpdGNoX21zaXhfY2xlYW5fcmluZ3MoaW50IF9fYWx3YXlzX3VudXNlZCBpcnEsIHZvaWQg
KmQKPiAgIAlyZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gICB9Cj4gICAKPiArLyoqCj4gKyAqIGljZV92
c2lfYWxsb2Nfc3RhdF9hcnJheXMgLSBBbGxvY2F0ZSBzdGF0aXN0aWNzIGFycmF5cwo+ICsgKiBA
dnNpOiBWU0kgcG9pbnRlcgo+ICsgKi8KPiArc3RhdGljIGludCBpY2VfdnNpX2FsbG9jX3N0YXRf
YXJyYXlzKHN0cnVjdCBpY2VfdnNpICp2c2kpCj4gK3sKPiArCXN0cnVjdCBpY2VfdnNpX3N0YXRz
ICp2c2lfc3RhdDsKPiArCXN0cnVjdCBpY2VfcGYgKnBmID0gdnNpLT5iYWNrOwo+ICsJc3RydWN0
IGRldmljZSAqZGV2Owo+ICsKPiArCWRldiA9IGljZV9wZl90b19kZXYocGYpOwoKVGhpcyBpcyBu
byBsb25nZXIgdXNlZDoKCiA+IC4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
bGliLmM6IEluIGZ1bmN0aW9uIArigJhpY2VfdnNpX2FsbG9jX3N0YXRfYXJyYXlz4oCZOgogPiAu
Li9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jOjQ1ODoxNzogd2Fybmlu
ZzogdmFyaWFibGUgCuKAmGRlduKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0
LXZhcmlhYmxlXQogPiAgIHN0cnVjdCBkZXZpY2UgKmRldjsKCi4uLgoKCj4gKy8qKgo+ICsgKiBp
Y2VfdnNpX2ZyZWVfc3RhdHMgLSBGcmVlIHRoZSByaW5nIHN0YXRpc3RpY3Mgc3RydWN0dXJlcwo+
ICsgKiBAdnNpOiBWU0kgcG9pbnRlcgo+ICsgKi8KPiArc3RhdGljIHZvaWQgaWNlX3ZzaV9mcmVl
X3N0YXRzKHN0cnVjdCBpY2VfdnNpICp2c2kpCj4gK3sKPiArCXN0cnVjdCBpY2VfdnNpX3N0YXRz
ICp2c2lfc3RhdDsKPiArCXN0cnVjdCBpY2VfcGYgKnBmID0gdnNpLT5iYWNrOwo+ICsJc3RydWN0
IGRldmljZSAqZGV2Owo+ICsJaW50IGk7Cj4gKwo+ICsJZGV2ID0gaWNlX3BmX3RvX2RldihwZik7
CgpTYW1lIGhlcmU6CgogPiAuLi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xp
Yi5jOiBJbiBmdW5jdGlvbiAK4oCYaWNlX3ZzaV9mcmVlX3N0YXRz4oCZOgogPiAuLi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jOjE1OTc6MTc6IHdhcm5pbmc6IAp2YXJp
YWJsZSDigJhkZXbigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJs
ZV0KID4gICBzdHJ1Y3QgZGV2aWNlICpkZXY7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
