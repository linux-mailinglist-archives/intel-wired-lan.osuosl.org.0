Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8048155F0FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 00:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17F0D81C67;
	Tue, 28 Jun 2022 22:27:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17F0D81C67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656455258;
	bh=k/IYNdjm7HQ302/nqoFpdyv/07j+maRJI1CtvDibKpQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ALsiI2ZWOUWR3l91PzRwEh6kQV64JPS0Cp5mJIrC1XOfIVk4zIyDM61rDKloIlpOQ
	 Lq27+1hFXcpq9hFTT8pHcNro74Ri3ZaPH2rmId8MuWWhPK9LqBzF3LXzIKVEDDlJf5
	 jh0yX810CaSS3Oj4LKd92JzzYcc6UkG46UdirLH/kITMFg30B5DyNx0jLofuBMbU2l
	 c1SzK22YWKGg+UA1AaXRIMt9R+/TQMXETQc7i87kxIn4OAv7MWYkMtIrO0SI4hgd3v
	 kq6O46HDA88773uZLLiqQrLgc4QT5qxJP2scUmftDuO5KxX6gCS9ati4dBuLdR/mZ7
	 z1mx3E2uInRGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKVN1hC459y2; Tue, 28 Jun 2022 22:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A35068190B;
	Tue, 28 Jun 2022 22:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A35068190B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFE081BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82B4160B3F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:27:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82B4160B3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s1RxkzxDiTHB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 22:27:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CBB160B36
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CBB160B36
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:27:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="280626032"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="280626032"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 15:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="617343173"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 28 Jun 2022 15:27:28 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:27:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 15:27:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 15:27:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaWjYsAeNP8zkv+4K2a9Ir5mAAWFoBnOk5MVUKKVJobKst5LVH5Vh4MdHZUJB1+P62y3glZgAKbAnOYxuXosXVIT+tst3jK2tzvEBo/u53Uri5z5PJxxpnmHc3h41PIrS0B76GFdJen2kUlfSvvVAHdltxb4+JGqAKDOuo1zUc1h7kRCQuXAG81sHUqbdPVF/e1IuPZMPaMBWEQLHKxaoigZ1wSk2//uOo/YIgHJNywYa4MZhnoImLbbFlM9vqXMsWQzbaouLhVliYuUcJ2kRWjSKK+y73mZXazLAWLG1nNU369L232XXBIlJA7RePgd18k7oMTbFSaqSuovc1NiKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j6nGr4sCUe+YSjqS2bH8mH/nvPcCZNARLzrgXIk9eUQ=;
 b=fOqq+woikVhLoedCkaIjL+iff/YmJQ0uKe0cQHiRGyUHqF2wBw8mcSbC4MMqvfUjAWp7tqa2D8/Zpm4GhTBAYvEa9TETg59zpwykflT3+Nnf5Oyjz01sA4W/Jvn6iDO6FbSNtnjfDomX6mFVN2dJggs6uhDU02/YwYaK8uR+Fn9xxUvFJ1imn0v1Vahdh2wuUf8RVVfOMKQArfOfKYy5RhjDH9CRgJHV8CfzmYAlMOzBhM2rg6WIALEkBgN4WSOKpyM44a89PoliHEGiWsHWeE3hPI2H5GN8uSHntppp/12W104GHIyRoQdksiKIk03r8gDQmT+VnxyIZtqtyH7M7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB4347.namprd11.prod.outlook.com (2603:10b6:5:200::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Tue, 28 Jun
 2022 22:27:24 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 22:27:23 +0000
Message-ID: <c7139d4f-a103-0c80-a319-42b53a803a5f@intel.com>
Date: Tue, 28 Jun 2022 15:27:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220624102110.1008410-1-michal.wilczynski@intel.com>
 <20220624102110.1008410-3-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220624102110.1008410-3-michal.wilczynski@intel.com>
X-ClientProxiedBy: MW3PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:303:2b::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e7af6d0d-0f3b-4806-5562-08da59555f78
X-MS-TrafficTypeDiagnostic: DM6PR11MB4347:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zUd8ttYtLvxSKwNpJPlzn5SPps36RCo/Vear66Uguyw1DUnArx+qANzEf8aRzlaFDAUvgmRYHiprsH8wQ0+3sq4n89jXt+PH0fvyW483gcsOOHWnp04BMl9Zz8/uNZ60t/JyvwFvXm7fEtOpxnvAtvnKPfWQBXlqKoyphOdgkQwecPHw3TDqPMutcIezjeCUs3qy+XgQbrBtAJAy+1I8ndLIFvKc7i0FJ4yzkm2xBwP0zgadsU+1shk6belAT4GP221g0O5tmy8pYwUnQfzi13n9EX1/B5lPQzMKO3+q613a831YuvGjgRsCyVLbLw7C8BX/dUiHoxXgxQITkSUGsekEFxGvrsM6FLz93XeHcoY86Na6YI6Ka9dtF3vOd5SFnYI3/m7zTEVKzL9CQqACsySiRjBADWxjgHzXx4SK+ttUXy0OiHNZarBJ/7WrLKZlWqpB16HV6sXELZIhc+HC9cND+/vbN3dNaDuS+rCtorA7tpOk/A0Qa3tUQFzXRCgEYPqSMjGqtZw7i0XkLSHwO2rR0ObxtK5s4cTt+6Ldb5pR1ZKlLHuZooyuo4SmG4z7LGXy9Qa+imnK2SeZ1PQZMO9BXJjSL4BP++MdVVC5ucpqqS4Y3PnWiqDgzYEvg0UlxPGD/HEVU9Y39kyDJEEHREkL10RwjljwdUCv+Pn3vQzptrjTKP0KVrP6I7Hhb2huLFoQpP0s3R2CneAvvZuLFHR9v+WibUWlXRVwL28sGedi8AJT2asSWjQ+kYrgD94d58X6mrBrXtmLF3//SOlLjlWkN+P3Erl3g3G/PAFrIvVEY4tgjiJEPJWgXoIt3zWRUzwpsWxT+iSAYGcl2fNlSw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(346002)(376002)(39860400002)(396003)(83380400001)(316002)(66556008)(66946007)(31686004)(66476007)(36756003)(186003)(2616005)(8676002)(82960400001)(26005)(478600001)(41300700001)(6512007)(6506007)(38100700002)(8936002)(53546011)(6486002)(5660300002)(86362001)(2906002)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzduN1ZDKyt5SlU2YVlOTzRydWRxSkFMeVJaMHE0b0l4YnlGU2F1dWtXY1Fk?=
 =?utf-8?B?WkZEMUZRbTZqaFkwVmptRXhSL0owblJZKzlicE9aOHRTdzlCL1BoaE9DUk1w?=
 =?utf-8?B?ZzMrTDkvSTV5RFJ5dXRING1WKzFXZUgxcG44dDRhR1NmNFc3VkFWRlVFMTJF?=
 =?utf-8?B?bThvK2l3Z21FVkw0L2RqWHFNNEdJRS9vaDRBdjhNcDh1clIzWVFVMzdXZHYr?=
 =?utf-8?B?TmZ6V3VFK0xLWlAzdEhzMW5nQVFWQ0tNK1pxSE1sRU4vR082V1RvSkl6N3V1?=
 =?utf-8?B?WWJWcXRZZkVPREM4Q0N1b2hxUHE2cm1NZTB0QjdqZ3Y2RUhVTG5lL3pOSGRh?=
 =?utf-8?B?bFNGYjVnd2NydjJoK1BTdk0rSXBCZDNZa1lvU0pjcS9wNlBod1lTOFBxaTZE?=
 =?utf-8?B?UUhnRENqZFRFTVhlV3lYeG4yU3ZNSEl1K1J1S1pqdlpTLzVxaDlzMityWlB0?=
 =?utf-8?B?SXB6V2JnSEkrbjJJMVpvZENvUWZKQVVQWUFBOU84OU90TGIvT20rVVZXcHps?=
 =?utf-8?B?aWNLbEVBYlFGdFIveHcxaHI0OURLRWZJQUs1SmZHVVJLK21GT3h1RjlVVnZi?=
 =?utf-8?B?SzJuS2RTOE5sWWdXRVNnUS9xRkw3K3ZsRjRiMFVaOFlJU1FPMXMvNHZwcDJ3?=
 =?utf-8?B?ZDRCZUR1WUV0QnVFQkhrM2JwbVNNSGhYWGtNQU5VVll1UlZheWJaMjBuZzJH?=
 =?utf-8?B?OFJxQXljRTdjR2psTkZKeERjYlBHV1doaE1ENkNacy85aSthS2tBK2szNmN6?=
 =?utf-8?B?NEtTZjVLQkhzN2hhTW1SUGxtQThjdlQ5M1hCNlhDdWZxc0FTYUJ0ZmZlVUxF?=
 =?utf-8?B?VmZvTU94T3ozSjZxZjN0ZkI5VXA4NllQTUxxQ3MxNzlVWGtueUhGMWRTc21z?=
 =?utf-8?B?V3YyaHFXL3Z5MnMxNHIwU3YyTUhEMmorTUNyZkZnaUNuTE1jYVYxK2twL3NS?=
 =?utf-8?B?ejRsNHgzQ292Mk56ZVF6NkJUREJKaytDT3BOV1VDMHlkVW91R0FGdGNTU1dF?=
 =?utf-8?B?aXlSVHI1aDVhbVROUU1WYmVnRWhOVzJSYy9kNGtKOTJHRWllaWl5REM4TmFx?=
 =?utf-8?B?OU1qR2lDVWtYcEd6WVY3a0dpMHpaWVRCcmg1bjZMRElvVXZ5b0hHVXNzSVFi?=
 =?utf-8?B?bkMva2h5czFGSktoYlYxQnBtKzErN280UjdxakNHMU0zRmdzclBkdkI4NE92?=
 =?utf-8?B?dFFYYjJlYW5SM0xxaDdwaDhsMkpsbFRNYlhxaW5POE5hQUJpQnhqakk1T0pD?=
 =?utf-8?B?VGl3R1Fla0dyQVNqWDZZOFVpMDh4TjVpM21MaGthMm9GTzBRT3phWWVySEpU?=
 =?utf-8?B?Rmo1R2xYTDNiY0Y3Yk1TMWxWR2FRc29QSU84dk1RcUI1ZHcrbXJ3VkJVSnVD?=
 =?utf-8?B?N000QmVzeDYyb1VRN0hGUWJTT1VTZmp5RHY5NUcxSlU4eHNwb0EwaHZKV0Vo?=
 =?utf-8?B?ZW5KZVRLVnZTVStGUWN5b0ZReWFhU0xPWThqejdOZDRnbFVqOFhCTCt5WEZZ?=
 =?utf-8?B?Y2NmUEYwQUJXNktxSWNIM2dWOGNKWTBpQXFOdTMydmdpOVd3bWtiRnpkejda?=
 =?utf-8?B?a2pBNUxTaUYxS0VFWmJBWmpzQlY0VVNIV25nMk1XOHp4WmV5NHBYRFJ3SUN0?=
 =?utf-8?B?Vis1T0o1bGZ1TWZSQTRwdUNSaWJMWUR4emRzc3N2OTJOVHhNNGlVVkpaNlRv?=
 =?utf-8?B?VFNqN2dZL2VUTjNGbWlkSGZjdUszUFUrbmN4WHVQdGJkcUpyODUzT2hKZE5K?=
 =?utf-8?B?Z3NNenZzc3RsMHdzdWxHdEtPdWJ5UERWbk8rZFBSVjQxaWQyRjVKcVNXREhM?=
 =?utf-8?B?YWl5YXlFeUNPODNOd3JXSE9YNFZaQkV0ZGRYUjN1emF3d1ZaL1E2cmlXbzEx?=
 =?utf-8?B?RlBZZFJyZ3VnQVU1NjNDYzdMd0o3K2pUWFBrY1VHcHNkazdRYTVQRElncmNo?=
 =?utf-8?B?Y1BkTXRPWHZTLzdNS21BR2p2SzdpOW1ldVNpTVVIS1pyVjAvajdyR2kzcHZz?=
 =?utf-8?B?VjZtbElXRnpvZWFtNDNoRmdJRmlHMzlBYmZ0dU56KzU0N0pXekhJalFCdmIx?=
 =?utf-8?B?RUF4VGsxazRJZHBPV0xLWUlmZFMyNUxlNUNSVXRuZlcvblh0dVFLZ2Vrb3V0?=
 =?utf-8?B?d2UxYzVWbGRIaGpNZmxJZVZMMkJTQmp6UDFONWFHTjIzRWt5TnZqcFIyYnFS?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7af6d0d-0f3b-4806-5562-08da59555f78
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 22:27:23.6410 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4WOUb4PnfccoT9qOmmLfVQXblES1vUFxSySGSYMy1P8OLgyDwGnJWqI7hkdaWpPJxZv5tTRLuaY06vhWVFOC2sbmrGjw3sfekVWH+LhJKGM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4347
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656455250; x=1687991250;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=A0KHvMR8JBDWJZ/9M/Mw2c3/eLMYaeXnJ/D89zfIj6c=;
 b=B7V2greVZVp4Pb8MbroYaA4QcBXNu9EgrITU6FVaGZq0ngahNXtJ+AMn
 0zoHe+ZX9BmSJIs+b+q0AylQTy8iH5DW2hYj4iyQ2fl8I/BX0HQz9ZyPP
 9bX12k1hkSsBCgkgqEcg4wkjikEcvAXaXHiDQPOO3MCyRuI8kiyCq5TYr
 WIAnkxoTw8ZrwdSlzWdGt/0Gz+ESSHtZqDk9hgPoh9Rq4eAGWtiSIjW/3
 49TsPx86lDQX1RaTvKTVYfGtcBy7O+UyGhFnyuffNad3OAg7lZY3TLjHm
 8BIoxkaD0p/TKXHdyrdDrDPjahJQUDSS2bdesjtc+yr4yUAs+sBPFIEuN
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B7V2greV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: Enable switching
 default tx scheduler topology
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



On 6/24/2022 3:21 AM, Michal Wilczynski wrote:
> Introduce support for tx scheduler topology change, based on
> user selection, from default 9-layer to 5-layer.
> In order for switch to be successful there is a new NVM
> and DDP package required.
> This commit enables 5-layer topology in init path of
> the driver, so before ice driver load, the user selection
> should be changed in NVM using some external tools.
> 
> Title: Enable switching default tx scheduler topology
> Change-type: ImplementationChange
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---

...

> +/**
> + * ice_init_tx_topology - performs Tx topology initialization
> + * @hw: pointer to the hardware structure
> + * @firmware: pointer to firmware structure
> + */
> +static int ice_init_tx_topology(struct ice_hw *hw,
> +				const struct firmware *firmware)
> +{
> +	u8 num_tx_sched_layers = hw->num_tx_sched_layers;
> +	struct ice_pf *pf = hw->back;
> +	struct device *dev;
> +	u8 *buf_copy;
> +	int err = 0;

This initialization is unnecessary.

> +
> +	dev = ice_pf_to_dev(pf);
> +	/* ice_cfg_tx_topo buf argument is not a constant,
> +	 * so we have to make a copy
> +	 */
> +	buf_copy = devm_kmemdup(ice_hw_to_dev(hw), firmware->data,
> +				firmware->size, GFP_KERNEL);

It looks like the devm variant is not needed

> +
> +	err = ice_cfg_tx_topo(hw, buf_copy, firmware->size);
> +	if (!err) {
> +		if (hw->num_tx_sched_layers > num_tx_sched_layers)
> +			dev_info(dev, "Transmit balancing feature disabled\n");
> +		else
> +			dev_info(dev, "Transmit balancing feature enabled\n");
> +		/* if there was a change in topology ice_cfg_tx_topo triggered
> +		 * a CORER and we need to re-init hw
> +		 */
> +		ice_deinit_hw(hw);
> +		err = ice_init_hw(hw);
> +
> +		/* in this case we're not allowing safe mode */
> +		devm_kfree(ice_hw_to_dev(hw), buf_copy);
> +
> +		return err;
> +
> +	} else if (err == -EIO) {
> +		dev_info(dev, "DDP package does not support transmit balancing feature - please update to the latest DDP package and try again\n");
>   	}
>   
> -	/* request for firmware was successful. Download to device */
> +	devm_kfree(ice_hw_to_dev(hw), buf_copy);
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_init_ddp_config - DDP related configuration
> + * @hw: pointer to the hardware structure
> + * @pf: pointer to pf structure
> + *
> + * This function loads DDP file from the disk, then initializes tx
> + * topology. At the end DDP package is loaded on the card.
> + */
> +static int ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
> +{
> +	struct device *dev = ice_pf_to_dev(pf);
> +	const struct firmware *firmware = NULL;
> +	int err = 0;

Initialization not needed.

> +
> +	err = ice_request_fw(pf, &firmware);
> +	if (err)
> +	/* we can still operate in safe mode if DDP package load fails */
> +		return 0;
> +
> +	err = ice_init_tx_topology(hw, firmware);
> +	if (err) {
> +		dev_err(dev, "ice_init_hw during change of tx topology failed: %d\n",
> +			err);
> +		release_firmware(firmware);
> +		return err;
> +	}
> +
> +	/* Download firmware to device */
>   	ice_load_pkg(firmware, pf);
>   	release_firmware(firmware);
> +
> +	return 0;
>   }
>   
>   /**
> @@ -4641,9 +4710,15 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   
>   	ice_init_feature_support(pf);
>   
> -	ice_request_fw(pf);
> +	err = ice_init_ddp_config(hw, pf);
> +
> +	/* during topology change ice_init_hw may fail */
> +	if (err) {
> +		err = -EIO;
> +		goto err_exit_unroll;
> +	}
>   
> -	/* if ice_request_fw fails, ICE_FLAG_ADV_FEATURES bit won't be
> +	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
>   	 * set in pf->state, which will cause ice_is_safe_mode to return
>   	 * true
>   	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
> index 7947223536e3..f18a7121ca55 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.c
> @@ -1102,12 +1102,11 @@ static u8 ice_sched_get_vsi_layer(struct ice_hw *hw)
>   	 *     5 or less       sw_entry_point_layer
>   	 */
>   	/* calculate the VSI layer based on number of layers. */
> -	if (hw->num_tx_sched_layers > ICE_VSI_LAYER_OFFSET + 1) {
> -		u8 layer = hw->num_tx_sched_layers - ICE_VSI_LAYER_OFFSET;
> -
> -		if (layer > hw->sw_entry_point_layer)
> -			return layer;
> -	}
> +	if (hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS)
> +		return hw->num_tx_sched_layers - ICE_VSI_LAYER_OFFSET;
> +	else if (hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS)
> +		/* qgroup and VSI layers are same */
> +		return hw->num_tx_sched_layers - ICE_QGRP_LAYER_OFFSET;
>   	return hw->sw_entry_point_layer;

These can all be if's since they all return:

	if (hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS)
		return hw->num_tx_sched_layers - ICE_VSI_LAYER_OFFSET;
	if (hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS)
		/* qgroup and VSI layers are same */
		return hw->num_tx_sched_layers - ICE_QGRP_LAYER_OFFSET;
  	return hw->sw_entry_point_layer;

>   }
>   
> @@ -1124,12 +1123,8 @@ static u8 ice_sched_get_agg_layer(struct ice_hw *hw)
>   	 *     7 or less       sw_entry_point_layer
>   	 */
>   	/* calculate the aggregator layer based on number of layers. */
> -	if (hw->num_tx_sched_layers > ICE_AGG_LAYER_OFFSET + 1) {
> -		u8 layer = hw->num_tx_sched_layers - ICE_AGG_LAYER_OFFSET;
> -
> -		if (layer > hw->sw_entry_point_layer)
> -			return layer;
> -	}
> +	if (hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS)
> +		return hw->num_tx_sched_layers - ICE_AGG_LAYER_OFFSET;
>   	return hw->sw_entry_point_layer;
>   }
>   
> @@ -1485,10 +1480,11 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
>   {
>   	struct ice_sched_node *vsi_node, *qgrp_node;
>   	struct ice_vsi_ctx *vsi_ctx;
> +	u8 qgrp_layer, vsi_layer;
>   	u16 max_children;
> -	u8 qgrp_layer;
>   
>   	qgrp_layer = ice_sched_get_qgrp_layer(pi->hw);
> +	vsi_layer = ice_sched_get_vsi_layer(pi->hw);
>   	max_children = pi->hw->max_children[qgrp_layer];
>   
>   	vsi_ctx = ice_get_vsi_ctx(pi->hw, vsi_handle);
> @@ -1499,6 +1495,12 @@ ice_sched_get_free_qparent(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
>   	if (!vsi_node)
>   		return NULL;
>   
> +	/* If the queue group and vsi layer are same then queues
> +	 * are all attached directly to VSI
> +	 */
> +	if (qgrp_layer == vsi_layer)
> +		return vsi_node;
> +
>   	/* get the first queue group node from VSI sub-tree */
>   	qgrp_node = ice_sched_get_first_node(pi, vsi_node, qgrp_layer);
>   	while (qgrp_node) {
> @@ -3178,8 +3180,9 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
>   	u8 profile_type;
>   	int status;
>   
> -	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
> +	if (!pi || layer_num >= pi->hw->num_tx_sched_layers)
>   		return NULL;
> +
>   	switch (rl_type) {
>   	case ICE_MIN_BW:
>   		profile_type = ICE_AQC_RL_PROFILE_TYPE_CIR;
> @@ -3194,8 +3197,6 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
>   		return NULL;
>   	}
>   
> -	if (!pi)
> -		return NULL;
>   	hw = pi->hw;
>   	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
>   			    list_entry)
> @@ -3425,7 +3426,7 @@ ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
>   	struct ice_aqc_rl_profile_info *rl_prof_elem;
>   	int status = 0;
>   
> -	if (layer_num >= ICE_AQC_TOPO_MAX_LEVEL_NUM)
> +	if (layer_num >= pi->hw->num_tx_sched_layers)
>   		return -EINVAL;
>   	/* Check the existing list for RL profile */
>   	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
