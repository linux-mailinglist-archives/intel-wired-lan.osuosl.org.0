Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CwLDMc3e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84060AED0C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B9E64067B;
	Thu, 29 Jan 2026 10:34:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jAzBvaEoj_6U; Thu, 29 Jan 2026 10:34:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8ABC240592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682884;
	bh=R2br6C+gPibL3Ac5wS5jnxmoSsPEFlO1t7nYyI6+Jso=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2ewjWU7pL1UmiVqmOx0JCymbWtTkML5uy2/+Cu9p0PuJ/GW7oGcQidn8cIarBPEVU
	 zp9RaJL/Dluxt6c40XuesbYTVJVnwB80Ws7xcAN9JSZJcit0wAqdATLWkc+xMd1q7+
	 bl2WX46akmjh0LcLkocWan0jWMl+TmARNNS5sIUX4r2DWVUNy6z75ekiPadSqA3nRj
	 UcBE98pCgWxHWejnSPTxIfCAUgSv1gJ8Hznl9D7/cRVHgCbul2d/MxccqGybrb9SRe
	 DoJK/ct8IM36o/BX2TVu+y2VuZSLFlg64vtL7oAWtoNf9GDA0JpDD1bEzDEBc3h0NK
	 sCjoRaaNz5axg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8ABC240592;
	Thu, 29 Jan 2026 10:34:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 073C91AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3546401E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S2fMv7jBv91e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:34:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E33FD4014A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E33FD4014A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E33FD4014A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:41 +0000 (UTC)
X-CSE-ConnectionGUID: YodROQ+WRciP+VlFDEPQRw==
X-CSE-MsgGUID: 9VLHjgjeQECcqIQMZYOx+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93579106"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="93579106"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:34:42 -0800
X-CSE-ConnectionGUID: 08zgsgjiSB6qxsjIhpS1wQ==
X-CSE-MsgGUID: u9+WyA5WQ2COBOhmKhInAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="207658296"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:34:41 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:34:25 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:34:25 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:34:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vf5jpeSGhXGoC1X5tvUkPqkBVzqSs2zbX9fufNDZWYUVrc/hHHAgWaSz907h0iHHZUDdmCLjg9bsDfMCrr/JJ/Py/lzf1mOqSma59xXkaKHDfN/WsJrXTeicW2IpElGPl+DtaF7HH0BL8WWhYuP8xQ3Nan/YjcHeFmTHLr3tRI17jq7AC22yrs6CvVBfuuQoIzzkWptd5e/iz+l3uO7VyM2y6cYRoKvw7aaOmJpzD6XRGt8eECSZZWC4a62CcmZvy6AySzXqkIhZTlLtDt9j3vMyTsZijegGexV0DKpfigQK5IQhXjVSI1fO+85oLH/hJlGhAByeI8cB+iwX5icrPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R2br6C+gPibL3Ac5wS5jnxmoSsPEFlO1t7nYyI6+Jso=;
 b=yROnanxZdDaOt23jNvaRcx5cxBLXzNWWrBVcTzF58qct0gwblW6lCsfa2QHSKylxkDFKr2C/ks3EIk3IhB456RNy67x+PA8qZMtA8IX+gzKeHKTe6R2eK5OGzdd3yJ0cW7V/mkhxQpsmd3LvlQv/jmH3WoJNNFsFuHkiTgRn6vIVgytrhLgE939WhQ7j/L2Zfd++g30jCwZEJ8rrdK/fQdSBDMtJbO8QT5TztUjIh/KJ1gDr/QArXBwy/NebmWkO6ggvl7PxkrD+KM/oBzK1sOEIBLdnlHJY0DFFq+P8OyvIU44u78Me4NhvLKpUIeDkOjbJN33DeVfOa1o2RT6f3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:34:23 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:34:23 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Jonathan Corbet <corbet@lwn.net>, "Linux Doc
 Mailing List" <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 27/30] docs: kdoc_parser: minimize
 differences with struct_group_tagged
Thread-Index: AQHckPaQDCTaMsnwO0u2HulXhSQqxbVo87aw
Date: Thu, 29 Jan 2026 10:34:23 +0000
Message-ID: <IA3PR11MB8986945904524E4DBC14623CE59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <50ef80ed8a1a638d08974e55a7828371bab09c0d.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <50ef80ed8a1a638d08974e55a7828371bab09c0d.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: 89a6adc3-cfd4-4b69-9af5-08de5f21f838
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?R3FSTmNsMjR0am91VEsyTkxNZStmREVRRGRBUEZJRW5ycFF6c2tXRGZVU0I3?=
 =?utf-8?B?a1cxOEc3T0YzS05BRWFZYXozaytSNTZCZ1Z4Z0VNWU5tekdIWityQ3g3VjRR?=
 =?utf-8?B?TDZXNVlPYi9wVGlHQW82M2E3a0dOMmtxTStsRmVKM29TRmJHMEpvN2tWOEpa?=
 =?utf-8?B?UHliYkdFdzBSQW9nNEJCaElPVVhUOTJoem1KVTVKY0J4ZEdRY05jKy9NakVR?=
 =?utf-8?B?OHFtakpVbWpRVjdQVFJXN3NrblBlNDNqRUZ4bnRMVE9pc1VCQXRmSE5Zd1lU?=
 =?utf-8?B?cTF0TnE5dkYzUlVMdFNqTU9rbkVMdVN4aTNlVGIzeUhSelYwTkJlVldQN2Ux?=
 =?utf-8?B?d0FlQlZhR0hiM1RyakRsOVNQcVNnNHBjdUdUZWhOZUozZUdubTl3aFNKcWN5?=
 =?utf-8?B?amVqZGwxTkd1M2N1NXNFaXlkYUMweUk0Sk1ZWjhoaXJNSE1MVXdtcHpoTUtV?=
 =?utf-8?B?QWx2TWFzYTFCalc1am1XeFpESi9TdFo5bVdOb0FpZkJDbCtQT1Y3aEQ3a0x5?=
 =?utf-8?B?Um9qWDRlaC80Z1hYZVlKdWRsZ2k3aXVyY3NNSEhEMWUvYitwc1AyVzNxeFlw?=
 =?utf-8?B?bWF6YjY0bWJlRjZKMEhtUmJVZEExWkNxNllGczBTaFB2aWp0Y2Q3OGt2Mysy?=
 =?utf-8?B?MVB0OTdqN25oM3BUK1hYWTIxM3ErdVY5LzdOd3lDekJGZU1HeHR5eHJnNzk1?=
 =?utf-8?B?VytRdDkwSmhzV01XUWYrR3pZSnpKTXJUMHhQWm9tSFRnNFZCOVlQRDJka3hL?=
 =?utf-8?B?QzZQNlJycG8vQ09UNVIyMzkxTk9FM1JhUDYxK2lsY0JUTEhjVG1zb2x5QnNl?=
 =?utf-8?B?d0VoektoM0dqblExZERCRU03aSttOTh6RU1QeGhuaFRvUjVTMzhBWnN6cVdw?=
 =?utf-8?B?Snoyb2hEblpUVWRhSUVETERaUHhKd1dwK0ExejIyYWg3OUp4NUlsdW44MDFM?=
 =?utf-8?B?VUJkVzhqSlRiQjBLQnc0a2dpbFYwR0U0bHB1QlFvd2lCRmkxNFFmaTROeDh6?=
 =?utf-8?B?ZVRlY3ZSVzB4Z3NNUWtwTkRNMzNTUWdTTUdxOGNxc0VTQk9GOWFsKy93OS9y?=
 =?utf-8?B?QVpZOE5VbVBvZHNKSTBBYjlYRktMeURJL3psUmx5eXVwLzVoMGtwUEZDOVVw?=
 =?utf-8?B?a29pekpmTURPeG5OZS9oTlBQaENHRHhwVVpsZFh6UXozazhnaWNlMjdZWTFI?=
 =?utf-8?B?eFBnS3BaSS8zVzdIWHVOQytlSmF5QUMvMWsvL01SS2VIUDNTRnM3OTdwOHc5?=
 =?utf-8?B?SDNSZXd6cVZ5UUcyWVQwbUZlWi8rK2NLMnpsUzJsV1N2UTFLQldkd1gyTStJ?=
 =?utf-8?B?WW9hZ3pzQmlGWTR5NzJtUFZOSlNibHR0bktpbndwNHU5d3FjbTRXRHdDZEhD?=
 =?utf-8?B?WXdWY0JRb3VtSlpMRnJkRnhHZmJZSTd2ZE5yUmNlUXNSQVpKbEZxcHR1ZUxR?=
 =?utf-8?B?bnlhK3VlVnRYKzBkZDRjTnJtMUVuWlhkMVNMWmQyUXhSenkwb0d2WVhhckpa?=
 =?utf-8?B?eWdPazZsN2FCazNqTTkvbHAxSVY0eGxCWjFEaGt6WlZUQ2JQdjlKRnV3dUNL?=
 =?utf-8?B?dGh0ZTNDRGNmbUYrbEVYWjFhR3dnQW9NeGZ2N1h5MTdBU2VFRUhBdkNTbXdh?=
 =?utf-8?B?VHIrTEY3RitObnhTSXg2dTJZUktCR3FOM3BObGwvVTMvb1UxaXlKRmFKaU8v?=
 =?utf-8?B?Y3ZNK1Q5ZzJabTYxSzN1dGVRWjJwVStQYk5zdXd2azBBRkhMSFptVGY1UzZG?=
 =?utf-8?B?UzlWUVhHSWE2eTFPUXlwK0w5M29TLzNqSXkzL0NMNkNraW5SM0d5ZjAvbjBP?=
 =?utf-8?B?WFB2cmY4STA4OUwvVk1aVEdCdklEbFVRUlltNnNEa2VRU1lMWWhwOHR0TWhM?=
 =?utf-8?B?REtPVVNVVGs2cGloMnNxcVovaGVXRHE2VXRKQUVQb1djOFFwY0diNWxZMkxM?=
 =?utf-8?B?ZlYxcWE3ZytrakN6bU5TSlo0NVErY0krazJYcUU4NmdkbURuSmdCaE92cGtq?=
 =?utf-8?B?ejZLWVNyQXZudzVjY2dNR2dqSVhJbllPKzlOL28ySG1XMkU0dnMza2R6bFZs?=
 =?utf-8?B?b0NnT3BaR0svM0Q3SjdCZkdJN1lTK0xzWnY2UktJVHdrd20yVmtzeDBuaDBp?=
 =?utf-8?B?ZDVOZS9GODBiSlBBVzFtVEpBaUNYaFVBOVJoTTE0VWRzcDQ1enF3N1VwOCti?=
 =?utf-8?Q?AxEYQsDvQWHsoqJE1lNMsYw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnAzV0RQY3hVQTBINm94WGdkSFhtcTRoeG92UVhiaWVCeWg3WUxIM1dFaWVm?=
 =?utf-8?B?Z2JkNjBMYWU5elp5REt5NVBkRnlpNEpBMGtaK1FjeWhDWU55RVA5S2VjS0U2?=
 =?utf-8?B?R0ZwNjdJOVFpNmUwM09nYUhJT0Ryc1VYV0dzRG9kbjZOTFY5elY3UVdpa2Jw?=
 =?utf-8?B?Y3cvTmxNZ2loZmUxa29XdTBpL2p1ZUovN01IVmRRemJWK0RsQWhsS2J5UXo0?=
 =?utf-8?B?VWNQTm9tVmw3UzVQNXRmQUNULzR1S1ZxOXF3azdtR2JhMjNZai9IRDRINnNP?=
 =?utf-8?B?d1JSaWRUczFBTWxicnFndmplRkNMOXliRzN6bjYwS0FXeE5HSVowTnI3RDBk?=
 =?utf-8?B?bklqaFY0cVM0VDFmT0VyNjUwMklDT1ZrM2RmMi83UHNUeGJVbmtNc3M5OThM?=
 =?utf-8?B?V2FJN3ZQbTNjRC9ScDY1VkV5K1NqWnhaK2lOdGhvL1N2cXJUMGIzeWw1Uzg2?=
 =?utf-8?B?RlhMZW4yN2tTWFdYdEFSL0NkWGZidzA4VGJnbmp3OUtSdGpzaW1TUFBPQWQ5?=
 =?utf-8?B?TWYwYzE3SVc3dlNmS1EvV2FvbFM3Y0N1cFRab0MySFBnd3RjZ1BRQmZ3N0Fm?=
 =?utf-8?B?Q0QyY0tvNXg1b0xML3dSNXhodXQ4N2xtc1V5Q2ZMVGlIRTV1aDlMd3hGQWNz?=
 =?utf-8?B?VjFBN1EvbVBxT3h3ajk4YjY1ejFxakdCMWxPcXlzaVBQejJicDdxL3VwaWhF?=
 =?utf-8?B?ZVVMaGVlSExuT3JWbkQrcDhiUGJBSkpvTTVJY054dU03cDJVYkNmNmE2Ni9m?=
 =?utf-8?B?dzBMMGRQNHIzbitISTI3ZkZGSnV5d0p6K05IZ0ViUVlHUEo2MUZ0ZlFPLzU5?=
 =?utf-8?B?Qlo2eThFcTRQNFFwc2FCZUJwdW5VM09tUU9nYlRMR2EwSVU1cnpwci9rVE8z?=
 =?utf-8?B?cHByVDZDd2Evd2dnUnJBSGFKcEFFdEVvWnZ4djg1OCsvYThwdGx0OEVUNVJ5?=
 =?utf-8?B?clEzNHEwOW1ReUJVenJyU1hIem1iOWVqT1JCSHY5LzMwcXpmK08yMFBBZjB5?=
 =?utf-8?B?ZFM0OEovcm92bCtKZll1VUhSM001QUtYZHZEOUN6RnlGV0cvV2owcXVHdXRl?=
 =?utf-8?B?WW1RMnhveTYxVU84Vzh0LzhuZmViMzFpRWNSbzFEU2x1T1BSMGN1Znkxd3d0?=
 =?utf-8?B?ejJwOTJ4RVJ6L2hoR1BBb3ljN3Iza0tTK3l0SHQ1QkFQUHpwYTVwMnZkemxl?=
 =?utf-8?B?elU5TkJ3NzJiMFNDVGpNMCtlUmRvbXdIZ28rVTZVeDVhdVZxeW94RDNaSys0?=
 =?utf-8?B?V1k0WUhpcm5SMkR0VTExLzNSUVl1V09pazRiNC9MR2o1dkhudlQ4S08rRGZT?=
 =?utf-8?B?Qms4SG9GbVl1MVM1SVVEbDVEclk3dzNHelp6TEZNdTJPUFBKZi95eWpoSkQr?=
 =?utf-8?B?NWQ5Q2pLNEljdTBLVWc5UVQwRUxIa0t5UGwzNjl3cXp6WG1BeUM2QXFwdmVF?=
 =?utf-8?B?UEVISmVoMTRNNC9iOTFVeXA4NVpzUU1UK29qVkpYUC9YVE1OUHpNbDZORkt0?=
 =?utf-8?B?NEM3Q0RRbzN2Q003LzllUWRwcWxGTVdRR1FvM3FDeE1hZkZ4cjRZNTFCdEJF?=
 =?utf-8?B?NVdHZkU3aXBNeDlXbXFPSkZrbFdpaG9pcklsY3JkVmZYZ2gxRTlvQkRNTFY4?=
 =?utf-8?B?UW5VVkpCdGJXQTE4TWtjdTM0Y2oxR1RpUkVtSWgzOVFreEpjYWRhZW53enMx?=
 =?utf-8?B?T3lpVVVXU2hwT2s4bW03ajQ5KzVIZEtld0NuUXE5RXg4THFGSEIyUTl6SUtl?=
 =?utf-8?B?RmI5Q2NFZ1FLM2YxY1B4YzByekFZc2h2NkV5MG9CRXg3Rld3KzBCbi9qOUlO?=
 =?utf-8?B?TTJBdHdrbCt3bzVTM25NMFp6bDVUMytaWG5TczcwNUFINzQxUHdqeFJuVG85?=
 =?utf-8?B?M3lWenhJZXp5eEdMM3daVDM4dmpUemZRSVNhakFRdGM4dG50d0NLQmpHUks3?=
 =?utf-8?B?U2twd1BvK2ZTd0dZU2FGSUxwMEJUTjRqNEJ0aTFzOEN4Z2JhRXg4c0dYaUU3?=
 =?utf-8?B?ZW1la0lKeFRiWG54eDVZMlBTSkdzMmdLWkdxZlVVNFpYRmpFcVl0c2libndN?=
 =?utf-8?B?SjU0ckdkRk1qeGp3MVlLcXZUV0lVS2xkUitTNE5SYTcveUZoRHd5NVBxRFVp?=
 =?utf-8?B?dFVUZCtidG00K1N1dE9KTTloVmZuUURJM0N4Rmw4UHNkTm15c2dtb1BZQjVI?=
 =?utf-8?B?MUdQa1dSU2ZRR3NQOHBoa05EZE00N1c3bHE3bmh3QXpZVWs2Z1E3NEpJckNo?=
 =?utf-8?B?Z2NUQVVDbEVtTHJleVJKdnQzT2dGVDJ4aDZIWVFwVlEvQTc4TEpXeDNKZElS?=
 =?utf-8?B?akt2K0FrVVpiQUdXUFV0NEZzN3Z2NG1lblIwanJqL1JkTjFwRzNLRnV5cDUy?=
 =?utf-8?Q?2+bcnXK/MKeh0PVY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89a6adc3-cfd4-4b69-9af5-08de5f21f838
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:34:23.6065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kVqsj44uZ1Krgwef5tkAJaNtMJw2iCoevO5zuS8+TToHRUBsJ/WNyGzAez2RwmVvZqQsEuwwWlVQFMo9UNOVEIUk+XWE+XI5U9PHJ+Giqt4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682882; x=1801218882;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R2br6C+gPibL3Ac5wS5jnxmoSsPEFlO1t7nYyI6+Jso=;
 b=RnbLYOLs9Hn5xynFNAAS+A+kVFi06w88dnULtE4Tda8kuANEfWiDLVAK
 yGvsdPy4zKxDXABXBOOrF/GJD6vOgZ1T57HHFn0jsActSx+NzeIxHq+VL
 MoPhd6meCRnBKpFb8rIiEeia/96LOMD5pFtLcrSAqppU17EaBnZXX6NXv
 HqtnRv1CcvxvyaCOou+JNtdm/+o1jwwk5SqA96tdqnErMkFryCYc8CZxR
 i23sNHJZCTDN0ciFkLvGpf2ZN28+Rn5RNq5Jpvj+MaczWQJrB3aj0tEXo
 sGFc+ccVKoGXNDTLmApTqZ16XsIZDk8H+emgsV0y9zMMF2Sfi1Fzhd8J0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RnbLYOLs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 27/30] docs: kdoc_parser: minimize
 differences with struct_group_tagged
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:aleksander.lobakin@intel.com,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,lwn.net:email]
X-Rspamd-Queue-Id: 84060AED0C
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IExvYmFraW4sIEFsZWtzYW5kZXIgPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRl
bC5jb20+OyBKb25hdGhhbg0KPiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9jIE1h
aWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVybyBD
YXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdlci5r
ZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+IGhh
cmRlbmluZ0B2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYkBr
ZXJuZWwub3JnPjsNCj4gUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+IFN1
YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MyAyNy8zMF0gZG9jczoga2RvY19wYXJz
ZXI6DQo+IG1pbmltaXplIGRpZmZlcmVuY2VzIHdpdGggc3RydWN0X2dyb3VwX3RhZ2dlZA0KPiAN
Cj4gV2hpbGUgdGhlIHByZXZpb3VzIHZlcnNpb24gZG9lcyBhIGJldHRlciBqb2IgcmVwcmVzZW50
aW5nIHRoZSBhY3R1YWwNCj4gc3RydWN0LCBpdCBlbmRzIGxvc2luZyBkb2N1bWVudGF0aW9uIGZy
b20gZWFjaCBtZW1iZXIuDQo+IA0KPiBDaGFuZ2UgdGhlIHJlcGxhY2VtZW50cyB0byBtaW5pbWl6
ZSBzdWNoIGNoYW5nZXMuIFdpdGggdGhhdCwgdGhlIG9ubHkNCj4gZGlmZmVyZW5jZXMgYmVmb3Jl
L2FmdGVyIHVzaW5nIE5lc3RlZE1hdGNoIG5ldyByZXBsYWNlbWVudCBsb2dpYyBhcmUNCj4gKGF0
IG1hbiBwYWdlIG91dHB1dCk6DQo+IA0KPiAgICAgLS0tIGJlZm9yZS5sb2cgIDIwMjYtMDEtMjkg
MDY6MTQ6MjAuMTYzNTkyNTg0ICswMTAwDQo+ICAgICArKysgYWZ0ZXIubG9nICAgMjAyNi0wMS0y
OSAwNjozMjowNC44MTEzNzAyMzQgKzAxMDANCj4gICAgIEBAIC0xNTczNzAxICsxNTczNzAxIEBA
DQo+ICAgICAtLkJJICIgICAgc3RydWN0IGljZV9oZWFsdGhfdHhfaGFuZ19idWYgIHR4X2hhbmdf
YnVmOyINCj4gICAgICsuQkkgIiAgICBzdHJ1Y3QgaWNlX2hlYWx0aF90eF9oYW5nX2J1ZiB0eF9o
YW5nX2J1ZjsiDQo+ICAgICBAQCAtNDE1NjQ1MSArNDE1NjQ1MSBAQA0KPiAgICAgLS5CSSAiICAg
IHN0cnVjdCBsaWJldGhfZnFfZnAgIGZwOyINCj4gICAgICsuQkkgIiAgICBzdHJ1Y3QgbGliZXRo
X2ZxX2ZwIGZwOyINCj4gICAgIEBAIC00MTY0MDQxICs0MTY0MDQxIEBADQo+ICAgICAtLkJJICIg
ICAgc3RydWN0IGxpYmV0aF94c2tmcV9mcCAgZnA7Ig0KPiAgICAgKy5CSSAiICAgIHN0cnVjdCBs
aWJldGhfeHNrZnFfZnAgZnA7Ig0KPiAgICAgQEAgLTQyNjk0MzQgKzQyNjk0MzQgQEANCj4gICAg
IC0uQkkgIiAgICBzdHJ1Y3QgcGFnZV9wb29sX3BhcmFtc19mYXN0ICBmYXN0OyINCj4gICAgICsu
QkkgIiAgICBzdHJ1Y3QgcGFnZV9wb29sX3BhcmFtc19mYXN0IGZhc3Q7Ig0KPiAgICAgQEAgLTQy
Njk0NTIgKzQyNjk0NTIgQEANCj4gICAgIC0uQkkgIiAgICBzdHJ1Y3QgcGFnZV9wb29sX3BhcmFt
c19zbG93ICBzbG93OyINCj4gICAgICsuQkkgIiAgICBzdHJ1Y3QgcGFnZV9wb29sX3BhcmFtc19z
bG93IHNsb3c7Ig0KPiAgICAgQEAgLTQyNjk0NTQgKzQyNjk0NTQgQEANCj4gICAgIC0uQkkgIiAg
ICBTVFJVQ1RfR1JPVVAoIHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXY7Ig0KPiAgICAgKy5CSSAi
ICAgIHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXY7Ig0KPiANCj4gZS5nLiBiYXNpY2FsbHkgd2hp
dGVzcGFjZXMsIHBsdXMgYSBmaXggTmVzdGVkTWF0Y2ggdG8gYmV0dGVyIGhhbmRsZSAvKg0KPiBw
cml2YXRlICovIGNvbW1lbnRzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8g
Q2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9w
eXRob24va2RvYy9rZG9jX3BhcnNlci5weSB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9w
eXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9j
X3BhcnNlci5weQ0KPiBpbmRleCA1MGQ1N2M2Nzk5YmIuLjFlOGUxNTZlMmE5ZSAxMDA2NDQNCj4g
LS0tIGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+ICsrKyBiL3Rvb2xz
L2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBAQCAtMTI2LDcgKzEyNiw3IEBAIHN0
cnVjdF94Zm9ybXMgPSBbDQo+ICAgICAgIw0KPiAgICAgIChDRnVuY3Rpb24oJ3N0cnVjdF9ncm91
cCcpLCByJ1wyJyksDQo+ICAgICAgKENGdW5jdGlvbignc3RydWN0X2dyb3VwX2F0dHInKSwgcidc
MycpLA0KPiAtICAgIChDRnVuY3Rpb24oJ3N0cnVjdF9ncm91cF90YWdnZWQnKSwgcidzdHJ1Y3Qg
XDEgeyBcMyB9IFwyOycpLA0KPiArICAgIChDRnVuY3Rpb24oJ3N0cnVjdF9ncm91cF90YWdnZWQn
KSwgcidzdHJ1Y3QgXDEgXDI7IFwzJyksDQo+ICAgICAgKENGdW5jdGlvbignX19zdHJ1Y3RfZ3Jv
dXAnKSwgcidcNCcpLA0KPiANCj4gICAgICAjDQo+IC0tDQo+IDIuNTIuMA0KDQpSZXZpZXdlZC1i
eTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQoN
Cg==
