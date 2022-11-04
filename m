Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBAE619F73
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 19:08:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CF6E82195;
	Fri,  4 Nov 2022 18:08:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CF6E82195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667585298;
	bh=3msSPN8WXEiuRGj3WOXdj2ippzvGzFnQ5X/VFH2IWJQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7LcjYa2IHAP4uuQs60G/+l1T8PRfFnH3yYjAqNStcCGulo2gjODT41ahgM5/Ipuip
	 RN5kMTZinmbjT81v2UrNv4o5/2oDaEjt+oYLE6vRY+9OXQDKyiR0MSiN07f5aLgLN2
	 CC4sRGjk5iIOtZPZcDo/siCnPlKcHqNsqm2oKs+WalK1tIKJVp0IHquOv+YYGF/T5f
	 5qT3zUdBNY90mCELm5w5CXgLn4GcOsmnddJLyA5BAYF0S780kmHEllyxgqINP7S82U
	 mYmummA5Xn6cv3vxir6RHabFD39PSGzWiFfMFUsr6UHZjPuapy09HeixaNsQ5HpUpt
	 XUKrg/XcCc8Mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ecGe_6kO_kYQ; Fri,  4 Nov 2022 18:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E8ED82190;
	Fri,  4 Nov 2022 18:08:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E8ED82190
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27E121BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC56C403CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:08:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC56C403CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ycQoWHVIB_Qi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 18:08:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC61E40198
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC61E40198
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:08:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="310030406"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="310030406"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 11:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="880379904"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="880379904"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 04 Nov 2022 11:08:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 11:08:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 11:08:08 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 11:08:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QwSH3UhcaBAy60WJlOlh3UgdZbkGzFRyMPq+tjOB5TQa3HY3KcvVGOMRj7m2Yev906BzOO/gyKynBzigRBwWllf2KUQ2gb3BXhe+d+1w/zmZMtty+tJzV1+Yl0Y/IccndjgzOmCF6+ztRatZBqOBtHmmbNpN92GRPINw64dpz+3FYJ4wOwA8sa5X+02gEiTBhnlhGGSGDtINlVF0/EgRaPPNfE1KFC63ryipLEr9gm5Oq51CzcxwOmSAsV5NOLbs7jzduUKPkAMPolkodySLpyXVx+B4gE63cV4d9nPU0HImrwFSY+C8Zbl4I78S0Xa5qDGBKewmDPE2o+y1nbaJuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YViYhJb/RWAXWu0cJjM+RqIiMKqC6G67/lL36A5KfL0=;
 b=HQzFIwpEiTPOMSEmvC84NHkFLMlfYpn75BfRLBqsj2qKgMzATqLm/Wn08g0KzcuUyRrxz966SE/N3waQj+hcnWZ/+Hbpty22RH4he0ME6jfSutw5ouJ0VE0itEYlfs4Hl1ukmhUAg5VCd9IXuolUd/zMIaL0k1zACGvJFwDs2f17rkcPOszgK1bMCFR+ax0SK4UejIXA1XPDG6IpiyftNzlPCVo/b2AhSeJLw8IJZuEbK9K3rXP8HbcyXcLnDYPRq9l/M8CnJBhdlLBVPmYDsVdRN6QzMQ52zKF7dRXEhgEX1MsF9bPBSzgtdeFaFhv7IrYETxVDGBfGBJsasz/Baw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 18:08:07 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 18:08:07 +0000
Message-ID: <a37ff9e3-1e90-3e92-86a0-451662db3e59@intel.com>
Date: Fri, 4 Nov 2022 11:08:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221028171609.326-1-paul.m.stillwell.jr@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221028171609.326-1-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR13CA0203.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::28) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO1PR11MB5028:EE_
X-MS-Office365-Filtering-Correlation-Id: 654d0adb-2fa1-4a75-bc4f-08dabe8f8614
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VLFnTz75IufRuCNAqN5Ymn1YXTLNecwK6U1UOQBhJiPN5bFaCg4pnv1hkTu1iOpLQHaKhwstF+lzti6tRbMr5XL85IJ1j5HWXnlZsddFzB5k/Xsfg5Hz7NmHqHAcvy19TTwGYmbU1AIeE2VFTyHfoOIxTcyW4yH150+zqF6FWBU3iVS3p5AzaRKhqpBqqNVuQijO3tEP9oLnDCi41p8RgOKCzWqXvFBW1h52Ypr1Dg9IdAR4OUqtQKCVr1gdPqXQp/9q2OIaKTpsJ0+FkqKUSCY67heJ/rfEMAnjAziGRScS+wWlZ6Pjs4e2YozpNHcYukbOyLrVexQiJSMpXZzq/EP+BquemuqJqvByPCmmsZ+h9k4UjFNlppb2QlMgXuNWHbiylDdUCmnBsVEtphPrOvj/JQ1RkSVAml7aagCeJhka/qnOmoEYRODKOSjraZat7TfwveXL1VsYI6hVhm0wH/cm56gqt1pcHFUx2F/Viy7ONgXEaTmGSG3h0L3LTMyC2Dq/Spy1JRL4Aaq9n+la+WkkkbT1iIdAXGjeRPzh2Ww1meeIooTQaUUbDtOKwIf36Tt0nulLIBh1QR7s6es610b16ehTEHJwBOkljLRjKzBVMmqdYHt9htlvnt3/3LZfmwrDiaWzYccS9YPM8xJMdcc3TEjrVJUEQUhyF1ARzMlWkj3DK7QQo5UV0e3batmtD5GXImt/ZqE/ohjjAStaPMUUPCqT8pLJkYC8va/GC2avqwTPOtaASj5GT0No7q/caCBhZu2b9g4uq5Ac4KSJaxtZk048MOjPMkxQIQ/ccu0kEWuO2m7IYq5zaXx9hxmVeXYTUv/1N0XRPaV2f4r2AnF/HppTC77ntr4yG9eYeow=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199015)(31686004)(36756003)(82960400001)(31696002)(2906002)(86362001)(38100700002)(83380400001)(186003)(8676002)(6512007)(66556008)(478600001)(66476007)(53546011)(66946007)(316002)(6506007)(2616005)(6666004)(41300700001)(8936002)(5660300002)(26005)(966005)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEFjSzFuK1NBczZlcFM1MUlLOXNyRkppLzN5eEo3YlEycXhZOUlLMTBBR1J3?=
 =?utf-8?B?SGYwQ3kxenJwd1FBbjRNTTNRaXdUOVpEbFNyWXpHY1Z4M29BZDJib0pvWUlN?=
 =?utf-8?B?MFlVK2RGNitOaENkNkZ6VkQzRmptb3JlWUVTRjFUMTBzN2lGWGZrcTNHVHFY?=
 =?utf-8?B?TWtCRGxkc2xtUE5sWUNGWDdNRkVWTkU5bnB3ZFRkYWp4QmdxcG9WR0VIVkph?=
 =?utf-8?B?azVkL3ZpenBUK3NMWUVkVTJzaUE1a1BoQ1dPamJIOUtSb1FPdnJwS2wwdzNn?=
 =?utf-8?B?MmxHUlQ5Q20xNjdJYWg2V3hQRitoN1BPVnJiMzZ2N0tPZUdEVjhRSEpHRDND?=
 =?utf-8?B?dE96K3dMWEpvV2g5VTFlQWtOemtHRmVyNGx6bktQK3JqaFJkWlpxc3hxdkdw?=
 =?utf-8?B?K1YyK0ROaUg2T2JnZTBHWkxRSC9XMGduZEk5VHJ5S3E5RG1pWkFKNFdoNVFw?=
 =?utf-8?B?bU1jWXdOTW9qS0VEVHlVdXJHczBJQ2lDNWE2QzNpeVoydDVKQzNYVkt4ZDZn?=
 =?utf-8?B?RWFaS0tYOVlvK2c5RUhPZ1p6TFEyN0R2N0NaMDdJNVFOblRSdjVBdllhaXJa?=
 =?utf-8?B?QVlRQXBMdDU4cE5QU3pWUyt6cEM5dE1MTldoSmpWc25Kd25MQTNyNCtqbHJG?=
 =?utf-8?B?SGo4TDBJYVJiUzlycmYyeWlBZVdWMk84UmZBa3RwK3RSTCsyRW1UR3phbTIw?=
 =?utf-8?B?cHNoMUh1YnBRcFp5elVQQml6SXlWdnpsSnFPMkV3Umk3d0lEdTVxZFRzQjFn?=
 =?utf-8?B?NVZNUkJNVUptOXBhc1N0blE5Tnh6YWIzM1RWelRyUmFOVndhQkk2YkFUTnZj?=
 =?utf-8?B?dTR6a25PSFY2OERNUkVrb0NnZ2ZRWkIyb2xrMmh1OWthenBhaFJWQ1RTMnZv?=
 =?utf-8?B?QWVDSFVMVmlSa1A1WERSSXh4ZE05TXdBYzlGOVN6dmFFcUZjcExZOUdCeTJC?=
 =?utf-8?B?eEVCdUFGdm5hQjdhVTNRMGxhWmFkYUtBV09NUXVuNy81RVhUa1d0aUNJMm1t?=
 =?utf-8?B?VThKeS9OTmp2KzBHMnh5Z2xGTnQ3bTFZbnlIb3BPbVhxWThlMkIzYkMraU9P?=
 =?utf-8?B?NlA3WGZrSy9YenM2djBGZDAybGIxa2V6aG5oOUFCSXBmZnlFcG13U2o1QXdj?=
 =?utf-8?B?MUZ0VGZ5WWhTY2s2ZEdwL0JhRXhxdzZkcVFTa2plOVdtNWdDSzFkYTdmTVBz?=
 =?utf-8?B?QzVBZDJmaFdrOE9FeWVvUlA5NGJUeEtENHdVYllDb3FiTUdxZHlvOG02a0hW?=
 =?utf-8?B?aTFMYTc1cmNNVENoZUxSa2poT3pWNmxKUWhidDJmbS9ORUw0UW5kZFRTNlIw?=
 =?utf-8?B?OWhpWkxHM0pIR1lKT2U3T0c2d0p4WnJEaXpicEZ6Y25TTTJNcUhPL3BRMGVV?=
 =?utf-8?B?S1pzU01EZ2p2T1RGeXNRcm03TVpxb2dFdjA5QUZtdWFzU0ZDMTh0RnE3RXM2?=
 =?utf-8?B?ODNmYjY4ZEZTdFdmUGsvU2RxYVpuL0xobVBaZ2RhRXozU2pGWGFrOHlYQklw?=
 =?utf-8?B?Y1pGUlEyT1VUYnhHN2xMc3NUallIVnlzNTUwdDljM0hsVWhidmtxeHFvQWxG?=
 =?utf-8?B?WmtYZnA0NXAzbWVlbWlaM0JBejl2dE5kRGtZOEpKb0FIeWllV25LU1VSNTJ1?=
 =?utf-8?B?Y0ZNNTJaYkdOTFhNU0krSThmZ3VNcU9MVjllNzc2dUU0RXFQc0VoZ2JTenRj?=
 =?utf-8?B?emFFL0ljWFNiWGgvVWkzL3JmSzlDTysvS09iKzBtWFptelAwZFFvQmZoQ0px?=
 =?utf-8?B?UnhsV2RYYlFJdi95NXBiQzNoNnNnRHp1SWIxTVJkOFRneE9Jd2oyR0xsSDdO?=
 =?utf-8?B?NGVZWEtIUkppclBqS2k1NWxoNk5VNUtjbGFRaWdVaU10RExTSGFaQ2hDNC9t?=
 =?utf-8?B?Mko5N0xGM3FBWG10WStIYWdzelZjRHRhVlNHTHNFK0cxNWxHSFdEQTZ1QU1k?=
 =?utf-8?B?OGhJVWxXb3FJUTh6bHQ5RkFDUzllbVFmVWtNdWFQaVJJRFhWT0RtUUpIVmcz?=
 =?utf-8?B?c1Y0amNUcnN6b3dWSk11ZE9tU1dwaHREVWdZWk0yZzdwcm9VREw0RkdxSUFF?=
 =?utf-8?B?L1k3TmxnYTZwUFJ2SVc3V2Rpa0YwTDZPaEMycUJZVWFpR0JwdmU2N3p2N2N6?=
 =?utf-8?B?a2xPODRzcWhjRzRvcDBqY2hZV0p5K3RSMVJLb0Y0NEcvYm9HOURYN1hpb2Nr?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 654d0adb-2fa1-4a75-bc4f-08dabe8f8614
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 18:08:07.0140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PgLoVhqJAAHRpnrfFMbp1rUGwUvlw1lnY9NEnc7jZTAeY9FGxpeegc5TsEBeXvh509brTbXK5q3Iqls064pNZ/ft+ghZzNPOgIHiOx8AszU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5028
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667585290; x=1699121290;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lsEiPrWnIUhKtWTTV7K8vLvm6thv1qWLjB6bXzL93sw=;
 b=LS/Nb+8bSoSd9e8FBeCFbN0tTpexIAL1hHg8ssYUBWjoxWfnxSZ95b3A
 XhZyKl2ukBMCze+t0zCLlquqpbjup0DKN6Sl+p2jMFQVL3PZm+1XIYu/h
 92NzOT1b1NmFJMyUSKKC3lfHP1q+z6mtYHDSlrPLs9buS119wDK+gtTC4
 hm4EHIaH/9fOVHVhZ8jpKzWvXrPzJElYITqOQtrybctyTm5MEG6rNWMca
 ilAME5nW7yV0EhTjb1FlWzawy3Frqhgxy7vqUH3paOqnt+LIbukTj0oTp
 WyBRyRw1qN58zRI8cvBjwew4E+wNMLJS1JtO33b9w2/cLG4jYUlAU037D
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LS/Nb+8b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: move devlink port
 creation/deletion
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

On 10/28/2022 10:16 AM, Paul M Stillwell Jr wrote:
> Commit a286ba738714 ("ice: reorder PF/representor devlink
> port register/unregister flows") moved the code to create
> and destroy the devlink PF port. This was fine, but created
> a corner case issue in the case of ice_register_netdev()
> failing. In that case, the driver would end up calling
> ice_devlink_destroy_pf_port() twice.
> 
> Additionally, it makes no sense to tie creation of the devlink
> PF port to the creation of the netdev so separate out the
> code to create/destroy the devlink PF port from the netdev
> code. This makes it a cleaner interface.

This has conflicts now due to changes recently accepted into net-next 
[1]. Can you please update and resend.

Also, as you're moving devlink registration out, this kdoc should get 
updated as well [2]

> Fixes: a286ba738714 ("ice: reorder PF/representor devlink port register/unregister flows")
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=ac73d4bf2cdaf2cb8a43df8ee4a5c066d2c5d7b4
[2] 
https://elixir.bootlin.com/linux/v6.1-rc3/source/drivers/net/ethernet/intel/ice/ice_main.c#L4590
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
