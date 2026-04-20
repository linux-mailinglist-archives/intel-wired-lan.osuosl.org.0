Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJ4mJWni5WnfowEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 10:23:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DBC42817C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 10:23:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2507361052;
	Mon, 20 Apr 2026 08:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iEZk7PVYGulV; Mon, 20 Apr 2026 08:23:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CDD86106B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776673381;
	bh=apLGHQp/+7jTDKf4FWbncaei7tNTfMasVFE9n+4D5BE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3Mka0uoukKc7m92FOXh4Wq1021WAdw8jHjs97rbs7W/XNt4hyTTwg3x0/NUH6jOag
	 W/VvVfhwiIzhlwoK4Tm6OeALHZdqCsQ7UZu2I04zgp2vpOAcho0ZmP8CpIc4nWAI1e
	 jEDBxQzm97FItQKsu3QYVvRqCF2iy5PqiOpiCVsRWsdrRCUADwJPOQaxqegmTAuJpG
	 fkhH7SJzT2YNcWbDlmB6UxpMb2H6tAWUVkMjlYLjnOCYIjlzBtJHUMlbzJXQkwR0Gv
	 9OQpkcZ2wHOtLW226YleZooxWfHGtRUyXa28lvI+gdD5SRyHOMU5QYgYzxpINLuxFB
	 wDB90YXZK8aXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CDD86106B;
	Mon, 20 Apr 2026 08:23:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D4A1259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 08:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AB764010D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 08:22:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EEGDhWt8JDQq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 08:22:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC38B40024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC38B40024
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC38B40024
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 08:22:58 +0000 (UTC)
X-CSE-ConnectionGUID: JS9x7L6KTmWznVeM5Nz9Mg==
X-CSE-MsgGUID: RMrHbUMeTyW5guYVivGl+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77708377"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="77708377"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 01:22:57 -0700
X-CSE-ConnectionGUID: 79vsEVdIQrGgca383zxV4A==
X-CSE-MsgGUID: mhGPXcPXRvyEi99uIPPteg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="227323126"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 01:22:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 01:22:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 01:22:56 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 01:22:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cvNJEGDOy4NekBXfbeha4tEPctXuz33UCutippwQlyp54BvEF4/vkyu7J7z6fXkhnSQkGudrBT9Zy6NXlFHykQccYUusdbMz1AJvnnoIgylVsXDjf8rze3Klix0r9OL+6EoRC/zvKDAaztZMCABITSPUbRFqoDR9/oMbAwpO5jjU6BuqKKltfTHZn0iNHd5j4zLd5R7zkIC4qUQoD8y0GZrUbcVU/5wjfZ2Kf8FiPcRpUkr4aX5D6cRtwP9KjPDlYMEQ7pbeMNfrD66tHkEZPEL8hVH9FLgdII3geLBMD0gQ132jvEwH16FrrM/l58tnDB1vRLjjk1vsSjq8MeXk2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=apLGHQp/+7jTDKf4FWbncaei7tNTfMasVFE9n+4D5BE=;
 b=QKVTEg/1keya/NZr+p0lRleywM83gyd1T5lt3UjpRs4GHuGv4ubR5ZSgQAkFCpHrbd7kxUxSmnuCp88clAR6GT0LSmvDLC5yifxmxJ+wRaNP9ehL5rIbn2pnXd+xxmWJxnHYVt+jSTxbP4Kj4VlNcQFXxMbeh/J0l6bftptlF0XeyWAI9A3eanu6SPjEyPWHmU/mSKIJtk9k01FOE5PyBeG5IJrtFB4MxyxL1/OPciIXaV9X3Uyqah4kBX5lAqy/lCmx4t8hUN5a4pRLrZgfqfg9fVrt+Q5YM30h/kWKqzsr2V9VUCqX4oDkwxXPn3svFUkV7LIxCQE1eEmJMOfC3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by CH3PR11MB7370.namprd11.prod.outlook.com (2603:10b6:610:14e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 08:22:48 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%3]) with mapi id 15.20.9846.014; Mon, 20 Apr 2026
 08:22:48 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when
 netdev is detached
Thread-Index: AQHc0DJ0LkXqsxSd+E25Lls5A3AeZLXnm6Nw
Date: Mon, 20 Apr 2026 08:22:48 +0000
Message-ID: <PH7PR11MB59834C3C7785D1E69B7E954EF32F2@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260419192555.3631327-1-boolli@google.com>
In-Reply-To: <20260419192555.3631327-1-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|CH3PR11MB7370:EE_
x-ms-office365-filtering-correlation-id: 8aa1f03e-1b24-4f64-97c5-08de9eb60198
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|38070700021|56012099003|22082099003;
x-microsoft-antispam-message-info: BSeZqUwvQabjchxa0vgsMdPdeEs2XKanUXp1/MR1C6hmaXZ3OZiyISTtw1iywgoqvY4kmu3y/4KlTPq/Moyg0wavOAK7N1noZ1ZoVBjQmnXwTSYd0gcwcY6vEi9wN8BKyFGVcsBrNaevm33SSY0ZBWRAKTwc1ucTiQL0ywP5+HpoU9T9LBnLjmXKdpJFfs1ZJHP1/bapOyQQiKcgnWhzaLwmeZKhDyY2CMcmTLBbPbEJ5MpUBDMdYD+Z3K3HN0mNzHbJHmS+gJMz2iYvI4U35/zXkTSB5PREvYV3hPZzbi5cmWM+XPWZi9oePyTzMCRpyGIGgGF88lQBg9q3S6+AfQsjk72Jf9scSi2nM4R5dgCCTwG7YAPIqojXeZHNbWsLLjJ8xr2VJ7O8VUwu8CmZcyhtre8xs355NAcIPINzS8pQpd0Dj1lexPMcMiqEhH6DLn3eSdyNzpqv65ytNeF7hwojjCJPWNW0yccTc+cMwbeh44XtvSqIuoCviIHlGI2NSkYj2Lz/fMUxFwRaT4XDwN4zfKWzfnIB8LLR6GYAOGlcMijdkSSki7UmYaSD5gBKtuVE3O7N2HBRU0DSPmDmgV+bqUiyDFVXy3KjX8fU0a/lxUnLSSJVo1kEIiNXWwBAXk9/kv8imGdxrvqxdhbBTuvjnf7uDRuUUMfEeRRSz82QQ7tdM2J0LzZzhT/CZnpPfF8PLJw6KUnTHhKVgCEn6MGnIat00ekWuThZVQwUkPtVL0S4MAsCvD8sPuO7LRga4ZfuPTHPymKPVJ53PCMRfVNyQSjpEIBRWJ3aE+8xU/s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(38070700021)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUxmUU04ekhuR2JGY3FmTWc4STVsUS8vS3V3SXJicGJPMkNRaFFzd3V0VUcy?=
 =?utf-8?B?TERFSEpEZEIrZkw3VWFFMHQ2VXZ3dENsUjNWb2FiVWhvNUJLOHlIYUpEZ280?=
 =?utf-8?B?SDBYR0RrcnowNnhMQ0JiTVhIeTFWUC9objFPeXpHdGhDREFLTFNtU0dhWG54?=
 =?utf-8?B?NHlUREJhenB2VXJrMm9xSFMxSjBNODRhRlVsQUt2ckhUSldFRVk3eHpqWjlO?=
 =?utf-8?B?RU94WWNJeWtsT3lGeFoxVmVXc0thd2FLdDMwQy95NXV2YXVOckdscnU3d1BB?=
 =?utf-8?B?bCtCSmJZNjllL0NHMHNwRml6OTZaZ2pLYlhORU9lbDQ4NStBbmZaemZDZ2cv?=
 =?utf-8?B?dmd2RktnQ1pYWVZ6Z1FZMitDdklZblNoUVBTcEFzQjRId1YwMmUvT0wzbWVt?=
 =?utf-8?B?Qmg5UGZ3QnpvQUJzcFM4MXNIeGZoOC9tbVhvQmtDeW9Vc3dFMnNMMEpUbVJq?=
 =?utf-8?B?Uk5ReTVpQXl4Vkp2ZUFpK0MzdGx5MUpFNXdlaW0zRXNjWTl6YjBHY2w3U1RO?=
 =?utf-8?B?NjU4UlFDemU2TENNb2crZzhnMEVpdXNieUpVUEdTUGIvbFRiSElCNldrTDVk?=
 =?utf-8?B?YWFUNEdSOEYwdHZHVFdvcHJxdE5Odzg2Mlp6Y01zdUY0cHF2TGZ1R2syQ0t3?=
 =?utf-8?B?VnV3VGNRKytwbTBIWncxdVhHc0c4RTh1eUJzbWE3aGt3cVNaMDk1dG1jTDBC?=
 =?utf-8?B?WDlwT2xwTUx5QloydEFocGdERGV4cE5VdFlaK3p4Zjk0OEdXRnEwR2k3MWd4?=
 =?utf-8?B?L1JCMitTYkR4RS9DVHI0OFVQYllkWGFuK29OcXI2NUF4Y1B4aU54dEZtZExM?=
 =?utf-8?B?NW0xTmkrMTJxTWp2Q3JBSzk3dW1OOHAyREtieDRYMm9OdlFaMnpibWpVSUtn?=
 =?utf-8?B?MVIwOWc4bzEwdGlIdEsrMVRBSk1CMnQ2cmNUeUdNOGt6NHZaS3VzeldTanlw?=
 =?utf-8?B?VTFMTnJyRmtMSG5wcVJLNUFXeEFIa3FaRkk4KzMxRmpMTkE4MHdQeEswckxz?=
 =?utf-8?B?akRnSzlVc3FUa3MreFBlYmlTRWFNVmhSbUYwMU8zMGs0YU4rdTAyMm9EclhX?=
 =?utf-8?B?ZEJqU2lDUTFGUERLdXJ3a2t6c1FGMlNZekI0c2pMQjV4SHZ3Vjgwa3dSVkh0?=
 =?utf-8?B?TThsWWUwZnoxRGhVbVhScnpiK2pGemtKR1FGd210RW9FOGIzRGNPa0NvYWdH?=
 =?utf-8?B?OE12dVd5UWRrYnBaTlI2ZFQrQmUxZ2lYYVpiZG90YlFsZmVTWTlzRjVlVWJR?=
 =?utf-8?B?Rk1mSC8vbHFkemd1RFJxb2R6STBKUm5ZMy9TVURKYnhEOFp5YTlKSnNkNHNa?=
 =?utf-8?B?QXNSK2YyUFVuYzFZdGxpT2R3NC9QdDRLNDYvaHV5WnNVVVI3Q2hxeVVrUWdP?=
 =?utf-8?B?eVptdFVnU1g0bWRsV25ra2h1dlhRREtCTXo5SzMzUE5iN0pUaFV3NGtMNFNz?=
 =?utf-8?B?azRXQTJMTkMxNmp5U2o3dWxrSzVVUldiaDJwZDZFVjFmYmI4RllyL1NqYWJi?=
 =?utf-8?B?ZXdOTG5oZXduMXBDdE9xMlFmOWF4RWY1cUV5RkU4NW9WSG1RRXY3Tmk3S0E2?=
 =?utf-8?B?VFFJWXdEQ0lzMjF3N1k0QW1nQnlRRFd3c0NuQmRnckhwbHkwNVl6a2JSZGdD?=
 =?utf-8?B?bjZob2JrNE8zL2oydGhFU2szQzN6SUFxdldWQTRLaGl4aCtmMisrbFgrL3lH?=
 =?utf-8?B?RmtoV3l5ZXNPbjRBR21OUVRyNEhLRFZSeWRZWEM4RGNmWUZwanphRlpHNTRr?=
 =?utf-8?B?K214QkdnRGNmZGhYbnpCcDk3YVRRTmZnSzFRa2JNbGd5UHVISFNnL0p2ZC8r?=
 =?utf-8?B?ajd0dkVRdkVZSmQ2aENFbDExaTh5b1h6V0dERUd2cm1WV01BQk1SdnZBSVds?=
 =?utf-8?B?NDZKV085Z2xSSGNCWGNpbFRDdVJIUDhRQUVpVlpMNzVwOGVGM0E0cHJFTDhh?=
 =?utf-8?B?QTdBYUFGV1hydG03QWVhVVBtL1lSYUd5TzRsTEN5TFdKOHVNS2xXS0t3U1h2?=
 =?utf-8?B?VDVFN0txTHVsUmYrOElPQ1RHTnorVmdzTkVYWitKb3dQbUFrUG91b2hEYW5o?=
 =?utf-8?B?dk1tQUgvaXFyZkhJQkpOU1hzVXlqZEZWeFlNd2JNK0psT2J2MTArdE5pMjFQ?=
 =?utf-8?B?ZER1d2tUR2lOZlRXOUpmTEEycElCVXdlVHJvK3JrL2M2VEJIb1pZSUMxMzVG?=
 =?utf-8?B?ZG5LNmwvZnI4UUhRVEd0djV6aGx0RWJSZG9oZElwVUNDTFFhZkg0NUJZYjBv?=
 =?utf-8?B?MWg0RlM0YS9rVEh6Wmx1dVJCOWFvbmYxd2l5ZHJ4UGpvVjNCMWFOQVpzM2x2?=
 =?utf-8?B?blpsVFR1MHFWVDNhV3JuWnhZSFlhaG1scWkwaXkzOG9EZ01vclkrUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: H7SvtHcip2pRRnpRn9dgeIDAVymQ4gqgMBR5nJs5RC5V1qtxDgGtO3mBmD5tIySwjEy5Y7+73ZXONCdgLF+Rvu9QVici6rV/oD95V+Qpz7vPT+OpG76rRT2D681x7qdUOOXyGGFlrt2tzNT2sN4vTtG4e5UnPzF0kYbyiQiEf5Oc0+X81s2Ot4B2sv7F1r9MjFahrmWEhNgRG+U5S+9ryvCfzbmNaZIxwuc66XnxEiYYyd+SBOp7vACrFOGs3+Mw0mKN1UlGhvrh0rR7Mz9Y9YMNvocIAW5C3ph6yF98bQGzGQ6Gzt9jX35hMk0G4bat54NXu+a+KKgoj8GO+YOQTA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aa1f03e-1b24-4f64-97c5-08de9eb60198
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2026 08:22:48.0901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iHaEvUZ3tkIlQUSZWjGOWgtP2uXdg8lWXlbCw6m167gRN3ETkhndSjqifKTwxZWEDB/RSNp1fq03yJNrMcSDAN1K//2OTTxGRwcgkTUhm94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7370
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776673378; x=1808209378;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=apLGHQp/+7jTDKf4FWbncaei7tNTfMasVFE9n+4D5BE=;
 b=MzWjVSqMs/Z86OzR7knZVeEHTHphuxVwAWvBZVvjpfdTeSCTLjwMWyMn
 x2hJPUW7BRlExOQudPLEf8Le+fS9mdIBXxc/9/PHOn/oyNf7Pn/SyA7oS
 e7YMCrRnWP8xwmE4BBgHHsOHn8Tbk/j9QTuUvlWCdq8tdMqA/yqSzY4Hc
 GnLNCTGztypEp2ez5/flZ09X/7ukFr00NdGgd0/YFcqYriWitwpXgtNFC
 MeXyHdBKgU0ZuX+xQ4kjvig4z+929gjFdg7SRfWXJ4TZT+cykljg0k/Uy
 19avX0bodQXfViIoFUvhuD/VlxaS6J4lxiveEEReLWQA2rzI6INsEDhfR
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MzWjVSqM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when
 netdev is detached
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
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 66DBC42817C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRl
bC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgTGkgTGkgdmlhIElu
dGVsLXdpcmVkLWxhbg0KPlNlbnQ6IFN1bmRheSwgQXByaWwgMTksIDIwMjYgOToyNiBQTQ0KPlRv
OiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVs
LCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgRGF2aWQgUy4gTWls
bGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9y
Zz47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IGludGVsLXdpcmVkLWxhbkBs
aXN0cy5vc3Vvc2wub3JnDQo+Q2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc7IERhdmlkIERlY290aWdueSA8ZGVjb3RAZ29vZ2xlLmNvbT47IFNp
bmdoYWksIEFuamFsaSA8YW5qYWxpLnNpbmdoYWlAaW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlk
aGFyIDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+OyBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2
QGdvb2dsZS5jb20+OyBMaSBMaSA8Ym9vbGxpQGdvb2dsZS5jb20+OyBUYW50aWxvdiwgRW1pbCBT
IDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5d
IFtQQVRDSF0gaWRwZjogZG8gbm90IHBlcmZvcm0gZmxvdyBvcHMgd2hlbiBuZXRkZXYgaXMgZGV0
YWNoZWQNCj4NCj5FdmVuIHRob3VnaCBjb21taXQgMmUyODFlMTE1NWZjICgiaWRwZjogZGV0YWNo
IGFuZCBjbG9zZSBuZXRkZXZzIHdoaWxlIGhhbmRsaW5nIGEgcmVzZXQiKSBwcmV2ZW50cyBldGh0
b29sIC1OLy1uIG9wZXJhdGlvbnMgdG8gb3BlcmF0ZSBvbiBkZXRhY2hlZCBuZXRkZXZzLCB3ZSBm
b3VuZCB0aGF0IG91dC1vZi10cmVlIHdvcmtmbG93cyBsaWtlIE9wZW5PbmxvYWQgY2FuIGJ5cGFz
cyBldGh0b29sIGNvcmUgbG9ja3MgYW5kIGNhbGwgaWRwZl9zZXRfcnhuZmMgZGlyZWN0bHkgZHVy
aW5nIGFuIGlkcGYgSFcgcmVzZXQuIFdoZW4gdGhpcyBoYXBwZW5zLCB3ZSBjb3VsZCBnZXQga2Vy
bmVsIGNyYXNoZXMgbGlrZSB0aGUgZm9sbG93aW5nOg0KPg0KPlsgNDA0NS43ODc0MzldIEJVRzog
a2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczogMDAwMDAwMDAwMDAwMDA3
MCBbIDQwNDUuNzk0NDIwXSAjUEY6IHN1cGVydmlzb3IgcmVhZCBhY2Nlc3MgaW4ga2VybmVsIG1v
ZGUgWyA0MDQ1Ljc5OTU4MF0gI1BGOiBlcnJvcl9jb2RlKDB4MDAwMCkgLSBub3QtcHJlc2VudCBw
YWdlIFsgNDA0NS44MDQ3MzldIFBHRCAwIFsgNDA0NS44MDY3NzJdIE9vcHM6IE9vcHM6IDAwMDAg
WyMxXSBTTVAgTk9QVEkgLi4uDQo+WyA0MDQ1LjgzNjQyNV0gV29ya3F1ZXVlOiBvbmxvYWQtd3F1
ZXVlIG9vZl9kb19kZWZlcnJlZF93b3JrX2ZuIFtvbmxvYWRdIFsgNDA0NS44NDI5MjZdIFJJUDog
MDAxMDppZHBmX2RlbF9mbG93X3N0ZWVyKzB4MjQvMHgxNzAgW2lkcGZdIC4uLg0KPlsgNDA0NS45
NDYzMjNdIENhbGwgVHJhY2U6DQo+WyA0MDQ1Ljk0ODc5Nl0gIDxUQVNLPg0KPlsgNDA0NS45NTA5
MTVdICA/IHNob3dfdHJhY2VfbG9nX2x2bCsweDFiMC8weDJmMCBbIDQwNDUuOTU1MjkzXSAgPyBz
aG93X3RyYWNlX2xvZ19sdmwrMHgxYjAvMHgyZjAgWyA0MDQ1Ljk1OTY3Ml0gID8gaWRwZl9zZXRf
cnhuZmMrMHg2Zi8weDgwIFtpZHBmXSBbIDQwNDUuOTY0MTQyXSAgPyBfX2RpZV9ib2R5LmNvbGQr
MHg4LzB4MTIgWyA0MDQ1Ljk2ODAwMF0gID8gcGFnZV9mYXVsdF9vb3BzKzB4MTQ4LzB4MTYwIFsg
NDA0NS45NzIxMTddICA/IGV4Y19wYWdlX2ZhdWx0KzB4NmYvMHgxNjAgWyA0MDQ1Ljk3NjA2MF0g
ID8gYXNtX2V4Y19wYWdlX2ZhdWx0KzB4MjIvMHgzMCBbIDQwNDUuOTgwMjYyXSAgPyBpZHBmX2Rl
bF9mbG93X3N0ZWVyKzB4MjQvMHgxNzAgW2lkcGZdIFsgNDA0NS45ODUyNDVdICBpZHBmX3NldF9y
eG5mYysweDZmLzB4ODAgW2lkcGZdIFsgNDA0NS45ODk1MzVdICBhZl94ZHBfZmlsdGVyX3JlbW92
ZSsweDdjLzB4YjAgW3NmY19yZXNvdXJjZV0gWyA0MDQ1Ljk5NTA2OV0gIG9vX2h3X2ZpbHRlcl9j
bGVhcl9od3BvcnRzKzB4NmYvMHhhMCBbb25sb2FkXSBbIDQwNDYuMDAwNTg5XSAgb29faHdfZmls
dGVyX3VwZGF0ZSsweDY1LzB4MjEwIFtvbmxvYWRdIFsgNDA0Ni4wMDU1ODddICBvb2ZfaHdfZmls
dGVyX3VwZGF0ZS5jb25zdHByb3AuMCsweGU3LzB4MTQwIFtvbmxvYWRdIFsgNDA0Ni4wMTE3MTZd
ICBvb2ZfbWFuYWdlcl91cGRhdGVfYWxsX2ZpbHRlcnMrMHhhZC8weDI3MCBbb25sb2FkXSBbIDQw
NDYuMDE3NjcxXSAgX19vb2ZfZG9fZGVmZXJyZWRfd29yaysweDE1ZS8weDE5MCBbb25sb2FkXSBb
IDQwNDYuMDIzMDE0XSAgb29mX2RvX2RlZmVycmVkX3dvcmsrMHgyYy8weDQwIFtvbmxvYWRdIFsg
NDA0Ni4wMjgwMThdICBvb2ZfZG9fZGVmZXJyZWRfd29ya19mbisweDEyLzB4MzAgW29ubG9hZF0g
WyA0MDQ2LjAzMzI3N10gIHByb2Nlc3Nfb25lX3dvcmsrMHgxNzQvMHgzMzAgWyA0MDQ2LjAzNzMw
NF0gIHdvcmtlcl90aHJlYWQrMHgyNDYvMHgzOTAgWyA0MDQ2LjA0MTA3NF0gID8gX19wZnhfd29y
a2VyX3RocmVhZCsweDEwLzB4MTAgWyA0MDQ2LjA0NTM2NF0gIGt0aHJlYWQrMHhmNi8weDI0MCBb
IDQwNDYuMDQ4NTMwXSAgPyBfX3BmeF9rdGhyZWFkKzB4MTAvMHgxMCBbIDQwNDYuMDUyMjk3XSAg
cmV0X2Zyb21fZm9yaysweDJkLzB4NTAgWyA0MDQ2LjA1NTg5Nl0gID8gX19wZnhfa3RocmVhZCsw
eDEwLzB4MTAgWyA0MDQ2LjA1OTY2NF0gIHJldF9mcm9tX2ZvcmtfYXNtKzB4MWEvMHgzMCBbIDQw
NDYuMDYzNjEzXSAgPC9UQVNLPg0KPg0KPlRvIHByZXZlbnQgdGhpcywgd2UgbmVlZCB0byBhZGQg
Y2hlY2tzIGluIGlkcGZfc2V0X3J4bmZjIGFuZCBpZHBmX2dldF9yeG5mYyB0byBlcnJvciBvdXQg
aWYgdGhlIG5ldGRldiBpcyBhbHJlYWR5IGRldGFjaGVkLg0KPg0KPlRlc3RlZDogaW1wbGVtZW50
ZWQgdGhlIGZvbGxvd2luZyBwYXRjaCB0byBzeW50aGV0aWNhbGx5IGZvcmNlIGlkcGYgaW50byBh
IEhXIHJlc2V0Og0KPg0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
ZHBmL2lkcGZfdHhyeC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4
cnguYw0KPmluZGV4IDRmYzBiYjE0YzViMS4uMjc0NzZkNTdiY2YwIDEwMDY0NA0KPi0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4rKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jDQo+QEAgLTEwLDYgKzEwLDkgQEAN
Cj4gI2RlZmluZSBpZHBmX3R4X2J1Zl9uZXh0KGJ1ZikJCSgqKHUzMiAqKSYoYnVmKS0+cHJpdikN
Cj4gTElCRVRIX1NRRV9DSEVDS19QUklWKHUzMik7DQo+DQo+K3N0YXRpYyBib29sIFNJTVVMQVRF
X1RYX1RJTUVPVVQ7DQo+K21vZHVsZV9wYXJhbShTSU1VTEFURV9UWF9USU1FT1VULCBib29sLCAw
NjQ0KTsNCj4rDQo+IC8qKg0KPiAgKiBpZHBmX2Noa19saW5lYXJpemUgLSBDaGVjayBpZiBza2Ig
ZXhjZWVkcyBtYXggZGVzY3JpcHRvcnMgcGVyIHBhY2tldA0KPiAgKiBAc2tiOiBzZW5kIGJ1ZmZl
cg0KPkBAIC00Niw2ICs0OSw4IEBAIHZvaWQgaWRwZl90eF90aW1lb3V0KHN0cnVjdCBuZXRfZGV2
aWNlICpuZXRkZXYsIHVuc2lnbmVkIGludCB0eHF1ZXVlKQ0KPg0KPiAJYWRhcHRlci0+dHhfdGlt
ZW91dF9jb3VudCsrOw0KPg0KPisJU0lNVUxBVEVfVFhfVElNRU9VVCA9IGZhbHNlOw0KPisNCj4g
CW5ldGRldl9lcnIobmV0ZGV2LCAiRGV0ZWN0ZWQgVHggdGltZW91dDogQ291bnQgJWQsIFF1ZXVl
ICVkXG4iLA0KPiAJCSAgIGFkYXB0ZXItPnR4X3RpbWVvdXRfY291bnQsIHR4cXVldWUpOw0KPiAJ
aWYgKCFpZHBmX2lzX3Jlc2V0X2luX3Byb2coYWRhcHRlcikpIHsgQEAgLTIyMjUsNiArMjIzMCw4
IEBAIHN0YXRpYyBib29sIGlkcGZfdHhfY2xlYW5fY29tcGxxKHN0cnVjdCBpZHBmX2NvbXBsX3F1
ZXVlICpjb21wbHEsIGludCBidWRnZXQsDQo+IAkJCWdvdG8gZmV0Y2hfbmV4dF9kZXNjOw0KPiAJ
CX0NCj4gCQl0eF9xID0gY29tcGxxLT50eHFfZ3JwLT50eHFzW3JlbF90eF9xaWRdOw0KPisJCWlm
ICh1bmxpa2VseShTSU1VTEFURV9UWF9USU1FT1VUICYmICh0eF9xLT5pZHggJSAyID09IDEpKSkN
Cj4rCQkJZ290byBmZXRjaF9uZXh0X2Rlc2M7DQo+DQo+IAkJLyogRGV0ZXJtaW5lIGNvbXBsZXRp
b24gdHlwZSAqLw0KPiAJCWN0eXBlID0gbGUxNl9nZXRfYml0cyh0eF9kZXNjLT5jb21tb24ucWlk
X2NvbXB0eXBlX2dlbiwNCj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWRwZi9pZHBmX3ZpcnRjaG5sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lk
cGZfdmlydGNobmwuYw0KPmluZGV4IGJlNjZmOWIyZTEwMS4uYmE1ZGEyYTg2YzE1IDEwMDY0NA0K
Pi0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jDQo+
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3ZpcnRjaG5sLmMNCj5A
QCAtOCw2ICs4LDkgQEANCj4gI2luY2x1ZGUgImlkcGZfdmlydGNobmwuaCINCj4gI2luY2x1ZGUg
ImlkcGZfcHRwLmgiDQo+DQo+K3N0YXRpYyBib29sIFZJUlRDSE5MX0ZBSUxFRDsNCj4rbW9kdWxl
X3BhcmFtKFZJUlRDSE5MX0ZBSUxFRCwgYm9vbCwgMDY0NCk7DQo+Kw0KPiAvKioNCj4gICogc3Ry
dWN0IGlkcGZfdmNfeG5fbWFuYWdlciAtIE1hbmFnZXIgZm9yIHRyYWNraW5nIHRyYW5zYWN0aW9u
cw0KPiAgKiBAcmluZzogYmFja2luZyBhbmQgbG9va3VwIGZvciB0cmFuc2FjdGlvbnMgQEAgLTM0
OTYsNiArMzQ5OSwxMSBAQCBpbnQgaWRwZl92Y19jb3JlX2luaXQoc3RydWN0IGlkcGZfYWRhcHRl
ciAqYWRhcHRlcikNCj4gCQlzd2l0Y2ggKGFkYXB0ZXItPnN0YXRlKSB7DQo+IAkJY2FzZSBfX0lE
UEZfVkVSX0NIRUNLOg0KPiAJCQllcnIgPSBpZHBmX3NlbmRfdmVyX21zZyhhZGFwdGVyKTsNCj4r
DQo+KwkJCWlmICh1bmxpa2VseShWSVJUQ0hOTF9GQUlMRUQpKSB7DQo+KwkJCQllcnIgPSAtRUlP
Ow0KPisJCQl9DQpQbGVhc2UgcmVtb3ZlIHJlZHVuZGFudCBwYXJlbnRoZXNpcw0KUGlvdHINCg0K
PisNCj4gCQkJc3dpdGNoIChlcnIpIHsNCj4gCQkJY2FzZSAwOg0KPiAJCQkJLyogc3VjY2Vzcywg
bW92ZSBzdGF0ZSBtYWNoaW5lIGZvcndhcmQgKi8NCj4NCj5BbmQgdGVzdGVkIGJ5IHdyaXRpbmcg
MSB0byAvc3lzL21vZHVsZS9pZHBmL3BhcmFtZXRlcnMvVklSVENITkxfRkFJTEVEDQo+YW5kIC9z
eXMvbW9kdWxlL2lkcGYvcGFyYW1ldGVycy9TSU1VTEFURV9UWF9USU1FT1VULCBhbmQgcnVubmlu
Zw0KPmlkcGZfZ2V0X3J4bmZjKCkgcmlnaHQgYWZ0ZXIgdGhlIEhXIHJlc2V0Lg0KPg0KPldpdGhv
dXQgdGhlIHBhdGNoOiBlbmNvdW50ZXJlZCBOVUxMIHBvaW50ZXIgYW5kIGtlcm5lbCBjcmFzaC4N
Cj4NCj5XaXRoIHRoZSBwYXRjaDogbm8gY3Jhc2hlcy4NCj4NCj5GaXhlczogMmUyODFlMTE1NWZj
ICgiaWRwZjogZGV0YWNoIGFuZCBjbG9zZSBuZXRkZXZzIHdoaWxlIGhhbmRsaW5nIGEgcmVzZXQi
KQ0KPlNpZ25lZC1vZmYtYnk6IExpIExpIDxib29sbGlAZ29vZ2xlLmNvbT4NCj4tLS0NCj4gZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYyB8IDYgKysrKysrDQo+
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4NCj5kaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl9ldGh0b29sLmMNCj5pbmRleCBiYjk5ZDllN2M2NWQuLjgz
NjhhN2U2YTc1NCAxMDA2NDQNCj4tLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBm
L2lkcGZfZXRodG9vbC5jDQo+KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9p
ZHBmX2V0aHRvb2wuYw0KPkBAIC00Myw2ICs0Myw5IEBAIHN0YXRpYyBpbnQgaWRwZl9nZXRfcnhu
ZmMoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgc3RydWN0IGV0aHRvb2xfcnhuZmMgKmNtZCwN
Cj4gCXVuc2lnbmVkIGludCBjbnQgPSAwOw0KPiAJaW50IGVyciA9IDA7DQo+IA0KPisJaWYgKCFu
ZXRkZXYgfHwgIW5ldGlmX2RldmljZV9wcmVzZW50KG5ldGRldikpDQo+KwkJcmV0dXJuIC1FTk9E
RVY7DQo+Kw0KPiAJaWRwZl92cG9ydF9jdHJsX2xvY2sobmV0ZGV2KTsNCj4gCXZwb3J0ID0gaWRw
Zl9uZXRkZXZfdG9fdnBvcnQobmV0ZGV2KTsNCj4gCXZwb3J0X2NvbmZpZyA9IG5wLT5hZGFwdGVy
LT52cG9ydF9jb25maWdbbnAtPnZwb3J0X2lkeF07DQo+QEAgLTM0OSw2ICszNTIsOSBAQCBzdGF0
aWMgaW50IGlkcGZfc2V0X3J4bmZjKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsIHN0cnVjdCBl
dGh0b29sX3J4bmZjICpjbWQpICB7DQo+IAlpbnQgcmV0ID0gLUVPUE5PVFNVUFA7DQo+IA0KPisJ
aWYgKCFuZXRkZXYgfHwgIW5ldGlmX2RldmljZV9wcmVzZW50KG5ldGRldikpDQo+KwkJcmV0dXJu
IC1FTk9ERVY7DQo+Kw0KPiAJaWRwZl92cG9ydF9jdHJsX2xvY2sobmV0ZGV2KTsNCj4gCXN3aXRj
aCAoY21kLT5jbWQpIHsNCj4gCWNhc2UgRVRIVE9PTF9TUlhDTFNSTElOUzoNCj4tLQ0KPjIuNTQu
MC5yYzEuNTEzLmdhZDhhYmU3YTVhLWdvb2cNCg==
