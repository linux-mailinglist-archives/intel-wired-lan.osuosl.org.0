Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBB68FD478
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 19:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5384E41994;
	Wed,  5 Jun 2024 17:57:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LEi6xOJ4YY9W; Wed,  5 Jun 2024 17:56:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55ECD40209
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717610219;
	bh=Oj1Ox2eOQxLAxJid+K7ren4DRQhu2ldNGp0y2J8PnoM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jc6cHbdvtbqbWU923pFHF6BKu1yE7nSQ5ZECDtKDnJNrnGCTXC7ughR3W5+rhBAh0
	 oyl+6w0TEYABl3PbdfxtweJAdBDu01idy5gHiTyKf3Q0Db7lQM+BB3cKqER4+ZUvpg
	 F4wWChLNMkNZTYEPwp8FGuxDsyn177hERcMt3an4hNu7pjjVEyAr21i/V4hFrsnc18
	 zoOVWwSiWQOvQip8GJ5rhjsf8Qhy+wE/kI+u3BA+CQpUQL1m5CxjmkXhPfl7TULsvD
	 aeExyy9h1ggoaUL9V9EQgE0c6gJ3ZJeSZhidQecIazO33gseDzDg0BSaiu7Yrp5Al2
	 9xK7J8LFNqDZg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55ECD40209;
	Wed,  5 Jun 2024 17:56:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 326CD1BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 17:56:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D65FE41994
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 17:56:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lWARvdBB0Z5c for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 17:56:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0FC7140514
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FC7140514
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FC7140514
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 17:56:53 +0000 (UTC)
X-CSE-ConnectionGUID: J9vlv9ZUQOCRasKIy8aa4A==
X-CSE-MsgGUID: 2mu0AtjpR+6G4Avl3+ob/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14082351"
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="14082351"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 10:56:54 -0700
X-CSE-ConnectionGUID: pD3RpokiTmWiRUW5zCP/+w==
X-CSE-MsgGUID: SSkAn+ygTe2r/uaey2810Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="37657342"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jun 2024 10:56:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 10:56:52 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 10:56:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 5 Jun 2024 10:56:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 5 Jun 2024 10:56:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPgNLzcggzMz+x+eMKtHqBgF1um3V3QkuvRmU60hTlYzbOW0l6VpPFGc2pGaxTZ4JmBpbuVnKF8a+jXusFeqSTRiD/3GGUWF7VBQQrrAHWECCiL6qc3L9hhyNIqb39+bDgfIhdbYMo3PpdNaLK0571bwdHewSgwAiNN0Q6rOoNoEznHq/kwAPvLaitDNSATu3tKrWzpMiAZHp1m81sfHjsFcPmWSJWZ802sb9AYlXkrwxz6nGOsF3W0srDHUxTScVJSiRym39iBCBMBZ9KtM2hVvHTQhwi8nVWPEbrVlE5+qwPOfFmQ4ywF5p/WnHpwXeqT1OFo8j2enG9uRTOI1Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oj1Ox2eOQxLAxJid+K7ren4DRQhu2ldNGp0y2J8PnoM=;
 b=GHcj31W6bcYXAagNsCNRvRSJigpA0GOptqFjyx04rsazNcXbkjPp+74YaLNpUMX8Y1AwJVNzTVYMpUWOedwW30pnqanUAQS+AH2DOjSXRGlgeT7TEXM8RQ6bqWg1olzqkfddT1UVCc7u/IdPCMOCuOhsgBpsuq86djQZb0qKlVI79nrBp+41ICgESqdLirHh9N+JlqHLR2LBePmzP6j1MX0fM0vO0+QJ5WUrYvgkKPbUe6XcGHiqGWbZbqvBDkavc9vtSa4ZVo5OnPOTwllBfdOwsrHWrp6cUYLBZXKYGb1Qsm5kuQBvGhp8Sb/dwN2YhZ/T8+gMgO98d8Pw84laJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SJ0PR11MB5181.namprd11.prod.outlook.com (2603:10b6:a03:2de::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Wed, 5 Jun
 2024 17:56:48 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7633.017; Wed, 5 Jun 2024
 17:56:48 +0000
Message-ID: <74023ed5-d371-41d3-9aac-c4e1c4d476b6@intel.com>
Date: Wed, 5 Jun 2024 11:56:34 -0600
User-Agent: Mozilla Thunderbird
To: Gal Pressman <gal@nvidia.com>, Jakub Kicinski <kuba@kernel.org>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-2-ahmed.zaki@intel.com>
 <20231121152906.2dd5f487@kernel.org>
 <4945c089-3817-47b2-9a02-2532995d3a46@intel.com>
 <1e32711c-a89d-40e6-9b34-485b58a3c9a6@nvidia.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <1e32711c-a89d-40e6-9b34-485b58a3c9a6@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZPR01CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::7) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SJ0PR11MB5181:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a51cb29-99ce-493b-5bd5-08dc8588df3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|7416005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDZNL0JDS3p2UUNsVXJ4RklPKy90YkV1TDBNSWRiYUFPdlhBbWJDMTQ0cFps?=
 =?utf-8?B?OG5Xci9WeEZ3UmRGbUVGY0lTL25oR2FIeENmMjV2ZHlCZXgyaFZBcjdsN0pN?=
 =?utf-8?B?WndMdGpMZ2RKNUoyR2hBdW1OMnQveXZTTURsQXNhQ1VUSHBDTE80c2FFUFBj?=
 =?utf-8?B?UUdiV0dEQTFON3JndTRKM21xa0Jqem55NFh3Q2swbkRnT01oeWhOZTZwL3I2?=
 =?utf-8?B?dTRRcDJ5UzJJVDNlRjlkRVd2TWRiUDg2ZGw3Z2lmVkZjbzlHc0RPUi9Uc1R6?=
 =?utf-8?B?a1pXSmtSczlIVVJ0WTlGMURuSE5qUGRxQjZ4cFQ2U3dEeWZGZ0F0bDJnMnJp?=
 =?utf-8?B?R3pTOXhKSDczQTJpaVN1Y0txakxpTENCc1owQ1M0clYwQmN6TExpSks0UEFT?=
 =?utf-8?B?V2lNb2lBOWdXeDdXR29VOWExRUllM3BzREwrMCtaeWY3RWgvcWVRd2lTOXI4?=
 =?utf-8?B?SE1ZSGo1aEtmc0EyNnE4U2NqWnNYK3ZXaWthUlhzSDV1UUZxc3N5cDN3RGc4?=
 =?utf-8?B?dllnUE93T2V4Zk96VmsrcElYK1Q1YUlnNU9wZTgvY2tBUVRRQjhxTXh1V2V5?=
 =?utf-8?B?S2pkbktyRi8zdE42K2wzMGExeFBHVGVka3RZRkZZZ3EzenBZaGFSUGJ0Vksx?=
 =?utf-8?B?OXRYeE1vY3ZWV0NVNHhKZGswTEg0cjFWcUlhaWp4NlVZbks4TlBRcThsUjl6?=
 =?utf-8?B?OFE3TkVxbFRwOUFocytqNEtlbi9pKzJvcTZMTEx2ZXF4S3dzMXkrK3JMZWFm?=
 =?utf-8?B?ay9FWEpQRENIMTFVcGZKNE1NUkJZTkhOekp1bCtBMFp4YmhVMmR4dUlscFNZ?=
 =?utf-8?B?Wk1odkhJVnhPeFo2NHZVLzA4ckd5Ym95eHp6UFZSald4dXFaUmVqRXdhSDNJ?=
 =?utf-8?B?YzByVlZGN1RvblBMSXJoWlduanAraU44a3I1QmQybytWR2dtTzUrMzdaUzZ6?=
 =?utf-8?B?MVZpT3U0SzA3Qm1peFc0ZUoxNUhXeDF4V0tGQVN4elpiaFoxbStHa1ZZVnE3?=
 =?utf-8?B?eFM5Zm51NTV3S1doREFkdzNGcWh3VlpSLzZYTkZ5QlRBZkMvTXRvWG1qZU5Z?=
 =?utf-8?B?QVBUT3FpRkozTnNCakFMVGFiMHEydjR0UUtYQ2V0NFVLNUxDZEVJQ2dVSDJZ?=
 =?utf-8?B?ODMyeFA2SlAyK3FxNkFkeWVSekQ0MERYbHBaYXl0eDZqR2thZDk1dkVLdTZB?=
 =?utf-8?B?RTVJN1VFYUNlclRYaXZFRjcvSWNXSTVCTmQ1TEpsZTFzbkgyY1Jod20zek84?=
 =?utf-8?B?d2MrZGRLYmdnWXltUHZFQm5EK0dsMVU4dUlsVkk3eUE5amV4a3MzS1IxS1lR?=
 =?utf-8?B?ekZyYysvL3NFeVdEM1ppOUV2a3VsZk1VSHZoRjZvelpxQWxzenliQ0VVYlAr?=
 =?utf-8?B?NUNodW9LaWd1aXVaQUd3TWRRaHkwNElNWWlzVEp5a2t2cm9QM0s0d2FCRTIv?=
 =?utf-8?B?S1Rkb1VnQ2tCenR3c2ZaaTErbkNlRkNWYWUrV0F3b3M2d0ZoaWJWUys5SXov?=
 =?utf-8?B?OXFBTG9sanJtaGYrYzlla0FFSmpFODNjdHVkVG9rN1VSeDlOSk1nN2cyb3Vu?=
 =?utf-8?B?N3o5TmUxd2FVdEE1TGRoZjFLUlN6US9EQ2gyTlozQ2pqZ3k0c0V5RHl2WEI0?=
 =?utf-8?B?a0tLZGhOSnpxWk1tOWx1Y3EzM1lrQk50K3NwU2NCU29yMjF0d1VEY2Zpdnh4?=
 =?utf-8?B?M0FQeE9acFlCVDgweUFqUlNOaWh4R0pxSyswZ3JOcXdZM1laWTlhTGJBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(7416005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWUyOGZ1NHlLTXRIYUJaYng5b0RIcXlyYTd2clk2dWZ4bUc3eWZNN1R5RkZ0?=
 =?utf-8?B?a0lOMkdzVGlvTTl1SjZPMkJaQUhlZ2dKcU9mSGxXTTY4bXRqVGFzNTFmdUhO?=
 =?utf-8?B?blZJWFBIbzJTemZSZ3ArRXA2a2ovWUJhVjI5Y2Vkb3NNd3Fub0VhNm5PT0Ju?=
 =?utf-8?B?R2g2bVB2aERWNGlLS2ZWWmJGNmZqc2FXVnhLS3hUZmVpNEd6c3ZGTDQ4ZzY5?=
 =?utf-8?B?eHRneng1VnE3ZlNtMTVuNmJyV1czNVRPWEcxM3Q5aGpYczFHZXlvdFJDV1ZM?=
 =?utf-8?B?KzRSa2FzTVVoQkRvMzVxMUoxbXFJeUI1U3hzYjVjUGw4Tk5tRkxWV3kzZnBV?=
 =?utf-8?B?bUVKc3pnT0Zqdk1xNnRkeUFIdVFmWER1MHk5ZDUxTG85MjZtMkRpTHl0RXB4?=
 =?utf-8?B?SVorWHoxbWFiS3JxMVJrNVBhTEhEdFIxQ092NTBIWWVyY0tHZHUwYWdqZFVt?=
 =?utf-8?B?cEwwek5aTitjQ2tCQjlZRlNVMm5SRThzTjk3NUpyMzNXQitsdzdNM3lIZjgv?=
 =?utf-8?B?OC9rZ1diSHIrUmM3ZXZMOHJjVlVTd0VwVkpURjhWSHpNR1l5TUZwQ2Z5dnlW?=
 =?utf-8?B?MmIzaDhCUnF5RlZWcitGMG5nZ1dqTmZMbFBtanYxSk41MDVnbmhjNUU0bXkz?=
 =?utf-8?B?NDROWWJqQzlOeFN2RVNCUmdBMDFINUZ3STV2THFqa3NGUEExMjBBWVVocEJC?=
 =?utf-8?B?TTVacGoyV2pOYnl6UCt3SHNsWFRVd0MzbGIrSkZNVFdqeGtiZkNWOUZNMzR6?=
 =?utf-8?B?eWVDZFJRUHZmeEFJck1CRGJ2SDgyR1J5RkVLbTE2U2FyMk9Wc3didkNQWUMw?=
 =?utf-8?B?WXpqYUJ0U25Qd2xXTkU5YW1CdFlPc0NKNkJ1cVljMnQwOG5VOWN5aDF1VldX?=
 =?utf-8?B?T0dNR3cwN2RxekxBdTJqa21rNzFwZzg4cUMxY0NML0ZBbDVBR3k0RmtNcXJN?=
 =?utf-8?B?UWZDZWlWZzhGeU1Nc2NMdjU1bFFyUzN2eUZDbUczU0tUTU5xU1VQTEljMUg5?=
 =?utf-8?B?NEtaMFhWRUJkVTQ4cWFVV1BVU0pucTJnTDYwYTJtT2svYVp2VjE4UmR0ZWNI?=
 =?utf-8?B?SU10ZmdSUkpRWFIzTnlMVG9OcG0wTHlzTC84cGlUTm5Ec3VQa1hMYUJ3anB2?=
 =?utf-8?B?MVdjeUluTTI5S09DQ3h1d0V3ak5QTnA2S0k3ZUErTVBCQWo2KzJXWjk3RUNs?=
 =?utf-8?B?ZzZSZThEbFdyd1FWUWZxRTAveUN0VE85Z3NacGRmR1gvZEJHSTdtREVvTXNB?=
 =?utf-8?B?MGZnWFJKUEFkSE82ajJHMUJvRUxabVc1WUVFVmtuRkNpR3JSRjA5Ni8wSnpI?=
 =?utf-8?B?aTFiR1RwWng5UTl4TXlNZVVzZUI4V3pFNjgyUkV5aWEySGxRL1ZsWFlTQ2M0?=
 =?utf-8?B?aVZWZGtLYXJTck53OEFtS1NBNnJKQXpRdXBvd0tiSGljWkZwaDBKdUVKb2ZG?=
 =?utf-8?B?TkJuRk4rdVJlUy9YZW9sRUluMUxNOU8yaFdnVnlLZStRWHh3cVZRZFRpYksw?=
 =?utf-8?B?Mzc2OUw1bDNLRVZWQXpYekRMN2Y1UitINll2alpiVmdZZjZ3SWZpc1Q5TkJJ?=
 =?utf-8?B?SjZWc0N2OWhpcVU4QUYyaWJocWM1dklaZTJxUGdVYzVLSnE1T291MFl2Z2k3?=
 =?utf-8?B?ZUxhcGdwbmF1TUNwOFhXVDRpUWI3dEFNajMvbXhuNnJ2VWJEMGduVEl3dW92?=
 =?utf-8?B?dXZYNW5xNHgzYjFmTEowQnpOak5qTnJrc0Q4MG1wUFNIT3BQQ0ZpSzRTOHk3?=
 =?utf-8?B?Sm1oaGs1R1hUKzIzc1FrTWFIOE9Cc3lvcjFoOTU2aWtjTDFWQmxZc2ErQWxQ?=
 =?utf-8?B?WUMvY1BNOHl5U0NiMEtLOTF3QWRTVlNRVzNCa1p6bWpLV2N5aE5OaEtFK0ly?=
 =?utf-8?B?NGdmYklLTHVJU3B2VnFXS0t3OFMyMmJJUGg5bVZUREtDT1B3NFQ3bGNmQUl4?=
 =?utf-8?B?RElRM3RubGNYNGlvVWhaNTl4cVpzMGwrZDF5RTNmZ25GaFhub0ZFT2NxbWVF?=
 =?utf-8?B?emRGcmdHMDFTbWpRanNsaTJMc0V0UlhEZkIzai9GUE9aY3lQcDdGVVpBdTdC?=
 =?utf-8?B?SFhTMjRkR1NYRnVndjJoanVWY0xXaW4rYkowajR5S205cTdEeEpJT1Uzdzlz?=
 =?utf-8?Q?5Vdnwb5lVoKDyJrPLockHuzCf?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a51cb29-99ce-493b-5bd5-08dc8588df3c
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2024 17:56:48.8393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jeFLbfwzWGGsS64pR/7FS9MWwL2VT+f4SFbvR/HoiLA4IX3fTJwMkIEyPO4gIE1avNb47Z4lCteP9GDQaNdUhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5181
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717610214; x=1749146214;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GwiZYt+enyoBskfdmkSgsBxP7nD2lTQGQkF0jQyKmpI=;
 b=WbdknppCnP58+VxXwOzXIf2qXDFzER6mOsG0a8asSGsihiKO834vCV6e
 uK3muVRZQtNLGvWb/ier4+3Op3fwVNUE1Bks7nbWB5XdCxlTRGDXsvG/5
 J7Rf2fm1ThqfRWiEdl3HmJ1vdj9dHOHiiuS2Pm+AoUhGziFh5EYWj6R3l
 nqwYMrVRzqRhQSHm/w/sRtIdhSWnhqHot1k4jGmC1rAEPbrsLENxQRNHr
 xfP4rGaCeBLvyLdDI/6WaeCCtbEtfzt7BNG3LcssDzxp7Cdg7NPsBx4v3
 3wHcxbuWr2duYDDZXmqLCg/KlBViN1riW464ypaN6xkz35VmRQjEDZ58x
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WbdknppC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/7] net: ethtool: pass
 ethtool_rxfh to get/set_rxfh ethtool ops
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 alexander.duyck@gmail.com, Igor Bagnucki <igor.bagnucki@intel.com>,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-06-05 11:42 a.m., Gal Pressman wrote:
> On 27/11/2023 16:14, Ahmed Zaki wrote:
>>
>>
>> On 2023-11-21 16:29, Jakub Kicinski wrote:
>>> On Mon, 20 Nov 2023 13:56:08 -0700 Ahmed Zaki wrote:
>>>>        u32    (*get_rxfh_key_size)(struct net_device *);
>>>>        u32    (*get_rxfh_indir_size)(struct net_device *);
>>>> -    int    (*get_rxfh)(struct net_device *, u32 *indir, u8 *key,
>>>> -                u8 *hfunc);
>>>> -    int    (*set_rxfh)(struct net_device *, const u32 *indir,
>>>> -                const u8 *key, const u8 hfunc);
>>>> +    int    (*get_rxfh)(struct net_device *, struct ethtool_rxfh *,
>>>> +                u32 *indir, u8 *key);
>>>> +    int    (*set_rxfh)(struct net_device *, struct ethtool_rxfh *,
>>>> +                const u32 *indir, const u8 *key);
>>>>        int    (*get_rxfh_context)(struct net_device *, u32 *indir, u8
>>>> *key,
>>>>                        u8 *hfunc, u32 rss_context);
>>>>        int    (*set_rxfh_context)(struct net_device *, const u32 *indir,
>>>
>>> This conversion looks 1/4th done. You should do the following:
>>>
>>>    - First simplify the code by always providing a pointer to all params
>>>      (indir, key and func); the fact that some of them may be NULL seems
>>>      like a weird historic thing or a premature optimization.
>>>      It will simplify the drivers if all pointers are always present.
>>>      You don't have to remove the if () checks in the existing drivers.
>>>
>>>    - Then make the functions take a dev pointer, and a pointer to a
>>>      single struct wrapping all arguments. The set_* should also take
>>>      an extack.
>>
>> Can we skip the "extack" part for this series? There is no
>> "ETHTOOL_MSG_RSS_SET" netlink message, which is needed for user-space to
>> get the ACK and adding all the netlink stuff seems a bit out of scope.
> 
> Hi Ahmed,
> 
> Sorry for reviving this old thread, I noticed you kept the extack in the
> set_rxfh callback eventually. Was that on purpose?
> It's weird that we have a parameter that is always passed as NULL.

Hi Gal.

Yes, that was on purpose. Jake asked for this (even if there is no 
immediate users). This way the API is ready when netlink ops are added 
in the future.


