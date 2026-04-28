Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBDILJC98Gk9YAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 16:00:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F92F486753
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 16:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35FF8817EB;
	Tue, 28 Apr 2026 14:00:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 24aTAflapRs7; Tue, 28 Apr 2026 14:00:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5903817A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777384840;
	bh=gSLRsLptk4Nxtna+iaLfFpJ5ic58n9VYEUByl5fAD9Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F0N6MMI1C+zgYd4W/sE+BnWKuYXjiK6ey1cMXmnbWDgpGqgR+4rYT6JU93dXzV2Hj
	 0LwYwOLInnwWc3EmX2DjdF3rEUnRz7lWXIHoNefya6J6M6kLBIuFrGb0xvGUQTxSHx
	 aOJte+bR4lomi6dfkQCJip/K6gbqQF3snK9r2Co4un9TNWeadlzfeL9jDuZSe0V9vy
	 fXN7E0raOFOrm8JLfFQuMskfTsShwbJ/BocQZNZYox7q+/YoKAV81FXmImg5e44wnN
	 UZEpKGqv6JYInglX7rnOSKKymyJWLcpu32o8XWEfCrW6cu5uyPhvxW0fki4QQ4TmVl
	 I9eSge/r4qljw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5903817A5;
	Tue, 28 Apr 2026 14:00:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A38C1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A42660DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:00:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jGt9ukMpo4Qn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 14:00:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA5FA60A4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA5FA60A4F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA5FA60A4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:00:31 +0000 (UTC)
X-CSE-ConnectionGUID: tvPutaiWQNil/9SxAkR1fg==
X-CSE-MsgGUID: Uyefv4xwQhGgJHxKe2MpCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="95709270"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="95709270"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:00:29 -0700
X-CSE-ConnectionGUID: YjYRpLJjSA+QhbOMtw5vKg==
X-CSE-MsgGUID: vn+ksTVYTK6LPGoWzYDDUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="231322641"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:00:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 07:00:27 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 07:00:27 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.60) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 07:00:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I7RMVWihNEBUvNampPgk0RZCrQPAMv5NStUBKfRgQZbbaa0YaRs9tLoW7X4ZqW57d/iHVELIs0cusG+9faZ129GAfuejsNw4gdfMgZ8AJiaKd8EL8Hx99n4rRtlN9WVa/EI7u25ReMAMDkN1CZ/xmBqJ2eHeMoRLiJEMhJ3O5Y+8oS0WfbIzBuc2qsU8sK9IiEVtQU/POIDeSiVhlM3CoPFtYR9RYc0BXlw5cQShFTmlnR5Kt25vhQ8N1MDCFaW+SeYMnDydJPK/9KWD/Z2GlzRFgZkEHB9WOfj7aDVXnJCuwOJG1KaIcPsvu0NehsX+t8sgHjfdHJmY6HsGikc0FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gSLRsLptk4Nxtna+iaLfFpJ5ic58n9VYEUByl5fAD9Q=;
 b=oezQYFiDFKaxQ4+4zd+m7dh8i6FZoPnxk0iCXv1OIEuWEVTEBy7avhjXp3UGJatBsljYTYJ14/22nL9kiEkKRhLT8NTiLJ3oBm+WFrlKkvz0MAAssgDEP+stfw8G9qutUnzVwG/WT3R5xnSo6j3TFvbw9ybXsYONPuB85GI3V3ToqDvT6C6fSj83BrVYkgclGrYXkWtUvUBd9w50LSOWxB6lz+YVY2vJA0nmSdLAwhQ9tDga54NL56zX4gqs8rFhSeTrUtw5+SaSF+rHtgyccEuzjy0CKaYUQxsI/x2IoMggUHnLRH5swzABYVBhU0w0H72wu6E3B1toS3h3Q0Zk9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA3PR11MB7581.namprd11.prod.outlook.com (2603:10b6:806:31b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 14:00:23 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 14:00:23 +0000
Message-ID: <2106884f-6914-437f-84eb-262581b9fef7@intel.com>
Date: Tue, 28 Apr 2026 15:59:46 +0200
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>
References: <20260427151827.43342-1-mschmidt@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260427151827.43342-1-mschmidt@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR02CA0054.eurprd02.prod.outlook.com
 (2603:10a6:802:14::25) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA3PR11MB7581:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a5dd7e6-6665-4270-cb79-08dea52e7dde
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: S04Q54y+cgnYVl7rLsb+bNyTo/4SmpJu9VMqOoJwn5k6H4H5YDZRCPTkIlxfqKr+PLfDm03sf/6CZBZWSmKAqM0iQu/kmhvnXZSOnRzFVOM8eH+DOGC1sq2MA6fbIhaNFgJfBx3WPtalp8rBkmh8EYDAEOpLzfhFwn0jzqqyImqUUjVUfay5+9r/VTMhDYsHZyEaNoInMQaPmhzKb88B/9tvxJPN3DWx2psbbbsuqOWw7z+HRJcNNHRK2H+59v4sq6JxcmYOiTxzLTSLbMgNK3wW4Z40OfsqMC/eybLfhwIMEwAYbPJPNFA+X8qhRJj2Ak0ENJ01flXeYM7YcTivw5+TO21aBzsdB/kDozApnc9JDE/TvIQhvgFJPxZe0xzCPJxEg3J0MOkf7RqP2xaY+6Uxc6CsrD9yAxWuYxhwHZWRKIAM95qbBBkiOKoWtXf4qRZPgC1+W8YXrAKSRAuEsiQnXYlDigcdEsRULV/773C/AB56fyQD1G12ynQlS2zt4WHZUQJbmh6I4LmfxHk7W1JferMXbZsRerSvWqEalEv7EuG9V9JD+6Hl6A0YPtofYqbycB/7Un4+6CIiVk7c6Kez1amWHzlL1x3+eA39Yd3urS9NhxlaJd6wChgfNVOIUxduQCEWgYyb2k+fJzOnH0r7krQlK6vYiLFr9PoETUzmWvi1lj4gXxiOjq+0xD/X0MJARUI8CvDBw7+8nPoXRW/b8xDa0CC6/YlowjSfeRD5CqKhTXlam/8y6ugK/8jm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDJqQmVJb0YyWkhhU2M0YlhDZ3licE9pUGdYRVYwWlk2ZWNIZWxzU3lFWXZY?=
 =?utf-8?B?aEdNS3Y5UXBUSlVIOCt1WW9Yekl0dytnL0lGcUlVZTVyUE1TNFZvSWpHUFZT?=
 =?utf-8?B?bXpwVW0rZ2F2aFhUOERjT2F2cUpIY1E1QUZ1bGgwakF6eXIwak80VnNTa3JR?=
 =?utf-8?B?NFpJNXpBdGdnaE4zTEpseDR3K1ROQUNla2RmcnVwODUwNGFxdXJucWgwcGNW?=
 =?utf-8?B?aXF1VC9XY3ozei9sQkRnVU9GRmdLUGN3aHQwY0NNcWxvSTZ6K0RrRTdLcnN4?=
 =?utf-8?B?a0NlcWFLemNBQlZQcVZ1alVBalhpNlA4Ym1zY2FLN1VWMVlnOFBsU2ZZZWdV?=
 =?utf-8?B?M3hvTGpUWXNrdElsV1BuaGJpeUZSTXVNV0xHcmFVVGw1dmFMQk9jSkdmMVlZ?=
 =?utf-8?B?L2wxTWhQR29DL28xOWtpVlNIeWtFSVRXWnplVU9ZSS9mZTlacXRCYk9WSHBq?=
 =?utf-8?B?UlpoTjJDblR2L0trbUUxeCtFVytPUmV4dGcraG4vOHB5UXgzRko2L0M4N0xV?=
 =?utf-8?B?VDQvK3JaOCt6aSt0aDJINUllNWpDdzZRV29tM0F2eTE2UmtYNGpKeEpRZHYy?=
 =?utf-8?B?MHBNWDFZQndLaEtSNFVFTDIvY1hqTWhzWXlITkRtVjlJUi9ZZ0M4Si9GcDBW?=
 =?utf-8?B?N1lWMFErUE8rYmFqbFdIUXJVNWtJZDNvTjAwNUxLY0RxcjkzWkJpcWxtbnM4?=
 =?utf-8?B?NGxMaFpWRVd1LzVJT1A4aXN1YUV0eVVRenhyZEZtSXhTL3VJT0VYNi9Ma0g2?=
 =?utf-8?B?MVVJWW8yQ1RDYlhWQjZ4RjlSZHMxbmFXaEcvV0pqZG1ON3JheG4xaUtsWHZl?=
 =?utf-8?B?M2I2STlldDBxSlNJQitHWExYc3ZHMjJmT0F0Mm5VRUVYWFY4dnEvRzNlQ2JL?=
 =?utf-8?B?Ym5xTXgrc29FOXNQZDgyeDBxWDFobTBEK3lOWGxaMW50bHUxMU1WaXQ4N3FV?=
 =?utf-8?B?SFd4NS94YmFzbmdkOUVEeHo1NXhiNUdVTjZqQ1c4SytJOHlNQzNOc3drRC9S?=
 =?utf-8?B?MnJ6SzFsdktnZ0dheFFDNTFOWkRjaUFTOTR2aEg3OGxMd1pLY1NTTVNlR0pI?=
 =?utf-8?B?eFhOYmFiVDJWc25DTlU3Y2tpVnlJT0s3MTA1RXNScUUvUkhjQWg4UWtUcWpG?=
 =?utf-8?B?cFYwL1NMYjREMG1Dd2Y5OE8rVEF0TnA1RGFqTW1qNzJIYys0bjBKa0V2Q1BE?=
 =?utf-8?B?aStneCtMQXZGeDA4bENoVUJQZmZhcXkra1pmOVplMEhQVmlwMEY4dmQrUlZG?=
 =?utf-8?B?WHV2OXk3K25vN3VURENCbDhmM1daMXQ4QlQ3MXYxVDd1ZUxiMEdpZFdGNWVE?=
 =?utf-8?B?MWcwSm81M2xUd1FQa0NudHBxeFBXMW8xSThLbHNjcU15cXA1OVNxN2R5dnB2?=
 =?utf-8?B?ZU9BS2Y1cktKKzVtUE0vVm9XL3hQaW95ZVl5OENTa0crRWpzdEljRCtPajRJ?=
 =?utf-8?B?cERFZVRqU3lhT2llUmxESVArWXZQRUpYWEF0TlJoa1RzSHpHMUE0Szdsa25Q?=
 =?utf-8?B?TG1hOHE5MW9pMm9qenhpNHhSYk9yUGk2TzUzREJZMGN2dEh0SEc4YWxFR3FE?=
 =?utf-8?B?UnY4RGthTE9idkVEZHc1NUNZNXdQTzIwQzdWMjc0V2ZVZEN2Q3d2ZmN3RHJ5?=
 =?utf-8?B?TnBjcXpzc1Q0R2twb1h6YmYvbHRPR0ZpZXBLODhHdVRJbVhRcEtUWmZCalMx?=
 =?utf-8?B?bzhvNWNJemlpd0ZOSlFrS3dOYmJHbUNHMmdVdlAyR3BZN0crZTNJWkNVQ2J1?=
 =?utf-8?B?ZzR2S0d0K2MvckFZTDBGdGZmcU5WVHhlclpkM1ZaM3JaVHo4VTF0a3FiWDdj?=
 =?utf-8?B?R0hkYVZSbnNjRnBHeEZZWDA5dTQwYVQrTWYrS1c2N2IycEIrRFlsUWM3eGhF?=
 =?utf-8?B?Z0s3RFlWZ0JYd0sxSGRmQ1liR1lJMVdLaXFhZzExVHFBQjVOSmV4bk1tcmV2?=
 =?utf-8?B?dExnL3VXTXlvbzZLTWk2bWJEa1REaVlYcVRKRmpmVk43OUNCb0tJSU52M05l?=
 =?utf-8?B?SElvdm93cFRsUm5kWnRnRnZHY0hwV3FydFJnNSsvRzM4bFNoMThTQ1Vqd0E0?=
 =?utf-8?B?d0JGNnVWRmhXTndQdTIvQ2hVdHRLeG4xWHR5cUtVOEM3RE1qUUlEWmhuQVk2?=
 =?utf-8?B?NFRMa2luSG5uR09JMUhDUi94VXRjZmNSTzY5WTFXcmhIYUhudCsvWU5uV3ZT?=
 =?utf-8?B?WlRRNnZmdVlSWEJMNDBUM01sWWI1SVZsZ3BRNHJlWmJLbSswY2szTUZSbXBH?=
 =?utf-8?B?c2JaZDNBQ2MzbDlzS21XV2R2OCtzZXAyTmg4cUNFdWZvYlRWVE03MVFENUR0?=
 =?utf-8?B?WjA1VG13SDlLOWlPQlFSQU9CZUlsdldETVlaNE5BYzdNNkxFK2dMSlZPTXBQ?=
 =?utf-8?Q?esJmNF2tNjETIwiU=3D?=
X-Exchange-RoutingPolicyChecked: XRarYtphcsrBzNNyml+KaE5VLKaOFv1m2D7lC0UG/6z7enmOiyxliGLaE8R+2II1+v7jW4jFK7ylhdEkIqjo7YoSlTveq8I1ATZjA8Ws7E3M7hUhpLMjmvMI/uq/53ofVFUJnWHqaeSvDu2Aq1n0RV4hUoDuzMeg8BPBhBzadDeY2L+bVRZ6tpsmApGBv3B3jF/ehdxOGdHzVi53Smh5LGikaiFcxsDZ0MCNpCX2luh0fjJR4BTnyhyYE5Y9TKMtXkG6Q0lM6XUYdieUoYBWpCQhKmIA6U69we/fEz9eBg0Yov3iYEG11614T/gDY597QPqdmv38k1LSkq/0wzLgwA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a5dd7e6-6665-4270-cb79-08dea52e7dde
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 14:00:23.5120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PsMJfDHP2cAw6EHcBvMu8mNhU9Z0kENqwy7yis8Mfr+CzmEj0xIf57h0ofN4gbeQd8z5W6Ci6roucrk18fqnCtBP1agwSO9i8YjsPiszzIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7581
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777384832; x=1808920832;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bEGcQA0XTjSK8aPRwrU7CJ5D6EpM/t6+Z0309CNKC/E=;
 b=PFkffhqt7UHnAIEXNW9vP24uxacobbTt3Ns5d0Dxl52OX4gL9iXNUwqN
 Hld/zyUb41wT0roaqBf+tZm2YbZ9zq+VIdISIjNG3VVOmDojegRwrqDyc
 7f7BT6pMk7UZdiAnTYjidPaiJDipd+xIXvjv1Ejx7IulUPdIaozLd/7wf
 GPBZsEMKMn6LNOm5siOqOgTAhiBpwIA8ela+tgmC7Bz7dBqm+HfloNJ5I
 fIkik7sq81iepeasJXXPjSRyXSyN9OAtbK6/OJHZuMKbTAYw6dXzd4yR8
 CnoSuy1Lwrb2xqeMQUvKZ8O4P4sfQluseKPgCBZnqPyM4XbLHYxcbw2+k
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PFkffhqt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow
 when VF requests more queues
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 8F92F486753
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.919];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[atlassian.net:url,intel.com:mid,osuosl.org:dkim]

On 4/27/26 17:18, Michal Schmidt wrote:
> When a VF increases its queue count via VIRTCHNL_OP_REQUEST_QUEUES,
> ice_vc_request_qs_msg() sets vf->num_req_qs and triggers a VF reset.
> The reset calls ice_vf_reconfig_vsi(), which does ice_vsi_decfg()
> followed by ice_vsi_cfg(). ice_vsi_decfg() does not free the per-ring
> stats arrays. Inside ice_vsi_cfg_def(), ice_vsi_set_num_qs() updates
> alloc_txq/alloc_rxq to the new larger value, but
> ice_vsi_alloc_stat_arrays() returns early because the stats already
> exist. ice_vsi_alloc_ring_stats() then iterates using the new larger
> alloc_txq and writes beyond the bounds of the old, smaller
> tx_ring_stats/rx_ring_stats pointer arrays, corrupting adjacent SLUB
> metadata.
> 

thank you for reproducing the bug, it is exactly the situation that
I was facing
have you tried with my proposed (unfortunately not public yet) fix
to just combine ice_vsi_alloc_stat_arrays() and
ice_vsi_realloc_stat_arrays() into one function?

I will check yours too, but need to rebuild.

> KASAN detects the bug:
>   ==================================================================
>   BUG: KASAN: slab-out-of-bounds in ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]
>   Read of size 8 at addr ffff88810affea60 by task kworker/u131:7/221
> 
>   CPU: 24 UID: 0 PID: 221 Comm: kworker/u131:7 Not tainted 7.1.0-rc1+ #1 PREEMPT(lazy)
>   ...
>   Workqueue: ice ice_service_task [ice]
>   Call Trace:
>    <TASK>
>    ...
>    kasan_report+0xd7/0x120
>    ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]
>    ice_vsi_cfg_def+0x12e2/0x2060 [ice]
>    ice_vsi_cfg+0xb5/0x3c0 [ice]
>    ice_reset_vf+0x858/0xf80 [ice]
>    ice_vc_request_qs_msg+0x1da/0x290 [ice]
>    ice_vc_process_vf_msg+0xb15/0x1430 [ice]
>    __ice_clean_ctrlq+0x70d/0x9d0 [ice]
>    ice_service_task+0x840/0xf20 [ice]
>    process_one_work+0x690/0xff0
>    worker_thread+0x4d9/0xd20
>    kthread+0x322/0x410
>    ret_from_fork+0x332/0x660
>    ret_from_fork_asm+0x1a/0x30
>    </TASK>
> 
>   Allocated by task 2439:
>    kasan_save_stack+0x1c/0x40
>    kasan_save_track+0x10/0x30
>    __kasan_kmalloc+0x96/0xb0
>    __kmalloc_noprof+0x1d8/0x580
>    ice_vsi_cfg_def+0x115c/0x2060 [ice]
>    ice_vsi_cfg+0xb5/0x3c0 [ice]
>    ice_vsi_setup+0x180/0x320 [ice]
>    ice_start_vfs+0x1f3/0x590 [ice]
>    ice_ena_vfs+0x66d/0x798 [ice]
>    ice_sriov_configure.cold+0xe4/0x121 [ice]
>    sriov_numvfs_store+0x279/0x480
>    kernfs_fop_write_iter+0x331/0x4f0
>    vfs_write+0x4c4/0xe40
>    ksys_write+0x10c/0x240
>    do_syscall_64+0xd9/0x650
>    entry_SYSCALL_64_after_hwframe+0x76/0x7e
> 
>   The buggy address belongs to the object at ffff88810affea40
>                  which belongs to the cache kmalloc-32 of size 32
>   The buggy address is located 0 bytes to the right of
>                  allocated 32-byte region [ffff88810affea40, ffff88810affea60)
>   ...
>   ==================================================================
> 
> ice_vsi_rebuild() handles this correctly by calling
> ice_vsi_realloc_stat_arrays() before reconfiguration, but
> ice_vf_reconfig_vsi() was missing this call.
> 
> Fix by calling ice_vsi_realloc_stat_arrays() in ice_vf_reconfig_vsi()
> before ice_vsi_decfg(), mirroring the ice_vsi_rebuild() pattern. Set
> vsi->req_txq/req_rxq from vf->num_req_qs so the realloc function knows
> the target array size.
> 
> See the linked RHEL Jira item for a reproducer.
> 
> Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
> Closes: https://redhat.atlassian.net/browse/RHEL-164321
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> Assisted-by: Claude:claude-opus-4-6 semcode
> ---
>   drivers/net/ethernet/intel/ice/ice_lib.c    | 2 +-
>   drivers/net/ethernet/intel/ice/ice_lib.h    | 1 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c | 7 +++++++
>   3 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 837b71b7b2b7..fc78176a2a8d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3015,7 +3015,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
>    * ice_vsi_realloc_stat_arrays - Frees unused stat structures or alloc new ones
>    * @vsi: VSI pointer
>    */
> -static int
> +int
>   ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
>   {
>   	u16 req_txq = vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
> index 49454d98dcfe..6f7da84384e5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -66,6 +66,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
>   void ice_vsi_decfg(struct ice_vsi *vsi);
>   void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
>   
> +int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi);
>   int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
>   int ice_vsi_cfg(struct ice_vsi *vsi);
>   struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 772f6b07340d..9edb2c14f553 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -268,6 +268,13 @@ static int ice_vf_reconfig_vsi(struct ice_vf *vf)
>   
>   	vsi->flags = ICE_VSI_FLAG_NO_INIT;
>   
> +	vsi->req_txq = vf->num_req_qs;
> +	vsi->req_rxq = vf->num_req_qs;
> +
> +	err = ice_vsi_realloc_stat_arrays(vsi);
> +	if (err)
> +		return err;
> +
>   	ice_vsi_decfg(vsi);
>   	ice_fltr_remove_all(vsi);
>   

