Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C3C8587C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 22:15:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9827F42190;
	Fri, 16 Feb 2024 21:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VW0HKknmrPBo; Fri, 16 Feb 2024 21:15:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9355C418BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708118118;
	bh=kr5h8/YiVpshaePM0I05fgfueS5wsXgtVgTNVWHXVis=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hK6CesZw1EyWEPpNYHzFPFravN0+e6MTRN7D4VhULOptHEN3OwJ0DYvSARrWAgqG4
	 Xw3xnjoPabZ76G2KblP8FxBWpOdUYVfesf6PMw/5vCAwAokRroEei/pZTq1O+rBd6Z
	 hzhgOJzaUK92CtJP/Q9TTvDemmF5wm+CUo1wC7AMTruYi1cGB3YdS9rdD5fC+Feo1G
	 Un6KBuH+sFkkVT3HNtc9NIra57dQq8kHQ66zF/+JclMTfQzrxy28DZFD1HrV0Vs15L
	 ySG8eh2bFlqDKyireUTlXEblnLpGCzy2c5rcqOjOGLqpfL9Vxz0A3wMcFJ+lrgiMcC
	 unRbipyV31uxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9355C418BC;
	Fri, 16 Feb 2024 21:15:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A31B1BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 21:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 454B1417F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 21:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rilADytCzfxH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 21:15:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B2216416F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2216416F8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2216416F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 21:15:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="13665133"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="13665133"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 13:15:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="41430761"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 13:15:05 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 13:15:04 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 13:15:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 13:15:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 13:15:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UAzX7zOiws06f6mP/EbT6hnL6zAhPIzZVjMnJoGyWYWFxAemZRR4MY3Wkk+M46vqeznGye9CkoACcqkJ9jwdZTc2QKfY3/0UFZzLcUeZsnS8FkWpt/tjeBdo/CVZsmuo8i8ht+ZL1F/wSdrcdXvqS83Knk747qvGF/qapDBHKj0VhedfKRFNvRzcCkgUNT8RBuinKYKfr1NJZEu5teMJR6xuNTzQFeTQ/WlR08OCTHvVrUK9MKMDS8lr24qo6b8P8Ql4F5mTJB0liKuEJMxZyUAC7dW1/iZQoe5lI5JsB92bFzeJwVvA7MYWZ1oLznzo5oBiNvKViXzQyHTo1RfXWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kr5h8/YiVpshaePM0I05fgfueS5wsXgtVgTNVWHXVis=;
 b=WQ3RFQ9Xz/ODvnIFLHMVNPt91yL0Wikf/w8CQqS1OXExrWoWq0tQj/XS8ldJTlb1IlQ89jcd4g9Xs0t4wmIqWOsu5fLfhrs4S4eg1EHmTgx3ThaPPZhyv82DPEHCwPdhYVdPzfohj6DgesVlzWhRUOyqFTocD5shqwRywok7kVnrSuxFwkqcSQug3NaUFfeNP84MBsOl/4Z2Ksc0xVMHXMrL7zp1gmGQQlrgdmOsVHZZpgUjaTn4mPUJUwzsLBZa3O5Ye3NFTzMaWhUlRa78Yl+A4WwpqjT+WQ39U+kX2i9mSO9e7DMjY0VBKh/MlXX3DOZbL9SnsYvlcCZR9LiZ6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB7262.namprd11.prod.outlook.com (2603:10b6:8:13c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 21:15:01 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83%7]) with mapi id 15.20.7270.033; Fri, 16 Feb 2024
 21:14:59 +0000
Message-ID: <b227037c-16e0-37b5-a5ac-cf8eb0d3556f@intel.com>
Date: Fri, 16 Feb 2024 13:14:53 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Takeru Hayasaka <hayatake396@gmail.com>
References: <20240212020403.1639030-1-hayatake396@gmail.com>
 <CADFiAcL+2vVUHWcWS_o3Oxk67tuZeNk8+8ygjGGKK3smop595A@mail.gmail.com>
 <8eb6384a82fc4c4b9c99463a6ff956f04c9d5e33.camel@redhat.com>
 <bad0da2c-546b-2e05-feea-d395439a0bb0@intel.com>
 <CADFiAc+RP91PfEBAnwbABjrHJkdLc0=nm3_TE=+ZaN1AiVQEEQ@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CADFiAc+RP91PfEBAnwbABjrHJkdLc0=nm3_TE=+ZaN1AiVQEEQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0145.namprd04.prod.outlook.com
 (2603:10b6:303:84::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7262:EE_
X-MS-Office365-Filtering-Correlation-Id: 03e35de4-f189-4a2c-317b-08dc2f3454e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mTV3PD38X5dDwxWOHTs83OGsXqp8CYQ7zIE/iY+fpcegpL75MgNUv9+K/fr62GDWhKnbOuXLJqaAmmLZ4sHhXGpfgxrJmePbDVGECQ6bvMvHcrFLQgYG+tEQ/dTdRVkFFum05JDfQXkYbQZA8N40htPd8awdOdFX2d1NkCaKESSmss97GjruDawHYnVpZnZu3DqDtMELGc064r/VXP55vu4nzbumfC+trxiLrAPxEojGKbIRqDonUVsXQ98SB0Na3JL6B/Th8Uxfn99MB4U7UaMbxFtXVFBys1x67PKaocOBBdforsGxq2jJ7Geb6eI2NGENvkvCYw2vPYQEqyZGVp2mQ0vvmUc8BeILQhLJtEw5YadGN2FmFdS3ZuVTBpKjIEBCu2EFYwneobCRaIHs725y8z56fW93yc0WU0XvR13azDYt2YAuNtD5t/R3rrqOqzTOpEpKtWYBCfvQnaNm3RulyYSlyGdQ1kbhlrHr0xS36VJ7+mMuPU5j8LSzruJ0OZn8SBa9YMMWLjXf9V+W22j0fL4Y8ePkRzsuu1T20WU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(396003)(366004)(376002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(8676002)(41300700001)(316002)(26005)(4326008)(2616005)(6916009)(8936002)(66946007)(66556008)(66476007)(6666004)(478600001)(966005)(6486002)(53546011)(54906003)(6506007)(6512007)(38100700002)(82960400001)(36756003)(86362001)(31696002)(31686004)(5660300002)(4744005)(2906002)(7416002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHFUYTJnSDY2QUdoNmNzVDY3MlEzOEd5QmZYTnhWT0FORkhpVGRERlNDZE5x?=
 =?utf-8?B?VnMwZmZORmlmb1dZMW1oMUo3ZnN0NEFpdG5MV2IvUVl6TDkwb1hwOU9zTWFK?=
 =?utf-8?B?ajlsQXU4MjBWekhHY0FrbEVuTTR6ZDJIOW91cUR4bFlmdFpjWmluejNUZTJ0?=
 =?utf-8?B?cnpwcG1EQmtaZ2pJK1dobGlEZnNRRzRLZFdYMUZLc0lmcHdub1ErT2NGWTN0?=
 =?utf-8?B?UE1TWERUQkJjYzVhWTE1NzlrQ2Q4bDVjVkp4bS9wYXZQYXF6UW5QNXRNWkJK?=
 =?utf-8?B?RXROT25aMlBxQ1JQU3VQb2VZbmJLMlFzdFNBbkJSY21wL0l1S0o2UUFUSkl0?=
 =?utf-8?B?OGxrN1cxR0hOSDRMU0c4NysxVURLWWxvU0MrdHlpVVBFR1Y3ZEptbXRMQWo2?=
 =?utf-8?B?b0JTdkI3alJkMXd0R2YvYURhY2pDS0QzZnBRTnFQSDdhWTVDajk2VmlFQUhQ?=
 =?utf-8?B?bi9Bb0xIRUh5QVR3bFZIb1Q1STVvRHN6d1A3TG5mNFlZS21LWHhidk40NG5j?=
 =?utf-8?B?SjNmL3ZXdnBrWTl1d0cwMDIzRXQ2NkJESTZWTURQNERqL2h3dXQ5Y1Y4ZlZp?=
 =?utf-8?B?Vk1rQkZFZ2tyVmF6SVAwUXpwdGIxZ0ltRTNrZ0FsT09VeDNoeDljUGl4b1Ev?=
 =?utf-8?B?NEphaDdwM0U2Zlh2bEdUV0NhZlV6WnFIeW9WSGRRWG9DVlUyVkFKZ0xCM1FP?=
 =?utf-8?B?NTBvRVlFMklWczhDaW90S3hINTV4RkRrSGRzSkpYZHVpMlhhckdRVy8waitM?=
 =?utf-8?B?Q3QxTnNlNVN5MU43OWY5cXkycTVRTGJsVXNDakZUNEtsWExocm4xRzhKcmgx?=
 =?utf-8?B?NnlHWUhPTkh3c2FUQzRFZjZhcm1sL3dvQ3o2dTBQNlZKRnJFbHVqRTJrZWZI?=
 =?utf-8?B?SzlKKzY5MklLS09yM3BlRkphNjB0b2Z2aFlFcStSaTdJTkRlQ0w4bksyR0tT?=
 =?utf-8?B?YVhzMmhjaHI0cnl0cmIyK1Rkc0dDUWxyaW03S3FKWG13bWhOYVF0WTFGKzg2?=
 =?utf-8?B?WWhOWVJVZEV3TmxiK3BLRFZTNTlFNHFKZCtXQnV0djFGOTN4VUZrZVl5V1ZK?=
 =?utf-8?B?bVBBMTZxOGQ4dURxa09CWjh3VURwYkdXZnAzdjc0NzZxbWxsOFFkV2kzbmQw?=
 =?utf-8?B?cldYZllacVoyeFNNTktjN3haOExwc0hnTHRXWjBLS0R4WVhhck5ZUGRYVzY1?=
 =?utf-8?B?WUJlaERHTG8xRDlmT1FvTXJ0THpLTmNSL2E4clBDbW02Rk0xUkp0dmNmeHV1?=
 =?utf-8?B?NkttdGIyVFN4RXRITElldkswY01aYUVtRHZqR1FsUmNGM0IyMHMyYi9IZ2tk?=
 =?utf-8?B?MUM3S3dlR0RrbXoxMVd5T1JBQml4R0MwZUFxcVpTdTQ2S3dCT3lKR0NEaVBo?=
 =?utf-8?B?aEdKZm5BaG9NNnJjYmtlaFlBWEoxN1MyTW05eVJBTGUvbWQ5K1pmdUJHK2k4?=
 =?utf-8?B?cGxoT2hrM3R4WVZiYzBzUHhQY29hcVNjVGVZUStaN1pVTGR4dUd6S3dlOXlm?=
 =?utf-8?B?eWYwcEZsMXFDOHpTZzBmT1c5WDF1ZHV6YXF0OXVKK25hckQ5SG5sWThhTVJI?=
 =?utf-8?B?Z1lrZmVTTEgwbk85ZnBySEkrVE9NTzNYcmRNVTV3bjRwcG1WSnFhd3N1MGxm?=
 =?utf-8?B?U3hMUy9jN0ovdlB3a3VML0VocUtiaTJOWUQxbWZTREd6QXJqcHQ3MFppUmgw?=
 =?utf-8?B?UXRndGlQMTFMRy80V0oxUmJISllMZUxSemRUV0pnUXNqMkVNRW1WY2V4ZURj?=
 =?utf-8?B?cGRsMFNZdVAzN0R6ZG5jQTRjMVdNUndTVkRDYktYTmk4NGhxSmd3SmJWMm5I?=
 =?utf-8?B?QTgwMzdHOGNMUWtWSnhWRjhFaDk4YkhERjBRYUd5UGdxZGl2SmJHcmlmclJv?=
 =?utf-8?B?aHo4NjU5a2Z3OG9OZDVkY0FWUzl0NGdtR1V2Wkd3N1FBVlFZUGZWOXQvUzRz?=
 =?utf-8?B?RXZqMUZrZzIrRUF6eTB0N0tzV3FFb29WU3FBY1YzbUR0Rkg4Z0JuSHkvemZ1?=
 =?utf-8?B?Mm5tZlViTFJ1OG93OVNYTkJaQzFvTDJxSTY2OGhmR3REMi9Cb0k3TmJTdEw3?=
 =?utf-8?B?bnlyVW5PdFk3dllmRXBMNEhENzBqeGpKM0VWWUlNS0tiU3JvQXJCc2NHQkhj?=
 =?utf-8?B?ZTdqa3dYZDY1bHN4aVdmM2pLZHdaUkJJaXluSTJSV1JlcTcxWDRjbVYyS1U3?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03e35de4-f189-4a2c-317b-08dc2f3454e0
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 21:14:59.0626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JvtfzDvjW766UB50sVJTQC3W88GpXEw/vx8sE8VLXZibtW+EKQ3HTjPGrC3MooHvtcsr2ypI6rJ/0c9Wy5MizWu9Cx/nskxb9mGXUs3saEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7262
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708118115; x=1739654115;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kJqHc06iJeZqfKjD6f3gRmA/8lazpK1O3xgG3wD4f6E=;
 b=fKgoVbKGyn2C6VlGNu5b2Uq4Ij4Y/y3Vjd4pzUe41CaGtoWNkLhORF3M
 kcVp3KbJ8eU1F2Lhz6CGxfrlRUvf84ZRR8fNQcxnRDl/RVfgdht8kkaMg
 EzwkyTdjnDawAPgyYX/+tfiG3+j3Hs9WhBqDi/+VGv0F3A0V9jinRKpyC
 rjI/Y14Jhsh4t5I1arlOScdkof5Ugluo2EOulZQS7mP1j8xtan/3SqpC6
 XSnIW1SUEwqrB7S5DUevE3/sm5zFvhsd4EBh1byl6r0fTlmb6usESU73R
 9i47mcxBbGZi3d1dCv1MaXaKxAMSBNAdH7XW/le7eoY4Hw38NqxUCmLC5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fKgoVbKG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
Cc: Jonathan
 Corbet <corbet@lwn.net>, netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, laforge@gnumonks.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, vladimir.oltean@nxp.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/16/2024 6:14 AM, Takeru Hayasaka wrote:
> Hi Tony-san and Paolo-san!
> 
>>> The series LGTM. I *think* the series should go first in the intel
> 
> Thank you both for picking up on the topic!
> 
>> I agree. I think it would make sense for this to go through IWL.
> 
> I understand. So, it means that it will go through the IWL branch and
> then through net-next.

Yes, it will go through next-queue/dev-queue and then to net-next
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/

> Is there any assistance I can provide to facilitate this process?

Everything is good for now. If we have issues or questions we will reach 
out to you.

Thanks,
Tony

> Thanks,
> Takeru
