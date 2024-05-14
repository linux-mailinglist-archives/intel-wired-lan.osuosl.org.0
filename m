Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C458C4B0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 04:01:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 023904086D;
	Tue, 14 May 2024 02:01:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K5L2GrLJ6s5k; Tue, 14 May 2024 02:01:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05FA14086A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715652103;
	bh=mVAUaaWtPcpxYRfY7nLLEgFFB1rhYGuGhKeBSk+Q+/A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aMA0pymh8UX6vK7ZGJjcaIGG/f5/6D3/nY71bfgSEnpYa42mfZpaYUql5ichYZXEx
	 cn3MakfDw+n+Kh3jPYW9X12+VXerNJx+1/8AfkC9nchDEuGr7TNLXN7j9LYU/6Z83V
	 Db0EVvI9FyCXLSRfXxDNUqhNW0ifNIeV7t6wVjrh+KcRA/2mCrkCNw/l8mfOhIkKL2
	 /Tjy7UzohvNMM5cHdhdRJzWrNFXB3Ti2kBnXvXSc/DpMPKdU5vMb29PumcE/Jz9lCP
	 4c8YWjDRk2toHfPySb29clybYKtrLoTfl8ppFqczJAmuCct7EtsSkMz1l21Gmm6n1S
	 M6KMcxbo9f7Dg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05FA14086A;
	Tue, 14 May 2024 02:01:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 191351BF343
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 02:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10F2B4042D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 02:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cBSnGFhUENBI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 02:01:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0CB3E402D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CB3E402D4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CB3E402D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 02:01:36 +0000 (UTC)
X-CSE-ConnectionGUID: RqASx3O1T4+DdAwSSFZlkg==
X-CSE-MsgGUID: BuBk/AExQSuB1l/O2qmLTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11775101"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11775101"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 19:01:36 -0700
X-CSE-ConnectionGUID: IjfqtJ/zSdyW0NMGAGSjWg==
X-CSE-MsgGUID: neduB8gQQHKmBDf1m+Of6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="34969922"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 19:01:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 19:01:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 19:01:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 19:01:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RbFJ2DkkakPK207wUflPBDiDmUD71yvTTLxa9qGAA2SFGQY30Pk+vpNwZJGXeNLW9GQaz6DUg/irnjekfulUfNR4k+IuH7xY/3Q1LbPpyB5YYffeBCM3veggsq45PT6pVyCS+JJAsMR+rCefbpuwANUU3GRLH/8zVH1hcY4HczLlAhzuM88I+QL6oNN2BoaeC061f5taHO9wU24EI7b2KLAA9QY6q3A3xh3Xjx3iK1xg/RbvYNmNh6bb0YBNC0d3PczmKy1q4Zl2JsRK+m7iz/K5eNn0boPL7vwGPU4vqh4qt4sEVUoM6BgOHdMJgvt/l8BPCpzYOan7F7T45bnXnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mVAUaaWtPcpxYRfY7nLLEgFFB1rhYGuGhKeBSk+Q+/A=;
 b=AWsIONmpO5Y8uYhztCRpHId3PBfabq2TjDZHkYycgLOZAX9z40eBrpqMUZX7lc4XkxG8obIpRCkHOPgiv2o339iCg8RoY6C8B8gZ+7W1vi5mwWyokghiglt2YCAFbVtgXyMSiu5NiEElA2C1Zt2unWJpN49pXLdzQmkiQ9vrpW/Xpv6Djp0E3o2kFGb4luYQGRXDJrOva2WGj3Rz2q5cFrZ2VKtgTyaNIOACJi/o9OfmoVbAmDebuoDKzLA8Z+JVo+IgDy+ZNj5+B4w5Gb14B3R8qj+oKKDmCBv/r4ZK0UIN0+rFlEn666uF4dHdqrqalIsVOKbB5pJmmkj6zaTzsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 02:01:33 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%7]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 02:01:33 +0000
Message-ID: <033c24ce-b0e4-4653-ab8a-2cefbbec0893@intel.com>
Date: Mon, 13 May 2024 19:01:30 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
 <20240510152620.2227312-8-aleksander.lobakin@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20240510152620.2227312-8-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::10) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|PH0PR11MB7562:EE_
X-MS-Office365-Filtering-Correlation-Id: 23face3c-283b-40d3-6588-08dc73b9c75a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFpOZEZVVUhnU1JsN3lZWDVqUlFlbmczY2h2a3FYYWVseVZVM1NNdmlyaTJW?=
 =?utf-8?B?d3UyZDlqZVFKdjhpU0hBMnA4aXdnOEVvQTFDdjFEcndHYys5dVJqek9ucG04?=
 =?utf-8?B?M3Q4WTB5by9LQ2NKTnlMVWxINE5LcHpER0tBSXRoQ29kNHFZTU5rNjdFdnp3?=
 =?utf-8?B?bHpnRmxGZTZSYlROWEIwMUpYbElSY1d3UFAxVFd5c2VBWEdsRVRvMjN5b0d2?=
 =?utf-8?B?dW9zMWJpV3FjeHRwZkE4a2ladnNHMDRIOUpjUmpwWDJ6R0FnTm9saldzTFY3?=
 =?utf-8?B?VWpJcjY4blgzby92VGt0cGpyRlErYWNxNDQxV0FuMHdHL2E5KzFjcDhsRmxt?=
 =?utf-8?B?VFBTSXdXNWxKSHppdUQ1SnB3UWJvWTQxMmNodDM5SmJ3WVc0NHBHVUxkbFg4?=
 =?utf-8?B?bkUvRmFhcXRJTkRGbG0ybEx5c1dwMXA5SVJXczB1a2doaFcxQlMyTnJzelRx?=
 =?utf-8?B?MXcwS0RlSzRoY3Z1b252VFVxa3J3bCtNWXlad1hrNWJBMFhPaG13M3QzQW40?=
 =?utf-8?B?Q3UwUGdzb2ttVTZBT01kQzEwZmtVYlJ3dHVadGZKR3dTU2E4MkszOXI2UU1p?=
 =?utf-8?B?WlFISjVMQ1V5aVhCYzJEd3U3U012UE5tc2VvWnRIMkF1TzNSakZ4VjVxR0VD?=
 =?utf-8?B?L3l1TXNLUlZWQ0dnaVViL0I1SUYvbTJrMm1wMnk3RXFacUhIWmN6K2Q5QUV5?=
 =?utf-8?B?ZmNUOSttbnZaZGdSNkc5dUI4Z25Fa1hYWEwxZlJwS0s3c1llUVJmb0RHOFph?=
 =?utf-8?B?UU5pVlZGcW4zVENTMzNQUFo3SjA4ZTdYeUF2STVDRmlwUy9CNHVINDduVnNz?=
 =?utf-8?B?bGJSbklOOGZ2U0ZTNnhZMS9LODNzZmFMK1pEenNWTXdlRC9PdFo0QXh6d21H?=
 =?utf-8?B?TFNQSnNsNzFEc3liY0phUWZvT3AvRzZHMjZQTnBPKy9SMjVzTDdhM2RIN0k0?=
 =?utf-8?B?WVdBMXFrbnU0NngraFFwNG5YL3Q4Q3NDczFhL2c3RkZXYjhUREVKYXpianZu?=
 =?utf-8?B?a00xcytUK3hJek9QaHU5MEhxbytzZGc2MUdCL3FlMFBOWlJzVXdUQm9mUlUz?=
 =?utf-8?B?dDIrNlI4NU82emVkaUhhcDVvazBiM0ZVR2tBYyt6d3AwcnBzOUhPbkJabzlO?=
 =?utf-8?B?RjA2VHZjdU5BeU9aMXBxSWgzU1BRWGVsdXAyMUZWS05TRnJ2K0M0SGVYZzI5?=
 =?utf-8?B?SmFFMUdseFFBT3VuWVd4NFEwMVgxY0Fna1hsQzRuYW9vR0NsbWd3KzBNMDk2?=
 =?utf-8?B?RWEvUHBKR3pCMEF3QUUvUGkvTDh6V003Ny9TT29wUzhiQ203S1ZrN05CbEdm?=
 =?utf-8?B?L0pjYkdZMksxc1U4TVB5VVVCV1RMcWJjdWR6RmZseVFjQWcxaDd5T0ZuQ2pz?=
 =?utf-8?B?dVRzd3BXRGJReFBLLzRKZWFkQkxTNnEvRDJxb1pvWnJJSVNHUnNyOG9ONlFn?=
 =?utf-8?B?RHVPY0JtY3E4SWVUVnh3SEkzeEgzSlcxWW9uVDd4M2pSKzdGMGpneDhZZVJa?=
 =?utf-8?B?c3VFaFdrb3pKUkJNVjVNZFBJTUJUUjBLNWM5VXllVlZMdVQ3b3RPZVQ4SU85?=
 =?utf-8?B?cXRNMjJodmEzUUtuQnVxRTJMZnN1M2l2VzE5TXZMbmFKSExHU1R0MzdSNCth?=
 =?utf-8?B?RkN3R1RxWGhBM29aQ1l2bjc5YnRSNnIzNnZGN2NuMnBjWGVZQi9pbVIwZTk4?=
 =?utf-8?B?b05hQU1KUnhoYk1Vc0J2TGkxWWhKV0JDSGc2VlE4VHBYK01zRlpFZTl3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXhQVmI0QXc4d2NZcHJsOGRHQ3lubmdhYjdsaGo4NnpMVys5bEoyQytnUWFV?=
 =?utf-8?B?ajBIVHcxMnZVZUtNbXhQalRuTE9DSWF6Z3FuTU1WZkR0YzdaM1JvQTNpSG9x?=
 =?utf-8?B?cnBDb280cVdnQjFDTmYvRnZIVFBSdkN3RUExQTJtS1ZabmZuT3g3eS9Mekhm?=
 =?utf-8?B?N1pLVGY0aHZPbXBWYmR0eFNVVnVoUFRWWGc3d0xqQ05SVHN2VVV0RCtodWk4?=
 =?utf-8?B?WkhWR1JxSnZjbGpmbFRJQ1lTUlNjSXNhZG40cTlyUzJmell1OFdRVU9KNVl6?=
 =?utf-8?B?T3lGRStGOWNRMVNwWWV4UGxQa3JuUlhjU3JPY3ZvOHRlWlBsRG8rZS9pRzZP?=
 =?utf-8?B?dnM3YmR4TFh4TzViSnBwQTJvQ3p3aWNQa3F3VG5nbU1VVW9UcVF6SlpkYnRx?=
 =?utf-8?B?bjFwYVVxVTIvcGlGVVU0ZCtjem1zT3lsRnF5eHhZSCs5THJkVXc5OFBrb3dM?=
 =?utf-8?B?T1libFpkY3ZhdTVEYWhJSkNZNm1KQmtIMWVncEVOVFVzOUg0UE9XUzFvcHFZ?=
 =?utf-8?B?WU5xQk1wZ3FMaG9PQ1FXc000b2RVWmxmT1VLcVRpU3ZYdFNrUTc4NGlxVzZW?=
 =?utf-8?B?MFl1c3lJSEswQlZxWFNRNUFoclZHam0vTGNDTjRJeDNxZm5YcklTRytJbTBP?=
 =?utf-8?B?WlRwYzdFa0gvUkxkdGdqbndqZ1BSQVh1NHJpUjRPSkpiRUYvNzBrdmVXazNi?=
 =?utf-8?B?ZHlqNktZRVh5N2xkb0p0V2UwNTQrMnExNUpGYzdZbzZHOURJUkxoMFU0QnFG?=
 =?utf-8?B?K0szMzBxTG9TcTdGQUlEUGMwbUUvVVJJTC9hcnJOcFhPdVNnRnhqMDFyNXVR?=
 =?utf-8?B?M1V0YnI1N0JidVJxUStsNHF6a3EvNTMrdUZGSHdiVGpNN0FwSytod2dOVWtO?=
 =?utf-8?B?R3ZleFcyaTJpT21nZmZFdHI1emhmRGttZU9BUjRZVGJVbHY0UHV4cDhpbS9y?=
 =?utf-8?B?WVYxQ2JlOUsxSEllWlBSR254U21rUUFwcVh1cnVLNU5zUThpOXkvY0JWc3NB?=
 =?utf-8?B?cEsyN01DcUQ0UGh5dW5jNElFRkNVZy9MTDFiMEJsc1M2d0FsUGg2b3BndjBB?=
 =?utf-8?B?WFd5Z1VxNkxXSG9JTGJKTVRPS2RUUlZpVXNLMzVEdk1LWFZyc3Z4SUo0eEM0?=
 =?utf-8?B?ZE5HSWQvelNnYUl5OHozb1pxZEtjSm5pTjRrV0o4V1FEMUJoNGZuVmdEaW0r?=
 =?utf-8?B?TlBPYzlqQkFHK1lYTnBDV1lQeHRnTVR5cmdmNUFyeWNLcWFPSVppM2lSU3F5?=
 =?utf-8?B?bnlvcXY3WkFoQWRtZVBMcHZGZElEM09QVFlVTW1YbTUwU1IwZFJyMXJrSWtG?=
 =?utf-8?B?MmJnRDFOREJaZ1NPSEdSY3VENDFZTUI4bU80cFZSVk5yQjhScENMQkV0NUd3?=
 =?utf-8?B?L2VaZEZsZ1NkSGxreTNKeWFETC83c2VvOGtZYkliQ28wRnJvdFpGRXJOZ0hl?=
 =?utf-8?B?MkROZWFwOUdTYmQvMGhCM25KZHNDa3VSdERUa1FNRTd2UlRZRWJlcXZqcVN0?=
 =?utf-8?B?Z1FQRU1WOEYzY2s0S21ka0lSbjVEMXBDZ0ZoejF6Y3c1Z1Q3cURJMHYxNml6?=
 =?utf-8?B?Ti8vYy9jUEJtQ1VlNVdmQ2hyUkNabjZHdHVkRG1hbTJ6cjBpUFNYQTB0V2lr?=
 =?utf-8?B?Q2diTjhoTlZsa3ovdUs1L1hENmNGT256ck8xVjZoMVhhaC9zSlhidmJGSitS?=
 =?utf-8?B?ZFFoZWtBOGZKUTdoc1JaVDR2TG01ajJSQm1KMFRCVjNqQ3YxTlhRdG9aUThj?=
 =?utf-8?B?TUZDSE1kbUs3VWY1UTBycHMvN1lzdXhrbUgydWIwSXNMMDBCQi9HZ3NnMElE?=
 =?utf-8?B?Q1RxdGk3cjZxYXNEa2JYZzdwVTRkT3dOUUprbU0zRWhlVjBvS0pDVkZzWWFS?=
 =?utf-8?B?cWRBNk5ORFBlMS9Ma2JlZlNUYVMyYmpxa3VCMHc3MzhmS3JYRkw5WEJ3L0E3?=
 =?utf-8?B?M0lzdGIxL3B6VSsyZkl0MFpJVGgrcWJoN0xXZUVySkNUT1Q5QkN3QnJpek9X?=
 =?utf-8?B?QTJKQUZUOHgyeWcvS1J4bEtnaDZrbGk4amRSdXpScVh1WGlPNnZGTHBiNDhS?=
 =?utf-8?B?dXF6TkxZS3pZYnc4RFpzcVFmYzJWZU02a01CNktEMDFqNmYzOEt3eUtobzZm?=
 =?utf-8?B?VDdieDROWmNwSDVTVGt6TEpiR08waWpYenhWQUdrRnVaNDViMEdyTktnRlV6?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23face3c-283b-40d3-6588-08dc73b9c75a
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2024 02:01:33.1502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5t8jT8pmIIuMMDbK5oWTV/NWVAf6rbx/RD/tcfGzA6k3VbivEVSfRIOXDQMpGLIZZOi9fu+pdRmMwzE35Wge7Ki22iQY34NpxIPWTguOyqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715652097; x=1747188097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m2H1lv4pb3oKgcM/Ls/p8NN4sfJGHfynXNZhp3glPUE=;
 b=Bel4zy0sVfJxvtJvmFSpRwxcTBjs47+m2LWlfnr5PAaXi+8nzNwSC2Dj
 kZP5Rhi7LlcQsQ/rahY8tjDLDKgpq3ZjcsP3tGV7w98toKR9Sqmbw8242
 3myrLV1NtQSLyJtkZTCzUqSUHtPw70ihOFafvcYzZLD0EsEHlbye+VGHq
 Vx7GzHiHPNh+f0umX0+kxgpDbDnMJ6blMztyjjtM802+m5NkEZ9Pm/TOw
 3RoMuaGZ/BeExQo/f5ATXIyar1r5S4pxLfC5tqr+zE3kMuQnP0kgG1wE6
 m+6sU1R8mhuNjsQuz9l4asrQ6cNyFdwEtX/mPxEKNMTfbeFs36qI3Vy80
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bel4zy0s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 07/12] idpf: compile
 singleq code only under default-n CONFIG_IDPF_SINGLEQ
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/10/2024 8:26 AM, Alexander Lobakin wrote:
> Currently, there's no HW supporting idpf in the singleq model. Still,
> this dead code is supported by the driver and often times add hotpath
The driver supports the HW in single queue mode (not the other way 
around), so I would like to point out that all current HW on which idpf 
can load supports this model.

> branches and redundant cacheline accesses.
> While it can't currently be removed, add CONFIG_IDPF_SINGLEQ and build
> the singleq code only when it's enabled manually. This corresponds to
> -10 Kb of object code size and a good bunch of hotpath checks.
> idpf_is_queue_model_split() works as a gate and compiles out to `true`
> when the config option is disabled.
Compiling singleq out does introduce an issue for the users that would 
end up without a netdev if the driver is loaded on a setup where the 
Control Plane is configured for singlq mode. In that scenario the user 
will have to recompile the driver/kernel in order to load the driver 
successfully.

> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>   drivers/net/ethernet/intel/Kconfig            | 13 +---------
>   drivers/net/ethernet/intel/idpf/Kconfig       | 26 +++++++++++++++++++
>   drivers/net/ethernet/intel/idpf/Makefile      |  3 ++-
>   drivers/net/ethernet/intel/idpf/idpf.h        |  3 ++-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  2 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 15 ++++++++---
>   6 files changed, 43 insertions(+), 19 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/idpf/Kconfig
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index e0287fbd501d..0375c7448a57 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -384,17 +384,6 @@ config IGC_LEDS
>   	  Optional support for controlling the NIC LED's with the netdev
>   	  LED trigger.
>   
> -config IDPF
> -	tristate "Intel(R) Infrastructure Data Path Function Support"
> -	depends on PCI_MSI
> -	select DIMLIB
> -	select PAGE_POOL
> -	select PAGE_POOL_STATS
> -	help
> -	  This driver supports Intel(R) Infrastructure Data Path Function
> -	  devices.
> -
> -	  To compile this driver as a module, choose M here. The module
> -	  will be called idpf.
> +source "drivers/net/ethernet/intel/idpf/Kconfig"
>   
>   endif # NET_VENDOR_INTEL
> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
> new file mode 100644
> index 000000000000..bee83a40f218
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> @@ -0,0 +1,26 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +# Copyright (C) 2024 Intel Corporation
> +
> +config IDPF
> +	tristate "Intel(R) Infrastructure Data Path Function Support"
> +	depends on PCI_MSI
> +	select DIMLIB
> +	select PAGE_POOL
> +	select PAGE_POOL_STATS
> +	help
> +	  This driver supports Intel(R) Infrastructure Data Path Function
> +	  devices.
> +
> +	  To compile this driver as a module, choose M here. The module
> +	  will be called idpf.
> +
> +if IDPF
> +
> +config IDPF_SINGLEQ
> +	bool "idpf singleq support"
> +	help
> +	  This option enables support for legacy single Rx/Tx queues w/no
> +	  completion and fill queues. Only enable if you have such hardware
This description is not accurate - all HW supports single queue. The 
configuration is done by the Control Plane. Furthermore, without access 
to the Control Plane config, there is no way for the user to know what 
mode is enabled.

Thanks,
Emil

> +	  as it increases the driver size and adds runtme checks on hotpath.
> +
> +endif # IDPF
> diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
> index 6844ead2f3ac..2ce01a0b5898 100644
> --- a/drivers/net/ethernet/intel/idpf/Makefile
> +++ b/drivers/net/ethernet/intel/idpf/Makefile
> @@ -12,7 +12,8 @@ idpf-y := \
>   	idpf_ethtool.o		\
>   	idpf_lib.o		\
>   	idpf_main.o		\
> -	idpf_singleq_txrx.o	\
>   	idpf_txrx.o		\
>   	idpf_virtchnl.o 	\
>   	idpf_vf_dev.o
> +
> +idpf-$(CONFIG_IDPF_SINGLEQ)	+= idpf_singleq_txrx.o
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index f9e43d171f17..5d9529f5b41b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -599,7 +599,8 @@ struct idpf_adapter {
>    */
>   static inline int idpf_is_queue_model_split(u16 q_model)
>   {
> -	return q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT;
> +	return !IS_ENABLED(CONFIG_IDPF_SINGLEQ) ||
> +	       q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT;
>   }
>   
>   #define idpf_is_cap_ena(adapter, field, flag) \
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 4aa5ee781bd7..2bc1a5a0b50f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -1306,7 +1306,7 @@ static void idpf_vport_calc_numq_per_grp(struct idpf_vport *vport,
>   static void idpf_rxq_set_descids(const struct idpf_vport *vport,
>   				 struct idpf_rx_queue *q)
>   {
> -	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
> +	if (idpf_is_queue_model_split(vport->rxq_model)) {
>   		q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
>   	} else {
>   		if (vport->base_rxd)
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 44602b87cd41..d1705fcb701a 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -1256,12 +1256,12 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
>   	vport_msg->vport_type = cpu_to_le16(VIRTCHNL2_VPORT_TYPE_DEFAULT);
>   	vport_msg->vport_index = cpu_to_le16(idx);
>   
> -	if (adapter->req_tx_splitq)
> +	if (adapter->req_tx_splitq || !IS_ENABLED(CONFIG_IDPF_SINGLEQ))
>   		vport_msg->txq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
>   	else
>   		vport_msg->txq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
>   
> -	if (adapter->req_rx_splitq)
> +	if (adapter->req_rx_splitq || !IS_ENABLED(CONFIG_IDPF_SINGLEQ))
>   		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
>   	else
>   		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
> @@ -1323,10 +1323,17 @@ int idpf_check_supported_desc_ids(struct idpf_vport *vport)
>   
>   	vport_msg = adapter->vport_params_recvd[vport->idx];
>   
> +	if (!IS_ENABLED(CONFIG_IDPF_SINGLEQ) &&
> +	    (vport_msg->rxq_model == VIRTCHNL2_QUEUE_MODEL_SINGLE ||
> +	     vport_msg->txq_model == VIRTCHNL2_QUEUE_MODEL_SINGLE)) {
> +		dev_err(&adapter->pdev->dev, "singleq mode requested, but not compiled-in\n");
> +		return -EOPNOTSUPP;
> +	}
> +
>   	rx_desc_ids = le64_to_cpu(vport_msg->rx_desc_ids);
>   	tx_desc_ids = le64_to_cpu(vport_msg->tx_desc_ids);
>   
> -	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
> +	if (idpf_is_queue_model_split(vport->rxq_model)) {
>   		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M)) {
>   			dev_info(&adapter->pdev->dev, "Minimum RX descriptor support not provided, using the default\n");
>   			vport_msg->rx_desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
> @@ -1336,7 +1343,7 @@ int idpf_check_supported_desc_ids(struct idpf_vport *vport)
>   			vport->base_rxd = true;
>   	}
>   
> -	if (vport->txq_model != VIRTCHNL2_QUEUE_MODEL_SPLIT)
> +	if (!idpf_is_queue_model_split(vport->txq_model))
>   		return 0;
>   
>   	if ((tx_desc_ids & MIN_SUPPORT_TXDID) != MIN_SUPPORT_TXDID) {
