Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B58D0441D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 17:16:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D502660DCA;
	Thu,  8 Jan 2026 16:16:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i4KF4PWgoyva; Thu,  8 Jan 2026 16:16:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8E2760DD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767889000;
	bh=W/VO3wDPARjSfw4clfprdCH+IIKAxZG3Qb6rncLeh/E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4xUAoHlmaNQD0QoPDn0DKsXyuoZCb1Zjwe2wfSQCGBbDUrohx1LVV+uBbCnmkm/4T
	 RVON5stW18dSiNr1fP3tTi72ZhXdeBrQtF1VCOnfNJKLkmRMRkH7ZDJz/Z8jF//6bi
	 1+YzvkX2czLZ1TwgLk8S0DftBjx6PzNI7XY8wyccv7T0nppekXpme22T5j/iU2nFqR
	 uXKrBhua+c56DsQu/KUZdDPIGYc5PKXcASDlfNBezGHAQWcs943aKKOsfnmGV/CdTk
	 wBuNFO7HayolK5Bex94sNUjfLnGgCv58aRZZtIVO2u2JoHUO47Y3jHgyWARnGQ5L9U
	 r284PDFvIDYUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8E2760DD5;
	Thu,  8 Jan 2026 16:16:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C25A2C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02B1D40884
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:16:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j8Cl7rU-PR3o for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 16:16:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 31C7340881
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31C7340881
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31C7340881
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:16:38 +0000 (UTC)
X-CSE-ConnectionGUID: XuB7AlyUQc6RG/NN1IZ30Q==
X-CSE-MsgGUID: R96yacZMTpiEKbJMRbaxNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="79989310"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="79989310"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 08:16:37 -0800
X-CSE-ConnectionGUID: 2vB66FLUTqi5ReF8hTkATg==
X-CSE-MsgGUID: CPkZ6nB9SW2V4WHOijfWxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="203258402"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 08:16:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 08:16:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 08:16:37 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.2) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 08:16:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M1Vuf32rT1E1s1BMeicRJr9yuLl5/X2NsLAJ8JMuuVz3lRTMf/R76GL5EdmuXwlNwIB7xejpUwCNYLhvKAm2qeM1MLiN7QfToHg9N5BwgcLyQbGUXoK7gLglsLJZZ9AxBgyde+rPWCNL9NY5GDwYurD99UH+HuXAQz3kDq5P+kd/UC9S1ypiyvH0GmkoRw1rmQDCqS2bKAs2dChncfPby96075E7NHTPgtpjp5f6NdcbRY1ymzO/AP6uY/wXtEcZFME7N+O4Cr4XtW2p2xTPM7aUeczL0o4es9nnLgYgMspSLosCv377e63eNWMD+aMipGeIVahBExAzvQuyxYGHQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W/VO3wDPARjSfw4clfprdCH+IIKAxZG3Qb6rncLeh/E=;
 b=s0N+o3ZViMYO1GOEgkazDsQnxzIM2i7k3BPDNgiRSDQRQl7jtVxnDH0iNsgg4L3noFRVqufLvb5FlKkBtlgWU1JwQix/yoz4QeR+2V4SSWnT0AvW4Ar1bMFpdx+g7x1biYqa/qUdW6ipJQSlz0lzHwBSrmIppyTUuq4jtZJMl9a9n73T7dUH8nx8yDqIWj7SjVgKc0dG0yCjvuIuQrEZYLQ3SnH6q9rArV6XAK4jyLHzIRj8orb9TUdP2E67zNRglD1EESQNyOVg3fXX8L2KMV2HPdBiI4B5w5VfH3ps4NeBH81Ot2l5/g3TVGFefWY/xXAaFyP/fhVdZZvqqT/GDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by DM4PR11MB5232.namprd11.prod.outlook.com (2603:10b6:5:38b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Thu, 8 Jan
 2026 16:16:35 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 16:16:35 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
Thread-Index: AQHcfvPNQK1vCTsKokCbEkA/6WvSZrVGwNgAgAFXqACAAFwBUA==
Date: Thu, 8 Jan 2026 16:16:34 +0000
Message-ID: <PH7PR11MB5983B57A90E150EE599649E3F385A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
 <PH7PR11MB5983F49754AB057DCF618094F384A@PH7PR11MB5983.namprd11.prod.outlook.com>
 <57b8e706-dcf4-48e4-961d-b72bbba83820@intel.com>
In-Reply-To: <57b8e706-dcf4-48e4-961d-b72bbba83820@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|DM4PR11MB5232:EE_
x-ms-office365-filtering-correlation-id: 99a331e3-cfdd-4071-602a-08de4ed14b38
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?LzlvOGVZaHdReGhOQmI0dEV2YzlqeURRZ1hCYTQzcndUR0NTdkZGeEFWb0p5?=
 =?utf-8?B?NXFHZnRnMWFNK1ZBa2k5QjBFdlZNd2plQzR2YUUwRTFVM2Q1RzEzc1hoR1VG?=
 =?utf-8?B?SlpJellNMFpzUUlJS1NoNTR1Rk9kWGNjbCtkVi9zTDM2YmxZWTZ5dzNnNWdx?=
 =?utf-8?B?cFN5dXc2S2crZ0pQY1Z1Z0lPcEZmT2JTNlIrVWQwYXZyc0tIcXQ5SFJBeHVm?=
 =?utf-8?B?eVhJcHJQVlpVVXZJOXpsajM1b0NWR1NEOVhhaVdGK1MvcmJxSGowcWdnbVJJ?=
 =?utf-8?B?blpBME10cWtzVDdwTE5tUzhodkZRZkhaV2lwL011N25yM0k2cTl2OEF4WEpP?=
 =?utf-8?B?OU05eTRhQXVhWWJzV2wvZ0xwRTVXOVlDY052OWZKWVZSb3Z4ekt3WTJxcVhV?=
 =?utf-8?B?R0Q4aVVBeU9DWFhZT0EyQ3B3STMvTXo2ZlhoZm5lSHBmQXpObWpjeklMaE45?=
 =?utf-8?B?ZCtQeXhGOUp2TEpRTHMrVEIyNVhGTGdBeE1BUEI0NnBxV01Oem5Ed0t6UFZJ?=
 =?utf-8?B?RHRIcGdVeTRyY2labDF4eVZpdDZONkVJV25VdlY1SDRUTE1VQ3N0UmFLU2Ro?=
 =?utf-8?B?d0NBT1N3ckVzRjlIajFYaDlid3IwMDdYbUVzVFV0MndxdHhyaVVKK1VKc0dZ?=
 =?utf-8?B?a1g5MGNHWGp2MXcyMWNpZEpVV3pMWitJQ3VyVVgyVDdrektWUmFqVndXemVU?=
 =?utf-8?B?RmlKOGpNbzZncDBrNHoyM01pZlhnUzJ4blpKK2VaN1AxK2ZWOWFZTnhaWmdx?=
 =?utf-8?B?UmJXcUVDRzRybTFEemlmYjhTcHl5SFBnYWV0QXVGWkNmT2xZbTRJSTlxOFRK?=
 =?utf-8?B?VzE0TEJLYS8wcGxjT0NEcEtlOUtTc1RWd0JPelZBSzRvZStkZjFuT3ZpRTVk?=
 =?utf-8?B?WkFNcXg4TjhVaWtNZzQ0T0I0Wit2a0pnMmk3aTRzU3dSZWV6RWJ0ZjczQjFH?=
 =?utf-8?B?YXRCcmovQi82Vjdzb01XWGNhbjczK0xZQTRlRjdxbjdVV0FJNm9Ydjc1ZmpZ?=
 =?utf-8?B?ZWZSOGxScDA5cW5LczR4TlA4WnQvME1FYWJHcXkwNGUrVXVvanIxK011NHZR?=
 =?utf-8?B?MUhwZDh2WnRnRXRwcENBNFVuSGY0QStWaXdDSDUwcmNhUHg4czFLZ3N5WnI2?=
 =?utf-8?B?MmlPOERydkl6bkc5VDcrU3dYTitTTGZHSlA4MjQ5WkRqNy80aGttemlLYWtC?=
 =?utf-8?B?dHlJdUpoYUZadEN6NWNyVnlxN3RWM05ybTJhMHdRcXllYzBTR2puOFpjVmRN?=
 =?utf-8?B?WDJIU2ZOOWdrSzVQT1l0UFNOSWVrYng5WlZRbGlwVDJCYURiL1ZrMGRUSFBP?=
 =?utf-8?B?SlQ1MkxBNFFuR1Uzay9CbG10TWQ2dGlZRVpYWlp2QTN4R1M2bGoxaXg0TzRE?=
 =?utf-8?B?ckxTTVNFUDNPVHFwS2dKQlhoMk5ROVFSUjBsbXo0eFlLMTR4QkpNS2FhQjVr?=
 =?utf-8?B?cFZ5NFA4cktCSGpQOEp4NVIxaWk3VXpQVnY2RS81K1o5cFVHbm1Mc1MzWHdZ?=
 =?utf-8?B?WWwydEVTbmhLUTJ4dHl2KzZOZVFMb3JBVTJ2KzBCOUJYeDlkN3pEclJKVlI1?=
 =?utf-8?B?V1k3WVAvVTV6Qi9LMTA4YklrQU9TNEJ2NUlMWUYyNG9qK1FYZFlJNXFtTnlQ?=
 =?utf-8?B?Q2VWZXp2NHZncUk2Y2puZkpGQmFheHo2YmdHVU9sZlNEaFNOclJXSWhEaC9l?=
 =?utf-8?B?a1ZZY09SVnBKSlRra2ZrUFZGK0tDNWwyYTF2cnc0Mzh5RkNCQnU3K2F3Tmwr?=
 =?utf-8?B?WGJrR2hnRFpsWWZZbStmMG9xUkxwa1BOTWlqb0EvWXE3NnF3QzJXU2gvWCt2?=
 =?utf-8?B?SndrUWJlbXd6SXZBVWc2OGxRb3c5eHkvL3puRnNVeE5SdnJmWWJoY1AxRW1z?=
 =?utf-8?B?OVVubTFHeTNUbzdsZmVia3oyS2h3Vi9uQmczbW9pZjE1MTcyUlJiR1hxM0R2?=
 =?utf-8?B?dFRtYUpDL1VtcHpRL0hrTW5nVnZOM281eStyeVhjQ2pINXlrYUdXa2NJU0lS?=
 =?utf-8?B?MTFscHArMmJhRGhna3JvelFUK25EMys5MVVxN2FsUHlseFUrSmZLMjdIdU10?=
 =?utf-8?Q?VGF477?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dU9zb2xsdWMvWVBVMzB4ZHRrMlZZTmRUMzA3SWxjNUY3MU81OS90OEt1UzZT?=
 =?utf-8?B?blRNazZtTCtTWHpYMXFRa3RzNTJtTUdkK1RFc3NQMmwxcEJWRlJ0WkJxWnhQ?=
 =?utf-8?B?ckd0MFE5RlB6Z3BkbWtRTjJFRU1QUmlvWEZoTjNENS9ZTjBWTTZ6MnhialhQ?=
 =?utf-8?B?UTB5N0gwR1ZpMzUzemhtS3ZvaVJyOGk1MWdDWHVqYTRzUW56a0dMYllDTmJD?=
 =?utf-8?B?WFdvR1B1bk94aGc1c0VtMTRxWm1FbldkUG52M2JtR25OM1hUTmNadmNUcy95?=
 =?utf-8?B?eCtVOUR0OTJRWitqZi9xWERncHdkWmU2dHFYRHdacEo2OWFlTSt1UFh2K01v?=
 =?utf-8?B?RllOVFlEOVF2MjBlNXJWQ21UbThlUFZZbTNvMWNscFhYT05VSXUyU3lSZmll?=
 =?utf-8?B?MlBMTnpWWDFlRnluakw5cGZta3VMWnVzdXlpQWZhRUVJZkFaWWdqVm5XWGg0?=
 =?utf-8?B?M1dsTDlaK1JVMXZIcW9tcTgxNzF5WGh6OS82c3V5RHN4bWo0WUNWSkxkc2pE?=
 =?utf-8?B?Vm5ScHllK2UxakhHcks3dGQ2aTN5ZnRCQUJFUjZnQ3Z6OTBCazM0N3BpaHFN?=
 =?utf-8?B?N1d3c3g3cjh2M1ZhSVJ1STNnN2FhQXR4bmNUeXpMb1BOMnBIZ1QvVUlXS29o?=
 =?utf-8?B?b2pyTGt4d1dtdHdIWUJzVkFkU01LZlVLcUFmZ1FHdlowdS9GdG56RHVic0Jm?=
 =?utf-8?B?V2d4MlJ0NEFUS0xyZzFONk9wallRY0NnSGdsd3dZRUhRQmZXeDhEV3d5T3BW?=
 =?utf-8?B?Q0tQUzdlbjI4QkhTc3NwV2tDamJYclNKbnd3ZHFrVDMwU09INXNqQWVNYlFl?=
 =?utf-8?B?YjJFQmNvVTVIVlZsSTQ0TzB4WXFCY1hnY3RuMWI5OVdKZXhhaU13RjkyZmo5?=
 =?utf-8?B?cFQwVlFoV2tkQmI3dWM3N0srTDRWTXpLK3dLbUttcmxnZlRtUkRRWHBzell0?=
 =?utf-8?B?WjlOUXZNN3c3dlJWb2J1SGRWekFwV083TkIxdFl4djBDeW0xWHp0TFdmbUtW?=
 =?utf-8?B?ZkxMQmxNc2E2Um1VRjVud1hldVhudnMvb1lzMjZQMzM4RFNPK0lsSlBMUlpG?=
 =?utf-8?B?NGY2UjBPNVVkWk1ieWZKNnFtSWhQTHJTRnNrbU5iL3lyN1NsKzZTYWFsRzVW?=
 =?utf-8?B?NXhBQk5jQVl0NC9WNG9OaVNMMlNLMHQvZ0x1NW13WjBXRSs1aEZhaW9jdXVt?=
 =?utf-8?B?N05lZ092QUx6MWFnMHVKS1JjbmVycnVjRlRHRXJCSUE5VzlVV3lwYkpscnhV?=
 =?utf-8?B?VnJ3VklFZE5KMEFOZXVPTEJoeWNkM05xTjA2VmxNUG9IdWdYZDVLRG1FT3VU?=
 =?utf-8?B?TUpNY2dGZWUwZW5TcmZuL3JOTDU4QUpCQjhxcGVPcHdqdnUxMXFrd0hod3Uy?=
 =?utf-8?B?TjFHZnA5L3E4YmZmTUJJQnpVMjd1TXk2RjF5UDQ1bDhnek5LZmZzT2hyQ2tt?=
 =?utf-8?B?Q2ZEK1RpWWsrVmlVbmhTM3RTTTRJaUxEbGcrdmZKUHBUYzZyckZsdEJWcGUy?=
 =?utf-8?B?N01uMndxQjdlNjhkdkp0TkFRQjJibHF2RDIwVXkraUJNRWt0ZUdZSUJ2OHg0?=
 =?utf-8?B?VC9udUhUbUhnbGdZRkJsQVV5YlV1L2lwZ1c2c0ZQL0NVL1doZnRiNUlNcHVP?=
 =?utf-8?B?Nks1d21xSjNJUGlCei9YRElpbE9CQ1RGM0NldmJTRk5WUkx2clNBWEQ2d0lk?=
 =?utf-8?B?RTR1N05yK2x2cVNncFNqTTcwREhNNzI3OXc3OStXMjhWZXdrK2J1R29DSGNM?=
 =?utf-8?B?Z29kS2RHbWpLQWNFM094bU0zWlVzZjJrcUg4V3pvMEVYNWF1endmRUpUZUky?=
 =?utf-8?B?cllDUS9mNUMvai9mS2swQTUwTStWZlY2RDZnVU8xVUE2MDNjaTltbHBBd3Z3?=
 =?utf-8?B?eFVkelZBZVFobXdDOWZUL3BrZC9VZVR0YU95SGxlWXh0N092SDBzbUJudzFt?=
 =?utf-8?B?UlJ0K0plSUs5Y2RWbThDM1RKemlhK3lpaHI2WXR3UkRFWlplbitkMEJZaFVE?=
 =?utf-8?B?QVVWZ1VNRUtKdkRGM3hJVTJkaXVPMEtjeTRqS1FHNGdnODI0MThXQS9rOVFF?=
 =?utf-8?B?UnVFN2MybHhtL0JMdWE1cUc1YmsrL3g0NVAycmxtWEU0M0VYOWNSaW01cE9p?=
 =?utf-8?B?NG5Gc0RxMm1MNFhTUm5JU3FhVWVvaFNYcjIxL1A3d0hmcVdvKzdxeFhXUFkr?=
 =?utf-8?B?L0c0d1Q3aU85RVB2WXF0TzRtbzBxQ2wyaWdXd0lqZ2dxc1lJWWdlS25UNzBE?=
 =?utf-8?B?LzFSRk1qRDI5M3lTWVBZODlKM0lhTVNJR0o1N1NnZmVFVVh4WGlHNmExMEM3?=
 =?utf-8?B?S3hkNldWN1pyTnpiT25TOFhrbm9CanQ0SmpjajZRTFFnTExQWEowQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99a331e3-cfdd-4071-602a-08de4ed14b38
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 16:16:35.0123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DXh1ylA083w4VBwxYRs7iXqIHFMmbLl0gRevjGtBj7JRqvdrp2i19EF5adeCtbr76i0p6InQwgt7Vya5/QrZ/oup/QT0aBJlv5McSWvVtSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5232
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767888998; x=1799424998;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W/VO3wDPARjSfw4clfprdCH+IIKAxZG3Qb6rncLeh/E=;
 b=e/46jgPJmAbdWOYcXE+iHrhCJpqCJ/TwJB7FgBP3KnwXbl+VT7Jx9ylj
 v+v3/snKh+QBdt0qfwYFm9dhBfDYgFzMrzWjpEEiUN9M/QHWn6xzz/rN8
 nSqg4VrNdyE7zyfd+ZPgUk3UkQF4dfFiTNHL9HFXyH43BVoIgbJaOg8ZB
 aH/nq+l1VB9fD1A8MHLicRHLzMaqlTaTHu8iGSkRkY/OtduseeVqvnSQB
 VTap1jj0YuigsMoYaqzI0rMiF2JHNy4uuStWvabP5ZfZpWGKxs7QtYDqs
 IEtYHAdYxlZGzXcqms6pQFTzO5CCmnXCKvH2rdMI8kV0vNX/67VFaOlkQ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e/46jgPJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogTGlmc2hpdHMsIFZpdGFseSA8dml0
YWx5LmxpZnNoaXRzQGludGVsLmNvbT4gDQo+U2VudDogVGh1cnNkYXksIEphbnVhcnkgOCwgMjAy
NiAxMTo0MCBBTQ0KPlRvOiBLd2FwdWxpbnNraSwgUGlvdHIgPHBpb3RyLmt3YXB1bGluc2tpQGlu
dGVsLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+U3ViamVjdDogUmU6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2MiAxLzFdIGUxMDAwZTogY29ycmVj
dCBUSU1JTkNBIG9uIEFEUC9UR1Agc3lzdGVtcyB3aXRoIHdyb25nIFhUQUwgZnJlcXVlbmN5DQo+
DQo+T24gMS83LzIwMjYgNDoxOSBQTSwgS3dhcHVsaW5za2ksIFBpb3RyIHdyb3RlOg0KPj4+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+Pj4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRl
bC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgDQo+Pj4gT2YgVml0YWx5
IExpZnNoaXRzDQo+Pj4gU2VudDogVHVlc2RheSwgSmFudWFyeSA2LCAyMDI2IDExOjA0IEFNDQo+
Pj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+Pj4gQ2M6IExpZnNoaXRz
LCBWaXRhbHkgPHZpdGFseS5saWZzaGl0c0BpbnRlbC5jb20+DQo+Pj4gU3ViamVjdDogW0ludGVs
LXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYyIDEvMV0gZTEwMDBlOiBjb3JyZWN0IA0KPj4+
IFRJTUlOQ0Egb24gQURQL1RHUCBzeXN0ZW1zIHdpdGggd3JvbmcgWFRBTCBmcmVxdWVuY3kNCj4+
Pg0KPj4+IE9uIHNvbWUgVGlnZXIgTGFrZSAoVEdQKSBhbmQgQWxkZXIgTGFrZSAoQURQKSBwbGF0
Zm9ybXMsIHRoZSBoYXJkd2FyZSANCj4+PiBYVEFMIGNsb2NrIGlzIGluY29ycmVjdGx5IGludGVy
cHJldGVkIGFzIDI0IE1IeiBpbnN0ZWFkIG9mIHRoZSBhY3R1YWwNCj4+PiAzOC40IE1Iei4gVGhp
cyBjYXVzZXMgdGhlIFBIQyB0byBydW4gc2lnbmlmaWNhbnRseSBmYXN0ZXIgdGhhbiBzeXN0ZW0g
dGltZSwgYnJlYWtpbmcgUFRQIHN5bmNocm9uaXphdGlvbi4NCj4+Pg0KPj4+IFRvIG1pdGlnYXRl
IHRoaXMgYXQgcnVudGltZSwgbWVhc3VyZSBQSEMgdnMgc3lzdGVtIHRpbWUgb3ZlciB+MSBtcyAN
Cj4+PiB1c2luZyBjcm9zcy10aW1lc3RhbXBzLiBJZiB0aGUgUEhDIGluY3JlbWVudCBkaWZmZXJz
IGZyb20gc3lzdGVtIHRpbWUgDQo+Pj4gYmV5b25kIHRoZSBleHBlY3RlZCB0b2xlcmFuY2UgKGN1
cnJlbnRseSA+MTAwIHVTZWNzKSwgcmVwcm9ncmFtIA0KPj4+IFRJTUlOQ0EgZm9yIHRoZQ0KPj4+
IDM4LjQgTUh6IHByb2ZpbGUgYW5kIHJlaW5pdGlhbGl6ZSB0aGUgdGltZWNvdW50ZXIuDQo+Pj4N
Cj4+PiBUZXN0ZWQgb24gYW4gYWZmZWN0ZWQgc3lzdGVtIHVzaW5nIHBoY19jdGw6DQo+Pj4gV2l0
aG91dCBmaXg6DQo+Pj4gc3VkbyBwaGNfY3RsIGVucDBzMzFmNiBzZXQgMC4wIHdhaXQgMTAgZ2V0
IGNsb2NrIHRpbWU6IDE2LjAwMDU0MTI1MCANCj4+PiAoZXhwZWN0ZWQgfjEwcykNCj4+Pg0KPj4+
IFdpdGggZml4Og0KPj4+IHN1ZG8gcGhjX2N0bCBlbnAwczMxZjYgc2V0IDAuMCB3YWl0IDEwIGdl
dCBjbG9jayB0aW1lOiA5Ljk4NDQwNzIxMiANCj4+PiAoZXhwZWN0ZWQgfjEwcykNCj4+Pg0KPj4+
IFNpZ25lZC1vZmYtYnk6IFZpdGFseSBMaWZzaGl0cyA8dml0YWx5LmxpZnNoaXRzQGludGVsLmNv
bT4NCj4+PiAtLS0NCj4+PiB2MjogYXZvaWQgcmVzZXR0aW5nIHRoZSBzeXN0aW0gYW5kIHJlcGhy
YXNlIGNvbW1pdCBtZXNzYWdlDQo+Pj4gdjE6IGluaXRpYWwgdmVyc2lvbg0KPj4+IC0tLQ0KPj4+
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyB8IDgwIA0KPj4+ICsr
KysrKysrKysrKysrKysrKysrKysNCj4+PiAxIGZpbGUgY2hhbmdlZCwgODAgaW5zZXJ0aW9ucygr
KQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9uZXRkZXYuYyANCj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRk
ZXYuYw0KPj4+IGluZGV4IDExNmYzYzkyYjViYy4uZWRiNzIwNTRkMGQ5IDEwMDY0NA0KPj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0KPj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0KPj4+IEBAIC0zOTA0
LDYgKzM5MDQsODMgQEAgc3RhdGljIHZvaWQgZTEwMDBfZmx1c2hfZGVzY19yaW5ncyhzdHJ1Y3Qg
ZTEwMDBfYWRhcHRlciAqYWRhcHRlcikNCj4+PiAJCWUxMDAwX2ZsdXNoX3J4X3JpbmcoYWRhcHRl
cik7DQo+Pj4gfQ0KPj4+DQo+Pj4gKy8qKg0KPj4+ICsgKiBlMTAwMGVfeHRhbF90Z3Bfd29ya2Fy
b3VuZCAtIEFkanVzdCBYVEFMIGNsb2NrIGJhc2VkIG9uIFBIQyBhbmQgDQo+Pj4gK3N5c3RlbQ0K
Pj4+ICsgKiBjbG9jayBkZWx0YS4NCj4+PiArICoNCj4+PiArICogTWVhc3VyZXMgdGhlIHRpbWUg
ZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSBQSEMgKFByZWNpc2lvbiBIYXJkd2FyZQ0KPj4+ICtDbG9j
aykNCj4+PiArICogYW5kIHRoZSBzeXN0ZW0gY2xvY2sgb3ZlciBhIDEgbWlsbGlzZWNvbmQgaW50
ZXJ2YWwuIElmIHRoZSBkZWx0YQ0KPj4+ICsgKiBleGNlZWRzIDEwMCBtaWNyb3NlY29uZHMsIHJl
Y29uZmlndXJlIHRoZSBYVEFMIGNsb2NrIHRvIDM4LjQgTUh6Lg0KPj4+ICsgKg0KPj4+ICsgKiBA
YWRhcHRlcjogUG9pbnRlciB0byB0aGUgcHJpdmF0ZSBhZGFwdGVyIHN0cnVjdHVyZSAgKiovIHN0
YXRpYyANCj4+PiArdm9pZCBlMTAwMGVfeHRhbF90Z3Bfd29ya2Fyb3VuZChzdHJ1Y3QgZTEwMDBf
YWRhcHRlciAqYWRhcHRlcikgew0KPj4+ICsJczY0IHBoY19kZWx0YSwgc3lzX2RlbHRhLCBzeXNf
c3RhcnRfbnMsIHN5c19lbmRfbnMsIGRlbHRhX25zOw0KPj4+ICsJc3RydWN0IHB0cF9zeXN0ZW1f
dGltZXN0YW1wIHN5c19zdGFydCA9IHt9LCBzeXNfZW5kID0ge307DQo+Pj4gKwlzdHJ1Y3QgcHRw
X2Nsb2NrX2luZm8gKmluZm8gPSAmYWRhcHRlci0+cHRwX2Nsb2NrX2luZm87DQo+Pj4gKwlzdHJ1
Y3QgdGltZXNwZWM2NCBwaGNfc3RhcnQsIHBoY19lbmQ7DQo+Pj4gKwlzdHJ1Y3QgZTEwMDBfaHcg
Kmh3ID0gJmFkYXB0ZXItPmh3Ow0KPj4+ICsJc3RydWN0IG5ldGxpbmtfZXh0X2FjayBleHRhY2sg
PSB7fTsNCj4+PiArCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+Pj4gKwl1MzIgdGltaW5jYTsNCj4+
PiArCXMzMiByZXRfdmFsOw0KPj4+ICsNCj4+PiArCS8qIENhcHR1cmUgc3RhcnQgKi8NCj4+PiAr
CWlmIChpbmZvLT5nZXR0aW1leDY0KGluZm8sICZwaGNfc3RhcnQsICZzeXNfc3RhcnQpKSB7DQo+
Pj4gKwkJZV9kYmcoIlBIQyBnZXR0aW1leChzdGFydCkgZmFpbGVkXG4iKTsNCj4+PiArCQlyZXR1
cm47DQo+Pj4gKwl9DQo+Pj4gKw0KPj4+ICsJLyogU21hbGwgaW50ZXJ2YWwgdG8gbWVhc3VyZSBp
bmNyZW1lbnQgKi8NCj4+PiArCXVzbGVlcF9yYW5nZSgxMDAwLCAxMTAwKTsNCj4+PiArDQo+Pj4g
KwkvKiBDYXB0dXJlIGVuZCAqLw0KPj4+ICsJaWYgKGluZm8tPmdldHRpbWV4NjQoaW5mbywgJnBo
Y19lbmQsICZzeXNfZW5kKSkgew0KPj4+ICsJCWVfZGJnKCJQSEMgZ2V0dGltZXgoZW5kKSBmYWls
ZWRcbiIpOw0KPj4+ICsJCXJldHVybjsNCj4+PiArCX0NCj4+PiArDQo+Pj4gKwkvKiBDb21wdXRl
IGRlbHRhcyAqLw0KPj4+ICsJcGhjX2RlbHRhID0gdGltZXNwZWM2NF90b19ucygmcGhjX2VuZCkg
LQ0KPj4+ICsJCSAgICB0aW1lc3BlYzY0X3RvX25zKCZwaGNfc3RhcnQpOw0KPj4+ICsNCj4+PiAr
CXN5c19zdGFydF9ucyA9ICh0aW1lc3BlYzY0X3RvX25zKCZzeXNfc3RhcnQucHJlX3RzKSArDQo+
Pj4gKwkJCXRpbWVzcGVjNjRfdG9fbnMoJnN5c19zdGFydC5wb3N0X3RzKSkgPj4gMTsNCj4+PiAr
DQo+Pj4gKwlzeXNfZW5kX25zID0gKHRpbWVzcGVjNjRfdG9fbnMoJnN5c19lbmQucHJlX3RzKSAr
DQo+Pj4gKwkJICAgICAgdGltZXNwZWM2NF90b19ucygmc3lzX2VuZC5wb3N0X3RzKSkgPj4gMTsN
Cj4+PiArDQo+Pj4gKwlzeXNfZGVsdGEgPSBzeXNfZW5kX25zIC0gc3lzX3N0YXJ0X25zOw0KPj4+
ICsNCj4+PiArCWRlbHRhX25zID0gcGhjX2RlbHRhIC0gc3lzX2RlbHRhOw0KPj4+ICsJaWYgKGRl
bHRhX25zID4gMTAwMDAwKSB7DQo+Pj4gKwkJZV9kYmcoIkNvcnJlY3RlZCBQSEMgZnJlcXVlbmN5
OiBUSU1JTkNBIHNldCBmb3IgMzguNCBNSHpcbiIpOw0KPj4+ICsJCS8qIFByb2dyYW0gVElNSU5D
QSBmb3IgMzguNCBNSHogKi8NCj4+PiArCQl0aW1pbmNhID0gKElOQ1BFUklPRF8zODQwMEtIWiA8
PA0KPj4+ICsJCQkgICBFMTAwMF9USU1JTkNBX0lOQ1BFUklPRF9TSElGVCkgfA0KPj4+ICsJCQkg
ICgoKElOQ1ZBTFVFXzM4NDAwS0haIDw8DQo+Pj4gKwkJCSAgICAgYWRhcHRlci0+Y2Muc2hpZnQp
ICYNCj4+PiArCQkJICAgRTEwMDBfVElNSU5DQV9JTkNWQUxVRV9NQVNLKSk7DQo+Pj4gKwkJZXcz
MihUSU1JTkNBLCB0aW1pbmNhKTsNCj4+PiArDQo+Pj4gKwkJLyogcmVzZXQgdGhlIHN5c3RpbSBu
cyB0aW1lIGNvdW50ZXIgKi8NCj4+PiArCQlzcGluX2xvY2tfaXJxc2F2ZSgmYWRhcHRlci0+c3lz
dGltX2xvY2ssIGZsYWdzKTsNCj4+PiArCQl0aW1lY291bnRlcl9pbml0KCZhZGFwdGVyLT50Yywg
JmFkYXB0ZXItPmNjLA0KPj4+ICsJCQkJIGt0aW1lX3RvX25zKGt0aW1lX2dldF9yZWFsKCkpKTsN
Cj4+PiArCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZhZGFwdGVyLT5zeXN0aW1fbG9jaywgZmxh
Z3MpOw0KPj4+ICsNCj4+PiArCQkvKiByZXN0b3JlIHRoZSBwcmV2aW91cyBod3RzdGFtcCBjb25m
aWd1cmF0aW9uIHNldHRpbmdzICovDQo+Pj4gKwkJcmV0X3ZhbCA9IGUxMDAwZV9jb25maWdfaHd0
c3RhbXAoYWRhcHRlciwNCj4+PiArCQkJCQkJICZhZGFwdGVyLT5od3RzdGFtcF9jb25maWcsDQo+
Pj4gKwkJCQkJCSAmZXh0YWNrKTsNCj4+PiArCQlpZiAocmV0X3ZhbCkgew0KPj4+ICsJCQlpZiAo
ZXh0YWNrLl9tc2cpDQo+Pj4gKwkJCQllX2VycigiJXNcbiIsIGV4dGFjay5fbXNnKTsNCj4+PiAr
CQl9DQo+PiBQbGVhc2UgdXNlICJpZiAoY29uZDEgJiYgY29uZDIpIiBpbnN0ZWFkLg0KPj4gUGlv
dHINCj4NCj5BcyBJIG1lbnRpb25lZCBwcmV2aW91c2x5IHdoZW4gYW5zd2VyaW5nIHRvIFBhdWws
IHRoaXMgY29kZSB3YXMgdGFrZW4gZnJvbSB0aGUgZnVuY3Rpb24gZTEwMDBlX3N5c3RpbV9yZXNl
dCB0aGF0IGNhbGxzIHRoZSBuZXcgb25lIEkgaW50cm9kdWNlZCBpbiB0aGlzIHBhdGNoLiBUaGlz
IGlzIHdoeSBJIHByZWZlciBrZWVwaW5nIHRoZSBjb2RlIGFzIGlzIGZvciBjb25zaXN0ZW5jeS4N
Cg0KUGxlYXNlIGNvbnNpZGVyIHRoaXMgYSBzaW1wbGUgY2xlYW51cC4NClBpb3RyDQoNClsuLi5d
DQo=
