Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1A395C9B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 11:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 995FB81EB1;
	Fri, 23 Aug 2024 09:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ICp0UWaXA8KD; Fri, 23 Aug 2024 09:53:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B263A81EA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724406795;
	bh=pxxEyzVGI/gz/PBxRpWDFN2rAmba4u0i1eID6uTk3dI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e3I/t/NAs/MjhVn7gHlvyadxM2+TI0U3pnkO7SXA/zVyyUgnQL0haiIcv32MT6CHs
	 0ixIEj/jLzB21OurE+90Uq5Zewhk8a4UczOzpxbMwig7QklwcUyRKg2R2x0fD+g7S+
	 dDofk7T5/DCrecpDh6XFPfooMYI33OB9ogF46cHsXAxovV2jqEvM2eWdUwRwANDnDT
	 oNK/g/nmppH6c+c1Yr0WFnuoaf8A24U70j0Wd3/8VvhfN7Akz2DvIzCixSmVyw1PfY
	 r5r1MIeb5yXY2Z8Xc2Ks9e+DeXscrLskoZYTySRjDYTFUrMKBoR7Df9yDyGGA09NZP
	 r3sxl6jxYIFTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B263A81EA3;
	Fri, 23 Aug 2024 09:53:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F1C31BF41F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 09:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87BEF81EAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 09:53:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KN4JCuppcddr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 09:53:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 99B7481EAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99B7481EAB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99B7481EAB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 09:53:13 +0000 (UTC)
X-CSE-ConnectionGUID: Z/cjPsMVSg+uwQoDrUopVg==
X-CSE-MsgGUID: 7rMMV3XzTHy8x1yfQDKPDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="45386951"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="45386951"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 02:53:13 -0700
X-CSE-ConnectionGUID: ypgBpULpQgK4mgd4ZTmgwQ==
X-CSE-MsgGUID: XmibJ7IbQjuDR8MfDU9ugQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="66576013"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Aug 2024 02:53:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 23 Aug 2024 02:53:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 23 Aug 2024 02:53:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 23 Aug 2024 02:53:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 23 Aug 2024 02:53:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dsc31jB2GBr4PMQIYtMixOSfrBAsj9Cb41TDOSrixIu6e8Gi6xur+uLkuOzKBRYnuS2FObTmxdWG9/3MbYay/AfS4daR6uTwCGymKU6KOCZKpU1/npBv3GeF3xX4Ef3hLu89N6Mx/DNodV9eBtrU1CEC/VDKr4GzP7PYPX9uK/IdVx82KG+c9VuzqZE4Qo9JRVRCpiBNFSZfF6Oms4MLYoDBuOnVbHtvj1kH4jC/ZgFbIREE6C6JLoIbwPahUh2F3CAS6MUyNyX2RDaPGpCNAyk1rOvO6MoU82LlKzZH3gMTNMqiqdbDUyvs9I2lg9c1VneIPzykugPn/aFKRXxhMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pxxEyzVGI/gz/PBxRpWDFN2rAmba4u0i1eID6uTk3dI=;
 b=xuX8EsUvKVOyEFoW/JC9Etz9Z+Dpa2m/I4JOHdm+fITnHrANUTsysovNuiXLzgXSo9jYIEbhncV8agEpDlmM+j6eMnddPqutCKt5V2HBErtdCeJqa0BIdwFbn7TRCGWGiXifXUA0buJStcvuEeC/Fd3Q1LswBKPMVOAODzKBZ44nmh1xebF782zDZgc7z93k4t2Uq2VoinWkYWkd4uy/b5gLM6SY1AONzaU5Y0l+Rp/Am95UpDcGwK1Br9eNl6Zlrl26jYkB0TEJRyVHOrOrYtY0BxK7doeojYgkTrWIAkBwI+wdqRh0Y+I/fa8od6wYN9Bv+e/O3bGsu4drtCW9Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MW4PR11MB6959.namprd11.prod.outlook.com (2603:10b6:303:228::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Fri, 23 Aug
 2024 09:53:08 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7828.023; Fri, 23 Aug 2024
 09:53:02 +0000
Message-ID: <675c1a1b-49c9-4893-8f8c-92d33e2f6dd7@intel.com>
Date: Fri, 23 Aug 2024 11:52:56 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-3-wojciech.drewek@intel.com>
 <10175186-abff-42a9-aebe-d8d0d1daaf5c@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <10175186-abff-42a9-aebe-d8d0d1daaf5c@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0034.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::15) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|MW4PR11MB6959:EE_
X-MS-Office365-Filtering-Correlation-Id: d1d13c73-e28f-4ddd-966b-08dcc35960f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEtGTytQVEtRWFlJZzVjakJqbGxGZHZWWWptTUloaDR4N2ZtVEk0dUV5SjA4?=
 =?utf-8?B?Ty80VU5ScEZwdmNtT0Z3L2dDQXNWcThRcWVBZHloQ2R0MGQ1aXp1SmhmWFRX?=
 =?utf-8?B?UnI1bHRhdkFJNnZuQ0djaS8wazMzSjkyV014MGRCTTRqMlZWNEhMUEpqaFly?=
 =?utf-8?B?RVBiZ2tsSTJrNkgweEtGT21WMEpic3VTdy9CN3g2UHBLMHM4SkVSeUFITHR5?=
 =?utf-8?B?UnQ1MDRGV0UxQzRNQmVSWUZrS29jbHRhMXJZM213QlFqa2FGU0xrK3hQaC85?=
 =?utf-8?B?RlpGRlBKcnVtUXBscHVUeE55WE5TblBJUzZNcFNTQ1hPYXlIWUxoejhzbHNJ?=
 =?utf-8?B?S21LRHYvQjQxY1kyT2ZTdDZWdXZGTkVVVTA4UVM1Mlh0VmUwNzhyNUhzUTVj?=
 =?utf-8?B?cDVhUjd3MXp5MlNJeXgzbGxUaU9wUWJWMk5iblBRZXA3RitHU0VtZTc2R0dv?=
 =?utf-8?B?bjNRelNEZjBqemc0TnZZVU9Kbk1qK3E1TFRlZnA3alYxOU9ZcDhSN3ZSVmdR?=
 =?utf-8?B?SEs5ZXZML1pxcW1BR2FzeVF3a1NLaTdlekdhOVR5cE9aeVhWL0FUWTM2UHRq?=
 =?utf-8?B?UmpoTU8wV3Z5em1YRGt6elZvWmdHWjlIUVhGUmxwS2lsQzU4V3hLVElZZ2Rz?=
 =?utf-8?B?NFlmelc4N1VOS3B4N1o5N0pTTk45cWwyLzYrWVNPUis4NlArTE90TlBlSnVD?=
 =?utf-8?B?NkROcCtxMU1UWEc3YTkzZkF4ZzFQcFA5MjltcGcxbnY0VW1vbEs1ay9SMWl3?=
 =?utf-8?B?WWJvemFWVXFnT1Zib1htSWR2TzVpbUpKU1N4Q0hKOG5wVEtGNEIrSDVYaWxm?=
 =?utf-8?B?cXZheHorTk9IVkRKVlZ3S3NRcFZtNDV0TktHQ01xOUI1VmxYb3pYclk0WCtp?=
 =?utf-8?B?b3hKS0VwVkxQNTdkbmEyd2J2V2lTN0pUaFg0b0tub2pLV25EMy81b1VBZHIr?=
 =?utf-8?B?ZDFNK3RTZ2sxZGFDQnByUXh5RkVBOTFoOUNwMXZ0Ri85U0NZTDB1LzVRTmtr?=
 =?utf-8?B?dDlwOEwzeG4zOFpqU0xuSnpFMlVwUVZUV2htKzBKR2FYZWRlUXBaWUd5WDN4?=
 =?utf-8?B?dDNicW1DL3VuZTJoZ2xSWFA3amIzcC84Mk54T1RGL1FOYTcwMi9vcUZlcW0r?=
 =?utf-8?B?RE5TMVJrbUJIcFBjZ29LbEdrVytBNWprZ0FTOWtYbjRHSHhrM0tRUUV2Q1BH?=
 =?utf-8?B?VjZkRWx5SFVPeSs0Ym9IRFZ6VVVEeHB1TVdJWE02a1FET3FNUjJVa2l2dm9j?=
 =?utf-8?B?TEZDT3NzSURtNkNZNmZkQm5Eand2djRuN0JibkV2TUk4T0VQZG93RHY1bEFI?=
 =?utf-8?B?VCtueC9UWGNlblJFaG5qckxhcjl5TlJ0VHl0ZTFaUytGejJ1bDl4N1lsN1ZT?=
 =?utf-8?B?eG52bjBkNndvdnJaRk45Ym1OY1Z6d2VFUUhOQW1zYldEWTFRTjJVS3hDOVJE?=
 =?utf-8?B?SU1zanBRWGxnejFDemNIQUhVSmFucFNkazZ6YWVVNHM0QzRKKzVnWDNXUEhX?=
 =?utf-8?B?ZmxsMmgrZkVGM1RNaTRHUmRKbDBlUjJYcGZnTnRpUFVlZkZDdFZ2RGtUV1Bu?=
 =?utf-8?B?OXlrNW1EUitYSDJnVmNqQXlGQ1ZCWGdWY0t1TWFsUGlZMWIxN0J3ZHlKOVBl?=
 =?utf-8?B?cXJCWWpmZVNsd2tCVi9JamdlZkRQRDhsMThxVUVxT0hwOFd0ZGE2N0RmUnVQ?=
 =?utf-8?B?QnNuSHZFQkpubFJtVnNId3pnaVpCdU10bkc3aFZSOFNMRStSc0sxT2lwS3Uy?=
 =?utf-8?B?MkJ2bDB1QncvVlIrVnRzS2RNWWdrZDl1NXdWSTRwYlNKcnAvVCtLNnFKSEVq?=
 =?utf-8?B?cVNPWDArUHNPT1FsVE1jdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0JJd3hIeVZvTTIxVlEvWHpIV2ZBajdvdzVWZGx6MnNoalF5YUp4T3U5b1VQ?=
 =?utf-8?B?eEE2WlJ6MTMxVjN3YU9ZRlNhLzBOejVFRDV3ZnUvWVhkT1VLVDBHVHB4RlhH?=
 =?utf-8?B?QWJvWXdpVE1Hc3NReDVqRlhiZnJYMVlOWXlKRlBaTlBwd3VWNWlvOHY1cTQz?=
 =?utf-8?B?aE9Za3ZrbU1ldnozdnd1RnpCRnM0QU1hd21SVHBsdzIyRVZrV2hzODc2ZG4w?=
 =?utf-8?B?NmxLSXVQZDB2SndZS3lMMFhzcVFQb0wzUGhSQmFIRURTMjJmR3p5Um10SFpm?=
 =?utf-8?B?YmcyelJSWTJVTTlPVWg5UjJxeGx5cmY2VDFVYVVFa0V5Y09kbVkwSlp6THhu?=
 =?utf-8?B?dEFpd2o1L29MWXlVdHlVQUdzcEJEUGVQMm1ZOE4wK2QrNlBUSGpzam0xQ3ZT?=
 =?utf-8?B?bndQM2UyZU52SEFQZWg3Um5KNUk1SGhwNTFlQVdaRjFHNVROdmZyLzArVG9z?=
 =?utf-8?B?RUM5eDVieUd5L3RBM3IxRXdPR3lPSnhkVjVYMTdXN1pwK3BncE9PdkVsQTVW?=
 =?utf-8?B?cldJV01Cb0w0UmtkeVJya2VpdXlFR0RWV0NCUFloUmpycEY2disxbU9GUWht?=
 =?utf-8?B?NU8xb0JEdzdPcHNyS3VwVzZTZHRyTy9Pek83RXZiS2FvWWtxOGVmT3RWbzUv?=
 =?utf-8?B?aE5KcTlUcGZUOWVMWUR0aUNaVllYMU1ORDJibnA1RzFvWlBPbEQ0MWd2Y09P?=
 =?utf-8?B?MmVaNW85dXZGR0p4ZEZHY1JibmNqbHQ5Yjl6YmE5UjEvZVN5WkdGVXdTT2Iv?=
 =?utf-8?B?M3dHalh1S2dFbmlyRnlGY1ZKRlBLMnQ1UEVPaS85Z0xYeE1oUmdqb3F1Z2g5?=
 =?utf-8?B?WkdVcUtLTE1lUnpFU2l2ZmNDNm5VL0VINHoyQzF0WWxBUXBYN0tQTi9rV1ZU?=
 =?utf-8?B?aTNFNFFpRzJzc2MxeE5HYlVHT1ZxS01JV3Y4a0Y2RUZaZGxiaDU0VGt5NVhM?=
 =?utf-8?B?NWVLYmdhdTlmeC9IWkpRU3VYQVhkWUdSbjBSS01qcXJZZ2hTZ3JsWUpJNW9F?=
 =?utf-8?B?eFRWYzNLWVdoYVFDNFdtRnRTVU1qcGhUbGNEejZRRFA0UTVacnJEdWJSRWl3?=
 =?utf-8?B?UDNCTVV1a0ZrUS9SOTFra1k3Mjl3MDZKSDNZQ0J1YmNkL2gvdG9JRTBHaHlx?=
 =?utf-8?B?YVNTbnNJbCtvQWdaLzlsZi9idW4ydXltZEFuYlVYclhjbGQybHFNUGF3MU8x?=
 =?utf-8?B?N09BWHAvS1kvSUM1aVd3SStMWkphWDNQekIzMWxvbWJoMCtkbDZTYk4wcFpq?=
 =?utf-8?B?ZlhLbXBreGFzQXBtMENVNVV5NG1wMXdrRjJObVBtTytvN1ZGRUN3eFVZTW5Y?=
 =?utf-8?B?eTRFeGNMdWlMK1VnbVptSm1LMWs4TnMvSUNCSGR4Wm1rZHdnYXQ1RWc0b1ZD?=
 =?utf-8?B?cU9rRnFRVDdPNzcwdjdsbmdPclJycC9QQlM3UFg3TlIwWnljQkhMeTI1Z21M?=
 =?utf-8?B?UUYrb0N6RDZlTnJpZlBDVzM5M0xXUEgveEZVT1pwV1k0Y3ZLQWxJeGpwcC9x?=
 =?utf-8?B?dDlYS2l6a2lUdW9zbjVQaDJHM0xjRXROWE5YYkFFVGN6b00rWjhEdUl3cUtV?=
 =?utf-8?B?UE5qT2Npb0d1Nzh4L2JLS1haWHRXRjNHSitjSDl5TGIydllrWmxsMW1ySWk4?=
 =?utf-8?B?UkRPMnF5ZWhDMkcwa01UNERHb1hGRDhJbmltUlJQQkJZYjFvdGdTL2ZFT25h?=
 =?utf-8?B?bS91ODJlOVBqN2Y2ajA0YkpZVllMT0IyQXlCSzlJNDhUVW5PVERCZVVoTGR2?=
 =?utf-8?B?eDhhN3Q1NFVtU3ZzUTBVWE9EYnVHV2dKWCtmUGlDNWtOQUFXVHB6dlZRWk1x?=
 =?utf-8?B?YUN0YjNvSHpKSkczUW1XRG9MU1J3ZCs0ZC9JaDdRWmlMSTBvbWI0WXIvWGd0?=
 =?utf-8?B?V1A0cnFhaWltMEFyNnE2aWhtanNWUGFFVUpQSzVJY3hTTDBtZWVZTTNqVXhq?=
 =?utf-8?B?Q2Y2dmNiVU1YTS9rbElIR05VZ2MyakpNTjc1VEpDN252Tjd2QmZPLzYrblpH?=
 =?utf-8?B?TlJZRUdXMGRWTHovY240ZVI0MVZURWdBcXJma2xwVGVUL1RFcEpYK05XVkw5?=
 =?utf-8?B?LzJkRHZFdVV4b2F0N3krNHpkUmE3RXROaFhOOGlVSnZ6b0lpMFhLaStaSlJl?=
 =?utf-8?B?bENGcFFsNXZPYXV2QUYyRW8weE12ZWo2aVpub1lhZG5NV0d1Nnp4Qy8va3dt?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1d13c73-e28f-4ddd-966b-08dcc35960f6
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 09:53:02.8772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KjvQapUyno4c/tpX0vEmCitBjzGTxjsuxgpb4xKkIizX3nSmMkZfbPsZXdQWFvKnq47lcnYQLH2L3SpAvyUrOI6GcFYOVP39FJjWofnSzPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6959
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724406793; x=1755942793;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4xPSbD3CSlOKsAw7ZRfSaulMmdnxVVbeKIZlMP3iXpg=;
 b=QUNEsgZpBIBQ078Rj60+Y2DnYUxIUOEJI+NsqXxLJMug1BTIURmTynh8
 cER4HtV9PnZqx01xYYT9SJ4xuQfvQ6j6fLvwM1QIRJOfuwYS0HQCaTCNv
 Ay2m/w+S1DiJV2cJhWEhkj6wTF5zMnFc1uypgIhQE7UDtzjbyo8fv40Kt
 TKx6J78CKLIT7QBFTg75a5OgAvNX9PbFfNpNKEQlEN+hk0CWZRXVHzrUs
 oCG/GHKPX8dzzLCXkmNBDB4ZhkkBjHS5s9d4BOB7s9jt6LAswVdmum5QW
 RfVeT71ZUzWKiH2Qfu/v9z/JUGex/bRZG2UrOwHBGn/wWLP3PwgV6jJmi
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QUNEsgZp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 02/14] ice: support Rx
 timestamp on flex descriptor
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21.08.2024 15:29, Alexander Lobakin wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Date: Wed, 21 Aug 2024 14:15:27 +0200
> 
>> From: Simei Su <simei.su@intel.com>
>>
>> To support Rx timestamp offload, VIRTCHNL_OP_1588_PTP_CAPS is sent by
>> the VF to request PTP capability and responded by the PF what capability
>> is enabled for that VF.
>>
>> Hardware captures timestamps which contain only 32 bits of nominal
>> nanoseconds, as opposed to the 64bit timestamps that the stack expects.
>> To convert 32b to 64b, we need a current PHC time.
>> VIRTCHNL_OP_1588_PTP_GET_TIME is sent by the VF and responded by the
>> PF with the current PHC time.
> 
> [...]
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> index be4266899690..b7c340bb7aa7 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> @@ -136,6 +136,8 @@ struct ice_vf {
>>  	const struct ice_virtchnl_ops *virtchnl_ops;
>>  	const struct ice_vf_ops *vf_ops;
>>  
>> +	u32 ptp_caps;
> 
> Hmm, there'll be a 4-byte hole here now.
> If you put this new field either after ::mbx_info or after ::link_up,
> the struct size won't change at all.

Sure thing

> 
>> +
>>  	/* devlink port data */
>>  	struct devlink_port devlink_port;
>>  
> 
> [...]
> 
>> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
>> index 252fad21b04a..012ed2f5f9d0 100644
>> --- a/include/linux/avf/virtchnl.h
>> +++ b/include/linux/avf/virtchnl.h
>> @@ -304,6 +304,18 @@ struct virtchnl_txq_info {
>>  
>>  VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
>>  
>> +/* virtchnl_rxq_info_flags - definition of bits in the flags field of the
>> + *			     virtchnl_rxq_info structure.
>> + *
>> + * @VIRTCHNL_PTP_RX_TSTAMP: request to enable Rx timestamping
>> + *
>> + * Other flag bits are currently * reserved and they may be extended in the
> 
>                                     ^
> 
> Just curious, what is this?

No idea :), will be removed

> 
>> + * future.
>> + */
>> +enum virtchnl_rxq_info_flags {
>> +	VIRTCHNL_PTP_RX_TSTAMP = BIT(0),
>> +};
>> +
>>  /* VIRTCHNL_OP_CONFIG_RX_QUEUE
>>   * VF sends this message to set up parameters for one RX queue.
>>   * External data buffer contains one instance of virtchnl_rxq_info.
>> @@ -327,7 +339,8 @@ struct virtchnl_rxq_info {
>>  	u32 max_pkt_size;
>>  	u8 crc_disable;
>>  	u8 rxdid;
>> -	u8 pad1[2];
>> +	enum virtchnl_rxq_info_flags flags:8; /* see virtchnl_rxq_info_flags */
>> +	u8 pad1;
>>  	u64 dma_ring_addr;
>>  
>>  	/* see enum virtchnl_rx_hsplit; deprecated with AVF 1.0 */
> 
> Thanks,
> Olek
