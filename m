Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDB7AD7127
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 15:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3549D40844;
	Thu, 12 Jun 2025 13:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8yd1PtmFu5TU; Thu, 12 Jun 2025 13:07:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A71DD40845
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749733647;
	bh=EkOAlSKd2GVsevANq7lWOS43HvncOPDe7osl+J1wGXY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bMQahGcnAbldhElU+QlfKD6R5jDNtq77zkn38/y3LhoRecT5CZ1lXvI5hwJQtdUud
	 +XbHzcjYsi5WKf/pFWg3oHnlVt1HunpjjnrHWVjsUy3JPsXXX1PgC+ct6+7LcFGKmP
	 4XWlOEWIWnUiRIic+iYHSBT9SpnmSkzwvqC1kMHRiDlZIgeDnAMuMa2FHAinmg5GN9
	 XakbkaHcQWAKpXA44Y3bki+XWspecH0G4O1qaJmurYTPP3yjDv2CdluIBcgG2KwRBD
	 tVvcBZ1DDT8KNEBt1+5ZnjArHwyv7EdbLQHQmOgoedq37PVs+V8TtJlkXQtqVZRqJE
	 2rjA0N1olwXTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A71DD40845;
	Thu, 12 Jun 2025 13:07:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C69BE183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 13:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC9B360DEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 13:07:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyOU_6liu4Xp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 13:07:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DA1DB60DCA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA1DB60DCA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA1DB60DCA
 for <intel-wired-lan@osuosl.org>; Thu, 12 Jun 2025 13:07:24 +0000 (UTC)
X-CSE-ConnectionGUID: vIegvKDLQ5CTb4Hy31BtZQ==
X-CSE-MsgGUID: OtVQ9V6ISwm0ncIKZdOO6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52008414"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="52008414"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 06:07:18 -0700
X-CSE-ConnectionGUID: A0N4kjhCQI+3lbcwG/o8uw==
X-CSE-MsgGUID: JrN/cEm9TkiyIDIn2LnSJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152503027"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 06:07:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 06:07:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 06:07:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.69)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 06:07:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qUNr2t3bKiGgCJpoBYQI/6C0SfuErCxEOV88IVhCa3pznhn99irysU51s5/h0UQJElNQQueLmuqqBEiVTmsEJkRnf3syRzU3FyDHXm/W2k4UdDCnhrXR9AkeWdPW34BcLd1b9SmvZCqhw6ZKSNdj+NY6Ern/9iV4wD3EEWweEeeMwbZ4066dq3APawPSGlEBU6KYw8RUj42hLOIfvmu2Zp2rxAlAOelmO8OoA9uJB9HYV5LmbPBkFsP3LXJJ6+WrV9a3fd5la1q4pb77wpECI1o4vrCvCJJX4o3EB+w7Y/SsmdukE9zPQyUeKCinE9oQc+gL/Z/FPbMaKrrokqB34Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EkOAlSKd2GVsevANq7lWOS43HvncOPDe7osl+J1wGXY=;
 b=WLfgk8ogcjpsG2LIfFz+xOhIWBqEObIo8s+8xrRSSe7ORELuQy6WpMAW4uXSBwZOf2ANFvHqou0vf1DchAgoZiVg5C+C/uBcvcE74ter+hebVPkD8CoWNtFZEyiFrcT5IAkghs3ooMn8uLKuGe3OAvGP5ksNOtTSbQsXgwlbXv6nnDOr6DcFPcyeH0DNXGcSPi2/KZ63M0AvfNNZCgMnqgZmqgimAkJdzOIiLPVPCb+LXO97SEobWxrmikcnkdjIjOn0H3Ov4prRktLT7a6ZDoq6gJMtwVRMX79rjMFDap21eDVdOtKbQA6Xg9IqxRw3PN1w4xn7+Vno/krzN1AMUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by MN2PR11MB4550.namprd11.prod.outlook.com (2603:10b6:208:267::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.25; Thu, 12 Jun
 2025 13:06:58 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8813.021; Thu, 12 Jun 2025
 13:06:57 +0000
Message-ID: <b9b9468a-d6c3-4662-a8bc-cb72fd755211@intel.com>
Date: Thu, 12 Jun 2025 16:06:53 +0300
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, <intel-wired-lan@osuosl.org>
References: <20250525083843.287228-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250525083843.287228-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::15) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|MN2PR11MB4550:EE_
X-MS-Office365-Filtering-Correlation-Id: 9606f06a-2f03-4491-7e3b-08dda9b202d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c09XY2tvemNhblNFempPejcydTQxdVhmbnlkYVE3TlNFUzg3S0dWUWRzSjN6?=
 =?utf-8?B?Rk95YXhVSTd3Nm01WmlqRjZIK09oaS85Nk01UURJYVFVeFIvakZiTldDdlU1?=
 =?utf-8?B?Q2lxWGlJWTQ2dTZIQmVKcUVhaUNzN0pEZHBFaUw4b0F0NEtFeEpKTWIvSlhk?=
 =?utf-8?B?NEFYbVM2emRmanducjduREhNVVJPNlNqNms0RFJlVjNIWk94UzZySTVzYjhX?=
 =?utf-8?B?Vm1JbHlWZHJkQ2M0K3hCckJaSGhXTzdjNWtrSVd1UVlMRk9EVGp0VmRXVmRa?=
 =?utf-8?B?QWl4RmJ6Zkl3blB1TXhjendEWHBvY1ZEOXJFUm82elUranpYaWtaaitsd1Fx?=
 =?utf-8?B?cWFuTjhJRmpTeXJ5VDdzOVhwNzJ1dXErdk9vVXZCYnRyMVNvVkIrck5qSVl2?=
 =?utf-8?B?bjZPN3Q1cG1xVEF5ajh4a25rQnp2c0wwdUVqblA5OEN6SC9OYVQzRGQ3Y3pW?=
 =?utf-8?B?TnRseUlFdTdPa2NEK1dJUElpM3QrUzhXVmF6U0EvMmI2UTltQklrVm5FdGtz?=
 =?utf-8?B?WG1CcXd6ZXVvL2NocXhqUW9vVmY3R2JhNGFqdW9zc1FXWVNxT1AxNVlRQ1Nm?=
 =?utf-8?B?Z21DeDNLUllDK1RSekordXduZVNOTzkwaW40T0tGSFF5K3hLLzY5eGI5cEd1?=
 =?utf-8?B?M04yTnliNmt4V1VKN1h0cU1oa3lnU094ZlVJZktrbnFoZEJqdDA0d0pkSE1E?=
 =?utf-8?B?VHdBaTZBN3pXemFIeEZBSXVFRzdJUmhDRlByK3dwSXQ3TGtPMVNoeThIeW9C?=
 =?utf-8?B?WloybGU0MitQRkJhSzd1aVBVcUFNa3QxanFqMGV0bWwxd2wyd2RJLzhmSzNK?=
 =?utf-8?B?QTRXc1U3dUtTWGpUb1NjTkNqZlRwM25PTzdxTGtrcUoxNkZ4bjhwY09BY08v?=
 =?utf-8?B?TnlhKzh6SGVjci9JSWJ2RnpGR1dYQ1BybFM4TDQ2UWtscXI2YmtxbktqY1Vn?=
 =?utf-8?B?Z0ZGKzBzWXBMSjJIZ2tuVzM5WHBRZEJLa2ZmZEhiZXk1S0Vkb2I4d1R2aFJX?=
 =?utf-8?B?Q29HK0R3Q1ZnRUR3ejMwd25nNnhsRkhNOHVxRG5xdEdYZkFkaDFJQko4VlB6?=
 =?utf-8?B?N05qOEh5TFZLZFBkZlRnTERPbDY5SXVOYS9iTHUxTVdFcTdhZ0poSFhnT2t4?=
 =?utf-8?B?Z1owRE5mby9kVXBlQ2RJakN6YWVnWUpkWkl0cFJVcnkwcmcvOU5WcVUrTEor?=
 =?utf-8?B?bUJqQnYvZEFObUZSUWt6bGdWWHB5TEFYZm9ZWHRmRkRaVS9CN0dnL2pLWTR1?=
 =?utf-8?B?d1I0aDY2MjJoNlBDWWRUZDJXKzhNU2NGRUxyMktzY3prRlBsT2hjSjFRUEE4?=
 =?utf-8?B?SFdlWTBiTDM1Z2RjYkdyYmZFZmZ6bXhDdUYwakQxV0xReGl1NlU3alp3ZGFk?=
 =?utf-8?B?R0pqNmFtZ2NiSGdKWmE2N1hNV0ZtUGxtb2tYSlBBaFhNS3FaVG41ZlZtckZr?=
 =?utf-8?B?QVRNdThLTFlTeDNFeGJyZ3NmWnZScVZwS2NLYXFNNGZ5YVNCdDhaTzJpM0x2?=
 =?utf-8?B?dTZNOEsySUZCNzBKdlRhMDdodll2b213VlVJVE9yRmNVWVlJckVkNXJBYWFH?=
 =?utf-8?B?Wkh0d1FuYTNRRkdXVlhhdklwUkp5TSt6WDBIZFgxRWo0MkswNHpOVU9oL290?=
 =?utf-8?B?aktxRGhVblBJS3cxT21mTXQ1Ylc2RVZ3MDhNSW55QmVQMG5pQWhsQ245d1ZH?=
 =?utf-8?B?V1lJa2ZGNUJqVXBlY01LZ0lWai9VbVRnUmgxbTJ6UTljekxMaGhwa014akJ1?=
 =?utf-8?B?Q0RoVVlHcmN5RmJxMGFFUGt0Q1VXMnpCY1J2dmZ3OHBBaXhrTnNJU3hFUXdi?=
 =?utf-8?B?N3NqYzlMSFFTWEdxNVB6d1ZpU3hILzA0VWo5cjB0TkkzOU5oLzJZTlBkSnNr?=
 =?utf-8?B?bkZiWU9ObWtXTjBUdVBzdmcvZU1vTWtud01wbk1DendvZFR3ZENzNWY3bVZM?=
 =?utf-8?Q?+FDjImMOIEs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVFXTU90b3kzRzQ2MXJmQi9wOS9ESk5iWFA0STBka3VqalE1YzFHd2cvMzlD?=
 =?utf-8?B?bTBlaDBjWnlnclMvSGpKRGRUbWVWVm93QTB4a2U5UTQvbGFUSGFWRHh2STBN?=
 =?utf-8?B?ZkxsOC9jVFUrOGFmMnAyajIralBPV1pSYVREVy9qRW8wdjh5ZEtZMTU3SUhC?=
 =?utf-8?B?ektGOW8vNU0xOTM1WGQyM0JXWlJlbEliNkVGREZvZHJOd09rRlpiMFN0eTNL?=
 =?utf-8?B?dzBIWEplQlYxVE5KTi85cDNqZVNFVmFyV2RZbHBIZ2h2ZmVaRm5PQ3ExVll3?=
 =?utf-8?B?Rks3TkxlNGxDLy9VNlRjVVJvcjVPSTNFaTRQbDZaTEJWSjdXTmJ5aVlxUnN1?=
 =?utf-8?B?YWxBV0xhRjNtQXFhSDZDRUcvblQxZzkvM2JjaFVySmRHYWcyZ0JXck1QQll2?=
 =?utf-8?B?NnpyM0dGSGN2dEwzUnY5MTFFcTdJekpSRkZTcGQ5U0RtbzlQSW9XZUVpaG8z?=
 =?utf-8?B?aVh1dFBMRU83UG9EU0lQQTVFcjh3OHZaR1lyU0xldFl0Sy9INVZQM0dLd05C?=
 =?utf-8?B?S09wenlObGlvd29SOEFOdC9SMWdadk1WekNmcHFGNFVodWQ3Sm1USTJpTTFN?=
 =?utf-8?B?eHdsY3kyeXdUWEhYOHFUMUZmMndUYlJoQTF1K2NTTWhXUmNBWmptSlVTdllT?=
 =?utf-8?B?elJzQ2g3WVNkbjUrc2Q4eDRzNWJUbTR5NUdBcThid05rL0NqcEVzNXlFSCtS?=
 =?utf-8?B?V2U2Q3V0aTVTTzlJTDBSY1pzNnIxN25relRXVXNuMDNGL3FsSWNSUnp0ODd2?=
 =?utf-8?B?RFNIK1VXa0VBb0dZMVljR3JuelFrRTdiUVA1cmxWc1R6MFNjS2dNeUtBVG1N?=
 =?utf-8?B?Z2hMV08waUowTlBWZEJ5Q2ZjOXFlMnBxNVdsaTNxM2h6LzhlajZQYTE4TFcv?=
 =?utf-8?B?aW9FZU5Ldzk2ZUlVUHJMM25IREoyOU5SQ0xxTXoxcUFRaEhjUVR1ZXJoeVNI?=
 =?utf-8?B?SGlOc0JVdGNYQlU0Z0NEQ2ovb2FSQjBnT1M3UjJxcThIYU00bmlLVlJySk1y?=
 =?utf-8?B?dUR5M0xTc1hLVmQ4MEp5Mmhwd1IrOFc0WFduU1R2bUNRT0hHREY1K0luZGlE?=
 =?utf-8?B?a0xLMWRHSGxWc0Q4ZTE1WHlJSUhVUEw1cEl0YXZDcWZnWC9SR0NRNnc2MHdC?=
 =?utf-8?B?dHJVL0VvSjlGbW9HNGtNc1FmZkJTdVZOVkVveG52V1ErNGRRNkVGV2RjVytV?=
 =?utf-8?B?RHFVbHhMSGx2MzU5dVp4empQYUZ6ajBzc2ZIQ1dPQXhmWjNwNTF6OEdTeGNV?=
 =?utf-8?B?MUJ6YzkvcklIa0R0SlJTek1PSVY4Ny84eWpic3htd3l6TERMaWRiVHFMWm0x?=
 =?utf-8?B?VXVHb3JzYzFJb0Qrb3NEQWgwcU8xaS9lek8wVG1XeEZYM3BQelA2STk0VXdp?=
 =?utf-8?B?NDdvYi9ja0NmU2xsVUZpUVYwZVp2Y3dLSWZYWDZPeDdCT0d4aFZCQitvVFcw?=
 =?utf-8?B?OEx3eWJ6WDV5NkQ3UGF3c1hMT1hyaXZ2ejhoRjdidGNmSjFTQTFxZlcrNXg1?=
 =?utf-8?B?MTNrY3NBYkgxOXB4MEp6NElmTDhBbW5HSUZmSk9Gc3BvZnUzSGxnUlpzTjZx?=
 =?utf-8?B?d0FJK0tqSkh5ZFV0dndjY21kaXRmMTh3L2ROYkhDeGFkRDJWQUNCbFU1QmpZ?=
 =?utf-8?B?dndLbkNualhsY2FTclJEaDFPNlRVck5LK3VySEtEdjBicjNFYnJMMUoreUdW?=
 =?utf-8?B?cWxIc0JHbEpmWGhhcmlXcU1RVmpnY0EvVW1tbVF6NkRCZUpMbUNIK2VqSlh0?=
 =?utf-8?B?NnVJS3ptdDc2cm1Ib2ZWTFJxaFpKOFY3ZUNtTzlPclhteUpFdTRnbjVhUEg0?=
 =?utf-8?B?aWIwa0lEOC84NFhzN3VFd0FQTXpSVXVwNitlQS8yc2Vocy8yWUtSL1dvSkYv?=
 =?utf-8?B?NzcvWjlCZytPUmlJZlh0aHd2VEQvZkNDS0g3K25tb2RUbzlEWDk0UTBYSHNM?=
 =?utf-8?B?Z3BDRUdSdlRRbHVqV3l4eWdiaExmTUQweDZsb0xhQ05TUVZqY0NXbDJFdk16?=
 =?utf-8?B?b3QwTE80MFhHekdUZThYbWR6TVpVQ3R3NHJEM3RyallPV3V5Yi8vMWJXVGs4?=
 =?utf-8?B?VVBaZ1BUaFhxa3U1ejNjTU8yYjlhSzU0TE1HbkNFb0tQWDVhQkhWYmRsTEl3?=
 =?utf-8?B?TVR1MWl4dUVCLzhBTWNRYlRyQnhCSHZtQnhWV1lhekJGeGNNQk1tc05OSTRD?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9606f06a-2f03-4491-7e3b-08dda9b202d5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 13:06:57.6839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OSsM1BdFsSkSkIS9Ysj1RJ5V2dXG/lJCaOWJ6+UBqG0PmLv6J94tpSBaO5dJZptOUIS9hOyJPyRvlqax5lCyS7HqjYqwB9qcQxY3R98d28o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4550
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749733645; x=1781269645;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tdU1u4IE9nmu29dehwpJKXQt0pSniVM7XG86ZcLV8aA=;
 b=AziEaaO0Ns3FFJ8w5GWX64tw08DQOP5Q0j76UXf2qa+A1wvn4rZujoBG
 dcA83XGJPph/sHqB2M6tuZGM2T2FwRkbT0o6M9L3Ra+DmZ3/ulxHN0efR
 7j0rJ8vwuoFOxvk9Rl7XMPxWPxTpkP7Mr6Yci4eZ81WCfrNzVeNpnRulv
 HDC2ZX0eM7jGpNTJdwwHRUzLWOu1Et26vaaCTuyhsYmZmDtOmkKCj3Gai
 Po74ZOlxFIBhCeugQ0j/fAD3D+LBT02H5MZgwA13i26wKKhdo3sS7iApU
 lR0cpTSl6xRXQ8aTBL9chr04w5anOEMimm5YW/dpsMg6Lz/K0pMP2Qycc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AziEaaO0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: set fixed
 clock frequency indication for Nahum 11 and Nahum 13
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

On 25/05/2025 11:38, Vitaly Lifshits wrote:
> On some systems with Nahum 11 and Nahum 13 the value of the XTAL clock in
> the software STRAP is incorrect. This causes the PTP timer to run at the
> wrong rate and can lead to synchronization issues.
> 
> The STRAP value is configured by the system firmware, and a firmware
> update is not always possible. Since the XTAL clock on these systems
> always runs at 38.4MHz, the driver may ignore the STRAP and just set
> the correct value.
> 
> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 14 +++++++++++---
>   drivers/net/ethernet/intel/e1000e/ptp.c    |  9 ++++++---
>   2 files changed, 17 insertions(+), 6 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
