Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBD6C083AD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 00:13:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0495847FE;
	Fri, 24 Oct 2025 22:13:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M1PP-x8VYEJm; Fri, 24 Oct 2025 22:13:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C62B8480F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761344000;
	bh=zgBbuzvOdJ920/Q0dJUrNCJINFpk7Go2OaFBNjRtgSE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cNRFNBrYjGDgP8D1zFcdekVd6t9fxAFGsFTrlUoqpkH9YKbTBvNXVt2KpAlWA+C76
	 zbVH9GBPPCePzMhyjVi/jKKFaBDeOqYuRuAKuwRYKS0j8WOsAUsXnBMrt6hX/CEoCq
	 dXw60lZWzzIAWoTzq22LKsjdBvRvc+S/phhyZk/T29QDpR4Hkl907S9G7BevPxWrUo
	 ILcTfO2yNQGo/Q5oH4jc8fY0Rz8/aX20BwN23n3nwQXKm7xqmoe5ibH9+61JdLGTr/
	 EtsqHyTUSM5HyagS6eSXL+Kfquvdt2JZb5wJFnAVrkjTGMbRsd58UrvLOuHEIzuA06
	 kHT2+P+e8MA8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C62B8480F;
	Fri, 24 Oct 2025 22:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D84743F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E693407E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5G3KSyUzIzJh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Oct 2025 22:13:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C6DF740871
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6DF740871
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6DF740871
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Oct 2025 22:13:17 +0000 (UTC)
X-CSE-ConnectionGUID: Rgpe+XGwS9yivLtMO50DwA==
X-CSE-MsgGUID: CPCEnb/bSuykOZ2vEBw78A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80961562"
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="80961562"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 15:13:17 -0700
X-CSE-ConnectionGUID: HLZcQ9QfTLapgNWO5nN2bQ==
X-CSE-MsgGUID: 6ARpnE1kR6+49gbYDsL7ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,253,1754982000"; d="scan'208";a="189661292"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 15:13:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 15:13:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 15:13:16 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.39) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 15:13:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p4Fp1hX6RzvL1XZd1AkFH2u9EzDJ4a9AguiX5AS3//d6lmWynb+5spYPKKDhYAFmW5lsu2QUdxaPwWvpe9Ed23K02ITAQ27/2qpieXtcNRyo6KaMjIahUOJ1yYI+i3VLVRfi6SQ7YLVaHzpb5gNdSgTrS5B4VBZtDQ0lzBmEjbT0RSgysdtqpGJFsOwGsV0IoyVMjd3XePw14ITqFoK909FV1LuweFzKS0X6Cu/jNCkxIXSQOEaOGu+mVbR0DkEom/fHvU3KKxjVxXPehztzgnbGBeIkN/y4AM0rqu9XdgiqOj1qRDGpTGUFzm9wwvH3alzvmBqXPvMFYmAkhT23UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zgBbuzvOdJ920/Q0dJUrNCJINFpk7Go2OaFBNjRtgSE=;
 b=LyRmrz+jDNpPdh3+yY1Ag0ly0VYznqCsem9o1zfcHYHjb4T2XQS12rDMBm49jBoKNzeWD6eP8xe5qrJREjYpNjeHhkB5NTs3LL7B3z43pen0zGJ8KhYyjODME2xKpizfA/vY+U6QanEHp8rumMPerxlYNLotPuYTZiWh3q/asUrZjFm3UOolNNDTdvxdz9F55HVF9l8MVxyKy0fClgcgQIdubHmhgEIRRD457+/By8YuzJugHBp3hwAnu0l0E7ueeHIuGPQYZ0vtFzOJOKFSdrBHNZWMNLAmfDYXEuJegv0LlU7stRzyl2Jf3WGG+UgEGDZ4NyJKKtqhHTpYVBblQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA4PR11MB9348.namprd11.prod.outlook.com (2603:10b6:208:56b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Fri, 24 Oct
 2025 22:13:14 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 22:13:13 +0000
Message-ID: <51d3d37f-273f-42ab-84ee-d2bcf6c070e7@intel.com>
Date: Fri, 24 Oct 2025 15:13:04 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <jacob.e.keller@intel.com>,
 <kuba@kernel.org>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
 <20251022131225.2304087-4-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251022131225.2304087-4-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0261.namprd03.prod.outlook.com
 (2603:10b6:303:b4::26) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA4PR11MB9348:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cc9b00c-0b41-46a2-352d-08de134a865a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N0JZSE9oUDhCcEIyOWRzdk9oaFlEdHA3dGVKM0t0ekdwOFhCVlBkWWtDOS91?=
 =?utf-8?B?Q2xZYnV2c3kxaDlKR0JNWlBxb0ZWdkVwbDJpV3ZlSGhmeHFUNFJuZStDVVdQ?=
 =?utf-8?B?T29wTUpQT0pCWVI4Q0Rqc2JqUzhGYTkxUmdocHJmYjhTdmphV2M3L1VuSHBk?=
 =?utf-8?B?RnJnTkR5TC84dmVuTjFFUEpuQnlaY0FveVdYM2dWcThrMmdBUjdmMTVVbUdS?=
 =?utf-8?B?eWFsWW04dFlybkVUTElWMmwyNWc3Tjl4ZWJBSmgramxoYkZKbGNXUUNEUXRU?=
 =?utf-8?B?TXZVZUlMVktIYUFKazJ5RTJHbU5COGRuK2U1bVVHVjRpcVI1UkhQbmtUcXVG?=
 =?utf-8?B?clFVdlp6ZzU3cy9IY3NBbURWZDZqNWNkV3FIQ0xma1JibmhpMWVLVVQvK05t?=
 =?utf-8?B?VE83REVuWldlcWxaV3BQd2pHTWFhMVpUQ3J6WmlSN2JkOXZLSVhoSWVpcWlK?=
 =?utf-8?B?UEV2SHVkT2dxaUI0bjRhRy9mY2kxajZ6SnpIMXAzZE1tTzcwUDBkMGlhNlNM?=
 =?utf-8?B?NW5TaDJJeFlqa0d5Y09rSGZQTnd2VkptcitDNHh3d3Y2SE40QitEQms3VVpC?=
 =?utf-8?B?b0dHY3hGaTJCWmVRdERyY3RsMHlndzhvZ28vOFoyYnozOGhwenpMd1I2QjhE?=
 =?utf-8?B?Z3hscjJaamM1SUFkV3NsVTFBSS9FSXRSdVBOaGF1bG0xRVhnaHF1TnNzSTNH?=
 =?utf-8?B?T1BtckxPcnVuTGpodjFoUFFlOXdidlovajR5TmwrK3AzWkRCci8yUksrdlRT?=
 =?utf-8?B?bTJTMjR6ZStCdUs1OFdKTklpNUhvN2p4Q0RKMWhLbVRVWWo1OWtBNW9mbis1?=
 =?utf-8?B?SXBtbTl4RE4zUU55SDRGSlJWUUJ4bG9vcm16R2lmU2hxcm9hWXBxYTRmM2J1?=
 =?utf-8?B?VmpmOTN2eXpDbk5rN1ZHa3NVa3RnZU00eVh2MGd0QS9EZ3c5VGYyMUhMcm1E?=
 =?utf-8?B?SUVLaFFqV1B5ZW1OOC9tdkZ3dnViSE16VU1JYUtvd3U3NVNud2E4dTVoSXhB?=
 =?utf-8?B?S3BFYVhIWmNZWTV5VndJUW5CVWUyUnN0VlhOZVY0ampFYU5sVkF0cE0xeWFI?=
 =?utf-8?B?ck02Y3NGdjhRTm1weGtEZkY3djBwdDB4V0xqaitvVXVWK3lvbDZDbjgyQzRL?=
 =?utf-8?B?a0dqVlE2WUxTbFpzU2orK3VEaCtMOG5Va3dzU2VUZS92UXUxRG5iZUVITmk5?=
 =?utf-8?B?RVIxcW4yR2FsSGRYVCt5OUwrWDJpNHF2Q3EwUVR2SmUrcitEaUh3c0RxSkdZ?=
 =?utf-8?B?dFdJdDd4cXJKeUc4Z2VpS09jU2xUelRsZXdMWThkVmpRTi95THJVaWUvNEJp?=
 =?utf-8?B?cFhvWmw4ZElXd2FOL0dCSGpRTmdPaGlhVzkrRm4yRzdOTFZ6RW96bFBIbHVU?=
 =?utf-8?B?RU5uZHVjWlErWmRPeFU3eGNOaVQzczlJOEJyQURjVUlPVGt0UUFFVE9oR1B2?=
 =?utf-8?B?S1cySXFVdVcxbmxTeHROTG5TbkxZNmpUcWVLSnZXTnhkcU5CY1BXZk5scENJ?=
 =?utf-8?B?MXNIRWNYb3RyZEZ6b3YreCtVWkNOTnJROTQ4anFVSjZBMmJsZkJlWXpmcCs1?=
 =?utf-8?B?UnpGZnZCTDlFeFdlMWdQTXJmWjF3Uml4YjAyV0FQQ1puUDZ5anBLMzB6bys3?=
 =?utf-8?B?cXNFMlBjdDhoOERNM1JxNVdXNUpDa3c2eFNxMkZaeTdqK1FMZHhrSDRVb2dF?=
 =?utf-8?B?RXRDajJRTUxCV0pISGdxUU16MFpwbXVVSFQ0c1V0c3hzV0pYQVZBczRaRUxj?=
 =?utf-8?B?d1ZrMmFyTTNiNzdLUUVpNlRHWVMvb3EzV0hIdXNXd0MrMCtxazlCaDdkdG50?=
 =?utf-8?B?bjlvc0V4TXZrR0Z2Z3FUaW9UMHVsU0ZYRXBlM2t0S2xMNGtCVXZYY0RiTFdJ?=
 =?utf-8?B?b2VaRnhlWlhySlo0VytLU3d5QldKWVpnV1J1Q3F3cTFOV1VjUGVtYWVBRm9N?=
 =?utf-8?Q?RK5CLHA0vJcKQ2buaqlvl8slM81jFJy5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjZPVGNLVktndjFkVkJ5RzZkTzUybVVycVFTME83MVV2VXcya00valhqSlVx?=
 =?utf-8?B?eFR6aXRZa1hCYzFPT2V2bW84dTF5eUUzeFY0R1pvZlM4TUFLMkZuS09meEVU?=
 =?utf-8?B?L3lSYk40QTZsRi9vU0F4SHJCMmsrZmdoQWFlQ3lnWVFwUFk5ZzlqMDlPRzY4?=
 =?utf-8?B?eVB5bFFYK0hVZDZVL2VkcTZGS3lZdVU4OFBSdEM2eGUzYm4vWUdSRHFmMW9M?=
 =?utf-8?B?Y1ZyVmY0TkxwQnFhSExLSVh2d2ZPYjdQMzVvd1RwUTRXQk9aTGVHMlV0cXVI?=
 =?utf-8?B?R1phU0dMSjJzM2NLOUtMWjVSREJzWjQrTjg1VU1ucUVMQ1UvWmkzc1BjYks0?=
 =?utf-8?B?MEVPN0VxY0xSNHBlYUsxSFJtMm0zd2NtOUJsWGMwU0U0ZGg1T3hmNUNYVWlH?=
 =?utf-8?B?SXE2bHQvMkQ3dzlPU2NaZUpKSStSRjNDRmRnYkxZRWViTVVhc3J2NCtNZVdi?=
 =?utf-8?B?b09tdXBocTNHOVdweXVRZTdXeVhidmRLZXJzblJ6OHQ1VkVTcTZoczZ0eVh6?=
 =?utf-8?B?eG0zbnd6a2JWRHFhV3lwSGU4UU5BRVAvaUlic3NYdkFtdE1NNVB1d2FDY1hJ?=
 =?utf-8?B?KzNmYmxBOTlQVHZkancyYzJBMDYrRi9WTGRNcEZxc0h2dnB2MnlrM29jTTJM?=
 =?utf-8?B?U1BIOU1MekxwNTVFUEw1UWUxbm5WTkpkblVERHdCekJvOXEvaFFHeUhIOHVG?=
 =?utf-8?B?MjZCZVlCN003NDZZM2s1eVBhR1VSdVdnUytYYy9ldnRaMGlqNTFET0dSY1ov?=
 =?utf-8?B?MnZqN2k2UnpZdGJUb2Nrc3JZcUF1UlQyV2ZpWHJSbndDYTY2dVp0dTdLaWhN?=
 =?utf-8?B?UkY1VGdSVSs5aFZWNWY3Vm40YzVrTUpRZytIWlF3TGsxSHhrWURWdVQrRWNa?=
 =?utf-8?B?YkNZaFRMZXJEKzNLanQ0emttN2xyUVloMUNvckdlb0xWeTRSVXFGOFIxVGlK?=
 =?utf-8?B?MDl3UGFIMGNiSHNwVFgrTEdTZGcwU0hEbG96akVwWE5Qd0tiWTZEeldMbGNo?=
 =?utf-8?B?UlRxeE9VazZtdGJoTktPUGR6endBLzRZZW1MTVlNWWlFTWZlaGVWU1RHZTIw?=
 =?utf-8?B?Q2ZBdnNrOUU2aDFOdlY0RDdtOExrK2hMSFVzTW53ZHFmYWtyVmxHeUNDeFpL?=
 =?utf-8?B?bkNhTVR4cmVDenNVRGJndFZFNm41REcwOXIzT3RLWGh1Mk9jQnZ1cmYyeGpR?=
 =?utf-8?B?Ly9YVFBxcEVjUEw4K24rK1JZdzdoMWljOHNCU0ZvOTVCdm1qanEvTnRoeGZK?=
 =?utf-8?B?a1dINGMrNjE1Mk9wV2JuYW0xUFlSNHA2ekg5NHRjMkdHNWNaS3MzRllsekta?=
 =?utf-8?B?QkMxWmozeVN3UGJ5K2FhZVZjb2JsSVpoRU81ZUlVTStybVF4T2dpb2RZTFBD?=
 =?utf-8?B?RTBZT0tHSU9PWFp3ZVd2Nnp0K2ZCNldjYXVpalNIWDVlaWVIVjlFbFMyRU8x?=
 =?utf-8?B?TnNRSk9uMnRESXBkcGdLS1VsTldzeE5lTmt0OUppQ1BEVnlDYkplZXlWalBm?=
 =?utf-8?B?Nzk0R3lFVUNBWFJFNXdpRmxGVWgramxKY1hHcjVMR1BCMC9ya3R5UXJoTFFH?=
 =?utf-8?B?MkFuNFNXMTJsZWVPellva2czSUFVSE4rUDJJU3pkM3NwdlJxUjJVOUNZakwv?=
 =?utf-8?B?Tk1KaFNpcWNHbXp2YXNidTJpQWw4YUlCVXlvckJ1bXhSU2RxTDBURzlzVDJs?=
 =?utf-8?B?ZGNJc1hWTk1DRG84VGxlU2RXdzZFVHVhakFCK0xKT2R1OCttd2x0QlZXSXFS?=
 =?utf-8?B?Y2lDODkxelN5MlFITXh3VHBXYURqeENOTjBuK3FLNTNvWkpQU1VLMTZ1ZFBu?=
 =?utf-8?B?bDAvSVpGMmZ4N04vVVNINDE2RWVNL3lIa204N01KT3dyeWhiSEVnRG55YUVR?=
 =?utf-8?B?eFZvOUcweFYyUUpUN3NGYStqTG5SQ2dnemM1eFB4SmxvVFBjNmRQVFVOcVpC?=
 =?utf-8?B?ajVBMmpTaGM5b2FtOUtnRy9qU0treTYyd2xnZXR2ekxsdXhINE5mQXBSTUZq?=
 =?utf-8?B?U3Rmb21GYkFBSnNxUDZ2K2t2OU9jczNxdW9lNWNEc3hiOEo4RWpId2RWdFVn?=
 =?utf-8?B?eFIvcUNJakpvRXU2OTN2cHArWGsvaGE1NGJYZlpmRVRoZHEvTmJLR3BmQjR6?=
 =?utf-8?B?OHZsSU9DdTVaYkFobUhXUGtFSG82SmFKUW1jWGdFQXMrWlR1SlErM3JBZWZj?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cc9b00c-0b41-46a2-352d-08de134a865a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 22:13:13.7973 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QlqqAFXwr4uHuhE9+5lnG0WtHnuQXtnckb5aIlIIx0iX4iffbGbhsx/+9jl/QdAWypQkir2R1a8j9RsgBygLwtb73nDQb8IOtteuLoJmuxQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9348
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761343997; x=1792879997;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5iOzKlpK+Q2WQQNUBtwCHOQLyn24RKGdBHx5zva4ZNE=;
 b=l1E+RSFmYDeuK96+HqjST3OOQwvT2OIS1lmtSxwtyrCXD2BgPj+jjP68
 Bt2Nz+L/8DEypM9u17LtL7MplPyiOpBZrP3pYsB/9ybzrqo97IJkXQjGq
 73xlhpzb7zMTsSok/XC27n2v0Hxy+hKeXw7zoZbb6176NTFXWgqNZS4a9
 QXpXodbTyelGy6V3gL7rr2UXY801va/YkPeBJxT1kzaZzewp34UgbrA4M
 nthptL9uV5PbbmO137nFJG5i2K/zjmW+iQ66c1frhHgn3p42bSRVdbn/c
 TLi+cozSOjxsdc0nEjLbPVItzp8HQc3CHr6g72Qzr0ZCFuwjnOl8O0b4p
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l1E+RSFm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/6] ice: implement GTP
 RSS context tracking and configuration
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



On 10/22/2025 6:12 AM, Aleksandr Loktionov wrote:
> This commit implements the core RSS context management and configuration
> logic for GTP (GTPU) protocol support in VF RSS operations.
> 
> Key implementation features:
> - GTPU hash context management with pre/post processing functions
> - Context index calculation and mapping for different GTPU scenarios
> - Integration with main RSS configuration flow via wrapper functions
> - Support for IPv4/IPv6 GTPU RSS configurations
> - Rollback mechanism for handling RSS rule conflicts
> - Hash context reset and cleanup functionality
> 
> The implementation provides comprehensive GTPU RSS support by:
> 1. Adding ice_add_rss_cfg_pre_gtpu() for preprocessing GTPU contexts
> 2. Adding ice_add_rss_cfg_post_gtpu() for postprocessing configurations
> 3. Adding ice_calc_gtpu_ctx_idx() for context index calculation
> 4. Integrating GTPU logic into ice_add_rss_cfg_wrap() and ice_rem_rss_cfg_wrap()
> 5. Supporting context tracking in VF hash_ctx structures
> 
> This completes the GTP RSS infrastructure enabling VFs to configure
> RSS hashing on GTP-encapsulated traffic.

Missing Sign-off

> ---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h |   48 +
>   drivers/net/ethernet/intel/ice/virt/rss.c   | 1387 +++++++++++++++++--

Also, a couple of kdoc issues:

Warning: drivers/net/ethernet/intel/ice/virt/rss.c:802 No description 
found for return value of 'ice_hash_remove'
Warning: drivers/net/ethernet/intel/ice/virt/rss.c:1023 No description 
found for return value of 'ice_map_ip_ctx_idx'

>   include/linux/avf/virtchnl.h                |   30 +-
>   3 files changed, 1310 insertions(+), 155 deletions(-)


