Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A52B455F0D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 00:09:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8467681A12;
	Tue, 28 Jun 2022 22:09:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8467681A12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656454184;
	bh=C/6qEPFhBYWcXFfqSnr+YqgUt3AEH8HR2usCenUG+TI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HBYFkSHn2JtAgnghZhXIjvdwpAgzJIa97x1PRg0a26Lc7d8kseG8vmikWVneqPbcV
	 sGMMTtpAiuq54NuBSSkxagDeoKVTFs1yklTWZs38x/St6PcwvIyKBZLjRdZSzvnI6r
	 RE3ZvY25721STa9kW0rkWw2V1RB6pNcgpbtszwyI8YHU4M50YYS1WmeTOhvOXA809U
	 R3YIA9lQGNqDs4257x8DaMkP6rvwOFmrzFM1Kni8dHnBfwC/zQTsPS7ZmVDx9TnwOE
	 pe1/L0JDSY1CmEycIDnrpMEsxMu5NR14Da5ao871WFCz2Ri1jF2kAYP7fkvyA/dY0p
	 /AFYiKDaYgjDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GZSes_I1HQFk; Tue, 28 Jun 2022 22:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6575E8191E;
	Tue, 28 Jun 2022 22:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6575E8191E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 120261BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:09:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC7B7408BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC7B7408BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id POmuzymEQ4b3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 22:09:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2464408BC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2464408BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:09:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="262268949"
X-IronPort-AV: E=Sophos;i="5.92,229,1650956400"; d="scan'208";a="262268949"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 15:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,229,1650956400"; d="scan'208";a="767322267"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 28 Jun 2022 15:09:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:09:11 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:09:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 15:09:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 15:09:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l4prkRtHUfJ+rAm1fzsJdXjTiS5TG04fdLvP9ZtsjuE77K9QqlH18RACztfYztEG1cgscxYwYhyGF2OAY7b9UIVSSIYOg6JJuJ1bTvg7wor/860oszPQ6QrBj+X0YwMhliwRwdzW0oW5Vgax7mrGX9E/1ev5saaCZ0p++51giY0JoqrmuZrxHhEtk8Tfio0PdtqRQKmu3KjqMBG3FrUh3UduVgo/uOyW/U7Kprn7wjW9K+DJUzCp7lLwZw15HuuRHuzVZADfHNmBNd+ANgPIdwwNxaRyxQiRmTaSvD7/HCBEzRNfE8dsxW3IMZxPUPSD4bUnJ4ijgbL3yAV/fgugyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D7hBbCRHZG64ksLi+j1/MSe7x23KY9ZkVs6RCJJ655g=;
 b=oQ9jzIBGK0afCrLfmQi6wDZlDp6clgU3Qj7b+gUrTLpEpbF4NcEjiosCpQZKTYmHSMBS6DbmmydFM8izgSQW5pX8Adkmuq/80uHy3+5dCcZk9hxEpQGRcY9Q10CHL8gal5T3ABo5tLZL4q4xsQLj6MwCrsutcFIods4NwDAML/cwQy42c2tPZZr/i2xZLmTx/UtbMDG3VN8oRmUCD0h7AOE/DVykejgixANcni6Xc6Xosei7+3htTPo0K6CZAxpkKf8pkYOidasP9uzK2AnbIZf/R5sPihboB31UBNIIZ/lNEJ52nhdde0rJFEHxNRR108n5Jdxmx67OZqdm8sO/7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN8PR11MB3665.namprd11.prod.outlook.com (2603:10b6:408:91::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.17; Tue, 28 Jun
 2022 22:09:09 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 22:09:09 +0000
Message-ID: <30eee1c9-5cb0-4c30-b4e7-fb801fcccd3d@intel.com>
Date: Tue, 28 Jun 2022 15:09:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220624101611.1007933-1-michal.wilczynski@intel.com>
 <20220624101611.1007933-3-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220624101611.1007933-3-michal.wilczynski@intel.com>
X-ClientProxiedBy: CO2PR07CA0069.namprd07.prod.outlook.com (2603:10b6:100::37)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7869bcee-a8ff-4417-c50e-08da5952d33a
X-MS-TrafficTypeDiagnostic: BN8PR11MB3665:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PMpFJ6fMcF8aSXzRHfHqa70w5EWbRgPYbEdEeo/KUh5lbX3v2AikM+1ks0QhXV2p2nVe9uNROHO0aly2s/GBPoIIxmibeszFUzQr6UsR5s5SEtgtcQdMGDfxRNnzyEcSMjcoo6ii2HzTrPFcugzpqcbdS730MLeIHedllE8ZPkGiWCTS7kJekIuWZNqErQS8R/qoaE3aNfcqbNR/C7vB62WHz9b1RLQ6ssfeHQ4Q5C6UhwP/vPV9q8/QSNAzGNlIE5YvamtSzJ/f4Domh0BpWANE88c24pRXv2ZaWfvdp4wr+/0aORR9uPMVjHvw19Yrje5RRLUzA+Kll+hUMcJmELRV1yJiiixemkghkEHWMtl1gBeXeR44BSY+baeFT9zg522TtPLvb8lr4y8Pnq5lt8ELb3XoL1pIlfqOSeOtfkhY8dQEkLJ17qDzn9UCB8bAv/MyomBFkj1f6tKfHC49OE0HW4GevyxLSKnyaRb82YrNvLt10EfJJZPM/PD1HplS8Zb9Kz15Fg8yK2a1p7gAkSlwah9BqP6qwGPjSQhsXflNVOP+/nc6WPIQWICQ8/USo2uAAdLR0FARnmO4mxitmsC/fwONwiMqrPvgJ/522Vrpcb6PJjaqFHsiNjS6MSnyvxZxjBFq20ElhH2E+COaz3xq20slq1aAE0kxy9xXWOTK1DreSuH0VGl+cD+Oa+pFy+nqhAWuVAN4jbnI0rzK8HDEeJ+qTu5wxkJfQU48hAVijF+fok6jOGsMI6yCoDA13fdyb32mBe6m0YWVuNzlAnr0RSMZh4XyaYtMp+AtMI85Fn4caooprYI6H9DG9HS9mVJ4POxttQkAyakVZhMINg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(396003)(346002)(366004)(136003)(6486002)(82960400001)(86362001)(478600001)(316002)(2616005)(8936002)(5660300002)(4744005)(31696002)(8676002)(66946007)(66476007)(66556008)(186003)(53546011)(38100700002)(6666004)(41300700001)(6506007)(26005)(2906002)(31686004)(6512007)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEplNUs4Qk9Qd3BUYy94TnR1M2syN1d4aDBLVFJ0a0lQK2NhR1E0MGdzRXB6?=
 =?utf-8?B?VCtiTkpQM3o0UkhQSjVHeFBJYVk3SUVmcUZ4Q1dObFJqMjZENWlFQTQ5QTNY?=
 =?utf-8?B?Rk4vV0h5QTM2WFlKTlN1T3JVN2dST1BYNkQwajRtTFVvWlVWSy9sRnh0cUFz?=
 =?utf-8?B?MXFOQ3VCeDBNT0JoUDQ4VmR2R2c3aWZDZWJWcnZpdzR0aUdaMmNGTDdpSVZ0?=
 =?utf-8?B?S1NxVlNXNWZ5TDdMNDJxVGUwSHk0MkpueFJRR1hsUWZWUmFINDNaa1ZJUEdH?=
 =?utf-8?B?TVNBR1VFaXNWYmhJZHNxZVZhTGN4NTJkMW90STlIQUdmZFZtZmFEOUZkRE95?=
 =?utf-8?B?bWJwbjQvUzhrdnpKaEdhZjEwbHd0enZpNzJHeHQwVGJGeTRUUEV4RmNxNm5m?=
 =?utf-8?B?L2F4c3VRUU0ycTRFU3RzWVZPTXIrRnQzQW9LSE5SalBkSnNqNFlaRm5qQUlE?=
 =?utf-8?B?S2RRb3N5THRNVWM3U2Qvd1BiQThEQ2s5UW95dTBHYmhHcHFGS21rcVhxUnEr?=
 =?utf-8?B?bzY0Z3hTRENJUmp3aXZ1RWRUeENCZkxTNnFlSGJHWEVYcVNoaXZhRldIMi9F?=
 =?utf-8?B?Q2FQYTBiZlNzcUVCR0pPQzNQNUxNd25NTHlnenJZNnNwQkcrUnRHN1FFdzJs?=
 =?utf-8?B?VEN3MkEySElDTkN3K2ZpQXlBTG5oYndSVmdHc2NnRzdVeHJjNXlYeWxUUVJ1?=
 =?utf-8?B?SUtIM2I5c0R2cmhQdkhzVnJQemVaU1FEMjErYTVJZ0xJSzN0Tkw2cjdlU3Rm?=
 =?utf-8?B?d1lmd3IwYTNsR29ZdnpnOG5rOGpKQWd5YjNwMnl0MzhRNnlEVVRRdHFjVGlO?=
 =?utf-8?B?bFY4ZzlzczNud3RTTllvRTRKR1lRRTVNVnFERlBaTms0K0gvb2sxTm5hQmlp?=
 =?utf-8?B?eWtMWHZYVHVOTVR4c3hTek1GclV0cWUwS0o0anAwdWVRcUFwc0xzZi9XM1Vk?=
 =?utf-8?B?WUVSS1MzNjQ2NGVYbHl2enFKTVoyMUsyK3Z0K3JuRm15dmdIWnlod3lZMVBp?=
 =?utf-8?B?Zkp3UjJxeG80U2xiVzlVMHl3VFVWOXJpckpCYmNMREtQNXpNaU9nQUx1TTB6?=
 =?utf-8?B?ZVFKY092T0J6VlJ3ZkpITkF5ZzNtNXhHSHgvRE8rMFpFUWt4OVVPZFltNHkw?=
 =?utf-8?B?R3BnL0prQTM4SGprQjFPLzA1ZEp5MkhmUnBsSDBwNGFVTHZsbmFJak9NV0N0?=
 =?utf-8?B?Z0ZUVitHWi9PbDV0WU1WcWhieExHaWxwTm1pN01rR3k5Vk0xUVJ6Q2xTMnpX?=
 =?utf-8?B?OVJjR0lmQUpkQ3ZqRHlFMzB5TlpkeFNJVkhvdHZIRWVvdnl6TXcxT0Z4Rm9L?=
 =?utf-8?B?VDB5UzBGSW1tSjloNTJTd0p2aVdCYjMrOXhwRnE4aStCMU93bjZSaGVkV3Fr?=
 =?utf-8?B?d1F4RmYxWkZaTjNRLzVNK3lFYkhWQ3RBWnp5WmxRSW5QK0txbmZHbHBUSEt3?=
 =?utf-8?B?bEtjaE11Z0IzOGlHcm83bHVSM3FmbVR0WkxhR1dvWHBBTFpFUFZreStGblJM?=
 =?utf-8?B?WDRLSDkwbDJoVlU5emVmSmJZR3NjYTlocEorQ0gxV3N4RTBidmtUbE5sQkRz?=
 =?utf-8?B?SEhmdTcvdXFuSk1XRUUzWnIwNThobFFsdHNreUZLUUVWbTM3eDlIS0JTcDJa?=
 =?utf-8?B?Z3F2SlNPT1FzMU5ndFVScWNhZi9vVmVoLzlGNVI2Z01sQVQycno5TzBpcHI5?=
 =?utf-8?B?VlFldVM5VTVWL0J1azRXRHJIZ1kwQlladGl2VmZ0elA5V3pxV2R6R0djcEdJ?=
 =?utf-8?B?ZzVReFI1b0x4dlVjc1VNcnlvZHJVMzRlcyt6NVAxUEd3dzVHZVc3RVpPYTZr?=
 =?utf-8?B?TFkrZjhHK2RqOWFONVVaQkg0RTQwVlZlM1ZER0JBQlJ2czBudFE5OGVXdTlu?=
 =?utf-8?B?M00yTGZmcTVMaGVOR1AxY00rTUpXOHlyUnRNTGZ4eHZLT3U0ZVFEcEppaDEr?=
 =?utf-8?B?VEZnS3IzdE5UekNuMTVCM05DY2xEWGVqdHJWa2VvQ1dpOXhibFFaTEltcnBN?=
 =?utf-8?B?NDNvcE53SWpYYUZzcHpmajRSMzJ3RW42L2xXd0JwTjFHY0VPSGVFbWtZekg1?=
 =?utf-8?B?VlVMQThSNU51ZWRFTTBFdnZNTk12ZTNreVNsVHpickFxdFNWTDlBNzZjaExw?=
 =?utf-8?B?T3YyRkFzNVIzb0Z5TnRrYlVEVU1YTTUzK3BFalV2TnJpYU9YaVIydDQzYTBw?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7869bcee-a8ff-4417-c50e-08da5952d33a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 22:09:09.3787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uoqnScr3mdDkwYcUfuC0U4j/i0A7aw33bJekLSPf8yRp8jkoUhzEozj5ETgD+zZrEqmljVsXm/zhA9yviYJujeoQM1cNrjp16VZ8PpxTf6I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3665
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656454176; x=1687990176;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JCgLWpRAEV8ns+WILZRveXNI9lIob6A95A5O35fTj00=;
 b=iGOpnQrPrJsXEzHlSq/AItA86ESmbfEzVJH7HdY64JzBX2mPDPzRVOpF
 crL2p2oRyXPflmPq1YyDvjiN+efZjVdG0RbSf9AcuCovk5szSAmpFYh/g
 j3WIGgREDZwme3pxOEqc0oGo+LdCf5x6MKMw7/jtUwrrX5+poFrUAi7Rv
 L9kkE6MjtX8SucgSD7qhuuIUmqs+4Z17w3wqKSWpSxtiIHgSHT/ElONQT
 SvRuAoyH15fouUqYvojfGe1xeAfImwhRdgC4a7Uo/05m2s7mXLCw0OwML
 zXY7uKGiqkpfJtV6QarsRvYx9vdZee2hW5/a01IlgetnGlq9c9ryJVjas
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iGOpnQrP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: Fix promiscuous
 mode not turning off
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



On 6/24/2022 3:16 AM, Michal Wilczynski wrote:
> When trust is turned off for the VF, the expectation is that
> promiscuous and allmulticast filters are removed.
> Currently default VSI filter is not getting cleared in this
> flow.
> 
> Example:
> 
> ip link set enp236s0f0 vf 0 trust on
> ip link set enp236s0f0v0 promisc on
> ip link set enp236s0f0 vf 0 trust off
> /* promiscuous mode is still enabled on VF0 */

Why not net?

> Remove switch filters for both cases.
> This commit fixes above behavior by removing default VSI filters
> and allmulticast filters when vf-true-promisc-support is OFF.
> 
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
