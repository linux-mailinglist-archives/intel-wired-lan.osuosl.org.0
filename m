Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2519316DB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 16:34:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB34B408AD;
	Mon, 15 Jul 2024 14:34:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GN-djQVGSWec; Mon, 15 Jul 2024 14:34:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3BAA40895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721054058;
	bh=YUyOxjuG7m90246AnT0z8h7W1out+OgYoOxtaNO8nEA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=abNvNj+X1uIUOqvTiK2euoi/y2Db8WnNiv7GpTjcW44HCmnEmXGnvPzxY7yqLTBlO
	 v3swN/PpQkGJDgsq1l7xHyDHySArdHbmZqbLInVf0ag07acosxXv+iPGzDagMPuMYk
	 43sRbPavGRMpeCg7URJnqM0vGwQymf7odjeF5vA72XEJQe3Vr1UAbWqgDYNuCdFrMY
	 zQtwZaU6dQbnG1q2wBy0gM4r3z3Qy26WT4CbqLBwPDEAmbXJN5EG0lJ+5H6WWs14Fi
	 YVSxmvqAIEyNBn7hE3JYapLuRCpt1dsBnCazO1V63s15gHE5zAXDu2ob6iHY2HF0pA
	 APip8vBTeqnbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3BAA40895;
	Mon, 15 Jul 2024 14:34:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E0A291BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:34:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBEFA40355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:34:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PGoafQShvRic for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 14:34:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 264F540335
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 264F540335
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 264F540335
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:34:13 +0000 (UTC)
X-CSE-ConnectionGUID: B3w1FBbpQuSyqLXiU9Bl3Q==
X-CSE-MsgGUID: QhJ4F3X0TNGhzCvY/CFUmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="29027046"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="29027046"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 07:34:14 -0700
X-CSE-ConnectionGUID: 7W8zeBMaThinDC3YJS8NIQ==
X-CSE-MsgGUID: 9k5MjfGpRgC2OSfud84Yfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54820199"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 07:34:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 07:34:12 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 07:34:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 07:34:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 07:34:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OliDvaJS+y5EN5oQF+/tlrbKBOQAghxePxTlSkftKMzoKdbrkcKs1QvucZUe35JOMagZrcJThupHbhKF+Xe3nfq8FUA1ryyRjLmMPJ6RisLgUgiS8FM9+5laGnVcdIuyBxcBVUJoOJ4AEaIfQ5ZKFbkpos+p9sEccdo6Wk4HDllQH2K0vXTRpFnhkbDCOyJrmq5rTXE1yQtcV3PV2lOpuQKQPFFA5PCo8k21zWRrBDscvixgG6dQpyMTC7Jl0j7wEJpr/Ve8SB2DMC+89RiNj7n96ibMcK332kHFhHUajRwwds2DN0MF05OPHPhN+H7TwXge+/18QfdvZC2WjDAfwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YUyOxjuG7m90246AnT0z8h7W1out+OgYoOxtaNO8nEA=;
 b=EA+8L9q2ZXkfCATpF9ySeaLcqVOBYw63hkttEgP1Y07BfcNZZIFLhbonNR0ohb6obmszFsUbrL/lA20FbADo2Y4zbe+aOJBp0c5KMd++d5QnrK9qFEA/hkMByTsLNpflli0VyaSA9KPkdmx9QUMKRKh9SRrz+dfdl0B+n2HIFFciAa9x76jTSzOelcVKOSwh/zxhBQKBaA/THl4jX8d9uIe13J1ZpYheCob/XDNi2QvrbRGHgcG+mpm8QJEtYwweGUGqJHQRD8BDu8djLvXOBLWqeclIehNMWcRntBelsmXkXjGyyuk5gHU8kB4yCxmRcrdcOETRBY2Si63iCTYEKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SA3PR11MB7462.namprd11.prod.outlook.com (2603:10b6:806:31d::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.27; Mon, 15 Jul
 2024 14:34:06 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7762.027; Mon, 15 Jul 2024
 14:34:05 +0000
Message-ID: <9cb7c957-8746-4a94-b8a3-cf3da927511c@intel.com>
Date: Mon, 15 Jul 2024 08:33:43 -0600
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Junfeng Guo <junfeng.guo@intel.com>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-12-ahmed.zaki@intel.com>
 <565ea3da-06a9-481d-b32f-32c8c7240dad@molgen.mpg.de>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <565ea3da-06a9-481d-b32f-32c8c7240dad@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA0P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::17) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SA3PR11MB7462:EE_
X-MS-Office365-Filtering-Correlation-Id: dfeafd74-33c7-4fb0-07f5-08dca4db2e0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnlkMTZ4cXg5SCtDVGtlYS94Z2dkYzdZZEtCTFRRUGZVdGxQQVp6VmFxbERK?=
 =?utf-8?B?YTRjTWlYNUpRbFA4YURZd2RRVGZwcytZK1JBQVFvaWROeE44SGhRb2s1eHlB?=
 =?utf-8?B?ZU1WTlhUZVRMT1lqQ2FjRmh2T2wxQ3R4YnpmOExIdkZBQjRCQXdua0ZIWGFN?=
 =?utf-8?B?RlRHZnl0c1ZvMXpOQ0pGUm92dFpjMzU5TWZNbU9TMGZRM29CSlhjS3dZMTdI?=
 =?utf-8?B?TVoyODVUYTlJRlplZTlvL3Z2VDgvS3pENDBUelM1L3o1ZmluRXdYWEJKZ0wv?=
 =?utf-8?B?cFJydCszV3R6MFV3NTRyVCs0aVFxRS8vNE4yRFRpTDVpSDhGMndVQVprdlFh?=
 =?utf-8?B?THkwOS9hRmdxSUhOQWxISWxWeThtSjhNbmlBdEVZRnhJWG9RZjFJUTlPSlpp?=
 =?utf-8?B?TzlEbTM4STdXNmgwRXdoOHU5aTRnZUdUZWxHRXBkbFhXK0VwODBiYktNZDNm?=
 =?utf-8?B?OE5WVVRsWllXVFBrdk5SMDJRUmdvMHNVRklDWXdUNkVKdW9mcnQyU2tTMkMr?=
 =?utf-8?B?K2gwRzJEQ1VWUG5UZlhIcVZVWk1nQnZ3ZVlBN2RFenFQYUh3UStBUklZeElp?=
 =?utf-8?B?THRpZDArMHd3b0U1OWVqVWVxei91S3VmV0l3cjFPUDkvM05icUhLLzdqdElQ?=
 =?utf-8?B?Q1lJZXMvYVRVd1RlV241Mmp1T3pRUEoremFBendVd3dqbmxnSG92UGdDYlBR?=
 =?utf-8?B?RjF0YzVTbEFoeWswdkh6cGF4TURwSktsSFEyNVBoTmgzb1Z5YXdGbHE3TXQ4?=
 =?utf-8?B?bE0vZGk4c3NsOFN2T0Qya0IrcjNrSzAzRVk0Z3dqRHVGZzVSdUJBUTFMdGdZ?=
 =?utf-8?B?K09hSkdsMHMxb3pPeVJSdWp3VXVWV1Ywd2tNb04zcVdvdU1iMlpDR3duV1Nj?=
 =?utf-8?B?cEk0S2lZZU1YSU03QXBxNHFpQzRuSTZmRXpUR1VibDhDUU11NTByVGt0Ym5l?=
 =?utf-8?B?cC9Ub0VsQW83K0Q5VUVubDBoYXdCSloxVWgybUVhUlhYWjViME45MkxUMUsv?=
 =?utf-8?B?UU1LNUFTVHAwM1RZK09CWkVvWnpHb2hNOUVOeUxNVUM5S2F1dmdwVDdRN254?=
 =?utf-8?B?NVVTaGRhclJkcTliMm1HZGVBbFZnc1o2ak9MYStmYVdKVW1ySGZhUEdWSFlw?=
 =?utf-8?B?dUp6UzlBUmhDakhabjVuNDVraWVROTNRRkhtQWVWWkYxa05zVzRJUkZIWDRE?=
 =?utf-8?B?cy9OVUN4d0hrNXRNZ0dtTkI4Q04wVWZRQ2RPa2FadndVRzA1aS94bGR6U2hi?=
 =?utf-8?B?K2FIL1hqUWhYL1JJdFlmeGpncFhaRU1HL08ya0IvakUvcGptSkpQQkRTbWdV?=
 =?utf-8?B?eHJoT0R6eHVxc1ZtR0tOK0NCRTk2M3QrYVhSZXlRVnRqYVNDczVxTzdYODNU?=
 =?utf-8?B?bWIxK2RxZnNDdFRnWmlDN0Q4b1VDUWJtaWthaDlybTJFcTNaTjhEQUpxZTd1?=
 =?utf-8?B?eldiWU1BcDI4ejViQnVWNzZsZEVQWXB5ZGI4MFoxNVpNOG5OWndFQU9jc05m?=
 =?utf-8?B?ZnVVOXRUcjZ1amJETmZPdFVkdTI3Z2s2SFY5ZWt4YjFscVQ0QUpPQ3k2RGsv?=
 =?utf-8?B?VkRYQTVGUzUxamhlZVczd2pvc2NhWUFMeVFXallKdVBhWGhSM0Y4V0I1WDda?=
 =?utf-8?B?a2RZbThDWTZzNXRVYVJjVXFYM3M1aWhNb3dJQ0J2dmppVzlBT1ExMnNMN1Jr?=
 =?utf-8?B?czF5VE0va1FLbkJQdjA4bHpFQVg2cXZJOGEvNzQ5WVVjYUxkbTRiL3diMHF6?=
 =?utf-8?B?Wkg2QTRjTDZERWUrSFgrOW5MYzRmcENWOTFkTFVvZ2ZsalYwMzQvZk5tR0FZ?=
 =?utf-8?B?TThxR0c0UDdzWGtZc21xdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXJSZ2Nlc0oyMFo1WERNK0J6TTlqbzFOMnFWamtSdlFXRXBiQzlzQ3l5dzFK?=
 =?utf-8?B?OVcwbUlkckdVeENYQXVpM09PUGxOLzNjaVBrMlNKam9JZXlMZHF5OUtPQzAx?=
 =?utf-8?B?TWttMHlwdE9IYlQwV0VRZzNYaVJFZFlERUxjNXlnTythTnprT09ldXBqazhm?=
 =?utf-8?B?S1UvYmdTQjdzdDJjZ0pXdlBLN2wxemNhYXBRaHlIejNEaHQvc0xSNWxLcTc4?=
 =?utf-8?B?TUlqdUxYL1pzMDhZdk96dVEwaXo1K2JmT0lWM2VFUkFkbFFMdHBkWFkxSzRU?=
 =?utf-8?B?TjRkcFc3dGtDRkdDbXpUcmU3QmVuanNETkVuaVAyTFludjY4NlVKblBPYmUr?=
 =?utf-8?B?cElYR0V1bW1mUDdzUStLcGNWRmVsVGVIcmNUK3NuRkVCdmRtMk0rNjNFMmE0?=
 =?utf-8?B?aVRjWnp5NTNrUUtObEtBL051RTFKMHUyLzMwNkxJaUptYncrMnhnQmpGRFc2?=
 =?utf-8?B?UjQrZlpCTTZVQXhkRE8ydis3UTRtMy93eHdoYWJjSGJYQk01NUVwWWNRUndH?=
 =?utf-8?B?Mkg3c0w5dE9VVXhrcjNIVHVuOStOS2U1V1VkMlNvcWoraEh1M2dTRHdpQUZS?=
 =?utf-8?B?azBwVkZ5Q0dXdjR5NkJnNTBmNlNsQ3pIVDRNOWtSWkFCZ0xqekhLZ0JRdFRL?=
 =?utf-8?B?WTcwckZpZFlVY2xMQXJnb0dOdUlxOEVBTTM2OXFWelNDa0RreWEvZzFiZG1i?=
 =?utf-8?B?cTdxTmpSb0JuUGRLQnBUUlpOWEg5WXBPc0JaRjZTYlpOSHY1NXBJSk92L3BE?=
 =?utf-8?B?djBEOFVDT3hwbFVLV0gxREhPS3ZKS3BZSzJwV0JDQTFrR2thcXltaGtiNHly?=
 =?utf-8?B?azZtU3VId2RiMk1zWk1iY0NSVFg0SFNZRXVuZStSMTNPdEhrOGJ0T2M1cnZ4?=
 =?utf-8?B?SWJPcURVeG1kN1NZTVlxaVBGTktDUlRaR25YZ0xETUREeHE2WFRmdmsrTG9n?=
 =?utf-8?B?VWt5emlzclQrY21iRFM5akFVKzliTnNTNmVMSmtsc3JXTGdZVERtU2V4akVa?=
 =?utf-8?B?UlFZN3prZFBMTUtuYUUvazNoZHdNd25aNUhTMjJucFpPY0lRbTNLRGF0RTNS?=
 =?utf-8?B?bFdwZEpDL0pWZ1IzaDZGenYvK3JKWnBJajRiOHBMV1k5eTBCT2RWRC8wd0VS?=
 =?utf-8?B?RDh2eGxDUEJwV0pNM3BpQ3FtT1JWdWs5WGtVajZnNWhpN0ZUVTdDdU1RVUJi?=
 =?utf-8?B?WFVubEVVOEdzRmEvSXdSWFcrUFFWckpBRUlIcjhSRGgzQzJjZVBHaHdDV3N0?=
 =?utf-8?B?NU1HT2o3bkJjcnBURFdrVlNyWEwwVHNpYURMcFZLMW1KVEpORTdnUlFUZ2Nj?=
 =?utf-8?B?cWx0NUNubXJFTkpKSmw0VEN2ZFpvb2hCd2R2WGJvc3VCT1EzNWoxYWtVd0pL?=
 =?utf-8?B?QzdrTGkzbmVRZkNYeHFlVWlWSkpPYURjSHFDTjlydmZOZjNGK05rdFRqekdw?=
 =?utf-8?B?VDZEZkxKS1hCN2J6eVlneFhBUEdzRFdNVjJnQ1hmU1IzSDFrWGErL0ZzTjJ6?=
 =?utf-8?B?SkI4amVYc0M5SzJrRm42ODFFY01jNHNJZzBoVHFIeEZBQWRSb3prTDcyZys5?=
 =?utf-8?B?elMzSmVoODN5RDMxZUJKdnVxbXBvbHJVRHBQY1JPait3Z3pvc3labG9WVmkx?=
 =?utf-8?B?aVJjSXlDOXdLU0dROHlpRmNwK3RpN1dka3phdVpWamJONm0yZko3VXYwa2tm?=
 =?utf-8?B?UUgzaWxUc2NHY2V4WjE2MjRhdDBnbWhuendINUwzYWtrNjY0WkVrY3R6U0lD?=
 =?utf-8?B?MWFtQVdkbVFWTFVrdERYdWRXN0xKeG1PemdtdFVrZUEvYURlWXRzSUs5S1A4?=
 =?utf-8?B?cFdvdjR2TlduTHpieUhVbHdXRFlJRU45SS96akZUWm8wbmNXRERia3Y1d1Qy?=
 =?utf-8?B?Wmdad1FWQ0VrR2ZaOFYrUjhWZ3k0ZkZLZUhZZS80Y1BhdGdlZFhxU29JSzVh?=
 =?utf-8?B?UWRib0JKRDJQekU4Ry92YWlIdERwRncvOXpGTUE3cE1LLzdMTnRwMTVpbm5i?=
 =?utf-8?B?dXU1VlRlbk5pMjdrZi9QcnJLa2R0STR6aitZb3JRb214VUdGUEZQUmJmUnZq?=
 =?utf-8?B?RExjV0Z4ZytxZnNsSTRBb0ZuV3R1Z2x4VERiZjI3dSsxbjV3ZDZteE5jUnpy?=
 =?utf-8?Q?NTuCjt5PaKxJh9Sg3LyK8hvRC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfeafd74-33c7-4fb0-07f5-08dca4db2e0f
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2024 14:34:05.8538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7dO3HvF3Mb1CB2kCxMTlv/7dp/BlVzzBFlLQkL9vBr0nDxuCCt8SCbBQEfeKf3InRubLpLW38BNUVj2f1U6Sdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7462
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721054055; x=1752590055;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2/RNF2vrtXE4F6x1PCnxFpsZAEnl+N672u9V1un5pkA=;
 b=SQidSDlggFB6cKrJOuY6Yx7TZ4vsKp4ch4/8JKgPjRqkcmGGVkjWtZpK
 4YUhyJAdF9RHvrQgseDq8U/eTwrka80ssefSjoAKtN8BdV6QnEK1PGvuE
 JH4/xTQk1F6doPwesbdigwaAjW6r5sWFTWiOsvxq91BdnnrXA1vsI1YmZ
 hhl25oMk9ngUAqyz1bXRmTm2M1P7lIQVmLsTfpf7pjVwQaOMhTqDUonxW
 IsaoMUEZ2mnwUkrd3E1xc6BVF5IXArKj9IUzFCv/a6TK7hk96j02OZRXd
 lxz8pHQ5Qr5M45oxej7u/oPewqF7prKPbGPMsVe3cVJ2ONL3GsnVeAhbx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SQidSDlg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 11/13] ice: enable FDIR
 filters from raw binary patterns for VFs
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, Marcin
 Szycik <marcin.szycik@linux.intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-07-10 11:42 p.m., Paul Menzel wrote:
> Dear Ahmed, dear Junfeng,
> 
> 
> Thank you for the patch.
> 
> Am 10.07.24 um 22:40 schrieb Ahmed Zaki:
>> From: Junfeng Guo <junfeng.guo@intel.com>
>>
>> Enable VFs to create FDIR filters from raw binary patterns.
>> The corresponding processes for raw flow are added in the
>> Parse / Create / Destroy stages.
>>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
>> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
>>   .../net/ethernet/intel/ice/ice_flex_pipe.c    |  48 +++
>>   .../net/ethernet/intel/ice/ice_flex_pipe.h    |   3 +
>>   drivers/net/ethernet/intel/ice/ice_flow.c     | 106 +++++
>>   drivers/net/ethernet/intel/ice/ice_flow.h     |   5 +
>>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   8 +
>>   .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 404 +++++++++++++++++-
>>   6 files changed, 566 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c 
>> b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> index a750d7e1edd8..51aa6525565c 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> @@ -4146,6 +4146,54 @@ ice_add_prof_id_flow(struct ice_hw *hw, enum 
>> ice_block blk, u16 vsi, u64 hdl)
>>       return status;
>>   }
>> +/**
>> + * ice_flow_assoc_fdir_prof - add a FDIR profile for main/ctrl VSI
> 
> a*n* FDIR?
> 
>> + * @hw: pointer to the HW struct
>> + * @blk: HW block
>> + * @dest_vsi: dest VSI
>> + * @fdir_vsi: fdir programming VSI
>> + * @hdl: profile handle
>> + *
>> + * Update the hardware tables to enable the FDIR profile indicated by 
>> @hdl for
>> + * the VSI specified by @dest_vsi. On success, the flow will be enabled.
>> + *
>> + * Return: 0 on success or negative errno on failure.
>> + */
>> +int
>> +ice_flow_assoc_fdir_prof(struct ice_hw *hw, enum ice_block blk,
>> +             u16 dest_vsi, u16 fdir_vsi, u64 hdl)
>> +{
>> +    int status = 0;
>> +    u16 vsi_num;
>> +
>> +    if (blk != ICE_BLK_FD)
>> +        return -EINVAL;
>> +
>> +    vsi_num = ice_get_hw_vsi_num(hw, dest_vsi);
>> +    status = ice_add_prof_id_flow(hw, blk, vsi_num, hdl);
>> +    if (status) {
>> +        ice_debug(hw, ICE_DBG_FLOW, "HW profile add failed for main 
>> VSI flow entry: %d\n",
> 
> Maybe: Adding HW profile failed …? (Also below.)
> 
>> +              status);
>> +        return status;
>> +    }
>> +
>> +    vsi_num = ice_get_hw_vsi_num(hw, fdir_vsi);
>> +    status = ice_add_prof_id_flow(hw, blk, vsi_num, hdl);
>> +    if (status) {
>> +        ice_debug(hw, ICE_DBG_FLOW, "HW profile add failed for ctrl 
>> VSI flow entry: %d\n",
>> +              status);
>> +        goto err;
>> +    }
>> +
>> +    return 0;
>> +
>> +err:
>> +    vsi_num = ice_get_hw_vsi_num(hw, dest_vsi);
>> +    ice_rem_prof_id_flow(hw, blk, vsi_num, hdl);
>> +
>> +    return status;
>> +}
>> +
>>   /**
>>    * ice_rem_prof_from_list - remove a profile from list
>>    * @hw: pointer to the HW struct
>> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h 
>> b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
>> index 7c66652dadd6..90b9b0993122 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
>> @@ -51,6 +51,9 @@ int
>>   ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, 
>> u64 hdl);
>>   int
>>   ice_rem_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, 
>> u64 hdl);
>> +int
>> +ice_flow_assoc_fdir_prof(struct ice_hw *hw, enum ice_block blk,
>> +             u16 dest_vsi, u16 fdir_vsi, u64 hdl);
>>   enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buff, u32 len);
>>   enum ice_ddp_state
>>   ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c 
>> b/drivers/net/ethernet/intel/ice/ice_flow.c
>> index 79106503194b..99d584f46c23 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_flow.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
>> @@ -409,6 +409,29 @@ static const u32 ice_ptypes_gtpc_tid[] = {
>>   };
>>   /* Packet types for GTPU */
>> +static const struct ice_ptype_attributes ice_attr_gtpu_session[] = {
>> +    { ICE_MAC_IPV4_GTPU_IPV4_FRAG,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV4_PAY,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV4_TCP,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV4_ICMP,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV4_FRAG,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV4_PAY,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV4_TCP,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV4_ICMP,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV6_FRAG,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV6_PAY,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV6_TCP,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV4_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV6_FRAG,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV6_PAY,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV6_TCP,      ICE_PTYPE_ATTR_GTP_SESSION },
>> +    { ICE_MAC_IPV6_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_SESSION },
>> +};
>> +
>>   static const struct ice_ptype_attributes ice_attr_gtpu_eh[] = {
>>       { ICE_MAC_IPV4_GTPU_IPV4_FRAG,      ICE_PTYPE_ATTR_GTP_PDU_EH },
>>       { ICE_MAC_IPV4_GTPU_IPV4_PAY,      ICE_PTYPE_ATTR_GTP_PDU_EH },
>> @@ -1523,6 +1546,89 @@ ice_flow_disassoc_prof(struct ice_hw *hw, enum 
>> ice_block blk,
>>       return status;
>>   }
>> +#define FLAG_GTP_EH_PDU_LINK    BIT_ULL(13)
>> +#define FLAG_GTP_EH_PDU        BIT_ULL(14)
>> +
>> +#define HI_BYTE_IN_WORD        GENMASK(15, 8)
>> +#define LO_BYTE_IN_WORD        GENMASK(7, 0)
>> +
>> +#define FLAG_GTPU_MSK    \
>> +    (FLAG_GTP_EH_PDU | FLAG_GTP_EH_PDU_LINK)
>> +#define FLAG_GTPU_UP    \
>> +    (FLAG_GTP_EH_PDU | FLAG_GTP_EH_PDU_LINK)
>> +#define FLAG_GTPU_DW    FLAG_GTP_EH_PDU
>> +/**
>> + * ice_flow_set_parser_prof - Set flow profile based on the parsed 
>> profile info
>> + * @hw: pointer to the HW struct
>> + * @dest_vsi: dest VSI
>> + * @fdir_vsi: fdir programming VSI
>> + * @prof: stores parsed profile info from raw flow
>> + * @blk: classification blk
>> + *
>> + * Return: 0 on success or negative errno on failure.
>> + */
>> +int
>> +ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
>> +             struct ice_parser_profile *prof, enum ice_block blk)
>> +{
>> +    u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
>> +    struct ice_flow_prof_params *params __free(kfree);
>> +    u8 fv_words = hw->blk[blk].es.fvw;
>> +    int status;
>> +    int i, idx;
> 
> Use size_t as it’s used in arrays?
> 
>> +
>> +    params = kzalloc(sizeof(*params), GFP_KERNEL);
>> +    if (!params)
>> +        return -ENOMEM;
>> +
>> +    for (i = 0; i < ICE_MAX_FV_WORDS; i++) {
>> +        params->es[i].prot_id = ICE_PROT_INVALID;
>> +        params->es[i].off = ICE_FV_OFFSET_INVAL;
>> +    }
>> +
>> +    for (i = 0; i < prof->fv_num; i++) {
>> +        if (hw->blk[blk].es.reverse)
>> +            idx = fv_words - i - 1;
>> +        else
>> +            idx = i;
> 
> Use ternery operator?

(hw->blk[blk].es.reverse) ? idx = fv_words - i - 1 : idx = i;

better readability with if/else IMO.



>> +        params->es[idx].prot_id = prof->fv[i].proto_id;
>> +        params->es[idx].off = prof->fv[i].offset;
>> +        params->mask[idx] = (((prof->fv[i].msk) << BITS_PER_BYTE) &
>> +                      HI_BYTE_IN_WORD) |
>> +                    (((prof->fv[i].msk) >> BITS_PER_BYTE) &
>> +                      LO_BYTE_IN_WORD);
>> +    }
>> +
>> +    switch (prof->flags) {
>> +    case FLAG_GTPU_DW:
>> +        params->attr = ice_attr_gtpu_down;
>> +        params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_down);
>> +        break;
>> +    case FLAG_GTPU_UP:
>> +        params->attr = ice_attr_gtpu_up;
>> +        params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_up);

<..>

>> +            vsi_num = ice_get_hw_vsi_num(hw, ctrl_vsi->idx);
>> +            ice_rem_prof_id_flow(hw, blk, vsi_num, id);
>> +
>> +            vsi_num = ice_get_hw_vsi_num(hw, vf_vsi->idx);
>> +            ice_rem_prof_id_flow(hw, blk, vsi_num, id);
>> +        }
>> +    }
>> +
>> +    conf->parser_ena = false;
>> +    return 0;
>> +}
> 
> 
> Kind regards,
> 
> Paul
> 

All other comments will be fixed in the next version.

Thanks for reviewing the code.
Ahmed
