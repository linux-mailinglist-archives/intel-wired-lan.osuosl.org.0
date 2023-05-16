Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C3A7058A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 22:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4B1E429AD;
	Tue, 16 May 2023 20:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4B1E429AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684268509;
	bh=TIcoccVKMAsZWrSKoZuwsRt2dCxMTxfsJm1omZ9RoUE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9KYNzjIFghToyCw1LCDSueEn1CRxSUQrQdqpYd0U9UPv9McaVnYtvfJLSJtbPYZlv
	 shlK3FWzac5DZZDRYVapXGIgnyIfpnGxmsz+pMeSyR312KbpYXbDK2gShOUMLnk12S
	 J3NKUMnc1Axn4svBXe+x4JEpJSDYWqnNH3WMfw3XZf/e+QxuhOeg8x4yOO9pLoW+R7
	 YtUD5/f/tfzjAXYdUNzsCtWWgzhVPk9mUZUw714LsdBTdyjU5AietsrG0UILPG/Fas
	 ArB1wPhjX/rEwgHV/0FANHjZqrJ9RhUOytj7NW70JUuwl4ouobyEMrlOrJxQh5nAyH
	 whPPAjTXtLfLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8iIzF0NRx69b; Tue, 16 May 2023 20:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DB8D429A1;
	Tue, 16 May 2023 20:21:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DB8D429A1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 937F51BF426
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 20:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76F9F616D1
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 20:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76F9F616D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TD95-De59Tuj for <intel-wired-lan@osuosl.org>;
 Tue, 16 May 2023 20:21:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99FF6616CF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99FF6616CF
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 20:21:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="414986981"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="414986981"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 13:21:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="732118767"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="732118767"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 16 May 2023 13:21:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 13:21:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 13:21:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 13:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npssQGZUEgaCgAQik8N3u4PGcxYXqTMx5fh9MHEUhzrP64SK7bTCwcmyEHp9gPYBoTzyF2fDRzixERn1rOV5AQiq4tBXgncx7R/vEaqtMAsychfTrRGZba2ZcXqnx9ISXsJtDWKacS5k/uxM8Jw03Rr0HnjJLCRHfVGpe/HV6B2l+ZSj2MlxFB5bM5YrAPP0/ZjB4M25J4oQrEg97sDSXLtu3egOp+R+O5v5STFWxPBYM7P1fKuHzGq5JRWbvL4Eei4w3kDBq1+EMPqMY2rUVSgHcDt7sx4PyMpLJmpJmwYtvpwAL+QTgKaiZUqPCwlFQtdL4MvJM022q3vKSlRX0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wcBsGL0Jpe0v6goXiO/QhEnv2cqWZ6tLNHvAq2LeYMQ=;
 b=Ve41ItSjdPRxPx7bTRUjYC0uTxeJWdgcczcqoMyqc6vK5/iSa1hjNzI3g5YqGQi1rFi73FNjfjO9DoHv6UkQkGiECmYZ9yNsEd4zTdSngced0JNE5UZo/IsbVbofUZiW2DtOsaXvXDPClyysBhpMklsdvjX445mm5Ix3x1LBQ0uM5iFMwboec/Kc9hcJNiO0P03wMFm02aKyWql3ALeaCDVoTXuWOGjI+gh5FTBO69OdznODfSHMv5rEmaibRqh0iRkZa61xo1rMTOtaFARI1pX+vclTzsbnGYbk70+UBAhtyTizTmUmkbJiq3KKcWlalimT2xSTdYMn0IIvDIlP2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB5182.namprd11.prod.outlook.com (2603:10b6:a03:2ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Tue, 16 May
 2023 20:21:39 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%6]) with mapi id 15.20.6387.030; Tue, 16 May 2023
 20:21:39 +0000
Message-ID: <c952fd10-990f-6d7d-3832-6849bb0b610b@intel.com>
Date: Tue, 16 May 2023 13:21:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230516035113.4147-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230516035113.4147-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: BYAPR07CA0070.namprd07.prod.outlook.com
 (2603:10b6:a03:60::47) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB5182:EE_
X-MS-Office365-Filtering-Correlation-Id: a4f74941-93b9-48fb-51a5-08db564b2742
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MvSmG3D4QvuivHKt5TLXG/5/tNTizxL/Qug3gSa+y+0akZnV6oU1YvWZRUtsDFH3D3EZMbN8aFuyiklwkn4n24LM+cacA1C+J39hjnPyZhFVRehGTKh6LIT/dS8sjYI9xqkI1vmMBO7De0gbjuh2reQFr4no6RMzI7Krwc2m1ttbPs6IisaMw1CmxFB2ma3+l2uGRnVA2EpcH2dpJ18XERptF7C1jnUouHsaeOUIDBk7hVuDQ2JgKNmpjfH/vNeeGuT/z6C+JVHpuABq5vDiwzD9loSUEglrXvgZ37RY4u9GLo3g6DpJyOWHjKcuJ5cf7G6SzXOc1VMZwBUO5dWYiHEVRTwWyM+nAGx6MOpBuxcF5J/fVPGYcrUPzaOxLOpO+6GuijfNgTpX18jC2/8SJ5EkIYybKklZJlZyzq2AtxVO9xYlSVXECnAaZf3Eyg84oPR2KHLoX1QUqlIblXLcJpXlnqEIQjXhdN0VGK1rHdJWFfKweJFh4YE+mXlmc1u3JgHPWCpKj0KrXO0L8n3TtwJEOGOkrdLrcFmcOYF1uH848K4LNKCKmur22pSwNaHWKCtaqpFsufS7DmnBCaMVceR2AO+F2Fxu28QQ0/+ubQV8DQDKSqI64yURFuXjJv3y1Ldw60WlVkPL2mby05jB5g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(376002)(366004)(346002)(396003)(451199021)(6512007)(26005)(53546011)(6506007)(83380400001)(36756003)(2616005)(38100700002)(86362001)(31696002)(82960400001)(186003)(2906002)(316002)(31686004)(478600001)(5660300002)(66946007)(66556008)(66476007)(8936002)(8676002)(4326008)(41300700001)(6486002)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEtrb1pieGhrYmhQWTJyNjJBTjQ3VWhmZzMxNlJvSHNUQlhvMXZVbURLSUhk?=
 =?utf-8?B?d0F1dTNoSFQvcE95YXZ5NnNIK3FYc0tyWGFpT3FMR01sY1EwbVVvaFNSdkpU?=
 =?utf-8?B?Vm9TUkdtcXNuZVBBaEZucDhDeU5JVExXc2lNTG1BdWQrb25FMitmUEVtL1pW?=
 =?utf-8?B?ZDRyQjV5U05jdG5jRGJLSXk2MDVicWRpSjVxRWh3R0JhU3pQUVY3d004WTEr?=
 =?utf-8?B?VGwwOVFhQ2w4YStpNXRIaDZsZUhxa1ZEZjJ3SkgyT2dtL0didG1MTUEzZXQ4?=
 =?utf-8?B?ZXdCRm5NK1BZTXd3R21CUzhtY2Q5Q0tNSUsrNlFCVTBicjZBR2R5bjNqMFFq?=
 =?utf-8?B?emtUbVV1aWIvc1d5UVBlVFFjTVMrQnJTNWo2R004M3hNZWRJL0hGMHB2Tjdr?=
 =?utf-8?B?cDk5Qkw2ZDczeGJLK0ZPaU42OGJLbnlOSjdkVE92UlBsQXgvMW0vK0txSDNp?=
 =?utf-8?B?bWMxRHExNXpkOHlKdmVjVFpZWE1wQlFBcys5WFJLMWhqUDlXQkJ2OVdqOHgr?=
 =?utf-8?B?cXgvdm1ST0hWYkx3K0dnS054YUwyWXlhek5iTmN1eW53cFQ1N2REMGVsVzRn?=
 =?utf-8?B?OXY0ZzdBank0YWZMRW1hNXBrSXoxbEI1TnFieGdwVGxrbUdWVnFrQkRjWWhm?=
 =?utf-8?B?aW81YjZLNHJzV25Fd3N2ZE9JMlRISFdEdGgwNStCWUxwZkJiSWw5VnJ6dERW?=
 =?utf-8?B?L3F2eVpLYkVrbnJLcTdLRlRLSXZCdTF0MDlpekhHZWNLR3l1c2ZydUt4WXFj?=
 =?utf-8?B?ZThJb0NNd0hhajhkTU9Da1dMWWFvdTlESUlaQVpyZlVpd3F1dEJ3Wll6WGFi?=
 =?utf-8?B?bDRDR3c1bUlWbmhHeGttaEZDaGd4aEF3TmtUaUpRejg3MTJuZXYwaGNERytu?=
 =?utf-8?B?VlVCTUxMUFAweVJsR1dTOG5QTzFEWVpVU3Q3cFpwWlVrTkVhSHJSNlpCc2pD?=
 =?utf-8?B?c3I1MnZuQWU3SXJYbmxOUldhQ1ZkeEYwUGpFeUFmaUZDLzFUSEtXQkJUZk52?=
 =?utf-8?B?aTUxQk9FcGVCN0UxN1N6VnlJemNFNXJZRTdWQ0tXQ1NOTlBadmIyRlRXeTQx?=
 =?utf-8?B?VG1CdkZPR0ZyVk5xL2JTTXNPMEhORzR4YnJ5bzc0QzBzclg1dUV0R050Rldm?=
 =?utf-8?B?NzlUOE51am44emtGVEt4YTVsc1QyZ0owdXNaODhWREsyU3JzWmx3Y2tXVlhm?=
 =?utf-8?B?L3o3YlM1SUVCSlBLQThBQlFaNEpEZHJsMmtvZEFmTWYweDI0Qm9KWHlzUGZD?=
 =?utf-8?B?eFlMdG4zNWZESHFZU0xFSkp2RlgreTMwQ0RwOWVPVVNUUGRqdjRodmlwd3V3?=
 =?utf-8?B?dit5NEtpRnhXZ1lNdnJhc2VYa2NpRk9pdzVyRGM2NE0vT3d3YVEyVWxueUJ6?=
 =?utf-8?B?a01ZR3hLMDlVcW1HcUY0OUdLL2daQmFXVll5NTZZYk14TFZkeVJhSHIxZGhP?=
 =?utf-8?B?WFg4NWNqcTRPcmVYV2ZXQ2dvaTRXTHBNVWVrellPUEs1T0gxaHdKaURyRTJT?=
 =?utf-8?B?Y1hNME1HNzZVbnhSY2svNURZVGJ6MW1HeXN1K3lYck01YXo4Wng3NFhmSlR3?=
 =?utf-8?B?UUlTY3pSZHFKMVppUlp6SGo3aEZoQXRzSUFPaU1yaGRGTjZQSzNKa1ZnejNt?=
 =?utf-8?B?dnFRT2ZrUSs0eFM2eHNyZ1pSQ3N0QUxnZWdPK0crRFcwM1F6dzZJZS96clFt?=
 =?utf-8?B?RmtxMVFCeWZUZS9WZ09aWWpIQXJVejZydFVGaHgwNUlJYm8yUGZXbk11c0tN?=
 =?utf-8?B?MllYTHdDMFFEYVYwcnpPSWRXS29BY0Z2Nzd0cU5RUW81Q1padzRickZ1SG5Q?=
 =?utf-8?B?YmttWUhvb3ZrbEV5NFVCV1VqS2JRWEducmtRQ2xuYkZQdGpIU2lOZ0d2MjUr?=
 =?utf-8?B?RGZJMFM4UkNoSUN3Q0k5eEJvazZwNkFDUUpDZDhLU00rNFM1ZUxLSjIyZmhm?=
 =?utf-8?B?R0RjeGV0L0ZrRnNQZEFrZW0rYi8rNmpnNHNub0ZnbUptcUlObmRHd0xqYXQ2?=
 =?utf-8?B?YzdHOFZKTVY5aEZjSmJJOE42dVByQ2F5VytYOCs3QXYwTU5FWHZZekkrc243?=
 =?utf-8?B?TXFocmZ5TVAzSUVnU2ltbVptUno2a3o0QmpsNEpYQkc5UEMzVkRJVlgwRzhX?=
 =?utf-8?B?MVVWeW5zUUQxYndyTERxUHR4cmpIOEVlVkJMZU9DajNuVXRLMnZ6aFNmaEhG?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4f74941-93b9-48fb-51a5-08db564b2742
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 20:21:38.7622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: alkchLKP9n51aLKjX8kHX96vTB4u/wdM4OSYksDZeNEtmW2kijWeXCHQaRa0fp6y769yzu+0JyhSGYLzqt2/5xYV3SWaTzi2S51tdnJ2+bc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684268502; x=1715804502;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GzMaFSEbvIVkU6KTE5tpRz9RzH08MV3mIVYQQn5gmtE=;
 b=Uqnktgowh3XMQpsuUi6wz1T4D4AvyqySPfIMIBAevutFamckzNMLiOcW
 PXstId/jtpv49FBvwZtPxdxozN1Jr06gMK4Fa9nFDs0Sxnz1JbdGMvOmT
 pj2ilD4aztIVwdcTuhZOW3Aed1Suwi+emg32AaRJFTxR3WtAiZqAOCTfw
 GlIwy3dhSUDlJg7cchuc+oat8VK4N8K9IFaI5OAMFKj/pTFp0WpGPC5bL
 iIEpVLDSjiV4tACqHIbcEdL62F4EexcEH3lQKrfq6Tv1GsPOcxl+pOjBc
 Mmekc66gV1JaVyEhLRf0gNsdE9847hG0KdCctL2URdfhghjPzm3jnTFt5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uqnktgow
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Remove delay during
 TX ring configuration
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

On 5/15/2023 8:51 PM, Muhammad Husaini Zulkifli wrote:
> Remove unnecessary delay during the TX ring configuration.
> It doesn't mentioned about this delay in the Software User Manual.
> It might have been ported from legacy code I210 in the past.

Can you please provide more info. What's the problem you're fixing? How 
is this fixing it? If there's a splat, that would be helpful.

> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ca0e6d4141a05..b1d0b3a8bdc41 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -711,7 +711,6 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
>   	/* disable the queue */
>   	wr32(IGC_TXDCTL(reg_idx), 0);
>   	wrfl();
> -	mdelay(10);
>   
>   	wr32(IGC_TDLEN(reg_idx),
>   	     ring->count * sizeof(union igc_adv_tx_desc));
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
