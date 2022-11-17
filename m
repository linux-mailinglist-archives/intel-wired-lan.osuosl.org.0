Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A35262E3B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 19:03:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F1F54033A;
	Thu, 17 Nov 2022 18:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F1F54033A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668708199;
	bh=IeUEXdgwJoJQJU6w39dFRcJspAicI1qZmVRxTqHAsW4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c6NVD8wk+5gkHzql/Zea7zCdkP8zcMDsSWvqKDRKKqhkrcC3ywd8CGLgT1FR6stQT
	 mOQLLP8fKvmxPbm1HwdZRpbP8/jjfm5Y/WNG+aKLKdff8hZMHwhU3ip3Lc9oJ0CAis
	 kJ+p3aXHWiF0QosXDQspfcrMMdbdDCZJaLq8COd1SGieUnlXvxDbjMR2yucN+wDqLM
	 jRJONewpRS28qXIFjRTJEmc04FLFTftW4NjIBnf0XV+fGqSMn+Q8zdpPckV1wfutaB
	 6xnOXrMM1lkORCFtBg1wCqyiKlBiMftPuPb5jhGIizJnhu8P6hOGVN26gVP7e8Q9GB
	 w18bRyrspSv9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ee-M35RQEz_i; Thu, 17 Nov 2022 18:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5A4940288;
	Thu, 17 Nov 2022 18:03:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5A4940288
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CCD11BF401
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 18:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 494E540020
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 18:03:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 494E540020
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nraXU90_B3OL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 18:03:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8647341939
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8647341939
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 18:03:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300464277"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="300464277"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 10:02:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="639903355"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="639903355"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 17 Nov 2022 10:02:38 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 10:02:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 10:02:38 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 10:02:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g0DtTo2LyPr4lNZJwMLxwU6aWM6ACGcUnuD3cYz8dyv05Gxuvmow0+2f6BTvP4oBPA0I+klRGb+kzZMBGcsPWhqHQomykSkRkjCZK7xW6t7SiPVQIzrqEyw+Al59XsgWruTFpgPlUEAV6ApHoNrajBq+Wl/o4Vb/3l8+lfpUUqn++RnhSDuAcRQc+554YcCDFRN5hdgYC4kDLT68WdslkUDQLFu9H6W0dLl/hv74Yb+cDh0DHaHoWYfX82QtokpKZpHBNLSQwLsfUdHccATOIWms80eUCxROa+o12VQbLHsFM032hV0QlpX4X/dWuz0f5NpyCgk7kVwdAfnNUmCrVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8doR/b1xfP8rQbRVvhCYa0VF5BXZTTXmd66EFVG7aM=;
 b=BRBy9WlEL9u9+QhxsDKmb8xlXx+e5zKlpdvUosjMa5YoMckP34InCRPzftnpHmtw9k2aWO3VLWw8+LXXp5lLZJoMUwjKOKpUvXew7VFP/vMnVETniRBe/bMpUZmWSeClTLELL6vKM5nRtk+rCog3V1vlIM2LrO9EzGwjgxdUBjObKjAy4+RZSgP86jd45ku2Viav6uLD6q3El4+Y8RsmMiC/LQa50MXxg3JZgKkvlMfs813BSoBu9MyTY4WCweulaf8if5f3sfX7ApuWDvBiEQ0ctJcSM50ddOOrhKxTctWjmjaQGlYfQjfa9H43hVcAuR46eBjcjx9y8N2iWzu7rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB6758.namprd11.prod.outlook.com (2603:10b6:806:25d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Thu, 17 Nov
 2022 18:02:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 18:02:33 +0000
Message-ID: <c015e92c-aeea-5ecb-062f-786033ba7635@intel.com>
Date: Thu, 17 Nov 2022 10:02:30 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221116232645.8218-1-benjamin.mikailenko@intel.com>
 <20221116232645.8218-3-benjamin.mikailenko@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221116232645.8218-3-benjamin.mikailenko@intel.com>
X-ClientProxiedBy: BYAPR06CA0008.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::21) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA1PR11MB6758:EE_
X-MS-Office365-Filtering-Correlation-Id: 993ffb1c-ae60-49be-8538-08dac8c5e6b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0MLXQoHyGInJ04JCprqaRCmRDlO0g4CztNxFIyc7SQ2BI8DCLJd5frnCvHUuA6HbN8sQQJ+vL/G9VK9+wCTp/wfoXQss/1J//shqBt9yQLKpAInop9giAcoDjwUFHxo0EPUMoQjZ/aF5IZnRvjDx6nM1OnGLSDwOXRouuPV9wkrgq42BeAvVP804aXZ+PvI3uEds/JJEBPtKZPrxMfJb/LOgmgyABGhZsOHGSfkKzfooXqmIP3YW5w3dZatvC7rMsnzrQbYDf0GH+zvW7xJ6PnaXKWrICu2pK+o8fWVtgj//pcL/IkjfzKlPxCZgx+m/Vku+/UUhy0g6LmfRjHEN9Lg1c33y0iLl8ohqhMkBx43u1r5aS0VX7cyyDARG9D2MRpNpx03K7LU9CxcP28SPtRrz/0ljuk/dyo0eh/TNdhZnYpJxclsimwsAAFEOw+6UKTd8oPirlCZP7/jT53LU5zCXIPONgMi+8xmz7Cex8Dk2dBPkpzOSbG2lMqSbWeGD9mgk2d2vg3KkCFjiWe8ceKagYDPWjZEGSV3A+AxXcZekNoUZKBHlpEbvEEkCUHIbwqYeZpP4hJq7PFpWZLcnF+2+3qjIDU9XLfamh3cyCS0Hwyan+M1KU9LVWhAhNf3HX5VZtotDg2EWOQbjY4rIPuvZFFr36PMdKH3siuSk+FRqlzAaAzVkG7faMElmCqzlnoYOyDWJziW+W921UMo22tH0d0xrQS2S/7VzAFA7X6g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(346002)(136003)(39860400002)(366004)(451199015)(31686004)(38100700002)(2906002)(8936002)(5660300002)(53546011)(66476007)(8676002)(66946007)(41300700001)(66556008)(83380400001)(6506007)(6512007)(186003)(26005)(36756003)(86362001)(2616005)(478600001)(316002)(82960400001)(6486002)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aU1FS0NpMk9iTjJydCtPTUM4LzhqWWpiQmpQQTJwQzREWUp0NjVLZFJxVlIr?=
 =?utf-8?B?SkhQV2lRMm5tSmsxLy9JT2diemJiNjNEUjFnWmMvK00yUDNqR2kvSjNSNzlU?=
 =?utf-8?B?TnEvRG9ZVGpCTE4rdHN0TFI2TjRteHlYMXkxbGtWRTJpSEQvUjIzRzVxRUxi?=
 =?utf-8?B?dVVSZ3IrRnphckx4d016aVArOFBNbTZ4bHdsdDZRNEorOGJxZjlaeEozNDlj?=
 =?utf-8?B?cHdnOWZaZE5HZ044RW5tZzFSeUtZZW5qM3lsbGQ3ZWZaQnZPT2R5MHdhQkFi?=
 =?utf-8?B?Um9VSWpFbFNYNnVUVUdGczE1ejIxM0kxSk45ZVkxemZRcWlKVUdlZEc5bkVT?=
 =?utf-8?B?eDBhZkhBVGttWEs5VFNNMkt5TUttYTY2RHQxUE9wWDBjSVFPRUF0amNoOGtQ?=
 =?utf-8?B?UElPRTZDZEpaeWtOUkVUYU5xV3cxZ1B0amdEbnpBK0NEVVM5YlFCM0srdWRO?=
 =?utf-8?B?UlcrRm5yMGRZL0Y1aHUvazhXMzl4ZGsvR0ErZHpYek1LY2xJRTlJZFN4SGkr?=
 =?utf-8?B?ekZGK1V0RmFnK1F5M2E3UjJEUis4ZE8wbmJ3b3BUeGx4TUVuSzkyMjEzMFd0?=
 =?utf-8?B?bTNEUnFuR3llMzR4b2huR0pYK3ZmR0FweVJodHlmc0NSSGVRK2gvemRFMjBF?=
 =?utf-8?B?dndyanR5QWx6WE9FQm9KR2U1NDlZcTVFSkMwR1B3VEFNYXBjejJRaVVjN1BJ?=
 =?utf-8?B?UnJEbk1Uc250Yk9WajV1TlU3RWNON3lWWmJWZ09PWEd6elRZa1g4ejdrMzBr?=
 =?utf-8?B?MjdQUitUTko5dEw0N1IzbzNIWGRVcEE0Wld1eUhzeHZzaHFxeC93UU9LNTdJ?=
 =?utf-8?B?QVZwZzdOK0ZxVHJrWjd5RjFtbFJBSHpRV0V4ZjNkakhDTCs2b0J6V1RWUjJj?=
 =?utf-8?B?a2dPaVlZb0lmY1NQVUJyV2srZUI2b3paOWtKUHlGYVJ6elZwanJoMU84SGRI?=
 =?utf-8?B?c29xNWp3VEFnVmxDSzVualFVQUtYQm14UUZPNmZRaHBUUlJ2TG8rN0VVSFdj?=
 =?utf-8?B?c2dreE1SOHpvSjFaSXhjS2Rzbk9TT25SRGJvM0FRL3JyOU9UQTVVT0s5MFd4?=
 =?utf-8?B?bVVHY0xhNkZSS1VsNXdmcnBEVmZhZ3p6czZ2WWlRUEhQdndnT1NTeERGQnJt?=
 =?utf-8?B?YVZTUkVpaGdRUnNBREE1UUhhaTFDWExPNDB3cVhaTVNlOEVLdkM5V1JsTDFn?=
 =?utf-8?B?b24xbWhieDNwQk12SzhCajJBN1FENjVqU3FTY1U1blRQcDgrOWZGOEhPUng1?=
 =?utf-8?B?YnhyVTVDWGJNeHN6RUtzdzYwMDZFelNmb3I5RDR0dzI2dmsyNEhGeit0RFdp?=
 =?utf-8?B?NzFXTHBtUjFZUUFpZnpIWERFaXl2ZStiQ2FEWjBNTmFVdVdvclRnSmVOeEt5?=
 =?utf-8?B?SzdJZ0F1V0ZvWEpHNlZoY2VPVkZsNEhFdFhiWDhhaVN2aWhGUW9DNkllWmJH?=
 =?utf-8?B?SThVS3g5TWR3L3VYSGFlZVZEV2ZkaHU1aEZsUmlMaUJvTG1DRFowV2hrU0V5?=
 =?utf-8?B?ZVdEcllNckc5eTZXdVJTVld3QmhJQUNzMkI0TENDTnNmNUxLMzdseG9vUENN?=
 =?utf-8?B?VUFGVlo5anZRc3ppL1hnSk1SeW03am9kSG5Ddm1hTzFMc1h6eGw1dWltcDJR?=
 =?utf-8?B?bHpwZGxidEdKWWlTKytqWXVKYmlkUkFLRkx6MnlORDFEZ0NDaTFzWlA3T20z?=
 =?utf-8?B?Umd2cFN3UGp5Q1pkOUUydDFGYjZTTkJRZkVBdlBUWHdScVZobDVKWEM0c2VV?=
 =?utf-8?B?cXAxcUZLd1JHK2R3cmtZTEJnMzYwL0ZkNTVLZFBkSGJpTTJTK3NpaTlVK1Q4?=
 =?utf-8?B?Z01mVnc3NWN2Wng0RzBBb1kwNHpxMk9ZeG9lK0JCRUtuWHN2dmlHUThaZUhM?=
 =?utf-8?B?T0lPWEowWlpreEE4MVZiTGs1UmM2VHJJSlhtUnpDNFliR2htazlDSEcvajE0?=
 =?utf-8?B?bE9KL1gwcW53c0tHSTJ3TmhpZm53QzNoMm10aStFOXRjTUZRTXU5amp2RE00?=
 =?utf-8?B?SCtvR0N1c1RhR2xPRDdJU2krZGhnSnFRSlljai9wSkxoT3hBVVplMngvY29l?=
 =?utf-8?B?VjFpQW00Y3F4VGEvZ0YwTXRWU2ZPZHJhQkd5QmFWYjk0VnhMNmkvS1pPNWp6?=
 =?utf-8?B?cW8yZ09NaE5ndWU4eDNvd3p1NVozQW5oODlPd0E2RytWN0xlS21EaVZhS3ND?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 993ffb1c-ae60-49be-8538-08dac8c5e6b5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 18:02:33.2989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ROCJJ/WBzrjCUxmdww3C2sz4XOo9Da2I+ne7IjQ6LjisnenaT42UARBW0kE+aQTIKFRVjveUS1RM1vU7cWc27Xje+CTDr913Hx37sLccsaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6758
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668708190; x=1700244190;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AlcEANF1Cq66eoZP//KSVD3cZRv1xZmXDsWSu4DR3wE=;
 b=Ed5/B/NLRVkVNwHxU8fQvRE1IvYoDoA9II5kS6QwtWEw3tSBfMeYam3A
 xD2bnCTe/4XB+/sANE6L716MBcQwrdpTYzcjw/dmnflOFBEE5fN8aTJHf
 L/Ti9IpXN5YP+HN89bjCQxSdGeZQgjuYMLr8nh5JojW7J+KKe1ixdWA33
 QPivSNfVNyp24jcmFAUGNWebPqskWBwOtKRwKuajKG7aLKY8LbWBTUJWw
 sXHGa0ZtwFu2f1qq3MUz+dDyRtaVIFx7Mo2FPB8vOUH9WiQKtMRr4wpY1
 X8rqbUr5ZBdKIK+Mnu+w0KAtEcgqAsYznmOo4AOJv0P4uz5Fsjp2xcX7h
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ed5/B/NL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v6 2/2] ice: Accumulate ring statistics over reset
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/16/2022 3:26 PM, Benjamin Mikailenko wrote:
> Resets may occur with or without user interaction. For example, a TX hang
> or reconfiguration of parameters will result in a reset. During reset, the
> VSI is freed, freeing any statistics structures inside as well. This would
> create an issue for the user where a reset happens in the background,
> statistics set to zero, and the user checks ring statistics expecting them
> to be populated.
> 
> To ensure this doesn't happen, accumulate ring statistics over reset.
> 
> Define a new ring statistics structure, ice_ring_stats. The new structure
> lives in the VSI's parent, preserving ring statistics when VSI is freed.
> 
> 1. Define a new structure vsi_ring_stats in the PF scope
> 2. Allocate/free stats only during probe, unload, or change in ring size
> 3. Replace previous ring statistics functionality with new structure
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index a5945319b62e..02392546c007 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -447,6 +447,52 @@ static irqreturn_t ice_eswitch_msix_clean_rings(int __always_unused irq, void *d
>   	return IRQ_HANDLED;
>   }
>   
> +/**
> + * ice_vsi_alloc_stat_arrays - Allocate statistics arrays
> + * @vsi: VSI pointer
> + */
> +static int ice_vsi_alloc_stat_arrays(struct ice_vsi *vsi)
> +{
> +	struct ice_vsi_stats *vsi_stat;
> +	struct ice_pf *pf = vsi->back;
> +	struct device *dev;
> +
> +	dev = ice_pf_to_dev(pf);
> +
> +	if (vsi->type == ICE_VSI_CHNL)
> +		return 0;
> +	if (!pf->vsi_stats)
> +		return -ENOENT;
> +
> +	vsi_stat = kzalloc(sizeof(*vsi_stat), GFP_KERNEL);
> +	if (!vsi_stat)
> +		return -ENOMEM;
> +
> +	vsi_stat->tx_ring_stats =
> +		kcalloc(vsi->alloc_txq, sizeof(*vsi_stat->tx_ring_stats),
> +			GFP_KERNEL);
> +	if (!vsi_stat->tx_ring_stats)
> +		goto err_alloc_tx;
> +
> +	vsi_stat->rx_ring_stats =
> +		kcalloc(vsi->alloc_rxq, sizeof(*vsi_stat->rx_ring_stats),
> +			GFP_KERNEL);
> +	if (!vsi_stat->rx_ring_stats)
> +		goto err_alloc_rx;
> +
> +	pf->vsi_stats[vsi->idx] = vsi_stat;
> +
> +	return 0;
> +
> +err_alloc_rx:
> +	devm_kfree(dev, vsi_stat->rx_ring_stats);
> +err_alloc_tx:
> +	devm_kfree(dev, vsi_stat->tx_ring_stats);
> +	devm_kfree(dev, vsi_stat);

These need to be updated as well. If you used non-managed allocs, you 
need to use non-managed frees.

> +	pf->vsi_stats[vsi->idx] = NULL;
> +	return -ENOMEM;
> +}
> +
>   /**
>    * ice_vsi_alloc - Allocates the next available struct VSI in the PF
>    * @pf: board private structure
> @@ -560,6 +606,11 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
>   
>   	if (vsi->type == ICE_VSI_CTRL && vf)
>   		vf->ctrl_vsi_idx = vsi->idx;
> +
> +	/* allocate memory for Tx/Rx ring stat pointers */
> +	if (ice_vsi_alloc_stat_arrays(vsi))
> +		goto err_rings;
> +
>   	goto unlock_pf;
>   
>   err_rings:
> @@ -1535,6 +1586,109 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>   	return -ENOMEM;
>   }
>   
> +/**
> + * ice_vsi_free_stats - Free the ring statistics structures
> + * @vsi: VSI pointer
> + */
> +static void ice_vsi_free_stats(struct ice_vsi *vsi)
> +{
> +	struct ice_vsi_stats *vsi_stat;
> +	struct ice_pf *pf = vsi->back;
> +	struct device *dev;
> +	int i;
> +
> +	dev = ice_pf_to_dev(pf);
> +
> +	if (vsi->type == ICE_VSI_CHNL)
> +		return;
> +	if (!pf->vsi_stats)
> +		return;
> +
> +	vsi_stat = pf->vsi_stats[vsi->idx];
> +	if (!vsi_stat)
> +		return;
> +
> +	ice_for_each_alloc_txq(vsi, i) {
> +		if (vsi_stat->tx_ring_stats[i]) {
> +			kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
> +			WRITE_ONCE(vsi_stat->tx_ring_stats[i], NULL);
> +		}
> +	}
> +
> +	ice_for_each_alloc_rxq(vsi, i) {
> +		if (vsi_stat->rx_ring_stats[i]) {
> +			kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
> +			WRITE_ONCE(vsi_stat->rx_ring_stats[i], NULL);
> +		}
> +	}
> +
> +	devm_kfree(dev, vsi_stat->tx_ring_stats);
> +	devm_kfree(dev, vsi_stat->rx_ring_stats);
> +	devm_kfree(dev, vsi_stat);

These as well.

> +	pf->vsi_stats[vsi->idx] = NULL;
> +}
> +

...

> @@ -2567,6 +2573,15 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
>   		if (!xdp_ring)
>   			goto free_xdp_rings;
>   
> +		ring_stats = (struct ice_ring_stats *)
> +			kzalloc(sizeof(*ring_stats), GFP_KERNEL);
> +
> +		if (!ring_stats) {

Cast not needed. No newline either between allocation and error check.

> +			ice_free_tx_ring(xdp_ring);
> +			goto free_xdp_rings;
> +		}
> +
> +		xdp_ring->ring_stats = ring_stats;
>   		xdp_ring->q_index = xdp_q_idx;
>   		xdp_ring->reg_idx = vsi->txq_map[xdp_q_idx];
>   		xdp_ring->vsi = vsi;
> @@ -2589,9 +2604,13 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
>   	return 0;
>   
>   free_xdp_rings:
> -	for (; i >= 0; i--)
> -		if (vsi->xdp_rings[i] && vsi->xdp_rings[i]->desc)
> +	for (; i >= 0; i--) {
> +		if (vsi->xdp_rings[i] && vsi->xdp_rings[i]->desc) {
> +			kfree_rcu(vsi->xdp_rings[i]->ring_stats, rcu);
> +			vsi->xdp_rings[i]->ring_stats = NULL;
>   			ice_free_tx_ring(vsi->xdp_rings[i]);
> +		}
> +	}
>   	return -ENOMEM;
>   }
>   
> @@ -2792,6 +2811,8 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi)
>   				synchronize_rcu();
>   				ice_free_tx_ring(vsi->xdp_rings[i]);
>   			}
> +			kfree_rcu(vsi->xdp_rings[i]->ring_stats, rcu);
> +			vsi->xdp_rings[i]->ring_stats = NULL;
>   			kfree_rcu(vsi->xdp_rings[i], rcu);
>   			vsi->xdp_rings[i] = NULL;
>   		}
> @@ -4771,11 +4792,19 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   		goto err_init_pf_unroll;
>   	}
>   
> +	pf->vsi_stats = devm_kcalloc(dev, pf->num_alloc_vsi,
> +				     sizeof(*pf->vsi_stats), GFP_KERNEL);
> +
> +	if (!pf->vsi_stats) {

No newline here either.

> +		err = -ENOMEM;
> +		goto err_init_vsi_unroll;
> +	}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
