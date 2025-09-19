Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1909B8821A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 09:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49FB760F56;
	Fri, 19 Sep 2025 07:17:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZUU-I1k4o0Ul; Fri, 19 Sep 2025 07:17:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 953BE60F69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758266256;
	bh=aZiOV2PbIgYEmqLEemtiAswqvcqwylEuyaFqhrRtHV4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uTTnRSeaLQ2CFpOyRo1iWValtsjjChqUgxaTw+6AVr0E/8ypjJtHuhuyWD6uImwJp
	 nLnsRZeiD+Fh4iDMFVQ5CUU355ziQYJzpFEaQApG1Mr3Fh8khZVcK0knCiZytcWarg
	 Ugiv8teo24FMEcs/46sDS1FcJb+xsP94eTUN1l5YkD75C3Eam9G2Q/l1/CWLnabgR4
	 5gVP+yxfISDxYY5Hko//R0X7fQ7M2+XyMf/6XJjsW5d0kmt5dHCemGB5tT3lLjkxfq
	 A2VtxxKQxnl05pY5hL3DaUZRSwc7MkfdEYKB9UU5hOIV6Bmn/IuGhqWytrjSwi01p5
	 AKv813B8oY/4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 953BE60F69;
	Fri, 19 Sep 2025 07:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9283D150
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 07:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CF0040CEB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 07:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iqUKts93Mcbt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 07:17:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=chwee.lin.choong@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A9CC440CF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9CC440CF7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9CC440CF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 07:17:33 +0000 (UTC)
X-CSE-ConnectionGUID: M7rP3P9VSxmjA75FN5HMTQ==
X-CSE-MsgGUID: ZFsXiH1QSZm8Z15VKiOXPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="48185427"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="48185427"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 00:17:32 -0700
X-CSE-ConnectionGUID: iqSMUEtnRo6mMvF301yGqQ==
X-CSE-MsgGUID: I0maeyiqQ/GBvnO6y2mn3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="212919069"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 00:17:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 00:17:31 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 00:17:31 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 00:17:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qCtvm1vWopVMPqOxXJNFoPn5A42E5bzZEKqrkV7y7FUg5PfMkZ1uV9lTTUHfMShxMKySbJJYPFiKUXE3KcEYdOb0GUKrZ6xp53/sakxqEyuKLpz2U9z4CBoMkk9nndhnOl3I6p+7mMg3LTaOUnfHQx22/bNPXpCxIusrzTHU/TmJPQw6x+FkAwmivnZgwNixXxBvEg6qgF7YZk59NcKd8K0+c+6CUXb+IVplmzM+G8QbE3HA+Dsjbp4FRTO/Q7q6hiCK7JxDFOWBNaBO3bwfsR2js6uQx23XNeTby4BVi70FrXI848QDlm3uBf1u9VmM6cdcw4gsdz44wc3loWA5wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aZiOV2PbIgYEmqLEemtiAswqvcqwylEuyaFqhrRtHV4=;
 b=MBxqm+EgK7ssmo+Lliq7BCLdtPsY09RtqqJ3ezBKrE1xR21KTpi2TzChI/eXBfjrRH/4eSmFzhD01xqDiSIQHp2oAA6raY7VBxdVDAfR5MCUr5FHTmbfzfIm4nxuC42cmrjkK80OQxZtafgtt6yKlEycrfLdYYWm3uLOcwNu0In0qPZE2w4pXmFfZm//fi+tZ5fRyCyjljqaJOwkoOJ2XypQv/Ai+L0++0e/33Au2/1UmwxcKj5tkaioNfFp4IdaLXXAyIqpt0oS2Dl9fe7+fSEe9Ixm86Psr7qlboiVYfka9CmK2hvxfP5E8A9N6DR5E8VUeHA6uM528XI+mBz8gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF4422C5374.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::824) by DM4PR11MB6527.namprd11.prod.outlook.com
 (2603:10b6:8:8e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 07:17:28 +0000
Received: from SJ5PPF4422C5374.namprd11.prod.outlook.com
 ([fe80::8eb9:c184:2364:c523]) by SJ5PPF4422C5374.namprd11.prod.outlook.com
 ([fe80::8eb9:c184:2364:c523%8]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 07:17:28 +0000
From: "Choong, Chwee Lin" <chwee.lin.choong@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Shalev, Avi"
 <avi.shalev@intel.com>, "Song, Yoong Siang" <yoong.siang.song@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
Thread-Index: AQHcKN2AX7talWX280OAOmYpHztuYLSZgF+AgACKy6A=
Date: Fri, 19 Sep 2025 07:17:28 +0000
Message-ID: <SJ5PPF4422C53747941CD81779E97F26C34DA11A@SJ5PPF4422C5374.namprd11.prod.outlook.com>
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
 <0fc877a5-4b35-4802-9cda-e4eca561c5d1@linux.dev>
 <d30d7a43-ca17-445e-b7ae-641be2fcc165@intel.com>
In-Reply-To: <d30d7a43-ca17-445e-b7ae-641be2fcc165@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF4422C5374:EE_|DM4PR11MB6527:EE_
x-ms-office365-filtering-correlation-id: e5bdbb50-6e7f-4335-be97-08ddf74c9758
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?QkJ3Zm5oY0Q3STRXN1N2V1lNMFcyNWdXZUVIeVVnVldremNFdjRyYlA3dTJ6?=
 =?utf-8?B?WktUMmZNeTZHOWhiYU1GTzkxeG4zbzhydVF1cms1S0hXNTc3SWVUUzk2TGg4?=
 =?utf-8?B?NVhXT3FsdnRONld1UXFIOFBUTWEyNWJKY3k1aGllcEk5OURocG1YQ1BTbVBG?=
 =?utf-8?B?cUYvSlBhZ0VTSTBHV2F2cHA2NW9xOUFodGJHVnc3V3JTcGNXd0t3TE92YmxO?=
 =?utf-8?B?MVNBcjZLQTNOL01WYUU5TUQxYlU1Umg2cFM2MFVGYTMzOGxMZ01Yak9yM05q?=
 =?utf-8?B?bTUrZWpDQ3RqTUVLakRnQ0FoYmEvQTEwVyt5NlJNeFBLdzlUUFRiSDl4T0ts?=
 =?utf-8?B?Sm5NNjR0YTlUaDFZbkRqMzU0S3VkTitCc3BEcEM0ZFkwQTRBR1I0dVIwa0s2?=
 =?utf-8?B?bUViazF3Z2kybnNEZmFjODdvSWZKeDJmYWprV1R3dGRYVDRia2ZYb3JFMjEr?=
 =?utf-8?B?bjg5Q3UyQmRKZjY2NlMvbHNhMGM2M0c2ZW85QlRmS3NwVTZua1RRcFlRQ0Fw?=
 =?utf-8?B?V0dQWEphQmtJcC9kTlN6WU51VzQ1VnhHOGdvaTZDd09JQVJPa3hTeFIrbDky?=
 =?utf-8?B?c25GYmFMMkpPV3ZhSXZJdGxqNUkzS3NjSmZ6M0dZUmhzQjJRQis2cU9lVzNu?=
 =?utf-8?B?VnRkKzBETWtQN0g1Vjlsc0NzejBtS2RxNmJLNURnZlE3NjY4RW1KcFMzVU1R?=
 =?utf-8?B?OFBXQ1BvN010T3h3Z3IwNFVydnI3blVXa2dGQ3d0Z0Vyd3NZRXp3Z0xuZTBQ?=
 =?utf-8?B?Um5mUXhQU3p2RHdTSDMvOEhFK3Y2bFR0NzBVcldXM0lhTzc4Q2NsYnJiOE5r?=
 =?utf-8?B?cEt0NzBjc0s4YThHVjZ6ajhraHlGaFVER0tzanloMXo3QzRiL21CWmIxS1hR?=
 =?utf-8?B?emZsbUNXVmYvZjM3YlFZekdLNXlPakg0Q2VNNUowV2haQTViZkk1bnpMY1FF?=
 =?utf-8?B?WmUzYUNWRTdrT3d0Z0F2VTJOajNvSllMb09KblZTS3UvQXBFMFovSFMxWUtT?=
 =?utf-8?B?NTZsaHBFVVJ5VllmZVloaWZZYnRRTmJlNTJQd01nN2JoaHhnWDJuTE9jaXAr?=
 =?utf-8?B?VnBvb0ErdlNUVXdSSEVoSGxtZjZSUFVoYWQrN09GdmNFNlAzVkdyVGVJSUxS?=
 =?utf-8?B?alNPMGJ5R0ZZT3B2Z1RYWG5YNWR0UGxRbnJncHdWTU4xdGMzSmdqODUvc1dL?=
 =?utf-8?B?Y09ualI1UjE5dGhkOFJRc1d0M0w0eFN2SWNoV2FNc3EvMmhvSDJ0QThuZXYw?=
 =?utf-8?B?bHMwUHpaUXY3eUs4S0dIWUdndXY5WlhvU3ZsZllaWCsvK25mVC9lTytDeVRr?=
 =?utf-8?B?eEdpZjNCNVNkaDRnUkRWRzk0RktGanhqVHloc0M2M29qQUpDaGtKWTIyWUJ2?=
 =?utf-8?B?c09VQit2Z2tOOUNJa2ZvN0FXblVYSS9iMlpPbHUxckNtZjN3K2hrMDBHMFdy?=
 =?utf-8?B?UFNhdk5MdTdjQ2oxbUtVaDlWQVd2VnhBTFpRcHRoZjlpMXJMdmVoR2dISGpv?=
 =?utf-8?B?UCtGWm5zd1c4Mkk4YVJtQnFNUzF5WEl0cnBzWmRvdnNYcDRpVzcydWdZUUV6?=
 =?utf-8?B?R1pKaWJFb0hpSk53N3JrN3BZRTFaZ0hXTVVBYW0xYUt1UjBjUUE2azBoMlVz?=
 =?utf-8?B?VGJYMUZQUGlHc3lZMDZ2eUIwNjdUQ2ZLT3VqL2VXZkI3emdQYmtUMk9KWFlr?=
 =?utf-8?B?Q3ZqM0dJUGMxaVFnR2w5Y1Jnc3ZlUk1vNm9SVGVKYlUyTi9RN3pWT0ZMd2JW?=
 =?utf-8?B?MFduZWV3Q24xeEJPYXVObEFVdDlMamtncDg0eUFRU0hkTTc1ajBOTncyR0Vw?=
 =?utf-8?B?WGpCQkxqWUhaam9hQ3Z0ZGhOOUxadWJRUkR6d3VKS2czUjZWN1NwTlVKQ3NL?=
 =?utf-8?B?Q3E0RkZRdzJUQ09ab0U2RlFRcDVuaWNKY0VBNUxyTllqdXZXZ0FjeGF3YXBk?=
 =?utf-8?B?WC9FZnREaVRiVjNRQjZxc21GVlJiczM4ZU1pelZxaXE0R215QThKUFAxVm41?=
 =?utf-8?Q?rALTRn33zDgjdMl0jIKMMaiXg0GpbY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF4422C5374.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUVUVUJVUkRFcUFqY0QwbDAweWVPb1k2Q2lDTGw3SUt6alhFdk1GWnJYc241?=
 =?utf-8?B?Sm1GRW01TTNrbXdJUjYzZ0FOQTVZYnZjQzQ3Y3JhKzkrRFFlYlptckZvbDdY?=
 =?utf-8?B?cHRwS2wrL2RNUkZwTGoxUWgrNHlXeXlBQ0hvdzdTczU2VnR4VXE3aVlPNUVp?=
 =?utf-8?B?U3M4enc5Nm0wcDdacldhc0g1cjBWbm05V0kwUUhKNlZRN2dvREpNcXAvUnRl?=
 =?utf-8?B?dHRDNDB0SXZBZXpYLzZvTDlnUEhaR24yTHMzMDFPYStvay9nVWdoYURBbWVw?=
 =?utf-8?B?TTBzMXVEakNEVVhGUGZxS2h6OFIzRGlMZXRJOHBmVGh2Nm00ckJRNVBHdGpo?=
 =?utf-8?B?VklCYnlYL3E0WW5Xb0NQNnQ0MEVVdjRDM1JacXo1S2xkU3RTei9EV0RJK2pr?=
 =?utf-8?B?Wmh5Y2YyVS8vUXM3bVVFd1o1emc5c0JlQjdwRC9BVlVmMk4zMDVpU1J4SlJo?=
 =?utf-8?B?MHVsR3gxZG90NEVMMlRqMktaU0lOM05nZFFLQ1lvdStSZzRrRldlS3l4R1hz?=
 =?utf-8?B?bG1LYTMwRDlmRUNtMXhqcmhCWW9SYzJFcE9YTUpQVGNSOEN0NWllNEhoVU82?=
 =?utf-8?B?c2pHVWZTMEYyZm5hSnRTT1RVTWV3SmpBVmtockR1czRCeHh3RTJHVEtIRUhN?=
 =?utf-8?B?RWRPMUhmZUhqOGxJNU1vYkJlbWtWVVZWRlB5WmZwN1ByZmVINGRJVEpDcDNP?=
 =?utf-8?B?cFBnd1AyZHBscHMyMWhIdWUzYTkweE9mSnR3ZEpWUGFzc1A5SjBQbGdSK0FY?=
 =?utf-8?B?U3BjSlRlbG8ralVXL2NpaUNtU1Z0K0ZLWG1mOGp3REdxVVBWVzRyRHRJYVVr?=
 =?utf-8?B?YURCbDNFQTkyTzNxN0dKalJ2b1VYazQ0QzczdmhBSndRa0ZtelpqaXppTkty?=
 =?utf-8?B?VmRwenpldXllNStwZGwrUmRQdGUwaCt0TjNnRVE4cVNWVDhwbDd2blZxVWhi?=
 =?utf-8?B?NWxWdzBIZ2o2b0Z4eW5YSTJsdUpUOTNxNGFrL2lyNmN2QVRIY3h0TktHUm1z?=
 =?utf-8?B?WW8wV2FURWk2L2llanpER3AvWlNEMW5IcGtwMlVySmZVRThjMy9sV291MGNC?=
 =?utf-8?B?TzJIMnhBaVZPNU91SStzRks2TWFvUTVGQ2RnZm8vbGpWTnVkWTJjK1pkN1RM?=
 =?utf-8?B?bDQ5b1pTbldWaGVhSnNualorTVF5ZzhMNGRtZ1VFY3RjTkhpbE1SaEx2Y1E0?=
 =?utf-8?B?LzZ1M0lHclNJclBoQVd1bWV4ZVQwVFpLcXFnQWRZRFhpTkZZbGM2WkZaZ04y?=
 =?utf-8?B?UjZ1ZzU5aUphWHNSaG8rMFJKdnRvSzhITUZiUUJIRDYzemxza0tvTUk2STZ4?=
 =?utf-8?B?aW1qWXRpamFMRzVoREtzc0JvdWQ1MVNMUjdmcUZyZDg3aXRWeW5zMmh5Q2Nm?=
 =?utf-8?B?amdlaTRaU3FlYjNldDA3TjgxOEZmSzkwMnN5WklqeE9UejRsRzJmMnhvTmxF?=
 =?utf-8?B?ZDI4enNvMTNvSEpJMU9JaGxLdXpNODdRQ0pkVjNZTkxZWWVnUVRidXdRQkxo?=
 =?utf-8?B?ci9LTklBLzM3aGxrZnk1NzZjR1ViS0pWaVZ4cjhEKytxMVk4amFUYm1EM2Va?=
 =?utf-8?B?TlJicXNrTmpTeTRrNjljRFV3Y0ZzQjFrZzBKb0Npb0t5c3Q5ZWYxVnNydjBs?=
 =?utf-8?B?UUJYa25Oc2t5N256czlMUFl0SWZtN2RNMzdiNVJCR096eFJiSzhuakdoM2RS?=
 =?utf-8?B?TjY5cHZWczhCU3J4eTBLeUwvRWZTTjR5T0NnRDJzekxkVmxSRVdvRnRXamQw?=
 =?utf-8?B?KzBhazg1S1NQaVRGZ1l6S2I5T2ZPdzg2dXJDaUUrQWR2RzNHTVpQd3ByMHBI?=
 =?utf-8?B?YzByZHRoZ01NN25YVndMWW5uby9La0grVEFMcjFubkNDaHRKSGVzNnMrMEZt?=
 =?utf-8?B?M3ZTckZUUElCUEJPdHF3ZER0RUFvYjk3YThXK0VZeUdPaW5DKzdXNGNLbnBu?=
 =?utf-8?B?bVhlYWJ1LzQ5RXF0aldVZW55NkpQUm9NT3lTalB4Vi9TTzF1NUdQYjRzMGJY?=
 =?utf-8?B?bk1zUG9hNWpMTzVpRjdFU0w2a25iWWljd2Ribnk0bkRqMStuUHk2TUFheFU0?=
 =?utf-8?B?Z1pyZVpOV0JreG1DK1ZLZTlnN0ZOdVg5eG44TDZ4NllQUEdmZVVBVmZmV21F?=
 =?utf-8?B?bC90S2ZFOFFWV2VhZWE3T1UremZRemNqMHF6MEZudHRYUkNmYjcyRlJwZXFh?=
 =?utf-8?B?YVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF4422C5374.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5bdbb50-6e7f-4335-be97-08ddf74c9758
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 07:17:28.4771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3rYwJGKGlc1E9iGjusfN76bP05VvQlAKU7piU3rUo4EFUroBElX5FGIGi1RXF/um1CZQWhfN/FzmtLaDJuXo30IweBjAxRJ3I68tyB0NpHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758266253; x=1789802253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aZiOV2PbIgYEmqLEemtiAswqvcqwylEuyaFqhrRtHV4=;
 b=IVVtWp0aCUNkhzd7SAW/CMZ1Wau0q0sMdwdHjkSFzv7rbR2SReP8zRY/
 QpWrlzton+7cGWbj7H2D+B4LyZwBj9FPC0piznicHs5HVjXTlWfXDmSTF
 stwgJCEtnuJFXB7+CTgCWt9q9lmlOdu2KOVwmZCcpzKqRzj7eVc5fwPax
 JmRlS0EnmWy9Ho8cdepB4bjJauQuOvN4IRFg+sHNRm6HOq9Mam/jWbNOs
 j2GV3pw6JcSJQdZXntWrC+/HaKL60/7maVhl2BDCEEEZ/sv7QxR21ptYh
 tukP4v7shl1Tsao1jC2VwEPQQNIXsNZwqWPU6OIK29B8l8s1HHU+0SB4s
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IVVtWp0a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
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

DQpPbiBGcmlkYXksIFNlcHRlbWJlciAxOSwgMjAyNSA2OjExIEFNLCBLZWxsZXIsIEphY29iIEUg
PGphY29iLmUua2VsbGVyQGludGVsLmNvbT4gd3JvdGU6DQo+T24gOS8xOC8yMDI1IDE6NDcgUE0s
IFZhZGltIEZlZG9yZW5rbyB3cm90ZToNCj4+IE9uIDE4LzA5LzIwMjUgMTk6MzgsIENod2VlLUxp
biBDaG9vbmcgd3JvdGU6DQo+Pj4gVGhlIGN1cnJlbnQgSFcgYnVnIHdvcmthcm91bmQgY2hlY2tz
IHRoZSBUWFRUXzAgcmVhZHkgYml0IGZpcnN0LCB0aGVuDQo+Pj4gcmVhZHMgTE9XIC0+IEhJR0gg
LT4gTE9XIGZyb20gcmVnaXN0ZXIgMCB0byBkZXRlY3QgaWYgYSB0aW1lc3RhbXAgd2FzDQo+Pj4g
Y2FwdHVyZWQuDQo+Pj4NCj4+PiBUaGlzIHNlcXVlbmNlIGhhcyBhIHJhY2U6IGlmIGEgbmV3IHRp
bWVzdGFtcCBpcyBsYXRjaGVkIGFmdGVyIHJlYWRpbmcNCj4+PiB0aGUgVFhUVCBtYXNrIGJ1dCBi
ZWZvcmUgdGhlIGZpcnN0IExPVyByZWFkLCBib3RoIG9sZCBhbmQgbmV3DQo+Pj4gdGltZXN0YW1w
IG1hdGNoLCBjYXVzaW5nIHRoZSBkcml2ZXIgdG8gZHJvcCBhIHZhbGlkIHRpbWVzdGFtcC4NCj4+
Pg0KPj4+IEZpeCBieSByZWFkaW5nIHRoZSBMT1cgcmVnaXN0ZXIgZmlyc3QsIHRoZW4gdGhlIFRY
VFQgbWFzaywgc28gYSBuZXdseQ0KPj4+IGxhdGNoZWQgdGltZXN0YW1wIHdpbGwgYWx3YXlzIGJl
IGRldGVjdGVkLg0KPj4+DQo+Pj4gVGhpcyBmaXggYWxzbyBwcmV2ZW50cyBUWCB1bml0IGhhbmdz
IG9ic2VydmVkIHVuZGVyIGhlYXZ5DQo+Pj4gdGltZXN0YW1waW5nIGxvYWQuDQo+Pj4NCj4+PiBG
aXhlczogYzc4OWFkN2NiZWJjICgiaWdjOiBXb3JrIGFyb3VuZCBIVyBidWcgY2F1c2luZyBtaXNz
aW5nDQo+Pj4gdGltZXN0YW1wcyIpDQo+Pj4gU3VnZ2VzdGVkLWJ5OiBBdmkgU2hhbGV2IDxhdmku
c2hhbGV2QGludGVsLmNvbT4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBTb25nIFlvb25nIFNpYW5nIDx5
b29uZy5zaWFuZy5zb25nQGludGVsLmNvbT4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHdlZS1MaW4g
Q2hvb25nIDxjaHdlZS5saW4uY2hvb25nQGludGVsLmNvbT4NCj4+PiAtLS0NCj4+PiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMgfCAxMCArKysrKysrKy0tDQo+Pj4g
ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4+DQo+
Pg0KPj4gWy4uLl0NCj4+DQo+Pj4gICAJCSAqIHRpbWVzdGFtcCB3YXMgY2FwdHVyZWQsIHdlIGNh
biByZWFkIHRoZSAiaGlnaCINCj4+PiAgIAkJICogcmVnaXN0ZXIgYWdhaW4uDQo+Pj4gICAJCSAq
Lw0KPj4NCj4+IFRoaXMgY29tbWVudCBiZWdpbnMgd2l0aCAncmVhZCB0aGUgImhpZ2giIHJlZ2lz
dGVyICh0byBsYXRjaCBhIG5ldw0KPj4gdGltZXN0YW1wKScgLi4uDQo+Pg0KPj4+IC0JCXUzMiB0
eHN0bXBsX29sZCwgdHhzdG1wbF9uZXc7DQo+Pj4gKwkJdTMyIHR4c3RtcGxfbmV3Ow0KPj4+DQo+
Pj4gLQkJdHhzdG1wbF9vbGQgPSByZDMyKElHQ19UWFNUTVBMKTsNCj4+PiAgIAkJcmQzMihJR0Nf
VFhTVE1QSCk7DQo+Pj4gICAJCXR4c3RtcGxfbmV3ID0gcmQzMihJR0NfVFhTVE1QTCk7DQo+Pg0K
Pj4gYW5kIGEgY291cGxlIG9mIGxpbmVzIGxhdGVyIGluIHRoaXMgZnVuY3Rpb24geW91IGhhdmUN
Cj4+DQo+PiAJCXJlZ3ZhbCA9IHR4c3RtcGxfbmV3Ow0KPj4gCQlyZWd2YWwgfD0gKHU2NClyZDMy
KElHQ19UWFNUTVBIKSA8PCAzMjsNCj4+DQo+PiBBY2NvcmRpbmcgdG8gdGhlIGNvbW1lbnQgYWJv
dmUsIHRoZSB2YWx1ZSBpbiB0aGUgcmVnaXN0ZXIgd2lsbCBiZQ0KPj4gbGF0Y2hlZCBhZnRlciBy
ZWFkaW5nIElHQ19UWFNUTVBILiBBcyB0aGVyZSB3aWxsIGJlIG5vIHJlYWQgb2YgImxvdyINCj4+
IHBhcnQgb2YgdGhlIHJlZ2lzdGVyLCBpdCB3aWxsIHN0YXkgbGF0Y2hlZCB3aXRoIG9sZCB2YWx1
ZSB1bnRpbCB0aGUNCj4+IG5leHQgY2FsbCB0byB0aGUgc2FtZSBmdW5jdGlvbi4gQ291bGQgaXQg
YmUgdGhlIHJlYXNvbiBvZiB1bml0IGhhbmdzPw0KPj4NCj4+IEl0IGxvb2tzIGxpa2UgdGhlIHZh
bHVlIG9mIHByZXZpb3VzIHJlYWQgb2YgSUdDX1RYU1RNUEggc2hvdWxkIGJlDQo+PiBzdG9yZWQg
YW5kIHVzZWQgdG8gY29uc3RydWN0IG5ldyB0aW1lc3RhbXAsIHJpZ2h0Pw0KPj4NCj4NCj5JIHdv
dWxkbid0IHRydXN0IHRoZSBjb21tZW50LCBidXQgaW5zdGVhZCBkb3VibGUgY2hlY2sgdGhlIGRh
dGEgc2hlZXRzLg0KPlVuZm9ydHVuYXRlbHksIEkgZG9uJ3Qgc2VlbSB0byBoYXZlIGEgY29weSBv
ZiB0aGUgaWdjIGhhcmR3YXJlIGRhdGEgc2hlZXQgaGFuZHkgOigNCj4NCj5UaGFua3MsDQo+SmFr
ZQ0KDQpGbG93IGJlZm9yZSB0aGlzIHBhdGNoOg0KCTEuIFJlYWQgdGhlIFRYVFQgYml0cyBpbnRv
IG1hc2sNCgkyLiBpZiBUWFRUXzAgPT0gMCwgZ28gdG8gd29ya2Fyb3VuZCAtPklmIGF0IHRoaXMg
cG9pbnQgcmVnaXN0ZXIgMCBjYXB0dXJlcyBUWCB0aW1lc3RhbXAsIGFuZCBUWFRUXzAgaXMgc2V0
IGJ1dCB3ZSB0aGluayBpdCBpcyAwLg0KCTMuIFJlYWQgTE9XIHRvIE9MRA0KCTQuIFJlYWQgSElH
SCDigJMgdGhpcyBjbGVhcnMgdGhlIFRYVFRfMA0KCTUuIFJlYWQgTE9XIGFnYWluICwgbm93IHRv
IE5FVy4NCgk2LiBORVc9PU9MRCwgc28gdGhlIHRpbWVzdGFtcCBpcyBkaXNjYXJkZWQgLT4gY2F1
c2luZyB0aW1lc3RhbXAgdGltZW91dA0KIA0KRmxvdyBhZnRlciB0aGlzIHBhdGNoOg0KCTEuIFJl
YWQgTE9XIHRvIE9MRA0KCTIuIFJlYWQgdGhlIFRYVFQgYml0cyBpbnRvIG1hc2sNCgkzLiBpZiBU
WFRUXzAgPT0gMCwgZ28gdG8gd29ya2Fyb3VuZCAtPiBJZiBhdCB0aGlzIHBvaW50IHJlZ2lzdGVy
IDAgY2FwdHVyZXMgVFggdGltZXN0YW1wLCBhbmQgVFhUVF8wIGlzIHNldCBidXQgd2UgdGhpbmsg
aXQgaXMgMC4NCgk0LiBSZWFkIEhJR0gg4oCTIHRoaXMgY2xlYXJzIHRoZSBUWFRUXzANCgk1LiBS
ZWFkIExPVyBhZ2FpbiAsIG5vdyB0byBORVcuDQoJNi4gTkVXIT1PTEQsIHNvIHdlIGRldGVjdCB0
aGlzIGlzIGEgdmFsaWQgdGltZXN0YW1wDQogICAgICAgICAgICAgIDcuIFJlYWQgSElHSCBhZ2Fp
biBhbmQgdXNlIHRoZSB0aW1lc3RhbXANCg0KTGV0IG1lIGtub3cgaWYgdGhpcyBhZGRyZXNzIHlv
dXIgcXVlc3Rpb25zPw0KDQpSZWdhcmRzLA0KQ0wNCg0K
