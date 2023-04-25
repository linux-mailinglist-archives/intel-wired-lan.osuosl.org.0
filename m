Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D736EDF70
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Apr 2023 11:41:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 120EB60BF7;
	Tue, 25 Apr 2023 09:41:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 120EB60BF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682415697;
	bh=N/KlEAs86BM5dEkKhi6FkmWMt2T3iG1vRPluSA7FfF4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HFn5GU5NyTfI6hEbNVi72jYp1H81J8ooqC+ZG5DUh90YOD5w00M66cd5F5XE0Yy0v
	 JDNtY5SXdqilKNaS5wuvZkXCKIB3NeQ2zeKfi5GXjyHbNolpTCtTzCbY48+SFDiFAx
	 HMjbBRQpTxYjO5339ZHlnsmUBqenNp7lsClae4kR8rVHKtLwxxxgJQ3ivA2qY4SguW
	 1k/xsR0LVUeN2DaqKcYMraYGDyDhELeUskK1YIvEchVuCA5L6Dz3moung6uls6XAtI
	 F6vf8dDJ5nvZxN1Kws05LEuU40T7ByO9BbBFizAof8RJuwwwcyxptSm3qI2WL2te4Q
	 i+4YSXwreS5Fw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id diljuae2-P5L; Tue, 25 Apr 2023 09:41:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC0E8607A1;
	Tue, 25 Apr 2023 09:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC0E8607A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 588EC1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 09:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2752E81AF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 09:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2752E81AF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AQkj9DC3HgL6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Apr 2023 09:41:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF0B481AA7
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF0B481AA7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 09:41:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="326311529"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="326311529"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 02:41:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="782782003"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="782782003"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Apr 2023 02:41:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 02:41:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 02:41:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 02:41:19 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 02:41:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDxDaHbXni/7HJyZ934G43nMpCctL6rheD5jJVmHtcID5LTGPRoKifyobAD3yNRYkRNa/fJrgfS9sdx8qG9Xpc3etTNY9KOnrem0uRFAAAAjW3G5celioLII+410A7QfB663SeDzdsfo8FJeul6m5/VmDZK96yTJhQB7QOg2rxCotYMeTgF243zTQRqZ0wkzwoOLPNnlxqS6GyhC1H78ZthYzG8ZIclZwtT4wvl9Oacpk4gcHzg1ohFpvIOqIVNhWiEXaLMHSU+zfIypaPnDiOzGvTtER7zKDKon5/YRXzHFAP8i839iil3PHcfi9SV73EMKqdkqfb4cS7EC5cqH1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zGqpZpv2u7CaU7F3EPh8G9SEXESIkW2ew2OlsY2CgpU=;
 b=d+E8zkZvZttptRnMcYVoWGeOYJwKtilOBH4/D4CWUc6N5fHEkWSQgdWcgYx8abAEq44eqbAyYP32entjwT5jriVLLFrnfEHWaDFzmlAC2yxB8sHICdjHTUHhRKv7XW8VkVVCgPWs9rCv4f84tL4JlQhKEx5ZZhgq8uMnaGx/b31f4Hzo5eBydJ5AMk/ljOcmkNyGdsttnnZ0bfS8+H/TUGSsA6ZMMy3WyuwQP9+s2hSi3pKkxAKMu0vYzrN38+xr0MHWP+FUiHL5+Nzma+JJgnfQyQVWQ7dDKTTbjyAGJ1lk2ikU98rn5csv+irXLdCO97A3Dt2eylViQqcvX45GrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by LV2PR11MB5998.namprd11.prod.outlook.com (2603:10b6:408:17e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Tue, 25 Apr
 2023 09:41:11 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%6]) with mapi id 15.20.6319.033; Tue, 25 Apr 2023
 09:41:11 +0000
Message-ID: <9a7a1256-deaa-54fb-f479-31b0e796ff4d@intel.com>
Date: Tue, 25 Apr 2023 12:40:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, <davem@davemloft.net>,
 <bpf@vger.kernel.org>, <daniel@iogearbox.net>, naamax.meir
 <naamax.meir@linux.intel.com>, "Meir, NaamaX" <naamax.meir@intel.com>
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
 <168182464270.616355.11391652654430626584.stgit@firesoul>
 <644544b3206f0_19af02085e@john.notmuch>
 <622a8fa6-ec07-c150-250b-5467b0cddb0c@redhat.com>
 <6446d5af80e06_338f220820@john.notmuch>
 <e6bc2340-9cb5-def1-b347-af25ce2f8225@redhat.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <e6bc2340-9cb5-def1-b347-af25ce2f8225@redhat.com>
X-ClientProxiedBy: FR2P281CA0106.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::18) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|LV2PR11MB5998:EE_
X-MS-Office365-Filtering-Correlation-Id: fa73ad50-6266-4b36-0f26-08db457133f4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5xWWNpKVXOY9n1b8csz/FpjlYmi5TWbVewRV5U2b98sdXYR2WYgQbeL8HKawra3qERkqn+aeiKcX9f8ofjuLfqV3gUqwhZVtwyZuvNeP6kjnGP2uqKUqOkUoo2CmMHa0JM3eBrXDbYafUcp/SvOnIFnXGxYMG82nDg6kDcIeFTN6uRYNg96aFL21XFieZJHh5986qAYYUoW9cmRUDxDUjRZPSfvTvfUhJ74GaRog3Cor0sx6cXINQ3tHDPtqm6oMr1uiA+eIDFBshKQAR0MdQdOz0HOdnsTRodOuPvSKEhdTrb6fjUh7Wwj5ShOx/Hdbb/r1+Zx5vee2qIAfbM8wk+Xwx7YebWZC/zSuaE13i1voLn511/j7gRH3clFm+htuT76efQhG+g2jltAKBawWnueB4264MCbOmvWqtTIQXdNUCfrIIG0ODdzU0DLK3013xKRCydrpcqPWrCOV1ocdiEOLojjv8RGoWXlsUefGCa3+YIu+E1G8DKdoyQ/t0zPkL/9YfiWzBMhsBX8Ldje5uMjTKmXd8QHePWN8QeGkuTgp28cRdWeqiRJfiUewYSH0uWy1QJhQB7nYnh26QFFoQ1td3DJH3Icxjr9ixGUJw4BI3/MLYUx+rfatJYBjyw7hNqLwUdE4IxtkUYPnfQdf1A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(396003)(39860400002)(136003)(451199021)(478600001)(31696002)(110136005)(54906003)(6636002)(86362001)(966005)(36756003)(186003)(53546011)(6486002)(26005)(6512007)(6506007)(4326008)(66476007)(66556008)(316002)(82960400001)(6666004)(66946007)(83380400001)(2906002)(38100700002)(8676002)(41300700001)(31686004)(5660300002)(8936002)(7416002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1NxUE9PTzN2c1ZPV0xWNHFaVEMzZXJMNTUwSEVmWW1rRHRDckpzWjhDR20z?=
 =?utf-8?B?MlpBVkJxYWZ2RjMrcGdWa3MwMVdubEJFNWltT0VhMjFKek42NmRDYjhOaHd2?=
 =?utf-8?B?L1krUzNTSUdEbjgyQ2ZEbHl1cE4xRm40L0owRzVBbnVYbHNmVkR3MTc3YnZz?=
 =?utf-8?B?cFp6d0JacUdtT2RRL0liWU9mSUJMaGR5eWtzbjFZZ2h6aXUwUlJ1Q3BGZHBH?=
 =?utf-8?B?TlVCZC81T0NzNkpVQlRWL0l5aHZ3Qk9SMFZIYittQis3UncxSFJXVThjRVIw?=
 =?utf-8?B?N1pSY0h0N3lXQ2ptVnhrZThqK0gyNTIvZ1dqaTVOcUZBNllHd3BrYVp2U1lC?=
 =?utf-8?B?M2NqazlnclNnMThuSmNqK2M0OTRRNGdmT2twenNYckdHYjRXUzZqWW9nMmVQ?=
 =?utf-8?B?MjNFTTEwM21BSVYyaVBjeE1RU1ZaM1VVL2czMHppMDBwVkxMRGtRWDhNU0Vi?=
 =?utf-8?B?emxZOTB6SUZzcTAvTVZGUThVdUZocExlS2pWQ0ZaZHZ0ZU1WYnBwOFRVdEtK?=
 =?utf-8?B?OFEvZmVNUitBOFlLNEo1Tk55WGpsNi9naC8xcXM3ZkxJTjliRnU4eTVwTE03?=
 =?utf-8?B?aGlQYmdPWjR1NDdyMjBmRWhEaVYxVXhDWXptMFJlaVduN1dLeGIzTHlGUmYy?=
 =?utf-8?B?ZWpoRjNKM2U5QkRFRlE4QnZIbzVhZC9nSEora2VYbmNSWW1ZVjFrM3hnWmww?=
 =?utf-8?B?NU8yVWVxMWhzaDY2ZU8vODBCdVJvTlg2QkJTSjk3SDB1M1pvQUJ4NFNWVWpP?=
 =?utf-8?B?eHp0NVBEMi9zTUEvYldyTS9yYjJkSjFTSnJNbHkxNVRVSU83dWRQNjZEUEYv?=
 =?utf-8?B?VExaalhsY0p5MVRnWXMrczErWk02NWUxS3hBc1orUi9QaVlxMVlFZHl0eUox?=
 =?utf-8?B?U2RvYjBtTG41NXpQdHpJUjZocHNRd21FRkNoaHFDRkY2VUZhUjhjMjIxM29l?=
 =?utf-8?B?ODd6SVlrZUtwNnJKbVNiTVpYaHhTWi8xL0dxdW1GNStLWUlYN3BSVERncXp2?=
 =?utf-8?B?aXJZbFZlVmdCZTJZSWFXZFFVWUZZdVg5QjBkaFNaUXh0VHU5TVgyd3dJNnZC?=
 =?utf-8?B?N003SktjNm94SXN3L2ZhV0ptdnF5eGVnZDRHaWlkUFJKdEZXN0xoT2Y1UVpr?=
 =?utf-8?B?bW5BRURMZ0VQam5ZZ3o5TE8yQlluRWJVUmVsWGNrTURmcE9SeE11MlRiNUJ2?=
 =?utf-8?B?NTBWYjcyUnIvVmdDVjhDeEZzeXI4TUpzak9OQ3pOWHRLQmFHeUJLelJDOHNO?=
 =?utf-8?B?cWlzckM4MnU0OUJ3N0pvd3JDZnVGSlN4ajc1ZEVoWkRhYU5EdUhhM0licXpp?=
 =?utf-8?B?emRwY1NDazB6N0pUNkxKOStDaHBXN2tLdDdoT0JESUd1SHhTQ0JRZDA3Z3ZL?=
 =?utf-8?B?ZFBjcmx0WTNjU2hOTkg0NVZFMkVnalZOa3pDUW4zem92NDBmSjJYUzJ6WklN?=
 =?utf-8?B?ZElzY29FdmltVTRkblJJYW1OcHJSY0E4L2pEOStQT2JFbW5TVjNlQkY1VHdU?=
 =?utf-8?B?NjdoSksvb2FYdFhveGM4VVh5U0s1SExkRng1VlZZSUI0K2VUZU9nd0d1TVgz?=
 =?utf-8?B?TXdEVnNaWFNEZHlUUDRXZ1NzZ0pBdm1FMmtDWisveWFuTnpOT0xCM0xVT0Ru?=
 =?utf-8?B?RFpXLzdYc3VFaVJBMzJCRHVZRXlKTnQ5MUx5dnFoWDNPeHdkUnJ1RDhodTZI?=
 =?utf-8?B?S3BDMlRGRGtXSm1QdGRvaWNKeTRzbnh4Tnc4Mk5tTFFtMDRkZ0xxdWFEY1Vt?=
 =?utf-8?B?YTZOVmVpWCtnSENqTHhLSHJHVUlnWnIyM0JYQ1N0M3NFbVdTQjVGSGxLdmZD?=
 =?utf-8?B?RzJibkxkWWdVUWxBUGpKY0dGZEJEeXpheFJSc3Z5eE9WRE1UV3hzYytLUDdP?=
 =?utf-8?B?NHgwbmxCOTZPdXhzUy93ZEdYTWVNbzNXNk5GMENPWXJ5NmtNampkNW9ud0oz?=
 =?utf-8?B?U2pvMXZZTUhxMVZTcnJZcWVEV3pLMlAwS0R0MlU4YjhLUEVEcEFlTm55ekU1?=
 =?utf-8?B?Zm11NTZhRDY2MnB1ajdmc0gzd2ZZYzdLeVd3RnhBWG85cTVBRGRDZmlUQk4r?=
 =?utf-8?B?dGxCalkwRVlRbThBMnJVMnFNNW05VUtKWi83dFlDeWF3Vm5GbjBkOEJpSml4?=
 =?utf-8?Q?nclQ0CTK7P0MrYJ96xxHNhdaT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa73ad50-6266-4b36-0f26-08db457133f4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 09:41:11.1681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LKK42POjyLTs8n2NHPlEr4EgCv8FG99n+YsG/x1bOgeGfXWbZ+T15i4F1Ls5Iak/lQePGSz3VrHqSR2tzj9wJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5998
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682415689; x=1713951689;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DunDrJz8v+LySyZA3qyGGYmxfbIU290VlRRd08dRa+k=;
 b=byW6CPnPqXLV4+V/rj8Jyxo0ozNhtexRRObZJ263i6N74TT85bD2pD+K
 VemexUtHeMYvFauzoqYUDxAoLjYq8iS4QACmlb6hTVF/rq1nFdmXw74aB
 JbPAY69fVCdeFbySfXHlyyDD301bPAFtqmhYZetHD2gkN5sBsiPH4jGjI
 K8bw+/gmHLCrnMQ74kKSNey2C7qcP16x2W4yZlBBspV8QtgSDH+cEs7AB
 M/e5S0cgR39N/WoWe6o1w+/Hu8i96WNHtcDF2fEyDRnaSCpBP4duWqVpW
 0Yc2yinDBauRh2BOtE+kkIeL0VegS5RMEu3rZFnVpaAgE8lwA+Rz+dagY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=byW6CPnP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 1/5] igc: enable and fix
 RX hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, larysa.zaremba@intel.com,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>, John
 Fastabend <john.fastabend@gmail.com>, ast@kernel.org,
 jesse.brandeburg@intel.com, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 edumazet@google.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 brouer@redhat.com, kuba@kernel.org, pabeni@redhat.com, hawk@kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8yNS8yMDIzIDExOjQzLCBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIHdyb3RlOgo+IAo+IE9u
IDI0LzA0LzIwMjMgMjEuMTcsIEpvaG4gRmFzdGFiZW5kIHdyb3RlOgo+Pj4+IEp1c3QgY3VyaW91
cyB3aHkgbm90IGNvcHkgdGhlIGxvZ2ljIGZyb20gdGhlIG90aGVyIGRyaXZlciBmbXMxMGssIAo+
Pj4+IGljZSwgZWN0Lgo+Pj4+Cj4+Pj4gwqDCoMKgwqBza2Jfc2V0X2hhc2goc2tiLCBsZTMyX3Rv
X2NwdShyeF9kZXNjLT53Yi5sb3dlci5oaV9kd29yZC5yc3MpLAo+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAoSVhHQkVfUlNTX0w0X1RZUEVTX01BU0sgJiAoMXVsIDw8IHJzc190eXBlKSkg
Pwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQS1RfSEFTSF9UWVBFX0w0IDogUEtUX0hB
U0hfVFlQRV9MMyk7Cj4+PiBEZXRhaWw6IFRoaXMgY29kZSBtaXMtY2F0ZWdvcml6ZSAoZS5nLiBB
UlApIFBLVF9IQVNIX1RZUEVfTDIgYXMKPj4+IFBLVF9IQVNIX1RZUEVfTDMsIGJ1dCBhcyBjb3Jl
IHJlZHVjZXMgdGhpcyBmdXJ0aGVyIHRvIG9uZSBTS0IgYml0LCBpdAo+Pj4gZG9lc24ndCByZWFs
bHkgbWF0dGVyLgo+Pj4KPj4+PiBhdm9pZGluZyB0aGUgdGFibGUgbG9naWMuIERvIHRoZSBkcml2
ZXIgZm9sa3MgY2FyZT8KPj4+IFRoZSBkZWZpbmUgSVhHQkVfUlNTX0w0X1RZUEVTX01BU0sgYmVj
b21lcyB0aGUgInRhYmxlIiBsb2dpYyBhcyBhIDEtYml0Cj4+PiB0cnVlL2ZhbHNlIHRhYmxlLsKg
IEl0IGlzIGEgbW9yZSBjb21wYWN0IHRhYmxlLCBsZXQgbWUga25vdyBpZiB0aGlzIGlzCj4+PiBw
cmVmZXJyZWQuCj4+Pgo+Pj4gWWVzLCBpdCBpcyByZWFsbHkgdXB0byBkcml2ZXIgbWFpbnRhaW5l
ciBwZW9wbGUgdG8gZGVjaWRlLCB3aGF0IGNvZGUgaXMKPj4+IHByZWZlcnJlZCA/Cj4gID4KPj4g
WWVhaCBkb2Vzbid0IG1hdHRlciBtdWNoIHRvIG1lIGVpdGhlciB3YXkuIEkgd2FzIGp1c3QgbG9v
a2luZyBhdCBjb2RlCj4+IGNvbXBhcmVkIHRvIGljZSBkcml2ZXIgd2hpbGUgcmV2aWV3aW5nLgo+
IAo+IE15IHByZWZlcmVuY2UgaXMgdG8gYXBwbHkgdGhpcyBwYXRjaHNldC4KSSBoYXZlIG5vIG9i
amVjdGlvbi4KICBXZS9JIGNhbiBlYXNpbHkgZm9sbG93dXAgYW5kCj4gY2hhbmdlIHRoaXMgdG8g
dXNlIHRoZSBtb3JlIGNvbXBhY3QgYXBwcm9hY2ggbGF0ZXIgKGlmIHNvbWVvbmUgcHJlZmVycyku
Cj4gCj4gSSBrbm93IG5ldC1uZXh0IGlzICJjbG9zZWQiLCBidXQgdGhpcyBwYXRjaHNldCB3YXMg
cG9zdGVkIHByaW9yIHRvIHRoZQo+IGNsb3NlLsKgIFBsdXMsIGEgbnVtYmVyIG9mIGNvbXBhbmll
cyBhcmUgd2FpdGluZyBmb3IgdGhlIFhEUC1oaW50IGZvciBIVwo+IFJYIHRpbWVzdGFtcC7CoCBU
aGUgc3VwcG9ydCBmb3IgZHJpdmVyIHN0bW1hYyBpcyBhbHJlYWR5IGluIG5ldC1uZXh0Cj4gKGNv
bW1pdCBlM2Y5YzNlMzQ4NDAgKCJuZXQ6IHN0bW1hYzogYWRkIFJ4IEhXVFMgbWV0YWRhdGEgdG8g
WERQIHJlY2VpdmUKPiBwa3QiKSkuIFRodXMsIGl0IHdvdWxkIGJlIGEgaGVscCBpZiBib3RoIGln
YytzdG1tYWMgY2hhbmdlcyBsYW5kIGluIHNhbWUKPiBrZXJuZWwgdmVyc2lvbiwgYXMgYm90aCBk
cml2ZXJzIGFyZSBiZWluZyBldmFsdWF0ZWQgYnkgdGhlc2UgY29tcGFuaWVzLgo+IAo+IFByZXR0
eSBwbGVhc2UsCj4gLS1KZXNwZXIKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
