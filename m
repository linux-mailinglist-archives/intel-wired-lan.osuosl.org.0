Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE1088FC9F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 11:12:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E76941522;
	Thu, 28 Mar 2024 10:12:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T7lswvHfqScE; Thu, 28 Mar 2024 10:12:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5119441549
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711620728;
	bh=umXLEejsgZwlHuXH/x9WRZ61b+UWbMv0odZ1/lyUscw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0Kd4evlS7ukxXkU8wwH4+6x1ickWYT+6oxZU5KnzNDrRf38twkk+Yuzql55pEKHB2
	 UtAYb1Zsd1TY4ODJ6mnmkJ3CltFEq3kMDDcwVikt4iH1Pe1L7ZEe+LF0dGoSU4Uwid
	 PXDAf8MEyh9LtJqTKgpREf+De0oSrKlLPNAZPMBzse1zRuNLf+8K4cl4timkueJsmy
	 hHGr4WUBuZLrdbvacLu5dzbG9nu1f6b7zui+cICLwsLmcCf30niY9JLCLAi1XAL1O7
	 vPEXKGYxwj5asKNN2JD3D5AQFuji648na0/QzMDjLZlcyX8ShzKzM1CX2EbC3jbTtU
	 ec1AXXcdr8mXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5119441549;
	Thu, 28 Mar 2024 10:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90EC81BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8678A41506
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kX5EeKK_txxH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 10:12:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9302B400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9302B400F1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9302B400F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:12:02 +0000 (UTC)
X-CSE-ConnectionGUID: NhKtJY6aQzKuv+lS/jFPBA==
X-CSE-MsgGUID: 7Xi6rzf7RqOPgxAUk2cC8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6878143"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6878143"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:12:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17215665"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:12:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:12:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:12:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:12:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j8NbPXMAKEFpT+8mWktTaXd8HZufqGsA3rO3EsaW0zS+OxEPnPPVZ+TFfY9XPMAY7QavR67XXnVzLtbZYnUvmEgLTtVI6CXQg+rY2Z9S7z7w3rprCvfEv8gMxbU20YYYT0Je6NDfOjqRS7sfimPAvq6WfafqVnM8n+kUuxr8laXs/OZVjTtG1mCwUw+wP5i5h/72b/F33DCUBbpyb14ITq1WaT+ZZhVPb1QcV2d5g7Sh+sbWLqSGsL0pofwmMFvmtSEFSqXt7tCPhlkN5kAUcvhfQjryoELInZ1f3anVPWSL9cbjG3w4GJrw6/TErbeHFN5LuUwa0NzGYtWCXs7A4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=umXLEejsgZwlHuXH/x9WRZ61b+UWbMv0odZ1/lyUscw=;
 b=FU5Nk5sB+1bzVi2JlFfgfAxNL/S6kEYbZ6MPKDjfmxBosOrzQ5e5IUNsrSifbDMLl9JrWV9C83rcF8M11DReWKLES6TQxkpteAxTuc15+I6bGG2NREjuuaGHW516wCi+x7RvIm80d+XPDiuzKqosxa9p70x1esgMcJz5hYbV18VB98KNi6fSJ9lSWDNjShZmDfFrGfCH0D4VfhPM/5ZKfn7rtDQUOxz5lGkjtcPI67WLELtBVSWUi87yhgCuaKdO4XKI0y4hHuW40P4K0BAKo4ZjaBGjoWeNxyqsSa1moX8Z0brHVdtlaOu7uPRHbWX/cY3QLhyOXc4HStCl8EVqBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 10:11:59 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:11:59 +0000
Message-ID: <7c8a3936-6010-47a8-a3ac-24adbb903613@intel.com>
Date: Thu, 28 Mar 2024 11:11:54 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0039.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::25) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|LV2PR11MB5999:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ad59707-a1c1-4540-f72f-08dc4f0f815a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Mp7IS/iR8qiyld/0seh6RMBckWKUkBWMQDEjZ4OQFql0t6z+HGJOijiL+I1hMVEPofAUQvJiK5C7mvQkeEN4hUCXsKqvPyCH/KexsjZJ2VtQ+oAsSv0rpIw6AKsoZ1SOkouaMQz3UbvvzHPawLCbysS+Uvb8NFLKvXfKIkmsIqcAeBLQ/vZPqQr7NpOHl/RDtBtAjjZeS0V+jOcOJYMMAmGc/7CbYOqwwmTAmcCgbSgyz4y2ZWX2m+/z4ao6U1jr/y1Ciy1Qz3BQBUteoaeIPAcgMiKkDiaMvLKo+dHsD8UQ4FzQ2KUZAm1Yydy77BGn9rbx7WRNsDl46J7nMshCQBQ0YnCIFUt11iU3jcuICLrpmG3gpY1OOkug062et8toIdLWdm7ejKiETN/lBnb2/bhw7IIVwGcXU8yRZP5hun2XhQVx52Qy8vC8nuPWyHMTbL1lQpHQs7HrTxbRHIBgR2zfA+IXjoSv7XIm+an7pgpg38UbmnkHEEcznO1bL2l1BdVREMXf7xVYlx212mWJwievnPcI7bpLItJcGDnZGUfQRQqyNLLGt1RSA6CTusAGbe9boT6DKbmPQqI9tGg6aCyvqgCoMSdK3ump3pxc1O1yqlqSyTJAuBNEEejilkkh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(7416005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHdDMnNveVlnOVpxdVBqekc2L3lUR0RBbUdKVERFME9CVVZ2TWg4Q0V3ZFdv?=
 =?utf-8?B?Rm8xZHViZEh1Qzd5UmRVMVU2MVRoRFIxQU9remJqbEpielpodUltUXVvQUVr?=
 =?utf-8?B?N3VuSmxacHFnTU9WQjY2NXlaRVZWQjJya1hyRjVmcVBlN0Q3cGpPQ1c0bGZG?=
 =?utf-8?B?MXhSQ1l2RDJObE13ek14VW5OOUxPYWduMktNa1lnakh5QlVvTFk5NmUvWlNp?=
 =?utf-8?B?TWd6M2lFWFU3cnBLM0hNcEtIdTVXVTlpVUNYMldxZGZmZXVlY0RWUVQvaUZE?=
 =?utf-8?B?cXljZVdJdjhxMW55V3dTUDhLbnZZc0RTcGp1bklGclQvTHVwVFdxR0x6RElx?=
 =?utf-8?B?cjRtN2l2dFV1YTMrQXJSaW1TS3pHSTUwZEh2dWhoZTR3eXZsbUdxM08xRS9R?=
 =?utf-8?B?cW5tbmtndDVRUWs0dCtUbzFIY0lhcFpYeTduSGhpMGVEa2llN29XdlBKYXVU?=
 =?utf-8?B?MzdyYW51ejFhSysrcDZTNjZacUdXUzFrSnlRRW1ubmpRbTdlcXF5d01GOE1E?=
 =?utf-8?B?T2w2NDN1NGpXalBCRTlDY2VtRjBKcGlBWCtlMEsxT1V6UXBmOHRaNDdXUkEy?=
 =?utf-8?B?L093OU9kSlpiWlp0MlhwRk1aVHJjZVNFSjU5S2RDaEFJVzJPQi9ncC82R2F4?=
 =?utf-8?B?NkFJN3FWYngzak52L1VjSHhEU0dKN0R3cWloZ3NuTVBZdU5mZ2gzVWI5Qkdy?=
 =?utf-8?B?a3ZhdHhQUEFuaHRZem85dVF5VnE5V2QzVnZlTkRvQ21wVjZtQmhDS2hmTDd2?=
 =?utf-8?B?M2JnQUlNSFAreWpHY2pTaGMvazdaR09WUnRQRmlPa0dwRWdGRkZ2NGdMNXdN?=
 =?utf-8?B?Tml4RDZ3MUJYZ2lyQklkWWp0cHdqMVRyb1dzaXFNUkpUWDlYZ25QdWg0WVgy?=
 =?utf-8?B?RzB5SDJuTkNIWFg2dkpjY0h2ODh5WDUvdzdDYk5sdHl6cmVhcmNsRThkMjJZ?=
 =?utf-8?B?NHZ5K1A1TTZ0RGVVdkpHTDFHcXUwbVcrTlpLQWk1L3BiRGMxQWxjTFJzRTV4?=
 =?utf-8?B?eUpmVkhxTkVLU2J0MkQvOWNjTW9SU1UvZzF0R1Nzbm81YlNqb29kSjBQWm9J?=
 =?utf-8?B?dFdZeG95TTZGaHU5UVF2Y1V4UWdoMUc4M0cyZnhCTXliWnlNdFJWa1hHVUNi?=
 =?utf-8?B?MCtXbkdHdG9FelVXRkZscmh3ME90WUpCVkJwbThmVlpjN1lKbHI2bGxJNVBX?=
 =?utf-8?B?Y0JJT0RzY2JJMDNza3hqTXlRcFdUeFF6c3haWEtrQ2xLOWJVcEh5dWZ2T3hx?=
 =?utf-8?B?bXc1cDRBQzY5UnRvYnJUR2I4MUxpSXdXTkxMMEFLNHFjb3k0SFljNDlMdlgx?=
 =?utf-8?B?SHVrMUl2YlUyRm5FZmZkZlpIVm96YWlwQ2RKUHBwY2FQaFVlYzkvT3ExOTlB?=
 =?utf-8?B?R2ZvbUd0ZVhZRjRNek9BZjJ2OFNGcGlrUUNrVE53Nk9YZTFndnJnVHRzRWtk?=
 =?utf-8?B?NCtWT3VjTjlJT3NxMnpMTjlwd1dNQ0FIYi9rK09FZnd4WEFDeGRXb3lTTk5x?=
 =?utf-8?B?cXJmbzlzNW1FYzJkVVpBU1dISCt1TDFKQktJRmowTFhlaE5oYTFIaG81bGhR?=
 =?utf-8?B?RmUyRUFubUNFVU5mcVdLU1pKSk94UXZVMWtHcXZCYzY1YjR2R0VJNzVwOEs3?=
 =?utf-8?B?ZFAwMFlIODJ4UlhDaU91VUF6Wk5tNGdvblpvZlgrQWpkMkttL200djdXbDVS?=
 =?utf-8?B?M21JNUdhcTMxQ2VBSW1zY2kxOGVXc0FEWk1lSHdjWW1WYWN6QzFHbFNUTUFu?=
 =?utf-8?B?RlM4Z1ZhU1ovcXNkc2kyMEFZRlUzNllPdnZHbHV2a2Njano4NHpiVjhzMVYx?=
 =?utf-8?B?UDFLTVlhc1Z2Q0VHSlkzdDF4YXh4aWpIb01pNi9BaGNNeTIxQU11MS8zeElS?=
 =?utf-8?B?ZCs2aVU5M2E0K1BOTDJnV2ZYZVFKakl6SEZqOVNxOEJZRWVaV0QzcEdkYzZG?=
 =?utf-8?B?SHlrU0tsdGo5VzlFR0YzaG5XMGlvNFBFeGEwQy9IdHZzcUR5REgyUXBVSjgv?=
 =?utf-8?B?YmhVWjU5b2pBOFRxUDVBSWJPSDRsRFp6Q3Fyd1FUK1pyaVpPeURIL2ttZ3BI?=
 =?utf-8?B?R2hYMjJsaUZsVmZxamU4UWIxQlc2OGg0QUpNckFXZnJFcHBtRkZmYjA2U2xs?=
 =?utf-8?B?WGRRN0NqMVNOaXNZRUUrbk9CSUViL0o1SmEySGo2LzNHMlZJTFJ5VHVBK002?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ad59707-a1c1-4540-f72f-08dc4f0f815a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 10:11:59.4239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fk+9RIUuL71cjyua95h9qPewer0YCzIbn0eLC8WFBxA4drKcGVq3rFpGpVlVmaam+T+m7yXsSa5J4xnHq5kjsYhaNbIm2N8/5vIlz55/m8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711620722; x=1743156722;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wh9Efw8bq5+/2OQao27ntbeK+w1+I43SxowgwWagobY=;
 b=cqpAYt4liPh6Ouon+MsvIzOs3WwL1nlSt4GRklHriJbqW6Z3V7Um9b3l
 awiPRHsLjzVX93VuHpG78Q4iCFo+MJVcKZIIMTHZ6Hd8ReweySu9ewrE5
 v/PtoTbwKERxFJ72LsX9enGH+m++AQN9FMvvXKIBGXMHQpSTS2qAOTFuO
 eejOFkDOjNDyX/3lkMYu3t/umvttPPremfsZLv5OMXg7mjaICe04our/s
 SrIxtqXl1R2KrPABvGjKBCfo1QY1aLvkxraiB9gbdLfa1Rz1fmW4oxqN0
 ka8hNj5KDlX8HrxWArJfq+jynl65siUJfhp2kwvLcE2KLYVNmHo0tv/CE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cqpAYt4l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/3] compiler_types: add
 Endianness-dependent __counted_by_{le, be}
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/27/24 15:22, Alexander Lobakin wrote:
> Some structures contain flexible arrays at the end and the counter for
> them, but the counter has explicit Endianness and thus __counted_by()
> can't be used directly.
> 
> To increase test coverage for potential problems without breaking
> anything, introduce __counted_by_{le,be} defined depending on platform's
> Endianness to either __counted_by() when applicable or noop otherwise.
> The first user will be virtchnl2.h from idpf just as example with 9 flex
> structures having Little Endian counters.
> 
> Maybe it would be a good idea to introduce such attributes on compiler
> level if possible, but for now let's stop on what we have.
> 
> Alexander Lobakin (3):
>    compiler_types: add Endianness-dependent __counted_by_{le,be}
>    idpf: make virtchnl2.h self-contained
>    idpf: sprinkle __counted_by{,_le}() in the virtchnl2 header
> 
>   Documentation/conf.py                       |  2 ++
>   scripts/kernel-doc                          |  1 +
>   include/linux/compiler_types.h              | 11 ++++++++++
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h |  2 ++
>   drivers/net/ethernet/intel/idpf/virtchnl2.h | 24 ++++++++++-----------
>   5 files changed, 28 insertions(+), 12 deletions(-)
> 
> ---
>  From v1[0]:
> * fix compilation of #2 (Jakub);
> * pick Acked-bys (Gustavo).
> 
>  From RFC[1]:
> 
> * teach kdoc new attributes (Simon, Kees);
> * add Acked-by (Kees);
> * fix a couple typos;
> * send to net-next (Kees).
> 
> [0] https://lore.kernel.org/netdev/20240326164116.645718-1-aleksander.lobakin@intel.com
> [1] https://lore.kernel.org/netdev/20240318130354.2713265-1-aleksander.lobakin@intel.com

nice,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
