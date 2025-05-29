Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FBFAC797C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 09:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3D6F610A6;
	Thu, 29 May 2025 07:16:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VcxncioiXb_z; Thu, 29 May 2025 07:16:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 132AC610AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748502981;
	bh=JHu+XjttnOjUOKgRSPY1FOAbvhcuV1mDkn2XHmUfA20=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lRisRkML/pYMufBQu8AOlIZoU4fvnetvP6I9U1sMd+bGemzivkwqvCo9aa5s4ndJR
	 l5o3WALOCq+VHZ7tZi2XeOBt5cdT35Bza/PbheT8INf369gBsgUqhlbyz+eAi6aU+5
	 hN8gmb4+wUWH+xW/8ArIkLUWv1LAZXgnFoEKWZ/3Mbw15PH2UfrUyd/Vs9gu7yvbaM
	 nf1Js6BtRhR5fB6roAmlVzy2bZKt2QVIoWIDw5RKQReKYPK4pv61oDisyKMkoLZygn
	 pbKS5OLDvxUUcJ/yI8SFmmCKZ4W6sb0SkXMpk89pdwFudXFIwfqpTmfboaLZLJuaJi
	 UnS4fgrs3Gc9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 132AC610AA;
	Thu, 29 May 2025 07:16:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E747114F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD79840886
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KArIReezaEoW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 07:16:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6655D4087C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6655D4087C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6655D4087C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:16:18 +0000 (UTC)
X-CSE-ConnectionGUID: ObW0l1V+SIGoxE+aAv1dxg==
X-CSE-MsgGUID: WVBkJd/sSWW8a3G73iUbkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="73082676"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="73082676"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:16:18 -0700
X-CSE-ConnectionGUID: nCYzwSWsSxmOB9iJol8Dcg==
X-CSE-MsgGUID: Z/y3aFCyTX60C6U4nm8pOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="148250851"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:16:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:16:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:16:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.78)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:16:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U+N98HdKNzZeaaqgkJgakLjffbEHtaYtkoei0VO8P0WObjxqvO4Fu36aWSEZINaFaynFn0D3I84YEutTM9wfBciSLL2CiJnkTJdbvdDJajg3D/4nKTZB9oGdlVcmsMAipC2cvaUYwrU0cTPBT7Rm3b7JL8bbAzRnXCEc9XZ1qvHOahMJi8nFUr/BKv92UssB8iAtkrbq4e6JVo8mE4xgQkejD8seiIzaqtKC0UpTRDaez9NZ5ES42hvyYSAKFX/0fg/j2WlVwovab7OsimTtxz4FvwTjAVcWleVSQahGroWsLnQ5eNS8tc5+/GQnv0r8ZUvchDGmpZzoiVCjJGIUKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JHu+XjttnOjUOKgRSPY1FOAbvhcuV1mDkn2XHmUfA20=;
 b=YCAryy2p1SokSg7bPBnusTTBP9r7MeRacKi7qnFJNurtN0GyCMPC2whWBF7jWOom2pwrbAK2vkW2vXUEYUMKe6y9HnnNCsQ7ihfAFVgVREQh7GFxwrRzuUcgI8RJ/Xdgd8ANRmhqaXNv/Jxs/iK06FkrbwvUMPxKBUMdVY4pYhIhYxs1tn6sRrP/vm0vxtT1Z3SxB7+YyTD++tW6yGLt5M00LiXN+ngriOGQeR2tTOmHThXrsfYP6ENvTwOJC7CdC94rNQejqFQmUYwrIBQjj+wLZxYs0SNO+2sh7JR7vYY0taxpGRWOAb5m9BwnyFw+4qRNnjxleMD7j6HJBhOBKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Thu, 29 May
 2025 07:15:55 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:15:55 +0000
Message-ID: <9f7fe4db-eff6-4ab3-9522-79d8d69421d4@intel.com>
Date: Thu, 29 May 2025 10:15:31 +0300
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Jacob Keller <jacob.e.keller@intel.com>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-3-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250513101132.328235-3-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0025.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::20) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|SJ0PR11MB6696:EE_
X-MS-Office365-Filtering-Correlation-Id: 22972a69-0b0e-4788-d676-08dd9e809c30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFRDWlhhdXowN2FKK3NPNzNuM3RtYy8wL0FsOW5tNlZQT2lQb25sRWdmY1dX?=
 =?utf-8?B?Z1hZakJ1MlJOU2hRUThpNXVDcnFxdEtmZ0NzS094YWhCMG9JejZaUEd3Q04y?=
 =?utf-8?B?N1hCNTdZUFNmNTg1TExCWVlmcmw5Q0RsM0pKUEY3MEprbjRMd2JWcHlrVmhD?=
 =?utf-8?B?SmdnRk9KLytKbFJCWTV3a3dEeGJ2Q2NuVTJYQUd4c055d0d2Q3ZxSnp4ZUJo?=
 =?utf-8?B?RVdDTGpmcVBVZ1A1VEk3WmZqMVQxVWdkK2NJcWI5Q1lFMnFlOFdzclFKR3Zs?=
 =?utf-8?B?WmpabFRob2k2T1dCV3dLZ3dQNS9IRUdjNWVJemhDS3N3Nml4blB3cDdZUml6?=
 =?utf-8?B?SmwzNDBsOGp4d0s0Z2hrdVkxS1Z5OXM0V1VsZFYrZXBnQXlkdmF3blllL2pW?=
 =?utf-8?B?NytlT1BwYmlCVzhubWk2ckM2MURzT3AzMEtDQXlrVm9jZ3RHUkRJMnpFS2F6?=
 =?utf-8?B?SndnWndWVlFLR3FhRE9VOXhKcDRHbUNqellueGJzMnRSYkRpZWxJMjdiVXda?=
 =?utf-8?B?anVLalVEMnQ5MXVwUjFOcDFGQ2pUQUErSWF1M09LditLVnNxNDd5dFA5M0pt?=
 =?utf-8?B?dDBCRkJJVWxoN2xzT0ltZFZxM2FmSnM0QTBMaC9tTkxuazFMdVhYRmdKMUpj?=
 =?utf-8?B?ZXMrS3VCYU01dlM1N2lkQzRBRkxGdEdvVFFGckFFdUxEeG5LbmlxQWZGeU02?=
 =?utf-8?B?UUpxTThoTm9tSTVpNktIZDRVZ3ZsU3B5MUkzbG0yMkFPSHNCZkkrUGNTa2xj?=
 =?utf-8?B?ZEFtUmEvRTdXSEpIVklqZnZiK1ZST3Nkc1Y3QzdYTEY0V3B0aVVnbTU5R0dt?=
 =?utf-8?B?ZWJNcnY3THpoY1l3YXZnNktWRklkU0V4RDJ3V0hKTTVxZTlScmExN2lQVGht?=
 =?utf-8?B?UTlYMDNGQnJjUTRUM0p1TFQ2U3M1RVJIaUxWdDNmaUNYbWF2SCszdzNSenov?=
 =?utf-8?B?aGx1TEZGZ096d2p2SWdDa0IyYWdRZkJkejVxVGttRlpWaS8zK3dBNnpIVWRa?=
 =?utf-8?B?aTVkY251cVRoeCtVVlRhMjAycGZSUFVyVFFzSlZGSjVac041elBUWUptby9D?=
 =?utf-8?B?UHRYblFDaERuQVBDS3JMWnB0aTQ3OWphUE9ib1pUWEppK09tanlLM20wOXV2?=
 =?utf-8?B?RXZmYnRXNnR5Tnl2cFF0bjlXRFlsN09DTUxQMWNkdWJqKzI0N2U1VkptTG1O?=
 =?utf-8?B?cEEzSjZpNzhrVzB5amRBbkY0M0RwVWN3ZzNOL3N2ZFlvZi9hallWQnVBOTc4?=
 =?utf-8?B?NTJOTzI2Kzl2YWFBVlJtWkYwbFpiQjFpTXkyRkJPQ3lpNlpLL1JRbWsxa3kr?=
 =?utf-8?B?ZEZXUnZOWHp3VjBGZkJvQldsTTI2VWNHMHhIdDdGeXhWMmV5M3JKR01YTW5F?=
 =?utf-8?B?MUV5RWdOV3pmRk52akp4OERCSStHWUFPMU5oNmtRN2EzdUszMXRDQVZlUm5r?=
 =?utf-8?B?WURyeWVwQyttNk9RbXFrblA3UTZpTTV6WXBReVpaYmxlVEVhVmhUMGFyS09W?=
 =?utf-8?B?QlVQbzRpdmtsWjdqazJTbk4xLzd0MmJVTU1NUGkvSWVUT2JTVldFL093bDNq?=
 =?utf-8?B?NkRtTmNpYXoxM2R1WGxIVXB2MVFyL2VoWWczM3krZG1nUFgvcjFvbDN3TnV4?=
 =?utf-8?B?Q1RuaDRTNCtFdGNvU3V0Rk96dW9jS2tGODVjRXFGT3RSWFdyaHhtVHJXK2Y3?=
 =?utf-8?B?VG5QTXpGK1dMUk9hUmhCRDdoUTZQV25rMExpMG1hbEZxa1lQL1BVa0UzcENr?=
 =?utf-8?B?ZXhwWFdrT3N3bjcvRDNjVzI0SUR4b1pIMTZIb2JYa2VHWnlzMWw0dFgzTUFo?=
 =?utf-8?B?Wmp5UmNIZloyWXpSWG9WNkNidENJTkVuK3RKMEk4ZEVGK0Y2OER0czVIVVRn?=
 =?utf-8?B?Tkxkd3pGQnZDL2MvSUxpemswS2pKMFFqb2Q2MGVhbERkcytNdUhVb0QyT2Zo?=
 =?utf-8?Q?m9mWV8odbR0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGZwTk9sVTV6T0dFdkNCNWNTZUMrcjQ0NGJYcmlhRlZOTk1hcjZJODZEejU5?=
 =?utf-8?B?a3cvU2FWVHhGUHF2M2ErMVVLek5BTFp1emlEZFZ6dkNSeUM2WjFHWTIrM0g4?=
 =?utf-8?B?Slpwb3dxNE8xdlloK1h4blR2akdVVTdnaDlubWFyd3BFTEtGem5PQ0hWRC9U?=
 =?utf-8?B?dkVIa2dlY1NFbkNuVTg3SEdYV0cyalZ4YWh0TmM2Y0RwQmQ2MCtDQW1XSU9G?=
 =?utf-8?B?T3E1YmdUTTl4SFJ3Zy92citUK1RoakZoOGVWb1N3WHFqYXZRNXk4ekd4NlVI?=
 =?utf-8?B?RjczY2J6NExyeDU5QUh5Y0o2cUltZFpyaWNLa3kxUzd1L01GY1F4RkthNWRP?=
 =?utf-8?B?dTU1bHV4eXRYWEpWUFBBTmltWUVtNjZWdktUR0tlZTVUdWo5RkZHUms0Zkta?=
 =?utf-8?B?N2xxRUZUZEorTDhJSUJhanFGWHNRLytQOEtEcHlyUkwxSjhXZHhZQkRKRHBl?=
 =?utf-8?B?NFgwWGY3VmgvbG4xR3BhMTluZGhNNGdyQzJZZUR0WklwN21IaVFSNTdyRDZh?=
 =?utf-8?B?WC9BSW81ajgwYllOTEwwdGhtcW92UHZzMUpjNEF5cjdYQTN2MTRmVThOdW9E?=
 =?utf-8?B?cVp3WHl2WkV3eGFFNVliYWpuZEFlYWgyektzU3NBOEFrck9oTzVVZXB3aTNU?=
 =?utf-8?B?R2NzMXZRc0paQ0JMVGIyTmZkL0Q2V1BHcjVoTDUwUWwvSzJsZWVKeHU0K2tm?=
 =?utf-8?B?TGJJcjNoeHBrNmgxNXdzWG56aXRQQjExaWtKKzRoNFlnT0dKLzZXNktQTW8x?=
 =?utf-8?B?aStLUEwxd3FpZ25IUUxVbXM2b2pma3ppdWxKMmp5WUZ5RFlMcG80UUFBTHBH?=
 =?utf-8?B?QysrMVpPRE9DbnFpRk9iMUNraGJhSlZuOWVCSFRBN3pDUHVURlgyMGxtRHMw?=
 =?utf-8?B?L1Jqclk1Q3ZiRmlocEF6RmZDNVB0ejdPcWNWUUg1TWdtdldwVHNvQStlYWNK?=
 =?utf-8?B?Y3BQYWI2OVFqb1VYb3RtdmxwMzcvbzF0QUIvbm96a21SUWN2NHczaDg0VjFF?=
 =?utf-8?B?KytQa0s2Myt2ZjgxYXg4QlArZW9Walp4aDBwN3lJTWpUQVNGdEkrU25lNHBu?=
 =?utf-8?B?RW84ajRxMnBLTHJFK1hDNU9XajU0eHB5TEp4clBoRTJ0ZHFKZTZabHIwTjdK?=
 =?utf-8?B?UXBlQWl3NlAvalgwMVUrd1NxVTFJVEIvSGN1Y09uT2N1c0k2bHFNb0Y4ZlBs?=
 =?utf-8?B?bk1SeXFlMVdzUXFGNXRSUlVlT2NCOE1Wa3RjYXNwaWRIWUYzZWg1bXlBQmN1?=
 =?utf-8?B?Y1c0S3NBM1lhcTJIWjcreTRJT1k0NEVzcE85eE9QakhiOU9jdFFaQXJDZ3B2?=
 =?utf-8?B?SGtsODF5Qm9BbEoyR1loSEY1aEd3anZxRnh6S3A1NExOVzVPSDU1eTlwbVJx?=
 =?utf-8?B?eENZOVM2eTBhSVVWR1c1dCt1b1BVVmZLbmRodnh6NkJqM3RQcVlJK1JSWGxs?=
 =?utf-8?B?SGU1MXQ5Q1BhTzdwaVJqL3lGRk1Zc0o0aGlYbXlkRW5MWnhhQjhMbkRwUWRx?=
 =?utf-8?B?K2V6VWFFd3JVNzhBb25ROVkxdEJzQTVjYzFiRVhsUUc2WkJaV3BRSjM5em83?=
 =?utf-8?B?cUNpQVBVYVRKNlFxWElxaCtnVWVDMUlrdlR1ZGF3aWZYZFhpRjlwMDJIZ3Rh?=
 =?utf-8?B?azc4M2UrWkREVURxNU9GVEtMNklZNVJYT3pQdDM2OUROcjNBVmJDT2lSd25I?=
 =?utf-8?B?SHpuVytlZzB0SCt1RFN4Lys5a3NKcGVZMkJ4RnNIV0UzU1k0UFQzN2t4RUNG?=
 =?utf-8?B?OXhpTGpEaWdwck5SS2ZxZ3pwVTlNbFlySEpCNUpubTY0YzlwcklTZC9KL0FI?=
 =?utf-8?B?eXFvYi9ZcjhETlFkL1FsOUNHVWRoR1JaL01uZENpMmxiMW5zM1Z2cVkxTStp?=
 =?utf-8?B?eUFvTG92ZTFtR2hPK25Yc1Z4cXZ5MGRWemVLc2hnQnhrY0FXSTdPMWExMHVz?=
 =?utf-8?B?eDAyQllhaE9FNUQ2TEMya0dqUERObjhmMGJseGNHb0hPeFFiMW9NV09aQ0ta?=
 =?utf-8?B?MXFwUWdPYU80YVVEaGN0aFNycWlNQkZ2Yy9SM1dNTzlOZStKVWlyRHdyV0pn?=
 =?utf-8?B?bjd0QVFLcHQwaEYyQk9yMzNiRFNMays0V0l4TXdpVCtsNm85c0VUcTR3b3NJ?=
 =?utf-8?B?YWhXZkdZbGloSUwyQUVJNFg4S0tZd3QveSt4Wlh4RlJweGN3NEVjYU9JWklu?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 22972a69-0b0e-4788-d676-08dd9e809c30
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 07:15:37.3589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: doaGVDJjjtU3c/sP/SIHHt4bLewcA7gC+JXm4xjNcfIpQPwnNwHpDc3GVki7+544VFsE1T3uL3TVDB1GVqzZb+kbARNBmE5u/C/Dv9kfiTg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748502978; x=1780038978;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H1+bTCR2fwmWcXEqtlNcoLY8VxphnqONBFtXHQIMm1o=;
 b=nue7UE1cek85UQb4zwEs+XI3InBWV4/4wLODzjQBVRS/M9JvI2eFH4Xe
 kbvu67iPmv2q66e5/Bj0vgu3n7qa9SfzQLkrBFg6mAj4iUYCj7R0anFnf
 x44nPvc5rqf8hhk5uOIL22iMqtW8FsEtayyKXHY5mqw7ylUsDfV/C5+q3
 Sxzsk6eGL0AfGqY36Yqer010N6hn223XEljNAIi4BKWck14jizPKM+LQh
 UQUFk38C11Xct4k7LvLUae2xF0DLAC8O+HQrimsuyw2NPkcvJedxYQfUQ
 /9XI7JDrt52AEtEYWcKwS5OyRdaymPh+R5WZthnkVZKoh894KWOZIIYd0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nue7UE1c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/5] igc: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On 13/05/2025 13:11, Vladimir Oltean wrote:
> New timestamping API was introduced in commit 66f7223039c0 ("net: add
> NDOs for configuring hardware timestamping") from kernel v6.6.
> 
> It is time to convert the Intel igc driver to the new API, so that
> timestamping configuration can be removed from the ndo_eth_ioctl() path
> completely.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  9 ++++--
>   drivers/net/ethernet/intel/igc/igc_main.c | 21 ++-----------
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 36 +++++++++++------------
>   3 files changed, 25 insertions(+), 41 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
