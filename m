Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 590497DA430
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Oct 2023 01:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1F9260740;
	Fri, 27 Oct 2023 23:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1F9260740
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698450661;
	bh=R95Dnz/mlblyOdDN+mHJvMeCly1qAwkZd5NJ0Cy1B00=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZhVly3zxjAJ6E7JA9L11qke7x6wQg//z2jlRCMnq/+dnadgWDj7qwI652hZbK8bBi
	 kJ1v+uzVJUVZC3rsFw4LwFxzYaP/skqxHW27tygnGDuyl6xGwVfnB6ECmF+XRyoTKK
	 BgNdMlLWS/8V7SmkxNh0Lz8aVFOcgkBUUE6VRiPdMD9vK9Bs6ddBkRVGOe6EoM+wUl
	 jx65EWa0xIJrm2nkz8adky10A82XPjCT36XY+bo0M30ypPFFO3CaQbTFPp8bWNuN7C
	 ECI1OvpfxehvAlro2JKfQoho2f0PfSoMUGX29g+wYr4Ow2Z7+wYUSVcNGfnx9C3e+R
	 /KYK3HirzRP9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sU42YFSXgnfG; Fri, 27 Oct 2023 23:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F5DE60709;
	Fri, 27 Oct 2023 23:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F5DE60709
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC2FA1BF301
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 23:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE41640104
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 23:50:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE41640104
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8shYcN8w1yYK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 23:50:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B00F400EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 23:50:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B00F400EA
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="391734156"
X-IronPort-AV: E=Sophos;i="6.03,257,1694761200"; d="scan'208";a="391734156"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 16:50:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,257,1694761200"; 
   d="scan'208";a="7777875"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2023 16:50:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 16:50:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 27 Oct 2023 16:50:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 27 Oct 2023 16:50:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dhiy+4QGp/bO0DvagbwTTyY5ENaqB1XYQf6FNwrplwFJJKs81TPJ21M/nqLVy0JVqKM258UfMvTUNu+dPa0/rEriNS1O/LgLTeEKkNrvYH/b2k3w2OxK/FdM9LhlWI9puQCYGKmbB0OEOU1+9IuO1fOLjt3b1SF1RmGs+Cad0Wo9VtT9v9ni+DYdgBwzKhdD3UaHzo92gqOD9R2q/13e54p633PzBtqNeBrtjrghV9+7V9d3QiTP0S+1sCvLByIhv8qTHv4lhD6/HIg7O8FUSmXaSKAi08n0uj9rBtxe2J8cJ6Im+/n3mn1knw9VgJy9+cpdnt9cW50P9LPt7PxzZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cu5LWG/Tao8cxDncO2PV/fiSjcQwZwh5ZNWTLE6g8+Q=;
 b=oOqkvyCw7x5s7qwRGcf1tx0R6bJZWZCTskxQ9kpaYYZER3wPOi/ig0tV8tdWx8jOo8D/ucczgwY+qc6YYsTBIaP5CJWiK9mXmPW2DbBo2uFyuD4zk6czTI/NyetzsSVtJdlGEg7TVhNnj+63+mLiacyo6h6viAv1+ZUSxemQeylsXul7RRjL46ttMtoZuZOHeJv0ziaxcKHuZGxp2FB+NQ2FMzamGOnzOweN2Bv3IG8f0JbHqJEfEQLGycbKS3x9bk6++dG9kz/goK1z3NKRGCcn9muTwCiCb3zYWhcEhLKGPRpA5k0Fn9nSEkRvpUhp99PWFERhtO+Ja0ZdkJyXlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB6612.namprd11.prod.outlook.com (2603:10b6:510:1cf::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Fri, 27 Oct
 2023 23:50:39 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::2724:db16:fe7b:2ffa]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::2724:db16:fe7b:2ffa%6]) with mapi id 15.20.6933.024; Fri, 27 Oct 2023
 23:50:39 +0000
Message-ID: <b557b5a5-72e2-481c-951b-f983868ae763@intel.com>
Date: Fri, 27 Oct 2023 16:50:36 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
 <20230807103624.468230-9-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230807103624.468230-9-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4P221CA0008.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH8PR11MB6612:EE_
X-MS-Office365-Filtering-Correlation-Id: 15d0b249-177a-4484-7f3f-08dbd74785c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9U7Ye+Y340Ub2cFy8yKNBLD6oNfw7qI/joH/wEUcQljidoxEweTsJFG3xT8/28D/c9Lqvwr7TGgQ8/CGEHYIXxPcVZzz0sTtC+uvACsQHXNQPMwL/iDXCntS2wUL9314EAjYMv1O1hjpzHfIkO8+zp55FvJL98iK7Bq1SVnH5Lf5pAV4U7wK+fQp2CCRXx0pKLAeoZqeEPOI7zDF31NFULZvny6RzQGIlV+XUQ6OMd6BjhlSnzQBf4DXx46eEu8GUVAMlMXhQW+mdpekCOc2zIAYVoAPay74r+alSi5Yk6fyH1VTuFfcqRZ5o5yxCmjVDJgu965nUZ5q9RSsbWZGzgdt2tbgZ/OHp6HSY5xhTofJcyw5OisoHKoXIULf5xJ+ruGQaR6Cy9CIZJqGYX9RufkAG9LUpwCxh8hcyrqWGbrPy65I528nhbKG87YcUaHDKUTE/aMhg/kW/MzM+BLuvo69gmbZ1wm6gyEuFfbmungaBsz518S9ZhcWKxwf577KKbKMfeVs4z1vk6dFpo/1xjmWBAWQI1iaCIbXRr7E229c2izkELCPKOxKxYvaydD6HCrAP9uCplmyZ8igwNnYyL2B7GvjBjJM/gkBJG23f8gH8+kIRTTK0tM+0mNadYtWwOHfj2ArTBkkd22gDtFMLQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(8936002)(2906002)(8676002)(41300700001)(5660300002)(6666004)(2616005)(36756003)(26005)(53546011)(82960400001)(6512007)(6506007)(38100700002)(31686004)(66946007)(66476007)(31696002)(316002)(478600001)(86362001)(83380400001)(66556008)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXhLaHFPR29rNllFRFBkWmgzb3p3ZnVBU252TXNKWTIyNWUvdHN2eDRGZmVa?=
 =?utf-8?B?QXVaZ0lMRGRqSzFoK3VxK1hDdUM1U0ZlVTgvcWpnZTg5ZzBva1JZTTR4RUtD?=
 =?utf-8?B?RWRuMXNyMlR0bU1ET1FzcnFxVTVpL2JYTU0xY2tNVmdBN2dtbU5TTmpRRjMz?=
 =?utf-8?B?TktvbURNRm5lOGRnak9zUzFUNmh3WlJYMWVydGhjSzdwQk16dm13Zy9hQTF6?=
 =?utf-8?B?YlBFYWs3bmxNTUs1VXdlQ1IySy9zQk00WlNyUFNpYytxZjJBVlpYYkRHZjgv?=
 =?utf-8?B?aU1yRThYbnBUbm94ZXB5K2xiU0RTN05jUnp3dW05Tkd2WTNSNW0zeUNJWHhu?=
 =?utf-8?B?TDI4eUxlUzhlU1dSTFY4U2lQQ2VteFZBaXZ4cXJsdGhEc1RmK2xSRVFjS2RY?=
 =?utf-8?B?YURadzBUa3RWNzlhVnJ3dmkrN0dsWUlrQkluTXlUSDBLZ0dpODl4blZ6cnEw?=
 =?utf-8?B?VUZYRUk1NUY1SGtwaHBsNE42WDRFRHFacFQzaFFFaEtSNWFSRVRaTHUxNm9S?=
 =?utf-8?B?YTRzZmVaS2M2RnFMbG4zdnpsdmt2cmFqdjltek5GWWJ5amJSV0JGSDR5dVQw?=
 =?utf-8?B?R1kyT3MzRkF3SGVBbVg4SlpkdG1RSWVQN3dJUC85M3pCRVhwemxmbXZ5TE5k?=
 =?utf-8?B?OGZFanAvakFROVRleHVmS0M5YW1yR3NhWllDOFNCRktudW9Da1F2eGp0Y1N0?=
 =?utf-8?B?WEdzR0FPN1IyY1I3SktkemZqUThoZjZEbVkvb0gyY2QzUVNmd3doMDRuTkhT?=
 =?utf-8?B?S2h5UEdVTyt5a1hyNHpXcGhkeGUzSUpKWFNWWVBMc2RHSGZPeHl6RUN5OUpC?=
 =?utf-8?B?SG5ZRnNjRjBQUjh2Z21SWG9RdDdjNWZUTm5QbC9WV3B5WFZybHRwYVFUZVcz?=
 =?utf-8?B?UDdTWHF6dzB1VGxJMC8yVU5kZmRxWG9GWW82czM1dGMyR0NxT0JzZERRbUVZ?=
 =?utf-8?B?QnNoemI3ZkRWditRMTVSZXF1VCtIY0VXNjVXbXJPSG9sRWJWUmtVNm1PcnRE?=
 =?utf-8?B?aGxTSFhkdXJYUWJKREZLS3BucHNDTmdqamFtYml3TXBMWGRUMVlrYVBCY1hr?=
 =?utf-8?B?NUsyT3Jib1U3eXVETDJ6SUtTVVNzSUl2bU0xYUltbFlXb01kRHRsVFJ1TXh6?=
 =?utf-8?B?cld6WnpzbER3TGxaK3NNdmVKNUxEbWwvMEhYL0xvdHFCUnFrNG01Z3V1U0F3?=
 =?utf-8?B?UGdKa2RwS0phMjJZU3c1VjhVZUlERVZSc3VlM2xydFltV1QzN2hjcjNZN2lV?=
 =?utf-8?B?SXBUdE12Sy94TDVuRm45dzgwOFhsY1p6Wm5WbmtJZmJ4N0lheTFVb2MrbW9L?=
 =?utf-8?B?em9ZMDcyV2hwSEhvd1pJZGxBOFZIdVVLUGNwZlpKSzVzc0ErQmRGYkt6ZmFZ?=
 =?utf-8?B?TWlkRUlDK08xNlRySGtFcU1DUlN2Z0l1RVhuUVQyczdPSWZSdEN3dTZXZjJ4?=
 =?utf-8?B?VFFnZnEybzErcFFhbklkNldLVXB6SmJGc08yMEJScjFWdzBrVTYyd0U3cFdp?=
 =?utf-8?B?QmxlVDEvcG1tS1MyR2lQYS83QmdTQ0lianNPRUh3Yks2L21jcnVEblAxKzJl?=
 =?utf-8?B?aFgzZzNleG83bHFkZk01QTZ0aE92K1NvMWpVazAvZC91VVdtQVNDQU5DM0tG?=
 =?utf-8?B?c1RSNTVJUnUvamNTNjJhcCtHSGxjZlBoblA1Z21pNDdFVk4vY1lwWjFFd29B?=
 =?utf-8?B?NEpLcTRuTHBUYmVoNUNkY0NxeTJJWHlpelFaWEhGWUppUmdmdTZxaTRwUkxm?=
 =?utf-8?B?L2xZK1lrWko3b1N5SXdhcXdSSk9VSFFtaTFIc1J1eWpiaXgwcEE3ckl4L3V6?=
 =?utf-8?B?Uy9XT1EwMlB2aElLdWlkdFBzVVRPTGNiRmpQSUV6RzRHaFVVdEl2NlpQSEhr?=
 =?utf-8?B?b3UxbCtIZWZWaFo1MlJtVk15UzBrL3BkWGFoRm1vQ0d0a05uckI5c3N2TTB3?=
 =?utf-8?B?c2hrdm1XVFJJOWhxc240TFc3Snc5dVdTclVFdlZ3TnU5S3QyQ2gwS2VYa3lW?=
 =?utf-8?B?K1JNM3BUbHpWQ0ZYNWpBM3VJM2ZGZ2tMZUJqcURDblA4YlVDcjRFc0Q3WGs3?=
 =?utf-8?B?Rm00V2JheGt1WjVxTU96N2Y4L0pIRjJDU3lXUnZFTlZrTDQ5aHk0OGQyWlBZ?=
 =?utf-8?B?UFhkQXZCS3Bld0s3SVdhUndGL3JIZ2wySUF1N3ZvQzZqWUlBZSs0Z0IzdktU?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15d0b249-177a-4484-7f3f-08dbd74785c5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2023 23:50:39.0877 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qZBRnfAg761sn7aEEJjMuq179eD5hhySYOsnXjwye2Vn9qeOCgC1H6Ubr3AoqDkubT+L1VkYSPCGhBUsnOAGdICw6BK5Ni334RX91fVqQ5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698450653; x=1729986653;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DPREIXs03lN6HnxNB+FqFkOddIwNDbh+jo4agI5NJ9E=;
 b=Hf7io7b03EfjJEYNbuP+7aTH6T5oTOEUdQxifbTVXgz7uMEihsAa22yN
 7P1CjJX+M7rBaKX0c/W2hQ+1a1JdBv3wRQ7wvUEvrb0pPXMatQuiczASn
 dVSSc4XuYjqfIdYiNoa3RWwZ7fYA3GjDZ/esymV0WHdu4sh9ClRoxV+G+
 PcCKl4/t3AXjhRLw34KBuurBePb/yyAMngk2F2/Y8x0TL58iXMAyI44U5
 F5wBB1KOW/eAeEuvq2hQTtA/3BFBr8MZ8Prg0rnx+0QgLRf3VQz/Bcbc6
 DF0Fjah7uS7+tg79X4h0RSD/8SClx0S5mipK0GhUb/eMmJp1ZOyrDpT3j
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hf7io7b0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 8/9] ice: restore timestamp
 configuration after reset
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



On 8/7/2023 3:36 AM, Karol Kolacinski wrote:
> The driver calls ice_ptp_cfg_timestamp() during
> ice_ptp_prepare_for_reset() to disable timestamping while the device is
> resetting. It then attempts to restore timestamp configuration at the
> end of ice_rebuild(). However, it currently forcibly calls
> ice_ptp_cfg_timestamp() with a value of true when the device is not E810
> and is the clock owner, while calling ice_ptp_cfg_timestamp() with a
> value of false for all other devices.
> 
> This incorrectly forcibly disables timestamping on all ports except the
> clock owner.
> 
> This was not detected previously due to a quirk of the LinuxPTP ptp4l
> application. If ptp4l detects a missing timestamp, it enters a fault
> state and performs recovery logic which includes executing SIOCSHWTSTAMP
> again, restoring the now accidentally cleared configuration.
> 
> Not every application does this, and for these applications, timestamps
> will mysteriously stop after a PF reset, without being restored until an
> application restart.
> 
> Fix this by replacing ice_ptp_cfg_timestamp() with two new functions:
> 
> 1) ice_ptp_disable_timestamp_mode() which unconditionally disables the
>    timestamping logic in ice_ptp_prepare_for_reset() and
>    ice_ptp_release()
> 
> 2) ice_ptp_restore_timestamp_mode() which calls
>    ice_ptp_restore_tx_interrupt() to restore Tx timestamping
>    configuration, calls ice_set_rx_tstamp() to restore Rx timestamping
>    configuration, and issues an immediate TSYN_TX interrupt to ensure
>    that timestamps which may have occurred during the device reset get
>    processed.
> 
> This obsoletes the ice_set_tx_tstamp() function which can now be safely
> removed.
> 
> With this change, all devices should now restore Tx and Rx timestamping
> functionality correctly after a PF reset without application
> intervention.
> 
> Change-type: DefectResolution
> HSDES-number: 22018443364
> HSDES-tenant: server_platf_lan.bug
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---

I'm sending a version of this patch directly to net-next along with the
related fix for PFINT_TSYN_MSK, so that may cause a conflict with this
series. I think it should be fixable by Tony or myself when we rebase
IWL, but it could lead to needing a new version of the series.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
