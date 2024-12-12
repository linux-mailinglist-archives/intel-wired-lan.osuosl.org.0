Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5830D9EFE07
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 22:12:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E296F607FF;
	Thu, 12 Dec 2024 21:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7YqOMEH6COlB; Thu, 12 Dec 2024 21:12:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 201F661182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734037951;
	bh=On790CMLEK7WTOHUOQIIxt5dlGq8f89XL/qWIBNzjMs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QSsneEOSRtH2GJbhz4QW7xlaLmprSCarx2BFXuxiNkiTqAq7p+kjZd8q3gE7m83w9
	 V4ZTu1LlHHzA+eKFi97xcVUoDXTqGO2UH50uepHAnRdTQw40Ut1VvgbiNeG5rc5EIU
	 BqU8YxNPjseABB1arLYG1cwoT+dgwcU86SbxsCLtTFj3Gv2H3BVCkUcefrHLww5kCz
	 RNrhnQ6lDph2DoJ0wtCTFQWqCmjD7/Y+IXKn2kHKFC2wgyWR14xeRAeMk1YNDK9718
	 aKrvt0yeiC5lTgkV2HkF6Ca6qz51Ko7BbuASqSj5SvwXdOTbjJ7caZ/aGeJLNfIVqi
	 ZTSPPYBtXRTXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 201F661182;
	Thu, 12 Dec 2024 21:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D48475
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 21:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DDF781355
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 21:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9V9oUcT0p9OU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 21:12:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1157E81292
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1157E81292
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1157E81292
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 21:12:27 +0000 (UTC)
X-CSE-ConnectionGUID: 0Eah49LSQtiq7W/TZwaq4A==
X-CSE-MsgGUID: hET7PrSjRcG+EePo0swAkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45491057"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45491057"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 13:12:27 -0800
X-CSE-ConnectionGUID: nPtPgLWMQA20oZtpYLKbIw==
X-CSE-MsgGUID: x1uoZ+7MSDi9bQBnnprutA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; d="scan'208";a="96580813"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 13:12:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 13:12:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 13:12:24 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 13:12:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nkn67561q4JFJGXTwvFoNHdZ9l61wmcPGkXMy6KD14aH2rRAPVm+ol9KJI5lF+yLR3JRRfJNFQAVu2lhroJxOESG4ngvF/wxLpuO2sTPWYTAET5TSgk4dE1en7FnusimTE8XkW6by8+uVHdjSc3JwbVvIYkySm6QMJ4DuZKa6NPcJT29njYIMuPaHexC4vX+ovso3OOQMZLw7HjNZuJPLslDi7Vtf48cRqLzL7ft3ZkmDwChy9PWMQ/8zMhml84lg/D7fB00ve1YKfTEm04XDYh1+zEpM32pthQeHZFAX7T1ENDXGFe0EnwNsTL7W+esGcd/M7vzxfZieCQcI/mUig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=On790CMLEK7WTOHUOQIIxt5dlGq8f89XL/qWIBNzjMs=;
 b=Vv+bZg9PMszzmfXD2FqxK2+8EXVc0zXdQjZK8NCVTHmqGqWsEsXcq0Ktep5hdhXv9WZe6PpNSZLFrdmicsP8Jx79+yjlC+Lq0Z+RdjAd8ETxSBYMPsP0L1cjxwY/vDqdgFNzjP95PSEZCLAW0ImVU9Ob+oNFijNPqfG/cTaE5qoF/357cad1CdHv7Zed8z27HibxXmdxnBnDg/9OE9vQ0EJ7qqgdkqk7fPVmk4yBJhrdy3RmSjmKG7TFOyThB5R1W4x73ibd7DWF6wTQUTflETJ1XmUZc6yqbPtD5vOuE6gTDX5qtqx2CQvQ8fnf4CSNeKv+9cUKhKVIT1p3bZxbLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by CO1PR11MB4993.namprd11.prod.outlook.com (2603:10b6:303:6c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.16; Thu, 12 Dec
 2024 21:12:21 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 21:12:21 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan][PATCH iwl-net 2/2] idpf: trigger SW interrupt
 when exiting wb_on_itr mode
Thread-Index: AQHbQBRkM2grYY5v50WvWzxFCH451bLU2BUAgA5cmsA=
Date: Thu, 12 Dec 2024 21:12:21 +0000
Message-ID: <MW4PR11MB591171C3FF50F7A5A7F19369BA3F2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241125235855.64850-1-joshua.a.hay@intel.com>
 <20241125235855.64850-3-joshua.a.hay@intel.com>
 <e95977e0-d080-45a1-a82e-e11ee85ce794@intel.com>
 <DM4PR11MB6502760769BC51BBBF7D7D75D4362@DM4PR11MB6502.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6502760769BC51BBBF7D7D75D4362@DM4PR11MB6502.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|CO1PR11MB4993:EE_
x-ms-office365-filtering-correlation-id: 23ef0046-0e8e-4552-f64a-08dd1af1ab3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QjdpbXRDbWtiM1ZYaHdrUExWRGJtL3A0WXRUSDJZTUxZKzNSMmliSkFjVmF4?=
 =?utf-8?B?RHpJVVNzR2QrQnppeWNFdzdlWmk0T0hpaFRtV2c4djhxV2xaT0xXRHRtZitR?=
 =?utf-8?B?bnVMNzRlVllNazdjS1pJcjdpbE9RYWg1UFB4TllIeU9kVVRJbE1jUVY1aUtR?=
 =?utf-8?B?WGVGRVVkVEtmNTAxUVZucjdMYUgvaUJaZHFsTkphWjA5MG1vSkxJUFdJNnFH?=
 =?utf-8?B?WDZ2em0rMmFQWlgyVk45Q2oyVnJOczArV09mcFJkUDkxSHJQdk01WEh2cDF2?=
 =?utf-8?B?cGRzd25qRG13Z01LTDVsUEZCQ24zMHFzVlJwYlZGL2ZhdnVpb1ZNZkFxcW42?=
 =?utf-8?B?TXV4bUhLaGdIRllxbWVDVnFzWGp3cWhHS2hMN29JbGIvRjRhZGN4WVVrVnpl?=
 =?utf-8?B?blZPSm1zZm5ZOHVyWjhCZ2lPcHh1SEgvNUorRXpVSWJhSDl0dnpvWVN3ZGww?=
 =?utf-8?B?dW8wVTE2c3NSNFNXQU92bUZSTzMwcEl3bnFqNnpVUVJ6a01XQWJpbDZBb0Ra?=
 =?utf-8?B?c2s1YnhacnNJVktZM29HYU9Ld2hiYzE0alRQR0dBQVVtOGJDREhGTm5BQjgx?=
 =?utf-8?B?SXVNWkdqQ3A0UXIyWW0wTHMxZmNrcHBVL3Q1N0h0SWl5a2svbktTcEloZEZG?=
 =?utf-8?B?Rnorc2FZZ29kYUM5bi9oREhCY1gwY0lnT3dRWWFtTWFaNzRMRHFkK2dDZ0lV?=
 =?utf-8?B?YzNWM2tqZlFpVDZKM3ZrQlRIYmhIMUp6SGUyRTNpemJwT1QycHBiRjlLVUp4?=
 =?utf-8?B?M0xMR05WblE0bkdFaEg2NWI5emI3dCtGWDVyZnNzcklBMm9ndDRvWlg4MGlz?=
 =?utf-8?B?bHhqcVVPM00xQmdpeG1JNTlCcEp3YWV6MDU1dm8rNFhFUEREZjJkSlVna3dP?=
 =?utf-8?B?blYzcGl0dUlPdkExVzRIM1VhaW1qeFZsM3l3aTJWQUNJRnE2Y1BZaTJ3SEVC?=
 =?utf-8?B?dGdWQjFFUnI4bnRmTFkxQzA0RHMrZzROTDhjS0czWDBLYStJd0k2dkFKaHpa?=
 =?utf-8?B?cjJnY25Bc21SS3oySEZxcVpLRFJwQkJ5TzVHaFplSldPMWh5L1ZtSmRYQmtl?=
 =?utf-8?B?aXh2dUhqZzdWUE11dnhsNm53OGF0a25Sa3gwdFZ0Yk05bnZpbzhnL2U0WmE3?=
 =?utf-8?B?a1J4Qm5yMWsyQ1pYejNqSkxwMnVISGZidzNvalVEMTJhNGg1V05kdVAwN3d6?=
 =?utf-8?B?NXUxSWltKzRQK01FMGdxSzhjbndLTDlpRnBDRE8yVDB2cFgzVE8vclV2c3dq?=
 =?utf-8?B?eTlJRVZZa0JWYnlpN0xwRkxxSVNBeFZGWDRSSkhsMW5WZE9pTy8ybndHc3dT?=
 =?utf-8?B?Z1RTbk1pL1ZsZmJuWWZ5TEM0aWVuWVhSSUU5UFdFTmhJbGJPajV5cDF0Tm9k?=
 =?utf-8?B?bjJUc0d3M0hYRlQrYW5nbFo0Y2dhWjh1Y090N1hqOHRXZUw5dUVJTDI0ejVE?=
 =?utf-8?B?TGVKTEgxQlBaZ3g4aGVGajY4NXQrK3o3RDFHWUFWQWp0MForVWlVWHZZYmZ1?=
 =?utf-8?B?dWNNR2JZUXNTZnE4UFJDOXpWaTY5MW51NzVuamMyVDFHY0Eycy9PY2pWaWFO?=
 =?utf-8?B?bTNLU2p0KzNubC9CUG5CWDVxZElxRU02ZjNGVTh5bzhGVXVBdVZMUEhYRmxF?=
 =?utf-8?B?dE9RUFVIem90MnhyYTNDdllxdzl0NEo0MkRXaW9KWWpCUzVBZnh6UWI2WndB?=
 =?utf-8?B?U0RzTjNlbk5rNGg1bWwxSENYQ3M2b3pDTGo1b3VxdWY2R3hta2xxK0dLUDh6?=
 =?utf-8?B?ZjZOS1RvY1NHa0FmNGNUNitiZXNxRERSOVNFejFsQWtBOHdIMWFTMStRSUNY?=
 =?utf-8?B?bEtVQmZycnVQdkhrZi9VVFFyZXAzYUF2ZENHWEc5b2orMitjdTkzcXNpeXJn?=
 =?utf-8?B?L1pLL3BYYW51Z1VvUUw5OHh0QjlNQTRXaWs3Qk03K1FOMFE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTcrUHMwaHJMeHY1cUpuckV0SEFFOG5BT2RkRUpYM1dCbXpHK3FiUFFZNmhq?=
 =?utf-8?B?T1dqSzJBc0F5cFN3bXYxa2FaODYrdFpONmgxakNlMVdBajUreEhJcFhkeFg5?=
 =?utf-8?B?RUl1bjRudWhIY1ZGd2RWY091ekk0WTluRVNPVUtudmVTOXBaQUxhK0NybWxS?=
 =?utf-8?B?VHdCVXdGL3gxWFRoNXljbUpTRnhUa1FRYzF0MTZwZ0gxMFU5eHVNV1UzQ01D?=
 =?utf-8?B?UGhSR1pFMHJ4WlEzdnhNNGhjQy90cG5mUi9PcjJxU29NUjdoUldPU0E0eENQ?=
 =?utf-8?B?cmtJaEFSc3E2dm5FdGhvRUxwK2N5dmZmR1I3a2o1K3VGRENRTVgzSzBYdG5T?=
 =?utf-8?B?c2V0bEV5WHVKUzdPdE1icUs1QlVUSzRLbVhkeGJLTmRQWDVVeTJJdVNoR3E0?=
 =?utf-8?B?S0YvK0puNjVTUTdDNDZZb1FkWi9uZExGM0xpc0tVN1RRbU5TMVpPTUhkT3Fv?=
 =?utf-8?B?MEhSaEVSUzN0bCtPVHptR1BCWTJSVFowSGI0UUd6Njg0OFVyV3VBeHp5TERr?=
 =?utf-8?B?ZlR1a0UxVE9rT0l3ZmV5c1JLZFhTdVN6aDBaV1VqeXJvNWFwUUdPbkVlWHh5?=
 =?utf-8?B?NDIvNWpWdDUyb3I5L0hXc0lGdzRwSmF5dC9DbXlCdGk3WEFkTEtJMEY0U3c1?=
 =?utf-8?B?cmpUWSsrV2J6YlhkcGxDeWt5Rm1JWkg3RlVYR0VySlNDM280WEd0M01xb3Ro?=
 =?utf-8?B?R1RBNUk0V2V3cEdqdjhsUlNLb0JnM3Z2cUpJNEZuZzRLTVVrdzB0dld0UklE?=
 =?utf-8?B?V05oTERDOVVNdVBFazlkUzIxdVFCQWhHc0w5b09BMUVOWHlpdW9ZeHFYRUdL?=
 =?utf-8?B?Zm1hZ1hzQjZ5NXpEeDhoNmdzcDI2TWEyL21xVVhTckFMNkxNN0FPWWNDOVJC?=
 =?utf-8?B?ejRnRjJMVUI5REVVTkZoa3d3alVTS05ZdlJSYlpvclRuUzdSTnZVMVdvZkxx?=
 =?utf-8?B?Yzk2TTdVcnNWa0JBa3lSTzdqSlFKMEF1TTYxZ2JKZmVtMWhQY09RRy9pTGxL?=
 =?utf-8?B?ZFlHbUowQjFIdkRVZkJPY3A1K205NE1GRE1SVkt3ajV6QzVUclh4dVZONWhq?=
 =?utf-8?B?OE1HQW9UaHJLNlp1UytrRUI0cHozNEU0ekNVbEVVNUtnWmo4NUFvTkhqUkdK?=
 =?utf-8?B?YzBhSjBFNXF5S0NmUW9UVUR2ZzJ2cCtSTlFsMUpBbjNPQmlvRXlCS0JZSmZE?=
 =?utf-8?B?RFhzcm14RGNwOTJTMytJdlNlbUZFOFVYUUllNjg5c0ovaFNjc2dWRC9xRlpN?=
 =?utf-8?B?S3ZYSi95amoxTFFObDNqZGRiY0RsTnMwRzMxZldwV0piazV1SHR0WVYwRVdD?=
 =?utf-8?B?ZzFtM1o3NElVenUzdWV5dXo4VFJGSlNoQjBoQVlpTTVuQU9qeXBacWRMd1Bv?=
 =?utf-8?B?d3I0UkRkTVFGSFVRY05IQkR5cFNpcS9oSCt3bVgySktEVE5ja1dzY1RPdFVw?=
 =?utf-8?B?SVVSbnNXNEpqZjczRXlkbk8rbDNCaEJXRlc1c2Y5MWxIYW9RQWd6bW5Qci9P?=
 =?utf-8?B?aDhJV0tmTWg5c1ZOdVIySG9pS2cvdHZKWFIwUllmTlV4UE1UWmVVQjFZcUJF?=
 =?utf-8?B?NmZhaW0yZzhyaDZyT011R2Z2RWFEY202QThBQmJLNVk5Nis1K0hjMWNBeU11?=
 =?utf-8?B?YUtFUS9xenlONHFJa2tTcWRVOWZCQkNGZ1NzQ1JhK0ZzdkxIRkUwc0JFM3NC?=
 =?utf-8?B?MSszcVV3NEhiV1pVTTk4azhqdzVEeC9pMGllMEg5YWFHaEI3MHE1cmx3SFMy?=
 =?utf-8?B?VzFwMEY0WnNDZk0wazUvQnVoNXA4OVU3TUdwNXFtMmhtQ242NWpSdzJpWjhp?=
 =?utf-8?B?Y3dIT3o0ZjRiWFN0Y0g0d1RIeFVlYy9WUmRqSnFhRllKRzYyVmEvREFUSTFT?=
 =?utf-8?B?Y1J6bGl4ZUNYR3dUSlZYOHZOUitTa01LcFZBWEFMY3FoZHE3dUJFMjdlQStj?=
 =?utf-8?B?ZlRHbEx0UHpGNktyZVE0VGl2TjRSQTlRVnhLSHhBbmM4MThySys4VHF3Uk1k?=
 =?utf-8?B?SXd4WXJEUEN5akw3OTdrVVliRk12Nm54VU5SYnhXNWdNeHBTUGQwMTh6WE0y?=
 =?utf-8?B?Y2JLWDJERFNjbGZEeGExTDZmTU5jdTlGOEV1NlBnbjZJeEx6USs3QzQrMjhL?=
 =?utf-8?Q?EX3E7tBubcwXQ0HSvwZz+ophS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23ef0046-0e8e-4552-f64a-08dd1af1ab3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2024 21:12:21.8229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oCScmUXTHk3lZXVF6VlPK0MEzY3DFtg5cR9vKrn4S9zO7EXV/L+EJOHI6uziqNrM3YKjabixL4UybSk4/rADGpSBjV0tzG3xxlJxAoow8aw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4993
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734037948; x=1765573948;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=On790CMLEK7WTOHUOQIIxt5dlGq8f89XL/qWIBNzjMs=;
 b=J7HgsSE71zQ2EO6ipmOHPjsNWKnplJ+6UOXuUvClpyZfhLNv9JX/fJhL
 5AsQWbAUx0BsduiqMnSAuA/nWGoNaWyVEHa2sjzvGCPiwioa4hPjGwS/f
 al7nSlaXc+he3dWl1zxJdVmt/qBwzxXmhDCG22RiHZk3+m9Z1l0cn75WW
 b81nazBZPgfFA1UKNz0KFLh8EoKmGS1QNZYo0SlBtr7An5u340sUgve1G
 9g08nNyia8svr1nB9v6HQl2o0kRFpCjJ0vMCYoMNMjyXTjOTXVRLawvkp
 7iMBEyWZdAg8cSUQVi+HBLCGnEfiMfqZRX7XE5UUZH7dzlj6kJfldLsRe
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J7HgsSE7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: trigger SW
 interrupt when exiting wb_on_itr mode
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEhheSwgSm9zaHVhIEEgPGpv
c2h1YS5hLmhheUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDMsIDIwMjQg
OTo1MyBBTQ0KPiBUbzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGlu
dGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBLaXRzemVs
LCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgS3ViaWFrLCBN
aWNoYWwgPG1pY2hhbC5rdWJpYWtAaW50ZWwuY29tPjsNCj4gQ2hpdHRpbSwgTWFkaHUgPG1hZGh1
LmNoaXR0aW1AaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBS
RTogW0ludGVsLXdpcmVkLWxhbl1bUEFUQ0ggaXdsLW5ldCAyLzJdIGlkcGY6IHRyaWdnZXIgU1cg
aW50ZXJydXB0DQo+IHdoZW4gZXhpdGluZyB3Yl9vbl9pdHIgbW9kZQ0KPiANCj4gPiBGcm9tOiBM
b2Jha2luLCBBbGVrc2FuZGVyIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPg0KPiA+IENj
OiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgS2l0c3plbCwgUHJ6ZW15c2xhdw0K
PiA+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgS3ViaWFrLCBNaWNoYWwNCj4gPG1p
Y2hhbC5rdWJpYWtAaW50ZWwuY29tPjsNCj4gPiBDaGl0dGltLCBNYWRodSA8bWFkaHUuY2hpdHRp
bUBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+ID4gU3ViamVjdDogUmU6IFtJ
bnRlbC13aXJlZC1sYW5dW1BBVENIIGl3bC1uZXQgMi8yXSBpZHBmOiB0cmlnZ2VyIFNXIGludGVy
cnVwdA0KPiA+IHdoZW4gZXhpdGluZyB3Yl9vbl9pdHIgbW9kZQ0KPiA+DQo+ID4gRnJvbTogSm9z
aHVhIEhheSA8am9zaHVhLmEuaGF5QGludGVsLmNvbT4NCj4gPiBEYXRlOiBNb24sIDI1IE5vdiAy
MDI0IDE1OjU4OjU1IC0wODAwDQo+ID4NCj4gPiA+IFRoZXJlIGlzIGEgcmFjZSBjb25kaXRpb24g
YmV0d2VlbiBleGl0aW5nIHdiX29uX2l0ciBhbmQgY29tcGxldGlvbiB3cml0ZQ0KPiA+ID4gYmFj
a3MuIEZvciBleGFtcGxlLCB3ZSBhcmUgaW4gd2Jfb25faXRyIG1vZGUgYW5kIGEgVHggY29tcGxl
dGlvbiBpcw0KPiA+ID4gZ2VuZXJhdGVkIGJ5IEhXLCByZWFkeSB0byBiZSB3cml0dGVuIGJhY2ss
IGFzIHdlIGFyZSByZS1lbmFibGluZw0KPiA+ID4gaW50ZXJydXB0czoNCj4gPiA+DQo+ID4gPiAJ
SFcgICAgICAgICAgICAgICAgICAgICAgU1cNCj4gPiA+IAl8ICAgICAgICAgICAgICAgICAgICAg
ICB8DQo+ID4gPiAJfAkJCXwgaWRwZl90eF9zcGxpdHFfY2xlYW5fYWxsDQo+ID4gPiAJfCAgICAg
ICAgICAgICAgICAgICAgICAgfCBuYXBpX2NvbXBsZXRlX2RvbmUNCj4gPiA+IAl8CQkJfA0KPiA+
ID4gCXwgdHhfY29tcGxldGlvbl93YiAJfCBpZHBmX3Zwb3J0X2ludHJfdXBkYXRlX2l0cl9lbmFf
aXJxDQo+ID4gPg0KPiA+ID4gVGhhdCB0eF9jb21wbGV0aW9uX3diIGhhcHBlbnMgYmVmb3JlIHRo
ZSB2ZWN0b3IgaXMgZnVsbHkgcmUtZW5hYmxlZC4NCj4gPiA+IENvbnRpbnVpbmcgd2l0aCB0aGlz
IGV4YW1wbGUsIGl0IGlzIGEgVURQIHN0cmVhbSBhbmQgdGhlDQo+ID4gPiB0eF9jb21wbGV0aW9u
X3diIGlzIHRoZSBsYXN0IG9uZSBpbiB0aGUgZmxvdyAodGhlcmUgYXJlIG5vIHJ4IHBhY2tldHMp
Lg0KPiA+ID4gQmVjYXVzZSB0aGUgSFcgZ2VuZXJhdGVkIHRoZSBjb21wbGV0aW9uIGJlZm9yZSB0
aGUgaW50ZXJydXB0IGlzIGZ1bGx5DQo+ID4gPiBlbmFibGVkLCB0aGUgSFcgd2lsbCBub3QgZmly
ZSB0aGUgaW50ZXJydXB0IG9uY2UgdGhlIHRpbWVyIGV4cGlyZXMgYW5kDQo+ID4gPiB0aGUgd3Jp
dGUgYmFjayB3aWxsIG5vdCBoYXBwZW4uIE5BUEkgcG9sbCB3b24ndCBiZSBjYWxsZWQuICBXZSBo
YXZlDQo+ID4gPiBpbmRpY2F0ZWQgd2UncmUgYmFjayBpbiBpbnRlcnJ1cHQgbW9kZSBidXQgbm90
aGluZyBlbHNlIHdpbGwgdHJpZ2dlciB0aGUNCj4gPiA+IGludGVycnVwdC4gVGhlcmVmb3JlLCB0
aGUgY29tcGxldGlvbiBnb2VzIHVucHJvY2Vzc2VkLCB0cmlnZ2VyaW5nIGEgVHgNCj4gPiA+IHRp
bWVvdXQuDQo+ID4gPg0KPiA+ID4gVG8gbWl0aWdhdGUgdGhpcywgZmlyZSBhIFNXIHRyaWdnZXJl
ZCBpbnRlcnJ1cHQgdXBvbiBleGl0aW5nIHdiX29uX2l0ci4NCj4gPiA+IFRoaXMgaW50ZXJydXB0
IHdpbGwgY2F0Y2ggdGhlIHJvZ3VlIGNvbXBsZXRpb24gYW5kIGF2b2lkIHRoZSB0aW1lb3V0Lg0K
PiA+ID4gQWRkIGxvZ2ljIHRvIHNldCB0aGUgYXBwcm9wcmlhdGUgYml0cyBpbiB0aGUgdmVjdG9y
J3MgZHluX2N0bCByZWdpc3Rlci4NCj4gPiA+DQo+ID4gPiBGaXhlczogOWM0YTI3ZGEwZWNjICgi
aWRwZjogZW5hYmxlIFdCX09OX0lUUiIpDQo+ID4gPiBSZXZpZXdlZC1ieTogTWFkaHUgQ2hpdHRp
bSA8bWFkaHUuY2hpdHRpbUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3NodWEg
SGF5IDxqb3NodWEuYS5oYXlAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYyB8IDMwICsrKysrKysrKysrKysrLS0t
LS0tLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlv
bnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRw
Zi9pZHBmX3R4cnguYw0KPiA+ID4gaW5kZXggYTg5ODlkZDk4MjcyLi45NTU4YjkwNDY5YzggMTAw
NjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhy
eC5jDQo+ID4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhy
eC5jDQo+ID4gPiBAQCAtMzYwNCwyMSArMzYwNCwzMiBAQCBzdGF0aWMgdm9pZCBpZHBmX3Zwb3J0
X2ludHJfZGlzX2lycV9hbGwoc3RydWN0DQoNCg0KVGVzdGVkLWJ5OiBLcmlzaG5laWwgU2luZ2gg
PGtyaXNobmVpbC5rLnNpbmdoQGludGVsLmNvbT4NCg0KDQo=
