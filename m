Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B30786999BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 17:17:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38EA5616C3;
	Thu, 16 Feb 2023 16:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38EA5616C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676564276;
	bh=BELwwnKhsGvPkw7FQxd4ZRq5dBgbI1uiD2qJah0Egz4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dVcGZ5W7awsd9bgQsT/KBBURmtMxSi9oiZ54qaRa14OkMSK38U1RIylb0PCyJwUzu
	 ZRj4jSsyV+qNczHJAkit6hbDqbl+X4rsRA4zQAgER5Ec89eIefvh7uYSd2NRbXm9pO
	 udSrY5M52eFM1Um9IZeHVZKRBGVIuBHJGsrKAlh3gIXrJyJOkl9waCqCURemZAr4sm
	 TxSyWfTIJSpPJQjZikQDL4s1l+TOx1DfsRBISTIJnyEdZhFjRB6EennbvwKEDZ0gzx
	 k5UNC4gErQQ6poDzHLX+jJuJ/+B336Jj3DWr6DwXqyJ3TEIZQDsc3p5UnVmkvkxVal
	 2f7aEjBWR54rQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5AltXoiCgKhf; Thu, 16 Feb 2023 16:17:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7249612E4;
	Thu, 16 Feb 2023 16:17:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7249612E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9E511BF30D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BEEF340414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEEF340414
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HFvT0RHaJiUh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 16:14:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC333403E5
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC333403E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 16:14:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="394196683"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="394196683"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 07:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="779385181"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="779385181"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2023 07:44:39 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 07:44:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 07:44:39 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 07:44:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sh2TfsAdB1lTMqiYZXSrHC3qSkFd4cZ0aZnPYpzID35RZnmUS7Zzd+ImYykwz86ELUBbFsLEnV3+kde7BWSnRzKzcMmrA0/U3QnPPuYJ/m7rEVpIKWKUVDSshGRJ2KCAuuxShiv3C5clLscb2DWYKfTOUc0XkekUdkZQvDUKwIvAF9CmIKoHWzmhMPWLEnytju1qKurx/UCvAHM3+3muei76v7IKA3kUZhodGR1Yq1YijpVPGooDLj/YRYjzlORdUyvkVJP89Z5TtFwUpi3tmLbpsNlAbMQ6z9glK9jfxxoSgYWrrK3o1HeBjI6NuDYTbR7vSxR29y5mSORK0Et/kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgSVWejAng6NyJFHEm6bIyiZ7GfzfJD9y3CtPy3LAbA=;
 b=ZxqKzHfbVB50PBQyIlFW0twQcXGVD0myobBy7dD4fZzq8kGPvzA1N37oybOE8af1BSoqDmTxiuW8P5fRuON7Jsf2o1siLMcgSy7dVHWXMqALUKeDkdKbyAjs+055ygTulCDExFRmchVRZlvzVOvA80riT4EHem33oi2Ny+8BF2wp4nn9nq0ygtv30OrzP2TddGU+Hbv+1T3Ho8Q7b2lggCTwOwrSJf6d69mePXCWnyBBGCk/pSrE1n984uf169JI6N7rKFJ79dxF8lTa5b6cfvAH9PfEC2me4mrzgg2n0y8kwH4by0XvemaHM56rwExWBROtua0twQ87Z+Rkf/9irA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BL1PR11MB5255.namprd11.prod.outlook.com (2603:10b6:208:31a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.27; Thu, 16 Feb
 2023 15:44:34 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934%4]) with mapi id 15.20.6086.026; Thu, 16 Feb 2023
 15:44:34 +0000
Message-ID: <a499a5df-e128-b75f-50d0-69a868b18a71@intel.com>
Date: Thu, 16 Feb 2023 16:43:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <167604167956.1726972.7266620647404438534.stgit@firesoul>
 <6a5ded96-2425-ff9b-c1b1-eca1c103164c@molgen.mpg.de>
 <b6143e67-a0f1-a238-f901-448b85281154@intel.com>
 <9a7a44a6-ec0c-e5e9-1c94-ccc0d1755560@redhat.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <9a7a44a6-ec0c-e5e9-1c94-ccc0d1755560@redhat.com>
X-ClientProxiedBy: FRYP281CA0001.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::11)
 To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BL1PR11MB5255:EE_
X-MS-Office365-Filtering-Correlation-Id: c2008fdb-ae5f-434b-be98-08db1034b36e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5q/jXjJi4M/qOAHiBdyVwwYRal/PTUQdbPg+UknBV6soTLh9C1WT5XiOHcu4nmkdlukSlNVjgV1QZ+CV04sdxH1kp+fI8TsqbvB7f6huR4q7qa+TNCHyMJSNOHpkHHXTrZYVqctJgvrfBKTNDVP4t4WXGRRaO4eId9kYqUaeu9pQIpy1D9SoQ7jmEIBJDx2CJqE7H4nKFISdzAf7vcMtnA97qw+UUPsRguE5aLp9l9rC8/QC5f8M2K6agdxLXn2bXW2qRgXdGS5Rk34hqKtFF9j3UfHPEZibeQodF2VoKS7sKfZ8Ju9zbpl1RvizOpegsP6JDzd4acXRq43GZZOlvwjEWlCUjAd77UHGmQQ1XbxVzNURGQ7mjSBx2ca1QzQ1/98nLBUWV1dhh33Sz0lpV+YUmYPEoNI5UHafWWs4Kav+MqraeHdcaXrGtrGHUCVhUNibwx4HU5AsswQ+8Eg3auU9ytph5iMlZFsuTknv4IfK45ET7JR3UGN+CA6usvvUwgARu4WMDbCBJLsn4eD0GnPNLyLZt5TpEuFjIRbRIB5Sg175tFDLDokxagicRACYY0NSUk4YOqCzUuiCzBjPdqTlcMp4RAQcLBLCrOy0MrAcYzT0HLnqqFovt0H6A/2fWSwsf6wXXTc2/f3ZIPXHo6uFV4Dia7hg/elcL6y28FhKc/lZZKx6hCwBzgW9SbZvPfCl0E2kJw7q0X9KES5aahVOu0eJk0By0yb/KJl74eG/V++eW9kMduA3HPCv6jYw04anKFMpK1sJ6w7DSsCCrw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(39860400002)(136003)(346002)(366004)(451199018)(82960400001)(966005)(86362001)(31696002)(38100700002)(6486002)(478600001)(6512007)(6506007)(36756003)(186003)(6666004)(2616005)(26005)(66476007)(4326008)(8676002)(66556008)(6916009)(66946007)(2906002)(5660300002)(8936002)(7416002)(41300700001)(31686004)(54906003)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXJXNS8vVjdKYTg2aFRVZ3RRNEJIU0NKYmNTWVFUQnlOa2lVUjJqbXdWVUZR?=
 =?utf-8?B?eWJ0MWRvM3puazJjcVRQTEZ1M3RzZmM3a1gxMW9jQmphTGErSlBnZUdDL0Fi?=
 =?utf-8?B?cndwZ0pRVnlvYkRMNmQxVkFPMkNnaVlwelpsNkkyL1JwMm9lRXpuOFlRaEV3?=
 =?utf-8?B?V0VDdEJweTBXdHdpUnlwRGtNcUFRWkpqRUx1amJPaTNmeTdBTi94VW1UbjR4?=
 =?utf-8?B?Sm1pcFV2Smkrb2pxbHFRY0VQVmd6VlQwb3JqQUx6WDRKSnNxNzhHUXc5UEJx?=
 =?utf-8?B?Vnh5ZTNGTHI5QUFua0xuejlGajNTcURVWlFaSnVzd1dDaUxLSHpUdWZOMDNi?=
 =?utf-8?B?QWEzNlBtNlhLa1RuK2FWcGNqclU0a3RRZkFLckpQMlJtQnhaMVUwajk5MnRQ?=
 =?utf-8?B?dHJXbm5odkYyZVBqemZrb0NDQXJQMlBXMWJscEtIcWgyYy83dFN2elB0akIx?=
 =?utf-8?B?M0pYM1hpUk1MclVlTGdMNlZBV0pYNnVmbjIzQXhwY0pSUlViYm1OQ3RiZE45?=
 =?utf-8?B?eGJMSXRjZnhQQU5LVGtURWErMnVaYnlPRzc1V0IzUTdtSDRRSHFzZDdoWTg1?=
 =?utf-8?B?bnVxWTBWVWpyZkFzOVdja0VIWXp6Nkp6Nkovc1BKbkg3Y3g1aURmVkFoTDg2?=
 =?utf-8?B?SFZZU04wVnZqUStaRTlPZXdEL0hiQTdGRVZ1SlV0czYyYWJCdUo3d0hrUnJD?=
 =?utf-8?B?cUNwem8xckJ0RXp5anQ4dHFZMXpLdFd2aC9OWm14ZnplUUhRb2YrdGMwQWpv?=
 =?utf-8?B?L2VZaU5paVBoRnhad1lQWktrUTZzTHljYjJGWXdZd0F2VzAzTzJWeTBkNzM5?=
 =?utf-8?B?a3VkTS9RWXZic1pNdWoyMVA1Q0FKQTZwWUQ5K2R0K3NVY2ltYUhOUThTYjlp?=
 =?utf-8?B?akRNdWZaY01ET295bHUvUnlva1lJZ3FOQjJGM2lnZ1ZQdFk5M29vMGpZektv?=
 =?utf-8?B?dG5WVWVMZ2QwNmZwcDQ1NFlOKy9rbFVjc3pBZVUzY1Q4dy9CaUdCQlhUMGxn?=
 =?utf-8?B?Vjl5V0xmSUJiL3c0VW00aFYyK1lROEdvUTVFWHVNeVVscW1XTlI1OVQ0NGNT?=
 =?utf-8?B?ZTBiSDlkK0tmZlcrOW5vbkdLaWdFRGJrV0pEc21EWmhVcERyOCtkNkl2UEly?=
 =?utf-8?B?NWZZd29idlYxRXBELzJBWWFQNkJOV1lSWCs4UzRUMlM1ei9FekFsM3NyU0N6?=
 =?utf-8?B?QllPRjYvRlNBWEplRzQ5U05PL2huZk5oZUx5YUJNaStmY1JUWjA4UU5aNjNL?=
 =?utf-8?B?eW9PZlZ5dWVSU3V1OTg1YVFweGZRSW1ZR3VxV0JWOVlNOFJWWmFUWlp5dVYr?=
 =?utf-8?B?bHdvOVVkc3VJNHgxTzY2TCtxenE1cmNodUFWUC8rMzFzZlFnTWtBVkwzYVhM?=
 =?utf-8?B?MVh3eHBLNlR4azc0QTUvRytkdEE5Z1ZDOS9BeXVVUkdzTHpmbzBBTzVsanV2?=
 =?utf-8?B?dDBnbEw5b0NzRlF6cnd1aTRYT0pJVDJaNXBYOEFFV0FyMVR0RHJNZzl1aExh?=
 =?utf-8?B?eVJLK2NYbUl2eE1taWZzQncvS2JBeG5tVFB4b3JzNGpsclRuby93bThzVHcr?=
 =?utf-8?B?ZWxTV1ZlOExTbzc0TTJlWU8xVlI5b1J0S2FiSjMwM3gzYitEMGpTdzY4cGRk?=
 =?utf-8?B?M0ZiZE5nYk1rbGVSYzR6V01hM2o4b2NmaW5tbUFpT1NGYm54aW1paUJTODA0?=
 =?utf-8?B?Z0dBMVBHbVBKYnVMN1JVNlFVTjRYWk80Zm9qalZybjNBNFdmc00rTUxaM1Jm?=
 =?utf-8?B?QjZSTWFibUZzdnVaK3hjcW9ML1Q0WklLOTNQTFdGWXR2TFU4bHM3b1FLaXRx?=
 =?utf-8?B?MkQ3SnN3VURjWkF3YmxoS3I4SE5oRllTSzRPOGVRMXBHZGo0UFI1OGhqaWtW?=
 =?utf-8?B?eFcwQzR5Qm1pZlVST096ZGY2ZGpLOExwTUZ2aVEvOXhudkk5UFY5Yjl5d0tw?=
 =?utf-8?B?bnd1OVBrVFhTVkQxYk55dElvTmRwYmtFNXJQdEhGWmVEaXpKS1VsZjIxOCt0?=
 =?utf-8?B?b3VzUE9sVXRSR0ZBMDZqeGNxY2F1OVF0S2pmZmJQN284aWJkaExIc3BQYVdK?=
 =?utf-8?B?TUtGU2ZtdnMzbEo2TmJ3TTFXbyszbjVKcnlzeWVOT3ZlSlN6UkFYRkMyaEVQ?=
 =?utf-8?B?VjQvZGdxN1RKU2FtajJ4Y3BvYUN6eDFFMGpPc2Jad0NpVmV1VGRkTGFlMVZa?=
 =?utf-8?Q?vC0wuogzLoQt6puNIiyzpTA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2008fdb-ae5f-434b-be98-08db1034b36e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 15:44:33.9499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VPxw6tfD1+SV82r7jE8JPkaPKvsbYcm14Lnr1xl0Rdd2k39V+QxPCztaFdxMbdzgfwb/YgzajOvT2FIOQy6pE/wKUxnn2cP0vSLVGzuh/MI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5255
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 16 Feb 2023 16:16:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676564054; x=1708100054;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tE6PdIcuKACghtwQfyMAzmGcT3BCn5M/IIEYggmqBic=;
 b=ZbvE835WjBfGH68NzD7NmrQczGLePLjFdWd0OBCyTGTtlkXZA+9qo0cA
 mVVGIk69Oj0Xwvm2SBTevfbspBm3dVE2FOvEGG4ugxj7TrgngUgaXt4IS
 UHhicDt35NK9SE469jsmerq3dDwQiTqzrde3hxJUM66LWolRc588i+ppp
 mkgrOuupl0+S6AjbuTah9nvzfSavpHQ1WcbHViRBoymAS9msNKRTiZ6Qi
 iDRtHjqE/y5xV2MQWnj8Bm/8jLD3bp7Fdka9zt/51lulgJIz6NN91Pjwu
 wHYfV+6m2lHveUS0kNVEJUnRJ6MV2EGJC+S3x2mFpdx7Vf2TWHCJ4YNcf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZbvE835W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH bpf-next V1] igc:
 enable and fix RX hash usage by netstack
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, xdp-hints@xdp-project.net,
 martin.lau@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 ast@kernel.org, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8amJyb3VlckByZWRoYXQuY29tPgpEYXRlOiBU
aHUsIDE2IEZlYiAyMDIzIDE2OjE3OjQ2ICswMTAwCgo+IAo+IE9uIDE0LzAyLzIwMjMgMTYuMTMs
IEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+PiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBt
b2xnZW4ubXBnLmRlPgo+PiBEYXRlOiBUdWUsIDE0IEZlYiAyMDIzIDE2OjAwOjUyICswMTAwCj4+
Pgo+Pj4gQW0gMTAuMDIuMjMgdW0gMTY6MDcgc2NocmllYiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVy
Ogo+Pj4+IFdoZW4gZnVuY3Rpb24gaWdjX3J4X2hhc2goKSB3YXMgaW50cm9kdWNlZCBpbiB2NC4y
MCB2aWEgY29tbWl0Cj4+Pj4gMDUwN2VmOGEwMzcyCj4+Pj4gKCJpZ2M6IEFkZCB0cmFuc21pdCBh
bmQgcmVjZWl2ZSBmYXN0cGF0aCBhbmQgaW50ZXJydXB0IGhhbmRsZXJzIiksIHRoZQo+Pj4+IGhh
cmR3YXJlIHdhc24ndCBjb25maWd1cmVkIHRvIHByb3ZpZGUgUlNTIGhhc2gsIHRodXMgaXQgbWFk
ZSBzZW5zZQo+Pj4+IHRvIG5vdAo+Pj4+IGVuYWJsZSBuZXRfZGV2aWNlIE5FVElGX0ZfUlhIQVNI
IGZlYXR1cmUgYml0Lgo+Pj4+Cj4gWy4uLl0KPj4+Cj4+Pj4gaGFzaCB2YWx1ZSBkb2Vzbid0IGlu
Y2x1ZGUgVURQIHBvcnQgbnVtYmVycy4gTm90IGJlaW5nCj4+Pj4gUEtUX0hBU0hfVFlQRV9MNCwg
aGF2ZQo+Pj4+IHRoZSBlZmZlY3QgdGhhdCBuZXRzdGFjayB3aWxsIGRvIGEgc29mdHdhcmUgYmFz
ZWQgaGFzaCBjYWxjIGNhbGxpbmcKPj4+PiBpbnRvCj4+Pj4gZmxvd19kaXNzZWN0LCBidXQgb25s
eSB3aGVuIGNvZGUgY2FsbHMgc2tiX2dldF9oYXNoKCksIHdoaWNoIGRvZXNuJ3QKPj4+PiBuZWNl
c3NhcnkgaGFwcGVuIGZvciBsb2NhbCBkZWxpdmVyeS4KPj4+Cj4+PiBFeGN1c2UgbXkgaWdub3Jh
bmNlLCBidXQgaXMgdGhhdCBidWcgdmlzaWJsZSBpbiBwcmFjdGljZSBieSB1c2Vycwo+Pj4gKHBl
cmZvcm1hbmNlPykgb3IgaXMgdGhhdCBmaXggbmVlZGVkIGZvciBmdXR1cmUgd29yaz8KPj4KPj4g
SGFzaCBjYWxjdWxhdGlvbiBhbHdheXMgaGFwcGVucyB3aGVuIFJQUyBvciBSRlMgaXMgZW5hYmxl
ZC4gU28gaGF2aW5nIG5vCj4+IGhhc2ggaW4gc2tiIGJlZm9yZSBoaXR0aW5nIHRoZSBuZXRzdGFj
ayBzbG93cyBkb3duIHRoZWlyIHBlcmZvcm1hbmNlLgo+PiBBbHNvLCBubyBoYXNoIGluIHNrYiBw
YXNzZWQgZnJvbSB0aGUgZHJpdmVyIHJlc3VsdHMgaW4gd29yc2UgTkFQSSBidWNrZXQKPj4gZGlz
dHJpYnV0aW9uIHdoZW4gdGhlcmUgYXJlIG1vcmUgdHJhZmZpYyBmbG93cyB0aGFuIFJ4IHF1ZXVl
cyAvIENQVXMuCj4+ICsgTmV0ZmlsdGVyIG5lZWRzIGhhc2hlcyBvbiBzb21lIGNvbmZpZ3VyYXRp
b25zLgo+Pgo+IAo+IFRoYW5rcyBPbGVrIGZvciBleHBsYWluaW5nIHRoYXQuCgo8TwoKPiAKPiBN
eSBwZXJmIG1lYXN1cmVtZW50cyBzaG93IHRoYXQgdGhlIGV4cGVuc2l2ZSBwYXJ0IGlzIHRoYXQg
bmV0c3RhY2sgd2lsbAo+IGNhbGwgdGhlIGZsb3dfZGlzc2VjdG9yIGNvZGUsIHdoZW4gdGhlIGhh
cmR3YXJlIFJYLWhhc2ggaXMgbWlzc2luZy4KCldlbGwsIG5vdCBhbHdheXMsIGJ1dCByaWdodCwg
dGhlIHNrYl9nZXRfaGFzaCgpIGZhbWlseSBpcyB1c2VkIHdpZGVseQphY3Jvc3MgdGhlIG5ldHN0
YWNrLCBzbyBpdCdzIGhpZ2hseSByZWNvbW1lbmRlZCB0byBoYXZlIGhhcmR3YXJlIGhhc2gKZmls
bGVkIGluIHNrYnMsIHNhbWUgYXMgd2l0aCBjaGVja3N1bXMsIHRvIGF2b2lkIHdhc3RpbmcgQ1BV
IG9uCmNvbXB1dGluZyB0aGVtIGluIHNvZnR3YXJlLgpBbmQgdGhlIEZsb3cgRGlzc2VjdG9yIGlz
IGV4cGVuc2l2ZSBieSBpdHMgbmF0dXJlLCBhIGJ1bmNoIGZhc3RlciB3aGVuCnlvdSBhdHRhY2gg
YSBCUEYgcHJvZyB0byBpdCwgYnV0IHN0aWxsIChub3QgdGhhdCBJIHN1cHBvcnQgUDQsIEkgZG9u
J3QKYXQgYWxsKS4KCj4gCj4+Pgo+Pj4+IEZpeGVzOiAyMTIxYzI3MTJmODIgKCJpZ2M6IEFkZCBt
dWx0aXBsZSByZWNlaXZlIHF1ZXVlcyBjb250cm9sCj4+Pj4gc3VwcG9ydGluZyIpCj4+Pj4gU2ln
bmVkLW9mZi1ieTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+Cj4+
Cj4+IFsuLi5dCj4+Cj4+IE5pY2UgdG8gc2VlIHRoYXQgeW91IGFsc28gY2FyZSBhYm91dCAobm90
KSB1c2luZyBzaG9ydCB0eXBlcyBvbiB0aGUKPj4gc3RhY2sgOikKPiAKPiBBcyBjYW4gYmUgc2Vl
biBieSBnb2Rib2x0Lm9yZyBleHBsb3JhdGlvblswXSBJIGhhdmUgZG9uZSwgdGhlIHN0YWNrCj4g
aXNuJ3QgdXNlZCBmb3Igc3RvcmluZyB0aGUgdmFsdWVzLgo+IAo+IMKgWzBdCj4gaHR0cHM6Ly9n
aXRodWIuY29tL3hkcC1wcm9qZWN0L3hkcC1wcm9qZWN0L3RyZWUvbWFzdGVyL2FyZWFzL2hpbnRz
L2dvZGJvbHQvCj4gCj4gSSBoYXZlIGNyZWF0ZWQgdGhyZWUgZmlsZXNbMl0gd2l0aCBDLWNvZGUg
dGhhdCBjYW4gYmUgY29tcGlsZWQgdmlhCj4gaHR0cHM6Ly9nb2Rib2x0Lm9yZy8uwqAgVGhlIEMt
Y29kZSBjb250YWlucyBhIGNvbW1lbnQgd2l0aCB0aGUgQVNNIGNvZGUKPiB0aGF0IHdhcyBnZW5l
cmF0ZWQgd2l0aCAtMDIgd2l0aCBjb21waWxlciB4ODYtNjQgZ2NjIDEyLjIuCj4gCj4gVGhlIGZp
cnN0IGZpbGVbMDFdIGNvcnJlc3BvbmRzIHRvIHRoaXMgcGF0Y2guCj4gCj4gwqBbMDFdCj4gaHR0
cHM6Ly9naXRodWIuY29tL3hkcC1wcm9qZWN0L3hkcC1wcm9qZWN0L2Jsb2IvbWFzdGVyL2FyZWFz
L2hpbnRzL2dvZGJvbHQvaWdjX2dvZGJvbHQwMS5jCj4gwqBbRzAxXSBodHRwczovL2dvZGJvbHQu
b3JnL3ovajc5TTlhVHNuCj4gCj4gVGhlIHNlY29uZCBmaWxlIGlnY19nb2Rib2x0MDIuYyBbMDJd
IGhhdmUgY2hhbmdlcyBpbiBbZGlmZjAyXQo+IAo+IMKgWzAyXQo+IGh0dHBzOi8vZ2l0aHViLmNv
bS94ZHAtcHJvamVjdC94ZHAtcHJvamVjdC9ibG9iL21hc3Rlci9hcmVhcy9oaW50cy9nb2Rib2x0
L2lnY19nb2Rib2x0MDIuYwo+IMKgW0cwMl0gaHR0cHM6Ly9nb2Rib2x0Lm9yZy96L3NFcnFlNHFk
NQo+IMKgW2RpZmYwMl0gaHR0cHM6Ly9naXRodWIuY29tL3hkcC1wcm9qZWN0L3hkcC1wcm9qZWN0
L2NvbW1pdC8xZjM0ODhhOTMyNzY3Cj4gCj4gVGhlIHRoaXJkIGZpbGUgaWdjX2dvZGJvbHQwMy5j
IFswM10gaGF2ZSBjaGFuZ2VzIGluIFtkaWZmMDNdCj4gCj4gwqBbMDNdCj4gaHR0cHM6Ly9naXRo
dWIuY29tL3hkcC1wcm9qZWN0L3hkcC1wcm9qZWN0L2Jsb2IvbWFzdGVyL2FyZWFzL2hpbnRzL2dv
ZGJvbHQvaWdjX2dvZGJvbHQwMy5jCj4gwqBbRzAzXSBodHRwczovL2dvZGJvbHQub3JnL3ovNUsz
dkUxV3N2Cj4gwqBbZGlmZjAzXSBodHRwczovL2dpdGh1Yi5jb20veGRwLXByb2plY3QveGRwLXBy
b2plY3QvY29tbWl0L2FhOTI5OGY2ODcwNQo+IAo+IFN1bW1hcnksIHRoZSBvbmx5IHRoaW5nIHdl
IGNhbiBzYXZlIGlzIHJlcGxhY2luZyBzb21lIG1vdnp4Cj4gKHplcm8tZXh0ZW5kKSB3aXRoIG1v
diBpbnN0cnVjdGlvbnMuCgpHb29kIHN0dWZmLCB0aGFua3MhIFdoZW4gSSBjYWxsIHRvIG5vdCB1
c2Ugc2hvcnQgdHlwZXMgb24gdGhlIHN0YWNrLCB0aGUKb25seSB0aGluZyBJIGNhcmUgYWJvdXQg
aXMgdGhlIHJlc3VsdGluZyBvYmplY3QgY29kZSwgbm90IHNpbXBsZSAianVzdApkb24ndCB1c2Ug
aXQsIEkgc2FpZCBzbyIuIFNvIHdoZW4gYSBkZXZlbG9wZXIgaW5zcGVjdHMgdGhlIHJlc3VsdHMg
ZnJvbQp1c2luZyBvbmUgb3IgYW5vdGhlciB0eXBlLCBoZSdzIGZyZWUgaW4gcGlja2luZyB3aGF0
ZXZlciBoZSB3YW50cyBpZiBpdApkb2Vzbid0IGh1cnQgb3B0aW1pemF0aW9uLgoKWy4uLl0KCk9s
ZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
