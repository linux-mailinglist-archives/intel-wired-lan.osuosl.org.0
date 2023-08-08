Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEF2774386
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 20:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3326082094;
	Tue,  8 Aug 2023 18:07:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3326082094
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691518034;
	bh=UcG1CgMynKi+MbZ/LtLkP+qzyM5yIwX0iIRmnjCztKA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=prcYf+2Ks3V0kTPQh1wirPq/CqxLpmv1L3ll8OZbf+a1Y5iXsOg0hD2X3pd6UzXzG
	 1BIiw4avX+Pt0G8Hqv4MpX0eP62XVoqlWGb4KHjc6OARynLMcjdQRJL6Q8G4lJ2y5V
	 QFu65TuKB11DtlfRJTppgB0T6GrfhZPcyFqOE2rWdrTPaLbAKKAyj+xb9Mbo7/C28J
	 Zg5rwxdh1u0HRmRPgVeZAXAZYC3/8ejeNYEF3/VX1vDtorw91Gnil6U0U/jplq2/me
	 vNMCETBfd3A3QmYVeaWYMNgJpH5fR/1Z3aMJc9lHeVTTsnGSRRDxMpOiNV3WHaJqFM
	 CAfmGMWhvkM5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcz_4_eRU5wO; Tue,  8 Aug 2023 18:07:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF7998200F;
	Tue,  8 Aug 2023 18:07:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF7998200F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFCFC1BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 18:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A711A405AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 18:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A711A405AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBAETBi3qJK8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 18:07:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5481C40592
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 18:07:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5481C40592
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="457297362"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="457297362"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 11:07:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821491307"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="821491307"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Aug 2023 11:07:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 11:07:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 11:07:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 11:07:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cQNSQGDKMGmTd4yQjQCGa8l2k7A337tula2xCh+o5Lr/vDwGK2jfQHo7o4tywOZF/qdPhRScjhhoOhxrzOoIRgtJRooTfxJARx8VBzYdul+VvAix8s97QFBujVZJDGHJEorT5ZEG497FXMNUqVgGGXKNCLNW1MX492zSnZsXHWfozt3JQt7woBj1vJbO8EH8U/5QBMFaQMaS5irjfpzL3xIZYy/dloNIRnKNHc5sw/r53nSdW1lA6ehY9TXHknITZ0YdaWUsUTLb403s9Aa4yojvGG+DhRM/lotL1P2V3lW7aQ+xdALfJk0D6sw+Ej8+HIsQty8M1hkLVk/f/NDWQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AR8xHB+WCJd48m8+67QdYsttszs5MDxkrbZa6ff3n8I=;
 b=E6nF1E/ja7MtjhoS+7dUvaYiT9rxNDaH+vpAc/A9pK1Uhaxvi6i7Poi2KDGWzFpLRl/hggvP0r77E9M8VW6j+o2XR6+u1c8y2p38rkfcDs0kRq5JupCfVoCjtmnpj7QkZJIDxixGsli1AdI2CY7O6o9AFCtytQKHpjwvbEUjvzwo7i6Y/6vi/56rjUsXoy8Qqi3cNPlQmXpudlV1G5eWEOa5dcj0FjnYaCf7ZGmGNgDmcNd/tPWTcC/N1WRaIxyt8N4bS4ruE0cQW4LMqOyz3xqUeHUbV0COW2eZQPmEIaoteQcA0twwNF6I8568eYPRTHy40xiQQ+QMuY5/hPGifw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB6442.namprd11.prod.outlook.com (2603:10b6:208:3a9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Tue, 8 Aug
 2023 18:07:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 18:07:01 +0000
Message-ID: <a902ec36-2302-1f98-6d8d-455eea083658@intel.com>
Date: Tue, 8 Aug 2023 11:06:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
 <20230807155848.90907-3-przemyslaw.kitszel@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230807155848.90907-3-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: MW4PR04CA0249.namprd04.prod.outlook.com
 (2603:10b6:303:88::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB6442:EE_
X-MS-Office365-Filtering-Correlation-Id: b2903215-e945-4e37-1480-08db983a43bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1lgcmm/+9Lrr6PoS9AHgI8XOt8Inx/RDF021VjHatX/d+GOEpVdzB06oR2Aewlv7PUBe2uRVFZFJx3ZZGOlYSef3KAtwf++bztkumO6XCiIOb9JCbYLK+XjRi3uaFM25QB4bS9WTneYAHrBuGS0rs/RRFdoroFeYW5lsOEdQHANHrsO4lFF+Y+YHfV4qOEl4qkGs9uYUtj2u0K0nJBv1yirV6fkX+Pbel/a/4hKsPlU532OU+nnWD9wSWEhIt9k9/qF5VfEP6w19iggJWOyCza09vpgqEN/09G9jg+OEZre3YHamFJY0Of2gimYK/rLJ3G3eJPUrzWGDzAAyht1QEo5VAHnu+S27C7RRULFUvLFk/yBcPkgepuOWzcA2/wUU+BYbRzrWebOvNoMhhOQfVEB0P5n7cZhmL4gNWLP3DBiFMRxKuwlbjntGIpjfbZEHIJhMfsbCykttMulmVg9CYO/nsLt2rJxxY+uJyYnNCumEDAPTd1VoGstVXBs5a9lpOSuCEg+HOy9KAGZsGW53N0iHwVUTCE1SQrSqNJx2TM8fwFrCMn/VA51/KthtFw6vze0vqaRNuRVLHghuNwM6TAXtMxFsqF04RA1rqGQoAszIFf0UXtUNDF3rbaT4q5trXYTQ9NoBuNvOf46qfDQPbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(39860400002)(376002)(136003)(186006)(1800799003)(451199021)(83380400001)(31686004)(2616005)(2906002)(54906003)(4326008)(316002)(8936002)(5660300002)(8676002)(38100700002)(66476007)(66556008)(66946007)(6512007)(478600001)(82960400001)(31696002)(6666004)(6486002)(41300700001)(86362001)(26005)(36756003)(53546011)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmZ2QUxKbDd5N0FWRU1qcFhtZXRwSkNXb3JUVW1JeGIwS3BiaG5aUi9hZUIw?=
 =?utf-8?B?Sm1WRG8xNnM4K1pWaG12UFJrWTZYVHJmS1llM2NHOElOMDdWNW8xcGtQdmhu?=
 =?utf-8?B?T0s5N1hBMWFKQUFPSldyN01UNGQ5amNtaWdiY2FTUW1pNmZLTGJOVTBGTnhW?=
 =?utf-8?B?NWVvblZVdGxZa05wSTVEM0hmSFJpSkZ4S01QaS82MEFZRUxsOXRxMlRkdG1n?=
 =?utf-8?B?TmtSd3ZoMU1wODZXUEc5Qlh2ejcrRHhLOUJRbVhnWnhSTkxVMGd1bzhWTXFZ?=
 =?utf-8?B?Ym42Qlc0dUpVcWRnUjZtZk4rSGE1cUZpTExUbUp6VVlLYXFkREE0S0FrSnR3?=
 =?utf-8?B?N2haM0dIZ0M5SjZ3U1Q1QUg3SVFxS2pzSmsvV0dzU2ptT2JJRjZMYkZPN01l?=
 =?utf-8?B?RlFwQ3BodERhRHBZQS84TnJCWDRqVmFnWGkvT2VHRmhCQlo1clVua3B4SUdU?=
 =?utf-8?B?L1cvVmJWK3pzN2ZJd09KcW9VZm5aV1c1ZEJ0S3JzZUVCUm5KOExTRHg3WlRW?=
 =?utf-8?B?c0xqRitnNWJjWnM3b3R3ck9Yd2Uvek5MVmlsc3B6dUdwRXJQUkUrcldOcmtS?=
 =?utf-8?B?NFRwTTVYdzFYNjY4b24zd1MybHIzSEVkRzl5M0dDU1NPWlVhSW05TmNXZ1hT?=
 =?utf-8?B?cmRGMEZ5dXVFVmxpbTF0M2ZHRFJmMnU2NmowM3VlQ2FRMCtKdlY3bTNUQnda?=
 =?utf-8?B?TkM0REFaSHhjalhBczNGWStnaUZFRytEc2VuOEZ1cGtJVjVMVURUL0hhbDhV?=
 =?utf-8?B?RHpzSUltamNlT0kwdWUrcmtKbkFUVWE4bWFoQSt2Y0J4dWFLc2N1Ymwzd05u?=
 =?utf-8?B?L2FDTkFOblh5SjFvRjJCRi9uRVdDcjFxQkdBVit1U0tJVVlvb0dTWVhnYzFE?=
 =?utf-8?B?NFBteFAzLzZZZ3hjNXhocUJWWDd1dWtXakNtbjhnM2l5UVAvUWFuM0l0ODcx?=
 =?utf-8?B?dHUxVUF2bERHSGJrRytPYUZ4WFNkSG95Z1NiZXZhL2V2aTNIcG1PeWlNdG0v?=
 =?utf-8?B?bmxSZit0b3dJSXlSM3d6dkx2dlRpNUtMak1GWll5Wng2N1YxSHRpRXFBcnEv?=
 =?utf-8?B?dUNNdE0xbkhnSXZWTXBsSG9FOWY3emwyUnRReUJXSS9YSVFXZXh1Qk9ObHFt?=
 =?utf-8?B?VFlLTkdtMm1KZEhqL0g0QVd5TnhLWGQ1ZWdyZEd2TVdhZDFiZ0xUeW9MUWJX?=
 =?utf-8?B?dnZlL2JNUE53QUZpaEI5NVQ5MG9lVWdQUUk3eXg3czNkUTNiL1I0MUlvT1p0?=
 =?utf-8?B?UnQ0WUZsTVVSNlV5NVVKZTUrKzgrWVZ2OUp4R0VSamY2b0xCM1B5amVZMGxX?=
 =?utf-8?B?MzVvQ0VCa016bXFMWU84L0JFZjhyOURwYWo5UkwvQjRXSk94d0ZGdGhROWo4?=
 =?utf-8?B?b3pJZzhYVVdrNnFJOVk3V2c4MGwzSWtmSUhrS09vUjV2MEpyVzBCQWZwTHFC?=
 =?utf-8?B?dVdLakR5SEYyTzQzUkF5ZHB0YzhWYU00U3c1bXh0eUk0blRHYjg1Z1BBQTNv?=
 =?utf-8?B?ZG5BTkdvOHdyaURRcFREZDU3UkV1amtNcEN6L3RYOGl3QWM1aUg5ZTdmUUhF?=
 =?utf-8?B?dlZLbGY1SVhsd09MMk4rOEhQUFFqcVNzUkhMQ0NocWVLRnJzcVlaeHczV2F4?=
 =?utf-8?B?a3RMMHZKVlBCbXRNMUorK2JqVzZuWmFKTUErY0FtdXNxTEFmWDg4ZjdxR1pL?=
 =?utf-8?B?b2xJclpqRHA1K0R4RmZUSmpXc05qMk9MVkRCUTNjMWJidWJHMXd1cWE0Vldk?=
 =?utf-8?B?WGxlN1k2WHhxbG53ZklianE1ZTNGQjhubG1oUlhOK05CRXhuUTMyL1hGdXdM?=
 =?utf-8?B?L1h4Zyt3eHlPUGtLamY2RStTK1c4b1ZVOHg0ZmE1aEdkaGEzcGdkYWcvMEVX?=
 =?utf-8?B?a2JZeTBGOEZaakQveWkyU2dQeTgrVnJzR3N2blRiNEoxaDdBdU83VWFLYm5W?=
 =?utf-8?B?THd5MEJKSTZGVUFBQXdCYVZqajFpNnpuY3A2OUp0SGNPaytrbU90cS95WXdI?=
 =?utf-8?B?ZjJoTi9YRTZuT2JubTZDbGF3QkZJczVEUUlyU1dCYm9qMmNPaUhadmtDNG5I?=
 =?utf-8?B?WnNoeHZ5V0FMT0NFWkV4UDMrQTYyMXY2Z3ptMDBIK0dJNHNUUXB2aEszYmQw?=
 =?utf-8?B?MHk3UktYVXlsN0lyQ0dIdVdNVWMrbkM3aVZ4aXp3dlJ2ZDlSbnpDNzJJVDBi?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2903215-e945-4e37-1480-08db983a43bd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 18:07:01.6699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CFTNwj4oph1/JDjM5pAwf3D5UHxkeWGnKao2AMs1HQ+uhI0OxKgfM5AI0US4rHrvkVoMDmsehLU5J9D0rPGgDHjiO+DRUIt3xzTc2X91QkY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6442
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691518026; x=1723054026;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FVBsIDeqI3sv1F85yaH4zLWC+tjjIfZr9QZOlxH+0GE=;
 b=B0br/6CmBxwmD6PMzkVR8WDM98vBb0OLBE8Rf1f492Th382oq7baWnoY
 rZ+Q4SZ5DC5nRhptA0GIG2g2VVSTuEwOdJ9hylouYhjhRKTbVBiLdP540
 O7A/kV4Gc3G/Zx2Y82geMSgH2mH1BcRHXVuXQkWGC1jweI8ppZlXsBXpT
 82B+yYgrf9v4EWjwilHAWHT1Gu29jXbktu24WcMyzxQszrwrXB4Cp+LEW
 TjlkEqJdlck5Ehx4LAY3QGxjGHulaCIeC9LGJJ2pKzL1i5RMM2Vnzrp2s
 lWuqdkAph+g79oFMcBN4emZgDoezJ1NewtOjWlbXqak/j0sw71rSJdqz3
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B0br/6Cm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: embed
 &ice_rq_event_info event into struct ice_aq_task
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
Cc: netdev@vger.kernel.org, Simon
 Horman <horms@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/7/2023 8:58 AM, Przemek Kitszel wrote:
> Expose struct ice_aq_task to callers,
> what takes burden of memory ownership out from AQ-wait family of functions,
> and reduces need for heap-based allocations.
> 
> Embed struct ice_rq_event_info event into struct ice_aq_task
> (instead of it being a ptr). to remove some more code from the callers.
> 
> Subsequent commit will improve more based on this one.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> ---
> add/remove: 0/0 grow/shrink: 3/1 up/down: 266/-68 (198)
> ---
>   drivers/net/ethernet/intel/ice/ice.h          | 20 ++++++++-
>   .../net/ethernet/intel/ice/ice_fw_update.c    | 42 +++++++++----------
>   drivers/net/ethernet/intel/ice/ice_main.c     | 29 ++-----------
>   3 files changed, 42 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 34be1cb1e28f..6346283c5d14 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -931,8 +931,24 @@ void ice_fdir_release_flows(struct ice_hw *hw);
>   void ice_fdir_replay_flows(struct ice_hw *hw);
>   void ice_fdir_replay_fltrs(struct ice_pf *pf);
>   int ice_fdir_create_dflt_rules(struct ice_pf *pf);
> -int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
> -			  struct ice_rq_event_info *event);
> +
> +enum ice_aq_task_state {
> +	ICE_AQ_TASK_WAITING,
> +	ICE_AQ_TASK_COMPLETE,
> +	ICE_AQ_TASK_CANCELED,
> +};
> +
> +struct ice_aq_task {
> +	struct hlist_node entry;
> +	struct ice_rq_event_info event;
> +	enum ice_aq_task_state state;
> +	u16 opcode;
> +};
> +
> +

CHECK: Please don't use multiple blank lines

> +int ice_aq_wait_for_event(struct ice_pf *pf, struct ice_aq_task *task,
> +			  u16 opcode, unsigned long timeout);
> +
>   int ice_open(struct net_device *netdev);
>   int ice_open_internal(struct net_device *netdev);
>   int ice_stop(struct net_device *netdev);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
