Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Hq0Kvrs72mjKgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 01:10:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4D647BB92
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 01:10:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D7B640966;
	Mon, 27 Apr 2026 23:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5__FegxLBxtx; Mon, 27 Apr 2026 23:10:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07AA140976
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777331448;
	bh=iWTi0DhT5Aj5W+OzwKh3cmSoncycpzxlZAxMHzpbGJk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EzfaPV+kPgF5I+JkblTQrYn4LdIhEHnxgS00Vk5rN71KkNKq/asuX0lT7iB8UQRmM
	 5OGMyxTBuwingIrquF+lJG3Je5s23ENtQShsr7X25rXSeDgshSqct2VKmXc9kr7Pj3
	 UJK0+E6HQuvyFyZEMuhB8fouEb6F3T3fvUzaXzHwNybXdEDfLuejM80d0PSrInQY8W
	 wXlBVxh3VNCeaLjjDuzUMCko3pUF0h4r3Uv5d/nN1A2Nokl78L/HJp/kr7o0RRwff4
	 UJtv2QkOOPwrT4hX140ONJnkJbKWTceJrDB1AgVHJHdguW/hNPZOEAzbYxf9qpB3V4
	 DZuJTGT2GJVTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07AA140976;
	Mon, 27 Apr 2026 23:10:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 12AB51B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 23:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 043654034E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 23:10:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WXakIdDLBmaO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 23:10:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 501CC402EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 501CC402EA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 501CC402EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 23:10:45 +0000 (UTC)
X-CSE-ConnectionGUID: t/281eawTV+z5yg1CzWSIw==
X-CSE-MsgGUID: MwzYfhboQT66lICEyiR3FQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77262074"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="77262074"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 16:10:45 -0700
X-CSE-ConnectionGUID: YV0cEbh0T/6s2kUV3nHMPg==
X-CSE-MsgGUID: 5oMJe5xASCCTAZ+WhWTt9w==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 16:10:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 16:10:44 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 16:10:44 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 16:10:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LFS8r5ORSb7+1w6xsVOL2Adyc3NZ8+7bHXSQl8wnftx/vp8DVM7Fs9Aj0mVRpjY+v3VTvaC4szdtRFjcktUiTLsatGgUNlb97hMPk4nbtA4cTb+5J6e1pP4oIQywWJj6XCY1lg5d2tURlX/Vu4xjBvKydHK2S8l/QhAdcHK/9d0wWER7VRpcAncuyn8FHSk4+seANtecOAsPRmlmRdT3gJLYgj5EkWuF+B1hFr+Lc1cWuWUG84ArflJEldHrsqIULjE0ns0n4Drria4A4OEPvDJGoCys0LXPRao0YliAb1GD097aKN5Tqab9XPcIvfVOBZgApPyyZUv2qB6Dc+mj+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iWTi0DhT5Aj5W+OzwKh3cmSoncycpzxlZAxMHzpbGJk=;
 b=lxwJJQYF5197p1JrQw1S5y5p4MllskI5OzGF9oxu2kvnJGsfF/atGwiIYtBGkyEi2GO3+46/EvSjIB46roxCF9/3py44UPXinqgzbyW3e9DAIhnsmnI0Nig3YWlMSXlCcmTNlir5Zi05z5UKA0rXwwaQCvOLSntfx/ZBo3cwQxtcCIZzfIo6kDANVmbluYLhpFY3pnqFcLRNn/dQz3i3zAwQckzckD1BVNWszw0+QLPhm6j1L9lKgOFYlzG0pHwfnGHL5dUiOHln9aNFi9BUW91u27FzHRXo63BOdBc1Mp+YrEE55ykJ0FVErMUnL3EtBWsehrQCXLCkznh8TMWyxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH7PR11MB5959.namprd11.prod.outlook.com (2603:10b6:510:1e2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 23:10:40 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9870.016; Mon, 27 Apr 2026
 23:10:40 +0000
Message-ID: <d9e23405-85b8-45aa-bab8-3842647f0297@intel.com>
Date: Mon, 27 Apr 2026 16:10:38 -0700
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 <aleksandr.loktionov@intel.com>
CC: <anthony.l.nguyen@intel.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <horms@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <jesse.brandeburg@intel.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>
References: <IA3PR11MB8986BB8F2B8FBA03679590AEE52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260427075948.870208-1-jtornosm@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260427075948.870208-1-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0022.namprd02.prod.outlook.com
 (2603:10b6:303:16d::15) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH7PR11MB5959:EE_
X-MS-Office365-Filtering-Correlation-Id: 320a6ef5-04a6-4933-5f0f-08dea4b2334e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: ejn8thzL0QctaGl0sbO7nqcSQJBIWsE6RApxWQeulgzYiocZaBF+QRqpWk2QciIsJmra+nR1UWQYtBH2wTJG/J080sYoO39E1rXHXvVprvc40+jXzABzpWSeHAtSQpi+aEVNu5rx6q8u+f+VJQDOayLaKfq8UD7ywd0BuWJZJbyBVqa0fu8vz+5BsaSkt85tGvf0BXuMsdlC9/LHYNCICk3aC8e6WbValeX7/b0md4No/dpTb5+kPCWjxdtp+ICjJuVgJGl4QYfLeY2snS8FPKTMU+6eSEfAx39rK26JyICR28ZyIX8FVG1BVr9gWW0pnJxTc+SgDeGktxLnlX0N7omrmWLS7LY+3YrvlGkJdatTygoVhpJ/dqaKqNXI1+Z646FJ3dKycTqW/uRcijLDM2Es8+FUOAaxPTDFcooAHg7pQ21K3EREwwEz611+KT+/EozQCkJrwszIxvq5HmXMfIJQNlU8lNIZBTmVtb4OF1gvtw//cXOgrNFLp7t7bsPn5Ch0aD12OlnAEWWzpOHhsbnCpmVz1FbsG3UJh7gQm6IaNOJOcfJZvPw7KmSmJkucGs4v4bfA4X8px2clIG5Ir9zZmjv9OOHt3L4vMm31fqg/bOAVNPpZrxb5IX1n05MisiXrZUIlVNrjhL/mqlXypNP27MREz6Oip+sDi4+Jzwt+zPWT9yDaftxfVfVOtoBedvJJPnnEVhY1A7BmxZGwW8HKoH/NwSDNq9ss5CjbIco=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFdubkQxbTdoeXNWT053VGpubWRvM054NkI3a1hJd3h2cXhBeStiNG52Z2lo?=
 =?utf-8?B?OFl0NXhGNnpDc0QwazRpTVp2azE5TEY3bzJxOTBhMUM1djVoZUFLeGg5UmxD?=
 =?utf-8?B?bG1uTVRLUFVjZDd0QnRzdmVxb1JkR3RTNzQ1aHBxZS9SK2owcUxMbnJuQW1i?=
 =?utf-8?B?aDFlcUJXb2lvaTg4TzZ2ajdJWHRQTFBhODVvUUNWa1lXeTNvcDNaRkJFazg0?=
 =?utf-8?B?VWIyRXNTZUtsOVZ3Q2hMU2R1U2tpblA5em9OdC8xenh5YS9XOTF3WGJ0RnpF?=
 =?utf-8?B?Tm1PTXV5YklZd00zV3dFU0t5RHE4WDUreVdQbmh6Vmg2M0xNK2k2UExkRElZ?=
 =?utf-8?B?dU1EYmVLLzFzZ0U2Zjl2RHJzODl0SkdOTEoxeXpRWG5BNEt3TENSczI4d2kz?=
 =?utf-8?B?T3FwWGJjNk1EUUFSSTlXQTJ3dng3cGpJaEMwdjVKdWJxQkg2RnI4TWthanBU?=
 =?utf-8?B?L1Y2OEx3T2tvckV2c2h0UCtUczhmeGNoYlpMZGFqcWV4ZXA1OG0rWkU1YTZy?=
 =?utf-8?B?SHU3VXRFNThZQ0NWNFJMV3VTM2k4ejNIQlVmOGxVZGZLbjQzZUVxNndJMm5W?=
 =?utf-8?B?RFduZmhTQ2NlY1g4ZVJtYXZITnZkN1pKV0Nlclh3cm1nbkpPZGR0Yzh2NmNu?=
 =?utf-8?B?Z25XV1cvVDVuRm9IbmRYa3NNaGxnWVg4S1B1cVdkdGovbXhqN1ZEUHVVekxn?=
 =?utf-8?B?Q3RuVk5sVWh2MGVKTWdPQ1VYNm5pUzBQMkN5K2RmZGRzR1NLQm1peGpZWVp2?=
 =?utf-8?B?UE1RM04rRmw0WUkxc3JHV21UamZBVU9YcFZTVmpEWktXZjc5c015N3AyWW5l?=
 =?utf-8?B?alhWWnpwK3lOSkNzcFBHbUVOZDZQVXk4N1NsS1BYR0dOOXorZTZiR1pTbjNu?=
 =?utf-8?B?ZU1LRktnU3dXOEtUM2VXckNKN3hVQytoSDRucTlWSkNKbzhmYzFEbEVjSEVt?=
 =?utf-8?B?M1p6UmZEc3BoOG9PUGVod0d6UHNTZzk3UXdTR0FwR1NJTWR2Q3VBdnBENGRX?=
 =?utf-8?B?TWU3bHRoMStTLzlqUWZ4ZXlOQlVqeCtKMFpoOE51aWdOaVlET2Z6bi82RCt4?=
 =?utf-8?B?ZGxKWDlvOHJFcWt5bmlUZjY2ZWZzdGJrcXdrQ2dvQWZ4RDFHczRKUWtBQ0RY?=
 =?utf-8?B?WDl5UzZUdWdmYkVySlgyT3pMRVU4VVNoSUM3bzY0T0VBd2tSRE9HeXlsUXBQ?=
 =?utf-8?B?RnRQS0ZlZkVQUDVNeDBvK1R0aStNNHZSVmFJQ0R1SGhXeFpzSDFqcTlPWWhD?=
 =?utf-8?B?NVhlV3ZJNzdqTFZPZ0dsa0JyZWd4azFoMklmNWljZ0pXUDhEZ0cxKzJJWkg5?=
 =?utf-8?B?RzFoZ0gveVA3YU5laEtJdHFwakc4QVJjVjdGNWZvQzdRbVl3MjlVK1Y3NXR0?=
 =?utf-8?B?cVBqQ1BoZERydVByeDVGQmZmY1FLZDluMlhnbDFXYVhoT2dicGlTVGNIMHE2?=
 =?utf-8?B?d0ljU0dybk54azRaMFgrNzRodTBkamxoZEJlNzIyMW00bGJuZFBjY3lsbUJJ?=
 =?utf-8?B?TXp2eGo1U0JId0VuVktiVzdlbHNONlhiMytyS0NCdFNXUXQ2M3dERkhhVTd1?=
 =?utf-8?B?V0EzY1VzeFZhaUFJU0g5Y2Rpejlza1Q2b29vaElmWldPblFad214N2VaZlhT?=
 =?utf-8?B?U0NPQUJ1cXIvOXMxNk52aUZYdUIrQnh1R25zRDhLV0gvZHlZdG04T0ovaHNw?=
 =?utf-8?B?dGQ0YlFUcG1ySytIVGkzdCtsSHRWQ1d4L1NtUmtoRXBYckV4NjlRZGd0TnZ5?=
 =?utf-8?B?d3gyL2tBSC95Slc0SVJpZ1VyRWxiaDVpcy9ZZThROGdaRWcxSU1HcFpweWxI?=
 =?utf-8?B?T2xvNGdFWWdXVWpGUXRIbEsyZWZDcFpEWnM5U1N4RmlFYnBZdEMxZlhQZ1dQ?=
 =?utf-8?B?QVgrTjRuRS9XbHlhS2Jnd0lRc1JtY0s1SHpCTzFGejZMbXRnaUJ2cnlyWlRW?=
 =?utf-8?B?UEswamNzSXRCSmtCM1JSSi83V05xRFFYdHVycGdQTGkyNzlreXN3czNKbWht?=
 =?utf-8?B?OHNqQ3hydzJ6SXYwS0xRcU9VSlBKNVhzUjY4TjY3OEpoY0RDYmIzRjlCZFRS?=
 =?utf-8?B?VEtuRUc1S25KSmJhSkVnR29TQmFjeFd1eTBWanV6dGEySS9YcGFSVy9wS2c0?=
 =?utf-8?B?aE9MWEpYcDd1SlpWL3VnbVBuWHF5cncrdVlCOTBGVzM2bS80NjdzcEpGajV5?=
 =?utf-8?B?RUVFRlN5d1NiQ0FKVXo0dTg0cEFEa2hXRUFBNDBDRTY2QjYzYlBKNUxBaks4?=
 =?utf-8?B?dE85OStSdXFyNTY1cWQyY3VVckcyL2NMOW9BZ28vRmtIRHZQSlhyaVBVNExs?=
 =?utf-8?B?VDIxOGdwcHoxaGZXZFNpZ0pobm1ZY2x0OGdyNUcxcDhycTBsTDN4Zz09?=
X-Exchange-RoutingPolicyChecked: KBpd+Q0+15X0k/p1yRJvX9RUDPK9QVdsaqqmeEPojY+T4ut7Grk+MGE5+4JwYhDQTW2RlTjXsNq2evycnJsL9PMUwuk//Eo4ni0P7S01gkLaN2Hfsr31QOdGI+cahLa5bKr2fGjSuqflwVTI9/TPuPZ5dvKIOuXnIHGF+K11/Cc352Uy4Ay/XZiAf+kAiaXrP7lw8l3cEyvN94eNngFU3Dh3B6qs/LVZZCpQbV8j36a0KT0cgb9m2bN0gGCUGEG6opADTeRoKcSKAJzVZZgmyFc50DS0Exg3l/fjzuuIXNddiISEyTrEcDsfG3blcKLxO2mcToFwS6sTpxl+373cbA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 320a6ef5-04a6-4933-5f0f-08dea4b2334e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 23:10:40.6563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QouJWG/4OqXvWcraSBRWyc5j5FZvWGTPIxW/APIdpDC6rbQZ2TdxdUjYvsocAvTdunHnvcb/P977XS/CN1E8n6XxCrugv55GbcCb0EqDutw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5959
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777331445; x=1808867445;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sC4qCchrX+C0H48ZRcEy1MRzACGsjeo8rY1B0TFGbeA=;
 b=NzHW1bdPVNPM9EFP1us5S0/nLQIWbH5m3Q1Lj8zU/oeLDPkXu+YwhRNo
 44ebgOieEEr2K1t3tP6Po+T3xFGRM+AEhI3wTQWoELy276pylFUulU7Nq
 pcEZIPpfGVduPB4o7w2gtwNX+GrDEwo7BLvstx+u46BPu8S/0eDdMNSdm
 /51dTzKWhXq0Zd8UZWsIfkdVMRsRIZhgz4QUVWS/LtLU6O0j1Bvuz4mN8
 nYJt0neSollNWnCVnh/5X77EJz+vajgYtUZTjStMZCJAJH+m6JPevtNeX
 pHaE29MeCVFFV0vM/LG7/aAXftkrgaoR5H7B3HnOURXpntbmFWPLtgX7x
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NzHW1bdP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 4/4] ice: skip unnecessary VF
 reset when setting trust
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
X-Rspamd-Queue-Id: EE4D647BB92
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

On 4/27/2026 12:59 AM, Jose Ignacio Tornos Martinez wrote:
> Hello Aleksandr,
> 
>> One more nit, kdoc should end with '*/' not '**/'
> Ok, in the current code there are already some functions with headers
> ending in '**/' and others with '*/' , the functions I have added or
> changed the prototype in the series will all end in '*/' as you say,
> in the next version.
> 
> Thanks
> 
> Best regards
> Jose Ignacio
> 

Yep, thanks! There are some legacy mistakes, but we (netdev) don't
typically do mass patch cleanups for changes like that because the churn
is considered more problematic than the fix.

However, the preference is to use the preferred/correct version on new
code or when changing existing code.

Thanks,
Jake
