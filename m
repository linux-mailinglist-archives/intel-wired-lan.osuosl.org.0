Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5D698A1C7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:15:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B976360674;
	Mon, 30 Sep 2024 12:15:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dNNas7Twpk02; Mon, 30 Sep 2024 12:15:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9ECF6065C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727698534;
	bh=Hdy8ehstQtLgbWv9vaREtVV6mkEQScryMpmMVMSoxyM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x2eX36DwJO8GJisorWfZFdXAiqXeDTeuhNOjOZkDpstZjvO2rvFm4la56gz0hE2cW
	 ouXLlzsHVPtLJ1cCCQZlY72N49Ucr2KoluF9jm3iphODZciE8/xoFKY0e546IXyBFM
	 t6GaWMxITd2oCQmcUHFKknodLL0g9c9ShpwS2jzUrC6k7lYZeflXo+DORgeHxNknuk
	 Zy9EHwNlN+kvZ2d8FTB4hn+2b4EABzJwqTRwTBe6JH9fvPTcoGEMKdk9UI+QlIdjBh
	 JbvReUWzVTUs6ecKL4WxqJILQwWbzFG8qRcf4ZiauMuPD3xT1xKlGPufddh5kSRX32
	 x2iCmZ6YPz1gQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9ECF6065C;
	Mon, 30 Sep 2024 12:15:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A9C31BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBAD540231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:15:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cGVcvWKt4dvi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:15:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C50D3401E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C50D3401E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C50D3401E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:15:31 +0000 (UTC)
X-CSE-ConnectionGUID: /plBYQujS+OJP1yUZr5jYA==
X-CSE-MsgGUID: zZ87yBj8TXabkOuK7NH3gQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="38167329"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="38167329"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:15:31 -0700
X-CSE-ConnectionGUID: qjVGNHHyTXO+ynVy28CF3A==
X-CSE-MsgGUID: 2ShtEokTQWuqMiXfqYATkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73405795"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2024 05:15:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 05:15:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 30 Sep 2024 05:15:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 30 Sep 2024 05:15:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fbtvrxuMkz3LeYyeToqWjEIbDbz+RVV7vO71Q0gwr/mcOEApYpSgktpcuWP3ivj/mtPUN3Ji3GfnVBbWhXyLVPYoKvI/vqQBjE+mOtXn6mNdS6nMgKMUyZ7Tv5Qko4VBhbSJTlA2+ug/TzczFi5YDDD/crNsFfjxZMOCMGDrA0V+4TDZ1qtRNQG8QHxEdNTCOUh7dd9Qr0O0/NIrqyCQk+h464RXVy7kblzTsqYUYXycGdBr9g0b8bOcWk+bWLbdl5xii700Vv8c0fr65HUCmDo1sqfipU5z4X/Z/LVW3oeJBOgNAzwhGUV6wL1d3ehS9Hv9GyyRDX7WoLiP3BdmNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hdy8ehstQtLgbWv9vaREtVV6mkEQScryMpmMVMSoxyM=;
 b=WcvPIQNODMI7HBM7FGASsrTuusBlYFjxC5DYeqyDa3W+Xq850fxAUdtLE5u2UTo69POFHo+W9bF2FC7O7M1lGXnmeXkBDz7Kgzv2Wjc2V0iR9lC2t4RV4V+eSL1Gqclpdcek+NtS7jb8DVLU85Y/0prgu8N6XEVSu/J9G2+wqQMcspTAEKonFRgaw32Ax5okTmXaQWF06ZlXoc58eqdWB5nsPef6GTgO8PYEeKFsBJo5duzJUGVV51/yPmemjEnRSol5gxKD80HsF+eoOmzahAuMyZ/WmxBI5TtccusN+ZNUKe53bxOtVUErnxbPU4Y6R9+l8BO75xv0JqjfSJKaUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 12:15:28 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 12:15:28 +0000
Message-ID: <b148d2cd-a25f-4b42-917d-0bc92a0b0a19@intel.com>
Date: Mon, 30 Sep 2024 14:15:23 +0200
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20240917214547.3016085-1-paul.greenwalt@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240917214547.3016085-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0009.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA0PR11MB7934:EE_
X-MS-Office365-Filtering-Correlation-Id: 27056b7e-9a79-4f39-213d-08dce1499214
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V2MxOHFrUjhybW9lamZWa0FCeStMOGpXdW5tTnJENXBLSGFDbmlUWldFTmJo?=
 =?utf-8?B?bmxnbkVvd3MxeUJaY2ZudHdsM1FkaXl4TWdXRHAweEJ2eFozekhUaFZ1enk3?=
 =?utf-8?B?anpFdU8vUEk5SDRmQ2IvZWRNaWt2d0lIVVdBd3hiTHFsK2w4dGdCVE40cGox?=
 =?utf-8?B?U01WcitjSlM5eTg3aEpROFA2Z21MNzF6Zmk3SEcvQ08rc3YzRWh0U1dqTlFx?=
 =?utf-8?B?elRnaEpVMXlkQ0llbFZWU3AzaG5XVGpQSm1GTkQrUmdYbENZUjFHVHJVKzJr?=
 =?utf-8?B?TG9oTGtvd0lFanFObVB2L2J2bjFNdWh1amZUQ09RaE5odUllOExvenViM1Rr?=
 =?utf-8?B?UzAvVkhOeVhJTkZ4Zk12RVUyZVkwMkExNEhwdVNTTVR0bGg0ZjdMWGIzU0pN?=
 =?utf-8?B?aGVNTlZsVEpCbWU3MXI5Q2xZSHRJUW1SdlBOLzhBT3V6czdMVzM4NlR4REV3?=
 =?utf-8?B?N280U0M1dDdlVVo4dWt1K002VXByWHdncmpRWExyNWtNT0lPMUIwaG9aelNx?=
 =?utf-8?B?TkdvOFpybEROd0RJUWVRT2hQYU1BZUNlZUc4QjdlaUFueXQ1VytpZ2xTVE1U?=
 =?utf-8?B?RStUVjhmMmU4b0RwY2JUY0xQcnAveGxvbEdacXZKOXRBeHY0elB1YlBJa1M0?=
 =?utf-8?B?MENFNzZMZmdnYmt2YWJ3eXY4bkVDdnJaaDRrTTlsdGVNZTB0U09sRXY5WXBh?=
 =?utf-8?B?YmVhVXBWdE81Z0V6eC9FTytzZ2dCcktmVHBFWVZXc1pQZzRVM1VWSDljdDIw?=
 =?utf-8?B?dWdKeE0zQVF6KzRkMm5ibEVLcWZjYXp0VnB4SnJ2bDhtQVlRWlcwU05QQlo1?=
 =?utf-8?B?RmxMYmVyMnpyZUl0cFkzczNuazR4MTdFUE9JL1lMRVJRYWJYLzYxRk5hOGdR?=
 =?utf-8?B?aDJ2a2I0ejV6UjhZRVQ1MW45NDhaVFVkTjFHQzVqVHliUUhlSXVKUEV4UzJh?=
 =?utf-8?B?cXRqTlVUWk1rc29VM1BmVU9tVlBaNEFXRkIyZy8vREdhckFMVHRWckxJR0Ex?=
 =?utf-8?B?eFJoeVZvZDFDbkkxb3pQT041aCsyclBTNmI3QTZ5Y3BTN0tGazlsUWE3TW1y?=
 =?utf-8?B?Mk0xdGtzNXpITU1iZ2MyamJUUWkwa3BjRzVEUTN2U21GMlFzNmEyL3NFeGp5?=
 =?utf-8?B?RUE4dnozd2Y3TXg4Z05UdlBHSm1KQU1zOHhFZ3hFaElvN2NzM3VkRTJUZFZi?=
 =?utf-8?B?dFBGb2RjYW5XRXJyMXd5V1JTQzBycDU5N1M2NlZOVkFBUmFtR2ZBU0FIaFdn?=
 =?utf-8?B?YzZwbjBnQ2RMTHFzUTJCWXZpQjRMSjVkS0dOaDA5WlFCZEVkUmZBVWpHQkNm?=
 =?utf-8?B?aC8ycVkxeGtTcnU1eVN5UGltRXMwS3AxWXgrU0VNMDBINVpmWlJwYmk2RnBM?=
 =?utf-8?B?dkhEWDlYMWlESG9uSTRDdUc3ekppREJZdjlMZFlteGNqRXJITW9UVUdXMWhD?=
 =?utf-8?B?ZFVTUUg2Yk92SDdKdVJtUmRGZytOMTVtNlBXcE4wbks1c3JrMU82OEtrbG1Q?=
 =?utf-8?B?MisxSVZQL2JqZjRpaUhDZUxRU1JYTU1yRVErOWw2cXArTjhzOE92aXVQa0cr?=
 =?utf-8?B?cTROdHMwZEd3QWsyWWZjTXo1UXB5cTU2SjgzaFZyTTU3REd5K3pET0FnK0lL?=
 =?utf-8?B?UmJKcGI2cXl0SHg5NXlyWW9iM1dqaVEySXVoUWJQMWxCczFOSTIxa3g4d3Bl?=
 =?utf-8?B?QXRuc3BRNmhkUXd6ZWUvNG9KWkNHczZoazN6UHNFQXZWcGpwMm5vN3FFVnlY?=
 =?utf-8?B?WFZRNzJBL1VpNGVpT3pyVjZZSU1wbk9IMHRVZmFoSXpVSFNlSFJ2MHhzWnNK?=
 =?utf-8?B?MC9DVVNxZG8xenF0RlJDZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bktDa2QvWkVCS1ZXQW5Lam1FY3o0Vm13THA3a1pQV1RXSVJpWCtkZkF0SXZL?=
 =?utf-8?B?YWlrUUVCVHkwVDJyTkF0T3lEa0l6QWNRL2pjUENLWlBTOWY0bjU4REFaVU1I?=
 =?utf-8?B?Wmdzazkvc2NHek53NVdsTjZRenRBalBwalQ4ZlNaeG1UM1NEWGRCRzRnZFND?=
 =?utf-8?B?bEJ6STkwNDlxOCtpOUs4b2d4Z1h0T3h6RHpIQUJkUDh0TlN1UHVkSG5obWZQ?=
 =?utf-8?B?ZDRsSlhhbXlSN1BHelBLd2t5emtLNHFTVWlNSS9pazEveWRmVCs2aTQ4SzhZ?=
 =?utf-8?B?WmhtUzYwcDc3RmhFc2pRZlZ3MnkzaStMQUxYaW9NWlg2Mm1yalFONHFBbjI2?=
 =?utf-8?B?a3FDUW1TWjIxeVJvTTlyb0creENsYTQ5VGtCbjB3bEtJMWtnV3U4aUU2QUxD?=
 =?utf-8?B?VXVONGhXUlVVb1ZsRUtCUVZmaFJxY25PV3FTbTBaSHRGNWVGeDE4b3dzUGZa?=
 =?utf-8?B?MW1Jd01pM0N2LzVjaWd5cGlXamlrd1BsSmJEY2VBaEwzZ2JKUVFsVlNvZ1Q3?=
 =?utf-8?B?WHFHUldHYjJIaXB2M2tNbjVKRkJMSUZzZUl0c1BrbGRHSVpyZXFMNkJ1ejIz?=
 =?utf-8?B?QzJldzZ6OG9EMW1zTzJOMndMODA3QldQYlJTbmNVaDhKYzZYemR3a2EvYTBj?=
 =?utf-8?B?anlSMEd3ZUx3TG5jUDhuaU1RQXNjNFJCbDdYMjJ6UHVwMWdXL2ZDbFpPV3dD?=
 =?utf-8?B?NXl5V1pVdzVyVHExTktKY2Evd0l6Ym1EYjhodjN4QXovUS9tZVQrSXNJZHdx?=
 =?utf-8?B?K04vU0N1SHBTRW52d2haMEVnMWxtbmFCR1FMM3hLQlQycWxIZllNN3NPOGtI?=
 =?utf-8?B?RENNN0k0ekdyUlh3OXhEMjZlR01xRFNUZnRCWmFmUHQwMmEwSkJPV0dYWVJ6?=
 =?utf-8?B?eUFxb3lPWWZacmsvQmdFYnN0dDJCUkpQbU1Sald6NnJCM0w4aHR4OWc5OVlp?=
 =?utf-8?B?dUdJQng0T0tEL0JveWFJNFdvTFBvL2NLNktHMmgvOUxHREpVdVhVT0l4YnNX?=
 =?utf-8?B?U21uTlJ5WmU0NVZINVVYUEE1OStvbjhJSWJQMkl0aEh0NWNqdTkxcXVUWFFX?=
 =?utf-8?B?OXM2Q3pUR1dUWU04UGxrTWpsdHJKamRGTHhtRkllVmtoRWorek9DME1aNTVi?=
 =?utf-8?B?ZmdleU1TblBWYnpPYkw5bXVHbEQ3RVgyb0lVL2VpZ2E5RmpGdmRnU3V3NGtH?=
 =?utf-8?B?OUFLVU0wNTFFNXJVa2NyNWZTa243WEFyRTNzZXdZV0huZVR6eUlHMkN0S1k3?=
 =?utf-8?B?dzE0THplNUpNYkxWZmxtRDZEczB6aHRhb3JmTlV0S2RyN3hmdi9pa2VGTXNF?=
 =?utf-8?B?M2NHd3EvWlRQQnpHMnJjVjEyZm1mOVJhaDlvUm9nRkpmdUxvU09KZFFFb3Fw?=
 =?utf-8?B?MnlaQ3lML1F6WHFpQjdxcU5FM3NUd1lJcjJrN0psb25LeE1hbENMblgyMTRj?=
 =?utf-8?B?UTIzNlpVaDZxZ3ZnTXIxYVZmVW0wYjdadVNnWDBLbFhkbmk0eEpydjZRVWhH?=
 =?utf-8?B?a2hJMTNoUVh5N0VHaXp5OUdFTDE5Z2ZtZXQvejFDZ0tqeWhWS2Y5RjV1N3k3?=
 =?utf-8?B?Z1V6Q0UzT3VEZGw4ZkQyRmVkZkJhUHdnSFdwTXBPZHZpcXErclNkRkg5NHRB?=
 =?utf-8?B?YkZYdmNPVFpHZ1I2SXpMY3p6UStFUEM1eTdJQ0tzQ0lqdHBlS2wvVjBCeHgz?=
 =?utf-8?B?aW9vNGQrZGR6QXdaT21PN01Fam9zdnM1elg0OUhWV1FUaCtRTFBwdkxibTI2?=
 =?utf-8?B?ejhLQnR2N09iWDJESUJKbHJFZFNYTnZob3l0akhaZ2E3cWJ4U1o2R0duYUxw?=
 =?utf-8?B?ZituMElndEhjMmZrejRZaDhqZDNFbFBsZXFpSTFuS04rYzQvTEppUWVtZGJx?=
 =?utf-8?B?ZW5LWWdZS2ZJSmdSeXRhb1lBQi9ieGVJdERGMWg5NldiWHB1S1NoaXphZXhP?=
 =?utf-8?B?b2hYdVRBTlVXUy9rbHpCSDl1N1UwQnd6SjE3ejBoWkVVN0VCTlFtY3lPZGdi?=
 =?utf-8?B?azdxQ3N2R2hUcG9IZEJVRlhpbmx1c2w3ZHByTVBoOTdpc09wRHBPSEcrQXVU?=
 =?utf-8?B?ME0zSWtGZXRzTnJTZDR0R2dPMXYrWHNFUEYydzlRdmtlQlFmU2d5aEEvdm15?=
 =?utf-8?B?eFA2TmpqeEhyRlE3REpuMjVWd1ZKcjU0NzM5amt0WUFjZzBHbkx1WjhXOG12?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27056b7e-9a79-4f39-213d-08dce1499214
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 12:15:28.1047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q56fr+fMuR0qizACIH/w/SeeQsgtgc2c/MojFzcw5Ufmzfl0vTobxThBjmqwAh3qEaYDbDsq2xVhmrm58BBxtiPn5W4d1zaHzy+pfcaX/20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727698532; x=1759234532;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1mUk1ROMb1lJz0Z9X3GSLnYKfgL4BC0Eu551RHaK+EA=;
 b=c3OoGdfWJ+03i4hkRA6twdIkC9Pi1lDMQP3yC/rUCgmWQGrQsMSKfE4v
 BetSHFDCtaM9AzCdERLgcvya/IXyNRnSSihBFF999wdMtGcP193uOeSsz
 gARyBWhpX6ZpPLb1hvtPAgs4I6ZkWKvUL/otc6mPOuBPhOxSSGIJjEcdh
 0OMUAH7uBBUz5KcSeOvS+b+83h0lAe8NqOKdwEVFkgViMEnFq2xSqf9XS
 Nd+0l5KXXcP5+Z0lGA92GIzj09u1DJ4PqsAZfoyBeJB9MzeaJdvByjmW6
 5fIekLp2jgQChqIe0QTeLRSP2dILrBm66o6uXAwxesmJyCZeDy/UoaI4r
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c3OoGdfW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add E830 checksum
 offload support
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
Cc: Eric Joyner <eric.joyner@intel.com>, anthony.l.nguyen@intel.com, Alice
 Michael <alice.michael@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Tue, 17 Sep 2024 17:45:47 -0400

> E830 supports raw receive and generic transmit checksum offloads.
> 
> Raw receive checksum support is provided by hardware calculating the
> checksum over the whole packet, regardless of type. The calculated
> checksum is provided to driver in the Rx flex descriptor. Then the driver
> assigns the checksum to skb->csum and sets skb->ip_summed to
> CHECKSUM_COMPLETE.
> 
> Generic transmit checksum support is provided by hardware calculating the
> checksum given two offsets: the start offset to begin checksum calculation,
> and the offset to insert the calculated checksum in the packet. Support is
> advertised to the stack using NETIF_F_HW_CSUM feature.
> 
> E830 has the following limitations when both generic transmit checksum
> offload and TCP Segmentation Offload (TSO) are enabled:
> 
> 1. Inner packet header modification is not supported. This restriction
>    includes the inability to alter TCP flags, such as the push flag. As a
>    result, this limitation can impact the receiver's ability to coalesce
>    packets, potentially degrading network throughput.
> 2. The Maximum Segment Size (MSS) is limited to 1023 bytes, which prevents
>    support of Maximum Transmission Unit (MTU) greater than 1063 bytes.
> 
> Therefore NETIF_F_HW_CSUM and NETIF_F_ALL_TSO features are mutually
> exclusive. NETIF_F_HW_CSUM hardware feature support is indicated but is not
> enabled by default. Instead, IP checksums and NETIF_F_ALL_TSO are the
> defaults. Enforcement of mutual exclusivity of NETIF_F_HW_CSUM and
> NETIF_F_ALL_TSO is done in ice_fix_features_tso_gcs(). Mutual exclusivity
> of IP checksums and NETIF_F_HW_CSUM is handled by netdev_fix_features().
> 
> When NETIF_F_HW_CSUM is requested the provided skb->csum_start and
> skb->csum_offset are passed to hardware in the Tx context descriptor
> generic checksum (GCS) parameters. Hardware calculates the 1's complement
> from skb->csum_start to the end of the packet, and inserts the result in
> the packet at skb->csum_offset.
> 
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Co-developed-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

The only tiny nitpick below. The window opened today, so Tony may ask
you to resubmit the patch so that he could take it.

[...]

> @@ -6283,6 +6321,8 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
>   *	These are mutually exclusive as there is currently no way to
>   *	enable/disable VLAN filtering based on VLAN ethertype when using VLAN
>   *	prune rules.
> + *
> + * Return: updated features list

This change is not related to the series. But I don't have any
objections against it (not sure about the maintainers), so I think you
could leave it here. Just add a period to the end of the sentence.

>   */
>  static netdev_features_t
>  ice_fix_features(struct net_device *netdev, netdev_features_t features)
> @@ -6338,6 +6378,9 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>  		features &= ~NETIF_VLAN_STRIPPING_FEATURES;
>  	}
>  
> +	if (ice_is_feature_supported(np->vsi->back, ICE_F_GCS))
> +		features = ice_fix_features_gcs(netdev, features);
> +
>  	return features;
>  }

Thanks,
Olek
