Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C0AE3136
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Jun 2025 19:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 439D760A96;
	Sun, 22 Jun 2025 17:41:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0jnyIBuaKDfL; Sun, 22 Jun 2025 17:41:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4952C60C31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750614116;
	bh=UEGmC8u16NGhry7OpVyfPWIHR3GCRwWSMY3QJ+o/kzo=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mz6Yg6+3qHLnt6le1vKAwkfdHRVueHoknLJEiGMzcyadnWSveUgZ5vL9lFexnmk3V
	 7PVR1FlgD4e9RDqP8dyLH2pBjKvLRDrNuavcJsef8YtLukoJn/9431x9mdBd5UxsAD
	 Ix6w3HzhX3I7iXtLaMWZnyiboRKA7IOp9W2RWhaiLsjz94WT7RWeIkIg024gT+ILFj
	 VlP/+DlwQzRSrt2btT4TWH5ngW/WuUv5j32xnG9mcGDTXzrNoklNBPQmEgFbJjkaP+
	 0/oBwi89t6Ee4SmotA3l0LE0iPD45EfvJSB7fCxXg1467KEgJMUjUyKgUUj07cEicB
	 Z8S/+HJdxfBsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4952C60C31;
	Sun, 22 Jun 2025 17:41:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B71D12C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jun 2025 17:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 089B660C13
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jun 2025 17:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a2KspcIzuyrQ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Jun 2025 17:41:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 375B560A96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 375B560A96
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 375B560A96
 for <intel-wired-lan@osuosl.org>; Sun, 22 Jun 2025 17:41:52 +0000 (UTC)
X-CSE-ConnectionGUID: VBSgv4NFTmKJ5GJNi3hYBw==
X-CSE-MsgGUID: FAPaNZqqRACYjcIvyneskQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="70245881"
X-IronPort-AV: E=Sophos;i="6.16,257,1744095600"; d="scan'208";a="70245881"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2025 10:41:53 -0700
X-CSE-ConnectionGUID: RSFBLzG0Ru6mo1gPgvMCqQ==
X-CSE-MsgGUID: jxJAvVvbReu4V/iDTYUYOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,257,1744095600"; d="scan'208";a="150800363"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2025 10:41:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 22 Jun 2025 10:41:52 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 22 Jun 2025 10:41:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.63) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 22 Jun 2025 10:41:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=imWi3hFa0URVP/lwQ2wmk+cu3iaB1UHdxpUufsW3a9V/eODW/OKcJWgCRVi1WtCkWMHs9GnjWc1p7oT0yAzQJ7QRtUDNS+/mQwut+CT3vqwfjRDHCrXA393NNcj1XYhWaAmRPo1W5+jYIl3yu3/nHlnFYWu1u1Ufa8F/J4CpNQnhxKGtkZtNMeY483k7aQ0yptkVqEOyRC+IrVpliM3GzJPrxde1ZnR3kt9MQulXti1enzoCrAGw1Gn1JIomAT0t2V5uNqscccw6ov6/aZGAfOvFdFae9Dsev3xAGIzLvlxwLJMbKus9YRCN+2eIfejzuvHraLEUPGOkUXsdtWxnvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UEGmC8u16NGhry7OpVyfPWIHR3GCRwWSMY3QJ+o/kzo=;
 b=u8rI/QFWtdT7kMRHdfL+l5DzoTBNEjEpyAJrREeSXxoIEauBBbvf8jHrbiQCPMPthW1rfvcUFJKQzz0Vvm8tmgDqfckR3Bb0MwkdYehgWYA6dxoXz3PFYcXajsAnCtWp0Psw4DB/nv8she4VNIcNa4uQw4PmaUvDAhiL9XYV+Vu3qpDqcaQQBJnIz9KgArOje6mhShhZIr/U9HWdM7ZdnZprzE7leTJ96By1EsEHiy/1BxnIsT13/tMGlFBcZBH0c9mKgV8y4kwvx4GFlwVosVG3d7tA4AEeas4z/wCrkASq9IDZfxdMcIyspPPBnY5Bupn2pHDlTFZ/JnrodyfPig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by PH7PR11MB8528.namprd11.prod.outlook.com (2603:10b6:510:2fd::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Sun, 22 Jun
 2025 17:41:48 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8857.025; Sun, 22 Jun 2025
 17:41:47 +0000
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, <intel-wired-lan@osuosl.org>
References: <20250611125254.3648822-1-vitaly.lifshits@intel.com>
From: "Bar Gabay, MorX" <morx.bar.gabay@intel.com>
Message-ID: <85aaa5a9-c1c1-d454-c03b-5717fd6b1302@intel.com>
Date: Sun, 22 Jun 2025 20:41:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20250611125254.3648822-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::14) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|PH7PR11MB8528:EE_
X-MS-Office365-Filtering-Correlation-Id: a85b7197-5a4f-429c-5792-08ddb1b40eee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlJYUDBVTjlTVWFUK1JDT3JHRC9YeU9vem5xKzVnV0VNMzhUZVN1Um42WUcw?=
 =?utf-8?B?Z0ZXTVFYR0dNM21zaWJ3SlJCL2g2SHRTSEVTTW9OY3B3cGlzWEU5Q21hZm1n?=
 =?utf-8?B?dEtxK0lWYWJSczJHR01lRnNqSHJhOFp1U3ZDZlUvQjlMNVFXdDFmbmFvN0Fl?=
 =?utf-8?B?L25VWGVlSEJlSnJkR3hMclBya1dndWxrdFgvVThXck1WUlRtQ0p6KzdZTmZ4?=
 =?utf-8?B?YTRoQytSRGlJd05oOXdqTXl4ek4xYWZCZEZjVm5MMkZvRWdRbnZZTEhNLzZO?=
 =?utf-8?B?ckNGK3c1T2YwYVF1OHhieVhMdFNPZVg1Qk5BNUJNaEt3V1VVaGxiMzZuZERV?=
 =?utf-8?B?UjFwa0FuSE44UlhqWWZuT1dXSEsvODRPeXlHQTBqNDJCY0swVGp2U055ZkNU?=
 =?utf-8?B?VnQvL1orSUJ3SmJ4dXE2TTBUTmdsRnoxQUFhZTFTL3BWR0Q1eHp4WDhyV1pw?=
 =?utf-8?B?N1p6ZHQrOURkc1IwVEo0SWxKbjZ6T3ZNUTVXeVZFdWdNS3VrRzRNaVFiQzVI?=
 =?utf-8?B?OXFSeWo1aFcvMTRrWjlab0NqUFZidU5ZT3BFYVJsR2xTMDdkaHFwazVrMVFa?=
 =?utf-8?B?c0x6TzRoMTQ0THBsVlluWWxQQXh2OUJ5NUY3a2U2VkRlbjNKRDlzVU8zOUY5?=
 =?utf-8?B?Nk8rTGFWbHRLZE5FbDVWS0x2ejRscCtlZVZUekNFNUFZMnFYMkRTSGZ0ZjNZ?=
 =?utf-8?B?QUI5QXdjejZuMlNyZkl0U2QwMGhyZVg4RjNTNll1VHd6S3hpREdyTjdjaTk3?=
 =?utf-8?B?dFNYRDBxTEU0R2prTHo2cEhOb2xjZTBTY1owSjNSVXVITm94Q05tQXozWDNW?=
 =?utf-8?B?YlZCTGxDWG1ld2JTMkI1WW41YUN6aCtNSnlGbWdsdUx0TVhmTmROOFROSjhM?=
 =?utf-8?B?Q2FTVytvTGx3bkVhQ1k0WFNvRStqbkJsNHZIdmRtWlVBdDN4TkthY3FLeEF0?=
 =?utf-8?B?dFdla1R0WWFmQ0Nmb2Q4WnhGQTl3dXZTc1ZIUVh0cWFIK3NZbkVrTFRXUGh1?=
 =?utf-8?B?Tnk0eTBmeVNiSHIzV1ZNU2pjejVVOW51Zk1SamtyUmx1dDdBQ2pqamx0OHJq?=
 =?utf-8?B?QU03VWtXM2s1YzhnalM2TVNSZkx1MmZLejhZVGFQcGZWSG9qSU94cWo3NTJN?=
 =?utf-8?B?RGlzMTloWVN2bnVEcXhOaW1UOG9WNW8xTUw2QTQwM3FTb3hUWmpncU94VzFq?=
 =?utf-8?B?ckpHWUp3NG1MUTZQRmlRU0JHS203Ym5aTzlVS2l5MCsyT2Uva3pPajVpR3BU?=
 =?utf-8?B?Y09BU2p2VFJRN0ZyQ3hBTjJWVG9XRDNKZWNpRHFXZHpZRTRVa2NFWm9jbTRK?=
 =?utf-8?B?RG1GeG1SRlEzL0VqcDhpb0ZRVG92M0o4SHZzcklxemYxWDA4bkVqRCtqUzhS?=
 =?utf-8?B?WEh4WGNyb3FQbFc5U3pmL3pGdUFKOHF2NFhsay9lbGo2eDYrOWxpSGNvR1F4?=
 =?utf-8?B?RW5IRGZaMFZBN2k5eEMxWmZ0SzFBcHg2QVQxemdZR250TUk0SGNjSHBxTThY?=
 =?utf-8?B?SUlTRnJ4RkNkeXhtSHZYUGxoaVcrNENRK3YyNi9NeE9TMnU0dzV3MDZuN05m?=
 =?utf-8?B?ZFRKSnB4YTJWdlgvQkZJVGZpUFpnZU1mVWFoZmlzbm4vRFZmSXIzT1Q1b2lF?=
 =?utf-8?B?ZG1nNmw4ZUhDSGY3ZnoxcVA2Y1JoQzJxVXF2bzlsSmtNZlN6VGhPWkZZUURt?=
 =?utf-8?B?Wm9sTjRUQzEwQnk2ekc1dmpzdVZhUTMyZDdQTmwzSVZPam03cEFpWi9qKzNx?=
 =?utf-8?B?bFphUUhBNXFDMTFDSVhGYmlVWjBveFhwNUt0WGc0YmlzazY1WmtJOHZDbEw0?=
 =?utf-8?B?MzV4UjRvRTUvcVp5QnRFUVlXeXovL3kzWTYzQ201Q3NSSzhyWHlHZzNmOWxo?=
 =?utf-8?B?MGg5Rk9aQllpKzlOT0dqK29TS0RpT3RZbW83M2VIejNGV09hZmFtaVd0R1l1?=
 =?utf-8?Q?n4XqnzLo8gw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THNPRVBmMkNJcEhpb2RkcEV0bUVkU0FzejJvanNvekhoN1BkaGI0OE5tenB3?=
 =?utf-8?B?bzdDeldURzZ5amJudCtuNEhVMTRCRm5uUlFZaTRNYTI5Zk5lYW5tamRKWTRh?=
 =?utf-8?B?MjZYMWJsaEpqOHBTeEQzQlN3MVBjeDZlNERhRFBKeG5rcTN2bzFYSHQ3eHp2?=
 =?utf-8?B?SUpMK2xQZnZjUmRybzc4cFZlOTBTc3I5SHF6TU90OUVISS9qbFQ4TVFjOE8y?=
 =?utf-8?B?VW1tSG5YTG13SXpkNG5EYmtFczU1RDcrSVVmL1NVOGVTM1R2TDRYUGpwSXdz?=
 =?utf-8?B?c3p4ajVPQStWWHRnUGJXNTJFSWs3WmZLSTJxTmNvbHNXclhDcVJqaVV3K0t0?=
 =?utf-8?B?SDhCcnVtb3B5SUZyNWRqcnovMGYybU9RLzhTa2p3aEd3a0xCUnAxZ0VZTUxZ?=
 =?utf-8?B?WWdUZmZ4T3dJQmpZODFjcFM0MmhnNFBvbEwvd0pkdmN3RXRqV0xZeUV0a0F6?=
 =?utf-8?B?alhwZjlwQk5OcFdvaS9heXM2bHMvSEt1eW1GM1BncUdlY29RVzFyb0pVYVEw?=
 =?utf-8?B?UDFqWDVYUllPOGJmc1FLNlhLR0xaSU9iVDVNR0lST3JhTVYrdFN2bEt6Y002?=
 =?utf-8?B?Sk5WSEFBUGk2dXAxZWVTK2orci9ZaC9wZkFXdXBKNFg0ODk2NEg5RXZ6N21U?=
 =?utf-8?B?T2F4RmI0MjNnZ29sMXk4SDU1N000eko5OEVUVytPYVJ6SXpweHdZY1dsU1dr?=
 =?utf-8?B?RnM0MWpTZGpqK2hEQUtXaVJmQmJRVktyYm90UHlGbjY3cUFqWEJJVlBlZkYz?=
 =?utf-8?B?TW85a3hza2xIbWQ5bHQ1M3BQZTR0bTAwTmNzbUlTSW12eSt0Z3FBYkwxTkox?=
 =?utf-8?B?Sy9IR2JjMmk5ZDRlUitHZ1hkT1dZTnF3NWlhNi93VTdQMlh4bUFlS0hQQVcr?=
 =?utf-8?B?dGEvckpjSlF6RERsOW5MOFZTbk9QdUxzb3B6UnovVmR4S1d5UVJJU0ljckNw?=
 =?utf-8?B?aDZxd3Y4WjU5RTlsM3RyUlhyWG1weDcvdm9jUTJGR3NHTmZ6UEx1SEF2ZUkz?=
 =?utf-8?B?VEVPKzFtUXVla3BpZk13YlpVRDc3UWlndWpVM0paQ0dsSlJtWUpUQlBtYmJ0?=
 =?utf-8?B?YnRkTzJmMmtwbVRQb3kwNm5pQkRWcmNNUHB2K05DNWwzckg4Mitjdk9TNWZn?=
 =?utf-8?B?cFloclB2dFpwZW5qS2JjVFdOa2NSYnlBR2laVzZ1Ym53aExwbWRTOVJBYlQ3?=
 =?utf-8?B?eDFrQVREbjgzWFRSdWlSL00wTlpMbm5TN2hpT21YcWhzMzJORXZWV2xwYU1D?=
 =?utf-8?B?STdhN1R3QVJIemtvSzBodlRwK2E0WWdXZEtXWVpMNEhpayt4b1V6UlJqSjhz?=
 =?utf-8?B?UzNaaEw4WndnczJualREZFlsTUF1bWZyUjhqSXZwTnBISEJKNmZna1JDVith?=
 =?utf-8?B?RURnWmJ0ci81amUzeFZ2MnJDU2p2RVE0Tzk2V2xuOXNsMTJ5SE5rUHJ6Yit6?=
 =?utf-8?B?R3drREE1YTB6RW1VeFpJT1owWERNVzUrNTJhalFTMmlOSzBTYnNJQ0VnekR0?=
 =?utf-8?B?WWJHYjREY3lpbmVtVmkwZGlmN1hXMjhjUmI5bm9GdzlIOXdGUG9lSEh5Q3pF?=
 =?utf-8?B?RHJiczBLR1JRcGt0UmtpNnl6Sk9tWjVOdHJLT0ViUTRla3JJSjcvbXNnWDlo?=
 =?utf-8?B?aEltZlZaUXNNTGtwNDhEMHhoQ3R0QmR5MEozMmpKOW1UUmhTM2RVcC91OWpD?=
 =?utf-8?B?bXdkNWhXRkdYbzhLNkprK2RTL25KY1BiWEQvd1Y0ZXh4WGlLSDE2eXFYajlj?=
 =?utf-8?B?UFNocmtndjhPNDhrT0JEMlcycmlQUy8zaTdPUGVsaGFxYmtrbmNSSVdEbmY5?=
 =?utf-8?B?Z0F1Z1NZcVRzWjJHOUJKb21YWlI5REhSVE9LVUl2M3dnNExWQjhqVkJndkQ2?=
 =?utf-8?B?SXJjS1FZNXg1YTRqdXJEVUE1OFFSQ1Y4a3NqbVkvdVhibmJFcHJEb2IxVmRa?=
 =?utf-8?B?eXNBMmNYYmNkcFRPam50WjFQRlVmYlphblhJMDV0QUFFR256TVpiZ3Vsdi95?=
 =?utf-8?B?Ui9Ba09kM040dVk4WTgyOGVVZWh6SGFCLzd3UkhERWFuWEcrbU9FdzgyU2Rj?=
 =?utf-8?B?QW91OC82dmFicWJHdVZLMEs1UVp2UTZBQkk4Vm1OU0pTdXV3TFIxc28xVk9W?=
 =?utf-8?B?ejNHcTVsNUhHanBZU243eFJsTlQrangrUC9WZXlGTExaaHo2UldzdFYrVDdn?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a85b7197-5a4f-429c-5792-08ddb1b40eee
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2025 17:41:47.1358 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7iijSKSWVWLMrTlLr0OHHnxcsaiLk7igJa7SUWoiNHP2LrvvL/wYd7QtIaL9RkSGA0qjEqB7yMyQRhcUMi9o26402wm4SR/+Ur5mCTrBdaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8528
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750614114; x=1782150114;
 h=subject:to:references:from:message-id:date:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vRNgeTT/LfQ4GihQvZgzzH6N4m0JPDt24+KfhlgU9/k=;
 b=A2+9WpHKRd7ujHrqe/GoeHGz0HmBV9/3BTY3lGgNCiSYiYq8cZxCyoO+
 nKh0zvCiUH+npwrUpFSLOfHhcK68DLj3awv5lePZbUkNudIoxnCYFHYYH
 5IWlGfA0pBSh2tucMYonecEChtuLl8DvjdqgP+01MDhQvl5ntEoxTV6Uh
 /4l27670CpADnl2kmEvuTgsZ3ooIIyFVQ/hQKsBOuILBNhxnyCvXwumCx
 KNjW9jKPO4bLsQqPzxVL/GqksmpuKnJn0nkRL3+6QZ8+OVJEaPgWNVG1j
 GpFTR25wDnESp3gmbfMKhstOMi+bk+xpcI2DEQ9TeiBUYhUKQUJbtspi9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A2+9WpHK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: disable L1.2
 PCI-E link substate to avoid performance issue
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



On 11-Jun-25 3:52 PM, Vitaly Lifshits wrote:
> I226 devices advertise support for the PCI-E link L1.2 substate. However,
> due to a hardware limitation, the exit latency from this low-power state
> is longer than the packet buffer can tolerate under high traffic
> conditions. This can lead to packet loss and degraded performance.
> 
> To mitigate this, disable the L1.2 substate. The increased power draw
> between L1.1 and L1.2 is insignificant.
> 
> Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Fixes: 43546211738e ("igc: Add new device ID's")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
