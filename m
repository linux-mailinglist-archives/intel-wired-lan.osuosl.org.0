Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF375E820D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 20:51:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1E5540A01;
	Fri, 23 Sep 2022 18:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1E5540A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663959072;
	bh=BlWEauicBi7mHU++cv5bQXmIx59HDFnUJYkICikZOm4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jkgI1QdehO+ZEQetpaJI+J6SMjphEEUpbuic1kipFek+JlIJp0TYzuh3Jp8cKKCCn
	 P2/FJ1a4ZFUzrVOjgaAaGk9BA5F9nk01bbWr7KlSK6oUS1shrC10yIQQhdknzJHo4u
	 2VK9CX/qdX64SODgsUhwfRWKQQbyOb5wFFvlUxfnnakalk5m7Pz9nHuZhUE1Yz3ZRo
	 VEPnQneeo/d+XoG0xTuhSYIvmz+dy0sPlzsyKlPCbReJqpWjpMgnXnnooS7bOmapJr
	 wf5VBsz8JrJ8oT2+BCXahPhH+UtQrkESv5/I357laZWR3uhMbls7ZZ15HxlOoUbiDN
	 Ng9wTXcNnHWZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OWTOsC5JJA93; Fri, 23 Sep 2022 18:51:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5445440CC9;
	Fri, 23 Sep 2022 18:51:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5445440CC9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF24A1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 18:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C656060E5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 18:51:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C656060E5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHL56BPwsZRy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 18:51:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD1BC60E50
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD1BC60E50
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 18:51:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="364693532"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="364693532"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 11:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="724239248"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 23 Sep 2022 11:50:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 11:50:43 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 11:50:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 11:50:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 11:50:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkykgaqFmjIg2QATWkHOUfG7vUSJHMEWpcX9hRVzSd3yLV5iYJp3/WuyOxvZJG76gzQMuAEWh4er7pTIfxTTbva6DIWI3cRzEnIjO6z7IBvBU+Higpi6jWV2WXGM2Mfecb4WWG5QhQwOAzZfYZ2W0tumYpIxqblBv8FtrovpEetlR0jf53OnLwRrXlobrZp8F6U9NLeFzzpnBUp1sfG/FFczEbgRSQPljCPRLi6AXEj7knimbiBGd8Y/3AaayTumsz7Tc+unDM1vF0AdaMkkxuXqOVsKPXOU3c+FgeKjTive0REUhNJ5FqImW3lyKs1G3AQQQybU8xzMvrYxiXeEzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZoOl9SAdlofJWvzmhdJK0sxe0awxgMfNoA9HePshiV0=;
 b=UsFOBWi3McYYe6oQDaAxHUgjiNW3pkyQFpEQDcInJ4y9x/k/MsAApuSvGx9sz+eVFNjJgMQaCuNvuMJM6fyzlwEjVdA57zd+exGJh3oTYR5hofsJ9RC4hrQKdwvh4ATS+Lu0M+sKV6c28bnKBvdvLg4cwHU7X4mwSLleAIf70m7jLAf89ocIj+O8Iitt0ZMOkG7f39OIEs/9SPFL0QY2E+wsouSWNjt1VZyBjX20CwuavGCT00lOmCk41SShUZ+3yCEOinpyB3f/JyUcAvsmTQ4K72StvQxUZVi+8/2bM3vwLy4bOWRV2cDyruYURG65SZ3NGnCqbYi4QPlvUnp/IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by SJ0PR11MB4830.namprd11.prod.outlook.com (2603:10b6:a03:2d7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 18:50:40 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101%6]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 18:50:40 +0000
Message-ID: <f32338c8-db1a-ba0c-9254-922d96f2e601@intel.com>
Date: Fri, 23 Sep 2022 11:50:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <2254584.ElGaqSPkdT@opensuse>
 <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
 <2834855.e9J7NaK4W3@opensuse>
 <d4e33ca3-92e5-ba30-f103-09d028526ea2@intel.com>
 <CAKgT0Uf1o+i0qKf7J_xqC3SACRFhiYqyhBeQydgUafB5uFkAvg@mail.gmail.com>
 <22aa8568-7f6e-605e-7219-325795b218b7@intel.com>
 <CAKgT0UfU6Hu3XtuJS_vvmeOMDdFcVanieGXRLyVRmPF7+eRjvg@mail.gmail.com>
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
In-Reply-To: <CAKgT0UfU6Hu3XtuJS_vvmeOMDdFcVanieGXRLyVRmPF7+eRjvg@mail.gmail.com>
X-ClientProxiedBy: SJ0PR03CA0160.namprd03.prod.outlook.com
 (2603:10b6:a03:338::15) To MW3PR11MB4764.namprd11.prod.outlook.com
 (2603:10b6:303:5a::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4764:EE_|SJ0PR11MB4830:EE_
X-MS-Office365-Filtering-Correlation-Id: a8af877e-9ffc-44e7-07f3-08da9d9482cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0mZQz50oDDPfQ7lPb1k51JjwapGlfXhtx6VMgNKuE3UDx93SkRHFMtK/QssRkmIErvjoOkQKEzGrYveytHIGDEwoKyT7W1NUsJ1mfoofGavRTfA4JH2zotcMdZ7WpQDTHIVA3JiP6C8QhyGpUFYYriiZtEiPAGY7liyt49y9S5x3FT8whTS3ughg3MaNfon17VBUzS7vEUPawpPSUCeufBeB3usR74kWNwe87xmPJaXRu++G+kGU6DjS4mTiQI15eQ4SHxcDJXYs1D/veSzU1UtehiwjtGcPvsJJ2QV/wiSTTNS1q3g+T+gN/pZ52aam9K7T6YuQL9qNDGBmvtIUDytsn5zLBKfHfn0OTTt3l1KCfm9TBXnyBRFeFVYYYEMpEqL/8QxWrRBfrDeMcczfrHMcF+1DDeJX7U98DGEMyiekwDvuuc5feDWKUoesqmhJdsGCdAGtExil3ToGmnyiugpXI2t2bf18LnddnsgH2oVjtxslOdd9QbD7r3iMkmmw3u/V31gkC3kEZFfsJvSggunXn9rD0Euvg09A5wf2ptNacwXapHimJkJeh+GYVQtFhAkVeAl9HUyqSNOWKaz23MGa2Qs+QV1930q+4pO3/+3j0jYCYDmsCObCcBUBn/nd1pGuhTQd8m38+dRW9K9ZIIg4w8Ay/89VBdbHS0SOAwiCxdt5Oxp51A44vIdvqV/AvIp7uK2C6fRRVTOW2OlnA6Iv3oDDkPrMvbV2kxN2CXCOoCO6XwSuPh5TmpM0jOEOESIosn6wTQNa8EStIe9dGkKAaz1xb1mn2BC8qdrgwxD/c2053vzPb8bUs+8HxrRHt7duh1YXZk8uEey1gFMSHGapvGRImlj/VrQ8nAwUuv8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(39860400002)(366004)(396003)(451199015)(31686004)(36756003)(6666004)(41300700001)(6506007)(53546011)(186003)(2616005)(107886003)(86362001)(4326008)(66476007)(7416002)(6512007)(8676002)(66946007)(54906003)(66556008)(8936002)(5660300002)(31696002)(44832011)(2906002)(82960400001)(6486002)(966005)(478600001)(38100700002)(316002)(26005)(6916009)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODRTQzY2RzJOSkhkNDgzTE1mRW1BMFBMQlEwbit3ZHNRbXJzQnE1Y3RxWGVS?=
 =?utf-8?B?a1JEdGtsK3cxZE16TDhUUEpjMU1OTkVRd1lDdDFlS0Y5NDJNTnFCdEtBQmFU?=
 =?utf-8?B?ZFpkQm1vcFp2MU1FWHZ4T09XVkxVdzVhaTBLN1d0eXJxNlVKOWNaQ091c2Ux?=
 =?utf-8?B?ZWxzQ1cyWlJvV3dmMktmS2lxRDUvTnc5OXg1WmE5MHNTZzZDK3dUNlFGUXVC?=
 =?utf-8?B?bG8xUTJFbGgvUzdWem1RVkk5cXk3MEl2MEcrQmI2RHRHaGxSOWk4SmF6cUJF?=
 =?utf-8?B?RDFTai9BMjkrKzJ4RlllUk9zRkVZVTUycXdkaWxOdndkcDFWOEF2Q0NlL09Q?=
 =?utf-8?B?dWxwb1o2dE9jTzdJaE1DTDk4SXBHNWRuNFZ6bjRnQ3pJZC9tbDg3YkhhWHVs?=
 =?utf-8?B?QVV2ZGRUQmh6T3ZZSzArMEY1YmJpMEdOQ3pvSjFORUh6RnhPa1lySGJDVG9Z?=
 =?utf-8?B?UStOV05XaklvSFlZR1NDeUFNMyt5MkZROGdqcndhN1gxbzR2M3dubHZHbWxz?=
 =?utf-8?B?MGFHR085RjZCNzAxNzYvdno1OXFHNUt0NkEwak1MQkhidmp0NWk3dEJBVWFM?=
 =?utf-8?B?NnV2Z0x5TG90WGM1VXF2blhLaTk0bEJ2dXRiMkpadzJFQnJET0U4T1MwZ3hw?=
 =?utf-8?B?RXMwZm1aRU9hUm1Uczhtd2VteVBycHJzUTZwc2xmRXVRZFRpSUNPRG5wU25X?=
 =?utf-8?B?cFNHTm45a0s3YlJBTW90L2VoSTBZSDFPcXZ2QldmQWR5QmhhN1ptdUt6TU1p?=
 =?utf-8?B?U2dSQ09DTlRWc1AveE1zZ2czWDM0bnpxMEVRM0pGRGR1L2RMVUU5ckZSY2ZP?=
 =?utf-8?B?Nk4yMnczeVQvMXY1dit6Sldkd2xqTGVaa2JnWG1sRHpUcmV6S1J2SllMVWly?=
 =?utf-8?B?Wk8rc1dzNXFyTENtMFJucEZGVlYveU1zR2ZFMC9xUDlMRFpKSGd1bDlFUnNZ?=
 =?utf-8?B?aWpQZThlQ3VXWTVrbFBvQXc5MnhQTlJ0RlFsY0FkSStnZHNwVEZDa2NnZW9q?=
 =?utf-8?B?Uy9HZ3RBWWgvNjdWUzRicEQ4bUVsazQ2YkpkbXpPMjdnR1R2bnZyMURJY214?=
 =?utf-8?B?dXlvQXhleGZ5SkZrQW1BVFhsOEVOT1hSRTQ4Tk42SW52cE9vK1h0emJLNktx?=
 =?utf-8?B?K0lwc0tnOEtXZURYMERtRmhGSHFkMUE3cnByUnlWbXhvaXpzR3RhTllrcnJp?=
 =?utf-8?B?S1FBUDFkejZva0k0K0NiRVJsMVVLUVZnZVdkNFk1Q0hUS21EVnBSOFh2dG51?=
 =?utf-8?B?YzRRak9iZHlDZ1IvNm13c3dWK0JTdUY5RzFpeGdaR3VGeHI0Q1RRRXNSVndz?=
 =?utf-8?B?dkZrZittRitLMFphS3NuSldOSGhBZnc4WWF1a3lFdVR5UXd4NnJobEx0Vkdo?=
 =?utf-8?B?bXgwdjhkbTU1MnZOVFdWMU8rSlVhOUF2TzFGVkxua0JqRkdqamdidEN3OVFM?=
 =?utf-8?B?YWhTQmwwVUltazJBYjhkVUVNN29RMm82Q1EvNkd1STN5ZVRvbDlmNXVPSE5M?=
 =?utf-8?B?Wkt4ZFdJRWY3OTlaL3pLZmQ4QjUzY2NrdUVCbDFLUzdvM3M3aE4vUEdkTGRj?=
 =?utf-8?B?Z2FxeDVYRXlqcDNBcXo5Y0pZUSsyNUkwb0pFQ2NrUUtLTC9sbXBPZkM1MTlv?=
 =?utf-8?B?L2crVjdUMEc1NExuQXhEd2xKZG5GTkM0dlpOeXA0c0VjZkdHTWM0RVVLMlVv?=
 =?utf-8?B?aGJGTVRiQ2xDY1YzMnRSTmZpYTFuVXo4SVM3QS9oNlRQc0s5LzZ3SHBxWGkx?=
 =?utf-8?B?UHlvOHBzbDRpRE9vQnVlYUxPY3c1SUdDRG9kR1VQYmRNcVFUQVBCSWJBMVgy?=
 =?utf-8?B?WFFUYlI0bkZNVXpwVEZMYitKcDBWYnR3MjYxRHNzZTU3TTVrUk9VYWdvRnhi?=
 =?utf-8?B?Y0VkR2ZQMitta1JiQVdseGxDRU1NMzZ1d3dyMjM0ZXhDZy9pT0JyZ3hwRVh4?=
 =?utf-8?B?YWRkY1ZYZ3BXS0QwYlJjRHdRN3oxOWRHSXowZVNDYkRTdjhVeUhsWDI0ZkJv?=
 =?utf-8?B?RmRIVVBRWkMwQ1dpdGloSmNLZlVLT2Zac21udTF1VEtsVWN4bCs1N2hPakxY?=
 =?utf-8?B?cC9EcllPbDc0cW8weDRVYzNYM1ppVVdsVk4rMTRsZW1aN1E1MWU3UlpsR0I3?=
 =?utf-8?B?MFl5NmhqK1NhMzVxSjVQRjhhR2toMjlSa052V1dxSVN4V1ZYeE14RzF3ZG1X?=
 =?utf-8?Q?EokZIbd6HiB3CzwI4GFcN6E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8af877e-9ffc-44e7-07f3-08da9d9482cd
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2022 18:50:40.2635 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WjLTkC/HdXRdndibuhYx3G4YKNUYw/qLgoSuXyawzVIqs2YgC5QmEZE6efhoCxMxOrwGduFaCzd/aqBPwUzVQbNZJBc0o+tnC7cfQC8jI9QaNyfOUiJJWELloHytX0dA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663959061; x=1695495061;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NMJXdnHfq/UMbmj1GO4LJnlU9J+0sP/ic5VMH5Hdm3M=;
 b=k8vhetD9hTb+0tXsHKNoSsVGxLRlyLekLxYs0n06p4bI7snE0PMbj0z5
 XrIxc3hGp7SXUK8W7HNQLtqWldgz6Z0m2j1h85VfZcWGIn2CZGMosnkTu
 WrxB8NCYlUVI4KLwhO86qqdTOQjl+Og7poM/v9D9zPXn1J1nHknOkC2U8
 dovMUQgrKF6E1/nMuE9es6+IyfRqYvQHHIK2uxrDpNkVRE2Iw/DmrrRZ4
 oNxY/quzfHoOEhL+hEnSfIqtdNti4iApR9azJha+nPY3O0Esf0/5Odyy/
 Se8qgxx6nvPg8S+b/JRJ63TozGOl2m4z6Wm+VyTUu7jC+LegCAsrmn3lI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k8vhetD9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Ira Weiny <ira.weiny@intel.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/23/2022 8:31 AM, Alexander Duyck wrote:
> On Thu, Sep 22, 2022 at 3:38 PM Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com> wrote:
>>
>> On 9/22/2022 1:58 PM, Alexander Duyck wrote:
>>> On Thu, Sep 22, 2022 at 1:07 PM Anirudh Venkataramanan
>>> <anirudh.venkataramanan@intel.com> wrote:
>>>>
>>>>
>>>> Following Fabio's patches, I made similar changes for e1000/e1000e and
>>>> submitted them to IWL [1].
>>>>
>>>> Yesterday, Ira Weiny pointed me to some feedback from Dave Hansen on the
>>>> use of page_address() [2]. My understanding of this feedback is that
>>>> it's safer to use kmap_local_page() instead of page_address(), because
>>>> you don't always know how the underlying page was allocated.
>>>>
>>>> This approach (of using kmap_local_page() instead of page_address())
>>>> makes sense to me. Any reason not to go this way?
>>>>
>>>> [1]
>>>>
>>>> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-1-anirudh.venkataramanan@intel.com/
>>>>
>>>> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-2-anirudh.venkataramanan@intel.com/
>>>>
>>>> [2]
>>>> https://lore.kernel.org/lkml/5d667258-b58b-3d28-3609-e7914c99b31b@intel.com/
>>>>
>>>> Ani
>>>
>>> For the two patches you referenced the driver is the one allocating
>>> the pages. So in such a case the page_address should be acceptable.
>>> Specifically we are falling into alloc_page(GFP_ATOMIC) which should
>>> fall into the first case that Dave Hansen called out.
>>
>> Right. However, I did run into a case in the chelsio inline crypto
>> driver where it seems like the pages are allocated outside the driver.
>> In such cases, kmap_local_page() would be the right approach, as the
>> driver can't make assumptions on how the page was allocated.
> 
> Right, but that is comparing apples and oranges. As I said for Tx it
> would make sense, but since we are doing the allocations for Rx that
> isn't the case so we don't need it.
> 
>> ... and this makes me wonder why not just use kmap_local_page() even in
>> cases where the page allocation was done in the driver. IMO, this is
>> simpler because
>>
>> a) you don't have to care how a page was allocated. kmap_local_page()
>> will create a temporary mapping if required, if not it just becomes a
>> wrapper to page_address().
>>
>> b) should a future patch change the allocation to be from highmem, you
>> don't have to change a bunch of page_address() calls to be
>> kmap_local_page().
>>
>> Is using page_address() directly beneficial in some way?
> 
> By that argument why don't we just leave the code alone and keep using
> kmap? I am pretty certain that is the logic that had us using kmap in
> the first place since it also dumps us with page_address in most cases
> and we didn't care much about the other architectures.

Well, my understanding is that kmap_local_page() doesn't have the 
overheads kmap() has, and that alone is reason enough to replace kmap() 
and kmap_atomic() with kmap_local_page() where possible.

> If you look at
> the kmap_local_page() it just adds an extra step or two to calling
> page_address(). In this case it is adding extra complication to
> something that isn't needed which is the reason why we are going
> through this in the first place. If we are going to pull the bandage I
> suggest we might as well just go all the way and not take a half-step
> since we don't actually need kmap or its related calls for this.

I don't really see this as "pulling the kmap() bandage", but a "use a 
more appropriate kmap function if you can" type situation.

FWIW, I am not against using page_address(). Just wanted to hash this 
out and get to a conclusion before I made new changes.

Ani
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
