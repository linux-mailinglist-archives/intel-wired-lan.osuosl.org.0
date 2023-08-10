Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A45C7782C2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 23:34:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17F5740A62;
	Thu, 10 Aug 2023 21:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17F5740A62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691703288;
	bh=9KjQQxhn5OoC+FnmJxIzKzamrjEhpWygvb04WxWqCY8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Owmy1RBHTD+/n4fkxPvU7KbFjHsHjk0KRinoIXcsrMLudSAkGZGaF7k8qloDBuqzI
	 2K8cEzy0uGPsFtyph75LLK9TgJm9G9V1ds2yvSQSTKqaSE+4o2bxOR1ER1dMUYTadq
	 ONgA2Bj2YlIeWu6hctOaLVe8paG+OLMKcMMKqVmNzqScBRRSgc5JROrTWTN/JM2Iwn
	 K61PPqWI46fCbWZ4AqXIiBzzgs684oFCgxEHBZ8Ig61LAx6GLA/pno3RLycynDyIep
	 Vtlym63rnEd4xK+RlFWqfeAo12XoGAwssNPcNPRTEndTEtEu06Z30AXmEadEZh3tYv
	 fjndzMrTgczZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6fPt-V_6ch9p; Thu, 10 Aug 2023 21:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2C944061F;
	Thu, 10 Aug 2023 21:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2C944061F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A88901BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7CBED60F6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CBED60F6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xCAJe27-lfki for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 21:34:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADC1560F02
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADC1560F02
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="361664269"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="361664269"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:33:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="822408929"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="822408929"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Aug 2023 14:33:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 14:33:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 14:33:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 14:33:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EpDyh7it0VnXq+BPEPK7pyk8IHm+FnX0aYacxIt0zS7oG8f6hO7X10Z44Z9KxxrOy9G7wsDj4o5NZXkTtFU9h8jtm4H6ynpSCa0A6pa0x/c/yvAP6PN2lh3TQRPpsY7TWBITl+V3BL0g7ZNw9ZmLRldAOOWD/OTwx7ehtVSuauImSZV7RjfcNkZ5Vokkm3ZsP3kaye+frSFdjIWubl0El+SFR/W5Vemp5pBca9pnyX6jDINJNtMDiA94k4SOYZERX3lD1HCqmejjMKlMvXYC3GFMQrRvhvJP5zMj9xwGHhhda+WHNMY+RrA7y2Hxpeg+KvJ5StZ5e3x5oRQobZfRTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xMyMjIc/zBkWCLDTSkR/Fs78P6ab4QpasY7uM0jdL8U=;
 b=MHEQeT9GHpjbl8FlrRXWp5WSoi98lebCghJaf4WowmNUXLpxa4LhwJBiQCOsNAF51JlyZE7N7J50EdvIiE3DPle8RPMczJo6CnWJbSJjJm0zxZ/a1nNDoqbTyf3rjydKcvbbkK0dCpjOvJ430SQcGgzQapdXmObWmiyHpxWhUB9vO6CsvdyKnFd0SFM9PDG4oeMNzi8sRhlHivcko23+VjLmk5Lb5WNBJgSkSC8YK2Ur3Afdvfj6Wk8x6Kyyg6H6ipr005Lhrw+C4TbVcfLZ0OHkGbZVt5ULCzJRe3a3455l9dFRWmW3Csu908K0YG3jxOxh4vHOVb7RIOSuLmZekA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 21:33:20 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 21:33:20 +0000
Message-ID: <16c05f6d-e971-b487-6eb8-ba5e2bcd658e@intel.com>
Date: Thu, 10 Aug 2023 14:33:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230810002313.421684-1-jesse.brandeburg@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230810002313.421684-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: MW4PR04CA0113.namprd04.prod.outlook.com
 (2603:10b6:303:83::28) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA2PR11MB4969:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a0acc3d-d4c9-4bfc-d6be-08db99e96abc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G12J4NJwpoJsl0XSHIMEmveYsNVt+EJRd2y74E6VNAQ/5sKbhwQF2w+TotOP2TX6C8/yTjBqVjuSt2HsUcDGL7o2b5z0ThtN/tlx25Cu4Sk3K1dzZ07cLKSZBIEuGzN2BqxITrud6OTwvJy2hm9lIkjG1sm1V5W7bwDotdn1S0jAgcjeCaLU4NnZO92xI6Ch4XXrTe2uZSuf6nxRIhvIV3fZBTtBnkKFu3A3hBpNhEF3wwg2QSo7rYIMrTxCIHoF/3nLgDguLpDJJxi3muiAk31ZLicgO1UJsmDkenTRRyWeyzyO5ryOHOuHAXik2G9n6foH/20VhV69pGZ2rPRMlZB9BnEKn6AyRbzg6TDPZs4jdruhb6U6FKgmgxnWyYfiuICZMH9rZOnq6MREhU11RBdX6WmPBtQpNsXX5pAt8uXucv/vchjfCbmIyP9pMjW8+fLKs/B0Yc8j13lNUcvKT/XxRrupPzQHqNhJhdsnTxuShjYmYzmcBxPzE6yBqTnhgMZ/idHq/DgSruDEFC2f09+ycQSExJTfTsvt/EuxmtY9c4BhqcrgbMwMNpcJpl4v8lTrHnw2eJ/m1sY0//WXbp3C7xqA1tONiHz4xWIHV49Q7PHI9sCZBx4EYlt7Tce2onhDQBBmZnOZzVIIRVDahA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(396003)(136003)(376002)(186006)(1800799006)(451199021)(31686004)(66946007)(6506007)(26005)(66476007)(478600001)(6666004)(53546011)(36756003)(66556008)(83380400001)(2616005)(41300700001)(82960400001)(316002)(4326008)(6512007)(6486002)(2906002)(86362001)(31696002)(8936002)(8676002)(5660300002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDVFTElNM3QwTHlhZTlXNkUrUDRlLzNLUVVEa0c1KzlRclZORzBvNERxaWNM?=
 =?utf-8?B?SHdsd0tvbG5YWVE5dFpUSlFCS04wQ1dRa2tDUDZSRXpmeWwwaEZzVHZQelZH?=
 =?utf-8?B?a0hyWHlHam54L0VRY2NUd0VqYk9IWUp5MGk5MEtSOStMcU9VbHA1VTkxUnNS?=
 =?utf-8?B?N0ZBY0VoUldLeEpkRi9ERENjNHZTZmx5RXhxbGJQalFOMUIwWUdlRXFKakV2?=
 =?utf-8?B?amF2SGdMaHFYY242REg5V1MwZW50b3lGcmJxQWRoV1NWbVlsS3VsTHJ6ankv?=
 =?utf-8?B?dXg1UmpWYyt3T0NmUzNacWZCQkJ1MWR1Q0tVcVJqVjdmZFRBcWVKWk9PeUdY?=
 =?utf-8?B?MTVHS0RRQnBHSDd1U1kzSjBRL0RnZTIyK1ArVGVreG1YazBhdStlVWczTFFH?=
 =?utf-8?B?bHRPTU41cHVqWlhpTEVxVHJUMUxpRzZEQkJUazVEaDdvNUZZbWdiMmVwdVNh?=
 =?utf-8?B?U1l2a1k5UlAwRzFuZUFCWnZQbWJOYWMzMThKUTJtNE93ZmhEbFhZaHBPOFFy?=
 =?utf-8?B?YVhWK210eUNrZ3BPRzh0M0RVTzlQb1REVnVWMGZvL252eXBsUmM4ZUdBek0z?=
 =?utf-8?B?Zmw0Tkxnb2cyYzMyZWppMHFXclFGT0tXOFZ6UG9IZDNOM2hNWEl0R2M2UGVv?=
 =?utf-8?B?eDAvZXVvd2pRaXFtUGYxeTZ5SGtmUzFBV3RGb0dSWm5DUWhDV3hRMzkra25y?=
 =?utf-8?B?d1o3SzhEUHFoRDBPSXo0L1Y2WE9tVnByQzF4ckRUZXpCQmRSVElXVjVKUS9I?=
 =?utf-8?B?am44QWtLWkJBc0lkSHBIc0dZd012TkZrLzYxMmViUlpld0VaL1NvMmVWQzBN?=
 =?utf-8?B?L2hZTVhsRGNXWGMwS2lONjNWRGl5ZzJLbTJZK29kT3ZmbmRucFJjYkhoODY3?=
 =?utf-8?B?eEYyWkI4YnR5R01FOU80OEt4OTV6UVFFZnRyaUdSWFFrc1hzU3p2bFdobnN4?=
 =?utf-8?B?S2ZzSjNtTFZldjJpd3hBYytNWjF6bWVCbS9XRno0WHdrWmszTWI5UFhsMklm?=
 =?utf-8?B?bEZZamUzSnBMSHVzUVB3SzhDeExlQ3p1UU55eVg0Nis3Q1Z2VjZSdXNVd3dP?=
 =?utf-8?B?aFRUV2kvazluaGNzcjBEeVp0Q2JMTWM5Vjg2SGkrVU0yYmJHNHZkVG5rK0Rh?=
 =?utf-8?B?Ly9XbVQvUlIrRUFOcm82VFZZSHdGS3UzblFQMWN4c0Fjemo2Q3BDbHBPUlJ5?=
 =?utf-8?B?eE8xTkNOT3o4STFuUHozMFJjbitSQjl0aFdwdWVnOEhMdDVLN2hXcTN5L2F5?=
 =?utf-8?B?VTB6MkE2bnZSM1lyQnVLYWVNZkNsckltWlZPUEx3VmhaRzJvY29Ncmd4aXUz?=
 =?utf-8?B?MEY3VitvQUhtVkZ5QUJLNkZuSG41b2h2RDZvSGhhNGdTeThtaHY3QUZnVnBZ?=
 =?utf-8?B?K0ozalBxK2tnZWMyVDFNSkRuNWVWcy9DamozQnhuNFNLYzBaVmtTcEpLZG83?=
 =?utf-8?B?QzNnY1R5SmcySXlpd3AvUmNMN28vVm0zS0lZUGdIL2hsamg2SmNnZitJOU9T?=
 =?utf-8?B?Q3JrMXpYRTRCQUp3c0dQbFhHMHVkUUFjSUNRMHdCQXNvT3B6ZEluQk9reHho?=
 =?utf-8?B?VEQvaTV5a0hPR1BNQzYvVWZ1aDJ5bFlJNmxyclhPaG03TE1aRFlZSE1WWDRt?=
 =?utf-8?B?MVhrbC9QTUZXYlRpdzJSN05na3VXcDhBanQ1L0I0US9oaVhGK2RVcEhEVmZX?=
 =?utf-8?B?R205VWVuay85OUJxTlFLWjVyUFNnQ2xGM0FaNFVjS2dMZDFJSGI2SitCRDdz?=
 =?utf-8?B?eE0zTHhkc1FKSlMzQUVoR09VdFp4MXROZmlVVkx4QWhZeEVVVFpLb21yVGs3?=
 =?utf-8?B?aGZqMGtQV09DRGlZcVZFYkdUck9NWUY5aWovYm45UjdoL2lRN3g4Rnd3Mis4?=
 =?utf-8?B?VHA1SDI4d0RodlRXNXlmL2xGZlg1cld3bzE3K3ZVZVo2VVFFaEd6V1lKR1BX?=
 =?utf-8?B?eGtqL3RUdnRINXlpVzdvQVlCcUpPVHlFRUJNdUZIOUNGSW9QaFF4TDF1Unhw?=
 =?utf-8?B?d2R4bnl2STlFU1lwbnRQQWtHRUpKUVBvV2pweHpUVnhLVmF4YWt3ZXFmb0xp?=
 =?utf-8?B?V1A2ZEZVQUlzVHZCUjR2WVV2QTd5eFZCZ1Vyd1ExQ2xrd0YwMDJPM1Ura2Fo?=
 =?utf-8?B?LytTVkxvc05kWjYrejgzbThtdzUwUkN5SE9ZSWFIZFdEY2p4bDRENU9lYzcr?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a0acc3d-d4c9-4bfc-d6be-08db99e96abc
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 21:33:20.1607 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L0SS4aPMHafyd2RD+LwdTj8dhqaMyKkO3dvOidSAmAjHBdS+7VG43KLeV1p1cxFvqs5BnPgK4hUBlNQ0r1crxPDQ82/cUTnoQ1RVZE3G18g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4969
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691703280; x=1723239280;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AmabJGLg0jwGpcubRRQU/fxIpqJ9OfQS8o+H0LWfJyo=;
 b=F//6vyUEPbZ9oQUx3E0J48hixuMj0ehj61vIEnSaCrKOCLnONbZ0hfPj
 JpgqHcyBvMVczttfu22vPR1WyvvWIp/B0c773j1exb0oGPJoFU1hSsRFE
 tgYJV/yEWVSMNqlWYyC2QH5SCVHzj1aDaLUSJeMgEMuNnPwLyFP0CGUfE
 f6azMY7gasOrl4yXktvy8lBRfIB/XxJksbYq9f8FO/jffAV9rSdZfmhLB
 ebNol9Ect/vZ+2F3jCL4YH2pHcQG8pZPMNjpUJ6INfgyZG7r17aKfWmd/
 Mhb0GAYeNDNe97j+HgLYIxVz6fNN6p+uKwGOQUv7CtsowLqXXNuAQqgrB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F//6vyUE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix receive buffer
 size miscalculation
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
Cc: netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/9/2023 5:23 PM, Jesse Brandeburg wrote:
> The driver is misconfiguring the hardware for some values of MTU such that
> it could use multiple descriptors to receive a packet when it could have
> simply used one.
> 
> Change the driver to use a round-up instead of the result of a shift, as
> the shift can truncate the lower bits of the size, and result in the
> problem noted above. It also aligns this driver with similar code in i40e.
> 
> The insidiousness of this problem is that everything works with the wrong
> size, it's just not working as well as it could, as some MTU sizes end up
> using two or more descriptors, and there is no way to tell that is
> happening without looking at ice_trace or a bus analyzer.

This should have a Fixes: ?

> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_base.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index b678bdf96f3a..074bf9403cd1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -435,7 +435,8 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
>   	/* Receive Packet Data Buffer Size.
>   	 * The Packet Data Buffer Size is defined in 128 byte units.
>   	 */
> -	rlan_ctx.dbuf = ring->rx_buf_len >> ICE_RLAN_CTX_DBUF_S;
> +	rlan_ctx.dbuf = DIV_ROUND_UP(ring->rx_buf_len,
> +				     BIT_ULL(ICE_RLAN_CTX_DBUF_S));
>   
>   	/* use 32 byte descriptors */
>   	rlan_ctx.dsize = 1;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
