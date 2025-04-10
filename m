Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6557DA842C3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 14:15:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C490040864;
	Thu, 10 Apr 2025 12:14:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XK7U-XDXgnk7; Thu, 10 Apr 2025 12:14:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 289634077B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744287299;
	bh=vU0K+1hwB29UxMfKWfgoDze5ElA4FYuzVnL6hZaGl64=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=akqRNjNIf2YN/rhmtLMTu8kg1vlCQvxf8D+L8Hlij702ti4ugTUqz+DNHZhDB7g9c
	 NYlPK+xpb9XO2PEzzuk6kpWWZ83h7HyrDxttUkszTTFa0e3pvNxGZAkm+QNd8dhZ6A
	 YqasQ1iHb7qkYyHiI/76OeBKWoCLde2VV4z6qEkZYoycJLuJw2HTgHOxfAXIAGKIpm
	 kzas9bl3JWlaNGfL+oiQXwWt+E7RiBtye+Ww3DuiENLO0QOsUCR2yOSPVGlsHJ5Qii
	 dEBZ1aVK0xIx1WoPGJrT/KsF7Hlqwh93USHqZuiEuasZghH45WA1dUbg5HwcVL1kxo
	 y31FyrYEc5mLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 289634077B;
	Thu, 10 Apr 2025 12:14:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BD05138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F13DE61AE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:14:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LxurVX8Vdofn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 12:14:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4B7BC6065A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B7BC6065A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B7BC6065A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:14:55 +0000 (UTC)
X-CSE-ConnectionGUID: eWNMzgqpRn+OVOz+KrPG9A==
X-CSE-MsgGUID: kvMZfZ/QSF6CfBdIfMEAPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="57174232"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="57174232"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:14:55 -0700
X-CSE-ConnectionGUID: t9pBWs5qRHqd7GJSaiqTYg==
X-CSE-MsgGUID: wnMUBiT5RReUYSmS7c83oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159879725"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:14:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 05:14:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 05:14:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 05:14:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UY7z8aih9kMhpN2rmPc/mNRH69BvUB6xlKtjEsN4CGiEqGDoHZV259Cx6+oCC05kxQ+Vds1F0A8PvT04xFMVKz12IPoc250h0hbJaaUuO5cHA4AmW1ZEGgpAMqeIcx6l8Po4aun//lZPUFtPN1QYSIIEKc/mztNUmFfAvhe1juZFjtVbxTlS3NEwikxUIqZvoF5JbcAVmcKoZbkA6nzPhmTtr14zs5R7qCMrtweg9XnF2aVICsG3fXdtrc3MzGYPwZ0GfqsFJmJjG+lClbcfrbpA8VR97yzqFuy+HXBntoM5C+1him0Qj5licbPAOs/Sa4vc874pRUMGBEM+3GCTLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vU0K+1hwB29UxMfKWfgoDze5ElA4FYuzVnL6hZaGl64=;
 b=wkkuyJwyUrUHzHc4gFP3DLW6QxqSVAwoiiUS+glDL2FjEwvAJMhKSZNUYfxy4SDAQfxcTtO9zQdy0Ta1+ieimXYdPS/OaU1HxGi6dBCZUQjOlWm8bONpkGYL4H49gjyzK2LrPWaQ4M7flAhIK+Xabj4cQg6dOzWWDvzveipoooI0hDDiopJDZEmbSWByyraAIJMtacphUscirmL0WOzxGVqUB5nX2WHmUq5ANdgZ9f0rEqyu4HsXsMvsikG/6l2FUBxohdgiWyWPDwaUp999JA9azIeo6R2KVLyT7cA8392TK0NwyLRDHEcbpqhN1xSlEollGn8YZGY8nYMdAzgt8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by IA0PR11MB7863.namprd11.prod.outlook.com (2603:10b6:208:40c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Thu, 10 Apr
 2025 12:14:25 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%4]) with mapi id 15.20.8632.021; Thu, 10 Apr 2025
 12:14:24 +0000
Message-ID: <c0128dcc-5d8f-40a6-ac7b-67febd72fea4@intel.com>
Date: Thu, 10 Apr 2025 15:14:19 +0300
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: <david.zage@intel.com>, <vinicius.gomes@intel.com>,
 <rodrigo.cadore@l-acoustics.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Christopher S M Hall
 <christopher.s.hall@intel.com>, Corinna Vinschen <vinschen@redhat.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
 <20250401-jk-igc-ptm-fixes-v4-v4-6-c0efb82bbf85@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-6-c0efb82bbf85@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0024.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::8)
 To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|IA0PR11MB7863:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ae3c74a-3699-483b-c226-08dd78293bad
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWtxbWhWYlNSRXVRcnppdjYvZ3FJYUlkR2czSEU1T0JlVUdNSk5nMGsvS1Nv?=
 =?utf-8?B?TkxqaUtucmorNkkzU0c2U29ZbE81dnpEeFpJSmFGN2lReG9XZDB6RFFuQW54?=
 =?utf-8?B?bFg4LzFQZ3Y0Ym5KT211VFRlQnd6THVucFdkUTFKdTNFTlNCNCswWmFrdEN6?=
 =?utf-8?B?MWFmckIwb1BPbkJ0U2xmdWsvcHd3YXNTRnhuSVYxZnQ5eUxBTUFHSTlSUlJp?=
 =?utf-8?B?VVlLSXBTTHFaL2pmWWlGM3pnWjZ3Vm5tb21OcU8zNnZjVERmbDRvcXFhWnVT?=
 =?utf-8?B?QkFwcExDTjJRcUNMMGxRc1dsSVpMUVpLdVE2RFBhdVNIUDY3NjA2Y081ekZn?=
 =?utf-8?B?eHArZEljQmR2RTNjZjYzd24wN1FsTTZ2bHVsQnhnUk96dFdsUHpadEdYSGxR?=
 =?utf-8?B?YXlBSUhiUmd0eVU4cXlBMEdFcTFPQlZLSWNDclJFSFh6K2Q0Sm1nUlBBaWRJ?=
 =?utf-8?B?RGQzSExsT2d3OXVkUEUxYllwYlByblZNdk8zRVlwc2Y2cy85d3g2S2o3VCsw?=
 =?utf-8?B?TEFDNWlTZmoyZmdieldEeDhVbEZiUlFNSmh4c2hJcmJaOEFmcGY5MWRBb3o1?=
 =?utf-8?B?V1NUSzZBUjZhWGEvUlErWHFVZFA1VEV1eTdxVDdNdVR6ODJKekZadWdmUy85?=
 =?utf-8?B?UW9xNDN4Uk45eU4wdXpKemQwaEtnNCt2NWE3SU1HVHNYSXk3YWV4VEdVMjR2?=
 =?utf-8?B?Z2hNY01QTXIzdmJHNnVBckpEeG1LWXZXSDNaNTU5VUMyL0QvVTJKMmJibVU5?=
 =?utf-8?B?RG1Sdk8vaDJHYWc3UUw5UGpCRUcxbUN6RGdwb2JYaUdpVDloUFZhMWhnRDhv?=
 =?utf-8?B?SUh1V2M3ZzhkZHRLNHFDL2JCUC9mZDc2dnNUQk8zWDNTMjJUS3RxbThBdmxp?=
 =?utf-8?B?NGFKbXU4RUptT3MwNit5QnZKaFNQTG9ranhuN3ZlYVlKcG8vRWJ3SmJBRDFG?=
 =?utf-8?B?N21HT1crRHF2Sy9HeDNtcG1RaGVseE5IWEM5aGlQYWJqTmVsRmt3T2ZZWlpI?=
 =?utf-8?B?ZW84VENPMDEyS2hPdE5vUUYzNk9GbkVRZ1hYMkxzMURhZVU4eTRxQVpoblpD?=
 =?utf-8?B?ZGJQbW5nTkFyNy82OXp4QTllbFRBM1NteDFZeG9VMENaZU00MDUrMG45Umdx?=
 =?utf-8?B?eVRNSldrZ3pmVmxSdkE2eXpJSDF6bGd6Nkl3S1BONzc3U2VtTnZzR2VyK0FJ?=
 =?utf-8?B?WWZ2Wk5HZVpSMmxlaERHMFhCYzE0NDBSL012emNUclRNMTY5MnI3R0F5ei8x?=
 =?utf-8?B?WUgyWFk2MXg2TWM2Qko0bExzRUllMDBmMUF2b0FhbXNnYlhkczVuVzk4UFJ2?=
 =?utf-8?B?dTBhM0cwRG82blNFU0VEZVcyZ0RPdEFTOFhNOUlYRzRBVU1GQm1OSGo4Wlpw?=
 =?utf-8?B?djlCcVZ2TmhhYkM5WDlxMEhqejh2VlZKbksrTnBpK0k4SERqaWczcmpGQmds?=
 =?utf-8?B?eWdGTTRXekhFVGFCUGhYbUczRitnK0RPdGNLd3hnSDJ3aUVCY0JhU0lDVjFR?=
 =?utf-8?B?K25CUURzWXlrQ1BMc09qcTJJbFJQUng5UmNtaDZPZFdSTjMrTW45dzFjREdj?=
 =?utf-8?B?S1J5YzlraVhmbkZFQ3ZnZ0JKcnFCa01zN0xxeUYzQjgzZHJYNnVGNmUvMm5K?=
 =?utf-8?B?Zzd3MmFNZUc0aGZBTU5rOTRQMU5veXREYUl4SWxjQkZIaktBM1E5cWFtYkV1?=
 =?utf-8?B?MkJ3OWcyWUhid292NU1JUm5seFVRWndIQmRxUDNRT2QrT2hQRW9CYjE5OHRU?=
 =?utf-8?B?S3VVaUFGWVBpRUhWSjEzSllwSnVKaWZ0UnBSTUoxRnFVdU1hUzRTZk9oeEli?=
 =?utf-8?B?dlRZMUUyS2U4Si9pQjhsMDNPYmRMVGxGOFpvRkJCN1BkNnBNenkwWHZJcFIr?=
 =?utf-8?Q?2yvhYxRoa6uM7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1NEWFdqK2hyazNPRTZHSGlyVWVNQUhtaVZHY3BRc3VESUxRNlJvS1I1MjBE?=
 =?utf-8?B?RStTUGE0ZGMwYmhRTXl3aWdHR1JSVWpzVGppdmZxYlk3S28xbUxSY1NTTWps?=
 =?utf-8?B?MXNSeS9SSGV3ZTMvS0xuU21Va05TZkZJT0ptbENSakd4ekQvNmttbDNMdDU3?=
 =?utf-8?B?SlFPNmFBM093bjRWL2g4YWtLN0toUTliaWVONmY0eTBWVXJTVWg3Rm9OL0w5?=
 =?utf-8?B?ck9BWWtqbU5QNmZjVTFBdDFLcmRHYUNpUC9mQUN4ZUdTcTlPSVEvZTBFME1I?=
 =?utf-8?B?UnBEUVlJeHAzR2lDU09wSzNnMzZ2YUthbUU3dVppbWVDQ1MyeWxCREZtK01T?=
 =?utf-8?B?akFTaDJ1NnJZZ0ZnMGhOYkF0d0NhZHV5WHo3czVncjUzbmg3NGJvTGtVbXlO?=
 =?utf-8?B?aGVoa2VCSzM2WXRyUlp5Mk4zM1lxcmV1UVVneTBRRUhiZ0tQdnUxZWNuRGlK?=
 =?utf-8?B?ZkxKR3I5V2VJdEFaRVByU0pqV25RRk14VTRqTnJxb0xBb2VQQWEyTGp5MmNs?=
 =?utf-8?B?YU5BdmZjaE5tWDRCYW1HU0pSMkNyTmZaTkRTSjlpM2d4ZWxOR1FBalRCbys4?=
 =?utf-8?B?MjhVNURLMEp0RXh4ODVwdVZ2UnROa2p6T2R0b2lOYUtkUEJYZy9UTWhKdXJ1?=
 =?utf-8?B?cGJTZ3hibC8vQmhscjc2b0pLWmVxUndnTk53dE1QZlExbFgwSTRnR0JIMGxu?=
 =?utf-8?B?S2oyK1pRL1JjMHpISGIxZFQwY2Fhd0dNckpjdnZJNUZGdEl4YVFVeS92ZFVG?=
 =?utf-8?B?dGptVEZSMEtMeWpJYUVxZ3phcG1ZcjlKQTBxS3d3TWVIRjliMytDdFZweklX?=
 =?utf-8?B?ZDUzV0d4N2xuRHVoVUQ4cHN0VGVDa2NFMWRTUXVjS04xck9Tb2VKWGlqN0FY?=
 =?utf-8?B?Zm12elM3Rjd4WmEyQlBJcDFyWHYxdThuSnZoYnpSN1FxVDN3T0pxSHlNakd1?=
 =?utf-8?B?YWFrNEgxOUJ1cE8xQ282bzd5NkdkYTRIM0gyUU1rTjMydm1HMHkrSjlqT3RV?=
 =?utf-8?B?M3NKVitLMnNFdHdnandvalVSSC9ZaVN1TlNLQUc5T25aMHJCbitXSllvWkhE?=
 =?utf-8?B?aGVpNkd3elY4ZnJvSjkwYU9UaytJOUhqK2ZrejhLNDJuQTBDR1IrOXNQMnlk?=
 =?utf-8?B?S25PU3BjUGJZUFdJd3hHOEowQWR4ZEFrRENYa1U2RGxsY2t5QnlYYjdybWZh?=
 =?utf-8?B?a3M4YWlFbWJYc3R1Z3Flcm52QVQyREdydWJyb05mbkFFVy92b3RDT0lMM1J6?=
 =?utf-8?B?L25EOUVlVjZZQ1hMM3RrMlUvSjlncGpIc1VINU4wZFgrSmJBOTFRaFVwUWtW?=
 =?utf-8?B?TDJaTm4vWlpMRnlWSFdMU2FScklFanlZamRiU3ROM3JBM0UwZ0pmQmRiRkJl?=
 =?utf-8?B?dDZ2YXZPVmVEbWpwbjFZK080ZDVSMnJ0UTE2WjJubVh3cVJOZ0pSK1pvc3Vi?=
 =?utf-8?B?eDRBSjVzekFWT2FROGtXb01NelZnRm93cEdQS0pDaTZFdVM2M05CWHJFa2Fr?=
 =?utf-8?B?T2RWU1hMeGJYZDgxb3FNczI1QVRJbU83QmY4dk16WDJLSkpkbU1xL3JJckNE?=
 =?utf-8?B?NkF1RXhiMU1nNTE0NXBFRDFIcERqTlBHblRUK3VLMWtCLzI3RDh4OFhWRTR1?=
 =?utf-8?B?aXZ2aUFEOENraDRzRS9MM2RJcmZjT3YxaWNHR2l6RWkvS1gzOWl3SE05QXRU?=
 =?utf-8?B?TWpxY0l4M1UvamhIbmtjWkUrL05FTHIrcTI4U1ZydVcxQXljWDRBZ2NvYjZL?=
 =?utf-8?B?dnd5NWlRWVlJc3FDUEp0SFdMdVNRR3hrcDdYelNsRHVSMVgzY3p4bFR1WmZ0?=
 =?utf-8?B?NHNISk5kcysyRlB0QUQ5emlyRDNuNmFNVnNvVnR4YnpRT0R0aVZHczdZNXd5?=
 =?utf-8?B?dnJDbGYwYUxRdzI4REY5cmp2RnUwQ256c3pwUkt5L2JXUzIvM2k5ckZHNUVp?=
 =?utf-8?B?eGFPaVE2M1VQTmNCb2IxNUE1ZXh3Z3p4L2dVbVE1TmtlT2wzZEZMUncvWFho?=
 =?utf-8?B?UVA0MURaaUpjZEJwTi9nTVQ2SEZ4KzhiejRuWWlidUphdWVYQW54dHIyT0sx?=
 =?utf-8?B?VG1BRDEzYnZVTlFocENUdFR0dXJIeEVsbnZVVW9jNVpNZFRzaVdXMjdTR29q?=
 =?utf-8?B?ckhrbkdPT2JKazhudWNFWXozY1dMeEJ4b3hpMXJCcFIyV0JUK1RMaG1oM1ox?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ae3c74a-3699-483b-c226-08dd78293bad
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 12:14:24.9350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FUwm41u8pH08RaGXJAySi0oZTy0cyyQUQTEib/FsB/kPTyvaqX1pRQ0tvl2OnDkhC0UtVRO3CTHOMTQcxwAd+WUKsqJr1e5MD7yCmhErsyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7863
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744287296; x=1775823296;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sDqZPDA3953mwAg6vnyYY2wPiiynA9n7FJPoxWeMR50=;
 b=fTBibdpPHSUjHpXUQqyO1LpcU9Ny3fjXnQM3IFv20QozQFt6tcjKOtR5
 cI86s8iC9TN6GvygVWGSoo9rT5hX8OndoQ344yJ75GFVAwKcncgGjojWI
 SIQVzfDib5YpN67CYb7EuRxF8EMyMDZ6AAUnbuiOtYXmsuztIEXCtbvyS
 XztPCDzBwO3Xl5Uv8WS71WwylR+FOTBTRGPM8FBxlGkrYZ+f3yL9gdr6h
 wpsYd+33KbV4oFOQkjSDGFkBztdvrgxGtmci+WdVksDlBw+562Ciebn/w
 v3aQfvhcDU71b86TMSNW/OA6m4EZfTJt3LxCfpaLdvrnwD0HZjfjctH5K
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fTBibdpP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 6/6] igc: add lock
 preventing multiple simultaneous PTM transactions
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

On 02/04/2025 2:35, Jacob Keller wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Add a mutex around the PTM transaction to prevent multiple transactors
> 
> Multiple processes try to initiate a PTM transaction, one or all may
> fail. This can be reproduced by running two instances of the
> following:
> 
> $ sudo phc2sys -O 0 -i tsn0 -m
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>   fails
> 
> Note: Normally two instance of PHC2SYS will not run, but one process
>   should not break another.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h     |  1 +
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 20 ++++++++++++++++++--
>   2 files changed, 19 insertions(+), 2 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
