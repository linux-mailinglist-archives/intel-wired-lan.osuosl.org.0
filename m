Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BADC977ED4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2024 13:47:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4697360732;
	Fri, 13 Sep 2024 11:47:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G7qL4QAuTf8j; Fri, 13 Sep 2024 11:47:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2396608ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726228074;
	bh=NalNsHnzy6hK/LZzHR7DK+QfgPR4IAXIjhnDagJ1FWk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6/3R+FE5P8PsjKWg2Y1j6oDefpsMC0sAy63L2jyXe/sl0CoI/eUdfhd6RydizVrnR
	 0G4Of5yYGKQdL7Ef++jfIPues3l43XDzfOroUAnqPHLJtVwOBTlVn8WfaAPeepP8SW
	 92vs/MyRBDXetQJI8FqHOW44qXM0Xm7uig2bFNQb2J8f7/cRnRH0syHQhBrQnloZhK
	 YpCTzGKjE5m/1ulc1/zygNrzhnELYhwGYl0jKkUF4F0oP0Amh7hVpQEUN+wj5g6Zje
	 7vCIxAI8DRf6Rv2LZK7TyXK3AyBMcJyNN38B0//7MuE8AtGV6zovbsPY08HYsolFUW
	 TOcYzjj3OV/Vg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2396608ED;
	Fri, 13 Sep 2024 11:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E5AE1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 11:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BB7B814A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 11:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IFvGWOEYvW_2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2024 11:47:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=piotr.tyda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 35BF981479
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35BF981479
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35BF981479
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2024 11:47:49 +0000 (UTC)
X-CSE-ConnectionGUID: ZtcUsdshTListBhx/F9rdg==
X-CSE-MsgGUID: KT4ViHGLQ8+oeFTzvWXAJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="50539302"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="50539302"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 04:47:49 -0700
X-CSE-ConnectionGUID: rXKAOm2+QlSJ6ingOVb/Zw==
X-CSE-MsgGUID: ccIrmw8sQRaJGPuIjMTFpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="105484794"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 04:47:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 04:47:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 04:47:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 04:47:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CAX8cL/sW0d7AZw/uzhOH1e63/3JYycPHVKB7Nk2zwXfcQw85u7k9FMUJOwAAHOP5MbnFrwP98XuxkaPmpSQ56CXzceWkoPhTaekOpxoHhumNol2fkCHqH5Ei//c3O4p2A4VManU0AaH+m15waiVkgNiA9qMhf5Fd84csh64eBFr64WAFTEDGPyU3s54ZJxpr27otPGicS7MyfE52FbyxkG/XKpdBb3DOjLU3Ggtyl2XdEfSXJ+oXn07E+XarbKVwL/JAHsYfgk16pvQJejcT6qjXRGX7m/EaiJJcq8T2EPBisEsLTPQx3iY9xv+KH8EtHd//huArcJkut2QpHFK8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NalNsHnzy6hK/LZzHR7DK+QfgPR4IAXIjhnDagJ1FWk=;
 b=fyCr6b7+lj0sFJvnPSG1Y8zXrMFMPKahr6JplYlrLtnRu1nX88EthN9vOBXxvd13waPd/DIx4hBdu51NGl/DLi4+HaNevY/z+H7v9pgtvpjK2vC2W23cBRYQ/V0arBYbVOj8u1cldEE/rJiKNJc8hXF9X06g5T6s7Gj742cr2+Ezc4Qv/BCWdiprw/HV0/NpsizAqfAkXRIQoXrhe2b6Qe32zQGadn2WEtxOeQTYObUk92evIwbWrWyUdqy/vE8vPiiJO5oNntuggyZSawimePsizSVGbdxSXhmB+Je1sp/sF12r8y8OkL+BaVZS2OA1KwN90V15Knwd0sLXjBMIyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5230.namprd11.prod.outlook.com (2603:10b6:5:39a::13)
 by SA1PR11MB6990.namprd11.prod.outlook.com (2603:10b6:806:2b9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.19; Fri, 13 Sep
 2024 11:47:44 +0000
Received: from DM4PR11MB5230.namprd11.prod.outlook.com
 ([fe80::a699:b311:5a94:2af8]) by DM4PR11MB5230.namprd11.prod.outlook.com
 ([fe80::a699:b311:5a94:2af8%7]) with mapi id 15.20.7962.018; Fri, 13 Sep 2024
 11:47:44 +0000
From: "Tyda, Piotr" <piotr.tyda@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-net v1] ice: clear port vlan config
 during reset
Thread-Index: AQHbAFxqKiTe2uwUqkOTXY5AvRJrjbJKu/iAgArn7SA=
Date: Fri, 13 Sep 2024 11:47:44 +0000
Message-ID: <DM4PR11MB5230F644A95A1160D0F5700099652@DM4PR11MB5230.namprd11.prod.outlook.com>
References: <20240906125706.46965-1-michal.swiatkowski@linux.intel.com>
 <1ebe2e5d-3243-4fb6-8798-a331f1ce3539@intel.com>
In-Reply-To: <1ebe2e5d-3243-4fb6-8798-a331f1ce3539@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5230:EE_|SA1PR11MB6990:EE_
x-ms-office365-filtering-correlation-id: 48d02c69-c855-4a0f-ccdf-08dcd3e9e197
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QlNqeXA2MkhzWGhMeU83K2NUT01uVUYyaldtZzIyRlVtNXNtNHU2R2x0RUZY?=
 =?utf-8?B?dGlUblU1UUk3NGpldFpaelZDTnorTisrdlNaYzVQTnR1czZ1Yi9MN2dkbHBS?=
 =?utf-8?B?MTdJcEFFZ29ZRmIyRHJIbHBzd2tncW5neFBEb0V1amhrYzhsSTQydytqZys2?=
 =?utf-8?B?MWtZS0dPMDJYQzl2eFBTeFFtc3BkcEQxcHZxMW9ISWNoUVgzUkdNbGdDMUt5?=
 =?utf-8?B?WWpCRUhvbEZhcUVEZzRQQkRsUzNENmJOVUI4S2NJWmU3QWhMUXNlSE9SRWtj?=
 =?utf-8?B?aTF5c3RsL1lmLzV3OENzMVpHVWxNM1FwMk41eXozc0NtbFhYOFBacnZmVm8r?=
 =?utf-8?B?MERSYjMrN2ZWSXdvSHhDanE5bVB2NXhtenNVL1ViV256ZjRXWFVBTzYwejdE?=
 =?utf-8?B?Z0JuV2pYekMwcWxmTEJ6Wm5md0FDQmFMWGhWdHB1NnR6QUI1WThyZzM0dEZx?=
 =?utf-8?B?cW9FMHBWOE5uanZtNDNzbWZNZk90bExPYkI3UUZMb2xNakJmbm9WeTh0eW1q?=
 =?utf-8?B?a3BaSGV0VUxRV3dJUW9Ca21rYWFGNUFvOHdSbiswdmlDM202QnN3azc3d1pr?=
 =?utf-8?B?Z0dLV3pJeVlSZGUxU2s3bXZBNkJYN3FnT2hPWXo4R3Y0SGVva2pCRW5KbUd6?=
 =?utf-8?B?WWN5REh0UWpnL2NyR3pZWVU5am4rbC9zMW5ESTdKYlJGVjhPcERqS1hOR0cr?=
 =?utf-8?B?TmdlcVJvcXNVTDZXRm8wT0lKQ0dxc0ljdTV4S2t2MUhQT2szUUJRYWF4Nk9B?=
 =?utf-8?B?RkJuRnRYaER5Zy9TR2RzdGxoWTd1SGwrNHVlRmxUU3hWRXZLUGhUV2ZxV0hH?=
 =?utf-8?B?RU5rMkhNZHE5dTJpd3dXSmtRVkdqdmYvVFA0K29jRUNHOWRwYUpIZmFQaURi?=
 =?utf-8?B?QjBMLzEySkd3SW9RZmN2RXZkd0ZCM09uTkRzdTg2eVFQamFsM0lubVF6N0Fv?=
 =?utf-8?B?MEFJQ00xWmFRdEVQWERjQjZDRXVpMGxmZ1JuVjZVL20vTk9Ib0JyRlZCaTJB?=
 =?utf-8?B?V0VTT3pLd3lsQjNwayt2RDFvK1M0YkZEcGhXdGQ1RExReUlBcnJpeHpCcDkz?=
 =?utf-8?B?YlIwRkQrM3ZNWGtIbkRyR1FWNkhadXZZWGNveTdYRllVNjBtNEY1SWRxMnJr?=
 =?utf-8?B?eGZFNnJQTnY5TFBHOGFSSEM1alRQY3UxWG1UNXJ0R0ltSkRpZDVRUFBlSHhj?=
 =?utf-8?B?LzQrcHlQNHFSaTJCSENxOEFOaVMyUEJNWDBEVnJhclFnWHBrd2VVTjArOVY5?=
 =?utf-8?B?SVF4M3ZRV0lIMzY1a3hYWm83eWRCWjU4blhUQWJTdStUT1JhdHYyZnFmdzgw?=
 =?utf-8?B?WXZ6bnRBWWgvK08yRVdoaEhKZURtWTZadGV2RHZlL2Vrd1VaSnlvRFJCbHJk?=
 =?utf-8?B?U3U5WTAzeExXQjM4UExLWEVMU2VtOGprU1ZrUk94WDJFRUlQb1NpTUErcGpp?=
 =?utf-8?B?Y3d6cWlrVk9DNWMwMGdlR3haKzVxSy9hSDcvR3ZXemEvK0tRNmszYUYwTEts?=
 =?utf-8?B?cGZocHlvRWkrdHpmRzRVS0w0U1FtdGxYZUY0dUxOTC94QTJaeXVvVnE4dEJ5?=
 =?utf-8?B?dXo1SFpUS0ZRSklVeHFoMDhmeFhxSGVmSHZpUy9tR3h3cnFUSWFlYXRMNzY4?=
 =?utf-8?B?RkYvYVlnVlVPcU8xd0NFZU9FSHUzeTNKTlVBTnVGVjdQU2xzUWNaUkRpcDhR?=
 =?utf-8?B?ZEMvZ1dMQXVMUGo5dDhWR2RYQ0EzaGdBMmVhTWI1c0pzaXhrbzZSMDlZMnpa?=
 =?utf-8?B?S29qMG1GQngrcHZFNGV2TDlXSFN5cEExamdTMlVVbm1TcGNmZkt6cmNvYVZn?=
 =?utf-8?B?N2VyNDZOVmlCQ1NhWi9VMnRtUmJsZGtEVUw5STRWNk1wejlhdks1MlhLN1l0?=
 =?utf-8?B?Z2ZmejJJZ3ExTEk4SnlIdVlteHdhMXFUYXJXcFF6WXpnRWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXhhY1JqMVBsMEE2Qi9scFIyMnY1eXFhdGxSdzBlUTUxTEd6SVIvQ1JFdHI5?=
 =?utf-8?B?SVg5RnZiU2NKSzBrYks2cmRZUVB4Vk1URjdUMnFrd2swelk5Z2IxU0ZtQnc3?=
 =?utf-8?B?ZWlSL1V0NU5ZL3A0bnVLNU5pT2dyUmF0anpZanpQOXhQdzlSb05ueFUwMTAw?=
 =?utf-8?B?Y2s5UW1wOElMYzdFS2owWkYxR1FhaEUyQ1pFTzN1R1dML09TOGluNzNOWjJy?=
 =?utf-8?B?clZMZ3ZrcXhlbS9panVrUVpFVGZ0L2JxZE9DbDJ5OWhzNVdaWWxMbFZsNCtO?=
 =?utf-8?B?ZkExazMvZ2NRVk9lWmJLcUhMYXVTOEZnTVU4bUM4MUpqLzBHOTNDTnovWHAy?=
 =?utf-8?B?aStVbk1waTRiNUVQZ2wweWdsU3ZtQ2VNMHd2RXl0dGxFeXQwK2FKMGtsWnZ6?=
 =?utf-8?B?OGJzQy8yd3JaenFDdktMZ2hEd25Ec1cxVWFsaXViQlhpY0Q3QkVRMDNNR1Vp?=
 =?utf-8?B?c21lMEhUWFVmZitUZUZGL1E1MWlVZzhzSlFMRXlvRHV3cTFqdm5VaHRpZkxh?=
 =?utf-8?B?QTRSODFBWjJaN0RadGtQQjZxNjRNaTR3N3pkaVZEY1NQMU4zUlVGU1RjSUtG?=
 =?utf-8?B?SDdKZ0dibldObmNjYTc5cmp5VnByTEk2K0VjWFdZbW96RFZJekxUajh5a1Nm?=
 =?utf-8?B?K3IwQm1wUEh0MGlVNnRsQ0xNVkFrdVk1NHhyeGhjTzJxV3VSS0YyMEMyVmVL?=
 =?utf-8?B?UFh5R2dvNXROdVlMYVNQTTBRU0s1WkliWmdlVWtjNlEzZEt0MVV4czVaWnZW?=
 =?utf-8?B?bDFNaDBETitRaGJVM0h6Y1dleDdwZnVzcW1hQm55RS8yQ1Fnd1FrMG9EMTNZ?=
 =?utf-8?B?ZHBqUkxjUDZ0VXorU0lEUXNlWjdWdVdxRVVuQWQzYVhvMVlxemRZR3VYYitW?=
 =?utf-8?B?b0JyekJwb1phOWVSdUdpYk44dzgvRmt1R0FCaHBZb20zVmpZckdDTW1pc3RB?=
 =?utf-8?B?Nk9SZzh4L0IxY1ZpQkl4cVJYSkIwZ3RDZ3Y3a2tLbmZIdEovTWxld3pieVcv?=
 =?utf-8?B?ck5LVkV2VlM4TVFNYWt3N1NGL2lGTGhNRzJxK3d5bU9JNmh3YjhhRVJuWmJZ?=
 =?utf-8?B?NHphSmp2VkYrQW1sM01vc0g5djNhejRMMzdudlNnVEhUWDFVMDBXTnlUUmZy?=
 =?utf-8?B?TWhobzlJYjBCdVd3NkpJR1U1N3Jlam1Kc2gzdzhOSVQ0Uy9JVEpIQUNTUHdN?=
 =?utf-8?B?YTRRK2pFRUtlalJZMjZ1UmpydVhQeUpsckltblpTaFhVYld2M3RKMm5TZmtW?=
 =?utf-8?B?eEFMTmltdkxlQ2V5UWNvZm5RY2drbDNDMkJwR2poNHdEMytDWHhLak0zQnNy?=
 =?utf-8?B?RUNmTzd3b0UwcFRGZE44UXRKenBGbytiM0lNU2VKZkhUaEh5V3h2ZTFWUlVz?=
 =?utf-8?B?UG41aHJhTHAxV0U4Y29LS2dXZDFmMDJ1R0cySktEYXZmTEhWemRSTDdkeU5B?=
 =?utf-8?B?YTBQVCtTd3l3U2hJMkpIcHIybmlXUDluU3VCVmVYK0lyOVY3eXNEQjhkZG5h?=
 =?utf-8?B?Vmp5OGFYYWJBTXZNZTNMYmI4NzRaWVBzVTg5cVNocW8yWTRkRlg1U0ZlLzll?=
 =?utf-8?B?a0hRYkhRYUtRd2VtckI4WFM4OGN0UnA3WGxXUm9RV1FZaWl0VmFscnFVODNX?=
 =?utf-8?B?UVFWNUY3Z0g0QXBtWGFXNGhRRms5SmZKelJGQWpLVkF3bmk2WXZxUUo2eHB4?=
 =?utf-8?B?M1ZzaWFpTnExN2dZRWUyUEtTZHVzYjQzY0xhaTljM1h5c1loYXY2ZEJRZHFJ?=
 =?utf-8?B?RzZNTW1OTEFUNTQ3RFBXR1RaUmNmU1lkVnNoSDlwcTBkdExjR0lXMU9NSDZS?=
 =?utf-8?B?Vjh2TDhiU1FPQm04TkpNWVdjN05jaHNXNXdNRzdFSHo5dHpOQjhtK21BbjBU?=
 =?utf-8?B?dXZKam9KL2FoYWt5dnpyNDNUamNmNklsMlNjcFU1TUZGMGE3dmFRMS9sWXN2?=
 =?utf-8?B?SkF2cmFCNm14MlkvdCttWHdVZWIzK3N3UjRVL3JKMTVTWVJWV2ZXLzN5Y2tp?=
 =?utf-8?B?cHAvVndCYytCb3ZCd09JTlJ0RGM0N0UrQ2Zrb1dGKzNQVFJvTElmdkpVZWFq?=
 =?utf-8?B?YW4yNXNrKytWaW1nRVBtWWhmUE0xZE5GSURoaU5Hcm9XTEJqMkZnNjVOOFVo?=
 =?utf-8?Q?ctkJNszdZYH/MOwAH65mtI/VC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48d02c69-c855-4a0f-ccdf-08dcd3e9e197
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2024 11:47:44.5289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vFvM62TwZfVj4kM8VmZ6Bu0K/ioqvRzT9yMjDZuuquYMb3OOrTr2/YoBgSekZ1OfssLDdZ92nzUZEmXi+mLNOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6990
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726228070; x=1757764070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NalNsHnzy6hK/LZzHR7DK+QfgPR4IAXIjhnDagJ1FWk=;
 b=YlJLCrZHZwvR9kiw65KX4pajc/zXVvykcvjcuylOu4wH6SGmfA+rpStM
 Js4x0BfwhpKbv3+nf1oerVYEeOQSAPixHENSzWZssj19Nrbgsp638+7Ot
 5GdeUNpxUOHpdFNcyXYl8r7Q1UPt2jILhKfWCrLdF90FefHqqpQl9kh22
 /QrAB6LE6keP3o+xST/b+pEvU53lcJVfXWjWR7QlRGxBQ6YV23A66Mh+m
 yHAPEZInQKH86ASI+be0VPYOxkhvVNp+0gsM/Ruw5vyZ1AeSKMeQMdlWK
 ZgXqNN4KVDUIqDvN02lyxb1/eY40W/t0dxl8cXSZotWqb8yAn29pGW3Or
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YlJLCrZH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: clear port vlan config
 during reset
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBXb2pjaWVj
aCBEcmV3ZWsNCj4gU2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgNiwgMjAyNCAzOjEyIFBNDQo+IFRv
OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+
OyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtpd2wtbmV0IHYx
XSBpY2U6IGNsZWFyIHBvcnQgdmxhbiBjb25maWcgZHVyaW5nDQo+IHJlc2V0DQo+IA0KPiANCj4g
DQo+IE9uIDA2LjA5LjIwMjQgMTQ6NTcsIE1pY2hhbCBTd2lhdGtvd3NraSB3cm90ZToNCj4gPiBT
aW5jZSBjb21taXQgMmEyY2I0YzZjMTgxICgiaWNlOiByZXBsYWNlIGljZV92Zl9yZWNyZWF0ZV92
c2koKSB3aXRoDQo+ID4gaWNlX3ZmX3JlY29uZmlnX3ZzaSgpIikgVkYgVlNJIGlzIG9ubHkgcmVj
b25maWd1cmVkIGluc3RlYWQgb2YNCj4gPiByZWNyZWF0ZWQuIFRoZSBjb250ZXh0IGNvbmZpZ3Vy
YXRpb24gZnJvbSBwcmV2aW91cyBzZXR0aW5nIGlzIHN0aWxsDQo+ID4gdGhlIHNhbWUuIElmIGFu
eSBvZiB0aGUgY29uZmlnIG5lZWRzIHRvIGJlIGNsZWFyZWQgaXQgbmVlZHMgdG8gYmUNCj4gPiBj
bGVhcmVkIGV4cGxpY2l0bHkuDQo+ID4NCj4gPiBQcmV2aW91c2x5IHRoZXJlIHdhcyBhc3N1bXB0
aW9uIHRoYXQgcG9ydCB2bGFuIHdpbGwgYmUgY2xlYXJlZA0KPiA+IGF1dG9tYXRpY2FsbHkuIE5v
dywgd2hlbiBWU0kgaXMgb25seSByZWNvbmZpZ3VyZWQgd2UgaGF2ZSB0byBkbyBpdCBpbg0KPiA+
IHRoZSBjb2RlLg0KPiA+DQo+ID4gTm90IGNsZWFyaW5nIHBvcnQgdmxhbiBjb25maWd1cmF0aW9u
IGxlYWRzIHRvIHNpdHVhdGlvbiB3aGVuIHRoZQ0KPiA+IGRyaXZlciBWU0kgY29uZmlnIGlzIGRp
ZmZlcmVudCB0aGFuIHRoZSBWU0kgY29uZmlnIGluIEhXLiBUcmFmZmljDQo+ID4gY2FuJ3QgYmUg
cGFzc2VkIGFmdGVyIHNldHRpbmcgYW5kIGNsZWFyaW5nIHBvcnQgdmxhbiwgYmVjYXVzZSBvZg0K
PiA+IGludmFsaWQgVlNJIGNvbmZpZyBpbiBIVy4NCj4gPg0KPiA+IEV4YW1wbGUgcmVwcm9kdWN0
aW9uOg0KPiA+PiBpcCBhIGEgZGV2ICQoVkYpICQoVkZfSVBfQUREUkVTUykNCj4gPj4gaXAgbCBz
IGRldiAkKFZGKSB1cA0KPiA+PiBwaW5nICQoVkZfSVBfQUREUkVTUykNCj4gPiBwaW5nIGlzIHdv
cmtpbmcgZmluZSBoZXJlDQo+ID4+IGlwIGxpbmsgc2V0IGV0aDUgdmYgMCB2bGFuIDEwMA0KPiA+
PiBpcCBsaW5rIHNldCBldGg1IHZmIDAgdmxhbiAwDQo+ID4+IHBpbmcgJChWRl9JUF9BRERSRVNT
KQ0KPiA+IHBpbmcgaXNuJ3Qgd29ya2luZw0KPiA+DQo+ID4gRml4ZXM6IDJhMmNiNGM2YzE4MSAo
ImljZTogcmVwbGFjZSBpY2VfdmZfcmVjcmVhdGVfdnNpKCkgd2l0aA0KPiA+IGljZV92Zl9yZWNv
bmZpZ192c2koKSIpDQo+ID4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFN3aWF0a293c2tpIDxtaWNo
YWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiANCj4gUmV2aWV3ZWQt
Ynk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4NCj4gDQo+ID4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmMgICB8ICA3ICsrKw0K
PiA+ICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdnNpX3ZsYW5fbGliLmMgfCA1Nw0K
PiA+ICsrKysrKysrKysrKysrKysrKysgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92
c2lfdmxhbl9saWIuaCB8DQo+ID4gMSArDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNjUgaW5zZXJ0
aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfdmZfbGliLmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfdmZfbGliLmMNCj4gPiBpbmRleCA1NjM1ZTlkYTIyMTIuLjlmZTJhMzA5YzVmZiAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5jDQo+
ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuYw0KPiA+
IEBAIC0zMzUsNiArMzM1LDEzIEBAIHN0YXRpYyBpbnQgaWNlX3ZmX3JlYnVpbGRfaG9zdF92bGFu
X2NmZyhzdHJ1Y3QNCj4gPiBpY2VfdmYgKnZmLCBzdHJ1Y3QgaWNlX3ZzaSAqdnNpKQ0KPiA+DQo+
ID4gIAkJZXJyID0gdmxhbl9vcHMtPmFkZF92bGFuKHZzaSwgJnZmLT5wb3J0X3ZsYW5faW5mbyk7
DQo+ID4gIAl9IGVsc2Ugew0KPiA+ICsJCS8qIGNsZWFyIHBvc3NpYmxlIHByZXZpb3VzIHBvcnQg
dmxhbiBjb25maWcgKi8NCj4gPiArCQllcnIgPSBpY2VfdnNpX2NsZWFyX3BvcnRfdmxhbih2c2kp
Ow0KPiA+ICsJCWlmIChlcnIpIHsNCj4gPiArCQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY2xl
YXIgcG9ydCBWTEFOIHZpYSBWU0kNCj4gcGFyYW1ldGVycyBmb3IgVkYgJXUsIGVycm9yICVkXG4i
LA0KPiA+ICsJCQkJdmYtPnZmX2lkLCBlcnIpOw0KPiA+ICsJCQlyZXR1cm4gZXJyOw0KPiA+ICsJ
CX0NCj4gPiAgCQllcnIgPSBpY2VfdnNpX2FkZF92bGFuX3plcm8odnNpKTsNCj4gPiAgCX0NCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Zz
aV92bGFuX2xpYi5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Zz
aV92bGFuX2xpYi5jDQo+ID4gaW5kZXggNmU4ZjJhYWI2MDgwLi41MjkxZjI4ODhlZjggMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92c2lfdmxhbl9s
aWIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdnNpX3Zs
YW5fbGliLmMNCj4gPiBAQCAtNzg3LDMgKzc4Nyw2MCBAQCBpbnQgaWNlX3ZzaV9jbGVhcl9vdXRl
cl9wb3J0X3ZsYW4oc3RydWN0IGljZV92c2kNCj4gKnZzaSkNCj4gPiAgCWtmcmVlKGN0eHQpOw0K
PiA+ICAJcmV0dXJuIGVycjsNCj4gPiAgfQ0KPiA+ICsNCj4gPiAraW50IGljZV92c2lfY2xlYXJf
cG9ydF92bGFuKHN0cnVjdCBpY2VfdnNpICp2c2kpIHsNCj4gPiArCXN0cnVjdCBpY2VfaHcgKmh3
ID0gJnZzaS0+YmFjay0+aHc7DQo+ID4gKwlzdHJ1Y3QgaWNlX3ZzaV9jdHggKmN0eHQ7DQo+ID4g
KwlpbnQgZXJyOw0KPiA+ICsNCj4gPiArCWN0eHQgPSBremFsbG9jKHNpemVvZigqY3R4dCksIEdG
UF9LRVJORUwpOw0KPiA+ICsJaWYgKCFjdHh0KQ0KPiA+ICsJCXJldHVybiAtRU5PTUVNOw0KPiA+
ICsNCj4gPiArCWN0eHQtPmluZm8gPSB2c2ktPmluZm87DQo+ID4gKw0KPiA+ICsJY3R4dC0+aW5m
by5wb3J0X2Jhc2VkX291dGVyX3ZsYW4gPSAwOw0KPiA+ICsJY3R4dC0+aW5mby5wb3J0X2Jhc2Vk
X2lubmVyX3ZsYW4gPSAwOw0KPiA+ICsNCj4gPiArCWN0eHQtPmluZm8uaW5uZXJfdmxhbl9mbGFn
cyA9DQo+ID4gKwkJRklFTERfUFJFUChJQ0VfQVFfVlNJX0lOTkVSX1ZMQU5fVFhfTU9ERV9NLA0K
PiA+ICsJCQkgICBJQ0VfQVFfVlNJX0lOTkVSX1ZMQU5fVFhfTU9ERV9BTEwpOw0KPiA+ICsJaWYg
KGljZV9pc19kdm1fZW5hKGh3KSkgew0KPiA+ICsJCWN0eHQtPmluZm8uaW5uZXJfdmxhbl9mbGFn
cyB8PQ0KPiA+ICsJCQlGSUVMRF9QUkVQKElDRV9BUV9WU0lfSU5ORVJfVkxBTl9FTU9ERV9NLA0K
PiA+ICsNCj4gSUNFX0FRX1ZTSV9JTk5FUl9WTEFOX0VNT0RFX05PVEhJTkcpOw0KPiA+ICsJCWN0
eHQtPmluZm8ub3V0ZXJfdmxhbl9mbGFncyA9DQo+ID4gKw0KPiAJRklFTERfUFJFUChJQ0VfQVFf
VlNJX09VVEVSX1ZMQU5fVFhfTU9ERV9NLA0KPiA+ICsJCQkJICAgSUNFX0FRX1ZTSV9PVVRFUl9W
TEFOX1RYX01PREVfQUxMKTsNCj4gPiArCQljdHh0LT5pbmZvLm91dGVyX3ZsYW5fZmxhZ3MgfD0N
Cj4gPiArCQkJRklFTERfUFJFUChJQ0VfQVFfVlNJX09VVEVSX1RBR19UWVBFX00sDQo+ID4gKwkJ
CQkgICBJQ0VfQVFfVlNJX09VVEVSX1RBR19WTEFOXzgxMDApOw0KPiA+ICsJCWN0eHQtPmluZm8u
b3V0ZXJfdmxhbl9mbGFncyB8PQ0KPiA+ICsJCQlJQ0VfQVFfVlNJX09VVEVSX1ZMQU5fRU1PREVf
Tk9USElORyA8PA0KPiA+ICsJCQlJQ0VfQVFfVlNJX09VVEVSX1ZMQU5fRU1PREVfUzsNCj4gPiAr
CX0NCj4gPiArDQo+ID4gKwljdHh0LT5pbmZvLnN3X2ZsYWdzMiAmPQ0KPiB+SUNFX0FRX1ZTSV9T
V19GTEFHX1JYX1ZMQU5fUFJVTkVfRU5BOw0KPiA+ICsJY3R4dC0+aW5mby52YWxpZF9zZWN0aW9u
cyA9DQo+ID4gKwkJY3B1X3RvX2xlMTYoSUNFX0FRX1ZTSV9QUk9QX09VVEVSX1RBR19WQUxJRCB8
DQo+ID4gKwkJCSAgICBJQ0VfQVFfVlNJX1BST1BfVkxBTl9WQUxJRCB8DQo+ID4gKwkJCSAgICBJ
Q0VfQVFfVlNJX1BST1BfU1dfVkFMSUQpOw0KPiA+ICsNCj4gPiArCWVyciA9IGljZV91cGRhdGVf
dnNpKGh3LCB2c2ktPmlkeCwgY3R4dCwgTlVMTCk7DQo+ID4gKwlpZiAoZXJyKSB7DQo+ID4gKwkJ
ZGV2X2VycihpY2VfcGZfdG9fZGV2KHZzaS0+YmFjayksICJ1cGRhdGUgVlNJIGZvciBjbGVhcmlu
Zw0KPiBwb3J0IGJhc2VkIFZMQU4gZmFpbGVkLCBlcnIgJWQgYXFfZXJyICVzXG4iLA0KPiA+ICsJ
CQllcnIsIGljZV9hcV9zdHIoaHctPmFkbWlucS5zcV9sYXN0X3N0YXR1cykpOw0KPiA+ICsJfSBl
bHNlIHsNCj4gPiArCQl2c2ktPmluZm8ucG9ydF9iYXNlZF9vdXRlcl92bGFuID0NCj4gPiArCQkJ
Y3R4dC0+aW5mby5wb3J0X2Jhc2VkX291dGVyX3ZsYW47DQo+ID4gKwkJdnNpLT5pbmZvLnBvcnRf
YmFzZWRfaW5uZXJfdmxhbiA9DQo+ID4gKwkJCWN0eHQtPmluZm8ucG9ydF9iYXNlZF9pbm5lcl92
bGFuOw0KPiA+ICsJCXZzaS0+aW5mby5vdXRlcl92bGFuX2ZsYWdzID0gY3R4dC0+aW5mby5vdXRl
cl92bGFuX2ZsYWdzOw0KPiA+ICsJCXZzaS0+aW5mby5pbm5lcl92bGFuX2ZsYWdzID0gY3R4dC0+
aW5mby5pbm5lcl92bGFuX2ZsYWdzOw0KPiA+ICsJCXZzaS0+aW5mby5zd19mbGFnczIgPSBjdHh0
LT5pbmZvLnN3X2ZsYWdzMjsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlrZnJlZShjdHh0KTsNCj4g
PiArCXJldHVybiBlcnI7DQo+ID4gK30NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV92c2lfdmxhbl9saWIuaA0KPiA+IGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV92c2lfdmxhbl9saWIuaA0KPiA+IGluZGV4IGYwZDg0ZDExYmQ1
Yi4uMTJiMjI3NjIxYTdkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfdnNpX3ZsYW5fbGliLmgNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3ZzaV92bGFuX2xpYi5oDQo+ID4gQEAgLTM2LDUgKzM2LDYgQEAgaW50
IGljZV92c2lfZW5hX291dGVyX2luc2VydGlvbihzdHJ1Y3QgaWNlX3ZzaSAqdnNpLA0KPiA+IHUx
NiB0cGlkKTsgIGludCBpY2VfdnNpX2Rpc19vdXRlcl9pbnNlcnRpb24oc3RydWN0IGljZV92c2kg
KnZzaSk7ICBpbnQNCj4gPiBpY2VfdnNpX3NldF9vdXRlcl9wb3J0X3ZsYW4oc3RydWN0IGljZV92
c2kgKnZzaSwgc3RydWN0IGljZV92bGFuDQo+ID4gKnZsYW4pOyAgaW50IGljZV92c2lfY2xlYXJf
b3V0ZXJfcG9ydF92bGFuKHN0cnVjdCBpY2VfdnNpICp2c2kpOw0KPiA+ICtpbnQgaWNlX3ZzaV9j
bGVhcl9wb3J0X3ZsYW4oc3RydWN0IGljZV92c2kgKnZzaSk7DQo+ID4NCj4gPiAgI2VuZGlmIC8q
IF9JQ0VfVlNJX1ZMQU5fTElCX0hfICovDQoNClRlc3RlZC1ieTogUGlvdHIgVHlkYSA8cGlvdHIu
dHlkYUBpbnRlbC5jb20+DQoNCg0K
