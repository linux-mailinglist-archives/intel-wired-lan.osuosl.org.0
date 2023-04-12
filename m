Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8690E6E01D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 00:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEE8983CD6;
	Wed, 12 Apr 2023 22:30:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEE8983CD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681338649;
	bh=8TmegBGCBTNZej4kWjN0gACyZ81Ho8NUq9M7k26CDUo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1fL2Xs23h7qlZZeon/E0jg3rodHYijQIHxdrjMTLVaAVx1XafcrH73282NQGgyRva
	 MuGKRRD5o4mJLb+EJY6sUKSPdewXovbkHRc+H/+ScVyU9VqCQP/SlXMERHeIGiZRfC
	 YnaZrQIWH5LVXPkwUzRh/3U01vKGYeGEO1AC9Se3SUFgaKgi/U6RAkxrqH5yIedJdb
	 xNxrCd4QV+pD3Tk5FD4zYC4dWoF5xm5VV7bQa/L5UGJE6RhaTVfGvhd9o4x5ym/Q5A
	 /ng1xUyX9H/yiJPhC2COpRhHO2MLHk6aG6vGBn9wKtUa6+r+DWRFWvOEUIQ4c4nuG3
	 iK0/ujWokZzDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GQaLpCihgxfj; Wed, 12 Apr 2023 22:30:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE2EB83CD0;
	Wed, 12 Apr 2023 22:30:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE2EB83CD0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E9D61C3D11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 22:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15FE983CD0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 22:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15FE983CD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P_OOpdn-_fSQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 22:30:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4130283CC8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4130283CC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 22:30:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="409180914"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="409180914"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 15:30:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="1018896747"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="1018896747"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 12 Apr 2023 15:30:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 15:30:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 15:30:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 15:30:40 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 15:30:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HkEKZ8+AVJPAIbthCaxzlBJeLvdcBp9eVXY+dxmkogESLHIRTdMYc3T7FT7KjEDcR6Rm+BtDOIOkvAphXzJRLQDm0OQZ9RmqSVOfav3b5aBUpRruVwJoyxLzssgaZCs4xxfmIdITPKcsg9hZOQ9dJPPeQThlMlnU9/0/IPYP+P3nPHSKzLqS5eUjIS3sIPOeOpQfohNsQlB5WuCKRwb+GB6W5vr+mYw9dDTWWNYSHM7uJwPhjfjJVmGdcyrMRMbsfROgBMwhXrPc+fAkvZ7CreDiclGsXDePd5ZgtqvR7q71ROY7vl3fGX7sVNiJVNFVa6KsuDumY67OlkPcYMbRAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYE9lBAa3LvMawjtgV2zJf19XIXq/E6dPqToBhg0wXA=;
 b=D37SFRACMEIQIyzNtKvvMm6Ios4wtm4TzxsJBVPnWVcWb05oM776za/6ZRoGHqbikRRmrDUQHLpTtscUZh+Yw+G6k0+Q2lyE52DfBdDNlU/7pfZ8CqWfzWbpm2QrmlxgI0FEYq9taYCISRvIU0Yin3nB1YiLCntU8VUYoGbA60dU4pukOkwevBlQpypOpLGmGWXBodVcem3CzeRRLu49TbD50tj+vb27NB6JQrnlDwo4R7EE7hWsBXIokwPHNiV+jTDS14Ga4pNb8yttTi/TReTUvsAsGKXJf2H4XxyacVnpoxWenvf3qO0LZzL943TyEOtCO65yfIIXy0xMenEhaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB6755.namprd11.prod.outlook.com (2603:10b6:510:1ca::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Wed, 12 Apr
 2023 22:30:33 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 22:30:33 +0000
Message-ID: <1809a34d-dcf4-4b54-089a-a7be3f4c23e1@intel.com>
Date: Wed, 12 Apr 2023 15:30:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Kurt Kanzenbach <kurt@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20230412073611.62942-1-kurt@linutronix.de>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230412073611.62942-1-kurt@linutronix.de>
X-ClientProxiedBy: BY3PR10CA0002.namprd10.prod.outlook.com
 (2603:10b6:a03:255::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH8PR11MB6755:EE_
X-MS-Office365-Filtering-Correlation-Id: 95967a8c-dea2-4b11-af8e-08db3ba58738
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b5YZo1x3DcNqLHsTRmj0zcFn6yjVjTRDBSVK/b3wx+pHDGJZV037VtBoJ5OgQNwpEeOiw37RMpRrjkw4qpwtg1e94hfaxD2Albb/IP3f8tkIR3u+PTHJpGUZ/0vi1Z5ceUaOCk39/fS+6l7rgNoWHUIxoimuS0azUTUEGu0d8jtpOXU59TYsEAn3wNNg3dmRElowG6ZbbAatP7tjEB7jSRI59IBYrAXiLf7ywIStrPBvP/5g/qrZKEhKpLx4cEuzYfLlj9Za59/dKyUJRGyiq4DNiGt6yQaQsmcVgvxvy8wQ3RrGu8UNbjCCNzuUG7aMp+lsm7YKM9vTwsupSWEU/YjBbGlqhkCpLLiNzmg03V3iVxr03TbZQ3ZrappXVOwgy240OteZ0WYt+VqsA1KfwVC4ykqWyT4esI2m7O92g+iPR/783KT/Vyu8vl021yTOk59I4RO1ps6jtWQatqiP59HEBP0UFfN9z/pUIv8ZIuGLsR7R23KsTwRaVpXYJJj7UM0aZM9E35Ttk8Nyl7Z/oziDOphE8TWjH96DSKk0EB6+Vlnrrmd/LdOoOAmJOwIurejdblqUHIl95f+IapEHuglDgooHWSZtDbhByIgN91IsIi9/05W1G8DQo8NzrflcZG77kQHFuu9EC3vlVUpNWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199021)(36756003)(2906002)(5660300002)(8936002)(8676002)(86362001)(31696002)(110136005)(6512007)(6486002)(6506007)(26005)(83380400001)(6636002)(38100700002)(54906003)(478600001)(2616005)(186003)(31686004)(66946007)(53546011)(41300700001)(82960400001)(4326008)(66476007)(66556008)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFpVaFB1Qmsvd3dRM25pMThHcmFMV2pTa2pUdzRWS1BzQ2ozenlIbUtIZ0JI?=
 =?utf-8?B?ZmJuQnNoQVFvV1NhRE1ISVFsY3RqejFpUXN3eWZaYnFjb3BGUngyZnVHc1ll?=
 =?utf-8?B?dElsbjhldmZNY0tTVzJPQlpWRTMzU1FUVmhONlRESnU1VkM1SFE1STBrTTMw?=
 =?utf-8?B?VjluODBjNnhWSVhzQnYxOEs1T1FRSDY4eEcvREZCaUhrWDBoR1JLY0JBTERJ?=
 =?utf-8?B?Sko4Y2hOVmFKSUw3dW5TTVdWODNLRWNGbThGRWdTd3BMZVRYS3FkQVp4RlIr?=
 =?utf-8?B?NzQ5WmhXdERtbVlPVGVqSkZHOTZobEFnY0Y1SmVvRlFVWVJoelEwVSt1eDVM?=
 =?utf-8?B?SncwTFNCUUEzbmE5OWtuU25TMU1QT3ZiQXhHTjJrVFpzY0Z1OFNIUkJRWkpO?=
 =?utf-8?B?bm55eTJiMjBBVnB4Nk8xVDk5WnZVMW1XaE55VkN5L2Z3SlYwL2NOcnk4Misy?=
 =?utf-8?B?NXpZUjk5SXE1SE53SXZQUU9HbVl5VEJYN2Z1SnAvSU8xT3ZkTldvczY1REZC?=
 =?utf-8?B?L1FEMVRIZWpJYmJSNWlmME9PaDZDU3pITzNwN3B2YjRuNWoveVpXUWJBb3hl?=
 =?utf-8?B?dVYweVdTMjZnS2N2WGo3MnhFRlJZbExsVUhuUTQ0WnF2bDRVajBuSXhEY2tz?=
 =?utf-8?B?ZW9Wa2E1REJESFhiY29pcnFHbWFKTFdhLy96RWpYeVhOSHFMcW5MTm95cUlV?=
 =?utf-8?B?dVBWbWlacVhreEUyVnhaNzNKYktwY3F6UlFBOUJxVy91dEhKVUI0VGg5OElr?=
 =?utf-8?B?dm1IbmFLTFVNQlZXNDFMbU90Wm1KaGE3aGNGVkJVQ2x5c2JabkJDMnhMZngr?=
 =?utf-8?B?enZCUjFIVmZ5SkZhdGxqYVM4R0IzWkhCVHM0ZFQ2VFl0QWJ6SFluWkhiVFJK?=
 =?utf-8?B?VXRldHREMzNBMTllU0N5azlCKzBIK3BmQzlKSlZHQk1iemFTbkdMK1pjcExL?=
 =?utf-8?B?VEgrM24rWURNQk5QNEEvWkc0VE5jaE9hN3JLaFk4QlhWbzdFMXVzcDFTWFor?=
 =?utf-8?B?QUttbFloS1BZeEZaL3JSUjNPVUZuMVQxRk9LcE9CQ3RqQTFSbVY1UytJakh4?=
 =?utf-8?B?RlprbEhnekFIK010V1FZeE5mclRaakJhZ2dPcVZYT1BCOHo1VTFKSU9JZGU3?=
 =?utf-8?B?ejNWKzRQeWliZmxEYWhlVXhIWE5JZVVJWjVIVzJIcXBhNVBKcHU5bzJnY0Vj?=
 =?utf-8?B?RXdCWWNwcmEvdUhQaFVNSWZocng5SU5IYVpxOWpIMWVhN3kyMXQwU3Jnb0ta?=
 =?utf-8?B?N3d6NTMwYjNobjk5Q0l5cDVjUU1EMmp1cjJBb2ltODA0WWpIaVJMSUpCcUlv?=
 =?utf-8?B?L3ZtZEpyUGFnWFNadUpGWFhtcWpGNXUxaWx1NUZPT2RjV2xFL3dxU3RKNTdV?=
 =?utf-8?B?L0J0Q1pEbk9YQmU5RzA0Q3FyeWpDTzFsZmhwbjZLZ3N5WGtkbEU3aEVoOXJH?=
 =?utf-8?B?S0JndWtKNE9YUTRIRFRPbVo3QjZsOWdrNHo1SVRwdHpLaG5DR0xDTWNzSlI1?=
 =?utf-8?B?U0hZUEpZdERQN3hPd1lrSjErK2w3cENQOVZmU3pUYnBodjV0dVhKYmVOTTdF?=
 =?utf-8?B?cjlpa1FIaHRWR3dDZEZzYmZteTlKczBieC9SU0EwUTBwaHVLU1hLOUJHNGJ6?=
 =?utf-8?B?NzBYVm1PNW5KU3YrVi9XQXU3V3pCVjVKOU5tK2hkZ3pyMG5ZZFV4aWVYcWZT?=
 =?utf-8?B?TjdkclRIbE5HRk5ldVRKdjhQS2hMb1B0VjI3R3krY08rQktyRUZ0OWQ5cndY?=
 =?utf-8?B?SnZ5WW1la0NHbkVKRkN0NjQ1Skp2SE9KNHRnc3BVcHdiRG9CZHhrWjhmUXVQ?=
 =?utf-8?B?RW5DU2ZQS29iOWpSa1BUOTFkZEE3b3NBcWg5MDd0M3ZjaGR4WVNYRmU2L01y?=
 =?utf-8?B?MVhWbWo4S3BpZXZqQU0zdnl1TVdNOS9EcWhsZUxUWVZneDBybmN4V1RmN2hP?=
 =?utf-8?B?cERQWVhpbVI5bXlzZGJ4YXI3M1A4Y1pkWS9FbU5UMVZYQVB5RWpVUnBDMlVn?=
 =?utf-8?B?M3p4MTdyVTBIRG1wMm12dUhEL0hvM3B2Ym9mang2TVUvODhXVStIdnJmNit6?=
 =?utf-8?B?RUdlRTVNYzd3b0pybFlwV2h3OWZiUkNkVkVkK04xS0p6SnU3WGM5SEtwcmFZ?=
 =?utf-8?B?U1BLbUdDZWVTTTZ4a3ZHSy9qYzdzbzVKQkZ4QkxRMDEyUzBtbGZaOGFSM2R4?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95967a8c-dea2-4b11-af8e-08db3ba58738
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 22:30:32.9746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HFd+4zWQ9oVXqr7Jd179z3fTh7ycy4iXAFFlbHPU39axkTaI9iFugwuOEgXkHUWceL+evIL3ORjk0Bm94kZddt5r3ihvTsN/MFnf04lF7NI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6755
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681338642; x=1712874642;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n5DRbV+cTZ6cwlclGQwqyPNoCbzVMnRKGNZc6Myi1I0=;
 b=ma1Ak0SPbwDSt6Ubom+2qVg2euLpfm4KGS2hPA2al5wEB+S+0KFAg18l
 dVHpps5jjmd+32yqgZsyD74AG4LQltVwOmL/3fkzCcGiuZHJk9KRGZukk
 lPqrJaBjGngUJQJL5pNaGYYIEMDl/uCKufufzZKLbCvUJHJrz1YeCXDgu
 kP3LgU9krH3l6NjaIw/qDFKM8ho+7yajmKEtRtV/kUvFr/kFDNAQzF2Q0
 uYqJp8BLRdnsr1K+/0k+jhWfmsYlCY4KcIBJyNnegbt2C64Bxk+mD5a4F
 wNJ7Qyo9r2n0CVJ7k7bh6cELmF3m9AvVxEQq2f6+4cmkoaMLpi5l6nShL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ma1Ak0SP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Avoid transmit queue
 timeout for XDP
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Ong
 Boon Leong <boon.leong.ong@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/12/2023 12:36 AM, Kurt Kanzenbach wrote:
> High XDP load triggers the netdev watchdog:
> 
> |NETDEV WATCHDOG: enp3s0 (igc): transmit queue 2 timed out
> 
> The reason is the Tx queue transmission start (txq->trans_start) is not updated
> in XDP code path. Therefore, add it for all XDP transmission functions.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

For Intel, I only see this being done in igb, as 5337824f4dc4 ("net:
annotate accesses to queue->trans_start"). I see a few other drivers
also calling this.

Is this a gap that other XDP implementations also need to fix?

grepping for txq_trans_cond_update I see:

> apm/xgene/xgene_enet_main.c
> 874:            txq_trans_cond_update(txq);
> 
> engleder/tsnep_main.c
> 623:            txq_trans_cond_update(tx_nq);
> 1660:           txq_trans_cond_update(nq);
> 
> freescale/dpaa/dpaa_eth.c
> 2347:   txq_trans_cond_update(txq);
> 2553:   txq_trans_cond_update(txq);
> 
> ibm/ibmvnic.c
> 2485:   txq_trans_cond_update(txq);
> 
> intel/igb/igb_main.c
> 2980:   txq_trans_cond_update(nq);
> 3014:   txq_trans_cond_update(nq);
> 
> stmicro/stmmac/stmmac_main.c
> 2428:   txq_trans_cond_update(nq);
> 4808:   txq_trans_cond_update(nq);
> 6436:   txq_trans_cond_update(nq);
> 

Is most driver's XDP implementation broken? There's also
netif_trans_update but this is called out as a legacy only function. Far
more drivers call this but I don't see either call or a direct update to
trans_start in many XDP implementations...

Am I missing something or are a bunch of other XDP implementations also
wrong?

The patch seems ok to me, assuming this is the correct way to fix things
and not something in the XDP path.

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ba49728be919..e71e85e3bcc2 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2384,6 +2384,8 @@ static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
>  	nq = txring_txq(ring);
>  
>  	__netif_tx_lock(nq, cpu);
> +	/* Avoid transmit queue timeout since we share it with the slow path */
> +	txq_trans_cond_update(nq);
>  	res = igc_xdp_init_tx_descriptor(ring, xdpf);
>  	__netif_tx_unlock(nq);
>  	return res;
> @@ -2786,6 +2788,9 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  
>  	__netif_tx_lock(nq, cpu);
>  
> +	/* Avoid transmit queue timeout since we share it with the slow path */
> +	txq_trans_cond_update(nq);
> +
>  	budget = igc_desc_unused(ring);
>  
>  	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
> @@ -6311,6 +6316,9 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
>  
>  	__netif_tx_lock(nq, cpu);
>  
> +	/* Avoid transmit queue timeout since we share it with the slow path */
> +	txq_trans_cond_update(nq);
> +
>  	drops = 0;
>  	for (i = 0; i < num_frames; i++) {
>  		int err;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
