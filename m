Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2522FA82E2B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 20:08:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA38240B90;
	Wed,  9 Apr 2025 18:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSmDLNtEAJJz; Wed,  9 Apr 2025 18:08:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A0AB40B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744222133;
	bh=KjOOg7x3mu7XPgMk43HS6c384ctQki5DPIqt8UXRalk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EIeI64l0pVAZ3FgFRmBb6ZzW+iCTydxlmZB0CnKI+lXqwoKfwVK3+LJM9kiwd/tvK
	 6FQgCuuheP0B+kA9k0YZDjchfRWL92atwNlMFUcgE5qJC13Hi0ji+vWaKl32BbmBCo
	 eoYbXoi/o60gCWw/dRDkcLSYZa+7LkOY/xbvG+EzeODHTIXLmyG34L0bXnAZJq+/WB
	 gCmdSHducQ8C7jZ5ZkKgnQYkzkrIoXu3MskkVkZQUSGS8x2iUXuE3Dm0FoYwPpyTRi
	 dfmixi7PDBtbFXitHdcoXteMW0+W9uaawCrIpAS4eb/K8tlH1/KTjdJTSL54K50fan
	 hOaySAqO7LJOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A0AB40B8B;
	Wed,  9 Apr 2025 18:08:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0969F1F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 18:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E41144015A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 18:08:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kx9VkAtf9TX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 18:08:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2911540102
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2911540102
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2911540102
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 18:08:50 +0000 (UTC)
X-CSE-ConnectionGUID: FYmKgdTtSBqVuIf2hOKACQ==
X-CSE-MsgGUID: xKBK1DdbSe2BgoYx7TaYgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45427991"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45427991"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:08:50 -0700
X-CSE-ConnectionGUID: uzhYz7NPQK29bPo8SBVdJA==
X-CSE-MsgGUID: DPCqb0waRcSWS+NB6tiIOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="159624495"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:08:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 11:08:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 11:08:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 11:08:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K3Gso2YYXlceOEdDaQodSbJcxh5mBLSwg0F7xdTOcQXbMsIO0vKuLqOxmfA4ZdZWNiOS69HlkrP2IbATsNr0U3rRCL0o40/US5aUyFiQTYtrm80fHJKGx74FU8D2ZUCQrRy4fVPsnzPnwudPq2WWJxkYrBTIuw6AuPrYKLExUsCEAXHqLhBQIFcyQ3mP+5tDma+4rxdc+3/sxPRur0ezVct2/SzprE77Auw0cEH3ryoh3zKiiATywLPKdV6ZkN4GI6zGlDDhA56heQ+OUkSgwLzZVmfexCjmJIzDRAuN4kr9GREC7OZYyla4HhhjvhZBh1SHrxt3DFrRhiGe/Wkkiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KjOOg7x3mu7XPgMk43HS6c384ctQki5DPIqt8UXRalk=;
 b=ASNMD5mAbKAgZx8rwa0jtI2PVeOS4yZpH9QVBuIDpioSXjNLGRJvmIcVeJV5zhK/Rkmc8QYRG0agygG9c5Y2FAQr8Io/N2O3rdL8lXJfk6fexIxDeDN48lT6TN4Z64bS2JefOgAIJD0eUShgorRhPpqGJzuLcN6QfLrzijX2y9kWjtdIf4jMgiNsfFbceOT/pWAUv14ivC1vICkavdeyme3Ph9eJHm/ND1G4HdDWr3CsujTfelNYR8z2zEYI4+YEurC4/6Soi3x0AC6W/+gpiMTbAbCbNRLWkXa9I9xY0Lui06DUK3HNF7NCRhtIEFB2JZ4EuVMK48JCLMDE+qlhZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4943.namprd11.prod.outlook.com (2603:10b6:a03:2ad::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Wed, 9 Apr
 2025 18:08:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Wed, 9 Apr 2025
 18:08:47 +0000
Message-ID: <6b39d76a-b2be-4d09-a4b6-efb01c4be006@intel.com>
Date: Wed, 9 Apr 2025 11:08:46 -0700
User-Agent: Mozilla Thunderbird
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Salin, Samuel" <samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-21-milena.olech@intel.com>
 <757ed954-47a9-4be3-909e-5a343f453314@intel.com>
 <MW4PR11MB5889766212BD05ADC555FD608EB42@MW4PR11MB5889.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <MW4PR11MB5889766212BD05ADC555FD608EB42@MW4PR11MB5889.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0227.namprd03.prod.outlook.com
 (2603:10b6:303:b9::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4943:EE_
X-MS-Office365-Filtering-Correlation-Id: 3229b5e9-c69b-48ba-f807-08dd7791928c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0tMNVIweXNVdTBwVjFYbE42c2g3S1R5T2VkdnN2NWNUcUVHWU5vOVJFQ0JK?=
 =?utf-8?B?VlJQU3J0cEpsN2JGNG5LZDl5L2ltYVFNWnIyeFd6dEZrQzcrNk9zZUNGZjBF?=
 =?utf-8?B?eWY3Tkx6cjFWaXB1eTNsN2trSUZFSDBuY3NIa004Z29SQUJ0VFZuUGpIdzR3?=
 =?utf-8?B?cGtSYVZlcGdHQ2FkcXVkd1plOFhvTmRZUnM5VExrSTdsdW00cHQvVlNwcVlQ?=
 =?utf-8?B?K3FNUm8reUJqWFZrTGk0SzhjRWVKNWZEOGk5VGRKd2oxRVRVYzlqdUsvOVdn?=
 =?utf-8?B?ZWd5c09ocE5paFlOYXZ3am03T1F4bmhzdjdXY3pVZzh3RlBDUXI5Y1M1SEMy?=
 =?utf-8?B?VDlkb1hVVGc3eTJ5VlNtcmR6M3Y5aGtybGIrWm84L282bTRybGZjcVd2WnpV?=
 =?utf-8?B?ZjVFK2k4WlBZY3hIR3hZUVp2dHVvdk90YjlRZUdqWnFiNU50WDhJeHdzL3Va?=
 =?utf-8?B?UnQxV0dZNUJhUll4S0RpN0h4S3VSNDV0NVhBRFRFWFFId3FPUzY4Q0sxMFVP?=
 =?utf-8?B?OHArRXBPczNGcWVzTmVUWkhWNytJLzN2T0E1Q25zTGFIWjhkWXFuMnMxRmhz?=
 =?utf-8?B?UWRPeGVZME5jaXJ6Uk1DWXJWMXhKNHB1QnZEd1RmWHdtVlFsYnlmQ09IUUg0?=
 =?utf-8?B?NSsyamhNZ1NWZzdFWXJUb3I2NnFINVNqbFd3WXVLMEJLQUNzRG8zNVNtQ0lq?=
 =?utf-8?B?MTREZVo5bXpwbGlUZjJQL3lhQW1PeHA4NmNVYS9scnJCOGZGRUZvL1BZUjVU?=
 =?utf-8?B?ZjJITmlYRVNtRkwvdktyTm8rNU55b0hXaXFPcXN1a25DSVVPeVlMK2w0Y2RK?=
 =?utf-8?B?Y2R6OGFWT3A2cjJ2OUFKV2Y0UThLdFJ0TC9EU1FTYXZ1NGpMUkNtU2RnNVF0?=
 =?utf-8?B?Qm9wT09UMUU5WXkydWtKQU0zSnVsK2FiRXUrQUYrVHN4VlV6VEZ5QzF3UFMy?=
 =?utf-8?B?QXU0WjRTbWxkemtScVAyeVJFQnltMGZnU0NDT0wzSXVab1hlT3VSMEFRNkVD?=
 =?utf-8?B?S1VsSnN1R2pKTy8xekNtNFJsSnQrRVczUFRzS2dZVmF2RCtOU25BMXQyQ1lv?=
 =?utf-8?B?a0xMR1d4NzN6bkZZbDNuNzV5a2l2NFZFM1pnK0pOZU1SV1phWjBOWFNUajBN?=
 =?utf-8?B?allFVzZ5cVFjM0V3ZzNFZ0NsSHhRODI2cVoxRit6RHJwNXVQU2hsVEVmYmxj?=
 =?utf-8?B?QUU2ZDR1MDk5Y3p0LytZSytINFNOeFNNWHJoQzllbWxyamRUTm95c0R0Q0dE?=
 =?utf-8?B?cGpjZnlQbGJaMGVKSTJQN0ZRYUlXaWdZVGRudy9DOVN6K2Z6M2grMDVhZFhI?=
 =?utf-8?B?RlAweHVWczNjMVh4WHllK2c3RGVBeDQxTFlYd0xEaEQyYXhJRTFwb3V1c1c3?=
 =?utf-8?B?ZVkvQVNXSzNQR2tNRE9HWW1wbEVKSXg0WHlQb2cwbUo2RWo3OVR1b2x6Rklu?=
 =?utf-8?B?TmpTaHg3VEdQOVZlT2pNblI1eFBrUlFlaUFyQjZCTmpzSXlWajFhbmYzUlBY?=
 =?utf-8?B?MjUzTnFMcmxYUFd4Ykt2VGZhOVBmZ20wUWIzN1dmV1NOZW5kVUMrUnRpQU9o?=
 =?utf-8?B?VFdXOE9LaTRtbkYzMktNTTdNQ2NkMXFCcGRqek90bGRLVnVFRVBGeWxScXJw?=
 =?utf-8?B?MU5JZzhhcXdUSFExeDJXWDMrbkxkTS8wWWRmNGNzRlp1T0hEK0w3dTIyNXBm?=
 =?utf-8?B?L1JWazJXUDFSMDhZTmE2VG9ocm8xdkZkRHFDWC9uSVJGbXFraWUva0JCRUFm?=
 =?utf-8?B?am9aL0N0REJ0WmdIcWRFbEludkVrRjNSZ09FN1BhS0ZYbmJQZjdaY081bmZO?=
 =?utf-8?B?UC8rdFhvWkszRjZndWM5QzM3bEI0SnVlTDJ0RjNGMEhkU0hQQ1ZSVG1JblpF?=
 =?utf-8?B?bTIvOUtoL3U5N2paNlRlVXFIb3htYzlOS2lzalI5Q3pqTFlJWm1CeHcwK2dD?=
 =?utf-8?Q?p9KTElXqU8k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjR1aHdVZUVtRytxNFd5YWNPMUZqTzN2V1BVTE45RmJvclIwTGU3eTJxQmF3?=
 =?utf-8?B?VlBwV2hVcktQdzMxei9kZFVRNnBETTB6Njh6ZkdmcXFVZTFxSlkybmhPT3Ir?=
 =?utf-8?B?ZXVjdGI3QnY3YzRRUnpjTW94NmtsQUg1cEppT1hJRTFTRmFMY2dCVVk5c01L?=
 =?utf-8?B?SDJtcmpucFBFQVVINnI1SGR0alJYeGlSZU9IdDR3TWtXci9QSW1Hbml0TmM1?=
 =?utf-8?B?RWtjS29VeVJ3cUtsSGtCVGg0MFVxNWQ0M284bnZCeUZZSFp6cy9EbnRmWVp0?=
 =?utf-8?B?UE9BVW05RXE1Q3pJQ1pQUGV1QmZyRGFqUjBYcTg1N0lhbUx4c0ZZNmRmd3d1?=
 =?utf-8?B?Y01IU0NUekpyVklnL1ZJUUovdm9JVWI3czlicVpleUdNc3JKc1BpZnMwUlVH?=
 =?utf-8?B?cmFwNGVUWTMvYlB3YW5IUUFlR3hlVEdqZllpZG1JS29GVUpQbHFzdEd4VXI0?=
 =?utf-8?B?dTdyZFJwdi9veGRzcmVUSk5zUEovSnQzSnp5WURNWnd3VUZwRi8zcWZVcDNQ?=
 =?utf-8?B?SkZ2SlE5eTJqRERBcVhBaEZxYVBLN2dMYWFEL1RKblI5OUVaNVJJdmVkeHZv?=
 =?utf-8?B?ZUhHanQ5a21BOVpHTWQ3aXZmc1JnRkJKekM4TUVQbGh0YXVDWG9aeVhPQml5?=
 =?utf-8?B?QUhSeURBNkdxSU9KWUR0b09LWWcyeko1Z0licTdCSE96dUs0aXo1MmtkaFRM?=
 =?utf-8?B?cndIMXNBK1FBRXVnR2NZNHE1VFdRUUkxaWxaaVNROGRQbXV0bytaU3E5YlA3?=
 =?utf-8?B?T0hxWVhMOU1GdkpvVWhKNjVWZjFDRTZuNTRKZjlTMWdaL1orM1V3aXA2ME1F?=
 =?utf-8?B?cWhlTkllTDdCbGJZYm55R2lQUFBaK2pWWDdvaEJVeFg4TXJuTlVqSVdiTmhL?=
 =?utf-8?B?VFRkWXFYRmpEMVdvRkxQL0p6SUVmYy9YajNIV1gyZDhpKzl4cEx6cEsveElY?=
 =?utf-8?B?SEtPNm5uUSt0bjlqazRHcFI4aWhtQXBqcDRUbHFjYk1CUVBUR3c5RzhwamxT?=
 =?utf-8?B?dUxoeUhRNTVSZy94MkllajhMTEdNRk9xUHJqWFl0K0VMSnFjM25yZEZxcTA4?=
 =?utf-8?B?eVVBcGtjRFUvbXV6ZlltRGVDd0hERG1BNjNXMUxHL3hxVVF4eUFGK04rc0xy?=
 =?utf-8?B?UnJjSytTQ2hLc2c1NHpSZHp1YVMvc3FFSVMvc3RQR1kyclRUWTd0WG1GeFJE?=
 =?utf-8?B?bFd0dTg0RzQxdUFtSWY5TW5NUk0rQklOUW12c1dNVnJzVkNHUHhVUFVISy82?=
 =?utf-8?B?Q1E2RG5tWTBvT0lESklaQU9uLzNPMjNlSHhIRmdxN2JkMUJvU24zclhYK1Zt?=
 =?utf-8?B?VGRzeGhFbGdueTlmRGQrV2ZzVzZlek56MEpTRy9JN1ZlRTk1MGU0VmpQVXFK?=
 =?utf-8?B?WitaM2lLWVZWdWlhU1FvQnFvaG5PUDhiQ0RnMEpsMG5VaGZtY0h0RmhkMDJO?=
 =?utf-8?B?YXFpOUE0V1FITlJlSE10b2xaaVN2Zjc2cEN2UjNkK0dNUi9OUVBrY0ZWY3Ux?=
 =?utf-8?B?c2RlbnpYUEtzRzJldlY2VUtLcG5CYUh1emJRbis3cjRCMVJvQkJtZUF5YjR5?=
 =?utf-8?B?M2VUZU11WldLdkJRMU5PcllHN3pNOWVvSjlFeXpoYm5sZnNVMDJMOWp0Mmkw?=
 =?utf-8?B?S0FzQXZ3VUhGTXhPWWdDWFQ4OHE1SnlkTzhmV3VGS2R2TXN3b2RsU2EyeklJ?=
 =?utf-8?B?WE9GbERBS3lmc2xQRllyeTFGWmoxdDlnLzlReHl3RkFiOEtIbVd4V3laQm9N?=
 =?utf-8?B?T0hPcG1WQ056dGV0bzZHbTRIT2ExOUs0V3ZGUFZVaFZuNGVzQzk0MGF1YUlw?=
 =?utf-8?B?bDJZZHdDTXo4VDJLd2w1Q2RYSUs2VmlpdHVyazQ3ZmhwMXJUOHNBdDY3V3Fm?=
 =?utf-8?B?WkpVY3lORThNWlR1eDllb2wzQ0FrLytoZkRHTnQvQmZsN1c4cVNhdHk4UVBq?=
 =?utf-8?B?S0tVWTkzdzRDVlR0WllzVDJ2ekxhdStKY2JyVUxseXVRRXh1cmNKYUlSUnlN?=
 =?utf-8?B?ODJaWDJaMlBlYmJUQ0Ywd3BxakhOcWc4ZUhreG5tQTJRTnowS2dKTEY5N1dx?=
 =?utf-8?B?akJzU3JjS016cXpCdkMwMkVLRlNjZmVzMkFoRGRzUC9IUnU5WFU0TFFoNkxI?=
 =?utf-8?B?c3VvcDBleE1wQTl6eTFRNFYrZk8xNDhNR2RTYzBlV2xlaElnWDd4dldyUUdV?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3229b5e9-c69b-48ba-f807-08dd7791928c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 18:08:47.1128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ysqsU29AWLiHGyAEqb5YkKZbG2TFMRsNsDv4SR5hH5soeTD5sou872wRnxLR1DgA4plWivq+1TE9h7Tt+SxntHIMlt7xrYbRhRP5y1W0He4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4943
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222131; x=1775758131;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+z+pp0oLg13qGbgQK2vjdJIgpQhSvxlE1WOlV22Ag9o=;
 b=jTemoXZp4XuVrMvfHqeJUpQPlBQ5fMR9rqVGVCTvY8cpzV45Ehov+xkm
 Mby7+LyPj2uWbco4k7B5s7sldWe1FyDaiNOMwXaCEfb3ZJ1w/biXCi46X
 uM8ADnh5JZggeWIcJpQLR6U3fiIQN0WlSIADyd9/hdMbWBV9XOHpSPvm/
 HYhMi186ompxNBE0f4LnPNkbDVkCF4nscQZGYsTKRuBM20c8aHe0DoiiI
 gg0KRWwfJ55UfRUXmckPH+s/OFATKDZz6mVQ4RSH44a2oF05E2Qglicca
 SXtexiVfGSZgtSIvidmv84ky1/Z17BbNg+k1vfwOvyPhYhnwvghzQqxGV
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jTemoXZp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
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



On 4/9/2025 7:04 AM, Olech, Milena wrote:
> On 4/8/2025 11:23 PM, Jacob Keller wrote:
> 
>> On 4/8/2025 3:31 AM, Milena Olech wrote:
>>> +static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
>>> +{
>>> +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp, *tmp;
>>> +	struct list_head *head;
>>> +
>>> +	/* Remove list with free latches */
>>> +	spin_lock(&vport->tx_tstamp_caps->lock_free);
>>> +
>>> +	head = &vport->tx_tstamp_caps->latches_free;
>>> +	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
>>> +		list_del(&ptp_tx_tstamp->list_member);
>>> +		kfree(ptp_tx_tstamp);
>>> +	}
>>> +
>>> +	spin_unlock(&vport->tx_tstamp_caps->lock_free);
>>> +
>>> +	/* Remove list with latches in use */
>>> +	spin_lock(&vport->tx_tstamp_caps->lock_in_use);
>>> +
>>> +	head = &vport->tx_tstamp_caps->latches_in_use;
>>> +	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
>>> +		list_del(&ptp_tx_tstamp->list_member);
>>> +		kfree(ptp_tx_tstamp);
>>> +	}
>>> +
>>> +	spin_unlock(&vport->tx_tstamp_caps->lock_in_use);
>>> +
>>> +	kfree(vport->tx_tstamp_caps);
>>> +	vport->tx_tstamp_caps = NULL;
>>> +}
>> Could you provide a summary and overview of the locking scheme used
>> here? I see you have multiple spin locks for both the free bits and the
>> in-use bits, and its a bit hard to grasp the reasoning behind this. We
>> had a lot of issues getting locking for Tx timestamps correct in ice,
>> though most of that had to do with quirks in the hardware.
>>
> 
> Ofc :) So the main idea is to have a list of free latches (indexes) and a
> list of latches that are being used - by used I mean that the timestamp
> for this index is requested and being processed.
> 
> So at the beginning, the driver negotiates the list of latches with the CP
> and adds them to the free list. When the timestamp is requested, driver
> takes the first item of the free latches and moves it to 'in-use' list.
> Similarly, when the timestamp is read, driver moves the index from
> 'in use' to 'free'.
> 

Ok. Is there a reason these need separate locks instead of just sharing
the same lock?

> Regards,
> Milena
> 
>> Thanks,
>> Jake
>>

