Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A136DA8A9ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 23:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58EE1610E1;
	Tue, 15 Apr 2025 21:14:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SNNqka-exrZz; Tue, 15 Apr 2025 21:14:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABAAF61ADC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744751678;
	bh=o37jUp1x9Qd6ZmHSWDCHYEbOPoujDfnlq44o/Wu2cI4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QxOlgX3L4YuL1ZLtfSbBbBIPYc7Snm6yiQp8gWwxmPzwR+QuUJJkWtA9XqGq2Iwvi
	 nlCxqtxFU5+oJzJrGXDetKmtPw8eR5E2dNk2Bmqmf6+/IGs6Mbq8MDS+QERAoAWv9b
	 ww5FZDWCrMKGQVUWbvkUlRSBKCskD/1ZNgjpYjJhHJknq6rG911a8y0kXpCOjLOG4h
	 h/tlRxnp7juy3WBrXRqwka4wkB8b7Tm2JuirnLh8xlvdgkf1pJ6ptMaLnbUiOeraus
	 3wpSTVTt/loVK6lrYsodnzAu67l6x8wcLN+hx6mR62rMRTgv6zNT20Bi5UUgbADYBj
	 UIroAIG07D8AA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABAAF61ADC;
	Tue, 15 Apr 2025 21:14:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A04ED109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 21:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9232240546
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 21:14:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jr_QNoSOBOxJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 21:14:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ABC214023E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABC214023E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABC214023E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 21:14:36 +0000 (UTC)
X-CSE-ConnectionGUID: pVOR0EhlSVau4WpAfpuzNQ==
X-CSE-MsgGUID: EuV005AKQvWCZv0r6ZqP+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="57645901"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="57645901"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 14:14:36 -0700
X-CSE-ConnectionGUID: U+0PibC5Qqu/L/QVKqt5AQ==
X-CSE-MsgGUID: aIpZkYb2SVGcP1nGfHBx9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="153449155"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 14:14:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 15 Apr 2025 14:14:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 15 Apr 2025 14:14:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 15 Apr 2025 14:14:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L1R1ZIe5/sFjR2bCvIOng0ZUT5qxaR0czmvflrj8z/voZU139FX6ticKg1Fg9VjBDL184RBz+qJECJTnrPIRnMMTWwzFYhr0oNAG2+6XQGB2pBAY3XlbRpJyBg4Ggec2FjnBn84BKdGlIdX34SgCaG2Jzkb9GlwrPOb5em9+w3D7i8m97kghW3407cRQ11lM3sTjgmG6ZotV/hlFnG4ZdOPyXsu5x2oh++M/Gf9yzRObPEtnKWwbfIvfgw3kJKR9LvDTZKuuTkbhqeTvUL+fF8eYiLm0mA2ZkeVsC3Frr4qFYHfcF+wDdIDx41Bwyvkjdha1beDkI1wTPXRd5MsrAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o37jUp1x9Qd6ZmHSWDCHYEbOPoujDfnlq44o/Wu2cI4=;
 b=KQlLNCBdwmBXNB787vAvnS8+bWLw+z0JuBs3BeVdAlgaDiIyZj0cWyJrexTbIoyh+79GePKvUEg2qIlvz1C0874t+F1gDFC9Xa5m3FwHCZflbJPzASVPVSdLXjqbOVGH7Q5EzaDJp4duj2MPRsoNRF8mya3i99qBAXsugftfwyX+bhrFuP7spZoIhHrN1TAOcd+Ke11FLSPCSnR1Xdo8Ehu3s5+2dhqFs37J2HJG8mvUccMmHDG4KFb0axZ1+JEwD18jZWYC9irPSHp53ghJX6ORYB6DhDqJBOxKfDuzi8z+kUCpIK1PjT704oymPVzYkgCoMd78qAUbpO/qmfAPxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Tue, 15 Apr
 2025 21:14:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 21:14:32 +0000
Message-ID: <07bb218b-2a3e-482a-951f-a84aac498bb3@intel.com>
Date: Tue, 15 Apr 2025 14:14:31 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
References: <20250414104658.14706-1-milena.olech@intel.com>
 <20250414104658.14706-22-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250414104658.14706-22-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0054.namprd03.prod.outlook.com
 (2603:10b6:303:8e::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ1PR11MB6129:EE_
X-MS-Office365-Filtering-Correlation-Id: acd5fa9a-f5c8-4059-3ace-08dd7c628452
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmM3UmhmVTU5SU9lU2Q3ZzJ6YlVWVVpNY3RwTkVkekRFcnJHOCtsc1dicWZk?=
 =?utf-8?B?RlNhbzdsVnc5Mm1aaDBWMFZYZFlpOEtRenFUbTVPOGJDR2M1a1VXNmZNM0VZ?=
 =?utf-8?B?cWtLMFluaTFCZWZFdWVxaVhZV3phekliamYzQkwzOHJ5MjNuOTVmZVUzKy9K?=
 =?utf-8?B?WG4yRC9WVUt1Z2EzRnVoc05iTlo5UzNZd01LV0RkaHoxM0ZDakFLejcyanp5?=
 =?utf-8?B?ZFp0czZTRFRxbHNhUkVUVHpRTHFaK0FzUWhZaE16TGkxdWlFRnorc050eTc5?=
 =?utf-8?B?YjJWTy9Ybkl1YVQrQVNhdmdPWmliVzZxc2hxOFl3ZmJkSSttZ2JjWkhDVmxX?=
 =?utf-8?B?UWpYOHI1ODRsdERpNVJqZXgwM1V1UHpPRjhYRGxraTd5Zm1Xd3ZLbHJZTXBM?=
 =?utf-8?B?OWQzdHptd29oM2IxLzJwRWsrRzlQZXAvUXFNdWV3Y1pKUWo1cUR4d25SeGhS?=
 =?utf-8?B?Wkp1Mm9GWFB6dFpsOS9kMUFyampuaUtkSlVlQWQ2eFY3eldRTmNPamwxcFJV?=
 =?utf-8?B?b0ZxZ2dsck16TVk5OURJelRpZmkyVEUzYjArOU9OZXI5VnlUNFNrWkFDelBq?=
 =?utf-8?B?OG5VTTFJR2xSM3ZZaGthdm54akQ3R2RiVHo0cjRjdVhhMzZxbjNlejYyNzJM?=
 =?utf-8?B?enBpMDYwc2FHK2FPRVhuVTV4NGp3QnJWNVpISDVFb1BGbWRDMmo4M2VSYk1O?=
 =?utf-8?B?YWRwNlVSL2podm56Vlg2Tm5qZ0VxbTBFZFNaZXZPMHhWSzVSUWgrRSt2NmJO?=
 =?utf-8?B?Ym0xL1czVHl5Q0JseWNyTXBCS3pjODNNOHlPeHNyT1VXZXlRMkJrcHBRS3V2?=
 =?utf-8?B?RkFpL0RPQUpOeWFCSUVVcyt3TWN0cmJVTUNPTGFITndkZlZTNUF0c05YZXZB?=
 =?utf-8?B?aTJVSHorNlFkQUNHWE5VNTgwNHVkR1ZtTDNOcjFOaE4zRExNeFpoKzdaVXFG?=
 =?utf-8?B?QWxKdTdiL3ZnOXo0T0ZWbHZIayt0d1dIZDdKdktwbHh1TmZxdWdXbHE1ZG16?=
 =?utf-8?B?a3E2MXhESll0a0twY2Q5aTBXUjRjdEo2clNGZlovTytYczYzd01tb3RwcW54?=
 =?utf-8?B?d1NYQ2J0bmEzYjlJUmZtL0puWVJjNkNrV1N4QW1PUVRjenpkSE1RTVkrTm9Z?=
 =?utf-8?B?U1FIcHp5SENCWkJYRmV2Rmw0S2ZLYkFTNjhGRHdDTVd0VVY0ZUh3bVRMRGRp?=
 =?utf-8?B?bTcvT0Z5bytFVThUZXIwdDFZTzhvN1dBdlJaQ1lqVHY1aHpPMzUvUUNnSFF2?=
 =?utf-8?B?WWo0SVRKTm9laHJIbjg0TU5uc2VWSXZjUTQ3Q2ppdnkyZ2Z6WWwxa1dxZmkw?=
 =?utf-8?B?TUtSQmIvK0RxZStvSUFJd2Z1TzljM1NXOStCQzRMY20zVVh6cWFzdVZlaFho?=
 =?utf-8?B?c0VWWjZPak5Gby9GU0J3Z2dEbjNiNGNPb1V3a29aSEh3OUJoV2I3eFRvUjVP?=
 =?utf-8?B?dXprUTA2VDVPNzl6dkVZa1BLK3l6ZXJDYzJ1dlU3SDJSdGhYeUV5M0tUT3Yz?=
 =?utf-8?B?dkk5SGxFR3ZwK0hjRXFuV2tqckdFdzlOb2NKRlQ1TWtZeGN5dnlnT0J1S1dX?=
 =?utf-8?B?RnBoenJnVkVRdGRuT01ZbnRZQXdxRmdaYXJOZmtSUVE4Q0tKQlpZYnh4RHFT?=
 =?utf-8?B?c3FGMkdhZFlkL3dBazZRU1BtZGVyNnhWL25MdTRTSHBibFlCRXFoSEJldFA5?=
 =?utf-8?B?M3g2T0NTZzFhNVlaVysrSnFCRG9aem1ZeE5PR2NwV0VJcVJiVkh1a3RldXNF?=
 =?utf-8?B?QXM4NlNnQ3R2THFrR0s4VENTWGFDamNpVVNGbmp4YU1kY05Zblg0cmpOUW1y?=
 =?utf-8?B?dXRIVnVKemRJbFVPbXRiaHlva1VJY1YrMlU5NWsvU01TQjJnM0pXZ2tqQXl3?=
 =?utf-8?B?TGE1TWo0NmRTenZsdWpwZzhzTzVMQnZZQ2RGa2NHT2didHlURy9STWlaVy9O?=
 =?utf-8?Q?uyGdYIjGMYY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZG9QMENvT2N2RUE2ZEtiWnJOS3hGM2lpbkVBYmhkSHNQeUF0OXYzcU9QL2xM?=
 =?utf-8?B?dFNDTkdGV2grTGJRR2Roa05FVFBCMXRkTnYxeVhyM3dla3lmMGJKcXpFYktn?=
 =?utf-8?B?Slo2MnZCeWhORGRyUHk1NjRSRkNlK0lNSGIvK1p4SXBqUDNFTWs2YWVrQUw4?=
 =?utf-8?B?cUFMOTBpV0RjNzRrS0ZXR1l0cDJjTC8yV1lZRkJ3b0x3aldxbXJwd3o5a3hK?=
 =?utf-8?B?MFY5cDkvWHJxTVQ5OTdBMlNtbDBrTkp5ZktKRy9uQTF4N0RNa1RtWVAvU0xG?=
 =?utf-8?B?V20wQTNIM29kRW1GbG9ZbVNFRnVxTzEwTlNqVFNka29vSExhSDYrdW9ib2xo?=
 =?utf-8?B?Q0tybHFuNjJ1eERPTG9DM09nNStqVS90Q05IVGlEV3VTd1JuNXQvTGR1QmRB?=
 =?utf-8?B?eUFVTGpFaWRIaGlsdEQ3WENMT2RNWG1oNVJacGUyVi84WGVmMDVib0JiWjZU?=
 =?utf-8?B?V2lpaG9BRjYyelp2bkNab0l1ZmhLWnJOTGd5ZWIvUDQ4Yjc4MzBZRHNMeFlQ?=
 =?utf-8?B?QVNCdEIrazFjcWQrUVc4TkJMUldlMXI5VWtOUjNQUFE4R2hsZzZGNHRRb0Q2?=
 =?utf-8?B?clV4MWRiSzIzZ0U1Mjg0ZjRkdnZ4TkRMbVZGTWFYM2YvZG9JNXQ0R2dqTmhS?=
 =?utf-8?B?Zy9PMW8vdnRsdDUxYzJzMTJuYnFUMzlzckcrYkdkeHRob1JpMTkwRkFpWUd4?=
 =?utf-8?B?cWtxVmdNR3YzWFAzVEdEY3lDTzQ5RWY2VE5DOVY1MU1rUUkrVkJ1RmNzOXFv?=
 =?utf-8?B?SlkyNFRybWJ4bkdyWDZUQlUyT0RCVkN3dERoV1hmZlNOdzJDQkQyOHg3SStq?=
 =?utf-8?B?Wm1EYnB1Ukt4ZXIvYStBSWRVdm9iTENsc3pjNkNqTjhDb1Ywdy9qSCs5WXBW?=
 =?utf-8?B?Z1FxemVpaUJqS3FXSUdlMGFibkVCSlAvcFdVOWZJYzQxZHlabG1lY3R5eVN1?=
 =?utf-8?B?aGxWcHd1SWRQL2sxeWIyN0pqU0wxME5sVjA5N3dUdHpwY3NMSDN2aVdGdDJz?=
 =?utf-8?B?eHQ1ck5aWjY0YkduUkVtekZoVGV2aUpwUkI4YUV0L0JXMHJHT3ZnaXlPQXk4?=
 =?utf-8?B?S1pzNDg4d2ZxWXNoc0dRbXJaOW96L0hKejRXN1B1cEVGU1ZZdUd5WlQwOHZP?=
 =?utf-8?B?eTVoTDVSeEs5Z01LVytQVDNhMlB4NWs5bGN5K2JnS01MTGVacWFtYjRReGpq?=
 =?utf-8?B?SGVqdUt5UmJMUEF5dlBYQ2FLWmlCTVpiVHRxUkdGV1B2Z09xZWxKNTZBSWkv?=
 =?utf-8?B?dmM4U2NOV3F6OXphMFIxRXRQZmN5K1BYTnk2NmliQXhwdFFmcTZWa2VmSG5L?=
 =?utf-8?B?YWx1OEFmbzR6cFRWa0g2SWM0cHJFMVFhUDhETFVqb1Y2NTdmdFROS2hyN1U3?=
 =?utf-8?B?R3h1RGJaTk1EK2xZT0tYRU1jQ01qTXlsM1RSVUVlNHpPUzFTdDYwMmVPRUEx?=
 =?utf-8?B?V2RSb0VoNld0dERrZVNNc1Rrd1lNei95cFhoYUd2QjZQaEhoUy9JeFpqWUto?=
 =?utf-8?B?QWUzK1FXc1VncmhzNndvM2Q3RFpqSG1wUTdaemR3Ync1THZRWm5pNmFORVMx?=
 =?utf-8?B?RGFzUTRabGZ1SzF1cmQwbi9tZGNVL2plZFdMNnI4eURPVnFnZWs0ZTRURXE5?=
 =?utf-8?B?b28yTm50RlJmMmc4Q3RHck1qUDdWQUE5NUJQRFBiRTBWV04vcXF3bzFqbzBH?=
 =?utf-8?B?MVZITmFrVjM4OU8yb2pWNkZoUWFyNDlDTUdOZWVyVlZidEk0UWs1Q2hjUVNW?=
 =?utf-8?B?VTRZaFYvM0E5ZlpmVG5vckNnbklHeU1OK1JoTkVQWFh0WHZKNTY2Wnc2My92?=
 =?utf-8?B?cUhsUFBTeElPYnI2aFhlNVlOWmhTYVBpQjFyZlBaMVZGWElZQ25lbmtLSVIr?=
 =?utf-8?B?SjJuNjZRN1NiVEIvNVdudTlqbkw1TjQrMFlNTGF3QUJlemNCU1BnczRUZ1Bi?=
 =?utf-8?B?a2w0bG12dmg2ckZITCs5VUt1ZVVhTXJJTHZ5QUhQbWRYOW55d2NMMWlTWmVK?=
 =?utf-8?B?VzZlN1phMWFuWlowT2VKN2M5SlBWSDNiZ1ZUUDhwMGl1RDZoVHc5WjhVS1Uv?=
 =?utf-8?B?QjYwak5wbkkyQkhzNG9VV0xOTy9VMFo2cXpCdWJSS3pMYXptMm5xV2NwdzZz?=
 =?utf-8?B?NkRaaHZhYVdWUVd3bGd6MW1lM0M1QlZqRWFpTnVYUDNCdnRxRXIwZDU2ZHJt?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acd5fa9a-f5c8-4059-3ace-08dd7c628452
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 21:14:32.6570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3CXM/5KShizFTt26ckpBySALLRmStLn4mx36WlfVZpk/pnZxLqeYM9F8mfmjII+57z+9s0JOVHcmqmzMLK9S5zZn8Zvxyn8jXAd6gKXUEAA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6129
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744751677; x=1776287677;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7DK1FgewcARM6Dbq1lUeO3Bm8lCZSq0RCk9WdS07rAY=;
 b=Eiwf1GRL64AVaaHnHNPQK2br3wxEGPiT2lQAR0IkfGQpDmlJy+yVRmwB
 yBiBPcB0f4hb54LuFAIga4jbmJ4mDw0LBOd8d+FYp7QFL7cqHKNIYj7ZX
 /3l1eaazhp3Pwc+HfsFCr3Yc4vztFP20cqD6Q6VVxt6PYLmWjSpZS7gIT
 1D+gb8ms3IAuqISjdm5OLFXKWCa2Y2DQbao5piVnj+3oqFaMG72KXlS+i
 tINFww9VcgXZU/oOZP0SHyStm0X2Gza/9u0u6S8sM1btsj0FVqKqrPvzN
 3q0VNpz+ClMbjBmygSNLHAXQiv4ziCzCR/15oTbZ4zF2C32TA5PL61DTG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Eiwf1GRL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v11 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
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



On 4/14/2025 3:45 AM, Milena Olech wrote:
> Tx timestamp capabilities are negotiated for the uplink Vport.
> Driver receives information about the number of available Tx timestamp
> latches, the size of Tx timestamp value and the set of indexes used
> for Tx timestamping.
> 
> Add function to get the Tx timestamp capabilities and parse the uplink
> vport flag.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> v10 -> v11: use one lock for both free/in-use latches lists, allocate
> each latch separately
> v7 -> v8: refactor idpf_for_each_vport, change a function that
> checks if Tx timestamp for a given vport is enabled
> v2 -> v3: revert changes in idpf_for_each_vport, fix minor issues
> v1 -> v2: change the idpf_for_each_vport macro
> 
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
