Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8DC6FCA06
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 17:16:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DEC341DD9;
	Tue,  9 May 2023 15:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DEC341DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683645402;
	bh=EMwviT8ye+YdqSjo6g9lhiYBQw0fyD3wyKySggV8P8Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BJL1iq/kWoBkGO0TAR8HZHqMxBg4J3oqifN4OpqWT1Qs34IO1JtMHdY7RUYJOtVhz
	 xQgWWzLpkIuTHau6riLR6mfJVqJno7cTd7KFxnYu5MlSCz4M5+tkbg9yLkytIgVCtZ
	 lXW11nBTNbyf9sWsMolUJFgNdqW8UlJ6ChIMReOXPalF943sHvL7yP+cMgunZnwPWG
	 jIxhc9AZoo41VCG8+A6HzU0o6h1+cxo9tEHPVrIVJ/lzfgmJh7Tu7NC7LFuhS2g/xV
	 uzhagnaX8O2J01BBVq5jN33ZD/Txe5KCyYYWn6iP91IAmk11sDuy6Qznk/UwCM7cJg
	 Fod8DdgYutylA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXdVEXQw_UC9; Tue,  9 May 2023 15:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A49C341C3F;
	Tue,  9 May 2023 15:16:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A49C341C3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B8C1D1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 15:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C936614C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 15:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C936614C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EQh0Nco51W_b for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 15:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 438EE6146C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 438EE6146C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 15:16:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="378054044"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="378054044"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 08:16:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="1028847349"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="1028847349"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 09 May 2023 08:16:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 08:16:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 08:16:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 08:16:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 08:16:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FKyMAEHimnr3u5JMinsWwLqui4QQWIfvj2+cIYNYE4OWm7RK8ZfgJaWFauzceOc9WHvn26CPm4TweP7ZEgADoqhpIAC2WhUjCWSTIUsjdVb0yK9at8V7otYSGEo5URNv7Mbg4qPzIxyjVCcL/KgyWyXworjN9m4HUMBDZ5eV/+jkfm14ag9aMJbnpcrgmQqbQq1EvkoLCOgtnV6xp/z/Ya6mpBeD+QT90tx5ZpScL2tGRghnfZ5N/DO5L0bxoGU8CsPCy4qXrezblQ+ELc1N6641wRg6ZjxC6JsGb4c9Q7muG7VFagJuBDOz3xFTLqCcpZFHc2adKgIjq10iV+WcLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=micsZ0eiIPfTCHYnAmcSQXxNznBeFeppx51BujKQ2G0=;
 b=QbQH7pm59zx1u97XOtPo3EsJDqA1CnAfxNpfahTMCcG+MBMOiiPpwNXyc2TDzmtjif5QcO2Uh6yUPz0EDehGNml1qOiohyJnkf7F2I3fdMDo9AizP21NEHDZlzH97HrncdiIRHm2+5D/Ggo49VlF3ARIQqHEJymZD+eO1Lf3jkqIwYtVcdYsik87z88WGwAe/h61drqtcqWU5DtaibYs5Btwpx2yq4BBC03DlC+QDyU5rXhkysiRo2Vd7bzf5XlkMeQ9NHxO3uTJjqu7JGFsmrM05INkqza1rEmBTiAq0Voww6/Q44BSR63h9/45bvhHMmCvKR+CMvtxdAbOVDEG3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH0PR11MB4773.namprd11.prod.outlook.com (2603:10b6:510:33::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.18; Tue, 9 May
 2023 15:16:30 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::5dbd:b958:84b4:80e1]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::5dbd:b958:84b4:80e1%5]) with mapi id 15.20.6363.032; Tue, 9 May 2023
 15:16:29 +0000
Message-ID: <1f4f32d3-b8ab-f4a0-446b-5cb58a09d7d7@intel.com>
Date: Tue, 9 May 2023 17:14:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-13-wojciech.drewek@intel.com>
 <6f23fe3c-c23e-7a37-f22b-21a59281715c@intel.com>
 <MW4PR11MB5776E4EFEA7FDE7E52C79E1EFD769@MW4PR11MB5776.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <MW4PR11MB5776E4EFEA7FDE7E52C79E1EFD769@MW4PR11MB5776.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR0P281CA0175.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::9) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH0PR11MB4773:EE_
X-MS-Office365-Filtering-Correlation-Id: a96046a2-d64b-426e-0ce8-08db50a05d5e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xPRTOBLSNYNRblB9QH1Ali9lSv+MjC+sfZF1Xi3/Y7yd0nmfnUb0UTGl9h1yjESJPZr2O6j0Dkjloab1b0X0k+s0It+KN3J3HPnqz5E8b8mrOHKzHL1uiURmqU/UugGksLsIHbZ5KWNxBBoHJeFJcbuiG1L59rYN2ImJ6MceU10LVT9vsTCPpbmXFBf0W7cpWtQiDmoG0oJ6PADSLf3fnu1/2BvWLkn5YTjs5DYrsWOvN3ZbzsaoOpqos6J4Ljl+uh2CVJAaHoGmC7yxiGofQzApTTJLytpyPrqVzoHK/SO0UjjDdpkKm+NTHNeDhjzMWfoOJyk9i7EMU+ahFJbqmcYqSoj97B6NQ2m6XJ04nlmBlL1X5vK3iGQNBnvFJQmRwfBXL8YTpNyQZw+Gd5lpsW+9KKDcvlvkIW0xZwLR3wC5oMnaPketVUPpWW7bWaYYENTj7++QhpbXaHxdMq8zek4tXz3FN+3Lqd8/Aq8Lujy2TIhaXRRu6cp0CGUUE+W49wjKX3D9pMhBs6Iz5lV1pzmFrlJuf9/oQgABVCk5CcCuK3T/rstuO0KgsjH8vEi0deKIrhGMWj7xiBzUj+TE32+JuppbML5QFf9C1eLLeyNGhgWbJ0R7rF5C+u3o/RIWr2MTVurM5YK+JT/AesfkoQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(376002)(136003)(396003)(366004)(451199021)(31686004)(54906003)(66574015)(37006003)(83380400001)(316002)(53546011)(82960400001)(6512007)(6506007)(41300700001)(38100700002)(26005)(8936002)(6636002)(4326008)(66476007)(66556008)(66946007)(6862004)(5660300002)(31696002)(8676002)(86362001)(186003)(478600001)(36756003)(2616005)(2906002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3Q5MmozWHJiSnNoaDB1SkNPTkY2V0JaWkdIaGhYdUlWRWN2YVhKZjFpYUFM?=
 =?utf-8?B?RmsrbmRTSlRVb2pxUDlJdndZRUtQQ3BvS2NSYk41cTVwUzN6akpIZDNUSitk?=
 =?utf-8?B?QkdLUythTS9QNVMzUnZBWGNZeWNqcURaOFl1Vk9idnh2OWtDcjRiK1g0OG0y?=
 =?utf-8?B?ejdQL080YTJEc0k1aFdpTTBrak1Fclh0VWxlR3hyR0NKNFdteCswRFJzZFZL?=
 =?utf-8?B?eEVNUTlJVDlhZG9hYUVVM1RrdjY1QWIvTFdmYjRnbUNQdGxBWDNSbU9QL3BS?=
 =?utf-8?B?ZnljNG1qblhld20ycHNOSURsQzZiTlB3T0g5eXZuL1B1SW1DMTZYLzlEd04v?=
 =?utf-8?B?bnpuNnZxZUlqSXh1WWgxV2NHQ296MjZ4UW1PUmRkUFBObjdzUEE1NnBVa0Fr?=
 =?utf-8?B?cTRHdGw2dmRFYUtJbFNJR0VQenQreEpXU1JpYWh3QnpYR05zekFzMHVzZ0tC?=
 =?utf-8?B?TW1MaWpncmM0bkxlZGMzUjBhK3Jiemt2MmdKQjM0c29Xb01hNGdHT016WnJG?=
 =?utf-8?B?SERzNmVLb0wrY21QZUtMR3RRVCtXNHBnTmZyTTdjOEhDNUdVYzhLSnVyeHcw?=
 =?utf-8?B?a3hEcnphTVlZZFJKc2s1ZXp3K0FYb2g0RDhiR2NLczFxcWxHWlM0enNJcVl4?=
 =?utf-8?B?OGxIa3VtdGMvMUw0TVB6SnFBSUcwbkljQzc4eDVoczZvRElIWE4rd21IbnpP?=
 =?utf-8?B?ejFKMkIzc2pWb0tvMHZZZVZPTnp2SjRaL01UWmhiNk5jam9OOGdkdEp1SDQr?=
 =?utf-8?B?Y0xEbENPVE9WL1JjNmovMGovdUtyWEtEdklMSjBoQXQyZFBoNmQ5bkdkdndj?=
 =?utf-8?B?OWZyZmlLZmxuMGJrRTdjK2RxbDFiSVY3MWtnc2krLzNWaWZyTTk4M0hGM21q?=
 =?utf-8?B?QXNLWDdydjZicGJ4OVk4MFMxME9adG9EZkNuODhabThaVnk1dndDbmsrOXpj?=
 =?utf-8?B?ZERzZmtTdFRtdHY5SUl1UHpLK1Z0VVRuR2UrSXJyVU9OVGFwQVVPT3hJNGhO?=
 =?utf-8?B?d05lUGgxWVhmMUY0WGcrOXRPOERVakhYd2lVaU1EQzA3UTBGVGN3UnYvYTdM?=
 =?utf-8?B?VUdFV0ZjaFc0aTJZMGV4dEhFNmdkZExreDdISWhXclE1Zkp0R3dqMzZ2SnpI?=
 =?utf-8?B?WnVzWFE3RlBLSWRMdHRUa3VQN3p6dHFOT3lLTnhUcmpBa2toWXp6K0RSUmxQ?=
 =?utf-8?B?elFKMmpPNlFha0hOQjh6RDdnQjV5TVExZUdvcEFXNlFtb0ZNVTd5UGJENnoz?=
 =?utf-8?B?czFwd1NNQUxIZkY0elBjbGJZNUhLcnNwUmZWWXRZQkxnWU9NRXhrMTNEaUNv?=
 =?utf-8?B?UkR0aDFMeWVaaXA3dU5YR1JnaVNTYkJiYzkyY3NPRm5nUlR2VHc3NXFnV1Bi?=
 =?utf-8?B?RmlDNStaQjJrei9tZjlMVTdQaHN4dDJZdkZCaFQwaks0L2JyVFZZZnJhVmdm?=
 =?utf-8?B?L3NKckdaNHFRR1MwaFZHLzViZjlDRVQ4amRjWFBZMlZza05DSC9pcWhQcmRD?=
 =?utf-8?B?N084dC91K2hJN0F6U2NCTUNEUTBod09pWlUzUUZOWi9ZV3hWUitIT3EzRnhY?=
 =?utf-8?B?M2xzZ29FNlh0QWVpVUNvSVdpYmFYeVJOTVpuODlFSHYzYWhwTllrTjdDOVg1?=
 =?utf-8?B?eFZUczcxZ3dCbDFhZFhWRXpmbW45b0sxT2N1YnpRTnpJRnl1cFpDYmxYWFNY?=
 =?utf-8?B?ZWpqOTJtd3lqZXdzeThvOFRWYm1hZnA4S1VmSTI4L3lxRkZUQW0zdFNDR1Bi?=
 =?utf-8?B?ckY4dmx0eUtIak1DL3QybVBFT0NSQnBER3NNdTdKT3VLM3A0YlpndXV5Zmkw?=
 =?utf-8?B?K0tia3dmcDZXb2F5VnNxMTZjVFhSNWozeHdIT0pJRStQbXJ5cFE3bXdDREd4?=
 =?utf-8?B?SUVPT3FpNDJNZXY2bzNCOTRuU1ZUUWhZcE9qekY4clN0ZytOdnVReG1qT0Nw?=
 =?utf-8?B?d2NzeHJVQ0JCMGdPME4rdVZQU2w2dXFqM0VPampvOCsxR2tPaDhqWllYVjVn?=
 =?utf-8?B?TjdpUjdWY2VWR1R5dW1KOHVqc3hGejk0VGkxUzZsbFhkMG1rWXFSODZYTTZL?=
 =?utf-8?B?ekkwRW1pVEFKS2NObzJncE54QVpReTJvcW1wWDdKY3UvbStBZFlZRDE1VVdm?=
 =?utf-8?B?VHRwYlU1MnFTWmM3L3pCQWhLQmw1Z0YvTnBxclgrT3FTYWhmUjB1L2k4ZW5i?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a96046a2-d64b-426e-0ce8-08db50a05d5e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 15:16:29.7362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4pc1ivaOmwIWH5XSK1QcRqvSJ8SLn95BZ1/kkpgWkDtyPyXfxF3DI/QN0IHbP5vkzlHylFvPXVXFkwaC8sXtgw0HVzIdY0VRNfPskDmRenQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4773
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683645394; x=1715181394;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HUSijpyT652CFrCjCtzNqiEGf473JRUvJX7z7X9OorA=;
 b=PMA7HZJQo4sT6anR15uGZbdlFq3oWenIMi68Cj7/4mvSmPFOz/ON5PF+
 pwqqdUrYBeKEo6pPEJ7CJk/ppP/9i1hp4au9Xq1BWfCW5tOqkqJJsrqSr
 CorFOyUG6QGkYfHez2jZrvcYBfjWIGaC+JC6q2/IXGlbLVTXJUHON+kdM
 y3ljKDeGXBIUsP/T7JJsI868HjO8vECs29XJJEX0GtyLMChC68v1w3jFL
 d/aGwXSvUamr41XS88osOZDFJkwdO0ToBUUnVnyvBsCZvE2+70mrlJ7ke
 85rsYUZpatqaqMAh87Rs2iJv2YcaW+Bg5N3DsSNOf8xqtNeXNUPy7c+ko
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PMA7HZJQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/12] ice: Ethtool fdb_cnt
 stats
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgpEYXRlOiBU
dWUsIDkgTWF5IDIwMjMgMTQ6NTI6MjYgKzAyMDAKCj4gCj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4+IEZyb206IExvYmFraW4sIEFsZWtzYW5kZXIgPGFsZWtzYW5kZXIubG9iYWtp
bkBpbnRlbC5jb20+Cj4+IFNlbnQ6IHBpxIV0ZWssIDIxIGt3aWV0bmlhIDIwMjMgMTg6MzMKPj4g
VG86IERyZXdlaywgV29qY2llY2ggPHdvamNpZWNoLmRyZXdla0BpbnRlbC5jb20+Cj4+IENjOiBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
RXJ0bWFuLCBEYXZpZCBNIDxkYXZpZC5tLmVydG1hbkBpbnRlbC5jb20+Owo+PiBtaWNoYWwuc3dp
YXRrb3dza2lAbGludXguaW50ZWwuY29tOyBtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbTsg
Q2htaWVsZXdza2ksIFBhd2VsIDxwYXdlbC5jaG1pZWxld3NraUBpbnRlbC5jb20+Owo+PiBTYW11
ZHJhbGEsIFNyaWRoYXIgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4KPj4gU3ViamVjdDog
UmU6IFtQQVRDSCBuZXQtbmV4dCAxMi8xMl0gaWNlOiBFdGh0b29sIGZkYl9jbnQgc3RhdHMKPj4K
Pj4gRnJvbTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgo+PiBE
YXRlOiBNb24sIDE3IEFwciAyMDIzIDExOjM0OjEyICswMjAwCj4+Cj4+PiBJbnRyb2R1Y2UgbmV3
IGV0aHRvb2wgc3RhdGlzdGljIHdoaWNoIGlzICdmZGJfY250Jy4gSXQKPj4+IHByb3ZpZGVzIGlu
Zm9ybWF0aW9uIGFib3V0IGhvdyBtYW55IGJyaWRnZSBmZGJzIGFyZSBjcmVhdGVkIG9uCj4+PiBh
IGdpdmVuIG5ldGRldi4KPj4KPj4gWy4uLl0KPj4KPj4+IEBAIC0zMzksNiArMzQwLDcgQEAgaWNl
X2Vzd2l0Y2hfYnJfZmRiX2VudHJ5X2RlbGV0ZShzdHJ1Y3QgaWNlX2Vzd19iciAqYnJpZGdlLAo+
Pj4gIAlpY2VfZXN3aXRjaF9icl9mbG93X2RlbGV0ZShwZiwgZmRiX2VudHJ5LT5mbG93KTsKPj4+
Cj4+PiAgCWtmcmVlKGZkYl9lbnRyeSk7Cj4+PiArCXZzaS0+ZmRiX2NudC0tOwo+Pgo+PiBBcmUg
RkRCIG9wZXJhdGlvbnMgYWx3YXlzIHNlcmlhbGl6ZWQgd2l0aGluIG9uZSBuZXRkZXY/IEJlY2F1
c2UgaWYgaXQncwo+PiBub3QsIHRoaXMgcHJvYmFibHkgbmVlZHMgdG8gYmUgYXRvbWljX3QuCj4g
Cj4gQWxsIHRoZSBGREIgb3BlcmF0aW9ucyBhcmUgZG9uZSBlaXRoZXIgZnJvbSBub3RpZmljYXRp
b24gY29udGV4dCBzbyB0aGV5IGFyZSBwcm90ZWN0ZWQgYnkKPiBydG5sX2xvY2sgb3IgZXhwbGlj
aXRseSBwcm90ZWN0ZWQgYnkgdXMgKHNlZSBpY2VfZXN3aXRjaF9icl9mZGJfZXZlbnRfd29yaywg
d2UgdXNlIHJ0bmxfbG9jayB0aGVyZSkuCgpCVFcsIEkgd291bGQgcmVwbGFjZSByZWx5aW5nIG9u
IFJUTkwgbG9jayB3aXRoIG93biBsb2NrcyBiaXQtYnktYml0LiBJCndvdWxkIHNheSwgaXQgd2Fz
IGRlc2lnbmVkIG1vcmUgZm9yIHRoZSBrZXJuZWwgY29yZSBpbnRlcm5hbCB1c2FnZSwgYnV0CnRo
ZW4gZ290IGFidXNlZCBieSB0b25zIG9mIGRyaXZlcnMuClN1cmUsIGl0J3Mgb3V0c2lkZSBvZiB0
aGlzIHNlcmllcycgc2NvcGUsIGp1c3QgRllJLiBUaGlzIG9uZSBpcyBmaW5lIGZvcgptZSBhcyBs
b25nIGFzIGNvbmN1cnJlbnQgYWNjZXNzZXMgZnJvbSBkaWZmZXJlbnQgU01QIENQVXMgY2FuJ3Qg
aGFwcGVuIGhlcmUuCgpbLi4uXQoKVGhhbmtzLApPbGVrCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
