Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8E9598E89
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Aug 2022 23:02:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C53CC417DC;
	Thu, 18 Aug 2022 21:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C53CC417DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660856526;
	bh=Z01gsxNP6/34wmoDsOBQ5FvW52wRTHOfOtj0qoXDzxM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FEPsO2zwxB+Axc2gyGIPcTuLRFMsD10SKit1WTzy3fZILj23L9akhhZ8NDU93jeMS
	 JpHC9wy6tiE1dznVcF1+gWDNEzgvXe6pB0DWu9KYfgBo7kvCBjWVTFMa0yDYFJN8BL
	 si4HM2GCKoyzk5VIZUGY9yQOeLX4f2Yf5ufncummoDKjXnNqoKXb/v1vfanoJ96tCN
	 4D7BN+FaOZl+XSczCygtZxvyQFGvjcZVGbSRwW3bZYE0sO4gsxZ7QnB/oor6g0eli9
	 3MD7i4rn5mCm5fBAs0ww1Bjtm/Q3a7ue00NYE38sYmNDU+GGP52O+ODyaO5prLWmRa
	 VIzEm1cs7dFvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id noGKqyHQZye2; Thu, 18 Aug 2022 21:02:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50054408DC;
	Thu, 18 Aug 2022 21:02:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50054408DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 433781BF343
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 21:01:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C4226079E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 21:01:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C4226079E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hpT3cwlroiCq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Aug 2022 21:01:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2080560797
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2080560797
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 21:01:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="275914982"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="275914982"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 14:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="668282773"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 18 Aug 2022 14:01:56 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 14:01:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 14:01:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 18 Aug 2022 14:01:55 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 18 Aug 2022 14:01:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IKVot8CbBEWXhLcKuTa3qWULQmskH+UsXF4gKTUN7twJICJnEKxDUeXMxLQ4yTMugKtBrY6Pt0+GhIbRl9LndmLc8FXGXF9R5RW7Ht/kvvUaN5ix4yuWkw92Vo8YC4ckiVU8joTKxDSSq3HAExsBUcbVjMk5LSmR1RHUKTUf4/+QtD1zCnNMUweuqqc8hmIAtGn1SjwUGfBxUbJLrvdBDyco9YKFbaJfCrblbwwxqgLvGwwP5gY2NtKXDfnp/vCyVgmK5I8OrBoY87D5dtvvAYV3dVMxT6HPTG5qJjV8JiOzRVL4GPNDgxFIw57vwvYuFGle0Yp8IYq0B9YVB9Wgdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Li7h19L7AITENYHiPeBce63sDNHD7Is6t13TvjuCjAQ=;
 b=iKFg0U/a+8wa5YGIYL4DQSHEl+24SJHl+u38KuwxV+cL3aJKqKeKPZDQzLEZzOefZjT12sh7//cslASgWLJRM0r/rllGlJgZXqvekBpJr3dAv5pAmRJTcPFmp/a+M7UEEdkUYg9qSBk4xgy8rnsS4HmOxmulufkcy151m4Hgtr4xuWPY+Ux6naRf2WAzUkBUGM7PqBET6HWZ/kwQ4dZWJtSr92fQCWP/YU5qVB1nJg/c/UbgZMXLu9bjCQyH0qBIK41CGgdpzfVMDtd6hlD4vmPsesUEfFqR+C4oBffjbxkNGJBNl9yfiLdgEpOOQ2GHNxOf4Hf8bDvadBTDyX05MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB4817.namprd11.prod.outlook.com (2603:10b6:303:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Thu, 18 Aug
 2022 21:01:53 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5546.016; Thu, 18 Aug 2022
 21:01:53 +0000
Message-ID: <99098383-28c1-9999-54f2-9cb12cf06373@intel.com>
Date: Thu, 18 Aug 2022 14:01:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
References: <20220811114552.1577550-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220811114552.1577550-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0134.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::19) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6721fefa-7b74-42e5-7fbe-08da815ce073
X-MS-TrafficTypeDiagnostic: CO1PR11MB4817:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sOaF6CkemyRW///Nkyb27Ej7cI7JETkSlf6dm9U3lcOExPHNv5ZfWf5p+yyEPfZh307c5Wa+7BLdaG/XOGhaM6wCQk11kxvRpGvd2ZEsmulB+H0GPYeRzPizLAv+Xeb8AfTI4NAO2iHMZGe9XfB2PdcBMbGwarziJecaArEUvXxduNLaM98I9ExrZkeO+mX/QriflJFtY8R8h4EIgq5eAoGdDKUWHQ9DJSonjEKBr+OelMP4oFWgqg0VRG3XvzDQ5X8se2voF8drSi4PDETAosyUvW/WZ+ZoA7iBphQdXG4hPJdw+Sd5QsQbcSrI1Qep5LpFDk2G1VJQcoNVuzLC7xpJJ/4d8m2O8Lly1Jp+hUpF9a18VRspeJtvqFSPk6jyKykrhFsLAIwHW/8ntsvrJWUuZTR+ZKLr02ueUuQ3837TasV06d0FivMI9MJnIjorbihBhkzkfpjj/1oglm1+IT76+obp5PSEQaMHvpcf+PpS85nzlIiQzX85VpfNZn0L9bIU6DjMZlNuS1q60Ar5cxqk6hXrtWCgJUPR/FE/J2259emtPFCMUEFW+1yWRmt9ynIUjYh7CgA8MhRLO7P5Oum+GuSSnGXod7rkThKBAJG75wTh2u6gBOG3k6d3bAiLyxdHkOy827gkDg3dBOa9y4i54YsCBfN6mZlKq+dmIClWQoQWwANxE7Q9ZApx+BaEanChvveRmcrZ+gvkebhQb/kfWqebqpzrQ14tgufdVBxb0AiWyzFF6fFtzBavFQ5SwAdsKXerdNmGEdJBXnt+NSxCygl8Fr5YCzJwNqAmpCv2kzsi1rD5M8/Ras+XvAL+BajBnvFyL6Qv4lMh3+0SXQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(346002)(366004)(376002)(136003)(66556008)(186003)(31696002)(66476007)(2616005)(86362001)(82960400001)(5660300002)(107886003)(83380400001)(38100700002)(8936002)(66946007)(15650500001)(8676002)(4326008)(36756003)(2906002)(41300700001)(6486002)(966005)(478600001)(6512007)(26005)(53546011)(6506007)(6636002)(110136005)(316002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWdpaDQzV0V6ZGFVRll2bENETENzQkNXU1NEeFFiazhHczg0L3V1YjNLWHNW?=
 =?utf-8?B?d0I5ak1Vek5Ed1lKSzdpOFlZMzlydmM4ci9XaHdGQk5WRGFYMlFLMUxDaTNP?=
 =?utf-8?B?Z3JRUnNHVG5aOVBLNzVVcGpaMHNnWXlYQzZSb2hnaWNkSFErcmJFUEUrU0Vs?=
 =?utf-8?B?aDJENnloWjZRZlRBb29yWDRuMDNiRndKQ3E4WGhQbGExWVRZTEpyTFRFQmto?=
 =?utf-8?B?RDZwVEFwdEhoUUhDcy93akxWaTErN1E4TjF1WkRBaHF5VndiZnJrc0ZZLys5?=
 =?utf-8?B?SU5QYS9UaHdRZWpMclIzL1Qvb0IxWDREeVowTnZRWHlQVFByREtEbFVDQXFR?=
 =?utf-8?B?WFZYT1ZDLzBLWFpFbVdTMjk1cXErd0I2cnphQUlwU1ZuVWVLZ2l2dHNpdVpZ?=
 =?utf-8?B?UTNYN1JUL3FuaEhqeWlZUHYycEloTWhwd3hVL0VxY3hxVWJkS0RORndmSjRz?=
 =?utf-8?B?a0VtM0ZxYVE4M293Y3RGWFhkbzFBRU5XaTlRa21YUTNwQ25SMXpTWXpLU1BN?=
 =?utf-8?B?UGIrenZaNkxkUGVVcXdiWldUVGdSUGl5aTNxMm96UlU1NC9JS09VRnBobTUx?=
 =?utf-8?B?RlBiY1lvQkNsdVB2VGErUmVabHg3ZHB2Z0xiaEwxVnFpUnZ4RkYraWovNFJY?=
 =?utf-8?B?Z1FnbG1odXB1bUhOOHNsaHRIOS9uVEd5WEdUZWV3YXorMEZraXFSbXlXMHNp?=
 =?utf-8?B?eGd2cTVrUW1iZDlSRnBubU1oaEtDN04xdkd4VmFUdUxFTU8zNmxpM01zS0dL?=
 =?utf-8?B?SHhiT2hKcmpKL0Jqbmp6ZjFKTnlMRVdZbXVwYUlOVEJmbTFTazhvVGFqSkNR?=
 =?utf-8?B?M0w0M1FtNTNZTUtrUjJ0WENJK083cy9manZTb1ovWkp6SjJiYW1ENVJOZUZR?=
 =?utf-8?B?cjI4RysxRjdnYU5qM1h2aVVSK3Q5RUV1eEllWERIYUx4UmVtblpxMHlLQ0tK?=
 =?utf-8?B?Z0Nwck1UaFFSV1R3MVJNVXNoUmFqVnRsUlJQSzAyV1J4a3FZZ1h5SThBTGlw?=
 =?utf-8?B?Qm5BQStHYkQxc2RCcmZmanFnMm1OSm5ZM2NsQmp0Ui9VWjJiTitPNE9OZXl0?=
 =?utf-8?B?N056azU3enQ4RXRqQjVocDloeU5teS8veWZNZnZlQklEcWswWWVhMU54MFZr?=
 =?utf-8?B?UFdLeDF1VytSc2xOS3E0RmU0TEhVQVk4OG5VVGMzY1dNVS9NZnpNUlF4cSsz?=
 =?utf-8?B?UVNWVEVOaE42QVR1Nm90S1ZYMFVyS0M5R3NQblliQmppek5MSlpjOTZRb3Ny?=
 =?utf-8?B?L0FCaGhtWkQyMWpWUm9BcXE2UW1rbkdBcWtSdURhS25QLzBwLzc5ZzEwc1A1?=
 =?utf-8?B?b2huWGhhanEwM0Q1dGlJdk1JTCtVZHo1SnFHWUpQWGZPMHlXY2RSaDd6K05o?=
 =?utf-8?B?cklHZTcwSERQVlNsTjhEcStaWXluZzlYamZOVWpKNkdJdDRjT21nVVdlcW9j?=
 =?utf-8?B?N3lESSs0Rzd2ODRpRnc0S0FtSUlqbUhtOUZNSlcvc3FSM1BQTlRwZXVxZkNI?=
 =?utf-8?B?c2pWT214b0hMY3BCSDlDbjRwSW5VUXBDS0U1REJjeGFRQ2JlN3ZkQkk4dUhz?=
 =?utf-8?B?UVJ6MThRR1BOVVRDQVNYN2JwSTZJVTIrczNpeWpvdVpISEZkU2gvd0RVRDEx?=
 =?utf-8?B?WFRtSGYwdk8yNVBVNkpQNUpqUi9GSjZRVnJweWQwaTY1dzFwMkZxVGpDZzlN?=
 =?utf-8?B?d1NuMHZmTEN5elBZR3AycE9tWnNwbGk2aGxiZllsdTd1NjFCMTJGYnRDK21V?=
 =?utf-8?B?ZWtPUkc3Ui9XTHRmdXBCTU14eXhvM2I3enFnN3JaVWcxQkplSzZpVXV1QXM5?=
 =?utf-8?B?RDc5dE9PcjJiYVE4RXpRWE85OS9IV1VFSXRVTXdkRjJPOUFtQ0FrR1huQ3dM?=
 =?utf-8?B?VzBCaTFhRTlaandUMG1MazhMeHE4azZnais0b1BvVmNMcjFUWnY0N1VyZ2hL?=
 =?utf-8?B?M0pUZTBLT2lhN1k0L2tKNkVNMEt2MHlrWFVHZkZrZEZBTDVSMmxFRnBjSERD?=
 =?utf-8?B?bGd1c1lVc1llUXduVkRnaWlETE5TTkgxbzgxNlMrQzF0M21JTDJSbElyWTlU?=
 =?utf-8?B?V1dQQ0R1Yjd1alhMM3BMZnlqbi9BWjdjZkZIdVE3SGpsZldmeUhPbFdYem9X?=
 =?utf-8?B?cStRK05taHVNQW1oVGZxTWNSbGU1aXd2NzhWTWxhMXU0Y3FkVnRYbzQ1RU1z?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6721fefa-7b74-42e5-7fbe-08da815ce073
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 21:01:53.0705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eWiwoAVWn6DNhLuMlhicD7/lvyzvYSsEREqZqCzotT0KHFOYG8KQq7Pqv5VuU3zgxieE64P4XKpiImaj9n/M6eu5UA98JGTkhAY9gFalaLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4817
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660856517; x=1692392517;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DvYCKseT86BBubTXsJlC7DwNyuwgeqC81aQ9VONgzYY=;
 b=lwf4DRRyl5PMhcsUBAD7jQw54t3zSYXhH3pA+7UB+1KgbdlWb8PWbbbo
 nz4BtOslAvl5OsccJxizqgpGD/kduz9N9cY1/cdJZ9s13B5YIzhs1kONj
 SWpzMhCXT2BHpEuojd1PwogzTUgBM8xHYg8Jaj39tvtfBtM11LyZOxl7D
 zgi1HEM39yCc3kUoAmDZmw+UkJ7aJDVnre4X22sxZl1dkK/Pm1YlyzX1u
 wecV3sUVIiJSDNEaX/0KXLQXX4kHa74sdez2iGVlbZQgyzOvFwb6dU9uF
 PAfwKUSGWF7nmF+23wZdQ5FnNi9sP0nYIYuTDQJRXCRH2dUBJP09+stQQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lwf4DRRy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix inventory failed
 error during flash update
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/11/2022 4:45 AM, Mateusz Palczewski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> After updating flash image on E810 card with NVM update tool
> there was an error: The inventory process failed.
> 
> This was reported at bugzilla thread #2114483 and caused by the tool
> trying to read devlink parameters fw.mgmt.minsrev and fw.undi.minsrev
> but those parameters were not registered by the driver.

Pointing to an issue when using with our userspace tool is not a good 
justification of why this should be accepted into the kernel.

> The ice NVM flash has a security revision field for the main NVM bank
> and the Option ROM bank. In addition to the revision within the module,
> the device also has a minimum security revision TLV area. This minimum
> security revision field indicates the minimum value that will be
> accepted for the associated security revision when loading the NVM bank.
> 
> These parameters are permanent (i.e. stored in flash), and are used to
> indicate the minimum security revision of the associated NVM bank. If
> the image in the bank has a lower security revision, then the flash
> loader will not continue loading that flash bank.
> 
> Fix this by adding two new devlink parameters fw.mgmt.minsrev
> and fw.undi.minsrev and function to read they respective values.
> 
> This idea was proposed before with both write and read funcionality
> but was rejected by community. This patch focuses on read only.

How is this different/addresses the issues that caused it to be rejected 
initially? What makes it acceptable now?

> Fixes: 1adf7ead8204 ("ice: enable initial devlink support")

#1 this is too big for net. #2 This is not fixing a bug for a tool that 
the community is concerned about.

> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Link: https://lore.kernel.org/netdev/20210129004332.3004826-5-anthony.l.nguyen@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
