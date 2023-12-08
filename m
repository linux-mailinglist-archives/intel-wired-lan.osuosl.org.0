Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3469080A163
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 11:44:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBBD3421AA;
	Fri,  8 Dec 2023 10:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBBD3421AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702032281;
	bh=DApiE78Njgi7m3jgmZR65hR0QGlhQd+agvmnYlgGw40=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1epbq/T8iffzubO3UOq41d39YnyeFkc/TmuTIlz/Y5YbuhBfuix3ngmNEvY1GIe57
	 2kU/iqN6PoqQycGeuqu29naa317aUJYJ9Z/ujA5A/8frihFy2+gjxm9yanu1aqsxPM
	 6CP7SaAclFxk4qcpXidK0rXe5AKUs0pD2ZC1bpbk11/B3cop1raXQklTysa79zO0ey
	 FmAeRAi+3sRqa4XEE/S/iuABBAcvYJFjkPmWKpvSOCmKwi9gCg3QM1gMl/xgPtCfrl
	 R2Oh9frM8ATOlzqIC4FXL905dGTZ0pJsGTNhqr0rjrfTF2Py+L0XMFfyv8aFNSUxVD
	 Cfw/Cc7ZFB8KA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I0ZWNyZVy7h1; Fri,  8 Dec 2023 10:44:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8822B401D6;
	Fri,  8 Dec 2023 10:44:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8822B401D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1DCB1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:44:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74D7F838F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:44:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74D7F838F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YyBRGc95gIpQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 10:44:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D0E0832C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 10:44:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D0E0832C9
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="7714342"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; 
   d="scan'208";a="7714342"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 02:44:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="915912429"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="915912429"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 02:44:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 02:44:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 02:44:20 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 02:44:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eEf0Li8mpodAo42I2bZXQgtV4noPC7LcoiEqI6G5ytXNYstflEzpCWEHozl9OIQUR0m6ZGufkMiS+Db6Gr8WEQt2DpTr5F3I3xsSIOs4XeEaw8SSP9UlDsoh9FGkjmwVHSB53XBefJ3IEfjAKTJbFRINuGiJuwxlXkVvQq/0n+Hjn30LWMvXpmd1SI4Rtsk6aSBTcOUsqAjaJz1JPtkKjE9TUOWGWyseGTtbTTX5UytEMuoKb6R57cNpwLdkujz9nSmJIysKyBM1OBgk+LZVZXicyDbQBsfhgEfk8gn5wgu1b7jO6COP+OWBOnhbFtkUaU5mf26rrR/2AjJwvgiQhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dOWkQ4RMu/Dq2aad/5JIDHeE6Ttp9ROhj/52IWOBOjw=;
 b=fUNczrc+UIkElU+l474gr41V5+dITdY/Z2NSKkzVQanY7hZtjIz8rz7zvUroOcDzG+sj8r8boRcGoa6DAIQ8kGbC8L/8PbE3ZkXLs6XfJePD52hw6iLsmSTXCfjX9zZ5TuScUGPCoUFKkDinrPtsRN5Bx9SRqSPj8yMIQ/E6Zl2MZIQzq7hy2LmRmcF6IxSorhwqjJ9uH64e58Kfl+nyuI0nKZhxoQL2oQ+HAKi9sq0ntYqwKqaDJiYOIoMLE+lXInNFZzh3iNUfC4sLY/URBsXI5JSnb2zzY1dl7kk4fejHGXx02LERNkQneYInNdI0/hm1kkMEPT1ZAnm7c4zdeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA0PR11MB4672.namprd11.prod.outlook.com (2603:10b6:806:96::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 10:44:18 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7068.025; Fri, 8 Dec 2023
 10:44:18 +0000
Message-ID: <a2ac9348-8bd9-c9ec-59cf-38f24b8a304d@intel.com>
Date: Fri, 8 Dec 2023 11:44:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: <ovidiu.panait@windriver.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231208100349.2199641-1-ovidiu.panait@windriver.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231208100349.2199641-1-ovidiu.panait@windriver.com>
X-ClientProxiedBy: FR0P281CA0070.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::20) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA0PR11MB4672:EE_
X-MS-Office365-Filtering-Correlation-Id: 007d36d1-834f-4f87-90cf-08dbf7daa0e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7fCouDeHbnXlr24ulTwQG3BD3wHWEoImQIO+HKWWguWFCnfrHOIvFJ05RKemdQJArLjqS+I7c8ZaBweS4zKW1kdNXRW7vwL67gPVUZ4OpMwG3J/VPEiBAny6dj4MWWlHW9a9OYiQQix3d6Mur/gUiIRUjatn0FO0YwHyjIJOxxR9e3GLANOssysK5zIocBrOPo4Z0bo1bTcGhZHJw1yPKnx/hRD5UTavf9epuBE5HpKABZGPEhYOPqNxe+XIsPJ6QmOwwAUNFv87C1c19fdyRVL1p44CNl1xtQnWewsB1bnyjeB2SanDVPHcN2B6qOHFCvbtuH0CaGtqJQCUJvLPWw5H/FaJrKIYzkIggTnzkdRpR1kYdYvCicAtENc4T3dyTWpGdMn/EwO0W4GRkbD1Il4Qm4Sr+JnKNUpDzwY3G3+ZtRvSYb8KM0i93B4WDiishOHwEurfbEv4jNv7sHwtNrMFYiifI+HkwbrLcKjX6P0X9syONfzMBtxkJK1nI5KRc1sfrRym6tUCuabNk70s2wiZHFk1DhIeTjUssrLAC/vPlMBqwYufweKa1oFhEWzizYkb/grvBqgrp+dwjp49fMi/YjAspe6jZTwNt/o5co3QK3CEEhU9UYBuaPxyKDlAb7ifmUaJPHPZQFManbfrJA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(396003)(136003)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(31686004)(6506007)(6486002)(478600001)(53546011)(6512007)(8676002)(8936002)(4326008)(2616005)(107886003)(82960400001)(38100700002)(26005)(66476007)(66556008)(66946007)(316002)(83380400001)(6666004)(36756003)(2906002)(31696002)(86362001)(41300700001)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzJpZXhsOVdrT09CcUQ4SlV2UWtDeUNRMkdVSnFZNjJtWDl2TCtPREtPMWNO?=
 =?utf-8?B?Q3hNUllnamhuT3JmN3A4VHByOE9IZlFTMDJ6Q2diOWNSb2wvMmx5ekhHdDF0?=
 =?utf-8?B?YmM0aHZ3MXRyRVlreUpLb0Q2a2ovUk0xSG1Kd0RFSjI4WXBlQzdKdEY5UHFu?=
 =?utf-8?B?NmxqRXJSWjBTMHJjdmI3QThZSXcvU0FLQ2tNN0djZWtzMng5eTA3ZFZ0MFN2?=
 =?utf-8?B?NmN2QWNBUmVsVmRyMWlUaFdtdkNxM3RBVlBpKzh3RStFYllSMjVsaW52Yllq?=
 =?utf-8?B?UWNIQXgxa096anJKNmQ3bDlaaUVjYWliQ0ZReWJnQno2S2pOOUtFUXRYNzF5?=
 =?utf-8?B?c0NDeXN4M2ZTZWxkUG9wa0V1MDZvVEJzVE1BL0JRM2hNZmNyMDlpT2Z1ZTZZ?=
 =?utf-8?B?cnVxektlbHZ0YUo2ZE1wT1gvQlhSR3lNRm9neHIrKytnS3dQQ204MGJRRjY2?=
 =?utf-8?B?RVZwejVrdEUyVE9lclFTU0NpTS9SM0FDYzREYk1BQm13QUhMR3M0TkdjQ29E?=
 =?utf-8?B?SHJ0UmJCbWlJblErQzN2R2t5VlRrQ2VldFZnUlhlR01GWjdsUEhPZnRzNFpi?=
 =?utf-8?B?TWxKelEyVkY0cm5mQjM4ZmhRY0hqMnc2MFRkeU5Db0hsbmlnbnA4YzczVzFS?=
 =?utf-8?B?VkZqRHhkRDZqcUVTTTBnUC9oMWZSV29hcTlITi9UcFgwOWQwNFhONjNMR2hr?=
 =?utf-8?B?ZkpGa1BOVzJQdlpIaXdBbGJDcjRvVVdmN0luUDhhOVplT3lwQmk4VU0zNHM1?=
 =?utf-8?B?c3VRQXhlL3RlZFJHdEltRmFWNGRodUhZbmZCQlRsVE83aVJ3V0x0TjgzenJo?=
 =?utf-8?B?OTFINjdkeVhKQWtPaVAzT0htQkhpZVRmSjJFOWdoTEZRTFRQSzYvclYzcHZj?=
 =?utf-8?B?Q2NsZi9wbmhTSEk3ZVF0SmN6eVltcVhFTUZHYVkxdTgyR3FuSGlZR1huNEFP?=
 =?utf-8?B?ZlcrOXJWVGpJckVVbmEzWmJRKytNVUtUdnRLMko4cHgzYURlYUkyZGxPMS83?=
 =?utf-8?B?a29yckdnM29oZE9lUjZULzkwYTgxdktaMXl4WXBRdTRRQXJ1ckFoUTg1Um5q?=
 =?utf-8?B?TUxuZTV5YnFISG1lVk05R1dMOTNzL2xXRm9vK3dhTDgyQm5vZnh0OTJzYVho?=
 =?utf-8?B?QktQUEc1K1REeFpwaXl4UUlWbGd6MTJOUU05dE1vcElGVzA2TFBVcnZxZGdx?=
 =?utf-8?B?R0R4aEJZcmhiNTFhTHVzYnBDTU5QYktsYnRGbmhxRUhoeTZGYStvMjBzdGVo?=
 =?utf-8?B?aWVvSG0wUTg5TDlPc0NnN0N6aURtTDVwbmNvZEVpcGRNa0p5ME42emlwTmww?=
 =?utf-8?B?OGdZKzNsNmtPQXZkdFh3d2Y4ZWg0VjQ4N1dNWHVzU2JFN2M1QnVxOXpSODds?=
 =?utf-8?B?eS90bUdsRlRYM0VIL3pzaGRnTnU1UEI4QlJsa2xBQytnMmlxT20wdUZiczRj?=
 =?utf-8?B?MEtaazZHanZHeS91U2NUcFBrNlBjVTR1Y1VrRGFhbGFRSVpGOWtsdEx3SjRJ?=
 =?utf-8?B?Uit2MGw3NXljejcxWVd0ODhTTTY3cW93YUpjMml3VDVTcWRtWTJBUmUzZG4z?=
 =?utf-8?B?TGZiejRYUlUyTHYxUC90RDNWcFk0TWdkY3ppS01Celg0alF0VElKMERVNHlU?=
 =?utf-8?B?aHdmTVpTNTg3T0FYcFcwWjhPRk9JeUhYNmFtV0ZjRDQra25nVURQMWF4RHJI?=
 =?utf-8?B?UkFHaDhZS3FSZ0JEVmY1ckU2a0xIV1d3Y3NZMHVQS0czd1BtM2FWbkhMeU1S?=
 =?utf-8?B?TXdoaFRQejlqMldQUzNrdEs5S2l1WjMzTmFiR3pjU0hxNUY1NzVobmV1MDZZ?=
 =?utf-8?B?TjF3dkFoQ2hGNGlGWWNyNHFpRGVmQllSTzBzNWFraUZPbEhaRWhCR3MvdUox?=
 =?utf-8?B?R2VCL29ZWHZEQm1ra3RLdkxFK1hFQnA5NUhqR2taUk9zaFlpcFZpMDlZQmdr?=
 =?utf-8?B?a2pjVWp1M0NSOE53eWI0YUMyNCtXaVhCaW5CRDVZaFJEYkFTVUZtQmh5dGZP?=
 =?utf-8?B?eFhHd0lNZGJPWHhvYmdjSG5jSFJ1WGt5ZFlWekVaZGgxQXRWZVZjYmlUTk40?=
 =?utf-8?B?R1JNalNaODdKUkg4QnBHY1o2T2ZVaVpReHpWQ1hkbUtpWnYrL0RGUVBhY2lS?=
 =?utf-8?B?eVRyS1dtY29TYWhvMTJObGdsZmFKL3BXWThnOTJhMkNKSGxKNUZ4cCtMQXZt?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 007d36d1-834f-4f87-90cf-08dbf7daa0e0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 10:44:17.9941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VGCgWg2kwmfw/q0YNf1vj0i4779OOK6AIqqdWA6taH6IZZwsrOUuvI1N3XcFL/pHyd71650t6uR7yk9jGmDOelXdORAehYaPfoRFB/Uyt2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4672
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702032274; x=1733568274;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LDdWZZgmByYPlJRosawdZdMdJqspl3QIh0QfnM5uOew=;
 b=D4cm2vnoHitvpH+q+Fals38szzhME7T+/8R1MDUjoblGM4SC98PyX1py
 i3ZMH0hw5JfKWTJHfcAeFrv8gKP7/Cs6E3lVJM0MWe1JZpEjOuNQ09NAa
 4rftRHy3lWTHWnB0ChpeBjDQxAhboi0xbwoluuv4Y6YjzFCpUT/dLRX5q
 PDoa92/QBrw66MR88BVQw5sGYAz2qcXMhHZ3E+2RiG9MA/4lC9G8kA70h
 KoPOTJyCYX57hGDe2h2FsjnP1D6Ilkkz2yTh03rMb8CCQH6SadBbj1sW9
 L9DJsBeowmBfucGC36euDufsIDr0VTcvl6QYbMMYtCtfkxtPryAlM3bXJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D4cm2vno
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: report link state for VF
 devices
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
Cc: slawomirx.mrozowicz@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/8/23 11:03, ovidiu.panait@windriver.com wrote:
> From: Ovidiu Panait <ovidiu.panait@windriver.com>
> 
> The link state of VF devices can be controlled via "ip link set", but the
> current state (auto/disabled) is not reported by "ip link show".
> 
> Update ixgbe_ndo_get_vf_config() to make this info available to userspace.
> 
> Fixes: 366fd1000995 ("ixgbe: add the ability for the PF to disable VF link state")

I would say that your commit extends ixgbe functionality, and is not a
bugfix. For such cases you should avoid Fixes: tag (just mentioning
commit "that introduced the code/ndo" is fine). With that, you could
also specify the tree as "iwl-next", what will also clarify that you
want Intel VAL to process this patch prior to application.

> Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> index 9cfdfa8a4355..21b18d2f0d55 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> @@ -1849,5 +1849,6 @@ int ixgbe_ndo_get_vf_config(struct net_device *netdev,
>   	ivi->spoofchk = adapter->vfinfo[vf].spoofchk_enabled;
>   	ivi->rss_query_en = adapter->vfinfo[vf].rss_query_enabled;
>   	ivi->trusted = adapter->vfinfo[vf].trusted;
> +	ivi->linkstate = adapter->vfinfo[vf].link_state;
>   	return 0;
>   }

code looks fine,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
