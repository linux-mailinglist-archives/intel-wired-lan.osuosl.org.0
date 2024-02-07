Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFF784CC55
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 15:08:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 556B4404D3;
	Wed,  7 Feb 2024 14:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3yL3v8vrm4kq; Wed,  7 Feb 2024 14:08:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0723403E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707314888;
	bh=uLLCyKCnY+JmbobkYIoY0HdTVYvPWYgXfHfcMfJPiZA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HFk0l2aYO/A76ncUpyB3ErZHCmbQwe9o4J+ospDkskyDDopsy7XwDpW2jpHvlHnaF
	 +/K6TOkrf1h1a0baiKlh/D3E33HSectD2JRyOytVoJtvoaTXqglPJXU85qktT19WOH
	 gFTJQJSgpJMbK6uKVqQfHo2PM25fWQQp/cDSc1REg2GPWgLDg2I9dIJ1mBeg4awX64
	 DDgIz6/x20RQIbXQz5mN1W4S/aysDWAA7Q5RTD0kFxdPNej9iviPC4ZoRjmS/yxCJy
	 fWKeZNG8xZ3/OQLr3AUtX9+OH4FSYkwRp3Co3BXcMWtbLe45qU85UttD0uyurnbeSe
	 ET+KXwxKi16cA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0723403E7;
	Wed,  7 Feb 2024 14:08:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC98A1BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 14:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D32F740328
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 14:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2aKiVJW3RMIo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 14:08:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9AF17401D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AF17401D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9AF17401D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 14:08:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="4777236"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="4777236"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 06:07:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="24581390"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 06:07:48 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 06:07:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 06:07:47 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 06:07:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mTSOuvK8sMWk07Fc9WVfFnFRB30YA7hcSH99whFYkIKrX900XNCskWvjJHNi9XqIQY/JrK1ir1tQwwwliKBC3pVUzT3UEd0VpblCIWmTjcJo2qvUwLw1QYWKiIIUcDQHX1ilUJrOx8EHCfq8YpzD6BjokDoaQJphdQSKKiBtd68BZhXB/6imqXOWCJt7FwAuzDXNhjUM89j8sZDE29G5/ZrO6Bs49rqEcHQEKCNow254qmhYjZm0pxH10HEU1PYP30VwF6yMt75vS0uSzGIp4TaDM2XtdBfbk29xCLZ+9Vkp8j0BPQvK1miieO+CU9bpVtdQ+03Flx0mYN/aaPzH9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uLLCyKCnY+JmbobkYIoY0HdTVYvPWYgXfHfcMfJPiZA=;
 b=SfTzTKHTfQDfrXwFh+N5cehUzWcC1kZzcldnCqWsGCA+6JFj8uu7YV+sfjA2kyTnBuKRnqaHYD1GHaHC1IgcvnQqOt9dmbKTyOaCxtw2mFDZn0ftsxxn5F1qzzzoHynYolTvXLOXbLYz/zkG6LcXQpbiZSWoS7YynPIF7oNg7sEdeUoDjFkHa8IxEiQSGjJdfqDxjuiuKHteb5t+I0koHKH6QL+5o+vWM282BLi/CYSHIneYLeMNwN4c+HrulDUd5G/NVKWFVX2sFw9/5hzvfphJzKZFFypHxqK+Gj/BYzabHbP114kLmEeptkIn7k1ygYpr150zuB4peU5qVlvL1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MN2PR11MB4695.namprd11.prod.outlook.com (2603:10b6:208:260::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.37; Wed, 7 Feb
 2024 14:07:45 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 14:07:45 +0000
Message-ID: <9deb3115-eb04-4b18-90de-c884b91dc101@intel.com>
Date: Wed, 7 Feb 2024 15:07:23 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Lukasz Plachno <lukasz.plachno@intel.com>
References: <20240206163337.11415-1-lukasz.plachno@intel.com>
 <20240206163337.11415-3-lukasz.plachno@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20240206163337.11415-3-lukasz.plachno@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR5P281CA0043.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f3::14) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MN2PR11MB4695:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b3b874c-3ec9-4a8d-daf8-08dc27e62832
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mgGKyfi3UrbVs2/AcLz1QrShvL5PU/ZlNtda7FdHzE1phRfCJG85RaI8OZ2axKbBV6GEUJuDwz7329BSlC+bUue+HZh3WjxYk9ZCwYH8AgtJIjveMil+U9BzQf8pR72rtKfMG3s3+utwOFrgE3GI9rqUmeAXqlkk4qaBHAkEe36ODUaSZdeKsamvAGPb3QXBE2zo4k+vs7W6oO1K1EF9tNEibXccbJc5q68FTa8M4HcNzxzLr7CdLDqLb1SuBcogkSqNW4lthxge4BV4/I9HAGCiqM8I88LjBTH/Qr4QqJZlyKaJt3AiKAYX6KEvgKYFeINrPRy11TwWOauRF402He8jXCfZdYa+fWy8sjMLg7r6mwHq6uU5DlKDdsyYF/i37iE/j2xcS4IDN1LVT+T+PzBti8xl0Q6XzExkM1tr6syz3UXduxF5I/X2gGXc6B2zZprhSlzyCmd4hugPVRsAOXRmJVDGuGaVjQ7kYYH+ZAjJ7KAIPjjAe39nmApPQSzVwqW/qmIK4HCav3GwAuyFv84TpBawIRbhfzs/CwVcVbxuBJX+QVEV9OZopWjfiioVn1b8N0sFDSV8GbEyeAXl7472nkO+8HwP2vLxcgbLEaaxifKlWTfpZ9aFMNHDfCROoY/n0W00SQh1SNW007C8Ng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(136003)(376002)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(82960400001)(31696002)(54906003)(66556008)(66476007)(316002)(6636002)(37006003)(66946007)(478600001)(6862004)(8936002)(6486002)(86362001)(5660300002)(8676002)(4326008)(2906002)(38100700002)(6666004)(6512007)(107886003)(2616005)(6506007)(83380400001)(26005)(36756003)(41300700001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHA3cjlnR2xxSjJIdGhsSkRUZDFFa3ZUMmt4MEo5MWNMOUlTRHF0dzJoTVFW?=
 =?utf-8?B?Wko0S2laZEpVaU5Jd1ZnMHhXNFpNN09vYW13V3VDWUdhWFJlNnFGNmZkZXdZ?=
 =?utf-8?B?TFpSR1B5dlZQdFRJLzI3bGhsekhQMEhacTBZUHJ3RDY0c0NiVUNGdjlvY2Ey?=
 =?utf-8?B?cmFtTVNsN2paNHI4QjVJTThkRXJ2QXN5TmIxc3VwdUt3SmZ5TllVbk0wV0lQ?=
 =?utf-8?B?MlVkamJveGlJVTMzOFVvd1RGcnZWYTBhcXpKd2pUSTdvSHV1MVdVQUp2NTRu?=
 =?utf-8?B?a2tLSXBPNk9BWVkvd0w5REVwTWdoalpaQ2JGYitWVDNqTjBTOHVYY1Q4VC9D?=
 =?utf-8?B?SGFlS2VUZ240NGdHZDE2TEQzc3pBa2ZTSkd0U2Y0VnE2TzNiZCtOTkdOQlo2?=
 =?utf-8?B?MGNQV3dUQlhmaDdaanRxM0VlT3FOTjFrNXNxdTdzQTNyNWp1OUduNHdhRmdv?=
 =?utf-8?B?ZWlzemhqdzd3ci9mVk84R05VNysyMmsxUllYb3lPT1A0TExIQ0xJVTY5YTBj?=
 =?utf-8?B?eFkzOVVKUGhyMER2RzBxendsSnhvN3JLSkt0UDZ1VkJ3RGZGTWkxUzc4cGZn?=
 =?utf-8?B?V2VYZVEzM0FIRDk2ZWsvZzJzVHBLT3dYV0dOM1N1Zjl2NU80cHU2SWs2cC9G?=
 =?utf-8?B?QVlyYm80VUJJdm0xTUlqMEN5N0dMVlU0alRLa0toWW85L1ZGZzgvT1MzbHc5?=
 =?utf-8?B?R3FhVGNsVkR5S2dtaVpvL05Wc2t5bG9MZm9oL0FSZ25XK01hOEJxZ0ZtN2da?=
 =?utf-8?B?TTl3eE1ucFpla2VtMk1VaGd4WGwxcnhXRjh1TjNZRXpnaExQZ1psa3k1Y3Zz?=
 =?utf-8?B?Z1JjZ1NIMlFtd0pRd1hBVjNVS201MU5HaTR5MnZva1NYdmtiTHV5TTlXTmVM?=
 =?utf-8?B?SEk5WGV5VlJKaEw1Wjdrajg4NVpybStybGg0UjlVeVFpOFJQUm54ck1LZTkw?=
 =?utf-8?B?ejBCVkNQSEFIQjdVbG4rMTRpZkNjRkRXbmJwS3dmVnJmdXczOENTT0s2Z09F?=
 =?utf-8?B?VitUdEh3MDZZbHN2RSsyL0ZGM0tlVzByQVpvYjdNN3hQcWVtM3lvYWFrekpu?=
 =?utf-8?B?ZnpZZDBUWE5zazVOMjNRQzd3aHF2SXVPNUpyZy9INjRiTU9mYlJDN1hqWkVy?=
 =?utf-8?B?aC9zWktWbkNYVEtFWDV5MHp3aFBlT0ZWOG1oM2RHNVFTWVRBcEJ3ZU9QVGFO?=
 =?utf-8?B?dGNOMDQ1RnpaeXVFSTgzcXk5cE9GY2Rlb3RITlN1WXJkSHhQd1ROY3JYL0tK?=
 =?utf-8?B?OFV5QWdQZmtzOEVTajQ2MWVnSElDcTUyZFdoKzhzRFB4cXZ1WG5lZnNvbGhG?=
 =?utf-8?B?TFpYTUtRRTdObWZyc2VBMFp4YmJBOHp4U3F0U3N6T3ZlZGJyRXZkbngwZWxx?=
 =?utf-8?B?Zk1FVXZRam1IUVZYYmVEYXR0aVpQL0EvbjllVmk3bWw0ajE5ZzV2dnhOcWVm?=
 =?utf-8?B?MDRKbWtlTFFJOWc3S3pmdEIxaW5YQXR5Z09wd0lNc2hJSDVMT3YxMk5VWm5N?=
 =?utf-8?B?KzN0TTB6Sk9ZTlZKUXlPZjhQTm1qOTFmQ0RKS01Nd1Zzc0tXY2FrcDhvdVdt?=
 =?utf-8?B?VGRQSW1wUi9TZ1FycVlxL3JNSSs5NlhzbStUaGYwQ3pTSWJPTkV0V1hDb3BE?=
 =?utf-8?B?VmtLc1J6T1lXdExNc05FaThWTDRjakRCdWEvS0RYdXhobngxQzdBVHNNV2tL?=
 =?utf-8?B?bEdad3pSeElWVXd6ODFleVUvbHFtNi9zZklEczhmVkg3ZGVBN0R3R3d6OS9V?=
 =?utf-8?B?MjUvUitKMGR6RXJNTFNqN0hTZVBrMHltTEMyU3pyTTJ5amhYWStzWXVFTitK?=
 =?utf-8?B?OG5tNTlYUlcvTU5sSDBmWDdPMWFsbWlmT0tvMndWbzFQVWY5a2VyNTl2c25s?=
 =?utf-8?B?c0FjZjRuUjlnMm13VGdLcVFWSkJVb0FzN2g1Wm9wQy9Kc2NoOTVMY0M3ZHp1?=
 =?utf-8?B?RTZQN240aVdFZ2xuRXc5dnFOcjRVbVE3d2VtSjdRN25mVlVveWNkSUFwSGhF?=
 =?utf-8?B?Z21RNzVVWEZJcXBGVzQ3UXRBWHNNWG5TZmtnVWtSL2RKUGxXa3I5dHdqcDcr?=
 =?utf-8?B?OU5CRXM1QzI3Z3psTllteFFhL0hzSUJLYjduM2F6VC9iQXIzbFJKUk4yYWRn?=
 =?utf-8?B?WUdlYS9CRUJYVnhqc0xjbitiMThVRW1QckUvL1d2Tk9NOTFBU01INzdTSDUr?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b3b874c-3ec9-4a8d-daf8-08dc27e62832
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 14:07:45.2980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a8/prHmkx3m00K3VxTp32RgvMYJZxNVnbLF7PmMAv6KRj2jYhpOelkvHKpy9kkaLGB84bGrWW7nlIeQiBofuIfsFqWldasrgD5PymOCj5L4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4695
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707314884; x=1738850884;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VItj7RXdyjtayNL0OOfk9wdWqeMv7733MmALTpXVQ2Y=;
 b=MuDD5aZCt19GLwmQ9barXnEtfcfSbgQjKMO2H9mLVTcvRdmzsiEHmaJf
 FW1+yGdQNyE5kY+A5ey0DSTDlAno0Bd6xQwIw6Bfcqutp6HwUQzi8HVXw
 qBp5uxGfo6a2w+a+t0Rj80gmQVDO5FmdF6Pr1z3Lw5Xk9VX6CJexNhurR
 Ocaod93NgwEysftzOf4m8DqV+3UXy4T6/rI3K/QZIw0I7Uw45Vy7s7pzn
 ryAgQCfC8Ym4N4lW/NTc51TSCNOOCFmDt1UjB41nAMVz/n8+3xe0xoJQP
 T3rZy2KtJHQ9shR4m/UV4nmuXNFp0xbPlAOuwWBTyZ3JA1jarlZX4Khvr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MuDD5aZC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 Jakub Buchocki <jakubx.buchocki@intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org, Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lukasz Plachno <lukasz.plachno@intel.com>
Date: Tue,  6 Feb 2024 17:33:37 +0100

> From: Jakub Buchocki <jakubx.buchocki@intel.com>
> 
> Add support for 'flow-type ether' Flow Director rules via ethtool.
> 
> Create packet segment info for filter configuration based on ethtool
> command parameters. Reuse infrastructure already created for
> ipv4 and ipv6 flows to convert packet segment into
> extraction sequence, which is later used to program the filter
> inside Flow Director block of the Rx pipeline.

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
> index 1f7b26f38818..5fe0bad00fd7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> @@ -4,6 +4,8 @@
>  #include "ice_common.h"
>  
>  /* These are training packet headers used to program flow director filters. */
> +static const u8 ice_fdir_eth_pkt[22] = {0};

I believe this zeroing is not needed, just declare it and the compiler
will zero it automatically.

[...]

> @@ -97,6 +100,12 @@ struct ice_rx_flow_userdef {
>  	u16 flex_fltr;
>  };
>  
> +struct ice_fdir_eth {
> +	u8 dst[ETH_ALEN];
> +	u8 src[ETH_ALEN];
> +	__be16 type;
> +};

This is clearly `struct ethhdr`, please remove this duplicating
definition and just use the generic structure.

Thanks,
Olek
