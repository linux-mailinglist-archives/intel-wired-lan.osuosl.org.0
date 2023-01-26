Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0774467D3EB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 19:16:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B5E640A81;
	Thu, 26 Jan 2023 18:16:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B5E640A81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674757006;
	bh=gEcXOOquYfvzxxCRdWukwRBc4cSCps/BZmp44RUaUXg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3XbHX/WI3FpVZ7LJQrWP94Ir15XcnWxFfd6vyF7OvDQblSN7LKIq1DLXOc0XQdCC0
	 2A6svSVu5bNP37YudQKHWKEt9J0JV6P9laZzwDA4lrvhCc9+2GpmvHD+++JjXis/rU
	 9vW7uVDjAWESIjO2ISLob1Qe6e6CYMq+UeMQsbpG7vO/SYhlADAXR8NVTf67FZJzx/
	 UZ3Jfgb/BpiaNv76BhVD/a4zf4JkvlmjLMeSQTlV+5Q09nVTpHRG8tubY9Qa/SKCdN
	 3OYzPQcUWTPWfHUueLpzhQIpWU0iM2pna+TwbJTG08wYZPtJN8FX0wBARbO+PJ8/9v
	 fXZkALb2j5AqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VHZvKsKh3o6h; Thu, 26 Jan 2023 18:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AEF6404FE;
	Thu, 26 Jan 2023 18:16:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AEF6404FE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB65F1BF487
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E86982373
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:16:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E86982373
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apz00roK63Xy for <intel-wired-lan@osuosl.org>;
 Thu, 26 Jan 2023 18:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01C8D8236E
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01C8D8236E
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:16:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="314822626"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="314822626"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 10:16:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="662961444"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="662961444"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 26 Jan 2023 10:16:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 10:16:37 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 10:16:36 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 10:16:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DIezPEDpCN5yvJUvEWDLPLGAGlD6AuAp2pNS6FrqDBJ1iiIeUtruewqg2qWqTDtmNY6R6xgEO64jjMTZnbi2HX4/iLOAmL27CzpMWVBAXFXM7j9IM4F41rSv3E+sdL1wfQOkfxooHX181jVE6iLMeNb1hMF2U1pNgGG5poCXZ7DZpMWsDlp+cqKdJKeyNDcLEoi3LyqbzPrgOZX9mgkEczDZuRTFN+8Lj1UHwDTFg3CpkJks8SzPal4q2Yl8Fdtz1bohPcyaiRnz7AfYSXY0XnAdKfh5EhvMI1hy9AjjiJdghX7IGqCThH93s5K1oqIWuu+mHWsG2pzNAphiM5SFXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lgPQaOB9XZqK5nzXkMebMK9yuyCQcZSuO74KGDl9Pnw=;
 b=jJ5A0ukf9noUSol+7ZuTJQf55ffHeoggDYp3ts+YlDR0j1eX5vZ3UAclalvYzrHq6/9lmntGA+4p61SIi4Jgl29LnNpZstNSrH5WCqJH9jKQpe9LVQ6IB8i+atDiplod5PIVb6t9+7JX2wNOj3pTxIcv3Qf4apg0UMqn4tWlizbhHRmhaJC/xRV6kfzNVEwLIPVEEb8H135F22zORZUlOvc3o1Lk9hYVnMF9f2r/L836BzM3LOIWb4WnFrFKDD0KBQ11UKkuFSORBRn4UhKOx0H7Z/6Z6W9cfBwVRYbKhE/izC0pBZ20rrrhK3y2p3KyrnBjC5OT0vGsC7HxC5E09g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by IA1PR11MB7919.namprd11.prod.outlook.com (2603:10b6:208:3fa::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Thu, 26 Jan
 2023 18:16:35 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::c1e:cae6:7636:43b8]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::c1e:cae6:7636:43b8%2]) with mapi id 15.20.6002.033; Thu, 26 Jan 2023
 18:16:35 +0000
Message-ID: <310135ff-2322-9349-afb4-f85c4b683002@intel.com>
Date: Thu, 26 Jan 2023 10:16:33 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: <intel-wired-lan@osuosl.org>
References: <20230119211608.2105338-1-anthony.l.nguyen@intel.com>
 <Y9Kl+OFJRbDWYxoy@boxer>
Content-Language: en-US
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
In-Reply-To: <Y9Kl+OFJRbDWYxoy@boxer>
X-ClientProxiedBy: MW3PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:303:2b::19) To MW3PR11MB4764.namprd11.prod.outlook.com
 (2603:10b6:303:5a::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4764:EE_|IA1PR11MB7919:EE_
X-MS-Office365-Filtering-Correlation-Id: 3815e6d7-4962-4cc6-463b-08daffc97571
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HP4Km8AqzLkDkNxFJ4Hc6tZXufVjKDzp6/9BkPCMkQScF+q1Gh+Y/XLip8b0Qoj35nbEj89pMUyel43xtWGf/nvk0G/y5pBpVB0tUqZg726uEXIJ/hZ0YWUFQLn4P9oAyXVa/DRLnoAzmtk2OlN8KegUCFv+rIVsNkAhEbEchrSMv0yTR9LGsR83JOdn5YaszKjrcuv/N0YOdH11ImNUHaFC39HFtBaHqkD5lxfbVxqpPi/qPFqu+DbVNyc6SmNoi5TLJdaTYxCPge9y35+GUOfR+9x2XNA8LOvHLzMPtKlarVyfHli6s6+GwQiy+tkFsjp7F8i9/dkvWcX3zEsk8IdMUs193mT9ERnpY45HDY96AZYWwXMp2m6B1yzHEay7VaRn6rlf2EH22HOWjYTAoisq3z6yhuFKesDrlomZvCZkBhO3sH8LA6xvnNlI6i5zTn3CpZcps8zXXxkTN2h8qcU6GQWf0wRV6RWYMyfP0WaoM5F6ag09FWRlS+Z6PCMU+yQpk13sFnqGhXV+uyLEw4UHNhlQnNfp1njL0sJJ9KqSWjrrXe17sbj3bu47QUDpgdBKBS5p7vQHUUuZRy3+TkL/977yc+v2lC+VR9/1GpRroIBjYCBN9cyPUDvcNVwUs6ifOuuPEnjZjNs6RwE+iarwSdVW4vO6Z55SUg6Zj6CGyk56IvVea6osXzntiSERfPSckNtqGtpQwjCUCY/SIfP1xC8sBqFLmxBO8PaAwsw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(396003)(376002)(39860400002)(366004)(451199018)(2906002)(83380400001)(2616005)(82960400001)(26005)(186003)(86362001)(478600001)(31696002)(6916009)(6506007)(66946007)(66556008)(31686004)(6486002)(53546011)(66476007)(41300700001)(44832011)(8676002)(36756003)(316002)(5660300002)(6512007)(8936002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjJpM0tzbXV1S05OcEd6L0FPcmtpWGUrODNhNk10T2pheWFQVGVoYWNkUDNm?=
 =?utf-8?B?b2FFa3p2V0FPVE0rM2xlZHFsbnU3eWxma2RiS0NjRlh2OUxRVmNZWHUwdG84?=
 =?utf-8?B?WXlHR3gxUytzRWFtaSswR0FxQm9UWDZlbW41RjlaN0lLZi96MFFuL0UyL1Q5?=
 =?utf-8?B?c29uaFRuaUtHNjlwd3FSbXl0dWpyZkQwUlB2eFRmZjM4aVNEV2publRZd3Bz?=
 =?utf-8?B?V1hsTGZrZVF2TnczOWtCb0FQZkJFMGdYQzV5TkQ2KzJrVkNoNzJxbXNsY2VK?=
 =?utf-8?B?eXRQRTJLYXBkdWYxUklkTGxxVU01NE1vK2Q5RTFsZ2J3a2prclRPKzJPdHc1?=
 =?utf-8?B?Mzk1b1B4ZENCWGVBWTFadEZma3cvM0hKZDc3eEJWWUxjelZXL2RNb1VwSGcw?=
 =?utf-8?B?V1c4b1JITCtRNW11Q1E0YmNQeTlvSWoyZG0rOGErR1BrdWVBMlVUdzdaV3RZ?=
 =?utf-8?B?OWttTUpVTE1lZFRpOGdEck90TTdWbEg1NUJuTGlQSk4zVWppeHZ6ZmRMejdS?=
 =?utf-8?B?TngvNVBySEo0UENTWmNhMXdqVEZxUTRKdmlKOWw0RnV2THFva082RERCMUpm?=
 =?utf-8?B?M2RtWmZZZkJiWnhZbEhPU2NKMEpTSTZjd2gwRmZmbmgrREcrV2pEbG5jZGUy?=
 =?utf-8?B?ZUNSajRQMTNTNjd1RFFpM2VsMmN4c1dITy9mTFYxUnQ1VTRRWkxQRkdOaElU?=
 =?utf-8?B?MWNNRmwxVHEvTnM2Yjg4SHhnOUppS2dyaHkrdmtuTFNsNVN0UFlwU3RzU2lZ?=
 =?utf-8?B?WXNuWmJuWm9uOEhkNHpVWEZRN2ZyS2VkcEh5cGg0SEpORks0WTQxRFpJZFdJ?=
 =?utf-8?B?Y1poRHlCMWIxcndHSEI3dW5mK3J0cHJSaFFBZFNoUEVjd0tWdHgzVzd5WkF0?=
 =?utf-8?B?a1lBWTJqdk4wUmhUVlVZamZ6RHJvZnRuVFhGUUdPMWY0dHh0RGQ3MXFrOFQ1?=
 =?utf-8?B?L2RWUlFMOEZFTFVRUmNoVzU0bHlLWVl5WG9YOHBjdkxPMnFvcEorYXQ0aEt5?=
 =?utf-8?B?c25PUklWNDBmdWdKejhxTVVmM09XQW9Gd1RBbHFCVkw0SlBTWXFuT0xEQys0?=
 =?utf-8?B?WEg2c3ZWMjRHNEpUSGc1OG5EajRtcGtVMTVlMmRodWd0SVdpMUEvY0R5b3Nj?=
 =?utf-8?B?MkVFRmo4QlJROUVDeHhmYXB1MCtRanlOcjFDTVNDZ1RxcEZYM2hxUUQvcmV3?=
 =?utf-8?B?UVUvM0xDUEVEaU5TYWZXa1hKMVFvbHNtM2lPbUxGdGsxRGdPUFlpL3NUbkZ6?=
 =?utf-8?B?akdLOUFWRThXbFNwbm1IcEY0STVRV0FSc1VBQ25rZkxGYnc1MUNyT3NXRHBQ?=
 =?utf-8?B?enpPVUlpWk0xMTROQTlBeWYwd0hYMTNKRFo1ekhWSzZQZjVFcS9jOTYvZlhW?=
 =?utf-8?B?RWFVVUVVSkNCSWhIeEx5MkVkYW1GbC92ek9Za0kwTExtMC80Vmw0bmhoT21q?=
 =?utf-8?B?YUFQR0Q2K3BGcGhwTHRqeFJwcUdZQ000L1prYTljM2FlcTFVdTc2NjVpekZM?=
 =?utf-8?B?QWxMWDEwdU1peHd6eXVWYVNtMC9iZk1jcFpYTXc3Q1p1Y1ZkTVZQMVIyeE83?=
 =?utf-8?B?M3JpTHQvcitWMHp0THA1S2UrSmlTSlZFTzVzMDJDSktlQ2RVWkVCOFhBVk1I?=
 =?utf-8?B?bHVLbG82WjZGU0Z6VHI0UmNvN3pBemtyVDhBdmJ0RVBUR1JuMHVoZTlOdmhq?=
 =?utf-8?B?OVhpR1BSSlNnTVY2ejY3T3FnTFlaZmoxQ2ZPSE1UL1Y0c3JPNHN5L0pyR2Ix?=
 =?utf-8?B?VXVrRW9Zcy9xbmJEckV1UkNDUncyMExuTEgxZ3UrWTQ5d1Y0K3M1ZHl4alpO?=
 =?utf-8?B?VUdjTEZmN1c2N3k4cE4vTHVxVE1NTWlQbEx1RzZUQlpYdXo0R2lUUGhtSitn?=
 =?utf-8?B?OWM0Z2N6YnZiRHV6N3RGdVMvMVJSRGdvODI3dkRGMmZjLzNHdWY0STRIVFhy?=
 =?utf-8?B?SVNRd3FpaUJQcnU5elZCem9WaXBJbkFyeHNST3NHREZBaHpSQSt2aVhUV0cy?=
 =?utf-8?B?cmFuVExXOVhqS3p1TmdtQXlZVHB1TG5PYmlRVHBMUjk0bFZ3NWsvSjhhVERS?=
 =?utf-8?B?Y3h1NDVBOE0xS1EvWHdwZGtVWS9PTjNrdDNHakt1UFUzTnhTREthaWl5cTJG?=
 =?utf-8?B?WUlTbytBTDZWYnZNRnVTb2RGYnluT1B1dUludkQyYjN6T2h6dllvMUliTW1F?=
 =?utf-8?Q?6s2UZC0VrzhQmtyFgA7ABGA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3815e6d7-4962-4cc6-463b-08daffc97571
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 18:16:35.1164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ejKLWIX7xns3+ms7lVq4h3PUudRwXKgJVyyUyqYhWG4L/EPeRT1Bl+NGFUhLCXC2rpE9eff/MUbg8MRSh0S9j5dDbNaEBgJ5tSiyYDiyIGmJx3792K+CW40j3QdZYxZI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7919
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674756999; x=1706292999;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ONM2r+U+SG2hA0UCemsoKnNTxmQ2dLV7D78F/VqwAtg=;
 b=GNtwlnxHjkcYVvYEva2oINK5d+ndPlbJATXBhyFqUNBIEylylEXFVpk9
 3f8fT3dw6xyIW7Dm1DGW/vAh10MZ9snDn6iL812enKPe+Q2J1QFwcKEGx
 oSeGPWCmFB0/aExfnrQgsYxT1A8q3Dcg/Vw+unaDlopDpx9ReyLIp33Ae
 bLZDKQDfcfzk8IFp7fL4RufOtb1sKGFOkR1+9J8IORz2REwcMaQlTFNye
 KNQSg3whlo/NpRE0V8rH6452R33JvvBphmK1hxlgJV7GWE1g2A1l/RG4u
 2LUBRDdh7PYXXvDlnj9FxoUi516oP6vutgRuCyvv3YmJ7Za1WWyIXgbVq
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GNtwlnxH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-queue v4 1/1] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/26/2023 8:10 AM, Maciej Fijalkowski wrote:
> On Thu, Jan 19, 2023 at 01:16:08PM -0800, Tony Nguyen wrote:
>> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>>
>> When both ice and the irdma driver are loaded, a warning
>> in check_flush_dependency is being triggered. This seems
>> to be because of the ice driver workqueue is allocated with
>> the WQ_MEM_RECLAIM flag, and the irdma one is not.
>>
>> Looking at the kernel documentation, it doesn't seem like
>> the ice driver needs to use WQ_MEM_RECLAIM. Remove it.
> 
> Can we have a better reasoning rather than 'it doesn't seem like ice
> driver needs...' ?

The documentation for WQ_MEM_RECLAIM says this:

``WQ_MEM_RECLAIM``
   All wq which might be used in the memory reclaim paths **MUST**
   have this flag set.  The wq is guaranteed to have at least one
   execution context regardless of memory pressure.

The ice wq isn't used for memory reclamation, so this flag doesn't have 
to be used.

> Also, why was reclaim flag added in the first place?

I don't know. This was probably a mistake to begin with, but it was 
exposed only when the RDMA driver was also in use.

Ani
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
