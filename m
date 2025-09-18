Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D5DB83ADC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 11:04:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 808FC414D6;
	Thu, 18 Sep 2025 09:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3bQNn_Iy1zk; Thu, 18 Sep 2025 09:04:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E827F41534
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758186273;
	bh=f/SDQljCAjddrGb+DsV/WtdDU9vaaehYHFmPbBBMQ7o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u+PUNIHpcnDHQws9F2yqnIoJSw6HcuiMTisqRMAZqYZFmrHlBhpb7Mr7NqbEVolbf
	 BkEoGvV6TdqSNNAFm2lshW7rMX+RhCedgsA3l0eZjpSSg+smYuVjCB96ZNRKTSC7ke
	 7ZWOeSTV/Bb36ILx3BDkl2XS7abo0pjgZxGJVN9cJVjiKKTPfP9sKjJWNmDJsi89WB
	 Tvr6VTrM2wk7w7UT46SyzWkledJU2HI+46WUUmJ/8LO9E/C2vUurCgRBiF+PoCj58P
	 y4/Zd8QY1MCdmqxmlZNmPYZ0PCQ0LGT4AMd0PRplwsF3dEYklA+1QfOJil6NrQzaSB
	 2SdIa04IOYAOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E827F41534;
	Thu, 18 Sep 2025 09:04:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 454CF199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:04:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BFC260E77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:04:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iUaop3lEct2O for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 09:04:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6792060E49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6792060E49
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6792060E49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:04:30 +0000 (UTC)
X-CSE-ConnectionGUID: 0PW/Ch24Qq27+FZCb2i8ww==
X-CSE-MsgGUID: rFoQbKhoTs+wfpnCLxhCgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71935537"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71935537"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:04:29 -0700
X-CSE-ConnectionGUID: 50uCY9vwQky0x1LzK/CeQA==
X-CSE-MsgGUID: W8+B80VrSwupdxNUilR+PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="174766131"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:04:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:04:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:04:29 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.34) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:04:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KyXGguKFPzZvhX4P0teTZxsKkTtL7rNQEWRX/qP9w6g/GRhekFVOyEqMUpNVVp39UsMK2fk9kd/o/0OiGuAjFyRZ0118FmIzOtnq76HEHV0Ieu8TCswdJTEVGOO9SWbyqNHge0Q03DOtslJMWYV4wbj8sxER9XSFEQf8mlKT/6o3zoZ1nSJLQmrZbsuVl3AqgM0lH3iMb841mLAZD7XjJo9rVPKc8QvJTIPnsZ2Oa3J+lKZxUlXjDEKzta8f7Ox41ZMzBk5ysC6MRRq7unVkJ3IOBMRh2LLmlBCUAggrDKn01BAAt4bazohp5+xyRvbH1XMxN5DN+DONPc2pLFd1CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f/SDQljCAjddrGb+DsV/WtdDU9vaaehYHFmPbBBMQ7o=;
 b=NWTybHAIJUCNpPzN+X4EUwEMupkOGIuts6xy2lsCKjaIQCxF5T68zRmoSANMPLLbyZDYBLrdLhVroRuvYfKdAA/AHEyiQxf0s4yYHYpVRWKw9Kc2jAQ3/eQxXnQb5n/6A51O8kewOzqOVhZB+kYCOga3cJBzJ9T+E09Z9lcRfTQoRUhrdRELItw0xE2SQGN099kRi2v3P4Zm+h7ON/+QIADqDIBlPMPjc+Dlh2GAzm5eiUyAZFMZ2hqmrWEdeCYYj72Y4WgbnRq1YGpmAxTYr9w0EjAkCRqcJjnVEVP+VoZdt/b5rYuMtTzx2ivnTHEQiWKvqpe5c/4S4IhtaeV4pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 09:04:19 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Thu, 18 Sep 2025
 09:04:19 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>, "Kyle,
 Jeremiah" <jeremiah.kyle@intel.com>, "Pepiak, Leszek"
 <leszek.pepiak@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 7/8] i40e: add mask to apply
 valid bits for itr_idx
Thread-Index: AQHcDD+Ita9cchzPmEGv2GlPMO/NZLR1NgwAgAA4aoCAI29v0A==
Date: Thu, 18 Sep 2025 09:04:19 +0000
Message-ID: <IA3PR11MB89854C1F24FFDC4F1CBA4F588F16A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-8-przemyslaw.kitszel@intel.com>
 <20250826163420.GE5892@horms.kernel.org>
 <dd0590ba-f791-4a1a-9748-abfdf661aa39@intel.com>
In-Reply-To: <dd0590ba-f791-4a1a-9748-abfdf661aa39@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SJ0PR11MB5183:EE_
x-ms-office365-filtering-correlation-id: 5a83bad6-d2c3-4856-bdf9-08ddf6925a4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?RWpaRnNEK0dVeEhUODFGNi9aR2JSY0hrd2pxNWNmbXAyQVQ3OUdBRTRuemVI?=
 =?utf-8?B?eG9IT0RPZmg0OCtGU2dySFEwRGdkV0djOE9aMGF3OEszNkNWQkxFZEo2V2JW?=
 =?utf-8?B?OThCWUx0MHhVTVo2S2tDT3B1bHZFNXlFSTBjRG9kN2hSQW1KZVpJNzVqcEF4?=
 =?utf-8?B?dHNZL0tJbmNXT2pnWTNmVjg3Z1kxRGhyRmtwTzYwbVRtT0tXZndncEZGMjJm?=
 =?utf-8?B?dk9DbHpHbENtVEZrNUIyRjBGQkp0ajEyVkpVTHdiRW9sS0xnSk5IeUV3c2Vp?=
 =?utf-8?B?VnJtcVJlNHNwM3hybHZjWTdvMHViUFB0MGs4STZwMG9LSXBqR2VSRVhSQis2?=
 =?utf-8?B?ZTNpcGlkWFlGVTZYeVh6dnNmWDg2Q2FzZzFBbUtvcHZvckpUTlMyanRhK01r?=
 =?utf-8?B?THVjUEVBY3hZWTJwTjlJcWRNdklDR3dWTE1PWVVVbEVGRUwrNW52REtMZzNl?=
 =?utf-8?B?eGVlK205UzVDbDJlZlphR1I2OXhsY25PTWsxRFYvbmE1MG50ZlhtbVdqWXhE?=
 =?utf-8?B?RUV5cldHa3FFcWlyL2x1Y05BR2V4UWY4a0hnd3cveTE4MjJNb2w5RnhXWmlp?=
 =?utf-8?B?VFlhTTg1dlM2bHV2ckJKQkpCYW9FVHI2a3c2bCsxeWh2dUVsa3hacHBvQm9X?=
 =?utf-8?B?T1A3ODF5ZVRvalZzTVFwZUk2SkkxcjB3dFdGR3FmcHQ0QTkvempoWE04T2F1?=
 =?utf-8?B?V05WQWI2VnFrWWFaSW84WHc0ZmJoK0FyVVR1bHpqSDVVUTNQR3Y0WitLSUVv?=
 =?utf-8?B?LzFrWXhFQmN6TFpVeElVUUpZck9YOVBOQUlUVTNXdWpOSGViK0hEVmVGZnBH?=
 =?utf-8?B?OTFQVHFPUWEzajZWVnR6SVlRdDd3NGRPd3J5VEEwaDd0SkN4STNzR2VDRXV3?=
 =?utf-8?B?UzJSZWZYeWd2ZFUxbmJwZ0xDbHpEa2RsMkRtZWpEdW1lZXZBNmRPaVRpL04y?=
 =?utf-8?B?TUZuNEZQRHZmdXpMYjlOY2l2ek9PNm9vdUxZbXRwNHQvKzN1VndBVWdqVzVS?=
 =?utf-8?B?TWpDRXhPc3dwd3ZQaTdPQ3VWd2I5L0dXZTQ4b0NNeS9PUDlCeHBhb1JKbjNP?=
 =?utf-8?B?bEQ1VnpGMU5HbUdnM0hyUDFPbVRidVF0SHkwbldueVQyeUlRMmRlR2kwb0g0?=
 =?utf-8?B?c3NXTWxFRnlEaWhEeHhFcFU5enkrTWQ4ak5hOVRxejFkU3owa2Q5Mm02d2Z5?=
 =?utf-8?B?bTFZRFF1TTlCaUxHSnhKZjloOXZEWTBsNUhEUVR1M1RTUm03eGhtTm5ETU0v?=
 =?utf-8?B?cVBvQ2lhOXUremVoUExHR2Rab3RPUnlZZmdoUFZtMVFGRHQ4U1ppWDdERFh0?=
 =?utf-8?B?SUk2TlVId3JCMitHQklJdEpzRVFsSG9GYlZ2dkY3SitNc0IyQXBmcTBJNER1?=
 =?utf-8?B?QjVoa3ZoZVRxb3BZN204K1gwMGtxVWMwbXl1Rm5KbEVwQlZveWVHMWs2Ukwz?=
 =?utf-8?B?emRGYkJBaTVBTzh5bk0yNVl0WitRakZ3dWRlVjhPTUQzVExjeHI0RUt4dmRD?=
 =?utf-8?B?Wm5ybkJ4RlI1VU9odFlwU1kxY2xxQm50TzZNY3lhYklMVUdxSlc4L1UvdFlv?=
 =?utf-8?B?cWpjMHRidGhDVXBJZ2NDeUcvVmVLNlBOZTRwM3NWenlEOXptQXNyWVRia0tm?=
 =?utf-8?B?QmJwcUlGR2VmVGFwdExkcmx4cHdJcW1zN2hwQkFta3VVaEhubHZBcTJkUmZ1?=
 =?utf-8?B?WmJoN3hXMTVVOWxjTWY4eW91Mm9wSWU1dG5kQWNhQXFlc3BMMnVjZVhoK0V2?=
 =?utf-8?B?TjRpRHdrMUpwM0tRN1o0SVhobXpFa3g3RVZOajNBdFhmTmFEMjBydkZGOHZS?=
 =?utf-8?B?NGcvckswcFNhMWFzYUlpaGtOWXhEaENTcHN5Q25DYUw5WHF4Nks4RXVUVHR5?=
 =?utf-8?B?SHBFY29tejN6K3BSTW1UTjlVUndqS1haa2I0RHBZOWNPSEt0dWhDMk9ZZXIw?=
 =?utf-8?B?eGsxdXN5NFhJajNNSFMyZ0ZDZmNXQklhR2VMbG9rdmkrbGFSRWE1SG8vNEpz?=
 =?utf-8?B?UjNVaFp3R1JRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tmw4ZS94a0pPQmZMbDhzMmlWYjdQOEpqSUJOOExISm4yZFZQZndYYXlnWFNs?=
 =?utf-8?B?eXFmMWFCeW5jZTI4TVpkN1B6M2xCd0dzbng1bCtNR3NwMkJCV2JLanJIYmx1?=
 =?utf-8?B?RVBoLzViK3RZNFhwR2xiajlHQmNGU3kzQktqYXJkVUU1ejZnVDhhVFNycGVY?=
 =?utf-8?B?MjkxYlNxV2tuV0craDdDbXVtdkFBdDFDZ1d3TS9nYjdNajJoNUcrcE4zZlkr?=
 =?utf-8?B?QWpLeEJKME1jZEsxKytmaG10MFhPSGNGNGhBb0JFM09GVXR1UFB2WloyN3RP?=
 =?utf-8?B?dHVxUFIxQlJQbzhNYzE2aXVBM3ZHaWhBUEVCc0RYQmtTMWtKMTEzL2pxVEYy?=
 =?utf-8?B?MlhVeVc5UldwS0tqK1RjZUdXdkpwbnp6TXdpVjR4QXhvVVN0SGZHY1dhdlZY?=
 =?utf-8?B?MHkwakxPaitwQ2tYMnVPbzhaQ3FGcktwb2xLMlFYdyt1U0I2RnZtcGdHQXVX?=
 =?utf-8?B?RmdtT0wrd0oyeWdXTHdYVXNrZU00cFZ2aW5QdkJBRk05Y3lTeisvL1JjVXBa?=
 =?utf-8?B?elFIUG9OQnBrekljWXR2ZXR1Rzgyb0M0RHNHM0xmSnNvQlpqazI4dFlCSG5l?=
 =?utf-8?B?Z3k0OUwvK1krSUFUVnBzbHRtNVk4cndvbVpRREtRVGFqNHJRY0crNGFxKzlX?=
 =?utf-8?B?YnBWUy9HYmFBY3ppZ3gvSk1DRkNjbkpQOUtzaXR3VG1WTXZWTG51bmhrM3lx?=
 =?utf-8?B?TjkrZzk0V3RnQi84VmZGOGRHblB1NllSeVFXQ2UxQzh1VUw2UHZsWmRobDli?=
 =?utf-8?B?bVJDbVI5TkRMNVREN1YvNXE5ODhvUTc5TlY0Q3ZqeHlZSmYzSVNkdjlERFJh?=
 =?utf-8?B?WXdVcEhFK0dYRnZONzVzWWNCWmppR21MQUN0WFQ3Y3dPWVJDTzc1M2RPTnAr?=
 =?utf-8?B?THR4cUxWNTMvR3c0Zm9yMGpKeGg0aXhQRU1zb2lROEZGMEJyWlZsMkJCMjdp?=
 =?utf-8?B?WklrNmU2Vmp0RmNhK2I5dDhIUm9YRlE3TkordnhDVnhVRjFNMTZXaWhKNHl0?=
 =?utf-8?B?aEpGaGpySmZHY1NZVFdTdE0vUlNDM0pZVTA4TGJJQkpVUEVjakJBS3UrZ1pG?=
 =?utf-8?B?V2RIQWg2ZEU2cFFRemRiaTR5Mjl5bXltSGJwN1Nxa2lYTWhPczdQQzBubUtN?=
 =?utf-8?B?RDliWGZaSkw2a3hkZ1N5RXNkNEU5eDNBaThOUnJZYzByUHRyL1N0Y3RhNGxL?=
 =?utf-8?B?T1hka0dqK0FPbld2WWVOZ2xRc002d01aWUNzckxSZzJrL1R5QzU2ZHVWblRV?=
 =?utf-8?B?NldtREZrSFRaaVVCbG1uMjcralkrWTdJZEtZaEU2V085Q2RyYWV5ZlRHSmVJ?=
 =?utf-8?B?d2dHQVRNdVRkWlB6L2VhbmZIWHc2RGFWVm9OdGEyQkdtVHE2YjRBY1BwNURx?=
 =?utf-8?B?L210cS85L2E3UUlEN3dCVVRnaTRIbHVUWFdUaFZlV1N5QjFoSjJaYVhJNitZ?=
 =?utf-8?B?Tlg0R0srUnlJcUZROGE1MTNSTExIL25oVHFYSm1xczFDT0NweXhnSFJjSjZr?=
 =?utf-8?B?bVJqM0NnRVlKU0VxaE8rWnEzRXpNUWxmeisxbFBLYVROcW9RdHVQaTA1Tm1S?=
 =?utf-8?B?aDh6Y0NIRnliWGFJNENFbEhwN2VjYVIydms4QnhxVlN6Nk04MEhyWXg1cG9S?=
 =?utf-8?B?T3RKdFRkalR5NmM3UFB5VUhrdks2Y3NmWW1QT0RVa2ppQjR1Qlhzczc3MTNj?=
 =?utf-8?B?Tzl0Y1dDWTArZk1jUUhQbnpjMFFuZWh0Q0prSDdtS01aLzgyeDNLQjdXRnhy?=
 =?utf-8?B?LzNMY2NwSStHUXVTL2d5V2lGNGxFU0JhdUU5WWpBcUlXcVpwaDRiaTZZaGti?=
 =?utf-8?B?VjB4SEVIa25vWGs3c2NndDhsMEN6MWRJSlRLTHZyS3Q1ZGVhOWhibGErYmxI?=
 =?utf-8?B?WCsyUXp2eXNnRmw4QTBYdnhWV1NWMmJJT3RSa1pJc0V2RlF0dU1WYlVnNkNo?=
 =?utf-8?B?RXNkWWRscFdYNi9KdmFMNVVXUWk2MWtGMGZhd05zdmliNjdnOElQOXE5emRD?=
 =?utf-8?B?a2V0a09oNkczQmxHWmJNSVBQWCt5ZlVNVTBHdkhPVjhydy84VktiVW9lenBP?=
 =?utf-8?B?MXBpb2hrQmdRSXAvMmIvWnkvQmxSZEJlTmViZjdFK1BNTlZpRjJ1MTN5QXA0?=
 =?utf-8?B?dWJqM3MrNWFlOGtTYmZaREErSnZkTWhvRDE4NitjV3VGa1JWMWowSEp1WEph?=
 =?utf-8?B?MGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a83bad6-d2c3-4856-bdf9-08ddf6925a4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2025 09:04:19.7046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NYfkSaxMf9uLJ4LimIvN5zMEIy9vfY3DKmog9KK2zCBePiUP4I8XDOnM7sYGpg5eUqkgWkK0nx8Ct95D7CkZnA0I4gTF5/qMOenE0mvnE2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758186270; x=1789722270;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f/SDQljCAjddrGb+DsV/WtdDU9vaaehYHFmPbBBMQ7o=;
 b=PWX8rCj4wXnrh9gUYQXO6te/hTmN2Ymj6TvqqBYfbPsrnXqO2QzoNZrn
 KMvvK8dzKor1oDAdGH2/GxCJtpQFRqfJ2ssvdXu9SjGd+dqJFzzfVBhaa
 YrwZMSrRRI0zWXmh9YUyWNtQcq/mlH9sAzEgN5Wu3e12ipwHokJak9Pfy
 fr7qddNWiROvSDYcRjegjCnLz4CpgL1KD/w9L92zpj38A9ktX9tglZHHb
 5I2VuqPoicQvQrqaP2MsSP43k0HUe9dtaxqqgEPQ8Vb9ILlU5/pQ45jOy
 LgHuhbXUIUdc+fPbYQDslj0sF4wNViPQnEssR+BPidm9Kf4NEZ+7aFkGL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PWX8rCj4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 7/8] i40e: add mask to apply
 valid bits for itr_idx
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQcnplbWVr
IEtpdHN6ZWwNCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDI2LCAyMDI1IDk6NTYgUE0NCj4gVG86
IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBs
aXN0cy5vc3Vvc2wub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBp
bnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBHcmVnIEtIDQo+IDxncmVna2hAbGlu
dXhmb3VuZGF0aW9uLm9yZz47IEt5bGUsIEplcmVtaWFoIDxqZXJlbWlhaC5reWxlQGludGVsLmNv
bT47DQo+IFBlcGlhaywgTGVzemVrIDxsZXN6ZWsucGVwaWFrQGludGVsLmNvbT47IEN6YXBuaWss
IEx1a2Fzeg0KPiA8bHVrYXN6LmN6YXBuaWtAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2Fu
ZHINCj4gPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgNy84XSBpNDBlOiBhZGQgbWFzayB0byBhcHBs
eQ0KPiB2YWxpZCBiaXRzIGZvciBpdHJfaWR4DQo+IA0KPiBPbiA4LzI2LzI1IDE4OjM0LCBTaW1v
biBIb3JtYW4gd3JvdGU6DQo+ID4gT24gV2VkLCBBdWcgMTMsIDIwMjUgYXQgMTI6NDU6MTdQTSAr
MDIwMCwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOg0KPiA+PiBGcm9tOiBMdWthc3ogQ3phcG5payA8
bHVrYXN6LmN6YXBuaWtAaW50ZWwuY29tPg0KPiA+Pg0KPiA+PiBUaGUgSVRSIGluZGV4IChpdHJf
aWR4KSBpcyBvbmx5IDIgYml0cyB3aWRlLiBXaGVuIGNvbnN0cnVjdGluZyB0aGUNCj4gPj4gcmVn
aXN0ZXIgdmFsdWUgZm9yIFFJTlRfUlFDVEwsIGFsbCBmaWVsZHMgYXJlIE9SZWQgdG9nZXRoZXIu
IFdpdGhvdXQNCj4gPj4gbWFza2luZywgaGlnaGVyIGJpdHMgZnJvbSBpdHJfaWR4IG1heSBvdmVy
d3JpdGUgYWRqYWNlbnQgZmllbGRzIGluDQo+ID4+IHRoZSByZWdpc3Rlci4NCj4gPj4NCj4gPj4g
QXBwbHkgSTQwRV9RSU5UX1JRQ1RMX0lUUl9JTkRYX01BU0sgdG8gZW5zdXJlIG9ubHkgdGhlIGlu
dGVuZGVkIGJpdHMNCj4gPj4gYXJlIHNldC4NCj4gPg0KPiA+IEknbSBhbGwgZm9yIHVzaW5nIEZJ
RUxEX1BSRVAuDQo+ID4gQnV0IGNhbiB0aGlzIGFjdHVhbGx5IG9jY3VyPw0KPiA+DQo+ID4gSWYg
bm90LCBpdCBmZWVscyBtb3JlIGxpa2UgYSBjbGVhbi11cC4NCj4gDQo+IEkgZG9uJ3Qgc2VlIGFu
eSBvdGhlciBwbGFjZSB0aGF0IHdlIHZhbGlkYXRlIFZGLXByb3ZpZGVkIDo6cnhpdHJfaWR4IGFu
ZA0KPiA6OnR4aXRyX2lkeCBvZiBzdHJ1Y3QgdmlydGNobmxfdmVjdG9yX21hcC4gU28gaXQncyB1
cCB0byByb2d1ZSBWRi4NCj4gV2l0aCB0aGF0LCBJIHdvdWxkIGxpa2UgdG8ga2VlcCB0aGlzIGFz
IGEgZml4Lg0KPiANCj4gPiBXaGljaCBjb3VsZCBiZSBtb3JlIHVuaXZlcnNhbGx5IGFwcGxpZWQu
DQo+IA0KPiB0aGlzIGlzIGFsc28gdHJ1ZSwgd2UgdHlwaWNhbGx5IGFwcGx5IHN1Y2ggY29udmVy
c2lvbnMgd2hlbiBkb2luZyBvdGhlciB3b3JrDQo+IHRoYXQgaXMgcmVsYXRlZCAoc28gdGhpcyB0
aW1lIGl0IGtpbmQgb2YgdHJpZ2dlcnMgOikpDQo+IA0KPiA+IEFuZCB0YXJnZXRlZCBhdCBuZXQt
bmV4dCAod2l0aG91dCBhIEZpeGVzIHRhZykuDQo+ID4NCj4gPj4NCj4gPj4gRml4ZXM6IDVjM2M0
OGFjNmJmNSAoImk0MGU6IGltcGxlbWVudCB2aXJ0dWFsIGRldmljZSBpbnRlcmZhY2UiKQ0KPiA+
PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBMdWthc3og
Q3phcG5payA8bHVrYXN6LmN6YXBuaWtAaW50ZWwuY29tPg0KPiA+PiBSZXZpZXdlZC1ieTogQWxl
a3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4+IFNp
Z25lZC1vZmYtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT4NCj4gPg0KPiA+IE15IHF1ZXN0aW9uIGFib3V0IHRoZSB0YXJnZXQtdHJlZSBhc2lkZSwgdGhp
cyBsb29rcyBnb29kIHRvIG1lLg0KPiA+DQo+ID4gUmV2aWV3ZWQtYnk6IFNpbW9uIEhvcm1hbiA8
aG9ybXNAa2VybmVsLm9yZz4NCj4gPg0KPiANCj4gdGhhbmsgeW91IGZvciBsb29raW5nIGludG8g
dGhpcyBzZXJpZXMNCg0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJvbWFu
b3dza2lAaW50ZWwuY29tPg0KDQoNCg==
