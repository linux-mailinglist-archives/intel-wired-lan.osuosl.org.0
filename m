Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1B6944FB6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 17:57:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 164A040F12;
	Thu,  1 Aug 2024 15:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qu0fzMNVvGKr; Thu,  1 Aug 2024 15:57:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3ACD640F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722527838;
	bh=JZSGJUpTIm9Dkl0DB5LZl+YJZljdY17a1H7VUTx8Kho=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l/5Cww5/QP2PhCgJiCCYNWR2rCmmIyGxihkN97FnOk0zSBnz9PNnmS/kj+GX4ypnB
	 VrUe6ctF3Sg97VIKy5gjdiMW4fvFITvdoyyovKBddLAaaxzAR+yuN/bAViJDtw489x
	 H+QvlwH056tIMb6Gx9uL3FGljQ2NF7EbokVw3UmWi2NftkO9xJoeOcyteXf+n1M784
	 tlHBbQ+6wE4CC9HUrko0Qea0yLY9BQutzIYoBiNeaYyPB9/2HGk1UW4gj2KuGNbFa9
	 cXwGTUGgjj72SjikYR4brBs5rArXnTJVuhljCizrliZkEqqVDrL612WWN86MerXCrO
	 zeJmR+t7FqLvw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ACD640F07;
	Thu,  1 Aug 2024 15:57:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D94D41BF983
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 15:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C57DC6066C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 15:57:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZcTVr4JHM6U7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 15:57:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CD9086063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD9086063F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD9086063F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 15:57:14 +0000 (UTC)
X-CSE-ConnectionGUID: aV+zrUi9TGy+sni8koAiow==
X-CSE-MsgGUID: 7SvVU0AhSGyibf+tBWbc5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="31076701"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="31076701"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 08:56:55 -0700
X-CSE-ConnectionGUID: 4hjFGLObSQyzJrwVGm+W9g==
X-CSE-MsgGUID: K9gzLfQbSWiXhlCQnFcdOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="59401660"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 08:56:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 08:56:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 08:56:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 08:56:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bfK+ZFBTM1sbCjEuzgMDp2Wb3agbpKeJohf/BcV1EAjfs8JN2iHwq2nOy2KZoh09vUlxNpUYRkEvsPZ63hmoNruYL85H3+riKqPvLm8NPB8nwZ+PneQM8FhnQ2kQpwvyhmfM0RRJFgmYpldD7lfuRdcU95/TsnuYEVvGWM3WssTCJYAy4lNK1qG93EPBslLaVH+KvhIJ6mXVj1EywpFKIjmBBKWOrIM+gVB3o6Gj1zvr3zlrkkDRpxl4Rl9TrR0QHXiBNpUSl+qO/hwEIXKqvkkE1vfc2lT7TJgjtg3bO6TOVAEBzkkq9zGVfCX44QNBYMvEsKu3GvLxU2tMQxtrTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JZSGJUpTIm9Dkl0DB5LZl+YJZljdY17a1H7VUTx8Kho=;
 b=wl3jiLFFhhjF1ArLnLR44ZcZz3nSBYEUxxX+TZsLYUVUKMi1ao1Gnw3fc4Cc4X/MyeVtMYSwcKol7PkK300Wk36PcHyWslvhBgie6k6wpf3Elj6Fe0kEQ4XhhX4CGoTy0ARcaoLfAi+hQRlLcAqoGLtnhfssqBl6AlqxurcXVkGAxQa+XYnWAlpWaRTbsV2HPwajZF4Ppe50Q29JIZZz/RdSxSUSZyfoIJZJ/BvrKv3gQd4fY8hN6tvVKNEGHtKAwusyo05/Br9bjh6gMa/8D/e2mIn7wDJhUOmEzMsh2oNMVDB6Am1a80njVLkE0uDJeqGpy3qydTDBTUhhBoAwdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV3PR11MB8674.namprd11.prod.outlook.com (2603:10b6:408:217::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 15:56:40 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Thu, 1 Aug 2024
 15:56:40 +0000
Message-ID: <c11103ac-5180-4225-90d6-650beb8b8014@intel.com>
Date: Thu, 1 Aug 2024 17:56:35 +0200
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240801015829.4011051-1-paul.greenwalt@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240801015829.4011051-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB9PR02CA0028.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9::33) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV3PR11MB8674:EE_
X-MS-Office365-Filtering-Correlation-Id: 55939e3c-10ad-41fb-024f-08dcb24287b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3pkVTBoaThLOHU3RkZrWFJIQnBtRUt6MDhkeTV1NUpyQzFEU0FWbUpyYkRE?=
 =?utf-8?B?anNZRG1QanFiZXNoa1hRNDNPUWhRcUp0TGV4ekt1MWcwVkMyOEMzSUdLY0dB?=
 =?utf-8?B?ckZtbm5YSGtEdHBQU1QzTjY3M2RobTRLZ2hrbWp1YUkrbExuQTNpSDhoZi9C?=
 =?utf-8?B?TTRFa3lVaCttc3UycFY1M1FLR2dzOVNVbDdlaERMeCtBZFpPREZySzNvUzJt?=
 =?utf-8?B?S2JiUEdGdjlxcER3RzF5cTFMTFZ0a3djVHJVUnNMOUkrTE9iVktqYXBtMTNP?=
 =?utf-8?B?TFR6TXAzQm8wYkI4V2liNFluNTdqRU5rNmw1WERrSkdTVy9OTW95RlZ2dXJT?=
 =?utf-8?B?Vmt0WllpZlZIc05ZVkhobDhKeUM0VEVTZVlIM1VNa3I0TG5oSFZGMUFlb3B2?=
 =?utf-8?B?NzI0c2hZR2VwWTVKZG1xeS9yVW9EWHEzcndJeEdRRWdoRDhzV0oyMkRYaVkw?=
 =?utf-8?B?ZjFuQ292UHhGMDBScjNuVWpjdUNyK2dLSTBmamNYLzJacFFtV1pxRlpwcVJM?=
 =?utf-8?B?Y2JlcVdORzhmMXJCZ2I5WVRSWkZMTk5xRGxIdkQ4ZjJtV2VveXFFSWMyRDVw?=
 =?utf-8?B?YkNZdU5LYzVwNjdJTHlzRnJHUkZPR25Cdmp6WDFyRU5CdlNpVFJkUVdPTDRY?=
 =?utf-8?B?OEFUV1ZCUGxUWGIzTTkwT1BTMUx3aXpqL3N0VHhYaFBKSDREYjdOUC9qSmVq?=
 =?utf-8?B?NDd0bkNFZmdaUkRVT0NaeEIvNG1sdnRTMmJFVXJyenVsa2VuWFp3VXRXclBu?=
 =?utf-8?B?OWMrQ0hrc0RoQjlyeW9POGp5Y3V6ZnVmTGFFKys5c3BrOG9FNVBzWE9VaCts?=
 =?utf-8?B?VEtpSWxWSXlOL0hKeUdwL2JRUG5xcG92U3JaMjRic05yUWgveUtZeVI3bCtS?=
 =?utf-8?B?MmJ2WlVzTFFkVkIraGpsOEtlc3d4dFBaNXRqU09YaFdqM2lPajQvNDFPbndW?=
 =?utf-8?B?UHd2VmVyQnlWdkJTb1RWL0ZlUWhTeElEWTcrSnl6UXEwVlA0ZG1qNkE4QWRp?=
 =?utf-8?B?cW1JcUVvNEdROHZQWG11RnJLVUllZURMK0MreWQwOTNUZFdOamRlQW9KYkhF?=
 =?utf-8?B?aFF2QmoySEIvREMrQmxTUnJHY2Y5cWZneWdvbzFLTkh1ZUlyUks4QmZXQzQ1?=
 =?utf-8?B?NVVURGE3UGFzTlRJRXptQytwT2NNU1pvWkZJckZsbkZxVnlsVkZDZ0FVZXBy?=
 =?utf-8?B?dE4wdkdya1dBeFZ1Q0NXM09wN0tNY3dObEFvR25iMkQvOXlsRmdmL1hRT3p1?=
 =?utf-8?B?dDlGaUFqZnpyQVhqUWliMS9VMFZHTFlDQnN0cEVDNTJab3RLekQ2WVFoS2pJ?=
 =?utf-8?B?RFAzdnJQL3FoQloxZUNoOWZnb1N4MFVkVGpqMnBZOUNMNWd1amNTVWVWSDNr?=
 =?utf-8?B?cGd3TmlTTFgyYjBxVGhTZEo1ZkZJVGVyTy8vQ2dDNzN5RUlXNFVlelVubW01?=
 =?utf-8?B?UzNFRndiTEcyZEFRdnZpeW5vdm42a00ySVhSUFUyQklqL2NZdm5pYkcxMnR5?=
 =?utf-8?B?bjJrNFFxOVhWbDVqVEl6WDdCRCtyc1QxZ3dsSkFJaHdyaVhYWjFUd1I2N0h6?=
 =?utf-8?B?ZzM5N01Ud0QwZ2VKRWdtQ0hWOTFyazNrcEpYNmJBLzRYbUdMb2k0OWMrMGx6?=
 =?utf-8?B?RTFzbzBhTDJ1NEEzQ0NHUVhqRTJmN0xUUWczbDgrcUg3NVZidnF5dU1LRkpt?=
 =?utf-8?B?azM5VUJ1RFdOUm1iM29sRklwWitNYkQxeitwRVZ2RVVOaFlVNFg2MkMxMis3?=
 =?utf-8?B?Q3gxK3gyZkozOXRIeDBRY1dGOXpVVFkyR2sxS3lzTncrMUhZVGZQZ0xFRmp2?=
 =?utf-8?B?MWZoWk94MWlrYkwwMlZtdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1BoZzVmR25JN09CeDRYZmRGUlZSZVovU0xhOGc2MFMvanJaMHVjZEN2dklz?=
 =?utf-8?B?VUhSN3gwSmFvL1lTcEpLRE9tenpBV2swVW00a1B2Z2ZrL1pXSXRpTkEvZFpz?=
 =?utf-8?B?NVNSQ2ZDUXcxeDc3UzR0LzQ1TSt6MDRNcXZBenV0ZEFXMXZYRWk0UWRXZnRU?=
 =?utf-8?B?M2liYjdrSExSamx4SXh5d3k0OHhBdW1hcEJFUFI3dWo2TXE4eDBMMHpIRFR3?=
 =?utf-8?B?dnZ4KzRiMlEwRHNvME16b3BVd0c3aUtlNTJOOFNvV0xIK2cyUUpyc2Y1alpN?=
 =?utf-8?B?WnFPRjdBaFg3azJsUnFxZzJEWGtPdElBRDlCalEya3ByVHRNbXlzLzkwNUJu?=
 =?utf-8?B?U2NFUDA5S2duTWJIcUtabUNmREdsS3RxTDZIbXQwRmErQUkvbnpQUjl1NENa?=
 =?utf-8?B?S0x3MllsSlBwWXZ1em9sWG56eXdadWYzR2IxWS9Pb3l3am5OZVJ3dmNzcDlR?=
 =?utf-8?B?a0VNNzVRTTdQZTg1Z1U0Tzk5eDdnenVKV3VHWm5BOFpHc3I1bmV2TkljSUY2?=
 =?utf-8?B?N0d2SzZWOElOb3BxdjBXOHEzTEZBc0krUkF1UmpZT0lKdm8yQ2pBWXd4L0Va?=
 =?utf-8?B?QnJzeDhpUUg0dFo2RXBRZU90dmN4d0ZaU09OSlZPK3BCNW9Kb1l6VldRSmt0?=
 =?utf-8?B?d3UrSDJ5RElIWVhOL29zbFlQejBOZFlMR3JtMWkyaExsYmNyak0rZHl4TW4z?=
 =?utf-8?B?UUlPaE56Smgyd21VejlycnVEVGg3RnEycVpndldZVGVIazBjeFVOb1NJQ0hi?=
 =?utf-8?B?MkFXaHdJRzZBeHVQWlNEbG1RQmZZUFpsRHZ5Mml5MTRvVkVINnF3R0UxcFdM?=
 =?utf-8?B?aEtGWXhCWlVYNkNuT1BjTjZwVDYwSWswemd3SDlNOWEzWjdrbysrb2lHNVdK?=
 =?utf-8?B?bkNmN3UxYlRFWDVPWFZOYkpmQW56L0dSUFZvcHZvaUJKdHdNekFqK3VpaXVk?=
 =?utf-8?B?TDl5S2VLK1l1RHlIVWQ4TVZOOCtXV3ltUTdnSkJPZHJBQUM1T1RDQmtYT3pM?=
 =?utf-8?B?TTEwUkxUaXlKQ056OG9IOWIxTEZDKytZZGxhaWoyMDZMcGt6alAxTEdsZlFU?=
 =?utf-8?B?OERKM1FwYml0R2c2NzU5Y3l3M0ZVU0xQZkhZWWVrRzREeUt4d3pCNlF2Wmtk?=
 =?utf-8?B?M1FxK0QwQUoyU296Q0R2UVlZdUc0N21zR2JjSnZ4YU1ONWdIbFVoWStCaS9o?=
 =?utf-8?B?TnIrU2lrdXdCVGU2NCsrbDBaRkUyOXlmOW5iUDRiMFloelNXM3V3amIweUw4?=
 =?utf-8?B?Z2M2K1RpcXdOaUdHUlJoV0pIMUp3ZFpTSUxYQWxaeW0zZDVCSld5Sk9uSFlT?=
 =?utf-8?B?VjQxNzZYYW5HZzFPdE9ZL3F1Z0tiSExIZFIyeUdKcEZsSlRySk9LS0cva0Z5?=
 =?utf-8?B?bG1EbURWdmU0TnJDYlVIL3Uxc2h0ODV1UkFWTXlwTE93a0FoN2hpTUd2djRG?=
 =?utf-8?B?TkxZT3ZiRzFUcTVtS3JzeUczZ21XeXlnNmw4N2NJNXc3d3pZYVRBVXlPQ0xl?=
 =?utf-8?B?TWt3M3hOS1c5Zlh1OUQ3NU10bGExMEZOSGpQZ1cyT3lGSStoTGJHQVhOc3Zj?=
 =?utf-8?B?cDEwQmJSdjdPMnlTRDJlVUUwK3Q5V1djNVZZY2RIcDg3S2s3cHRZWGo0cFov?=
 =?utf-8?B?WXoranBOUjN1TGlWbndCSTFQQm94am5vZmFXbkpiUXdWa0dhYVFkNVlCOEhk?=
 =?utf-8?B?RWk3TTRLQnVRdXZqUE1zeFpYR29uUk16SHhGTmJsaHFXTjRCeVZmNU5QSHdk?=
 =?utf-8?B?aTgzNlNSSHkyUVRVNmZVSjN4Umh4ZW5uL1hQZGw3MzVnUXdRMGZLYXR1K2pY?=
 =?utf-8?B?RXMxV1NQRFZubjV5TDJHbmEydUxreFVQeHpNZk9qUEZKZi8zekJiUlRwVTIv?=
 =?utf-8?B?elRvWjhxWU1ndXduMTRnTVc2akgvR1VmUFNINnJ0eEhtNUV4M3MwbkRhU1Fi?=
 =?utf-8?B?Q1VYVTh2UUdFUC80cnNKa2ovOTM0a0RqOFFCNjUyeTgyeVVHdzdPM1lzb3I1?=
 =?utf-8?B?NFVvZ1JiZk0wbit0elp4dkdpYldzUkVsWFJSTkxBTVRQVUtVb3c3aDFTUk52?=
 =?utf-8?B?VlFHMzNsNFRGMm94bHk3Yi9tR0ZIMkxlVENnWkhwOW9Gak5HdlA1UWpYdTVo?=
 =?utf-8?B?SlFiR1dybFFnSU9ha1NDZnUrZXQvc0tFRGNJRHAyNm1XV1lDN1IvNmx2b3gz?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55939e3c-10ad-41fb-024f-08dcb24287b7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 15:56:40.0472 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i1ReTFR5L8OL85Uq4rFCJuU0gWmytS7A3K5ytCssCPdWGhMYiDAYhBC8506dYfVmoq/5c6w2fvV0cVSnVTxT1dqu6vBiECa92/dDk9vN0EQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8674
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722527835; x=1754063835;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bXndf9XKkA5/zOCT47nyDpDkZrIUdXnEbXcjNR/v4I0=;
 b=es5/IpmiNx2IQfEoNkpNLcfKYzfQrW7s1Ry+wfvpUODAseEyId2cIJ+4
 b3jQhbVQNidh6pW3WwwM3cybTDADdocuZOHLPJBAaqPirkwObA4dfQPzD
 Vxqlim8rutJPu6Yif7ojd3rVJLlpkyfLEV2D0meW8f/39gRe+NFneL45F
 PbgYE4e+Kgz4kcXd2hEqhW6tD54lp5Ofo17zstPWgPsYO31QloePNESWr
 Xe9n983rr5RMSNUMPGERT6YkmDOwt0q+ySAxNPX0H3J5S1EEjIwib1FXE
 /B88Vsw07bhJA/qIA724ExghzEW3xRKNdx0QD7llkiWtkqSjt4BUI0kjP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=es5/Ipmi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: add E830 HW VF
 mailbox message limit support
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Wed, 31 Jul 2024 21:58:29 -0400

> E830 adds hardware support to prevent the VF from overflowing the PF
> mailbox with VIRTCHNL messages. E830 will use the hardware feature
> (ICE_F_MBX_LIMIT) instead of the software solution ice_is_malicious_vf().
> 
> To prevent a VF from overflowing the PF, the PF sets the number of
> messages per VF that can be in the PF's mailbox queue
> (ICE_MBX_OVERFLOW_WATERMARK). When the PF process a message from a VF,
> the PF decrements the per VF message count using the E830_MBX_VF_DEC_TRIG
> register.

Sorry seems like I didn't add netdev/IWL to my review, could you please
read and address it?

> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Thanks,
Olek
