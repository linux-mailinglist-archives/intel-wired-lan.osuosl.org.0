Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6144ADBC33
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 23:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86BE540C11;
	Mon, 16 Jun 2025 21:47:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vyti8qqnBeeX; Mon, 16 Jun 2025 21:47:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5C1F40C14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750110457;
	bh=vf+ktjiO42p/1f9ebPq5kX+L/aa/qKREevs3ttECrC0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WCaj/rDWoFNxdSiH3XhzkioDo7iEyfkvIwRJMH34dCosV9lm/AmP+D0s6yi6SSsvD
	 Iwpvc0zi6lAFDx3qCgkzFiZywEFSNxKwCrTqJl9m1sSZ1j9ge42Ru5/MuOzEqLW9Ls
	 OM6APdy5xMFX23PI54bQ8qR3FmaHnxGKU5BvtbDhSvojSEMxJzRqeYVfpR4z2nWGs8
	 ia3bju1W9b+w/iEY4J7ZodFTFhQUK5lk1XxBX5iERVALrQ1kJuMgBZfs48qm7y9ufK
	 cxH9kuRsd1RKdy9NQ2PEtpcE+DP/YeGeQl6+2BmDkN6Itkng/TdmAZjAulu++m2j7E
	 L0idGWunIulNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5C1F40C14;
	Mon, 16 Jun 2025 21:47:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 972C0151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 21:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 785F2608F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 21:47:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id droOnVYtTPen for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 21:47:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B1B436078E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1B436078E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B1B436078E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 21:47:35 +0000 (UTC)
X-CSE-ConnectionGUID: ZmWM+fcKTbOsCZ9LpQ4odw==
X-CSE-MsgGUID: RWcIodaaTlaupufQSknOpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="77660332"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="77660332"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 14:47:34 -0700
X-CSE-ConnectionGUID: VAr39HhWTWiB99ZLxf0f2g==
X-CSE-MsgGUID: t6TCvhnUSCS6WLjI88s7BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="153881853"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 14:47:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 14:47:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 14:47:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.82)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 14:47:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A+fk6k8teu8mlnpZMDDHqoh14gYFFq/SZ4wM08ztkZQPgwSRTfLxjClIL7ASTryg2+Kl308czrMUDpmrJNkH4NSGnoOCU14wrc0vO8iDcqcfq+TTc28Vziw+RJBAX6n0qQqr5Lxar3yUAGYpgtDp/yj5w1FHFG6CitPnsc7cuzcV3f91LnWvxS1sHaxuCtm2FyHWeNhE9qg0Qu//QPS7LzXDIzz+yo2G0XI8WxdmZ0MLEJzhUPeZz8fWAFAbPpHMeS5krrqHJ2g4TvTpOoK0RHRugxruSsYd1qSO7Rzj738hy2nbgEWezTY2CT8cQ52n2m/W6sNBUxpYJB0T2e0TDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vf+ktjiO42p/1f9ebPq5kX+L/aa/qKREevs3ttECrC0=;
 b=DAPpduKZrnwDr8zTJZhfWt52wS35miij929Vd4Z17yGp1saSLvApSm9gLFRDri1Tyx7W0TOKX7iR6Fvn0ynhMBFTOhIGG60YO62nAkjALMNnVbf5x4Nbwr1m0UWFr50PJF9TgF/jAhLBpjFHa5zBf1IJfIqhf4LXRNMfMEiQKyZy2NQskZwJs1yTQLFpy9SLt7glnE4/R10XB59yUd7CN3DU325fVcv9Ey7Grc9YDQEYKCRryxlBXW8U02iCPFRJ5K9N92e4/X9ASVJzTmS+tw0BMyzIc0t8qrU/WE4zKQWwV+rs1pBn+mR+JxK0EAsNgIG5KskZti18VbiV5hdywQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB5066.namprd11.prod.outlook.com (2603:10b6:806:110::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.30; Mon, 16 Jun
 2025 21:47:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 21:47:31 +0000
Message-ID: <3504878c-6b3f-4d5f-bcfd-2e7e4a912570@intel.com>
Date: Mon, 16 Jun 2025 14:47:29 -0700
User-Agent: Mozilla Thunderbird
To: Ian Ray <ian.ray@gehealthcare.com>, Jakub Kicinski <kuba@kernel.org>
CC: <horms@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, <brian.ruley@gehealthcare.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250603080949.1681-1-ian.ray@gehealthcare.com>
 <20250605184339.7a4e0f96@kernel.org> <aEaAGqP-KtcYCMs-@50995b80b0f4>
 <20250609161039.00c73103@kernel.org> <aEgokTyzDrZ6p4aL@21d8f0102f10>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <aEgokTyzDrZ6p4aL@21d8f0102f10>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0068.namprd16.prod.outlook.com
 (2603:10b6:907:1::45) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB5066:EE_
X-MS-Office365-Filtering-Correlation-Id: c763a914-08c0-4a30-8d36-08ddad1f6544
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dy90UGxzbGdGUDRka1NFa0oxZWdtQjlyTHNRcmhRa3doa0RPWDNITEtyM3Ri?=
 =?utf-8?B?ZjQ4bWpPbktFN0RLRG1zeWo3NEt0NWQzeXNQMElwUWNlYlBBekNDY1oxdFI2?=
 =?utf-8?B?UE55N3AzM0pCaUZOWW9Na3lWTXBrS21GYnFjTGxSSHlZTGp1bUJNVUZkdHVr?=
 =?utf-8?B?NlFSYTRQTkt3YjhBRWJsb2pVaTdFbTFEWll0b1N3UkJoa1ZvWlRFdHVaVnNn?=
 =?utf-8?B?MUZNS3RUUWRWcytUeEVZNkRUTTRkbHVsOFB1WWVvZGgzNlJwVTkxYktyci9r?=
 =?utf-8?B?eGtHc2tPVlhicU5vcWN6S0hVKzJSUHdiMkZlVVBvbllCbytVS3BsNnRhL0F3?=
 =?utf-8?B?SUxwL3JnS25FQU1taDB3Q2JPMmRSc2N0WDBSdlFFZC80UnFvWkdjTW9KK0VX?=
 =?utf-8?B?Q3FwSnVBVTRkSjAxTTFhRTQvY1dQd1hiQklUcGNmVlRDYzh4ZVVtR01XZE9L?=
 =?utf-8?B?NVBVSUY5aFNTNUlTaEhMbzBKY0F2TlpCUksxSXNXTkE0bFN3S285MldZdjZN?=
 =?utf-8?B?T2hGc3ZVZkFmckl6Y0dDdzV5MHZoNlM3OFVqTUNidTBtVXNqS1d1bFpnZG9j?=
 =?utf-8?B?VC91T3ZWTDdSY1lxSzZhd3p0WVE5Q2RMRldiSk5Ea3VXa3NXTWo3UlM5dEEr?=
 =?utf-8?B?ZGptank3V25vWVlkZDhzTW9oWmtxNW5Nc3NBdkE0TkQxU2F0cWtHbVBBVjdQ?=
 =?utf-8?B?R2hlZS9XbkdiZUxqUWVVLzRrSXN3TVFzaTZiWVNaZi82aEdxZmtzc1BGS21w?=
 =?utf-8?B?TjRiZm9OSXdBQ1RQWm9Jb3BHbWRRbUZFUGI4dGdxa0E0TzJ3ejFhNHFMazVN?=
 =?utf-8?B?dmFSZ3B3bkMydzNOOEVjSlRiSWpuazh5ZGRzdUk4blVJTzFTeUNBTm1IMzRI?=
 =?utf-8?B?eEd6TG9obTlBT1FLRFlzMW5Oc0dOVVhUSWF0Z3VFcjZleURoVVlpcmxnTm1q?=
 =?utf-8?B?cUlHaWpSUzZnek5haThJNHE3WnpMYVRQVVhHWm5lclVFQUhZY0N5WmNhQlBM?=
 =?utf-8?B?cDZHa1N6S25FSWhoWndNOWlySkx2YjFMSVowN2UwclM2eGdoOFpCd0JPVVo0?=
 =?utf-8?B?UHNOODk1Mk5zRWxFRWlGbUNYczJZRitwQ1Y2aU1jckZINForR1JRdW9lZXAw?=
 =?utf-8?B?QmR2Q241eXJkL2ZjcTl5RWtDYWJlY3FoeHExUmRYVTFOU0t0enRpd0NBRDZO?=
 =?utf-8?B?Q3hRUHZ4enBxMjVBOXhDbDRaQ3RYcWRybFp2eklNTmwxK0FuOXlEUlV3NjZa?=
 =?utf-8?B?MHd5d0RtcStSWWh3VjhEdHFoa3lmdnkwZDNqSTA2TzlhRzBsOE5NZUowem5k?=
 =?utf-8?B?WXhXd1B6MHF5OHNEb2ZmUW5UY0ZhMlQ1bjhBNDBwN2xwYVE2UjUxSVRCYXNJ?=
 =?utf-8?B?ak5NTkgvdldxekVuU0dpdzlIb0YrYmMyeUdBRm5iTGlha2NWRVEvNFRveXdU?=
 =?utf-8?B?OVlpTEFKcWxOTEVNWGN3WGNVeERvNnJrMmpYck0rZXZwTHMvZ2wrY1EyZlFI?=
 =?utf-8?B?b2c5WkJXNnllMVpESlMrQnBDKzd2aU53K21oWkJKK0M4S0JUYmttVWl6MVlC?=
 =?utf-8?B?bURiU2h2Witpd1dORC9UQUlTcWUxZmFsNElzREMzYjhGSnBnUVBWY1E1K3NN?=
 =?utf-8?B?SnZ0dVFBbFF1VUlhbDJEWUZXTFNlWFExalN1UWErb2tUZ2xBcUlsVG9PYU9t?=
 =?utf-8?B?Z1Z0QnFOUzlqSWxxY0M5SDFueDNnQ0RBdkhDdHdOL2JZb3hHcTZWSGp1ZEdR?=
 =?utf-8?B?T2xPV3dNclRSOGduNTJrM3hFajNzd29SVkFTM3lsdmJqWVNtTWd5MWpTbnhU?=
 =?utf-8?B?Yzh4WlRQbEUyQTBRUjUxZExleGVuSFZQWnlrR2Fua0g1K3pVWU1ET1FybS9w?=
 =?utf-8?B?aE43ZFB1aWFOWXkxSk1qTGJhZENoMUNTcXk2TU1sOGdXL2tRT0gycE9neU5n?=
 =?utf-8?Q?/wt6NTXWa7o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFRpU0ZzbjVvcjRib3FXSmY1cERtTjkwTXVHOXRmSFJGNk9PMFJXZGFqL3JV?=
 =?utf-8?B?Ky9CODNKdlNyZ29ERm5RUXRnSGlhZkFWc0loTTYwbmh3UUUrODFrcU4wdW92?=
 =?utf-8?B?dmxOOTBNZ0J2ZzFkWmtEaFIzWGtzdUczWlhJYThhOTJ3K01jV0dleE05MXQx?=
 =?utf-8?B?UXczdzV5RnhibFNWRUg1dWtjWSszUklvTTM0REJ4TlpmTVpid2NZTjM1TnR4?=
 =?utf-8?B?d0RVZXVkSjgzMnhWUmE1MHExOGhuellyZjZwc0NyVWZCQXQ5WnFjbjA5SU5z?=
 =?utf-8?B?bzBoaHFqWGt2U0I3ckFLUkxaWElwdVZrN2dBVm0rWkNQaGVKNmZURHVpTmMx?=
 =?utf-8?B?YmgyOU5LRVFmemFGeStkQ3FzY1l5NzQxTk1YRjJuUjBTVmdBbTRyQUFMQXpT?=
 =?utf-8?B?TU5WUWVZMktmNjVjSE1nbGlWVXk0bUhEQnpxVGVSME9nTGZuNmkxY1QvdExD?=
 =?utf-8?B?QTFrNGxtNmdDMm5pbDQ0YncwVUduOFZSemZKTHFSam93dkZtTFR0aWJ0dENv?=
 =?utf-8?B?QWI3TnBnOE00YlRvTTBpbTNKME4yZ21YRmhwRUNSYm1aTklIb1BFUEpxaE9v?=
 =?utf-8?B?N3QxTEdpSm92KzBCeTQ0ZFl1UkQ1SUJ5RnRvT01Pd2gyRGg0RDUzYzdXelpW?=
 =?utf-8?B?Qk5lNWVtNEtzQ3JXREp0aUQ2YkNUbWZnaGhVdnZYRHMyemppVkNwN2w3YXN0?=
 =?utf-8?B?WThjTytCMnlWYTBEbWtQOGI0ZTlKRTRXWkliTmZCbFQrRlFxSWNrcDUxOWtu?=
 =?utf-8?B?bFhDLzJXbm5FL1l4Qjh5dUg1c3ZzU3N1aTFxM0ZmbEFmK09jQ2lQVzAzMnlw?=
 =?utf-8?B?cFZKVHoyald4dlpqcmpaSk04RDVEVEp3Q1JYalVvU1Fwb3NtaEpITUZFNDlY?=
 =?utf-8?B?cHovVUpGQVRVOWVPbG45WnVhTnlsOEE1L0lEM3NKNm1BbXhOQXh5aFpDTkMy?=
 =?utf-8?B?aGRwcS9udVhuVnA2bnppNng1MzNHeE5SaWF2WW0vcGcvaExNenArNUllZUxW?=
 =?utf-8?B?VDh4MTVVakVtYWNFSEZEbXBUaTFVbFl5TW5qek5QaFZwc3MyU05LTVZZNmVv?=
 =?utf-8?B?UkJ6UFMxdVlacEgwQkVDQWtyaWxxb3J1bzN2R0Z1dXNjc0Z0alZSNzdxaW13?=
 =?utf-8?B?WGRZb0ZGa1dQbzkyK3ZtdnNtRnpJcE5Ha0VjaytQSmE3Z1ZRcWVoUFJ0S2NW?=
 =?utf-8?B?YU1PMnVhRHJ4TWdOaFE2WlliNFZhc0ZLZU5LckdHSlp2LzVKWG9lYzN1NEVq?=
 =?utf-8?B?NlVRUEhNUHEyYzQ5bmk2Wkh6WWVseldvK0JRTHpDR2ZwbFhQU29yVkFnb2dR?=
 =?utf-8?B?WGpISUJ1OW10eEtEVXNlZkVJUGJPcVpWOHNIYTV2aE4wUVNqWkFJWkd5TFlJ?=
 =?utf-8?B?ZW5Sby81ZXFMQXdDbHR0MEZZS0U2bWh6QUt4L252SHlOdzNHMWRhejNMRGRj?=
 =?utf-8?B?UjdZbm9paE9RazBkTVd2ZkhUMGJKelE3eC93NnJ2ZzRZSzVZdnp2aG1YY1g3?=
 =?utf-8?B?TU5ZbUUwZjFJcEhKOUwvTUQzb2k4VG9OcVdUUVJGVm0xUlJKMUwzcmQxdjZ5?=
 =?utf-8?B?bTJ2cUUrcFY0eGFkUlloZnZvODlhVVd6ekJUb3dUUjF5Q1cveHNMN0ljQXEw?=
 =?utf-8?B?MjY1dW9kbW95TUJycG9DS01RSVFGRDFuWWxzb0k2dXdjK3dpM2xYYklhbXpa?=
 =?utf-8?B?dTVESFcvdUJmcHJUM2JWS3BsVmpBN1N0SUFmT0JnMmdmRm1YM0pTODlqT2tW?=
 =?utf-8?B?WWRzYVFDUFZSWk9YTklpSUY2dTRLRjFCZFVFYThwQlRYMGoyL1dvdlRCMC80?=
 =?utf-8?B?UmhoSTdhaVRXUHRQSkhmZ2hxM0JGYkJGSUp3MXY0bjlObUtNU2xGWmltdjhy?=
 =?utf-8?B?RlJCTUZMYjY5dTJrbERmcDEvQlBiWE5vUi9Rb01vR0NNMzJKRjZZMWpmazNY?=
 =?utf-8?B?eW9XbW1FMmZGWDVyVFBNeTNqWjFrWFZVS0NrYTlDNWduMjJ0V3VMSEgvbXY0?=
 =?utf-8?B?NVcxbkZGeGE5ME8rMUdOdGpOVEtGS3Zkc1lQVWRoRlB4dUorY2Jmd2F3U1Fh?=
 =?utf-8?B?V29kUlRZenNkMGJVSDdYSzlFa1MzaEprOTA0SGpmWUFQVEttb2J6MjdoeWtn?=
 =?utf-8?B?YnZKRjBJakIyVWVvR3ZXRjVaQ0ZibUNWNE04aWFkdzJSN1NIY1NPYmF5L2tM?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c763a914-08c0-4a30-8d36-08ddad1f6544
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 21:47:31.3499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TXNaDcICRjMlbmqKlhPnOa8Ku+dPmUikrjgicxDc8edJVgcf9knp+O8Nnh0Lh+sOoq6Gieu10DAbFIfJA/7hJ83Q6LzYolPKoAjufezmGrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5066
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750110455; x=1781646455;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9d1+zYtBeiLG9xOy6umUibflmSQkxza5C8n9rwAvkNE=;
 b=T5f2YcXiltJj1O0KwdHtx0LKVemjZJcZ9vxZWTfs1BT9ULlv18z4jnoo
 0efym1pmy2ezWU6eX08ivV/Ko22nHzjmNmluqlXIml4L/ce+F4RB5hV9o
 TSsA3dyG5HgSIUUYfkCieyF+3Iekm71CvB9t4a2WPM6BunHPoKcFOLnpp
 pEkZrmnPDyiXEPceK/obIiTjaqxjK819lYmeXhx9HPGsLDHo8ZE6+xUnH
 BMpodLzinJXTrBzec0zO3rl/iyn/RNGZFEZk6XdbQw2uIwOgxUz1d8QK/
 rkv6eALhthWtzUe2NzGRRFgsncn/f7srJmbaMZrQiF+n11HrKq33Ll4Lq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T5f2YcXi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix watchdog_task race with
 shutdown
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



On 6/10/2025 5:44 AM, Ian Ray wrote:
> On Mon, Jun 09, 2025 at 04:10:39PM -0700, Jakub Kicinski wrote:
>> On Mon, 9 Jun 2025 09:32:58 +0300 Ian Ray wrote:
>>> On Thu, Jun 05, 2025 at 06:43:39PM -0700, Jakub Kicinski wrote:
>>>> On Tue,  3 Jun 2025 11:09:49 +0300 Ian Ray wrote:
>>>>>       set_bit(__IGB_DOWN, &adapter->state);
>>>>> +     timer_delete_sync(&adapter->watchdog_timer);
>>>>> +     timer_delete_sync(&adapter->phy_info_timer);
>>>>> +
>>>>> +     cancel_work_sync(&adapter->watchdog_task);
>>>>
>>>> This doesn't look very race-proof as watchdog_task
>>>> can schedule the timer as its last operation?
>>>
>>> Thanks for the reply.  __IGB_DOWN is the key to this design.
>>>
>>> If watchdog_task runs *before* __IGB_DOWN is set, then the
>>> timer is stopped (by this patch) as required.
>>>
>>> However, if watchdog_task runs *after* __IGB_DOWN is set,
>>> then the timer will not even be started (by watchdog_task).
>>
>> Well, yes, but what if the two functions run *simultaneously*
>> There is no mutual exclusion between these two pieces of code AFAICT
> 
> Thank you for clarifying.
> 
> IIUC set_bit() is an atomic operation (via bitops.h), and so
> my previous comment still stands.
> 
> (Sorry if I have misunderstood your question.)
> 
> Either watchdog_task runs just before __IGB_DOWN is set (and
> the timer is stopped by this patch) -- or watchdog_task runs
> just after __IGB_DOWN is set (and thus the timer will not be
> restarted).
> 
> In both cases, the final cancel_work_sync ensures that the
> watchdog_task completes before igb_down() continues.
> 
> Regards,
> Ian

Hmm. Well set_bit is atomic, but I don't think it has ordering
guarantees on its own. Wouldn't we need to be using a barrier here to
guarantee ordering here?

Perhaps cancel_work_sync has barriers implied and that makes this work
properly?

> ORDERING
> --------
> 
> Like with atomic_t, the rule of thumb is:
> 
>  - non-RMW operations are unordered;
> 
>  - RMW operations that have no return value are unordered;
> 
>  - RMW operations that have a return value are fully ordered.
> 
>  - RMW operations that are conditional are fully ordered.
> 
> Except for a successful test_and_set_bit_lock() which has ACQUIRE semantics,
> clear_bit_unlock() which has RELEASE semantics and test_bit_acquire which has
> ACQUIRE semantics.
> 

set_bit is listed as a RMW without a return value, so its unordered.
That makes me think we'd want clear_bit_unlock() if the cancel_work_sync
itself doesn't provide the barriers we need.

Thanks,
Jake
