Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A54CC2F95F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 08:23:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C405D81AAC;
	Tue,  4 Nov 2025 07:23:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8biZL8dvqcFm; Tue,  4 Nov 2025 07:23:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D68A581A92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762241009;
	bh=urT9kh+TlA0BdH+sFfVefdgBepnxqmG7VPGPZuXwUwU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=40H18kUUPRkzIv9H3iFOVhgFu9NMEvRhUNdncy7iIrI6m+HEdSzCF130Z7GXVe1is
	 T/WlN3sqfaB7UCtzJr/hczkJT0sw8EP4gjl5DsxQxvc/mZ/MtG/gsHqHi2fh1OTJZZ
	 TurelP9Lm4jX9pYOFpkoQfyHgmoKF5wL15Ea4fbn927JTU72gz7c+ZoW5/YY7zZYc+
	 4WEOwd/tfyAnw+MLNcXLp6PCKPaYkSfOL/wZy8M58trbDH4LSvnjfTf5zfSg5EnxUk
	 eniC128qhJPQI2aLKdduRwMLJhTIfGWHw3oMjb1JmmTZ1KR2MGdRmgqknPDqbGNPcD
	 upwQL8tpv0wMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D68A581A92;
	Tue,  4 Nov 2025 07:23:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EA735278
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC1C340C26
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:23:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 01N2UhBofAAg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 07:23:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0976640C25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0976640C25
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0976640C25
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:23:26 +0000 (UTC)
X-CSE-ConnectionGUID: pABVt3ylSlCEz9Ymrt+Egg==
X-CSE-MsgGUID: 9YUO4M1TQ4OxT5Ehqn70IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="66941476"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="66941476"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:23:26 -0800
X-CSE-ConnectionGUID: aCh84lXXRmOoDbJEeg23BQ==
X-CSE-MsgGUID: 7TARwO21S2qr/m05Tul7rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="192174114"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:23:26 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:23:25 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 23:23:25 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:23:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Amb7WpVSNkdR0IDLXUiWdq5AB1RobzUaDLxm8eAGHYoW2tYqGhs6bDyYzEf6uILd41CYFey969/kkr+DKUxBURdGl73P14LS9tNkCohWz9+GxkVIp2wvocHOyDIYuGL/e8Nhgp++JsPwOwiJ2gpDXaE/gtFLTnI/E08SUJTxQePpIjMxydMqLfTjaBt07wGftOb0alE9TptMTIKkmF0jCx2o8DCSdJxB0JpDPlS1VFqdMAZDW10I7ZYVAJfDKiTEm67vI9/YvjXOCS98TbRIL84criXTnTmp2IqZ7rTCpzokHRhOA+wXPfR3Jpott+px1xpYcb+jXu/udq6LVpYqXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=urT9kh+TlA0BdH+sFfVefdgBepnxqmG7VPGPZuXwUwU=;
 b=h+EeR0ya6sgVyQNCEaXz5OJWjTcRYKh1kTOQfn1UVBa3q1PA35aiU3iIMSG/c5HYU1O7W191FMXsTk5GJ0iUWfFwPJFwATjFl6YPJp/saqMlEAeyH773jTuluiNh3D1FMw1VEuCi2riRqccRpjg5uV/zY0xIS+TMSt5tzxr3NkSMaIub9S/yGn0xk9Mp1X4jOb796mZn2vcfriuUdzC8mLsBGSuOfNcYWSbatRCmO4UCahN638Z5VP8TdgWLGUkJjlEx5ZvJA3ScoWKYuFa92Kgg9EeLCKlR27JTU2cRGm/1hrxsdHMFZfkPgxTApPYedjqn8hfMg8XUrP+imUYSsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 07:23:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 07:23:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next 2/9] ice: use cacheline groups for ice_rx_ring
 structure
Thread-Index: AQHcTSdkpz8Oc3EFiEeNf7PrH0iZsrTiHWPw
Date: Tue, 4 Nov 2025 07:23:17 +0000
Message-ID: <IA3PR11MB89865A81EE4A64B712AAC280E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <20251103-jk-refactor-queue-stats-v1-2-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-2-164d2ed859b6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5160:EE_
x-ms-office365-filtering-correlation-id: 554b1103-225e-4317-d666-08de1b73061d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bG9yb014aFdPTkpMVkxlS0I1dXlGVk1GT25lY2xVck1LaXZON0hLKytpZmla?=
 =?utf-8?B?Q0VjMUpOdHpxQzJCdHUvUXV5dnRyTHgvY0ttK3c2M1lCdUZIV2dDUFp2aVpp?=
 =?utf-8?B?ek5FbXlwRGlVY2o0ODFnUnRTZVBsNmxXRk9wWFJ1TU1xK1BaOFhzYU00b2Rl?=
 =?utf-8?B?VXRsaUhTaXdTbUpqU3ZrUDJnQ2JKUHdjRFFJOHVHeGlnZkhqamNJVkowcWJn?=
 =?utf-8?B?d0NXdVJxSWFlaDFrWmRUaWlDNms0dUtORWxhYm43Q0JJNkE4bmtMcWxlcXZh?=
 =?utf-8?B?Ti9TenRvWERyNWgwNWtvbng5dXUzUExtMDZaMUtVUS9LdHlzWlRRUTVYQ1FE?=
 =?utf-8?B?NDU1dGFQZjcwc0lwdThLQ2wyazZJWnBoK1l1WkhkRGFzRzA3eFZ5ZkpMRjdE?=
 =?utf-8?B?amdCT24rZWxjQzNrY1I1NVAvdVM3UWlNYStZT1dtUHhtdS9oVzBYYWt5S0tD?=
 =?utf-8?B?RFFGYklLNlF0UnNjL2xVVWxFVXlxcFpjWG9YUVRaTVQvc01hU2VJZmFTalgr?=
 =?utf-8?B?eUVqRHhTcFFvYVF5aVgvRGRVdW5BM1NxMHlMcjg0SUtUbGtsSHpaOEFnVDg5?=
 =?utf-8?B?L1psTHBFNWZvZlFLVFRHSjhLOXR0OTZmZGZxZWE5Ri82Z3FXZlIxdEI4STMx?=
 =?utf-8?B?VUpIN3hCV290U1U4TC94bG1JaThpS0p6Z0VZYno0WUVxWElZeERwVEV2K1Mw?=
 =?utf-8?B?L0JDTEFVb0lPdENKUTFKRFk3L2I2Mk9IWERyQjQ5bVc4UkJ4and2REsrK21y?=
 =?utf-8?B?cjZQbWZrcEgwUzlIWnRoYnFZdDdhendiTmpZRmlZQ0pDMWtZbExHbG56UFY3?=
 =?utf-8?B?UXNhK1RWclBmUWNrNldzVVRMdmdPT2FiaHpuaDhGcDJWRTJjRzI1TFdFN0hh?=
 =?utf-8?B?YlVwTnlrWStyWWJzdkZrblVxMi9tVTlzL1pnVThsOGpyYy94T2ZvVnpWVHUz?=
 =?utf-8?B?Y3VSYWdPTDNpbWxEMzZtUlo2VXRPZUk4TUVFYXFySnM3RzZrTnZiZ2Y4TW9H?=
 =?utf-8?B?emlBWTJ2Q0hSWUZJWHFabkVzZmV6a3JhcmNoMmRJNFgyQlVBZm85OStOSTV1?=
 =?utf-8?B?emhHRUtKNEgrZmN4U1RpeVZGcWl3MDk0YmtzbSs4NnpJRThHclhuVmdlb09w?=
 =?utf-8?B?QzRiSERLM0FXc29RN3Flbm1aZ0IwYk5vRVZjbDNZd1JqcG53MFlKY3pteGNo?=
 =?utf-8?B?SXZORGhrYzBSdVdWN25lOTZPZjROa3pRUzNiSXh0ZmhRMHNEcWc0TTdiOC9r?=
 =?utf-8?B?aEZORFljRzdlLzR6Y3lHS1FqNU4yMUNnbFNFaEpMZEdXYjlkbkk5UTk1cktv?=
 =?utf-8?B?c0pIeFc4RTVNQlRQTmtra2l3RFZnVkJ6cVAvQ0trclNaZ0E0YUc2ck8rbXlT?=
 =?utf-8?B?U2QyL2dYaVpGVEpybXF0WnJBbTFFYWp4RWcrbjRqeDZ5TXpSK3dFK2hOdzd0?=
 =?utf-8?B?UjZPYlJZQjBrbzhiUzlpaXZVODlPSTF5M29xMm1GTXBJQ1RZV2ZxNlhLdVdQ?=
 =?utf-8?B?R3VrTm84UE1WYVRCalFTN05FRUw0R25MT3FhQ09oQy90cnNoS0pmVnY4QWdI?=
 =?utf-8?B?cFdVK1llNE5PeFlNdzdEVlRNZUJDc1NkRVVVbWw4WmJUTzRPSmdkZklyTVNt?=
 =?utf-8?B?aUVxZk9RUVVOUzZoVTNnNWx5UlFEQkhtSjBveVBVWXFxT0VMdHdTZkQ3SmdC?=
 =?utf-8?B?aXM2VVM5QWpDZFFNTHh5eDFrcGFEQ0lleFRWSTZEOXp0SHA4UENBeVVaZm5V?=
 =?utf-8?B?YnEzZlFobmUxMlpTTFJTZUxlc3A5eWpmYi9rL3d0NXVOUzdpbVdZRTRzcDYz?=
 =?utf-8?B?QzNTMEdFbk0wQ1FCOCtUak1zdWE0eEhHT011cUhuUGMwd1ZvelBPRjJFb3JC?=
 =?utf-8?B?VEJhMjI3VVJPSGhhWG1DREg5TUMxR01saTFyaDN3NUF4M2haQnBOZlhqWlM2?=
 =?utf-8?B?N0xKKzVaRzZ0YWthcVptL3hEK3YvSE54Umo4QVZkRm1YUGVGV0J5RXEvN2o0?=
 =?utf-8?B?MFVqemZrYkhVaGNlQnJtaHExOUlGT1pUL3BwYjZzblNjK01PUU1USjFMK3Rn?=
 =?utf-8?Q?5ztWeF?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RmFUKzEwcjRpTzVQeWxhcGZkTTRRcjZxdWQ5enpaSDNrWDBwa0JHakZzbWcv?=
 =?utf-8?B?ZTQ1NG1Lc3BVLzhjMDE1UTByUEtUeHZta1ZXcW9XZ1FZc3dWTUI2Z3I3ZkFK?=
 =?utf-8?B?Sy92dlpaNzZCMlFhcE15RFVZdDRRZHcxR3Eyd0hUNGlxNzRaVmd2ZXZ1REVy?=
 =?utf-8?B?U1liOVRNTWhPbXQ3bll0a0lqaVVTdVZMU1d1alVWT2pObFVrc3lwWm93U3Rp?=
 =?utf-8?B?NlE2MkE5V1VyMlVSSWhCODVDbll0azE4SlZ2cGxJNXI4YXlyNmxEMEVSQjZq?=
 =?utf-8?B?SlJ6WmN4VHRLZzlhYzYyemtncVBuMVhvYllTVDRJZ0FsMTNJbXhMWmxmSkZZ?=
 =?utf-8?B?bVFDU1B1dDVJNGpjeUNoZ2ZpMWpUby9sYXYrZERzSklzRHpndUhQWEw2SlRx?=
 =?utf-8?B?NkZ2SUFWUlpTbHV4QlRDZ0RRY3dNenV6a3Q1TllsbHFKQS9zU0FOd2hhTHVj?=
 =?utf-8?B?TW1lRDhERXlkUmU0Y2JUeWtFTW1xZ2NNem9GWllhN3hUTW0vYkk3UmVQTlFl?=
 =?utf-8?B?UHhBV2doS1VxRXlCSzZoVmJSYVhsZ3F3TGtoTFNMZWhoa1FTL3Jwb3B3WFI2?=
 =?utf-8?B?Nk9LaXdRdFI3MDJKQnRjQnluOHdqNytUODdDOEt5T25Renp3N1NEckdKUkFZ?=
 =?utf-8?B?ZGVhNEsyTVE5a1FjSCs2YlRqM2RzMHo1djRZc2VXeWlFL05sZGw4TU8vVmpa?=
 =?utf-8?B?UnlhTUNEeVdpNHRPdnVCYWJnL0p5bVFsaWFzRUxHa0E5eWxxc2g4TDVILzBJ?=
 =?utf-8?B?eEVUNWl3R1l5aEs3UGtEUkdpOVl3YjRFQmxHcDJadDY3N3dSTmQ3bk41d0R4?=
 =?utf-8?B?R2FBVGJpTzF3SEVQVXhvL1BWamJvZ3Q3N0I5TlowZUtzN2JUL0xzZFNCTVNJ?=
 =?utf-8?B?TG4yaEhvb0llemk3NWlEVU83bllzYUJHdlZqZDZkR04rSkQ5dDdySlhKT1l3?=
 =?utf-8?B?dTZOM29JQ1BSd1RFbzdSRkh3Mk9maU42ZjZHMWIxL3hMdjdYRTdwMHoyZnl3?=
 =?utf-8?B?L3ROZE9EQktkZHc4dzBKUHFtOExZNFROTzhQMW1Fa1o2ZUJkMVFsM00yQnY2?=
 =?utf-8?B?aGVqaHFiZ0kwR010WEsxeUZOcGJISlRxTzJBVVQwUHRRT0JHbEcxMS9MZ25Z?=
 =?utf-8?B?S1Nxa2tkd3o3TUExSnNLN3ZXbnFDWERYQWtGQ0xpMzdpdUVEa2c0Mmt4N082?=
 =?utf-8?B?RmlvdnpGQVhKT1ZqU09Jbk5UbG1yY21zSjlWZU1iZkoxcnh1RGZNVGlCUGxD?=
 =?utf-8?B?MWRSN2lzZ0p0bElZYnZRQ3BuNU44ZnBDTTI3ZDF0ZkJMSHVadnplK0JGSlJj?=
 =?utf-8?B?bXl3UG50SGIrRjBXMkxlM3FPVXJxR3NSMThVdE9TcjhWWXR6aTR0Zld0dUFS?=
 =?utf-8?B?QW5aU2xyNWlWYnBlZFV6Y0RjVnhuK0N6b2hrbUllS3RyTDZ2eEpseDhwQTll?=
 =?utf-8?B?M3UreWpKcVYrTmJHT2xGNVlJVDYwZkZOYlZQa2d0M0dUcGY3Nm5YR29aMFE4?=
 =?utf-8?B?Rk54WWxqYk5wQkxqZjhESG9aVnYzWEoyWHFEeWl2VS8vRlZQVFV1Y2V2ZTJx?=
 =?utf-8?B?RktOcFlUR2MrVmhpb3VMeVlDdGw1VFIvWkFSbUIzUWNCeE14V256ZGJWMTQ5?=
 =?utf-8?B?OGhNZGJHZGZRU0xKVThtUFF0YnFCWEJmZ0JWclFSUmFYUExWdUF1Y3ZWdmM2?=
 =?utf-8?B?ejZ5QSsyek5xT1RlWjVxTkNqS29DMHZVL2M3Z1hHcG02dnhTN0F4SVozc05F?=
 =?utf-8?B?VzBobHJncDBwNTJ5S2tvL3k1dVgzRkJkY0NxWDNpczQ0SElWQ21EMU9YRmdy?=
 =?utf-8?B?bDFKYmN1YVhlV3JyUlh3VjQzWG5jWWNCVlNKVlUwT2JRenA4RHpLUHpPK0tk?=
 =?utf-8?B?QVo3NmhXMjNOVDNJejJ5QzZpY1hmeTRQY05uU2o0cUt3TkpXczRmaUxqbmdV?=
 =?utf-8?B?a0srZUVrN2tKVW9Rc2FOQS9ocnhpRDRiOUxFT0dxUFEwM3JiVFd2Z3dhaEU1?=
 =?utf-8?B?bE5OZUFmUjc2QlMyK21hM3dpMFdyMzg4N1h6QkxzM05pRUhLSWdCeVBnaVlO?=
 =?utf-8?B?NCtudVNXYWlyblMwaTBpQkxGNktrR2dKaE9uUThMWU1pRkJjYzVmQ0VYalVG?=
 =?utf-8?B?SXkvM1dvSjY1R2RzRHcwSzREeE4wcmNQQkM4L2tzbjNXdnMxNlBuM05VYytF?=
 =?utf-8?B?RlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 554b1103-225e-4317-d666-08de1b73061d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 07:23:17.0673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HHk4oqMpecazKWvbMxR1U0XrdfA3RNojFWJah4lzvDUrYTQj2vSj4sks7Cq5HQCNklS0H3wFAqz06tFK7yOVAX86E+boHGaF4MRZMLgbmRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762241007; x=1793777007;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=urT9kh+TlA0BdH+sFfVefdgBepnxqmG7VPGPZuXwUwU=;
 b=fvqfs5XgUIwosu6u+SM37nHQqfPVxcIqpNrjFZTDAiDwRNAH8NLQaMN4
 kytW4IqoT7+ISju+W+IxDszn3wW36bykWWMuHwMbLij0jiJVVsgzt5YDi
 2dVcZKB1pQdk0daDtvpE5X4yIyY0Jbu5bmL1+UsXQRFhHILAwHSoUNUqD
 Nro02uiMuPDI0ULVCosB/65EjV2aqvg0LlrwhnLqMP8ySXeBOmlHZSLox
 StPU8Hxyfn5NeV8dHk87MjE4WZYsFbLC3W3CoA+YctrzaTXXFcR+JjVhK
 HaXUZ8l1M0nCULwT3fnBRP76SHc8qEom5TKW8iWRopNzV54wGeoaubE+5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fvqfs5Xg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: use cacheline
 groups for ice_rx_ring structure
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDQs
IDIwMjUgMjowNyBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCAyLzldIGljZTogdXNlIGNhY2hlbGluZSBn
cm91cHMgZm9yDQo+IGljZV9yeF9yaW5nIHN0cnVjdHVyZQ0KPiANCj4gVGhlIGljZSByaW5nIHN0
cnVjdHVyZSB3YXMgcmVvcmdhbml6ZWQgYmFjayBieSBjb21taXQgNjUxMjRiYmY5ODBjDQo+ICgi
aWNlOg0KPiBSZW9yZ2FuaXplIHR4X2J1ZiBhbmQgcmluZyBzdHJ1Y3RzIiksIGFuZCBsYXRlciBz
cGxpdCBpbnRvIGEgc2VwYXJhdGUNCj4gaWNlX3J4X3Jpbmcgc3RydWN0dXJlIGJ5IGNvbW1pdCBl
NzJiYmEyMTM1NWQgKCJpY2U6IHNwbGl0IGljZV9yaW5nDQo+IG9udG8gVHgvUnggc2VwYXJhdGUg
c3RydWN0cyIpDQo+IA0KPiBUaGUgaWNlX3J4X3Jpbmcgc3RydWN0dXJlIGhhcyBjb21tZW50cyBs
ZWZ0IG92ZXIgZnJvbSB0aGlzIHByaW9yDQo+IHJlb3JnYW5pemF0aW9uIGluZGljYXRpbmcgd2hp
Y2ggZmllbGRzIGJlbG9uZyB0byB3aGljaCBjYWNoZWxpbmVzLg0KPiBVbmZvcnR1bmF0ZWx5LCB0
aGVzZSBjb21tZW50cyBhcmUgbm90IGFsbCBhY2N1cmF0ZS4gVGhlIGludGVuZGVkDQo+IGxheW91
dCBpcyBmb3IgeDg2XzY0IHN5c3RlbXMgd2l0aCBhIDY0LWJ5dGUgY2FjaGUuDQo+IA0KPiAgKiBD
YWNoZWxpbmUgMSBzcGFucyBmcm9tIHRoZSBzdGFydCBvZiB0aGUgc3RydWN0IHRvIHRoZSBlbmQg
b2YgdGhlDQo+IHJ4X2ZxZXMNCj4gICAgYW5kIHhkcF9idWYgdW5pb24uIFRoZSBjb21tZW50cyBj
b3JyZWN0bHkgbWF0Y2ggdGhpcy4NCj4gDQo+ICAqIENhY2hlbGluZSAyIHNwYW5zIGZyb20gaGRy
X2ZxZXMgdG8gdGhlIGVuZCBvZiBoZHJfdHJ1ZXNpemUsIGJ1dCB0aGUNCj4gICAgY29tbWVudCBp
bmRpY2F0ZXMgaXQgc2hvdWxkIGVuZCB4ZHAgYW5kIHhzayB1bmlvbi4NCj4gDQo+ICAqIENhY2hl
bGluZSAzIHNwYW5zIGZyb20gdGhlIHRydWVzaXplIGZpZWxkIHRvIHRoZSB4c2tfcG9vbCwgYnV0
IHRoZQ0KPiAgICBjb21tZW50IHdhbnRzIHRoaXMgdG8gYmUgZnJvbSB0aGUgcGt0X2N0eCBkb3du
IHRvIHRoZSByY3UgaGVhZA0KPiBmaWVsZC4NCj4gDQo+ICAqIENhY2hlbGluZSA0IHNwYW5zIGZy
b20gdGhlIHJ4X2hkcl9sZW4gZG93biB0byB0aGUgZmxhZ3MgZmllbGQsIGJ1dA0KPiB0aGUNCj4g
ICAgY29tbWVudCBpbmRpY2F0ZXMgdGhhdCBpdCBzdGFydHMgYmFjayBhdCB0aGUgaWNlX2NoYW5u
ZWwgc3RydWN0dXJlDQo+ICAgIHBvaW50ZXIuDQo+IA0KPiAgKiBDYWNoZWxpbmUgNSBpcyBpbmRp
Y2F0ZWQgdG8gY292ZXIgdGhlIHhkcF9yeHEuIEJlY2F1c2UgdGhpcyBmaWVsZA0KPiBpcw0KPiAg
ICBhbGlnbmVkIHRvIDY0IGJ5dGVzLCB0aGlzIGlzIGFjdHVhbGx5IHRydWUuIEhvd2V2ZXIsIHRo
ZXJlIGlzIGENCj4gbGFyZ2UgNDUNCj4gICAgYnl0ZSBnYXAgYXQgdGhlIGVuZCBvZiBjYWNoZWxp
bmUgNC4NCj4gDQo+IFRoZSB1c2Ugb2YgY29tbWVudHMgdG8gaW5kaWNhdGUgY2FjaGVsaW5lcyBp
cyBwb29yIGRlc2lnbi4gSW4NCj4gcHJhY3RpY2UsIGNvbW1lbnRzIGxpa2UgdGhpcyBxdWlja2x5
IGJlY29tZSBvdXRkYXRlZCBhcyBkZXZlbG9wZXJzIGFkZA0KPiBvciByZW1vdmUgZmllbGRzLCBv
ciBhcyBvdGhlciBzdWItc3RydWN0dXJlcyBjaGFuZ2UgbGF5b3V0IGFuZCBzaXplDQo+IHVuZXhw
ZWN0ZWRseS4NCj4gDQo+IFRoZSBpY2VfcnhfcmluZyBzdHJ1Y3R1cmUgKmlzKiA1IGNhY2hlbGlu
ZXMgKDMyMCBieXRlcyksIGJ1dCBlbmRzIHVwDQo+IGhhdmluZyBxdWl0ZSBhIGxvdCBvZiBlbXB0
eSBzcGFjZSBhdCB0aGUgZW5kIGp1c3QgYmVmb3JlIHhkcF9yeHEuDQo+IA0KPiBSZXBsYWNlIHRo
ZSBjb21tZW50cyB3aXRoIF9fY2FjaGVsaW5lX2dyb3VwXyhiZWdpbnxlbmQpX2FsaWduZWQoKQ0K
PiBhbm5vdGF0aW9ucy4gVGhlc2UgbWFjcm9zIGVuZm9yY2UgYWxpZ25tZW50IHRvIHRoZSBzdGFy
dCBvZg0KPiBjYWNoZWxpbmVzLCBhbmQgZW5mb3JjZSBwYWRkaW5nIGJldHdlZW4gZ3JvdXBzLCB0
aHVzIGd1YXJhbnRlZWluZyB0aGF0DQo+IGEgZm9sbG93aW5nIGdyb3VwIGNhbm5vdCBiZSBwYXJ0
IG9mIHRoZSBzYW1lIGNhY2hlbGluZS4NCj4gDQo+IERvaW5nIHRoaXMgY2hhbmdlcyB0aGUgbGF5
b3V0IGJ5IGVmZmVjdGl2ZWx5IHNwcmVhZGluZyB0aGUgcGFkZGluZyBhdA0KPiB0aGUgdGFpbCBv
ZiBjYWNoZWxpbmUgNCBiZXR3ZWVuIGdyb3VwcyB0byBlbnN1cmUgdGhhdCB0aGUgcmVsZXZhbnQN
Cj4gZmllbGRzIGFyZSBrZXB0IGFzIHNlcGFyYXRlIGNhY2hlbGluZXMgb24geDg2XzY0IHN5c3Rl
bXMuIEZvciBzeXN0ZW1zDQo+IHdpdGggdGhlIGV4cGVjdGVkIGNhY2hlIGxpbmUgc2l6ZSBvZiA2
NCBieXRlcywgdGhlIHN0cnVjdHVyZSBzaXplIGRvZXMNCj4gbm90IGNoYW5nZS4NCj4gRm9yIHN5
c3RlbXMgd2l0aCBhIGxhcmdlciBTTUJfQ0FDSEVfQllURVMgc2l6ZSwgdGhlIHN0cnVjdHVyZSAq
d2lsbCoNCj4gaW5jcmVhc2UgaW4gc2l6ZSBhIGZhaXIgYml0LCBob3dldmVyIHdlJ2xsIG5vdyBn
dWFyYW50ZWUgdGhhdCBlYWNoDQo+IGdyb3VwIGlzIGluIGEgc2VwYXJhdGUgY2FjaGVsaW5lLiBU
aGlzIGhhcyBhbiBhZHZhbnRhZ2UgdGhhdCB1cGRhdGVzDQo+IHRvIGZpZWxkcyBpbiBvbmUgZ3Jv
dXAgd29uJ3QgdHJpZ2dlciBjYWNoZWxpbmUgZXZpY3Rpb24gb2YgdGhlIG90aGVyDQo+IGdyb3Vw
cy4gVGhpcyBjb21lcyBhdCB0aGUgZXhwZW5zZSBvZiBleHRyYSBtZW1vcnkgZm9vdHByaW50IGZv
ciB0aGUNCj4gcmluZ3MuDQo+IA0KPiBJZiBmaWVsZHMgZ2V0IHJlLWFycmFuZ2VkLCBhZGRlZCwg
b3IgcmVtb3ZlZCwgdGhlIGFsaWdubWVudCBhbmQNCj4gcGFkZGluZyBlbnN1cmUgdGhlIHJlbGV2
YW50IGZpZWxkcyBhcmUga2VwdCBvbiBzZXBhcmF0ZSBjYWNoZSBsaW5lcy4NCj4gVGhpcyBjb3Vs
ZCByZXN1bHQgaW4gdW5leHBlY3RlZCBjaGFuZ2VzIGluIHRoZSBzdHJ1Y3R1cmUgc2l6ZSBkdWUg
dG8NCj4gcGFkZGluZyB0byBrZWVwIGNhY2hlbGluZXMgc2VwYXJhdGUuDQo+IA0KPiBUbyBjYXRj
aCBzdWNoIGNoYW5nZXMgZHVyaW5nIGVhcmx5IGRldmVsb3BtZW50LCBhZGQgYnVpbGQgdGltZQ0K
PiBjb21waWxlciBhc3NlcnRpb25zIHRoYXQgY2hlY2sgdGhlIHNpemUgb2YgZWFjaCBncm91cCB0
byBlbnN1cmUgaXQNCj4gZG9lc24ndCBleGNlZWQgNjQgYnl0ZXMsIHRoZSBleHBlY3RlZCBjYWNo
ZSBsaW5lIHNpemUuIFRoZSBhc3NlcnRpb24NCj4gY2hlY2tzIHRoYXQgdGhlIHNpemUgb2YgdGhl
IGdyb3VwIGV4Y2x1ZGluZyBhbnkgcGFkZGluZyBhdCB0aGUgZW5kIGlzDQo+IGxlc3MgdGhhbiB0
aGUgcHJvdmlkZWQgc2l6ZSBvZiA2NCBieXRlcy4gVGhpcyB0eXBlIG9mIGNoZWNrIHdpbGwNCj4g
YmVoYXZlIHRoZSBzYW1lIGV2ZW4gb24gYXJjaGl0ZWN0dXJlcyB3aXRoIGxhcmdlciBjYWNoZSBz
aXplcy4gVGhlDQo+IHByaW1hcnkgYWltIGlzIHRvIHByb2R1Y2UgYSB3YXJuaW5nIGlmIGRldmVs
b3BlcnMgYWRkIGZpZWxkcyBpbnRvIGENCj4gY2FjaGVsaW5lIGdyb3VwIHdoaWNoIGV4Y2VlZHMg
dGhlIHNpemUgb2YgdGhlIGV4cGVjdGVkIDY0IGJ5dGUNCj4gZ3JvdXBpbmdzLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmggfCAyNiArKysr
KysrKysrKysrKysrKysrKystDQo+IC0tLS0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbWFpbi5jIHwgIDIgKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3R4cnguaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfdHhyeC5oDQo+IGluZGV4IGU0NDBjNTVkOWU5Zi4uNmM3MDhjYWYzYTkxIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaA0KPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaA0KPiBAQCAtMjM2LDcg
KzIzNiw3IEBAIHN0cnVjdCBpY2VfdHN0YW1wX3JpbmcgeyAgfQ0KPiBfX19fY2FjaGVsaW5lX2lu
dGVybm9kZWFsaWduZWRfaW5fc21wOw0KPiANCj4gIHN0cnVjdCBpY2VfcnhfcmluZyB7DQo+IC0J
LyogQ0wxIC0gMXN0IGNhY2hlbGluZSBzdGFydHMgaGVyZSAqLw0KPiArCV9fY2FjaGVsaW5lX2dy
b3VwX2JlZ2luX2FsaWduZWQoY2wxKTsNCj4gIAl2b2lkICpkZXNjOwkJCS8qIERlc2NyaXB0b3Ig
cmluZyBtZW1vcnkgKi8NCj4gIAlzdHJ1Y3QgcGFnZV9wb29sICpwcDsNCj4gIAlzdHJ1Y3QgbmV0
X2RldmljZSAqbmV0ZGV2OwkvKiBuZXRkZXYgcmluZyBtYXBzIHRvICovDQo+IEBAIC0yNTMsOCAr
MjUzLDkgQEAgc3RydWN0IGljZV9yeF9yaW5nIHsNCj4gIAkJc3RydWN0IGxpYmV0aF9mcWUgKnJ4
X2ZxZXM7DQo+ICAJCXN0cnVjdCB4ZHBfYnVmZiAqKnhkcF9idWY7DQo+ICAJfTsNCj4gKwlfX2Nh
Y2hlbGluZV9ncm91cF9lbmRfYWxpZ25lZChjbDEpOw0KPiANCj4gLQkvKiBDTDIgLSAybmQgY2Fj
aGVsaW5lIHN0YXJ0cyBoZXJlICovDQo+ICsJX19jYWNoZWxpbmVfZ3JvdXBfYmVnaW5fYWxpZ25l
ZChjbDIpOw0KPiAgCXN0cnVjdCBsaWJldGhfZnFlICpoZHJfZnFlczsNCj4gIAlzdHJ1Y3QgcGFn
ZV9wb29sICpoZHJfcHA7DQo+IA0KPiBAQCAtMjYyLDggKzI2Myw5IEBAIHN0cnVjdCBpY2Vfcnhf
cmluZyB7DQo+ICAJCXN0cnVjdCBsaWJldGhfeGRwX2J1ZmZfc3Rhc2ggeGRwOw0KPiAgCQlzdHJ1
Y3QgbGliZXRoX3hkcF9idWZmICp4c2s7DQo+ICAJfTsNCj4gKwlfX2NhY2hlbGluZV9ncm91cF9l
bmRfYWxpZ25lZChjbDIpOw0KPiANCj4gLQkvKiBDTDMgLSAzcmQgY2FjaGVsaW5lIHN0YXJ0cyBo
ZXJlICovDQo+ICsJX19jYWNoZWxpbmVfZ3JvdXBfYmVnaW5fYWxpZ25lZChjbDMpOw0KPiAgCXVu
aW9uIHsNCj4gIAkJc3RydWN0IGljZV9wa3RfY3R4IHBrdF9jdHg7DQo+ICAJCXN0cnVjdCB7DQo+
IEBAIC0yODQsNyArMjg2LDkgQEAgc3RydWN0IGljZV9yeF9yaW5nIHsNCj4gIAlzdHJ1Y3QgaWNl
X3Jpbmdfc3RhdHMgKnJpbmdfc3RhdHM7DQo+IA0KPiAgCXN0cnVjdCByY3VfaGVhZCByY3U7CQkv
KiB0byBhdm9pZCByYWNlIG9uIGZyZWUgKi8NCj4gLQkvKiBDTDQgLSA0dGggY2FjaGVsaW5lIHN0
YXJ0cyBoZXJlICovDQo+ICsJX19jYWNoZWxpbmVfZ3JvdXBfZW5kX2FsaWduZWQoY2wzKTsNCj4g
Kw0KPiArCV9fY2FjaGVsaW5lX2dyb3VwX2JlZ2luX2FsaWduZWQoY2w0KTsNCj4gIAlzdHJ1Y3Qg
aWNlX2NoYW5uZWwgKmNoOw0KPiAgCXN0cnVjdCBpY2VfdHhfcmluZyAqeGRwX3Jpbmc7DQo+ICAJ
c3RydWN0IGljZV9yeF9yaW5nICpuZXh0OwkvKiBwb2ludGVyIHRvIG5leHQgcmluZyBpbiBxX3Zl
Y3Rvcg0KPiAqLw0KPiBAQCAtMjk4LDEwICszMDIsMjIgQEAgc3RydWN0IGljZV9yeF9yaW5nIHsN
Cj4gICNkZWZpbmUgSUNFX1JYX0ZMQUdTX01VTFRJREVWCQlCSVQoMykNCj4gICNkZWZpbmUgSUNF
X1JYX0ZMQUdTX1JJTkdfR0NTCQlCSVQoNCkNCj4gIAl1OCBmbGFnczsNCj4gLQkvKiBDTDUgLSA1
dGggY2FjaGVsaW5lIHN0YXJ0cyBoZXJlICovDQo+ICsJX19jYWNoZWxpbmVfZ3JvdXBfZW5kX2Fs
aWduZWQoY2w0KTsNCj4gKw0KPiArCV9fY2FjaGVsaW5lX2dyb3VwX2JlZ2luX2FsaWduZWQoY2w1
KTsNCj4gIAlzdHJ1Y3QgeGRwX3J4cV9pbmZvIHhkcF9yeHE7DQo+ICsJX19jYWNoZWxpbmVfZ3Jv
dXBfZW5kX2FsaWduZWQoY2w1KTsNCj4gIH0gX19fX2NhY2hlbGluZV9pbnRlcm5vZGVhbGlnbmVk
X2luX3NtcDsNCj4gDQo+ICtzdGF0aWMgaW5saW5lIHZvaWQgaWNlX3J4X3Jpbmdfc3RydWN0X2No
ZWNrKHZvaWQpIHsNCj4gKwlDQUNIRUxJTkVfQVNTRVJUX0dST1VQX1NJWkUoc3RydWN0IGljZV9y
eF9yaW5nLCBjbDEsIDY0KTsNCj4gKwlDQUNIRUxJTkVfQVNTRVJUX0dST1VQX1NJWkUoc3RydWN0
IGljZV9yeF9yaW5nLCBjbDIsIDY0KTsNCj4gKwlDQUNIRUxJTkVfQVNTRVJUX0dST1VQX1NJWkUo
c3RydWN0IGljZV9yeF9yaW5nLCBjbDMsIDY0KTsNCj4gKwlDQUNIRUxJTkVfQVNTRVJUX0dST1VQ
X1NJWkUoc3RydWN0IGljZV9yeF9yaW5nLCBjbDQsIDY0KTsNCj4gKwlDQUNIRUxJTkVfQVNTRVJU
X0dST1VQX1NJWkUoc3RydWN0IGljZV9yeF9yaW5nLCBjbDUsIDY0KTsgfQ0KPiArDQo+ICBzdHJ1
Y3QgaWNlX3R4X3Jpbmcgew0KPiAgCS8qIENMMSAtIDFzdCBjYWNoZWxpbmUgc3RhcnRzIGhlcmUg
Ki8NCj4gIAlzdHJ1Y3QgaWNlX3R4X3JpbmcgKm5leHQ7CS8qIHBvaW50ZXIgdG8gbmV4dCByaW5n
IGluIHFfdmVjdG9yDQo+ICovDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX21haW4uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbWFpbi5jDQo+IGluZGV4IGIxNmVkZTFmMTM5ZC4uNDczMWRiYWNhOWRlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYw0KPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYw0KPiBAQCAtNTkxNiw2ICs1
OTE2LDggQEAgc3RhdGljIGludCBfX2luaXQgaWNlX21vZHVsZV9pbml0KHZvaWQpICB7DQo+ICAJ
aW50IHN0YXR1cyA9IC1FTk9NRU07DQo+IA0KPiArCWljZV9yeF9yaW5nX3N0cnVjdF9jaGVjaygp
Ow0KPiArDQo+ICAJcHJfaW5mbygiJXNcbiIsIGljZV9kcml2ZXJfc3RyaW5nKTsNCj4gIAlwcl9p
bmZvKCIlc1xuIiwgaWNlX2NvcHlyaWdodCk7DQo+IA0KPiANCj4gLS0NCj4gMi41MS4wLnJjMS4x
OTcuZzZkOTc1ZTk1YzlkNw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxl
a3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
