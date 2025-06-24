Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77652AE6C33
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB86983C98;
	Tue, 24 Jun 2025 16:14:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AJ5wsrp54OkW; Tue, 24 Jun 2025 16:14:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39B4483C99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750781655;
	bh=8O8DYTJQqs6ljBXBTyvYenVER9oW6OFtgOhHDWYk02g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MrhqYNoPtkvxKKXyV2bjbzJuqYADP62YO78pvznLF//h4B2w1i+1pJDL1Vg0Ikh7/
	 zzsKwE5dMcAGgrtAG2RWtLoJpLdx33xfsDwUg8pgK8INDQ16iAo3hR7txjl27GigNk
	 Q5UqiFr7jtLG5a5UPD67EAKtSitRXFX7+WrgDfDOrnJjh6YppAPl4lpo5mQlcmOYk+
	 Bqrx9FkgM+ovHsbD0lK/V3fdFOYno/cZsgyc6dpHX0hfGKeYM30tO1QPNIuD+uX0Dl
	 wzuWOmmYoUtZ3wjDH5IqvkOTB62Kjv4VcvyT14MZR7iHE4cq8oaE5tYDhSD3u35v4F
	 eufMDQlj286ow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39B4483C99;
	Tue, 24 Jun 2025 16:14:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DA15154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F6AF40ADC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:14:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id slDEJaKtk0P7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:14:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F3E0040AEB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3E0040AEB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F3E0040AEB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:14:11 +0000 (UTC)
X-CSE-ConnectionGUID: byBObngqRVCwMIu2JRUz7w==
X-CSE-MsgGUID: C+PisnavTYeBd2zUsAKtCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="40645814"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="40645814"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:14:01 -0700
X-CSE-ConnectionGUID: APWF9SYLRAO0espJJhT8tA==
X-CSE-MsgGUID: SLqaCGFEQeGWtkc5oYQpTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="175579251"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:14:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 09:14:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 24 Jun 2025 09:14:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.56)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 09:13:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tXez7eIekTzftR2NepdEOIvcq5VVlGdbe8zq0u4Tn6sJXOPFFhVvzuLIzhO9eYGHZJCg/hke3JgVSTDaaKFimaGa/+fDrpGk/rX2Mc46nxtL1tOnKTeNuGAfdII6KTOzssH8ZaS5T3j26uBaHoU0zUm/5nHrsmz6zZ1xHzL5aqW0YMQwMz0svSrfUBLdf282ChrpgjzPJwu1okbgAOZiNNHjTxJDL/FprGgeK0EelUfEjqTBV90PaYlx7cP2fktv89b7PMpANmue1sRwwiIu6bRm1VDJ1nPla299HPoyM2a71oUz36/ISsN3I435Et3D6HcysLTb22nL6Gnr3mzwUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8O8DYTJQqs6ljBXBTyvYenVER9oW6OFtgOhHDWYk02g=;
 b=c003HA9uDULiZF+orUSiYnft/FkU1OFdQE5ykri1rD7EBp0gxqKgBYmEJ6Y+XsoDbnsnJz5unlrPv2imJ9bzFA+OLCH+hFTqfvDqpwqcs0LrlvrEtSRu700l0EgXodfM3aVBSpSAIh3VJL89160mvsnAC0axARWqSbvg+OhzxDapspeb9l4XkEQbxKROpLl+6nZGJuVP0gnAfg1ghD9SEzyNTxt9r+xlRz8C1/fRGUHxu8e+a2faJcq1uhCZaHboy0jjoM9R0AwatVTEOPIpEt0jQ62VLfVBlBwovYDJThO96pjK0Kh2Mxk6t44HYKXiz+pBgp5RkGfelB42feOnzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Tue, 24 Jun
 2025 16:13:43 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.8857.026; Tue, 24 Jun 2025
 16:13:43 +0000
Message-ID: <4adc2963-a5f2-459c-9535-301e207f8cb2@intel.com>
Date: Tue, 24 Jun 2025 10:13:38 -0600
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Madhu
 Chittim" <madhu.chittim@intel.com>
References: <20250620171548.959863-1-ahmed.zaki@intel.com>
 <20250621121346.GD71935@horms.kernel.org>
 <c4164071-60c8-4b06-a710-70d5fbef2b11@intel.com>
 <20250624094029.GA8266@horms.kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250624094029.GA8266@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR04CA0026.namprd04.prod.outlook.com
 (2603:10b6:a03:217::31) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: a3f10582-55c7-41b2-0ab5-08ddb33a16ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N0RhWGEvVjkrTlZjaFhzeW1xTmlpV2hzaXd2R0FVaDllK3dRMlZUdU43YmNK?=
 =?utf-8?B?OFk1OWRWQldQZEw4Unh3cnNtemY1SGM3NFZUYkxPaE85QStmTmpWNGZWalk3?=
 =?utf-8?B?Y1NLcUR5OHJwZE10R1RoUk1rQTl3d05tSlYrMUNOcnVsZHZKeTZNU3ZsVjNm?=
 =?utf-8?B?RWlqYUpSUEFRVml6b3A4SExlclRZS1NzWVUva0hnblhkdXMwVnNYQUZESHpN?=
 =?utf-8?B?TnV3eG1EK25BalMwVW8zM24rc1pJeHpHcVZnZGpJMW5HS3U0RktKMVg3bFRR?=
 =?utf-8?B?MDNBQi93K0puVlNXdGhOazNUWW12UGMvUHB6YlhuVHU4RE9GbEFHM0tCNWJV?=
 =?utf-8?B?YkxvZExCak01Lzd4SURkcjdIRXlMZ3RJdUpKVytlaHBGQkxWaWRHRkhpaWxo?=
 =?utf-8?B?YjJLbmw4R1VnTFN5a3poV2I2RnE0UFJBZWlsTE0rU3NQUFJGd2FXQWxpdDJB?=
 =?utf-8?B?ZGp5ZWYxMHhMdUNvWkd2YnU3NlhrRFYrcjJFT1dNSkxiZ0xtWGlkTmFzMlBT?=
 =?utf-8?B?VkpGSVpaSWhmakJRUC9Eb1E2bnlhUEhiRnppS1VrQUJrY1FPbFhya2xXOUxN?=
 =?utf-8?B?SWJKRXA2WmNvbG9idXA5dXZ6RmdQdzFsZFBJY1R0RTN5eXNrSUtLc1BwUVlU?=
 =?utf-8?B?Z3RZM1NQZ1BqRklQaTlubzlpVGlaMVF3cmhYR1dvZHNPSDJXcDB2cW40Z1V3?=
 =?utf-8?B?Ulp5b3kzc3FXcHhVWTMzNUpnVHR3RWU0ME1zTG96OTZnbURkQ21KeEtEQ1k0?=
 =?utf-8?B?bFlwQTE1M251VnNOdUtwR3hlLzVkcnNabUFlbzFpWVBIY3VwVG9DK2tZZ2pv?=
 =?utf-8?B?ZGdjVXpFVEdSNmQ0UXZXNFVwQ1ovcDhsQ0tYUTRVeGZmVUpRcmx1M0dVNS91?=
 =?utf-8?B?QjkvTjZ4YTkyVXl4OWJKbTkwUWZva0wwa3Rxa3JPMSt5MEFVaEtQZmo5eWJE?=
 =?utf-8?B?K3Z6a1F0bzI2aGZPTFhVT3ZwMXpRdjJNYlVObmpHY3JuazduNVhTZUErZHFM?=
 =?utf-8?B?OVp6eU1QMHZuMXJodmtKSW9qaWhRRURpS3k3SGtkT0w2NjRoeDhrT2g0Nzh0?=
 =?utf-8?B?RnVzYnNXUkFic2RFRWFBVHlBWFFtbUNNekE3ZDljTTJibVY1dkVnOHRnaHcy?=
 =?utf-8?B?VU0rekpTRERkNGRORkdWeVNNUjRxeUxoVzNPTlFDSjVJcDM4MGc5S0htMFZC?=
 =?utf-8?B?bVVOMXdCWnRla3p2R28vNm1IQ2p3U01qNkdNRDMvS01UNkhZMWVjOGpSRHpK?=
 =?utf-8?B?cVBCUE5CRG1KZHFLWFRSa0pMWFVWV1BWSFJUOU4veFpwNHlzSlZxYTN6WGJy?=
 =?utf-8?B?Z0xQVmtRMzQ0UERPVTNibnRPbTJQTGpTOWJuUmxoT3ROeUlZRmV5SkM4TjRB?=
 =?utf-8?B?YTNTZ0FkZGdndXk3RjZwc0pRZ1R3OG4wWXdUMG1HMCtPTG9IK1pIZ0ZhWDhY?=
 =?utf-8?B?c3E2cnQ2c28vOVpkWlljQm5INXNEM3JBOHJEMGNzeUFnVXBJQTlSWTlkY3p0?=
 =?utf-8?B?SGRnYXhmbnIzYXljS29DS2xnQlpwWnd5VVVUWXNmZklUL1l4dXN6Z1FGR2lC?=
 =?utf-8?B?Y0czWjlBMXFHd3NiNElmS2dwdXJwTVh5c2pyNmlWcUY5NjVBVUtCLzZrUDl6?=
 =?utf-8?B?OGVQbDZJNS92UmhWYy94RnNRTi9oaDVwa283V2xBUGlJdTN3dHFkcWdPWmNs?=
 =?utf-8?B?ZzBLR3AwckVZZllyMDhBaGF1WDBEMzJCbFBMOGNKa3drNFU3NHo1Mko2SUxF?=
 =?utf-8?B?aWk4QU91VUwwNmpyNEdkY3Jzc3lNZDREVzFoZEFhLzA0ckpTeHdiY2lkemJu?=
 =?utf-8?B?YUsyQkdhb05nK2Z4K3hHUFhpR012dUhxbjVpWWxZVFNMRFY1a1RJVHJ6M015?=
 =?utf-8?B?TTB3V2Z2VXFObzFrem5pZU1JQkRpKzdBTHhDeFoxOU05dUord3V0NTV5eXd1?=
 =?utf-8?Q?+uyEhmAdp1E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yk1pSnc1RDNxOENoSnl3L0hoeWk4eG1McW5qNWloeUhWbWZXWkFoKzdNMXJZ?=
 =?utf-8?B?QnJRR0dJUDlLSk9KWjZ2OS9jc3ZIeWJUUjRwSjlHR2lVM3ovRE9BRlRhSHpL?=
 =?utf-8?B?dndwbHU2WEpjWm1EWVQxUUNoZzZKRHkvcHJVMDh5Sm92RXJVaUxhSXk3U1Nz?=
 =?utf-8?B?WThzbVhpQ2dTVWNOUDN6bWtLc1hOTllqakViSnR6KzRBNUhUWituenlodVJv?=
 =?utf-8?B?ci9yTXJXb0FYeFRucVJoRjA4cytBMDZaVXd3Z2xZZGVRWEdsNjdBTyt2aUpl?=
 =?utf-8?B?UUlMMDEzaXVpcitUdXFkZFJ1MjN5QlA0UUF0VjdtV0YzYm15UmYzbHA3WW5G?=
 =?utf-8?B?eTY1dlZrNzUzcmRUSkw0UGdjZUo0aHZYcG5YV1VVa2RPdk5TL3BtR3dnL0Vl?=
 =?utf-8?B?VzNVT2JRTW1ld0xEckpZVkplUi9kUlR1T0ZNYndRdExBbjlVVmYrS3M0ZnNI?=
 =?utf-8?B?b0FUMVQ5czVTT0JpSTQ4QkRocnJtekZQTEplckZvK2UzaERBZkVXYmpnZG1U?=
 =?utf-8?B?bUVzcU9jQ09qc3kzaDNqdmt5MC9YYVgxT0hTSzRFbEU5dDljWUhYcjhaWC9h?=
 =?utf-8?B?d0dOaXlFWGs3MUR4Um42ekIzZWNYZnhrMEwwVlZIRkdmcm11TG9TeXZPTkcv?=
 =?utf-8?B?RHU4Qk5jaDQ5UVdKZWVqVHFsZnc1TzRaZ28vSlRRWG8wQjd1TUZhOUx4OXZX?=
 =?utf-8?B?NDRLcituK1RuMTFZR0ZRS01ZVnBqR0ZHTURtNXUxNElCMTBJenE2NEFpWXFp?=
 =?utf-8?B?aGhxaW1RcnBqbzh0TlhGVmtMNDBCeEl1WlBwMFdNQWhnNVZ3K1h2dWtvYTVi?=
 =?utf-8?B?NDBncCsydDl3L1NQYmliOU1lWHFJS0oxNWRoLytONTNNU1ZjZzVSUGhrRWsv?=
 =?utf-8?B?UmVBSnJDbkI3TlZCQnFRK0hRVWdkeVhsUXFYK0RWN2grc2ExRGR2OXRtWkt6?=
 =?utf-8?B?ajZPWW85R2RLN2FJcEx6UHZYOWg0Mk94UWRuNjJuYmZnSVlaZkdVZUk4RXBR?=
 =?utf-8?B?cDRyQWNldDR3bGd1Rk52MU9EVEZQWjNjYU1Dd1BQZUNVSTZpRW84RDJMcWwx?=
 =?utf-8?B?OXE5MEg5YXpXdnErZE5FeThQRzI5ZDFFME0yODhCNXZPaWR3bHA2bi9Ia09u?=
 =?utf-8?B?YU1DeCt0NkF0aTBCdDY5YkR4bGdmcnpKaGtUY1B2WW5GaEVvVUtqd2NJdTFK?=
 =?utf-8?B?N1A1Q1B3TmVIZ3dmbHVuS1g5bzgxeXIvZkI5VHVwaFJyMlAvWkZKejFVQ3Ux?=
 =?utf-8?B?RG10STJFTDJ3ZFZSKytWV09PaEQ1L1ZOTTB2a3k3VnFFQmJoL2FPNVJkSGFI?=
 =?utf-8?B?TXU3TTVDbzlSRm9jVmZ5T1NmaTg0L3ZqaXB5QjM4UkMyR0JaWDM4eWNLREds?=
 =?utf-8?B?eUw1OTJNSkI2NStxcU1zZVg0cENjNlpUUUJHUm9uTmNxOVc0WHIxcldrM0dj?=
 =?utf-8?B?YnBiL3pVb09kQVZKQSswV2ZOeXFiL0NucDVXZk85NncrZmNnbjF6aW84djl4?=
 =?utf-8?B?RGZtZS9HQjljQzdibjFqOTZVQ2MzRE1GMWJWSXpiS2MyMDEwQzJuU2NSNTh2?=
 =?utf-8?B?OHNFSHVHY2xJSjVZRXh6aVdyN2FBNGE2R3c3ZEM2NFd0bXRSQy8yUm9YWHpI?=
 =?utf-8?B?OEhlR0dCRVVXbm54Vk1uT21NVVR0WlJpRHQzc3BaWUIvOUx5dThmellMUWhi?=
 =?utf-8?B?aXVrYzhyeVM3NXVJQXdHUlorODNwaWNibjVjTktqTlhBbWRzSUplQTZiMlRs?=
 =?utf-8?B?M1Z3VlZpcDV3Z1FYRGpsQjBvS3BZOVlEWEhKTkNxcnRYM1FJUGFEajJpZzRL?=
 =?utf-8?B?NjRyUW96blFNanMvdW5kejhWTGV2UW1mZWtxVWdMZSt2N1d6TVJwa1ZKRXBW?=
 =?utf-8?B?ZFpOSG1UeVFzMzFYM25EbmlmMDVWeW9ENDhRamlWSTA3ZzhDcGpad2hLMll6?=
 =?utf-8?B?N2FHL1JXcUNQL1Zmdm9paWh0N1psRGpIdVBtUWZyMmpyTHFDMDROaG1qYURV?=
 =?utf-8?B?VVdDM0ZaZVAwMW1ISHV1M1l4cnlzdElITThxNVJiYVYxcmJjNFE3TUNjNEwz?=
 =?utf-8?B?NzdwZUVEN2JWanJmS1NHTWRRMTlPMzJDd3hWS1hCTnZyYXVMRDIrZ2ZxSWNx?=
 =?utf-8?Q?G+UvutqxYwH/FzE4S2RdGZWN5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f10582-55c7-41b2-0ab5-08ddb33a16ef
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 16:13:43.2268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RylHplXpVx/pqqbjwZyIRYVGO2aiKv0/udUEDuNfyGJDJPDuI6DxI46i62Byh351wPMJTioLTzGgeJkvDpOzTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750781653; x=1782317653;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hsy6YfMRMQzfmSVl1H+p4bWU/76v3pk1VArXvEPXR9k=;
 b=O0tqNq8MPNJY1STP1aZLTCrMO8Ob61lMwwt+J00eNpWUbKeuTateSfce
 U7/nvlf57vodyOx6FhOj47x2AIgMFMBBdIq2EBaY94kFA5tPgmNTPd4Bt
 ZQ/GKWvTjGfNO3CH5Xgss9yQ4UDd3rW/gNOd2DLCXYpHX9flC2DI+VjrV
 kEiEQ4HYNWA7S9wSPDo9YOSRrQkGBhUgFJz6wMgotaarMnvM7upd/s9qg
 bD8YAfDEz4i+j451lgVREPFk9mleY2urR8IB8R52fAqb+4fAk/f7luq24
 5gkMDnXiU1uwCdnPAPh6T41mWmyO3Z2KrNQS6DjPWxG/hYJX9FAlwZjFO
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=O0tqNq8M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: preserve coalescing
 settings across resets
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



On 2025-06-24 3:40 a.m., Simon Horman wrote:
> On Mon, Jun 23, 2025 at 09:48:02AM -0600, Ahmed Zaki wrote:
>>
>>
>> On 2025-06-21 6:13 a.m., Simon Horman wrote:
>>> On Fri, Jun 20, 2025 at 11:15:48AM -0600, Ahmed Zaki wrote:
>>>> The IRQ coalescing config currently reside only inside struct
>>>> idpf_q_vector. However, all idpf_q_vector structs are de-allocated and
>>>> re-allocated during resets. This leads to user-set coalesce configuration
>>>> to be lost.
>>>>
>>>> Add new fields to struct idpf_vport_user_config_data to save the user
>>>> settings and re-apply them after reset.
>>>>
>>>> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
>>>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>>>
>>> Hi Ahmed,
>>>
>>> I am wondering if this patch also preserves coalescing settings in the case
>>> where.
>>>
>>> 1. User sets coalescence for n queues
>>> 2. The number of queues is reduced, say to m (where m < n)
>>> 3. The user then increases the number of queues, say back to n
>>>
>>> It seems to me that in this scenario it's reasonable to preserve
>>> the settings for queues 0 to m, bit not queues m + 1 to n.
>>
>> Hi Simon,
>>
>> I just did a quick test and it seems new settings are preserved in the above
>> scenario: all n queues have the new coalescing settings.
> 
> Hi Ahmed,
> 
> Thanks for looking into this.
> 
>>> But perhaps this point is orthogonal to this change.
>>> I am unsure.
>>>
>>
>> Agreed, but let me know if it is a showstopper.
> 
> If preserving the status of all n queues, rather than just the first m
> queues, in the scenario described above is new behaviour added by this
> patch then I would lean towards yes. Else no.
> 
>

I don't believe we can call this new behavior. Actually, the napi IRQ 
affinity pushed to CORE few weeks ago behaves in the same manner; 
deleting queues and re-adding them restores the user-set IRQ affinity.


