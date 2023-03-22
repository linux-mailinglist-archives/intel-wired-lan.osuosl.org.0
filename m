Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ABA6C566F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 21:06:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 865008207B;
	Wed, 22 Mar 2023 20:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 865008207B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679515578;
	bh=AzCTyyy1oJkPF9eRQoBf6fzFMzTHjJyAvHbYyqEUaLg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gFd+mBSQZSrYqANI5CYFDZyylUH7AlQi2GQEpn31IqBwsb5ABKjqTYFxxDGM3r9a3
	 rPB7rnzv085QsEhNwakwy6VRXoBN0H9SFnhrFB18aiyIF6sMRGU9Hiu1ZWu8+wk8e6
	 fF0Yc+c9pLPzHXdLzge2u+0+t6fht758/Astlf3JNTIbZ5BKHzOYGYEePCzV1n4YAB
	 7yTQnv5vwI9/WTaChwyNiUmMqX4x8e6DdLkZZH5p64xAbjvo3DVScRodp60iVYWmCu
	 zqj19AetGEpS8cTkUcwbm577kdg1+MKFJaeYTWU3LQIyFLwu/WM4wJAHnbe3tQnJSG
	 ow+xS0TboyA1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EKnSIGCDoCI8; Wed, 22 Mar 2023 20:06:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7583881F92;
	Wed, 22 Mar 2023 20:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7583881F92
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A838D1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 20:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DC4F81F92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 20:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DC4F81F92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q9Z1b_K4K8dO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 20:06:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62F5981F64
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62F5981F64
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 20:06:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="340860034"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="340860034"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 13:05:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="856237392"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="856237392"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 22 Mar 2023 13:05:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 13:05:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 13:05:52 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 13:05:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hCye+yPjqL+cbCZufZiBA3zooDua74jfSrj+bXCwCWvy8uuOr+6ut+/7QjEXpyK83WLxUgqIn8FsqrJBuLwBoUN3XYed2diGhdQl+E1wjX9aa9kBOctElAfoXdMh3khItICuYEdSI0YGqoOvnsvZzlJhUi8XWHoAbvdd56+33+5EVkmRE9jdkxz4T62z0LZAO4y1kVip27Dz8f51EAaEIqrfHVQ8QyhXSnU1j8iMuI5546HZYV1LvtZhCNG2lwVEBA3oYSlc9LMVeTRbVtukSijpbYJNvTYN6GoL2jjS07YsCj7ZHXi/FVWHhaxlrFZ8QRZuJNGHsjRfohHL2A/GWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eGE8QsVTFGxkZ7H+nE2KFviHSyGS+rUnBeBryHhwJNM=;
 b=YT7DdOx5dzl7qC73tlyafSVK9fZe8BCa+PyraJ8JrDvy3FehzTGOH/BTQX2aBlbRdMzU5UiQHTHf5/ahx6hHKFncgg/BG0TJHeg6OEK7ZbMyxg1dK9X1DtcLReRdX6F+9d7LOiScvRTVnFQ+b8/kXByq3IYo4w1tqpnY/p2/YJIiydEQSRnHC2MBukI/ie/HadY0kUnrXX684kjXJXlILsLLJZo6dqiJmfv7vgCl1PzXfgdDvfOup02zNucx5D8l264tzP2BBeUaKI/EvjHVK2Wi5AdrW366uIUGuc6WI9dCagO5otZulPJIfmhRXaEHmdFJ97ZlTGnqH9RhRxkyEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Wed, 22 Mar
 2023 20:05:48 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::9612:ae25:42a4:cfd6]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::9612:ae25:42a4:cfd6%9]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 20:05:48 +0000
Message-ID: <b8e7a0ba-af07-08a8-b987-f82b17f8c69d@intel.com>
Date: Wed, 22 Mar 2023 13:05:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Piotr Raczynski
 <piotr.raczynski@intel.com>
References: <20230322162530.3317238-1-piotr.raczynski@intel.com>
 <20230322123706.4a787946@kernel.org>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230322123706.4a787946@kernel.org>
X-ClientProxiedBy: SJ0PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::14) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|CY8PR11MB7364:EE_
X-MS-Office365-Filtering-Correlation-Id: fe852cc6-0a3c-433e-4e62-08db2b10d3cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ThkOxgnncKhnHSYX46IJ6Q78PzWD++lruMSPb+MYz7V7wy4mVtK46urNKk4kBW9ZCCeapbnmKyPLC1wd1Woin7oBNEL9gvND07f39/E/LXkJsJUI48iCQTUf+03L0aw2s2IyZ1arci0lgQTJ3C2lia2nyvkjU/xs65H6oCJPIdgp8kDUgD1+BHqu2ZMcJ+qOjN1ALy64lb+pR6bi4LAecJ09VemJTDRFBGqoecdwP1+0K6h5CVy05rMUconYGDJUE8zQK1IBtTDC5xK7e91oaM+izQXCZI2rKUYiKiDzFCzRDG1IrQ1tKBkkfRUwEyh4w4JXYl9l7YZDbLcKbKwekC/lWXzI/pdWERoqY0KXjoXcCbrdMkp/8rFdXZkzcTX1NVmrOYDXqgf1oCIJBC/fmhl8UaAX+CzASg+2e3KjZkYMgD45LASQmjWhsV55Wgo8lmhl7hzUfH7D0NpGTA9pVSckJ/SotO70/s20ozu0WqU2LqrHEt3Epexi8WPQ6x2kBEfTn5nITXw1O/JZmlaXn31P6fGJka4LVDRcyzQzSf1Zi3tHDuxXqdwpSLJ01fpLMZTCptusYF9wxqd45Ln9RlUf9R7SAM6CIxax4JtfJmWtGNTH+XzGzcMgppSBjPZNt7dqYfF5hzHT6w6g9IaflykWr/whk32zgm+gj60qZSYzXC67JCC6fJTX5XararkAz4aPj7AuwoGsiuEoW82peZoW7lIwyVyKzBV6QM4U3Eg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(39860400002)(376002)(346002)(451199018)(31696002)(86362001)(36756003)(38100700002)(5660300002)(8936002)(2906002)(82960400001)(41300700001)(8676002)(2616005)(83380400001)(316002)(6512007)(6506007)(26005)(53546011)(107886003)(186003)(6666004)(6636002)(110136005)(966005)(6486002)(66946007)(66556008)(478600001)(66899018)(66476007)(4326008)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXdYUzhPc0s1Y3gwREUyZE01c3ZNWXZzMU1uWDIrTUNwSkRycGdveStzUElj?=
 =?utf-8?B?eFdEcG45T2VucEVqeXBPaTh2VlVtck43NlF5MkMrVmVVRURGRDFiMU5vRzkv?=
 =?utf-8?B?ekw5aUlNRDFOVjM2L0J5V0M3alJYTlAvOXdjU2IvNWFmTUpkR2JQa3ZOYWtq?=
 =?utf-8?B?ZzRkMnNiNWU2NGkxNUVkZCtOZFoydDcxYUpnOVQ5RHBlcWZacVREUk9KZDFp?=
 =?utf-8?B?R0kwWWg1OEQvQjBFMm43ZWJCYlQrL1NIbVVMZk9WRmtYSG9sQ2ptaWo4cjFR?=
 =?utf-8?B?MjhEaHBJeGhZY3NqSVZLY2RuY1FQdi9vRm4rRnROWTZSYm9nUmc3N2h4aFQy?=
 =?utf-8?B?TDc3ckt2STdSV1pvY054MTN5Rms4YnZmTm90QlgvU2RZYVVuUWRZM3UycndN?=
 =?utf-8?B?bXVsVkNBZEFkeDR1blFxdU93RXpDVzZTejZTSExCbWZSbUd3SEU1YXN0ZlRC?=
 =?utf-8?B?QUFBQ0NQb3NuWXdsYmZNV1JDK0hKUjhRQTU0anVwQ04vbWZZbHIxSVBXQUY3?=
 =?utf-8?B?TjY2blRQbVVmOXBpOFdSRElWRXVmUWJob29VYXhENjBneXFUaHpYQlVyN2Nz?=
 =?utf-8?B?cmhQYWlTQ2l2OElPRU9PMVl1QW5pNmtpUGFXcHVzMmNpNWoxdEsxYmx1VU56?=
 =?utf-8?B?L2JhMFQ5bWNCMlRyQmtqaGFoR0ZMUmV4YVVEVmVzY1FLUmdGWVI4VHVjLzFm?=
 =?utf-8?B?UzdqREY3V1VEQ0IyeVNhY3dtMkpQdWZ2UGhXWXVQd1ZWMzl0T05waUVSUDlh?=
 =?utf-8?B?aEFrWjdQaWlPWWtOOUdsNHpoTkNOenNYUHE5ZlpSOFlsdlgrRGRkeXQxQW1t?=
 =?utf-8?B?RFpjQkkwb2tFYjNocTgyckd6Y1oyU0ZiRm5IRlBDQTB2WHkvSm1iemNyeFZi?=
 =?utf-8?B?OUpXUm9naHB2VnVWTjNTT2JSM0d6Q1hqbmhEZzRJYnFmaGxXemdJSExjWi9j?=
 =?utf-8?B?b21Lb3ZiKzB5TERYSkFSTGlOcUlpWTcyMHpVNVJFaHJzUEt6RjM2SjlWUktW?=
 =?utf-8?B?RzdSeUVTeS9iMFdseS9ObHdFdzdaVExuNzMxbFNTQ1ZmZnd1Qno3czRDQnUx?=
 =?utf-8?B?S2JNMXF5b2VTd3NzWmIvbndLeTY1bi9ENHRmSE5Gai9ZZEtLN1BHRytob0hr?=
 =?utf-8?B?Z3ZoYytPN0xBRnpVU1VFcWFYQUNwSFFGQktiTVNTQVVaR0xQd3A4U1VEVGJH?=
 =?utf-8?B?ektkZkRUREdERWdJdTRvU2VaZnZ2YmhyeDlNVzRtVE5EZFNxNzZpaHhKRHlQ?=
 =?utf-8?B?c0E5R2VFVXJCVVhPYThoWm1iQlJrZnUzUzNuTWJGRlZwamcvbnErZkRmSEFL?=
 =?utf-8?B?d01mOVczN2xUU2dVQndFNm5rZ3Rpa0cwb3p0RUxseGhNYy9RdHlYNmdHcVpa?=
 =?utf-8?B?U0NudnlZMmcraFU0RUpNWjZTNi9IYmVPSEF0M2R3THMzWlNhWEFtUHJiQ0xu?=
 =?utf-8?B?bk5IZnEyT0pmdDBxSW5odTJoSDk5ZWZwSFFnZDdldVc4OGVLNVFudUxFRU5w?=
 =?utf-8?B?elpuN0QrVHMxemgvNkcvUllmS3dIdjltaE9Mb2svSUo3V042WUtmWEk0UjNW?=
 =?utf-8?B?VUlGQUhxVU9TOXUxalhPUXRELzUzdjVUYnMzYTliVEozeGZYbzkzeEdWYzc1?=
 =?utf-8?B?VGRwNVJjSk9jaXZFWjNrZm5JSWcxWHlucWZCWjJnSDRybHIrdWR1NDNtWjF3?=
 =?utf-8?B?S2xnYi9OczlidktSa2xPQTBIQklDT2gxM0pEZ09ESThMeitjVjhvT0RmQlVk?=
 =?utf-8?B?SlJzd2NGN045MUw5aEd6ZDFiWlhIbnA1akNIekFGbnhScU9qM1ZGRFEydXVn?=
 =?utf-8?B?MncxTjRIQWhFNTFjSkpBcXJzUCtzYUhXZ2JUbm43aEZUcVN5SEk4bjd1cGVt?=
 =?utf-8?B?U3hLa1FITDB5RzR3c3FzcXVZaU5jWDJ4cWZKajk1SHB6bDVVUCttUXlrc0lI?=
 =?utf-8?B?dHYrS1QvSjh0Z3EzSzJHd2ViNXRLc1dIU3BBdURRazk4U3RoOHN4dk9MN3N5?=
 =?utf-8?B?bTUyYk45WitEWmMySjQ4RkFGQlU1WnF2c2Z2U0gvaGRYVXhDM1A5SVhCMjJS?=
 =?utf-8?B?S1VsRWc3STlEMlVyUXJJVmRKSXEydFpQR05VS2JRRVRmelJCeUt6WllTQmlM?=
 =?utf-8?B?ck54V3V1RzBPRTNkeklOTUt5N1l5S2EzVUE1ZXhJNnNLNmpLRGZFK2ZuWncr?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe852cc6-0a3c-433e-4e62-08db2b10d3cf
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2023 20:05:47.8137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +aCoVD64oJA8HPCOxWlkgk3YJdt1wYZeNrY+soMbExlIggHKiPeyFMdaChr3aQyerftWPe1bExU0R2SFZNcLjC1wdf5qf+SHnYkXM2+tqdA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7364
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679515569; x=1711051569;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BVTHR3VL5J6R0pyN8qzoAVYyMtrhursmwITMNnmqSrQ=;
 b=CQxrxNPkM5etmXxhyqmY+8NCKlhxb2yhu//hh54GALPlnJZwKLqlTP9Z
 eeuFVd+TA7UsTwFE+lOlzOVkn56jk/fnEmuKJHe7iNqOtqIPeNG7Gf5wd
 jp7jRfK2VRQFZzdiiOq0NxJxi2EZGwhvzuBf9wTv0kQyAKaLwA+chBDK2
 sxJ/de32r/6ygT9jfW6IJaQHKv5jw5C1wrGbZM2CtiiR/PbWnpQAG5Ndf
 oqfCSD8FuDALCh2wtV9Hkv0kp/rri/RUDWAjwhLaJPcbkzcD5di7IBUtG
 IzDxTsFl0KMjXCp/IdGURajDm6O86a2q0qoIAU2OZBL8kMJ6hUqSOFGii
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CQxrxNPk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] ice: support dynamic
 interrupt allocation
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/22/2023 12:37 PM, Jakub Kicinski wrote:
> On Wed, 22 Mar 2023 17:25:22 +0100 Piotr Raczynski wrote:
>> This patchset reimplements MSIX interrupt allocation logic to allow dynamic
>> interrupt allocation after MSIX has been initially enabled. This allows
>> current and future features to allocate and free interrupts as needed and
>> will help to drastically decrease number of initially preallocated
>> interrupts (even down to the API hard limit of 1). Although this patchset
>> does not change behavior in terms of actual number of allocated interrupts
>> during probe, it will be subject to change.
> 
> Have you seen the mlx5 patch set? I haven't read in detail but seems
> like you're working on the same stuff so could be worth cross-checking
> each other's work:
> 
> https://lore.kernel.org/all/20230320175144.153187-1-saeed@kernel.org/

Thanks for the pointer. I read through that series just now, and it
looks good.

We are doing similar work, though a big difference is that MLX has
converted *all* allocations to be dynamic. This, I think, works for them
because they already have a pool allocation scheme and basically treated
the available vectors as a resource across the function. We didn't
really do that before (we reserved total based on feature and tried to
ensure we don't starve some features), and so converting everything to
dynamic in one-go wasn't done here. Instead, we open the way to allow
dynamic, with a plan to look at refactoring and removing the initial
allocations at a later stage.

In addition the MLX code already has good data structure for tracking
vectors, where as we had the mess that was our res_tracker which was
poorly implemented.

Overall I think the end goal is going to be similar: use dynamic
allocation when possible.

For ice, we need to complete this work, then follow up with some work to
make handling of vector allocation failure better in the case of things
such as vectors for default PF queues. The current code basically
determines the number of queues we create based on the number of vectors
we got. That won't work with dynamic, and we need to instead pick number
of queues, and be able to handle vector exhaustion if we happen to have
limited number of vectors available. We also need to make sure other
uses of vectors can handle failure appropriately, and deal with the
iRDMA<->ice interfaces which currently assume static allocation as well.

My long term goal would be that the driver only allocates one vector at
load which is for the control vector used for miscellaneous interrupts,
and everything else is allocated and released dynamically based on
feature use. But we have a bit of a ways to get there due to the above
limitations in current design. We need to make sure every path has a
suitable path to report failure on vector exhaustion, and that every
consumer has available knobs or parameters to allow the system to be
reconfigured to prevent exhaustion.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
