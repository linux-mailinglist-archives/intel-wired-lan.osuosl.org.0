Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3338C7C46F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 03:00:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55ADC611DA;
	Wed, 11 Oct 2023 01:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55ADC611DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696986006;
	bh=/cOhsPQxW22ExfVrnIV4jSfTVsT6+Zn4uV/ochsW94k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8m0d6UizkIdAf2dposmem5JWPH0BDTxYRAYqN8Qxvakpqms8SdG2r0m839skr8omR
	 xIYXukoJySVPkEUJldb/gAGH28cavMVZxh6UPdU2xVhmavoPMj5Rt4UeNRkViNJWTh
	 EEFq7bzkw9YhTund/CpbUb2IQvc6MpyvbqIOfed3dyU1rg2w8hAK6bMqKIG5aU8Dn5
	 pTfe9FlGvWnCuSuS1tBqm3YHzdH1INyXCvCXJcHC3EpXOzZZvSqCMHpLuIzj+PU45N
	 EGHHk/KfUUyfgnqRNIP6jIN4Z1RDMnt0YCH5+j1U5U9UlMvQTpcvInzqPWmHjRrY97
	 Rklx2FWYiEJxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQzRR6DxL0pz; Wed, 11 Oct 2023 01:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C75D7610A3;
	Wed, 11 Oct 2023 01:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C75D7610A3
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B3CB1BF20B
 for <intel-wired-lan@osuosl.org>; Wed, 11 Oct 2023 00:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 591EA40233
 for <intel-wired-lan@osuosl.org>; Wed, 11 Oct 2023 00:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 591EA40233
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AcZo7qrGZ5kc for <intel-wired-lan@osuosl.org>;
 Wed, 11 Oct 2023 00:59:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14680401A3
 for <intel-wired-lan@osuosl.org>; Wed, 11 Oct 2023 00:59:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14680401A3
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383417026"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383417026"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 17:59:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="788787829"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="788787829"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 17:59:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 17:59:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 17:59:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 17:59:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 17:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=buvkEOq+Cc2RA2dlnhN4i4+UAT3ftWFXiEJ5e5YyT3nGnnbtn/2yhZcChmXNmQFJ1k1gMP1x3DE0/ELAYUT7C62XIlYzbqo2ykZyVeWobwA7ErBN48WtiNnFPE3HCq1Qdjtr+okbxNIwusjMuY8eTa69iGjMR1duUgZHsMdHmQOPtPPByObe90J6EDw50jyCXMcntbOTIuVVQgxAAbBwHpbqxylugVGxwvs5BFaE77tgL0CKoll555sC47LP1n9gd31oanudvxZDRr3h/tTXO8CbjBhzwCQopP+ut9IUtRyZvXAJvXQUsW53tm425+PEh+BOAhtKd+0CD5PBEK0fyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vMyuH4YiXQgU1ndjl/Y7AuTyBhhxdPIBVtV4Ue/aFQQ=;
 b=WjfA7/8PhbtSv4t57MQnVKnkmiYmkEyw5Aku9Bi3UrTGPSyaueDUyK4/usEiT17FhdGFMMrpOf0ZF7uD7GazHyFeMtst+jX8/PdLlYW9RMoX/AMB9NEm1Kwdg8xSQmzvDofZX7T4E0qdsdDgmjXcwWD0h2ykmms0PihJdDDDgCfeZ67vlNRHy+8q6Fq8fmOAgap9esi8wmBeIY4iNF+TkIxXcgBuyaK3uoExqH7mkAnbthLNZfmA0MHdpJ/kcxs0r9e1P1FdUXcYYIwp+fAW/TCpUPbympqkJPu3hcKJJpaa5US6uTR2wkeYKqFcyiM57ChDhdSNS05GaUYM48LB9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW5PR11MB5788.namprd11.prod.outlook.com (2603:10b6:303:198::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 00:59:46 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 00:59:46 +0000
Message-ID: <02a95b60-fb69-82a0-d241-c397b832e595@intel.com>
Date: Tue, 10 Oct 2023 17:59:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>, "Cao, Yahui" <yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
X-ClientProxiedBy: MW4PR03CA0091.namprd03.prod.outlook.com
 (2603:10b6:303:b7::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW5PR11MB5788:EE_
X-MS-Office365-Filtering-Correlation-Id: 957c6512-5093-408a-9cc4-08dbc9f55ccd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Y6PgVqjOnqBm0l2FlXbH+RSN5EGefR/lA+0+06heyvWa7gP4u5Kw0W5rZWRZcwDj2jeMLdngti6iGr1z8ALeuOtTOWK33Gp+stxatuux0hnOJJgQBWYMHq+eAnkutcAEU/9CPik8MRXddTGBeLyPlGJ1eHYZZufiJRYhgZm1xcJQV1z3U0FMprFMhF7WHlvMQ9jvCcA3emqbxILXW1+3hYfJUc+kaLjHt+NZ3iDOB4eieTR0uX8f0ecblNI/P3h6vPwqX56hFBH1BH3XVh6dKxBI9wUqMMQ/ybDEml5XByz1jVvF4CwJ2lj4XJQn2XWFkK4yt9LKPMvALvGg8N1Q47JwwG3Y9ThkILrWsGEFugeGKSUyymqjAiYdyZPxzLIPjhTc59uDHMvl6d6vEZtswGJRSTIVjVH2FgNhcCMgm8aVjEhwiBCDOpx3ue1EkC8OVhR1Uybe7Ul+BrNVmomLnSuc2y4oSVMWRKattAvjpKcp9YIvdAoQI1UVO5OL5XaaM/VKedgSlxJL18LU/tPJIHh9ecRp2Dl3KMlWjfXxDurpc2vhOR5rXWgupV+16dlGL2fxevz21VWwRjFDCiulZOHsPQ0ZdYOKsK5m0hKBqKJEAEqC2bfh9VvEfEGURul8AXNRqYnf2uzCsDPTcLeHJSByGGKXaL/H9v1DWvC+a0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(396003)(366004)(39860400002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(2906002)(66476007)(2616005)(66556008)(83380400001)(316002)(6636002)(26005)(66946007)(37006003)(6512007)(6862004)(8936002)(5660300002)(6486002)(478600001)(41300700001)(966005)(6506007)(8676002)(53546011)(36756003)(38100700002)(82960400001)(86362001)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L21oYUlwWWsxUU9QUjVTTEtJRURscUtnTWEwWVpNSWdwYmZpUVZIa3g0eVZM?=
 =?utf-8?B?bEhTQjhHSGZHaVlielFxSEV3ME5saVpURkR2dUFtQlhXM0VjQStvUk5KQmdk?=
 =?utf-8?B?V0tCTGwyWjJpVHJ5YVVNTER0WWlmM002N0RHejcvSE5INE9JRFFwTmNIQkpj?=
 =?utf-8?B?bXd3cEhkUEhJWitBZGg3UVRGMDZzeGc5VTRKQTBYNGtueFl3UHJQMUwrNmVE?=
 =?utf-8?B?bnVZekNyc2c5NkhCQUVvaEFnQ3RQWDBIWWpPS004K2Z4QnlucmwvOXZiUW9i?=
 =?utf-8?B?NllIRjJwMit2NDZseWoxUnpSV2w1a0Q2ZW8zWTk5SUVxTVUyMC8vQmpObzFs?=
 =?utf-8?B?T2JLL2hycElndlRTUHc4cFZlOUJjMGFwQjd4b2NtTDg5a1NWL0lIZmRlUEE3?=
 =?utf-8?B?UVFVb3Z0cC9DRHdkd3pBalJtZVBWNjVGZk1ZRnlJVmd1YUtHYmhWQnBOS0hY?=
 =?utf-8?B?bG9pNHBBOG42a2lKUnpBNzZpaFI3TUhaSndFRUVPZjh0WHdMN1RDQ0N2cFJU?=
 =?utf-8?B?WS9zWkR2Ykx3cXh2ejU1Q3hyL1NWd3Fya3NTcHJVbWJJUVNBd1doVlNuMUtK?=
 =?utf-8?B?UG0xK1FWRXNYVmNHM1NyN2d1NmdGeFVkMFJuWEdRSGNvdjZtNUc3SzJsMlFH?=
 =?utf-8?B?YTFhNS9YR0JKd2JHZStDaGU1SkpPM0I4TjBDV0FsVS9DWXowVjlYSXYxZFBt?=
 =?utf-8?B?OUI5eStDdGN5Ymk1VVRhN0VxWEhuQ2ZrL3pBZnhKbmJienB4LzJVdVY4ZmNj?=
 =?utf-8?B?TmF2RHVMaGR5Rnhpb2VzQ1gvejlFWjJrRDlZOGJDSWNwL1YxQm5KV2dOdGZr?=
 =?utf-8?B?QVZ4RURBeG4xcjdpSkhzdlVVdHJ6b1pYVkgxU2JMK3ZjRkZBVENWNmNBTCtr?=
 =?utf-8?B?NHdQTkNQY040a25oUGFKRVhwSHZGODZlWkdUMzE1bmtobEduWGhGWk1wb1Vt?=
 =?utf-8?B?SDZNZ3lZSEg1OXVGaURiUFdBU09lWW43bCtmYis3YkN2ZytQYk1mc0RRbysx?=
 =?utf-8?B?cEFlUlNMWnc1akpWeXoyQVAvZGFVWXRDckVWU1JkN1E5b1lDODczaEI2L0d0?=
 =?utf-8?B?S2owcDVQMWVzZWpYUjZmRnB6dlNwcmY0aUprdjJLZjZkZ0ZJYzFJeEVJNjVR?=
 =?utf-8?B?Q0lhMHRWRjVuQ1JHMGI1SFdRdXFnV2FkRUhTVmVoYTFFN2UvNkhCR3NENG9E?=
 =?utf-8?B?V1NSZ0d3WHlUcFM2Wmk4Wkg4eFRMeDN3NEExck5sSUVJN1RhbU4xYVpqRGpk?=
 =?utf-8?B?NVZkUTlWL1VpdEhQVnVpbDdnYTc5VUJyUkdJYUN0SGhBdWJoZDZlMFJ6Yi92?=
 =?utf-8?B?QmgzVVF2NjZPV3BwVGEzeGt0NUtqcDA4NEJQeXZQbUVWWXNhUTl5azI3WDhU?=
 =?utf-8?B?M05Xc0tqUXFJQ2xnY1p2d1VSSlBJVVd0eDladnhKTDc5L3IzNVFjQ2pPWkVi?=
 =?utf-8?B?VTZUU0FwbHptSUJSUjg1d3ZTd3JqZWc4c0NtOTVybFRWY3lWdVptc0Q0ZXNO?=
 =?utf-8?B?bDVZeU50MzBBOGJrZWlQT2xOSzJBckNCZVJOVU05NHhwb2xwcndHb3Zsb1E5?=
 =?utf-8?B?L2sxd3R0NmpsUmFsa0dodTgwR3dFaldZbTU4bVNzZEtHbDQ5TmVmQWhSbHVO?=
 =?utf-8?B?UTBTbEQ2d28wZXgzWWtlaktoZ0YvZGx1M3lzclhwWEJZRldPY0VMMUVNWEUv?=
 =?utf-8?B?ZEEyZW8wRzd4SVZQNFhvSnRaaVJ1cEhSUWxWV1YyWnNXYnZVRHd6WWxZQXFQ?=
 =?utf-8?B?QnJudURhYnVjM1pONWlLbmlyY3crU20yTWdGYWpZV1dFZ0h5S0FzR0xDZlhN?=
 =?utf-8?B?SzN0WFhRaS9pVlhteXRmZFVMQWlvYzRmODlyd1lRSkdjUzBtbXhMWFZZZ1g2?=
 =?utf-8?B?R0QzUXloTEtIdkp6NURJTVF3OFVsVUZhblErZG5oRVBSV3dBY1FmK1lMaDBX?=
 =?utf-8?B?RFFkSVc2RGJnTW42K0dMdnpXcXFsWWRtdWpzNGN1OFp6bGxCdEFGdjFxSzYv?=
 =?utf-8?B?WG00RXlJWlhBY2YrZ2tia0tCQy9JR0NTUlJrMUl3TFI1aG5iUGw2eExsUjVY?=
 =?utf-8?B?TnBSRS9qazZydnlTQUFkMDJXcHpqL3ZvZkFkRTlFRlpMT2JsS2RONnRqMVZm?=
 =?utf-8?B?UXdXMmJoSWxHZU80VlpEUnZCNFdCeGVoSFViZ1lGcWhpdXE3WUtBNjR1MmZZ?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 957c6512-5093-408a-9cc4-08dbc9f55ccd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 00:59:46.5037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eWWyxMRptWV6MzHNTekeMeOG4SbjT7V8ZPvDvnmXdbMiRPoOkVpEjSni2lmDnsKZAOBs+h7ds5VtlegkjcblNRVMwgSrYeINm7ZP0Ae2rsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696985997; x=1728521997;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BUbamLa+o/O3mdqVQz459UnoNucVo7w77A2DVU5ujv0=;
 b=A7kfE60pYQVcOoTFaNhfj9Ambl44SoZcLEAjOzE5nqR2tMkjfQIQPChr
 hCuxN+vrcOfjPdi+JDdA45lD27AaTQpXT49Jstz3HPPNx/BUBb9jEKXI2
 KiviKpBF0mGyEIM4bTZ1cLOqgHzf34L4f7WtIeNT963K1+4DccU/0CCqa
 xS9MXzeLkRYusDZ0pd0vxgSRoOFHQC2sFgjkoZs114wNsv2IFbXdCANzV
 oZiIsUq2afyawNMo1lvEsz1T5x2JzNYxqQDxadojnL5Xj5RPtMC2FSejU
 4zDcK9PEl0lec3/mTvn23CZLIqoUDSck35YgPBxMaYM4SM42dxUT/OIy+
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A7kfE60p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 00/13] Add E800 live
 migration driver
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA5LzE3LzIwMjMgMTE6MjUgUE0sIFlhaHVpIENhbyB3cm90ZToKPiBUaGlzIHNlcmllcyBh
ZGRzIHZmaW8gbGl2ZSBtaWdyYXRpb24gc3VwcG9ydCBmb3IgSW50ZWwgRTgxMCBWRiBkZXZpY2Vz
Cj4gYmFzZWQgb24gdGhlIHYyIG1pZ3JhdGlvbiBwcm90b2NvbCBkZWZpbml0aW9uIHNlcmllcyBk
aXNjdXNzZWQgaGVyZVswXS4KPiAKPiBTdGVwcyB0byB0ZXN0Ogo+IDEuIEJpbmQgb25lIG9yIG1v
cmUgRTgxMCBWRiBkZXZpY2VzIHRvIHRoZSBtb2R1bGUgaWNlX3ZmaW9fcGNpLmtvCj4gMi4gQXNz
aWduIHRoZSBWRnMgdG8gdGhlIHZpcnR1YWwgbWFjaGluZSBhbmQgZW5hYmxlIGRldmljZSBsaXZl
IG1pZ3JhdGlvbgo+IDMuIFJ1biBhIHdvcmtsb2FkIHVzaW5nIElBVkYgaW5zaWRlIHRoZSBWTSwg
Zm9yIGV4YW1wbGUsIGlwZXJmLgo+IDQuIE1pZ3JhdGUgdGhlIFZNIGZyb20gdGhlIHNvdXJjZSBu
b2RlIHRvIGEgZGVzdGluYXRpb24gbm9kZS4KPiAKPiBUaGFua3MsCj4gWWFodWkKPiBbMF0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcva3ZtLzIwMjIwMjI0MTQyMDI0LjE0NzY1My0xLXlpc2hhaWhA
bnZpZGlhLmNvbS8KPiAKClRoZSBzZXJpZXMgZmFpbHMgdG8gY29tcGlsZSBjbGVhbmx5IGF0IGVh
Y2ggc3RhZ2UgaWYgQ09ORklHX0lDRV9WRklPX1BDSQppcyBkaXNhYmxlZC4KCkFkZGl0aW9uYWxs
eSBJIG5vdGljZWQgdGhhdCB0aGUgZWFybGllciBwYXRjaGVzIGRlcGVuZCBvbgpDT05GSUdfSUNF
X1ZGSU9fUENJICh0aGUgY29uZmlnIG9wdGlvbiBpcyBjaGVja2VkIGluIHRoZSBoZWFkZXJzKSBi
dXQKaXRzIG5vdCBhZGRlZCB0byB0aGUgS2NvbmZpZyB1bnRpbCBuZWFyIHRoZSBlbmQgb2YgdGhl
IHNlcmllcwoKPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZS5oOjU4LAo+ICAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYzo5Ogo+IC4vaW5jbHVkZS9saW51eC9uZXQvaW50ZWwv
aWNlX21pZ3JhdGlvbi5oOiBJbiBmdW5jdGlvbiDigJhpY2VfbWlncmF0aW9uX2luaXRfZGV24oCZ
Ogo+IC4vaW5jbHVkZS9saW51eC9uZXQvaW50ZWwvaWNlX21pZ3JhdGlvbi5oOjI0OjQ5OiBlcnJv
cjogbm8gcmV0dXJuIHN0YXRlbWVudCBpbiBmdW5jdGlvbiByZXR1cm5pbmcgbm9uLXZvaWQgWy1X
ZXJyb3I9cmV0dXJuLXR5cGVdCj4gICAgMjQgfCBzdGF0aWMgaW5saW5lIGludCBpY2VfbWlncmF0
aW9uX2luaXRfZGV2KHN0cnVjdCBpY2VfcGYgKnBmLCBpbnQgdmZfaWQpIHsgfQo+ICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4g
SW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Uu
aDo1OCwKPiAgICAgICAgICAgICAgICAgIGZyb20gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9saWIuYzo0OgoKPiBtYWtlWzddOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6
MjQzOiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ZsdHIub10gRXJyb3IgMQo+
IGNjMTogc29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwo+IGNjMTogc29tZSB3
YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfdmlydGNobmwuYzo0MTQ1OjE3OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRp
b24gb2YgZnVuY3Rpb24g4oCYaWNlX21pZ3JhdGlvbl91bmxvZ192Zl9tc2figJk7IGRpZCB5b3Ug
bWVhbiDigJhpY2VfbWlncmF0aW9uX3NhdmVfdmZfbXNn4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1m
dW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgNDE0NSB8ICAgICAgICAgICAgICAgICBpY2VfbWlncmF0
aW9uX3VubG9nX3ZmX21zZyh2Ziwgdl9vcGNvZGUpOwo+ICAgICAgIHwgICAgICAgICAgICAgICAg
IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICAgICAgfCAgICAgICAgICAgICAgICAgaWNl
X21pZ3JhdGlvbl9zYXZlX3ZmX21zZwo+IGNjMTogc29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVk
IGFzIGVycm9ycwoKUGxlYXNlIGZpeCB0aGVzZSBpc3N1ZXMuCgpUaGFua3MsCkpha2UKCj4gQ2hh
bmdlIGxvZzoKPiAKPiB2MiAtLT4gdjM6IGxpbmsgWzJdCj4gIC0gQWRkIFAyUCBzdXBwb3J0IGlu
IHZmaW8gZHJpdmVyIChKYXNvbikKPiAgLSBSZW1vdmUgc291cmNlL2Rlc3RpbmF0aW9uIGNoZWNr
IGluIHZmaW8gZHJpdmVyIChKYXNvbikKPiAgLSBSZXN0cnVjdHVyZSBQRiBleHBvcnRlZCBBUEkg
d2l0aCBwcm9wZXIgdHlwZXMgYW5kIGxheWVyaW5nIChKYXNvbikKPiAgLSBDaGFuZ2UgcGF0Y2hz
ZXQgZW1haWwgc2VuZGVyLgo+ICAtIFJld29yZCBjb21taXQgbWVzc2FnZSBhbmQgY29tbWVudHMg
dG8gYmUgbW9yZSByZXZpZXdlci1mcmllbmRseSAoS2V2aW4pCj4gIC0gQWRkIHMtby1iIGZvciBQ
YXRjaDAxIChLZXZpbikKPiAgLSBNZXJnZSBQYXRjaDA4IGludG8gUGF0Y2gwNCBhbmQgbWVyZ2Ug
UGF0Y2gxMyBpbnRvIFBhdGNoMDYgKEtldmluKQo+ICAtIFJlbW92ZSB1bmluaXQoKSBpbiBWRiBk
ZXN0cm95IHN0YWdlIGZvciBQYXRjaCAwNSAoS2V2aW4pCj4gIC0gY2hhbmdlIG1pZ3JhdGlvbl9h
Y3RpdmUgdG8gbWlncmF0aW9uX2VuYWJsZWQgKEtldmluKQo+ICAtIEFkZCB0b3RhbF9zaXplIGlu
IGRldnN0YXRlIHRvIGdyZWF0bHkgc2ltcGxpZnkgdGhlIHZhcmlvdXMgY2hlY2tzIGZvcgo+ICAg
IFBhdGNoMDcgKEtldmluKQo+ICAtIEFkZCBtYWdpYyBhbmQgdmVyc2lvbiBpbiBkZXZpY2Ugc3Rh
dGUgZm9yIFBhdGNoMDcgKEtldmluKQo+ICAtIEZpeCByeCBoZWFkIGluaXQgaXNzdWUgaW4gUGF0
Y2gxMCAoS2V2aW4pCj4gIC0gUmVtb3ZlIERNQSBhY2Nlc3MgZm9yIEd1ZXN0IE1lbW9yeSBhdCBk
ZXZpY2UgcmVzdW1lIHN0YWdlIGFuZCBkZXByZWNhdGUKPiAgICB0aGUgYXBwcm9hY2ggdG8gcmVz
dG9yZSBUWCBoZWFkIGluIFZGIHNwYWNlLCBpbnN0ZWFkIHJlc3RvcmUgVFggaGVhZCBpbgo+ICAg
IFBGIHNwYWNlIGFuZCB0aGVuIHN3aXRjaCBjb250ZXh0IGJhY2sgdG8gVkYgc3BhY2Ugd2hpY2gg
aXMgdHJhbnNwYXJlbnQKPiAgICB0byBHdWVzdCBmb3IgUGF0Y2gxMSAoSmFzb24sIEtldmluKQo+
ICAtIFVzZSBub24taW50ZXJydXB0IG1vZGUgaW5zdGVhZCBvZiBWRiBNU0lYIHZlY3RvciB0byBy
ZXN0b3JlIFRYIGhlYWQgZm9yCj4gICAgUGF0Y2gxMSAoS2V2aW4pCj4gIC0gTW92ZSBWRiBwY2kg
bW1pbyBzYXZlL3Jlc3RvcmUgZnJvbSB2ZmlvIGRyaXZlciBpbnRvIFBGIGRyaXZlcgo+ICAtIEFk
ZCBjb25maWd1cmF0aW9uIG1hdGNoIGNoZWNrIGF0IGRldmljZSByZXN1bWUgc3RhZ2UgKEtldmlu
KQo+ICAtIFJlbW92ZSBzbGVlcCBiZWZvcmUgc3RvcHBpbmcgcXVldWUgYXQgZGV2aWNlIHN1c3Bl
bmQgc3RhZ2UgKEtldmluKQo+ICAtIExldCBQRiByZXNwb25kIGZhaWx1cmUgdG8gVkYgaWYgdmly
dHVhbCBjaGFubmVsIG1lc3NhZ2VzIGxvZ2dpbmcgZmFpbGVkIChLZXZpbikKPiAgLSBBZGQgbWln
cmF0aW9uIHNldHVwIGFuZCBkZXNjcmlwdGlvbiBpbiBjb3ZlciBsZXR0ZXIKPiAKPiBbMl0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtbGFuLzIwMjMwNjIxMDkxMTEyLjQ0OTQ1
LTEtbGluZ3l1LmxpdUBpbnRlbC5jb20vCj4gCj4gdjEgLS0+IHYyOiBsaW5rIFsxXQo+ICAtIGNs
YXJpZmllZCBjb21tZW50cyBhbmQgY29tbWl0IG1lc3NhZ2UKPiAKPiBbMV0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtbGFuLzIwMjMwNjIwMTAwMDAxLjUzMzEtMS1saW5neXUu
bGl1QGludGVsLmNvbS8KPiAKPiAtLS0KPiAKPiBMaW5neXUgTGl1ICg5KToKPiAgIGljZTogSW50
cm9kdWNlIFZGIHN0YXRlIElDRV9WRl9TVEFURV9SRVBMQVlJTkdfVkMgZm9yIG1pZ3JhdGlvbgo+
ICAgaWNlOiBBZGQgZnVuZGFtZW50YWwgbWlncmF0aW9uIGluaXQgYW5kIGV4aXQgZnVuY3Rpb24K
PiAgIGljZTogTG9nIHZpcnR1YWwgY2hhbm5lbCBtZXNzYWdlcyBpbiBQRgo+ICAgaWNlOiBBZGQg
ZGV2aWNlIHN0YXRlIHNhdmUvcmVzdG9yZSBmdW5jdGlvbiBmb3IgbWlncmF0aW9uCj4gICBpY2U6
IEZpeCBWU0kgaWQgaW4gdmlydHVhbCBjaGFubmVsIG1lc3NhZ2UgZm9yIG1pZ3JhdGlvbgo+ICAg
aWNlOiBTYXZlIGFuZCByZXN0b3JlIFJYIFF1ZXVlIGhlYWQKPiAgIGljZTogU2F2ZSBhbmQgcmVz
dG9yZSBUWCBRdWV1ZSBoZWFkCj4gICBpY2U6IEFkZCBkZXZpY2Ugc3VzcGVuZCBmdW5jdGlvbiBm
b3IgbWlncmF0aW9uCj4gICB2ZmlvL2ljZTogSW1wbGVtZW50IHZmaW9fcGNpIGRyaXZlciBmb3Ig
RTgwMCBkZXZpY2VzCj4gCj4gWHUgVGluZyAoMSk6Cj4gICBpY2U6IEZpeCBtaXNzaW5nIGxlZ2Fj
eSAzMmJ5dGUgUlhESUQgaW4gdGhlIHN1cHBvcnRlZCBiaXRtYXAKPiAKPiBZYWh1aSBDYW8gKDMp
Ogo+ICAgaWNlOiBBZGQgZnVuY3Rpb24gdG8gZ2V0IFJYIHF1ZXVlIGNvbnRleHQKPiAgIGljZTog
QWRkIGZ1bmN0aW9uIHRvIGdldCBhbmQgc2V0IFRYIHF1ZXVlIGNvbnRleHQKPiAgIGljZTogU2F2
ZSBhbmQgcmVzdG9yZSBtbWlvIHJlZ2lzdGVycwo+IAo+ICBNQUlOVEFJTkVSUyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgICA3ICsKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL01ha2VmaWxlICAgICAgIHwgICAgMyArLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlLmggICAgICAgICAgfCAgICAzICsKPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYyAgIHwgIDQ4NCArKysrKy0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uaCAgIHwgICAxMSArCj4gIC4uLi9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9od19hdXRvZ2VuLmggICB8ICAgMjMgKwo+ICAuLi4vbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbGFuX3R4X3J4LmggICAgfCAgICAzICsKPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgICAgIHwgICAxNSArCj4gIC4uLi9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9taWdyYXRpb24uYyAgICB8IDEzNDQgKysrKysrKysrKysr
KysrKysKPiAgLi4uL2ludGVsL2ljZS9pY2VfbWlncmF0aW9uX3ByaXZhdGUuaCAgICAgICAgIHwg
ICA0NCArCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmMgICB8
ICAgIDQgKwo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5oICAg
fCAgIDEwICsKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubC5j
IHwgIDI2NyArKy0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNo
bmwuaCB8ICAgMTUgKy0KPiAgLi4uL2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmxfZmRp
ci5jICAgIHwgICAyOCArLQo+ICBkcml2ZXJzL3ZmaW8vcGNpL0tjb25maWcgICAgICAgICAgICAg
ICAgICAgICAgfCAgICAyICsKPiAgZHJpdmVycy92ZmlvL3BjaS9NYWtlZmlsZSAgICAgICAgICAg
ICAgICAgICAgIHwgICAgMiArCj4gIGRyaXZlcnMvdmZpby9wY2kvaWNlL0tjb25maWcgICAgICAg
ICAgICAgICAgICB8ICAgMTAgKwo+ICBkcml2ZXJzL3ZmaW8vcGNpL2ljZS9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgfCAgICA0ICsKPiAgZHJpdmVycy92ZmlvL3BjaS9pY2UvaWNlX3ZmaW9fcGNp
LmMgICAgICAgICAgIHwgIDcwNyArKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9uZXQvaW50ZWwv
aWNlX21pZ3JhdGlvbi5oICAgICAgIHwgICA0MiArCj4gIDIxIGZpbGVzIGNoYW5nZWQsIDI5MTYg
aW5zZXJ0aW9ucygrKSwgMTEyIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9taWdyYXRpb24uYwo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9taWdyYXRpb25fcHJp
dmF0ZS5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3ZmaW8vcGNpL2ljZS9LY29uZmln
Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3ZmaW8vcGNpL2ljZS9NYWtlZmlsZQo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy92ZmlvL3BjaS9pY2UvaWNlX3ZmaW9fcGNpLmMKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbmV0L2ludGVsL2ljZV9taWdyYXRpb24u
aAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
