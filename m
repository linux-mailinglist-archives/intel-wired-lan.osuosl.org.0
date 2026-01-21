Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKGLCud9cGktYAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 08:19:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAD952B76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 08:19:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EF6160F7B;
	Wed, 21 Jan 2026 07:19:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Htk7wCl_bylO; Wed, 21 Jan 2026 07:19:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DF2160F7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768979940;
	bh=5fiSxRbjvSjqtXYMcvIIzD7+F324/9bC8hAk9Zaf3xE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zrQk8h46d3xYGf8ldJjGpXC7pGVDXjJlxjhTGGbrQi862vzBSlkl4+XuJUtku8hmd
	 Q166EKGRh2zmFPe0WAqPkngSuVnTrySKTAyttOtZ4GTBUFNZt2+ZXSODQL4uqenwYv
	 lvzNghkaSrBtaEQIA98r/mDpGk3znauEPiwyqofOjOrq9ORjarKhXSGbGDwu1bBI0c
	 UB0wPTv5nBXMNMFPaR1XoVRQyBy+7aUunU2EQBQUJZeqX+FSqjLxNfoOE0piiyvXOG
	 lp5un6NwwVjQXmlp3bpRdsllQz3snLa3fIUrRscjG1LSC6PERvVW+MxfboQNx4yB2n
	 BbboH5EhMD/Bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DF2160F7C;
	Wed, 21 Jan 2026 07:19:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22DB6160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:18:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A91960E7A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:18:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 16CAuOEbNyPu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 07:18:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0B94560E68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B94560E68
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B94560E68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:18:57 +0000 (UTC)
X-CSE-ConnectionGUID: J/z83b4pSDOxlklUoObe+A==
X-CSE-MsgGUID: sOrsvCTVRp6RSzzv5w8vtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="69220442"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="69220442"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 23:18:56 -0800
X-CSE-ConnectionGUID: gPc3JwJzTsiQK04F0ynypQ==
X-CSE-MsgGUID: i3df66fmT8ee4aXGjl7D0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="210877019"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 23:18:56 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 23:18:55 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 23:18:55 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.52)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 23:18:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b5f0ncpn3uP5dUdynkIP3FUu/VIDoY01VW4uRuSct7m4DZyMH5pr1Tvf7JHEuK2sZzpUK6eSpEuy3AhqYYO6EBaNS9D8IXcg2RGmCBNP/jW+UzBDdC5YF4Ho7dOSEB4XOG0NDnY8eShy9HVWUufQEmB0DhGXoq8nFt2F7gaZPMbMuUlMnwR1ekPcEAoAMV9YNb6s1WPU8ixv9TFKT3CdTzAcVujovl191rb/9ONjIoP67wPHnAqivpZWyX+SyJ8p0mnr/+4nJ/RbPVlWKDxyhMRHle2txmhMbaiTn5Qmk5tf7hCmx5JR3elsWhFdU2408rRk4Qjc5smLImOeFglCcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5fiSxRbjvSjqtXYMcvIIzD7+F324/9bC8hAk9Zaf3xE=;
 b=MVjDoZsh3m55Djgh9u9Vr0hlA+P3viWG277pgUMp4Lv92QPdCwJoic+WNWVHZ6U5tmnF1h01Tt75OKKCP9ZZpqSo3hOqwnRRITnmQaQqPs+X/6aXApfMmHnLP7jwl7r9Eu7pkgE/cxkPaQKOcEyVjoS+CovY+X7fE2we0rmsCgaSwFX4+cQHOjg6VxyXfb18PKgfObncJyM8ohEAKaNI6bVmBDM3kaBsbycQnSVPKcAl4knFQNCVSsxEFx9GKmSYp5gZ+Cau29D9Thzzd//kQVe88En+f4/x/jxLZmLC9dOvEv1leB+FRs0gcXEV5l4X6FOLL163qLQjdsU1RWxCug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB7666.namprd11.prod.outlook.com (2603:10b6:806:34b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Wed, 21 Jan
 2026 07:18:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 07:18:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH iwl-next] ice: fix system hang on `ethtool -L`
Thread-Index: AQHcijM5pW/fzrEjnk+Pyy7RcFnXw7VcNs8Q
Date: Wed, 21 Jan 2026 07:18:47 +0000
Message-ID: <IA3PR11MB89860B4F0CF5B396C86747D2E596A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <20251204155133.2437621-4-aleksander.lobakin@intel.com>
 <c507379f-07a9-44fe-9679-277d618c0e04@intel.com>
 <20260120173405.82147-1-aleksander.lobakin@intel.com>
In-Reply-To: <20260120173405.82147-1-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB7666:EE_
x-ms-office365-filtering-correlation-id: 2f4a652d-7334-4b14-ac27-08de58bd519d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?MTRsMXFqREZJekxlOU1HTmdlRThOSm1yTDV4WFdGcVFRL0dqNVEvZGhab0hV?=
 =?utf-8?B?U0dpNEFKcDVlUi95TkxWSURHcDVpMklxcm9BcmFqSmwxVmt5QUxhZFpGWkZJ?=
 =?utf-8?B?SUtOUzluMDdJcSs1UnQzRVgxZzhUek51YlpwVjF3R3hldGs5a3lYTXFvVUx0?=
 =?utf-8?B?WnQvYlZTQ3pUcDQzTFN2MUVGakIzNnVVaFB1YzZHVkx6dVNBME9Cc1JHSVFS?=
 =?utf-8?B?VFlmc0doV01Yd3IxaG8rMFMzZlBxdldZYS9LS3BHWXY3dTI0ZFBrWVo4elZa?=
 =?utf-8?B?STFVUmlBTzdQMkdBRUZqcEtrS1RWRGRQUXhEYmZocVhTaENVU1paWFNlbit4?=
 =?utf-8?B?Y0VPT3Q3R0czN3czdEQyNUVWWkxKMmVmelM1SEFlQjM4UWpvdFNrM05IT1E4?=
 =?utf-8?B?T2dmdXRSZDU2SkJlR3NjUnllK0pBc00yekcvT0Nib3JWNTdVM1ZWYTAwdjgr?=
 =?utf-8?B?QS8zNDh5aE1VcEhERDBNT2c1UTZkb1llZ1VFVXZuRGh6N1RGeEFKRDgzNVox?=
 =?utf-8?B?Z2FZWWROVHFWaDA2T3lIRGUyODIrNXJTV0VDcklxUnE4blgxbHNFaUJhRVJF?=
 =?utf-8?B?QkdpYUMxZXFibnRtYy9QNWpsZFFMUTdhakxOcUtHYk9VZkhtM1dzakNoc0xU?=
 =?utf-8?B?Vkt3d0d3NXhLWHQ1aFlIWjB5c3M0d08rNjlITWRxOFJGYmlZbFRoQm1NQnkv?=
 =?utf-8?B?bk5KRm0xSG9zelJXREdsbytPdGwwZGJqQjJUdDlyekpDNjN4UUdOUFRuTkZO?=
 =?utf-8?B?YmJQaCtpdUFhRVBZSmY3K3E2cWF0ME8yQ2hQR2JUckk5N0Rwd1pQQ0ZRVnMw?=
 =?utf-8?B?UVlLa3Bid1g1aVFSRi9nYmJaUWFFVTNRODBsTXljTXJKc0t2L3E5WDZMNm16?=
 =?utf-8?B?V0tmY2Uwa1ZLeXlHK0NKNk1qc01mdHljNE4wdHZaRWU2NEJOWnAwS1BCbkJW?=
 =?utf-8?B?ZmpZWStaM2JMVmNvQlYxUUhuaWpTS2U4QWVYQ0NocmNDTDJiK0VzWDBOdTBk?=
 =?utf-8?B?ZHg0V2pvYnRtdE1HYkRWT0VjbGhmVmlaak5UTldDSVZhV1NaTkZtQnN6LzZB?=
 =?utf-8?B?dllqb09aRkRaL1JJQlhtUkJZd2VBNkpoUHdoaml6QXJXK2dFdGd6RnhRcUlS?=
 =?utf-8?B?U3BSMnRWZGtPS1M1ejE0NkpPOUhVRXBINEJLazYwQWZPOGV3MUsyM2VBYUFF?=
 =?utf-8?B?aGFBRldrUkkyMFhnQW9SVWFyYWJWSnVDcDJNMnFuMUdVZThWY1M3OS9mbWM1?=
 =?utf-8?B?M2p1TlFONU9UQkk3REJFTkoxZTUyZERBUEhHZ0FzM29LcFdTem1sMUNiUERD?=
 =?utf-8?B?a25SbG1oUUM5N3E4RGRVQXlNeE5yckhnemVTK3JZVi9RZWQ1cGdQbytlemZ0?=
 =?utf-8?B?OEtJSWJKV1VRQTc2Q2VScC90YThIZjlyOCsvK0FralVRczQ2enNzd3ZTYlhT?=
 =?utf-8?B?Tzhyc1JESVBCYVN5WnhEYnVYZFNhNFpCM0pXOVk2blNhK3IzQVpiUzhWbTdB?=
 =?utf-8?B?VnI5a0NFU0dhaUNicU04MVBFTkpoa2dLWlk4T3BvOVJROFlZZUJScHlKcVJE?=
 =?utf-8?B?ZWIxemZKUUdjdWI2L2dCZEpyNjQzQjJRb2tsRnJzL0NuVTE2cVo0UGR4TEk1?=
 =?utf-8?B?Zm1MSE0vMDFaTDNRTXJsNVgvOW9UQ2g4WGpxUFJUazhLOEdvRndLWmxPbDZD?=
 =?utf-8?B?djNxbEtwcWlpai91eVpjaTRhOHVJekJaSStPckdGaVFkaFJGRE5ITTJwcmEr?=
 =?utf-8?B?ejRpZnV4ZHJvL01ncEE2cmVPSTZKRlR2SHl6bmpUbVgvUWVnUlFwVDFFSnhz?=
 =?utf-8?B?dmlta3RQU21veE1vOEUwV1k4aUM3SUxHa000OHc1djZ2aEFXaUs0dmtmd3dy?=
 =?utf-8?B?QndqSzRpVUdlYnpLbWhQaUlXNE5SYUQwZnQzQ2ZWV1Q3QisxcGptd0JZR0JJ?=
 =?utf-8?B?OE5XWnRBeTZ2WWYxWkRTREJKYnN5YmpJZ3k5Mm1XQVJVVnZ6cE1oQm9RKzFz?=
 =?utf-8?B?WXBHYTV4TENBNkp3VEhXUHkyMG5vdEU1Wjl2R3RuR0QwZHlqaVAyYzM0dzFO?=
 =?utf-8?B?T3pzZzBIcXdLWkZXUm9yaGZZVTQ3RmZtcG96L2JiZXV2SWF0YnExUWtRbVJK?=
 =?utf-8?B?elN6S3JyblBTNGVpUlI0QjNCN1B3ditOWE9NK0N0dXo2M0syeDZYSXlkTVUy?=
 =?utf-8?Q?ApzLYXiSN2Zs6RXY6sTeWmE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEI1L3lUb2srREo1UGxGWVpiWTAyRUhibHNoMTYrRkhJVE1Zd0ZGMDFlVG4y?=
 =?utf-8?B?S3N2MU1KbUlTM0UyMVluOHo3QXlSMFJPbjhScjJDN01QNDk4RkQ5cDRXa21R?=
 =?utf-8?B?TUVld0JFZWVERSswM1pFS3JvT29IdTR5aFNLcXNMUEhVekY5VTRacGtwZjVJ?=
 =?utf-8?B?dVdYWFpvZzVxS1NBRldsL1ZlWWZiZ3NRS3I3VFF1eXAvc29jTHBmUkZNTXY1?=
 =?utf-8?B?dFdRSUhKdm8rdzZHSjdlNWE3YS9rMUQ4eWNRZ0tHb2pVd0Rqdy9FbUlDZUtL?=
 =?utf-8?B?STloWTZ2OHljd3BUTDBWVUxBYy80M3RwSFU3VW5CWVZROEhCTmRROTFJMHhZ?=
 =?utf-8?B?QVdTZitXMDJrdmhtSTVVMnpNa3k0dURVS3JPOE14aUtGRlJRWDRYTFJwKzJn?=
 =?utf-8?B?cTZJbUJoT3VycUhTMUtodEkwK3pGNTZTRVM2bldsVnFLVkJ5REphN0pudXQw?=
 =?utf-8?B?dncxQk5GRS9rVEp0Y29Pb0JZNnZ1cDZ1TGVDbmVBN2tMSTdQck5QMUNDeU84?=
 =?utf-8?B?TDVvZ2h0a2JBbkR3Z3RnMTJzMGxadTR0Y1Q5b3NaODdXK1BwRUlsVTgvMFJ6?=
 =?utf-8?B?bXh3NWpweUxiRzRzdzMvQ1pJalRGdVdaek03Ty9oUWZ4dFdxZkxhNVQ4VERM?=
 =?utf-8?B?aGxUeWpmSGhEQWV4bENOSEEydS9aNzN3ZnJHeDV4ejIxK1NRUjVtNmZMWEF2?=
 =?utf-8?B?Y09NNm9LcS9NMDRtNk9HQ1hzUXdJSkExUkRQNE11MGpBYWswTWgrTGUrQ0FW?=
 =?utf-8?B?enRadmVhdHAveU00ZlpXTG9BVk9BQkIwTEJKb3pGc2ZwWW5kM2picmI5RE4v?=
 =?utf-8?B?dXlYcjJwQjRqdy9lTmFoZHRXNlF3VmVDRGxWMXg4VXMvL3FycDA5N25RRWhB?=
 =?utf-8?B?cWJPZEhkalp1UXFTbW5ZUXRpbXhiaE1peWNsZzZNOGdOSHpQQ1paaTNzREtn?=
 =?utf-8?B?N1NBVWVrc0sySGZVNWRUdStURFFRQ0t3bG5RSE1Mb2s5RmhoN3RLMFR0L1lq?=
 =?utf-8?B?SEJ5YTF1MEFzcFl0dUw2R0pwZEE4LytBdVUraXFZZE1xVm8rTWRwMTNqNFlX?=
 =?utf-8?B?aHBSL0RicTREcXNwajNaYndHdFRCZDFCY1pRVUEwK2xmd1hQRDFGN0dEY3lm?=
 =?utf-8?B?NVBvNk4zSnl0SEhaTDNxcFBsRmpJak5Ic2tjOEFNaFVvZk5kY0xTbFp3Uy9E?=
 =?utf-8?B?SUx3czVzQ04rbjlPUno3bDhVL3oyQytpdzI5Yk5Sc0drN1NEUXlLeExPYXB5?=
 =?utf-8?B?YXVFb2lvWVU4azVIaVYrdi9TNytLNGRaYVN2cTNkQXpWK2hxTFFnL1dkVDV5?=
 =?utf-8?B?WStKZEhBYjBtbWlBaVVIbkFkY2Vqa25aTVRtVEJmdjhlSmJyamk5Ly8vZTNP?=
 =?utf-8?B?MEhsejg4VFJ4WGIzenV0UlI5Rzcvay9BbjVjZCtBS2UwZmJvZU5OTENTaHRJ?=
 =?utf-8?B?ZFppNGM2dzd1VVNXbHhkTlFMaTRVekJ6czVEdDdIQzNFUmFQUzVRZk5pMVVt?=
 =?utf-8?B?Wm1MRU1oODhLM1RBMVRJR2YzbHFabTdSZTV2U01ybjVKcGVUSHpQOFJ1Lzky?=
 =?utf-8?B?Zm0wMjh6akMxUDU1eHRNR3krRVc4VHpXZktJRkxXM2pMK0FPUWkrR2VOcGNL?=
 =?utf-8?B?eVZhSTJpUXVSdnA3RFBhWFJoMXFBb0FNWTNGUmF2NlpjYnFXY1hBR05pQjNE?=
 =?utf-8?B?SlhoSHJMQjdnekw4RGNPTnVTWHlaVnNOaTBDMzh5b0R6NUt2OHl3TjZZZk1m?=
 =?utf-8?B?SHVrejVlTlNWVlhnWnY2YjRzTGJVRytvaVZubUoraU9LSVlld2pFbVY5UHZ2?=
 =?utf-8?B?OGpxZ3FBVzNrL25KRTVka0h1MkVZU0JpbXgwVUhXWE9GbnF3eWd0UWZycUN3?=
 =?utf-8?B?bTVWK0JhZGpJSkxwUkxlak1NcVYxVTRTZWJ4REZPakJqdWhESjFqcE43ckFS?=
 =?utf-8?B?ayt2d2J2Y3IxTXVlOC81YTFMRzBCMHFZUVgvTWVqMk5vV0VKSTBzY3BNb2Rl?=
 =?utf-8?B?ME5ybkNoLzRFSDN0Y04waEc3Njh4ZHkrcTUzdEc0anBGYTZRUXhkTVU5Rmpx?=
 =?utf-8?B?VGdpUS9QUGdaRTljMmNiUmFLMVpucE5Za3Q0UFJuKy9lc2V5eHY4UExwZXFo?=
 =?utf-8?B?Y1JYczA3Q3ArOVhRQmFmNzdIY2VHeDdYNGxyZ1czTzNBUVpLcmtqMGpUK2pu?=
 =?utf-8?B?RlEyUmN2ZUptUVRRNjU4c2FsOUVGK1gxckE3VUZIbHFZSmJOaVRQeXlLUTNT?=
 =?utf-8?B?SHNSNDFWbFhqSjJBNXdxSm42TFFXWFFaeFZDeTNjNVRrWjAvbG43OTlRZkZX?=
 =?utf-8?B?a08vRm9ucDloQVpQdW1WK00rREhMSnpWcUZnMEpxVEVGTldMcW45WWswcERH?=
 =?utf-8?Q?G0SGgGcxCIgS6esQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f4a652d-7334-4b14-ac27-08de58bd519d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 07:18:47.4396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mks3TSHGnKZLsQXGdhqagcmB5LjvScaFK45ekfxSpf0gjqCYzPQB9m4t5JyTxstD0vbDFzFLcuw2lgOaa2rOCH8+vO52XNgvGLfcIj2drtU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768979938; x=1800515938;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5fiSxRbjvSjqtXYMcvIIzD7+F324/9bC8hAk9Zaf3xE=;
 b=YsyM1VTI8cKxuISBMJerQr9gf75imSmVtxOG2TpePStnS09L/vaU5vaf
 beYGkFO8hviODwhcmiBjsw/kzg1EqTT7EwUM2UL8wMdFoy7K3Z4YIpbeO
 GpBuHoOmXmEbUElnqA9ekQc+RvpA+Z5CKkHsZbUZbpVglR/bjoMD2XwQa
 nPoB41dOVscxV+RqjXV0upFyHTdrajqW1kh4Fj6oIMHNIAtz25y8kgT81
 lkO7sgzwDGnQ2GxGdF2Y3Ha2BkXFer+EsQAxzk7xhp6Ns138sFD9uSLwk
 Mo7sbQbIIzsNybzmkOf8B4xqUKJUoMkGbPDBEFt0dJL5+A2UIIdl95lUl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YsyM1VTI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix system hang on
 `ethtool -L`
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6CAD952B76
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9iYWtpbiwgQWxla3Nh
bmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSmFu
dWFyeSAyMCwgMjAyNiA2OjM0IFBNDQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5s
Lm5ndXllbkBpbnRlbC5jb20+OyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcN
Cj4gQ2M6IExvYmFraW4sIEFsZWtzYW5kZXIgPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+
OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsg
QW5kcmV3IEx1bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8
ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNv
bT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFi
ZW5pQHJlZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+OyBLZWxsZXIs
DQo+IEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3Nh
bmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IE5YTkUgQ05TRSBPU0RUIElU
UCBVcHN0cmVhbWluZw0KPiA8bnhuZS5jbnNlLm9zZHQuaXRwLnVwc3RyZWFtaW5nQGludGVsLmNv
bT47IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmcNCj4gU3ViamVjdDogW1BBVENIIGl3bC1uZXh0XSBpY2U6IGZpeCBzeXN0ZW0gaGFuZyBvbiBg
ZXRodG9vbCAtTGANCj4gDQo+IGljZV9zZXRfY2hhbm5lbHMoKSBjYWxscyBpY2VfdnNpX3JlYnVp
bGQoKSB1bmRlciB0aGUgbmV0ZGV2IGxvY2sNCj4gdGFrZW4sIGJ1dCBpY2VfdnNpX3JlYnVpbGQo
KSBjYWxscyBuZXRpZl9uYXBpX3thZGQsZGVsfSgpIHdoaWNoIHRha2UNCj4gdGhlIHNhbWUgbG9j
ay4NCj4gQWRkIGljZV92c2lfcmVidWlsZF9sb2NrZWQoKSB3aGljaCB1c2VzIHRoZSBfbG9ja2Vk
IGNvdW50ZXJwYXJ0cyBvZg0KPiB0aGVzZSBmdW5jdGlvbnMgYW5kIHVzZSBpdCBpbiBpY2Vfc2V0
X2NoYW5uZWxzKCkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxl
a3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4gLS0tDQo+IEhleSBUb255LCBwbGVhc2UgYW1l
bmQgdG8gdGhlIHBhdGNoIEkgcmVwbGllZCB0by4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2Jhc2UuaCB8ICAyICsNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9saWIuaCAgfCAgMSArDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfYmFzZS5jIHwgNjMgKysrKysrKysrKysrLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfbGliLmMgIHwgOTQgKysrKysrKysrKysrKysrKysrKystLS0NCj4g
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgfCAgNSArLQ0KPiAgNSBm
aWxlcyBjaGFuZ2VkLCAxNDMgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9iYXNlLmgNCj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Jhc2UuaA0KPiBpbmRleCBkMjgy
OTQyNDc1OTkuLjk5YjJjNzIzMjgyOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9iYXNlLmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9iYXNlLmgNCj4gQEAgLTEyLDggKzEyLDEwIEBAIGludCBfX2ljZV92c2lfZ2V0
X3FzKHN0cnVjdCBpY2VfcXNfY2ZnICpxc19jZmcpOw0KPiBpbnQgIGljZV92c2lfY3RybF9vbmVf
cnhfcmluZyhzdHJ1Y3QgaWNlX3ZzaSAqdnNpLCBib29sIGVuYSwgdTE2DQo+IHJ4cV9pZHgsIGJv
b2wgd2FpdCk7ICBpbnQgaWNlX3ZzaV93YWl0X29uZV9yeF9yaW5nKHN0cnVjdCBpY2VfdnNpDQo+
ICp2c2ksIGJvb2wgZW5hLCB1MTYgcnhxX2lkeCk7DQo+ICtpbnQgaWNlX3ZzaV9hbGxvY19xX3Zl
Y3RvcnNfbG9ja2VkKHN0cnVjdCBpY2VfdnNpICp2c2kpOw0KPiAgaW50IGljZV92c2lfYWxsb2Nf
cV92ZWN0b3JzKHN0cnVjdCBpY2VfdnNpICp2c2kpOyAgdm9pZA0KPiBpY2VfdnNpX21hcF9yaW5n
c190b192ZWN0b3JzKHN0cnVjdCBpY2VfdnNpICp2c2kpOw0KPiArdm9pZCBpY2VfdnNpX2ZyZWVf
cV92ZWN0b3JzX2xvY2tlZChzdHJ1Y3QgaWNlX3ZzaSAqdnNpKTsNCj4gIHZvaWQgaWNlX3ZzaV9m
cmVlX3FfdmVjdG9ycyhzdHJ1Y3QgaWNlX3ZzaSAqdnNpKTsgIGludA0KPiBpY2VfdnNpX2NmZ19z
aW5nbGVfdHhxKHN0cnVjdCBpY2VfdnNpICp2c2ksIHN0cnVjdCBpY2VfdHhfcmluZw0KPiAqKnR4
X3JpbmdzLA0KPiAgCQkJICAgdTE2IHFfaWR4KTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2xpYi5oDQo+IGluZGV4IDM0N2I2M2U0OTdlNy4uZTU1YjcyZGI3MmM0IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5oDQo+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmgNCj4gQEAgLTY4
LDYgKzY4LDcgQEAgaW50IGljZV9lbmFfdnNpKHN0cnVjdCBpY2VfdnNpICp2c2ksIGJvb2wgbG9j
a2VkKTsNCj4gdm9pZCBpY2VfdnNpX2RlY2ZnKHN0cnVjdCBpY2VfdnNpICp2c2kpOyAgdm9pZCBp
Y2VfZGlzX3ZzaShzdHJ1Y3QNCj4gaWNlX3ZzaSAqdnNpLCBib29sIGxvY2tlZCk7DQo+IA0KPiAr
aW50IGljZV92c2lfcmVidWlsZF9sb2NrZWQoc3RydWN0IGljZV92c2kgKnZzaSwgdTMyIHZzaV9m
bGFncyk7DQo+ICBpbnQgaWNlX3ZzaV9yZWJ1aWxkKHN0cnVjdCBpY2VfdnNpICp2c2ksIHUzMiB2
c2lfZmxhZ3MpOyAgaW50DQo+IGljZV92c2lfY2ZnKHN0cnVjdCBpY2VfdnNpICp2c2kpOyAgc3Ry
dWN0IGljZV92c2kNCj4gKmljZV92c2lfYWxsb2Moc3RydWN0IGljZV9wZiAqcGYpOyBkaWZmIC0t
Z2l0DQo+IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9iYXNlLmMNCj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Jhc2UuYw0KPiBpbmRleCA3MDk3MzI0
YzM4ZjMuLjY1ZTE5ODE1YmVjNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9iYXNlLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9iYXNlLmMNCj4gQEAgLTE1Myw4ICsxNTMsOCBAQCBzdGF0aWMgaW50IGljZV92c2lf
YWxsb2NfcV92ZWN0b3Ioc3RydWN0IGljZV92c2kNCj4gKnZzaSwgdTE2IHZfaWR4KQ0KPiAgCSAq
IGhhbmRsZXIgaGVyZSAoaS5lLiByZXN1bWUsIHJlc2V0L3JlYnVpbGQsIGV0Yy4pDQo+ICAJICov
DQo+ICAJaWYgKHZzaS0+bmV0ZGV2KQ0KPiAtCQluZXRpZl9uYXBpX2FkZF9jb25maWcodnNpLT5u
ZXRkZXYsICZxX3ZlY3Rvci0+bmFwaSwNCj4gLQkJCQkgICAgICBpY2VfbmFwaV9wb2xsLCB2X2lk
eCk7DQo+ICsJCW5ldGlmX25hcGlfYWRkX2NvbmZpZ19sb2NrZWQodnNpLT5uZXRkZXYsICZxX3Zl
Y3Rvci0NCj4gPm5hcGksDQo+ICsJCQkJCSAgICAgaWNlX25hcGlfcG9sbCwgdl9pZHgpOw0KSWYg
eW91IGNvbnZlcnRlZCBpY2VfdnNpX2FsbG9jX3FfdmVjdG9yKCkgaW50byBfbG9ja2VkLCBzaG91
bGQgaXQgYmUgbG9ja2RlcF9hc3NlcnRfaGVsZCgmdnNpLT5uZXRkZXYtPmxvY2spOyB0aGVuPw0K
DQpFdmVyeXRoaW5nIGVsc2UgbG9va3MgZmluZS4NClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9r
dGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0KDQouLi4NCiANCj4gLS0N
Cj4gMi41Mi4wDQoNCg==
