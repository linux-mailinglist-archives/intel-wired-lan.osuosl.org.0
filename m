Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD72E9625B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 13:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9697F81331;
	Wed, 28 Aug 2024 11:15:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IeQp0kdpze0R; Wed, 28 Aug 2024 11:15:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4276281329
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724843757;
	bh=pVoeKRVKD/X1MyhLnrPGVfsmeySRrm33ajycYcgBpQ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EC1gL3S12oxBLYb77O6aa7DXZFAGXmRHZXAAiLN9NQcxtmB+xbssOTO4swge0YZKT
	 tFCK3/JVklgeXls8gLIXWvit2Cubn8I2i5jneCNOo1BoxcX+QSxEu9TMLoiTODpmLY
	 sO1tfFt5nOve4ks1LyGuulOKC6yRWK787pE6xeCKxIyzuqSbIYI/z+8NeQwRyIbiTh
	 QaoL6zn1RvG+1MF0Z1iUJEeVhPTEKP5wfQlkSr3ruTO+ZRwAjNNS6lrogMzUyNRo0q
	 P2DAEB9rwNwkzARlKnp4l82CprLn1FGjo9zCozgtejO4wLk34Yff+kfswcB9Ct2PSK
	 Iuwjno4VlPZUQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4276281329;
	Wed, 28 Aug 2024 11:15:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C5D91BF852
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 11:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB1004069A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 11:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZUl9QVtekhCE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 11:15:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 694E840663
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 694E840663
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 694E840663
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 11:15:54 +0000 (UTC)
X-CSE-ConnectionGUID: BYcR1BzOTp+fgSZIRcpM8w==
X-CSE-MsgGUID: kttdr/c4RmSjlJk9eUDxqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="40839848"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="40839848"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:15:20 -0700
X-CSE-ConnectionGUID: KRed715cQrmeHlRKiqnENw==
X-CSE-MsgGUID: gB53dPd4RP67P7jbkJ1XNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="63034514"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 04:15:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 04:15:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 04:15:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 04:15:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 04:15:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RZ4AY8jo5ttUrBjPWyxbwTt/BtYLFpgVHtPyD/XEVOg1ahCPfrSqiTQ4eex0jmXr/UuWk5EvqSNCsjL/VAamnV8ie45JIxULOg+WxuA5+k4619h7u2Fc5c/nIwKDmEVeIiK2PV5W8lealbUanE3dJIjmioxUiTaWbfP0+xaTsg/Fl/+DTJCKRj+4kKiNxfegkyk+jlCzReH8V4OslPTJ/TgCD2ffF5PFcnwt+E4HW7hcPuxHVYucEM1G0n8qOVvGuMHZH/FF4LEmGU43EI/UzCua8BamsBnO7bJjbT+Pmb4E/N8Eehd74hXtwslWgaseDeXWFTeAWs35fC6GXK28fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVoeKRVKD/X1MyhLnrPGVfsmeySRrm33ajycYcgBpQ8=;
 b=Kw+mbKczHFQhI7MC10CK0KBgvqso9DvINeFAwcWDdNuW1S0m/nVEDZJ15chdwUtOAx4GeuV7yJm+cv3pIKSVd8i3886nzYBWLLQSiWm8rthkNSj5PlboPfshk9dStSrJZVqUMaUCqjmiVEt001c6bFUIOxNkecXt51KPBZyVKaaD0g2YRptmmKK2NrINiqgpR2zIExFUjL45vOZ2tov/eSu6Mt6P+IPB2QlJ49QX6JWaicaDSk0+Xyghen/vrC5z+J5gb5M9NXhgaWquYUNULU5F43Az271L5liJtXxjLHNSIyopxNzdRcW2bxjHudrQkwJyTQEPgdptXPaK6mt+IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM4PR11MB7206.namprd11.prod.outlook.com (2603:10b6:8:112::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27; Wed, 28 Aug
 2024 11:15:16 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 11:15:16 +0000
Message-ID: <79623019-60be-4db7-a35e-f2e4c41b6f63@intel.com>
Date: Wed, 28 Aug 2024 13:15:09 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-8-wojciech.drewek@intel.com>
 <9e708174-d6c0-4b8b-9a0d-5807463d6c43@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <9e708174-d6c0-4b8b-9a0d-5807463d6c43@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0017.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::27) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DM4PR11MB7206:EE_
X-MS-Office365-Filtering-Correlation-Id: 316dafc7-4ff8-4a09-43ca-08dcc752b194
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZHN0YlY2eDRmOFZWejBCVktuSHhqQ1R4UlJmTjBiUmpMa3JydzB4aFBleDRK?=
 =?utf-8?B?WmFZNEdJZ3R3Vy9uaEI2UjVtbzlNNmJETFQ3MC9PNmNqeGJGUTZtbERtd1VQ?=
 =?utf-8?B?WTdZZWgrUVBBeXdEbTdPY09CVnd4WnN5blloYTlqWUZFS29VZ0RMSVhiVXY5?=
 =?utf-8?B?T2h2OHhZTDZrUEU2OVNjMWxjdWkrY3dXNGtvNDAyN3RDc3FjQjFuODFZMkdG?=
 =?utf-8?B?SmV2YzkzK0RaYXpyamtQazNWUWpSUlRWbzdLVjJEbEREdXg5MXp3bEJGTCtu?=
 =?utf-8?B?emRyRHRwNGphSnJGYmhNekFPbjgwNUlEN1lBelJpcUVjaURHUW9ZVWZFTUNi?=
 =?utf-8?B?UTgxNzJlMCtrM2p6VW45U3BTZHpUcWw0Ynd0SmZQbE8rTXNMRGRiTGZVNmFs?=
 =?utf-8?B?dUlzbDM5YjN3SkNFS0dENjE0S3JFVk5ueWVJbXAwSUR3b0g1c2tnNW55R1Ni?=
 =?utf-8?B?Rll4RDM4ak9FQ3cyd3QyVFRDL3V2UDIrY2hNUE1EZWZjM3RWYWJwaE12K1Rs?=
 =?utf-8?B?LzVQOXVzbXRhME1EbStmQVJjd01XZXhvRzcyTUVySGlxNWw3dXFrd0lMRGkx?=
 =?utf-8?B?ZmlWYmd0UWRuQnNqUDJRSEV3M3RSRkNnZ09UTzN5c0dVZFQrb2Z3TGo3SjAw?=
 =?utf-8?B?azVVWDJVTU9hM0VJUWw4VXJrYVBJVHo1WHUwU2NOSzRjbWw0dHoyamJPcmFu?=
 =?utf-8?B?YzUxaXBONU5WVnJFWTVRQWFrVmpxZEZvTEMreFBvWTVkNmJ3aFltVmhReVow?=
 =?utf-8?B?M3NqWXdpQ2tEUUVkdjRHN0VwU0tNS2pWbm5jT0xOTENtcVpXcmZuZnBybDFE?=
 =?utf-8?B?TzUvczVyV3hxVzFhaWIyVk84NHdHR3UvZU9uK1lxbW0va3VPcDYvdEpUY2xj?=
 =?utf-8?B?RDBwQkNyNU01QmdQT3FFek5FZ0ZoamY1ZVNyWnRQTVlOdzV2R3BKN2xxL3Jp?=
 =?utf-8?B?aXg5UkQvNVdTcU16dWxZbFM1aGhVYW1OVkV6SU9Fa1Z0Ris0UDhoYXBxb3FD?=
 =?utf-8?B?T09VWFNnRFVpdW5TOFowc2VoT1EyM1pHc1BNNmlvLzJ6cHpjRUJFdmZUQ2hT?=
 =?utf-8?B?aFVTSzdzUUFDRnh0b00rRG1HUDhoMDFreU9VblBuaHByMXFPaFZoSE10dnpY?=
 =?utf-8?B?V1BJZG8yeTBqdkVoczlPbEMwbU83SmJuR21mQWNLR1B5ZFVoUVJuWVhKM0Ju?=
 =?utf-8?B?WVZ4a0dadVdKSHpvRFFMU01hSDM0czkyQnBtQVB5RC80S0hVSm9NNUJINmhL?=
 =?utf-8?B?azhIT1E2MVNwMGcvMkRCek1wM1A4T0FveURpUFFSY0hCQ0hHZjZ6WDhOYTBJ?=
 =?utf-8?B?NlVJSXF6QmpsbXJBVndqcGR3UmVhQTZ4UVJFY2hMYlpKcUs1L0pqbFJweVha?=
 =?utf-8?B?UlQzc3Q2RmdRcUkyclo5OFNWMy9rMUFxSnQwUVB2c0t6dFl0R1VFemVEeis3?=
 =?utf-8?B?aXN1RTlnUWhRS04vdmxiYUJsZGtOQ2RqakEvLy9Db3R5dTFpZ2hWUEN3eFNo?=
 =?utf-8?B?YkYxenhnK2hHaE1hMmdzRGs4c0xhL2NnL2tXWFRpQlB1eFJXMFdSYlBqeFZZ?=
 =?utf-8?B?dGhsL016Q09yYlNtZ3l1M0Fnazg4clRYMFpETVh1UExZY1J4UUY3YWo3Z05n?=
 =?utf-8?B?S25hN0VocWdLRkZSQWJtek1WVVQ5eE9NRTFhVkc4QmdRV1R4TWxCbWY2NkJH?=
 =?utf-8?B?ZE8rZWtCZCtZS2FxUUFORUY1dUlXZTQ2LzV3MnBYTHdFOTUyaHF0bnRzUkxn?=
 =?utf-8?B?M1dSMllQaDVibS9BU1JBWDZaOTZLRElNTXpHTDk4Rll2b25VVWRreVNBVm1h?=
 =?utf-8?B?bWwvK1FyN2RHVUFtYTc4QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bU03Qjd5REh6dFBvbFFwdjJnQ0svaG9LZm1Xd29iVkFrL0xvVkRlRUlwSWQ0?=
 =?utf-8?B?eWE2RUFzUGdVNUNnMlN1YnlQMENPS3g1YVFqYVZrVzI3S2ZaVDYxc1YxLzlT?=
 =?utf-8?B?eU1CakJ3VkI2UVBYTU44SFRWYXRja21MZW1aWmg0ZW9kMXR6WTBzUnJHYzN4?=
 =?utf-8?B?MytZQlJ6RFY0RGgwdmNpcVRLRlpkV0pRNEVsd2FqVVpmL3dkMm9mN043ZVAy?=
 =?utf-8?B?YW9IMDRjRnZOZFM2WEgwRGV0UVhXSDErUGRmNXJzSDRHQ3V5RzRXWEZLSWJF?=
 =?utf-8?B?bmFxTDVSb2NsTC9iVW1VeFhwQ2JYTDlFVVh2ckNEUndsMmlpTDZPUmtLTEUz?=
 =?utf-8?B?a3RnREM2YU5ZSHZ0VjRsWWJxZmtaR2pNZWFvcWVQRzRmdHUxdFI4RmxTaExX?=
 =?utf-8?B?M00rOWk0NTNHUUJwZzMyK1VFK3ozNDJ2cjlRTC9FTzJOY1RxMTRaWTBWK1Vt?=
 =?utf-8?B?c2ZpUm5PWlVCOWc5d0RIeHQ0cDZpcVMwMTRWMEJmYm1sUE9qKzVyQXp3VkV6?=
 =?utf-8?B?aVJnVVdhZGtwcGpBUVRJK3lLUlg0UG5sclFnYmc3aUIvTmdzekluVUJ1ZzRV?=
 =?utf-8?B?Q290TUtLbVlHVWhsZVhOMWhHNlFRSlFoK1FRZzF6V2FRSmE5WmhrWDNGZVdl?=
 =?utf-8?B?OUdaTThOZUlMSHVuV3c4WE11eUE1ZVlUM0xHdkZpdldnYVBuT1dFdWJsb0Vs?=
 =?utf-8?B?OU05bnd3ODU2WjdyZUp3OWRyc01kNHdaSHFTR2hFZURNakk1ZDN0eFhSMVFU?=
 =?utf-8?B?Z3BQVmdYdXdyTllLdDd3YVBOdm80OTV6ZUY1V2l2ZkJkWmg3TWRHY3VBc2ZW?=
 =?utf-8?B?b3pleWxlMEdkaTV2OWc0S25CQUZKcDlEaUhISlVYMVFIZXJOUnpGN3NVd241?=
 =?utf-8?B?Y0JQK3FyZFd0SXhtSjF4VGpveVM0eHBhU28wSUV5T2UyUjFVOUI1MG04ai9i?=
 =?utf-8?B?bk9IYkx1MDVRTnRpQjhPYlg4NHlHY0tHSHVaT0hnTk5xbFhoZUhaR21PWGVK?=
 =?utf-8?B?L1BOK00xTG1RMVNvT2c1NjloNzk0akhIMU5VOVFjNEU3bXE4SCt2OFZOZzR5?=
 =?utf-8?B?WEk0ZFRhRE5raDhGZ3VyMHdwbytCcFNDbUx6RGFnMW1BVUxURStSNU1OY3Uy?=
 =?utf-8?B?bjM3MGt5VE10WFUvWCtQcEdMQnhFYm9Gdi9OZ0pidlN3cEJTaE9ZeitKSElh?=
 =?utf-8?B?QTNxUFBnWFBMV2k1ZTg3d0JXcDhLWEwxemZmZ2F0UlV0bThnd0pyN2JBdXR3?=
 =?utf-8?B?K28vcnBrb1ZMWFZIeXhWYk44eXhMa3h4TVJuWnlXcXhaT1RXUldKTTdMTlov?=
 =?utf-8?B?Mkk5RUVLb2huUkc1WXRGNktaUG84eFJPWjFEOVF6c1I0L3dQdGVISmR2TWZ1?=
 =?utf-8?B?cTczRkd2UFZlUGk3M29zZlRGdy93YkFNY3hEcHkrTmJzTHJCcE5UaXQ5VjRp?=
 =?utf-8?B?OEJmdHZVaTNHcXJReVNSUkE0WGtwdCtqaXZiU1VYRHBnMExJdjNrS0VLajM3?=
 =?utf-8?B?RWlyZTQrcFZQckMySlAwQlJMVW1xM2ZENHg5OHFnaWNSaGN2RFFrcyt4RDk0?=
 =?utf-8?B?RHdDcG5sYU9UZ1NyWjdlb21rc0VudG1XeEhqSTEvUE1WQXVaQnM5VHJtQ2dM?=
 =?utf-8?B?Z3FESkFYMWhkQmUvS0VJTEJFOTdEV1ZYTmgzczBaRlBuZnR2bXpBVnNzRXpn?=
 =?utf-8?B?eERxVTFzZVNYZm8xN1l6ckNtYjBhUzBwSTNiSnhyN1dXL21WT2FSbG9NbTdH?=
 =?utf-8?B?aGxPSXZpc0JvOXJlbXJhWllKWjFRNHVpOElLNkpDd0hNTHN1cENLdGhhdlVS?=
 =?utf-8?B?UVJDa3NEZFpFQTJpL1d0VWF6TDY3WkdUTkVCRTVOR2dmUzFrZnVSdHlaSEdJ?=
 =?utf-8?B?MFZ4WDN3MUtxYXJ1U3ZaaUxWSUVGZUk1VDhwNytNbm9IL3ArNWFFcTV5MzJZ?=
 =?utf-8?B?K2RiWEJLOTdXNjIrN2RRWWQrUkh5dVg1S20yM0VEVzlhY3hPaXV1TGlrVUJk?=
 =?utf-8?B?My9ySHhBeU53TjJqcGFOUHR4b0FhcExFOU45bkJ4SEk4WTBmNVNDdEhQYjVQ?=
 =?utf-8?B?UXZ6UGZ2NklWeUlYWkt0OGRXS05IWTRVRW0rUjRjZzM0UzVMSWxlaytFKy8r?=
 =?utf-8?B?Zkl5cW1kUXh5M20rbGNucy8rTm03WFU5eUsvZzU0MURRbTllYm9ZdW4xY0ZB?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 316dafc7-4ff8-4a09-43ca-08dcc752b194
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 11:15:16.2918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mzwg6+e9bps11vyK/71TZkNg93lbR+9T1xqi2/1fS6IEMbttg25KUJbUenoHyy1u2VK0FQGkJ6PjklpdH7uaSzyqpDROwOb262OPKyfU0jE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7206
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724843755; x=1756379755;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E7GNP+NltxeeqfzlXNTI/mYIr4hb9Hx+T6FlTjPK6pc=;
 b=D1slrjVm13bE2lwblYiZfB06fyzIMuBZQItV/BgTc+fmFkx4jJNmiRL6
 EaEeyBmyRi9zoxKAltepYIo+SSuY9krJFrUrIug03mcJaeSJJDqEPt3w3
 o3lFhbAJAcfR9+DOV3X6TsZozIWG1UgUFZJrR5YiqQ9yHclbNSZIU8Jy8
 WxM/qDscPwlwwT3E2kh5K/efpVOpDtMJCDPWg/PDYDABOa3NdZCzQ4WOm
 582OUyjRkPnzFZc/Nj9sTm6Aw6l6wE+jbSAI9M7qakLEqJFe7pFi6F42R
 jILhQ+5XcDXKp0sxVvkSobBx6R1hwlzkNZta4+nN0scP2XcnCBQ+9FZmO
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D1slrjVm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 07/14] iavf: add support
 for indirect access to PHC time
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21.08.2024 16:31, Alexander Lobakin wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Date: Wed, 21 Aug 2024 14:15:32 +0200
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Implement support for reading the PHC time indirectly via the
>> VIRTCHNL_OP_1588_PTP_GET_TIME operation.
> 
> [...]
> 
>> +/**
>> + * iavf_queue_ptp_cmd - Queue PTP command for sending over virtchnl
>> + * @adapter: private adapter structure
>> + * @cmd: the command structure to send
>> + *
>> + * Queue the given command structure into the PTP virtchnl command queue tos
>> + * end to the PF.
>> + */
>> +static void iavf_queue_ptp_cmd(struct iavf_adapter *adapter,
>> +			       struct iavf_ptp_aq_cmd *cmd)
>> +{
>> +	mutex_lock(&adapter->ptp.aq_cmd_lock);
>> +	list_add_tail(&cmd->list, &adapter->ptp.aq_cmds);
>> +	mutex_unlock(&adapter->ptp.aq_cmd_lock);
>> +
>> +	adapter->aq_required |= IAVF_FLAG_AQ_SEND_PTP_CMD;
>> +	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> 
> Are you sure you need delayed_work here? delayed_work is used only when
> you need to run it after a delay. If the delay is always 0, then you
> only need work_struct and queue_work().

I think that Jake's intention here was to execute the work that is already queued,
not to queue new work

> 
>> +}
>> +
>> +/**
>> + * iavf_send_phc_read - Send request to read PHC time
> 
> [...]
> 
>> +static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
>> +			       struct timespec64 *ts,
>> +			       struct ptp_system_timestamp *sts)
>> +{
>> +	struct iavf_adapter *adapter = iavf_clock_to_adapter(info);
>> +
>> +	if (!adapter->ptp.initialized)
>> +		return -ENODEV;
> 
> Why is it -ENODEV here, but -EOPNOTSUPP several functions above, are you
> sure these codes are the ones expected by the upper layers?

I'll use ENODEV in both cases

> 
>> +
>> +	return iavf_read_phc_indirect(adapter, ts, sts);
>> +}
> 
> [...]
> 
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> index c2ed24cef926..0bb4bddc1495 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> @@ -6,9 +6,13 @@
>>  
>>  #include "iavf_types.h"
>>  
>> +#define iavf_clock_to_adapter(info)				\
>> +	container_of_const(info, struct iavf_adapter, ptp.info)
> 
> It's only used in one file, are you sure you need it here in the header?
> Or it will be used in later patches?

I can define it in iavf_ptp.c if you want

> 
> [...]
> 
>> +void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter)
>> +{
>> +	struct device *dev = &adapter->pdev->dev;
>> +	struct iavf_ptp_aq_cmd *cmd;
>> +	int err;
>> +
>> +	if (!adapter->ptp.initialized) {
> 
> BTW does it make sense to introduce ptp.initialized since you can always
> check ptp.clock for being %NULL and it will be the same?

I'll think about it

> 
>> +		/* This shouldn't be possible to hit, since no messages should
>> +		 * be queued if PTP is not initialized.
>> +		 */
>> +		pci_err(adapter->pdev, "PTP is not initialized\n");
>> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
>> +		return;
>> +	}
>> +
>> +	mutex_lock(&adapter->ptp.aq_cmd_lock);
>> +	cmd = list_first_entry_or_null(&adapter->ptp.aq_cmds,
>> +				       struct iavf_ptp_aq_cmd, list);
>> +	if (!cmd) {
>> +		/* no further PTP messages to send */
>> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
>> +		goto out_unlock;
>> +	}
>> +
>> +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
>> +		/* bail because we already have a command pending */
>> +		dev_err(dev, "Cannot send PTP command %d, command %d pending\n",
> 
> pci_err()

sure

> 
>> +			cmd->v_opcode, adapter->current_op);
>> +		goto out_unlock;
>> +	}
>> +
>> +	err = iavf_send_pf_msg(adapter, cmd->v_opcode, cmd->msg, cmd->msglen);
>> +	if (!err) {
>> +		/* Command was sent without errors, so we can remove it from
>> +		 * the list and discard it.
>> +		 */
>> +		list_del(&cmd->list);
>> +		kfree(cmd);
>> +	} else {
>> +		/* We failed to send the command, try again next cycle */
>> +		dev_warn(dev, "Failed to send PTP command %d\n", cmd->v_opcode);
> 
> pci_err() I'd say.

sure

> 
>> +	}
>> +
>> +	if (list_empty(&adapter->ptp.aq_cmds))
>> +		/* no further PTP messages to send */
>> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
>> +
>> +out_unlock:
>> +	mutex_unlock(&adapter->ptp.aq_cmd_lock);
>> +}
>> +
>>  /**
>>   * iavf_print_link_message - print link up or down
>>   * @adapter: adapter structure
>> @@ -2093,6 +2151,39 @@ static void iavf_activate_fdir_filters(struct iavf_adapter *adapter)
>>  		adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
>>  }
>>  
>> +/**
>> + * iavf_virtchnl_ptp_get_time - Respond to VIRTCHNL_OP_1588_PTP_GET_TIME
>> + * @adapter: private adapter structure
>> + * @data: the message from the PF
>> + * @len: length of the message from the PF
>> + *
>> + * Handle the VIRTCHNL_OP_1588_PTP_GET_TIME message from the PF. This message
>> + * is sent by the PF in response to the same op as a request from the VF.
>> + * Extract the 64bit nanoseconds time from the message and store it in
>> + * cached_phc_time. Then, notify any thread that is waiting for the update via
>> + * the wait queue.
>> + */
>> +static void iavf_virtchnl_ptp_get_time(struct iavf_adapter *adapter,
>> +				       void *data, u16 len)
>> +{
>> +	struct virtchnl_phc_time *msg;
>> +
>> +	if (len == sizeof(*msg)) {
>> +		msg = (struct virtchnl_phc_time *)data;
> 
> Redundant cast.

yup

> 
>> +	} else {
>> +		dev_err_once(&adapter->pdev->dev,
>> +			     "Invalid VIRTCHNL_OP_1588_PTP_GET_TIME from PF. Got size %u, expected %zu\n",
>> +			     len, sizeof(*msg));
>> +		return;
>> +	}
> 
> 	struct virtchnl_phc_time *msg = data;
> 
> 	if (len != sizeof(*msg))
> 		// error path
> 
> 	adapter->ptp.cached ...
> 
> IOW there's no point in this complex if-else.

Agree

> 
>> +
>> +	adapter->ptp.cached_phc_time = msg->time;
>> +	adapter->ptp.cached_phc_updated = jiffies;
>> +	adapter->ptp.phc_time_ready = true;
>> +
>> +	wake_up(&adapter->ptp.phc_time_waitqueue);
>> +}
> 
> Thanks,
> Olek
