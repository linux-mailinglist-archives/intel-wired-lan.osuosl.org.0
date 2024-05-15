Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 026218C6DBD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 23:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F21F82198;
	Wed, 15 May 2024 21:21:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tx7PwO2tzLt6; Wed, 15 May 2024 21:21:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F26F48219E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715808094;
	bh=40KePtIQtUNESl0S5leAOXpViSIwCDLn4WgoqraodSE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d6oicp/38sPAdsEcomzGCp1R6EaAoSUnJkJH7RZQ5y0D/xX+RJyoGlcLaXyBBDHJm
	 VD98nuTb+V++8mWAeBwVt0Ahul+RqqKjQi/C0ozwD2kGhi6bnZNEQxDj37y+6FS0Hk
	 H5RC9bIlTcYqpnabm0hU64wBQYDrhkbr1LgBW/vVPZINB3E80cm37UPYeLJUrY92jd
	 1SNfcUn+SkueyfCZboRDe0FOQBn5AH8XoAkVRHYabWaaOSAjpbdLh7IbDHEZj7UVem
	 B0HwN5QtyS0xfMpVjG/Z3OSSlcRvXw89myh2QaWHMRcELdu0vY3W1rx5hB2FNnQf6A
	 dHQGBdCpAyvzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F26F48219E;
	Wed, 15 May 2024 21:21:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5199E1BF57F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 21:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 39144406ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 21:21:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7F_T4hWpQwf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 21:21:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7D4A4406DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D4A4406DB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D4A4406DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 21:21:29 +0000 (UTC)
X-CSE-ConnectionGUID: sLt7JSKOQY+CDP3FC0vSBw==
X-CSE-MsgGUID: wvkGEKv5QnGgbJVQJ370gQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15711564"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="15711564"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 14:21:28 -0700
X-CSE-ConnectionGUID: u0J0ad+gSHeePR+SPhjinQ==
X-CSE-MsgGUID: VFC1mQB+Qg+nll0STf2Tig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="31616605"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 May 2024 14:21:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 14:21:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 14:21:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 15 May 2024 14:21:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 15 May 2024 14:21:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iB9uhYcKuoDrpfO4ZzyCf1YRe2N+lGyyuBJgKbloZyeSoF2FreBc9RbTEkkZTHg5oT7vaAXG8SujDKLcYfTR/TJVnnLHvI7lCWGNle4FSPK7I6RNy1FSoI0qYHBnKRktwUFCt144+hnbFi1Olp09CCGQ5q46plcSdmvXIKVPbLw82cKTUglw98jPE0NwCKE+gov4Hjl6uqRKnIWzm9dhBv3RJoAdgS4nxNXrizZde8zDEtvqxOcNVisyKRGBCcgiuvH4u6E1wI3/+QiKEspXmfZltti81BKKK5vVBJVjx8aj++53oSFiNKpY4MIuPmuTWF13TA7f6IFEiaI2LaA4cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=40KePtIQtUNESl0S5leAOXpViSIwCDLn4WgoqraodSE=;
 b=kPHvxJ82RvNfUrhr9UmFrMjTCzkO32XNVltbMwspQ/Ilz7ZpRQM8MQMlocC5bG6drrQ5ouuKnbSNhUB2Wjz+Jf3yLiallnNH4JHOrZRULulYQI3tvDfr8nFQ5tK9/V/dp/Uici+GEWUG1vcK9vWaE0rttTpI+8N9lnepNtOzqXE7YinFzXAS2X0LUrJhCgR8gAN1pbKfoMROOKJV7hKp9PraRf8YupfBpokHvEoAuyHcOv6ELXFaNHsyWjCAmbPFltIHB28a3yCLwMhDIRUgeqLSxmYrKf+dxam3FIaVRVSba8BcKfCwQFZm0IcEJ4O6b1j5/2sYCISjj25Hrc8v9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB6288.namprd11.prod.outlook.com (2603:10b6:8:a5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.26; Wed, 15 May
 2024 21:21:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 21:21:25 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Brett Creeley <bcreeley@amd.com>, Karthik Sundaravel
 <ksundara@redhat.com>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Drewek, Wojciech" <wojciech.drewek@intel.com>, "sumang@marvell.com"
 <sumang@marvell.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v9] ice: Add get/set hw address for VFs using
 devlink commands
Thread-Index: AQHaptNj8shSBY2GyU6conIj9/qsHLGYgumAgABKzrA=
Date: Wed, 15 May 2024 21:21:25 +0000
Message-ID: <CO1PR11MB508932F90216EED30FCEAF8CD6EC2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240515142207.27369-1-ksundara@redhat.com>
 <20240515142207.27369-2-ksundara@redhat.com>
 <26b64d11-9cd2-4e60-b7ce-be2dea0f2caa@amd.com>
In-Reply-To: <26b64d11-9cd2-4e60-b7ce-be2dea0f2caa@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DM4PR11MB6288:EE_
x-ms-office365-filtering-correlation-id: afb48077-bb8d-4dd5-9fc6-08dc7524f9fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|366007|376005|7416005|1800799015|921011|38070700009; 
x-microsoft-antispam-message-info: =?utf-8?B?UjdXbDVWUUFodFNFSVhkTHVNRTJzeHAvNHNZWWhZSTI4R3dKVEp0WnRGUzRC?=
 =?utf-8?B?bURUSm5GYzZxL2tFcDlZMTF5MDFUZjRhbjZ6SGc2eUZ3TGVabDFJRVptekFx?=
 =?utf-8?B?bitvNTFYRmxZM2U3V2dyMDk2anFOaXNrOWpPd3FRM0VVS0hPSDNDMTJjUUpM?=
 =?utf-8?B?MDd2REJVSUNBN05iMHJtaWNHdnNOQitaQkxEOE9oVEpjZU9vaTkzWG9EWWVZ?=
 =?utf-8?B?R3lqYUpieGRIVzhSdURjYTdrQTg0WnVjZmhWYTY4aHFRaFZEVmpZaTlwMmFj?=
 =?utf-8?B?aTg3cmdrV3dlR2NGaFRjck5NajREN1lJY2ltcjhOeVhPc1AxOGVFaENaMysz?=
 =?utf-8?B?WEJwOUdWalV1Y0dUekxZdFJzUmtOT3BKbEt4cFoyOG5SOGJiMTJvamRDS3Mw?=
 =?utf-8?B?OVVFMStwcWx0SHYzTkxvV1d2ZFVoK2lXTUhtTVpWVlNpWXNRa0h3U0FsWHdM?=
 =?utf-8?B?ZDNJSW0rZkJjNktjMEUyODJqSVdPUlVSVWdBWE9vZURGMmk4S3hzL0ZwbXJ5?=
 =?utf-8?B?TG9rUjhoVys1VHBDTVdEQmY2UG04bUFXd0dWSzR1OHJHQUE0NzIyUXI3bmFW?=
 =?utf-8?B?cHRmM2FkUXpxUGR3WTBwVzkrcU9XT2xNb09YL040UHZ5dW5EUTA4UWNLNGJl?=
 =?utf-8?B?V05oWjJsZ0d0Zi94RDRpRkxxUmpJKy91L0RMYjNybFlDU1RXT1VVYkQ4V3R0?=
 =?utf-8?B?ZnVGdFBtRDNiZXlBaSt0ZUFtSGlrQWRyK1g4MFFsVlV3TGlFNzdQL1BmRkRl?=
 =?utf-8?B?djV1M0xyVjhJY1ViM3BINW9rK1FSdVR6UEZGbUtPNTNydjJHTmtkVFdNYWRD?=
 =?utf-8?B?QmI4MUp4dVVjSUpSWVRpTlFORjB4VC9weDFvSHViWlRBYjJQems0UUw4YVdZ?=
 =?utf-8?B?ZnlhUlAyZFRwNXp6blA5ait3SVR6d1FFT3RIMW9tbnlmUmdVSVlaSmdLcTlv?=
 =?utf-8?B?Sm1JVEdtcGw2V2RpQ1ArdTJaUjIwT1pNODJvaHNQaGpuVklKSlVaS25DWWJ1?=
 =?utf-8?B?U2VBSEdoTGl6SHJCSERQOTNkQ0xqU3V0UFE3OTV1dU1YMFFoc3J5QVVOWEc1?=
 =?utf-8?B?N0pvZE5XMUg4K2FOT2k3bWMwMFFoc0c3MnBua0dCK01SQnBRSWZMTlo0QmRY?=
 =?utf-8?B?bjA1V3FoWnZzYjVDRWRCV1FJcFEyTkJhWDJYa0liRm4wcjB0d1prZlhzS3NO?=
 =?utf-8?B?bWQ5dFlhR1lpbytXRDY4N2pHSWd6YlNVTTRMbEQ1UC9DcFdwUEdnc21JbXBu?=
 =?utf-8?B?cmFNUklYcE5qV2toS1Bnc3VoV0IxT3l6UWE0UWh5bTNDeGhyQ09SUFArbnVo?=
 =?utf-8?B?QU1wRzdwenQxaEgxQXNzWUlLMmhaNnVOYXNlMklwZzllQXd6amVjTUhHQ3NH?=
 =?utf-8?B?MWtJTEk2Z2Jpc0ZaaUluV01Qc2NFVkg1b0ZZcm8yZHdPYncwR21DOGIvYkdm?=
 =?utf-8?B?SjVNTlduSlY3SGllUW1hZEt0WENPOENnZEg0TmEvMVFUMFNRdlQrenk0alIv?=
 =?utf-8?B?a3M3V0xGQVFMVDZ3bHl2M2dJeGowSjQ3QjdBK3NnV1J4NklvVTVLY0lQQk8z?=
 =?utf-8?B?VjVhS2RWeHVtN3BVVUNsYXNzaFRGRE5sZ3BwdWlSTkRHYWkzU1hBc0dOYjJY?=
 =?utf-8?B?Mm9kTm5nWVFDZ0ZUY2NoMEFYbWJ4LzNZU0syTlpaaTBnNkFvT2JmbjllaFNy?=
 =?utf-8?B?R0JiWXhoTXBuMTJCaE5EQUtwQTN1YisycUl0UlkvVSs2cWswNDBmTVhCUGJL?=
 =?utf-8?B?QTZWa1dNZTRFMUt1UHZJOUxxelV6VEdEeXFFdTFhaVo4VFFQY3lyYlFxZi9Y?=
 =?utf-8?Q?4cOnDEYcVlBGvJLM6mDReqpNt/CGFFnpg8rTU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(7416005)(1800799015)(921011)(38070700009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djFhbDZLUG5SclNDNzdadXd1VkJVTjRiTXhyRTBvU203NDhvRndzWGdYQTJL?=
 =?utf-8?B?VVlxMUxQM25Hd3JZRU5RWGVmb0tmbE85RjlzbFE4Rlp5V1FvZVFENFJaM0Vr?=
 =?utf-8?B?Z2JLS3lNQ2NtQTFmK1dLMEpUZlNFaXZUMzVhWmdPdFgrM1RIM3I5b1UzWndq?=
 =?utf-8?B?cWJmZE1TZGFYOE9pSHlZNVdRbXRseU9nMG5adkgxM1ZWaEpCMlBpL1czcU4x?=
 =?utf-8?B?SHhLMjZhOWw2VEVteXJEcXNYckRVNlNzT010bktySVBDWnZDbU90Qlo0ZVlT?=
 =?utf-8?B?OHUrMW9xaW9oeDY4MlVyWTRiRlNuZmFKRnNvaEs1cWZJZndIVmxvUVA4RFdz?=
 =?utf-8?B?VEh1c2RrMmpFS3JxQVlYaFVDQ2xiK2hFTzQ5SWRzT3Q1b25UNThobEVoQUpS?=
 =?utf-8?B?N3RrQlo4a3dudmtZeEdEa1hYYUkvaGxGUFhaR3ExUWJiOWgxTGhHUkV6T0pL?=
 =?utf-8?B?NWFBS2IrK201azBaSFRibXhUU1N1Qm9Cb1hnTWwrSmErWlZxa1EwNkhTcitC?=
 =?utf-8?B?N014RndRZmNLenpqNExtVzZPcmkyT2ZwcnZpWHNLZkRBVWpNcll5aHFLTDJG?=
 =?utf-8?B?ekNIeDU0TGNYVThmZXBTM0EyTkk2YUY1cGZ2K1A0K1JOeEVRbktQL0V0VjRG?=
 =?utf-8?B?UFlrRGtMczFsaGZ2YlJab1ZLYVp1OWtLSXVuY3FhYUxpQWpkd1RuMFl4NWh1?=
 =?utf-8?B?eDVlUlFZbHlsYUh3dXlJaEVFa3I4aXhBcEdvclI2dGxTeDQ5UmZ1NUdJa1BC?=
 =?utf-8?B?NG04clUzYlZFRGFpQjJMeG9pTWhEUjNBV1d2RmhYdXh5aTNZL3dqcWtJY2NG?=
 =?utf-8?B?ZERiaEQrdHJqdGpNak1hY2hUZHg5WUVKemNMb3Q5TW5QUXMyclIrWUNxdWlu?=
 =?utf-8?B?bVZERSszVkVwU1dhQU02Y3JJOWRWb1lFUTZsQlVQOE56TWUrVkhrL2xSc0dK?=
 =?utf-8?B?V21BOWUyZGRyZE00cG5PUWY5VG5SRTlVb0pwRCtIU0FUNjFmM2ZDa204NmEx?=
 =?utf-8?B?Y1JNQnlkc0hldWlFcDV1ZXRmK3pnejVTbllacVFkQytYeVcxbnB4MU8vTkoz?=
 =?utf-8?B?Njh5ZWNGemlrY2xLQW12SEszY0xteDBTQUJYeG9xSzgxTDFIY2ZndUFlZEdp?=
 =?utf-8?B?VTRuejNWSDBkQzRZV29qSWV3VDc0M2FiVjlhSE5zZTFSd0xSdktwS3pvZm1X?=
 =?utf-8?B?ckU0U3hNRUtDRU9KMWJwa0JVN01wOW0xQmMzOVFVOXpNdmM5SU1UQ2hxUjd0?=
 =?utf-8?B?SzJGVEpXUnBCVmNSVWs5dFBxcnA4Q2hGeHFUM3JySTQ0bkRZK1BIdUtPa29P?=
 =?utf-8?B?ckE0MmFhSVpmTjliT3NaNXozK3ZYbTZUU0R6K3U3N3FGYlBZK2YyUlVKMzJD?=
 =?utf-8?B?UktlZW5yS08xVjFXeXBhS1gwS2QrYUpLbURneUxPUHFJL0VjOVVNamtjNjdM?=
 =?utf-8?B?VmdFaHZKVi9FbnlCd3Q2K2JSYkRhT0lpeHBpbWhxdnJJYjM2QnVlYUpMZlcx?=
 =?utf-8?B?R2drd3ZmdDF0cWt2N0dialoxN0E5UmNGVDZFdWk2SWhpZDlYN1d4MzR2UEd4?=
 =?utf-8?B?cHVLTVU1cFpZQUhkNzdNNGgybEhCZHUwRUVHci9VeVdHNklUM0RnUDN6RnE2?=
 =?utf-8?B?NkY2amxCRXQvdEppZ2hoY21HZThsRzhwWnc1UjZOYVc1di9lYStOd0Zsc2l2?=
 =?utf-8?B?K2VTM3NMaityWjdZbTJIaWxweDFzeGlHM1BkVWtaZStTcnppZjJKZmNaREtp?=
 =?utf-8?B?eGpwU0pvQlpxekhpZFc2ZHJQbW95cUNjWU8rR1g0OXY1RVdwRVFKU3N0TFlD?=
 =?utf-8?B?cVAyblZIK251aEFXZ2hIUUN3SUozUVREc3BJbTNhYngyWHdSNktZQTJKZ3py?=
 =?utf-8?B?T245dDE0eElDVVNTckdITFdoUmxrU0FzU3gyVTJnUFp0MUJodnBBRFBML3Ru?=
 =?utf-8?B?ckJIampUaWNIL2R3dk9wd3pnN3JCclNIQkMvc0xtVEhUS2hlNzlXZkVZLy9N?=
 =?utf-8?B?OHhKcXRHZHVqOVQybDFlVzExNUFvZnZYVzFla2s2alJlY09PY1BWZHl6YTJW?=
 =?utf-8?B?bzR1a28vTnhydXVoUHhwb2IvSFZBaCttVUpCMzFYUytSd1FqWnRvTVIyVHVN?=
 =?utf-8?Q?kfd6W6EZtNUzDh/QALf9mEMYm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afb48077-bb8d-4dd5-9fc6-08dc7524f9fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2024 21:21:25.2711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wiqjyleiBspS2f4/9I4RBXIZyozo4RNyMQRF7EHAF0fln+M1cB8GxYGp3RQ1fHx2j3gvmRUxME2fFyB7nJqexC0NREM7RkTYgg/WbdyIv2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6288
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715808089; x=1747344089;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=40KePtIQtUNESl0S5leAOXpViSIwCDLn4WgoqraodSE=;
 b=gUWuOpZbz5PCjn9vXTpd7kMxlJmuoKiVZIGSUhEV4oKRNXy3P1H9UDJY
 NaIjhvQfWvbUimI8XBnDyNE6uVxnXD7Do4FKBOQEenQFfOlLwOgl1lyg0
 grE44xk9pUHmNy69VZTWaTIjL4RS+rTvtmwJTPhtUO9hnBNBdBAxFCy7b
 4WVoSBplP6aucmG7GcrRJt+iIM3z2pERo41aC2vDqKgMajmVXg/+t4yy1
 tHs9CzrqnmhWHfKL0/54CVrw6sao+4bbTx0yTwlIgWzjlorlhC439mXUa
 4e4OE89mbZWO9Yx7c/uaGb8WQhvmv/39qQ4BXS6aRjh+0knbhh5QCiSMN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gUWuOpZb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9] ice: Add get/set hw
 address for VFs using devlink commands
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "aharivel@redhat.com" <aharivel@redhat.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "cfontain@redhat.com" <cfontain@redhat.com>,
 "vchundur@redhat.com" <vchundur@redhat.com>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "rjarry@redhat.com" <rjarry@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnJldHQgQ3JlZWxleSA8
YmNyZWVsZXlAYW1kLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBNYXkgMTUsIDIwMjQgOTo1MyBB
TQ0KPiBUbzogS2FydGhpayBTdW5kYXJhdmVsIDxrc3VuZGFyYUByZWRoYXQuY29tPjsgQnJhbmRl
YnVyZywgSmVzc2UNCj4gPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPjsgRHJld2VrLCBXb2pj
aWVjaCA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT47DQo+IHN1bWFuZ0BtYXJ2ZWxsLmNvbTsg
S2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBOZ3V5ZW4sDQo+IEFu
dGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBkYXZlbUBkYXZlbWxvZnQubmV0
Ow0KPiBlZHVtYXpldEBnb29nbGUuY29tOyBrdWJhQGtlcm5lbC5vcmc7IHBhYmVuaUByZWRoYXQu
Y29tOyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGhvcm1zQGtlcm5lbC5v
cmcNCj4gQ2M6IHBtZW56ZWxAbW9sZ2VuLm1wZy5kZTsgamlyaUByZXNudWxsaS51czsNCj4gbWlj
aGFsLnN3aWF0a293c2tpQGxpbnV4LmludGVsLmNvbTsgcmphcnJ5QHJlZGhhdC5jb207IGFoYXJp
dmVsQHJlZGhhdC5jb207DQo+IHZjaHVuZHVyQHJlZGhhdC5jb207IGNmb250YWluQHJlZGhhdC5j
b20NCj4gU3ViamVjdDogUmU6IFtQQVRDSCBpd2wtbmV4dCB2OV0gaWNlOiBBZGQgZ2V0L3NldCBo
dyBhZGRyZXNzIGZvciBWRnMgdXNpbmcgZGV2bGluaw0KPiBjb21tYW5kcw0KPiANCj4gDQo+IA0K
PiBPbiA1LzE1LzIwMjQgNzoyMiBBTSwgS2FydGhpayBTdW5kYXJhdmVsIHdyb3RlOg0KPiA+IENh
dXRpb246IFRoaXMgbWVzc2FnZSBvcmlnaW5hdGVkIGZyb20gYW4gRXh0ZXJuYWwgU291cmNlLiBV
c2UgcHJvcGVyIGNhdXRpb24NCj4gd2hlbiBvcGVuaW5nIGF0dGFjaG1lbnRzLCBjbGlja2luZyBs
aW5rcywgb3IgcmVzcG9uZGluZy4NCj4gPg0KPiA+DQo+ID4gQ2hhbmdpbmcgdGhlIE1BQyBhZGRy
ZXNzIG9mIHRoZSBWRnMgaXMgY3VycmVudGx5IHVuc3VwcG9ydGVkIHZpYSBkZXZsaW5rLg0KPiA+
IEFkZCB0aGUgZnVuY3Rpb24gaGFuZGxlcnMgdG8gc2V0IGFuZCBnZXQgdGhlIEhXIGFkZHJlc3Mg
Zm9yIHRoZSBWRnMuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBLYXJ0aGlrIFN1bmRhcmF2ZWwg
PGtzdW5kYXJhQHJlZGhhdC5jb20+DQo+ID4gLS0tDQo+ID4gICAuLi4vZXRoZXJuZXQvaW50ZWwv
aWNlL2RldmxpbmsvZGV2bGlua19wb3J0LmMgfCA1OSArKysrKysrKysrKysrKysrKy0NCj4gPiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYyAgICB8IDYyICsrKysr
KysrKysrKysrKysrKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
c3Jpb3YuaCAgICB8ICA4ICsrKw0KPiA+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxMjggaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9kZXZsaW5rL2RldmxpbmtfcG9ydC5jDQo+IGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2RldmxpbmsvZGV2bGlua19wb3J0LmMNCj4gPiBpbmRleCBjOWZi
ZWViZjdmYjkuLjZmZjdjYmEzZjYzMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvZGV2bGluay9kZXZsaW5rX3BvcnQuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9kZXZsaW5rL2RldmxpbmtfcG9ydC5jDQo+ID4gQEAgLTM3
Miw2ICszNzIsNjIgQEAgdm9pZCBpY2VfZGV2bGlua19kZXN0cm95X3BmX3BvcnQoc3RydWN0IGlj
ZV9wZiAqcGYpDQo+ID4gICAgICAgICAgZGV2bF9wb3J0X3VucmVnaXN0ZXIoJnBmLT5kZXZsaW5r
X3BvcnQpOw0KPiA+ICAgfQ0KPiA+DQo+ID4gKy8qKg0KPiA+ICsgKiBpY2VfZGV2bGlua19wb3J0
X2dldF92Zl9mbl9tYWMgLSAucG9ydF9mbl9od19hZGRyX2dldCBkZXZsaW5rIGhhbmRsZXINCj4g
PiArICogQHBvcnQ6IGRldmxpbmsgcG9ydCBzdHJ1Y3R1cmUNCj4gPiArICogQGh3X2FkZHI6IE1B
QyBhZGRyZXNzIG9mIHRoZSBwb3J0DQo+ID4gKyAqIEBod19hZGRyX2xlbjogbGVuZ3RoIG9mIE1B
QyBhZGRyZXNzDQo+ID4gKyAqIEBleHRhY2s6IGV4dGVuZGVkIG5ldGRldiBhY2sgc3RydWN0dXJl
DQo+ID4gKyAqDQo+ID4gKyAqIENhbGxiYWNrIGZvciB0aGUgZGV2bGluayAucG9ydF9mbl9od19h
ZGRyX2dldCBvcGVyYXRpb24NCj4gPiArICogUmV0dXJuOiB6ZXJvIG9uIHN1Y2Nlc3Mgb3IgYW4g
ZXJyb3IgY29kZSBvbiBmYWlsdXJlLg0KPiA+ICsgKi8NCj4gPiArc3RhdGljIGludCBpY2VfZGV2
bGlua19wb3J0X2dldF92Zl9mbl9tYWMoc3RydWN0IGRldmxpbmtfcG9ydCAqcG9ydCwNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1OCAqaHdfYWRkciwgaW50
ICpod19hZGRyX2xlbiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2spDQo+ID4gK3sNCj4gPiArICAgICAg
IHN0cnVjdCBpY2VfdmYgKnZmID0gY29udGFpbmVyX29mKHBvcnQsIHN0cnVjdCBpY2VfdmYsIGRl
dmxpbmtfcG9ydCk7DQo+ID4gKw0KPiA+ICsgICAgICAgZXRoZXJfYWRkcl9jb3B5KGh3X2FkZHIs
IHZmLT5kZXZfbGFuX2FkZHIpOw0KPiA+ICsgICAgICAgKmh3X2FkZHJfbGVuID0gRVRIX0FMRU47
DQo+ID4gKw0KPiA+ICsgICAgICAgcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gKy8qKg0K
PiA+ICsgKiBpY2VfZGV2bGlua19wb3J0X3NldF92Zl9mbl9tYWMgLSAucG9ydF9mbl9od19hZGRy
X3NldCBkZXZsaW5rIGhhbmRsZXINCj4gPiArICogQHBvcnQ6IGRldmxpbmsgcG9ydCBzdHJ1Y3R1
cmUNCj4gPiArICogQGh3X2FkZHI6IE1BQyBhZGRyZXNzIG9mIHRoZSBwb3J0DQo+ID4gKyAqIEBo
d19hZGRyX2xlbjogbGVuZ3RoIG9mIE1BQyBhZGRyZXNzDQo+ID4gKyAqIEBleHRhY2s6IGV4dGVu
ZGVkIG5ldGRldiBhY2sgc3RydWN0dXJlDQo+ID4gKyAqDQo+ID4gKyAqIENhbGxiYWNrIGZvciB0
aGUgZGV2bGluayAucG9ydF9mbl9od19hZGRyX3NldCBvcGVyYXRpb24NCj4gPiArICogUmV0dXJu
OiB6ZXJvIG9uIHN1Y2Nlc3Mgb3IgYW4gZXJyb3IgY29kZSBvbiBmYWlsdXJlLg0KPiA+ICsgKi8N
Cj4gPiArc3RhdGljIGludCBpY2VfZGV2bGlua19wb3J0X3NldF92Zl9mbl9tYWMoc3RydWN0IGRl
dmxpbmtfcG9ydCAqcG9ydCwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjb25zdCB1OCAqaHdfYWRkciwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbnQgaHdfYWRkcl9sZW4sDQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQ0K
PiA+ICsNCj4gPiArew0KPiA+ICsgICAgICAgc3RydWN0IGRldmxpbmtfcG9ydF9hdHRycyAqYXR0
cnMgPSAmcG9ydC0+YXR0cnM7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2bGlua19wb3J0X3BjaV92
Zl9hdHRycyAqcGNpX3ZmOw0KPiA+ICsgICAgICAgc3RydWN0IGRldmxpbmsgKmRldmxpbmsgPSBw
b3J0LT5kZXZsaW5rOw0KPiA+ICsgICAgICAgc3RydWN0IGljZV9wZiAqcGY7DQo+ID4gKyAgICAg
ICB1MTYgdmZfaWQ7DQo+ID4gKw0KPiA+ICsgICAgICAgcGYgPSBkZXZsaW5rX3ByaXYoZGV2bGlu
ayk7DQo+ID4gKyAgICAgICBwY2lfdmYgPSAmYXR0cnMtPnBjaV92ZjsNCj4gPiArICAgICAgIHZm
X2lkID0gcGNpX3ZmLT52ZjsNCj4gPiArDQo+ID4gKyAgICAgICByZXR1cm4gaWNlX3NldF92Zl9m
bl9tYWMocGYsIHZmX2lkLCBod19hZGRyKTsNCj4gDQo+IEluc3RlYWQgb2YgY3JlYXRpbmcgYSBk
dXBsaWNhdGUgZnVuY3Rpb24sIGl0IHNlZW1zIGxpa2UgeW91IGNhbiBkbyB0aGUNCj4gZm9sbG93
aW5nIGluc3RlYWQ6DQo+IA0KPiBwZiA9IGRldmxpbmtfcHJpdihkZXZsaW5rKTsNCj4gdnNpID0g
aWNlX2dldF9tYWluX3ZzaShwZik7DQo+IGlmICghdnNpKQ0KPiAJcmV0dXJuIC1FTk9ERVY7DQo+
IA0KPiBbLi4uXQ0KPiANCj4gcmV0dXJuIGljZV9zZXRfdmZfbWFjKHZzaS0+bmV0ZGV2LCB2Zl9p
ZCwgaHdfYWRkcik7DQo+IA0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IGRldmxpbmtfcG9ydF9vcHMgaWNlX2RldmxpbmtfdmZfcG9ydF9vcHMgPSB7DQo+ID4gKyAgICAg
ICAucG9ydF9mbl9od19hZGRyX2dldCA9IGljZV9kZXZsaW5rX3BvcnRfZ2V0X3ZmX2ZuX21hYywN
Cj4gPiArICAgICAgIC5wb3J0X2ZuX2h3X2FkZHJfc2V0ID0gaWNlX2RldmxpbmtfcG9ydF9zZXRf
dmZfZm5fbWFjLA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgIC8qKg0KPiA+ICAgICogaWNlX2Rldmxp
bmtfY3JlYXRlX3ZmX3BvcnQgLSBDcmVhdGUgYSBkZXZsaW5rIHBvcnQgZm9yIHRoaXMgVkYNCj4g
PiAgICAqIEB2ZjogdGhlIFZGIHRvIGNyZWF0ZSBhIHBvcnQgZm9yDQo+ID4gQEAgLTQwNyw3ICs0
NjMsOCBAQCBpbnQgaWNlX2RldmxpbmtfY3JlYXRlX3ZmX3BvcnQoc3RydWN0IGljZV92ZiAqdmYp
DQo+ID4gICAgICAgICAgZGV2bGlua19wb3J0X2F0dHJzX3NldChkZXZsaW5rX3BvcnQsICZhdHRy
cyk7DQo+ID4gICAgICAgICAgZGV2bGluayA9IHByaXZfdG9fZGV2bGluayhwZik7DQo+ID4NCj4g
PiAtICAgICAgIGVyciA9IGRldmxfcG9ydF9yZWdpc3RlcihkZXZsaW5rLCBkZXZsaW5rX3BvcnQs
IHZzaS0+aWR4KTsNCj4gPiArICAgICAgIGVyciA9IGRldmxfcG9ydF9yZWdpc3Rlcl93aXRoX29w
cyhkZXZsaW5rLCBkZXZsaW5rX3BvcnQsIHZzaS0+aWR4LA0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICZpY2VfZGV2bGlua192Zl9wb3J0X29wcyk7DQo+ID4g
ICAgICAgICAgaWYgKGVycikgew0KPiA+ICAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJG
YWlsZWQgdG8gY3JlYXRlIGRldmxpbmsgcG9ydCBmb3IgVkYgJWQsIGVycm9yICVkXG4iLA0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICB2Zi0+dmZfaWQsIGVycik7DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYw0KPiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYw0KPiA+IGluZGV4IDA2NzcxMmY0
OTIzZi4uZGM0MGJlNzQxYmUwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2Vfc3Jpb3YuYw0KPiA+IEBAIC0xNDE1LDYgKzE0MTUsNjggQEAgaWNlX2dldF92
Zl9jZmcoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgaW50IHZmX2lkLA0KPiBzdHJ1Y3QgaWZs
YV92Zl9pbmZvICppdmkpDQo+ID4gICAgICAgICAgcmV0dXJuIHJldDsNCj4gPiAgIH0NCj4gPg0K
PiA+ICsvKioNCj4gPiArICogaWNlX3NldF92Zl9mbl9tYWMNCj4gPiArICogQHBmOiBQRiB0byBi
ZSBjb25maWd1cmUNCj4gPiArICogQHZmX2lkOiBWRiBpZGVudGlmaWVyDQo+ID4gKyAqIEBtYWM6
IE1BQyBhZGRyZXNzDQo+ID4gKyAqDQo+ID4gKyAqIHByb2dyYW0gVkYgTUFDIGFkZHJlc3MNCj4g
PiArICovDQo+ID4gK2ludCBpY2Vfc2V0X3ZmX2ZuX21hYyhzdHJ1Y3QgaWNlX3BmICpwZiwgdTE2
IHZmX2lkLCBjb25zdCB1OCAqbWFjKQ0KPiA+ICt7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNl
ICpkZXY7DQo+ID4gKyAgICAgICBzdHJ1Y3QgaWNlX3ZmICp2ZjsNCj4gPiArICAgICAgIGludCBy
ZXQ7DQo+ID4gKw0KPiA+ICsgICAgICAgZGV2ID0gaWNlX3BmX3RvX2RldihwZik7DQo+ID4gKyAg
ICAgICBpZiAoaXNfbXVsdGljYXN0X2V0aGVyX2FkZHIobWFjKSkgew0KPiA+ICsgICAgICAgICAg
ICAgICBkZXZfZXJyKGRldiwgIiVwTSBub3QgYSB2YWxpZCB1bmljYXN0IGFkZHJlc3NcbiIsIG1h
Yyk7DQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+ICsgICAgICAgfQ0K
PiA+ICsNCj4gPiArICAgICAgIHZmID0gaWNlX2dldF92Zl9ieV9pZChwZiwgdmZfaWQpOw0KPiA+
ICsgICAgICAgaWYgKCF2ZikNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+
ID4gKw0KPiA+ICsgICAgICAgLyogbm90aGluZyBsZWZ0IHRvIGRvLCB1bmljYXN0IE1BQyBhbHJl
YWR5IHNldCAqLw0KPiA+ICsgICAgICAgaWYgKGV0aGVyX2FkZHJfZXF1YWwodmYtPmRldl9sYW5f
YWRkciwgbWFjKSAmJg0KPiA+ICsgICAgICAgICAgIGV0aGVyX2FkZHJfZXF1YWwodmYtPmh3X2xh
bl9hZGRyLCBtYWMpKSB7DQo+ID4gKyAgICAgICAgICAgICAgIHJldCA9IDA7DQo+ID4gKyAgICAg
ICAgICAgICAgIGdvdG8gb3V0X3B1dF92ZjsNCj4gPiArICAgICAgIH0NCj4gPiArDQo+ID4gKyAg
ICAgICByZXQgPSBpY2VfY2hlY2tfdmZfcmVhZHlfZm9yX2NmZyh2Zik7DQo+ID4gKyAgICAgICBp
ZiAocmV0KQ0KPiA+ICsgICAgICAgICAgICAgICBnb3RvIG91dF9wdXRfdmY7DQo+ID4gKw0KPiA+
ICsgICAgICAgbXV0ZXhfbG9jaygmdmYtPmNmZ19sb2NrKTsNCj4gPiArDQo+ID4gKyAgICAgICAv
KiBWRiBpcyBub3RpZmllZCBvZiBpdHMgbmV3IE1BQyB2aWEgdGhlIFBGJ3MgcmVzcG9uc2UgdG8g
dGhlDQo+ID4gKyAgICAgICAgKiBWSVJUQ0hOTF9PUF9HRVRfVkZfUkVTT1VSQ0VTIG1lc3NhZ2Ug
YWZ0ZXIgdGhlIFZGIGhhcyBiZWVuIHJlc2V0DQo+ID4gKyAgICAgICAgKi8NCj4gPiArICAgICAg
IGV0aGVyX2FkZHJfY29weSh2Zi0+ZGV2X2xhbl9hZGRyLCBtYWMpOw0KPiA+ICsgICAgICAgZXRo
ZXJfYWRkcl9jb3B5KHZmLT5od19sYW5fYWRkciwgbWFjKTsNCj4gPiArICAgICAgIGlmIChpc196
ZXJvX2V0aGVyX2FkZHIobWFjKSkgew0KPiA+ICsgICAgICAgICAgICAgICAvKiBWRiB3aWxsIHNl
bmQgVklSVENITkxfT1BfQUREX0VUSF9BRERSIG1lc3NhZ2Ugd2l0aCBpdHMgTUFDICovDQo+ID4g
KyAgICAgICAgICAgICAgIHZmLT5wZl9zZXRfbWFjID0gZmFsc2U7DQo+ID4gKyAgICAgICAgICAg
ICAgIGRldl9pbmZvKGRldiwgIlJlbW92aW5nIE1BQyBvbiBWRiAlZC4gVkYgZHJpdmVyIHdpbGwg
YmUNCj4gcmVpbml0aWFsaXplZFxuIiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgdmYt
PnZmX2lkKTsNCj4gPiArICAgICAgIH0gZWxzZSB7DQo+ID4gKyAgICAgICAgICAgICAgIC8qIFBG
IHdpbGwgYWRkIE1BQyBydWxlIGZvciB0aGUgVkYgKi8NCj4gPiArICAgICAgICAgICAgICAgdmYt
PnBmX3NldF9tYWMgPSB0cnVlOw0KPiA+ICsgICAgICAgICAgICAgICBkZXZfaW5mbyhkZXYsICJT
ZXR0aW5nIE1BQyAlcE0gb24gVkYgJWQuIFZGIGRyaXZlciB3aWxsIGJlDQo+IHJlaW5pdGlhbGl6
ZWRcbiIsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIG1hYywgdmZfaWQpOw0KPiA+ICsg
ICAgICAgfQ0KPiA+ICsNCj4gPiArICAgICAgIGljZV9yZXNldF92Zih2ZiwgSUNFX1ZGX1JFU0VU
X05PVElGWSk7DQo+ID4gKyAgICAgICBtdXRleF91bmxvY2soJnZmLT5jZmdfbG9jayk7DQo+ID4g
Kw0KPiA+ICtvdXRfcHV0X3ZmOg0KPiA+ICsgICAgICAgaWNlX3B1dF92Zih2Zik7DQo+ID4gKyAg
ICAgICByZXR1cm4gcmV0Ow0KPiA+ICt9DQo+IA0KPiBUaGlzIGlzIGFsbW9zdCBhbiBleGFjdCBj
b3B5IG9mIGljZV9zZXRfdmZfbWFjKCkuIFRoZSBvbmx5IGRpZmZlcmVuY2UNCj4gYmVpbmcgdGhl
IGZ1bmN0aW9uIGFyZ3VtZW50cy4NCj4gDQo+IFdhcyB0aGVyZSBhbnkgcmVhc29uIHRvIG5vdCB1
c2UgaWNlX3NldF92Zl9tYWMoKT8gV2h5IGNhbid0IHlvdSBwYXNzIHRoZQ0KPiBQRidzIG5ldGRl
dj8NCj4gDQoNCk9yLCByZWZhY3RvciB0aGUgc2V0X3ZmX21hYygpIGludG8gYSBmdW5jdGlvbiBp
bnRvIGEgY29tbW9uIG9uZSB3aGljaCB0YWtlcyBhIGNvbW1vbiBzZXQgb2YgYXJndW1lbnRzIHRo
YXQgY2FuIGJlIGRlcml2ZWQgaW4gYm90aCB0aGUgbmV0ZGV2IG9wIGFuZCBkZXZsaW5rIGZsb3c/
DQo=
