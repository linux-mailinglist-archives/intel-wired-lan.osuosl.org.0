Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3707A313F2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 19:20:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7331D41692;
	Tue, 11 Feb 2025 18:20:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hm2hoj4hTspN; Tue, 11 Feb 2025 18:20:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2807B41677
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739298005;
	bh=83RfRrcazeiwgLnPCN38ixNOBadMLK5oft3Yuch4Uy0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D0TUtf1YIk1fzJFG0nddclV5kXgghj+R9jXBR/ABdV/Wd5gQ/veI41QnHtuPE40zW
	 3+1XPiK71w6ksDstDrRtPqROFEbTz7yWpY3eQNr5nO0inR2Lmw6vU6qNVH6TS76xvS
	 BkUUdu1RnRhguNqQKyhEpkaMLpPh4XEB5fEttTHPKtjc5Wh6fli6lLllchDwBXgiQd
	 d7RyPkJg4A546jDy5pdcsNVct8Z1CqCnNG3GEcXlQj8d8c5OGclv3xwZ3WOQNpBRuV
	 0F5aJQDSHeHpNEVZIKBCmxmJOCFLPTS21aKZuUhKpcDiCY8SNFCSpYAJINV1wi8b8W
	 XsEB4wknU6iag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2807B41677;
	Tue, 11 Feb 2025 18:20:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 19F30C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 18:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA52440417
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 18:20:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZkcWcZ4Do6Wf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 18:20:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6FC03412B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FC03412B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FC03412B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 18:20:01 +0000 (UTC)
X-CSE-ConnectionGUID: UNlN1gqDR5aXGxFv9Y7AoQ==
X-CSE-MsgGUID: P4YprsjCQgOmnI+/1karCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="42776535"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="42776535"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 10:20:00 -0800
X-CSE-ConnectionGUID: y6TaXSdASLCkjYE0HXIYEw==
X-CSE-MsgGUID: TS+m4C+FTNeKos0IPdK9WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="113229281"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 10:20:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 10:20:00 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 10:20:00 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 10:20:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XSQUC6ZKacVKHX9MG2Yj5Sux8p0A3mqXzII+UpwyXMipGcZfQMHHYaDRAAqC0erikde156dl8o+EEexVE3pmICCOwTfcmPt5xGZvRVirQ5cYc7ea1iAU0cbB3zRROwRUFveg7Ccp5U07y160Xysr/IcuEjZ9GqPvmd1jwaZ1zQvoNYk4P1AOs5JfjLZwZHviVydCefaIgmDtamtj8VTZZxAd1xBGOD8auFI9RTNxz6uhhLD1U/ToxoIpbHZX7h5SKjcLnWYS7aL1nti1nkZi9RU42JaMIw/9AB3h95EWQ1QX0piJNHz30yfLa7GxQ7921mhgWiE+HGci7XohVpYnjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83RfRrcazeiwgLnPCN38ixNOBadMLK5oft3Yuch4Uy0=;
 b=rkF1eCbfh1kaAVYYTXs2gO2xwxiscliylS4MbwoSQgg3/Ffh0eB+53HrsSm+oTiijYcuBMY1e6A0XY3KctXmo7sLKUumfczAdMMu6883AvBcr7nw6uM2DNLrvuPwAERve1mClHHyWLfMSiwzElslsjbqeoJ0i85r63NHmWWILsKRyxHuK+k0ZaEBipxFiFOaa5d+0xKVpTBZbOW/F73UPIHS/JYbCa1ZFWYQXcT0iIJTI9QfLXBtSo9N8VotkYmBXfNvy0CH0CP5WSM42H0mYMz28gg39REaBFJOdDww5w7hwn8hKK9VpYuIMt4wJ0a+YmVaF3IrjBLH34CG4RQNFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 18:19:57 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%4]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 18:19:57 +0000
Message-ID: <75893f75-223c-4b36-a2c1-8c9576438c4f@intel.com>
Date: Tue, 11 Feb 2025 20:20:03 +0200
User-Agent: Mozilla Thunderbird
To: Stephen Hemminger <stephen@networkplumber.org>
CC: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20250130091111.46358882@hermes.local>
 <531227ca-89fe-4398-8cba-3647be509454@intel.com>
 <20250130172115.2a116ccb@hermes.local>
 <531e3767-05c8-cb5f-6f3c-1860125ef408@intel.com>
 <20250205201327.7a4555cf@hermes.local>
 <4f913b04-36d1-58fd-bc93-666eaa6cc756@intel.com>
 <20250206120903.19db6882@hermes.local>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250206120903.19db6882@hermes.local>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0009.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::18) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MN2PR11MB4760:EE_
X-MS-Office365-Filtering-Correlation-Id: 57401e4a-4b00-4ed5-8143-08dd4ac8b097
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTdGS1g3VmIxeCtueElBUy9QQW15dXBVMFhGdW82bHlOSmV2RWZmVFlmR2JV?=
 =?utf-8?B?MllhMklHaG84MGRycFdKZWliQzQ4VTZBK2Z2UjNNaHA3Z1EycnVsaU56bnFM?=
 =?utf-8?B?amNqaVhaNVJJOGRrOGZBSXBqWTVRMm12T0dSU2JCL1h6VFdrR0xpZzlYNkFS?=
 =?utf-8?B?eVlQcWdtWTVQNGN3Q2xCd3I4RFdIUGZjNXd3czNRRS85aFRWY0xNeW9Mc0w0?=
 =?utf-8?B?Qk9XVUVLVHhrUDdvcnRGMkpvSTBhYUg1MXJJamUwcGVXYnVRU1NSNVhRUmcv?=
 =?utf-8?B?RGtxemhHZ1dDSjZORnZYK0RQSVFvVEN5ck1SSlJRSFQ2ZjM5UVNHdnRqamlr?=
 =?utf-8?B?eERGS3dteC9PTk9sMmlvd203ZTdidVVxbmZtNEU0eW5peSttcFFKcVVzVFBZ?=
 =?utf-8?B?RWxSbEtSVTZWeUszdXpJUUJxRzNvbHpWTG1BQlI4NWN4dzlCSXNvMFVRcmx2?=
 =?utf-8?B?TVNHdnBDblR0MkVMWU90UHhCcTdhby9nN2lEcTJqbkRVK255MS8yZW9MMHlr?=
 =?utf-8?B?ZGY5b2x5NUEyTEx3Y1h5ZHlhNUM2LzIvZCsxeWNkczgzR21aTGI3bHhaNXdo?=
 =?utf-8?B?RFdnbWpESTgvR1ZOcHo2RmxUVzJZUHpaVjVqU2pmRHNVUUJ6MkI3Q0I3QUxw?=
 =?utf-8?B?dkNkL3JaRHIrMzJqaFczMi9uREt6amFhUk1XRGFiL0VnRnlpblFEeHZKZXhs?=
 =?utf-8?B?dG5RMENTeFhCSGFjZk5sSkdWR1p1TWFjMFhtcG5SY1YvSkpJYTRSR2ZyVXZn?=
 =?utf-8?B?OWJBOHZubnFuTnVmR3g4dlJSRFFyKzA3Mm5Bb092RGU0Q3BsYlZ5THY2R0JW?=
 =?utf-8?B?TXN4SFhKRnN4YjY3Yk5EVFViZWwwSlF6a211TUdVdExNdVhIbVJ3WlhpNExT?=
 =?utf-8?B?aVhBa1pkUGxoVnlQQ1NyY25tVlFHWGFubFU3MURudklSczE2ajZoWUZ2OHR3?=
 =?utf-8?B?SnhYUWpXWlo3NmVkQ1J0OFMwd2M1bnFKOTJYR2VmbHNLK0Ruc0tndytmaVhi?=
 =?utf-8?B?OVdmbHdVS3c0aVY2VldTNHhMWmlIdUZDQjZLQ28xak9FWXBhS2xhc1UvMSt0?=
 =?utf-8?B?QXMxVkt4eGZaS21rL0ZCQytYeFJMUlVzUVVvUW1HcjlUaFV5NGE5ZW9tSkRZ?=
 =?utf-8?B?b2ZXeFI1aVd5U3l2cGoxL3RxcHNLTmd3VERNQXNET0ZZOUdnNDk0Tmh5eWhW?=
 =?utf-8?B?MnVFNlQvV1lCeTkrdjcyNEhuWmdmaDdvakM1MmlCUHNacEZHOGRyWnpKVWRa?=
 =?utf-8?B?OGdtVm9UL3l5WGlidzVsbzNXRkhUQTRrT0Evdzc3UDd1ZjRxVC9yMmUxKzVY?=
 =?utf-8?B?RHh1K0FaclVTOE9yN2FVVWNiWlZCR1p3cjE5WHQveXBPMnAwSEdYZjFaUTRs?=
 =?utf-8?B?MEVJZk9CTVVvRmpYYzdYdE13N0ZaZURVV1NrVmpEUXNacGxrcEdXQjdkSmVD?=
 =?utf-8?B?eEh1dlVGNW5rV01SZDNqa3pWS2wzbUJ1N2lCOWdMQzRZTnc0UnhLb2xoUnZy?=
 =?utf-8?B?bkd2YXFqLzF5N29ZNFZqUTd3M0t4OVpnRnRLRDR4aXN6Y09zak03NEkyMVh0?=
 =?utf-8?B?ZHFsZjRHOHdqWlVheTRXc1k5T0laMHJUVzZBbldvckE3b2Njb1QvQ2FRN2ZK?=
 =?utf-8?B?ZDdmckdCNEpBZW1FVnRoZGN4SmxOMnlybnlUWTVQSTRySXFaSDRBVWJHdGlr?=
 =?utf-8?B?a1d0QlRtQmp0MWZFYkpDY3dzUkNLMDZVL0NISm9WUXdEUldTVGRKdGs0R01J?=
 =?utf-8?B?aVU2TWpVL3kwK3BqRGwrL052YmxlWTBqa2hlRUNaRXBMTS9ZMzQzdGRYSXhV?=
 =?utf-8?B?amp5UjlFeEQ1VHY0T3N4QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnVad2JzMHd1YUhyUFVzTVZtR2ZraHFob1RLbnoxbGh6aW5jOXYzdTJUSzZq?=
 =?utf-8?B?UUNPTVYxRnhBK3JjVlJkZUJwQklnK3haZHkyTjBZYmxWckpWQVJvb3hBaWxO?=
 =?utf-8?B?dFlBYTdVOVVuNWRBUU5kTXI4d1BzdUE1N3FrZmhSblFYdlhiSDBUa1h3d3Ey?=
 =?utf-8?B?aFdIM3ByRzFIMTFKaEdsVmtaSmVCU0dWWEsxdSszK3lPTXI5YXZYTnZab2Fu?=
 =?utf-8?B?djJIZ0NnU1AwZWRVZENaMlJuRENaOEwwQnNZakVSaWgxZGRQTHNvcHZTZWRk?=
 =?utf-8?B?QVR3V3pkN3ZNYUZXSitvMm1aRnJURE1TSWdzRmxwZW85QWJCbXVPeGJOVWNJ?=
 =?utf-8?B?MUUrOHl6L3RHL0hjTDhyQWxHYngzWDB6U3k2QmRSWUdSNDRtQWZOamROOTUy?=
 =?utf-8?B?bk5IOEdaejQ3dWV2UlA0TXBRVEllVkJJS055TmJNM0gvS2NuQVlUNFA1N2d0?=
 =?utf-8?B?Z25ZNGVaT0NneFdaRy90Q0dMdDQyZDEyWmplSnV6VFBNbDNoM01BMGhTT3Zv?=
 =?utf-8?B?L1dDZFJiVjZsSWV2RjU1bDZoNzVNWGxYbGdTeWc3dm1za0V1dTFKVEpjSUdv?=
 =?utf-8?B?VE02MnVUN0lNVlZPbGgxbjhPVmpQWnJPcDdWVDQwaStCeW53Mzl1RzUzWWM4?=
 =?utf-8?B?amZrcm1MZmFFL3RFTmxDQzdzNjFvRWQ4UHg3elBTd0Q5ZnVwMDNnVTZXQ2FP?=
 =?utf-8?B?UjNsNnZHaWswb3NMMXhMazQ4OWlMSWh5Z0ZsR2NVVG9QT1FuUnFISjdjT2Nh?=
 =?utf-8?B?eXdYUndXOE1EVDFPOWZGOEVaeVdzbHp4REd5ZXZGU05WOU0xWittNFJTb2hD?=
 =?utf-8?B?V1lpL0dGV1gzaDFxbG9zeVZnWkJ3Zk5NZnlJZTlpMDNrWW5WdHhmY2drV1FU?=
 =?utf-8?B?VjNGbEZndzV2eGhIbEhoanpxaHkwUjk1UlZSZlM0TjJQcHJyWXgwNWU5bXZB?=
 =?utf-8?B?VnBuVTl3cHVXbEJYY2VyQVAvWmxXazM4bkJDWFQ4eERRUnFVWW95bmR3elpW?=
 =?utf-8?B?YU8rdCsxaGU3dXdNZHBEWGJzYjdWK1RaTHNUa0RBZ08xVFUrdlV6UmUzQWFO?=
 =?utf-8?B?U3FveUVKNlFSR1pwZUJkY3NkZytwNlQxM1hjRkd0RHl5eHFpUnByOVN3MzAr?=
 =?utf-8?B?YjJFSXh4NUQxSlhId0N5ekRCems5UmZ0djdKOTEySXNJcjBTK1E3ZjhaT1gy?=
 =?utf-8?B?bHE0MVgraHNpUWYxUkRaME8yQTRaZHBKajdBMWVjZlV3OE5QdXllZ3VUWUQ2?=
 =?utf-8?B?ZkhaRnVheis4OUQ0ZldxcWVCMnJJNW9RdDFscm1rSWQ5ekkwQzVWeUw0N1dD?=
 =?utf-8?B?N05qUE1xeUt2bDZBVm4veE5pOWhWajk2UEZnMnFDOGpqSytiOCtnamMzcDJj?=
 =?utf-8?B?UXdMTjVvQ3pZdG5Eb1QyWEVwS2FKZnQ3b21SeVEwakVtWFRoaHlXeExVWmV4?=
 =?utf-8?B?L1pYMVVhY0FCWGF4K1R4RndoQ3RJNDc5dUI2KzVBVXhMWmZSVG1yY1NQUnFq?=
 =?utf-8?B?bnpnMFV3TUV3K2NvQURQM2FieHZnb00vOXhlZmRGVElYc3doeUo0aXdmTTZk?=
 =?utf-8?B?My9mM3RRUC83K2xVVkc3RTd4T1R0bWVNMmhSQnAyYlNGdFAzcEptMjd0UDRk?=
 =?utf-8?B?clVUWUUyR1p4SCtwV0g4c0tKZWp0cmJ3ODdEL2Y5eE42aDdybUMvbzN2S3dP?=
 =?utf-8?B?azdkQ0MxU2crMUp6eURTWjlVVk9rbUJXZlowNnBwRURkRnlrdm1SdUdXV0VN?=
 =?utf-8?B?eEFrTGhoK1pwRnhoR1ZmRWNrM0diZ3h0ZDUwenVxMWhZcEZlRGpnNVQzalgv?=
 =?utf-8?B?SDlISGplTjZGanZ5VVNtRkV4R0trOHA0czRaQUkrck5TK1h6WSt2ODNiT1dm?=
 =?utf-8?B?NVcrcjg4bWFnaTJoN0EzK3FEU3FuY2krYmlyMWtJYUI1SytGUnJLWjVvV1NZ?=
 =?utf-8?B?M1dKVmFIUWoybklGR1dndUlOVmdwbVJiTEg5aHZlUDJQV1BUWTBQS3ZGVTY4?=
 =?utf-8?B?M2RiajBpL0hTRjdZbXVrby9PaEtpSXVqS29MbVYyWUxacmpQb015Y0VCS3hU?=
 =?utf-8?B?Y2F2a0RldjA2Q0htc0Z2ZmR0dklTRnJ4bDNvOEgySjkwSDVVZ0dIUUhuTnRu?=
 =?utf-8?B?WFJXNnhzQmpENkNwV2FWeVNMeXA0NmtGU0ZUc2J6Wm9iSm45ZHYwSEhvRVlI?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57401e4a-4b00-4ed5-8143-08dd4ac8b097
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 18:19:57.6494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fqD8SoZPfjHbr2s0HEXTQNJXp6PZJ7bTXzm6EtSqbEDlFzg8ZY0xcnKH+XjIt1UIROdswOp72TPRew2EpG5R7Q7iVfbPeYx/JlV82tuEqbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739298001; x=1770834001;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9CA+D7kMgQxdujiINy2/dp6eerxumMhfRRUDifVk9j8=;
 b=hBgiViL1x1O/0YArck/Fh/2MAsMI2eAatvvJCPJwuO7Afv9pJ0NubXpm
 OiyXgfN6h5gb/FXBlYy3S2KPmAzAkyreJnVrGeoqHKRDyqCLARmK1ibX9
 HZa1OR4g6Upeh1iWseez5o1Yu20R1sww2r5bsxnq5BqyhtRqmAEQfi3Au
 gFyugEaPKFbTgRrIsW6+fl80Lu33fFTDqTn+zmYE3a/alSBcnieYbhrWX
 QHP1UzY4zTH8uOD0o4yu1gf7R1I06W19Rdnym2vZZLPBc+qNtNBrJ55WZ
 qykWz0PnV7jun+v/ciALe8ugGInQvd3c5x3HrMxar2ca/sohAyPlV3VLM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hBgiViL1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] suspend/resume broken of igc driver broken on
 6.12
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



On 2/6/2025 10:09 PM, Stephen Hemminger wrote:
> On Thu, 6 Feb 2025 15:17:00 +0200
> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> 
>> On 2/6/2025 6:13 AM, Stephen Hemminger wrote:
>>> On Wed, 5 Feb 2025 12:36:31 +0200
>>> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
>>>    
>>>> On 1/31/2025 3:21 AM, Stephen Hemminger wrote:
>>>>> On Thu, 30 Jan 2025 21:17:30 +0200
>>>>> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
>>>>>       
>>>>>> On 1/30/2025 7:11 PM, Stephen Hemminger wrote:
>>>>>>> I am using:
>>>>>>>
>>>>>>> 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
>>>>>>> 	Subsystem: Intel Corporation Device 0000
>>>>>>> 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
>>>>>>> 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
>>>>>>> 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
>>>>>>> 	Capabilities: [40] Power Management version 3
>>>>>>> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
>>>>>>> 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
>>>>>>> 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
>>>>>>> 	Capabilities: [100] Advanced Error Reporting
>>>>>>> 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
>>>>>>> 	Capabilities: [1c0] Latency Tolerance Reporting
>>>>>>> 	Capabilities: [1f0] Precision Time Measurement
>>>>>>> 	Capabilities: [1e0] L1 PM Substates
>>>>>>> 	Kernel driver in use: igc
>>>>>>> 	Kernel modules: igc
>>>>>>>
>>>>>>>
>>>>>>> Using both Debian testing and my own kernel built from 6.12, the igc
>>>>>>> driver appears broken after resume.
>>>>>>
>>>>>>     From which system state are you resuming?
>>>>>>      
>>>>>>>
>>>>>>> After resuming the device is down and no address present.
>>>>>>> Attempts to set link up manually fail.
>>>>>>
>>>>>> Did you get any errors in the dmesg log?
>>>>>> What is the firmware version on your device (you can get it by running
>>>>>> ethtool -i)?
>>>>>>      
>>>>>>> If I do rmmod/modprobe of igc it comes back.
>>>>>>>
>>>>>>> Doing a bit of bisectting but it is slow going.
>>>>>>
>>>>>> Meanwhile, we'll also try to reproduce this issue in our lab.  Could you
>>>>>> share more details about your system so we can create a similar setup?
>>>>>
>>>>> Given that error reported is -ENODEV, might be a generic netdev problem not
>>>>> just for igc device.
>>>>>       
>>>>
>>>> We weren't able to reproduce this issue on our systems, even though we
>>>> tried several suspend-resume cycles on different kernels and different
>>>> systems.
>>>>
>>>> However, a few days ago we received a comment in a BZ about an issue
>>>> similar to yours. In there adding a short delay in igc_resume function
>>>> https://bugzilla.kernel.org/show_bug.cgi?id=219143
>>>> https://bugzilla.kernel.org/show_bug.cgi?id=219143#c123
>>>>
>>>>
>>>>
>>>> Can you try to see if it fixes your issue as well?
>>>
>>> I tried the proposed delay and it had no impact.
>>> Any idea of other things to instrument?
>>>    
>>
>>
>> Has the adapter worked with a different kernel? Can you try to reproduce
>> the issue over kernel 6.9?
>>
>> Is the LAN cable connected to the igc adapter? Does it maintain link
>> during suspend?
>>
>> Also, I saw that on your board you have three more adapters, I assume
>> that enp2s0f0np0 and enp2s0f0np1 are i40e adapters. Does this issue also
>> happen to enp87s0?
> 
> This is a new machine, and not sure if it ever worked.
> I can boot some older distro via USB if that helps.

Yes, please.
It might help us in narrowing down the issue.

> 
> The LAN cable is always connected (it is a desktop box), and the
> 10G NIC's are not used; they are connected by a loopback cable and
> used for DPDK testing occasionally.
> 
> It does work in Windows...

Do you work with Network Manager? If so, is it possible to see if the 
issue can be reproduced with it disabled?

