Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA470929E98
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 10:59:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2A9C80E7C;
	Mon,  8 Jul 2024 08:59:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zUphoP72AWh7; Mon,  8 Jul 2024 08:59:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCEA380E6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720429159;
	bh=/7qWv0mvx67t2xEt4GwpOTkpfccbDHltvfOTX1DEvHs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q/whdjvEEVh8Jz+lSIo6QRbkLVOrH0w3kJdWkZkw17JDde4WDf3h4DhgsjFTBpU3X
	 ymL0nWx5nYYBP/CWEnUFPwhMZdM27UR1rxVFc7SYjx3H3+5IbhAVc3BkFxybQqbz2+
	 DZacApDABc+Da8Cwwsqe1jlzgv8W2gvbcGOMKsdXlNdEJ39QH6sX3o0YkJoR4v55bY
	 xkaHG/IiBTdrLgK57dOlyCRginSNjuD8Ex0F1uB5iGpKYYz5De1vkNeGYdYMefTTQj
	 Umk58fVV0bdDfOiWrC48goZBiLI8doUsxRhJUWogtRvgOAMANshJ3zY7y3DclUIEf3
	 llbz/ERj6seag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCEA380E6F;
	Mon,  8 Jul 2024 08:59:19 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 768081BF20B
 for <intel-wired-lan@osuosl.org>; Mon,  8 Jul 2024 08:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 62B8380D93
 for <intel-wired-lan@osuosl.org>; Mon,  8 Jul 2024 08:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xfVBt3Iyu-SI for <intel-wired-lan@osuosl.org>;
 Mon,  8 Jul 2024 08:59:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3FFFF80C47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FFFF80C47
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FFFF80C47
 for <intel-wired-lan@osuosl.org>; Mon,  8 Jul 2024 08:59:16 +0000 (UTC)
X-CSE-ConnectionGUID: jQT6dk9BS2mf6ic/VYnUUA==
X-CSE-MsgGUID: 96ii5SJETzqTTxnOmd4+sA==
X-IronPort-AV: E=McAfee;i="6700,10204,11126"; a="17574337"
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="17574337"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 01:59:16 -0700
X-CSE-ConnectionGUID: XIgtXvj8T8SddxJzKZUjFg==
X-CSE-MsgGUID: /cTUn46BT1O7GDPJkrKMTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="78186087"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jul 2024 01:59:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 8 Jul 2024 01:59:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 8 Jul 2024 01:59:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 8 Jul 2024 01:59:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKGBxVPf3C2z+y/UIJuu3rDYMBU2bTZmA4Dei85sDw07SYYqniAlvU1HlmQVySnvfspmkLwnmBaZUxamOCPDWvjp6R0ChPPfRGQ3qAnj59LMeRSu0AC7BlPb9mfLeRf0BJd1A1fSjuprDJZuk2oZgvpyuqdW/R3BO+oqAFh3hC6uYEmxs5fDO4+5pxnYOEYwxDGtOzzsQF7KrPFBchZb0Dr0D56fSVdm2z/xnlvI1Yl8Athxl/5yc6bYPgj74weL/D72q9BNCSAG4e3C9v/BVexI/HXAjAd2I2yG9FNIIqLT5WBS7z9Pb3un20/MEls096rek2p+xHZsqj8QZiJIvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/7qWv0mvx67t2xEt4GwpOTkpfccbDHltvfOTX1DEvHs=;
 b=CETXvUmJhe/myd+XbSVPEplW+MdQyBtcw78K9tSdv1/ye1Ngw6CsBogkn0vRjxyvgoHNAAA7Rf2Trcfz44BgZdEWp/Ls4r917qBwLBtY1dJ58UNt7WPNkfe4/6wATuglriE8d/ODlHq0QYlMeYOfG/gKSE6Aepssro+FtcvPXihxDc0hc5CvWyCf2T8Z86Tk3DrjMp7eLGCYvYv6f7a2YBWokgQ1/x5vIvWHu1l2gonKjMf+WSHq6nPQc4GwnX92PwKlJWZcNMbutzjd0AZxUHAbEWcRq1h3ROW5q5GRVY+xuNJ9aiidTVcaQ8wUh6CFyDlCOS5YTJYpsnhqd0yyQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by IA0PR11MB7356.namprd11.prod.outlook.com (2603:10b6:208:432::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.34; Mon, 8 Jul
 2024 08:59:12 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 08:59:12 +0000
Message-ID: <9a8c85da-a677-4a91-b7bb-483f5de50f59@intel.com>
Date: Mon, 8 Jul 2024 11:59:05 +0300
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, <intel-wired-lan@osuosl.org>
References: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::19) To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|IA0PR11MB7356:EE_
X-MS-Office365-Filtering-Correlation-Id: 382f67df-658f-4be3-ba0f-08dc9f2c3c40
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEMzbFJYR2U4MTdZd3JzQUVDUzUvVUZocWwzWk5RYklwblBoZDM5ZTFrT0Qy?=
 =?utf-8?B?Qzlid01BUEdNV1cyS0pTOTVEVFRLRmZUSS9RbGFVZ0x3eVJEVzRwSXBGTFRC?=
 =?utf-8?B?M2NtZTNaYVdEL216QlVxS1FramtZeGRFVktaRU5aeTdEOE00NlgrWG50WnVJ?=
 =?utf-8?B?allQYVpPNTdiN1g0N25PQm9VWStQczQxM2pPenpJZzl3bDFkVEx6Rm5Xa05E?=
 =?utf-8?B?cmI2NTZBRXdaM3pnMDBWZFBhQUVOOGJ2aFFKc3NwUWNFc252ZFZtbDNFeWFW?=
 =?utf-8?B?emZISzNkeENTR1liQVRFcEdFZDFpWkE2NkQrL0dCeGRscnZQMnptLy9LQ3I5?=
 =?utf-8?B?YzJVNnRNYVJnb2lDaEUrRVk4UmIzU0orVGcreUxNYVNCek43NzRmcW02WVAv?=
 =?utf-8?B?Nnl3QVVSclhqcklZcDJoT1Y3aDcvcHBKcVdGTVJ1V3R6UFR5cEdSOFZFRHNF?=
 =?utf-8?B?SmNYanVFSHkxNlR1ZzBjOTFFZ2MzQlhvRFFmRWNlTUJLci9lbTdyeEdiZGJ5?=
 =?utf-8?B?cThxTVQzc0t6OENRWGU1WkZobEV2dnpncDhjNVVmVyt6Qy8wOExrS2FuYkJM?=
 =?utf-8?B?YWd5LzUrWk5VT2lSK3E2SzJYbTJuRDVPVzNyZm9OelRzYnJ1NklCelZGMjNV?=
 =?utf-8?B?UWtlRnBUckhZWWZ1YlgxektRVnVZTXFZNnJaUjVpVXAwOU02bFhwbUJxM0cx?=
 =?utf-8?B?eGNjVGllMmpJUXVKZzBHdE9yU2xBUnNDbUl1OUFMM3A0U21qbGRMYW1qRkdv?=
 =?utf-8?B?ZTI2aURmOHhWK0xiSzlIamw2UitUT2wyRm1laWdURkN5Wk5vNTRzZU9sZWor?=
 =?utf-8?B?dVV4MlhHYS9hWC9mK1RMMXRuVlpPV0o3TTd2cTVTaUVCV1FUVGxaNERXbnlv?=
 =?utf-8?B?c1I4WExMRVlhSHhQVkM5WkYvN3lQczhMSEsvaHNHTFR0Wm1BRzRlUjR6UDVa?=
 =?utf-8?B?MTk2dUN0ZUpybGloTStxNnM0WWsyRzUrdmhDeE1uVTFBTXhSZW9URDExUmVF?=
 =?utf-8?B?WHRESElCL2NQN1JiZnpsMENveVlteFBpNnBxSzFlektwSVkzelYwS1FuanVP?=
 =?utf-8?B?eVZaSEIzSTVubGlSWDdrOHBreklQYXgzZGp0anJQUHFtV1AvUjliaGN1aXkx?=
 =?utf-8?B?VGJ5RXZ4YnB4UExoeTR3dFhFSHhCekhTblBtTGxQZ2U3eUZpYTVkWUNIYlNx?=
 =?utf-8?B?aEluM2NtMm85blBiV1MvK0tzL1JIRytZR3lMaHl6cm1KS1pDOGJldDgzc1Qr?=
 =?utf-8?B?Rzl0Zm80b2twMS9UNmkvTVVQSzg0TmpCN3V3N2FIYWoyeEpkSFBpUFNKOVNC?=
 =?utf-8?B?eCtwMTBJR2J5cU5kUmNCWkJTYWFOSGlOTElZWDhmSGpmVm5GRWJXdkt1bEdB?=
 =?utf-8?B?WjdvY1ltZnJ5cWJYWDZOZDVXZUJwNWFwZHN2WkthRXZ4T2hzdEJMc2JwUFdK?=
 =?utf-8?B?alZreG5HSy9IaExqb1crb3BubGF4U1p0d2J5OHBSODFYczRQejRzdHg0QVY4?=
 =?utf-8?B?QVQ1S1MydWIxZEY3UXpmK0ZENmdTUnhyMExXRVFsTmxtYmtFZVpUSFpxU2d1?=
 =?utf-8?B?ZFV6RG15cDNMbVNMS3BGbXh3d1VIQ2lxaituNVVuR0EwZUE4OHpvSWgwVE5r?=
 =?utf-8?B?bC9qcU5yMnVLRUd6eEJnQ2xlV3RTY2F6VlFpaFdUZTRkMDdMbVVGZkxtYTJQ?=
 =?utf-8?B?dXoyNTNPV1dLTEQ0SkgrQXFZaGp2K1J3ZVZiRGdTcFRDZkFSaEUvRFF1MCtC?=
 =?utf-8?Q?NV37JIpY4T1HhTbZrg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm1Wdjk4R1NPSXBmSUZnWWkvckpsemFJcDUwdXRGc1p3YmhOQnlpZkFvVWxk?=
 =?utf-8?B?SWs1aXpaOSt6UWRBTEVYNGhwTThOWGFJU1kxSU1rOXpwMWNQRHF2enVWejQ2?=
 =?utf-8?B?MHpJTWh2b2FJYjZNaFZvYmpNdFpwdy9Jbk8zOGdYSnUvcEROYUo5U1FvYm91?=
 =?utf-8?B?VXV6SGo1UGcvNHFMOG9nQ09lSmM5SlE2dnJrbEtqLzBmY1o4MnB4b01TNVIx?=
 =?utf-8?B?S043RGZTYVNTbG41eEdlVFlmaTRBMHl3STFUOVZqSlc3bGt1Rk9tc1E4Zzlw?=
 =?utf-8?B?eEM3bmhTWjVFbHdjTFlMQnFKbUdCdGRuVkIrYisvcmFITzZsU2FwNkdHWDVX?=
 =?utf-8?B?c1c5a2tIcnAyTDQ3YzNNNWQ0UkRhTy9OamVmdjZWT28zTjBvaEEvK1VNTXEr?=
 =?utf-8?B?YUFYMTk1Y1lRUUh1R2FKU3NVODhVenFyaU5QdHBJenZxUWc3c0dJb3ZEdS9Y?=
 =?utf-8?B?SFV0ZmlwekEveUpmV0RPYS8rYVlzb0c4d08veitQQmphUGZsam1tM2dJZlJS?=
 =?utf-8?B?ODBWN3RsQ05iT0JDNnFNcDUyalFJazhiOEdjS3lHZzhMTGlmM00zWThuS3BL?=
 =?utf-8?B?d1c3ZGFMdGFZZ1FuN2V5VnVURlJFQmt0QndDeE5RZmowWWYzV0wvcnVzSVVW?=
 =?utf-8?B?TlcraC9IcVNCbUt4NW5nRlhndnEzR3BBa3pqQjA3T2xVcFR1eUxGRTZtNkFR?=
 =?utf-8?B?SCs4OTdhRHB2VGVDcGFsSi9rRDFOR0xsejIzeU1hdzBNUDBZTDdad092VXgy?=
 =?utf-8?B?ZjNOVVdJekdodWZYTnI2MFk5UFNpamZHRlhsdGdOaGRlR284WmR0OUhuSUhq?=
 =?utf-8?B?aGdHQWVTajY0eWFER0xyS1NtOENrMjdZaGJ1emVnMUdjY09waklRN0Jkc3p5?=
 =?utf-8?B?Vi9wSE03blZFa2w0cUZwcFN2ckRIYXJJS2xqdVU3VU5iZktFZzdoTEtwNldC?=
 =?utf-8?B?NGdMcmJla2ppNFNEWTZ1TmxaWnNhN2p3enA1Qi9lZ25rV3FNV0JHc0ZGNjZV?=
 =?utf-8?B?QzZ2bWJlUC9PUzhmb3doYlRidFVUSFU5QkYxV2xyZzVIZEVhMk9kMHAweUVm?=
 =?utf-8?B?VkZscTRSeW9QeHRzem5DTlRGb2czZkx1SlFudXE5U0hpNjdTSFRad1lPRHhr?=
 =?utf-8?B?d1BGL3BLd1RTdmNadDNZQ0hCQjcwQlFoNEdXVDV1aUs5RUE3VU1wSG0vUVB5?=
 =?utf-8?B?Wi9ZWmZTYXhiY0daV2Z2aVdVMTJTNXNnZ2U0YWo1U1BhazZGOUxuSVNmY0du?=
 =?utf-8?B?TmVlem11ZHRseGJLQVIwdkhaKy9DMVRQRWlTNHVZdGZiMnB6TkhlYnBXL0VE?=
 =?utf-8?B?UnFWRTFYcUZNbndQdXVJaDBBRy8ycEo3SENBOFExM05wVkVvREt6VkJhTjJq?=
 =?utf-8?B?K1NFUmVjeVI1R0d4SlJYejJDU2U4Uk4yRk95N0lOTVY5dy8yK1kyVHl3U21V?=
 =?utf-8?B?eWtES2Q1YWhUeWZRaTMvem0vWkRlQllZbnFRcG0zNVhhL0x3cmZkWjhyTEta?=
 =?utf-8?B?OXVpTTh4QnNkcXNTL3BEMnhuU2xnV0JkNjRmU1lmRW9Fa1VPSm85SHd6MWhj?=
 =?utf-8?B?dXpSRmtPMmtDaHpEVnd4MEZIalkrT1NTazU3R3M2UHBlL0kreVFwM0szRzZX?=
 =?utf-8?B?WVoyRkFrSlp6WUtUQWNESUlRNnozbTZ4MWZHc3piRWRxQlhWdkhHcU5lbDVI?=
 =?utf-8?B?ZGE1c1JaOTcvbUxCTTFQakJPYWhQVjR1TmZvSHliVlROWnNKMVV5K1hsallw?=
 =?utf-8?B?TXp5T01hNWJ4Z3JUV0RyRTczRVlybkJLemxlNUk5STNZYmxYYzJiTVFiSTRU?=
 =?utf-8?B?VmE2QmlDSE5zYjR0eEs4Z2FUcHhDdGkrakdJQW05UlBJNm15YnVGRDRiSnQr?=
 =?utf-8?B?aEhZVFVlcU9ibjJBckFMSzZFdGxSdFRWdHdiMjE3YlRVZFFJc0RrWjNlUXhu?=
 =?utf-8?B?NEVrdGY2QzdkZ3BmYWNwSlptdmpjOXNqRDEvUS9VOWlCTlU1eDN6MWMyMzQ0?=
 =?utf-8?B?VnJoTVZ1TmtOWHBubldUVndyL2hZQ2JyMkN1YXg5cnByKy9BaXpmVjhjQ0lN?=
 =?utf-8?B?SGtoeitxQmdTQUpEbWVrSi9YVmRKS2dhVCtCWXNTTzd6SkkvRHNFQTVXQnZP?=
 =?utf-8?B?ZHcyMFdXVW8vNFl3OWpHZEM3QWF1aEx6ZHBhWml2NFJMOWhtWXNic1V0YVNt?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 382f67df-658f-4be3-ba0f-08dc9f2c3c40
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 08:59:12.0837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wl5nLP+YfE9PT6HSPJzScnaXxL6J6F+ROyBBXup0TNcnf9iR19Px5Es0XS4ZFmnISQyT8Zpzw553jdCKHUnFKXizK6g6UQ3RxUanaFjcyik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7356
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720429157; x=1751965157;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rFzJwE5WSpsbyX7tk9DQmJo3D0m0vhcL7oRmhKDglLQ=;
 b=WUd5jtjHKqlPVK+wf0h7HlL5jrcO64mGmKTkMufFH4PQJDPWC6v51UwL
 7WQyPETcdftjbtYiCxvjBrzsK/Mv3yPS3qrmiFbVln//YFnAlCcjjCnGU
 Lm9bEA003VBFd8VwPGMJRo5yVgP1qvjd9WCRvK9U1zgkhAJYjWnEUkarn
 2WBF1H0P7p2eFk48JrCFmhamj+13xni4SZKODPELEwVpnuWnByN3111pr
 3e7UmbHQwul03FZQX+cDnjESKCZRO8CPyCSZSM7Xlp83myF5jvCOhaJ1A
 eHsohfMMTNk51ZMjQlQCNw3qujEPbG8oThnq/Bv+m9KvELgIZXm8Ahr15
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WUd5jtjH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix force
 smbus during suspend flow
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
Cc: hui.wang@canonical.com, Todd Brandt <todd.e.brandt@intel.com>,
 Dieter Mummenschanz <dmummenschanz@web.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20/06/2024 9:36, Vitaly Lifshits wrote:
> Commit 861e8086029e ("e1000e: move force SMBUS from enable ulp function
> to avoid PHY loss issue") resolved a PHY access loss during suspend on
> Meteor Lake consumer platforms, but it affected corporate systems
> incorrectly.
> 
> A better fix, working for both consumer and corporate systems, was
> proposed in commit bfd546a552e1 ("e1000e: move force SMBUS near the end
> of enable_ulp function"). However, it introduced a regression on older
> devices, such as [8086:15B8], [8086:15F9], [8086:15BE].
> 
> This patch aims to fix the secondary regression, by limiting the scope of
> the changes to Meteor Lake platforms only.
> 
> Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of enable_ulp function")
> Reported-by: Todd Brandt <todd.e.brandt@intel.com>
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218940
> Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218936
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Reported-by: Todd Brandt <todd.e.brandt@intel.com>
> Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: enhance the function description and address community comments
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 73 +++++++++++++++------
>   1 file changed, 53 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 2e98a2a0bead..86d4ae95b45a 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -137,6 +137,7 @@ static void e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate);
>   static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force);
>   static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw);
>   static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool d0_state);
> +static s32 e1000e_force_smbus(struct e1000_hw *hw);
>   
>   static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg)
>   {
> @@ -1108,6 +1109,46 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
>   	return 0;
>   }
>   
> +/**
> + *  e1000e_force_smbus - Force interfaces to transition to SMBUS mode.
> + *  @hw: pointer to the HW structure
> + *
> + *  Force the MAC and the PHY to SMBUS mode. Assumes semaphore already
> + *  acquired.
> + *
> + * Return: 0 on success, negative errno on failure.
> + **/
> +static s32 e1000e_force_smbus(struct e1000_hw *hw)
> +{
> +	u16 smb_ctrl = 0;
> +	u32 ctrl_ext;
> +	s32 ret_val;
> +
> +	/* Switching PHY interface always returns MDI error
> +	 * so disable retry mechanism to avoid wasting time
> +	 */
> +	e1000e_disable_phy_retry(hw);
> +
> +	/* Force SMBus mode in the PHY */
> +	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &smb_ctrl);
> +	if (ret_val) {
> +		e1000e_enable_phy_retry(hw);
> +		return ret_val;
> +	}
> +
> +	smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
> +	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, smb_ctrl);
> +
> +	e1000e_enable_phy_retry(hw);
> +
> +	/* Force SMBus mode in the MAC */
> +	ctrl_ext = er32(CTRL_EXT);
> +	ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
> +	ew32(CTRL_EXT, ctrl_ext);
> +
> +	return 0;
> +}
> +
>   /**
>    *  e1000_enable_ulp_lpt_lp - configure Ultra Low Power mode for LynxPoint-LP
>    *  @hw: pointer to the HW structure
> @@ -1165,6 +1206,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>   	if (ret_val)
>   		goto out;
>   
> +	if (hw->mac.type != e1000_pch_mtp) {
> +		ret_val = e1000e_force_smbus(hw);
> +		if (ret_val) {
> +			e_dbg("Failed to force SMBUS: %d\n", ret_val);
> +			goto release;
> +		}
> +	}
> +
>   	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>   	 * LPLU and disable Gig speed when entering ULP
>   	 */
> @@ -1225,27 +1274,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>   	}
>   
>   release:
> -	/* Switching PHY interface always returns MDI error
> -	 * so disable retry mechanism to avoid wasting time
> -	 */
> -	e1000e_disable_phy_retry(hw);
> -
> -	/* Force SMBus mode in PHY */
> -	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
> -	if (ret_val) {
> -		e1000e_enable_phy_retry(hw);
> -		hw->phy.ops.release(hw);
> -		goto out;
> +	if (hw->mac.type == e1000_pch_mtp) {
> +		ret_val = e1000e_force_smbus(hw);
> +		if (ret_val)
> +			e_dbg("Failed to force SMBUS over MTL system: %d\n", ret_val);
>   	}
> -	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
> -	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
> -
> -	e1000e_enable_phy_retry(hw);
> -
> -	/* Force SMBus mode in MAC */
> -	mac_reg = er32(CTRL_EXT);
> -	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
> -	ew32(CTRL_EXT, mac_reg);
>   
>   	hw->phy.ops.release(hw);
>   out:

Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com> (A Contingent worker 
at Intel)
