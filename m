Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E987900E7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 18:46:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AFEB42040;
	Fri,  1 Sep 2023 16:46:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AFEB42040
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693586798;
	bh=4UTnxqjLnYbtNIJxzACz2eXhIbWVcPMJziaYnIQSpJs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VMzMpy93w6lW67MDVT7fmOpF/G+uw9jSh7ITp5R5qYzAOYsKVTJ5MLDc37EiGIVUy
	 QfmU2+RNv40mxPlprD3Ff3m9qISyutH2K7q1RdtlGPXM8W/vo/FHdxZInfLjlg2jC5
	 +TUeL9azS/UOArFyUZXJX8DJE3A3i9W4ET4/50EUuhrST5rlCSqqcvWYr0D81FSIs6
	 1rqzcckLdP2c762H5MCLDXmlPp3XGNbghAe0JQ7qLOMTW3cg3N7Sw/RbJnjFsEtARZ
	 39QqFGDYT4wK6y6FDG8NnqAw2RR5legxE/ozehX499mlZFXL4rcXJE1JdLryGgTdUE
	 9BhcOOuyUacSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KuWLu_WRBLAa; Fri,  1 Sep 2023 16:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD841408A5;
	Fri,  1 Sep 2023 16:46:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD841408A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 204E31BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 16:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBC0740462
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 16:46:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBC0740462
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HrDsgubWXroj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 16:46:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E67E740199
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 16:46:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E67E740199
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="442657930"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="442657930"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 09:45:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="810133517"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="810133517"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2023 09:45:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 09:45:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 1 Sep 2023 09:45:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 1 Sep 2023 09:45:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OOMBcYUSqNr1ooCenjZGZ/HNKlWEfrbEr0SeSsWb+YJbJ0+A00WajMP+H3u4Zw3LgpWJDx97k+j5oo9zMa2grLpy5Gak/fWkvv7g5Th1BKt0YO6WN1fNbNaq6Iv7qztWw4o+qsGvYYydNDYgfN130NSKmVGiTrCxSQVxj4/eiSKeeV1QClK71Mn+m4Pthn6YInTSA283wnhdj5hJTRGEp9bycFtgf6iFuLG/3LRISzS+m1xGCDqTJZCDKbSgGpKVHHNOA0K+4s7qpeKdg0Rk39TS4n/zIx1PehkTa46Amdwk6+W2EhYTncKAWS0sJbCISvGEUG4UW0MrI7srlaqvpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VMUMBOMSh0J8tcGq5LpiokNF4XTJU06lN/HHykGP73E=;
 b=Qm6USDnlIOdbPpIqipgnPqdw6w/sslffInuaCsccFaX4McECyKweRc2dTljNdGMUTCBBnPTxsJ3NJ/mf0ITqczUL4nxktpxDBbDpV+6j7bWaF/ZhQeOsMNgm1qXO6LOcO8oBfa+DSCV5CCisiU/lN8hevpxiqtLH4CQHPu7zWEdaexEjIVKzflrxruQKAoFahgqz8B9t1/Uq2y4PRX6opiArkS4HTBfkdHLTKkIETwk2XG7F8qkdGCOuFLK4119U3qlK9tJXnH2syseXkUssYV43hAKCHmoXO+ujUVIqmjkTpDdUCI+UU/IBSAfHZNdg5Dwjlc1VbVOqiLhcIyJRnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SA1PR11MB5827.namprd11.prod.outlook.com (2603:10b6:806:236::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.22; Fri, 1 Sep
 2023 16:45:20 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6745.026; Fri, 1 Sep 2023
 16:45:20 +0000
Message-ID: <10f95e61-c458-7c6d-21b8-018d89b6750b@intel.com>
Date: Fri, 1 Sep 2023 09:45:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, <netdev@vger.kernel.org>
References: <20230829150539.6f998d1f@kernel.org>
 <20230830133246.1a059f0a@kernel.org>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230830133246.1a059f0a@kernel.org>
X-ClientProxiedBy: MW4PR04CA0372.namprd04.prod.outlook.com
 (2603:10b6:303:81::17) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SA1PR11MB5827:EE_
X-MS-Office365-Filtering-Correlation-Id: 574c23e2-c9c8-4290-e023-08dbab0ad45f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LsuG7+R4f2q8oOdfduXzNWIYUckX2YvilCyOLif/38fPZDsSE+aXd6NmOEhBQ6oz3FOUllvk8LDEY+3l5bw5kecCEzNmsE15DfPenHeYRzBsK2dDZyKd30p97c2NvoxlMhwlzOEqyRJ4pxxrwKHt+hIHn2FTDoxUJEVlRS6lmr6unRD8AJ9+Qv845L3h0q+kJOZnSUCB4PsD1oZsYV7GHhaePAtJCdhqW7PztjGIvDr6+2NzvUodMSh/8WXlbEE7OFLI/In77cA0/awAW8kJE7wpHe9cifPVDTds7pmsTvQ/DbqoaSpKJp0NGWhpKF//sOzvVpx46DnWn36f2O1pyaqcwl+vX5KXuU7Qm7Y/tEo4M0sI0mCxD+gkkFYOTPo5sJntZh+RJWyYpfofivvUTVwUW+BrYQvlV44Q3i8NGOOxFbqjJfcGNTmd+Ph80mK/cedKfRhoQ7bRULainkfNfjM+SSmWWeRyiw21XrI7pu24Q5dJHhX0WQUQpru9ZcToXi3IyQ41EYO9+96UMhazO3L6PS/ogEj53OGBTWSC3HoznbATo1UHmZdlbJO7nimUFwBLcUBXOoEZKy086thckqp6m27QXoY1aTcGbM7+c3gfxrsPdzcNqLhIEFBNTOE9KYaZvVyJeTrvQoQr5WzomA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(39860400002)(346002)(186009)(451199024)(1800799009)(66899024)(36756003)(41300700001)(26005)(38100700002)(83380400001)(66476007)(66556008)(66946007)(316002)(82960400001)(478600001)(2906002)(4744005)(53546011)(86362001)(5660300002)(6512007)(8936002)(2616005)(44832011)(31696002)(8676002)(31686004)(6506007)(6486002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGFsbjRYRzkveE01dGtVclhSSklXQkRGZ2s1N09WejJpOEh0MC91bkk3UVN5?=
 =?utf-8?B?Mm5YSERqV1NHK3JHVjUzbVFCMlAwNkxucWtkQmMyUTA1S3I2QUpYcWhzTWZW?=
 =?utf-8?B?b2duWUtjWWVWMjVFR2E2Ukp3TkhRWnRaYWlGeEE3bG9UNTRGaWhmOThTOGhh?=
 =?utf-8?B?a0RJVGozZmpVRWJmWGlHekpvK2lMK2Q5ZWxpOU9ndlJFNUQyRUQ1RkRlc3E0?=
 =?utf-8?B?d2Mwc1ZtU2ZWWkx6RVJCbkZ1blVGdWYxNjg1K29uaDBwbTVrM2o3WGJFSHl1?=
 =?utf-8?B?YXlNYXUxb2dONmdIY05ONnh6REM5aEFnRzIyNFRxSitDMDhPYmZNZEYxVkxh?=
 =?utf-8?B?U3ZvQXhNc3FMbFZkSVVkTVlBUjdkeUxPY1RYVWJYblZWcStlSEdXSVhQL1hS?=
 =?utf-8?B?ZzBveWI5dTY2OXBvbnA2RVVSRDlTRG5wd0FSZVh4VGhEbHBsU0xDMmF3RjVI?=
 =?utf-8?B?ZTJZYkp5Z01YOFJ0dUhaUjNHZUxlZGVrN3JHcXB2em9HSnowS1AzYzlPbXoy?=
 =?utf-8?B?NGpweHNobkY0RUw4YjFIOW95c0dBcjhFVHRtY0pCYjlEMXZ4andJT3g4SHV1?=
 =?utf-8?B?eXk1VUdkeVBpRytZUTV3aHhZbitZRUFlaWtVbkN1aytFNEZXcGphU20zRE83?=
 =?utf-8?B?c2RSM0d1RTNYS1IxWjQ3WEw5RmdYSEdPeU8vZ3JPYTIrZkR2azZBNzFlcFlE?=
 =?utf-8?B?S093T3owVVU0TXNHV3NkcEk4S1BLdEdBcEVqais4YUlHY0p6b3pwYzBJaGNn?=
 =?utf-8?B?ZVQ1T1Z5eCtXSjI3MHZjUVFmbHVQRzFzeDRnVHBPMWhsb015MDVNTFNHeDJt?=
 =?utf-8?B?ZzVQeFp6ZGRCeklZdGt3NCthdjA3bFMwbnFBVGxiMlJ2R0p1SHFsOXJET1Fv?=
 =?utf-8?B?em5vcVRadmwxMUZnbzJ5blJlWFZHS3RUdjRicjlzNHF1QWtRc05VSnBJTFJG?=
 =?utf-8?B?NSttRHJyemNwMjNWZ2FNL09YSVdsVjRzOWZIWEZvVVZnaDFvMXpnSERUWFdN?=
 =?utf-8?B?dnJscDBCUTFTQlJOUVBlL0hQTXJpZDRjaTNxM3RYMmNzTUF2UDFWQ29JdDBU?=
 =?utf-8?B?VFVaYVpwUDkyWDJTcXk0dDZrL0NpS0g2ZHd3WFZyWVU1VmdCQWd1YUx6UURq?=
 =?utf-8?B?a2ZZcHBxNnVoazZTYjRKQ0Nkb3NDaW1oTlc2eVBjalhsNDFsWmVoUncyU1d5?=
 =?utf-8?B?Z05QYUpyVlY5OW1BQnMyNllZdWFITGw1dDhpOTBWVlFPUm1JWExxRldLMUlE?=
 =?utf-8?B?Vk9kQ1JEaUZiUnlLdVlGTTh2ZjlSM1pWMkhXTUoyOVcyb0JESncvTUdnRUlV?=
 =?utf-8?B?M2FLcGVZZk95Vk9QOFFiQWpvMmRLYjVnMW1SUmFJdUdPS0ZXUjIzK09qcjM5?=
 =?utf-8?B?N2RjblZXU2ZXVENLaFVhYXZRMGhYTVUvelN1YUV1VEhjdkxiVVdSaTdGUUdk?=
 =?utf-8?B?cUoycEtPTTZMMnVaQlVoUHlMeW03QTcyNDBpRkZSc2ZEbHlONE1ybEUwUzZ0?=
 =?utf-8?B?STJhNm5sUFRya3F6NGZMQnhWVnJSbXllc1EyMUJ6QkxPTWw3UjBVMlFyYlh4?=
 =?utf-8?B?QVkzbmVnbU5tOUdybERndkZhQmsrUU5xekhKMFRPRmFuUnV0WTJZRVZ4aCs4?=
 =?utf-8?B?bnd1WnZMRzJYNnFkRys5ZjlSd3A5cFQ2UDZRUFBxRFc0VFVHM3RNWEl1U2FL?=
 =?utf-8?B?MjgxdkpqT2tidVM0djhxZUxIVTcwdlFDK2ZpNTR6ZmxOQXRiMVF0cXFvRkJF?=
 =?utf-8?B?L0hIaHJFaldkRkxhaXl0OFh2L0t3Z0Fyd0Iwck9zdmsyaWowRUxpVHZLcEtr?=
 =?utf-8?B?NE4xcXpaSGgwMTFnd3FXbThXbDhTQkM3UUdrRlBjbGF6ZDQvQnZ0NUl4ZzhE?=
 =?utf-8?B?Qmg2U05CV1ZrTmYxbElJaWMvamVOcitqT0hzcHF0OUVVZExzNW96QWhDbVBJ?=
 =?utf-8?B?UUNNeU1Jd3BzSi9UMjhyRVhJaUZpcHVVYVNvSm1XWC8vNnlDWVRqODZRR3Fo?=
 =?utf-8?B?WlB1cDZ5bS85bzRJbVJXYjF4Yms5aWx1VEx6NllVS25DaWpoemlMenpqZkQw?=
 =?utf-8?B?aDUrSjlMdHVGbUxVSm5WcmRDZWRHazRRZ2k4SWtTWUYyVHdqazhPYjFjWjRz?=
 =?utf-8?B?UlhnaWNxaDBnMytwNGEzTmUwOFZtdTkwbmhFemx4REZLZ0FPY0dzR2xzSDBI?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 574c23e2-c9c8-4290-e023-08dbab0ad45f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2023 16:45:20.5087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /dBE4QTXmXkHY/AzdiK+/Hhy75f0k9/iHqFQgARtb66CUtN41V/eoueX6mKUX8Zt8up/i4S5PAwUMwHc97fM+HbVOh28ncfSUbdceaK7Qqg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5827
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693586790; x=1725122790;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1YlTxOF2otp/4+GxTzp0ITm1t9cVuhYJ5M6O59Y+Kv8=;
 b=PZ3OVT+kFfdmEcNY8t0sWC7FWwrBVP0IYWDe8lmhCyqQ8m2W5Mu0S2XG
 75eEOfltSyy9mamW+KN66DiereTSon/Cik+x+Ib5vJCvqeocq4HGyu9mD
 qnOtOK84fWKkPkb3Ahqji2EjfwVFhculanHsEzPANxRypGVG7JTVfw/OQ
 eX2eY/PFuHeCkZytmMGqTYB7MX+5eQBEdykHQ3XJSu6mk24bEzKXNMHKl
 vY9QSZekmbDhevzG86mtP3ztbUwecbgVNXVQjjPYSkHhwnOgKoFfqykj+
 OrijqHAThDelGpYx3N37wSumpqZRHZSX0GOdXBU+UfJwHqfHW4NUFywJq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PZ3OVT+k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [ANN] netdev development stats for 6.6
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
Cc: intel-wired-lan@lists.osuosl.org, netdev-driver-reviewers@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/30/2023 1:32 PM, Jakub Kicinski wrote:
> A minor follow up / question.
> 
> Would it be helpful to generate these kind of stats scoped to
> particular companies?
> 
> Very few people end up in the top 12. It may not be entirely trivial 
> to run these scripts locally because people use their non-company
> addresses at times. And because of GDPR and data privacy concerns 
> I don't want to upload raw results to GitHub or some such :(
> 
> The best idea I could come up with was to post the stats
> to a per-company ML. Intel has the "wired" list which is 
> a perfect fit. That way the result is accessible to developers,
> and they can refer to it in the "performance review" or
> whenever they want to get credit for upstream reviews? :)
> 
> Does that sound sensible?
> 
> Please don't hesitate to LMK either on or off list. 
> Particularly if you think this is a bad idea.
> 
> And LMK if any other company wants similar stats.

We got ours for the cycle, thank you! I think this is a great idea.



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
