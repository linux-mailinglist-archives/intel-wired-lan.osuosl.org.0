Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2387D4284
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 00:01:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04F0E61407;
	Mon, 23 Oct 2023 22:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04F0E61407
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698098503;
	bh=qZSWtvikWRwjlmtU0Xzq2U0DyWPsMsy79yIFZf5znDk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qZYI2QlmQMNx/5dJtBzS7komyc7I365BgfsNzhty13KQQ4oGdUFM50awgDjUrFAht
	 gDAhJvcFtgZRJkkmC/WJLr/WcdsBq88z/XnxbOtwtcUQpbFebKipCWwz4wNWpXmvsG
	 DYUiDqSZrRoTudwiQesvf3Yufp4oRHYuRyJsS+rfgxWaqOvB5GMJdcWei82zkCVLoz
	 TMsF5jcNZQ3wg7nyqt9e7Wr5sAGNZsMu8nBBz/0JjfUaXDlgfwr+OS+oNLLYUucjIb
	 eKM7wDw1Fm/QZYs/OdEbECLaktqonqnS94cnZ+KBEvRXV6eZf09hOCBCsaxuwtOd5X
	 7kiCr3w+fpMvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iIC6-LFvn9mP; Mon, 23 Oct 2023 22:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3C7D613F9;
	Mon, 23 Oct 2023 22:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3C7D613F9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 399151BF3EA
 for <intel-wired-lan@osuosl.org>; Mon, 23 Oct 2023 22:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4939140168
 for <intel-wired-lan@osuosl.org>; Mon, 23 Oct 2023 22:01:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4939140168
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BXxZWXdHL5RT for <intel-wired-lan@osuosl.org>;
 Mon, 23 Oct 2023 22:01:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B321418D0
 for <intel-wired-lan@osuosl.org>; Mon, 23 Oct 2023 22:01:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B321418D0
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="372004032"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="372004032"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 15:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="1089630199"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="1089630199"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2023 15:01:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 15:01:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 23 Oct 2023 15:01:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 23 Oct 2023 15:01:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dAobqnZqxUAmTQSaN81smMYRbYD/8cluJbrDv+nWZtSc92ImX5+p2xSi+Ls5tIs10mu25/Tox2EXBafCObq2EUBXcWHxwvvN29OoGj4ZZyvRcTPO8lI15iiclBcVroqvFshoCeni1RBrZ9ye0qlPJzu4TLFW1tdCN/ZqZLvXdFo0sC5vw/2vUL4Lr1joc6bwtLdYMvszkWwe/Xb26waT3VNw+FHqb9rd4bWOCws8mpA4++eFoW1vaH99WYytZyUTLP1ptRQzSJuOzHiF01dRAxjxNkwPnyS/jqQmIJLUAMnlZgpoeDuCvijTAH4+iSgdmpNJJxjx2f+hdtWynKfsoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zm9mf14v9y5OYImpsqG2k3CaydxntN7wZcuw0/bBTg0=;
 b=KWW1seRzxk57lk1h2CT/s4TFWPIqANCULH323/xfgCdGCj3MnJW4Te5jXSCw6bMPAUqBBxAqCepoXeLlYjhbOqixktPoFHbp9e844R6ZWqz00UkV9T6jHMan2IS1e9tsFkWbLMPMM1KL3LT6tms6Qv3xioWKZyY0/z89ZyKzHfKnqRPkR5w87rgN+flT5cdGG7Rjh3weAftlw/fNLxug60SS7pMDBTzAYkOQBsKTa5SG8pPAECl6VrT03FuooH94N0TxvSqr/cD5diDAdEGlyV56+foWq9FhvM2+AklmDFwjmSMupqQDlooV7gJ3f50jYay1VIcI+Yuu+CON+JZ82w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL3PR11MB5700.namprd11.prod.outlook.com (2603:10b6:208:33f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.29; Mon, 23 Oct
 2023 22:01:27 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::f216:6b2b:3af0:35c1]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::f216:6b2b:3af0:35c1%4]) with mapi id 15.20.6907.032; Mon, 23 Oct 2023
 22:01:27 +0000
Message-ID: <f707e348-ed39-4a53-a28b-28ace767f76c@intel.com>
Date: Mon, 23 Oct 2023 15:01:26 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231023162928.245583-1-ivecera@redhat.com>
 <20231023162928.245583-2-ivecera@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231023162928.245583-2-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR04CA0347.namprd04.prod.outlook.com
 (2603:10b6:303:8a::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BL3PR11MB5700:EE_
X-MS-Office365-Filtering-Correlation-Id: 35cc2e89-1474-41ef-ed63-08dbd4139ada
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KOTfwwCToARNavFPBb5nq4jQF/JgBo2rn09kGixHlsGiFUnASzuiiAx4X8RR827xvyuBcSUas3Rqfx0So2VjFfVMFkFI0IrulfuFcy/YQTrrvuWc2rp6s3ceRSGNT/YwKog5ym94wYnySmn9F6OK78AFlw5H5mLfZK5YahZehTAvRpPd4G+LdDs4rzrvChcw2sonZBXU/hLcde6tl4+iybOuHUnofEyAV7MWwXN+pNjw6JO4L2V6AHW4WF6Mm5b8eXvPHygwVZFRyGkY8+wS/Ack3mRsob3ZTlrDremLOXrgnvE6WUTH84b9SnY2tJbWT9beWv4juM3f2HzoxsWYOwR6GZRaLbQY+TNjD34qfF+v/GK/9xra/k4uKzEc7XdDkNCp8TBF+6vMeoHAEqeoCADkCWomHcuu5QlDXOx81zRAgyB/LW1LfhJfxs0PvzUaWkBBkWsvUUvCz1csWIk2nGZqYnpo/dhGMt44TBz8ffAvI9B884IivPiM3PURiJ3CZ2lF7aO04TZKnWNT3vEcwA3WeU2+/j9FHpUCRmTsYHns9sm6vETk6lbJgR+rQ8HWquE0V50p8SJl36O9kJYXBcap3Yqyr4C4Zp/yzyJJCiOwC9GY8NoZSwYwPtxsqF27qqRJg3duwrPNv1jaGAGSmQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(396003)(366004)(39860400002)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(26005)(31686004)(38100700002)(2906002)(4744005)(86362001)(31696002)(5660300002)(36756003)(8676002)(8936002)(6506007)(478600001)(2616005)(316002)(66476007)(66556008)(82960400001)(6916009)(66946007)(41300700001)(6486002)(6512007)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QW1KaG0xQmlmek11U0tBa1JDUVUwelRNWUZKbENHR3h0SmFhalhVRDIzK2Zu?=
 =?utf-8?B?a1AyRER6WjhYSjlySk12cms1K1hJUHQ1dVRNR0xjYmV2TkE5cXpYMVprbXFV?=
 =?utf-8?B?bW5yQS91T0pNOGpCZ1JtQlU5dFpzLzkxUGtmbTl1OTZXdmIyVVlDOHI5Y2J2?=
 =?utf-8?B?cVp1VkdoRjN6WG9VRThFSUNDZUlybis4NjFhaTluTEQrTWx2WERrUHpNY3lr?=
 =?utf-8?B?bml3WE5UemxLQTloQVNHa3FoUW9VNDVzL3ByclBFZ3RnckRGVThKZFBtdkpi?=
 =?utf-8?B?OUJGK0RwemJLWEY2dnVPUG9MRHdQZE5PY01KY1F0QUtEM2FwS2tVVS9VK2xj?=
 =?utf-8?B?OFVsRlBSMXFZeWhYdXBZd1JhZ0RxOVZwaG9TVWRDVCtyRVVrOGFKTTVCSXdK?=
 =?utf-8?B?b0JGUXdoRDNhWFhvQkJnM2RPQloyQmZTanlpUDR1MTFuMGFyY1dNTENiZ3Nz?=
 =?utf-8?B?NXBCNE1MMFJGcXBxd1ZOTG9HczNLSjFXb21yN3IxR2tFYldOZnJKUEw5alBJ?=
 =?utf-8?B?VGx3RGoxUkpoUUdLWkdSNDMxcUJ2R2FZZjd6WVY4elQ5UGk3cm0wMm5PT0JU?=
 =?utf-8?B?bHU2NTZpQVp6Y3hlVXY2M0ZtYnJzbU1jc2c5eWZOUmcwY2VTTElhRFZ6aUtN?=
 =?utf-8?B?N0VxUnZBWU02RmEycXZkRm93UWVDcDNMaUFmQzN3cWVqZ0REVlh5UVZsQWxU?=
 =?utf-8?B?akl0dmFiRjl3a2M4MjU4TDBrRXpSNmQrb1phcnpRZjdQVGhwaW5XVm1RYTNj?=
 =?utf-8?B?b2FrMk5lWlhiVkM2b1IzYm5yUnZmTEN6VjRySDdCUU9hdXlPYmJKa1BMcW5j?=
 =?utf-8?B?Ny9vQk5iWDFNRTE3M2RKNElYSjFvcWROSHVYRUF2TDNqc0ZvK1VvRTlPSE4y?=
 =?utf-8?B?MDF3dUJ1d0h6Zk5lTlMwU3FjcklyYnVRWG1JUE1IUklMajRVU3BpR3I4cGNC?=
 =?utf-8?B?TWxKR0l5dERjb3lWOVJwa0xjaWR6S1pMQ2s4alBwZXcyNzB2NlhPRk5MUWZW?=
 =?utf-8?B?SmFHcXdtZXRDOWNXSE9xWDcxS2xhdU5ESkxwam5WMWtqTm1qc1F2b1JiT3kr?=
 =?utf-8?B?NTNhTGk2NkpaSmM2a0ovSlA1WUhsdDd5cThzMzlWd1JVZzdPdG1UenFVTmxn?=
 =?utf-8?B?SjZuZ0kzejRkaUN4ekhPSHA3SXdoQjgwZUJsOTJIYnZFR0xMNTNiM3BzRll3?=
 =?utf-8?B?bmI4YUJaQzNERW5NU2hxSzBJZ3BPOXVoS3lqaXh4MjRObmRNS3hGaENkQnNh?=
 =?utf-8?B?dTcvOE9HMWY0V0kxalVuazJvZGFSVTdHWlZZOEtRRkQxdTZXaVpTZnJmYVNr?=
 =?utf-8?B?MVhNSDBqN3VKTnBTa0ZBSENCbEZiTHFGSVY0Q3cwQmFTMWQyQk4rL3AxK0t6?=
 =?utf-8?B?eWRKRUl2NCtvMUMvWDBvTW1hTFBwMmlkUE5ncm9aZWVUV2l0WUR5UklCc3lx?=
 =?utf-8?B?eEVxbzIvSUlUMk9naTVabk1nYWlrVVBRenlPMlREdytUbW1yUXExYTRTeUNI?=
 =?utf-8?B?VlZVakFIWHIvam16bDM4a1BvY0EvSlRwQkZMeHJqUDJwT2k0RTRCSC95RXhj?=
 =?utf-8?B?YWdDbDBheEVIbmlWWGV6V2xnOXB3ekd4aTcrMTluSFVEcWFLcjRBeDUwcWM2?=
 =?utf-8?B?SVJOTzZpd2w0NDNZSnpNOEtwYnNPS0Vra1YzTm55VFlCWnZ3dk5mRXhrTkR6?=
 =?utf-8?B?NTVuK29UU2Q5cGpCQnNjeDlobXo3QlRWcURPMlRiaExDcWVCR1dpbGJWNHB0?=
 =?utf-8?B?SC9OWlgvcFcwYTRoL0ZQdGNydXRFUUovOTRlRGp0R0g0MTN3WXo5MnV3anRD?=
 =?utf-8?B?QTBjNVJSY1NGK2hrZkRRYUJ3eVZRK0I5RzBtb25ianB0QmFISW9JSDZWaTdS?=
 =?utf-8?B?UFhQdmx3YmRsNWh4NFFRd1pzekE1UnVkMER1TzdubmJUdXI2UnNBN1hMTGVu?=
 =?utf-8?B?MzNZVUZDOTllTWY0VWQzSkpOQ1o2Mk1Hb243eDgzRVRwTmlhOCsrdUdpWm8x?=
 =?utf-8?B?WnV2K2JoZTErV2RsUHpOa09hOGF3Z0JOeUwwSVdtSDVZNHBKODNXSC9hM25K?=
 =?utf-8?B?bEQvUXZYMVdLYVJCK2ZNVnc4T2N1WTRUZ1pJMlFnU3gxMkc1am1IVWZ0Wm1N?=
 =?utf-8?B?QzVmT2VaRUhmQkxWbHFHdXQ4S3FnYld1R2poRHVucHZMbkR4RkxyNnVBZmRh?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35cc2e89-1474-41ef-ed63-08dbd4139ada
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2023 22:01:27.2151 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gFZqbgmiJ/5tRUQ+/5d1G/c9hOWpbe7UPPyY2Ce8a5Ij8wD81aZgvpSZVDrhzv2Lpb4Yaemfyk4lG+pQby1zKF3wiX1sp2+u6+wJ+a0qVnA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698098491; x=1729634491;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RnwXAuAHpmt0BlkHPeLC8gMkumRy/FiD1k4XylPXA68=;
 b=cDmc4h4moPQu4BuVFSJo7M1T5AGjKLiHueKvoA603sK/Q7qOhSamgkrN
 yxTa8diem/TXbf3hwLTT+Dr3O6cJklQ4udCjJsTSoOw+nSw9sjU1YN22t
 V/3FXshDlX4ylpV4nxG2SgP3kX4ReTUMg0IRB7gJudLrgrE3whPUDUQMV
 it4lc7NWSHVtRXxBwPq9miMpxMXlIOcHVMCa5gQKOmGMwicMkGnUib5k1
 4Jx22OIXo642rZt30h3rFbB3c8mYHmy7GF+fcDHbUQcWiyqr7HOQbRInX
 B+8YWW8YGE2qPPFvEHWjzao4mfYoU0DxNN2R7mD7AsI32yzzK3m/x43KT
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cDmc4h4m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/3] i40e: Move
 i40e_is_aq_api_ver_ge helper
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/23/2023 9:29 AM, Ivan Vecera wrote:
> +/**
> + * i40e_is_aq_api_ver_ge
> + * @hw: pointer to i40e_hw structure
> + * @maj: API major value to compare
> + * @min: API minor value to compare
> + *
> + * Assert whether current HW API version is greater/equal than provided.
> + **/
> +static inline bool i40e_is_aq_api_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
> +{
> +        return (hw->aq.api_maj_ver > maj ||
> +		(hw->aq.api_maj_ver == maj && hw->aq.api_min_ver >= min));
> +}

Checkpatch.pl complained here that this was using spaces instead of a
tab to indent.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
