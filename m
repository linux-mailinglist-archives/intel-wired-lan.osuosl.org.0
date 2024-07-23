Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD8293A9C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 01:19:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1219405AA;
	Tue, 23 Jul 2024 23:19:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DKhuPfl6T2S5; Tue, 23 Jul 2024 23:19:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AE804030A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721776782;
	bh=RrIxgO9u0MwyIvAxcAcO8qIkyZVFDOQnqlEiE5k1uX4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NZZ9bojCB+5xZjuoRA9uYITfog7t+htYi4ZTBz/bf1RFpkA3PL69usJ+CobDXpc76
	 HM/rNrA7hKDTm/cGidFTT+YHkc+wTzQpWbjQrytfIg4Oe7AxLuJZ3TpPmGaelyC9LZ
	 kvQ4r1Loj/yIV0Ny3nsSDVNCcVx/XACB4QjPoszEUpCgO/XyLCpevll6BqJOh8vJrR
	 cNsha+k5BbUbAhApnf5Erpx3QzoeGUEfOw9ql4TTtlhjKTOPw2rZYLb0mp0rqIRVXl
	 CzcZTJJnJggHG4VuJ5UeUZSjMksvoNi8yRfH3bL68yemEtESwOt2JlmuZzgaGFIkNW
	 kP3s+LcPuI1rQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AE804030A;
	Tue, 23 Jul 2024 23:19:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7EBF21BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B95B606D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NsJubDmbDTtK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 23:19:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C439606C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C439606C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C439606C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:19:39 +0000 (UTC)
X-CSE-ConnectionGUID: HwU05wnmRSmNMub6UjO2kQ==
X-CSE-MsgGUID: e2rID5BeSci1vsoPRM08Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="44852847"
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="44852847"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 16:19:38 -0700
X-CSE-ConnectionGUID: 4AGELPpNQe2lbRJZcVI3Mw==
X-CSE-MsgGUID: WY5vAoKyRUiHEa0G+s3ANA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="56926224"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 16:19:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 16:19:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 16:19:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 16:19:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 16:19:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ii8f10SABfJIGJVdQ+Sjovnh9WJ61Rcq2ltR/+1Xhi4SrxfTDRFYHI5ReXdE2lc7x6slNLZ8hxsFYEYnHpGHwr/pWDVd5PL86mGuyxk1x0w7vJzJ7zY9qnnrnWvOR/UFCZPSPmHXroQT7zxhaJ5qcUTY3qZE30BUNPGVXd2uK+ARQ7Ktn+lsKny4lCERzBGorgifMhSd+POzHwpxXPgtEinnyhWdk7qTR6VFjhS7hOwHOuVnFN7Ou8WKBJrif7XQ2XCeWfDpSd1dMK/qoG76nisXFJ7ybxJbrXile2ObASe30uNAHB2bLYYuvcacFKB3kTKUIqTD9HQrqdjxLRVjoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RrIxgO9u0MwyIvAxcAcO8qIkyZVFDOQnqlEiE5k1uX4=;
 b=qP7qTb6joQIeTnuNwcU668r+NvxdCwFMG10tLfPoV7iX/6YRg8vt7h9xXSrApp0mrbFN3ycDy+bKVi8nKij2RFY2fmGNgYfu6IxCOEsGjv58d5VlIGWPkAltezjV4YP/1YS1C/bPHGkTcu17vEMURdRul2vn3IMOj1GaocWCpDVy16QiEfNXsAjr/o0N4liH/AbG1sOUsus4a4qbFL9ls7jqhZwaRM5ytjMn/YXaQjO1LWky11uuEEanpG/LVxYi32EhokX8v3lUBPEn6Sj2MEYn/C1Pwp1Kf0iGTDapC95SYra9eFXwc103B8sIAqFJcod9GSDTLzLO81V+I7TOOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4927.namprd11.prod.outlook.com (2603:10b6:a03:2d6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Tue, 23 Jul
 2024 23:19:35 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7784.017; Tue, 23 Jul 2024
 23:19:35 +0000
Message-ID: <1121750d-2346-4d90-b303-c8de0f06662f@intel.com>
Date: Tue, 23 Jul 2024 16:19:33 -0700
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
 <20240718105253.72997-5-sergey.temerkhanov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240718105253.72997-5-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0014.namprd06.prod.outlook.com
 (2603:10b6:303:2a::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4927:EE_
X-MS-Office365-Filtering-Correlation-Id: 32374b26-95b6-46b6-e068-08dcab6dea97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTlkWGRhM2pUeHFTMEtMMS9sTTRKamptSlRyL1I4TlhoUkkzcmdwOEw3Ynpy?=
 =?utf-8?B?MTUrd2NaQ2pxdThqdlZTdnlTRzhINVdDK001YU94NSt6OHJzcjU3cDEvRVBO?=
 =?utf-8?B?Vk1rUEQyUnJ1SkZkY1c5YXFlUnllSml4TzRLbVBmM3FHNS9SNkJVOUo1b0FD?=
 =?utf-8?B?V0FMNlNTaW1QR2FlblYvSkpVUTA1a09Ycmp4Tkc1bzlmRTB2eTAyMHAyVXNJ?=
 =?utf-8?B?OEdJUThGNU4wRy9PMFRRYVZzZ2lrMkVkb09heDQ0RmtyaGplaEx5VENkVUlz?=
 =?utf-8?B?d2hFdm1XRWFja3hDcVpZRjZZK3Z4WXBpV0loa0Z6ZVA2NW40eUU3dTZSd1J5?=
 =?utf-8?B?cDR2RDd3bEdOVDZ6R1RmMEJnak81eGFsK3B2NVZxVWN6aFpyRnZJUC92dWtH?=
 =?utf-8?B?dHY0b05ob0RyL1hSb0FvTFh2cnVSR21oZ2tzYlNWaThkSElzSit0MHZaNlhM?=
 =?utf-8?B?d0g0T2NLU29LcHRiTmdUbXVYWjJxNFBkaGxBeEtzUGZKMVZBN1luMDRDbnVP?=
 =?utf-8?B?alRrY3lnRWorUDNMRERyTnZsSWU4MGJjdjB1S2pKdTJkMjhyQytpV3d0ZkEy?=
 =?utf-8?B?b3lQMnNISkxnTUF1WjBXalRZR2RzNlo3bU9RcExYU0hORlZXMElIQWJ6OWpD?=
 =?utf-8?B?RFh0QjY5SnN0bXdpS3NpdmNZZTh1SCtUS2JqaFI2OU42dlNZOEkrcDEyZEkz?=
 =?utf-8?B?aG9aeFpLSnBTeTQ3SDZxaVIyRlF5bFA4V0kwRURlSE93MVZmbC95Y2ROVUVK?=
 =?utf-8?B?ZkZXbGM2K3ljYWM3ZE84d3l6T2dzZnJjRDloRVNsK3RWM0ZxMk1DakFHQXhy?=
 =?utf-8?B?VHVnejAxQ0Judk9abFJFTzNmK1JIN0dXOEZNZzY4Q3JyUTdPTjJKWmtCYjVI?=
 =?utf-8?B?Y2JzUE5zWjlaVzA1OUNtdVU4YUxrWUt1VktWaEw4YVZ2SU84cFMzRm01N01o?=
 =?utf-8?B?VjNhdzNmdXN1RU5OUlVuZWVBRGpOYUxDM2UwSEVwVmVJNFV5VUw1SWlHZ3Ay?=
 =?utf-8?B?L3BibzBYelIrQ2s5ajlwVHZkQTErNDRTbmdnNCs4S3YvK1ZIeEJDWEZ4YW01?=
 =?utf-8?B?a0NiOXgzUmlBWmVoZ0FOTi9ZZXhmR2NwUUh3TlJsbE9RMjBXa0c4c053YThN?=
 =?utf-8?B?WTBmMDVPeXJyMzhDNlZ0NTNacHREVTdlNndzNEluZlVTWnc5N1lLTUVUMm1r?=
 =?utf-8?B?WVM3bkJxb2wzbVFkYTd0Mm1ndDhLSVVYYVI2RFFjS3cycklzNVVvVXBYTHlX?=
 =?utf-8?B?dXdaQXZ4Rlcrb1pjd0YwMWdUR0ZqcE5OVTExZ0VvQ2xrR09NQkJsNEt4WWNh?=
 =?utf-8?B?VGZmMW1keDJ1OUpoQmUreE9aSXhCeDA1a1B4ZW1sSTRCVEJqKzlFaU1ub0NN?=
 =?utf-8?B?L1NFTjdwTk5OQmQ3NG9HUDdFZEMzakw5ajNWZlhHa3lGUUdjYW41SUhWNFA5?=
 =?utf-8?B?NGE1RDlmeVVhZ25qeVZHOHZ3My9VTTRDQlZlZXZUYzdYTmpWaFcwMWZXeW84?=
 =?utf-8?B?V3pBWk1nYWtjVWs3dDF0UGw5eEUvcGtWNUZFMDRMd1R2MjFXaG5aTTdaVFlP?=
 =?utf-8?B?cUkwcWs5OWN5MjYyeHhlQmdDRVhuNXFIS2owS1poRDR0SkZFRFducnByelZ5?=
 =?utf-8?B?SUtBT0hvSy9XNmRUUTdKdUFVcU1FT3FHaFhWdU5ZUTQ1UENpdWJ1UlBMWlZq?=
 =?utf-8?B?VDU5bExzc05EL0lMNFNHU0RQdkpGMitNNzNJWmh3dEk5andMNjlGL1J3Z3Nq?=
 =?utf-8?B?WFBKU0hiZFB4TXFsWkgwb2hvb3hDZ2NDaXlaRmVFUUx3NFRjck5rdjZ3R3Qv?=
 =?utf-8?B?NmwvcTRVaFhiYWM1S1paQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkJqOWdENTdPZ1BVZE9sZURZNkdtcTZMODA2YVp6NTNnbkdJSFhxYlgvTHJq?=
 =?utf-8?B?MHZjd1NPUFlPc29WcCtqanRhRTM1UkVuYlpsZ2hsUlRTZUNFTExrWDRGUHNM?=
 =?utf-8?B?Qm5WRGJsdENDSlpRdEsyTHIvL0V2NWU2ZTkzVzM5MUhxbzJiVW0wLzVSV1Nm?=
 =?utf-8?B?T3VETXdVM3QxN2p5Yk8rUTdsUFdhdytKdVVtazZZdDJKenp2YUF3akpwK1RD?=
 =?utf-8?B?eVk5QmpucDVsZDdGd2VPL2djeGZuTWZxS0owL2ExTDJtVjZxZmRNS04rajU0?=
 =?utf-8?B?bGFTaDhaRnVLeERKSnhuaVlhNC93TXVzRkpVWWJmQmRHL25MeTdFWlFTNVhP?=
 =?utf-8?B?M1NGbWtsNDVCWENBb2xTWG9weGZ1OVY0VUhPanNtaWhCQU02N2FKd2paZ0cw?=
 =?utf-8?B?dndHYnF1b3lsUHZ6TS9VdUthTDZDbUl5MWlPNWVOYWxYSW1NQktmbWwxcFhD?=
 =?utf-8?B?RHZ5OE5iSmszSlRoOE9wSVV2RStaMFF4dGl4RDR1aFdtRXdXTUY4Yk5Wd0ty?=
 =?utf-8?B?bnB4UlMyV3BlT3djQVJZU1E2TUpWazdyQ2lJaFU2SXZWQzNxMm4wSjlPR1VT?=
 =?utf-8?B?Tnl3Ujk5aWNuSFFnZ1dxUGs5d3NXYlRqL3ZrWUNLRzFCdUd0WklpQjNMampX?=
 =?utf-8?B?T0J1ZHNYLzNVOHhnVWM4VVI3VGpZT2R0elFVY08xZDRDRkFUZ0VKQlFLcVFX?=
 =?utf-8?B?WWxxb1FRaHpoZ3NTcWhzSUxQSThiaXBlYm90NkxmdE1GNTNaRDlvZzhVNDZO?=
 =?utf-8?B?ZndheFNuTU9pRzNWOTdXK2dROEt1ODBwRE92VDZxaUJuLy9aVzU4VDdVZTgy?=
 =?utf-8?B?c0pjMjZGWVdYVS9FcHk4bnNYbTAyQXlkL0ZlUGhtS0tXOHMwdG9lQXFvQTZT?=
 =?utf-8?B?VFZnenpGMkQxcGRhbDJlVGM3MS9FM3ZEZmY4aXFkN3NxYmJHWWsrdjlFdjFR?=
 =?utf-8?B?Tm50ZVhTZUNEZkR1NmZDTzlPVXY0bzBhaU96QThKUGhsVXcvNnJYeXZRVEFa?=
 =?utf-8?B?UUZxNGlUQlJqM0plakVVdm42T2U1ZEZpUnVpVis1WFM4TVBwSDYyYlhoYUFs?=
 =?utf-8?B?aStwSmVUOXh5WUZSY1NYOWJXQkRDazRLbUlWNisyWHNSUlpmUlRsR05sS0tJ?=
 =?utf-8?B?YTlzRmRaYU9BWVpvZ0NBbWRIbHJmZlE1VDVGZkNQNFJ1S250TnczcFd0M1Iy?=
 =?utf-8?B?Z3BtRFIvVFlDL1NHSUxlSkpzd0FzL3d6VHErb1Y2eXNqQ2wzQmU4QWtiR1VI?=
 =?utf-8?B?MUZwL29tbURPN21lVEtBRCt1UG5GaElvc3JFODF0czlnTXI3YzIzanhQNWlx?=
 =?utf-8?B?VnlESnZaOEsxMnlnTU1KWHN1TW1iZ21sT0ZpbEtTTGtBRjhpNnRMNHhoWUpt?=
 =?utf-8?B?MFRlOTg5RWxLVk54U3QrcDY2U0NBNHFyQzVrZitDTEVySTVxaWo3aTdvWUow?=
 =?utf-8?B?RlplblN0RE1Nb2xUTkNoamRhdnp4bGJ1WTIwOHNXYkIrK0lwakZXSVR0anAv?=
 =?utf-8?B?WDhHdGdwcGlkVnVGMEZHRWltQkVISVp0WTR6MUdxZ0tmUm5INmthL3gyYXR3?=
 =?utf-8?B?VUp2SFBmamg4SjVKSWtXMzYxU3ovc05xZ0ZDMlRxOW44d0RKT1RiWlhFNXZU?=
 =?utf-8?B?RzZlRzIxZUU3dHJXbWFYTnFQN3I3KytnUE4wdlVmYkk2NXRTS1FSQ3lNT055?=
 =?utf-8?B?ZEM4ZTV1UWhsYnZCQjBQSWw1OWhWYWpvN3Nma0l0YVZET1g1dzNmc29tc0Qw?=
 =?utf-8?B?bTRIZFU1Y0Irbk5lclFlbU16ejFScUlpL2c3QjhLYzhXSjAzT0NzdDJRaUVq?=
 =?utf-8?B?WS8wTWxnSFFmTHlOa3FMR0lCQXBid3IrWUJxTnV3dk9vVG44NDJpZjduWkR2?=
 =?utf-8?B?aEVDVVVSdTRwcWlRMDNjMVRnRmUvU0I5QkRHZmZ3ZU1vQXBIS1dBVWtQN2U5?=
 =?utf-8?B?Y0FCRkVvMGdXTUdjaGM5cm43ZDZGQ1IvbnRZOWh3RUZKWDBPZUE4Vzd6d0t3?=
 =?utf-8?B?d21yaUljWjJpQU91cGNENG5CZmhTcnVlQmg4RFIyUGpxaUxFeUVaRGsxS1R3?=
 =?utf-8?B?UXdGd1FpRk1vY3pVdnZtdXpvWXlQcVJKVnZrazRtbmhFakpLd1ErdHhHMWJT?=
 =?utf-8?B?QVlua25vUnV6cGgzbU5hdXlwck5GcHFnRlphamV6MzNMOXpsRHZIU1d5Unlm?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32374b26-95b6-46b6-e068-08dcab6dea97
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2024 23:19:35.7843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lE7Rm9fmcA+M3u7O5W82+Kv1pok5vQ2X9QaLhQenmemoWnTCjXnq1Al7WOSBFwAaU2Yj3aHdfTuc/Ua3IFuObU3UEAa37Ubyfz2/o4mJ++A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721776779; x=1753312779;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gEI3TDetXGjpfhRCjPL032JURKN4z2Xr+Q7VME1Ddb4=;
 b=jlwUYUHcQz04pC6Eh0le9bW4ULzQTgw8Z1EF2EAqKoJgm42V/uoC+7uH
 34y1c0YS7O0hCn3s/zIDD7r6K3zggPF5d15bY74OrEOYxsG8jlNmLPny3
 FJgckP20zl8WZc11Rf1/Onl1xuw0+S8VIzaojhIvVu5iofALtLwepxYCP
 rAI1je98MkWyS5OaHtrXipD+r03ZsYY8JM8LkvYJtGFflbIvvjppvxywb
 o7fr0Ngicc80ccoXkqpD9e8o4OriipjjiUiUixMoDjlE68XMbe+e+A5jD
 97XtV6rB9fS7LjVzA28ZD+rT7j/y6JKexiFVEgOtG+14T80uKHRMRU6Z4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jlwUYUHc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Use ice_adapter
 for PTP shared data instead of auxdev
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/18/2024 3:52 AM, Sergey Temerkhanov wrote:
> Use struct ice_adapter to hold shared PTP data and control PTP
> related actions instead of auxbus. This allows significant code
> simplification and faster access to the container fields used in
> the PTP support code.
> 
> Move the PTP port list to the ice_adapter container to simplify
> the code and avoid race conditions which could occur due to the
> synchronous nature of the initialization/access and
> certain memory saving can be achieved by moving PTP data into
> the ice_adapter itself.
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  17 +++
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 115 ++++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |   5 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
>  5 files changed, 105 insertions(+), 43 deletions(-)
> 

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 1cf620eebc2e..48bc29182cb8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1514,10 +1514,10 @@ static void ice_ptp_restart_all_phy(struct ice_pf *pf)
>  {
>  	struct list_head *entry;
>  
> -	list_for_each(entry, &pf->ptp.ports_owner.ports) {
> +	list_for_each(entry, &pf->adapter->ports.ports) {
>  		struct ice_ptp_port *port = list_entry(entry,
>  						       struct ice_ptp_port,
> -						       list_member);
> +						       list_node);
>  
>  		if (port->link_up)
>  			ice_ptp_port_phy_restart(port);
> @@ -2967,6 +2967,50 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>  	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
>  }
>  
> +static inline bool ice_is_primary(struct ice_hw *hw)
> +{
> +	return ice_is_e825c(hw) && ice_is_dual(hw) ?
> +		!!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M) : true;
> +}
> +

The use of ice_adapter should also make it easier to handle the primary
vs secondary PF issues as well. Nice.


> +static int ice_ptp_setup_adapter(struct ice_pf *pf)
> +{
> +	if (!ice_pf_src_tmr_owned(pf) || !ice_is_primary(&pf->hw))
> +		return -EPERM;
> +
> +	pf->adapter->ctrl_pf = pf;
> +
> +	return 0;
> +}
