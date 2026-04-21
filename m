Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBnsAFAb52k14AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 08:38:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 047A1437041
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 08:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DB7983CA0;
	Tue, 21 Apr 2026 06:38:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hYbGlCiS2gZU; Tue, 21 Apr 2026 06:38:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5436383C9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776753484;
	bh=6dHIyKUXX+DCZd+vYk2d5E8vT46450s3z7p6G/PHdco=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zp0xPWoNMnhIDl804s6MLnvMRxB0dyICmp3A/uoEu+gTOoV77Y+0PJX0nMrD+1Alk
	 Y9Wx3EqPTXCYHruSGoTyY8yL5ME7qtNvI2MdeQFUrXbgZdAI6HOJFw5uT6pgSKkcIF
	 PdjJ/pJergpIE/WwhCslXFco16mdjyNCJM8dePoKbV3wWVZo9xJ45VudQYRmIHiBiT
	 WU/fH+tBrd43Dw68EudSEmmpk81F1XRxJjASUXZO6vuw49G9NNl8mOX/akPHuxLM+Q
	 hcG9uy7qckWaESqddAblwZwIJvwafUUeOGxfgBMClF0WDf6hlHerGBC26wWM+QPa7P
	 suMu+S3roU/uA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5436383C9D;
	Tue, 21 Apr 2026 06:38:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DFD2A259
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 06:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0C4060662
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 06:38:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y7yAWwLq4NhT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2026 06:38:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 983AD6065E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 983AD6065E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 983AD6065E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 06:38:00 +0000 (UTC)
X-CSE-ConnectionGUID: 0/FFhsjdSviQolEsJL1+Wg==
X-CSE-MsgGUID: Mb+eO+9PQdCgpTX8noLq3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77595006"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="77595006"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:38:00 -0700
X-CSE-ConnectionGUID: YoqIb/9ERl2OGVhTA9y1Og==
X-CSE-MsgGUID: q+anUeK4SPGboFsWhWtmYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="228789036"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:37:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:37:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 23:37:58 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:37:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tyh4AaEU7ec7LkjxS2WbCtHCuqK+sdfcQ/c6vW/GzkW1mbi70boND54Srsxb4ovG5ODK8jlNPyRVlhptdVUmL6Voz39GIOip5KIOdnc8JNsBukksQO/4CghiulP83b3yH2n2VrGCP5rAadXCr7cyh0E2wKwXK91BF51Yv9MnhvuXJG10I+tP4kK3K674ZK8v0SMgerlHMbLugFDxo4AU5p1FlFxh8XV4xF41ecUyljlMUgB/yuABYW6Qaj/2RxueD79e8htcVc8/s7AQIiDGmmalreHOwsMJR/LIKw0g6zUlvSGtOq4uSa/EuAHZoZ7VaOpoCZcBToPrwF6H7zg6gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6dHIyKUXX+DCZd+vYk2d5E8vT46450s3z7p6G/PHdco=;
 b=QpnyqySO5BSIq7TWRarJu7CMBzltTqIc/WRbzDe8L/kYYv68iIsiSxK/0ZQ2Z/fSjqFCcSGiVuL7csqRMa263nFL/XLtipwV466r1dc099xCHpw4bRM6Ri1v2EDD4Zwnuzw79CygLYqhAUgN7IOmQPsf1y5RdiBWf+SJJEa1TGz2aht4Jh+j76ZTDc/1CY74w1M0HFB7B00IF91txz2Ofm7yb7dfd/P56Tx1+cHbMC05YTUE9GK2liE1iX1kBCk3DNwG9XMNqzBs0G83DfQMxxtnhutPgCSYbKaBV9kOv/0cbwxleJGvmkXGlKqhUHgL0smdgzd0Q/eEbkXnISD4LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SN7PR11MB7115.namprd11.prod.outlook.com (2603:10b6:806:29a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.14; Tue, 21 Apr
 2026 06:37:55 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9846.011; Tue, 21 Apr 2026
 06:37:55 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5] igb: Retrieve Tx timestamp
 from BH workqueue
Thread-Index: AQHcrIqLGPs7UnqJyEalZ07+gB/v9LXpQrbQ
Date: Tue, 21 Apr 2026 06:37:55 +0000
Message-ID: <IA1PR11MB624160CA2C074E9555954E558B2C2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260305-igb_irq_ts-v5-1-d3b96828ab5b@linutronix.de>
In-Reply-To: <20260305-igb_irq_ts-v5-1-d3b96828ab5b@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SN7PR11MB7115:EE_
x-ms-office365-filtering-correlation-id: 463582a5-d805-4be4-6585-08de9f70851b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|56012099003|18002099003|20046099003|22082099003;
x-microsoft-antispam-message-info: QMJJ6sN7PhTUPNf3ht07Yv5ZBX5lj/oKThIfgWn5K5XlnWcZDsS0vf6SAHmO2YreFpujOlItoZvIJS4b39UiINT+k+17he7vh0FfWgPyFBW3NajKBhthYCnpiBWQFbIQcKVfVU/G7MOFJtEIkaOTXvnn/SSHu+QqwwRUIKlm71+2TzHUcUQfQ/zaKBV1mxyMtv65J3tmJBGceeAa7EJKGK0Rw491gwNrPH9dMVSEdoEVdShRfOuTztMEQ10QMAIokTHiGq0keTF2zGxteROu2Rf5Ba+ARueA5btoLbE0L/DPqVrBVIegD/LgeFzQVbdP94w8+0n+n61KVsczjD9o79NHEXQ5l8HgQ84z16FfAgMPNSUq4GFpQZ5mE7hkTigaGhi2BlQUduCkgCZ04LgzWWHkEbDxOYr9/+tOGEXCglj6W954dRDG2sQ20kea+LzIUY7i0VI5IYUMB7AqqxnTILxu7t9MkrV/fC324uwDq/g19SPsCN3D7WPnlTfH4djkL0FuhJczklx7ZQd94RGaAvhQQoSq/lBKiae9Isun+399rCK2NJaBEuFGVmN9sXsAXKoKnGTc2je9CMEwnWL6SDHPWWJ1rxLs4t/tnXsJneVLCqPgXCCu+7vgoX1pqvhiBrJneCU11p+J/rPwdzB7lmyc0ywGyG3TBm9baaRLq14pQiq9FkrTl+iHFIckhaTUAEtHvWuMfhfoozUUZR42AtRubTSnGvwKAtSph74XRgOG/7l2JxSZzLcJw5GhinDH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(56012099003)(18002099003)(20046099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEJ2SWZ4V3VMVnN5L1lxNGY4VWdxbVRka1BFY3Fnb1JncDNoK2NIbmE5Z1dt?=
 =?utf-8?B?c3VNRVUyUTJHa0pNNGtrUkFWcG1nZ2o3T2lSMHZIc2FuU2xxNGZYRmZQcVdv?=
 =?utf-8?B?VS9IV2diMmY3T1dpTkhPMlpCV1M0WVhSR1RXeTIyeHRHNUl0K1RWYXhidzBm?=
 =?utf-8?B?NGVTNlQ1Wm1vQUhPNTh3dnBycWQwN0hnRjNnNFNYMVdVVTJpazlzTGF0YXFQ?=
 =?utf-8?B?R1lDdmhTOVliZHpWUnNwTUFuS3ZuOEMzS2dabWpnY3hmaExIUFJ2SGJBckli?=
 =?utf-8?B?bVh4ZWZPKzNYZTZRMGc3RG1XUmhoZmJqVDVmUzEyUStVNTFWakZhQXpyWmd6?=
 =?utf-8?B?cGxMSFd6Q004MjlCODhXaUxOVk5LekJ3ZkNtcWhXd1RmZW5KSmtFdnhYV0c4?=
 =?utf-8?B?ak9sNDRoZ0ZaOVQyd0VGM2pRRnJ2M0lkVE5nOTJadGtHQjd4RUt3ZTEvbFA3?=
 =?utf-8?B?WHgzRWdBaG5mcm5HVjFWc3ByWUVNaks5Y1JiN2t3ai9VaEt6dEhwQW9JT1pr?=
 =?utf-8?B?VjY4bmwrcENLS0h4NVpudjRzNE5JbHhqT2VudnQ3WkVzSGdnVlp5THFGM2pJ?=
 =?utf-8?B?blp3ODNNTE9rcFFQVElrK0RTMTFMVFdCNm5JQSsrNzhQVDlHTTJUTWVBaHFQ?=
 =?utf-8?B?RU1Ma0ZRdmY2dlFhMDJWdkZXekFiNmtBNXdEdG9LRGhWL1lKY0l0clJpMU1s?=
 =?utf-8?B?ejNlYUdsWk5nQmtZS1pPc0NPU2tFTldPYVNPREpacDBHNnVDTkp6SS8rWjNK?=
 =?utf-8?B?U3EyeFRzTk9VdXlENTl0YnFNSnZEc3NpWHpMbUFEM2VZNFRSUWFjQndLWmhJ?=
 =?utf-8?B?bStsaW1ZbUxzZGxVTUhZOWJqSGZ2Z2wzbno4L2dDMzIvemE5SU9rL0hCWUpt?=
 =?utf-8?B?WlpuOU9pWVJydGdVc2IrK055M2xDbStqb1hEUjZrQ3BGaks0SkpJRGY2RTNv?=
 =?utf-8?B?OFd4c24rY1RCK3ZiaGNHUFRKZVl5TGFRTnh3bzhyWDZVNHV6UzQwVmNMRFkv?=
 =?utf-8?B?bUFwTjVZTnJ5OEY4alhPREpDNGNHbzBqbVJkNmdtY2xYYm96a08yakd0cmdK?=
 =?utf-8?B?dkZWbEtJNWxFWjNYaW5rU3IyM3pXQUdXcm5hWDl6MmFScHdpYUVBT2YvdThP?=
 =?utf-8?B?cm4yNUxOemlRRUhnU0RhcGVlVzRNSStKOUNmbHhySXE0TXc5V2RrZy9VYU50?=
 =?utf-8?B?Nys5a3JETFI2RmxUL2puZE1JdTRjZ2lvVUNvK1dNaThDaWNybmxJbEZEblEw?=
 =?utf-8?B?bFdtNEJQaFdoNGJmQXpPUUl4NGdlcnYyck5sOGtNOGthbEU5NXRiSnl1VHh5?=
 =?utf-8?B?MmZmMTZHOUlUV21ac3RjdWMzNVVlUmxKQjVzbXU2anJuQXJ0NHRRZmUxcVc3?=
 =?utf-8?B?ZlUyVzBCTm5KT1BUczZSVGlteEVuMFk4OWFweWU5cEozQS9ZRU45VmFIVmh4?=
 =?utf-8?B?MmhIMjBHNjdYVStzZHM3MCs1dWV2YXBVcGtlMUhNdmdRTldrN1dBVlhaVWV4?=
 =?utf-8?B?L0VrWmhld3BDS29WNjdpbFlVbkFnTEFnczE5M1BsYVptMktwUWJFWnk2U3Jp?=
 =?utf-8?B?aHJMc2s2UGliT3FILzloYjFpeWpkd3dVc3MyQ3FFZDl2a001Vm1mM0JjN3Zs?=
 =?utf-8?B?NFB1K09GNW1XYVdqN0RrYytVQ1dZamFrNEh1bzFRMVA4M1ZIRU1XM0FtQmMz?=
 =?utf-8?B?bjFyc3grV0JoT1lTc2ZQcTAxLzRJK2JGTm9OeXR1S3RTaWtTdzhDZWdVQXQx?=
 =?utf-8?B?MTA3b1kreHVncUdhSjJ4Skd0VjF1ekNPcnhqQ3FmS09saFEyOENZVzN4TE04?=
 =?utf-8?B?WlNPSDlCbUU4Ukg5SXVzQ1h2bGZNTmlPR2RxdXE5d3RRL2pTTGJuZHgwek5T?=
 =?utf-8?B?ZDVtdzA5VTNDU0daeURPcG1keFBnaTV1eWhyYnViZFdqdjdQNVQ4WFRnSG80?=
 =?utf-8?B?ODkxQWg5bUsyVlBiYVZUbkVsd0RMNElEMWZDVjRaOVhCQ3JpdjIydDZ1NVBn?=
 =?utf-8?B?K0kyUnhZYy9QZnVxaDcyVEd0a2ZxN29ZcTVoem5ZT0dtMWZ3VHdvQ2lyRFhr?=
 =?utf-8?B?SkNuQnZkVDlFU0FJdW55WjJEaHJjeWpESlFmZzl1U3cxTTN6M1JCS2JoWGdk?=
 =?utf-8?B?UWhNbllTY1JyV0JsR3BOWTk1blJ1VGV3T0ZVQWtqMThCaTQ5MWhpMVpJOFJN?=
 =?utf-8?B?MkNkZHRjNmZzL0U3dUVSRVJUa1pqeWRick9uYkRWVnVtY3l6WEpuMHRZTXMr?=
 =?utf-8?B?b3JBSlEydVc0RmNZTTFveCtCNXpGWWVuWXl3V25mV2tvY1kxUVljMXlYY2FY?=
 =?utf-8?B?UUxDMXFXcy9MMWNoZGJiVm1xRS9INWRhdllDNHMzdks5ZUJXdmxyUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HaKOSCSCK1Y82RtKcISMiTdMXUnNDIGS5oEMEySeWNwrjx+ddlIatUHODaLXFc7+6h3tA4007nNViP+PZHAeyd6Xa2jVypBa/l4VRbUmOzBXrC7SuScafW35sG1OywqFFMshX/8TzsXDSwJkWfInwp+S5XvZWD+dv3jnPVMDmJe74BXgTaBynyVogCrMK239tTxOX6U0Yyu0eVpRjIvh8o4mkyIeF8gsuRLFA7mMrxU6Ezju/Mx5TLbDXJmRWhLMLCjHbKJi8f0SRBMpt+XG0X9lwDrmsDXP8xe3KauxAixvLHwngIHf0IbrFPC/ckROC7vUOMW0wMynh8LZF21D+w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 463582a5-d805-4be4-6585-08de9f70851b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2026 06:37:55.1177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adCwJvRi4t6P21mjkuE0oqRPW9BszWo/KPFC54SJFBTK1MaX5beLxzpuyVZrfSoaHNDiMtcrNdx0YM3oAueiIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7115
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776753481; x=1808289481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6dHIyKUXX+DCZd+vYk2d5E8vT46450s3z7p6G/PHdco=;
 b=TjFUgbn4rKSsoiAkr5h0oo4Savd1cTkVehdGVeeeqqVUWQoNMLyJeNRQ
 6hsZ+G/0+ilak+1wX+Y/8UhfPz6EW8HzSt/+pLg3Mt1rLxHVOPuFpJrwY
 rGEjjQ63RF6GJUzcoDw1End1CkdnOY0zYp5YhMSZJsiTsDhIbMG5Z/3Jm
 iAOZ7A2vwKrHSCUDdjYuCHaW68nPameYKYW4cbpJm3qlcphYCnb/oLcx4
 Je72flUfwsZ6Fgog3bsLgr0K8yuMMOrINrMkEkkp7nW9TI55/zFA0FTUt
 q9PBjgW/NkVaxdHDvTt0eOQIJntr/NiG50e0tlEoURUemr2LmBiZVujml
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TjFUgbn4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] igb: Retrieve Tx
 timestamp from BH workqueue
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[molgen.mpg.de,linux.dev,intel.com,vger.kernel.org,gmail.com,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net,linutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_SPAM(0.00)[0.509];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 047A1437041
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBLdXJ0IEthbnpl
bmJhY2gNCj4gU2VudDogMDUgTWFyY2ggMjAyNiAxNTo1Ng0KPiBUbzogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6
ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gQ2M6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1v
bGdlbi5tcGcuZGU+OyBWYWRpbSBGZWRvcmVua28gPHZhZGltLmZlZG9yZW5rb0BsaW51eC5kZXY+
OyBHb21lcywgVmluaWNpdXMgPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT47IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc7IFJpY2hhcmQgQ29jaHJhbiA8cmljaGFyZGNvY2hyYW5AZ21haWwuY29tPjsg
S3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9uaXguZGU+OyBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnOyBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+OyBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRXJpYyBEdW1hemV0
IDxlZHVtYXpldEBnb29nbGUuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7
IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgSmFrdWIgS2ljaW5z
a2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IERh
dmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IFNlYmFzdGlhbiBBbmRyemVqIFNp
ZXdpb3IgPGJpZ2Vhc3lAbGludXRyb25peC5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxh
bl0gW1BBVENIIGl3bC1uZXh0IHY1XSBpZ2I6IFJldHJpZXZlIFR4IHRpbWVzdGFtcCBmcm9tIEJI
IHdvcmtxdWV1ZQ0KPg0KPiBSZXRyaWV2ZSBUeCB0aW1lc3RhbXAgZnJvbSBzeXN0ZW0gQkggaW5z
dGVhZCBvZiByZWd1bGFyIHN5c3RlbSB3b3JrcXVldWUuDQo+DQo+IFRoZSBjdXJyZW50IGltcGxl
bWVudGF0aW9uIHVzZXMgc2NoZWR1bGVfd29yaygpIHdoaWNoIGlzIGV4ZWN1dGVkIGJ5IHRoZSBz
eXN0ZW0gd29yayBxdWV1ZSBhbmQga3dvcmtlcnMgdG8gcmV0cmlldmUgVHggdGltZXN0YW1wcy4g
VGhpcyBpbmNyZWFzZXMgbGF0ZW5jeSBhbmQgY2FuIGxlYWQgdG8gdGltZW91dHMgaW4gY2FzZSBv
ZiBoZWF2eSBzeXN0ZW0gbG9hZC4gaTIxMCBpcyBvZnRlbiB1c2VkIGluIGluZHVzdHJpYWwgc3lz
dGVtcywgd2hlcmUgdGltZXN0YW1wIHRpbWVvdXRzIGNhbiBiZSBmYXRhbC4NCj4NCj4gVGhlcmVm
b3JlLCBzd2l0Y2ggdG8gdGhlIHN5c3RlbSBCSCB3b3JrcXVldWVzIHdoaWNoIGFyZSBleGVjdXRl
ZCBpbiBzb2Z0aXJxIGNvbnRleHQgc2hvcnRseSBhZnRlciB0aGUgSVJRIGhhbmRsZXIgcmV0dXJu
cy4NCj4NCj5UZXN0ZWQgYmV0d2VlbiBJbnRlbCBpMjEwIGFuZCBpMzUwIHdpdGggcHRwNGwgZ1BU
UCBwcm9maWxlOg0KPg0KPiB8cHRwNGxbMzAuNDA1XTogcm1zICAgIDQgbWF4ICAgIDcgZnJlcSAr
MTI4MjUgKy8tICAgMyBkZWxheSAgIDI0NyArLy0gICAwDQo+IHxwdHA0bFszMS40MDZdOiBybXMg
ICAgMiBtYXggICAgMyBmcmVxICsxMjgyOSArLy0gICAzIGRlbGF5ICAgMjQ4ICsvLSAgIDANCj58
cHRwNGxbMzIuNDA2XTogcm1zICAgIDMgbWF4ICAgIDMgZnJlcSArMTI4MjcgKy8tICAgMyBkZWxh
eSAgIDI0OCArLy0gICAwDQo+IHxwdHA0bFszMy40MDZdOiBybXMgICAgMiBtYXggICAgMyBmcmVx
ICsxMjgyNyArLy0gICAzIGRlbGF5ICAgMjQ4ICsvLSAgIDANCj4gfHB0cDRsWzM0LjQwN106IHJt
cyAgICAzIG1heCAgICA2IGZyZXEgKzEyODI1ICsvLSAgIDQgZGVsYXkgICAyNDggKy8tICAgMA0K
PiB8cHRwNGxbMzUuNDA3XTogcm1zICAgIDMgbWF4ICAgIDYgZnJlcSArMTI4MjIgKy8tICAgNCBk
ZWxheSAgIDI0NiArLy0gICAwDQo+IHxwdHA0bFszNi40MDddOiBybXMgICAgNyBtYXggICAxMCBm
cmVxICsxMjgxMiArLy0gICA1IGRlbGF5ICAgMjQ4ICsvLSAgIDANCj4gfHB0cDRsWzM3LjQwOF06
IHJtcyAgICA1IG1heCAgICA4IGZyZXEgKzEyODA4ICsvLSAgIDMgZGVsYXkgICAyNDggKy8tICAg
MA0KPg0KPiBGdXJ0aGVybW9yZSwgTWlyb3NsYXYgTGljaHZhciB0ZXN0ZWQgd2l0aCBudHBwZXJm
IGFuZCBjaHJvbnkgb24gSW50ZWwgaTM1MDoNCj4NCj4gV2l0aG91dCB0aGUgcGF0Y2g6DQo+DQo+
IHwgICAgICAgICAgICAgICB8ICAgICAgICAgIHJlc3BvbnNlcyAgICAgICAgICAgIHwgICAgICAg
IHJlc3BvbnNlIHRpbWUgKG5zKQ0KPiB8cmF0ZSAgIGNsaWVudHMgfCAgbG9zdCBpbnZhbGlkICAg
YmFzaWMgIHhsZWF2ZSB8ICAgIG1pbiAgICBtZWFuICAgICBtYXggc3RkZGV2DQo+IHwxNTAwMDAg
ICAxNTAwMCAgIDAuMDAlICAgMC4wMCUgICAwLjAwJSAxMDAuMDAlICAgICs0MTg4ICArMzY0NzUg
KzE5MzMyOCAgMTYxNzkNCj4gfDE1NzUwMCAgIDE1NzUwICAgMC4wMiUgICAwLjAwJSAgIDAuMDIl
ICA5OS45NiUgICAgKzYzNzMgICs0Mjk2OSArNjgzODk0ICAyMjY4Mg0KPiB8MTY1Mzc1ICAgMTYz
ODQgICAwLjAzJSAgIDAuMDAlICAgMC4wMCUgIDk5Ljk3JSAgICArNzkxMSAgKzQzOTYwICs2OTI0
NzEgIDI0NDU0DQo+IHwxNzM2NDMgICAxNjM4NCAgIDAuMDYlICAgMC4wMCUgICAwLjAwJSAgOTku
OTQlICAgICs4MzIzICArNDU2MjcgKzcwNzI0MCAgMjg0NTINCj4gfDE4MjMyNSAgIDE2Mzg0ICAg
MC4wNiUgICAwLjAwJSAgIDAuMDAlICA5OS45NCUgICAgKzg0MDQgICs0NzI5MiArNzIyNTI0ICAy
NjkzNg0KPiB8MTkxNDQxICAgMTYzODQgICAwLjAwJSAgIDAuMDAlICAgMC4wMCUgMTAwLjAwJSAg
ICArODkzMCAgKzUxNzM4ICsyMjM3MjcgIDE0MjcyDQo+IHwyMDEwMTMgICAxNjM4NCAgIDAuMDUl
ICAgMC4wMCUgICAwLjAwJSAgOTkuOTUlICAgICs5NjM0ICArNTM2OTYgKzc3NjQ0NSAgMjM3ODMN
Cj4gfDIxMTA2MyAgIDE2Mzg0ICAgMC4wMCUgICAwLjAwJSAgIDAuMDAlIDEwMC4wMCUgICArMTQz
OTMgICs1NDU1OCArMzI5NTQ2ICAyMDQ3Mw0KPiB8MjIxNjE2ICAgMTYzODQgICAyLjU5JSAgIDAu
MDAlICAgMC4wNSUgIDk3LjM2JSAgICsyMzkyNCArMzIxMjA1ICs1MTgxOTIgIDIxODM4DQo+IHwy
MzI2OTYgICAxNjM4NCAgIDcuMDAlICAgMC4wMCUgICAwLjEwJSAgOTIuOTAlICAgKzMzMzk2ICsz
Mzc3MDkgKzU3NTY2MSAgMjEwMTcNCj4gfDI0NDMzMCAgIDE2Mzg0ICAxMC44MiUgICAwLjAwJSAg
IDAuMTUlICA4OS4wMyUgICArMzQxODggKzM0MDI0OCArNTU2MjM3ICAyMDg4MA0KPiB8DQo+IHxX
aXRoIHRoZSBwYXRjaDoNCj4gfDE1MDAwMCAgIDE1MDAwICAgNS4xMSUgICAwLjAwJSAgIDAuMDAl
ICA5NC44OCUgICAgKzQ0MjYgKzQ2MDY0MiArNjQwODg0ICA4Mzc0Ng0KPiB8MTU3NTAwICAgMTU3
NTAgIDExLjU0JSAgIDAuMDAlICAgMC4yNiUgIDg4LjIwJSAgICsxNDQzNCArNTQzNjU2ICs3Mzgz
NTUgIDMwMzQ5DQo+IHwxNjUzNzUgICAxNjM4NCAgMTUuNjElICAgMC4wMCUgICAwLjMxJSAgODQu
MDglICAgKzM1ODIyICs1MTUzMDQgKzgzMzg1OSAgMjU1OTYNCj4gfDE3MzY0MyAgIDE2Mzg0ICAx
OS41OCUgICAwLjAwJSAgIDAuMzclICA4MC4wNSUgICArMjA3NjIgKzU2ODk2MiArOTAwMTAwICAy
ODExOA0KPiB8MTgyMzI1ICAgMTYzODQgIDIzLjQ2JSAgIDAuMDAlICAgMC40MiUgIDc2LjEzJSAg
ICs0MTgyOSArNTQ3OTc0ICs4MDQxNzAgIDI3ODkwDQo+IHwxOTE0NDEgICAxNjM4NCAgMjcuMjMl
ICAgMC4wMCUgICAwLjQ2JSAgNzIuMzElICAgKzE1MTgyICs1NTc5MjAgKzc5ODIxMiAgMjg4NjgN
Cj4gfDIwMTAxMyAgIDE2Mzg0ICAzMC41MSUgICAwLjAwJSAgIDAuNDklICA2OS4wMCUgICArMTU5
ODAgKzU2MDc2NCArODA1NTc2ICAyOTk3OQ0KPiB8MjExMDYzICAgMTYzODQgICAwLjA2JSAgIDAu
MDAlICAgMC4wMCUgIDk5Ljk0JSAgICsxMjY2OCAgKzgwNDg3ICs0MTA1NTUgIDYyMTgyDQo+IHwy
MjE2MTYgICAxNjM4NCAgIDIuOTQlICAgMC4wMCUgICAwLjA1JSAgOTcuMDAlICAgKzIxNTg3ICsz
NDI3NjkgKzUxNzU2NiAgMjMzNTkNCj4gfDIzMjY5NiAgIDE2Mzg0ICAgNi45NCUgICAwLjAwJSAg
IDAuMTAlICA5Mi45NiUgICArMTY1ODEgKzMzNjA2OCArNDg0NTc0ICAxODQ1Mw0KPiB8MjQ0MzMw
ICAgMTYzODQgIDExLjQ1JSAgIDAuMDAlICAgMC4xNCUgIDg4LjQxJSAgICsyMzYwOCArMzQ1MDIz
ICs1NjQxMzAgIDE5MTc3DQo+DQo+IFRoZXJlIGFyZSBzb21lIG1pbm9yIGRpZmZlcmVuY2VzIGF0
IGxvd2VyIHJhdGVzLCBidXQgbm8gcGVyZm9ybWFuY2UgcmVncmVzc2lvbnMgYXQgaGlnaGVyIG9u
ZXMuDQo+IA0KPiBSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5k
ZT4NCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9u
b3ZAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBLdXJ0IEthbnplbmJhY2ggPGt1cnRAbGlu
dXRyb25peC5kZT4NCj4gLS0tDQo+IENoYW5nZXMgaW4gdjU6DQo+IC0gQWRqdXN0IGNoYW5nZWxv
ZyB3b3JkaW5nIChBbGVrc2FuZHIgTG9rdGlvbm92KQ0KPiAtIEluY2x1ZGUgbWVhc3VyZW1lbnQg
bnVtYmVycyBpbiBjaGFuZ2Vsb2cgKFBhdWwgTWVuemVsKQ0KPiAtIExpbmsgdG8gdjQ6IGh0dHBz
Oi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDMwMy1pZ2JfaXJxX3RzLXY0LTEtY2JhZTdmMTI3MDYx
QGxpbnV0cm9uaXguZGUNCj4NCj4gQ2hhbmdlcyBpbiB2NDoNCj4gLSBVc2UgQkggd29ya3F1ZXVl
ICh0YXNrbGV0KSBpbnN0ZWFkIG9mIGRvaW5nIHRpbWVzdGFtcGluZyBpbiBJUlEgcGF0aCAoSmFr
dWIgS2ljaW5za2kpDQo+IC0gTGluayB0byB2MzogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIw
MjYwMjA1LWlnYl9pcnFfdHMtdjMtMS0yZWZjN2JjNGI4ODVAbGludXRyb25peC5kZQ0KPg0KPiBD
aGFuZ2VzIGluIHYzOg0KPiAtIFN3aXRjaCBiYWNrIHRvIElSUSwgYnV0IGZvciBpMjEwIG9ubHkN
Cj4gLSBLZWVwIGt3b3JrZXIgZm9yIGFsbCBvdGhlciBOSUNzIGxpa2UgaTM1MCAoTWlyb3NsYXYp
DQo+IC0gTGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDgyMi1pZ2Jf
aXJxX3RzLXYyLTEtMWFjMzcwNzhhN2E0QGxpbnV0cm9uaXguZGUNCj4NCj4gQ2hhbmdlcyBpbiB2
MjoNCj4gLSBTd2l0Y2ggZnJvbSBJUlEgdG8gUFRQIGF1eCB3b3JrZXIgZHVlIHRvIE5UUCBwZXJm
b3JtYW5jZSByZWdyZXNzaW9uIChNaXJvc2xhdikNCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9yLzIwMjUwODE1LWlnYl9pcnFfdHMtdjEtMS04YzZmYzAzNTM0MjJAbGlu
dXRyb25peC5kZQ0KPiAtLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9t
YWluLmMgfCA0ICsrLS0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfcHRwLmMg
IHwgMiArLQ0KPiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBD
b250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
