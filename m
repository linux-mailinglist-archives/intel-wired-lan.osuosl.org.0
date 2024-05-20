Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9058C97BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 May 2024 04:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03195401F6;
	Mon, 20 May 2024 02:03:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6hlbACWwEfMj; Mon, 20 May 2024 02:03:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EB1040263
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716170622;
	bh=FpfUiJqPbIzwrVHhe4GYwTvma5OCJ1QTtPUcqwtgFHs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mGSiND8aRqGMn/mzeV7yjWpCtQ65AaHn210gQkPX98VikF7C7z1bRPEIuAS0dcoX2
	 BhyvlsgR6bblBXYmqNiYop3yvQRsFRVhZZFlaZXPtj3L4DmrUwEXSCUGcX9726SBkg
	 nI7Sro+evjsu1gfT9uGZLvCWDA6FdRiFkFG7+obudhqfVQADXk4CFwDEkVLheBQKMe
	 mNURiBQdwM3b2Mk/yP9bEoeW0jAakPFTnngqeioXUCy31DYWUDlc657MVpILz8z3Bj
	 YVc/a289I7JDfjkMKUSjixuuQt7782nNibr38uQIs0bn4Fuq4OZsqNTBr9TpqmmjLv
	 prGHqwGR0d2Tg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EB1040263;
	Mon, 20 May 2024 02:03:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5315F1C452B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 02:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E6DA606B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 02:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b1aTkiYfeOs0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2024 02:03:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=rui.zhang@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EDA45605C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDA45605C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDA45605C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 02:03:38 +0000 (UTC)
X-CSE-ConnectionGUID: +xDAxt1KRhiVDx7Qb2XbYg==
X-CSE-MsgGUID: kdUsskoXRAqx1UpRe+9+8Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="16106257"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="16106257"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2024 19:03:39 -0700
X-CSE-ConnectionGUID: 0X2yqxmXTd6rBDpPENvJLw==
X-CSE-MsgGUID: 8C5dCkbcTZCNPlb3xTQsDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="63604599"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 May 2024 19:03:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 19 May 2024 19:03:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 19 May 2024 19:03:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 19 May 2024 19:03:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 19 May 2024 19:03:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kouvtJv2gMm2S9JirfDoYZ7k+M0NLsX/zLhy0I5rf2z7z4MWPGMqlDp2cMxebh0i1vvSRlRD+xkJBPP5MZuPw8o0qqqC8Sl4F7aKMOuwyhzql5Kl0hYy9CaXfRV60gMGOcbkbNq4cySn+crGpVOHCYurYSs13Txac4dSsg57h33Sc9yZNzwrKf/A+/33smDkqiSBOgKNkTCLUgRVqJnwnm/X9DZ9uv3Tf+hT7uIUZgtvbl4K7YOc+tBBzxpzSFrJamr1lO+8laUVAO1751FUxYz57vLWyJCE4m+wcnFw/FEcjryqZW6OnIAbb38Ys0482dy+uFimo5inCcxP/HTtgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpfUiJqPbIzwrVHhe4GYwTvma5OCJ1QTtPUcqwtgFHs=;
 b=H4dJNZOdn/nRlkh6a/mnPa9tI6YcAY6dsiE8GoETKsKC8QX9gtsvm9XOG/pQFUD3JYOEi5Pn4qb0tZlh24sL1rwmjdHB81s9RFbBC/YxeGsoYw/Mb//yWVtazRBXXcEPBZI8gIziYxnxtQCKcF6M06X+10hlqyUst0hRLrpyCo1qW3uf+DQKACn8MzuVaVxjCxY4JcYHJbyiUFmcx+lxqHGmVG7jiUnlSBfgKJm3UyWErA02XbZUpvvhDTDP22p5qf+H6pXQEM5i6rtcqWIdpJEJ4cMs2ooRJIrzRSFT48M9yBPnkcT2MBaX8pqStwHCeqmcGpWxgJ34q/Lf9iugxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6622.namprd11.prod.outlook.com (2603:10b6:a03:478::6)
 by CH0PR11MB8191.namprd11.prod.outlook.com (2603:10b6:610:181::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.29; Mon, 20 May
 2024 02:03:34 +0000
Received: from SJ0PR11MB6622.namprd11.prod.outlook.com
 ([fe80::e620:6fe3:711c:a6bb]) by SJ0PR11MB6622.namprd11.prod.outlook.com
 ([fe80::e620:6fe3:711c:a6bb%5]) with mapi id 15.20.7587.030; Mon, 20 May 2024
 02:03:34 +0000
From: "Zhang, Rui" <rui.zhang@intel.com>
To: "naamax.meir@linux.intel.com" <naamax.meir@linux.intel.com>,
 "hui.wang@canonical.com" <hui.wang@canonical.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Lifshits, 
 Vitaly" <vitaly.lifshits@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>, "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [iwl-net][PATCH v3] e1000e: move force SMBUS
 near the end of enable_ulp function
Thread-Index: AQHaqlnrDUnTMQVHDEmFxRlID4gb9A==
Date: Mon, 20 May 2024 02:03:34 +0000
Message-ID: <34924fb0423c44c4ce39cf897bb8b2956e6ea66b.camel@intel.com>
References: <20240517135059.10646-1-hui.wang@canonical.com>
In-Reply-To: <20240517135059.10646-1-hui.wang@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6622:EE_|CH0PR11MB8191:EE_
x-ms-office365-filtering-correlation-id: 8b2431ac-579b-4373-e929-08dc78710e6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|1800799015|366007|376005|921011|38070700009; 
x-microsoft-antispam-message-info: =?utf-8?B?U1V2cVYwUi9pVTRzWnJ0KzFZbkUvMldtRTBOeUdzM1VVUlYyaklNK2s1dDZ5?=
 =?utf-8?B?TU43WGVXVytMdDlWTFN1WVcwUTVyY3N5VDMyMFFlTjBUdStNMmU5MThURU41?=
 =?utf-8?B?MWFVckVXajY0cjk5bythRk5NRmdGaWFyVGg4cFVzK2d1R0RjZlY5M0VEQzlU?=
 =?utf-8?B?M3JEZnY4TTdEOGxySVJhVENScTAvRlhrZnlwYSs4dElSTy9WbWhoNlByR01Y?=
 =?utf-8?B?aldZSmR0eS8zaEQyWVBPRVZHM3Z4SmZ0bDFMeHRTMjVkS1NPM2U4cFVTeWVp?=
 =?utf-8?B?bVdndDZLQjJGR2hjYlFFNWljZ05kZ0ZXRGF6L1hzSGRpelN5Z1hvN3REZllh?=
 =?utf-8?B?eHNoMmd6aEUxbnRScTEwL1FLZzNIUHVQNG9QV0Y0RU5WMURrS3lGblBxbjRJ?=
 =?utf-8?B?SmdsdE9ibVFGMUtlZDFkQm5GRk1ybTN6aTQ1WkNhOHZkelJTYkhRTlJJVFJZ?=
 =?utf-8?B?NStrV1BaY09YMjB5VG5DN2NrY28vQUpoVUtCVkwrV21HU3oxN3BvSHhPNE9D?=
 =?utf-8?B?WEF2WHlWL01PblJpa05aaW02c2RzbEhOUVBBbnJlcHoyM1l3dkxjeVR1QW1o?=
 =?utf-8?B?KzA2eWJGVFU0bzFlNXhQUFRGZlY3UjVKQUtwTHFsdEt2K0VvNnRMNDYzYjJo?=
 =?utf-8?B?T3FlLzIvUm04S3pTMld3QjdsblFLdVZrL1FyS1h6L2FaOGZPVFhTV3l5eHpT?=
 =?utf-8?B?djFCUTU2aDdFRFNwMU1HTUhEa3R0d2pQQTR1VDduK0w5a0FjRUNpS0xhMnZQ?=
 =?utf-8?B?YTM1djltK1V4enVPL1k1VjA0SDAvR3FGNFVkRlJRcXZhZ3YzY1ExVUxmOE9D?=
 =?utf-8?B?NkdNVmkyY2szQ1pycEdDQmtzbFE2VzdtVHVKMng0KytIMGZTTTE4VkZiTjd5?=
 =?utf-8?B?NkJUcXBNbTVpbU1SOVhGNldGNS9wMVVCYlNVdjBaWjZoYlV3Q3pYWlp5Q01I?=
 =?utf-8?B?eW1oTlJWaVJ3UG9EV0NRTmx0MVJkYTdiZDgxWEpjY2czL0xxWnA2c0R6YnM2?=
 =?utf-8?B?ckZHZGdQT0xWaExUTlhyT2xidHkxdGJ6VUNnVXNRdUM0WVpxSklQL2dWRFVL?=
 =?utf-8?B?akx4Qm93aWd1UUltR1FVWkFQRXFYdFdCQVFPeEI4MCs3ejlKN2lpSGdWZlV0?=
 =?utf-8?B?OE5pU0EzMURZcmlVWnJvejFPQ1BhTjV2aWV2WXkreXlpVDVsc2U3MkhCUHJS?=
 =?utf-8?B?VGIvMVYyUXUveGN3dGxsbHNvR0s2OWpOL21XSzlCSS9Za0hMKzdIR2h5YUp3?=
 =?utf-8?B?d1p1OUlxbkVTZzBRYk1BamovTkRpSmQ3eElNSG56eGlvcUlsZTJUYVJIdkNQ?=
 =?utf-8?B?T05XaXZxRmtjNHR0bWNmcExaeVIvMXhPRTFWUVJuNDI2cVllZjY0OEZndFlC?=
 =?utf-8?B?dHA3eGhTQ3VBQnU4ZXh0dnpadHVaTVNYdStOT1dMNTB3ZExoSERpZ2ltdWha?=
 =?utf-8?B?ZEdreWFDQkF0T0J5STBUazNxd3hkTlB0YXhTQjZIRm01c0FHTmpXRmVvNEtU?=
 =?utf-8?B?Y1NnMzlnUmt1M2prUStpSmhWUWx5U2ErZWdKVU5DVlRwbHVOVkN5cUM4NDZs?=
 =?utf-8?B?NE9vZ3pIQ3pUbUdoTDB2M1FzVGJlNW5xRFNDbmdQenRGQ2xQdG11R0xYK0FM?=
 =?utf-8?B?bnFYbFRmbHJWTERya2c5Si9CYTA2SC9SYXFjZ1Y4RmtaY3hNak1RbGxYd1d4?=
 =?utf-8?B?bGJPbmNzTGdGNWNLbGt5Q0ZNbyt4N1B1Znp0dFd4dXd2Wjd5endueEJzdS95?=
 =?utf-8?Q?BtgBRWMDtABBt41Zf4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6622.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(921011)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkZOWU1PY09tdzI5M3h5emtiUGZ3Q09WYmtmSmRtcWY2U0xPOWN1Zkp0L1E2?=
 =?utf-8?B?ODQ0Nk9sb3IyUS9YSm53Yk9CWU9wdDBvZUFwMkV5ajBTbHVLblpiY1YrZ0k0?=
 =?utf-8?B?cDhOT2JuSjVFd05tak4wM3o2cGhlY0tOTHpDclJhcmZRQXVMRnFUTXVDNnVn?=
 =?utf-8?B?R0haKzJJeS9ocnBqT2FvWTVxdGM2YmluaFowMU45Vm5Lakc5S1N5ZXpRai9y?=
 =?utf-8?B?cFZtcnJqL1RxK0JFbmVOS210NXh3NmNhV2psS2c2K3ZoMkRySnhsNXR1VFov?=
 =?utf-8?B?cFBaVlkvdzBBeFRjN2ZPWGFaNkF0Ry92TDMxaE53SzlEejV3VnpLMTUwaE9N?=
 =?utf-8?B?OThraVZlMEJaS3I0MldKd29wUEN6WGxySUlQaEpFNFlGWW9nbXppcWNFRGlq?=
 =?utf-8?B?YTluNk1YcFZoZEhRdjZhMmpET0ZpcTRTUFdpWmJoLzF1clA2Wi9ETkgweWRn?=
 =?utf-8?B?VGxZY1Z2WU9pREU2VkZkMUlBMjQrV3UwUzF0cG9GbVg5SXF4NDVNY0VxOC93?=
 =?utf-8?B?SkxhcDhuaUxMVFNmNFFJL3dETWQ5K2NDTmUrY1NXZGVHbjdyQ24vTDlXc3hG?=
 =?utf-8?B?Wm5oNWxEUkYrWENTVUtNdVdybGNJSWZHWU9zSm8xdW9tNVFIRC94V0dIeUhv?=
 =?utf-8?B?dzlrajhBclFjNCsyMGkrOTJsR3MrdmZ3VDFSZ28zbFlrV0JiS2QwN1hXOGxM?=
 =?utf-8?B?SlVQcWF0ekVFQWp3emhoaUE5Q215WE8yRTFCUGxiV0FyKy9lN0MyTXZOWTI4?=
 =?utf-8?B?MjFhUXhtdk94TVRwVm9iOXZQYXJtYVRwMDZsR0ExZmRoN0tLNW5FWWNiZHNp?=
 =?utf-8?B?SEtRR1VUbWFjZ3JTZU5jdFF6K2lGdFA0SmJNSWFEeGRmbzB5Yk5nRlhuSXVm?=
 =?utf-8?B?Y2duWkxDUTBPMDFzSWp3Nm90RDZnM0NMamZlTXIrTnlxZ0JLbkthS3U3R3JD?=
 =?utf-8?B?SG9QdDFBMFRJSGNIZVUrdUZCeEsrQTExcENvTjlCVmN1T1JCZWgzMy9oeGVq?=
 =?utf-8?B?M2JZRHg5MGpTM0l4eWZUMk5iV1JZMVNaY1Y0Ry9iS2lCM0VLeWVMQmRpNW1i?=
 =?utf-8?B?ekN2VUlUNi9pSnV3NkUzZHBsNlZMQTRSUTlKejIrMUZlRUZtR3h2b0REYkRM?=
 =?utf-8?B?M0NxQVB1Ym9xdEQwaEFXeFE5ZUdUSElWdFdIL1F1OGw1VmwxcFVReDlmc0Ix?=
 =?utf-8?B?OTNUSFY1bW5IL25xSTZZenRhSWlobi93ZStkZURsdUszOFlqNDlPTTBsbHRV?=
 =?utf-8?B?T2UzcjVSejhDUlVhWG1rMHBFNzB2eld3clJBMVRiZkdDSUsrU0tsWnhEcEYz?=
 =?utf-8?B?NzJudGZPZ3Uza1pkKzh5alkzZ2JlTDBGaUNlak5rQ3JXTGh5UmwyaTVrSmFJ?=
 =?utf-8?B?dk5lcTdNaklYSW8zbTFSUXhITjRydnpLandDZEdzdzc2MHpCZUw0bE0ybHJL?=
 =?utf-8?B?aHl0ak9Yb0ZRdTJ0L0xHTzI2TWhUQ3BTSGlIMEQxbitpeklBMWtLU3lxSVMy?=
 =?utf-8?B?ZkFXbkc2UkxCS3pEM282MVh1QloyYUpmTDFCTmI5N2xiRTNvb2NPRUFaRUdm?=
 =?utf-8?B?c1F5emFLSDZOVEZhUXAxV05sTE1jZHNFa3pFYms0WUpMRWdZRE80MFdFbnZV?=
 =?utf-8?B?UUdBTXkraHZnVXA0eU0xNkJDYXJZazUva1ZBQmtrbnhjVDhoaHdNdXBkWE13?=
 =?utf-8?B?MzlBQjhlbE4rQXFoZ2J3N1JGMWdremxlVmczUG9LUmtwaGFPbnJrVFhKaVVm?=
 =?utf-8?B?dVpQWlhtNElSbjgydlZ5Y0Vib0tmVTVnZWhqNEdMQXhlOVZGNktFZVhCVVE1?=
 =?utf-8?B?Z0hXK2laQnlzV3E1Z0hoZlVjTitYZHNhZXNncEY3T2xzOUpLUTFsdFhsZThh?=
 =?utf-8?B?czFnOHl3amlMUUQ5clRaZmVOZUF6VDhYRVVBaWcxWDlHYTFNNlRBTXZhdEwz?=
 =?utf-8?B?MTZaanBIWCswdzdWK21uTzFyTnVMQlE4LzRnZTdXSC9SRW1hWnp2V0J4Nzg0?=
 =?utf-8?B?aEZQS3V4WUkxZU1sb21xN0VVaGQrdmdGaEtkNnpyT0Mya243YTJ3RUpVb0Rs?=
 =?utf-8?B?Q1NKWWFMdGJyeVN5R1VVdCtFTTFtd2g2VVpVeEQ5a05qWjhIR2Y4V0NnNW1F?=
 =?utf-8?B?Qy9lWDVPSm1tdjEwUkM4cFh1dUVya0hqQ2ZqQkVjNS9yNE5UcU9nelpOTmkr?=
 =?utf-8?B?VEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1DD969C7BC5FB7428B219AF0677B8024@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6622.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b2431ac-579b-4373-e929-08dc78710e6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2024 02:03:34.8236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: djUppvi5hqytdEpcrlajw+iIrdLEpNGwAotaBl7YZFc9Rx4HTEUJTgnRmRAopwQ2NLNo+qe6oiNzmC94BiKV5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716170620; x=1747706620;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=FpfUiJqPbIzwrVHhe4GYwTvma5OCJ1QTtPUcqwtgFHs=;
 b=EemxTWSf7bRkp8LubzeZXMeW4+/RCoBvdfefFoUU3iEJAVGiuK2E1vdC
 tXR4tc/jMALkiv3Zi+yD1cJUH6HPKNwa2vFKyQOs9p+QxGXVtAijHvRLx
 geGKbRcOtD4bNaSC81xXDLyVm1HzufTDXFeNXeiJux4sFXo6x4U94Nirh
 towrWD2Iqm/r8g++idv/bkn0yXALAIJ8VLkkc/z4Ft7Czobd9pcXOELD9
 4Ds9bs/WzKP7GvfIXQm4RqIe4qAnQxi1Wh9Uie1JGo7x6dlA/Jz6C1Yme
 QrvkMt3WeUL4YsrobxQtmvEGGcluKR3c9VeiH6dLQmfRjEqfDMyeINcOk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EemxTWSf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net][PATCH v3] e1000e: move force SMBUS
 near the end of enable_ulp function
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMDI0LTA1LTE3IGF0IDIxOjUwICswODAwLCBIdWkgV2FuZyB3cm90ZToKPiBUaGUg
Y29tbWl0IDg2MWU4MDg2MDI5ZSAoImUxMDAwZTogbW92ZSBmb3JjZSBTTUJVUyBmcm9tIGVuYWJs
ZSB1bHAKPiBmdW5jdGlvbiB0byBhdm9pZCBQSFkgbG9zcyBpc3N1ZSIpIGludHJvZHVjZXMgYSBy
ZWdyZXNzaW9uIG9uCj4gUENIX01UUF9JMjE5X0xNMTggKFBDSUlEOiAweDgwODY1NTBBKS4gV2l0
aG91dCB0aGUgcmVmZXJyZWQgY29tbWl0LAo+IHRoZQo+IGV0aGVybmV0IHdvcmtzIHdlbGwgYWZ0
ZXIgc3VzcGVuZCBhbmQgcmVzdW1lLCBidXQgYWZ0ZXIgYXBwbHlpbmcgdGhlCj4gY29tbWl0LCB0
aGUgZXRoZXJuZXQgY291bGRuJ3Qgd29yayBhbnltb3JlIGFmdGVyIHRoZSByZXN1bWUgYW5kIHRo
ZQo+IGRtZXNnIHNob3dzIHRoYXQgdGhlIE5JQyBsaW5rIGNoYW5nZXMgdG8gMTBNYnBzICgxMDAw
TWJwcwo+IG9yaWdpbmFsbHkpOgo+IAo+IMKgwqDCoCBbwqDCoCA0My4zMDUwODRdIGUxMDAwZSAw
MDAwOjAwOjFmLjYgZW5wMHMzMWY2OiBOSUMgTGluayBpcyBVcCAxMAo+IE1icHMgRnVsbCBEdXBs
ZXgsIEZsb3cgQ29udHJvbDogUngvVHgKPiAKPiBXaXRob3V0IHRoZSBjb21taXQsIHRoZSBmb3Jj
ZSBTTUJVUyBjb2RlIHdpbGwgbm90IGJlIGV4ZWN1dGVkIGlmCj4gInJldHVybiAwIiBvciAiZ290
byBvdXQiIGlzIGV4ZWN1dGVkIGluIHRoZSBlbmFibGVfdWxwKCksIGFuZCBpbiBteQo+IGNhc2Us
IHRoZSAiZ290byBvdXQiIGlzIGV4ZWN1dGVkIHNpbmNlIEZXU01fRldfVkFMSUQgaXMgc2V0LiBC
dXQKPiBhZnRlcgo+IGFwcGx5aW5nIHRoZSBjb21taXQsIHRoZSBmb3JjZSBTTUJVUyBjb2RlIHdp
bGwgYmUgcmFuCj4gdW5jb25kaXRpb25hbGx5Lgo+IAo+IEhlcmUgbW92ZSB0aGUgZm9yY2UgU01C
VVMgY29kZSBiYWNrIHRvIGVuYWJsZV91bHAoKSBhbmQgcHV0IGl0Cj4gaW1tZWRpYXRlbHkgYWhl
YWQgb2YgaHctPnBoeS5vcHMucmVsZWFzZShodyksIHRoaXMgY291bGQgYWxsb3cgdGhlCj4gbG9u
Z2VzdCBzZXR0bGluZyB0aW1lIGFzIHBvc3NpYmxlIGZvciBpbnRlcmZhY2UgaW4gdGhpcyBmdW5j
dGlvbiBhbmQKPiBkb2Vzbid0IGNoYW5nZSB0aGUgb3JpZ2luYWwgY29kZSBsb2dpYy4KPiAKPiBU
aGUgaXNzdWUgd2FzIGZvdW5kIG9uIGEgTGVub3ZvIGxhcHRvcCB3aXRoIHRoZSBldGhlcm5ldCBo
dyBhcyBiZWxvdzoKPiAwMDoxZi42IEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBD
b3Jwb3JhdGlvbiBEZXZpY2UKPiBbODA4Njo1NTBhXQo+IChyZXYgMjApLgo+IAo+IEFuZCB0aGlz
IHBhdGNoIGlzIHZlcmlmaWVkIChjYWJsZSBwbHVnIGFuZCB1bnBsdWcsIHN5c3RlbSBzdXNwZW5k
Cj4gYW5kIHJlc3VtZSkgb24gTGVub3ZvIGxhcHRvcHMgd2l0aCBldGhlcm5ldCBodzogWzgwODY6
NTUwYV0sCj4gWzgwODY6NTUwYl0sIFs4MDg2OjE1YmJdLCBbODA4NjoxNWJlXSwgWzgwODY6MWEx
Zl0sIFs4MDg2OjFhMWNdIGFuZAo+IFs4MDg2OjBkYzddLgo+IAo+IEZpeGVzOiA4NjFlODA4NjAy
OWUgKCJlMTAwMGU6IG1vdmUgZm9yY2UgU01CVVMgZnJvbSBlbmFibGUgdWxwCj4gZnVuY3Rpb24g
dG8gYXZvaWQgUEhZIGxvc3MgaXNzdWUiKQo+IFNpZ25lZC1vZmYtYnk6IEh1aSBXYW5nIDxodWku
d2FuZ0BjYW5vbmljYWwuY29tPgo+IEFja2VkLWJ5OiBWaXRhbHkgTGlmc2hpdHMgPHZpdGFseS5s
aWZzaGl0c0BpbnRlbC5jb20+Cj4gVGVzdGVkLWJ5OiBOYWFtYSBNZWlyIDxuYWFtYXgubWVpckBs
aW51eC5pbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVs
Lm9yZz4KPiBSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4K
PiBTaWduZWQtb2ZmLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+
CgpUaGlzIGluZGVlZCBmaXhlcyBhbm90aGVyIGZyZWV6ZSByZWdyZXNzaW9uIG9uIGFuIEludGVs
IEJyb2Fkd2VsbCBOVUMsCmFzIHJlcG9ydGVkIGluIGJlbG93IHRocmVhZCwKaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtbGFuLzIwMjQwNTE1MDk0Mi5mOWI4NzNiMS1vbGl2ZXIu
c2FuZ0BpbnRlbC5jb20vCgpUZXN0ZWQtYnk6IFpoYW5nIFJ1aSA8cnVpLnpoYW5nQGludGVsLmNv
bT4KCnRoYW5rcywKcnVpCgo+IC0tLQo+IEluIHRoZSB2MzoKPiBhZGRyZXNzZWQgUGF1bCdzIGNv
bW1lbnQgYWJvdXQgY29tbWl0IGhlYWRlciwKPiDCoC0gQ2hhbmdlIENIX01UUF9JMjE5X0xNMTgg
dG8gUENIX01UUF9JMjE5X0xNMTgKPiDCoC0gQ2hhbmdlIExpbmsgdG8gbGluawo+IMKgLSBBZGQg
YSBibGFuayBsaW5lIGFuZCBmb3VyIHNwYWNlcyBpbmRlbnQgZm9yIFvCoMKgIDQzLjMwNTA4NF0g
ZTEwMDBlCj4gMDAwMDowMDoxZi42Cj4gwqAtIENoYW5nZSBpbW1lZGlhdGUgdG8gaW1tZWRpYXRl
bHkKPiDCoC0gQWRkIHN5c3RlbSBpbmZvIGFib3V0IHJlcHJvZHVjZWQgdGhlIGlzc3VlIGFuZCB2
ZXJpZmllZCB0aGUgZml4Cj4gCj4gwqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
aWNoOGxhbi5jIHwgMjIKPiArKysrKysrKysrKysrKysrKysrKysKPiDCoGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuY8KgIHwgMTggLS0tLS0tLS0tLS0tLS0tLS0KPiDC
oDIgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMK
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPiBpbmRleCBm
OWU5NGJlMzZlOTcuLjJlOThhMmEwYmVhZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+IEBAIC0xMjI1LDYgKzEyMjUsMjggQEAgczMyIGUxMDAw
X2VuYWJsZV91bHBfbHB0X2xwKHN0cnVjdCBlMTAwMF9odwo+ICpodywgYm9vbCB0b19zeCkKPiDC
oMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4gwqByZWxlYXNlOgo+ICvCoMKgwqDCoMKgwqDCoC8qIFN3
aXRjaGluZyBQSFkgaW50ZXJmYWNlIGFsd2F5cyByZXR1cm5zIE1ESSBlcnJvcgo+ICvCoMKgwqDC
oMKgwqDCoCAqIHNvIGRpc2FibGUgcmV0cnkgbWVjaGFuaXNtIHRvIGF2b2lkIHdhc3RpbmcgdGlt
ZQo+ICvCoMKgwqDCoMKgwqDCoCAqLwo+ICvCoMKgwqDCoMKgwqDCoGUxMDAwZV9kaXNhYmxlX3Bo
eV9yZXRyeShodyk7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoC8qIEZvcmNlIFNNQnVzIG1vZGUgaW4g
UEhZICovCj4gK8KgwqDCoMKgwqDCoMKgcmV0X3ZhbCA9IGUxMDAwX3JlYWRfcGh5X3JlZ19odl9s
b2NrZWQoaHcsIENWX1NNQl9DVFJMLAo+ICZwaHlfcmVnKTsKPiArwqDCoMKgwqDCoMKgwqBpZiAo
cmV0X3ZhbCkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlMTAwMGVfZW5hYmxl
X3BoeV9yZXRyeShodyk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGh3LT5waHku
b3BzLnJlbGVhc2UoaHcpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIG91
dDsKPiArwqDCoMKgwqDCoMKgwqB9Cj4gK8KgwqDCoMKgwqDCoMKgcGh5X3JlZyB8PSBDVl9TTUJf
Q1RSTF9GT1JDRV9TTUJVUzsKPiArwqDCoMKgwqDCoMKgwqBlMTAwMF93cml0ZV9waHlfcmVnX2h2
X2xvY2tlZChodywgQ1ZfU01CX0NUUkwsIHBoeV9yZWcpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBl
MTAwMGVfZW5hYmxlX3BoeV9yZXRyeShodyk7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoC8qIEZvcmNl
IFNNQnVzIG1vZGUgaW4gTUFDICovCj4gK8KgwqDCoMKgwqDCoMKgbWFjX3JlZyA9IGVyMzIoQ1RS
TF9FWFQpOwo+ICvCoMKgwqDCoMKgwqDCoG1hY19yZWcgfD0gRTEwMDBfQ1RSTF9FWFRfRk9SQ0Vf
U01CVVM7Cj4gK8KgwqDCoMKgwqDCoMKgZXczMihDVFJMX0VYVCwgbWFjX3JlZyk7Cj4gKwo+IMKg
wqDCoMKgwqDCoMKgwqBody0+cGh5Lm9wcy5yZWxlYXNlKGh3KTsKPiDCoG91dDoKPiDCoMKgwqDC
oMKgwqDCoMKgaWYgKHJldF92YWwpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL25ldGRldi5jCj4gaW5kZXggMzY5MmZjZTIwMTk1Li5jYzhjNTMxZWMzZGYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gQEAgLTY2MjMsNyAr
NjYyMyw2IEBAIHN0YXRpYyBpbnQgX19lMTAwMF9zaHV0ZG93bihzdHJ1Y3QgcGNpX2Rldgo+ICpw
ZGV2LCBib29sIHJ1bnRpbWUpCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBlMTAwMF9odyAqaHcg
PSAmYWRhcHRlci0+aHc7Cj4gwqDCoMKgwqDCoMKgwqDCoHUzMiBjdHJsLCBjdHJsX2V4dCwgcmN0
bCwgc3RhdHVzLCB3dWZjOwo+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0dmFsID0gMDsKPiAtwqDC
oMKgwqDCoMKgwqB1MTYgc21iX2N0cmw7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgLyogUnVudGlt
ZSBzdXNwZW5kIHNob3VsZCBvbmx5IGVuYWJsZSB3YWtldXAgZm9yIGxpbmsgY2hhbmdlcwo+ICov
Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChydW50aW1lKQo+IEBAIC02Njk3LDIzICs2Njk2LDYgQEAg
c3RhdGljIGludCBfX2UxMDAwX3NodXRkb3duKHN0cnVjdCBwY2lfZGV2Cj4gKnBkZXYsIGJvb2wg
cnVudGltZSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAocmV0dmFsKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0dmFsOwo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgfQo+IC0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyog
Rm9yY2UgU01CVVMgdG8gYWxsb3cgV09MICovCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoC8qIFN3aXRjaGluZyBQSFkgaW50ZXJmYWNlIGFsd2F5cyByZXR1cm5zIE1ESSBlcnJvcgo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBzbyBkaXNhYmxlIHJldHJ5IG1lY2hh
bmlzbSB0byBhdm9pZCB3YXN0aW5nIHRpbWUKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICovCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGUxMDAwZV9kaXNhYmxlX3Bo
eV9yZXRyeShodyk7Cj4gLQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlMWVfcnBo
eShodywgQ1ZfU01CX0NUUkwsICZzbWJfY3RybCk7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHNtYl9jdHJsIHw9IENWX1NNQl9DVFJMX0ZPUkNFX1NNQlVTOwo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBlMWVfd3BoeShodywgQ1ZfU01CX0NUUkwsIHNtYl9jdHJsKTsK
PiAtCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGUxMDAwZV9lbmFibGVfcGh5X3Jl
dHJ5KGh3KTsKPiAtCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIEZvcmNlIFNN
QnVzIG1vZGUgaW4gTUFDICovCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGN0cmxf
ZXh0ID0gZXIzMihDVFJMX0VYVCk7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGN0
cmxfZXh0IHw9IEUxMDAwX0NUUkxfRVhUX0ZPUkNFX1NNQlVTOwo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBldzMyKENUUkxfRVhULCBjdHJsX2V4dCk7Cj4gwqDCoMKgwqDCoMKgwqDC
oH0KPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqAvKiBFbnN1cmUgdGhhdCB0aGUgYXBwcm9wcmlhdGUg
Yml0cyBhcmUgc2V0IGluIExQSV9DVFJMCgo=
