Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 644B368E0CF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 20:03:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8080813FF;
	Tue,  7 Feb 2023 19:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8080813FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675796621;
	bh=//pX1QEpFWFRYvgudU+OV5l/XFnxYWirZZSs8k8PRCU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3AgFpAIrn7P+Lg3BKcu1aPJr7DNyqCbrnQiRA3N1wZ5N4du/k78HRm2qijNsb+p9F
	 6ADX4z13n4EcIyBCudKenqvWxnNTMGwj4goHtbzrzzuoiXGV7ovc6WnqV73SGU09mN
	 c/CmFqEV010H0BKCPtZFjQJ3O9n2rRYCKCOZVz5C7NT2Y4DzcjFzYHTBgBoO1FnxZJ
	 c7niUsAE6+OpRV4k0k0NVPwfF5kuHCoF2VKIm+1G5K84q6a/brgKBszpA4/g1n5+cM
	 YqEeFLwbmH1cEbWHi2ztzOlKVXCCxl9nXEWWjHrFYYSM/Okq/fvnIpO8T3kQSxUoP1
	 JFI5w3e+9MSgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJsRjEDwujpT; Tue,  7 Feb 2023 19:03:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C688A8109A;
	Tue,  7 Feb 2023 19:03:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C688A8109A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49E4A1BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 19:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 204DA61021
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 19:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 204DA61021
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tqb9OHLdmvi5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 19:03:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37D116076C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 37D116076C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 19:03:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="327291607"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="327291607"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 11:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="995835721"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="995835721"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 07 Feb 2023 11:03:15 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:03:15 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:03:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 11:03:14 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 11:03:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aFys4PUk2hKZjgGZDckMkeNH34aRAteTjSl9ybMLL3veqHl5xxcfgYM2Q574sIDFuMgaTDKIkylylS2a0zvCzVCt5KPx0qgZ/vS5/B0OCb4muUaL7+7pP82YtWhs4WJI5O+H8//OrbO9dXAilTpv1bxCryPL570et79svP4f+4pQlm/U0M1Gc6pnM0oyzHfFU/Oyp7g9dSpaSQNZAqtpHbHosv3rOeogH5IMB8WUqCIPr2mYdZjJPjCdO+JZ6aRwer9uJJm2k0WGvEi+fTuZ8kAeuQy0xQhB2S90X0tjRdMEWowFjf9gta0ST0pR6zhk+/PoqWAzadENuFVZgioSHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cfriYTF/8DxkGhXzdjwnDTWl456OkznCP9aWYQ1ZKDw=;
 b=Cg9V5nu24oEv3LtFwqhLEYZpRipRTtWCSuBpwQnViX8Pkin0Bnh9v3n7s+ENCl5bmvqnXCnAF21dLfJFnYz48/0Nb3xHfe0ruqrVw/Jv+lZZaYY+aK+++GJ18HoI6+HOMyBbhUxP39EkOgDqAkb5BeDr0pH+MStdO0lm09x2mZBZ5FyqTnRbV2BVhFX4QiuEAkUpd49OtP/xh3qSHE0Rcht9d7W9BsqHRGieFOov/cDOQlcv+ps1WVGcRYn6cZyW05wPznupPey8G3e99Cush43sPn12fpdQZRxSGPEI1Z5Z3XunNTKxT7d6CNLDR2i4jNiO+avMhqu137FAflRKgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB6734.namprd11.prod.outlook.com (2603:10b6:806:25d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 19:03:12 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6064.032; Tue, 7 Feb 2023
 19:03:12 +0000
Message-ID: <8d2ec49e-9023-5180-54c4-c09db24d2225@intel.com>
Date: Tue, 7 Feb 2023 11:03:09 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jason Xing <kerneljasonxing@gmail.com>, <jesse.brandeburg@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <richardcochran@gmail.com>, <ast@kernel.org>,
 <daniel@iogearbox.net>, <hawk@kernel.org>, <john.fastabend@gmail.com>,
 <alexandr.lobakin@intel.com>, <maciej.fijalkowski@intel.com>
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
 <20230204133535.99921-2-kerneljasonxing@gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230204133535.99921-2-kerneljasonxing@gmail.com>
X-ClientProxiedBy: BYAPR08CA0064.namprd08.prod.outlook.com
 (2603:10b6:a03:117::41) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA1PR11MB6734:EE_
X-MS-Office365-Filtering-Correlation-Id: 7597dc6a-1964-4a08-6e28-08db093df5cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O3pyX8Okwc8EXPkrsfRA6S8Cmhik8z+mTCo1F/fQFI1hkW0BVZ3FUNonLNd+eYpuaQBIIartaiSr3fQIwlsxUmpfrwabwjl3YbHKuDgY1lOjTF7sQHfVD+po40Lt9cIOg6lhBRLNfvf0zN/hD0XjoIwCQ2l+ncC+F0cwYbLF7otB+SOPjXDix8AKsctqPoWgaRXK8qxoM/e7wXpeq5mlSK6wd8068FqZidNMp4H9U1N9rVZVtfEBGdYq2Ipy3BuhYfgW1xdvmcvoeM2giS/r9CxwvP8OR9Xz0v6etcl1aBFJZpwIq9TniPZG028rz/78hEqCDLsBJxgSP+d1mNCCvtj0K3LI4mfSmb3wbnhbOsliOgqeeTVcWuEnmUfOegZM/QfqwRVGFgQXeSFyJCqfq4Bx2OsTos0aKxk56nGCy6nkISlAr6/0KDTWo7/64/NN+yBfwubNOxJ0l5i8tQH/DgK7HhMK0bytpWXlMNyd4WdSJLA28+KWoQUvm/oPkOelw6man4iXjqrGWSTbBuXNjpTxOK1pTldCcXkuP3ffHekOZvurwCgys6TdV46m+JGj7sky9c82AnevcM7BHJYFGVMamewLSVzsTxe5pF7lZK5wiSoBR6h21rR9MM6cn97ypZkjHhXV2+YZ5XXiWfW5rYrVpekLVlRIWqMXWVpPJHp0JpL3doPifww3702EfWvO0dHFKYHZ3ldiF6QUYSzji+T/NfMqSIrTytrfJwMw6t4pTqDHDstX9uPp/fvFKjw5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199018)(7416002)(2906002)(36756003)(82960400001)(53546011)(83380400001)(186003)(38100700002)(6512007)(6506007)(26005)(66476007)(66556008)(66946007)(41300700001)(4326008)(2616005)(921005)(316002)(31696002)(86362001)(8676002)(8936002)(5660300002)(6666004)(6636002)(6486002)(478600001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHFDaTFsMHV6ZkUxN2xTbXNEN0o0N29xUUlTSGpPR1NRREFrcXVWd1VRU1JT?=
 =?utf-8?B?UHlJSmZrVHZEelM1alFMdXc3NDFYYmFwcVJtLytsdHk2WC9MYXF3KzN2ZWwr?=
 =?utf-8?B?dVRZdE5BVnkyVHZIWEtjTEJIMC9oaDNqTUVFWXU3YW5jZkpqUjRiNWdOOXR5?=
 =?utf-8?B?amViMjVzWm1LNGtyMGFNcWREMWtVdEVxeVUwQlRJM0ZKSDExMTJlK2NVVU9U?=
 =?utf-8?B?Q3c5ZVgvdGx2QVNHSVBoL0I3b3ZXY3UxdVVxbnpVTnBZeVZWbjBiZGJtL1U4?=
 =?utf-8?B?Z2RrNmVHOVRBVDZzLzEzSUZtRWNTMmptMjUxYVpBNXIrNGpqQ05ySVFNczBQ?=
 =?utf-8?B?VzRVeDJwdzZaN0pHRTdsazJQRFpQQkRqQmNQeXN3OGZTT0JyeHk5Qy9XRHM5?=
 =?utf-8?B?RStocmx3UE4zNDh5L2JxZUFOV2llQUZTUDBLTThBN05TYXZWOGRKN0NrNE43?=
 =?utf-8?B?c01TaWJQUms0dEgwaWxiL1BwKzBYRS9odjRkdWJ4d2Vad1dtUS9sM1V4QTRi?=
 =?utf-8?B?SFJoSWF2NE9OYUsrK1NaOGhoSFRpd0JjbUZDa0krSHlPWU4yN2pmSWg5Tmty?=
 =?utf-8?B?emE0UlNFcXRRc092dlVCT1lyM3FPV1REdXpkdTBJUHllWDJiaUVqSzROMkJQ?=
 =?utf-8?B?YXZQckJOM21XNmpXd2ltSXdRMHNxSk8xT245eDMyVWt0UW9xNDZaV0dTblFZ?=
 =?utf-8?B?RnZXL0gyWTNHejZrWE1FdjYzbzhzeXRNSDNLMUl6Qy92U3ZLMlZvT0IxWVVi?=
 =?utf-8?B?UTBFZUV6U3d0OCs1dTdJSXNDd1BQQVRIR3lpNVkzemlFRmZwTHFSNlJEOUlt?=
 =?utf-8?B?U0dQWWgwUTBEODJLbUE4M29HYmsxVFYxaEtEU2Z2ZGZaejRaTFZabDcrRXpo?=
 =?utf-8?B?M3Bkb0h2Q3ZNazFEcmtIZWJ1VUxmTFJOVkdld0dNSWd1Rm9ZRWFxMGR1bjA2?=
 =?utf-8?B?RlpUMUkyYUx0NTVKb2JJckJuSTN6TnVqRDJ4NUZxeXJORVprR2NkUzhxQkZs?=
 =?utf-8?B?OFVROGY5b0xDcThXOUh1NG56SlBPRWZwaGVLSmFRUkZUWFhYWTU2bEh0MWUy?=
 =?utf-8?B?cmZIbjFzMkRCOFJLYXVacDJYTndYbnhWUGs4MFRmMkxia3h4TGUveEFYQnZU?=
 =?utf-8?B?dURncXV3cDE2VlRvOFhGWHlDSDRFQlQzL1gzeTNtcHRNRzRIQ21YWEtEcnA5?=
 =?utf-8?B?bWI4aUNRQ1YwY1RxaG5RVUxOVmk1dkNmbGd5RHVvRjRibFM4aUJzT3cxV3RW?=
 =?utf-8?B?d0wxS1Y5ZU8rV3JDT216VGhDclNKei9oZmszVjdsV3ByckxOSkNIQk1CMGFv?=
 =?utf-8?B?NnNESVFFZHlsY0luai80SjZKSnBFcnRDc1pnL09LdXhzVW9PQ3VPcFNoK3ZC?=
 =?utf-8?B?SDNNaEZ6ZUJzNUV3UDAyYWJieDZGT2ZjcDRtU3lXY1o4U0tHRmo4VlV0aTVE?=
 =?utf-8?B?bC95NzB2dXhISFhMMjBBQ0JyRUtZUXFUVjEwc3lBZXJlV0hJWWZ5cjJ4dVJV?=
 =?utf-8?B?UkQvUkNYOVRhbXFnL1F1VHZ1a2dlN1QxNWZCSkxjOUY3ZzQra21Qcm1QMklW?=
 =?utf-8?B?OXJyVzRuTFR2TjRLamhhYkVmK090ZW5aaXMwNmsrNlp5K3BnSXgzMWxLaG0v?=
 =?utf-8?B?c2NDQ21QSXR2dVJ1MjVzNDhzY2V0SHY4RmVWWnVuR0ZmTUVRaWo4NTJQNUQ1?=
 =?utf-8?B?OWI0dVBEUHpacEtXc1ZmaFJScGdTcXVqZlpRbTdETktxYWJTV2hTYkUvQjE4?=
 =?utf-8?B?ZEtrcmhzNmZTTTJvNXFSS2pLNUVFenF1WjNGTjF2Qlp3UHh0Vzk2SnZWc1RM?=
 =?utf-8?B?SHFwWFdoajFkNDN5eERPcnpFVnluVlZvenBYMFJ2eFhPMFZYOEc2QzBjVlM1?=
 =?utf-8?B?SUU5a1U4dnlDMTZ5SkNqYmtoWUczYlNwS1NqMmdzekhBeHlVczFJdXpUWTBS?=
 =?utf-8?B?YzN2MjBnNy81NDZYTjhnZ3BYR1ozVkltRitscEc0RXFMYU1QeEtDUFNEdG55?=
 =?utf-8?B?eDRwZFpjdldpMHlpallRTzl3MHZ0YmIvVENlSHB1T0RLM2lKaWJjT2JxRjNQ?=
 =?utf-8?B?bFFCTFhiM0QwQlJQK3IyOWwrc2x2SDEwdUxmMmhVTTRuL3p2M3RBZlhOWWNi?=
 =?utf-8?B?aGZTVitLNlQxbFJGeDM2aEwyV1BTNEhIMktYbnFxaTRDN3BPejdOdDg0RmJs?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7597dc6a-1964-4a08-6e28-08db093df5cf
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 19:03:12.6911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zs2I/TvweDHph9kiVFH95Rc38owBoOaG4CpLzMIJzvkXLzS4LhJQfxhqZ7eLVRWPrRQY8MXViUXU/GDVsFWZnzQpRZBMV9r2TgMmyODk0H0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6734
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675796614; x=1707332614;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q0QKk+91v1IX1XLnRgCgzPSUosBr6iDFEX8qCuCxn8E=;
 b=Kws61QNmm99vGkpCwLdjSSgjFGwlrRWfKZ6l7F7scgLLAFaFru+cZy+8
 GXHoz3l/PEk/wPnPjBv0xJ2EewepT5BcUzD7TDF6mL1kKV3Mxhq+HLDfW
 Li7mj9gIbCK4aT48ZeLkJXBYUl7wBuT9G16RiZW8lapnFkI8vdQFimTV5
 CRSaI8Hg7cMcoHdC9ocomKRe+ajjHcoNoVgjI3YUdr4ETCiEwMnbiWya4
 MoPEozI+RN06k6sOmDsNJgP7aQ8BMRGFsTP4vTseKbltrSzC1lypRyE92
 ZWEpSxxI90/dheuK6uUqNmRcfMcBcqwg+P4K1UM0bg7G5YPmC5a2qhigw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kws61QNm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/3] ixgbe: allow to increase
 MTU to 3K with XDP enabled
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/4/2023 5:35 AM, Jason Xing wrote:
> From: Jason Xing <kernelxing@tencent.com>

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ab8370c413f3..2c1b6eb60436 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6777,6 +6777,18 @@ static void ixgbe_free_all_rx_resources(struct ixgbe_adapter *adapter)
>   			ixgbe_free_rx_resources(adapter->rx_ring[i]);
>   }
>   
> +/**
> + * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
> + * @adapter - device handle, pointer to adapter
> + */

Please use ':' instead of '-' for kdoc

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:6785: warning: Function 
parameter or member 'adapter' not described in 'ixgbe_max_xdp_frame_size'

i.e.

@adapter: device handle, pointer to adapter

> +static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
> +{
> +	if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
> +		return IXGBE_RXBUFFER_2K;
> +	else
> +		return IXGBE_RXBUFFER_3K;
> +}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
