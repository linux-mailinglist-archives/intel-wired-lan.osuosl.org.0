Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2778C81C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38AC660BEA;
	Fri, 17 May 2024 07:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XvT3GlhZG58s; Fri, 17 May 2024 07:51:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A1C1612AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715932302;
	bh=oIT6GzxYL30g054xdV7mNIuOSclpxivWZyEBIXT3bIs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4yqBFNjDI0PF6ZglsOssAnf2ZOr2z7acsdQUVaku8ga6uYFgXXT1HfqOR49+/PbEs
	 QRLJ1X2VLEVw28n9CHlPDgVPIcWX9rMa/dCkXIoTSTPh2/tF9Ri0DSCntwiWwCnOs3
	 o1y9FtJZ8Ucg3DB0cv/aVIkG/A7CxE+/wyv8KbCKGaksCYJ9QWtpecugM5vlUDOYy4
	 etd9lF+zpWaW4YUFO1aGE3BZBOoyAkP1gbsrZ2ilkP5z+hs32Yb9mZquIgTY3xZwej
	 3b+6XRFeRmZqW7ZwOB1aLt+xccd7Co3wXNisKxyIuYwBpku69jGUMq7SWILmHYcbvt
	 St9W2RswUQNjw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A1C1612AB;
	Fri, 17 May 2024 07:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E7B01BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5AF17400C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hkk-JhppU9z2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:51:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 735824031C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 735824031C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 735824031C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:51:39 +0000 (UTC)
X-CSE-ConnectionGUID: 8xAbGw1hSnGSVN9CArn2vA==
X-CSE-MsgGUID: 2qkYjN4wS22/VaC4noTI0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15879585"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="15879585"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:51:39 -0700
X-CSE-ConnectionGUID: xhM+27UiQsaoMJHWXkVf1A==
X-CSE-MsgGUID: dfQJghQ+RSOOJX5HebbAiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="32306468"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:51:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:51:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:51:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:51:38 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:51:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fLdc/BAlSH8q5Hy1EajGuQS2djPlFjXp0Leosyiooftj4qE2vWexwC405ZXVdw/0zIfQ0IdEnxByOm5pRbEfYLnLsp52Mq5oWJaJ/NqOpEYvOqOX8FbOXgwFbcyYC7NUKjRK/waGV916IRNljTCqxzV9to7bWPvEVq63D9vqYIoAeMZxT63+w1KrxO9tWhVcRcDGebBeWh0osD0Pu8GXxzCamg8osAgUyad27lgjeAmU1F8CmUDAYTlzXYvl07m5PvPjTo1q6WbBRu0ZNYou6E5CefgITdJmlAO9jrI17CHzMqPleItodjO35PWhXKRNEy5jOTLvQwANJH84aZ64sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oIT6GzxYL30g054xdV7mNIuOSclpxivWZyEBIXT3bIs=;
 b=GCDIXsBC3HwAaceQ1oYL+Ej+DqPksgP+d+xZYCdmXIKSg1DgpFXbJt3aZhjk3ACbG574t33dqFi/aQLa5Jg4gMIFcVyeSTckPmsmu73Xg1/iY501o+2PA1dIfmA+m/HJQvlXsZlf/Gh77QqVynit2WILN0B+4PIQW/zF0sWGLPp/b0z8l+PqHJKf5UpDiszcug/yJpIxXc57fuyY/U5MajK6KeCVNokn4FbAzB2mjjWPr66UoK+vvUFl2I5e0ffE5pPEQfg7DdSfLVTyghHvCeBFTNLo80UekrNsF2IhpBDh4VQ7q9HNxV3exa8ebyVAhHiPkTQjBBsdi7gd2SXgPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM4PR11MB7759.namprd11.prod.outlook.com (2603:10b6:8:10e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Fri, 17 May
 2024 07:51:19 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7544.052; Fri, 17 May 2024
 07:51:19 +0000
Message-ID: <1dfb8685-cd2e-43ed-a4b0-5c506564d531@intel.com>
Date: Fri, 17 May 2024 09:51:15 +0200
User-Agent: Mozilla Thunderbird
To: Naveen Mamindlapalli <naveenm@marvell.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
References: <20240516140426.60439-1-wojciech.drewek@intel.com>
 <SJ2PR18MB56353F95F209E75987D4DA79A2EE2@SJ2PR18MB5635.namprd18.prod.outlook.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <SJ2PR18MB56353F95F209E75987D4DA79A2EE2@SJ2PR18MB5635.namprd18.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0012.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::10) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DM4PR11MB7759:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c0daf39-ce95-4b03-c6e3-08dc7646236e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVlPMDdDTmxMSkEyaXh0S1FNOG1rbVkxTFN5MlExa1MwTndoYkhiQVN6MXpO?=
 =?utf-8?B?K09PRzBLR251bFdYQllEdkQ1VTdhSWYrMmllYnBEa2p0Uno5VlVvT00zY0o0?=
 =?utf-8?B?clFFNm9OQlRsMWxuaTdKRTR4TUx4T0FYVUJYREJVUklDTElYVlZQaVpNeVE4?=
 =?utf-8?B?NnB5Z1FUNlRHdDllZlhubThXM0ZPMHYrbXE0MkVuTVNWTkhtL0JnN1krUkxw?=
 =?utf-8?B?bHh6eEc4d2ZUZjl6ZENPUUptRnk5b0V4K2xRRWVNeUVPVlVFU2tacm4rK1BD?=
 =?utf-8?B?YUR5eHNnazQ1V1dSTXhSUkFiaXpvZzY0MDVnNW8zMFRYbXRxS1d1d2xBOHFq?=
 =?utf-8?B?SXY5dXp3bE50a0xnZkN1blZidXdhUmtJcVNhTWVGRnkxM2doNzFmQ0wvWGo5?=
 =?utf-8?B?L2FUamtKOWdIRVczbWZ5bHcxNWhBUTBSNmhWcGRhWTVKd3o2clZYOFE1b1E2?=
 =?utf-8?B?ME1RQ013OU9SbFNocklLTGdMdjdBd3NBNVYyVXdwVTFxM0Ywb1RFSEMrNTJq?=
 =?utf-8?B?QzNDaGpQTjQ0Y1R0V2lzOUxKMFB6UzNheEs2NE1WNnRheS9RcE9VUFRMdUMy?=
 =?utf-8?B?M2VGV29OVXdkUFY5ZjlnUjBvaHhiY0xkNU1lYmtGcWk4Mnh0SlpEQlB4VE1v?=
 =?utf-8?B?ck5XZzMraXBBMnFFN1gwMGx4dmN1ZlBtSllkenVpSWtOM1Z5d3ZpYU82UGQv?=
 =?utf-8?B?bkdUcnE1Wlo2VjlvV0h2Um40NWVOS3ZQdWVoVkhPQXpnS0hLUkozUEhIQU1Z?=
 =?utf-8?B?TTJTM0QvYkpxT0NJYXJVbEJOeXBsMHJhbGo3Zk41Vzl2aXY4US9DTTBveUI4?=
 =?utf-8?B?TXJpSGF0MEh6R1hqMUhlRkttMGMvcGxQSFZxZzJLemhZL2RJM3M3RzMwWUNK?=
 =?utf-8?B?Q1BOY3FaR3Z2dkQ3YTdsZGdHSTQxSDBhSFJFRU5lVXNwNThzclEzWVNsQmNl?=
 =?utf-8?B?MHljVmtHbzBiZFc4K0tiS2YybXg1aUxBWEpyYk8zSlBxT0NXdjZLcVdoYlAx?=
 =?utf-8?B?Rmh3TytVVW9RNFRJcFhTTlNvbk1Ba1lYTmRhZ2FOdkVRN205VC9JNWtBQ21n?=
 =?utf-8?B?YUFENmxLd01ZRjZwYmNkSEFDLzRZZW9Nb2d3TXVpOUxRK1F0bFEvUGlLbDFT?=
 =?utf-8?B?bXFocklFQW1TeG9aM2FnVktzTWE1U2sxd1U1MHd2TXI0RzBsWmxqRlUyRHhi?=
 =?utf-8?B?M2VlQStVcnRpQlJzM0hkbFpqQVAzbUhEbDdxM2dsMXpVdkJaNGg2SWswWlFk?=
 =?utf-8?B?c3huYWpMa1JrY3Nvb09MeFN1R0RycHN3OEp5cHd6UmFZa3VpVkI3MGFQdGF6?=
 =?utf-8?B?UE85cTA5bzdwVTd3dFlXWHZIbmttOE44RVZRZGNJQ0R0WUNpbmlMaG1rS2d0?=
 =?utf-8?B?eDMyVjlVSzVpdndJbERVYWxhWHhlS0k2WFBlZkQwa1NjQ05KdTZrakxUYnZN?=
 =?utf-8?B?dTl3Q3gyRkxJWGpSWHRaaWtJN0NlUUNHTFpSZXZtcHdmSWZkRVA1alNJNVpN?=
 =?utf-8?B?SUdHK0hncjFXRGtrNjBsZ09IalJXc2FDOEw0SzBBd2Y4NEZyUE4rS0tkK0gx?=
 =?utf-8?B?TFk2czdLUWxJQ3dIbmhVWkwrSnBwRGY3eEQxYkJqVTY2bkdNQnJUTiszZ242?=
 =?utf-8?B?WU1FbDFEWEtRejlTcjNWWHR6ZUhXOWtWL1VoSW9aOERRYmUwcTRHcHVJRnVW?=
 =?utf-8?B?ZUdLNFlsOHE1RVhwdU5kK21lZDFTRXc0Z3R1emdQTXdRanVRV1NoYXR3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXNIcXd4OThoNjlLZ05ZZTVCYmlmczloTmZpYXk0c2dqR00rVW02OUhyNnBZ?=
 =?utf-8?B?VHA1V0VSWFBaZHdsakoxb1BWRElNdHZ2bHdjajFVSHQ4K2x3eGlLalVFbXNJ?=
 =?utf-8?B?eUNWTnFmdk0ycEt6UWJNYkk4K1VYMitndHZnT09qZGJDdzA1VG1MRnQxVGEz?=
 =?utf-8?B?Rm5WR29aMS8rQTZoVzFyQ2R0Rzh3dG1IY1N3Y1F1V0tMMTVCdWwvc2hoY1pJ?=
 =?utf-8?B?OFY3RVRweGdNbmlxTWdZdVk4TElWWXh0Sk4rV1dVZ0tiL1N4TVpyMlV1UFgz?=
 =?utf-8?B?U0U4ZU8xR2ZoRGdHNUI2bEhod2hkbDAraGx2MmZvNCtNLy9iSkcrb2dOZUtq?=
 =?utf-8?B?OS9Za3A2dGdZUVRrbzNFTHJFcXVjbHAxMXZUcU1udGhGVElBMDFFWmd6cEdU?=
 =?utf-8?B?Yi9LcDlIL1NNamZuM0JtMU9VMXRZejVCSEJLckRydzVtSTh2REtPN2pvMUgv?=
 =?utf-8?B?MzZudlNtZHVKNzZ6ei9vcjF3QjU3TnVXbFhjcjd6dERjVXRrYlV0Szh0OEtx?=
 =?utf-8?B?dE9WbDRyNDJhbDFwNDdnL0h3WG1iLzI1Sm91Q0pEM0dWY0NsaEErb1lYcGF6?=
 =?utf-8?B?RFRJbm9lUVhWM0dlckZ2Mmt4MUxsNnZYKy91UFNyZDlIZVBrdkg0OWZ0RFUy?=
 =?utf-8?B?QlNVNzduQklTTGhrczI1OVVIU25tQWR2UkJSWXV4MUpRSitYS0w3YVRqY2xO?=
 =?utf-8?B?aE9YZjd4b2lPSUM5Vm1nb1RWQzZISUsrYnRmNTRzcVF1VGVYclp5YWJUU09o?=
 =?utf-8?B?NDhZSGl1TlcrNUtKRTIya0xaNUR1WE5GNEkwdTVla2pRSXh6YlhNMGhDOVU2?=
 =?utf-8?B?WVZnRlRialpGUlhVZVYyMFF4OTl3TXgzcXA5dzlIRVNxeUhmZWU1T0JzS0dm?=
 =?utf-8?B?SGEzRHVlSEVFVWcwaWk0SmJ2bzlIdzlYY3JheVo5cVFOS2JsejQvNGpKaDB5?=
 =?utf-8?B?OTFNRXBIMmFMOWZocHNTbHRITmVWbTU5cDBwTEVZUEpuYittRmduVWtQVkkz?=
 =?utf-8?B?REFGNCtiQWdZRm44WnN4TTIxU1hXdktTcG9xckxBOURvZjBNblBES2Q2a1Z0?=
 =?utf-8?B?ZmJoRTd5RlN3eUZvK0ZrdGlyNkRXOTM5N25YcFhNTUZNaVBhNHppVE43VW1W?=
 =?utf-8?B?dVFNQzQzTHBRcGFjZnh4OExVS0R0ZFpaN3Zwb052c2wrVXNtWS9hOWNmeG5x?=
 =?utf-8?B?dVRKb3FERFRnaDM3ZDZtTXRtdDNlUmpsbTFJUmM4cjQ1dm83Wk8wMUpNUkVE?=
 =?utf-8?B?b1psdGNFcWovcWVCNHRrN0lWTURJSnBCSTlzajhKcDNLWWh4cGJzVHo1V0pa?=
 =?utf-8?B?YjJ1WTFYUzV6THA5QXBhOHJUZllYZjVaclFnWDNPRExHZmZNNXFCa0xub3hL?=
 =?utf-8?B?M1AvcHNGdGVoV1JEaVNpYXpnUE93MEFja1kwMkNoYmVGOXlsVUVocFdlb1BT?=
 =?utf-8?B?MVpGc0c1ZDFQNFpTL2tLbElLcUVIVjc1OFUzOWNFTnpZelVUUVUzVXpUMU1X?=
 =?utf-8?B?VFNpUE5QUDc1RysxSmtKMHlTT0xuNU9lWFJIb2p3djBpOVAwY1M5Mnlsc3lo?=
 =?utf-8?B?OE5pU0xMZkRjZDBMRVdtdEs2eXJqOGpvTE9iNFVFd1ZqUTZsNCsvV011TVBJ?=
 =?utf-8?B?K25DNldRZk9RK2tabUxDdEF0T3NEYTRlZ3c0VDJETUxMNlRtQ1pFRUNLM0E2?=
 =?utf-8?B?TzBucjVmWlV4YXZsU3F2WXVVUUIwR3FhLzgxTVlSSldKaWw5b3g0cGx3V2lJ?=
 =?utf-8?B?MWhtVWJZMy9UTnMvbjVqb0QwL3JObU1EVHZQUTVmcXhKVkI0cmtCL2JKU0l5?=
 =?utf-8?B?QVNDeURqMENUY1VBWWo1dmRxaU14aEhIbnZRa3dlaDVJTzgvWUVxcnhCaUpD?=
 =?utf-8?B?QVdseGxnV0hwQ3BFTC9FUHhCckZyUTNpUVR2RjY4UTlyR3B2SHQvMUxwdUVK?=
 =?utf-8?B?Wm1UTnhiQU04dEttY1hwQTNuL0NiUXZiZzI3SGpYS0VuL0ZUQjRCd2tkWkFu?=
 =?utf-8?B?WHZ3cU92Y3hYajZibDFFSEYxT09UNGRqalBJcWJSZTR2Z1hMYUoyUmp6aFVK?=
 =?utf-8?B?RFVXT0Zialp0aDZvT1E4SFZpM0FBS1NXS1h2bjliRTRyeUJydElKRDh2eXcw?=
 =?utf-8?B?T3EzdWVDNjhINE96SEJqMDJnZkdRM250U2pia2hvZGcza3d4L0N0WU1pMGR2?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c0daf39-ce95-4b03-c6e3-08dc7646236e
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 07:51:19.6158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eC3GAu1jlEkGN4BwmJ+YJe/1a2aJGztwrEBgYZVWtpH9hKAks83aCDTP5YvsWPE8Y4gOoxfEm8UWyqM03vE1iGklKTb03CA68RyJ10uzYyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7759
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715932300; x=1747468300;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NAzvq+f/vSslKWcL/trYR2vFHQ1uYH+pYGNtXRmkCPY=;
 b=BA73Pa6/t7O0EQ/QYVhHs/EwO+6fUV4r1T9fiSO9Vt6ER+IzbnhsFQJU
 ci4NPvySWCJ34A58PPeB2w3do4rQmoCXPJkRCJasaYi56Zi3cKIVH3b9V
 xKVQyiDjgpRr/ejO78liTRWLyLfqeEKg7TD2LJLqM24qhwk4dAth5R93f
 cvkyaUoPFH41+8Zy9hVNLMnthreux39k/6nHcYEwpkyku9/EO4UZewwgu
 rZ70XYINubnDfwJyZF0mqrOqj/ILrzaBWOBiFGagu6SuriGyN4BuJNkve
 gqr9BbZitcDXZcSmuaslc8Jzog8ui2xYNKPB92w7snHyuH6eU6dcRZUvW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BA73Pa6/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: implement AQ download
 pkg retry
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 17.05.2024 09:26, Naveen Mamindlapalli wrote:
> 
>> -----Original Message-----
>> From: Wojciech Drewek <wojciech.drewek@intel.com>
>> Sent: Thursday, May 16, 2024 7:34 PM
>> To: netdev@vger.kernel.org
>> Cc: intel-wired-lan@lists.osuosl.org
>> Subject: [PATCH iwl-net] ice: implement AQ download pkg retry
>>
>> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due to FW
>> issue. Fix this by retrying five times before moving to Safe Mode.
>>
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_ddp.c | 19 +++++++++++++++++--
>>  1 file changed, 17 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c
>> b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> index ce5034ed2b24..19e2111fcf08 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> @@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct
>> ice_buf *bufs, u32 start,
>>
>>  	for (i = 0; i < count; i++) {
>>  		bool last = false;
>> +		int try_cnt = 0;
>>  		int status;
>>
>>  		bh = (struct ice_buf_hdr *)(bufs + start + i); @@ -1346,8
>> +1347,22 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf
>> *bufs, u32 start,
>>  		if (indicate_last)
>>  			last = ice_is_last_download_buffer(bh, i, count);
>>
>> -		status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
>> last,
>> -					     &offset, &info, NULL);
>> +		while (try_cnt < 5) {
>> +			status = ice_aq_download_pkg(hw, bh,
>> ICE_PKG_BUF_SIZE,
>> +						     last, &offset, &info,
>> +						     NULL);
>> +			if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC
>> &&
>> +			    hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
>> +				break;
>> +
>> +			try_cnt++;
>> +			msleep(20);
>> +		}
>> +
>> +		if (try_cnt)
>> +			dev_dbg(ice_hw_to_dev(hw),
>> +				"ice_aq_download_pkg failed, number of retries:
>> %d\n",
>> +				try_cnt);
> 
> Do you really need this dbg statement when try_cnt < 5? Is it not misleading in success case (with retries)?

Agree. I'm going to change it to "ice_aq_download_pkg number of retries: %d" as Brett suggested.

> 
> Thanks,
> Naveen
> 
>>
>>  		/* Save AQ status from download package */
>>  		if (status) {
>> --
>> 2.40.1
>>
> 
