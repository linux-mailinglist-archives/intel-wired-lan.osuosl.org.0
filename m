Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 121DD9B4EAA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 16:56:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DEE46086C;
	Tue, 29 Oct 2024 15:56:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lbcjtTPAtMFG; Tue, 29 Oct 2024 15:56:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C207960889
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730217372;
	bh=8+u/iB7cOomOJKNiYhrDT8uft/bi6FQOE1h16uD09OA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H83iAacTUkaHxlnxRmrRAMP0Th4OY9IcRuwO95Ycug+Ekk6bbaJSi8LRrJTGhVW3z
	 2XbnG7vcQhjUBblOmzZ9FMV2osrNAzNsvwaN/9q5dsmwPV4+SFnZuheBQT8AhESmFl
	 XCdeZNQ1y2kxIrVUIeKc5znrwVA3j25SKtDd/Q44jh6JcdKZW68UhK4PkwzUFyN/1p
	 UxL1/6/rArAQz4UyKtqshyshdqKzFCjSdvlspWe3Ej+REWOWXKQ2F4uPCgtoEYcFmV
	 jzBWFrt6MG3J/rusd531YXHex7EDfC6j3O7xpu4cSVBSsQz5mEs2KyzHDrZUNB3G6Q
	 fNqTE6Gi5Oveg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C207960889;
	Tue, 29 Oct 2024 15:56:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 64EBFAEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4564340A03
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:56:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tq8-JYyS7t_L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 15:56:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D4DDC4015E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4DDC4015E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4DDC4015E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 15:56:09 +0000 (UTC)
X-CSE-ConnectionGUID: P0c21IpmQtq1kNsI8nI4JA==
X-CSE-MsgGUID: cCdweu2CRKGpe7K1vEN0Cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="29974692"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29974692"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 08:56:09 -0700
X-CSE-ConnectionGUID: m32sKNhVTTGQ2/V5oVzGXw==
X-CSE-MsgGUID: DTeLmbHxSqeACL/Dnvw8pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="82336137"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 08:56:08 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 08:56:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 08:56:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 08:56:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OvE8Ttyi/t1p3jouXECX4C1/RSWQ9qJWvDiNmZcdn/6OgbsiN2PUnhGHm9/BWLCZ53IieWjAJcado9KoO+D1+30Te0SbmFT1FoMVa9G7+2l2Cwvcm9otAcNgVbjc0Pn1CkHzzkgsrnHTMTplusV+OjAKhPykF3eP4gLZUXKmagzIQxI90PM4Vb3BgAsvFl4TpnzmYQTgXGQl4wpptCjJeOq3zSFJ7CiexJZKfU80iTMQArKuiG8TJUCiykkv9qWiSoIVTctWEGljugO+xfjd9LQ6lH5U/rMFR++KsGwj7tUT1ooDdH1OtkSr5MZ8rj0yuBoBJeOSh+7q7REVMAWARg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8+u/iB7cOomOJKNiYhrDT8uft/bi6FQOE1h16uD09OA=;
 b=o1xoLl3Ylm9oEyLQyq57b+cEXxmsoRFz03Zf50QnkSmSLOE3BhWcrWeeRwmCQeK89w+VAyrUxcniuKKlLacOmOZ6IXSsH4/didEylQOLUqZfBjQON/ggf9PlrAKdmE7txyGG2U/gHXlXkpaNhI3qqX5vWydnB341E3VXS4tkMRyRojsJp2IN/Rm2jlE7vDoRXECwpcmq6CvcDXqiPGjULp0BXPOsQcujqWE4CSg5QG+1FFEwt6qKUitT89FJl3egBhjx8Ysnd3MI2GzLU5l3B9miUlM0uGDydL7DUi3b3tYrPsXjseBC7eL9cUui7B3Thge4bMjZbRSJ4GalIrFYkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4664.namprd11.prod.outlook.com (2603:10b6:208:26e::24)
 by SA1PR11MB5947.namprd11.prod.outlook.com (2603:10b6:806:23b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Tue, 29 Oct
 2024 15:56:05 +0000
Received: from MN2PR11MB4664.namprd11.prod.outlook.com
 ([fe80::85d0:c2bd:72cd:dcb7]) by MN2PR11MB4664.namprd11.prod.outlook.com
 ([fe80::85d0:c2bd:72cd:dcb7%5]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 15:56:05 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>
Thread-Topic: [PATCH net-next v2 0/2] ptp: add control over HW timestamp latch
 point
Thread-Index: AQHbKXtfF8vSeg5uGU+5mdBqSZ8srbKdmOoAgABCo4A=
Date: Tue, 29 Oct 2024 15:56:05 +0000
Message-ID: <MN2PR11MB4664B05DF435E9731B7877419B4B2@MN2PR11MB4664.namprd11.prod.outlook.com>
References: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
 <8899c12f-bc2f-49d3-bded-e838ac18fef8@linux.dev>
In-Reply-To: <8899c12f-bc2f-49d3-bded-e838ac18fef8@linux.dev>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4664:EE_|SA1PR11MB5947:EE_
x-ms-office365-filtering-correlation-id: 6679f557-0faa-49a2-b65b-08dcf832321c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?K3RucUFoSkowN2k3ZCtZZnhvVXQ4cW44UXgrbjVNZzZmQ21veXpIL1o4RXhR?=
 =?utf-8?B?ejFHM0JLWTlsOWR4OStjUTBzTGxpRnM3UTFuTUd0N1hzV3Q1VGgrUmhycXJl?=
 =?utf-8?B?eHhCOVFMZFdUOG11VENCUFlSck1GOFkvY1A1cmJCajhqeE5JbVpCaDVPdHpm?=
 =?utf-8?B?dXpZdm5BYy84V2xWbUVrOUM2cDRDZERBellpUWlwaHZWZzYxdnVsK1A0dklH?=
 =?utf-8?B?a2hqVTBLU25kN2MxeFp6NXBFdkp0dlZsaG9LaVhlb2pUWVRUTVBvUWI5NFJy?=
 =?utf-8?B?RmFiaVdGQ2VBZkxxdFY0MDdwZzA5ODdhc050TFlIM01HNzIyalluVGZheWJh?=
 =?utf-8?B?Z2R4eFJlWFJaQjdja1NyYUNlTXAyVEw5dFZoaURUeXVQZnBybzRBSjN6UjZq?=
 =?utf-8?B?UHZ6cUwrNVhtdmtHUk9ldXlVZEh4dmdOYjFnM2Y0R2FkTk9ldEFaRzBXQzY1?=
 =?utf-8?B?MEdsNm80R1RBdHZBK3c2Y25veFU3ZzM4NFlDYXlnSnZqa3BsRkFic1NUS0RN?=
 =?utf-8?B?ZXJva3NyaVZUL3NPZ3M2UkxCS2o2YnhKbXNkYVVIL2VLQzM5N0N2TTBpWG9B?=
 =?utf-8?B?aExHbVBuRzludWZKeWs0NTA3VWVMQUdzKzdkZE11ZlpjOEg0MEc4QUo4aTFs?=
 =?utf-8?B?b1VybjVqd0FQcitaRUdzcW1hL3ZzeEJkc3NSTFB2UjMxdUNiTnh6WHE5Q0dT?=
 =?utf-8?B?dGtHRHZ1UEhYSFpNdTZGQ0IrOGRVWURrNmtGdjZQS2FrdTI2Snh1RWlWcjhQ?=
 =?utf-8?B?cnlTZGl0QnBBQzhaMGNQNEFLY1h6RXVRMDFvRSt4MEJ2bmxyRlU5RjNzV0di?=
 =?utf-8?B?a1JmQVh6TDFLRVNYK1JFaTc3VzhUc2hYbGNDLzhieURFTFBVaUJoN09rQ090?=
 =?utf-8?B?dTNISk1jRVA4WndndlUrWFZxOXFXOHcvOFBNNWNZZVBJMUJnQlhsaTBsc1My?=
 =?utf-8?B?SEI3VXEzcTNYcHl4aWJuYytCdEcyZDNNcmtWUk8xTDhpTHhjNW1DdE5IcEY5?=
 =?utf-8?B?d3dMWFd6Tmk3Mk5xMXdtY0hxaEc4WjM1YXIxdWRvdmJwTVZKbWM3YTA0RzNV?=
 =?utf-8?B?VVlsMEZqclU2WDV4YWovRm44YU1LcUxYOHJ3K3VLM1RvWEdLbDUxVFI5KzJy?=
 =?utf-8?B?dUFsK2FCU3pFWmZIV2xURjhwOGFkTUV3eVlIMGd3VHJ3U1hWeWFZT3piM3Vu?=
 =?utf-8?B?WUVJOG1DYy9FZWJMR2oyV0IzMzN4NTZ1amdCVjhXQmhEQjEwa0ovQ2VYSElx?=
 =?utf-8?B?MXNkd29ZclFmYTF6YkVXbURDUW9POTBMTG5xc2pGS1hyVW1idVpaVjZDTGox?=
 =?utf-8?B?cHNVdHhybERUMVFKcnhVL2dhMWN3a0ZhMUJJb0VvS0xXSWRNVDMzNHU4dkZo?=
 =?utf-8?B?Sk15cGN3NytqSjZsVC9mRHpzcm51MCtIUDlsMHIxWGZiTFpoNFFQeDU5MXJS?=
 =?utf-8?B?QzVVbFUrY1huYzQ3V2cxOHlUZFZycjZMRkNuM0hCVHRCRFpSdkE3SlNhcG5J?=
 =?utf-8?B?QlBVVDdJdmp0bHIyaTBmeWdvSHhHUmZhNDlZYWo2RGJueWROemJ1cjNFdU9k?=
 =?utf-8?B?a2plZ0JlcnF6R09mKzRFTHZEbUVrN2NxaTgrWWtNbjhsN2hYR1ptVHFLbWRX?=
 =?utf-8?B?eXV5bWRGbjFhdDUwTmk5dE9CNGtRc2pESWlIYkpUQ1k1eVVZYlVGY3BUR2Fr?=
 =?utf-8?B?Z0dqS1RlTlFmUit4dnNJSHZHNndCTkhUT1dsUi9zQnorNTNIdW1JdXJGam5U?=
 =?utf-8?B?c0NiclRrV0ZwSGJ0WDgwM3VaSkpHdUZ2UDN0SzFaYU40M1ZWdmxVMUpXRlhl?=
 =?utf-8?B?eE9aNjBjRmM2TXRlaDlPdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4664.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWtwSi9FU0NsWFJ2dEtUM3B6aURtM290K1lpS0Nld2QxQ2pXZ1FPeUpoaGEz?=
 =?utf-8?B?c2l0azdyUlh6VDV5NFhGem91clNWRnlZa3NqRnpkOEFqMVllMFA2L0k3Y1Iw?=
 =?utf-8?B?eVNFS25LL3laNk5wWlFSVlQ0Y3djRFlqWjhnZzN0YnhuRXNvT2FQYVNVNkIx?=
 =?utf-8?B?WEg2eFFhUXJVbllqUDRhdWdzaW5YWmdrbHMvYm41anJXTUZoOTkxb2pCY2pw?=
 =?utf-8?B?T2hGYVhPWVI0U3BITGJoOGtWTExscjNVb1ZhK1luR2NDaXREZm01d1JrZXBh?=
 =?utf-8?B?OW1Jd09uQVFTYTBSL3N3RlNVcFJTcWdZOTNndzMzLzlBTm0rYS9oNXd4cmxU?=
 =?utf-8?B?VXNHVzBzU1Znb3FCZW1UVVdtb2JJV05KdTZnSEo0UFBEbFJYU2ZCZWVEREhV?=
 =?utf-8?B?V3pkUGVzeEhsUHNublQxSmpEeHloSGZDK2xWSW52VDJ4dmluWHN5bEk3aStX?=
 =?utf-8?B?MUpKWVlEbUFubTV0NmsrclIzL2p2RTRNNGU1cDIrK0hOVUJsU1hPYjRFblZY?=
 =?utf-8?B?N0RhaDFDVTY5SG5YRUZyTVpSRzNCMkw3QmJRRTNLSXE0c1IwWnBNMUFEeXI3?=
 =?utf-8?B?NEUxcVNpem5XQzhpN2JYOUIwNXlsVXhIOGdsMU1qaHY4ZlA4Y0d4Q1ZnTzlR?=
 =?utf-8?B?UXBzdEV4dFhSbnVUTGJaa3ZHeHRCUXZHQS9ZTmxoRlhtc3VzOEpodEVHUkdO?=
 =?utf-8?B?RjlsNGdadFRLdEhaVVB6MDBlTEZ0ZzBsTlNQSlI4aUNSMnBicDViNDQ0bVVB?=
 =?utf-8?B?K05scjlKOXNkbGxYeS92WnJLazBoZEdJNjdpS0Jham9OcEpxWFNZVkpPYUtx?=
 =?utf-8?B?b0h1T0NxR2RMSDRZM3lUd2NDNVd6M2VZUnNPQUZCWFBGdGswa3lTWnRvZGl6?=
 =?utf-8?B?MEsvWEFrNEE2eENmOHF3VWF4Ni9GQmd0MzZhMFpHbFVCMk83bHVVb0JKekh0?=
 =?utf-8?B?UU5KbG1ZY0E1S1U5ZnQzMjI5M3hwbHpkUzJMUVlqckxFamx4RldReEFGVE9m?=
 =?utf-8?B?bDZudXhOZ043cUVGemZObkM4QmFWazJQaXVXTUpyM01SY21FWjhQa0svMHlV?=
 =?utf-8?B?VVNQaDJBZXIvNlFZUXduVE5xWmhnUWdHYUNaemNFZTJYZ1ZxU3RCOE55UCth?=
 =?utf-8?B?aytOS2UwQURxQ2xFcWFvTkdpeENmRkNXc1QzU1lFM0RHeEI3QjBSM0FwRkpi?=
 =?utf-8?B?ZkFQZ1lnWGI3K1J2ZnBDSzU5RVA2bXAyczc5SUovYnorbDU5YmtER255MnRh?=
 =?utf-8?B?ajBBZ09qMjNLN0Y4cm82MWtEZFhZZTU1MjJITnA3c1hWcEdlZ2Y0T3hFZ09r?=
 =?utf-8?B?b1J2QWZNUzE5SzZLVERGRy9LOG00YTNJeW8vOWxXRGJWVVFmSWE4Znh5RnVr?=
 =?utf-8?B?UWhuMTRnMlNsQk1kalNMQ1NYKzRNSU55dFFIam9ZdlZjbkNLVkk4c2VoODYr?=
 =?utf-8?B?bDNYSjF2UE1kbEUxUW91S28yaWtFcitVQjBYWkNNdmxkMnZEYm5ESHFXemM1?=
 =?utf-8?B?T3NWU1hZK3dIZ053Y2EzVGV1WlJETTdBc1JUbEhxQ3VKeVpqK3M4VFdHUitZ?=
 =?utf-8?B?UDd6VVJFSDlYZE9IZ0trNVViT2FuTzFpVlZRdFpmekJ4TTBIbS9LYTFmMXRo?=
 =?utf-8?B?T0oycGV1aUMrTWFGbGpYRHMwM2VjRjJmb1U4L250SXhSdVd6aDUyWUlzNk9r?=
 =?utf-8?B?T3pQQW81MWtKTURtTG10MmsvQStrNFpwTm5FeGhKU3k2UU5YWHhaVHlsUm9z?=
 =?utf-8?B?RnY4VzdzbE12bXZBdHFiMEMyVWRlcmJQZGplNWdZaVN5WGdkUnQrQnd0V1pT?=
 =?utf-8?B?Uzc1NzdFWXRlT0NpV0w0UlVybkgxWC9MUXhqNVUxNUR4WDZETkhSVGJib0RJ?=
 =?utf-8?B?UExlWDY2NkdlYlNIc0dnVnBTVWpJdDNyN2M4ZTJUdGY2ckJGYVMzeHZDcXRv?=
 =?utf-8?B?U0RQRm1ySEc2TWRQNXJsTjFoNDBteWZQc0c4MzlpVnlMaFY2WHo1RUt4ZnRS?=
 =?utf-8?B?Vk01QWRYdHIzOC8xbTFDSHhFQ29qeHNuS2N5V1VRYnl4cjNRbG5kdlptaVlx?=
 =?utf-8?B?dE54WUF0VGZ1dmFKQXJ0QU4wbTVaNTA1M1VYRDFmcFlHVGFoNUFrckgvVkM5?=
 =?utf-8?B?MzlLQm9oSDBxMEUzck1DZmw0RmFZNkxHcmtQb1VmSVhJcEFoNkwvdmNmZExv?=
 =?utf-8?B?S0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4664.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6679f557-0faa-49a2-b65b-08dcf832321c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 15:56:05.1977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IDT0zsUCG0seUFLvYauduGF53T0ahEPtvnCdEVGo+4hjKOqOsjMGLV/lxktYlqaqxMJGPJu/dyHj/QcGu4WIXYxQA12i1gidlnrgI/R4EPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5947
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730217370; x=1761753370;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8+u/iB7cOomOJKNiYhrDT8uft/bi6FQOE1h16uD09OA=;
 b=TfqmJ1+g+no335yiacdekXgV6mgyWppkYG4wW/s7kkGDn6gXtzYsZKt6
 X+pBHr6fy3M6x1ziG1vMI+mrMa8x8rUa2igmaKeVyvXBadIwF5FxqpzBn
 mk8XQTxN0rIJapX9+dPc9V8VNKSqlfvxE1ecYIoc/2MKVgnszejlL5jJQ
 DUJbUXlsBKHdixysh09j2fwvX1nbMWkMXe7eT3U003bn2qBu74OzwlRoA
 3my0JxRq3/4js5E2r+OP7mOpGOPbjn1TukpeSpR9O2VLtLIVI3ZbqJxzw
 SYhwChL2jMj5NLFcb48CJe7KozoizKZnNx2l0DC9IvjR4wo/u4Ap82kqV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TfqmJ1+g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/2] ptp: add control over
 HW timestamp latch point
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

PkZyb206IFZhZGltIEZlZG9yZW5rbyA8dmFkaW0uZmVkb3JlbmtvQGxpbnV4LmRldj4NCj5TZW50
OiBUdWVzZGF5LCBPY3RvYmVyIDI5LCAyMDI0IDEyOjMwIFBNDQo+DQo+T24gMjgvMTAvMjAyNCAy
MDo0NywgQXJrYWRpdXN6IEt1YmFsZXdza2kgd3JvdGU6DQo+PiBIVyBzdXBwb3J0IG9mIFBUUC90
aW1lc3luYyBzb2x1dGlvbnMgaW4gbmV0d29yayBQSFkgY2hpcHMgY2FuIGJlDQo+PiBhY2hpZXZl
ZCB3aXRoIHR3byBkaWZmZXJlbnQgYXBwcm9hY2hlcywgdGhlIHRpbWVzdGFtcCBtYXliZSBsYXRj
aGVkDQo+PiBlaXRoZXIgaW4gdGhlIGJlZ2lubmluZyBvciBhZnRlciB0aGUgU3RhcnQgb2YgRnJh
bWUgRGVsaW1pdGVyIChTRkQpIFsxXS4NCj4+DQo+PiBBbGxvdyBwdHAgZGV2aWNlIGRyaXZlcnMg
dG8gcHJvdmlkZSB1c2VyIHdpdGggY29udHJvbCBvdmVyIHRoZSB0aW1lc3RhbXANCj4+IGxhdGNo
IHBvaW50Lg0KPj4NCj4+IFsxXSBodHRwczovL3d3dy5pZWVlODAyLm9yZy8zL2N4L3B1YmxpYy9h
cHJpbDIwL3RzZV8zY3hfMDFfMDQyMC5wZGYNCj4NCj5JIGp1c3Qgd29uZGVyIHNob3VsZCB3ZSBh
ZGQgZXRodG9vbCBpbnRlcmZhY2UgdG8gY29udHJvbCB0aGlzIGZlYXR1cmUuDQo+QXMgd2UgYXJl
IGFkZGluZyBpdCBmb3IgcGh5IGRldmljZXMsIGl0J3MgZ29vZCBpZGVhIHRvIGhhdmUgYSB3YXkg
dG8NCj5jb250cm9sIGl0IHRocm91Z2ggZXRoIGRldmljZSB0b28uIFdEWVQ/DQoNClNlZW1zIGRv
YWJsZSwgSSBndWVzcyBzb21laG93IGV4cGFuZCB0aGUgY29udHJvbGxhYmlsaXR5IGJlaW5nIGFk
ZGVkIHJpZ2h0DQpub3cgd2l0aCB0aGlzIHNlcmllczoNCmh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L25ldGRldi8yMDI0MTAyMy1mZWF0dXJlX3B0cF9uZXRuZXh0LXYxOC0wLWVkOTQ4ZjNiNjg4N0Bi
b290bGluLmNvbS8jcg0KT3Igc29tZSBvdGhlciBpZGVhPw0KDQoNCg==
