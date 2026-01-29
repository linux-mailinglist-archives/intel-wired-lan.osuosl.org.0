Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNMaAKA2e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:29:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 114CFAEAF3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:29:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF354606F1;
	Thu, 29 Jan 2026 10:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZLbZaoGIx1Gq; Thu, 29 Jan 2026 10:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2532660870
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682589;
	bh=FNv+a4EYVKCU7UJD5YVMmTFFqL9nWz9SCVZ5dzZ8/B8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sJ6sys8xbhVfBoNyeeUT9BF0bjr6VpXoi1cKX/YMsOHco8nipMwSwDygbWwXDbFPe
	 Fv0UEvgqVruf1se9zsSNsjFm446e+8VyfXsleNL+sSlKU9xw9k0p15TiqcJW7ToXKm
	 9BUvqQXhQV/5NEZGcdMJu7zv9oPgbEMLSBYaTDA7EuUcVanU0n9xSyjxvVlPX3+uJa
	 MOdhIkCN95R5NKwytaWjLZtff8jhtwrUtJBelY8eu9bfOqCbfOs/2EzB15qMH9x/l4
	 vWLFSOKK9tSJptYzLv5rYENu6O89/ds9H3Yj0pZDZQw+m9FrYlNJ2qLGKLgyUtbStl
	 CDYbJtp8SWVcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2532660870;
	Thu, 29 Jan 2026 10:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BE8D8118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADD918162F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OBCuZXwmA6dy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:29:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 83D578143C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83D578143C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 83D578143C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:29:46 +0000 (UTC)
X-CSE-ConnectionGUID: 1igsI0rLT8OWvc3VVoHYOA==
X-CSE-MsgGUID: ohZTbATPSjCzw1VEYBdhkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="58498466"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="58498466"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:29:46 -0800
X-CSE-ConnectionGUID: TDCwi80nTqqCH9zh+D9nzQ==
X-CSE-MsgGUID: UWuODSnuTUa6BgtKfK59lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208143336"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:29:46 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:29:45 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:29:45 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.61)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:29:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vel+zQ7A1J0Ei/kg5mke/7PZMUUX3X736yKlX5DovIqZnbEOmUvB41/LcdfExw/p9I7zBqev4t0QxvXPSBxEEh38rczU/tYXDMooKoYh565xcGbMrQQa472m9YZC91P6zYmcDjGA0a5YCyNsRloHWbZnBBmrNbKYVNvODZqqzbeL5NESkUATbRnVZMjafRcmklE5a+kXC02x00Emyb8/9e69sj/I41OufI1XvXptma3PedveQpMnsYhzdUKNCiUPYcWNcLHiiZCB9EQpDsWuUBy/A2993K9+BWHysAXs0W7ilfQlJ8FqEoGVvMJa3r/Wnep/LgK1dofs589P13vMEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNv+a4EYVKCU7UJD5YVMmTFFqL9nWz9SCVZ5dzZ8/B8=;
 b=AgHQnUFQJlm4HtyCxDEZlKWVSpkHseRY5YO4/dMPsDZP1G7qdzGvzGv1lSAgHlFsCOvsVOspuOEzY9sIczTLj1xDyMwlqsGu3IEM3T1mFL+UVuX2yNHLlKPx9Xwe8W2D1G80SWpqHO4XgCUNaX72cbBaTLmv3xIk7Iya0XVEjb0+8DMWooPw3O3r9nLW2flFKcoWeieY+UjRSs7SrwRNFukpW/2bOjdZX+dDRglHr0mxKWWpKygoqpXySfH+4hvMwalNzOHkblMmjDNkBSYmn43i6SgOWY4aXZ2bhob2d6fqJlzuzBDyNJcBL7hFv4HwiXr2LvpGLYYThNIhCBDhpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:29:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:29:43 +0000
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
Thread-Index: AQHckPaDFMzi59/3H06Ut8inCZYEGrVo8mjA
Date: Thu, 29 Jan 2026 10:29:43 +0000
Message-ID: <IA3PR11MB89861F3CFD62BC7448699774E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <0c40c7f91dd5c95b1efcc0f2c0103f941f3c24d1.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <0c40c7f91dd5c95b1efcc0f2c0103f941f3c24d1.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: b5df3297-fbe2-400a-cb53-08de5f215105
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cUw5czZ6N3BudVA3Rlc2KzdLcCtZOXRUWGM4ZTZvTFRKb21WcHlGeGx5VTZP?=
 =?utf-8?B?ZHVMQmt6MUk5MFRFOFMzbkFrcUZoWU1LZzdjbkNCVElmSUUvbmMxbFVHZlp0?=
 =?utf-8?B?Y3lKbTl0N21tVVBseWdKbWMydFh4TnEwa0M2b1hzYVhzTmVtYzFTYmxGR0h3?=
 =?utf-8?B?alFGZ0ZRWnI4a1l1S1dYbzlTL1RnUnNIZDR1d251QnZHMFU4TUpGMUFQY21E?=
 =?utf-8?B?MC9sU0RSSXlhbUl5ekw5YkdiMHJXTzR1L2ppOGNXdlRUVVdaRHF4cUQwOU9P?=
 =?utf-8?B?N3JrQ3I5VGVpTWtxb0FzY3N0cmV2K0NBZDFsK2Q2bndXQnhmbUI5d2toZVVR?=
 =?utf-8?B?UWhxOUN4TWozYTB1eUxwZ0lsL0Y3ajlkWkx1cjFRUGoydzlHK0xMbzFOWFdj?=
 =?utf-8?B?Vnl1Z1R5amhpcnYvZUF4RW5tWURWTkJrcGx3K1RiU1RyeDlsVTZ2Zzl1SkhL?=
 =?utf-8?B?WFhPWlA5bzBNR2RMNWxjVDMzOUpPY241MEVSQ1dTbUc0TTc1L2o1UlQ2c0Yr?=
 =?utf-8?B?TXBaQklpMEtIN3hNcnhRN0ZRUVk4aFprSDR5MzNPQTBjZG9pcSt1WXdUTFZi?=
 =?utf-8?B?MHZkZ3N1ZkFPTFNGM1k1ZFZ1NGl1b1prZERCWkVZVldPYWVLWDlpejhPTEVM?=
 =?utf-8?B?NmFOSk1WNm5XQWZYZEZHaTljNHk5SjZOcmxJTTZvSVFNN0IxTHRGLzB5UDVu?=
 =?utf-8?B?MDRHVEQzTVhLbHhta05YalllTzM2Qzk2ZC9VQ1lNL0Vtd2cyQ21vWGZ3Nk9l?=
 =?utf-8?B?OHdEYVMwSmZzWWpGWFYrckl1ZS9mdzJvekQ1NWljalVndFhuUXZKMkFrRlo4?=
 =?utf-8?B?a0o1S0NMd0hqNUg0Wnk2RythWmo1TmVZbDc5NDJvWkVQaHVwa0tRQzFjZzBn?=
 =?utf-8?B?UHFVbGFUcTlONGh6MDZDL3grank4dG1KT3ZnanZHa3p2d0t4ZWF1T215YVdk?=
 =?utf-8?B?MjhkcGx5aUZCaGZOSS9ZNS9xb0pwRW9HUVEybWFKTnhhQmtCdy9HSjFNUGMz?=
 =?utf-8?B?TXkxQnpwRFdVRDRtRWMwMEg2eVllWFVKZjRuMDNUekt4SytpekpkWFdOSkVp?=
 =?utf-8?B?V0JJeDBmd05ubStXSVM1Qldxa0tCaFVBamR6ZUZ4eml3c092UHNYR2ExV2hv?=
 =?utf-8?B?dXpuUHhHSWdzU3ptWFd4L3IvZ2QyZmo4aTFYa042bm80VGlsTUw0TUI4R2J1?=
 =?utf-8?B?T0VUVjZqYkMzQW5UMkQ4eDRJNlY3SmhaMGd5QW04aGsvRXVxSDQvc3FlTE5W?=
 =?utf-8?B?T29xM2VxL2Q0U1NRK2ZXZExmYXBLa2hJN0gxMGRldFlzeTlvckw0OWJmQnZp?=
 =?utf-8?B?OXBlMWVrZG9aU2ZDYmRuZlVEU2l4ZzdIM1ZRRFlPY1VuQVJINXhjNFcxMWJ1?=
 =?utf-8?B?eGFya09JKzZtbklIWU5Hd0R2M0FSK25HcG1Yc1FENDArazhSc3hnSFZmL2k0?=
 =?utf-8?B?MFZhZlJqMVJ1MTBYV2FmeVMzSXZ6c09DbmYwc1Z0SCtoNGVaWVZBMyszeFM5?=
 =?utf-8?B?Q2VRbkJVWk5QaVBGRXEzakYwcmhCK3FURmNiNHJlWnhpdmZiUUJNeWFjaUNM?=
 =?utf-8?B?bVBNb28xNmQyd0hvaFZ6VkJESElHYWVsWVlnejdvS0ZhVHFZVVM1bjRwTGNZ?=
 =?utf-8?B?bjVyQlUyUENLTWJWQVN1N2tmODNhR0xqcjZCRmluamI4K3o4ZUpreFpXeW95?=
 =?utf-8?B?b2F5TUNMUXJzMFgxQytjUlFXcTBscWpZVTZidFZrSnV2a2IybzB0Rkk1VlA2?=
 =?utf-8?B?NjUrLytHeUVldHU3dkJBVW8xRWVoRW5YRW8wdWszd0hvVFlRWkxQS21rc2FZ?=
 =?utf-8?B?QkZOV0NaSHEzMGhKWFY4Vk11c09ncE1OY3VTTXgrWnZHTkt2RS9Qd1htVGRx?=
 =?utf-8?B?Y1F6bVhEbzVaYlRkU2RyS0FKT3pNU1JNSmtWRVB3dzFjWXdlMWovUTlCbkI5?=
 =?utf-8?B?dVhIcDJsR1pzUXg4YjVxd1VvRGMvS1hiQ0xBd0J0dDk4cWNiYk1VRDkrMGpl?=
 =?utf-8?B?eDluK09XRTJXalpBTmlIOE1vUis3Zk9jbkU4ZTc3bTdUeEdnR0paNlREcVdl?=
 =?utf-8?B?OVJLS1dJU1F0U1g3aGhQTDY3K09TVG1FY3hCZ0VoUnFVK0xKNmtXT2NrUmMw?=
 =?utf-8?B?dk9sOGlVM0lCM0ZSRk91YjFKLzZwL083NXJSb3g5bjV3akpPQjd2WkkxNkxP?=
 =?utf-8?Q?BuG1A73av7Z7jOM4hM9S5T8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R1BYRE0yVlBSdldkQnRuR1ZRZ0RNcysvSjNXUVlMcmgvRGNsODUrZ0QzSk90?=
 =?utf-8?B?T0ZxTXJrMDg3ZkZ3bHl6RFBrdGFYQzUwRmZZWXMzWHNqTk5xOS9WSnE3dEdz?=
 =?utf-8?B?YTR6WCs3Y1FXejlVb2d3VzZkekRueTFMbnhKSTNCVTAvUmNKdFY0MmRzT25k?=
 =?utf-8?B?Tlo5bENVRHBheXR1elVvLzVNRUZ2eTBjUW82SWwxd1g3SE5xY05pdlRIZHE3?=
 =?utf-8?B?eWNxQUdXeE84YnEySEhJQlZ4TjNOS2hGVXFxQ3F0N043d25mUkE2N2pEb29j?=
 =?utf-8?B?bUJobzdVWHMyRENvMWdpSFE0REc4Y2hnOUZmNzRUVko1N0l4WlNTbGRUWFVj?=
 =?utf-8?B?RjU4TytxRHVEQklrY1hyOVE4cVBUeXZxU21tNVIrck5aQ2x1ODVBZ1lOZjlB?=
 =?utf-8?B?QWRXT0xJOS9ja1YrN3RyWUpUNStrWXhZMnZjc2wyZmhPcUdYWVNuYjMyZk9t?=
 =?utf-8?B?SzZTRE1OemdEeTlkSlBVL21kU25DbmJLMXpvZ21VR216c0dLYTdEZGpQc2Va?=
 =?utf-8?B?ZWlHUW5GQzZZZHRxRUhNRDMwdFNNS3B6dTNzRFhSMk5xM2pXOUNKUzZmdmJ0?=
 =?utf-8?B?dE52cm1laHVHcEQwTXRDUkp0RlNCN3ZkTjdQaDVmeDdOd3BXaEFTK29TaFcz?=
 =?utf-8?B?MjMrUEVhVlVRTmp6VGFBYzJINlRlbkNRTlRrZ080ekdHd0cwTVZBSFdKVlFF?=
 =?utf-8?B?Y2xlL2dWQ1V6UkdFeUlrT0hzY1hlNTdFSnV1R0xLRDE2ZWQ0N3RwU1hMbVdh?=
 =?utf-8?B?U05vR1JMZU9XRTA3NkI2S0JHajZ6bTYrOGVhSVMzSkpkdjRoTmJFZjBZNzI4?=
 =?utf-8?B?blR2ak1IVlhVajJPOWFQdThlZmxBeTFlVkRPZTBVdDEzci9yUnZtYzlxWEI1?=
 =?utf-8?B?TnFkM1d1OU92d1U0SDc4bVJJUWV6aFk0SzVQcWdHeU5ZSDJoR3N6SDhqNVpn?=
 =?utf-8?B?NVVVQ0hIQ2d6Q3pmREIranR5NHVCSkx1TWRGMDRTeFF4NWszdndiak9XRkNy?=
 =?utf-8?B?bjg0a2ErMHY2Y3NSOG1nME1TeDVta0g1ZWtsV3Y0Y2ZPT1NtR3lMRDkrTFVE?=
 =?utf-8?B?Y0RJUXNHUW1mMk5wRm1nMC95R1FqM1NKY3NRN2lOZmhTNnN5QUpDOVdlbEx5?=
 =?utf-8?B?TmhUcVU1TXNnMHdzNFZMblQ4VFpDNzl1Zm9LTEhMVFlQc3IxYnlKVFFvQ0hN?=
 =?utf-8?B?SDdHVzV5aStFRXMxQzk5bWN1c2hjVStHZ3Y4YUJCMXNHWkpTMTZlcnFUTmxy?=
 =?utf-8?B?WDRJVXhXUnphRzhlVGg0eWcrR0pBclp2VmZtOStGVFhDU0V2Um1mMm9sNkNu?=
 =?utf-8?B?aFIwME05blRlM2VlMng5SnJaNjUwdjh2Rk5Dc1oxVGR6MnY4NGwxR2JLYnE4?=
 =?utf-8?B?WDNoOUZzVkIvNm90Um81OUdHTVNOZU9ramlCaisrdnBWSVVsZHhKK09rOW5Y?=
 =?utf-8?B?dm9pcVFibkNhcnVzRWo4bTdrdVVHYkdFUE9DVy90S3hTclFYdjVZZ3VJb1Yx?=
 =?utf-8?B?WEY1eWMzUitSeEk1bzN4ZEg3UmxiMFZXTnZLTDI0QlpCNURXMkUzYjhXQnVU?=
 =?utf-8?B?MUlScXY5VUs0THBrVzNCdWlIOTQ0M0NyQUo3cEdqb3lvVEd6MnZqeHo0dFVm?=
 =?utf-8?B?UnFTZU16WDBUUlVTL0owV0JDUDU4blVhR2pZVENNVXM5Ujlyb01iVk1YVkxW?=
 =?utf-8?B?cnR5VzJwSmV1cmdERlFOQ04rR0w3aGt0M25kUVRvRGppM3lUeGJ5cmVKZzJk?=
 =?utf-8?B?WE9BUDhWc1loTUZnUEkxcW1oOE1Kd0tQbm1TNldsY2c3OWR3ZmVtUXNEc2R2?=
 =?utf-8?B?QjlPajA4amFoK1poaEtkYVpYaEZSanlBdStLbHllbHJYK0gwSCtyTnRqSi9i?=
 =?utf-8?B?VHZZRGtscTlLSmZyckMzWnZBbGh3cEZIbTFJbEl4Y0Y0RncrZVJRaWVVZHNI?=
 =?utf-8?B?MDNGY0tYQmtxblNVWG15Y3UvSnNCdXlWMkw3RHZLVVRWOFB3b3hPSnRLdDNE?=
 =?utf-8?B?QjBJVGpzQlNsRDhjNXdPaTVWbFNCRjNHNkJLSytXR1hQRkxGNGMzQ1VSOHU2?=
 =?utf-8?B?ODk3ZXdLWmt3REh3WFo3cFF5bmtiS0hYWXVXNjV6bWNMMkwxZjdpOHhDZzB4?=
 =?utf-8?B?YTgrZUtoZ3V5ZzBWRHVOWGJaWFY0c1NWWnFqSkFsMU9SZHZYK3FFWjN1Zll2?=
 =?utf-8?B?aGNSWmJkRnUxVlBSZFFJYnRUT1RKcldtZTN6V2MycTNXUmNqeFB2Tk5DeUx5?=
 =?utf-8?B?RExwUUIvb1Y0ZmpQcit5SjkrMndNaUZCalVRTVB2TDZDSlZTdnlrNkViRTln?=
 =?utf-8?B?SFVKcEk3Wjh1dGNLYm41T1lVdFpDdTAwYkNuOUtwQ29PU0M0bEt4cWxIdXdp?=
 =?utf-8?Q?/WJaUXtHqw7x/TGs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5df3297-fbe2-400a-cb53-08de5f215105
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:29:43.0513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: esVIX3kq+WsrFA7DpDJNQRezjWZHGeJ6aALLjyORdHP+nOrQGk43e4Hf26b3ssHh3lB6RXuErBeYHuzaGSwrQZ30t9IY4mO00Oj2k6w0Xvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682586; x=1801218586;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FNv+a4EYVKCU7UJD5YVMmTFFqL9nWz9SCVZ5dzZ8/B8=;
 b=IzAGZw5GOlLCyPaJ0fOX4du7MtQamMqYvdFmEeHV66kLDTz3MB2Ayq8A
 zZkQpRvS62cPHJM5LOglZAw6kDBUGuoGUFx/pZhjAvWGP9Fo7u42AhTqC
 zDRdNXB723NLDscmSqBx0pmlSxJqR8LrNPaocQny2OYScYa1vSqcxdl3A
 DSU0lqJdA/9yDjq0xslNri91RyqH3U+n72OcYHJu5t3Ze+EDnx27u4phb
 qgYjeMzEaHAQZzNVp6FaQuAZoqzm5pX1X56hJjVDcypIQXMDtkpMHUU0A
 d/dKF4q8EGoS2NkNsUU3XeVPXB8AmAIC1VovXAiCUsThuNH87fmPZHUiQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IzAGZw5G
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,IA3PR11MB8986.namprd11.prod.outlook.com:mid,lwn.net:email,infradead.org:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 114CFAEAF3
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
