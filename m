Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPmxNLhmGWrZwAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 12:13:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C120D600898
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 12:13:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97102422F6;
	Fri, 29 May 2026 10:13:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ilkAP6n4W5-y; Fri, 29 May 2026 10:13:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4B58422E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780049587;
	bh=aRcUx7pInLx0FRsOn5m6g+y6LLvejspwCGdxcJ9BenY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kykenMSAX+nL9aySyJfko2gFpbBXDkQd8zuNLy0EARDYVvff6BYFVBeyr2Zeezjjy
	 GAx+GOzzIe+Bm8qn+HNIVc2HvLJFt3Kenk5PzXCUdeabFjQmzR6H6jjTWJYgrrTOmT
	 NVyAF77Cq64JNYTOyFUodOrsL+u8GSUklOghk7FAUAizy/hHztr7vwWheSsgbvBPI9
	 Ladmov9A9wUwSfDieAKprIwG9CfSN9DVlKsVL+koR+BoZLsDzYX99MeCkvl85//hip
	 2g9eXPeSXvaXcSQbA3ISlyjtZTdacN8EFkTHfOap4jZ3R7zJcQpDwQE5zPCHckJBb2
	 9WZ/LfbccKA/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4B58422E9;
	Fri, 29 May 2026 10:13:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 47EE6288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 10:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36D0C60D6F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 10:13:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U9UD25nZ3ftx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 10:13:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4240960D4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4240960D4B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4240960D4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 10:13:05 +0000 (UTC)
X-CSE-ConnectionGUID: kn6+B0+uTfudEpTLBocsZg==
X-CSE-MsgGUID: zarRRWVFT6mcw0ktXLOWMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="84759526"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="84759526"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:13:05 -0700
X-CSE-ConnectionGUID: ZKojcRmWSoGF8dkdg+eTAg==
X-CSE-MsgGUID: T3tUncdES/O3HQK84LQTLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="244633205"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:13:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 03:13:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 03:13:04 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.71)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 03:13:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YVRu5U1SSQRHpDbeL0qidsyrY3AS/CVDzUhf1f7xbrPuvLAscBaMLZ8zC7j4NpqFTyC71SjblIFdziBPDP6pZOfBONFqn3ZlHW5VFT8oO+YQ81TexxaEQVlQ9DXcEFSLkwFmO4q+zI+0B7fTywLG7+RbMHFSFjvgf7O8Ak0JD2grrV9wlX37tr6OrnklC4I5RBeU9fyZ4ldPEfEmqXz2FM5JVmM1TctW7eka5II2w+YV3ET9+/naF7/pxlSJhWoEN9y1c0pg615iOat6vRf7XSXQSQPyPhMu9+22hP0Jm9rwLxMVE7EIYqnffZrbWgJyBbSb0qOYrAVFTid6xaSl4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aRcUx7pInLx0FRsOn5m6g+y6LLvejspwCGdxcJ9BenY=;
 b=uPs4CEKcItzSLdn1aDZW0XgU5xk5wYMIPTBYQgHMvRoGSEvpMjm79/I7/mweJu3jiJ0ZkKrwC+/MtOmc+gPAnE2Mx7/VmIILQgiJQ4xk4ak2e7CyW1+jwm2eIQBId0MyEbJWMoC746P320N/yDj1IuZD2SNX4m9+GNEXTspgIFRitEyDjoktGTxZ2S0AJ1xNP/BmtsoIJvvE2l+sNkBXqTOdI+N54QkHP6SLD4EhAtTqFnIJJBCH9DPLaXPdzn3rENO8RRnBilgCZScq3rbEe8bjWeHk8wys8UzwE6cmtsOCAhQDX3SSIiLQXIBPdI1Yx/wz6oxuMBzAWwsuQNMQEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4652.namprd11.prod.outlook.com (2603:10b6:303:5a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 10:12:59 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 10:12:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: ZhaoJinming <zhaojinming@uniontech.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 1/2] ice: dpll: set pointers to
 NULL after kfree in ice_dpll_deinit_info
Thread-Index: AQHc7y2FRprH8UwTDEi4tS6hOnOgFrYkyIcg
Date: Fri, 29 May 2026 10:12:59 +0000
Message-ID: <IA3PR11MB8986470DA82EDD33D7DFC8B5E5162@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260528171202.2659491-3-horms@kernel.org>
 <20260529053733.764996-1-zhaojinming@uniontech.com>
 <20260529053733.764996-2-zhaojinming@uniontech.com>
In-Reply-To: <20260529053733.764996-2-zhaojinming@uniontech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4652:EE_
x-ms-office365-filtering-correlation-id: bad4bfca-f25d-49d7-74a0-08debd6adc5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|38070700021|921020|56012099006|4143699003|5023799004|11063799006|3023799007;
x-microsoft-antispam-message-info: j/jFk5QdkdDIlmN34p8tVXAGg281/EnZD32kF5m7etfus1ifl4cX7hT9H30RC5WG8HUtrko5H3K4bm7TjsDo6V2I/2ZpWg+EEc995P8ptfor5A1X5in6AP29pku1tfvGPKtjLa+Xq+pI/wCLWg00mvkxENIjSI3PqDt/obxVoFAMgR+1NhOn62T1/WpOCvlgKIATu8/XE4zcWiSWH1lfHJLatXUHWsdCsy/WCJIrgHb/Vz776R1128dSwuZ36+T7yw8+R1Sx1q/4RrWrDlngugklnlFjBGvfqiUpDFd/RJTwlEn2bhw2jbBOa+ZJcAVOC3OnQvCW752qvO90kq9/ZxRXH9HgV0lZHqx2YA4XUfIgafetCNGcoJfUuRX6qjr1zRMItm0LJEx2mShmknQpoR0wwcjeqn9fIQIWznxVMjQiTY90o89a+1RYZW+fpJuiKQ1sNoZjL7T7Rnl8mJxPPkAB9tWbgLUVAOLaReaK2GwGUeXNy2ZnzAjAm6SILS84UKaSewCS/4FWKx+WJmG085A3QGlZs0n1+a1LoOk4PGaldgwNRhpgnpHKv0N0/1MdhTlv8lrTRpWhFhwwZsaFWtQ9pR05vt5A9vM8j5int/KndNqyPFXZALf8wfVknH3bTzMu+ruAn5P6PBWYphzyLKWlZyQF3Uh/x3cSpCDoowSLXPyBNBMcKguTc89xaDRsRF5C2EoIfqkl3GbWqYxfxkhKNHdKCsb1wDqb2TcmI6t6br8Pse0MaUSb4nf+W3jvsp1dIsnGSbCTBCEX8TD3Zw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:ja; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(38070700021)(921020)(56012099006)(4143699003)(5023799004)(11063799006)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?T0NqUnhQaGR1WG9WRWY1M1pwMVZzVlZmMjNPYWYwai85ekVYdXhrTWJZ?=
 =?iso-2022-jp?B?eGZqSWlsM1lwbU1qZ29uY2FIN2ZXZGlWN3NwU3pJa0NEb1FDeDVpYTN4?=
 =?iso-2022-jp?B?NXJTSHFWNGNJSmtTMmhpREk4UUxMNkdicjhMdjdmdlI4SUdhaFhGNEN1?=
 =?iso-2022-jp?B?bTlwUFNwUmljT28zTG1UT3lUajFielBwMUdOdGVGOHJ2eWpybkZFTU05?=
 =?iso-2022-jp?B?b2JGaVJqZDdZc0lNaC9xUS9sblFVOTVseDZvR1RwV2dmSU9CSnpjQVo2?=
 =?iso-2022-jp?B?bDhtY25DUTVDZmZsTkNvWHp4aXNxZTY4aHRmMitZOWx4bjlVV2Y2akQ4?=
 =?iso-2022-jp?B?NzV2SkxycXFqaWg3TzFxSjRJVW9iWHJKOFJGd1lwUm85enNwbkhyRmNq?=
 =?iso-2022-jp?B?cVgwZnp6VkZ1cjdlSUxEYzcyU2tiWTYvTnNvRWlrWFVNck9JTG1VSkRR?=
 =?iso-2022-jp?B?bXBkWE5WTEZwNWt2a3JtNDVyZnBjVnljc2dDWFZFQVJUcVlaUS92QklQ?=
 =?iso-2022-jp?B?amo0R1BqWW56Unl4UHhnOU9XQ2tGaGlIbGtYck5YdWJtN3daR3g5alp4?=
 =?iso-2022-jp?B?YlNZYjJxQXRhUXk5UWRIeFNnK2hZYmFzZHBKdmlBNGxLVEhHOVgvSE1W?=
 =?iso-2022-jp?B?blJWdE9mNDJoRVhqcG91Q0xJeFp0VmozTTNRSEJZQXRYNUgxUHNPOFRI?=
 =?iso-2022-jp?B?dlU1RWd4QnZscUNKSFZGQnlnek5SY2dqcnRRV3dOODFVSVNPbTlJZmRE?=
 =?iso-2022-jp?B?OGVmUEtDbTNGZ3hKSE1pTFk0bXZKQXdicis4a2UxOE8zdzk2ZGFtQXh5?=
 =?iso-2022-jp?B?WXZlemYwUGFEMXV0czl5ZGNlWEtOTDVzd05TZkMwWUMwa25xa2FNMFlw?=
 =?iso-2022-jp?B?MzlVc3p5aUxvOERnYlB2VUFMVTRxWEdyN1RKS2JLcWNYTGtUdFM3eUlx?=
 =?iso-2022-jp?B?NkdqWVlyRnUxK2p1dDJsTStnRVVuZVFGMHFXbHN4Y3dxTFhtcDVyRFd1?=
 =?iso-2022-jp?B?bEhKSnd3amc0TW9QTlNEU3Y1YktKdEM2TEl2MWtUSnBrTGtJeTdtbVJs?=
 =?iso-2022-jp?B?WFM1SU51SmcySmRwUnk3QS9KSXBNVlZOVXl3TDJSOTZRR0d5MDE3VFJn?=
 =?iso-2022-jp?B?Wm9HVGhRS2JiWWt5RHZBL2xKc2x3ZG5HSWF2LzlPb0J2aEd2eEdxb2VS?=
 =?iso-2022-jp?B?eDFxTUJ3V28yVjJJVDhsNVE4bW40YzUwZU95MUlDMDMrTjFlcFQ3WVps?=
 =?iso-2022-jp?B?Rzg2dkJOQ2hsOE5ZT0szaEF3QzN2OEhwVitQTzg3WDlMT1JWdGJhS2xU?=
 =?iso-2022-jp?B?TTAzQkIzSHdjTjBWcU9nL1ozS2NHd2xkZHlnVnlySDdGek1CdE50akkx?=
 =?iso-2022-jp?B?ZEl1c2FVUUlTNFdOSW1JbUFiNHhNS0NBbUFoQlc1bkR1YldjR3MyWk1R?=
 =?iso-2022-jp?B?NW1oN1d4K0xvcytBMWEzNVFDOWszaXMrOHYybUVleThvR2JuZVZzYWU5?=
 =?iso-2022-jp?B?REJYUlpSUEFsTUZuWmVVbWUwaDVDM29OS1c5NW5LeGRkZUtjekxkSG8r?=
 =?iso-2022-jp?B?NEladHRabUIxdG56RnBZb2dMMUxvaVFIUkZpUWRueEJNL1B5ZkRXMEdI?=
 =?iso-2022-jp?B?WTBadDZlZDBRMC9zVHNKNE5LazdpYWFCbEkrZmY2dExDQ3l1cnR0aDRT?=
 =?iso-2022-jp?B?clB2K1NCRzhFdktwT05SeUc5RnEwYVIxNUZPWEZmN0hDc2RnS2Rqb01p?=
 =?iso-2022-jp?B?UFlndDh1SWh0eU52ZFVNVDlaR1VxSldEbTFrMkFCZG9tVHJVQ3hJRHls?=
 =?iso-2022-jp?B?OVgyL0RESnZrN1ZPMmZwb0ZqaTc4UXBuTUZUZDNHaXRZUGd6M3Z1bEU3?=
 =?iso-2022-jp?B?R1YrVEdSTTFTdEVQdTY1NWxxczREZ1RnSVd6Rm5ZTXU5OEZ2dXMvRnBV?=
 =?iso-2022-jp?B?bGhtKzdHUzR6Sm1XUzZXZ3dtamdvQUlST2x1bTBiWmRVMWtoSjhGdkpQ?=
 =?iso-2022-jp?B?M0pkRXFtWk54Z0V1aDQwTlRFMG5oaHRjNTEyMUFRQkRSRDZXRUhiYTBG?=
 =?iso-2022-jp?B?eVUxaEJERjZEaEczUXlXc25XM0pWQUpOODRka3daZCs1NFcrYUttb0gv?=
 =?iso-2022-jp?B?SncwZlJZQ0l1NG5TMUxKSlluOWorOENHTnBkZktkN2V0Qm91cjNWVktv?=
 =?iso-2022-jp?B?QjVEOUV2Vng0dFB1M0FINzkxdEVPY3pldlJYWm1panpGZ0VOU0o2V0x1?=
 =?iso-2022-jp?B?VUFHVE42TUtJQmI2VUVzYVVwaUM0WkpUcEQxdngwVXl3cldXMjhSckda?=
 =?iso-2022-jp?B?d1djSWdjRW1sSEhyaU1WcU1vWklha3ZPMEZ6QWtsMzZwNzVDRFcrOTVa?=
 =?iso-2022-jp?B?SE9tM3BVTXJ5YmJreUp1QjVUZEdTeFVYc0U3ODIyU0VpYmMzbkowT0li?=
 =?iso-2022-jp?B?ajlqd0RCOVBKVzlXQlc3U1VjWklUMVJ6V1E1VjU4QlIrRERkckUzL1Vr?=
 =?iso-2022-jp?B?dC82T1I5SEhCT1krWjVUdThVcUc3WjlEbWZVUVNoVU1ndjJ6ZEx0czAr?=
 =?iso-2022-jp?B?cnIvdkhJZz0=?=
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fk9x+AtiqARarE6OcHg6qI7ZQyFiMOa/XvtCOJ+NVJtyLP1Z9ir+8LG/IpL/6AiIstg3O7gFdHTpYyOMK21ZIwgcjKRkz8GTmafpjtOQKmd3zB0ldR5vlmf2yUvwYGwrsAYKtcYl4xHtrSz9IDT4JUcU+KdrJdRAQjzqMw13Yu7uV87x2Q3fXAoZ8FawMPpX6LAXEZUcnptAmgJFsnSePfMG8ZU+gXZepk8zaUEXmt2vdbz3Z9mJl1gIxDmw9+4+KgfyJ19xlsu9i6VCWKubgyG2SZuSHpoFR/C2AYZX7s4sBlpiBqbs7n2apeY72F3aVumMRMQXY2HOhJX6gFm6oQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bad4bfca-f25d-49d7-74a0-08debd6adc5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 10:12:59.2759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nap92We6fmNnCbW7TDGx3mD97eYYyZIo6FEcwJ3gRGq2D/4m3PahMolMAKiKfaSO/ftsckrRS8nr9ux4l8DS90HuiOh5fAHKjOsqYwBube0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4652
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780049586; x=1811585586;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7Y751TI4+WR7M0ZnKSblj1cGL4WBumbQ+UFVIJ6KC9k=;
 b=Ou5ctbLAmiX6XJFQoDRwHZu0lzI6Z1NvBJLc75r76jdk0LRvksSTV1+I
 I21XjLIibnwRGJ2eXNXup16pHzrgVN2TOdygXR2sTWnupS+7fkHdb+/gL
 W4qLHi9ef0yRICF+30H2KoD++KXQqyMJCJgofD/HSG8jKX7YjVH6PlZ64
 kqwYG4BAcCttmsabTPloicB1FoOgLiz2nMs8AyBnkf2P95RX+PfXfIcvX
 DxUHXf0wV2TK4AvyzfNIcAS8z2Eabdg0tSmRRDR8lm5/t5gKjrIaG44AU
 Px6UIzx1vpziTOaX0eoEEw3NlClDSF2pLC9VAROZIkVz3WZbjSSVww/Dk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ou5ctbLA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] ice: dpll: set pointers to
 NULL after kfree in ice_dpll_deinit_info
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhaojinming@uniontech.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,lunn.ch:email]
X-Rspamd-Queue-Id: C120D600898
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of ZhaoJinming
> Sent: Friday, May 29, 2026 7:38 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S . Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; ZhaoJinming <zhaojinming@uniontech.com>
> Subject: [Intel-wired-lan] [PATCH net v2 1/2] ice: dpll: set pointers
> to NULL after kfree in ice_dpll_deinit_info
>=20
> ice_dpll_deinit_info() calls kfree() on several pf->dplls fields
> (inputs, outputs, eec.input_prio, pps.input_prio) but does not set the
> pointers to NULL afterward. This leaves dangling pointers in the
> pf->dplls structure.
>=20
> While not currently exploitable through existing code paths, this is
> unsafe because:
>=20
> 1. If ice_dpll_init_info() is called again after a deinit (e.g. during
>    driver recovery), and a subsequent allocation within init fails,
> the
>    error path will jump to deinit_info and call ice_dpll_deinit_info()
>    again. Since some pointers still hold the old freed addresses, this
>    would result in a double-free.
>=20
> 2. Any future code that checks these pointers before use or after free
>    would be unprotected against use-after-free.
>=20
> Follow the common kernel convention of setting pointers to NULL after
> kfree() so that:
> - kfree(NULL) is a safe no-op, preventing double-free
> - NULL checks on these pointers become meaningful
>=20
> This is a preparatory fix for a subsequent patch that routes
> additional error paths in ice_dpll_init_info() to the deinit_info
> label.
>=20
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 892bc7c2e28b..99bb308255cc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -4247,9 +4247,13 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum
> ice_dpll_pin_type pin_type)  static void ice_dpll_deinit_info(struct
> ice_pf *pf)  {
>  	kfree(pf->dplls.inputs);
> +	pf->dplls.inputs =3D NULL;
>  	kfree(pf->dplls.outputs);
> +	pf->dplls.outputs =3D NULL;
>  	kfree(pf->dplls.eec.input_prio);
> +	pf->dplls.eec.input_prio =3D NULL;
>  	kfree(pf->dplls.pps.input_prio);
> +	pf->dplls.pps.input_prio =3D NULL;
>  }
>=20
>  /**
> --
> 2.20.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Code looks correct. Please add `Cc: stable@vger.kernel.org # v6.7+` to both=
 patches and include a v1=1B$B"*=1B(Bv2 changelog before reposting as v3.

