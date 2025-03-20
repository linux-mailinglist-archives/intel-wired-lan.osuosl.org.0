Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD3DA6A51B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Mar 2025 12:41:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 054DC82AED;
	Thu, 20 Mar 2025 11:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UQYj9BXjm-6q; Thu, 20 Mar 2025 11:41:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 070138179D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742470910;
	bh=FADpOiaMuQYZd6HwCo1mEAGMaPebRKTh29o8A4RNI0s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s9oZHjMzDVp+cCGJp8ZbYWptiXWwTZniKf+5xhqjjaBWTWCCdAirmZ2ORI03jX6AI
	 10epDMCLj6e8ZotILtLuJiNoZtesXjOkNFHVdlo4ZLCZ+dXdKudL9j0hPnKUGzWvja
	 b8IkTUm0VFqac6er2qxFXFNhR+pS9v/wUNzPJJN2MgyjOTHmTJxNrekG0Sh1xoji8d
	 FP/N19GsyKsagsTM8l2UDmJr0ZMUCbDunjFcrK2fKmoq6+9emcQzuZJW66GCwHsaUj
	 OHUDVs4ZjQvtBLv64MbPA+b8ug17j0ddODv6B7R1IlRaR4jgXJm92FCn5VWHinGyKz
	 zVJIjOmwMLASg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 070138179D;
	Thu, 20 Mar 2025 11:41:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 541651A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 11:41:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36D796106C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 11:41:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GZDOAeyOz5zg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Mar 2025 11:41:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 624866107A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 624866107A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 624866107A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 11:41:46 +0000 (UTC)
X-CSE-ConnectionGUID: 4u6FhjLXQziwJL+Znz7fMQ==
X-CSE-MsgGUID: 6hSSbUsVQsuICp/iMTqZtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="42941735"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="42941735"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 04:41:47 -0700
X-CSE-ConnectionGUID: q/qH6PmGQ+KFru69IpzCXg==
X-CSE-MsgGUID: wUhSmOtySPSSpfhB73NT7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="153961592"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2025 04:41:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Mar 2025 04:41:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Mar 2025 04:41:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 04:41:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HFSmjZWLiwAskWkFOqt89oMqtGBmfqI2PWexp8qikAB6muUS3SwOHrifTuY1fxanKWqY5zLp5CYVxzsrGoi8ZJ7Tvvduwb+AB6yItsH0Fz3xjQWEo2L9uiYsAWOG2Ij913H5LgwtB0kjkeu/jLdGnMGXPNy2DdSFLriCC0irR6jj/WASNVtdDCFgcMjfspS60vGv3CXnUT24mxyozoW3WuL+ds5I/5/eMm/Fdw6bz8bve5hXWO/QnULlaDMERK/TXaHn90cdxlMzW3BbI3quYiuIyQOkYT84EyKsupmzh1POg4sUs6wBSvLPfdaJTZagwgLFvnQqaFHuVCebSGM2HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FADpOiaMuQYZd6HwCo1mEAGMaPebRKTh29o8A4RNI0s=;
 b=k5YMOYVmZI7G8nogr7AOdnRgeXUNYDvada3TvnmrqANu5OnMkpUmjTB+iXM5HiG/TQ8ftbv/yk0k4Dwkzjsy6J9TqKt8R39+zD0CkOEW+mraOahulYR13IIh+91O1v8zjlSYM2Xl5H2Lf+FZ5btpMl3z1FHZ1K431zW68Pqgqnw+e9d6k+X/SeTF9psKWlKQcyU0sAas7sjl57UA/f8QgoVTsUyjG/4vwCBSc4QGb0uq3tl7dCEm+zVDpm2NDxdEH+NdwIdCJltI6wkBnZGULzlqo6Juo0NouZRvsqFV2Eka1S+CPyXF0Vh8gUkLiYQMMr6zZejMYgEjoSMo7v6sAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by SA2PR11MB5162.namprd11.prod.outlook.com (2603:10b6:806:114::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.35; Thu, 20 Mar
 2025 11:41:43 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%7]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 11:41:43 +0000
Message-ID: <2fc3d06e-0a4c-1269-12e2-c9573a331eb2@intel.com>
Date: Thu, 20 Mar 2025 13:41:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Avigail Dahan <Avigailx.dahan@intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20250313140556.1064965-1-vitaly.lifshits@intel.com>
Content-Language: en-US
In-Reply-To: <20250313140556.1064965-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0010.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::14) To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|SA2PR11MB5162:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c530179-06e6-4f90-f902-08dd67a43013
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aldkUWRLVjA2RXQyS1VSYm1LYzI0Z0o1U1M3aGF0VkxjeVhmWUl0TFBtK0Qy?=
 =?utf-8?B?Rnl4N0lrU1JZMzk2ZG0vbHlQUnNka0dIemxJQ0wwYzQ1R1Q1TjI1ZE03RWlu?=
 =?utf-8?B?UXltcG9GajErdFJXazlUcGdLRzVqcmJaNk42TEx6Rkl1QmJ0SlNsMGhRbE1O?=
 =?utf-8?B?ZzFNd2pjMUo5eFcxc0I5L0lxNUptSWF4M0srQktxOFJXb1VXYW1JUFpqN1lQ?=
 =?utf-8?B?Sm9xWlVtKzNXT2JkV010ZVFoNm9qSHJ5VWlkb01ybStWU014ZnBrc1oyVkNS?=
 =?utf-8?B?a0c0NU56S2FXTitpc2wwM01HRGExaFptQk1ySiswMmpBZ3RkeSs3WmQ2Znlk?=
 =?utf-8?B?KzJ6c21ZT0JWQ0E2N1A1UGsvTkZid2RCRjErYllCN1dodFRyNng2L2g0UWJL?=
 =?utf-8?B?VjFxa0RiVC9PMUwrNGZ0eWkzc3FVcE9CWGdnL0pGYlpVa0h6dWMycTA1emxU?=
 =?utf-8?B?QW1rZHAwSjJoL2lSZlZ5bmhpMVBmcW1Xbktla2NvaUwvaC9sZUtFY2F5L2Vp?=
 =?utf-8?B?RlhJdSsyNDEzYm5LamxrWmV2bWptT1NpbEZ3YnJmcWxpazMwUW8vNFpQcktP?=
 =?utf-8?B?VXZJNzFyY3RNeThlcU1nc0tibDMwR210NHBxcEFMc05SQm1VcHdhWDZ0YVcx?=
 =?utf-8?B?RkZvOXNlSlNoQXg1T1NZZWpKQTFxbDZKN0xFTGhaVG9wOEdBSDJjYjlXTFF6?=
 =?utf-8?B?Zm94NDhpbEIwWm1EeDlhT0VlVUUxY0g5S09oakxYZVRmb01qRkliejFmSWc2?=
 =?utf-8?B?dXI3WlBJaEdyZkkvUnZIcHV0NFVpbkVJbzA2bGdpQ0ZZSXhqSXk0enhXTDBm?=
 =?utf-8?B?cWJLU3d3SWo3VlRhODUvbVN6TG16M1JxSkxhRW1Rc3FZTmthVVpxNVFGbVdo?=
 =?utf-8?B?WWRZemEvdXJnWFphVit0L0cyVXU1VmxUVjRPMDA0cFJ4bjdNVE9XWUJBWDds?=
 =?utf-8?B?ZzYwR3NVZWl2L3FFOHRwZ1NwWGJvclc3WmZjREhCVEVENVdMZzVMcnJRaDR3?=
 =?utf-8?B?MnVwbWppQWNjV3d4Q1hQRWVNUVFnanBjbzE0dWlQRFNEWUxrRHZKblJBQk5x?=
 =?utf-8?B?WGN0TmlFL3cxakJhRU9xK1JwK1lsSUNOdUNJWk42czVyS1hWQy9LRFhkNXk2?=
 =?utf-8?B?TVVUcWc5ZVlOS2JRYVA5c1ZaZnNTZmEveFE0SEJib0hYK3dNb3BBRUZzMmdm?=
 =?utf-8?B?RHA4TVZBeFNIWGZGM2pyYXZZRGM5WHRCc25SdFc2TVBoWlBhUVJVbUE5NlRl?=
 =?utf-8?B?REFXYUpQbW50c1NRcFRsalJnai84UWFFYzRhRnZsTjhzT0RLTzNsa0VIUDJq?=
 =?utf-8?B?UnQyQTJ2RXh2eS95Y25IWFBIL2hKRXQvR1huVWVGMFhqbHd4U29ucGZ5NEE2?=
 =?utf-8?B?MEhITTY2S2E4RGh2UXExSFZ2OFVhMkF4bmF4cUJhQTFKY0pmYnBOaTNyNVlz?=
 =?utf-8?B?MW5TY2xZQk5Eb0hFSjZsTWt6UjV2QXZxU0ZublU3WnpJMUFyS0R4T3d2QUFr?=
 =?utf-8?B?aUxUOFRlQTEvbm0vYUFNSEJWaXoxeXBiK3V5WEtnSUl6amFGZERGdjJjam1s?=
 =?utf-8?B?aHBjaXFUdThwcmdGWlVQTm1WOFA1aG54R1MvbUN1WG10SUFNMzBJT0VpMUFl?=
 =?utf-8?B?OThxcitQWXYvN1NZMkFOcEhRRXRjNE1TeXdIaUFtcFZWak1MZTR6V0hBZUhz?=
 =?utf-8?B?eFYzYU9jLzBZYTNEdDFva1FkMjZRd3dKTnNZeHBRZUxIT2JsTUlJVmN6R0ph?=
 =?utf-8?B?ZDN6K2hvVHdJN2lvV2ZOY1pDZ3VTOGp5ODU5U0JYNzluOVJmQUlKbkpMQlZ3?=
 =?utf-8?B?NjRkYy92NVFDWjNjaGxTRHJtNW9YR0hyWlJKdFdsSWR5djd3RzRXN0l0c1hi?=
 =?utf-8?Q?DAoqjgERVi5Qu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzYxYk1KY2dGcExPUlpEaFgwRlF5eStjMkgxR3BYdkxoUVk0NU96enlkMmN3?=
 =?utf-8?B?LzByWVZEQ2pubEY2eXJaSHZWa2tYRW5pWGQzenFTcVQydjJBSkhaaE82QlFi?=
 =?utf-8?B?TDd1S09KYUJ2SlBtRExlU1V4Rml5TDFrK1oxMGk5YkthY3JLaWV0Lzl0Ymdw?=
 =?utf-8?B?SG40UkoxbTJZbGlHMkkvNnMzV2ZIekkyRFFiY3dvZVUvZ3N3R3pPbmpkZTdk?=
 =?utf-8?B?dngrVVpQWTArYTFpZUNZYS9hRWJXTXlJYkpwRHcyc2dURHBsNDJUNERkMTEy?=
 =?utf-8?B?d0VtdWRnZDh0ZVdKWG4yb1FYK05PYzZGaHkramZFTHladzZkWWFsclVHUnk2?=
 =?utf-8?B?QVlnUjdZUUdjdndtRHcvY3lUTXFEelpxNlVqekk3OWhuRDV3NW5zbkwrSkE4?=
 =?utf-8?B?N05RaHNSNldMbS91bHhXQVZSdVhMVVU0RTBoS3Zpcmk0OEhyN2JRMnNSODl1?=
 =?utf-8?B?TlorOTFPT2M1V2FCQ2IxS3JYbzFXNnFBeStndThheTRTdll1NzlUemxCVzVD?=
 =?utf-8?B?MW4zYUpGb2Y1M0g1UWc1dWtDR0VPN2RiQWIrem5QaGt5VWowaXRPdFF4LzUy?=
 =?utf-8?B?NHpiYXJoRlQ3dHZEd2dKS2FBQ21VRFBHQUxIaEdaUmx6TmNnejZ0aDloOG82?=
 =?utf-8?B?cnE4QTBFV0FQQW1FZzJvRGIrL1VPUGxDdktKWXVjajR1NDl1azNEdmg5NStr?=
 =?utf-8?B?eXEwTlBVRlFGd2ozUDlobWJ6RXlXbXkxL2JhVk5MeFdnSkVkQ1RIamp2Vk1I?=
 =?utf-8?B?YXBObUZSRWpHZ0dhK3JxWlgvRmZHQ2V0YjhjME1uMXNDNVd0cnh4b0x3eERH?=
 =?utf-8?B?a1lXSFl5aUZ0ZDhiUGFlSWozaVBoa3oxMU03OW5KblJiUEdHQVl6NVNjQmxM?=
 =?utf-8?B?TjFVWEZNSDdLWGthbXZ3WU0wM0RFZ1hWUnJOYm8vUXVXemFYS215aU1pcENK?=
 =?utf-8?B?S1VHdzE5M083Sy9saHFRTlF5TjZtalEvRUlkMlhZYlZQTXkxNjZmL2NPdXZW?=
 =?utf-8?B?amIyUjYzbHowZnFpTjFiempqZzhxV0R6eFZ6dmovcVg5b0Q0MnRodEVpaTNJ?=
 =?utf-8?B?QmpIdzAyVFpaRlNXbi9VeXoyOW14d3ZyOUNkWkZyTXBrWkUyaThvbnd5WFpw?=
 =?utf-8?B?OUlkd25OR3p0S2pOT3RXYUZMM2FPaCtSck0rdFE1VXdlTkNBNE80bmRyczVE?=
 =?utf-8?B?TVJkcDNhbnNac3ZSb2U3YUl0NmYwNk5SNkFpaEhLbG5iQlJLbUZZeVZWUk5G?=
 =?utf-8?B?OXZzNzB1c2s5eG9RaEFRQkVXcVBBeWNrMGgxRFZVYjlPZENpVUYvV1ZxY0Y0?=
 =?utf-8?B?MGdLaUlpK3BQSFhvQnZFYTMvcVFsSW9weVd5akdrN2J4RHZ2cnY2aW9rRDRk?=
 =?utf-8?B?T3pqaE5XZERaWm1XWFFPQ0orUDVES3NCYVVKanI0QWhrVGY5UGNoRDVCSnJJ?=
 =?utf-8?B?aWlYcEpubEltK2g2QmFUaHA5ei9malFpNHFUQ1A2NzBOSlpncXJha3NiWUpn?=
 =?utf-8?B?Z3BRdGRGZTRVVnVsMldXd0FwMmhRdW56NVdLbUVBcG45RnJ6dFlkUUFuZWFC?=
 =?utf-8?B?U0xWV09ZcG1xVU9SQkRISW9ET1dVVGpXNERUaDVwSGtkQjVFTkU4WDVZY3RU?=
 =?utf-8?B?THVabG1qbHVZZFV4Qkk0ME41ZExVNGFTMkxiRlJFR2U2VFRkWk5vM1FFZ3Ro?=
 =?utf-8?B?dVhmMENpT0E4WG9uTjNQZUdmbTJYRUFneHFOS1B5Ukp6QXNKS3lESXJkNHpV?=
 =?utf-8?B?VldnVElJTU0xQVlDN3BkbStmYjJ3ZFB3ZmFIZkYzdFh3dEJPNkhITWlYSm92?=
 =?utf-8?B?QWMzY1RkMTJocFdacmlWdTNSaUVqRGo3VUFlb29uQ0pVVWp5Y0Z0d0hLV25Z?=
 =?utf-8?B?c0JGZkhmSW5yaEJlUU40bFZNWm0zU3JQZFlzV1I1Vi9ORFZ0dnJRVnRpOVBj?=
 =?utf-8?B?cVY5Q1RkVVN2cm1uYTNXdlliYzAvRE13bnUrelpOS3RlaHRxVDBFMVRiVVBh?=
 =?utf-8?B?ZVZnRXE0WDNTNmpvOFBnQ0xBV0RvcE1mMHl5YmlEWjVoc08vVjRsMFJwdmo5?=
 =?utf-8?B?Qng5VG9lRFhuSGY5eEhMQ1lYUThyU2R2TUhlNS9oOEZ5WDQvVnRBc3pNS3dy?=
 =?utf-8?B?Qi96NDdiR05UZmhvTExLaWxBOHBCaGJHeklIYlpEQVFKRUxCM1B0czQyWTVj?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c530179-06e6-4f90-f902-08dd67a43013
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2025 11:41:43.8243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W6aKSo3p3XF30ITUGq5tA8ECNUB3vTk55ScNUR/iySH1kfLPdqJOB/LfxelxCTivhPRUJm9pHtrxfjtPvBrRSbFSCithiAE7LrjJwvkWodQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5162
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742470907; x=1774006907;
 h=message-id:date:from:subject:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5x+rV9387BhxAIORoALwUxsGVz6Sci4pmwoVLz8iHGU=;
 b=NtC0MXsKooi0Z1mXcmx3HGQaQwJ0RuFbjLMRiw2OU61zwxFziH/Gm5yl
 ssAslIFTE581pk1smHpQZDuZnoSJrgLQQEuqohVZ5WGiiwtUlR1M6Wi/W
 53nMdxCL4RIW7jSNQg9l0ZQjHtyw9q9vy9wlDVhACnIdj23K/kFcWwA0J
 7nf5sl2XnXkBk6OgRpkljBMuRw5gjXz44vOWCYxFqdTZFvDm5jdsm29fL
 LJU8acdp3S7l5Vw+2yvJmjIdS/VPlR3Sabwzg3HEqDAXzlNVHGg32vgMB
 FEATqFHYW9GkxeRnuzTwNMmhhwe54IuKkFLFWMSrILbxfdC1XPuFBCFdx
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NtC0MXsK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/1] e1000e: change k1
 configuration on MTP and later platforms
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



On 13/03/2025 16:05, Vitaly Lifshits wrote:
> Starting from Meteor Lake, the Kumeran interface between the integrated
> MAC and the I219 PHY works at a different frequency. This causes sporadic
> MDI errors when accessing the PHY, and in rare circumstances could lead
> to packet corruption.
> 
> To overcome this, introduce minor changes to the Kumeran idle
> state (K1) parameters during device initialization. Hardware reset
> reverts this configuration, therefore it needs to be applied in a few
> places.
> 
> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: fix a typo
> v3: refactor code to avoid edge case errors
> v2: address community comments
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/defines.h |  3 +
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 80 +++++++++++++++++++--
>   drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++
>   3 files changed, 82 insertions(+), 5 deletions(-)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
