Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A26D9B440E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 09:22:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4DDC404E7;
	Tue, 29 Oct 2024 08:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RfuJMiFqxdLL; Tue, 29 Oct 2024 08:22:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 562F0404D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730190120;
	bh=1bdDkE6iyiRb6l4DuER2HlJNGGCOoQqWkgooUrUed1g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5ylq60VjjKeEI5q99G1EDagxhJc1wY53YEq7qF7b9Oi7c+Ncc+kXfID2rQHbB+hC5
	 wae0E+IoLC1V6kIzCjLAFGa92MAUBL0UZpEc2QcYKGKkRLKrQ3uBzDTIhmGcA+vTrb
	 VNeL+/M1WyE3JtxQmHMIdIBqHQ7Dl8wrBk1MOYXPbQrfR0xDWeaxMhY/MpmkOgB8FO
	 thE6FPJvJu0Ce5zHM+myX+3CsHgGsmo2nyU8dPI5nzJWuFc3Zi22MThHa6n1A9sMaz
	 ipBn32TnSA9bq/Nf7pkXKYZGIKHyKjAbpILZvDikLQs42sSvCIn08QrJTBOr8g2EPf
	 ui/7nVWkMPhQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 562F0404D5;
	Tue, 29 Oct 2024 08:22:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 72530112A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 08:21:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5408B60853
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 08:21:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xnx2Dgll4jeN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 08:21:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1828160841
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1828160841
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1828160841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 08:21:56 +0000 (UTC)
X-CSE-ConnectionGUID: mz0ZmWs5R26+cH1n2Wv/qg==
X-CSE-MsgGUID: PA0Ic6gRShmNE8fni2563Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33514808"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33514808"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:21:56 -0700
X-CSE-ConnectionGUID: OVBCRjQCRiOZmdr1uOmHaw==
X-CSE-MsgGUID: FrRb0gXAQe+9Z3Zy+wGfaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81955534"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 01:21:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 01:21:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 01:21:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 01:21:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wPNWdg9JRzLiysJ3XEvODykmsoHmOyqbQv7tifXM/eY7+Ev+RPOkKkhKiR1GxSLXJyVASndBlfNeVVBu7b+uJFUfLL9YZFMDliMugk/vZJPcQ6FeL7N+Vik+WGADPI0lnxO+8y33WxsBIxjygLH809xGdMlAkEys15tglvGRGvKwKmYO0l5NfdsDZYhk9Cymi4MnsXKq3MsMhx52fkjc7ew1XqOfEds6vNeWErWYBDVynV/tjfiA0D5wDQsr7SRwDMw7XXy8l18nhHJ/FINv1JUxDQPjgdVam4V2KOy0cW62cbVoz3bTFo9zfvot5yUCd1hMu2kV/+5ucQwdZpEvHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1bdDkE6iyiRb6l4DuER2HlJNGGCOoQqWkgooUrUed1g=;
 b=L8jeoEvmRVsiFy2fh/b1v33jUWV1zkOYeVoRs3zzo4moEgSFR0gTpuyhbka+p/BEN9iCiU0/OYwiOBIiqulL3QEhMU1AyJEcm4Qf9LcevmEDUhpGI/dRyTJQX724DWXa6so8IeeSJ45BrbHPSQH+83bWKURnqILv/Qn9n2s9vYSGgk7e5m3e+6fyHIEj80ENQTnoUyavejWLm7eTcbXlgpHrKUEIbejc26/VKPZ4rRPvBKJfaQiH4+HeB6kVXoc/oKX5qfCcfQSrtqKAQtgpa/7hYvjv9d3yNyg28kF5ayKUBX3mIuPJzTGVHCCEROncbcjuiJFztd0MrO1LyKINNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BL1PR11MB5954.namprd11.prod.outlook.com (2603:10b6:208:385::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Tue, 29 Oct
 2024 08:21:52 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 08:21:52 +0000
Message-ID: <a3e2b0b6-df37-4320-b928-741f360548d3@intel.com>
Date: Tue, 29 Oct 2024 09:21:47 +0100
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
CC: <anthony.l.nguyen@intel.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <richardcochran@gmail.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
 <20241028204755.1514189-3-arkadiusz.kubalewski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241028204755.1514189-3-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BL1PR11MB5954:EE_
X-MS-Office365-Filtering-Correlation-Id: 95753e0b-1400-4ef3-edb1-08dcf7f2be04
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N1FWQjZBZmNzZzNHcVNqMW82c09hRXNTMG81NE1FUFVLUkFFWW9ZM1RwWjJN?=
 =?utf-8?B?bzlhZHl4UnZZWTBFZ0tIaGY1cEw5bUE2WDlIS25xVUMyVEQ1cTAzQlFrMWNG?=
 =?utf-8?B?MWNsNlNtVW9xdXVIeEswRHZLa2ZZUGk2bTBITTBKdFdUZEszcW1lODMxMjNi?=
 =?utf-8?B?cWRTNDJJRWZGWGdtODY5ZTJHRURMWWU4ZzRnNExDbXZ5UEFuV1BHOVlsSlJX?=
 =?utf-8?B?UmZVa1R6N2o3SlZiby8yb0MwYnhmZVh4TjZPQ2NDOU5rcDgyRjA1T2FRV3Y1?=
 =?utf-8?B?T1k0bnc3QzVMbHJiQm14UFN4OG55R3RLcnJYdS80a2c3dEYwTWdGNWVTRlBm?=
 =?utf-8?B?aDc4V1dCaktkdFFQbGJON0RtNHBzSFJCQlNkK0ZhOHpOTVNaVDRiU2JHQ3Mv?=
 =?utf-8?B?TVRlMzFkZTl5azRzbUlmNGlUUG1ETG5yaldCajhyQm9xUTYyMk05N3k4MkxM?=
 =?utf-8?B?VUdUWTJlY1pRcDhlVGNKZFdjam1HYmJiWkYweWlnemRGdTBUSmI4dzJrK0Yv?=
 =?utf-8?B?Z2tWZkJBei9yWXV3OWVtZTU2dko0SjZNcUozcHk1emJwb2R0YzNCMkl5WVVJ?=
 =?utf-8?B?ZW91cDRoOHliTlFNMkdORFNpOWMxZHc1SWpSM1ZPdDNRbllkdi9HSjNjUG03?=
 =?utf-8?B?ckNLQUo1RmI5Q3lDSTF2TC9ROHVWL3YvZFpqaUwvU3V0anVYbEZ3TEJQdzNZ?=
 =?utf-8?B?TW5yYlQzTklqempDaDR1ZFA2WnA2a2JQUm5BUkZqakRUMzNKUmFUTVV4YWxm?=
 =?utf-8?B?YjBhWm5CUlFXSlVaSGtIMGprWS9iclozT3RCV0hsZFFhTWVyd3J5ZU1lbE1q?=
 =?utf-8?B?SUQ0ZXo2NGJBUlhXS0tDTmpkTnpWdVc0Q09XS1I3M3RqRkZWTzM2S01kUklY?=
 =?utf-8?B?U21YK1ZraFdUb1JEZTJqZFNielJJbUJZVTEyOXhLWGNzOXRGK1FqcnZnL3Ur?=
 =?utf-8?B?RFJtODF3ZFg3MENPK0h3MjgyczZTQXRFTjhPSHcweWhRRERGdWY3c09leVJG?=
 =?utf-8?B?K3AvK0k3SkJQaWhNR2poQ3FORmtGR2Z0TUdYa1VtZGYwS1ZNSmc3c0QzdDFD?=
 =?utf-8?B?YXNvZ3pZeHZMNFBHaUVaUFBldnFWbWs0TnR6VU9IQjV6M2F2LzdRWGozdWli?=
 =?utf-8?B?Z3ZrMkxNUkJ6a3J0cU9oL2dkK2VyL0cyMzNPellyVGZWcWkrNlgzbWRsVlhS?=
 =?utf-8?B?VVp4akFheG9UMzFFQlVqbXZuYkt1MFcvMSs5VU5qZlhNeFYxS2Vob01sdlpO?=
 =?utf-8?B?VXp3Q1NPdlJrb05CeGRUblZoWWpzV213RUZUOEowelpEampKM3doVmpaVFZD?=
 =?utf-8?B?VGIyQ1kvbHJPOW9DdzAwSGtSMFZqSGViRE1oODFFN0g2TW1uYXFPSVIzV0Vv?=
 =?utf-8?B?SVNoNVdYM3RSdnhPRHFsL2RxTVhDWUNjenhNanF2aklkTUUxQkZKeHhNR21y?=
 =?utf-8?B?ZW50bElneWxzcllDak1WNmNVWXpzWStzZzYrSnQ0anFWRU9UM01NYkNTeWZT?=
 =?utf-8?B?SnZmdjZNSnRQMHpHYXphdzk2NlVYUWdzNHE5ckpXdW1yNGU0aGlvSmdCWTg4?=
 =?utf-8?B?Z0hhR3NjTzlxcWg3MlpjSjg5Ym5IdzZVcUN2MWV3SThQQWhPQVRZWEJkeUp4?=
 =?utf-8?B?YzdvQ1owbEJYU01DM2ExYU5BTG1NQ0xzOXFhT3FQUkVqa2FSU1FIT2dRcEdq?=
 =?utf-8?B?eE9TNXRJWUhJVVpTSEoxMEZFc2dxdTIrN3JCT2srbFpQd0pFVHJEVU5Tdkw3?=
 =?utf-8?Q?PW6tlTNRZ92ERIZdXg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z08rbVJkOURPc0twdnk5QWlHSzc4NHFkeG5YcTJ1MjNUTEhYMkJpeVFtWENr?=
 =?utf-8?B?dHU4YS9ETCswajhUaHY2N1ppYkx2SkRNZ2h2cllsS0lQSk84UVJ4aVpQK0hn?=
 =?utf-8?B?cW5EOU85bHEzaVZhL0ZiYXFVcm84RzdZRlk4Vm11NTY1WTJVOHNPVHRTVHpK?=
 =?utf-8?B?MHdpcmthMkpUQWRyUjM3WC9JZEJwZDd6YWV0TFp2K3FaYlVCR0dYeitIeDlS?=
 =?utf-8?B?bHR0RFhpdnNFdjBLS1Q2dk1GdURXRW0yb1d3cGdxSHU4Uk5USy9KR0NoTCtv?=
 =?utf-8?B?Q3pDYmxSTkk4S00rR3dGVndNRXpUT2JZc0VEYXJCWkNtSXByRDlMOG9QVmdD?=
 =?utf-8?B?c29iWC9CYXJYdFZ5NUhBekJyZkVXYi9SbDBwdzhPak1KMUFNTHR6c0s2UzNU?=
 =?utf-8?B?Mkh4aXBKR2FvbVVGbXJrVU0wbUZmeWFWVytCWFBNbVo3RFJMZ3VIVlpXaTFO?=
 =?utf-8?B?M1dQbUErVDJwRHhNN0szQ05vUDdlMGpJRDZSRHc4USsvV0JhdG1mbS9WbHFO?=
 =?utf-8?B?YWFYOGh5QXVPVmFYY2krSFZld2RwRnJXV0VEY3pVM1FzT2dvWU5laEwwZGRm?=
 =?utf-8?B?a0lnYXRLTjd1VDRTVjNoRENrSHpSQnJMTEVueWFzV01WNUoyK3crQ1JHYy9X?=
 =?utf-8?B?a2FWRVR1ZTF5dXZYY0lEM1FsRWJKNDYzM0VRUGZMRjQra2IzcXR4TndUcVJD?=
 =?utf-8?B?OGhpSmRiVEtBa2N3a210OUxKaFdDM21BNXNDdW9iU0R5OHcwdGxuYWdzN1p6?=
 =?utf-8?B?T3lKVTJYQkppbGxnZTZFN0w0U0gxNExkNWRsbnFmeW0wR1V0Z0I4TFpyQ1Rw?=
 =?utf-8?B?Q25pR3o3RUtOdU0wZWx4QzBYeHI1UC81VWh3alpNSVBiVHcxR0cxNWdOZnBC?=
 =?utf-8?B?MzZDdzFUN2pUTEpxN0VLbjFScXdWWUZmdG93c28xdldraTJldFFpeTVRWjlo?=
 =?utf-8?B?WnBpQkhCZklNV0cvSWc1M0s5UE04SEJONVB6OW9pazgwdFoyVjhEdUJsNFB4?=
 =?utf-8?B?R1h3T0JzMHdwMGcvcW9lVjlCaUt0YlYzU1h5YXZaaXZ1cVpBUHN3QVBLR3Zw?=
 =?utf-8?B?UzdlNFpwM2Q1eHJTSjlEcXFZSmUvNXAxNUZNRXdTYnlQN2hhdXFyUVBSSDFN?=
 =?utf-8?B?Tm9yYzl6ZE1vVU40TU1Qb0ZZQmVXTm5PRGxscVVMK0VoZmhteHMzeWtaVmhr?=
 =?utf-8?B?UlpLbW0xS01heWVsdFhGMjI2WWJ5RjNkU2k0dGVDRm9MU1hYL1lsdk9PTWVy?=
 =?utf-8?B?YXora3VGVUhWRDc1TVNITmFZWllHbmNUVFJQL2pnSE4wbGIvOHIxRFlFNUxK?=
 =?utf-8?B?b1ZQbmR4MkZwQVZPeGpHT0lUZ0FvRFppd3NUZGl0UlZyd2FzMnZWUEs4eUFM?=
 =?utf-8?B?a1NpeDBDeUZuTEkzdjJqZzVqcjkyVXJEbHVneTJBZ0NhMU9yb0QzYWN5cVZK?=
 =?utf-8?B?VFhHYy9xT2FLTVZMZlBEZkRHMTBEL2tpa1M3REpNTEh2WnowSDN3Y0JCTjBk?=
 =?utf-8?B?QkJLVm1sWk04dGFDT3dRVytmQ0FnZno1RlFFQy9JTmtoa1BGaC9ydit3eVF0?=
 =?utf-8?B?K0VhM1RWNEJPLzFnbTY2TFV5Q0w4STVKUXpyaUFRcFpmZzdmV0NsZkpFcHRS?=
 =?utf-8?B?UVVROU1ZS0FhLzRncDZhQ2hzN041SktBU1N0TFRwazZyZ1JSYktZcXJCa3lO?=
 =?utf-8?B?N05jNnVhM0pobGx5bUs0Sm1PWEZzYUtXeG0vMm10RDkxZVJrZnRLZEZkWGNY?=
 =?utf-8?B?cFJPN3FzSzJwbGxsVk1xZnU4MTRFcVpUQkVZVGMyamtKbFplRzZjUVZzSjlC?=
 =?utf-8?B?aU1oQ2pEQ2pQUks0N2NaTGgzWHdiK2UraVJvMy9rZlFKYm9zRnE5eUxVeGkw?=
 =?utf-8?B?QTRZdFdPazNlU1QxV1FqNVZIY2VESWhDYTM5VGo1d0JHR3F4OE9tVndRcnhm?=
 =?utf-8?B?MkRJTURxSkkxWmgrTXJ1WmVMOHlvWk5uMHpDcWd2K1M5cUpEQXphNUVtbVBr?=
 =?utf-8?B?WDFNUE1SK2tWSEVTYmdwWThVS1Irdy9NdVAxakJVSzdmam9IclBtYXZ3SVh0?=
 =?utf-8?B?aStPaER4dEU3OXpEdk1YazhhdzZNMnh0UGhHa3pmK3JpTitiaUFLU05XazNM?=
 =?utf-8?B?SG1wTk9OTFhsZVcvWnVFVEU3RWxoOVFDb0szOXhjVUhtSFpCaVlqMW9IUW5W?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95753e0b-1400-4ef3-edb1-08dcf7f2be04
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 08:21:52.3387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZJd60dGsWYEJmQIUb5XKIJoX+aTSUAJmY7aEgoaE3KTOmKAzakjYfdA6Gxmf1b1stxAzy4rqa3PwjJhlpQ9G7bGFtJOBbVWS/JAGl8RJiuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5954
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730190117; x=1761726117;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fFAQdTG6rO4weA0sTgfy5z/gZxZWu+Vp3TfzQusdugo=;
 b=kTEEiF9n/Ea8WUGaY6Ux/ajy9pXDyHMjfOrq2S3s5boL709q5v4yFuwV
 iV4j8JU5utWmXtN0ZUoJR6wXJTZqdDkP8L7Shegua7DFEKuvSBVssnRPD
 S0P265sfE+ICFMj7ugkNGjoZYYRMWUW8g8yzDfduh3gRbkIU39IXPkBJG
 cV/RFGjrhcFP5P8KhEtwTMOgZqYVXmLyHr4DqW6WNreV5eUHjXjwkCITV
 3ByxHJMzm6J8cqTOM/HqKHemBv1Zo0IpNcb6pvZY25I3Yoxbrl7atfJ7h
 VK22cFeJk7P2tC9/vN+BgYZetZTDaNUau5FQVkcv1dlC/00t5+4nu2O47
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kTEEiF9n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: ptp: add control
 over HW timestamp latch point
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

On 10/28/24 21:47, Arkadiusz Kubalewski wrote:
> Allow user to control the latch point of ptp HW timestamps in E825

sometimes you write ptp, sometimes PTP, I would make it consistent
(but subject line is fine as is)

> devices.
> 
> Usage, examples:
> 
> ** Obtain current state:
> $ cat /sys/class/net/eth<N>/device/ptp/ts_point
> Command returns enum/integer:
> * 0 - timestamp latched by PHY at the beginning of SFD,
> * 1 - timestamp latched by PHY after the SFD,

perhaps those values could be exported to uAPI?
(the enum from the prev patch)
+enum ptp_ts_point {
+	PTP_TS_POINT_SFD,
+	PTP_TS_POINT_POST_SFD,

> * None - callback returns error to the user.
> 
> ** Configure timestamp latch point at the beginning of SFD:
> $ echo 0 > /sys/class/net/eth<N>/device/ptp/ts_point
> 
> ** Configure timestamp latch point after the SFD:
> $ echo 1 > /sys/class/net/eth<N>/device/ptp/ts_point
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

general ask: for future submissions please use --base switch of
git-send-email, this will aid resolving conflicts or applying the patch
locally for review;

this series in particular would likely conflicts with current
Tony's dev-queue (didn't checked, but Karol removes ice_is_e825c(),
called within 3-line context of your changes).

> ---
> v2:
> - add kernel doc return description on ice_get_ts_point(..),
> - use enum ptp_ts_point directly, instead of additional bool to pass tx
>    timestamp latch point from userspace callback up to ptp_hw
>    configuration,
> - fix bit logic.
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c    | 44 +++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 59 +++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
>   3 files changed, 105 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index a999fface272..21fc6b5e2d69 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2509,6 +2509,48 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
>   	return 0;
>   }
>   
> +/**
> + * ice_get_ts_point - get the tx timestamp latch point

Tx, please apply in the whole patch

> + * @info: the driver's PTP info structure
> + * @point: return the configured tx timestamp latch point
> + *
> + * Return: 0 on success, negative on failure.
> + */
> +static int
> +ice_get_ts_point(struct ptp_clock_info *info, enum ptp_ts_point *point)

nit: the current preferred style is to break line after "info,"

> +{
> +	struct ice_pf *pf = ptp_info_to_pf(info);
> +	struct ice_hw *hw = &pf->hw;
> +	int ret;
> +
> +	ice_ptp_lock(hw);
> +	ret = ice_ptp_hw_ts_point_get(hw, point);
> +	ice_ptp_unlock(hw);
> +
> +	return ret;
> +}

[...]

> +/**
> + * ice_ptp_hw_ts_point_set - configure timestamping on/post SFD
> + * @hw: pointer to the HW struct
> + * @point: requested tx timestamp latch point
> + *
> + * Configure timestamping to measure at the beginning/post SFD (Start of Frame
> + * Delimiter)
> + *
> + * Return: 0 on success, negative on error
> + */
> +int ice_ptp_hw_ts_point_set(struct ice_hw *hw, enum ptp_ts_point point)
> +{
> +	u8 port = hw->port_info->lport;
> +	int err, val;
> +
> +	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
> +	if (err)
> +		return err;
> +	if ((val & PHY_MAC_XIF_TS_SFD_ENA_M && point == PTP_TS_POINT_SFD) ||
> +	    (!(val & PHY_MAC_XIF_TS_SFD_ENA_M) &&
> +	     point == PTP_TS_POINT_POST_SFD))

that's the thing that urged me to start commenting on this patch ;)

put braces around (bit & arith) combined with logical && or ||

you could also split into multiple if branches for readability

> +		return -EINVAL;
> +	if (point == PTP_TS_POINT_SFD)
> +		val |= PHY_MAC_XIF_TS_SFD_ENA_M;
> +	else if (point == PTP_TS_POINT_POST_SFD)
> +		val &= ~PHY_MAC_XIF_TS_SFD_ENA_M;
> +	else
> +		return -EINVAL;
> +
> +	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, val);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 656daff3447e..f8e495b82653 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -348,6 +348,8 @@ void ice_ptp_init_hw(struct ice_hw *hw);
>   int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
>   int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
>   			 enum ice_ptp_tmr_cmd configured_cmd);
> +int ice_ptp_hw_ts_point_get(struct ice_hw *hw, enum ptp_ts_point *point);
> +int ice_ptp_hw_ts_point_set(struct ice_hw *hw, enum ptp_ts_point point);
>   
>   /* E822 family functions */
>   int ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);

