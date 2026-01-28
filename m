Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEnkHJlLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:05 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E1DA7207
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6817240600;
	Wed, 28 Jan 2026 17:47:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GHKyCbrmpGSt; Wed, 28 Jan 2026 17:47:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2BB740642
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622422;
	bh=Ytm0mY8IysMDS0IArTh+CalX1RbHkQdNwDGbKpBN0Sc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JoimoTT3KgZGhhYRq1CwIgvaLdpEKxswFVn/zV+pKdnzbtskz4j1QjxN+C8EXj1Ud
	 X4hduFYENO+ChTafVoBSobBElq1c+tToB5yfqGnnHZDaqsa7GOF3GcPOUuGENKe1Fc
	 Z7DTCe16thoPAQjvQZImO7MJCQOdu8g+IRmXyeKVsT/NXMkfH9nUi4ChELRT0jOqmH
	 eq/9qUynMA4WUcBMOMURJWnRaKzTSmQEckvhtrEQ+S/EfzbpqGY05HpTMfBNkdP3Zc
	 SyRR7NTvO0BIcm85Lf0razWiTp5Va9SMMBukWYjF1wsj8juBmJTFeiuc9M/AvGPUAr
	 TDLXFSF5Fdo/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2BB740642;
	Wed, 28 Jan 2026 17:47:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 42F451AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3263D82695
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C8F5OrFzrp72 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:47:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21AD6824F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21AD6824F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21AD6824F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:46:59 +0000 (UTC)
X-CSE-ConnectionGUID: fAT0AAv/Q3O1gNmmL6P+jQ==
X-CSE-MsgGUID: ylu+l9J1TsCFKS0gRRbH5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70897852"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70897852"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:46:52 -0800
X-CSE-ConnectionGUID: Uno6cXvqT2O4mXt/j2+mmA==
X-CSE-MsgGUID: oHSQlydUSUSKsrpCFhuqzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213196733"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:46:52 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:46:51 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:46:51 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.69)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:46:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=maAreumGEB/VFsiBPC6KWp4Y3Jp5HWTacH+L2LDAPLEXjkN8cUV4svyA9M/I3hKx8tVF26W31AzojL1o3qUXUZ7F0iLAtOjFbOAJpW4xpY3lAa5LMzPEGi9llOAd7inbG//3mPJtQZGWBujbtCMqIC2UERFOlDSsImKCIqktgxhuqVDIV/AnFPjzadIOGxlzlujJFDEhNnzB9+z4WEjdXwICjfTwmZFjqJVUt+TRu7ry1L2Hb4CGNFst7ZagKbCnoaTAQyT4hPdqZql5owpyJaKZDN5l1T/BCA15GJh7iUuUJovXPBZdvz+gdIuAoPQ/alm6H9XNkNpPfcgZ1bv1Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ytm0mY8IysMDS0IArTh+CalX1RbHkQdNwDGbKpBN0Sc=;
 b=R3mFo53RqGBZxfZ05zYI4s36r4RV13Ny0LbHLb4EGub5E8426vEfJziqFFlepZvTgyQqIebDJrocJ5O6qj0t8JeDiBo95h94aGGdiBeaauoKPt93NUxm4ib/fo2Bjb4wtnPV7sYuuhsPHzBIZqAsFztelJvQ3tIDUOa9LLeB7XmW70PaRcbifsXk2NzGIyYQ7FaMwii7WkvH+xEIdcl1TrVj+0EldrLOfFORX//v8ZK4mGIgvMgkbFkzI3COInbZeh4OimPT6JPe9u+HXRE2OSUqr4r5bsZ394TQiZWarfbTuQHVW70IY9d5OHNZf7ctaqTK3zCAm1OX3yUR0L6gwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF4B1ECA5EA.namprd11.prod.outlook.com (2603:10b6:f:fc02::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:46:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:46:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 10/25] docs: kdoc_parser: don't
 exclude defaults from prototype
Thread-Index: AQHckHZXBeSAW8MLGUmgOuA4innRxbVn2zHA
Date: Wed, 28 Jan 2026 17:46:48 +0000
Message-ID: <IA3PR11MB89863B680D1DE778ADDBE5AAE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <42169cd386170c650110a62a4fe467ecf83d757b.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <42169cd386170c650110a62a4fe467ecf83d757b.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF4B1ECA5EA:EE_
x-ms-office365-filtering-correlation-id: cb136c74-8c66-4269-7a1d-08de5e95364d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ZDhwVTRRajVHVHdXeGR4a0V6OWtBeWpSc1RRbFV0OVVjZlJKT0tXZUZPTksv?=
 =?utf-8?B?WGV1dHhxSzRyUE9QNXdHNkdlbTFGT3RuUzVUUGlZRUV5d0pSQlczL0NkN3NG?=
 =?utf-8?B?NnNnS0o5eC9tazI2UVNhK1pKSC9reGpTMWNySkt2SzZsTlVrcVhYdnQrNGVX?=
 =?utf-8?B?V2VDSjlpU3ZSUWM0c0xCd2RJeUJicUJWVVo5UWFDMWhtMWg3VTNzbWZNeFVC?=
 =?utf-8?B?NGxubkFIWFJEd3YyTHJJekVxQ3E1cnYwcmZCaE5ZV0wxN1A0N1NtMk1IWHVO?=
 =?utf-8?B?UFhDV3BDeUp0TUFqZmtBd2RkNmU3bEhnd0tHaWNsWTRxbmhRU0MvVEptUEpl?=
 =?utf-8?B?Ty9tZk5nYkZlUTd2MzkyblFzaHA1aFBVSStIbTBzbnpYQkZCVVNPR0lXbVU2?=
 =?utf-8?B?UzhBRS9sNFdESEt1aXdwYVRZUW1hWUh3NitQQnFGaXM4bEVLL1dCdktWVGpp?=
 =?utf-8?B?UWtWSHNPdE1TeXhSNExoVnNhQ2ptbnZGNUlSTzA0WmV4NTZQTDV4OGQ0TFNC?=
 =?utf-8?B?K3FSYUM3TXRLTmtSU3d4eTA3NHhMSHZjMW53dU1hRXNxTVNWV3hsVGJNVkNl?=
 =?utf-8?B?U2twSk9IMENGUUlYUU82NHpnNVI4V3pnckRCSXZLS0svUDJkRVltN2RQcHUz?=
 =?utf-8?B?ZFNRY0Jwc3RwWENCTWF3OHV2cFJOMXhFbWQzVnA5OWQ4aFptdzArRmdwS0JW?=
 =?utf-8?B?WjUvcE5LdGJUK21PTitlOC9KOGxhUXpkTVd1TXJtb1FVSzQvT2hDK0FMdUR3?=
 =?utf-8?B?d1ZyZ1kwUWNUeXZhTGhiWEdsbDlLNFZ0T3BFazN6cFFRL2tuY2hsZzNLMm5K?=
 =?utf-8?B?dWZSOFJGbEZXUHB6SEF4UHUzSHhxY1p2V3VRanFiK1BWbnlIVUdCME9rYjQv?=
 =?utf-8?B?WEpyQk8yUjdsdHZ3QUhKTVpPZ044NG5UUHF4MWk0eXo0Wmc1TVZGdndIdVo2?=
 =?utf-8?B?T0xCVGxsM1RqclRHMStqV3ZVa0wza1Q1Ny9HUmZZbzB6d2JhQTJWSzNFTU4w?=
 =?utf-8?B?MFFVYzdkTU8zUEJmMytkYlJ4TzByNTJQN24xOWQxZ1Ira0o5NXMzTVYxTTJs?=
 =?utf-8?B?MG94RnRwYjJLQzJzQnJ3WUt0UnZiZ1N4N25FTVk3dWEyYkEvcGxyOE03a2dT?=
 =?utf-8?B?SHR4UmJhaWZ0ZjVyZ2NSTmdGZGdoK0hhcE1qTlNIcTYzVHZURll2bDJVZkFV?=
 =?utf-8?B?aDFXUGkvYllta3dsSDFBNkJ0bFhnYTdOcld4THNJUFhEVXB4ajhobkpHa0c5?=
 =?utf-8?B?SW00RmtraHBQbTdybm1kWStxQTdaYVZFL3RsejhmaldUSytVWDkxalBtQTJM?=
 =?utf-8?B?amV2NXdIOFo3a3FCdENCUmV0dXg4SUdCQzBabzRHMzh3eXhHc2ovN1l6MzEv?=
 =?utf-8?B?TExjWjZSSXNkWS9kdmYzaXJxS04za09vZG5UZGE0cUJIQm5SOWtFNDJ0S3RF?=
 =?utf-8?B?ZDZ6R0VETGR5MDM4UG1ZL2svM1ZJUXFEdlJHQy9hUWZFbFNkcUs5blVCYWxn?=
 =?utf-8?B?cjk2bjFTd05Bem1WbTdvRjFub1Q2a2J2alRCZFM4ZUdKT2FzekNIbEFmVXV5?=
 =?utf-8?B?M1FTVVJkckRSdU1RdnBHSTFTOGdCeVFMQUZPOHpBbzJiVW0zbnYrTkI4T0Rj?=
 =?utf-8?B?eHdEeE1CeE9pTk53VFNBSWZ3N2NKRnRkZDdqejNxL3lHRVRTeElNeVRFejFt?=
 =?utf-8?B?Zm1XOEJWTVpaVUFEYTZPOWJ0dHJITVRWMVU4akRQMm9mL0RqZWJ3MTVvZkht?=
 =?utf-8?B?eTRJZ01tRmlzWGIybzBad25WQXN6eWowc1pwN2lLbGk0TkpyL3AwL09sYzRS?=
 =?utf-8?B?V2FNemcwNzJkTGRCVjM5NVo4U0M2bmN1YlZjRlpGNmRoRVhYblMrbE4xQ0Rn?=
 =?utf-8?B?QjZMdmNFYzdPai9pY3oxMjNSQlJjL0lNQXZ3K0R4cWxIamhrOEtZTDF4S0Jy?=
 =?utf-8?B?a0loU1g4S2lJSy8rNU5yMElOYm5oMGN0K054bXV5WGM3Y05UUjdzK01LWXNL?=
 =?utf-8?B?UDZqci9xVktJYzBZN2g4Mk5HaEpzVlZCSHBXMVlsNmtYb1Mwbi9XRUNibWx6?=
 =?utf-8?B?MzNsZ2k1M0FmbDVoR1NUYlc3SDNHSFh0YU5nU1duWFdrVG0rY3VzVXNUVTRP?=
 =?utf-8?B?WDNxNFBTYVB6M2o3WUpITFBibGdNNTc0WFFYTGZybDJTWUNpUkpJR2U5bUUy?=
 =?utf-8?Q?qBrUK2R5GxyD40VSTGzdAU4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVNpVzY5aUNlT2dDV2Z4NUNlUGpJTVhrd0p0SWxwcENGQ05NMG5oS2wvU1lv?=
 =?utf-8?B?Ukl1YVJoZ1ZLdU95SEpTRE1BMW96ZXBodHdvSG1NWmZJSms2Vm5MYlV4RHRx?=
 =?utf-8?B?OHQvcytGWWZJcVpGdFpqS0NOVzlCek5VbitxY1k4ZldNelBrOFhGOWRhb0tW?=
 =?utf-8?B?OHg5MlRhdE9KTklBTHM3bDVqbWp0ODNHbTNDZ3d4TkYrdEZZNnF3THFsU0tw?=
 =?utf-8?B?c2pFLzJ2QWNtTzVOVDV4eHdGSjY3RjJVR0F2dXhHSGYrK0lJQnRCWGN3N3RB?=
 =?utf-8?B?ckRoaUl6bTNmbFhkVU1HYzVzQ2h0cWRmOU81UTVDekJoZmNzNDBhRkorcG9V?=
 =?utf-8?B?WW9wdE9DSVg0Ynl6RkRCdXhEUGNIQWxPTjVwR1Y2UXB3TThSbTVuaHFOWFZy?=
 =?utf-8?B?V2h3d25tdWduVm9QK1RDUW1NYUFRZGFiZ0tXeDB4Uk5JUm1obnd2WFYwb080?=
 =?utf-8?B?OUhlUDZKOVVteTJZSDRGRllidWtSbG1Fb29pN3U2QXNMY1kyMnduNng3OEt5?=
 =?utf-8?B?RXhZeHlhUUJmd2RzWWlRT1JRYmtJc3hlWHFCaEhPMW55OFNHOWNhUGhWNDJ0?=
 =?utf-8?B?bEpJbUVrVk4rdW5jUWJpUW9ubWFpekZOQ2FaQkNvanZwTlVCdzVTV0IyMDYy?=
 =?utf-8?B?VFBkQkpSMGdsbWdqSTVQbGRoNGVpSllDMTIrWnZXdEUxOEFQSG9uKzlCWnZF?=
 =?utf-8?B?Nm9IblFBS2x0QjRsRWZPUEF3WWJUV3BmWkZaWE83M2M1NmhMaHQ1cUxVOEpr?=
 =?utf-8?B?MFY0Rnp6SkZocFBYRDZSUGY0NWY0M0V4SFgxeWtLdjhRdUlETjIvaVgwRm9G?=
 =?utf-8?B?K2czSWlMMHQveWFmNDBZem04aDB1RkFMNkdVN2JveS82RE1RaHdCT2dDR0lu?=
 =?utf-8?B?V2R3eUxWbUp1WC9XYkhpZExKbGVKZVJIQTM4RmF2RUxjMVBiVjhNdVFBbzAz?=
 =?utf-8?B?UGt4M0F2L2kyQTBBRVhwV0dsYUdhaUEvZTU3a3E0QlE5Z25lSENFRHkxUkpx?=
 =?utf-8?B?T09IYUNnQ1IxazFDd3E0KzNoTHhuSjVPc0lyREV6Tm4zUllkdlRHRVFSNFlH?=
 =?utf-8?B?dXdCVkFka3FQemtseVRVTHk2SkxVeGZDcEV4R0d1Mjh1aVErcDA1UC9uL29x?=
 =?utf-8?B?REZmTWFRR1pXWXVnRk9EQS9lR1lMOHpyckptVGFrbVlUUjB6ckR2RXFVVFNX?=
 =?utf-8?B?OUE5TDB3N1ZyaGFZMjVwajA0bEo5c0FwRzkvTEhyZVpNS21yaUNRQlVxWXlS?=
 =?utf-8?B?ZXROVVFzTU5MVk1oK1lKZUpTY0VXK2E1M2FwbDhTY0lSc0pPaC9yVHhJVlIv?=
 =?utf-8?B?Z3ZGZ1VLYUxXY2w5MHU3VmwxSysxMVd4emc1RDVpaGlNUHVPYWFMTTZqT1Na?=
 =?utf-8?B?ZUpmZjhTZGR1cjhxWVI0WitSK0tTOW5ibnh0ZDdmT0pXeTFPblpzSTJUNnM2?=
 =?utf-8?B?K21IV24rZGlqMHBwbEpQWjhOcUNzUTVETy9WSU9Ic2FjcFVGeXFoajl4TnRN?=
 =?utf-8?B?dHBTVEVldmdOWmpreGMyWnZLci92aWJCck5BcUt0NERPMXBHRlozV3dVc3ZF?=
 =?utf-8?B?ancxV1dQbmsyUnk4Q05HK3FBR3Q5NGxhVWp6UVV6bytRbTA4c1JwblViQjVY?=
 =?utf-8?B?VEVLa2lCZThXbGxGanYvanVhRFNxa0t3SGVlSEd2OGkrNFVMTkcwZnBDUms4?=
 =?utf-8?B?Mm9xdzYrdFBiSGMzQXpGQ0YxYzRyWkNMWjFWTFRzZWZJU1I5Y0xCVnd4U3BN?=
 =?utf-8?B?dDJjV08wczVTWi9ST1loNUxQZFZ0dmpicGtwR2x5K3NYdVJST0JYbXM0VVYz?=
 =?utf-8?B?cWlqSEdZSlR2WFdsYkpVSm9tTzBoVDgwc1oxM3doaFBkd3N4N09Cb2hXVzBG?=
 =?utf-8?B?TGtLamw1SEIwTXpmQ1Q0bm1xTUY0VS9yUjJEek1YSWw0OFBBNnpHL2JsL3hN?=
 =?utf-8?B?elRLU3dGS2U0RllOaXMxSWFsQWlXYnhDbkZtdnVqYWwvbUFLa2h5Wk4wR1py?=
 =?utf-8?B?K3lVZ2wzaHR5dEdmT0N5Q1Z3c2hvSGYyQ0F3Lyt0d3NwcVh2OU45a0tVLzNj?=
 =?utf-8?B?WklkMEhzeWJHMEo3N1BVaFBKSWpwZVlZTzcwWHBodHdSMUFIU09XVUN2Zm1z?=
 =?utf-8?B?TlpINzFCVG5ML0dFay9OL3pHcko1Vkx0c09wc01QZjZMOGY5bUpuSStqS1lY?=
 =?utf-8?B?NEFaYk45d3dyV05GNWV6ZDcwQlJzd1NUaGp1MGZlelowQjhqWXFpVUJUMkx4?=
 =?utf-8?B?dGtiRFVPSXkyTFZlNTFhalBkWDF1VHdNYUhlWW0zS2l4UG1NeVZ0Z01waHBV?=
 =?utf-8?B?bHRQalFsOVZCN0c0MlVUUFp2MjN1Y0xwV0VFdjZpemtpZ2c1NGRObzdRZkVv?=
 =?utf-8?Q?Yiqe0fPeFgINeEHY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb136c74-8c66-4269-7a1d-08de5e95364d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:46:48.7009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fvvv7RCrvGM+lTlfV5TaOIUBONmxzE6etLIxBv8YlIg3/mX0F9f75k2rcN/vsaHfDtre1TnQ+CEIw0InvKHKqMzmDkS4gJ/dM6tR97LPR2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF4B1ECA5EA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622420; x=1801158420;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ytm0mY8IysMDS0IArTh+CalX1RbHkQdNwDGbKpBN0Sc=;
 b=loUD17XHwnNhPo53LpCOWMAUYQfMS9NUx0rQ0CWo6nzKxoozFQLbeeZg
 0XeAIzgRoMDlbu0LOhitz89UqQhJz6BfHxDJ5kn16+9tVr8lTfXxtZkGm
 LD4HGy0iPi6rcezLjmjT6IfM6XrYFgnLzehlgCgp4Otal3wMV3P87HNoU
 d12pgpfb3jp40GSKONVXoPpW4zYOxkRyQYVIqgiLgwGc/9tUESeCxNMnS
 0cC8A+5u4Hl9kJY+TiyQHDDUgOHGeG3JARgY3mgJhuqKBkwJVePq4qm6q
 j3ypwj7giamYxjpOKMCGQE+5PUg5Ony4zlUvV9qyl0KL92BpHGngZGD3z
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=loUD17XH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 10/25] docs: kdoc_parser: don't
 exclude defaults from prototype
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:email,intel.com:email,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid,auug.org.au:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,infradead.org:email]
X-Rspamd-Queue-Id: C2E1DA7207
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxMC8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IGRvbid0DQo+IGV4Y2x1ZGUgZGVmYXVsdHMgZnJvbSBwcm90b3R5cGUNCj4gDQo+
IElmIHdlIGRvIHRoYXQsIHRoZSBkZWZhdWx0cyB3b24ndCBiZSBwYXJzZWQuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5v
cmc+DQo+IEFja2VkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
VGVzdGVkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4gLS0tDQo+
ICB0b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkgfCAxIC0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGliL3B5dGhv
bi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFy
c2VyLnB5DQo+IGluZGV4IGNjZWU0ZTBiY2FhYi4uMGI2Y2JhNDQyZDcyIDEwMDY0NA0KPiAtLS0g
YS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gKysrIGIvdG9vbHMvbGli
L3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IEBAIC0yMDcsNyArMjA3LDYgQEAgdmFyX3hm
b3JtcyA9IFsNCj4gICAgICAoS2VyblJlKHIiKD86Ly8uKikkIiksICIiKSwNCj4gICAgICAoS2Vy
blJlKHIiKD86L1wqLipcKi8pIiksICIiKSwNCj4gICAgICAoS2VyblJlKHIiOyQiKSwgIiIpLA0K
PiAtICAgIChLZXJuUmUociI9LioiKSwgIiIpLA0KPiAgXQ0KPiANCj4gICMNCj4gLS0NCj4gMi41
Mi4wDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25v
dkBpbnRlbC5jb20+DQo=
