Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEA38951C3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 13:25:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F292403E9;
	Tue,  2 Apr 2024 11:25:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id asw3_9YRou26; Tue,  2 Apr 2024 11:25:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7314C405F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712057121;
	bh=0vZK/G72CbRGvt5LrAFacul7/pUlZNY4/9pAMpIr7Xk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FfAT3HoJ+mzdj2WwO4L1NFZaelutznInAAJQqnNcVfyR8b0h8n1VoGPiiOFLGIBVc
	 egbHqFTh1kzpLvmi5rhWCZBLBOoDu8+Oa1/NHfHUdGdUr4WgNWygUuuAK2tTtgXR1z
	 i+iLDO+giVE31BWZu6Mxs4Bk+xwKFqFhevvUtZY8N3f71TMjM/sQc4Gdpc+SxPrLBG
	 AqIpMB1ycxMspbcTMscXHeR/dA8EKgeIL3kImjsD1TCi3IRusAiA0cRjwDyiblvrDp
	 Y3QAXArvqVWBEKQZlTSXtKKsSbDWGa0xNhivqndu+E+6IkBLV5T7o0M+aUVySzHJMJ
	 R/GZZWdtUE1Jw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7314C405F5;
	Tue,  2 Apr 2024 11:25:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EDC91BF46A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79DEC60B02
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bRw29Oq1RrfD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 11:25:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2CAB160B00
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CAB160B00
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CAB160B00
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:25:17 +0000 (UTC)
X-CSE-ConnectionGUID: CTlOfHIJQR6nNZzXSxFOVA==
X-CSE-MsgGUID: XFxI6u44R9aW4rcNBLdz8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="18672319"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18672319"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 04:25:18 -0700
X-CSE-ConnectionGUID: h69XtmRKQR2mbWFFbsVqnA==
X-CSE-MsgGUID: olG7mWmnR5+jBR8kDdynLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18057517"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 04:25:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 04:25:16 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 04:25:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 04:25:15 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 04:25:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J2BdE/ZtSVpx7o67/ZLT6kKkAOXgEqGytb+rkE8d5Ft78xTBaSkhuNdM0qX0ttV51PraJ4Z21Pf46jOm4utdlypMOrNETGYv3NN0uhQzv6OB8mbEO9kdqPxxC6yLvKWjxBqaGxacoS2+6giy06hSV8YwpSxUmKlJl7mtW3IJf3nTFFVYSUqTcmYUndQcmIwMUBqqIts1Nds2iHyLoCTCYjHpblIJ8k5mq+PddzB/LRldAUGP2j/1IsIi1ZRLEinnF8k/vud0wKaam5xuHu+R8SpEuKoLps8Am08NQ5jvRdmy61KyyhG1owEqbJw+WTfAry7EW87gZ/yWNZgxLP8FXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0vZK/G72CbRGvt5LrAFacul7/pUlZNY4/9pAMpIr7Xk=;
 b=FxaQQ4fmMiW5igk+9dSHkwx2pd07vyjraK3zdC2BNonJE8vrk9UUhnO4JubX7Hs9cY276UVVr8yIqszTgL4vrJys3KS9+Azj3Sj82b5rMKjDVlYslsvYMl+GhMWR+zXk6o2EpavHJuPrbaxLrb01CKOIaSe67iHQu6gwtTWXtxpGEnpbRSzsPHTxHEdcz7c9xg0H+9maAyZnSqFf0UiRX3bY6gF0e/Il2SBqTG3WoppJYCD73ts/R7UcTm1hgHS/ST+N/meKlgHkBddA6dXvxAn/ba+7uDzxpSZo4tBzEcECDtJcHok07b2r5oG0Xrqhg7QUemqPJGb3g2cMcFIirg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DS0PR11MB7631.namprd11.prod.outlook.com (2603:10b6:8:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.22; Tue, 2 Apr
 2024 11:25:13 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 11:25:13 +0000
Message-ID: <f7c6264e-9a16-4232-aba2-fde91eb51fb7@intel.com>
Date: Tue, 2 Apr 2024 13:25:07 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <20240329092321.16843-3-wojciech.drewek@intel.com>
 <20240329152954.26a7ce75@kernel.org>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240329152954.26a7ce75@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0021.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::14) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DS0PR11MB7631:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lwe/V2b0WxuhMvT8+7NmibmK+Qvmyl+4OC0NppNLROXJBHl2/gCs+v32H1aQvZ2B5F6Oq9b0JKHrFl0X82t65WJ92fcw/5sLR7OTd6AWcUCpeoz2pCVVCCWMjbUFetnEvTmWLoltVV+GtUVy9ra6ZUwXDfZh8tfv0jr3ebYfzWDzauGfWYQLh918V39xk7QVI63V6M8oN8+3vWyfi8MBTVf7hFIUxQECNb27veiE34kx2+g73eXGxB6RkJ3YLENxGjKW5jzw77OpXz9Eqqe2onIPC0ExmtS6WI5ozH3qERC4dRXWlG5/b/1aYtiXAulLANAqJm4UlqtmUjozaUSw0r4lg3Xhy16WS6cHUC0TcZMQfVu/xf1xnlHbe6cvK+BtgBUVPrSITioWo/juz6GDd/XXbto2Fn2zz/43Qs0yO3xoRpUO20XiuDzKHMy8uHJodVU01zJ54qfdRpi4rCeZjK43yqVK/1GQw6XBxjI7ZmkjUN7pJ5cE5F7TwbhQVy9cJvPHBnR+e3Q9y3swRyYT7CexNhpm65O1TvvcyiHYBPIIxQ8k0RiUL1NFGQO/NN9gy2K4Olmd9UaRVs7QoxJr8PVjVfgMTA0Hhhur2gCrCXfyj6sH60NvgYMdaXojAAxW284iU3T4rKy3U9jVMegtor+W54usJW+w+nskiI1beO4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UlV4NTNGbEszR1RxaStvQUFqWCsvVFY3U1NqM05sMzZ0UHZBWUkwRmU4RlNj?=
 =?utf-8?B?ZlJvWU9SSmJQMk14bS8zb0FyNGdGOWtTMVdaWXVTYVZMMEVxVXNiYTVGanhT?=
 =?utf-8?B?YlhDRjRCWXdTamtLWWFScEFpa3V1ZnJLOUJaRWJBeEt5RVFQZ1N2M0lCQWFp?=
 =?utf-8?B?TE43RThKUkorT3VEZzJJUFhRSGJqelZWUEF1OWYxMjltUzdzV3hWRnp0MU80?=
 =?utf-8?B?SkJtSkUrWXBMMW4yWUN4UUxZZURKNytPclJwRzYvZ1lwRjdFNVJ3dU5hUmY3?=
 =?utf-8?B?SHRWdERMdjhyWmM5VzRpdGxiWUlxSU92WExTNEVNdFJVZkZhR205UU9aQ2hT?=
 =?utf-8?B?OEQxdVhHM3NQTWdlekpvVy9LRDBEbGk0d0RRaWcrTzFURG5zcDVsd3FaMkd6?=
 =?utf-8?B?UzFKV1pRU2lpdlVubGs4NVdWSnYwaUIxYWVRcFJaekNBQ2w0aSthcmorWTd2?=
 =?utf-8?B?aDFCZmM3Uitya1F5aGRwOTlOcU5mSkw1UTZDZkFqY2JaNkJwMnJVN2QyMkpN?=
 =?utf-8?B?QkJBR0FDZXBEME1EMGtaSnArOXZMdURid2h2ejFvMlZWdWtCNDErQkRmZ0hC?=
 =?utf-8?B?K1BoaW0zZ2hTQndYK0cvRWNCNTFMaXVRMGxpRXNjY05PRTZVNDh0bkZrVzI0?=
 =?utf-8?B?TlRWbVNUM0c4RUhSSVdrQktEdmVOd1oxaGowRXRNQkw1LzloMnBvQkhmT1BS?=
 =?utf-8?B?S1A3aWgyVld5NkVKVVluL0lPUk1ZajZ0Y2ZHYXdvOTU3ZHc1eUtjUWNvZTVF?=
 =?utf-8?B?UGgveTEwSEtwTUt4UnBSbVQ2aVJWQnFZVW4zaXErdjI4RVdwd3FjWVdJZVdh?=
 =?utf-8?B?QTUzNTVscnFZYkRLVlAvRVZycW5neWRhTkxQeWcvMTBocEVrSS96cGZoQjYw?=
 =?utf-8?B?ZE90SU1XVFhGUjZXLzNlQzNuTll5LzN0UWhXamw5YXIzRmNPd2UrUzVEOGZx?=
 =?utf-8?B?a3hzeTNxN2Q1NFVoR25DSHhTVVU0dy9FT0hJVlYrelRaT25Id3dLdkhLQk1F?=
 =?utf-8?B?VXUvOU51amdoYUtnV1lBQWMwTzFwR1QwSGhJN24zTlhTdGcrSU9iL0tRZTlh?=
 =?utf-8?B?K3p0SEZvTmJRNGVZUFJ1enROOUpOQVpGSzJDV240N3NBWDVITGdpYUxOYWZI?=
 =?utf-8?B?a3JhcVJKYlBvTHc5di9BdFpNbGFDTm1DMENmNXIvMzBCWU1xampRNk12bHVP?=
 =?utf-8?B?YzQ5RFI3c1Qramx6dU1tanNBTGNWUFJXeGxhMzF3V0dyQk1rSmlsNzIzMjY3?=
 =?utf-8?B?bUU3Y1VpeVBSVzJ3NWlPU1Jhb2V3dVUyaDE4MXA0d0puWEpVV2Z4YXU0Qjh2?=
 =?utf-8?B?TWxnUFFEY1pHckpIaS9IaUV2MTdaZk4yeEc4Sk1Wdi9FUlRDTmhqemFabWJV?=
 =?utf-8?B?MkxUNlVNRHNxTUw0REhUMU8zSlBsSS9ZaStjcTI0MHBhd2I2Q08zaE5zSkpa?=
 =?utf-8?B?dUpYRHdHRnVJcklPc0VjU2JvWnNWZFRUbTNCTXFCV0hmZGdHTlAyektEcUsv?=
 =?utf-8?B?TUl0ZEhqZVZCZW9Sdlh4RDFQNjRWNHJDcDY0T2VyWGpqdGlCR3B3TGlwUVBU?=
 =?utf-8?B?R0V1dklrd1NNWlczeHZscEhKOXFQbTM2bWFzcTlMcFJURkNNRE5xeEVybEpm?=
 =?utf-8?B?WUdlQTJLNDJ3eHVWd25vUVpJRFZzeUY5S2V3dWsxbzV2U3JGeTlZcGpISGpV?=
 =?utf-8?B?dGtzeFVJSDJJUlJpbndTUlU0dGthekgzc0lXSytKQnRLMWhvbGxrQkJ2YmhF?=
 =?utf-8?B?c1NrWTZmblQxSEp4WnE1Z2wrZUZiTElwNEwvZlFXK29vWG9JNEZmS3RTcnlv?=
 =?utf-8?B?T09zd21hOFN2STlNbGw1Ulh6ZFhMQy9FUEZ0TG1FREpYM0JrNGdEY0lRY2Zr?=
 =?utf-8?B?dWVCd2NMOWlQaW5rbnpPWTZLdjNUcDR3RWJOekdjdllDV0tmclA2QnRMcDBa?=
 =?utf-8?B?K0tQVFBOc283THg2R3lmVmZ3RitGcnNudEVBLy9OZllRWm5obnFNditaeTRL?=
 =?utf-8?B?L3RXWC9vWVhTM3Z6ejdsclp1TXJxdUJCZ3RGQkQwZDhDdVI2YS90eSt3cFY3?=
 =?utf-8?B?SWxJK0hWc1MwQmdZalpOd2p5RUZ2eVZyeVNKY0FKYVdCN3FOWUlQeGsrL0cw?=
 =?utf-8?B?U0tTZkRwOU5rcGY0dFM5eE5QMklFeU0wZjltSXQ2bXlUY2hheGk2VW9rUlVL?=
 =?utf-8?B?NXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74d89ff4-eb3a-4e9c-3a95-08dc53079079
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 11:25:13.6053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JkoqEi8x4haMzY8Q5l14X7p7ITVs6CdoWiqD3oLt04p70AzuutFEwMNaDeD+yqiu0Dn6bMVTcBEW/ZdehHsRyOHNpYQ5L836UJcjdbfDRnI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712057119; x=1743593119;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FTUrDzGFrgRvcO9Ui+rCs25zfwMQRRGexixa9r9wcMY=;
 b=SlS9t7tyLUc6RjGTA1OXyllBKoQB6k6Bn2VnLwxOPSOdjA3lNdsgtPCk
 jSJ/xqjeC8ZvwATU8LMzjkrQ5OV2kvVbhSfpU8eomth3I3YmkoQO6dlnq
 Fp8TjwkPJxZS6UMptlhP9G0l7ewTN38sOILT45vLhKKwXvCqVunHzarGd
 rzOtLW3NhLri5LO34sxOAspH40G4dEX3rOjiYrWvQW3GUdGWYaDfsHGr/
 paJkL6R/04WqbACb1sFpcxBi79w3+SCKdPdHjjHL5JqLAKeiVKiwEDe9O
 QmVZGOR6X/6jNyRmL7CiEv1RjE20PYypUxAP/3teEcUUWOS0d/KpG3l/R
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SlS9t7ty
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ethtool: Introduce max
 power support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, marcin.szycik@linux.intel.com,
 anthony.l.nguyen@intel.com, idosch@nvidia.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 29.03.2024 23:29, Jakub Kicinski wrote:
> On Fri, 29 Mar 2024 10:23:20 +0100 Wojciech Drewek wrote:
>> Some modules use nonstandard power levels. Adjust ethtool
>> module implementation to support new attributes that will allow user
>> to change maximum power.
>>
>> Add three new get attributes:
>> ETHTOOL_A_MODULE_MAX_POWER_SET (used for set as well) - currently set
>>   maximum power in the cage
> 
> 1) I'd keep the ETHTOOL_A_MODULE_POWER_ prefix, consistently.
> 
> 2) The _SET makes it sound like an action. Can we go with
>    ETHTOOL_A_MODULE_POWER_MAX ? Or ETHTOOL_A_MODULE_POWER_LIMIT?
>    Yes, ETHTOOL_A_MODULE_POWER_LIMIT
>         ETHTOOL_A_MODULE_POWER_MAX
>         ETHTOOL_A_MODULE_POWER_MIN
>    would sound pretty good to me.

Makes sense, although ETHTOOL_A_MODULE_POWER_LIMIT does not say if
it's max or min limit. What about:
ETHTOOL_A_MODULE_POWER_MAX_LIMIT
ETHTOOL_A_MODULE_POWER_UPPER_LIMIT

> 
>> ETHTOOL_A_MODULE_MIN_POWER_ALLOWED - minimum power allowed in the
>>   cage reported by device
>> ETHTOOL_A_MODULE_MAX_POWER_ALLOWED - maximum power allowed in the
>>   cage reported by device
>>
>> Add two new set attributes:
>> ETHTOOL_A_MODULE_MAX_POWER_SET (used for get as well) - change
>>   maximum power in the cage to the given value (milliwatts)
>> ETHTOOL_A_MODULE_MAX_POWER_RESET - reset maximum power setting to the
>>   default value
>>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>>  include/linux/ethtool.h              | 17 +++++--
>>  include/uapi/linux/ethtool_netlink.h |  4 ++
>>  net/ethtool/module.c                 | 74 ++++++++++++++++++++++++++--
>>  net/ethtool/netlink.h                |  2 +-
>>  4 files changed, 87 insertions(+), 10 deletions(-)
>>
>> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
>> index f3af6b31c9f1..74ed8997443a 100644
>> --- a/include/linux/ethtool.h
>> +++ b/include/linux/ethtool.h
>> @@ -510,10 +510,18 @@ struct ethtool_module_eeprom {
>>   * @policy: The power mode policy enforced by the host for the plug-in module.
>>   * @mode: The operational power mode of the plug-in module. Should be filled by
>>   *	device drivers on get operations.
>> + * @min_pwr_allowed: minimum power allowed in the cage reported by device
>> + * @max_pwr_allowed: maximum power allowed in the cage reported by device
>> + * @max_pwr_set: maximum power currently set in the cage
>> + * @max_pwr_reset: restore default minimum power
>>   */
>>  struct ethtool_module_power_params {
>>  	enum ethtool_module_power_mode_policy policy;
>>  	enum ethtool_module_power_mode mode;
>> +	u32 min_pwr_allowed;
>> +	u32 max_pwr_allowed;
>> +	u32 max_pwr_set;
>> +	u8 max_pwr_reset;
> 
> bool ?

Makes sense

> 
>> diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
>> index 3f89074aa06c..f7cd446b2a83 100644
>> --- a/include/uapi/linux/ethtool_netlink.h
>> +++ b/include/uapi/linux/ethtool_netlink.h
>> @@ -882,6 +882,10 @@ enum {
>>  	ETHTOOL_A_MODULE_HEADER,		/* nest - _A_HEADER_* */
>>  	ETHTOOL_A_MODULE_POWER_MODE_POLICY,	/* u8 */
>>  	ETHTOOL_A_MODULE_POWER_MODE,		/* u8 */
>> +	ETHTOOL_A_MODULE_MAX_POWER_SET,		/* u32 */
>> +	ETHTOOL_A_MODULE_MIN_POWER_ALLOWED,	/* u32 */
>> +	ETHTOOL_A_MODULE_MAX_POWER_ALLOWED,	/* u32 */
>> +	ETHTOOL_A_MODULE_MAX_POWER_RESET,	/* u8 */
> 
> flag ?

Agree

> 
>> @@ -77,6 +86,7 @@ static int module_fill_reply(struct sk_buff *skb,
>>  			     const struct ethnl_reply_data *reply_base)
>>  {
>>  	const struct module_reply_data *data = MODULE_REPDATA(reply_base);
>> +	u32 temp;
> 
> tmp ? temp sounds too much like temperature in context of power

I'll change the name

> 
>>  static int
>>  ethnl_set_module(struct ethnl_req_info *req_info, struct genl_info *info)
>>  {
>>  	struct ethtool_module_power_params power = {};
>>  	struct ethtool_module_power_params power_new;
>> -	const struct ethtool_ops *ops;
>>  	struct net_device *dev = req_info->dev;
>>  	struct nlattr **tb = info->attrs;
>> +	const struct ethtool_ops *ops;
>>  	int ret;
>> +	bool mod;
>>  
>>  	ops = dev->ethtool_ops;
>>  
>> -	power_new.policy = nla_get_u8(tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY]);
>>  	ret = ops->get_module_power_cfg(dev, &power, info->extack);
>>  	if (ret < 0)
>>  		return ret;
>>  
>> -	if (power_new.policy == power.policy)
>> +	power_new.max_pwr_set = power.max_pwr_set;
>> +	power_new.policy = power.policy;
>> +
>> +	ethnl_update_u32(&power_new.max_pwr_set,
>> +			 tb[ETHTOOL_A_MODULE_MAX_POWER_SET], &mod);
>> +	if (mod) {
> 
> I think we can use if (tb[ETHTOOL_A_MODULE_MAX_POWER_SET]) here
> Less error prone for future additions.

Yep, makes sense

> 
>> +		if (power_new.max_pwr_set > power.max_pwr_allowed) {
>> +			NL_SET_ERR_MSG(info->extack, "Provided value is higher than maximum allowed");
> 
> NL_SET_ERR_MSG_ATTR() to point at the bad attribute.

Sure

> 
>> +			return -EINVAL;
> 
> ERANGE?

Agree

> 
>> +		} else if (power_new.max_pwr_set < power.min_pwr_allowed) {
>> +			NL_SET_ERR_MSG(info->extack, "Provided value is lower than minimum allowed");
>> +			return -EINVAL;
>> +		}
>> +	}
>> +
>> +	ethnl_update_policy(&power_new.policy,
>> +			    tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY], &mod);
>> +	ethnl_update_u8(&power_new.max_pwr_reset,
>> +			tb[ETHTOOL_A_MODULE_MAX_POWER_RESET], &mod);
> 
> I reckon reset should not be allowed if none of the max_pwr values 
> are set (i.e. most likely driver doesn't support the config)?

Hmmm, I think we can allow to reset if the currently set limit is the default one.
Right now only the driver could catch such scenario because we don't have a parameter
that driver could use to inform the ethtool about the default value.
I hope that answers your question since I'm not 100% sure if that's what you asked about :)

> 
>> +	if (!mod)
>>  		return 0;
>>  
>> +	if (power_new.max_pwr_reset && power_new.max_pwr_set) {
> 
> Mmm. How is that gonna work? The driver is going to set max_pwr_set
> to what's currently configured. So the user is expected to send
> ETHTOOL_A_MODULE_MAX_POWER_SET = 0
> ETHTOOL_A_MODULE_MAX_POWER_RESET = 1
> to reset?

Yes, that was my intention. Using both of those attributes at the same time is not allowed.

> 
> Just:
> 
> 	if (tb[ETHTOOL_A_MODULE_MAX_POWER_RESET] &&
> 	    tb[ETHTOOL_A_MODULE_MAX_POWER_SET])
> 
> And you can validate this before doing any real work.

Hmmm, makes sense

> 
>> +		NL_SET_ERR_MSG(info->extack, "Maximum power set and reset cannot be used at the same time");
>> +		return 0;
>> +	}
>> +
>>  	ret = ops->set_module_power_cfg(dev, &power_new, info->extack);
>>  	return ret < 0 ? ret : 1;
>>  }
