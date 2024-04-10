Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C0C89F352
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 15:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9688813F9;
	Wed, 10 Apr 2024 13:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TLqqv-qfc3bq; Wed, 10 Apr 2024 13:05:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0286C81420
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712754336;
	bh=n8zLU4sqmLJR/xpfjhgKhollZCmPcHplYKZtcxDUZRA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UDFUNqu7fIgCJvhfEAwbVFdH7YP8ioSEtYc7iykONf6Ux+mMfv9q8IU9ukBRTo2to
	 gasSib8NC/llA5vlLoaspn60qc4AGxF8KGpDPbRwd/wqxYEPrVWRoN7y+MJs8Yelto
	 0vDc5DkEY+OUELTrlAJmO0kY8qx/BX3/MT67hO8OcAuHFbc8AUlySHcuoBBW3Gynhu
	 3gQb/SJjC3YqU/pU5BZWxa4wWr0XlV6c9erQEKwx2Mv3nmZ4NcoVlT+45Bahab4lc4
	 4bsTykVMjqtux2cKyrLFCMPGPewImcreWBcT56MI3Oqmi93hUxyZf8rEHuBmCy98ok
	 b3FlgHNOqFrFA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0286C81420;
	Wed, 10 Apr 2024 13:05:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2F731BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEDE5404B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:05:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VIH7T15UYdVq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 13:05:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E12D640166
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E12D640166
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E12D640166
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:05:32 +0000 (UTC)
X-CSE-ConnectionGUID: BojM1hDKTKKNbYUaGCr/sA==
X-CSE-MsgGUID: Vl9kyEP7Su6MgOZ3+mD+XA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11952204"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11952204"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 06:03:39 -0700
X-CSE-ConnectionGUID: GPg6+GWPSFWyBM5rYOlbiA==
X-CSE-MsgGUID: snud1xBrSra8K4jf6D364A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25025718"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 06:03:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 06:03:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 06:03:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 06:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hcuF5T4Hy+lM09r9gtqzcuHYI0R9Ny3QcvRqcuMJzRPcuD3roGuafURs1TR6kknYF4t/1WBCrokbQHw+A6CnjbpY/NcqRByE8IKZcYf626nkjorQr3Eck/55Y9jGHsf1xIe87wv8OCyxxOpKGAGVD/jtBYIICCo5k5h3VMJ//gDtmbJUBnHjaIJV9x9Gxo6L1veT5LFVDakjjzeB2msF+rR5+/k1cvxei42/dMS8xXd8VZTAdrXSVB1Th0H2tc6+VNI0CEyRZhiphGFPfo24n6oU4PHALlrPqpJSJWQR10OTOlZrK6e4zMUqlm4XG442MXGT1xfBZArne+7YiXAE+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n8zLU4sqmLJR/xpfjhgKhollZCmPcHplYKZtcxDUZRA=;
 b=COwWFlahsLdUiE5nWaxVgRq4mbPpOvBcmQ0SG4Jwvg70SUvnubnJbWJ/S252YC7EOIzRWR0jc9mHYOGcB0RWUn0iO1TPPayxFMl9ekRjl09TEuD7h/MRvl8KVxWe6YIWjU3a6ex9sir3YGIT6uoLV2KLi4FwYBM6AYQBeLQG+934cFpWf0qQSto67G0tgGKwmoJw2o6eRVnQUvIT0xH1zenbvZ4gvEkoY6hJsbPLqGIs5rREVmkgZzvZORS3wplvveGjZXK/Z06gWCny+TJrt4+NLg5Hh+kguU7VeYCkgFNMD50xl/ymp6LA3VqKv0WRvdngemz+8+Ljw4rB18TD/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV3PR11MB8696.namprd11.prod.outlook.com (2603:10b6:408:216::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 10 Apr
 2024 13:03:36 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 13:03:36 +0000
Message-ID: <b1438638-a6f9-4a88-b8fe-7bec28ba124f@intel.com>
Date: Wed, 10 Apr 2024 15:01:26 +0200
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <45eb2bf1-e7b0-4045-82b3-93b9f81b7988@intel.com>
 <bebf1a1a-e4ec-4ec0-9d01-57a51bcf14ca@intel.com>
 <9d389192-63c4-44e8-b863-6323b45aec0f@intel.com>
 <36a067fa-75c0-4e7d-b704-229deea2d440@intel.com>
 <61a952aa-1b3e-43c7-9f35-ab53e492305a@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <61a952aa-1b3e-43c7-9f35-ab53e492305a@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0045.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::19) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV3PR11MB8696:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l3ok9VRTipD/IsAcREqhuos5bws5DQS9gJ0VLlL842dK1rma9aA2a7gWIP8kfN0ZN2DBa3ehui4DMli2d6SPtQyaBd68abOpfg2kks0aQT156TH4rLaSHmVAZz0NVbAa/mVv19NOoOJyBlumyL15W1k+upWScHHegp0tl37FDoMkDA+pICuVFtkcTJ8S+IDqQtcLUyy6EW/OFCHh1C4n5mtZBaJbUS3Gdtfs8R/8n9MSYSY9SUWCxTVn+igh827xJKLZutMsiIYzHhyqzlPRS0gO0i7NaYxfxNC6D/u3oOeiwjBnNsNvZtN5YI5Oi5An02xSH1zKOOPLMysODvT2AksU3ZZe+4zFM9Nn9yL2rQYtyX6maRuC2hVCdQ3UPn40FOHSO7gztlTLmuXrXhHkE9/XKUPv+0IM0vcgnLjmyxrSQqFYrwOcvaCud3L8vRcpJfYcJ/YsHFl5AKiGhxeeYfa7QJIcNL61GgOR+tdsvdmQEYh7c8Tin10OgC2yXY4povgiv9vYnUXJjMdrTNpJrrrIDycKpAg/7JXnO2yVN11yoA43WerH2ramWkG9cNoD0Xxr1Yyc+WAdySyuGGDe7lhgPU7g+vsAamRJF9aFRm0mlFYQ3ykjv400UtLW11MpcSGcsn+jUpmnj2rMUWflkHg4Zeu1QW3tEHZ5j7l7Muk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1hKTHJsbVRMVVNPbHUvVmovTW4rN2E3WWRPdUhMT3Rud1BieUluczVhSS93?=
 =?utf-8?B?VDZtMGxmTStFYkF3bE0yMWIxMXE2RlVKcmFrck8yMStkRGQvdm1BeDd0cEtE?=
 =?utf-8?B?bHVQNjFiaFFLOXNNU1dTOHl4ZytucjlkMU5QaFdrQ2lHZVdLMzRWbTRkU0Ez?=
 =?utf-8?B?VDRjakFvS2FFNy8yR0tLZjRybkp1RUlWZWFpNGs2R3VJZklPU1AvK1I2NjdZ?=
 =?utf-8?B?ZGlVczZaUmE2U2w2Zmxkc2p2bW4wYVBoN1dIU3RSMUFyZFBubFAxZkhHL3Fs?=
 =?utf-8?B?NHRGRmNmQll4c0YrcUNnVVVHTm9RVkxrR01XM2NyNStXQ1BmSHg0bXIvL1ZO?=
 =?utf-8?B?eWo2S29tMTVMeWhBZU81ZGU3bVR6R3Jld2FXTXhHVG56UGVpcjUweTNQaTk5?=
 =?utf-8?B?Yzh1cWgxa2pPQWNtclVLT1pnWXh3YmVnS0Y1SnBMTXdra213aWRSU0ZBcTNW?=
 =?utf-8?B?YzdXM2dsL3hvMnhWLzZ4d203VVJmaXBaT21UNVUrdXFpTWFVVFE0K2VMbWtm?=
 =?utf-8?B?ek40ZjNwaE1RNHVDTCsvTkF2bTI1TGRDam5CUXFsbGpIejN4WTg0RVVTUGd3?=
 =?utf-8?B?MTgzRmk2VVJXU2s1ZVN4UkIrYWlYc0ppdXJRR0dRV3RNTWlzUGFsNmlNejJH?=
 =?utf-8?B?VWxKZGhIOXllaXVJYXE2enNIYVRka2Q5OHdmaXVIWllHay84VVpuMUFJdWd3?=
 =?utf-8?B?REQ5OHI2TVF2WUlQMkYzOFJwd1gyajdvdFNNZk04OEhNUzMzTW1LVDBGcE1I?=
 =?utf-8?B?Z0s3M083cXcwby9jYVVtOENoOFl5RndjSFJVdHhoczRDNWJKamR2RTNJemhO?=
 =?utf-8?B?SmdFbnZPazZnMEhpYm0rQUVpNVpMVzhzWGdnQ1lkRks1biszbXZZejQ4SmNl?=
 =?utf-8?B?NXIzYzkvUFBGSzJXMnZaZmp6VUxxNFEzQ0tVZnBEdjFOazR1bmhiME9HT1Jq?=
 =?utf-8?B?RDZ4bldaTzg0UnlqaS9yOUdqWS9VMm9Kb1U0UjVhWGZlOUREaXl0blFObmtr?=
 =?utf-8?B?NjBvL1RYRnhhWlR5N2xucnBsQllqZ0NhNFkraFVlOGx1ZjdIb2VGVmJHbDI5?=
 =?utf-8?B?UGZpNDc2SW9vR0hyZUwyb3NwOVJUTWVTbFlLakhCT29FUGduR3d5UW53TGND?=
 =?utf-8?B?OC9VWCtxVkRMTlB2cjQ1djJoR2pJMFlMWmVJb1ZqbVhJOHFCR3dJU3JhWGFX?=
 =?utf-8?B?T2tISnZpS0d4bzUxNmNkRWV5aVh0M0ZRSlNHenhOcWlpTS8rbTJzS3h4U2ZS?=
 =?utf-8?B?azFjdWlUOEpaUjc3S09Pdm9CNjc1d0lycGVpazBId3ovTjh5eVFOdVdkdjVS?=
 =?utf-8?B?TE4zM09tUXFaYXF6UWEvVGdTeHhCRVVXWmdUL1F5UHNudE1leVIwUE9XWkNl?=
 =?utf-8?B?N2FWYnMxQXE3bUpWN1IzbXJvcEZidFg4OFlsTkFCSUtkN00xU0d6aEREQlZo?=
 =?utf-8?B?MGZ2QkR6NGhiTjQrdXdOSStwWEJRRDlSc1Y1WnR4Mnp3VXRpYTMxdmp1c2dB?=
 =?utf-8?B?MlZYYVJveVNkeHRGMk1NOVFBTEFTN1NjeHpIdGxjNFYxZEhlbTRhTzBSdU80?=
 =?utf-8?B?MjRXelJIR1FHeWhSUDlraFB0RFNhSTRXZlduTGNaVmlIZTlPcmlrd0dLdWFI?=
 =?utf-8?B?V2s3UUQxWWlBdko0SzdndGdQNmhTSTFYV0MyZzV0NG5tL1FtQU1KWkt4OXU0?=
 =?utf-8?B?SWhvT1BTaFh6MWJPY1F6T1ZVUk1zUUQ5dUJ0OTFFWm5iTmJuT2E5SGpieUl6?=
 =?utf-8?B?UCtHb2tZOExOQ1hRZTRLak9CWTEreHdFb1N2T0ZDWmpJNWkrZXJlZjFVOEJE?=
 =?utf-8?B?SVJkOHhjTjUwYmc5dkVNMk1uWlVQSGVETStZTFd6cGRpNEtWcHRQZ2FxY01Z?=
 =?utf-8?B?NVJTUElXRnJaN1U2d2ZqMy9UV0h0WDZ2c2U0Uml0WVdVNTBTaS9Ga00xMFUx?=
 =?utf-8?B?R0FsTjl4R2xjV2tHQjFnYWNnZ1NyTW9Fb1p6NStRWWFPbCtFRUNkTkx2Ym1T?=
 =?utf-8?B?WmFTQmJjQjk5ei9kTWZZUms5NXR2YzhvaXEzTUZJdlZrZ3NKUFFWWjJwaWlz?=
 =?utf-8?B?cXB3dXNQWStTNm1wWGUyNEU2MWxMWjdwUHh0TDkyUVZxWEd4U0dPUjJUZG5N?=
 =?utf-8?B?K3BNejRRZE5UR2pvTlNFNzZ5aHNxcDFvTGIrWE5qdUFDUkV3OEx0RjNqZ3dq?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1af9638-c95b-4f81-5a50-08dc595ea1f6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 13:03:35.9970 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1BdVvr2fxK+z+qD0cWVxvr+WFxrTiWwipDm75fF3XatCuE9hUn+MBh2khIJJtVuQJDGtsW0murJa8qGXtR6jK1vklVXzozVNTamnsxHTh54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712754333; x=1744290333;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m4rJT5FowvYx/KNfcxtkyF+TB5wD8s+Xkx6vQQXNF+Y=;
 b=Ax2aE2h5UV+g7Wgdl5/OUIAlzFMpNhqR2bdJvzhwGMvsnp0SDS0VUm+J
 myMGHCZCPlvh4F25bxDl20iA47IN80mlq3RUG8lv7ZhDi1c5KJvBaeeiB
 aXMXsgZtvOAIF1fz0mISKF8jdOtQPxRynnmN3d4FkcIW0vpyhIr3ZMPp+
 KrNVMMVMhQDYADb1T3ReAsshodKcTpl15U+o2Kjzlxc1EZxIy20T5ZwpC
 N+A1BQGYsR4OC/AhKNC/P4TbPIUkuZnbATMv8nXvi994+ObFkgLGc+VvR
 xi5oLvQ/is8gRG9Sx7WxB6yXzLzDnRIRz1VVKJCx9GIeUC0qr31f1t+x/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ax2aE2h5
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Yunsheng Lin <linyunsheng@huawei.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 10 Apr 2024 15:01:32 +0200

> On 4/10/24 13:49, Alexander Lobakin wrote:
>> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Date: Tue, 9 Apr 2024 12:58:33 +0200
>>
>>> On 4/8/24 11:09, Alexander Lobakin wrote:
>>>> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>> Date: Fri, 5 Apr 2024 12:32:55 +0200
>>>>
>>>>> On 4/4/24 17:44, Alexander Lobakin wrote:
>>>>>> Add a couple intuitive helpers to hide Rx buffer implementation
>>>>>> details
>>>>
>>>> [...]
>>>>
>>>>>> +struct libeth_fqe {
>>>>>> +    struct page        *page;
>>>>>> +    u32            offset;
>>>>>> +    u32            truesize;
>>>>>> +} __aligned_largest;
>>>>>> +
>>>>>> +/**
>>>>>> + * struct libeth_fq - structure representing a buffer queue
>>>>>> + * @fp: hotpath part of the structure
>>>>>> + * @pp: &page_pool for buffer management
>>>>>> + * @fqes: array of Rx buffers
>>>>>> + * @truesize: size to allocate per buffer, w/overhead
>>>>>> + * @count: number of descriptors/buffers the queue has
>>>>>> + * @buf_len: HW-writeable length per each buffer
>>>>>> + * @nid: ID of the closest NUMA node with memory
>>>>>> + */
>>>>>> +struct libeth_fq {
>>>>>> +    struct_group_tagged(libeth_fq_fp, fp,
>>>>>> +        struct page_pool    *pp;
>>>>>> +        struct libeth_fqe    *fqes;
>>>>>> +
>>>>>> +        u32            truesize;
>>>>>> +        u32            count;
>>>>>> +    );
>>>>>> +
>>>>>> +    /* Cold fields */
>>>>>> +    u32            buf_len;
>>>>>> +    int            nid;
>>>>>> +};
>>>>>
>>>>> [...]
>>>>>
>>>>> Could you please unpack the meaning of `fq` and `fqe` acronyms here?
>>>>
>>>> Rx:
>>>>
>>>> RQ -- receive queue, on which you get Rx DMA complete descriptors
>>>> FQ -- fill queue, the one you fill with free buffers
>>>>     FQE -- fill queue element, i.e. smth like "iavf_rx_buffer" or
>>>> whatever
>>>>
>>>> Tx:
>>>>
>>>> SQ -- send queue, the one you fill with buffers to transmit
>>>>     SQE -- send queue element, i.e. "iavf_tx_buffer"
>>>> CQ -- completion queue, on which you get Tx DMA complete descriptors
>>>>
>>>> XDPSQ, XSkRQ etc. -- same as above, but for XDP / XSk
>>>>
>>>> I know that rxq, txq, bufq, complq is more common since it's been used
>>>> for years, but I like these "new" ones more :>
>>>>
>>>
>>> Thank you, that sounds right. If you happen to sent v10, a bit of code
>>> comment with this info would be useful ;)
>>
>> The current kdoc in front of each struct and function declaration is not
>> enough? :D
>>
>> Thanks,
>> Olek
> 
> I've asked my initial question just after reading it thrice, without
> your reply `FQE` was as meaningful as `ABC`

In the commit:

+ * struct libeth_fqe - structure representing an Rx buffer

:z

or you want me to expand FQ, FQE etc. abbrevs in the kdoc?

Thanks,
Olek
