Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C2182A091
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jan 2024 19:56:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49C9A4364A;
	Wed, 10 Jan 2024 18:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49C9A4364A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704912995;
	bh=LR+C9uTMP7TTjdfWVKXa6y07LXNDOkO5qTVE1WLjVUM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TtlhYrpbiAGUyj0f9lEHR/mjvIVUFSvibHCniFxnoJudACeJB1Z8RC22oY4fylw+j
	 LbZmJRz4xla8bmRhdSinqCUfQ4cdmFUeIgvQEdPpa2h1M472OviiZS7DYFYB9jChEn
	 v/YezVp5fC1EO+lRtBMYraWTsubA8k6zRpm6ShwxqxRyesdS/JIh9CliK2Taft3myg
	 +Qa7sVq+uyJh1DrOqr7ZV9l1/e8kXzlPl0xmmJcdrIplX54IoIue5LLBUDk4ul1qMp
	 A/peGpmyVK9cvivA296MHBXedB1Dj5Zmw/HCYEyJEp2fhMarRQjnerjqTpu/xMnyjw
	 5vDGgbdPhRZHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LnzD3JkZaUlI; Wed, 10 Jan 2024 18:56:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D36C443689;
	Wed, 10 Jan 2024 18:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D36C443689
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F6C81BF85D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 18:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31C48614B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 18:56:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31C48614B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AJh31cQqS4i1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jan 2024 18:56:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D1EF614A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 18:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D1EF614A2
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="389052874"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="389052874"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 10:56:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="1113542794"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="1113542794"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 10:56:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 10:56:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 10:56:25 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 10:56:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XMS/vlfDUsva5575VmZaw+9G1dbv1H+e6qg43+vodzb9NMzI6iMcvIfQ2MGqev9XJRlEgON6yv1c55Uh8QUhAUf8gIFhbWm39vp7lw1ONEpXmQeOJ4I1o3hSye4XNCa9Fe3kdhEkgcplHhyg6D2XQh8bjNO0R02LjU9Tk4m7ChzKARflcOvKvNdYSF6APr5f73dLPbykxFEw2ZD2ZTy+36/WsxqG0h0k0kkTByMYG4QV12OUel2zFjy9nXs7ilHA2zo0gNDOcKrFwYisqbqoWb/ExTXf8Xa2lcDQRvcRu0ct2nJaInUjaXVU2HTGZg6AErVvOGL8qXE2Zb8xX+E/MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LR+C9uTMP7TTjdfWVKXa6y07LXNDOkO5qTVE1WLjVUM=;
 b=TGGzLKC6zJ+9/Ihh8T024qglF/FHrPBLVG827Ukutn3PWn9O7S/XTXnSRfWJVCoPTJVDMibOVhQRwfFYf++YfT74IFNB86WI+xBZUqIypKt5y07smkInXr7zOnBgp0vVFRNARUWtYozXAObdYyyWYDv2SrDEt7MqxdNbTXHM2XqZ3x76HCjN9+SI9btfXz/tRDrqmowqRLYcacjXVE6qTxZ4QV56TmDJXRUUdhIAeyNQPMGCFR7stsQxgW+iUMBB6GaoIJolHkMD5J1f8O0rWfnb7yTmFft3AQZ4cCiIFzooq39zRtTr0zozlJpz2rWwcO8EXPoQPLaRcVV+0gNPjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by BN9PR11MB5417.namprd11.prod.outlook.com (2603:10b6:408:11e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.24; Wed, 10 Jan
 2024 18:56:23 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7159.020; Wed, 10 Jan 2024
 18:56:23 +0000
Message-ID: <d01570cd-20ba-e804-1e06-03ea30dfa2f7@intel.com>
Date: Wed, 10 Jan 2024 10:56:20 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20240105103120.393911-1-jedrzej.jagielski@intel.com>
 <5221bfaf-31bf-630f-9036-284c83c3eb76@intel.com>
 <DS0PR11MB7785D03E09AC1DFA9F0D71C7F0692@DS0PR11MB7785.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <DS0PR11MB7785D03E09AC1DFA9F0D71C7F0692@DS0PR11MB7785.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0232.namprd04.prod.outlook.com
 (2603:10b6:303:87::27) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|BN9PR11MB5417:EE_
X-MS-Office365-Filtering-Correlation-Id: 729855a4-f24e-4d22-9796-08dc120dd730
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eNeLN22AHJmhgWE0fKRhUmU3/Pb8QkXIOqb8fL/4UDUkiOgpu1N0acK17S6S/R8oxm8ZcH3gYmlq0L7vLQvHzLLsZGuNHh4IWseeFdDVcPbzLfN+N+CVUssv3XMFtT3yKYSxUmQaqJOjQRJK8GJwe6/ZZU737MCXvh0SbQ1eH3xAjcRfjZiNWOvYbEJl/WcxzANsEr5isuLVBqx+SYkO6fkVnyC2vUoswaKylVYQfDilEtc1ALLGp+vDJy3V+qPJN0NARq8TEqHXMoJOp76x+n+1zVq2KGzYTJFWW1z1FoQbxlfded37GExXo5/b7yIKP/uTPUYJ1+VL88MeXfCsIgsB1qj8QZS8j9xe9v2FupBXXj4fzkaReRZWl7I5hMxEmIBq7wmAiK3ZSScCiGfEnKAHjFI6XUHel7U/5PZZytxPrcN/2q13AspcVVZNu9JnVrTjMXJQyju1v4WmWFcMC36/Xq8a+LOEhfYYGli3fwBTwZk8/6DA2R+qcqH2nuQns3vhB/n6tZGrt83iHw6GW4XQB6U6mnXVqHklJbHy6NZqJL4aD2vHcDoYoBpJXP4DBnYVX1EnTI/LPWHDhgS8V0sZd4R/h8DOaUWXDTry/k4o2UyFUNUQxf+G+ZTjcqmqlVhgZMO2tIM+b2Muk9HjEQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(39860400002)(366004)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(31686004)(2906002)(5660300002)(966005)(478600001)(4326008)(82960400001)(38100700002)(66946007)(66476007)(316002)(66556008)(54906003)(36756003)(110136005)(41300700001)(6512007)(107886003)(31696002)(6486002)(8676002)(6506007)(53546011)(2616005)(86362001)(8936002)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmxYVVgwYmFBN3cyV2tuNGdtbm5lanMraCswREtMcHVDdEp5VmdtZEFaczNU?=
 =?utf-8?B?V2UxWnU0enNNenJlbktPMHFrTHN0YUFwK0dUYWV0aWQ5Qzg3OHNSRG5PbHB5?=
 =?utf-8?B?dlcyQXFYSG1Sd2tNSTQ5OGtUQU9KbkFSY0NDWmU4U1FvNXdjcU8zNCtaV3ZW?=
 =?utf-8?B?d2lXTkZka29QdVk3Y0Y4bVA2TnQ2QWZ4Qk1YNk95L3NEZ2daZUUvMW44eHVJ?=
 =?utf-8?B?K241SUxGYW1qTGdGMVlkMFc2amR2ZW5qR2d0TVpWU2poYUlsZ3R0V1EyV3l5?=
 =?utf-8?B?allJVUFDWUk1Wkd4bytFZUMrUjlVR3FENGxLSzg2ZE15cVA0SURyeEUwSG42?=
 =?utf-8?B?ZVdjNDNVM1RueWZDNmx6cDJnNDV2aU1VVGE0OG5kRTdJYnVQT0I1VFhCRjhm?=
 =?utf-8?B?VlIyNExxZEVqb0FSZmgzS1FaNlhDVnhhU2tmbFJkZy9yL0I2a1E4QkJPbi90?=
 =?utf-8?B?Yk90YWdyZWNMZkE1dzJFbXZaZHZENEd1SmRjWldHNTdXOVBlL3NHMUlNanlx?=
 =?utf-8?B?WjBYd0V3cGd2aFhDb3k0cjB0Q1lXVzg2Ui9aamFRb2dwUHEzdG5ZMVhYS3E3?=
 =?utf-8?B?dm9EcVptdTlpbkNmT3N0RjNFRExBUklxUm42dWNlT1VGSmkwdEZZcWJqb0xm?=
 =?utf-8?B?UkF0UXZlWllyK1h2NVIzcTBoWmlCQmJsWW1OaUpzVlF6NEZwalNHVHh6OFpO?=
 =?utf-8?B?YVBRMWo3b3EyUHR3Sk56SkUxVDZrRmhDazFheEFKMWwvaXFNUGV5YWJpbXk1?=
 =?utf-8?B?aHBXcTZLVmhOcGpWOXdvTEp6WklURVJFdkdMR2prV0djOXdvQ3l0Z0orOUha?=
 =?utf-8?B?MW9WVjlIOUNyYjV6WjVFZFQ0QmpiVlBjTzBUZGg5R3FJdkV3cThuZmErWlY3?=
 =?utf-8?B?OTl0MzRScW9aekIzNDZ3aDRCU0xRems3aHhOVjBSTTM2S1Rsc0Noc3diQVQv?=
 =?utf-8?B?RjRxSjlJQ21OWkY0b1VkQXd5RG11Y2x3NElLSXNHcXpVWVRXT0E4VkE4MWtH?=
 =?utf-8?B?dy94RzFZcDQ1TzJYa25wNXBGRkh3RlcvdTN5ZlU3bTIwdC9pTmN6Q3NDcW4z?=
 =?utf-8?B?N0FoamVtbkFOZVZFZjlPaFV1OTRxTS92K0JRYnl1bHErNjlKUkVGekxrK0J5?=
 =?utf-8?B?aFllRGR2cHo0UTNJRytPZkJtRGt6NXVJZ0diOXNWRC9Ec1hZRllRR2RZcXBZ?=
 =?utf-8?B?K3hrRWdwSDNnOENKbEdGSW1ZNmRQSEdJTVNHei9DQUxUbXhWK28yZ3ZlUUY2?=
 =?utf-8?B?T2tWeFp4cnN6SG9remN1RkVXNW5hM09pUll1aWlnSUlpNEkrYStzeUlHVVF2?=
 =?utf-8?B?VzFXaTVhMFd5NmhReGQ3KzFiMDBBVEs5dm9NajhGN2ZaaEowa0NNL2xrRzVM?=
 =?utf-8?B?by9BRkpBRW41TEdKMTNxUGxnaEVHNmRSRlF5cGtwUTU4aFVWNGtnTmVUb1Vl?=
 =?utf-8?B?eHRMNmRNSWhjZGw1SHl2QkcwemRXWFRKOGVzb3JLczRWbG9EWXBaWjkxREdz?=
 =?utf-8?B?cVlmelkyU0x3YVlXM0tEaWk5UWQ2cVFvdW9VVElicWVNa3RJT2NQbVZ5YTRv?=
 =?utf-8?B?ZkhxNVNUa3RSaFpQNFd3WUNJb2dXZG1JbEN3S1ZhdXArdGQycDVubEU4VlV4?=
 =?utf-8?B?c0JnVU5NR2w3ZXFzNnNnaHdLYlJWYnVXRlF5OXhBMys2NWVFcTdRTXd2aVFr?=
 =?utf-8?B?NUpWRFBjUTVXcVlEWENDVFNNVUdBMm5OeFNtYWFqYmNKell0WTl4ZFc5aXJ3?=
 =?utf-8?B?ZGRQVHlxaGFOenlhNFlvWGQzZ2M2L0xMWlJ0MmdIblhZcnZkVUV5SXNlR0dm?=
 =?utf-8?B?L2lTQm4wVnNrQjk2akp6MlRnTlJsd0RFb3IvQ0tjTlRPS0hBQTJKd2hHR0Jv?=
 =?utf-8?B?VUtJMmVNSmhvKzNwQld6Skh0NFJxY0lqc2R3MndERHdsN3p2NkVVbWJSZUI1?=
 =?utf-8?B?MHJ5c1pmcTFlM1NUUGZKU2VWT0d1d1FPY0xWbHJXZlNQVG00Nm9xY01ONVBM?=
 =?utf-8?B?WVdxcTFFakpURVY1bWFjQ0t6cnFzYzNib1c1NzBtc2dKWGh4Q2tmMTBqSVFE?=
 =?utf-8?B?dW4zL0ViYXQ3RVBaOGJiaHhweDJ0KzVHR2lhUVJONkJOS281eW1lamcwNkdY?=
 =?utf-8?B?NHhHWlBRaDcxek15aGVQS0JFSEs4YUw2SlhMRHdlSFZCUmpNUEFXZHNGTkRH?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 729855a4-f24e-4d22-9796-08dc120dd730
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2024 18:56:23.6567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eH3helHzETmwzkuFZEoe1OMyjiNbi4II3xcN5TcblYvaMXnjM3Wvjs+KBbTu1NEQyk7Ew6JDcICw7imQ7YlwGp8nl+8hhz2xyQ6cIMcedUk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5417
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704912987; x=1736448987;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WDNjLNjOIUg/6iJJcaZZFJTBZr/rg2jhR4GnQFE5NZg=;
 b=SpQAUvvZzXIv41+eTyE55pKnS6jDPsHHEW/ldIi6sR30xjQ0tmNaCcMX
 vnvMDJ41kz6OUr4Tdy2GaGhiWYRs6DKKkEPbxQZY+QgdS6mrXEUUEP9Sk
 a5MsTOHthd52FLv7+qvJm6xBGbeExonLu2BwIghSXehqI0T0EuvhbnHih
 LF4ULsdKNeoqBzlESSnbSSS1nYImwG7/lhEK9uunPeFq9o3+p46pcgH9w
 lY3OGMs/IGEo83KvnhxX6JqyB4Wj+AoJLlbdLT9aS2v3FKTp6o2ceNu51
 B0NyJcxCBqPThZVqWYjAiH7XyUdVLncV0hNc8ovLi1mzl2moV1WXeISFD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SpQAUvvZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Convert ret val
 type from s32 to int
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/10/2024 3:51 AM, Jagielski, Jedrzej wrote:
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, January 5, 2024 10:50 PM
> 
>> On 1/5/2024 2:31 AM, Jedrzej Jagielski wrote:

...

>>> @@ -93,11 +93,11 @@ static s32 ixgbe_get_invariants_82598(struct ixgbe_hw *hw)
>>>     *  not known.  Perform the SFP init if necessary.
>>>     *
>>>     **/
>>> -static s32 ixgbe_init_phy_ops_82598(struct ixgbe_hw *hw)
>>> +static int ixgbe_init_phy_ops_82598(struct ixgbe_hw *hw)
>>>    {
>>>    	struct ixgbe_mac_info *mac = &hw->mac;
>>>    	struct ixgbe_phy_info *phy = &hw->phy;
>>> -	s32 ret_val;
>>> +	int ret_val;
>>>    	u16 list_offset, data_offset;
>>
>> Should we RCT what we're touching? (many other instances in the patch as
>> well)
> 
> I am not sure if that's still in the scope of that patch

Not 100% the same situation, but it could be in the patch [1] or a 
separate one [2]. I prefer the latter as that's what I did :)

Thanks,
Tony

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5180ff1364bc26c031b54a68a80aa90ce0028b70
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5518ac2a64423f226e922b6719cf0eb62c31e141
