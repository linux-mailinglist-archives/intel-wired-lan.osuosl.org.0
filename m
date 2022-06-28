Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B933455F168
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 00:35:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6159C409F8;
	Tue, 28 Jun 2022 22:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6159C409F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656455718;
	bh=No0afOg4YZknpSZ4h17idkXiuhCyaOSZk2HHIYqKO2A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RPu5mDGVTc8j24PmP28Goah+xr75yGOpYlCiYhRKGAJ2jVxhpOSgEBhnWZROgQExc
	 Zp4RlAIys8bPIqD7/M9wKgAX86QQ0bb7n6nNVFftgugx+74LfdivucU1vk+kFePOxI
	 QLK7Rrdi0d9UkS10p8+bBFzEKyZNX+PV0LHECsqAK/h/UUnTJHIyDSOBSlxLA2UahI
	 Z+133MrDTj3HLAtKBFBqLwOWJQe2Ped3e8ZyFSD735RMPJtBsZm08ZVJjBWV52dmdh
	 YKHl0Bwa74e1Yzi/xxqX2zzqIdFcMo108mekiTwz/d5LZSHwWprb1CYf8D4n3zjf+V
	 TGZQgFFSjqRdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FT73CzHKKOnW; Tue, 28 Jun 2022 22:35:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 030FE409EE;
	Tue, 28 Jun 2022 22:35:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 030FE409EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13A891BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEC0C409EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEC0C409EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ydYsxutUF4tT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 22:35:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B52C409EA
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B52C409EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:35:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="270628421"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="270628421"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 15:35:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="658306122"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jun 2022 15:35:08 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:35:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 15:35:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 15:35:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZNAa2jlLd3crNW10YLBIB2OUMbgP/ZWhr5tV3ST62i9hJDmqlVcATl6T88PdEnrHDg+e7nnsuKe7GmCwuqOosiVzI2cg4jJF5pViQLK9H4aIT5c5EF4POd7bObusPRbGWzBP2RoEJYznYoNhn4TsxaG6ojaW9pT7P069qxK9KrL7eBbNCOyDuWpLq7FMgJYyxwU1/Gn4H3VbKemzjKrzsEU5jtcnEx+T2O2hn915Qkk/swws9DtLUCwsHOjMJECtfaQELiEz5xES3UgYZL3b/N0r6+9z0VIdmGX55ydPVGgLMvarB0+y1lRoipfv8/stCp2RmCgl8ObmKdoBQIHzSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IKm8U7gt7krb55ci0DRlZ8XiYp36VSFfcNTfm5sjWCo=;
 b=BB+7eynt6uvzdyJoRiCoj3xgCL45iS2eJRcselnT/4cnKXWfcJeYBXhccZFX0s+g/Mb9sFZqyV/Ra9PBPdDTBzM26R1J05ASCXKsAmo8b9O13+Ew0MEpL3wOvX6ZWL30bL3fRyyRkJ9Wdw9Jlfxs6TlyPVzr0YZy/9WrFS38xi7W6U6jaBxDPW4EUD3ypbCBvty07uxy2mGnNPytF+EzG8ImoFSQ6UA1X4WKW1PG039dvJuZz7+fuj47cqSHA8oPus4Hlt/sDzMSjy04qnbaKFyZ2GjrWd7pmINukRBMWVXurs9vpjNLM/NTLP9vtmd9dIqWDDMqI+nBueBSnhr6Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH2PR11MB4325.namprd11.prod.outlook.com (2603:10b6:610:3e::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Tue, 28 Jun
 2022 22:35:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 22:35:06 +0000
Message-ID: <b4c4fbca-10cb-8d11-c58f-8dfc129b90dd@intel.com>
Date: Tue, 28 Jun 2022 15:35:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220628123350.677880-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220628123350.677880-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: MWHPR1601CA0012.namprd16.prod.outlook.com
 (2603:10b6:300:da::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c5dd69a1-70b8-4c29-347c-08da5956731b
X-MS-TrafficTypeDiagnostic: CH2PR11MB4325:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NVIFDuWi3nPub+oUcJu+6MRvj8KPDtUK2/D1iNPMipo5ulHz3V5eeyXvdUdruB98EB+TSUMVY4wJpUEKDq5s3mjnCRl+BaetC9NpBu1wa6yqZPEWrTizQUhosMwq+zPVXm5NsmPr0GHD7O5TD+B8BcZ4aKfphWOpc7RQiO8J9PeIRpnzm2AKNNOjehxsy/yyPXsA+i7r/ZU3WU9CrtBwfGNYicnDL0FC5mfDyTvDtLl52cCn82Ouoez3oPGjOJwntG4EFZVq9k0JuqJ5J3gHX7wFR9IoivxvYbPmh9BwT49oI1TbjS05Nn5hgowkfBoTZGMCfNc5pIkrRiUA7pE/hPdwW/eIeJ3WTo9g51vSo14BmNzKzG+4/wUeq4C46vug4wDnsBLldT8lYDVaBYMv83/Sjyhb8wEMdeUa6QFjbIYN1QfY73YEcZgg4Tv6E64F+P6qdtOfLpFpOUcZaiprUzyoKkcwgZZgr678+s1wF+RQPGsVbz4eEC/1D3TCVdRoIVYM/ZYVxN22fbwFwU8AqMqmbLNvrjSSha2Ed+vDvYBqnNj1bvu74aU0lD2B6kysjs3JNgtyW1e3SERhf1wHNqJDyBnuOHFl8yydkajY84oFRB9d8WqRcEt9iaUmx+x/ay5zfh8QzgcR6R5Y/wj96ppjZ6bYwmtnsDIareTteXSyFK8O3jxcPBxCL/4Zt8G6OCXullUEiRJABXaDE+WK37yuQDzT3nz5NEJzPAcqgs3dQzexO+JuitSShRt/UzShKi/pzopIqIZbgSzYu183/Ufz/pygOWdMJGQ9uF5PJfoe1CqYAw7zcOD0JrOlQo4TUVuCiKgQ4mcB9NTfamn7l2bXbRnyoNOYSsXAD48gCvzVEHUNZbJRetOoT+s3YzNKxf2MZH4oTB14bpmQsZhepg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(376002)(39860400002)(366004)(136003)(36756003)(2906002)(86362001)(2616005)(6666004)(41300700001)(478600001)(31686004)(6486002)(966005)(6506007)(107886003)(66476007)(53546011)(4326008)(8676002)(26005)(8936002)(66556008)(5660300002)(31696002)(316002)(186003)(82960400001)(83380400001)(38100700002)(6512007)(66946007)(131093003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGJSS0oybXRKbGRGS25KaExvdlBDVWNQOVpRZUN5dXFEaUlGNjE4OEUxNmsx?=
 =?utf-8?B?TDJILzZqZ3RtNyt0RFRSVFJkcHBsYThXQ3RqZE5BVEtqdkV4TGkwWkRLSm56?=
 =?utf-8?B?SEt0S3lyRjhSN1ZYV3ladDRyYWx3bzAvb3hYOGFNUzUzU29jbXMwb1Jxdlk1?=
 =?utf-8?B?U3VGVW91bkNPWnJXTG16T3U5TTFrM2YvYWt6SzlYWUtpM2tRZ3NFdmVEOG9S?=
 =?utf-8?B?Ym00cDNKQkt2RHlvTjUwbDJqZVZSbnVCckk0ejdleFVpSHM0U3pmR3paRlBE?=
 =?utf-8?B?RzN3U3MrNTVuUjBtNTkvcW1uZnBXSUF2N2xneTBGK2tQd0p0YmE3VGw2M21C?=
 =?utf-8?B?Q1hpY21vUjgrL1I1Yjc2UkJUbUYvYnUxeFBoTFBoNHhwMGFaTW83OW5RMFpK?=
 =?utf-8?B?aVVGUUlmekYrbkF4cXFycFNrRWhGK0FvVGtaakxlNUR3N3FISGtDWW1UUCtk?=
 =?utf-8?B?OVFFSHFXOTd5VlpVYTdpZEFReGJIU3JxL016bC9qZzllWVk0R3hzV2VpMzZJ?=
 =?utf-8?B?ak5VNmhoVW1hWEhJR1psYnI2M1c3azQ1YmxFSGJaeGxOS0JxRUNlRW90Ull0?=
 =?utf-8?B?NFBsNGdoQmRiZkR6UDVCdTFQeDd5eEI4dU9JbFBvNUk0K0lVY1FTNlFja3JG?=
 =?utf-8?B?ajlwM0tlRVB1c0lBVjdINUcyN3dpV3R0c3VGMTVMZ3U4VjFrQWZ0SUdUTTU1?=
 =?utf-8?B?clVueWsrRGwybHl0dndNcHB4UDcrcHQ1YUljRXphR2Jvb2RsTE5BdlI0VDZl?=
 =?utf-8?B?ajlSY0J5cFVDcnZ0VTJ2UEJ0WUIvR3Z2M2xqd0QyWlYvRWNUc3l5c0d2SUNE?=
 =?utf-8?B?ZHZucHFWU29KK0RWT1pEN2RwVnJlbDI1K29nd1RKaFk2akVuQ09pbElQT2NR?=
 =?utf-8?B?ZHN1ZjNnNDJlT0tjVXI3NC9BZkJVU1Vhams4TGtocTA4cUwxbHl2OU8vNWY5?=
 =?utf-8?B?YldDRm5ZNEdiZ0E0Z1E0bW5xYjlVVUJmZ0ZTeG14WFVzbHdsblFseG92ZlN2?=
 =?utf-8?B?US9Gb1NYcExramJKemtjc1pqejlvTW9uZEQ1WE1NejZNWE04YlhuTDF3NzRT?=
 =?utf-8?B?dm9ONThLbGk1NHU2c1VaQ1R0eFNIdjhocDN1R1hJUTZta1MzTlZrV1dzRTkr?=
 =?utf-8?B?MmpTYkxLQ0pPd1NvWjhYTXI4WExrQlkwY3R4Q3lvQ3lUL2pqNTQ5QlpSdVFY?=
 =?utf-8?B?MHFNY1JJMWM3SDhBU0RkWkF3TXBsYWRiUWF1aDFiN3dzeHoyeFBzbHZKTDA2?=
 =?utf-8?B?V2VJaXVzUEpVMk5hWEdMRm5PcVRyanY3OFE4a3ZDVCtOa1o5a1lueUhuVzJK?=
 =?utf-8?B?KzNKK0g5Nk11VEVDcEJmSnJvakNOQmQySWRNOXhNSlNQd04yb3BmMUNHREQv?=
 =?utf-8?B?bWN2V0FSYmJ2VlBHckN3VHh2WENXS3h4ZVlFTUpZMnA5YzNkaldYQ3VBWkZW?=
 =?utf-8?B?ZkE2RHczWGJJYk95amNVS0ZaaWhndUlBWnkxa2dLVnBYZWRkLzFnZ1JHU05y?=
 =?utf-8?B?TzV0OEhVcEgwaWlVeWlObmJ4WjErQ0tIQlZhSU82NVFMVkJ2VHpDdXFOSk1q?=
 =?utf-8?B?dTZJYXhjdklFRHl2aFhtWWx4SFUxaVl6VFFEZnhxMEZscU5JSWNqc01PMm5X?=
 =?utf-8?B?MWdDN3JkcEMxU2hhR3NMOTEyblJORXVRSGhDOGY3TFZRNUVSbWNMWlhqYTFr?=
 =?utf-8?B?S29ZWlNZM1VnSGJ5SjF5VE9WQ3VBTzRFRytmUXFNMjFVZHZHYVl2YzlGTVRh?=
 =?utf-8?B?cFAzZWoySnQ5dkdtd3ZqUkJsYkxWRE1qUlBmc05PL2xKZHRubWRSM0FmUTBF?=
 =?utf-8?B?ekplRjlPQ1dveDZzZ1JZK04rbkUyS1dHMWJCTmp5d3Q4YmpDMEpKbVlkV09U?=
 =?utf-8?B?R3V4S0gxRWR3ZGV0ekVhOHQxMmJnQ01qZENPVktERkJpWjNITW9RL3NDV1NN?=
 =?utf-8?B?NFFOc0c0ZmRYYm9FY0pJNGRVY2RTRHMxdnh0aC9WWEJGaXFTM25ibEllMWlL?=
 =?utf-8?B?MFFYam5XN2tYV2x2b1h2aUw4cktsOG9OYnVYSXh5NmwzNDUwK3IveFFaem9s?=
 =?utf-8?B?bEVtQ0VCTDlOWVdYamFNU3lvVzJOUlMxVlI1eXk4SVI3STR3MW9oMC9aSmtl?=
 =?utf-8?B?bVIwQWptVzJPaW1lbXIxelQyVkNpRld1dFVnTVIza1R4YXppa1JyQjZFNEgz?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5dd69a1-70b8-4c29-347c-08da5956731b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 22:35:06.0818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XRqilLGiwoZ8In4WVPVqMtkiOel4wxA5ndpEvt6HzljEFhH2/ya1+NqmzJ1Fic63Q1ZzcCiyAjYpTQcjzmpxetwXTdbtfa+w3CoQGGoq9A0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656455709; x=1687991709;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9sx2W1JuyF1WNOOy9Veh3rH5Rlpm0RuVvkqLvXbFP6k=;
 b=cGQIn3taYzGcBlEy2gMvnVD/Q5MgAEHAtMhCgJ6dVeRkI3d2W5Qnh2/6
 r1TX1YzRnMR/+RsISL/mSt3A5w0kscyRXHtVKnAyl66TC0hTHGLrPCTp/
 LqE035KPFX2qINGYuOYUj7dC1jCHzteQlLKFBFW5sgkYUwRExVSQHMc1t
 yHi6AjxJe/RVtYSMADfy7G6lcBN/HajKUNKHV+995hbppW9/9IJnoEkTm
 EJY0bnZUiR8irYVGlUoLFKmj6uRzeSK8nCy0falUCreoiIn892o/WodXX
 PNwnNzjQ7Y5XBZkqN7OmwXt5zxKxc2q/bKEdnNKqrnyBmLO4iDVdWMzdY
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cGQIn3ta
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix max VLANs available
 for VF
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/28/2022 5:33 AM, Palczewski, Mateusz wrote:
> Legacy VLAN implementation allows for untrusted VF to have 8 VLAN
> filters, not counting VLAN 0 filters. Current VLAN_V2 implementation
> lowers available filters for VF, by counting in  VLAN 0 filter for both
> TPIDs.
> Fix this by counting only non zero VLAN filters.
> Without this patch, untrusted VF would not be able to access 8 VLAN
> filters.
> 
> Fixes: cc71de8fa133 ("ice: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2")
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

As Olek pointed out, please fix your email settings [1].

From:/Signed-off-by: email name mismatch: 'From: "Palczewski, Mateusz" 
<mateusz.palczewski@intel.com>' != 'Signed-off-by: Mateusz Palczewski 
<mateusz.palczewski@intel.com>'


However, based on ordering, shouldn't the author be Przemyslaw?

[1] 
https://lore.kernel.org/intel-wired-lan/20220628141911.1403944-1-alexandr.lobakin@intel.com/T/#m20c8d8eb342f31bdbf88f1976a484a04bf049554

> ---
>   v2: Changed fixes tag
> ---
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 4547bc1f7cee..24188ec594d5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -2948,7 +2948,8 @@ ice_vc_validate_add_vlan_filter_list(struct ice_vsi *vsi,
>   				     struct virtchnl_vlan_filtering_caps *vfc,
>   				     struct virtchnl_vlan_filter_list_v2 *vfl)
>   {
> -	u16 num_requested_filters = vsi->num_vlan + vfl->num_elements;
> +	u16 num_requested_filters = ice_vsi_num_non_zero_vlans(vsi) +
> +		vfl->num_elements;
>   
>   	if (num_requested_filters > vfc->max_filters)
>   		return false;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
