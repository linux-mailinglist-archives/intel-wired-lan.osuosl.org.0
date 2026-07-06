Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zT6mJAi1S2qTYwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 16:00:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04748711A06
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 16:00:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=UaTxwDNS;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CFB681368;
	Mon,  6 Jul 2026 14:00:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QA_n3SXIc9_h; Mon,  6 Jul 2026 14:00:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E0B581373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783346433;
	bh=kdABZS+Ohmi7CPkkCMxg9iYFru5T4t1h8nmYVHMvb/0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UaTxwDNSFI9DZ7C6NUX9PgCk1eOR9ulQpLcvEHRAcdVrOMjhanFzpXSFy6vcE2UT1
	 zZnbHzIR26P9Fm3Ya70P7A00oiAumhPf5P4fIMihbCOaoR/8OD2QqTHrUP6wdFlwAl
	 UP87fgvM+xjmf2BjeNT5cWOiQ9T3dNi+YnX3g4i0aKLckSHncIhWbMRGfONEpuockF
	 QoTeM3weNu0SCeBLG3vfIMw+7ng/ssd59we3upqB1U1eUAFKUA9hfAa27NGY6/WdTq
	 wfJErVoYKrcXgyI565dPS+D1ywSuPYFw6SPd1xItGzLY1xnNdO28+LFGVY0381ooY6
	 R6uS42qpX5Snw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E0B581373;
	Mon,  6 Jul 2026 14:00:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DF94F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 14:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B41C40587
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 14:00:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C1orzWZLIrdY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 14:00:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8308740574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8308740574
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8308740574
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 14:00:30 +0000 (UTC)
X-CSE-ConnectionGUID: CdNF6cW9Tv2a6fFxiOTFxg==
X-CSE-MsgGUID: LZI6bhDnSPq7VwPXxcuJ+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="87897333"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="87897333"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 07:00:30 -0700
X-CSE-ConnectionGUID: IbPK4GqUTLe6KaclkG8pxQ==
X-CSE-MsgGUID: OUtEBDgqRdmDHVU8xc+kWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="254362662"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 07:00:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 07:00:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 07:00:29 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 07:00:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YTD2TTk0wJVfPI3OqHTS85hZqKPxy/jnLiD5+yV3E2HZ4hlI9vFZN0p5rwPDimaCViEbIEppGpIloudi2iUVb2jucDFDLoi0O4ncF4KXzMfg4N02tdBpUHBiUOei9I30bTZkQW2MQv/6eh98Ocrtak/nQrG4nR4dXAErwu81+gHlJ+zq+jhjBN982JI7QLUY8puMnF+52CbJ6GfIi0txM5VUZOn+0xrdMulaK9EFP18HXMRC95D+jIR/bZJ6MnqlirVxMysYR/d/xfdw3dPv1JVx86fMNdqb4DWMuDVlpFt9+AKOBUwHWF8ykqJrLvl9fKFjOWp5G9yxnAt/NgV/Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kdABZS+Ohmi7CPkkCMxg9iYFru5T4t1h8nmYVHMvb/0=;
 b=Cl3qbCz4o7RnPE+6VUEMl+vv0JjXOlOsNNQwHI+ou51vQhFterpfAFqZUC2uzLmTORZc62dHDR4I8ciaOl89jW4OS9vG0vHLS00ElsdqOD4FG6D0CQgjFxTOMJjJX+yAKmuoWFWubpcH+xFHJdsOO1hBeixwS8xZo0MQ4GS1ppM8Gad+R5z8jmS6ry/t39ukiS3J7eHCnPDlyLZFTnVFTgyWUUusGLuITEUdZTbpi3zB6808J4DKnIySNrPdeHhPTaqjlNN30I+yBsEPUIsf7TpJMG1GAaMpY7l/FO0C7bKMajBnDmgKPdrVa4ACMGXRWI8zrLWX9Em6SUVkZszjAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.8; Mon, 6 Jul 2026 14:00:23 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555%4]) with mapi id 15.21.0159.018; Mon, 6 Jul 2026
 14:00:23 +0000
Message-ID: <b25c04a9-becf-47f8-b231-c353efc55782@intel.com>
Date: Mon, 6 Jul 2026 16:01:56 +0200
User-Agent: Mozilla Thunderbird
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260706092500.79044-1-pengpeng@iscas.ac.cn>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260706092500.79044-1-pengpeng@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1PEPF00005B82.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d8::60f) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|DM4PR11MB6019:EE_
X-MS-Office365-Filtering-Correlation-Id: af38a7e1-80eb-497a-53f9-08dedb66ebdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|22082099003|18002099003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: BjUjWvHRKRK70/3IkuFxbGYyUhBTxfTWN28+XFrqEvD2VfOuG5HprZwDY8FTmvZL0nckey+bbjobalIR0829tVUe+VYz2rezg5Luuh8kodPhoVhCRrU6EeYb12VyTmAnBRn34McR4FOiXomeR9h6qPNEm141AMv4CxCfY1IfTDgkZ4uFULCoXuLUQjk9By/PK1Epd9Xu1PsGKzEuBNwiJmhC+3xYTlZE4g31xEr08dzmwG0IN8byuljtUMG8FK7NbOuq+igvvWYr9ItqZNadNy7k0x5Q78SBOIr/EdIRRVAC1rsJkQCRq0RRnDHFNYrLnJZXkWteyeNDd/quu+7ImYVQWrmrroyYRP/idcH2TsJ15d5vSGE1PSZuIEr6zN9btu+bxluRPSPuvafGpaW4dI1qcVc3PqSb1X6c+5QHvQlFW4tEw/VRCNgDmU97lALyRLnr4wva7512uw12B4NKWPyOsK4hTDCUrRvrHtodd4wDlnt0zStjrT6oaQ+IkDtFBMugWHiNp/CLwTtzy25JOpRgyXToUC6cYimul61HNVHcd6uWfN2MLi4OLGjdRnbSYUDYEKNYX8BlHdJPV0SO2WMJ/C4a2AaVNcxqdxbZmpps4wjCvE8NmeDizSEm0ErJUhASn8o1AG1Gwk7N63avVVJ2AJl4l3+tRJBuvL68K08=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8496.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(22082099003)(18002099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGtUUnZ0Qlg1VzdFSitWODlNZnJ3SWZvU0RFYVBSNDRoWXlzN0VoeHdXaFYx?=
 =?utf-8?B?WEhaWnJyOFJ3QnVHQ045WWkrS3p1TkRjbVNLTktWYldXS0hmRVJ1Z3BidGxx?=
 =?utf-8?B?RUFVdmE2V2NSdVVqRnM1OG0wbm9MRktVLzRWdERkNlVqZE9VbTRVa3R3Vjdt?=
 =?utf-8?B?dXkyVXFtaEgvQ3ZYbUg2N3dIYUM4SVRaYVNxMk40c0lDTDNwMzRIaGNhM0ZF?=
 =?utf-8?B?bit1djRoZXBteEVKN2RaSWN2Z1BYbWMwRzdVcnF2dXpadnkxWkp1bE1vRkZI?=
 =?utf-8?B?a1NPS2Y1dXI1UTZyU0FqRUZmaVh3NUtNVEk0NW1iWVVvZ1pOcVBuUmVRdU9X?=
 =?utf-8?B?dUZNTG55NTJlYml2NjFPUGxYWlFZaUNSVGNLeE1ad2dBeUpOSEJCTVQ5ZzZj?=
 =?utf-8?B?VkxydnMreVpwdFFHeWoxbUN3ZE1RdG9zck5UVTJGeEJOeDdGRFZrd3I2b25P?=
 =?utf-8?B?NjlyUzVYa0kxSi80QWwrdU84YmkxOGRZS3JwSDJuNzJ5OWlJeTcyN21Wdnh6?=
 =?utf-8?B?Q3lzNEcvVm53OXV5T3RrOXBDWGFObTl2TmZ2bXU0M1hlMlN2Y1dLR3U2Uko4?=
 =?utf-8?B?MWlGSmJjQ09XVmJWMkk4UXBlUkZhb040bGkxU3NsSmxyb1RzWExkZWh2eTJ4?=
 =?utf-8?B?ZE1EMjNKdjhMRHNBSk1WR0U2SVVJc0piK1hXM0RYcllURGpWRGFuN0tZMnBO?=
 =?utf-8?B?TWVkOEpaMjIxQW9jRkZKbU9LR2k1OHpZQWdzSC8wT00wVHd5cFR5b0E4ZWFH?=
 =?utf-8?B?NG5mMEc1ZWZYNFlLT1E3aWxBQVdaN2EvcmdEQ0QxMzBMMUt3K1RucFZQS2JE?=
 =?utf-8?B?bVZGdGwrTGJpY0ZrRVlvek14Q0dTZStUWHMzWUNYMDAzU2l3SFFhRkVFWGdS?=
 =?utf-8?B?NzhZWlA5bG8vNk1FaktJaEU4eXowKzIrS2ozcDhyUVh2aXRjR05wdkpKdzlY?=
 =?utf-8?B?Vm90cHRia3ZLZHZTcERSZHFaT0dpUDVyeVMrK3dBR3Vwd0Ywc0ZuZzlnYmNL?=
 =?utf-8?B?aVQ1K05iM1JzcGRrMnF4WTJ2UVlOVml0b1d2UjJpRFlrWFAwUlROUFVXbmNJ?=
 =?utf-8?B?dDM0dC9MenBhSVRCdFFsUzFxS29Hc25LTW9heHg1MWNOVC8vWjZUY3ZCU2sx?=
 =?utf-8?B?emxKcmRtdm5NMWVWTm1qYWJuREo5bUxlaURGcWd3Qml3Q0EyVUQ3R1AzRFEw?=
 =?utf-8?B?WE5icTZHLzlnUmtrR3h2Q0dETlllZy9MVXZoS2l2d2tPSjZ6dTQ5K1ArTm5j?=
 =?utf-8?B?allua0FQMlVxNm1qbmN4ajduNE9HNGhxZ05nRno4cmZNcm1xUGlYTGhqSFJH?=
 =?utf-8?B?SFRHUTBPbGY4TkxwQzlrTGE0RjFZSUVuMkZMOWtiYVdBcFNUeGRwRzNJTTVv?=
 =?utf-8?B?NEsvamJXdHlTcUYwSU4xQzZ0MlBwcmZYaTBSVWlMWllPVEVETTFqZzVFWFk0?=
 =?utf-8?B?K3MweE5kVEpUaGNHT3JMYUJydFprV3ZjN2trY21VRWx0RDdhQVcraUl4OUdn?=
 =?utf-8?B?T2ZSQ3pBWXhLMWlHSldSbUJyQmN0SXl6cXhlYjNyaDUzaG52SXZqaDJmU2l5?=
 =?utf-8?B?VnluK0RFM3VqYmRVSkpOK2c2bGx2VHlxOEVQQ09hTTIxTWM2Y0FCVE1nQ0k5?=
 =?utf-8?B?N3pKQ1hUWHB4K3JkaVlLWXJ5SjhrRGJWZGZqV2tRSElVWE56UVExVGFyTWJR?=
 =?utf-8?B?QkxMUFNZc0ZKMWNmVmllNFplWGtSaG8rOWJQU1U3UWVSZ2Z4aVR0TVNSeTR5?=
 =?utf-8?B?akZoSUV0dWNsbU1ZSmJmclUvYUxxUHY1NnZqWjJ3NzJWTXlpbGJPcjQ3d2FM?=
 =?utf-8?B?bjhIL1NxeXBYUUwxZzQ2TDg0Yk54R29FMkxCbkpySVNpOUdhbTB2VGg0WVp1?=
 =?utf-8?B?UEZldU9NSm1TbjdTS0MvbVd6UFpDQUhPdm05RUJDY2htOFBQZjNsZHZBM0Jp?=
 =?utf-8?B?VDd2ZEJjLzRIRDZYMFUzcnBxNjIwMFBYWVlLdExrNER1ellTRWMzNkZ1RkpD?=
 =?utf-8?B?cldPaFhmWDNMVEErT0lkVkw5UDZOSU1OcmpQcy9aU0k0QTNIV0IydW9DbkIw?=
 =?utf-8?B?Wi9rMXkreG1yUmtyTlJ0dzhmUG9ST0dhRVpUM0NnVWFZRkZzNWdlR0RPR2lL?=
 =?utf-8?B?Qjk5Sk5ibW53aDBMM3pXL21PSVBjZngyK2xaMGVhdnQ4dzNobUNmZ0JialJC?=
 =?utf-8?B?dUk1a0ZRMjVqU1FwTENPUE1najNIWmVEN05GZEZrNEJwaDhCcEI2QUhxZ1Yr?=
 =?utf-8?B?OThZMXVRcjRxNVllTTl0bmlzUjVLbUt3ellja3BkUldNOEJ4RHVOYS8vMUYw?=
 =?utf-8?B?aTJlMmc3L1RPeTdscVYvSzI0RFhtREhVaGlTdjA5OUVYc05paGh3bVRsWlFE?=
 =?utf-8?Q?zon6X6icISdIdwu8=3D?=
X-Exchange-RoutingPolicyChecked: o0XKKEFso4zk6X8Hb7bFJwAus62Vx/12FS2UZbu2Suz5FBtGsdgpJennjRpuiJFgwDXdET1Du/yhEO2Ix/7b/CD4Ud7L6xCsPbdWrF/bOQ8gA40pVb/dEuSHROXd7R4KovjBqmHgwflN3Z0anvyDinWKsOIXo5QMU2DgfqgvspRqJuDqUlvc4FwhbjTyPKPpVqXCH4kUptm3kdc5NcYvg0uc9utUv+OMWxzLblzSQd0NKG5WNCXWb+rug79+Prcd5lFXQGFTTeE1UFAPt9au+3epVB5oB8OJp9G/B8xRrpm0j3akIbi1g2+6hqfPNElCEgDh2EPSC9hL+mtO2fkkaA==
X-MS-Exchange-CrossTenant-Network-Message-Id: af38a7e1-80eb-497a-53f9-08dedb66ebdf
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 14:00:22.6677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KzYhAdkbrxo7a3c7wToyxNiJRd7fPdNqZw1MRAxjeVwspluIM26r66YaYED6zbbzmbuq8hqOxFzcwMOh2ebzoNnomrHzWhSUu6iCQg9Jkwo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6019
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783346431; x=1814882431;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ic4saeICLvcaU/imsu+MUvdAsMi8UL16SITc9NT0WmQ=;
 b=B00OlMGgrKzeAOBaEzSuctEYX7uLPej1I/Ovne79uPRkuueQP9bqdyRH
 /f2qLJRylYZIGzq/xRF07nGJLszBGu3q994P37kheYV+r9n8w+Cx24dM9
 vsklE5eCctW7ogu+UTkl+Fc1Yk2lHHQV3Q8h7d7pjq+J3+h4u99zQgIjz
 OQKRiMVhrm7zIZaglC4p1Dv8/YBK+0VERM87ve5pxvCXxTq4+ljzx9FGv
 487XKQUzmrw6UFjNpwG5MFYXop+B/LTVKjoPmc8Q3wsyw3+D8H/suh/5v
 GNjuNVNSPaompXd9QTeUrckyDY4DpHmU1g8PNq/zt/uBm/NppXdthFMSP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B00OlMGg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: validate E610 PFA TLV bounds
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:pengpeng@iscas.ac.cn,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,osuosl.org:from_smtp,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04748711A06

For the future please tag your intel ethernet submissions as
iwl-net (fixes) or iwl-next (refactors/features).
(Applies to v2 of this series).

On 7/6/26 11:25, Pengpeng Hou wrote:
> ixgbe_get_pfa_module_tlv() walks E610 PFA TLV records stored in
> EEPROM.
> 
> Stop parsing malformed TLVs whose header or declared value length would
> exceed the PFA boundary.

this is a "beware of malicious NVM" type of change...

> 
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 4d8ae5b56145..03e88bdf5a43 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -3895,6 +3895,9 @@ static int ixgbe_get_pfa_module_tlv(struct ixgbe_hw *hw, u16 *module_tlv,
>   	while (next_tlv < pfa_end_ptr) {
>   		u16 tlv_sub_module_type, tlv_len;
>   
> +		if (pfa_end_ptr - next_tlv < 2)

instead of wrap-around arithmetics it would be better to use
size_add/size_sub

> +			break;
> +
>   		/* Read TLV type */
>   		err = ixgbe_read_ee_aci_e610(hw, next_tlv,
>   					     &tlv_sub_module_type);
> @@ -3917,6 +3920,9 @@ static int ixgbe_get_pfa_module_tlv(struct ixgbe_hw *hw, u16 *module_tlv,
>   		/* Check next TLV, i.e. current TLV pointer + length + 2 words
>   		 * (for current TLV's type and length).
>   		 */
> +		if (tlv_len > pfa_end_ptr - next_tlv - 2)
> +			break;
> +
>   		next_tlv = next_tlv + tlv_len + 2;
>   	}
>   	/* Module does not exist */

