Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B522851C05
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Feb 2024 18:50:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 585CF409A6;
	Mon, 12 Feb 2024 17:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEQoOztkfUDR; Mon, 12 Feb 2024 17:50:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C94840272
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707760238;
	bh=K2E0rBkqPXXldoVQZgci7CQ700aj2UsJsBWbRjR+VV4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wbgafTlDet64dPN3HK5pe/wfQN4FLg7sFiT4CrpFWLOOnTr8Rn10Fjzp+ACR75HZC
	 DHJRXk9i6qAZItQLmsTPYKxilU6s3j2f9GrPeNMb/uZ+bXTohFsUHymteBbrYa9MSt
	 3SZ+7LU31OjPNvlEsl6Wke+WaDeZvy/+piVHtgtFydaO3nKt96YHrlzDAzHsbHHdpi
	 JanJAvLVw19biZc3w50lcF0rwU1Swq78tttxKwtwvjwsI/C70ga2cZ/4CWEaFH5P2k
	 Vs2BN/Gsm5LrDldXflB/HkAx9YGTEzaI05h8odYkTGcg6XtaP7TdqJwlECNst7m1ri
	 WiIhIMElri/Rg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C94840272;
	Mon, 12 Feb 2024 17:50:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D11701BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 17:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F53C8184F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 17:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vHr_WESTUYlR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Feb 2024 17:50:33 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 12 Feb 2024 17:50:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C7F6781854
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7F6781854
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7F6781854
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 17:50:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1624914"
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="1624914"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 09:43:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="2991376"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 09:43:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 09:43:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 09:43:23 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 09:43:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCpEu97lAOmKV6Cyzw+yb3/RavMFo4zZfD9Dz8KdjSnnUN9Q4Q4CQ7mpZJgGmYkl0kix48JSiqqKTZ73JYGfxC/JhJcUhOV/TuRAhl0ETVd0qoaQ2mcZVeKgtyQG7G1IQ5otW3OF2fb+REGXwzwCKGINkdLf7j0wluJP6gobYCaITltcKMy5n+ItLhFGy16ASRWbxugF4hzPBVJwP9wkoWaHaqOtUljAkUYX2n4omUzPsl/hJBOwkX7cxwIcy0gXb5OXNq9Y6cjKho9F0lqpM+Y6Eri/a9PSs0542Tc/7lteZiFerqdzNQTR+cWBnwiVZAhemOAwIDb4lRZyzrxxIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K2E0rBkqPXXldoVQZgci7CQ700aj2UsJsBWbRjR+VV4=;
 b=JVXPasr9062lq7HjDbQePhmFTV5xB7gqRAhF92EhMY8a+ma1NF59MaNWvsenylj0LjFKe2z+LEKxbWj/Yeh42vnKLHnWsHCgxE0+6Sd/HgAL5ONcdiehYk5Fj0OCWqQyqALgLmYeHRRZJPOTdYRZgKOqO07WocLmfs8OjVacRCs1V5nwXjsQQZdwoAxc4j/D4Q2IxgWrZl1Fr/JzllcCASQt42V/wpQL9A8EWkqAasDaCBLNQLfOHH2Rwc596NG9eykvdEsg9fsowHs3rvtouRiDYMphXLrqZcmrupvbjHFIXsCOvGFOLp+Gfmfj8VyF2Ot1GS7CzVcaMzQptfJpqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by DS0PR11MB8069.namprd11.prod.outlook.com (2603:10b6:8:12c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.24; Mon, 12 Feb
 2024 17:43:20 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::d019:7cb9:3045:5082]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::d019:7cb9:3045:5082%4]) with mapi id 15.20.7270.033; Mon, 12 Feb 2024
 17:43:20 +0000
Message-ID: <0a7aa105-0b90-447d-5373-bf37b1a2cba4@intel.com>
Date: Mon, 12 Feb 2024 09:43:19 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Alan Brady
 <alan.brady@intel.com>
References: <20240208004243.1762223-1-alan.brady@intel.com>
 <da0fff05-e9fc-46f6-96a4-5cc37556e7cd@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <da0fff05-e9fc-46f6-96a4-5cc37556e7cd@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0183.namprd04.prod.outlook.com
 (2603:10b6:303:86::8) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|DS0PR11MB8069:EE_
X-MS-Office365-Filtering-Correlation-Id: 3739c38c-fa2c-4481-62e8-08dc2bf21a94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qXU1y1Es8+ubgKLMiZsO2yiTZRUbM8Uv9BeM7W1tOj8UPa64DZQvEM7ggl+KO3jSP/cB6nbi1vNnyXO0dm1iUMS8n6Qr4gCkcv+eYTFFpTp+D6Oz5iJ0Axiba9mXcT9wL+vYASRyI2ZipnEzW9Hpu1q+IxfVxN0DKnX7JnKHvIdnvKbXCfz30P0bY3C1PNaTxmZWyn5npEEqd51SzrLC6TTsi1Qxbl75dTkQY5/ESWnpf4qEFTJs+Oj/EMrth8YRJf7HC87If5ipCv2kQzZinwnYfP4Dkih4szfq++8eF1P47MAbmvKrWFMKc2AquvUXmujvzjxiloWvHotnK8UWrTgPDaO9eFedBI2gOO9zi1ohqPS07kAK9pbSXZi2Z28BA/kNttq/XOXfDjxKSIyNHJOcjdqZrFWnkYs+RGhOVqq4eDzr+Lt4LUdPQoo1DVSJrP/ILDEhdIFG6VUm9YsTMhw3+ZrXP7zyxjh+XHrtDXBbCo6rdXUEIlvhoViAV4nYzsScxdl5yjYKPaOoKFCIlWaQ58ua34oZWNiZL8h5UL2RvlQOd3kI2Pw4zIMqqolf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(396003)(136003)(39860400002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(86362001)(31696002)(82960400001)(83380400001)(66556008)(6636002)(6506007)(2616005)(26005)(53546011)(6486002)(478600001)(66476007)(66946007)(38100700002)(6512007)(110136005)(107886003)(36756003)(316002)(54906003)(8936002)(8676002)(2906002)(4326008)(41300700001)(31686004)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWY1RjFtMUZVT2c0UmlMZTdnRUtONjByVkVtSnZaeUljWE9sUG5OM3RHUnZl?=
 =?utf-8?B?b3BwQVlrOFRiYXpRVHVGS2ZsZDFjYVp6YlZuRzNrYlNraS85VjlTcmxjZFhm?=
 =?utf-8?B?WXR0NVVDUkNrbEU2NVhxRnJibHZtWGNSeGgvdU1kY0p0cFEySWU4UzVPYW45?=
 =?utf-8?B?cU41akJBR1FYU0hsSWZ0Y0IvT0JFUE9TTjd6cUJuVzRZZzNtaHJTUERLNktP?=
 =?utf-8?B?WEdzWFlPZFFTa3VXb3NLM1FYRCtCOUJSVFdhTUgxVzMxZ21jVTltK0RQcGs4?=
 =?utf-8?B?ZUljeWtJK0NBV0JYVm1nNnpHNVBFaDE0c2JHSHZpdEU0RUNTTDJlT2VyNng4?=
 =?utf-8?B?ZjA4aWhpQ09qZ0FSeE1WVHRvV3pJbWpOM2V6blJtZEdoNlc3UlRBek16UjRh?=
 =?utf-8?B?VExOSGJXa0VoQzd1ai9STjAwN3BFYmQrcUpGczFsaTVjcFdHLzVpcWdsSWxq?=
 =?utf-8?B?endlZHhtdTJvZENOOE1JdFhhZUVzM1FMU3Z5d1hIa1JiTWRJTWFpTkcrdzdL?=
 =?utf-8?B?WVhRVDJHNGRIcWs5OTR6ZWJPdU95R09Sd3FONW50NE94QkdSZVZ2bGFWSml6?=
 =?utf-8?B?TWg5QVk4NTY1QTZvTW1sZDVlRnJQRG1IR0F1VzVUWlVhN1lBYlpCakVSeGFs?=
 =?utf-8?B?Y3RXRU42L0h5ekwwTnliTUszZWU3R3o3V09JVG95dWlrbm9xaGRQSWVYYUlI?=
 =?utf-8?B?TktxT3IzWnlJVEpLVnBoNjY3TGdiMlZlaHVweDBuTUtlVEltQy9DaVpFczFS?=
 =?utf-8?B?SThPY0YxMUpMWm1nbWVsZU1uWmRIUDZudWtSN3RidS9WMVZZNEhtNXUwNzhD?=
 =?utf-8?B?RyszamFGTDdUWC9MemdrcTM2NTcyYWl5VmJIZWptT0RGNm1ESHplc285RzEy?=
 =?utf-8?B?WmpLOTQzbVg4Y09WRFhSc1p4RjZzRDAyOGNiYkM4RFYzOUhVRHFWQWF4c2FQ?=
 =?utf-8?B?OTI4UElVUmRGQ09KU2J5dXNsL2tzdHZzMk5NOFI4WFY5TlMydGFSTVFvTUdi?=
 =?utf-8?B?T3Vjek43SWhOTWN0cUhSSEJqYjhiaThVOEVHZTdRNTRrM0RNUi8vREcrS3VE?=
 =?utf-8?B?T0tyVGtPWXI2ejBiUUlBT3F6MUpYTHlKdElvNkd2MlNBN1hHZDhOcVhrUisv?=
 =?utf-8?B?UHU2OWIyVTRFVE91QWN2NERUSUlQUVJselR2dEhhWGk5OGtXZFRjQ2wyOS9K?=
 =?utf-8?B?RnpqaThUbTBUMndQV1N3ckJma3pJeTdXMEszaWd6SHhEY1EzU1VLMDdzL3hC?=
 =?utf-8?B?OFIwQ0NoZHRmODJuRm5FVy80ZVhQdzBjTGluRU9FWThyeFo2R1Jjd0dJRVJ3?=
 =?utf-8?B?VXJNUGpPVjNzaXJ6WmFsa21WRDNub0Qyd25CaXVuOFJaMGxQOXZXVklkZFd4?=
 =?utf-8?B?T1Eyc1ZGemk1cEM3NUNsMGJ2d3NZVDR1cHptZXRsTVNrQ1YyUHp0cStBM2Vj?=
 =?utf-8?B?UTBQNVBpV1c0K01JL3dpYWdXUkY5N0xkMmpHYWtqN1VDOENuaGhSdXo3aFl4?=
 =?utf-8?B?dHdYLzV1ZnUwekFGWE9NSGd4SmlPUVpGRnNwaUt4elE0SU1xUS8zUEpUWkNI?=
 =?utf-8?B?aC9pbVJwSUdSd2RYSFNCQnJPVnVUazJqRnJSVDFtclB5bGJBb2xFWkx6VGdv?=
 =?utf-8?B?ejZGQnlER05QdkNDSW43R08waUdLYWt4UzhDZzl2alFYd0lmZjcybVZXSUwx?=
 =?utf-8?B?REtITDVXWTNRR1hraER3cnVOcDFzZUs5THBTUDhpVWhudURlYWlabW44VDFm?=
 =?utf-8?B?enhZV1VQSDU5NzdBUWs2UkdZd0RzaFBWSyt2R1dMdHdNLzB6RXFTWTJVZ1lH?=
 =?utf-8?B?SERaME5lblZNa3ZGT2s4dWEzYUd4b2JQRS9LYWUwQXVKK3BDYkluOWp2ZlBu?=
 =?utf-8?B?aiswOVRyZkV0a0h6cTBwZzJBYVZmbHJVdDdJUC9OUXpzOGtmNkxFcXVqVlFQ?=
 =?utf-8?B?OUZjQnkwY1Y3bkJnNloxTTlFTkhHQ1piRDI3Lzl5YUNDM3pIV0hrZDFoNm1n?=
 =?utf-8?B?NEhZUmdkTm5uaXNBbk4wc3dRZkVaWW5HUjhNa3JRejJmYmdkTURKMEpNaEVW?=
 =?utf-8?B?V01jL0M2WlpmdjBZYXdVMEFUUHY1N2lYdGtWZ0NrbzNxNHI1Skl3Y2tTTVY5?=
 =?utf-8?B?d0lMVU8wWVRuYWJDdC9XdFgzM0JxQUEzSXF6VGVKbVd6SmIxK2l0Y3E1QTEv?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3739c38c-fa2c-4481-62e8-08dc2bf21a94
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2024 17:43:20.9041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2/NM5kccX1XEGFY8NUZYLUPfbztKPJ9oSkRD4PUe9NtHVbj3fxjX3xDKvION3QM7zir+tOXxAZc40rikTYZT3RSmA6avlqLJHvZpu2ou8i8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8069
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707760232; x=1739296232;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wm1enbgXDEzGh4RCmGgrw6XiqjQ8YwU7ImGHH6hGdX4=;
 b=jth9nqQxH6zwzAg8mKayaSFBEBCfy1rabc0zovDaDNMLFT5EHRTq6KkF
 oQOnvBV/KRYFgZeeO7aHDKEUgMXehaUqembxEKK0si7UmCudRCvuUmVBM
 RUpjHbgbb1seJ804aEf+aBQdim+Aw0n8PDzagCQ+8GIG/CnGMFv0uD34Q
 8r0U9t812UBSbQAzg2kVhy2eFbaEbouUkzv84a/FVTbNM/M2YqurXqxcD
 /ScVsXAMPn5LVhabc9n6NEq0L/uVlQML9C/rc/atGCy+fv4U0ZHBEqdD/
 gZjWWzJ7xSJoR1caMPWI0rP8j28eGv2lmeU3jhvzk1lBaLDfco+jn+27Q
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jth9nqQx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1 iwl-net] idpf: disable local BH
 when scheduling napi for marker packets
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/12/2024 6:41 AM, Alexander Lobakin wrote:
> From: Alan Brady <alan.brady@intel.com>
> Date: Wed,  7 Feb 2024 16:42:43 -0800
> 
>> From: Emil Tantilov <emil.s.tantilov@intel.com>
>>
>> Fix softirq's not being handled during napi_schedule() call when
>> receiving marker packets for queue disable by disabling local bottom
>> half.
>>
>> The issue can be seen on ifdown:
>> NOHZ tick-stop error: Non-RCU local softirq work is pending, handler #08!!!
>>
>> Using ftrace to catch the failing scenario:
>> ifconfig   [003] d.... 22739.830624: softirq_raise: vec=3 [action=NET_RX]
>> <idle>-0   [003] ..s.. 22739.831357: softirq_entry: vec=3 [action=NET_RX]
>>
>> No interrupt and CPU is idle.
>>
>> After the patch, with BH locks:
> 
> Minor: local_bh_{en,dis}able() are not "BH locks", it's BH
> enabling/disabling. It doesn't lock/unlock anything.

Good catch, we can change it to:
"After the patch when disabling local BH before calling napi_schedule:"

> 
>> ifconfig   [003] d.... 22993.928336: softirq_raise: vec=3 [action=NET_RX]
>> ifconfig   [003] ..s1. 22993.928337: softirq_entry: vec=3 [action=NET_RX]
>>
>> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
>> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> Signed-off-by: Alan Brady <alan.brady@intel.com>
> 
> Thanks,
> Olek

Thanks,
Emil
