Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B785A4FE4C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 13:12:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E8D681183;
	Wed,  5 Mar 2025 12:12:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o0dWLxdtk_F8; Wed,  5 Mar 2025 12:12:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DCCC81195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741176732;
	bh=gIL9NImBl91G8BNt0Rhzh9j2wFnw27XRpVqMi+PackQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4KITdlVw99CILvv1Z0L2q2zUryBYI2zgXYaIfi7O7OWw0wY/IfT9DnnrW2AsthJa9
	 FdrtUz94YBYUzYqXAhmX8NrYcq2lfXZgehJkOyBOhhPvxay7Q/+cT0eA7ymnJVgEFq
	 p6DX9FVIJlKSFONUz9ulcGqLIc1qNKxr3uHvVZYtVVdpeDyR/xMEQzJXLtd4b/GjmB
	 iy/JYNX+ABMzmc6kKVu6V0quD0K2kucjznFiLJHg71/gKqYfQ5hHrKjZij2dsJuvEk
	 gtURDhBOnQ1GaB5ltfi2QOzVScjskLxnY48MYfKyPhKoNdCW1LNp0HRuGxrSjwqGCt
	 7KRnwpz46xbjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DCCC81195;
	Wed,  5 Mar 2025 12:12:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4293395F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 12:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 25A6C40E39
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 12:12:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j8pS8zM_WoZU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 12:12:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D21AE406B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D21AE406B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D21AE406B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 12:12:08 +0000 (UTC)
X-CSE-ConnectionGUID: y9Vpl7edRMSnvaLgNCGisA==
X-CSE-MsgGUID: YZdFYzkJTV6e2DJC2uvlww==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="44943654"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="44943654"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 04:12:08 -0800
X-CSE-ConnectionGUID: 3wy0uE3FTWyF6bbkD0RA7Q==
X-CSE-MsgGUID: GV6LbVDfQ9yGYgyl5V0E1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119585871"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 04:12:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 04:12:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 04:12:07 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 04:12:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i5QlB51SLflp/Wu1amg6x5XSV031m3QKrtllJ2d3cJGs4ciNwj3hkhNQ7Mlp+t+WIU6wk+oJRsrjtMMcYSVRbRb7cIsaNgzgwWIG0HjH1z1KR7+HHmy2N7lV2gkIxyt6HVXWksNJv7Ne6/gR8ESZLm6WVhjcc9ycFBbcaJXMHNZjIcw8qab8olFkJKO7sud1pbjEHWnndJw1MEDXtXwK0d39lC5m1avXf5fxrGxW89GQ/YkmQt+2QhFYFUYlCLEY7Ey3x0qMgTLrdVp7wEss9LgJGo+07ajCWS5RatPM7vOtHyLbg7vCJl5oNU39nasqmRn0Hln5tT0F2bf81SxDfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gIL9NImBl91G8BNt0Rhzh9j2wFnw27XRpVqMi+PackQ=;
 b=kL1y+hgsJdFujFNsAq6B7DMHZ5szeyWzt6pIF5TiX1Bqxwp78qOo3V8oeZG1im75v0yml3L4Cb+OTyPuI+8H1xNwC06mTpt1wyVUtsW6SHRfeAKy8PPCkws/oJL7Z4+Eqbpp0GzkMCb0TUZDLbeQWY8ktyNL87vXs13AzMGe8hmNGbRVP7cPc9W6XR8tsIkBdcIyX06jaZIZkFSvf5ZFm3eQsHk88Bxx88DAhS2ACq7/wl0Lu1QYfyxcLGsBy4xZZoxp+FNM49eWms9j2QFXbrPAtqCm16MGvZx/m+S4ADawRuKFqQWFmsYzY5+1LT4GG2dbHQN/8cGNeYCDlY8DUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH0PR11MB5927.namprd11.prod.outlook.com (2603:10b6:510:14e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Wed, 5 Mar
 2025 12:11:35 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 12:11:35 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Kyungwook Boo
 <bookyungwook@gmail.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] MMIO write access to an invalid page in
 i40e_clear_hw()
Thread-Index: AQHbjFeboY2QFMlphk6AK6PA+x/DLLNkWamAgAAcdMA=
Date: Wed, 5 Mar 2025 12:11:35 +0000
Message-ID: <SJ0PR11MB58663C4BEE68529970784114E5CB2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com>
 <aba0a368-b2cf-42bf-b2b5-eb09779fb214@intel.com>
In-Reply-To: <aba0a368-b2cf-42bf-b2b5-eb09779fb214@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH0PR11MB5927:EE_
x-ms-office365-filtering-correlation-id: 3648c6f9-5aaf-42bd-672f-08dd5bdedfbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZnY5QStoMXJqL1VHRENIREhIakR5Y3I2dnpwdDI5cVMxMHBwenFBcitPMVBy?=
 =?utf-8?B?TzNmNWlPL0xSeE9rWkJQcVlqZ2FGcmViRTVDTzBSS24wdDVXb04rSFozWTJI?=
 =?utf-8?B?UW5FSFZkcENHSDZybW9jY2N1b3gybERvbDVENzQ4UktwRUxlU1llQmo0TVFp?=
 =?utf-8?B?eHpGdldWcHNmcTFsMjdpM1ltaFJ0WnlUWDVYckVJS2FUM0dtWmJISXh0ank4?=
 =?utf-8?B?MlY1MmV2RE5vTVVFZ3VJQ0hGb1RFcHVmbFJ1SE1tbWpMNnVhR0xxWFBKUmpN?=
 =?utf-8?B?MkZDbnN6S2tnMzA5MjZwL3h6dFEvbmxTM0RKQVo0S20rTlZtYXljOGlPNVd1?=
 =?utf-8?B?OXM2R2Njb0pyYVhvbWNidXZaTXJ2L2lnQnBMcjFKMlZwQmlpTXR0L2JmbExG?=
 =?utf-8?B?WnF1NTBvdENoRHNJcTVWZ216L0h6aUwzZTRaeDkvdzFvRFJTSHRiZ1NwZGdS?=
 =?utf-8?B?ODE3a0xjbXpxR3p4dk5yUVZkcTZSRFhBQ2hKdU5zc2RRNC9lV0RYSS9FVmdu?=
 =?utf-8?B?QVNqd1BMaVo2VjhkQ2FCUE9SSjdvc0UxRXAzZEFpYzllUGpCbDZUcklmTzJm?=
 =?utf-8?B?eUw1T3IwOXdxRm5rMTJZL1V1Zzc4a1A5VjhQajcwZThtVXRicFFmQzdocTRL?=
 =?utf-8?B?SGNFMUxhdXpZK1VBK0R6d3FwSjhPenZQd3hJemxwREVqcWJXMTV0MlRCQnAz?=
 =?utf-8?B?NWRJbFdFUVAvY1FyeWVsODBocHRpMXFOZXduSzRGRFBjM1JUaURnOEtvZkFo?=
 =?utf-8?B?cE5tSTIzamtSb1dzTTYxU0cvMEl1VXFsSXE1OHV3SS84cnJQYktEOGEzS3JE?=
 =?utf-8?B?VjRZeWpuakZSUG1Ha1JLK3pjQXl4R3RKZEduTU9ndkJiYTdOczZWQktrM0hq?=
 =?utf-8?B?bnp2Y095WW9xMXRIVjVLbDdsbStsOFpyMXpOR3J6VEw4OUlSbUhoV1g1dFIx?=
 =?utf-8?B?dmRIM3hUaDl2R3VYeURyZCt1Q1psNGxTYmdubyt2S3draUVmeVRwVXBXS0R1?=
 =?utf-8?B?MzlLSEhqNU1SRXZrTUEvYXV3eUVTQ1JnSktudkU2NDZJK20veW1YZ09NWG52?=
 =?utf-8?B?U01PcG9wV0VBQ21ySzQzMUdXcytHeFdIWnNNenNvS1VwYk9jQktsdEpxZlJz?=
 =?utf-8?B?cmJ3Y0k1VExVYlVDeDJscUFaV2VUWVdkYjlhcjVROVRMYUdEN0RNYzJqUEc2?=
 =?utf-8?B?WW80OVF0TCt1TU1XZkt4NUdPdmhVSEhCd2d0ZFoxR0JSVGRoSVE3Z0xsYWFW?=
 =?utf-8?B?a0xQTVlZcThINEFyazdHTWRFQUZqaFBFSm81OCt1ZFBnWXFTMXpXYTNFanVu?=
 =?utf-8?B?bVNhZG1uQ01lSGVmTXhuKzJiNy85VUZ2MGlIVUorWm9oYTNqeW5zdEJoVm9h?=
 =?utf-8?B?VDYrdGlIUzA0WjkxYndGL0JoNDVaUnpJLzI0Y0dlNm91M21LYnI5K1NyTk5H?=
 =?utf-8?B?WFRaZTVSVEF1ZEJaOWtGaWx3azBGMmprT2greFBpbC9oVHg2K3kxTUFuZzlr?=
 =?utf-8?B?cmYrSWNUSGh2Wld6ZXBkaXlmQ1ZlT01RMGpBakFPRm1xUHBWaXNIc3VUUUlS?=
 =?utf-8?B?V3NDWSt4dytDTGpteTlyTnN3aS9DSDR4Q0pYTjgzOUNiajZLUWZkNk1HU2hC?=
 =?utf-8?B?SU5xYlg2MGJqOGhDeTBsZGRPeUFQaFM0Q3VvOUNtSGJ3MFpQN3ArL0lGMUc4?=
 =?utf-8?B?azhMK1dxQlEyNTEzcmx0dm03R2xnU3d6eHRua2lDV1JKVmE3MXowY1RVcndz?=
 =?utf-8?B?QndkaDFwZEtNc0xUZ3RYNTJKK1ZMbkZrd3ZNZDgwUmpzUW03SHZPYThLVm5G?=
 =?utf-8?B?SWRwRmpZUkN0TTQ0RXl3UGRQU2hnR1Faei91MjhMY2Faa1prd1JIb1F4QzFW?=
 =?utf-8?B?WFdVSVVMbU5pbTJxTHExSGFjbWNFYkU0QkdxVUVldVhmRFllUHVvVlAzdFEz?=
 =?utf-8?Q?GO1p/2rTwTW6y4ViLgT6yN+PipjVimbA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGZ3ZmpJbGJ6SmJZckxFUWorQTJrL2Z6aXFZLzFoN25tSWNoVHQzdktxOEFI?=
 =?utf-8?B?UUxyMi9DL3FHbFd0bHJsOGZKaE9NcGYwK3h3cWthS0g3NXBnQ2R5QU5DWCt1?=
 =?utf-8?B?WlBJOG5rYVAwSFJiV1B0TENGalR3MTdaQ3BwdU00Y2ZISEQ4Z2RIcnRTWVFT?=
 =?utf-8?B?Skp3a2R2eGE5QTNCckRPdExKZGtleHpuNEZVSWR0V3EyNTlKRUhMWUhyME1l?=
 =?utf-8?B?OU5qY3h2c2JEZ3ZKdU11U3FST3YzN3l3blJwSFltVFlnMEdFUGMydnBRTTZB?=
 =?utf-8?B?WmtGSkJvcHBGVDEzUmt3U3FHaXRvUXFnQnNUd0xzMGZZc2RzL0FpWm04Zzlj?=
 =?utf-8?B?VGRUcC90c2Y1VFJ0WlppR1NlWXRxa3l1T3NyL3RURG9kY1p3eW5vL1ZXcnhI?=
 =?utf-8?B?WUt6VkVSWXZXeUs3Z1FBR1RDR1lDRFVobVg1cHBnWSs5RERlKzEwdEJac0ZT?=
 =?utf-8?B?RCtQamtyME9qZkMzOFhnVWoxbGtZdGcxc3hVVndBMEZvaXlNbFl1QVh4ZHJs?=
 =?utf-8?B?djlORTk4azVjRDg5ZEZlamhvdUhyKy93SkwxQklBbE9RL0pKeC9MbTExb1l0?=
 =?utf-8?B?WU5uRTVSeGlkNFdqamJkQ2xBVGwxYXh5d3lqT0pvTVlwSCtSU3NKZEN6VVFo?=
 =?utf-8?B?NTl5a1RPWGJVRWhQOGJsUEQzVG5uNjJpM25RSi9lS1IyeGJyOVdlWWhFbE1l?=
 =?utf-8?B?a25hRDBDUXBCa0RZaW1uekpWNTdLK2RJRFBhZVp1b0Q0RzQxY01UZmdDU0xT?=
 =?utf-8?B?SHJJOVhEOW5IZ2tndkU3REVXNDNld1NEWTdrVkdlVkJmR2ZIRTZhaU44QVFU?=
 =?utf-8?B?STZDdnRkT3kyRUFuU1Zva3F3Z0NqQlBxTGVNNVYvb25jTmhDZ0tOeDI2N2w3?=
 =?utf-8?B?VjdXSjYydnEvMCsyRFpuQzIyU3NYbkh4TG5SRDcxckJnTGt1WTZrWlNweDF4?=
 =?utf-8?B?cXl3MmlVb2lLbS8rbnpUWU9KS215cmxkdEhTUU9kYUdqQlVFcUhuVjZiYmtY?=
 =?utf-8?B?R1RWMHNURGUyemtyajNFZldVV1NiNUljMG1FY3VHOUhHRWdXZW55cXd4ZkFG?=
 =?utf-8?B?Q2lnbzR4MHc2Zzg2Tm55WmNOZGhQNTd3a04yYnc3Z2J5cTdaTWRHY1JNR0Nr?=
 =?utf-8?B?UEVuU0pNVmZLbUpDU2xRZDFKNXlLejZTNWFNU1VsMnN6SXlhV3BhaGFUUVdn?=
 =?utf-8?B?UzM4c2tMcXo5L0xIVlBrWTB4ZnkrQVQ4cWFvTHp4cUR3QzlhZDBQa0xadEs3?=
 =?utf-8?B?em1zampDQ3dyOE5aRGF6R1hHZG9ObmtxWlNueEVYWmRNNFMxQUhnQlFUMWg1?=
 =?utf-8?B?OE9BQmx5Q1pndDdJVW5yeFQ2NXdPcGwwck1RNGxGb2RXVnk1SitCNUtEd0lr?=
 =?utf-8?B?SUthdk04TWYrTXZCdGpMRUVEek1XZU9sQWJnOTc3enUyTFpQd09TYXp6dEpD?=
 =?utf-8?B?OENuY01NSE5MOXFkeFA2NmEyR3dqTFJrMDBSbmpyczZhZE9lZEZTVDhHY0t6?=
 =?utf-8?B?aVNPV1ZzenE0VG9PU1E3MHZtTGFZOUtFSVpqVWRadmdzdUQ5OGEyRFA0VGNQ?=
 =?utf-8?B?eDRiMTU5dmRiYUIwbHl4N2ZmY1VPOW5teUMxd1FjamxtZEFZRXU3bjJWWGM4?=
 =?utf-8?B?T3F5Wlgwb0owTGx2QUNDT1hJQnYyb1p1SGlFb1cvekRQK091S3BkczNwblBG?=
 =?utf-8?B?YzJHVGYyV3ZBVVVKMERsU05pWWlVZzRkR00rNHFQWFJnVGRlbUFaQnFxL0RS?=
 =?utf-8?B?WGlSRThRV2FmSk1WcHpjcXpjUi9QQUZNYXdoZDVsNnMxNGV2elVUM3FWdFd6?=
 =?utf-8?B?RXBWekZhZjV6aHZTNy9JYnRHZWhsVVlTN3k5cDJJaVJWeTcwcHZIYnpycXYy?=
 =?utf-8?B?VzdkNmx3M1Z3RUJIeFRlUlp2d1VxRXBaRSs1dUY1UEdXakIzckJYSHFGR3RZ?=
 =?utf-8?B?aHZST1FNOE96eDJKMzlVRTJZa0pGb0RnSW1EMUxxaS9TYnFrRXFJOTQrN0dt?=
 =?utf-8?B?ZElnZzQ3elhqWFZLNWthNDZuUVkrYkxKeGhWTWllYVBzQ0RGZHpBRGE3ZE5j?=
 =?utf-8?B?c3htdmxtVmpwRTBqbjR2UXhnMGhrSnc5Ulo1TVJxMHJGNHp2dzdNQzAyL1J3?=
 =?utf-8?B?Q3BqemhXZUxBeUV1bTIzRVFiWnZpbi93bU5EMjExZkdQTWlKSHE2VWFMMGZU?=
 =?utf-8?B?cVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3648c6f9-5aaf-42bd-672f-08dd5bdedfbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2025 12:11:35.0547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jqyXrEP74VoNMjalpg9mJlGr606Bk4PE3rW3zalUWwDExT/4eBzAIdzauXBnS6IcHsFZoDPZl9De4ckyf3c7gZbsZ7/T3zhWlB1odTGmcQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741176729; x=1772712729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gIL9NImBl91G8BNt0Rhzh9j2wFnw27XRpVqMi+PackQ=;
 b=P1fz0JYP4fj8PpPjG0+xRfa+HVGRdU+ZbRqD+nDpGEtICJU/6ZgU4pcl
 LjTxNoWDMzekaOoE8aY4lReWzax8NWWJfDEMKcGdOi5/5ZJIPsOhkSx1Y
 WQoTL5y2Z1DGgZpzEOavJNTWHkFOeRqNRCHWVx8CBJK4t3M6mgtqnsdD1
 vihoWn3l9iRXBLAZoRnwmod7LakTTmui6hoRkrtMw+W2MNDrnXU1ylKpV
 TdcqcCc9FApQLsbm0s1rXY9WgydfNM+GoRgwHyrDSEevbYWwrq3d8jOQf
 VEzxeKh6rkcsW40eVeGcjDOMfM3YEQTfLaUqW427rU489loAmihTyWwFy
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P1fz0JYP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] MMIO write access to an invalid page in
 i40e_clear_hw()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gUHJ6
ZW1layBLaXRzemVsDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggNSwgMjAyNSAxMToyNyBBTQ0K
PiBUbzogS3l1bmd3b29rIEJvbyA8Ym9va3l1bmd3b29rQGdtYWlsLmNvbT4NCj4gQ2M6IGludGVs
LXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
OyBOZ3V5ZW4sDQo+IEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBNTUlPIHdyaXRlIGFjY2VzcyB0byBhbiBpbnZh
bGlkIHBhZ2UgaW4NCj4gaTQwZV9jbGVhcl9odygpDQo+IA0KPiBPbiAzLzMvMjUgMTE6MTksIEt5
dW5nd29vayBCb28gd3JvdGU6DQo+ID4gSGVsbG8sDQo+ID4NCj4gPiBJdCBzZWVtcyB0aGF0IHRo
ZXJlIGFyZSBpbnZhbGlkIHBhZ2UgTU1JTyB3cml0ZSBhY2Nlc3MgaW4NCj4gPiBpNDBlX2NsZWFy
X2h3KCkNCj4gDQo+IEhpLA0KPiANCj4gaXMgdGhpcyBzb21ldGhpbmcgdGhhdCBhY3R1YWxseSBv
Y2N1cnJlZCwgb3IganVzdCBhIHRoZW9yZXRpY2FsIGJ1Zz8NCj4gKGRlcGVuZGluZyBvbiB0aGF0
IHdlIHdpbGwgYXBwbHkgaXQgdG8gZGlmZmVyZW50IHRyZWUpDQo+IA0KPiBwbGVhc2Ugc2VuZCBh
IHByb3BlciBwYXRjaCBhbnl3YXksIGFzIGl0IGxvb2tzIGxlZ2l0IHRvIGRvbid0IGdvIGJhbmFu
YXMgd2hlbg0KPiBIVyBnaXZlcyB5b3UgMA0KPiANCj4gKGFuZCBDQyBuZXRkZXYgaW5zdGVhZCBv
ZiBnZW5lcmljIGtlcm5lbCBNTCwgcGVyaGFwcyB0aGF0J3MgdGhlIHJlYXNvbiB0aGlzDQo+IG1h
aWwgd2FzIHRhZ2dlZCBhcyBzcGFtIGZvciBtZSkNCj4gDQo+ID4gZHVlIHRvIGFuIGludGVnZXIg
dW5kZXJmbG93IGZyb20gbnVtX3BmX2ludChhbHNvIG51bV92Zl9pbnQgc2VlbXMNCj4gcG9zc2li
bGUpLg0KPiA+DQo+ID4gVGhlIGZvbGxvd2luZyBpcyBhIHNhbXBsZSBjb2RlIGluIGk0MGVfY2xl
YXJfaHcoKToNCj4gPg0KPiA+IHZhbCA9IHJkMzIoaHcsIEk0MEVfR0xQQ0lfQ05GMik7IC8vICgx
KSBudW1fcGZfaW50ID0NCj4gPiBGSUVMRF9HRVQoSTQwRV9HTFBDSV9DTkYyX01TSV9YX1BGX05f
TUFTSywgdmFsKTsgLy8gKDIpIG51bV92Zl9pbnQgPQ0KPiA+IEZJRUxEX0dFVChJNDBFX0dMUENJ
X0NORjJfTVNJX1hfVkZfTl9NQVNLLCB2YWwpOyAuLi4NCj4gPiBmb3IgKGkgPSAwOyBpIDwgbnVt
X3BmX2ludCAtIDI7IGkrKykgICAgICAvLyAoMykNCj4gPiAJd3IzMihodywgSTQwRV9QRklOVF9E
WU5fQ1RMTihpKSwgdmFsKTsgIC8vICg0KSAuLi4NCj4gPiBmb3IgKGkgPSAwOyBpIDwgbnVtX3Bm
X2ludCAtIDI7IGkrKykJCQkvLyAoNSkNCj4gPiAJd3IzMihodywgSTQwRV9QRklOVF9MTktMU1RO
KGkpLCB2YWwpOyAuLi4NCj4gPiBmb3IgKGkgPSAwOyBpIDwgbnVtX3ZmX2ludCAtIDI7IGkrKykJ
CQkvLyAoNikNCj4gPiAJd3IzMihodywgSTQwRV9WUElOVF9MTktMU1ROKGkpLCB2YWwpOw0KPiA+
DQo+ID4gQW4gZXhhbXBsZSBzY2VuYXJpbyBmb3IgbnVtX3BmX2ludDoNCj4gPiAoMSkgdmFsID0g
MCAoaWYgTU1JTyByZWFkIHZhbHVlIHdhcyAwKQ0KPiA+ICgyKSBudW1fcGZfaW50ID0gMCAoYWxz
byB6ZXJvIGFmdGVyIGJpdCBmaWVsZCBleHRyYWN0aW9uIGZyb20gdmFsKQ0KPiA+ICgzKSBBbiBp
bnRlZ2VyIHVuZGVyZmxvdyBvY2N1cnMgKG51bV9wZl9pbnQgLSAyID09IDB4ZmZmZmZmZmUpDQo+
ID4gKDQpIE91dC1vZi1ib3VuZHMgTU1JTyB3cml0ZSBhY2Nlc3MgaWYgYWNjZXNzIGFkZHJlc3Mg
ZXhjZWVkcyB0aGUNCj4gPiBleHBlY3RlZCByYW5nZS4NCj4gPg0KPiA+ICBGcm9tIGFib3ZlIGV4
YW1wbGUgc2NlbmFyaW8sIHRoZSBtYXhpbXVtIGFjY2VzcyBvZmZzZXQgdmFsdWUgY2FuIGJlDQo+
ID4gYXJvdW5kDQo+ID4gMHg0MDAwMzQ3ZjgoPTE3MkcpIHdoaWNoIHNlZW1zIGxpa2UgdGhpcyB1
bmRlcmZsb3cgaXMgbm90DQo+ID4gaW50ZW5kZWQoYWxzbyB0aGVyZSBhcmUgbWFza2luZyBvcGVy
YXRpb25zIGxpa2UgKDIpIGZvciBudW1fcGZfaW50KSwgc28gSQ0KPiByZXBvcnQgdGhpcyBpc3N1
ZS4NCj4gPg0KPiA+IEkgdGhpbmsgc2ltaWxhciBpc3N1ZSBhbHNvIGNvdWxkIGhhcHBlbiBhdCAo
NSkgYW5kICg2KS4NCj4gPg0KPiA+IFRoZSBmb2xsb3dpbmcgaXMgdGhlIHBhdGNoIG1ldGhvZCBJ
IHByb3Bvc2U6DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX2NvbW1vbi5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfY29tbW9uLmMNCj4gPiBpbmRleCAzNzBiNGJkZGVlNDQuLjk3ZWY3OWJlMzliMyAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29t
bW9uLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29t
bW9uLmMNCj4gPiBAQCAtODQ4LDE5ICs4NDgsMjUgQEAgdm9pZCBpNDBlX2NsZWFyX2h3KHN0cnVj
dCBpNDBlX2h3ICpodykNCj4gPiAgIAkvKiBzdG9wIGFsbCB0aGUgaW50ZXJydXB0cyAqLw0KPiA+
ICAgCXdyMzIoaHcsIEk0MEVfUEZJTlRfSUNSMF9FTkEsIDApOw0KPiA+ICAgCXZhbCA9IDB4MyA8
PCBJNDBFX1BGSU5UX0RZTl9DVExOX0lUUl9JTkRYX1NISUZUOw0KPiA+IC0JZm9yIChpID0gMDsg
aSA8IG51bV9wZl9pbnQgLSAyOyBpKyspDQo+ID4gLQkJd3IzMihodywgSTQwRV9QRklOVF9EWU5f
Q1RMTihpKSwgdmFsKTsNCj4gPiArCWlmIChudW1fcGZfaW50ID4gMSkgew0KPiANCj4gaW5zdGVh
ZCBvZiBhZGRpbmcgaWYgY29uZGl0aW9ucywgSSB3b3VsZCBzaW1wbHkgY2hhbmdlIHRoZSB0eXBl
IHRvIGJlIHNpZ25lZA0KQWdyZWUsIGJ1dCBkb24ndCBmb3JnZXQgdG8gbWFrZSBJIHNpZ25lZCB0
b28hDQoNCj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgbnVtX3BmX2ludCAtIDI7IGkrKykNCj4gPiAr
CQkJd3IzMihodywgSTQwRV9QRklOVF9EWU5fQ1RMTihpKSwgdmFsKTsNCj4gPiArCX0NCj4gPg0K
PiA+ICAgCS8qIFNldCB0aGUgRklSU1RRX0lORFggZmllbGQgdG8gMHg3RkYgaW4gUEZJTlRfTE5L
TFNUeCAqLw0KPiA+ICAgCXZhbCA9IGVvbCA8PCBJNDBFX1BGSU5UX0xOS0xTVDBfRklSU1RRX0lO
RFhfU0hJRlQ7DQo+ID4gICAJd3IzMihodywgSTQwRV9QRklOVF9MTktMU1QwLCB2YWwpOw0KPiA+
IC0JZm9yIChpID0gMDsgaSA8IG51bV9wZl9pbnQgLSAyOyBpKyspDQo+ID4gLQkJd3IzMihodywg
STQwRV9QRklOVF9MTktMU1ROKGkpLCB2YWwpOw0KPiA+ICsJaWYgKG51bV9wZl9pbnQgPiAxKSB7
DQo+ID4gKwkJZm9yIChpID0gMDsgaSA8IG51bV9wZl9pbnQgLSAyOyBpKyspDQo+ID4gKwkJCXdy
MzIoaHcsIEk0MEVfUEZJTlRfTE5LTFNUTihpKSwgdmFsKTsNCj4gPiArCX0NCj4gPiAgIAl2YWwg
PSBlb2wgPDwgSTQwRV9WUElOVF9MTktMU1QwX0ZJUlNUUV9JTkRYX1NISUZUOw0KPiA+ICAgCWZv
ciAoaSA9IDA7IGkgPCBudW1fdmZzOyBpKyspDQo+ID4gICAJCXdyMzIoaHcsIEk0MEVfVlBJTlRf
TE5LTFNUMChpKSwgdmFsKTsNCj4gPiAtCWZvciAoaSA9IDA7IGkgPCBudW1fdmZfaW50IC0gMjsg
aSsrKQ0KPiA+IC0JCXdyMzIoaHcsIEk0MEVfVlBJTlRfTE5LTFNUTihpKSwgdmFsKTsNCj4gPiAr
CWlmIChudW1fdmZfaW50ID4gMSkgew0KPiA+ICsJCWZvciAoaSA9IDA7IGkgPCBudW1fdmZfaW50
IC0gMjsgaSsrKQ0KPiA+ICsJCQl3cjMyKGh3LCBJNDBFX1ZQSU5UX0xOS0xTVE4oaSksIHZhbCk7
DQo+ID4gKwl9DQo+ID4NCj4gPiAgIAkvKiB3YXJuIHRoZSBIVyBvZiB0aGUgY29taW5nIFR4IGRp
c2FibGVzICovDQo+ID4gICAJZm9yIChpID0gMDsgaSA8IG51bV9xdWV1ZXM7IGkrKykgew0KPiA+
DQo+ID4NCj4gPiBDb3VsZCB5b3UgY2hlY2sgdGhpcz8NCj4gPg0KPiA+IEJlc3QgcmVnYXJkcywN
Cj4gPiBLeXVuZ3dvb2sgQm9vDQoNCg==
