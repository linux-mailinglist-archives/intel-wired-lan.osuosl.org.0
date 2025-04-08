Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E08A81770
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 670B7607E4;
	Tue,  8 Apr 2025 21:12:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XHCTxjeOV0Lk; Tue,  8 Apr 2025 21:12:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9153F61122
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744146777;
	bh=ypeA4fcSjd7kF1aibeAbmp6wVJkxx8+9KVF6h1TqO5E=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6DafPFjlSqDb33rBQM07oHkg0R0oez+cIt0eu6Zig8qDzcd1mdd05JXwiRrqJCxSl
	 TJzIU21T8fmy3LtdmMSeirvwzchclddzn7VjW80Yf00fmeUyU7iNcEMg+6j6JpysKb
	 IGwjrBbwyz28aQwOv7vTOQAL7mrDrFpWImKCkpMXhVgEQZKqVQdkvfqGrrGPKO6keg
	 L3g/H7janeSKvy9RWsPC2Ck7RfaX5F329eul6uvXE/eNhv1g/7rxmJb4+j72O7ZrBn
	 zr24P4aDUOfU0hQlmKMNzeUYTDHbc1lWvcm2vY8NQ/NUwpD+5onQ1FaPe/2J1NwTYJ
	 Ds2rmlmpBdpPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9153F61122;
	Tue,  8 Apr 2025 21:12:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 574B51F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48E2841202
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DYg_3I5ov7No for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:12:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 920C440D35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 920C440D35
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 920C440D35
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:12:55 +0000 (UTC)
X-CSE-ConnectionGUID: yRF48jGrSBKcwuBskIQBJw==
X-CSE-MsgGUID: 4OTksC2ES8W1fzakrEimjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="33205709"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="33205709"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:12:55 -0700
X-CSE-ConnectionGUID: aw/yKJuPQfKSXb00vswHQA==
X-CSE-MsgGUID: 5QH7+dPHTzWQq9kCAB2c7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128293374"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 14:12:55 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 14:12:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 14:12:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:12:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F1CqUPTk5SJKufZNoj3SeMqWHdLPmTjyBfS63bikeXvlJCwane2jrZYiR2bjOQevzB6GbQ9GN8oa/7xb3df0YCIWc9GSRxbYXJS2jqfdiUBgOusySHV/fc64MXnhrpRA+0h+sgTz6LPJFbDo/ZM9Oz6noedSPkeyKlbpLFtlSyzxEIQHRlte5nteFgrRaUKIQtGnAyBRU9HIZ6eDiVSk3Bk7ud3vMa0W0Nt9huYLAKAykfAnItymYXOh5uHrSurbF3ETWqbbFHLI6oPIlqQtG/+W0gvIsPtGvK0YBAkAP9AbGFcAz/nYgN3uYPsp2/gRPuHGv2AFXad1hsz3od+lCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ypeA4fcSjd7kF1aibeAbmp6wVJkxx8+9KVF6h1TqO5E=;
 b=RCjHuT0hwLwDQLSqML2TusA4TUDHyabMrJ92fWjiZAgm1OJ0LuoMs7CEIe6ui08blpz0DnvIZmtw8iJeijVHfltbNyAILwOQk6ngqDMjv8tCLxzt5FB2ugomsR33u02Wz00n3Unw4NWgS1T5sxSOj4qnhEmIDGnoU3MpXk2YEzbWeM3J4eBKWnRsWzlhIak9z1PsP0PmRc81PUuPO/XQ6Y/pNtr7XNFpumIvhH9fHNpw4yCe9TXHA7Qpq2Vy/4TB/J+g5GF2Ib7ogyruPOr9RQWPcvBWNaydRSGxB+vnw9eVi5r9BGWCLdxeNcXCGB3SqBjM+ACfE98gBHMCTBgK6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BY1PR11MB7983.namprd11.prod.outlook.com (2603:10b6:a03:52b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Tue, 8 Apr
 2025 21:12:09 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:12:09 +0000
Message-ID: <754e6414-cbee-4216-9fe9-36c468d01244@intel.com>
Date: Tue, 8 Apr 2025 14:12:08 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Willem de Bruijn <willemb@google.com>, "Mina
 Almasry" <almasrymina@google.com>, Samuel Salin <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-9-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-9-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0120.namprd03.prod.outlook.com
 (2603:10b6:303:b7::35) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BY1PR11MB7983:EE_
X-MS-Office365-Filtering-Correlation-Id: 055c436c-31df-4cce-c7b8-08dd76e205e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzVicTBnRHJ3QythWkR3aUhQejJQSUoxazlBQVZ5a21oci9pOEs0eEsrLzUw?=
 =?utf-8?B?RWhyNk9YVTlMV1NjNmRaU1RTcG1GQW9LbkhVWDVGZFQ4enRYR0NKd05yTXlh?=
 =?utf-8?B?WUYrdms1NzR1dGVKOUU0YU9qZEFIbFlVRXpDMDl0MjI1QVVscVZSaUV2dDJo?=
 =?utf-8?B?ejBtNmp0NkFNbUFCSUQ4T1lUamRwaEpBS1hYSWxqNGlpWEJIaFR3L0lqdjd4?=
 =?utf-8?B?WktkL3NwUU0wdFEvRCtUbGVZd3UzRXRhWURFalJWWk5yeUpNMk1qdy8zaXJX?=
 =?utf-8?B?N1FocFl2WFRrNVNXNG9JbVVJNTFXQjc4S3pzS3Y1L1NidFF1SzNFMHpWQVlJ?=
 =?utf-8?B?bDhrVWJWdDFWRDJQR0EwMitWem5rNHBSUFY4Y2xNdERNcEEyclJoai9Zejkv?=
 =?utf-8?B?VFRRZE9UTVY0MlF2NnQ1THRMMmptK0h0eVk5UUtCbnB6Q3lQa1Y2elcyQ2Nu?=
 =?utf-8?B?WHIvaHdIaDR3NUVxYndCdVMyVGRWOUFDMGtaQ09XOG9NdklxNGU0Vm4wNnhq?=
 =?utf-8?B?SStLMlVQL0E0anRBR3dNSmQ4QVRQRWFkVHRxdkRzb2JIWkt5WjU0eDNyQXlK?=
 =?utf-8?B?U2ZhVGpsbEhGZW9yUmF0MGN5dEVFaE5yZzBwRDFPSjFkdlFqNytyM1F5K1FV?=
 =?utf-8?B?TjkzTENLL2dHMm1SQi9SZmowejRnUThMS0N6M21RamFMSmE3RXRPUjVFRWpY?=
 =?utf-8?B?OWxmbzl1SVppQy83d0ozWTIwK3M5d0VoWmNuUVd2cXJkTEhIV2ZaQVYydkly?=
 =?utf-8?B?MzVOeG9ENFgzUUZvYnR1aGNraXQ5RE5EN0NzcFZEbzhpaFdtQUhZNngxV1Jt?=
 =?utf-8?B?TyswanNJaEJ5WisrVDNwWjltaExiRkRNbHdpMVNTQzRRRDZZajBZenZXNTB3?=
 =?utf-8?B?L01LZldSYVV0NGZhaUJvdG5sUmEwbi9yNzE1clZBdlFGUWZYTFFjQlNyTGQy?=
 =?utf-8?B?MjVCTWt1WWh6R29YbXk3OW9KU0lYTE1qcFRmT2dSeU9OdGdRSG13SHlWa0p3?=
 =?utf-8?B?c3hxaTFBWHc4RmM5ZEhYMDg1Q2tHbVkyNThDQi9XaVF4RE56ZkptZE1NSHM0?=
 =?utf-8?B?V1ViYnhlaWhkSmhnalI1STFnN1hVTWRrTDVyOVYvTy9qRklweC9LYUlCUmU1?=
 =?utf-8?B?dlNXRnl3OGN2RDdWVkFNdGtTeVR5RkNKaElaMlBPQzdqOUtLaDQyK0xiVStu?=
 =?utf-8?B?enBvWE0xUlJzU0x2TnE0NkszaXlqZGo5R2pyN1RBRm40ZHNLR3I3eWVrOTVD?=
 =?utf-8?B?V0VXWnNTb28weEFtUmdFeUMwWDcvWmExbVlPRTFkTk4yMWx6QUxJbHhlWkwy?=
 =?utf-8?B?TFdncmF4U1YzNFI4WGxRS1I4RDNBd0kxMHJzdGVhREFtbm04RVlkNktnUW1G?=
 =?utf-8?B?MTFZQXNKa1IyaEFUa05iZStnd2dEY0xjcTEvWGo2cFFWWkhrbzd5V3EyeDND?=
 =?utf-8?B?RnNTWDBpYmE1R2N5QzRGSjM5dWV2NDViY0t1S2VmWEwyN2lIanpDN1ZBcFlt?=
 =?utf-8?B?L3dJTTJxMU5uME4xb3lTSnZnMDU4OGZPNUlmZjBrWC93Ym5VQ29hM0orbnNV?=
 =?utf-8?B?bUUxbWlXYktPclBoSGdySEFyOUFmOUNkS2dXSC8xTldHT3hOU0xUVXRPUFBi?=
 =?utf-8?B?aVF0cS81UW8zQ3BEbEN4Y3BlcFhqOWRtNDRCNnlBK1hKdVlCeEpWT1p0T3hZ?=
 =?utf-8?B?VG5FYjhQTFN0SGwydjY1S0E1YVg4a1NEeGN6dWtGaGpIZWprVXUzRkkyK1NR?=
 =?utf-8?B?NEtLT1BzUmtoYis1M0M2cG9lZ1YzRUxOVDBoNHRFRENpZ1RXZzQrQkMrM09Q?=
 =?utf-8?B?alozZnJQeWdibFlmbndzRyt2Mi9TTGRnVDRxK2g3ZkJibmdNT1B1N29OSk5E?=
 =?utf-8?Q?VduRdpOxFvYU8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2syQkRkYm1acVdVbmc0cmVOdG9JVGhHVFdDaDFTREc4dnBZQUNXZjFXN2ht?=
 =?utf-8?B?a3k4azMzZXZiUXFpbzRMSFE1bUx6Uk1ZcjVDZTJ6VVRMWG8xbWhHYk81MG5L?=
 =?utf-8?B?Wkd6QmpoUVFKOER6aTZBNE4yQmFQN1ZkK29ZTmpxNWxuYUZyL3BZMldIeVhp?=
 =?utf-8?B?M3VUZjE2RlNUL0MwMjIrQmxNbUNpSVJENEFtdi9MWUkxdTZadWlVT3NDWGRS?=
 =?utf-8?B?L1Q4K0pPQytuTnJ6aHdxcEt1R3BoTngwTFpKRmdxQ2daZWVjNnlBbFcrbG5M?=
 =?utf-8?B?Vko0Nko5MThoYTNOQWNjbWlzZTJSU2JpZW41WUNVVDd3Y1pxazFaOERaaDNP?=
 =?utf-8?B?WXRiSXZQSDVkRWNpVTYyODgrcWF6RjM1Y2VxeWFoMG5EWG85TjhqYlliS05B?=
 =?utf-8?B?djB1RkRmTHYvcU84T2ZkSGZtcDB0d1ArQXlyQkx3NG9USElLWWZ2akRUem4z?=
 =?utf-8?B?VTRIM0JiYlNGeVRSMGlFcWFrV2xJaTJIZzNLOFdyRDhraEEwQjkxMDlENFA4?=
 =?utf-8?B?M1VEZ3JDWE95YTRCR0piNEl0THBIcnhTNlpKMFh5UjdVL0g3Y0l6dWpnNnF0?=
 =?utf-8?B?NGhlUHJRNUdLZUZ1SjJuenBiTG9jZVdHNmRHQ2grYjdEUlpMeDBKTjRtL1ky?=
 =?utf-8?B?eXZ4TmxvNWtjTUNDUk5IbVNHMWpTY29CYjVZZEhpaGlPWWZoZ1R5bHFMcXJ4?=
 =?utf-8?B?QkdFYmZlbngwZlhUT3djZ1Z2WGlydmdjQWFWeWFsalJxYUQ2Qm9pazNlUnJO?=
 =?utf-8?B?MFUyaFRnQ20vZFpOaFM0ZGZqV2tLYkZiL3J4ZXk5SldZaU55NitZditJYmUv?=
 =?utf-8?B?L1RpN3h1S3ZCUnN5NUovOGtoZm1GVUJmWHBZby9EenpBTUhSdGxmSHk5WU1L?=
 =?utf-8?B?cjRIUUdiWnBRcmpnaDBhdUhWMm05ZHJqZ0tGcm1VRTN3bFI2TXdJdlh1ZkVU?=
 =?utf-8?B?RVpqdXh6MmJTUkRjZnE3cjJ0cDF6M2VWV24rY0N5VGhFbk1Eak5SR0lxUnJq?=
 =?utf-8?B?K2pXZjlLTGRqWWswUENtL3hzV3RGbnFCS1NyVVBWMGdUN2dYSE5TbHNhck9x?=
 =?utf-8?B?Nzc2dXpyK1RBN0FFamR4OGVzeG5sY25EMVpFR3JKVWJYeFVUbTIyemN6NDZ0?=
 =?utf-8?B?RUF3SE9jd3RTcXFXdXBQYWpnUDF4UDRVTjhnV3c4S01LcXdQbVdqeElWRXNC?=
 =?utf-8?B?YnFMQzRkZ2U5N1p4dVA3TURNZE5yL2VsWDZDZ2RuSzdGUXJOMklwRWlYRG16?=
 =?utf-8?B?M1g1bGtWNnorYktBbldSOFYxZ0x1U1pQSHdscy81VDRtK0hYd0l3M2VUQWZp?=
 =?utf-8?B?WTdiR3Bhamp1d2E2WFlRVHQydDUrMkdJKzNPUVcxZWVkS2F4T3E0MnM2WTY1?=
 =?utf-8?B?V2hxSXdVWFFEYUtqRXhFWTRYZkZhaHNKT2lkV1hiZnBKdXppVksrelovNnBD?=
 =?utf-8?B?cUJwWFRKeFNOVXdWSXlpaGE1a0I2NGZwaW1DZ2lWemtGNkNYU2wwQ2JyeHpn?=
 =?utf-8?B?MTc2ZTJQbHlzUGkyTW5oYlpmd241NXlFR2g3R2d4WUtWRzRuY2ZKdEJqTjU2?=
 =?utf-8?B?c1FQdXlKQkxnTGd5cnBWeHNvSGVpT1ZYNGduVmMwckZDYmtDLzNud2dIOFlO?=
 =?utf-8?B?a2hwdXlHbkN2WXI0VjIyL1hjaGs1S01mUGdyWVYxWXJNSm5ZYzNCdkJWQWRC?=
 =?utf-8?B?Z2hMSStGK0g4OXlYZjV1VFhZZjFyaWVKdlVsTVNmejR1UFBlNEpDb3lodlhs?=
 =?utf-8?B?eUFtZmRWNWtleUJWWk9KWXJBN1grd1NsOW8xWkh0aTdPYzhabDNFcmRrS0Jw?=
 =?utf-8?B?RzZ3R3VFV1J2dUl1RU5uL1ZaSmltdlRLZTBoMHhPNGRMNGZHWHhoOWZKVFEv?=
 =?utf-8?B?RmxCTEE1U3hrSmovSVNhTGcvMHZ6K2VKYTltRUZKS1pkWDA3TVZGQ0VOS0Ew?=
 =?utf-8?B?RUhJdW5lMlFZQnZOd2hmNFJNWnVFK3NGSDg1R3ppRlpKYlZJbk9SWlZpTXdp?=
 =?utf-8?B?MithOEhwNmFDQjBsdHUwUDFIT3hsMmc0SjF3VldWYkptaDJKVUJvajRRc0ov?=
 =?utf-8?B?U1d3ZEgrayt5dk4zSllqVXAvVzdNSXNJNExTMDdCYUUrNmF5bSsyTEVCb1gv?=
 =?utf-8?B?VEM0aWpYTlJwek8wcjI2MzI5N2tQMnRTVHRidXNOc2RKcWVtUElOSVBQakZ5?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 055c436c-31df-4cce-c7b8-08dd76e205e9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:12:09.1419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1pwIvue98NWVXsnZJe04BAmvtozoAnik91PkmbGt/EwEVrIwEY2CpGft9/e0LCXsRdZqZKBpCo3G594Ef75tFbDNkjpmE/ZjF9W0+3pQbOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7983
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744146776; x=1775682776;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SpeU9oDYt4LMEdOcWLyfPjiSxeUeg2Ua01dhLaZis+s=;
 b=M4R98MsxQxHrJWQEGlaiGCpDY4Cgl7sUsny8Pie5kDmLekvNAxTNQNOx
 yDGmKiyzaes8wYrYEABYN0WYUIkTletUcj7AnDsAzjDgF0XNXyVG4vilu
 WNBHYQOY3EVCamoiOUgCpR7SIBGy9nL16IND+I08SLd7rCF0yE7IvrS/s
 vPD7T4LKUQ4iLOmDbtIhjrMFPiQ5KleeIUZN6ki5ixr7IZOSbOWddSTs/
 7ePWsJPjLt6ClEU7qYjYuRlOUh5F2CtWfWRV8bWRN7vFETL4YD3N9M9XB
 953IKdVgGCpJxymO4Gw9/2Rc77qkIKYJqOKBCXPKUmh82+zTYgFh5Bhz0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M4R98Msx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 03/11] virtchnl: add PTP
 virtchnl definitions
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



On 4/8/2025 3:30 AM, Milena Olech wrote:
> PTP capabilities are negotiated using virtchnl commands. There are two
> available modes of the PTP support: direct and mailbox. When the direct
> access to PTP resources is negotiated, virtchnl messages returns a set
> of registers that allow read/write directly. When the mailbox access to
> PTP resources is negotiated, virtchnl messages are used to access
> PTP clock and to read the timestamp values.
> 
> Virtchnl API covers both modes and exposes a set of PTP capabilities.
> 
> Using virtchnl API, the driver recognizes also HW abilities - maximum
> adjustment of the clock and the basic increment value.
> 
> Additionally, API allows to configure the secondary mailbox, dedicated
> exclusively for PTP purposes.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Tested-by: Mina Almasry <almasrymina@google.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>


Couple of comments, but no real objection. I think the decisions here
are acceptable trade offs.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> +/**
> + * struct virtchnl2_ptp_get_cross_time: Associated with message
> + *					VIRTCHNL2_OP_PTP_GET_CROSS_TIME.
> + * @sys_time_ns: System counter value expressed in nanoseconds, read
> + *		 synchronously with device time
> + * @dev_time_ns: Device clock time value expressed in nanoseconds
> + *
> + * PF/VF sends this message to receive the cross time.
> + */
> +struct virtchnl2_ptp_get_cross_time {
> +	__le64 sys_time_ns;
> +	__le64 dev_time_ns;
> +};

These are in nano seconds, and there's no room left for extension in the
structure.. However, 64bits of nanoseconds is 584 years give or take.
Even if we start from the Unix epoch thats a pretty long way in the
future. Additionally, it is likely that some sort of software-based
rollover could be used since the roll-over period would be hundreds of
years. Ok. I don't think we need to waste additional space for extension
here. This also applies to the other __le64 fields with nanosecond time.

> +VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_ptp_get_cross_time);
> +
> +/**
> + * struct virtchnl2_ptp_set_dev_clk_time: Associated with message
> + *					  VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME.
> + * @dev_time_ns: Device time value expressed in nanoseconds to set
> + *
> + * PF/VF sends this message to set the time of the main timer.
> + */
> +struct virtchnl2_ptp_set_dev_clk_time {
> +	__le64 dev_time_ns;
> +};
> +VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_set_dev_clk_time);
> +
> +/**
> + * struct virtchnl2_ptp_adj_dev_clk_fine: Associated with message
> + *					  VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE.
> + * @incval: Source timer increment value per clock cycle
> + *
> + * PF/VF sends this message to adjust the frequency of the main timer by the
> + * indicated scaled ppm.
> + */

Do we want to encode scaled_ppm here in the virtchnl interface? I
suppose its not that big a deal but it is kind of an implementation
quirk of the Linux APIs. We could use parts per trillion or something
similar..

I suppose there is little value in translating from scaled_ppm to some
other format, due to accumulated error, and scaled_ppm is higher
precision than ppb. Ok.
