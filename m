Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eD9gBk42e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:28:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E24AEAAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:28:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CC7560870;
	Thu, 29 Jan 2026 10:28:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G4ptBSaNCxMP; Thu, 29 Jan 2026 10:28:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7853060872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682507;
	bh=kWTwQW9eS5mT0b2g6F7TiK7peOX3/2vqjzk0iBuiJR4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FQt+k6NENaBItqcq/ply6+TTO9slPcx0V19ymzq1sIoQ7WwPYKOVCKufBDJ5IYcZs
	 /8QKmihd7kbrWDzpShqSg2WQ0j9Wz7PFsfkjo5xBGT1g5L9uFm2BCQL26xBadO0jMB
	 5T49wKtjoTT0XKtxTODLSqbDB5KCgUbb53Fv2WwxFAsjC8eV2LqiyTTpmGffy68TL/
	 /hTwkkXmj88uBhaxKNFvRbmdMr7dY+Hes6NjsW7oDvg1QSIOX9iNDY5xHTsXI0Pgvr
	 Izq3V5UMyNJSi4GrqqWMmrXefzo81u9JrFbBUKtSGX/MyCu0MGax6BAHh0ChgwQZrD
	 jm4bGw763RvpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7853060872;
	Thu, 29 Jan 2026 10:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ED861AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F0B56086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:28:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WkJnoXs-pV96 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:28:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C439760866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C439760866
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C439760866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:28:24 +0000 (UTC)
X-CSE-ConnectionGUID: lzbjLoNXQt+Ezh4id+4bQA==
X-CSE-MsgGUID: VTlR7UKcTRW9FKo3D+aPrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74778608"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="74778608"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:28:24 -0800
X-CSE-ConnectionGUID: s/mA4mFpT4e7lbFpehNxzw==
X-CSE-MsgGUID: R6qt09dvTFKDI+Vv4kfr9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213041921"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:28:24 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:28:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:28:23 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:28:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRrw8DjLU7FBz9b7NKPgZIEPlLwRXWXiHIPrr3f4kwm9myn5z1ZRFU33F/LTx03ibrPs0ravvVsMcKc3whYRiIgML40XCJoiZSP9fVpO8qLK86X6JDzgnlauRbSjb1rOsw/e0HZ3wNuTvvqUEh252hyvznVDzet1cPpC5ze+D+zd+HJQybYdng7d1aDRCIr3Hf3bs8J6W5FSqPUkRfxlbIopTl/+hLWF/lmfPfYRqPyqV8JDbZONADH02n4STtMKwGLFF62YKJi6fLSsUZxBOtA+4qiqUD6a+MFXxn5rOJ9VdC85qjwK3PyhbJglZULhmHhsA+20l7P5cEoHNu0QLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWTwQW9eS5mT0b2g6F7TiK7peOX3/2vqjzk0iBuiJR4=;
 b=m3SKcNkIkuDSnxMN1g7baxqPGriDsDfKF6gXqM2nA7MWotI2fwIpYrUT8W9hwwHQueTVHriUpSYCH8p0qclWWRFeCx8bAAIXoeq467PekRYYO769e3QxNuggVNvNBmNOP54qfo4NTNWYRlB/cEK/s8F51JXjmegykrsEJYql4YBF3EbHsdhrRMp6+vTfP1MB7UMj0+JGrHNqTdibUQNW1lEwTbCj9iSRhIGJApYESNFFJTXHMwyQ7MG+ZlYWnZg2eF5ggC8ISjgLTXrq6ouFSPNm7XeV90M0ndStHTgdo4zz6DqwRWiG3jiQth1RDi5C0iNQGs2fj8gDcAgJaIgkJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF8225D2149.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Thu, 29 Jan
 2026 10:28:20 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:28:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 08/30] docs: kdoc_parser: fix the
 default_value logic for variables
Thread-Index: AQHckPaULQahoNNaZ0mVAtmDNMx53rVo8gdQ
Date: Thu, 29 Jan 2026 10:28:20 +0000
Message-ID: <IA3PR11MB8986873BA3BD91FE4DACCAA8E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <95b5345d74ad7c7e4898d022cb9195d0e2ac13cb.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <95b5345d74ad7c7e4898d022cb9195d0e2ac13cb.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF8225D2149:EE_
x-ms-office365-filtering-correlation-id: aa49746d-1326-4e96-7b10-08de5f211ffc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cUtrazhhK0RMeVFqejdNKzdaSGQ4enM4dkxuSlhpSHZ2a1ZDK3RuL3BUZUtX?=
 =?utf-8?B?WTJES3l6TjB0akFQT0FhM0VqQUJDdnBVSENlcFoyYzVmVFFyUi94TjJzMWFo?=
 =?utf-8?B?WVR4czV4NFNOYzNPQXJFeEptNi81UGxRR1E2WmZKelBzTVJpTnV6bTIvZ0Np?=
 =?utf-8?B?NXpSREIzbW40QkIvYzNjQVIya1cyOE4yZ29tNUJGRk96dGlyNkN0MENZN3ZR?=
 =?utf-8?B?ck96cnpyMVl3V0Mxb1phdkVaOGNGMG9zbXZLeVVpUnJHOHhmazJ2Y1lreGl3?=
 =?utf-8?B?dXhYMkxmNGVTdEFDcDFOUHRBUk5Sdld5TFR5Tnh2Smp3cFVZUW9JWjU5OWxh?=
 =?utf-8?B?dzY4a215UDA1ejFsUDNqUkZ0RzJEYXhYSy9zZHBoSC9NYUhkQ01NTVR3WUZt?=
 =?utf-8?B?NE9tdDhkeGpyV2wyMzE3NzRRbzRZV3Vua0xyYlJjRHg3bFpOTCs5a1g1a1dx?=
 =?utf-8?B?Wm0yRzc1bXB0dS9NZitITkN0cmVNZXE0dC83Snp1aUx0MUlPZEJFVHp1UE8x?=
 =?utf-8?B?NXN4dVM1di9vQ2RYc0VDNHc3Zjd6SDE5NlZIdlRwczd5UmtTQ25WMXJJRGFW?=
 =?utf-8?B?anRCNGFBUVQxZ3NqcDRrVkhHVzN2K0ZNM0krMmNxWWpTNGpzMnN6NmJSSjIw?=
 =?utf-8?B?VHIxVi9IUld0cmJXUUF2L0ZKV2hMWmg2SXg4VUp0a3VqUmF5U3l1NFRMM1Ur?=
 =?utf-8?B?UHlzeVYvYXRsKzNOcXZsMTlXQm5Bdnk1alZqZitjMnlBM3JELzhQWXNHWmxX?=
 =?utf-8?B?QVhWNE9WZHVFRHpDaXg4ZEZHZldBbmkzTHUxMW5zV3BXeit4ZGpHbi9DVlN1?=
 =?utf-8?B?ZVd0K3NuVzNpbGs0bWpoRy82Ulc0MVRTUmZrcktpT0FiMXpqNDR5TEpQQlR2?=
 =?utf-8?B?OVh2MGw1K2pOQ3lkaUdwT29DUTR5ci9zVnhQNE10VThxbUFOazVjQmV5d2Ex?=
 =?utf-8?B?aDJibmZ5NHJEVUlIbVliZnQ1NmR3dHdDWXNBWGNRc3E5ZlJXZHJyMDdHaEZw?=
 =?utf-8?B?aE04SGh4eGtTa1UwdkFobWR0eEJMNkQ3TGIxamY0ZG9aekpxZGVHbnpnc0NO?=
 =?utf-8?B?cDRWOS9JenR4b3VzTzRDckVkQzJRaFB5QnBXUzNQcll3cTkreGRQVEI2dFF2?=
 =?utf-8?B?VGN3YVpUcnliWDFmTDQzT2NTcjkveUtRVDAxWHVoNzRJY08vOVFuaENWeVhK?=
 =?utf-8?B?bE5UVElUVzNCYjdpcm1lNktGM1hLUmNqekwvSGdkazhCZFFEelF1dmVxalFv?=
 =?utf-8?B?V09oWnRtUlV3QlRCQXpKRkZHT214VTlDM1lmb2I1Zk84RzR5Mk9RRVhQQkRC?=
 =?utf-8?B?UmpFYWFjYVQ3NEMydUxtaEF0QUx4TFJxQ09XYUxrYkJqc1JlZlpTdk1IbUpS?=
 =?utf-8?B?a0RNa0dqYy9jMWlKYjV4SWk1OHhva3JFUFBSdWRBM3dtOHZqdWRUeUY1dTBw?=
 =?utf-8?B?UHI0d1BVWFdDcVRERkZZTlJ2UVhkMDFsSFlvNUROcWE3Um5FR0RZTzU2bllX?=
 =?utf-8?B?aHkyT01mdCtpSFYwWDh2VDBYOVFjeEJCSzRmazdLa1B3bW16SGFvUVNFSy9w?=
 =?utf-8?B?UGlrek9nWXJkUEVlS3VmN1ZDUUtzWUYwVXpEQnc4WDFYOWpLUjIrZTY1Mmpo?=
 =?utf-8?B?NjBDTUtPek1FZVhKNmVGRmFiN1hXa1IwbTF5Tk5Wejd1MTRjZExrR0dreXJz?=
 =?utf-8?B?aVBSaEFHUHVpVDNlSzZTTjNjeGhtaVJsb2FiRW02MnVzTmtMdWpualI5ZXRP?=
 =?utf-8?B?OUNMcDdZZUdPNDlrRWtQZm1sYWtBVTNWa21WdFZ0bFNHUmtrMkt6ZFQ1SkY4?=
 =?utf-8?B?eFRlbHR0aUU0NitOakZKQ00wV0tkeDVPUSt0N2J5OXU2Qk1MMjZ0MlI4REJl?=
 =?utf-8?B?ZE5iaXhpaDVFTXJHOHZlZGp6UlRwelNrbUhlTXJIdk9nMnFzN3c2eEhDRE9L?=
 =?utf-8?B?ZTZ3b25HOFFZeWlodDVoblZiYzhuQWl4NHNSN1NtSy9aNTVxSmFmNDE5eDYv?=
 =?utf-8?B?dU5tOWhsdHRkcCsxRDdTbFprRmRLSE1IU0IzTzA5Q3UzbDRta01GamNBWEU4?=
 =?utf-8?B?WEl6ZG80N3kvdm1WTXRteFV3L005clZTNXRUQlNsclByMEFNYlR5emg5S1hx?=
 =?utf-8?B?T0owQmtwV2VkblkrWXlKSENRMEo1UWdoeWdma0g5SHV2RFdCWU43TE5IV2F1?=
 =?utf-8?Q?YzI0qXNGzx4t/lkh4PeyyVg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTVHRUNsd24wUm1tNVFtRzN3WjFBNjFWWERhZFNxUXNjcFFqeEg3Q2VZa2k1?=
 =?utf-8?B?ejRCM0MrZEF1SzZneUpab2F3YzJwM2c4a1JIYVozclBaa0lhNTEvU2F5WDNB?=
 =?utf-8?B?RW9pb2dFakpvY2xSOHhzUklBMUJ4cHJ6RWNmVHBMcFpSN1N0aEVUcXJObGVK?=
 =?utf-8?B?MjdQd01BMk9RQlR2cDd5RGxDc1RDV2EzeE9WaENKbXU5R2NTQW9HQTJ0cW5r?=
 =?utf-8?B?NVZCem11VHZONUdCcUoyd3lPMmsyaTd3bDlySFZEWkhJOG40ajZ5TXNHZ2hQ?=
 =?utf-8?B?NGZhL0YwcjI0dzg4L01NMFhlQTNNK2ZGWXVWNTFzVyt1M2F0d0c4Q1puWVox?=
 =?utf-8?B?Rmc1ZzY2ME5zUXBQU3ZKODRCd2hxYXI1KzhvVUhnK0RibXMrMUhrNzZOVTU2?=
 =?utf-8?B?dk5wL1QzMVlJY3BvWVdwWnNDU3FBYUVQNGVOdVRiSkEyTXlabWxBUWJlVldN?=
 =?utf-8?B?UjNmeVhJYm9FM3Q2T0lXdkxBWktiYURhTEl6T0dHdVpuR3ZHeUxua2pLUVp0?=
 =?utf-8?B?R2doZUN1NUZaTCtQQndwK1pGS3pML3doV2t2dDBOOENMaHFlZ2VBTU9obWVM?=
 =?utf-8?B?azJTUXU4Z3JFZURzcDRCYkVSa2JSV0hkaGlZT2E5QnBUWFRRSFNwMWE3eHNl?=
 =?utf-8?B?Tmh3eU1nR0MxdFFuTGxLUU1nQzhJTjFXdjlDY0FkVmc4d2VBZE1LQndmMUZF?=
 =?utf-8?B?M01nQWRaVFpaeHhDaTRhRDZ3MGVZeGFGV0xkWThxTS9JVmxoM29JczNaK0ty?=
 =?utf-8?B?UWZ1VjBHWW45anpxbUZWNnJhWEt1b0tsTVJCT2xWaDJreDh0UktXMUJiMHNS?=
 =?utf-8?B?eHBvaGhZd0kralhBL3hrTjNZV2s2Q0RwK1IvN2JRbWZSdWpJOVVOck1ubi9K?=
 =?utf-8?B?YjhzNXRSbW9RVUtSTnloR1RRaHlTSkxnTmZSRHVSbXRFc0d1QWs3S2JLczBI?=
 =?utf-8?B?Y2JkOVdJR2VnYWNUWlhuTW5RTmZyNm55RXRzYVdKM0hkWWxnenFVQXJNclF6?=
 =?utf-8?B?bWRxZ0lnbEQreG5Md1RFRktTTTNEVTM0Vnp5MUxMQUs0bDVRVnFLRVJIdWh4?=
 =?utf-8?B?QXd1aGNuS0RXQkhyWlg1THRtVElZSlhXR0dMb0NJejNhZFdGd0wycTh2bHFz?=
 =?utf-8?B?Q25Za0hoRTFJYTlLbzZpREJFeVV5UEd2aWpJbWt1NVMzRHBvdUI1UXI0OUFH?=
 =?utf-8?B?K29mUDNJOGRKcUtJMVNJY1hlem1pUjEwSnRpNDNrTDRwV3YxRmVwamVzU3k3?=
 =?utf-8?B?M0Z1emRubXorMDhLR2huV0h6czZXaGRXNDMyN0JrYXQ4QStrN2xwSDhveWww?=
 =?utf-8?B?Z2EwR1NrMWMxaWR1WnI2RDh0K3dvY3pSM2hIbCtjam9jaXRYbGdpbWZqZi9O?=
 =?utf-8?B?dlZmQ0RucXFoeEt6ekZjN2xDa0htcEZsTVhwNis4Q3BTVVErWjFhUFJHRDNv?=
 =?utf-8?B?TWpDRHY2Y3dvSTVVak5BcXQ1ZFVmcS9LVGtoV2txS1ZhYjJrdTF0VTRDZzYr?=
 =?utf-8?B?VG5GWitPem9jQ0x0OUwrT2hLdW82V2pBNEJVT2crd1FnYUZuOW5EN2g1U0ds?=
 =?utf-8?B?a2FkUUlPNXlpQXFhWnRHaTQ5YytYT3hGYk9tamk5QTAwbmd5Uk1NdWlnRnBm?=
 =?utf-8?B?bW9kblU0Nm1HYUh1dmJQaDhQSHpQRDNuTWlvSFR5aGIzSnFleEdXNzg1TkxV?=
 =?utf-8?B?U0ZLQlpyVC9CTVlGL2dSNlpMei9FOStFemNoWUltY1Y1b1QvZkdxbk9maXlK?=
 =?utf-8?B?R0FyZGp2dForUkRXeHB6Z3VEMFhHL3RQc1A1QXlpU21qalNWd1RZRFBTYnF4?=
 =?utf-8?B?TmpqVk5xS2hsN1JuUTRNWHZST1RWSkQ0Uy9sb2FIRFhFMXY0ZE5lV2dVaVJq?=
 =?utf-8?B?U05GMytCa0JKT01tT3U3NjEwUXRyZUQ2TlVjeU1kcnlSTnBoSFF4WmRyUW5T?=
 =?utf-8?B?eGpuNUlrd0xCQlpJYUgxaDI4ZkZ0SzAzcWplMTl3c25MOWY5elFXVEpUTHMw?=
 =?utf-8?B?L1c5RVBGVmszNnhMSUx4bm4yM0NiL3A4SERlNlQrK1VWTlRIVE5JSGV6cFlC?=
 =?utf-8?B?bEdBdExESG1GMWw1STdjUGd6VWQxL2FmTGM1WGlCcmpXZXdXU1NkckQwR1hN?=
 =?utf-8?B?VVorbnNUNWxmelRMU2NySVhXcGpoa0lUaWV4dEpvcWpOeXF3WGdMZ1l1azlz?=
 =?utf-8?B?cnI1VkJCRlNCbGlQS0x6RDhscWRZaVpXcWV1SThFdVlaR01kQmlFMlNNZGFz?=
 =?utf-8?B?UXVzdXAzeDNyaUltYnNRUTZIZmhiUGtTSFZ6WmJPZ0JEcmN3U3BFcEUwVzRw?=
 =?utf-8?B?V1dkU0Z5TVVNL0l2bk1DZGNHTFFGeXB6WGZ5L3EyVWpqL1ZzNDg2bi94MkRE?=
 =?utf-8?Q?0yr8Y49mPmho8GwU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa49746d-1326-4e96-7b10-08de5f211ffc
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:28:20.8239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /vItZ0sqRAgmRzy6cF+QC2QGdKA3XSH5A9Vn7yPLjH6/yUO9mD0MUuMn5LnMH8cNdqflBumQnmq5gdovOVUl1FQWJHf7WtF9RaucgvAzXHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8225D2149
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682505; x=1801218505;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kWTwQW9eS5mT0b2g6F7TiK7peOX3/2vqjzk0iBuiJR4=;
 b=enwB6LgWEFlqm0gHA25BMT5CsEP4JsHr/jM8CW/kY26mDL9wRXiGwY5f
 eh0rjEvbeBNAjICmasaipKPItWb4kxexroOEJN53MzlgP8WES2gDRgPIB
 f1XsWRovXRAPm+7CcXSi8K0HrcYYPlOhzZVqaOT/F4Jf4GA677Y/4nCSK
 Y0n8tBEc9pJQ271bwWDeV3/E0HFXn/d4r66OsFSQ9ZRsy2KK9z7e8JEhp
 +XJa1zrUuLdvI39P4TmK78kGwza+hLprIjWbgtyIId3M/rJKOTRiu6VCf
 O6pWlaQpCu/IPAmKmN4U1BqfbLxqMXHIO/v4aDKM6dKEtWHmtXJhdgG0l
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=enwB6LgW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 08/30] docs: kdoc_parser: fix the
 default_value logic for variables
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
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,lwn.net:email,infradead.org:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 65E24AEAAD
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
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDA4LzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogZml4IHRoZQ0KPiBkZWZhdWx0X3ZhbHVlIGxvZ2ljIGZvciB2YXJpYWJsZXMNCj4gDQo+
IFRoZSBpbmRlbnRhdGlvbiBpcyB3cm9uZyBmb3IgdGhlIHNlY29uZCByZWdleCwgd2hpY2ggY2F1
c2VzIHByb2JsZW1zDQo+IG9uIHZhcmlhYmxlcyB3aXRoIGRlZmF1bHRzLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3Jn
Pg0KPiBBY2tlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+IFRl
c3RlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+IC0tLQ0KPiAg
dG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5IHwgNCArKy0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBiL3Rvb2xzL2xpYi9w
eXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBpbmRleCAyMDFjNGY3Mjk4ZDcuLmNiZmRhYmEz
OTQ5NCAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5
DQo+ICsrKyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBAQCAtMTAz
NSw5ICsxMDM1LDkgQEAgY2xhc3MgS2VybmVsRG9jOg0KPiAgICAgICAgICAgICAgZGVmYXVsdF92
YWwgPSByLmdyb3VwKDIpDQo+ICAgICAgICAgIGVsc2U6DQo+ICAgICAgICAgICAgICByPSBLZXJu
UmUoT1BUSU9OQUxfVkFSX0FUVFIgKw0KPiByIig/Oltcd19dKik/XHMrKD86XCorKT8oPzpbXHdf
XSspXHMqW1xkXF1cW10qXHMqKD0uKik/IikNCj4gLSAgICAgICAgaWYgci5tYXRjaChwcm90byk6
DQo+IC0gICAgICAgICAgICBkZWZhdWx0X3ZhbCA9IHIuZ3JvdXAoMSkNCj4gDQo+ICsgICAgICAg
ICAgICBpZiByLm1hdGNoKHByb3RvKToNCj4gKyAgICAgICAgICAgICAgICBkZWZhdWx0X3ZhbCA9
IHIuZ3JvdXAoMSkNCj4gICAgICAgICAgaWYgbm90IGRlY2xhcmF0aW9uX25hbWU6DQo+ICAgICAg
ICAgICAgIHNlbGYuZW1pdF9tc2cobG4sZiJ7cHJvdG99OiBjYW4ndCBwYXJzZSB2YXJpYWJsZSIp
DQo+ICAgICAgICAgICAgIHJldHVybg0KPiAtLQ0KPiAyLjUyLjANCg0KUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
