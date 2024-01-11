Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9E582B15E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jan 2024 16:08:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA1C06145B;
	Thu, 11 Jan 2024 15:08:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA1C06145B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704985684;
	bh=atf2WCNz6UXmNLsAlMIL1e+CEBX8kLyLCyAadNO+Uo0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z4iYQUYr46/JfyMhwnh1Q+AOKROuVBMHaHbPD6jCTOe+6JF6cz1PEU2WxxpoCz5Od
	 hXWvovVtCeVu9p4XAKD0W+vbYJ/6h+o3HjkkyMAn4dlvNcqnMwIr/Ep/jlUs54XXvw
	 X+dlAaa9GrrkFP8wXqIseWaU4jxxS/iWaZwTz0tZgi5FCF++aJ9eALkfrEaOEKLaNT
	 erN0+O6sDts25R0FxZu4glYZNdakJPki3YT6BjgvkF60kctcx+oFT8xuINFM0kwKUg
	 f0/z90tC0GrIVq9iYDu1+IKEd4Hzg7Q1mBsenNDal97Oc3H9JNgNVU3oq5k4YT4Kh8
	 +W7onoZv6PiqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HTWR1CP83k6n; Thu, 11 Jan 2024 15:08:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A796D61B31;
	Thu, 11 Jan 2024 15:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A796D61B31
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C4B81BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 15:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E692438A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 15:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E692438A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7K48SRxKLeCI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jan 2024 15:07:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5902401AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 15:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5902401AD
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="12229193"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="12229193"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 07:07:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="24352140"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 07:07:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 07:07:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 07:07:55 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 07:07:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/6UBJkMGh/QR3l9qKbv/DeFJXfHTcpmb2q1pFzlhtD6/qL148kziOcX8wJsmYHge7Xlsv2ApJN43WXjqSbS9gc9NQ13NqkkkWLTbtYZM+eFbAmS2taI90vn2ep4TVljoghgZVI2k0XQfvU/n6eTaapSa+0rVqczNnqXsvFdfT4Pm7ONP6/6yeUoOlEri+bbf2kdpubPc2gzDOSMl5VyAQVTIQQlDiMR4Zgudhs6HFW4RBo+TOBrty9QrVrEgdehOJqzLPSDu4o7266QMsZEWWRATp79QeVWU3+E6uOMss6uSgctzmjMjpu3ABi6sbdfDztRgzZbSTYD9EXotuawbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atf2WCNz6UXmNLsAlMIL1e+CEBX8kLyLCyAadNO+Uo0=;
 b=H95WZBT/HcRUJm04tzWAZaX5NnFmURCQm1CbdRRRiTfttMWDs9WLPd9BbqOeWKq3Sat0XT/fCyWrW+EH1wfO3v3AuQj0jCF5Ge+L2SeEDTVvVubzA6RP0iXZGq92FJS7b2zHlTohpunZDoAXiH/aQyDU+iDArK/rbFL++oe8JPtOnjBuowhakGWIEgWKZS1xvKQuUuMGz+by8ctnQWzP60CiJt323796aqie3KuSAq/s0qOOG8tOE8ikO6r3oxlHexvyoZOYY4aatRNRt80YDBqe8grwLWXV/WItjSxpXuv+gHnYxn4GNYfeS/DqaPA4wABqv43KXhGOy47ipDkbKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.18; Thu, 11 Jan
 2024 15:07:53 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf%6]) with mapi id 15.20.7181.019; Thu, 11 Jan 2024
 15:07:53 +0000
Message-ID: <df3b33f3-8f78-4c94-854a-dd70a8b5fcd3@intel.com>
Date: Thu, 11 Jan 2024 16:07:45 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Christian Rohmann <christian.rohmann@inovex.de>, Nebojsa Stevanovic
 <nebojsa.stevanovic@gcore.com>
References: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
 <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
 <e1b2f012-7e0a-4167-bfa9-026d49f1b45b@inovex.de>
 <1ec34cee-bfab-4dc8-81eb-9a9688b9a61e@inovex.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <1ec34cee-bfab-4dc8-81eb-9a9688b9a61e@inovex.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0080.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::14) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW3PR11MB4764:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ee7c908-c9a4-4600-562c-08dc12b715b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T+ASIzlXVnPjakKRp3/tYUzA19ubhcsERjyhod1Mc8668pAhEdZgYgTnd7Vv+bTfMns5kgit/jXnQKYmeP0y5F32HuNNLgdQdy720nF2V4Y5iCxDYibwlYPBrfcmM/qGC5uZRDHZ8BmB6h+V5J5uzWtWe6sRfjd0OZoNYYEoo1y2XKJVXwHPQ+R0TzpG1GE0mCb3MiFeuP+Iw950WjLB3c0W9jxsR0MaB5MzoKKjrk9ai6ZkPYHcDBT39Ox+CjZ9Z9DUHM3AAZYwi6MCVeOPR9vSMJ0fFcJW0uY1PzBzHGG0uJe7nLsKwiGuuE7ixjydWYuBgtoe/F16gf3EF+/xLzdy5UlOUD2gvU+SBegtN0V6WqptXOpZ3DQLP7sL0vuhPxCqesalX2NILmPhWUo+Ap7nmjw4q6T9BKlaAXYrJv0nS3LsdtrJ2s+UyVfGzQNMCo+8x5X/Gc+OusRMXSCg2XU3t43hmM5/pjrhattAWnRhLaNd8KMbNxIdFc4ma4dGmw3aKT3Zc7kCLRErFUbh5TLfho15sYTAb0wTWr/DZbrFkN+Do6TvH3r4R5OeqiSEc65fxN1Yl0dktIFGQBR9fAi5WFAAO2nPxMcVDL+hu2tfNShSE7Gfnp2XXXiZoW6grTE0hSdkPSs/3pNylrezmA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(39860400002)(366004)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(31686004)(36756003)(82960400001)(31696002)(86362001)(41300700001)(38100700002)(6486002)(2616005)(26005)(4326008)(6512007)(6666004)(66556008)(66476007)(966005)(478600001)(2906002)(316002)(66946007)(8936002)(6506007)(110136005)(53546011)(8676002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGdQTlVYaVVYUmZNOSswcmNpVktGL1VhUzBYd0NkcGk0Rno0SkJ2dE9scVBp?=
 =?utf-8?B?SUZmWnovTitjbEpRMURSZkNsSTVhOUZNaU1IclowS3VxY1dLWWRBYlhKWkxI?=
 =?utf-8?B?UjhyZEwrSmNKbzB2UFdiek9MWlcyb2Q1RVNEWlR2YUlxa1hrM1BjSU5UM2hh?=
 =?utf-8?B?T0dtekZOSnBNbThSMXlmakF2NTFVUXRKNUpYZktLUFFnY3Z6UW82NThFRzhT?=
 =?utf-8?B?ZTY5TG1FeFpzeXMwODlRS2cvYTljamNQV3NpNkRuMUtldTQyUjVGUzZZamE5?=
 =?utf-8?B?b1ArdDFENmNRSk03WVVlaFNUaXA4N1dVR0ViL1FSMjhtU3EvVGVaYTFLYk9H?=
 =?utf-8?B?SU9OYUMyQk9UMjIxa21pOUF4TTZVWmltQmJibjVUTjRPOExkMUwyb0pTY1ZO?=
 =?utf-8?B?R0lDNzUvUG9TS0xLYU9JSzlVeEJSMDZjYXcwTThXTExFM1lPcXpteUo2c3cv?=
 =?utf-8?B?R2NrNmxpM2VGQVRneHlpQ0s3SFdYVWk3Z0tXUzRNL3VKYThZeEZBK1pINVRN?=
 =?utf-8?B?VzNQVmJNWTVzZFI3NlE3RXVNT3p2eFQ0SFNGejB3RUYxU1liaXJFM3MwVldK?=
 =?utf-8?B?Q3FFTkd3ay9GdlZuRTJBZ1M1cldXRDBaa0JCTDczcWlzMEZ4RFkyV09Panlk?=
 =?utf-8?B?WVowS243Z3ZHUWFRVDI2b2IwSkNycHZwUUJHelZJcDdJaU56V1NHbDVUV2Fs?=
 =?utf-8?B?dWloOEFRUW5YQXEydnN6ZUNxUVRqR29wRURFZmc2ZlNCZWZHN2QwSUxyRVE2?=
 =?utf-8?B?NThabW1ZWGtQYk1ySEhXd1FFSDlWQUhLUHRrV2hSc3poMDltQlRwdVI0NVR5?=
 =?utf-8?B?WVYwNFh3L0tsM2V2M1BNNlBiWXlKRUhLVkhHNnBabDVla0JrcUlKeWt4WTdB?=
 =?utf-8?B?OVY1MjlpMlNRZkJIYURuVndBNmNNU1oyNCtiUXU4eWdOQStVYjZJWHppTk00?=
 =?utf-8?B?TFFPVllvR3JvMUVtT3NCSjFldlZyQlVtbWYycnRHWUFJQ0Q0eXdiWkJ5a1E2?=
 =?utf-8?B?bGNQSHVNYU16bDh1QzJUUCtVU2d6TDlmSkxwWk4raWdIZUJIaUE1QzVUUXRF?=
 =?utf-8?B?QUZkYTQrUS9OYlNIRmI2Y29zblZCOXlmL3hTci9LcUlNcklvdjRualhYenFt?=
 =?utf-8?B?NGhON2JBcmZONHZ5S2toNDUxM2JEWFQ3Tmo5VEIwbnFZUFVHYmxMdUloOGFp?=
 =?utf-8?B?U2dSUVpjcGRUT3dXY0V2czA3N2VkcnlmWm1BK3czOWoyb0dXQjU3Sm5hcXdX?=
 =?utf-8?B?T3NzemZGTVg2aUFpZGc0THlITnlJa1hlbHJsWE5XeWxFdXd5amhoL2NnZ2o5?=
 =?utf-8?B?dUZGdlZMc1h3SVR6RDlKTlRKT3J4VDR0TmRmUHp2cVZnb0pOOXNjbmZZY2dn?=
 =?utf-8?B?MmNKVjFkUmZONUdDQ1lvRDU3NXdWK01tL29LS1FLZlA2L3BTSXhMWEMrblM0?=
 =?utf-8?B?YjI1NkptRTB6aUU2OVprSTBjZ2txajZzazZsYlhndFZhRzJOcDV2eU5qOUNJ?=
 =?utf-8?B?K3RkL0lKSU81NjdUVUdoam9XODRPYWhoVnNDRk1BTERLWXlHb3dXVEpPMmZ3?=
 =?utf-8?B?RWpWRldtRWt4YVhaMUtBZGY1YVVPaGlZM25Fd0RjK0s1S2JyVUdYQlB6QVFh?=
 =?utf-8?B?TFNyZXZEWENZRGNON2pzSUwweFlLLzNyU2xqb294RzhKTHBqSnJ3ci9hU2ZL?=
 =?utf-8?B?YnI3NkVUZUxSa1huMnR1R0VNcnMzSXdvaGlTRVl3eXh3NkNjV0hMbS96dWNz?=
 =?utf-8?B?MnBlWm9nSmJBNWtqd3dWcHI1TE1GUGtBaVlVMlJ3akRNY2lFUFVuNmNaY1dE?=
 =?utf-8?B?bG8zL1U5OU90T1NmVTdTV29EOXN0TkFZbzBkRUhhamxZMG9oRW8yVUhnc0pq?=
 =?utf-8?B?VjJjdURYUVZsbzBwZ0NpL3hEQ2ZRRElNekZBNmYyd0tCNVo5c2FFWldTeUZX?=
 =?utf-8?B?OXUxTFlSTmdhUmo4TnFHNjdaWkVTd2YxZHdXL1dUcHVYKy9sWmdQbk8wYTBR?=
 =?utf-8?B?L0JXa0xtMmVMMTlKK21BWWpNcHBLc2NBd1AzeVFmN0dqZE4zQ0VmdEVOalIz?=
 =?utf-8?B?L1ZiWkpPaTRLNWpUcjJwNjl0UHgvT05wQ1NnMmpudm1mWmJPcm1IN0QzR25w?=
 =?utf-8?B?Q2NPSjJXS3NTZG96TkFOeFcyUVZycjV1UkRNWWVXaEIwVmVFa2xaQWN1SFYz?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee7c908-c9a4-4600-562c-08dc12b715b5
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2024 15:07:53.4659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u+EQEA7GIBrMBWvyRD+uaHLiS6F0LSW2kd8qy6WiThiaXqlkM5bTwvNnxPgsbFKn6bI09gCuhEgiAtChA0SMBCViU+QmX0guA/sZl9mIlvM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4764
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704985677; x=1736521677;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j8G3V5Z1KcLw54qlArNkBdb41xKsMTIReiAcGcDyrBk=;
 b=M01Ghd9CyE7qy7QsiQilrUmC06hH7DI4xIprlV3K4mpWrXQNygb47/qS
 PvW4yOD3n9dJF5nH0xSgKCt5SU5x2v7PQ9QWDqJRGYnuBVflori5A8D41
 3VXWknucFPEGfowhXRMku6BsAEndKv++IVoX/DqFM4UtDcevakbduYU9F
 m+0ddtRO/O8ccmjOmfKBoxB2g2ZToJNShAUZGw6FJwu/1iAcer1x3d1+J
 fXd77KVtkxcNTCerihYiwkWnh7MMygtehXUmDy1/EjvScXuOYtWAYfBps
 aAAgXrmWWLYuxwdY1EjwwAqySiWLeIMHaZ6URgJUrbP1buvlBDH8faLDa
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M01Ghd9C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Counter spikes in /proc/net/dev for
 E810-CQDA2 interfaces (ice driver) on kernel >=6.2
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
Cc: leszek.pepiak@intel.com, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/9/24 10:02, Christian Rohmann wrote:
> Hey Przemek!
> 
> Happy New Year!
> 
> On 17.11.23 13:05, Christian Rohmann wrote:
>> Hey Przemek,
>>
>> thanks for picking up on this so quickly!
>>
>>
>> On 17.11.23 11:13, Przemek Kitszel wrote:
>>
>>> Thank you for the report, I will take a look.
>>>
>>> We have already received similar report from Nebojsa Stevanovic, CCed.
>>>
>>> Sorry that the issue is not resolved yet. I will review what we have
>>> changed in the drivers between 6.1 and 6.2, where bug was introduced. 
> 
> 
> Nebojsa apparently can also reproduce this issue as he is using 
> Prometheus Node Exporter as well: 
> https://github.com/prometheus/node_exporter/issues/1849
> 
> 
> May I ask if you did get a change to look into this yet?
> If there anything I can provide that would help you?
> 
> 
> 
> Regards
> 
> 
> Christian
> 

Hi,

thank you for keeping eyes on progress here, and sorry for not resolving
this so far.

I plan (and my manager agrees :)) to work on this ~now

So far I have found a few bad smells to fix in related area, will work
with Ubuntu as main test setup for that too to increase a chance of
repro.

Also, just from the code there is no obvious bug (even if there is about
one patch around stats in 6.1 ... 6.2 range).

I would also check exact Ubuntu kernel sources (not just "upstream").

Przemek
