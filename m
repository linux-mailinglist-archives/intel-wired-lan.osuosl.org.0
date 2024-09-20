Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746BE97D137
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 08:35:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25D8A405FA;
	Fri, 20 Sep 2024 06:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 80Dxez_gMhbZ; Fri, 20 Sep 2024 06:35:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CF67405EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726814105;
	bh=9Kp+2+orZkTazdc8uuiLt+JckayoXsRmBI0bjxhVtgo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bj1t6A8ZRnOqOK4zvhzAzxVAJjWe7cHLlzklR3S6uMiW7KM8C7tIc7FmFNPk/6DWU
	 dCdMwz9d/WB1boecA1/J5QkOR9mbEJ28TRJYwWRuIo3zk+AJHmdcaP5SeIR4G0V1Cx
	 SJoNJlqsqSsi0ZKfhbEpUBH+kHjTDVESn1DBUA+OiU3w6HzT/3WVqDx6esVVzac11n
	 ECLi2wVkttf0EOYmxLa9JTzNtMP5EBjCf4j3Q0faapcZ6dGJBTrIRe0hsLPStRvf0h
	 geyXJuCkR3B47R0abI83mr7oC5R8zy8GgLhEPOCzI5gVFwMMX6irtRuXxVy/JAvE6b
	 ogxrHram4gqzA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CF67405EC;
	Fri, 20 Sep 2024 06:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0396F1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 06:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5AFA84BB9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 06:35:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hsyKNVjPQEi7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 06:35:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0B5684BAE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0B5684BAE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0B5684BAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 06:35:01 +0000 (UTC)
X-CSE-ConnectionGUID: XAsZTiJ/R/WMse1ur3DWYw==
X-CSE-MsgGUID: 4fHr9gTvRyqdw/uIx044BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25905409"
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="25905409"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 23:35:01 -0700
X-CSE-ConnectionGUID: GMMJVpz2T7qk/1sA8wEIug==
X-CSE-MsgGUID: xpbG40KtT4GXUbn4hHUj0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="71021437"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 23:35:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 23:35:00 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 23:35:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 23:35:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 23:34:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jx2OBhl/j0i+KR+4iU1FjhmFP3BgwE/YvJjY+NK9HvRpqPoD5A37NG89CgzyD9p9RMNFuCpj7C7KpDfYmWQwZztv2Cs+EnEbPdnq2zoV28kc9mey0xS979Jp9c7v/TtNkAdAjQt+biNSM8UVrzMX7PO3inbZdvX5FX8EaCl0PKaCdrJfT06yQgPaiwHf0rZ+F8l+9tQkwIT2B7sjdPSJMPzi+n3JTmm+XEDvIBKKIr3cspXqWTLmgA+TDxkapMmVou4vR7I8sxbLQDE5hcPoGqf0j+pM8NvBSxkUeooQCjm1+BeB3M4O/X1T4N7DfONU9dU3LjDTsqLKVg50iy1i+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Kp+2+orZkTazdc8uuiLt+JckayoXsRmBI0bjxhVtgo=;
 b=gCMmcPRcKfvECwGE4zscUi0FF8x79ZaswywEYRitHWIA/xZdlNF2MSiMxeRC/h2TleppqK8Ab0WpJ9keTsbF0pmLlint25C+d7/RKAc3SnBZ0HfN+xrOZBAEx/X2wCnoymviQarEZSyJe/njoErw71DUXrzKRTa8KwcB8pu4NagCsDyuMftuovuxu48znzzqKVakkoF73Yw4imrwKbxDMuaEjesBPLESMJU0iYM1ujGiCA1qQzdijp2AfyvAg496cF5YSjlbDUFnfAynMih5QSpZAH5msFHlD1bqK8UKgaMxg66qagDpsQbcQzXY6+5ypypNbaX26LkCCqC15Z2UqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB6402.namprd11.prod.outlook.com (2603:10b6:510:1fa::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Fri, 20 Sep
 2024 06:34:52 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7982.018; Fri, 20 Sep 2024
 06:34:51 +0000
Message-ID: <58d38533-bccd-4e0e-8c7a-4f7a122ce0d1@intel.com>
Date: Fri, 20 Sep 2024 08:34:46 +0200
User-Agent: Mozilla Thunderbird
To: Markus Elfring <Markus.Elfring@web.de>
References: <f3a2dbaf-a280-40c8-bacf-b4f0c9b0b7fe@web.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <f3a2dbaf-a280-40c8-bacf-b4f0c9b0b7fe@web.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0038.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::8) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB6402:EE_
X-MS-Office365-Filtering-Correlation-Id: 68d8f2e6-2b3e-48d0-1f78-08dcd93e5502
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3FoY2NjVzlFTU1Qc01ZcGoxODhvU1U4RG5uckRkeGJ2K2hnZmQ4YW5hNnA3?=
 =?utf-8?B?VkphZXowM1h5Q3pvc1I4T0xCTUg5eVBSM3lPLzhYRUJSUm5kNXBIWEJSZjNp?=
 =?utf-8?B?QXExNnRPWnc1Ym9nWUVnakxvamVNVDl1VnR0SitzeVZBd2JkMFlPRmp3WHNs?=
 =?utf-8?B?VlZ3SkROTkZPKy9pc25NUkh5OFVwdDJtTWZnYkQzYTlnUEhGYUVwN2trWXBR?=
 =?utf-8?B?dFZGY1R2Z2hzWlRjbkFKK2pQc21FRk1rMzJ2WElRODlpcnpDU0NxTlowUlpk?=
 =?utf-8?B?R0NzMTR0WHc0YzcwQzBXZzAvUGp0ZWY4SUZHVFM5K01RMjBhSEU5ZzdWNEEv?=
 =?utf-8?B?d085b3EwQWZ3Q2FmM3ByVFpaTDdUVnBDT1IwU285U1g4OHJMNktqb05ROXVQ?=
 =?utf-8?B?Ull2bWNxc3lwWGtkaDNIaHhvamt2bk9yRXRqenVuRWZ5VDhwMnJTVkxhaVZo?=
 =?utf-8?B?L2hQYkw3MkQrOWY5aS9OTEIwR2VzYW5kR3lwVTY3K2M3cVkzbisrTDIxTHBj?=
 =?utf-8?B?bGtERVhMdC9JQjdlcjRuN25EMEptaVFZWk51cE1CWTQrRTdvZWprYm9EYzNy?=
 =?utf-8?B?cUpWQjE5d0tXNFVheUNreFZWOVdRL2Z0UHMwcG0yWkJ6WkYwbk1TdWNKRzZv?=
 =?utf-8?B?R2QyODlYQzFpZy9CRFpXYS9IaFdIbHhVTXRoWEdqb0gvK0pwdk0xdXF0Nk5Q?=
 =?utf-8?B?NStWL1Y3Y01UaXpycVdBenIrTUVZVEI3NHdWQVFJY09ZQVNBVjcwR0tRSWlY?=
 =?utf-8?B?czQvandtTDJRNFhXRG4zMkUyQzhnbjFZcnYzaUFTYlhyUjVPZ2VHYkxUWnZH?=
 =?utf-8?B?Z29hL0owN2dCWVplODQvMnBZKzJJc3hKTC9LNFNyVmJ1UXhUd05iSW96YWow?=
 =?utf-8?B?T3hrOGNuNWZWc0t5TmdjRVV6UUlNNFJlVVN6S3NLUm9PV3ZJZkxmOXY2cVhW?=
 =?utf-8?B?Z21FdHRFSFJNSHE1cHRhMjc5dnJDZkZ6MlpsT3RLYUliZTJlZjhVQ01mMk9s?=
 =?utf-8?B?TmoreTJyWFpPVElOTmVZSDB5OUF5YklKbHl1YWVTQXZudkhOQlVzYkQyYnZD?=
 =?utf-8?B?UlZIZzViMjdvTHhvZGNUSGxGZzVuQW5OVmFxRnhnZnBRYVBHMDJZamZDck92?=
 =?utf-8?B?NHJjdVNOMXVDbHR1bHhGdXJhOWcrREdxTHRtMml5OWJ2L01oUUtsVFVqZjVW?=
 =?utf-8?B?akpXN0dpWjBIZzg0NWI4RnBjZjRzdFVCUVJmMkRsR01sMExGQThBSUNKK0dR?=
 =?utf-8?B?ZGdDVWpqT2o3ckdmbWtsTTdHOGo1bTdLdHduVjBMZzYwTGM1aVFNY3E0V2hr?=
 =?utf-8?B?ZVFLaUhSYk1qUFp4eERYRlI2TlFCTHhsUWliWDhQQlRYVDcxd1FFajJycm9U?=
 =?utf-8?B?dmRDYXZkM1lkektmVmhrWitHWVExbDJzaWNZRDZQem9CL2pOQkVIT0R0Z2pq?=
 =?utf-8?B?RmR1KzB4Y3FwM3ZESFBZWDZ1TG1wNDh1SFRmNDA3Rzh3aDhycWNuckhsZjk3?=
 =?utf-8?B?RTVTdlE0Tk9DZVBrSG9MaDU5VnloaFJaOGxZTXN4cU51SzFlSjhOSXV4YUpm?=
 =?utf-8?B?dVVjeFNhdjVwY2hjUm5JQ2gvZkswK3dxNUF6OGRxamFETkwzV3hHalVNcUM5?=
 =?utf-8?B?bmZ6YklTRHZ2K3VHZm5LUGRUQWFWaEZWSUxSQWJPUFRscTBBOUowSWpML2Jk?=
 =?utf-8?B?M3RMOGRMajVXb2xZN1VZWnQrZnI4dmJ0ME54bkg1RHVSLzJYdGVLUGxnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm5TQ0dicWhYVnVZbk12a1o5cHBTTXNmemYwUEUxeWVPdkhXU285UW5sRkQ1?=
 =?utf-8?B?aDF5YnRnTjRyOTlSa1hLZnBrSGJBaDlKRmNtb1F1eTV2NDliSk1EZVZVY3dW?=
 =?utf-8?B?TzIzMy8zRFI5Q1BWdGhKaXFFU21QYWZLWDh0RHhJMWZRbEI2aG1ZSzJreHRZ?=
 =?utf-8?B?NnV0TW1WZng4ZmZhUS9KK05CZUtqZFVOeHZneWVHL085VnFaZ2xVK3NwODZq?=
 =?utf-8?B?WllBM29DWVk0cjdvcnd5LzA5MEUwN3ZENEhocVI0bnBzQnBJYVd4Zm43M2Zn?=
 =?utf-8?B?VXNhQVptdHdMTG5EM2labEtEYWxiMXRHU29pUlU0Uk9YMngwdUxGNERLTHBn?=
 =?utf-8?B?UHp0N2I5RmJZcis2TlBNTEptdHZBRkZkR2w3K1lkSGNQNjR5L0xZRTlLK3gr?=
 =?utf-8?B?NHF5Zk1qdGlucm1EN1MxRWNBOG91YmY5a3UvbDlaNjdQMDlUaCtQeW5YWU0w?=
 =?utf-8?B?SmVTV2RWS2lkUzFhT1AxNFQrYzBlQkdHODZGNHFvdnFUeEI1K0I2THA1VWNw?=
 =?utf-8?B?cW91S3RPeVpIdEE4Rld5OTIxZ2V2WGZUNnVrdDFDQ1FpMXFQSkV5Smo2M1d0?=
 =?utf-8?B?TWxkMC8vU0ZHZExDcDF0ZFVUT01Qd0RFTGtwMXZxZVo5eEtvL3BKM3pTM09I?=
 =?utf-8?B?U0NleUd2QmpYeC8xQWQ5SFpya1RsQXozUkVld2lJNVlCOWlQdFVxSlJNR3NI?=
 =?utf-8?B?OU00QUVFc2VRTzE3TkFHcWJtYk02ZUtVMFh2SE1RQmFTN1ZVQ1Z5OHgvRW1z?=
 =?utf-8?B?Wk5PeXFwc0dDOXNBczlUdmZ6UEVBMjhtM3A1L1lDa2Q3VndXUjh2dmxzS2hK?=
 =?utf-8?B?di9lcVhrMWppRTAxRVVGcXBZNi8wb215SGlMVncyb3JXeWJUOUU4S0hveHEx?=
 =?utf-8?B?Z1ZuWFd2WUZ0YjlGSmNMclVEaWFRbjJ4MnMyK29RYW8xTHRVRE5kbEsxcW1W?=
 =?utf-8?B?SmFtWmMxdWVtSHRDQ1pLZ3R0VzZjbnVZQ1diUk1GQ0RuRXN6UVpvd25QVlVl?=
 =?utf-8?B?eWlHbC9GT2VZckNZL1JCMmJNL2lkWWg2b2VHR0ZIeFFkNXBHeVRaVnVvM2tN?=
 =?utf-8?B?L0dJWFAyaGJXOHdOWENYNEVudkdvWElMUHFyZ3R3aTZqWThqWDdrRnNIOVh4?=
 =?utf-8?B?U3V1SW5BMVUxeHlFVWJnOCtlanZFbHhWdlBZTEp6WDFxQXQvbng3R3Byd0ZF?=
 =?utf-8?B?MEhVYnVHRnppbUdwNHpyQXpEMlArbEhTTnpEVVF3TWdxa1NPdzRZV3g5eFY5?=
 =?utf-8?B?cDc0MXMxWVJmVk91a0NRdEVTK2xJK3NYY1dzWHN2TkF3UlpCVzFtL2NHUXNa?=
 =?utf-8?B?ZVBzS1V5Y2JLT0RyaStsNDA4Wjl6R0RVUndJaXhEdDROTWpsU05BbWJhNmpi?=
 =?utf-8?B?OWV3VDdEcW0wZnVsODFLYWNGaHQwQ0lDRmxBdWRrcEM4QWdjVWhjZzAvRTRC?=
 =?utf-8?B?V2p4ckVaaS94L2k4UVdZZnFnZE9WaVgxb1Vvb1BvMzBlc1hQVER4U0JGbld3?=
 =?utf-8?B?VFVhUGt3Y2RoZ1F2ZHhNVndlU21sYzREWGpqTndvaEF2TWh1QVkwanJtckJ6?=
 =?utf-8?B?ajJ2Z01sU3Rwb01mZ1ZTM2JwQXpxL3hIa3pjSkZkNmptYnRFek9WRWt5U0Fo?=
 =?utf-8?B?QjJNZDhLRHFJRTN3MjhUWVVidisxaXptbkxoUDdxNGVVZjB0ZE9XVWV1blFq?=
 =?utf-8?B?TkV1bjVtMkhod05tRS91dG9hdEZKS1RBY3dTdEtnQVRhc0FmNnFNV2h6Rm5v?=
 =?utf-8?B?aTAwOCtLOXluMi9jRG43Y1FsMVBXQTg3aXdkcEtpbG5iSW93NEJFV1RkV1ZL?=
 =?utf-8?B?UzdrOWNiWEdsbDBLeGhwSnZoNUdVV0hJSHpkalFLUmVsT2JWemlDK3hFVitH?=
 =?utf-8?B?YllyMXhTcE96amNaSG1sSzV1Vk44VDBJcEFCckh4R1AzRkQ2SWJ6RHVTT1JP?=
 =?utf-8?B?dnpwRUNFa3d6bXZZbmc4OG5tVmp4ZnU1TXFmREtGUDRXOWZGVndIdzBuL1lw?=
 =?utf-8?B?Z3dzVmlISnRQemFLZFNlTWIxRU1weXpvRWNTMmRoTzN6REc3R2VWcXZLUU5r?=
 =?utf-8?B?RlcveVhaZDJHUG1welp2eTlaYk5YYnhuY2ZlVEpzN3lMdTlLY1JXTXoxQ1dx?=
 =?utf-8?B?T3lwbUdadWw3VXNaWThyV2tXWENpdXJPQXhRRU1sZzRUb0VBc0hlV0ZSbUdP?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68d8f2e6-2b3e-48d0-1f78-08dcd93e5502
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2024 06:34:51.9014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Q05oMBZLGZHXa/WX1AEpJla3tm9z8AW3WLlJTxCvRZtYBHHMFyEuTjZOHMBl8ZDh5t0HFuv6Dq47gCK4s7PwW57c/NREmBnc6mjRwI9ipw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6402
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726814102; x=1758350102;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6PlPeUeGccZhUSI+sN8cDyELU3rHkNu5ZuLBn7mnZsg=;
 b=I5+BEaWeXekK/5kXnNkMdHdTYOgIae75/7y5AaVmWsrZP0gNYCKLK0lW
 u3U1xv/ftKOOZZomyrBtiZ82j2iXSTysrT22d6EctebZZvp2+CnLUXKyw
 FyfTJfFmQL8CNhCgruYSvYVqUykK48Aqf1kXKUrMxIVx5LOGqwEE/DpXc
 N3gtAWR8IyeubdUSxt0lhsvcFw3fTJq/VOEUapVAkrUM4zp8sWOr1pjlZ
 q/BYRWQnynfqCRASYXxsqjoG/J3XvBk1o6Mdwzft2K69i0wGuZex/cp2e
 EPfue4A81OnGmLA+JJrdMUZgaUI05INICJ3MOpiQhAhfb5iZPdcn98435
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I5+BEaWe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Use common error handling code
 in two functions
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, Richard
 Cochran <richardcochran@gmail.com>, LKML <linux-kernel@vger.kernel.org>, Eric
 Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/19/24 19:15, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Thu, 19 Sep 2024 19:00:25 +0200
> 
> Add jump targets so that a bit of exception handling can be better reused
> at the end of two function implementations.

Thank you for contribution, the change is fine, but not as a bugfix.
Please send as a [iwl-next], when the submission window opens.

> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>


> @@ -3168,6 +3164,10 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>   	pf->ptp.clock = NULL;
>   err_exit:
>   	return err;
> +
> +err_unlock:
> +	ice_ptp_unlock(hw);
> +	return err;
>   }

You kept the current label naming scheme, that's good.
