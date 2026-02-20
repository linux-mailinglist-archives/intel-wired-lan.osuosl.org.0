Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NZwCQQpmGlqBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:27:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65658166356
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:27:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F20D083E40;
	Fri, 20 Feb 2026 09:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6LK8XCPp-tQc; Fri, 20 Feb 2026 09:27:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 816BB83E3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771579649;
	bh=yJvkylyVhuls4+PSyxPr9fslueUyx2Uzz5ILaYW3xIc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yNwwdpr7vYqzCqHu/etOlbAMz0RqayHtbrnIht6+diD8GILs1a+vLxWsZHJKJmWKn
	 fsyHuArgAlv/cyWg6MSltJ66torXqW1wERqPrhawVTCzD+fsJu7XllcI+rnYeNgxNK
	 rtqbxECs3BUkwVjme1u0Sqhjr+/GhqJvehpGmj3T6rrYU3ojHWdM61TeC6IzBI/e3i
	 mVWGVxdV40V7xUo+bjJGBS8V95m9WWua6SEjg4UcCRhssYFait5SfwtRJWZQ30+DNL
	 TE8KUQ3Speiy7ad9ugEmr8kqORwKIqgj9mY8qL0MecQsjBfgK5BNBrkiyjhYZkklGp
	 LBjDrFT9LXgBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 816BB83E3B;
	Fri, 20 Feb 2026 09:27:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EBFF1CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 146BB83E12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:27:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vbqQf1aah2yj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 09:27:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 13DF383DD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13DF383DD0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13DF383DD0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:27:26 +0000 (UTC)
X-CSE-ConnectionGUID: Q8cem8aaS1uH7Y43UEP5vA==
X-CSE-MsgGUID: +lBKPO9CQDe0+KWygqzZ2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72373574"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72373574"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:27:26 -0800
X-CSE-ConnectionGUID: j7Xv4CgWSmmiX8mqetb4cQ==
X-CSE-MsgGUID: 9KNC80xnSRSS3fyHZTGYog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="213383405"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:27:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:27:26 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 01:27:26 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:27:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wl0YNJ3lK6wV+aqhHt2ohSkaSjhEwBiTo84C6fIdVcACsTpyn0mRSuHhj0TWFeGYlqG8q30HdNGb4q68zfz4kWWzaDM5a+0OlPChSYc9tW4GHnJWj8Yr2U4BkKvk5RJtoGoM9WxIONMyERygOs2kp1FPa+eRGtaHB8/yqfVjtmdVIBB5at/r95w+pZ8iMweReyUHXyuqEp6dbRjG0lQ0CFtJYF2pSMkucvZzihqUKW3k0lm16zPejM4C3cyFgGoOpWN0GviT5mYvcKIvaS1669brOCPWi1dtpnpKbjlT/X+N0HMidqOQWCcjBL2nux9DVXpyuiziDexc77p4qYRs7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yJvkylyVhuls4+PSyxPr9fslueUyx2Uzz5ILaYW3xIc=;
 b=RAinMakhUK/MqAyMcVxyK5aIxkQnTjo+xT7iEiS7owKNrK2BzEYAm5+xmRgCxjaFTOyau7/R7H/9eL9mBCeR1VO0nXazbrRkbgDuIRqZxWR1BZuHsM3MKwMe7PHcgK3YmLigr4c8yMIpmoNAh8Cyr0chQRwSUXapuhvlbMA4TuTZiVnFppVpjs8mZrBjN6NbZhaimWEHQg6RqetyUuhjYwS4OT6LsGeJ1fM+p9sbjSZNzNgyjAKF51MiHPB7eWmjZY5t1PdGit1Ev92eoFw7V4n98cClrzvgsOhbhPnXAcpLTues9O153570sp201D6F2TJ1X8eOmxoNcXaveIFPpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB7086.namprd11.prod.outlook.com (2603:10b6:806:2b3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Fri, 20 Feb
 2026 09:27:21 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Fri, 20 Feb 2026
 09:27:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-next v3 0/5] iavf and ice: GTP RSS support and flow
 enhancements
Thread-Index: AQHcokqymxvMiwlFmkG7jdgmCABmrLWLUXSw
Date: Fri, 20 Feb 2026 09:27:21 +0000
Message-ID: <IA3PR11MB8986A738894D46B45262E2B2E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260220092409.718632-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260220092409.718632-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB7086:EE_
x-ms-office365-filtering-correlation-id: f10f5f0e-d07b-48c6-2e90-08de70623fd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Iq7jM761YV3noAKZFS5LerOH4a+FxLYyASryBc38tTxL9L5vfP5L5FA31Yeq?=
 =?us-ascii?Q?zx4hB7I4kyJFAsRPuB8VDe8EQqcwZ2yVoB/UFfQxAOm4+5B34/ufXxCPmcvo?=
 =?us-ascii?Q?8zEjkI5qFNoh35ZWKxTfr2pnAktsXC4VNCqTwYGkpqsP606dluaodeKl36Bg?=
 =?us-ascii?Q?nNlFucsL+LO4K0c6o274yyF3NO01vuAhba74DTv46sujv8E4NeRx6u2ybjqn?=
 =?us-ascii?Q?jhJlMXY/utT5IZ+RyyY5qvivnPeht2Qq5iODwqO6Lz3yDHPJwIxqK2kjydM/?=
 =?us-ascii?Q?KieNCFig3V1EmOBEdEBQOUFoLBZd41urp4pvrSYq1IXrtTB8EwihqHWbIx+U?=
 =?us-ascii?Q?c6gTMH5YYJvnOZHe3Vp2PoDWg8goLLzLhlVc+20FciMSvMG8Wvc9Ar6Eq9W+?=
 =?us-ascii?Q?VOUmo6gbY/0KAYtvKuuqN6tTPodubY1acx1RCfBjsn8f9BXU2QPlQLEBAxrH?=
 =?us-ascii?Q?fzCfXCTFct0zz410MepraNduEevsuC0eK7C8sLY1JK3v6RupRb9Cfdufpsrn?=
 =?us-ascii?Q?GMqdtBWuZW8OsAYfeT0FE7RODNussByEHKTScVPr1aPmfpz6/lhM0tdh2Tr/?=
 =?us-ascii?Q?+btt4Hrepw/VhTC2hMT0Nyh85+MADT9HTT9RhLC9xysQSM7yTZlOPWGG0iq+?=
 =?us-ascii?Q?MBq9y7+GjW+7EQ02NhFRCHU1G0yGkGaFRTBM/IZmqRSHPC8mtSlDq3rg8I5m?=
 =?us-ascii?Q?LPmWZPuPaA6gBxuJ/y1T9ghy3OXkwzDP13m0sM5T0PQ4VCTWIt0yGhh/0f8U?=
 =?us-ascii?Q?V1KnNKQtgN/PXoD/GBhOyKIwyxlJ3ZqRcdLNIfXR8g63R+1Xg7nvBGWYrQ6Y?=
 =?us-ascii?Q?Ja1YRZphH8lYhYehA197L+oI8vIW2XvbEZRJSq8x20riCl53kkqrNPGqo8+I?=
 =?us-ascii?Q?n4S/8WJSRYlKOwqsXli8HJLmstomUh4Aa7oAmOkAB3MmqDGhqL/nOwXXesJq?=
 =?us-ascii?Q?stNwmRUnkEcgVQ2+yJgyaG1Cc3EY7gWtabRz69eQe4uZpAtLYxnYHQOOhpQG?=
 =?us-ascii?Q?HMNCcC9IYZfvaqfXswidgTsKQSd2pF2Sz8WYUui6+nQN9CoVLkEkxL1ORgmG?=
 =?us-ascii?Q?ozVZBVZjQNgdkP7A1qoCqsB3g+/QYmq0jxo2jWGWdlxJBGG7WhMQeVYRwZRE?=
 =?us-ascii?Q?SQ9F5/QaDs1KGYxIv0ChK8k9iq0MpEFkhhnjz9umkfzV/5jhn6MovZNQfzng?=
 =?us-ascii?Q?7aukG9cqXqp1LyQdentzPg3oEXE4/3otJ2JP/Sr4yP2Pkkdn6YIph77Dr1YK?=
 =?us-ascii?Q?kUYthTo5arSt0m+lFWwOy27pNeUzrdawpeM6HdEzZ5tVvQvqhcmAkblHRxoQ?=
 =?us-ascii?Q?2N6dfVGUp0ldcYalrpcHRhvMeThj+5RJiV6g45Bj8fnEEpjUJ1s+pIBGeF+E?=
 =?us-ascii?Q?QbNvg5iF/g9kPqR5UX4ib3aAGlMsUtgo+VjQuB8rortQ4UsurfZy2rtAOH23?=
 =?us-ascii?Q?fgAtJsucQMePBJAKisJYyv2Hg4ht2xFW2rW6dLPn1blpOHeDbOSLehor+1Zk?=
 =?us-ascii?Q?ZnTE4np0Co280LnRXqIaEOmKbnY8ZDiE1JbU7pRmaosAumtZHQNF5/KxnXDg?=
 =?us-ascii?Q?On9uMuUIdP4nvAcg5C7Txejt9FLlxqLjaRQXimnZBcXkVQUINGZAMDv5P00S?=
 =?us-ascii?Q?yC4fnNK9vu/w42LqWNWldvI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3v6NbYLo/dLM3JDjwDZ9D2ijaiu6DWB3XI7jg+CzHzyPpE4zX8ii11pPFT+c?=
 =?us-ascii?Q?Vb6lrWPI6EpNyMcLgfVDOglOap8czcCJJXcCo6BTUoaSfTN6zNNbvzo1qEGl?=
 =?us-ascii?Q?CPganaV5r3ClkV9gVSinG3oDdJNXKOqGGqeAlQbxfq/xs6oXw5h8rBheZ3j5?=
 =?us-ascii?Q?7vsrlCddfAb6/gJvHZQTaOKdBQAgQDTScoBBmq47gQchjNTjBRrBWZlyDrFD?=
 =?us-ascii?Q?UTry7O17FBqj9IJipirQtFRY7Q2Q3EP6xGXGLtURsmXrfsIXE8oDWA2wJwtM?=
 =?us-ascii?Q?k0zYEJu4+MT2429r1nN3Ro4sJYXaw4IkqZf4uxcQHXzP5ydr2+SRg21KyOpM?=
 =?us-ascii?Q?MzNInBfEELt8pgaZBdwRTkvDkATrIpIlW4MwGduJ8AUAQAckazUgHkTkR04g?=
 =?us-ascii?Q?SxecJ6U+yR4lPTo4G24gwbR01KaWqiU50mmTRod4p0cKKOPwDdViXlYwQJr/?=
 =?us-ascii?Q?y0o/jVSQjd2W+HjZCPYxoscHCA37Lw6gTlsSijQu2WLc9+TmLDJSYeFaNp3I?=
 =?us-ascii?Q?ORqh5QZpT0n/F/zKRF+W7IwpUGtSpXvIuD8rJRBCXtvIyL+Gc+rtiWBJo/T6?=
 =?us-ascii?Q?J03ZjLsx2eko9GxtRfD4kLxFcxs4moE9XDwwspRrdMcYKKj+4Tkg+dNxkczb?=
 =?us-ascii?Q?shat00K/JKNQLYFL/j5FL9lyJ9yGmut/fHmXy1ZvZKExOKQRAjDReYKuP9Jn?=
 =?us-ascii?Q?0G3CV4AneVCoXJPDOSUtXe7J9DWdFOy75eDrN46Yh2xFlaZjPHrK5To1ADY8?=
 =?us-ascii?Q?up95+S66dhOgRGNg94XmQp3sIa8lj1QfCsAPbvTwmmZevVkIsBDony53WgKQ?=
 =?us-ascii?Q?0wnlr16L0biPfFTe+SURenhThMfZoBTIJ7HudK/AJ4b9XskUotD1eBdfCwfK?=
 =?us-ascii?Q?imeWxSb0T7chGP0RNQ0X/43zMMTyj5WRhNonB0R2g/7KgTkU00mGGBJnew3d?=
 =?us-ascii?Q?L2qpjgDQoNsWtPGEJd99WJ5581lPAiBK3vjwacrvry1j/kbmpUMvEfEBrAjP?=
 =?us-ascii?Q?URQfcrxVMgOk15udCUdabYBwG6j6pz6FmCbBWXi/vONZka0VB+t/6CNqr3/R?=
 =?us-ascii?Q?CptDO8Jp2bjKDArcU+0VBHYKt3jv5ag9NROU335vnQi8A3/Er7C0TYk/fTMs?=
 =?us-ascii?Q?hbmq5KYSSESPCBDNGMyJJCawWLR0VzxRQXsXs66viXzPxXJmiqecrKZd74+y?=
 =?us-ascii?Q?bdNGz/cuLzeFXk1mIrIDQL5Uug5MIkkac9IVnjpF8orvYi+hWIJ3MSgoxTp7?=
 =?us-ascii?Q?y0mEH+LWPGXX0wdsjFvUr0CkVHAYSB6CFLVX+zZ4+7VPTgw/EgicuiAxLFDy?=
 =?us-ascii?Q?mrDGDO65XxY8uAaywT+KKP/1hsKYFxezt24eSZRnW6vN6m2wKg5usC5O+iNy?=
 =?us-ascii?Q?OUnpFhfDYZiwnqyDBLV72bc4Z2fpiB0RfO/h2YcvAMh4kUlFXKJEhel9bB29?=
 =?us-ascii?Q?v0aBr8SAdPrEdHAyC7O3djEzPMKLRT91C6jRhXaNNqGUpC0eeq1eQmXhLyeK?=
 =?us-ascii?Q?ITaK12k4wQDEwbT45844rpFjttZnomCsozYayXXV0J10LwMKafzLUZW+I03k?=
 =?us-ascii?Q?XzD9PsQJ2n8ubqyGjVe5k4CAFAs/Yv+RMjbNIMb0o4BgMXJDhKEw+nLZf8I5?=
 =?us-ascii?Q?X0qFW7NTWlqgaBWgQoRrhM5LY2l3NwrqNl4UzANqVukKZC4+V9JuLGhIB4Sh?=
 =?us-ascii?Q?5e8N56N0x2ZwPvCutu1hFQys5ZpVzmFKa6TJ64mmKBKzb9WpbGD4k0z4wqtR?=
 =?us-ascii?Q?WyVEtF697w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f10f5f0e-d07b-48c6-2e90-08de70623fd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 09:27:21.2499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2tD4JaA+F6G03mUjR1yyIKODi1mJFmeWV6Ot1GQTj+SpcPmuO++7HVvMSYaQRfWLUyKZABTR0+QcH3vdEdLiF3PrPjYqa9Wljzw9WxaIjDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7086
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771579647; x=1803115647;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yJvkylyVhuls4+PSyxPr9fslueUyx2Uzz5ILaYW3xIc=;
 b=nWLyX7+ASIAZfzn46YpMpjF3FYTE8UaGGuQ/noTi83Y0WnjUmSKeajU9
 U6W0aSyKIHc4Q2mjvxGVeWy1LBdySNWrbS3mz4ma4vRg/2tMZqor0MghY
 tMCIfcmS+BeDTEG0+YrJ+KToJ7vwAfYZIItRJ4eDfnAawrCPbWJZ6vQNv
 PbCdncDfw3GCq42U46Ibo+Fj0Z+EXvElnZXw6NkCh79eDjg4fRFtS2s03
 EUCfa2zHkEnoH0g/Wf8i4CzbTEN2F9QVtSfZCzqpl/xddw+v4IZVqW9hj
 667oWLu69naCTK0gYBjlYZ54daHDNxe42NdVPisDEhGVPDQnDgnXb1m6W
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nWLyX7+A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/5] iavf and ice: GTP RSS
 support and flow enhancements
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.976];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 65658166356
X-Rspamd-Action: no action

Please ignore this email.
I had personal e-mail issue.

> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Friday, February 20, 2026 10:24 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [PATCH iwl-next v3 0/5] iavf and ice: GTP RSS support and
> flow enhancements
>=20
...
