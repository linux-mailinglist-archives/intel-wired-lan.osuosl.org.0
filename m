Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD015F1175
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Sep 2022 20:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2FE360C12;
	Fri, 30 Sep 2022 18:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2FE360C12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664562021;
	bh=vFU3ktB8MsNG6Oe5WI73oTv7N+8O7bB6uAFlLxtB9Rg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BTFuLzpS25EOq84g4DKpnAu7SUC8ssuixEwTtsoq5lwd9cUDYn4Zg39RuvwbHDHNm
	 6vPgG5DohEFObLdIucGWJNqPimK730VWd9z7rlE+220+zCfkv+fRkAWISmHRr9xkK0
	 9Igxv2p9DTeQX9Bib9j7SCcp8XmrV4hS91lBmZrAN42Eh620IoMzGilRWxCmJAFikl
	 CooYW5yzRNwct6spvh6qB0SVO9/CtgbRWvFhzSOrLn3aS6LMyf09nqhT6/XZnDOXqo
	 3AR3OhYUo8jdIBKUBWUjx/rL9dOCtZ2J0euchlvxNd88tBxquo8pEDXZrNOtlojUBg
	 IaoCTbI7MADPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jvzTdwzrzWoM; Fri, 30 Sep 2022 18:20:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6842860D72;
	Fri, 30 Sep 2022 18:20:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6842860D72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0DE21BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 18:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D75B583FF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 18:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D75B583FF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id viKLawQY5FI7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Sep 2022 18:20:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85BA583F87
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85BA583F87
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 18:20:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="300975455"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="300975455"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 11:20:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="600502963"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="600502963"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 30 Sep 2022 11:20:12 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 11:20:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 11:20:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 30 Sep 2022 11:20:11 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 30 Sep 2022 11:20:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Czi3PXNAuFd4NBUu5WQYOO2V4x2Zj14VjP0Rz4mLlKRQG5d+dXSqlXwApafz0ymInfBHX86vADDsHuUg+anMhQ1yfOnLpZdn4YSWU1nhIWp+S7uWLrr1AgDWmfdeBlMuCvafiwR/h7uNAny30A5bqzXqBEbhSEf0m6X5gT1l1otjPVVnSxbCUxcCqfb93Akjrcg8QxalXkY5cXb42/2d1ipL0CJ09xQp1pPnGKBxTNj7jjdByDyCPpHGEZuRSOdDVwZSuIOFX21uRvuTYMorDorDl8pbnhJbmEeMrEOrGNE1IBWjtxuajPVaSvQHTTBTNVW8Btc14Q4yXTHVGA4Urg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PaQC8WVT8EXN+oSSP9O2dGHjydsgEHYqjlmPPk6yqJU=;
 b=J55ePU/hHl5MwG01JfFuLYbq16uNDJeaNjS5xdCFcc5hhuyINPMqS+gjHG8ddstiHiJwRTodiOc3IuGONxvNQsaGQvCFZn0xHhvyDpcqouqo3n3FfYV2ci0BQEMtk6KsOJmhD3LKEnkd3tDG0Blsz3rfvijfTCAd162pZYe6qSBdb2S4qoQFzCLRBsGLm6Ic4lG4UCFaOcQ6Z1o2dbvAoGucmoPWgcvlxO9AjL7XKXSP6wffBmM1tGLkhq5qaEjK6AUZ1c4DdV4V127cVP9i4gWOWiKUon/KEHIk2byhCKymkdqYeMFml7Zm/YHXIIPTrKBcVPgmhOo+166t/r7YOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by PH7PR11MB5957.namprd11.prod.outlook.com (2603:10b6:510:1e0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Fri, 30 Sep
 2022 18:20:10 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101%7]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 18:20:10 +0000
Message-ID: <1cb2e6f8-28c3-d6f2-6bc0-b39fbabb9a67@intel.com>
Date: Fri, 30 Sep 2022 11:20:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Ira Weiny <ira.weiny@intel.com>
References: <20220919180949.388785-1-anirudh.venkataramanan@intel.com>
 <20220919180949.388785-2-anirudh.venkataramanan@intel.com>
 <YzYe9h8gbgmNDzK7@iweiny-desk3>
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
In-Reply-To: <YzYe9h8gbgmNDzK7@iweiny-desk3>
X-ClientProxiedBy: SJ0PR13CA0201.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::26) To MW3PR11MB4764.namprd11.prod.outlook.com
 (2603:10b6:303:5a::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4764:EE_|PH7PR11MB5957:EE_
X-MS-Office365-Filtering-Correlation-Id: 67a9dea2-44e6-49db-eb77-08daa31068d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NEMoD7RR0/w0vQohtqUAGdgzx+BIfwx4ULF4bvAOCPP9d6wF4Cj6k2pyhsjtyryuDbmPEg4NXDdeOoZ9stj5dTS8NUKtHwQNHnN3xUnmW3UWZyaeDF6HG41tjWkMJaHiitKGeFvCVgqZFGf+nkDkuO31QWZnFntB5Rv+CE4veN2+TmIZwcGfYKOTWdk7Em8Oa+Z6YlgD3A1lVcdrKLCaF/szdUkwZnkBe51zIh80bqT7lMqVMYl67zbabHmm8V3Rs8Q0njY5sho7Dr6dIY2ahkxZv2CKLuc17lpreKZSfWFiFbEnbZoA6nm7p/3h0UyLSLngI36dLJQIdrViABdyEx7T1BW1RpMqM6fZUwaK5qSoRHNckGnA4FKb+6JnDw4dS8e7y7RkLwMNTCrktjtdw73IfVL1FuPHHqd6iWz7SSsjzIqKiYbqQEHOYviXMHOrdozbMdf6F3HEvbIfNcM67AY9kkQZC7f/bvRTQ3q5Rw5Xg25dRVlNy7bhyPz3LUo/HJajjikm/WfsQWOzi9Q62dwc08MPKf9NW8qpH/9I+JhV7XYe6hv/ZC2RVu+Dj/0Fa5tL6suFjfuJ3c2JwauOHf/iu8IeqykNF1vgqws3VrIgYM1SXzSoAt4bDAfUHUBv3dzylsWTQ4LaKVLm1PkRQCA8c/4YyU2kjcIRjkuL0hj89Wf2nmTt/l13/rvvC7v9yu6P+VhOvKktmF6s7lG5boTDD5mu30rVkmadsLaZ9IyWPxHZ3wz/9I4JZMLeCarweF/jQgtcX+6i9E8tpctYbcLYtKGUtD6r/3I6AjrW8GY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199015)(2616005)(2906002)(186003)(31686004)(66476007)(66946007)(8676002)(4326008)(6666004)(41300700001)(82960400001)(316002)(6486002)(54906003)(6636002)(5660300002)(86362001)(26005)(36756003)(53546011)(478600001)(6506007)(31696002)(107886003)(6512007)(44832011)(6862004)(66556008)(8936002)(38100700002)(83380400001)(37006003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDk1VXZoZmtQOEh5MTNLQUFSaTFFUXJFV0tJUkwrR2xUTFRIRHRpd0I1enlM?=
 =?utf-8?B?V1V4elpSN1EyVi9vSXI2aTlMb21GaFZUMUdTLzVRcHVTR2k0NTdNaCt3dURj?=
 =?utf-8?B?OEMvUDJTaWxuekhKeHZ3Y1V4b1hjSXNyczJ4Y2s0Q0ZOTHhSYTJ5T0NhVGt3?=
 =?utf-8?B?WS9LdUd0Uk9SeVVMeVZYWmxLdXVnd3dINzRaMFM1ZTFHMEM5R3pGZUplQ2d6?=
 =?utf-8?B?dVM2a1BCK0p0QTh3U0tWYUZ2SlV4SXByb2NzcHZrY2NzOXNjcFd0TGxSKzZS?=
 =?utf-8?B?SnU4cnFqVlBPbmtjT1ZDTjVWaER3c2hHa2lXRXVFVk90c1pDbldFMVZXcE9t?=
 =?utf-8?B?NjBBbXJKM05BOU5TOUdjZ2lsSWhacmozZmxjYUNNWlRla2JnUlRGYzVXeFBO?=
 =?utf-8?B?YzVJZVBLUDZycTJ2R0RHemZNWU9rU2dZc3BVNy9HZUR3ckdDblZLM2JjcVpt?=
 =?utf-8?B?YlQwMjdDTCtIMklsaG1GQWFCb0xEMUpEUXlxZkhLcjRJYkVsZFdJZEdkSUJN?=
 =?utf-8?B?emd6bm5KdUtsenowK0Z1SDkzTnpDNVdiemM5dVJud29NS1F4aDU2L2FJd3ll?=
 =?utf-8?B?c1IyVmJNcUpraUszbDZLM0pCY0VpdXo1SDFpZTZjUTRqU3MvcmYya2M4L3Ni?=
 =?utf-8?B?UzNVUGw5Qlk4NjRmdVpudkRhWkZpc2JDNDlESlpoVmxLTFhLWXh0OGt2cnJI?=
 =?utf-8?B?OWs1dVJIOUpZTG1HekdSWGVRM1NXbHJCS3ZaZGRRdWs1ZXJXdmNnNWNxQ1Z5?=
 =?utf-8?B?MTlweWl6c0V1d0d2eEU5MGlUM2FDUlAzZFJKeUpSS0tmWCtwWlNRbXU4dlpZ?=
 =?utf-8?B?bVQ2aDFLWXA1S2FDMUNyVXo5M0h6UXZKREFZZUVpb1JVWUw0aysxOGVzbWRG?=
 =?utf-8?B?R2JBdjV6elNLWHlNdzZtcm4zMWZNNnZMVUFUc2RoMWYxa0NZbFMxc0RFci84?=
 =?utf-8?B?Ylh1V0YzdTFmMVgvK01nZFVzckdKWTJmcmw1bWUzVk1xWXNOQjRqYkw1Q3BE?=
 =?utf-8?B?VGxuajBVM3VHVFZweGlQcmRCZFBmbUN2WHRWQXJzclo3U3hCS2gwTjNPZGVt?=
 =?utf-8?B?Mk5ma2t1OVRKOFRKZkpET2V0OGZvL0c1ZzVOWHpOYStVTjZYSW9Ic1dseXpj?=
 =?utf-8?B?Q1NNeDZ4YmtYdmNXTXRoUDJNWTNVaUpmUVhaa01GTFRtVnlJOFBSRG9iNFYx?=
 =?utf-8?B?M1p6bVNBUGhtVVJDQUdaaitFamRZUnlmUmxmZ3NsQStnY0VZTHoySGFYbjZY?=
 =?utf-8?B?QXlickdoR1E3SCtvVWk4MXJnQmI2VWxXeFBSS2NUNUVId3dFTTYwblEzUmFv?=
 =?utf-8?B?SEJnRDVnM3haTjg4cFpLZDBmOXBXV0RvcVBUSXpVYmhQWHRYbUkxeWlIaDMy?=
 =?utf-8?B?dWJYWWtXRHdNWVptYUJCN0d0dTExZTVaWVRjcWx0TUZ5L00zb2M1SkVrTUE0?=
 =?utf-8?B?M21jNGF2ajFBTjRON0F1SFZQUnJDa1ZxdGhCTS9oRkU4ajZKSlJudCtoS0VM?=
 =?utf-8?B?c3c1dFNXR1Y3THprV0hHOEtRK2NoTXJ2UWh5UlhtNGZkRUZUTSsxWU1ZUkI1?=
 =?utf-8?B?cnVpQ1BRaHhoVTFIcW50NzgrTU4wR3JHT09xUitoNnhRancya2RyRnBKNnZx?=
 =?utf-8?B?TTNsa1BoMWJiSFhWMG5YbGlRd3k1RjNINU1PK2pLVUlRQWhOVnZKNVhvR0hN?=
 =?utf-8?B?LzhzeG5SZWNtQzMrMDRRNW5MZ0JCb3pteDY4QTZzT2oxT3ZoKzRHYkF1QURh?=
 =?utf-8?B?OVhlbHhRdGFCazlxWHdhak9GWWdJNXhLV2F2N3FCUlo1bTVpNjVEQVpweHhC?=
 =?utf-8?B?QUNLSXNHMUdPRlJWVmJuR2JNNlFYUExTdzlCQWIzTmU1WGFHQXk2d1RpbmFn?=
 =?utf-8?B?V3dzU3JabWs0bXArMUoxWXhJRVZKeHJYSWJZb1o5MWdkd0UvalJKVnVtMFJp?=
 =?utf-8?B?Q0xpdURWaUZmL2pYVzR0ejZIcXUyK2JMZGF6N2xhNzBIaUhkUmxuUmd1cnVu?=
 =?utf-8?B?b2lENElWVHNVY0w3ZlNiOHg5V2kzVGdUTTBraHFBTHhBN3p2M1BTSzJieGJP?=
 =?utf-8?B?WFBIa1FxenZncVpmbWNHSHpQbS8wQWpiNU5lNWN3bHhyQ3RsOUVEQXRhOGVk?=
 =?utf-8?B?bFJFdVBJZWxERVNFKy8yaTBmbE9PR3hUVkZuM3BFQUR4cEVDa3BSZW4rTTNW?=
 =?utf-8?Q?M4qmObI6W0ar4CfikY0bW1E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67a9dea2-44e6-49db-eb77-08daa31068d1
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 18:20:10.0675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: waAV/t9NSC4UagY6myO2OwwJIHaomKJQAodmV/1SN2Ic44j/BA6A+c5MtRnff/fOmkC0I1v97c//0FmSni1U5dKiOITl2DCjrIqUGATo30i3CWTdG0+V7whU9NeZOhId
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5957
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664562013; x=1696098013;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mEO9iAyrwi7eDhfK7un5wLNwi4DZeDxCUATCx7277z0=;
 b=EtWMDLBvLgQ8EctxHbk7Bxy4plJbjmyyDPzRZCD5yXP9h1Sp/LwoUp/U
 UkTNlxD103cpr9wyekc9PvvuZjyQEBHyNgB7wQbS+jPkafgK13OV9ZLde
 7n17Q9hw3r4rKgbGQ4tYcST3VEWF+ecM/ycOLMZn0Iecz8tOyhUFP57ix
 MycKTtZGF6n2O0BeGLYhSXAn0/EYVvyW3d0+nfG8/l/mPQen68rSD2SmL
 /cJDdZU+uAWZyU+bvoDYDNmw3bUWTSr2ukhPF/esOiNcR6aMIkxe5N5l9
 4i4zPX9vT8lKzDfwNWm/LW6Vp7kDzxRNsq7RKz5OFJbrLfV8O20QgIvEE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EtWMDLBv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH net-next 2/2] e1000e: Remove
 unnecessary use of kmap_atomic()
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
Cc: "Fabio M . De Francesco" <fmdefrancesco@gmail.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/29/2022 3:40 PM, Ira Weiny wrote:
> On Mon, Sep 19, 2022 at 11:09:49AM -0700, Venkataramanan, Anirudh wrote:
>> alloc_rx_buf() allocates ps_page->page and buffer_info->page using either
>> GFP_ATOMIC or GFP_KERNEL. Memory allocated with GFP_KERNEL/GFP_ATOMIC can't
>> come from highmem and so there's no need to kmap() them. Just use
>> page_address().
>>
>> I don't have access to a 32-bit system so did some limited testing on qemu
>> (qemu-system-i386 -m 4096 -smp 4 -device e1000e) with a 32-bit Debian 11.04
>> image.
>>
>> Cc: Ira Weiny <ira.weiny@intel.com>
>> Cc: Fabio M. De Francesco <fmdefrancesco@gmail.com>
>> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
>> Suggested-by: Ira Weiny <ira.weiny@intel.com>
>> Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
>> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 17 ++++-------------
>>   1 file changed, 4 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 321f2a9..05a59e5 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -1393,21 +1393,14 @@ static bool e1000_clean_rx_irq_ps(struct e1000_ring *rx_ring, int *work_done,
>>   			 */
> 
> The comment just above here says this:
> 
> 1389                         /* page alloc/put takes too long and effects small
> 1390                          * packet throughput, so unsplit small packets and
> 1391                          * save the alloc/put only valid in softirq (napi)
> 1392                          * context to call kmap_*
> 1393                          */

I did see this when I was making the code change but it evaporated from 
my working memory. Thanks for catching it.

> 
> I'm unable to grok what that means exactly but I feel like the kmap part is no
> longer appropriate?
> 
> Maybe just delete ... 'to call kmap_*'?

Okay, so did some git archeology and found that the original comment 
just said this:

/* page alloc/put takes too long and effects small packet
  * throughput, so unsplit small packets and save the alloc/put*/

...  which is what I think we need to revert to.

Tony, do you want me to send a v2? Or is making an inline edit to the 
patch you've already applied to dev-tree less work for you?

I am okay either way. Just tell me which one makes life easier for you.

Thanks!
Ani
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
