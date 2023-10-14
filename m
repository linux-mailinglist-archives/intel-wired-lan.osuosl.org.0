Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C861F7C9490
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Oct 2023 14:20:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 608EF61099;
	Sat, 14 Oct 2023 12:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 608EF61099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697286025;
	bh=Ry2KQbEySUklgdqIdQtO+qD8XBKRVGnEQHU6RWxc1J8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O3bweIcSPrf4ueKUjEwkVG8kBWMrfOCAQNyoF6aVyY/MdTcFYsGq35TT7N38BZQRQ
	 IVdOMAtcaWVWVei6ybDPYouvpbDAtFX/o5iaS3PFjGBV31WccJ59H0hPgUdoyOX/1j
	 JEBfMs82THCoalVzSLQVWV21Iz6RPCtsV5M4M+fy2zV8OE6/UQrrQ8HvFdKRJ/4e/E
	 4kNnaSIV9ZqnnvgdkhNV9x7hhMCiov57oRR78MUdTVxO2q1p53L+WkTv79japs2j65
	 wSpETXYPdBIyLKS0aL0siW+hZG/E0x4gvx7JR/wZuDCgqmZuVf1BcnWZ4GxHdQLrSb
	 CLRhlXWZcvWJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7GA7zqHVQR8; Sat, 14 Oct 2023 12:20:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 836E561054;
	Sat, 14 Oct 2023 12:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 836E561054
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3434D1BF277
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Oct 2023 12:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0AEBA410EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Oct 2023 12:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AEBA410EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S3_O426rz8rJ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Oct 2023 12:20:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AE6F409E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Oct 2023 12:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AE6F409E7
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="389182009"
X-IronPort-AV: E=Sophos;i="6.03,224,1694761200"; d="scan'208";a="389182009"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2023 05:20:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="748660822"
X-IronPort-AV: E=Sophos;i="6.03,224,1694761200"; d="scan'208";a="748660822"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2023 05:20:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sat, 14 Oct 2023 05:20:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sat, 14 Oct 2023 05:20:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sat, 14 Oct 2023 05:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D0vmnbIw+eKnb+/DukraH/nAgyPq8ZopKiWiaxjh/LDS/wFCXHYUIz9l6qP3AH4h234aXiOkH7XYAmhUsIKQPSxP5PaFtpiD9gTOkrSKkk0IewTxHBTufY9i33kAzZ691rS/TEx8IN9HdAcYFcsyivfoqCugUajVKrs7ipRPNe8FaLVbtP2+whvfowLsMXfYJT/hcauo4SbH6vsd6Y0B8wLAaW5AfELLc0tPW2fgAkSXGzFv7R92bVfQ3tQ7S3ZShVIyNoaCYR0pJU5yahYvXkmDJQId12Y986T58C0tfmkpaG8qtLzxEPVMhauCpeXW6yTyAqs1MJIdq1iBsFZzzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L8bVb5HjZ+hwYJBpFAb15EgUvMJABtde6w+lYzv8IJU=;
 b=dG75TxV/C9s7vj59UVIp/kWny2cScIF/VIg712+r/1LJ3KcOIc2W9M7/HW5FIoAGMZBda2dz+qxJCh61+bdXmPfYf8awLvMTijYujEkS/D5nyNJcTRqhclafw9B5PAAiIQl/yJhTrqdcKOUImkfkTyu0p3nB8dfs0K1E54Clk6CExSep1JwM/OdZ/bK9KONQQBKqEw18HZJx8MMDaLJ/6m4vZ7hiJzl8bA9la2cLR6eOr1j2IpBWMm35fQwefZsjjh5lZc6S728YsJ1HgwxpoqTzMHEVHmp/TkJAwtwn7VIp9MYeGXXJgLZ5n1oUDtWtQon4iDNqPE9H8LAGPFbFFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by CH3PR11MB7348.namprd11.prod.outlook.com (2603:10b6:610:14d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.46; Sat, 14 Oct
 2023 12:20:06 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6863.032; Sat, 14 Oct 2023
 12:20:06 +0000
Message-ID: <cf6c824a-be09-4b6c-b2a2-fb870e9f0c37@intel.com>
Date: Sat, 14 Oct 2023 06:19:54 -0600
User-Agent: Mozilla Thunderbird
To: <kuba@kernel.org>
References: <20231010200437.9794-1-ahmed.zaki@intel.com>
 <20231010200437.9794-2-ahmed.zaki@intel.com>
 <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
 <8d205051-d04c-42ff-a2c5-98fcd8545ecb@intel.com>
 <CAF=yD-J=6atRuyhx+a9dvYkr3_Ydzqwwp0Pd1HkFsgNzzk01DQ@mail.gmail.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <CAF=yD-J=6atRuyhx+a9dvYkr3_Ydzqwwp0Pd1HkFsgNzzk01DQ@mail.gmail.com>
X-ClientProxiedBy: DB8P191CA0029.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:130::39) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|CH3PR11MB7348:EE_
X-MS-Office365-Filtering-Correlation-Id: 5218fad3-1c8e-4752-57b7-08dbccafe676
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xu8utO6vABe+I/6fx4T2RDzgkGpBCG0v0IAmIy7f4e6bXfksYsdZDNBJPDXSAm1h+e+Y9ymEXEmuqxdmhGJYPi+O3zDsqRFalbRlHahwu3N7JBtD9MgPjirAvoIznhCBOk+C2SJmasiAbnzZn0Q4zHq9P+aK4Rrf5AzorH9w/ZN4rLP6gFATwGmeI5eeDgYX6TgFsTnZU5OYj4UyPVpLVhtl/kh8Vj9EM3gk0B17RpsA0TK1fEWDYZJfPsyYE9sLz2GaxqSDJyRkmq3n9iOZ1/ZGptAb7ZBLgK5T2cJ3Fcap6B88pCd7smAZ0fZB1q980qWJzMYKIyyyTCUMv2QEPCQeGQSJ8mrv4XQctsnxvXvsWj4vs9t2C4QpV7IX8f6BFczvHbuVa4dRDn167NpCdZuDj5ZGi1sO9OoZvRDJ9os1iXX+Id8PkicM6WSstmrAzPcuTCukbjpG3MSZK3HJLI9YPjX7PLp3TIwGigGTTRLF5rQvpN8nDN5SOOb6yZeq1q1UkDyxp0NvjSaYxpz637vAc0ETAIWub8zADEJY16ZlI9GXX33oPye9uVk9oA1D7qv8sBMhcfkNjv7WTVhXiA+8lSK65EipJeBXqROMAQM8NgT2A14+ZfzrPP4NWBCL/muqbMYO7Jhv1QZiQpJKpw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(346002)(39860400002)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(44832011)(8676002)(8936002)(4326008)(41300700001)(5660300002)(2906002)(7416002)(4001150100001)(86362001)(31696002)(36756003)(82960400001)(38100700002)(83380400001)(2616005)(26005)(316002)(6916009)(478600001)(66476007)(66946007)(66556008)(54906003)(31686004)(6666004)(6486002)(6512007)(53546011)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmZJZGhOdHZxbGh0dktUNlFmZjkydVlUaUNBTEhRdHdzWjRBdHp5Q3NXSlNo?=
 =?utf-8?B?aU1SamhLVXREdjc0QjFyV0VVTWxad21YcUlmNXMyOGRZTTNqdW01QjF6SWFz?=
 =?utf-8?B?WVhlMGFGTXlyeUM3S0d4RTYxZEI4WmdZRnNsaUtJSlJ6QzZMSXorcGhmTFFK?=
 =?utf-8?B?enBscUU2SE1tSUpZZmErR3hQL0w2a0xsRmRZQlh2NldtaDczbU5NNTdiM0Nz?=
 =?utf-8?B?ckpCMmZkTnVLVlRRWi9FRklrNnU0UE96NUQ3VjZmUjFRWVgydXhqZCtvb214?=
 =?utf-8?B?OWJoWnZvVFJXcm1Lc1o5RFJOaDBULytqMk5ndEdoWUVBYU91WHVtTUZpZmp5?=
 =?utf-8?B?OW9DYXNEWi8xNXY1dkswY0dSRWFTeEdPOEEvWVUyNDRSc29BK0NtUkIzMFRx?=
 =?utf-8?B?MDlnOTEvZ1E4Z0g4ZkJsRlFSeXFqeERUbHY2b0xHZVRpWGNXbWtCWGNrZXNN?=
 =?utf-8?B?aExmSkpIcGY4NXowTU95UUFMSE1qWWthM05WU2pmaGErdEdOK0c4dHJZM3pZ?=
 =?utf-8?B?c1hBYjJRTS9nQ2xLcGJLVkNhbWZCOUZMNUFENmVZN0JZbm8vWE55OHFIbGFx?=
 =?utf-8?B?KzFtS0RHZFVkamNKWE53Y2tXRnlMVTJ0ZkZ0anZjTEIzeXNSeXVTbHlXUk5P?=
 =?utf-8?B?MlhraG8yanp2OEpNMzl6d0k1WlhFZm5FaXNZQmVVSE8zZmNyM1NpV2lmYmJq?=
 =?utf-8?B?Z0tTZmFhMGRJL2IvakNyUVBTb0lTOGhFK2F5bDNuS0QrS3dsWHZkZ01WM2FJ?=
 =?utf-8?B?anVQY0JTMkJaY29JcnRlRkpKd25vYUdFdWhRcWZXRyt5RkVCc3VveFZNanZM?=
 =?utf-8?B?MEs1YVEzcTJCTTlRMDcwTmh1SlpEVEFqNFh0UENrR3RDVU1KZ0VEdFNRODlj?=
 =?utf-8?B?L3hxWUdYZTc5aFNYTTlXem9YbHhuU2pXa3BvbHVhL01xa2ZwMEh6RFdaV0lF?=
 =?utf-8?B?YUZyRUpOVWF0cVpzSDdjd0xndEFCbXo2RW9PWHRXVDZlMTFId0dtb0swZU5T?=
 =?utf-8?B?dnR5Z2I1NGp4aDJvS3ZQOFg2aWp6dkhzd0RwZVg5TnJwZEEwdXpqV0JnSFg4?=
 =?utf-8?B?Q0JHMElEYzJzMzN6Tk42T3lOaFlNQWxienpCNlQzR29kdHhoVDRJNkN3UjlQ?=
 =?utf-8?B?d0xNbGp6VzNJZU9aQ0c0YWQwWGFCN2h2bHBoSmNpTU1GcnY3ZS85Z25vOTIr?=
 =?utf-8?B?SVZPNFk2bFc3UnhFYS9XRSs2WjM3VWxWNTBmejd6T2VxWC9teHo4TWh6bEhF?=
 =?utf-8?B?WFUyb1BCcGNBZXBRMGdIMXp2cTY2NUhQUzJoV0JzMlVteHNQSlBoazcrR2Zt?=
 =?utf-8?B?U1h6RDQwcTd5V3p2dGlEVUFINXh4bFh3QUdZalVFaGdJTzVaQjd5ZEtOSnBx?=
 =?utf-8?B?anNuU0ZFNEdHVk5HajNUZ1Q4dFZzK3NHdjZTRGY4b2NkdGRGaGY3ZEdSbjVj?=
 =?utf-8?B?aGE0Yk9Ra0Rsck5zdHU1VEc1cUVJZEdMdmtwWVc1Q1BDR3lVTTEyOU5oVHpJ?=
 =?utf-8?B?RFNudllTM0RkTUpxWGVUUFZNWG9nVkNGeXdvSkV1SkV3a2xyNGJsWTBKUzZC?=
 =?utf-8?B?UXo2Ry9HWms3TU5aT25lRGtkTFZXSklZVGJ0R2xId25oQng2K2JZNGo4eFN3?=
 =?utf-8?B?Zk9hMmxUdHVDbmZIcVMrZURicUtpL1g2ZXpHakVEbkx5RThTdU5iNS95M2x2?=
 =?utf-8?B?Z1g0Ymo2a2sxSDRBRnBqMy8xaFh1Ympmdmd6SmNXWElVZkRjS0JTb01UYmFJ?=
 =?utf-8?B?c1FYck0vbHg2ckNvUjNDYmw0YTNTQ3pla0htdVNKL3B1OEZUc0NEZ0ZiQzI0?=
 =?utf-8?B?MEFpTTRJUGFCZG05OVNlK3ZoeWZnaE9SWkNLVVhxd2xEd3p6aXFFUmQyS2Vj?=
 =?utf-8?B?K3FySDc3VDdrMFdRYnhNZjhXL1FQaFN0SHNOUTJrNTFUcGhnN1JkSUYvS2ll?=
 =?utf-8?B?ZG1sZkl4YTJpWmIvMFVZVHhrWWl0VGxQd0Y0UjlQaTdQVlNWN3FTandKcDdN?=
 =?utf-8?B?djlHNkdxckFmWk5Dd0FuWFRmQmJOMGVnMlhCdURkcFNmSlREQzdFckpGYm5C?=
 =?utf-8?B?UXppUVFlOU53dkZmc29xdXdMdlpsR0hQZEpSci9UWWY3RCtXRFI5ZTloUEpF?=
 =?utf-8?Q?8lbcjc2ApzTByHfoo51kUS95M?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5218fad3-1c8e-4752-57b7-08dbccafe676
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2023 12:20:06.3724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o+SyCGdF+0iMEZbpL3iSpYEAOaSyhX+Ef2HdNr8dohqkizP0TbDEweTKGxIDehBGt0+QOinieScsk17h1twKIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7348
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697286012; x=1728822012;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qvbOoUt3dI14lweWiYOcgDGfDqkD/n8aH1iluMORqBg=;
 b=l0H8VV2Wmj7zQKDBf7kk0Gnp7rbM2WkbA3GSgky4HZ8hWqRQXGVegO5d
 G7MeDJpwC7mXDiuT76NVaepaAuc2dl7bFIv2y8dWsg06BskCY2+aA0PGo
 +b3GaKkmB+mQwj+QESQvBRNXYjEbsXEB0jGU2QqERw+b42sfcWQ979Xfw
 ufJ+5eS34qAtFTCT+zShZy4sKpG2rsfdzP5shwKh0oetz6TkY7CgUvT68
 3gJ0UMzpYHHo7QxcNkpdJOgWC6dnkyS0lc5HZlE627XvMw0tz4iJKTgXo
 feXX7b2vFGk3VkfXfiwcHjvD7cx7jmDqfH6N9oQm38ZlTwdy68XWhsGfm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l0H8VV2W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMDIzLTEwLTExIDE2OjQ1LCBXaWxsZW0gZGUgQnJ1aWpuIHdyb3RlOgo+IE9uIFR1ZSwg
T2N0IDEwLCAyMDIzIGF0IDU6MzTigK9QTSBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNv
bT4gd3JvdGU6Cj4+Cj4+Cj4+IE9uIDIwMjMtMTAtMTAgMTQ6NDAsIFdpbGxlbSBkZSBCcnVpam4g
d3JvdGU6Cj4+Cj4+IE9uIFR1ZSwgT2N0IDEwLCAyMDIzIGF0IDQ6MDXigK9QTSBBaG1lZCBaYWtp
IDxhaG1lZC56YWtpQGludGVsLmNvbT4gd3JvdGU6Cj4+Cj4+IFN5bW1ldHJpYyBSU1MgaGFzaCBm
dW5jdGlvbnMgYXJlIGJlbmVmaWNpYWwgaW4gYXBwbGljYXRpb25zIHRoYXQgbW9uaXRvcgo+PiBi
b3RoIFR4IGFuZCBSeCBwYWNrZXRzIG9mIHRoZSBzYW1lIGZsb3cgKElEUywgc29mdHdhcmUgZmly
ZXdhbGxzLCAuLmV0YykuCj4+IEdldHRpbmcgYWxsIHRyYWZmaWMgb2YgdGhlIHNhbWUgZmxvdyBv
biB0aGUgc2FtZSBSWCBxdWV1ZSByZXN1bHRzIGluCj4+IGhpZ2hlciBDUFUgY2FjaGUgZWZmaWNp
ZW5jeS4KPj4KPj4gQSBOSUMgdGhhdCBzdXBwb3J0cyAic3ltbWV0cmljLXhvciIgY2FuIGFjaGll
dmUgdGhpcyBSU1MgaGFzaCBzeW1tZXRyeQo+PiBieSBYT1JpbmcgdGhlIHNvdXJjZSBhbmQgZGVz
dGluYXRpb24gZmllbGRzIGFuZCBwYXNzIHRoZSB2YWx1ZXMgdG8gdGhlCj4+IFJTUyBoYXNoIGFs
Z29yaXRobS4KPj4KPj4gT25seSBmaWVsZHMgdGhhdCBoYXMgY291bnRlcnBhcnRzIGluIHRoZSBv
dGhlciBkaXJlY3Rpb24gY2FuIGJlCj4+IGFjY2VwdGVkOyBJUCBzcmMvZHN0IGFuZCBMNCBzcmMv
ZHN0IHBvcnRzLgo+Pgo+PiBUaGUgdXNlciBtYXkgcmVxdWVzdCBSU1MgaGFzaCBzeW1tZXRyeSBm
b3IgYSBzcGVjaWZpYyBmbG93IHR5cGUsIHZpYToKPj4KPj4gICAgICAjIGV0aHRvb2wgLU58LVUg
ZXRoMCByeC1mbG93LWhhc2ggPGZsb3dfdHlwZT4gc3xkfGZ8biBzeW1tZXRyaWMteG9yCj4+Cj4+
IG9yIHR1cm4gc3ltbWV0cnkgb2ZmIChhc3ltbWV0cmljKSBieToKPj4KPj4gICAgICAjIGV0aHRv
b2wgLU58LVUgZXRoMCByeC1mbG93LWhhc2ggPGZsb3dfdHlwZT4gc3xkfGZ8bgo+Pgo+PiBSZXZp
ZXdlZC1ieTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgo+PiBT
aWduZWQtb2ZmLWJ5OiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNvbT4KPj4gLS0tCj4+
ICAgRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0IHwgIDYgKysrKysrCj4+ICAg
aW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCAgICAgICAgIHwgMTcgKysrKysrKysrLS0tLS0t
LS0KPj4gICBuZXQvZXRodG9vbC9pb2N0bC5jICAgICAgICAgICAgICAgICAgfCAxMSArKysrKysr
KysrKwo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJz
dCBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdAo+PiBpbmRleCA5MmM5ZmI0
NmQ2YTIuLjY0ZjNkNzU2NjQwNyAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3Jr
aW5nL3NjYWxpbmcucnN0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5n
LnJzdAo+PiBAQCAtNDQsNiArNDQsMTIgQEAgYnkgbWFza2luZyBvdXQgdGhlIGxvdyBvcmRlciBz
ZXZlbiBiaXRzIG9mIHRoZSBjb21wdXRlZCBoYXNoIGZvciB0aGUKPj4gICBwYWNrZXQgKHVzdWFs
bHkgYSBUb2VwbGl0eiBoYXNoKSwgdGFraW5nIHRoaXMgbnVtYmVyIGFzIGEga2V5IGludG8gdGhl
Cj4+ICAgaW5kaXJlY3Rpb24gdGFibGUgYW5kIHJlYWRpbmcgdGhlIGNvcnJlc3BvbmRpbmcgdmFs
dWUuCj4+Cj4+ICtTb21lIE5JQ3Mgc3VwcG9ydCBzeW1tZXRyaWMgUlNTIGhhc2hpbmcgd2hlcmUs
IGlmIHRoZSBJUCAoc291cmNlIGFkZHJlc3MsCj4+ICtkZXN0aW5hdGlvbiBhZGRyZXNzKSBhbmQg
VENQL1VEUCAoc291cmNlIHBvcnQsIGRlc3RpbmF0aW9uIHBvcnQpIHR1cGxlcwo+PiArYXJlIHN3
YXBwZWQsIHRoZSBjb21wdXRlZCBoYXNoIGlzIHRoZSBzYW1lLiBUaGlzIGlzIGJlbmVmaWNpYWwg
aW4gc29tZQo+PiArYXBwbGljYXRpb25zIHRoYXQgbW9uaXRvciBUQ1AvSVAgZmxvd3MgKElEUywg
ZmlyZXdhbGxzLCAuLi5ldGMpIGFuZCBuZWVkCj4+ICtib3RoIGRpcmVjdGlvbnMgb2YgdGhlIGZs
b3cgdG8gbGFuZCBvbiB0aGUgc2FtZSBSeCBxdWV1ZSAoYW5kIENQVSkuCj4+ICsKPj4KPj4gTWF5
YmUgYWRkIGEgc2hvcnQgZXRodG9vbCBleGFtcGxlPwo+Pgo+PiBTYW1lIGV4YW1wbGUgYXMgaW4g
Y29tbWl0IG1lc3NhZ2UgaXMgT0s/Cj4+Cj4+IEFGQUlLLCB0aGUgImV0aHRvb2wiIHBhdGNoIGhh
cyB0byBiZSBzZW50IGFmdGVyIHRoaXMgc2VyaWVzIGlzIGFjY2VwdGVkLiBTbyBJIGFtIG5vdCAx
MDAlIHN1cmUgb2YgaG93IHRoZSBldGh0b29sIHNpZGUgd2lsbCBsb29rIGxpa2UsIGJ1dCBJIGNh
biBhZGQgdGhlIGxpbmUgYWJvdmUgdG8gRG9jLgo+IAo+IEdvb2QgcG9pbnQuIFRoZW4gbGV0J3Mg
bm90IGlmIHRoZSBBUEkgaXMgbm90IGZpbmFsIHlldC4KPj4KPj4KPj4gICBTb21lIGFkdmFuY2Vk
IE5JQ3MgYWxsb3cgc3RlZXJpbmcgcGFja2V0cyB0byBxdWV1ZXMgYmFzZWQgb24KPj4gICBwcm9n
cmFtbWFibGUgZmlsdGVycy4gRm9yIGV4YW1wbGUsIHdlYnNlcnZlciBib3VuZCBUQ1AgcG9ydCA4
MCBwYWNrZXRzCj4+ICAgY2FuIGJlIGRpcmVjdGVkIHRvIHRoZWlyIG93biByZWNlaXZlIHF1ZXVl
LiBTdWNoIOKAnG4tdHVwbGXigJ0gZmlsdGVycyBjYW4KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
dWFwaS9saW51eC9ldGh0b29sLmggYi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCj4+IGlu
ZGV4IGY3ZmJhMGRjODdlNS4uYjllZTY2N2FkN2U1IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL3Vh
cGkvbGludXgvZXRodG9vbC5oCj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgK
Pj4gQEAgLTIwMTgsMTQgKzIwMTgsMTUgQEAgc3RhdGljIGlubGluZSBpbnQgZXRodG9vbF92YWxp
ZGF0ZV9kdXBsZXgoX191OCBkdXBsZXgpCj4+ICAgI2RlZmluZSAgICAgICAgRkxPV19SU1MgICAg
ICAgIDB4MjAwMDAwMDAKPj4KPj4gICAvKiBMMy1MNCBuZXR3b3JrIHRyYWZmaWMgZmxvdyBoYXNo
IG9wdGlvbnMgKi8KPj4gLSNkZWZpbmUgICAgICAgIFJYSF9MMkRBICAgICAgICAoMSA8PCAxKQo+
PiAtI2RlZmluZSAgICAgICAgUlhIX1ZMQU4gICAgICAgICgxIDw8IDIpCj4+IC0jZGVmaW5lICAg
ICAgICBSWEhfTDNfUFJPVE8gICAgKDEgPDwgMykKPj4gLSNkZWZpbmUgICAgICAgIFJYSF9JUF9T
UkMgICAgICAoMSA8PCA0KQo+PiAtI2RlZmluZSAgICAgICAgUlhIX0lQX0RTVCAgICAgICgxIDw8
IDUpCj4+IC0jZGVmaW5lICAgICAgICBSWEhfTDRfQl8wXzEgICAgKDEgPDwgNikgLyogc3JjIHBv
cnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPj4gLSNkZWZpbmUgICAgICAgIFJYSF9MNF9C
XzJfMyAgICAoMSA8PCA3KSAvKiBkc3QgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwo+
PiAtI2RlZmluZSAgICAgICAgUlhIX0RJU0NBUkQgICAgICgxIDw8IDMxKQo+PiArI2RlZmluZSAg
ICAgICAgUlhIX0wyREEgICAgICAgICAgICAgICAgKDEgPDwgMSkKPj4gKyNkZWZpbmUgICAgICAg
IFJYSF9WTEFOICAgICAgICAgICAgICAgICgxIDw8IDIpCj4+ICsjZGVmaW5lICAgICAgICBSWEhf
TDNfUFJPVE8gICAgICAgICAgICAoMSA8PCAzKQo+PiArI2RlZmluZSAgICAgICAgUlhIX0lQX1NS
QyAgICAgICAgICAgICAgKDEgPDwgNCkKPj4gKyNkZWZpbmUgICAgICAgIFJYSF9JUF9EU1QgICAg
ICAgICAgICAgICgxIDw8IDUpCj4+ICsjZGVmaW5lICAgICAgICBSWEhfTDRfQl8wXzEgICAgICAg
ICAgICAoMSA8PCA2KSAvKiBzcmMgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwo+PiAr
I2RlZmluZSAgICAgICAgUlhIX0w0X0JfMl8zICAgICAgICAgICAgKDEgPDwgNykgLyogZHN0IHBv
cnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPj4gKyNkZWZpbmUgICAgICAgIFJYSF9TWU1N
RVRSSUNfWE9SICAgICAgICgxIDw8IDMwKQo+PiArI2RlZmluZSAgICAgICAgUlhIX0RJU0NBUkQg
ICAgICAgICAgICAgKDEgPDwgMzEpCj4+Cj4+IEFyZSB0aGVzZSBpbmRlbnRhdGlvbiBjaGFuZ2Vz
IGludGVudGlvbmFsPwo+Pgo+Pgo+PiBZZXMsIGZvciBhbGlnbm1lbnQgKCJSWEhfU1lNTUVUUklD
X1hPUiIgaXMgdG9vIGxvbmcpLgo+IAo+IEkgdGhpbmsgaXQncyBwcmVmZXJhYmxlIHRvIG5vdCB0
b3VjaCBvdGhlciBsaW5lcy4gQW1vbmcgb3RoZXJzLCB0aGF0Cj4gbWVzc2VzIHVwIGdpdCBibGFt
ZS4gQnV0IGl0J3Mgc3ViamVjdGl2ZS4gRm9sbG93IHlvdXIgcHJlZmVyZW5jZSBpZiBubwo+IG9u
ZSBlbHNlIGNoaW1lcyBpbi4KCkpha3ViLAoKU29ycnkgZm9yIGxhdGUgcmVwbHksIEkgd2FzIG9m
ZiBmb3IgZmV3IGRheXMuCgpJJ2QgbGlrZSB0byBrZWVwIHRoaXMgdmVyc2lvbiwgSSBkb24ndCBz
ZWUgYW55IG90aGVyIGNvbW1lbnRzIHRoYXQgbmVlZHMgCnRvIGJlIGFkZHJlc3NlZC4gQ2FuIHlv
dSBhY2NlcHQgdGhpcyBvciBuZWVkIGEgdjQvcmViYXNlID8KCkFobWVkCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
