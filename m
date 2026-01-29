Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGINILY1e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:25:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DE2AE9DB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:25:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD73340B9A;
	Thu, 29 Jan 2026 10:25:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3_T3tERRpzUJ; Thu, 29 Jan 2026 10:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44C3740B57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682353;
	bh=FNv+a4EYVKCU7UJD5YVMmTFFqL9nWz9SCVZ5dzZ8/B8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iqiIUmziyOT70FMDg9WdN5azGkVyCOtxcE8ni9WvIruMqAVb7o41uRFQTiY9ist17
	 YEV6DVagUXKazyahDaIXgH8cTasxAOo6ZZXpD/3f1xFYLtLPqUeT1et51xnNWR8ke5
	 X2yaEqoYiUEpRfi+2W0AW+GNI5PVzj9ZtoDBNM74vwa/GbXVP4lW6SXVgAuOcACgS4
	 3+N7l0EYQprAJwbvrokNNcuOh7aaNwPXAjRlMemtT0tgH1BLwxI3lehMKWDUrCheb9
	 ULLb/IlTQDnJH8nH+PGolir8Ie94OHuf2Nl/rsf0y2/39wRWHYpQ/BEdit6x9tFM8z
	 RM4mNTk8moJPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44C3740B57;
	Thu, 29 Jan 2026 10:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A8E41AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F13C240AF8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vwjjYV7LRBTp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:25:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 23AA040AA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23AA040AA5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 23AA040AA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:25:49 +0000 (UTC)
X-CSE-ConnectionGUID: n6x5c7S2SBWs/L9v6BhJIg==
X-CSE-MsgGUID: mo3QVddTQpW8oevlXS80nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="58497956"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="58497956"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:25:49 -0800
X-CSE-ConnectionGUID: fD6tOvxFQDip84CBZcTU1Q==
X-CSE-MsgGUID: waiWHKYrSDeU1Ru9dT86Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208142441"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:25:49 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:25:48 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:25:48 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.14) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:25:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HSWn0BDcBtjr+D04X8uMwl2FUwgpqd0/GiuzVwPIulXJiOWoV9y7F1MzrBqVUiK0SmwvBDuSDwk67mVWmXR2qQF68PzRzZQEBGc3HWrjjJnvxcjutskJKGfm1Ve+rf2y8xyyEdTjhx0m3PmdQQqhAsjdRkTJoQ5r2cWQrxpsrahm/ihLutIMqZfd4iX2TsGrocakXRYj2ykWp2/Bzd2HyoRdpk3EqR8dersEIgo5gCxD0acHmRCPdR7TTC0npjpCkfIH7vGRgrHAVmx2dUIApe6TC1cp0JTVZmX4IBsiZV57G9qqpdzsoEFxhD+sIiIAcOS09zf8vgx9uJh5umge/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNv+a4EYVKCU7UJD5YVMmTFFqL9nWz9SCVZ5dzZ8/B8=;
 b=x2x2m1UZ0q3TK5OQhdRebG8FaodLiM/ls6sgd2mZpl1QME849yNv7hG3o2HHwWcKGbBPi+te1Az3Ggd5cJrk+kAG2TzdA+6SB9DLo20bTJ1EUD8IV+FIIpUS0DdMt4ni7SoylwulkPUnBWeFWhzYWG1pztn7VdfHGAvDeOcO80gtHAFEA2CTXwT0NhPN1HkigqU8ZVVQ1DPEmpPplblihGvDAnsAvRS4bIvKuBwGw3v9qPCno0KgOHAU6fMxRPc+JQY7RARKh0TDnz5gtwhuXQNYBdpsosYThWNFDbeWW+Rb8D9ED9UdXRRynEc64HBICpJYa9ylDs9yM2FerC0/NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV8PR11MB8697.namprd11.prod.outlook.com (2603:10b6:408:1fe::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 10:25:46 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:25:46 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 10/30] docs: kdoc_parser: don't
 exclude defaults from prototype
Thread-Index: AQHckPaDFMzi59/3H06Ut8inCZYEGrVo8U6Q
Date: Thu, 29 Jan 2026 10:25:46 +0000
Message-ID: <IA3PR11MB8986EC9B1D968B5156526CBEE59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <0c40c7f91dd5c95b1efcc0f2c0103f941f3c24d1.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <0c40c7f91dd5c95b1efcc0f2c0103f941f3c24d1.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV8PR11MB8697:EE_
x-ms-office365-filtering-correlation-id: 0b45ce67-74ce-4752-236f-08de5f20c401
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?M25abVlSNUZWR3RhME1YZ1RPM1Z0Zll5TDhWRmJmK3JTNDYzbUdKUGVzejBx?=
 =?utf-8?B?b3RHNGZrM3FISHkwTzFpQUNwdlc1Zlh0UElhMGt0L1NseGlDYjFnRTFVRi8r?=
 =?utf-8?B?ajFud3MxVklvMi9ZWjBwanp0eGFJeGpPVzNsZFVvME1iT3NNZ2JaYS9mMnM4?=
 =?utf-8?B?blZZZ3I2SWMxcXRUb2NlT3M3bHdOSFhIRUdEdkh5Z1B1akNSUUR2cEZ1WjNm?=
 =?utf-8?B?eWR3RTdUL2N0NUs5ck9wQW5oY2dQZGQvajNUT3djaDZtZGYrNUhKVEtIamk0?=
 =?utf-8?B?STZhcWx6YVRJYUhmLzBXZFN5YlVERFd6YzluS3l1b0lxejE2ejQ2M2FXVVh3?=
 =?utf-8?B?Y1VlaTZVUkJTa01hVVNHTG9yTHBOcXZpUDB6U1FzUUtndlk2OWFzSVFUbVNv?=
 =?utf-8?B?YVpjOG5uNTJqL1ZuZTQ5d0JKa2lXcXhNZW1vZEJ4U1ozOWVoY3BOYVhDMnB2?=
 =?utf-8?B?SEg2T2FLbDNvWmNRajA0RWRhV3pCU2JJOGU1Yy84MkJ5NHhrZmZ2M1Z1NGt5?=
 =?utf-8?B?S2ZqY1hDVml6Y1I1QmlDallvSzVhR01jWnBTeW9RbThhWXJLSE5mMm9VQXU4?=
 =?utf-8?B?T1ZwNjhNWDdTUHcrQllDK0lSTUpOVm1XMVV2UU1iR0VheFg0UC9PdWNEd1p3?=
 =?utf-8?B?UFdlTDhqMXF1QXlrdWpqMnh5bDZjQUFXRHdCVTFrSC9vVFJwLzN2Ti9jckcv?=
 =?utf-8?B?dkw3U0R0dUk5T0RsTlBZLzJaRnZUdlZqaU1jNDFUUEVjdDhCWVN0VTJtWHlx?=
 =?utf-8?B?dGRWWXRrbW5HNHJJc1JRYVFvblMyam1sU09HdmN4KzRvTUw5ZzhUbFFQRGJ0?=
 =?utf-8?B?UUs4eGhtNk1iQkZ1c0c1MkdkVDUwa3VVQmZtSE90RTRzRkNwUmF4VjhDWS9a?=
 =?utf-8?B?Q3ZWclFxNnhUODZBQWFZaGxZSUwyZTdvNW1Hb2VSdkdEOUViWVFEZmk4SUlT?=
 =?utf-8?B?K0l0ME5HUjNnTXc3WDRCaHFnY0dwTnhxNkRZSWcwTmNhWCtJK3NUUSs1cXFF?=
 =?utf-8?B?VCtVWkNGanhEZEFoeTBWcVIwWDlkVnhWOWNuZlFtQi8zTGxDb2hCYVgxU0h3?=
 =?utf-8?B?cmcweldIUHVlVmowNWxheG9JMWNBbmk0L3N3S1liaENxdWR4SGxleU5WOUN6?=
 =?utf-8?B?ODA5TnVBa1dWNUZwcUlwYTdhblhNMGF2ZDlheGxaa1l0NmRkTU1kanU2M1l4?=
 =?utf-8?B?QTRqbWRsWVRrSWc2MXlqbHUvc3NUS0d1RTJqeVU0Rmp5SXh5YVpBNDJ0TVhC?=
 =?utf-8?B?VFRzM1M2YnJXQ1ROY2Y1K3h2ZitxTzkvUGZNeTBGZTgvYXFKYVNUdGh2dkNj?=
 =?utf-8?B?Umw3SWtoeUFYamNNcVFZQTNsem9MRVZhVFNTS3ZZRmJYbit3TUMrVWtsckw5?=
 =?utf-8?B?SXdpRHcvK1gzcy82ekRoVFZJOGtBZ1dKcU1EL1ZRajJEL3VlZ3ZBSHNTd1d0?=
 =?utf-8?B?dWcrTktlRHIrV2M1S0lZVzc2UDd6dWs0OWxUWkRIMHNjdUpVMmpPc3lwMU5V?=
 =?utf-8?B?Tm5JekJaOGNrTHFpZ1VzMkJ5Z2hWWEJ0VmowQ0EzRTlXOS8wOTNxYXhxZnhl?=
 =?utf-8?B?bDdsaHliMDhyT3Y2QU5aZnd4VEY2NUdQaXdFVjdQcTBCN2U3NmlFc1JxdU0v?=
 =?utf-8?B?V2lwMnpaWWI4TFpGVG5nTXZNZGpDSUdFTm9mSTF6dUxuTTlJblBlUFM2U0I2?=
 =?utf-8?B?MEpoN1ZHakdzTU5hOG1IN2prQTFJekYwdFY1ZmVVUWN4ZzcrY25qcFpueHFz?=
 =?utf-8?B?QTVPZlRiRnBzZWlLOEVJMWs5V096bk5SU0FGNzVQa1VtZ0t2dGNBT2lYQUxV?=
 =?utf-8?B?RW5rS1BtQ0IxdllJaWgzUmE3a1E1TDhVWng1a08vK0VFNTl0aFNpNzVoOUhG?=
 =?utf-8?B?VmF3SFdGOFN5RmMxNmZyUEV6bGhzeGZhVnI1YzFlanA5WHMxYWpHemlRc0V5?=
 =?utf-8?B?ZG9zQWtvcnNBMXFwVERPT2owMFFqT1NBMUdSWFpDSFhTc0JzRUNZd1RNYUl2?=
 =?utf-8?B?VGo1Mk1ZRklwanJHYzdmR0lnY3UxaWc0S0YzYTJGT2dZYk1OR2JGUTUzcnN5?=
 =?utf-8?B?eTY1M3h3QU9wSitwdFZQTTB3Um52T0o4RU5Bd2hzMlZRNGpsSDNUYnFzdW5M?=
 =?utf-8?B?MnFXUkpySnNyWWozV2NZZ0VLS0xvbTRibzVsdEwzTWZYN0hneGtkWm9HZEtk?=
 =?utf-8?Q?Nl3Vm2ot+wRNTmJWu96jD4U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlUvUUp4dGh4OThrV3B0OFF0cVQ2bjRDYUdQOWwrM2pFS1YwRjlGbnVSVDVI?=
 =?utf-8?B?eXV6ZVlJWEdIdGNMY2FSRVRzYlF1NFdBQnlSaFU3MjZVa3hTM0F0eER1L2xG?=
 =?utf-8?B?ZFVCNDhPNVUxaVg0SFd4MzRQTmNUanczYkFSTzdYbm56aE9UNXVXSStzWjE2?=
 =?utf-8?B?cngrOGE1amMxV01Pd1hjSVZCa0NwZ1JRaHNBT1ZqR2drNkxlbXpaRzJyWFlC?=
 =?utf-8?B?czNzNVVacDYyYVZLMEJ4VlBVLzdpWkVZQjErak1xWG9QNTNaS2R2QzZIUFdY?=
 =?utf-8?B?WmwraU41dXpLRjByQzBNWG0zczdmMWQvaG5maFZoMHdLWDAvMENDSmlhb3Rl?=
 =?utf-8?B?VWh0cUY5dFpvSDU2bzVBaWZwU3RYbzZKcDlldS9GVkZLQWNhVFc1N1JtL25F?=
 =?utf-8?B?aWdCc1l0eFRLQnU2U3NaYVBsci9zcDBQUU9Veko5cWlkbG1iditGUmV3d3h0?=
 =?utf-8?B?ZXFoazZ6L3UvNnFMRnlYOXFSS0FqdU5vc09jOFN1WHJPbHhnNWF1VlhSSXhv?=
 =?utf-8?B?cU0yZjE5YkpYb0JmRHFYY0c1UEpFYlVkQlI0cVV6MnFnWkV4V1lGZDNNYmQv?=
 =?utf-8?B?SnlNb1QyZGNvOVc5ZXNEVnlyYzhCUmp3MzgwZk9iK3crRnNvTnYzc0VhVmpn?=
 =?utf-8?B?V0Zzd2QyNklQWFJ2OXh4MzB3QktPLytnS2VLL292RXlCS2tMTys1VTZSd20y?=
 =?utf-8?B?RzYxQmxQQTlZSnBpNDNqakNvaXEzZHRqeUxUZFRZdTRIRmFRRmpIWllHd3lx?=
 =?utf-8?B?T2I1WnpSWU5PSHEyM0s5VzRIWU5RR3dTZjkwTndYdW5pcnlONjcwTlU1OHZa?=
 =?utf-8?B?S0NmUFN4RWRGS1pBa2MzM0dhY1VPRnlJQjNUaTBDYmxnQVVVVjBaN2hETytM?=
 =?utf-8?B?MkQweUtRNEpWelYzSzBhMlhOdUhnYXIwT1VmRWFCOU9kWmY5eXVEYlBKWFA2?=
 =?utf-8?B?MXA0bTRsOEdZZndZa2R4Q2prTkpWWGVMVU4ybldEMzFocStWQzMxTzJUTXZX?=
 =?utf-8?B?VG51Yk9uNndGaEVaWUx0Q1BNTk0xUnNXdkRwaUdHcXRETkpuM2hiN1VPM1Zz?=
 =?utf-8?B?VGF0V3JvcXV1NC9vajJzalBXVnJzbGdlM0VaakhFdHRhQ2I2MHhFRzJDKzJZ?=
 =?utf-8?B?bTY3UDdnRDVFL3lFNVUrWSs3cFc2SkJjcVMyVUMraDMyMVE2UlJRUXN3cXgw?=
 =?utf-8?B?Z3dXaTMyeDg4TzBtYmFrRGdxU2lIT3FJTnptYURWNVArL0pUZkVEbWVBai84?=
 =?utf-8?B?S3VvWis4MmMvZDlucnlGeWppMzRHRVd3S2t1Ukg1czk4Z2JpVjg4YUg3QVk4?=
 =?utf-8?B?UEEyMlpoSzhBL3EzSmc2S3lMVFBxVTRQZG10TjJFRkU4UDcwblIvYmwvT3R5?=
 =?utf-8?B?bzludHBmeGp0MHk5MDF6OEFMQVBrTmdIWk1xT1VaMnBhbDJpLzhib0s5dThF?=
 =?utf-8?B?TDFGb1JnNmFLSmw0ekdMZWxyNm80Z2xpTXp6TTRGK2JmTkpFcmt6ajlLUW9t?=
 =?utf-8?B?OU1YUDVpWFNuSHZqNERSY2NYQkFLR3dFb0JjZncvQmpYbkpEMWJOU3hGR29Y?=
 =?utf-8?B?aGQ4ai81QlowU255RjhLTFdRSXFkZGgxamFBVHlYa2lQRUluV0d6NkdvNVJG?=
 =?utf-8?B?TW5xMHU1Q3BzLzZnanRJYzdLaXR1aC9wMzdOdUhySUN0ay9tZm5FdVRlY0hT?=
 =?utf-8?B?OEpnUFEvL0o2Ni9RR21PSEozMU1pL001bDZQUVFkSXlqR0lJWEZ4ME44MnVE?=
 =?utf-8?B?eUFIUkNETVpQOGl4QWhIV01pcitteldoL0ZpTnVXLzViQlprdUxkeUJWZDRt?=
 =?utf-8?B?WGdJTWQ5K2RWdk95RGpMOSt3ZVlUdTNnVWZHcHVlVzM4WUczcDVMVjdIK0RU?=
 =?utf-8?B?MGNkcVowNTNzdjFmQ1BlSkc5Q0VzM2tpRitBSXkvSWxWU2ZkajY2b1pySnBs?=
 =?utf-8?B?Z0xaVzJKdEx6OWdKUEZMOUJZVThxZzJBZzdUYmY0UWF3aUFnbTlWWFlPenB4?=
 =?utf-8?B?eFRoM0dYK1pJamZ6QkVBaDlsd0ZEa2ZEcGtFWlVxaW9sYVlMZDhNTzc2eFFy?=
 =?utf-8?B?Q0RyMWsrSVRWNTBFOEJhY1NxQTZNNFQvTWRaYjNNNzl6eEpQbVV3SHcxTU1B?=
 =?utf-8?B?T1ZvSWllNGFsOGEwaHdIelB6UlB3OWhkTmFjL3ZHaUVGRzhHTXQ2MXJSdmJP?=
 =?utf-8?B?T0QyaFhrY3NNeEk2SXFtZWNGYmJ5QWdlc3IwNGFIWWFHdkxnWlgvRFppYjFM?=
 =?utf-8?B?MW95NkVzKzdFdExRbHY4SVZ0aDNwOUtUMHJHR056WFVrd1VXRjVFS1NBUDEz?=
 =?utf-8?B?RFozWE9xeUlNZ0VoYVBTc3ZsZjJadGVuTUNCQmpROXRXUEdNakt0RDFXMmwx?=
 =?utf-8?Q?jvtCjuNhUE4MWSo4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b45ce67-74ce-4752-236f-08de5f20c401
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:25:46.4801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9SRHucY1pvSfelpMh1Ijqb0fmpN/2inOPyPrSnTVbA4E4EMBYKupbticyvea93g/UusChGLi42BvpIbndAZ2hlMpjP+gVCl/SSlfBsWZlv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682350; x=1801218350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FNv+a4EYVKCU7UJD5YVMmTFFqL9nWz9SCVZ5dzZ8/B8=;
 b=gfG8MO26DbNAc3a9oYlVI/f34UKt75NZGfFuUOFvIwEaqgigQukRhB0W
 dyeYaFchBpzUaDrWJjZlikliCfzC7DSk3lBUUwP56a6XO88puAqt9gAqB
 6QxI1mDS3mPf3un10+yHW2hWrP4K41RZOCCZ5zHN6uqvYs7WVaD9kADet
 pYtq4qSmsC3tn088z4rX8KUS7Nr3NnPsUILyJespfeSNoKpG96AbJkEwl
 lx5XprmmeRvhGq8VHmaK+yJw68GqRG+6pB8pQf1Yl7ib3fInEbeqmG6Ey
 10BJXGqkEheIZSIDqe402GjKXyhf/3V4kTLCpCoAT09eWJzN+X361jcYd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gfG8MO26
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 10/30] docs: kdoc_parser: don't
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,infradead.org:email,lwn.net:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 57DE2AE9DB
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDEwLzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogZG9uJ3QNCj4gZXhjbHVkZSBkZWZhdWx0cyBmcm9tIHByb3RvdHlwZQ0KPiANCj4gSWYg
d2UgZG8gdGhhdCwgdGhlIGRlZmF1bHRzIHdvbid0IGJlIHBhcnNlZC4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4N
Cj4gQWNrZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiBUZXN0
ZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiAtLS0NCj4gIHRv
b2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weSB8IDEgLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS90b29scy9saWIvcHl0aG9uL2tk
b2Mva2RvY19wYXJzZXIucHkNCj4gYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIu
cHkNCj4gaW5kZXggY2NlZTRlMGJjYWFiLi4wYjZjYmE0NDJkNzIgMTAwNjQ0DQo+IC0tLSBhL3Rv
b2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiArKysgYi90b29scy9saWIvcHl0
aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gQEAgLTIwNyw3ICsyMDcsNiBAQCB2YXJfeGZvcm1z
ID0gWw0KPiAgICAgIChLZXJuUmUociIoPzovLy4qKSQiKSwgIiIpLA0KPiAgICAgIChLZXJuUmUo
ciIoPzovXCouKlwqLykiKSwgIiIpLA0KPiAgICAgIChLZXJuUmUociI7JCIpLCAiIiksDQo+IC0g
ICAgKEtlcm5SZShyIj0uKiIpLCAiIiksDQo+ICBdDQo+IA0KPiAgIw0KPiAtLQ0KPiAyLjUyLjAN
Cg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0K
