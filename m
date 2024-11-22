Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF77B9D649D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Nov 2024 20:33:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9967461497;
	Fri, 22 Nov 2024 19:33:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sdiPNLnRE8G4; Fri, 22 Nov 2024 19:33:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1996A61491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732304002;
	bh=/c23QV7gsMywOaRgbYmX+jl4momL6cuymbhIuh1Mpj8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v4baqG4iWkvN0jnphaWJgLwaAnzwCYe1Lmp3JX9C4rTGY23hdLCW/nZY7FNnsfrOS
	 Gl6xremU25HUcp+ZQYs+YlmpN2RN6eYWICT5Go+dvEGw0E7pFzar5OF8KDeUaus7UY
	 FEl+/QRyAhnAS/dJr49wvouCXVrbfzlXLhP5mfJmKw01nWn0QGS848+O5AgKrxUbon
	 g/pHzeTy1DWCmaIhNl8/S672ManJ9rcQfk5uex8Xz4p3nUVyjw1RoK/r1p6WAg/uMH
	 MYIvNumnky9afm321/ud0jr3C36q/HN7XxGxixGUkQSpDkEU/VRHskbv0dDA1K0iZv
	 dgV3yOqqVuV4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1996A61491;
	Fri, 22 Nov 2024 19:33:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CCCB7B69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 19:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC46F61491
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 19:33:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 957rVhZMdsuj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Nov 2024 19:33:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 571136147D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 571136147D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 571136147D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 19:33:18 +0000 (UTC)
X-CSE-ConnectionGUID: 8fT/I0TvRyShMTeIfKz43w==
X-CSE-MsgGUID: a/O7YJaRQ3q2+xEgc5NU4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11264"; a="32408791"
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="32408791"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 11:33:17 -0800
X-CSE-ConnectionGUID: jFh5OVmkREuyd3QZ7RyHng==
X-CSE-MsgGUID: Lu9TryW6R06CBFYhmTsx0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="128168572"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2024 11:33:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 22 Nov 2024 11:33:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 22 Nov 2024 11:33:16 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 22 Nov 2024 11:33:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k8qnfYaN0h8JWN09pSL/cVsF05b/H4iRBKcLx/7jRrYOekcaGVE5phL7gR8uEGEqnyBwEH0dMjvFty/JlsPeYdx5bCPqJpzO5j6VrG1nfcpvKOxka1TjOnFsL1z4B3GHLCMMgci/cRASaCYIhXzthgYw+c2JDanZFkhkXbVJkX9yF7G8iV0XbolE4rAqAiSWWyKsk7oqJd39Tsu7WyYXRhaU3obupuVxO/pDI8rSP4/wdcTjK4wiGMS+cVZ4CNt2pdiqxCNABPRSp06bCUQSSCWGsz10Uq11snlaRBRP4PkCGMckvI7nygnKrurWR/rOr3Z34Yip7QnY9WfdGHCrOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/c23QV7gsMywOaRgbYmX+jl4momL6cuymbhIuh1Mpj8=;
 b=mIY62r6GrIu1q+SRmew2cqppNHhcz2S/g48ToxKkIqpTl9eo7e4viy9SHOpzc3M4bi/vBIyAOJy06KWg4+1qpjMnXA6WBB4wCRtco1mmkXE1alBtgaBtwWosa1x396pviRC3vlthxefOZ+TwNdz1O4C/NWlWY1d4rHncZAv4y4oBxRjY/cfpPpOfVW7KBBixoQsOj/CJ2TngsVaEjvDCrx1qsHcmGE7oPuOcMQjDRZLckfeyN4zaz3S4CIk3Tv7ySJsN4ROTN8pPIoyNfVMrtWzxZfrvC7JDiUexM9VlnWfgoSIh+RkfqT9bHLODuDGTg0uuipt7hg6YGJ9R1pzmXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB6393.namprd11.prod.outlook.com (2603:10b6:208:3ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Fri, 22 Nov
 2024 19:33:12 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%6]) with mapi id 15.20.8158.024; Fri, 22 Nov 2024
 19:33:11 +0000
Message-ID: <dd4cdc06-23a4-4e3a-abcf-f7fd12f33622@intel.com>
Date: Fri, 22 Nov 2024 11:33:07 -0800
User-Agent: Mozilla Thunderbird
To: Konrad Knitter <konrad.knitter@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <przemyslaw.kitszel@intel.co>, <netdev@vger.kernel.org>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <dumazet@google.com>,
 <davem@davemloft.net>, <andrew+netdev@lunn.ch>, Sharon Haroni
 <sharon.haroni@intel.com>, Nicholas Nunley <nicholas.d.nunley@intel.com>,
 Brett Creeley <brett.creeley@amd.com>
References: <20241118104810.477794-1-konrad.knitter@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241118104810.477794-1-konrad.knitter@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0297.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::32) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB6393:EE_
X-MS-Office365-Filtering-Correlation-Id: 702e6784-3569-4767-030a-08dd0b2c802a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWNnUGI1QmpBR2NhdkNtUjZCQVJlNkhENHZaS3pYYzhiQnk3RjRsTllpT2lv?=
 =?utf-8?B?M0t3VzQ4VEQ3VzhwVGZnK2NwWlBvNUNOZGQwdTNjS2EzdFQweGdMSFlFSGRt?=
 =?utf-8?B?L0hhK2Z3d1F4NTJ5c0g5bmRTM0I1OU54bHl3QUtwbWlTOHBjYjVKc3UxRTg5?=
 =?utf-8?B?RFlKbmI2ZGh0cDBtenJZK3JEUUhuSXdZOWRhazlIUTREK3lYNzEvM29DTlRF?=
 =?utf-8?B?QlF1c3hlbjM2RUVxSGFDazlVZmZkYkRTeDhrSG1IenhPUHhpSmdVUGJObmtk?=
 =?utf-8?B?Z3ZFcHozRS90d2Fwa3RwM1J3d1lyb1ZPbXVWdW1kWjk0dTlsUnRtdTdRSCty?=
 =?utf-8?B?MDVZR21sQ2lsYnhJbGcrU0FRQWtFNDAvazhmNmFCNS9GZW1tYUJ0UDA5d3FT?=
 =?utf-8?B?L1VJMFYvTHFJaFlpSTd4RFVwUW5nNHpNSlJYY2NRV1pYcklOaFJlQ0hoWlRl?=
 =?utf-8?B?NTU5cE1sbFREL2tOblY3M2VaYk1QelhtdGpxa1ROdTFPRC91ZXNCVmlOelhv?=
 =?utf-8?B?Z1RMWHlyY1pvbmE3Z3J6b1lBMlR0akVVbks3S2pUbWRKdEhwTVJlaU5EaFk3?=
 =?utf-8?B?QXA2cHBoRGJXYUpBRitRTVoxQnhuV1NSUzNxWEd1VlVWNW1XcldmWS9LdlNW?=
 =?utf-8?B?M1FURjdaZk1ZYjlzSlpsWWdWYTIxNVlhNWpRb1RRTnh3Y3NsOWlWdWQ2OG8z?=
 =?utf-8?B?WE9RbmFDSEgxRW55Z2t3ZkplUUpGRlloWmJBcjJpTEtpczVUT2UrLytOOXV6?=
 =?utf-8?B?OHhZZWpNWVJnRHBRY1V3SGVsdGlCYWJ4VHNFSnIvN2tZeEYxbWJqYW9valJW?=
 =?utf-8?B?T3EvbzNQT3JNMWMxbFlML2xwR2syZnhzZFJ6T21TSUU5Q1VjOWhFN0Z3NlpX?=
 =?utf-8?B?Yks4RTFmTHlTN1Q3Zk5MUHlxWEMrSVNnU1hOczB1TGZmTk92ZXBJSzlmYXE1?=
 =?utf-8?B?aVpvZVJkTnJnT080MzJLYm1NQW5DYld2cEZRMUx2TFpGcTlXR0JVWjJLVjV3?=
 =?utf-8?B?REpnbzdTSnRRWG1kTzNiQmthdUNwTnRhRGZKd3pod3dwbVlSeHhudy9Ub29s?=
 =?utf-8?B?T2FWOFdZRW1LcVNNSWhlcWRaUFgxWmJCTW9VdldCRGQyb1JpZDY5UHJuR2hp?=
 =?utf-8?B?Uk1qWFJFeXdOT1lkSWRRRnRGQlE4S3FuaVJiWTlhTjBXUUxJNyt0clQzbFNW?=
 =?utf-8?B?N3FMUzBtdGpXQXdnbjdIeHd3N1g5bm0wL1dETGlPNW53bjc3Z3E0V243ejk1?=
 =?utf-8?B?TExZOHJpVlhtaytYQzkvdGU3clJ4NmMrUzNKNnNIdjlZQ1UxSE1IZzlmQ3kz?=
 =?utf-8?B?eHNPU3hURks2TzRjUTdtYjVDaHNvR1ptVXJFVHdZZ0l0Q0xFUFVtVVV1Y1Bx?=
 =?utf-8?B?REVkVms5UzhyTnFjT0pmTHpvNDU0cldPTGNYdFlWdjBta0w1ZFZyK3RISlVp?=
 =?utf-8?B?QmdSWS95aDFMTm54WkF4eVNGeUUvdy91SXRDR2RMdW9mR2RGTlVERndQQVNK?=
 =?utf-8?B?Zy9Bb1IvOWpmdk80Y3AydW1qQmRFTzRwYzVhbXRCSG5VdnRMbHJJT2NDYXZU?=
 =?utf-8?B?UWZHRjA2ZUxmYlhUQk52VFRpcis4NzJ4T0tZUXd6OFFUc2hUUGJtTUpZeTF0?=
 =?utf-8?B?b1hRN3UrL1d3anFuL0RrMTNkZ1p1ejNhM1lrVzhoVDRHVzNEbVorbmh2MnlP?=
 =?utf-8?B?RktmZVV2Y2ZqY3ptQWlGL1p2L3N1aUZTQkhiZlBQVzdISkhJelVTUHgvK2hx?=
 =?utf-8?Q?K0jjNiaqhl4BgOzT492fW2HEPk0nBKvIS2RUxV+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTU1d2dLbGNKdXl6djFOSVhySEg4a1crR1dqUVJFaTJZTm90cUJjYnV1ZXNQ?=
 =?utf-8?B?TVhTSnlyRzREZ01qOVBoWVJCNXlQQVgvSDAwc2lDeGlqenJaUVdadm5Nek84?=
 =?utf-8?B?QzBCdkI3MU5IOWVuN255RG5nYjl4SlVlOHZJTUoxbTAxak0vK05nNUVYT3JV?=
 =?utf-8?B?K3lwa2pPbWg2TEpCa2NSeGg5QTF3b0Y2dmhZMjRHTjVHQ3ZBbnpIR05nMHJs?=
 =?utf-8?B?WjRoa0RPYVJyTFVXNmM2V0lhRVl5UExrZWdyUzNDalc4VVJrQmE4V0UwVWpt?=
 =?utf-8?B?Z0pRZ3g0TjROU2MzRDl5bXpOcDcxdzdXNnZKOFdsMjhlRHJ4R1RXVnpaZTFa?=
 =?utf-8?B?OXZ0TVdPSVJldGEva1Y3UW10bDBPZjdMZGNsTm1RMTVLcE1IVGt6UWJ6VzNk?=
 =?utf-8?B?V1J5L2FSTmp3WVZkUXdDbGYvNC9rZlJJVk9TVS9NN1JNWHdCYTlJc0cxZmVX?=
 =?utf-8?B?TVJ5SytoMGUvbzBLQndzYk9GdDZ5TUxBWXlLQ09mZjFoODVCNWVaVDBNZnpl?=
 =?utf-8?B?N0crWm5WTno2SlprU1F6YzZtK0VqaFBXQk9aL1g2eERxSnFUOGkzMURXYktI?=
 =?utf-8?B?cE9sL1RqNlUwZ0cxdGtHeG1oVlE2MUN4N0M2OSt6RTNGYTFvRldWSjZ0TDc2?=
 =?utf-8?B?cGEwMzVFa21EZk55NWplRmsvSjVEVTlzZXNDMHI1SUtrTzhqM0NrYkJSaXlY?=
 =?utf-8?B?RDdDNUpBendIRUs3QlpnVG0zc2dXYUhDSmhMbjByZVVtYkpOamJ1TTZlWE1q?=
 =?utf-8?B?aG8wS1ZpUE5HWnBhYzFYa256VUtYcjdTR28rNSt4NXJxNW5qZDVSWVlSMUNQ?=
 =?utf-8?B?b0toV2hHWEhUVVdnQWViL3RSbnFmR3ZvNUtLbENlQ1JhYkRDYW0xSW9zeURp?=
 =?utf-8?B?V3dYUEpUdGRmYmZ4b0VoakttVUZKTDFmVjh0SXJ4aHVqcEFtRWZmUFFrU3VQ?=
 =?utf-8?B?eGZ4cVAyWnF6Z3owYVZ3ajdzem5zQ1l6T2s0bkRHaisxNnlScnkrTVlFeXdH?=
 =?utf-8?B?cDZjTE5mSEFsYkhwam9uRHJ0VEQ3SElhQ2pySlVxOUdhUGNlRUpEYkEwRkMx?=
 =?utf-8?B?TGdxYnJubzNhY2pESE02ckFhWWF0Sk94V3NwMlZ4UVlmVllXSDVKdWxNVmtL?=
 =?utf-8?B?dkNadFZZU25ncUk0RmZOcnIvK0t0Q242NVRmMEdQQi81czluakZUVXlPNWV3?=
 =?utf-8?B?Ly9TbGFnQXZhSGVMVi9PaG13eU05eFphTVdTZHdjQzZzVHBwSXhnbmU3NjEx?=
 =?utf-8?B?OWIrMDB4N0FBRDhwTS90UUtrSm1WV0NPVWZkNWlNaWxSRmgzMVFneGc2Z200?=
 =?utf-8?B?MUFFSkY2ZHlPWXRhaUx6aklya29VejBmSnJhY1ppYmNXOFU2Q2FuTCtLeGkz?=
 =?utf-8?B?WTY1MjRDWUI1aUt0UEw5VGZkb05CK01GenFWMFFOakc4NitkdTFqTEdXbVIz?=
 =?utf-8?B?citMVkxHK212SW1EempacmdzdFpDRlIxWkRhZGVBbW9aeTFhdXQyN1Q4TFpQ?=
 =?utf-8?B?Y1pSMEg0bk82WmZaZHlLK1M5S2t3d0J3UUlJc2lMK1BESXpBY1FTcnMzQ0Zn?=
 =?utf-8?B?VzZ2VzlJeEV5ZVR3MFpMVEJaY0NhdTVKWVdjNXcxL3F0OUh0UFlLVzUyaXpr?=
 =?utf-8?B?YnYxRFp1MTgwU1doeUpRTWM1RzQzbUVNQXYwajRHYW1NblQ5SzFkTFVMYjI4?=
 =?utf-8?B?dmcycHZ2Ym1acEQ1OGtRVUhrMlJYTVJPTnU3ZHdyazlnUTM0V2w3bGdEVUZa?=
 =?utf-8?B?V1A4cDlPekhiMCtoUU1hOHcrbWlaSkhLcm16YXlXVDdoUUlhNWRBeXV4RENG?=
 =?utf-8?B?YzVKWDdSSnNaQisxT0ZrZGpkMjFxNStpV3ZFTFY4aGR2WjFzSUFyZzlNRHBP?=
 =?utf-8?B?eEtYKzlRTHdOSjRqSHpURlZ4Z0E0aVdibm0zZjRCVVBBWXRuNzFHaFBXblRV?=
 =?utf-8?B?RVp3a1FDUUZobUM2T214Ymo5citqakN4OCttcnh4cmxLS051S3I2OHU4dDQy?=
 =?utf-8?B?cGN4K2cyaXhvSnNsbVR3UFoxbU1wUW9UZzM3TG1xWkhkb2UxRkZiN0NFR2JE?=
 =?utf-8?B?WFA0emdmWktWL0FYcWhQWlQ2SzZVQjN0UzJ6M25qWDFwY1hyWDk3R2ZBU1p5?=
 =?utf-8?B?b1JBWGRsTFBXZGdqSGhzZDRSZWRKN2ZkUDZ6Nk1XdWdJd2NPNFR6WmlDM2Mz?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 702e6784-3569-4767-030a-08dd0b2c802a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2024 19:33:11.6207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: de2UrMVk/HKScBP+c3UA4UsQiXXtWWpb7D+QAvA5K8uG2Z/VKgbT/6nQwLEbTiNpd8Hljr0q97bLW2KnQVJ2WdsItFkU3RXZsGWjurEYhnA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6393
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732303998; x=1763839998;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6mERGGdGdL0YxdRHC4kmSFDOUZIO+dOJV1+0tQpqugM=;
 b=Lf048UdWiWoSMN0SqtdTRz54TZgORSWJiyODPXpbSZXc+0F3A4cB0zNp
 2m0MMC20S9FM4hH+m/wgbzgUk84mOUuu0hGET2yzFsp3pOTr/0qpjh8YT
 SzP9Qw+yEdJnl4QWTRMliWgRl6tL7YKPLgdz3IFWP6577QC3N02fP/q8+
 QKiaKthc6nWxznZuM06HvOZ8XWypr42yRLML0NrlbVD1lOuNDauwMAbWr
 6bWX2PAXU+BjLDvpUzNdRcLzjX8AEnlODdSLPs68c8j4Wfk8XnXX6sgR1
 ZgboMIf/j7ijLPw3SN6wGGaNwBS5JSpvRszA8K7mg9a8dubw9D6s3CL/w
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lf048UdW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: fw and port health
 status
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



On 11/18/2024 2:48 AM, Konrad Knitter wrote:
> Firmware generates events for global events or port specific events.
> 
> Driver shall subscribe for health status events from firmware on supported
> FW versions >= 1.7.6.
> Driver shall expose those under specific health reporter, two new
> reporters are introduced:
> - FW health reporter shall represent global events (problems with the
> image, recovery mode);
> - Port health reporter shall represent port-specific events (module
> failure).
> 
> Firmware only reports problems when those are detected, it does not store
> active fault list.
> Driver will hold only last global and last port-specific event.
> Driver will report all events via devlink health report,
> so in case of multiple events of the same source they can be reviewed
> using devlink autodump feature.
> 
> $ devlink health
> 
> pci/0000:b1:00.3:
>    reporter fw
>      state healthy error 0 recover 0 auto_dump true
>    reporter port
>      state error error 1 recover 0 last_dump_date 2024-03-17
> 	last_dump_time 09:29:29 auto_dump true
> 
> $ devlink health diagnose pci/0000:b1:00.3 reporter port
> 
>    Syndrome: 262
>    Description: Module is not present.
>    Possible Solution: Check that the module is inserted correctly.
>    Port Number: 0
> 
> Tested on Intel Corporation Ethernet Controller E810-C for SFP
> 
> Co-developed-by: Sharon Haroni <sharon.haroni@intel.com>
> Signed-off-by: Sharon Haroni <sharon.haroni@intel.com>
> Co-developed-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Co-developed-by: Brett Creeley <brett.creeley@amd.com>
> Signed-off-by: Brett Creeley <brett.creeley@amd.com>
> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
> ---
>   .../net/ethernet/intel/ice/devlink/health.c   | 290 +++++++++++++++++-
>   .../net/ethernet/intel/ice/devlink/health.h   |  12 +
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  87 ++++++
>   drivers/net/ethernet/intel/ice/ice_common.c   |  37 +++
>   drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
>   drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   5 +
>   7 files changed, 429 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
> index c7a8b8c9e1ca..4e6c6891e207 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/health.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/health.c
> @@ -1,13 +1,272 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /* Copyright (c) 2024, Intel Corporation. */
>   
> -#include "health.h"
>   #include "ice.h"
> +#include "ice_adminq_cmd.h" /* for enum ice_aqc_health_status_elem */
> +#include "health.h"

Is there a reason you're re-ordering health.h?

>   #include "ice_ethtool_common.h"
>   
>   #define ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, obj, name) \
>   	devlink_fmsg_put(fmsg, #name, (obj)->name)
>   
> +#define ICE_HEALTH_STATUS_DATA_SIZE 2
> +
> +struct ice_health_status {
> +	enum ice_aqc_health_status code;
> +	const char *description;
> +	const char *solution;
> +	const char *data_label[ICE_HEALTH_STATUS_DATA_SIZE];
> +};
> +
> +/**

Wrong style, should be '/*'

drivers/net/ethernet/intel/ice/devlink/health.c:22: warning: This 
comment starts with '/**', but isn't a kernel-doc comment. Refer 
Documentation/doc-guide/kernel-doc.rst

> + * In addition to the health status codes provided below, the firmware might
> + * generate Health Status Codes that are not pertinent to the end-user.
> + * For instance, Health Code 0x1002 is triggered when the command fails.
> + * Such codes should be disregarded by the end-user.
> + * The below lookup requires to be sorted by code.
> + */
> +
> +static const char *const ice_common_port_solutions =
> +	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.";
> +static const char *const ice_port_number_label = "Port Number";
> +static const char *const ice_update_nvm_solution = "Update to the latest NVM image.";

...

> +static void ice_describe_status_code(struct devlink_fmsg *fmsg,
> +				     struct ice_aqc_health_status_elem *hse)
> +{
> +	static const char *const aux_label[] = { "Aux Data 1", "Aux Data 2" };
> +	const struct ice_health_status *health_code;
> +	u32 internal_data[2];
> +	u16 status_code;
> +
> +	status_code = le16_to_cpu(hse->health_status_code);
> +
> +	devlink_fmsg_put(fmsg, "Syndrome", status_code);
> +	if (status_code != 0) {

if (status_code) {...

> +		internal_data[0] = le32_to_cpu(hse->internal_data1);
> +		internal_data[1] = le32_to_cpu(hse->internal_data2);
> +
> +		health_code = ice_get_health_status(status_code);
> +
> +		if (!health_code)
> +			return;

Please don't separate the error check with a newline. Other occurrences 
in this patch as well, please fix those too.

> +
> +		devlink_fmsg_string_pair_put(fmsg, "Description", health_code->description);
> +
> +		if (health_code->solution)
> +			devlink_fmsg_string_pair_put(fmsg, "Possible Solution",
> +						     health_code->solution);
> +
> +		for (int i = 0; i < ICE_HEALTH_STATUS_DATA_SIZE; i++) {
> +			if (internal_data[i] != ICE_AQC_HEALTH_STATUS_UNDEFINED_DATA)
> +				devlink_fmsg_u32_pair_put(fmsg,
> +							  health_code->data_label[i] ?
> +							  health_code->data_label[i] :
> +							  aux_label[i],
> +							  internal_data[i]);
> +		}
> +	}
> +}
> +

...

> +void ice_process_health_status_event(struct ice_pf *pf, struct ice_rq_event_info *event)
> +{
> +	const struct ice_aqc_health_status_elem *health_info;
> +	const struct ice_health_status *health_code;
> +	u16 status_code, count;
> +
> +	health_info = (struct ice_aqc_health_status_elem *)event->msg_buf;
> +	count = le16_to_cpu(event->desc.params.get_health_status.health_status_count);
> +
> +	if (count > (event->buf_len / sizeof(*health_info))) {
> +		dev_err(ice_pf_to_dev(pf), "Received a health status event with invalid element count\n");
> +		return;
> +	}
> +
> +	for (int i = 0; i < count; i++) {
> +		status_code = le16_to_cpu(health_info->health_status_code);
> +		health_code = ice_get_health_status(status_code);

Looks like the scope of these vars can be reduced to this loop.

> +
> +		if (health_code) {
> +			switch (health_info->event_source) {
> +			case ICE_AQC_HEALTH_STATUS_GLOBAL:
> +				pf->health_reporters.fw_status = *health_info;
> +				devlink_health_report(pf->health_reporters.fw,
> +						      "FW syndrome reported", NULL);
> +				break;
> +			case ICE_AQC_HEALTH_STATUS_PF:
> +			case ICE_AQC_HEALTH_STATUS_PORT:
> +				pf->health_reporters.port_status = *health_info;
> +				devlink_health_report(pf->health_reporters.port,
> +						      "Port syndrome reported", NULL);
> +				break;
> +			default:
> +				dev_err(ice_pf_to_dev(pf), "Health code with unknown source\n");
> +			}
> +		} else {
> +			u32 data1, data2;
> +			u16 source;
> +
> +			source = le16_to_cpu(health_info->event_source);
> +			data1 = le32_to_cpu(health_info->internal_data1);
> +			data2 = le32_to_cpu(health_info->internal_data2);
> +			dev_dbg(ice_pf_to_dev(pf),
> +				"Received internal health status code 0x%08x, source: 0x%08x, data1: 0x%08x, data2: 0x%08x",
> +				status_code, source, data1, data2);
> +		}
> +		health_info++;
> +	}
> +}

...

> @@ -27,15 +29,21 @@ enum ice_mdd_src {
>    * struct ice_health - stores ice devlink health reporters and accompanied data
>    * @tx_hang: devlink health reporter for tx_hang event
>    * @mdd: devlink health reporter for MDD detection event
> + * @fw: devlink health reporter for FW Health Status events
> + * @port: devlink health reporter for Port Health Status events

These should be in the order of the struct i.e. 'mdd' should be in-between.

>    * @tx_hang_buf: pre-allocated place to put info for Tx hang reporter from
>    *               non-sleeping context
>    * @tx_ring: ring that the hang occured on
>    * @head: descriptior head
>    * @intr: interrupt register value
>    * @vsi_num: VSI owning the queue that the hang occured on
> + * @fw_status: buffer for last received FW Status event
> + * @port_status: buffer for last received Port Status event
>    */
>   struct ice_health {
> +	struct devlink_health_reporter *fw;
>   	struct devlink_health_reporter *mdd;
> +	struct devlink_health_reporter *port;
>   	struct devlink_health_reporter *tx_hang;
>   	struct_group_tagged(ice_health_tx_hang_buf, tx_hang_buf,
>   		struct ice_tx_ring *tx_ring;

...

> +/**
> + * ice_is_fw_health_report_supported

drivers/net/ethernet/intel/ice/ice_common.c:6052: warning: missing 
initial short description on line:
  * ice_is_fw_health_report_supported

> + * @hw: pointer to the hardware structure
> + *
> + * Return true if firmware supports health status reports,

Return isn't recognized, it should be Return:

drivers/net/ethernet/intel/ice/ice_common.c:6059: warning: No 
description found for return value of 'ice_is_fw_health_report_supported'


> + * false otherwise
> + */
> +bool ice_is_fw_health_report_supported(struct ice_hw *hw)
> +{
> +	return ice_is_fw_api_min_ver(hw, ICE_FW_API_HEALTH_REPORT_MAJ,
> +				     ICE_FW_API_HEALTH_REPORT_MIN,
> +				     ICE_FW_API_HEALTH_REPORT_PATCH);
> +}
> +
> +/**
> + * ice_aq_set_health_status_cfg - Configure FW health events
> + * @hw: pointer to the HW struct
> + * @event_source: type of diagnostic events to enable
> + *
> + * Configure the health status event types that the firmware will send to this
> + * PF. The supported event types are: PF-specific, all PFs, and global.
> + * Return: 0 on success, negative error code otherwise.

IMO a newline separating the Return: would be make it easier to 
differentiate.

Thanks,
Tony

> + */
> +int ice_aq_set_health_status_cfg(struct ice_hw *hw, u8 event_source)



