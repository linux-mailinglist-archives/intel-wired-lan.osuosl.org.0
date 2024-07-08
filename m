Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E110592AA66
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 22:11:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A9F1608E9;
	Mon,  8 Jul 2024 20:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0jeYaKfaOjxR; Mon,  8 Jul 2024 20:11:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA181608F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720469512;
	bh=7Ebz0ESrlh6oZCAoDQZOc4UVued7bX8jUoSNqNYs44I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TjF0C9oXBy75xgssJV53v8ezV8DFW1oTb3omVdHnRheZmcBDMI47qFiqPTD0NgZvo
	 pO8ad1wspO11CsVozwNzmkAyWNoIv0OG9RIncqFIlZfLJSXGlRKHaGQVFO3i9S6ljY
	 RD+h/Vpnh/J8yaitshWiSo/i55IfX63tDWJdeSkz7SiqS6Dpxgc5KnI5At9HpWb6Si
	 LwlkAayAOPFv36bmbrzRvOXZMzNQNARuv25DvfcL8Wa9vzf9FBRX7bxfkO6keZuvB/
	 MktrqVMnfiiltJg1/odr8s3cvBPbzcvyPVqfGSYVEhmcuv+qyOFCv9URK3Cv2OXY5o
	 6k9uE6i85tAsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA181608F3;
	Mon,  8 Jul 2024 20:11:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 041321BF275
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 20:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DFE50402D5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 20:11:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AWVCUzxbMxgw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 20:11:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 770964024E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 770964024E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 770964024E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 20:11:48 +0000 (UTC)
X-CSE-ConnectionGUID: SlhRbshHSBeXLDnriHiDJQ==
X-CSE-MsgGUID: MXOyHOYjR8ejVsuzXO1H7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="28299398"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="28299398"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 13:11:48 -0700
X-CSE-ConnectionGUID: HnUnKwarQ/urKDufReu3xg==
X-CSE-MsgGUID: IEQGrPnPS1+b4bTU7HXe5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="78761801"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jul 2024 13:11:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 8 Jul 2024 13:11:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 8 Jul 2024 13:11:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 8 Jul 2024 13:11:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 8 Jul 2024 13:11:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IOcbwu4ZjehXMcOAKiipEmXdgsxz1MSTmdhS/1yE+DngkJ/JunPHzo5IQICZaFfUEuuJmJvYrZWd34Jej1c59sDpWCp3Fw7xBZj0EFD3ZStmAyBN86IXwI7q01jxUkhqq2pd+AuzuqQUWx9+SWkr60NSleUpm2egGCE69UifNQfUrtVF+Ve2Qp0gJ+i/gn+RgyUfcqGSeay69YmlX/ZZeMuEuVdeb56KNdESe4CGA/2Njzz2suBRvJf585IAeYhdlpVmoRTii/JChak+Ft3kYNIq3yPjnVCpFWFg9xlDvDsaLdxzrwIwzuzq5kgPaBzqIHan0IZYtJHq4g2bRxVfEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Ebz0ESrlh6oZCAoDQZOc4UVued7bX8jUoSNqNYs44I=;
 b=RSWQfWDJPZ/gVLYWHjbCPPa96tILsryZd4RwrqT/ADYei7lIHS9tiRzG0WjBvgjPrG11VVCJHkbetrvCOZ5SA4e2Q6B5+bi8cQPamWAIg456MMYe0tMxJwSj0lH4ZDkg/6k47IQSScz4boWOPhTjE0omhlZ8uYqwf+qTFRjB0ODlSKXN85R/Gey92Qkg/XlfaE+7R3oKVt+WsmgkCLCM/osn6xcOVPX4sEVVd0i0FyKz6sV8B7lOzcMsJK/kU0LtooR4recGZsJ70hVQg6BRRwnioPraCConKVBRP+xwYniAVhmVB1YVo2ojcaMmgeNdl2+6S8Rg8lGHSQx7H8mEEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by BY1PR11MB8054.namprd11.prod.outlook.com (2603:10b6:a03:52f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.36; Mon, 8 Jul
 2024 20:11:44 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%4]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 20:11:44 +0000
Message-ID: <adf76cbf-49df-c43c-ffcc-458f9afef48a@intel.com>
Date: Mon, 8 Jul 2024 13:11:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Dan Carpenter <dan.carpenter@linaro.org>, <oe-kbuild@lists.linux.dev>,
 Junfeng Guo <junfeng.guo@intel.com>
References: <51190ea3-51d2-4559-b382-0fa823d4cc86@suswa.mountain>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <51190ea3-51d2-4559-b382-0fa823d4cc86@suswa.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0041.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::16) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|BY1PR11MB8054:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d81b129-97ed-497c-0ccb-08dc9f8a3046
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amN5THVhVGliYnllVUlGZFd5R2RKNkMySVYwV0V3WHR2TnRDWDNuRTFoZFZM?=
 =?utf-8?B?NHhjWWpqaUg5bGZBKzJ2MTk0OVQ5ZkVOK3BvV1J0cXVlMGlMbXJaSmQ2ckFY?=
 =?utf-8?B?YlN5OWdVclB3QkVrQVRHY2R5d3dWelNCZWlad0ptSS8rNDlZV3B3QU12Z1R6?=
 =?utf-8?B?L28yTDN4Q2srSTEyeFZwUTBiNVBnQ1pIOW1Jb3lDMEIvWmU2dGtNd2d2MFhZ?=
 =?utf-8?B?dDVvZjFUYlZWbWRsL0dCanhYaE0xc1Znek81N1hud0NRcXRQVWpmQk80ZlJD?=
 =?utf-8?B?K1NYZDludGdKRjBKMm83aWVxMmNBQmdibXJySktWLzZrMk00MzZ6bndYVFFV?=
 =?utf-8?B?UGo1dU1JQ0FpTEJVWmFxcWtveHErZHV3eWJsRGtiK0IyWXFZMjZhOXp4MFhz?=
 =?utf-8?B?aFVHMU42cW1rTldXSGduVVcrK0xoL3hibG1lU1c2dG51Y2dYdU13ZGRCOHN2?=
 =?utf-8?B?ajg0YkNudmNKcEhnNFhIWWZUUEtsV0NjMlVscW5acVR2SHVGN2FxZ21ud0s0?=
 =?utf-8?B?RWxXdXJyQVhkS0xBajBPcXY1dFVLbVBZZTZkSFZob2pMbC9qM0xQVWRGSE9m?=
 =?utf-8?B?VXk4UnJuK1B5VHJ5UHJCMWdqZ3F1eXU5cUsrK1hGN3FqT3FCNTJWeVFpMmpy?=
 =?utf-8?B?Qmd6NkNHbUlPQXRRMFk5WEpLNmtWWnBMVzFvMTdPcHRuN2NQWDE4Q0F0Tlhi?=
 =?utf-8?B?SkFxa2VnaG9tVHAyL3VMSzRQdjhWWnlibjE5bkEvSG9xYUkvZDUvWTB4S3F1?=
 =?utf-8?B?K0lVRGhSTTREWGVhTE94QWhaOWIzU1FzSFFtMnl5V2twQ0xjYlBscWYzTEI1?=
 =?utf-8?B?SHZSVndBOW9abVlOUDhWMWVBc3h2bmwzMnVEazd3Y081QjZCSlR1OU1KUTFt?=
 =?utf-8?B?UTl1QnVJRFJvTmhwYWhqYWlIVWNmcTZOcEU0UnI1N2hzbnZBbDBUL05oakkz?=
 =?utf-8?B?RTlubzR6ZzlZWXBRQ1FPeGxYSHZNdjJlaXJWMjA4b09MNFVwYzNBaTJoZkl0?=
 =?utf-8?B?djhHL0k3bURUeEtCdmhHTDNjN0szaG5pNUc4U1RDUlFpTk5GQ3k3THprYjJ3?=
 =?utf-8?B?WXhxM3lJWlRNSnlrblQ2Rm9OREJoaGdQRUxING9JNFNkQmpESmpXZnhEUDh1?=
 =?utf-8?B?d01hdlBwMEttQXM2Q25rQXpYRlUwMmFlRXpWNjdrd2YzZnJmWHFnWFFxeTAr?=
 =?utf-8?B?K2lvbTJ5TjEzaDQ0bDJNYnVTdHlkL0tQZU9uV3JLUlVobzFwMFZLbHcxZ0E4?=
 =?utf-8?B?R3hkS25CSHRwaUVpUUdESzU4eHptcEpoNnB3cXdNZ2h0U01iUGVhYTlEamZt?=
 =?utf-8?B?S1haS0RnVlUrSi91Z1h6M3N5b0Q1TllUMzdVQlMzOHZwWjRRclVxbzJiNlZO?=
 =?utf-8?B?aENra2FZMURWRzl4b0R0UHhqT1BjSjVYMGJSTHpYRzhuLzJGWS9obUlVSGtm?=
 =?utf-8?B?c1lTRms1WDJzTnZjYURBTjUvOUJ2SDlFdTZVQ0luTzdDaDA2dGVPai9vV2xF?=
 =?utf-8?B?SW95S003TzBBb2NzU2d6ZThyMWtONTZ0dDlYamVkbFd1UEM4MWZoNDNnbWJI?=
 =?utf-8?B?WVU4b0tVODlNajZBSVJ3N2J6dS9FZmJHZForUGcxZkFvdlY3MXM4VXNYcTMr?=
 =?utf-8?B?aHZEYnc1cUlrR2JjOWx1bkFRMDZGKzdvb09nV1NyMnBCcXFYeUU0NFlpRDdP?=
 =?utf-8?B?cUYwMjY2UG1WZnRtMkRTVXRJeU8reGRCNWFOOW9GM0pqZWJTRWp0Yk52cG9w?=
 =?utf-8?Q?J3Ef9leT94CKQm3/YQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vkh4OTh4M3JVaFRoVitHeU8vMzlsekxrajN4ZDVYTXY3bmt1WkZBSUdtQVBX?=
 =?utf-8?B?bHg1bzRRUEt3aXU5SWxON0g3RWxjc3UzUTdvRUZaU3pXb1ZscWVUbWJsY3Ri?=
 =?utf-8?B?MzRXQjUyR1NrVVBjbkFJenRmMkY5elpTajZuK1pobEg4bVVlN3Y3eEhvTXNs?=
 =?utf-8?B?OE1HdVdTSmZzYzFlaFFnYW5MWjFJY3pLZFgyTGFhZVVNRmI5VlM3NXNHeERs?=
 =?utf-8?B?ZHp4NGF4ajEwRHk2SmorVkVlSGs0eVFWWlZkcGdvTGpNNmVhRFdhMEI2dHMr?=
 =?utf-8?B?TUkvZUFvV3FvUEZvRWtmWm5SbmU3NjZVWFEwbmN5UTJ5WTkvYm5MZ2Q0MVJp?=
 =?utf-8?B?V25jN0hYeVhEeCtZcmRTNzNYbnZKUCtMUGRpNHRhODFqWXoyR0pUeHVvL0ZF?=
 =?utf-8?B?enI1RGJSdE8vQjVrWitJdi85UTlDK0NySTBvTnRMTEszVnRlUDIrZFRzYUJq?=
 =?utf-8?B?YVQ0TUdjMCs3L1ZwUlFxczZSTWhWeG9BbjdJeldKWm91bWxuUVFEbHc5ZEt1?=
 =?utf-8?B?c2xVOWlHdEFYeWxUZmQ0M2NPdFN1cFVlV255RXp2azhxNk9CL3pBWTh1Z2pa?=
 =?utf-8?B?NVlEaHdFUFp4ZGh3RnhKc292T1l2TFA1YmtDdTlILzYrUmtNMmU2czRYNHdW?=
 =?utf-8?B?RVhpMjRIMlJybVprUnBHSTh0MW1qclNXc1lGeE1ZbEdZbFc5UFN1VkEwbFkv?=
 =?utf-8?B?eEZZZmNIR0xZaGdYR3ZoT1drb3JLYXVUTm5aOWMrRmV5NkY5RE9sQUhFVE5R?=
 =?utf-8?B?R0tnMTFMWVk5ZVVlSWhHVjMxaHY5YWVsTFh3VFA3cFg1dTlnSFNNTzFCM0J1?=
 =?utf-8?B?bVFvckFKVEpFUXAzanRpdFlJMzdpcEtTYWl2NzhDYkphRlc4aVM2U2Y5Y0Q4?=
 =?utf-8?B?RmNXMXVPVHNRa1k2YTRwYjc0OXg4bkxQemt4S2FISVV2ZHJ1eFQyZjhwRXVs?=
 =?utf-8?B?NmlPc1NWWkFFYW9MMGtiV3F6Z1NtUjZqYnEyLzgxYi9VcFMrd2JHSTk4d3pO?=
 =?utf-8?B?R25rWkF5NTV5NWZjQTRlS04xQ0hWTUtudkQ2YjFhallLU3ZmVEhiZzhteis3?=
 =?utf-8?B?S1NmT01QbU53U094M3ZJR0N6OWtNT2lUT0ljYTUyZFEra3dodnBqZDkyVURC?=
 =?utf-8?B?ZlBHb1YzbnZCNDFrd0E5YUk5UU1IQ094R1gvM1J2WThYM3BvcjRhY1drUHFG?=
 =?utf-8?B?aE5hOER1bWo4TXZ0STFZak9rRmlqYUUxU0hnbmF3SW1qOWZ3T2s5QWI3d1F0?=
 =?utf-8?B?VDVCTFduVXpvRWRHWnlGdUU1Q0tlSVlJV2xLU3dSckp4Q0pNK0JEaXFlTm1T?=
 =?utf-8?B?VFlUSTk2V0x4NWxpZGtodzE3Z0RNY2p2cHdxaFNIOHlZSUNUazlJdWIxOUJm?=
 =?utf-8?B?azN4cmlzUnVMZHIyN2x3T2FTSURPU1EycEsvcjVNZG5PMkZQclY5eHdocVlY?=
 =?utf-8?B?dExzd2pSY0kyb0d6UXdDQTJaQ0ZzQWw0NmgxVC9qbnFFajhVbDRhN20wMkEw?=
 =?utf-8?B?eXE4WmgxekE4NGFqYlZ4eS9xTzBTeHZnNkhjbzJpbS8wSVlBVkpubGdMSy9P?=
 =?utf-8?B?WTM0Y1pOSlcxelBodUJ2YWJIMXBWb1gyMGNUMXBIZXYvbUJqTi9PaHN3ME45?=
 =?utf-8?B?UEFoNzBadytJZlp0Z21LS3VGZndKdGQ3TExFdjNxK093dTJLeW9RL3h2OTRa?=
 =?utf-8?B?b0pqT08rVit4ZW12WllWeFBXbS9tcHZNQlBteWJ3em1VZlJhendOelRHVDlZ?=
 =?utf-8?B?UGdlVlF5NjkydVIwQUZLQ201Nm5xSXE0NmllRDYyNW5xcC8yVzJ6Ynl6Vkdh?=
 =?utf-8?B?Wk94TzBSa2prclYyOXk3dy9SY00vb3UzOWF2UlpHeUt4TUg3TGMydXdrNUhI?=
 =?utf-8?B?UFcwTXJlUzZCd0JYTU9udG41MTNWczRQaVdLSUlyVzRrM3Uyd3FBcTRpTE8w?=
 =?utf-8?B?SlEzRnFtOEVnUjZsTDhqSmFiM0RDUi9kMHMzNlBHS0pLYUpaQ3JmbXdualhJ?=
 =?utf-8?B?Q3BmeWxUOTljNEkxTzUyZ1lKR1RERzZEaTBiaDJZQVBSdEhuVUdNWTRlWGJL?=
 =?utf-8?B?YWdDdDdqUU5GeHJKZkRub21XaC8zRGlXM2RYVXNmS29tYmE4MW1GMGc3Q3Q5?=
 =?utf-8?B?WUErN2tqK1dzY0sxQWdGaDV3dWZuM3NLeVRIWWtaVUJYNUZLTTVObFZWVGxt?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d81b129-97ed-497c-0ccb-08dc9f8a3046
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 20:11:44.5703 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EuOO6wDOItyUI3RdddZLKSWPv2wDvd+z6Hew7mgzddr+zVhH8oy4J21m2vjh7lCEaZFxctyuAXjUkq1zprvPsjWsLD8NtdBs5WdgIpq78Aw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8054
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720469509; x=1752005509;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZgHh6WixyHaMF4J4VUW+cV9lon7qBFntd6+f1Q5/yl8=;
 b=FYNkxYn0UZ6XVZeOSGba1UbJbb5qZ1bUocrPa/wFepUIAwW2+hbYeEKs
 G1MfYGBF0/4o21xmnraNGSqQ2GL0KuNU2VLfnDV/agD+CEFuMs23WkHAu
 QwDXExmgmKMz2ypyg+rxAogCU7JUvWDG0+pgJ+EEpdwOqOBP9VYi5OCxz
 VSxszewDVyA+/waavUaVxCjuO+QcGbQsfDTi4tcWdYE9+C/qqHD7b+QaR
 6D5gzlyPFSglWdFsV8tJBUjWyZjEjINiX18xp1Q0GZsdv2Eak6WXHpmRO
 +N8/N5b3+n9GWagUtqqi8VMLYZpabe3bwZfXpougzcYv1oNEJf5tQv/yL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FYNkxYn0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-next-queue:dev-queue 12/92]
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c:875
 ice_vc_fdir_parse_raw() warn: missing error code 'status'
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
Cc: Marcin Szycik <marcin.szycik@linux.intel.com>, Intel
 Wired LAN <intel-wired-lan@lists.osuosl.org>, Ahmed Zaki <ahmed.zaki@intel.com>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/8/2024 8:44 AM, Dan Carpenter wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
> head:   d051d5283b530af3f9627c8e600aa581bc6c1958
> commit: 23eb6f4d18624231cd3f57f322814591f38b3837 [12/92] ice: enable FDIR filters from raw binary patterns for VFs
> config: x86_64-randconfig-161-20240706 (https://download.01.org/0day-ci/archive/20240707/202407070634.aTz9Naa1-lkp@intel.com/config)
> compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202407070634.aTz9Naa1-lkp@intel.com/
> 
> smatch warnings:
> drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c:875 ice_vc_fdir_parse_raw() warn: missing error code 'status'

Thanks for the report Dan. I spoke with Ahmed and he will get this fix 
into his next version.

Thanks,
Tony
