Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FPqOLJ4nGlfIAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 16:56:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF66F1792C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 16:56:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DA0F40689;
	Mon, 23 Feb 2026 15:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3EOji43aA6mI; Mon, 23 Feb 2026 15:56:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 909F74072C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771862190;
	bh=dY/A9uvj9AFNx0g3UTbMPg3OEd8M4EKsirEbFAUkmZs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9mnmMN8zbfFUJ2ZQT5LFlV4G3AbHEoS6Zm4X7GUrjVRrNiJVeULPzIfnT24uG0cf1
	 e7s0R/GMm/psduvB7uYP/vW/iRr6C7wSgum70WoTT+hC3FP9XFsc8AqfXTFgNAB1GR
	 lAF/MYB0QvhCEFPhD1pooR8+/5KkJZEMkUiEHurCnX8b2dDXxGCXA1vTIkadknrus0
	 Xl/bLI9lAVJGUzwHy6xvQqA7pTQwIp4j0mamnOoTfTQnmqadWHrfapJL6plQBOO2yC
	 7cVX/+hVXhQX6NIiTUuXK20XSytuRA7zRPqIHCAoHwwhZjqhI8Uwsp0uSrdYMyCCnw
	 xO8KGr7l5kTqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 909F74072C;
	Mon, 23 Feb 2026 15:56:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 34D64249
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 15:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 261E981C26
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 15:56:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jKGNESeYQWHu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 15:56:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B631B81971
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B631B81971
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B631B81971
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 15:56:25 +0000 (UTC)
X-CSE-ConnectionGUID: VpdiXPk2RxiKMbOp2vBLkQ==
X-CSE-MsgGUID: hnqDydY0R5aAgVQ9GImRVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72564107"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72564107"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 07:56:09 -0800
X-CSE-ConnectionGUID: I81EGqneS4iUEpNOcWFJfA==
X-CSE-MsgGUID: HO5twzHmTuuKk1eNNOh+vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="213527582"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 07:56:08 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 07:56:08 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 07:56:08 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 07:56:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y+Q4yeNll15kZOb1kNOtm42vZCAN0ts4wtg/sxNmhPvG9VElc5tlllQnMACCJWXvtUpjm1Fk0mtw1WW+NtVvbdzo7fGzFb5rUbq/ytoKsfcRdBCCU9V+UYDJCXv4ZMBVaC7XyKAECDkkZ7z9gYiOjo+eJ1/wly7/8OxuHLk8vI4cInPu4VHDp/qKe7hnodeAMD+54jYPbMbJiprgABAPABNTFrUieqexfWlYvEolU1IMGa1ZXzuuMJacFLTx9eFgC8Ym3FFAyrCxGiMwU/2w0TCCVYDuwbC+i1kpNJBsaaCnORQtQjm2Tg2NVnO/ZvOYNhKyBQ2S8ihFgt/RDLgmFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dY/A9uvj9AFNx0g3UTbMPg3OEd8M4EKsirEbFAUkmZs=;
 b=Fpvu9wtnACI6FgFbofwQiam2yIqk3rwsrW3X8sgQB9KcBypBw2Ltkw7JgUPmj2W7B5CzL9xNixiUanqY0gJkQWX4aPIIUqZ5x4g4g9qf/kWRJ343K9tQQRn8UvMNZMc5SKuV75UWcum8x0X8V80BTElkj/Cb3cStiKUu+vzCihr7wYUjA2y5eZdBcj4kf+7EkhGz0smaCawMWJTkHMHJU8q62XwCZzV7nvpjNq4Pc3crF9eGsxLv1FpBpKPRiSYHmTxSL1YATm2wfIzdIBKHwHAg6VkfejGFay0njQt/n5Scwo1gl0fwK99KrZvRoKYEGUMH3UI383SKXIKNQ2esbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH8PR11MB6904.namprd11.prod.outlook.com (2603:10b6:510:227::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 15:56:05 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9632.010; Mon, 23 Feb 2026
 15:56:05 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Kohei Enju
 <kohei@enjuk.jp>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix netdev->max_mtu
 to respect actual hardware limit
Thread-Index: AQHcmqYwuYTpCNcIR06tWZYbFzDFWrV8IcSAgBRiqKA=
Date: Mon, 23 Feb 2026 15:56:05 +0000
Message-ID: <IA3PR11MB89850AE12F1F62910FE8E4238F77A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260210155810.135577-1-kohei@enjuk.jp>
 <c48f08ad-b402-4cfe-a362-4cb0c3a7801f@intel.com>
In-Reply-To: <c48f08ad-b402-4cfe-a362-4cb0c3a7801f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH8PR11MB6904:EE_
x-ms-office365-filtering-correlation-id: 9d8a0b00-537c-4d18-a1cf-08de72f40d70
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?MzA2NkUxa01Tb3VGUzlkVGo2U3J0eFkzL1RtR01CYmVzLzJuVzR2RU9DaitN?=
 =?utf-8?B?Y21mREJJK1hZOFJLaWZpRSswQzkvVXpLYTZoNlhvQXVsdXFNZHMrM0l2RUVs?=
 =?utf-8?B?S2JFVmswYzhzaWRDR0JFeWdRQ0x6TmE3dURpcklvUjJtdFVBNFcvT1U1WUZB?=
 =?utf-8?B?dTZYeVZaZDBEck1kTWVOTElYVTR4OUlxdVliN2ZXRkJuMXR2VXhkazN0N3VJ?=
 =?utf-8?B?RURQZStxTFJGTnQwWUw0Zys4bEovOGZ2M2wzVG9PTkFLMHg2SUtMSFZvL2Yz?=
 =?utf-8?B?bFh0cUtQbDZRb1V4Q2RrUjc4N0ZlcVBGMFFXOHNESWNJWE1QaHRsZkljby9P?=
 =?utf-8?B?NVozS3RYNjZ5VVB3LzRwckNrQWxpQ0xiMForQVB4TlBWcStId1lyVDZXYTYw?=
 =?utf-8?B?Nmhtc2Q0THY4c0FZVENLSFF2dmF0QkZONUtsSVIyc2w1OWMrUXhOVXNBb2V1?=
 =?utf-8?B?emREWDNpQ3RueHMzRVhjQmtaWE1iaytjZzhOU2YrWEoxdXlwWHF5d0p3WjB2?=
 =?utf-8?B?bzA0b2JpZHRZSHJtaEUrUzlRWUpEeU9ocHFGOFh4U0EzcklMN1N5clp1RVBS?=
 =?utf-8?B?NjVvQUVTQzJFOVVTT3ZQeE40UFBkbzVnNXZpcEljbVIzVUJIS2k0M0EvQXBv?=
 =?utf-8?B?ak5GY0FJeVJiVVlvWmZYUEpkc0tqalovT3lWS0xQNU5Yam1lUWZCRGJkL082?=
 =?utf-8?B?SWlPK29LZHJvUW9KL3dTaTNac2RhK2V5ZWJUb2RDT2JqT0dJckE1d0hkSjJl?=
 =?utf-8?B?eXYrVDNVdGpiWFZHa0M1bzNWS2N0V1F6ZEdoamJIN2gvdzZmMG9YRGRHK1Rw?=
 =?utf-8?B?SGFQOERhRTg3TmEwVU1abnJZWmRnQXpKdUpaSU52UWlkM2lKdVNBOVJiR0VV?=
 =?utf-8?B?Q1d2STdRalpqOHJ5UlZaUy9LeXVJRzY5NFMra1dkZDNiMEFOWDEydWJ6SFht?=
 =?utf-8?B?NkIvQjFlRmdkYzQ2ZUt3YnNyNFA2Tm80QTBsR2JhakpjSWZVVkt3eXdjalV2?=
 =?utf-8?B?bXQ4UGwzU0d6K0dnRnJZSm1RY29xa3FKaWxYMEU1MFBXU2E5bllaQk5mY0dl?=
 =?utf-8?B?cUM2MU9OZHR0cTdPNzBSV25lQjMzYlBsTmxyMUtqUFVkYWFoQ2EyZUZBZXNY?=
 =?utf-8?B?Tjh6aTdEa09ROW9qUHZGWCs3OFVheFBCd0orZUJvU1ZMeGhNODgxRVdlZmhp?=
 =?utf-8?B?M1o1SXJ0ZTMrZWdEcXd6U1ovVFFCcnB0cDhZa0FSWG5SUmxSV2hnSG9QaFl2?=
 =?utf-8?B?ME0rc0kxOHp6VU5CM21QdXV0L0t1Y0Fod2YzanFqL2FTV1Q0bnVqSGZQTkN6?=
 =?utf-8?B?dXBtWHVlRHpocEdiN0ZTQ0RaOUVneWpWb2lOcDAwdldObDNjelNzRnpzQzE3?=
 =?utf-8?B?aGl1Ry9DRndiTy9xRzFXYzZIYnpSY2h0eFpTYW9xZkp5RWVFSGVyeHRZVm1t?=
 =?utf-8?B?amlHNVBXL1FTckNOWVVITG5sTnRDYVN0TnBiMlpoNlp5QStSbDdwK25QMFc5?=
 =?utf-8?B?TnBJeUNzY3Bnb0xJSngvemxYNmJxczJZTzRkVzRWQzE2S2pwLzVIdXBweUNP?=
 =?utf-8?B?c0dvZ2FZa3pHVjgycXF2c0FpOXI4L2Z3N0RLK0N6Y1dMYnAyMVhFUlJjNDJ1?=
 =?utf-8?B?VzVCOEh6T1VJUld1c2ZSUUhsWEl0OFhvYk1NS3dZZFl2dndMV2JCRy9GeWlC?=
 =?utf-8?B?OGF1UjIrcnBkTmx6Ym13SnZLcnVrN1paQTAwU1QzRXMvT1Q0cHFlNkhseFVN?=
 =?utf-8?B?QjhWRzFQUnJpdGN3SmRLaDhSNDRMdVAycGZaOHN4aHBodzhSdkJVd2VoMlBM?=
 =?utf-8?B?YmVBVWZsZjhYYVJXTHl4OHVCOU1uMDd0VGRQYU9EL2NSVkc3MU5GTjZaSVVD?=
 =?utf-8?B?T1FJMmpBTlY2TjVwcWprRTNKeGNMS2ZqUlhoZlAraG1nQytqbHJrcmE4WWkv?=
 =?utf-8?B?SldXMmdpR3JJTE1BZWxUWWlSZmVOWWkxaFFIK3ZDb3dEaVkrbkFhd2FVUWk5?=
 =?utf-8?B?Z0lQb2lVUkl5MUhKUUhBT1h6ck45ZTdXVmdtUnZhd0dob1RnbWIwQndjd2hS?=
 =?utf-8?B?em1pRHkvN08rSzlxSjBOTUVRSlBQb1Y2QWxTWW9XdEY2em5FS0JUR1U4d3BM?=
 =?utf-8?B?UDNiUW9HcG1zcjBxWkVkVHpFNHBYMGxZNWNjOCtoODRiQ1JrcW1iZWxDYTRn?=
 =?utf-8?Q?FmAQExDQwNWSXzNJsBDP3FY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cy9TeU1jSHRVKzRUTWxhZENnV0dGQk42c1BiTVpBR2xjNlJEbnN6cXQ0TGJG?=
 =?utf-8?B?UGNOY3ZUQmdkZEVtck5GNWlzY2o4WFJIbnAwajZTcjlZbjJwTW1aTnlJTmg3?=
 =?utf-8?B?QWpzU1ZKczNkRXc2VmswL1V6clRSSEc4TDRVM1Q5VExSVm5rK094ZU1CcUFT?=
 =?utf-8?B?MUdHUlkybTFkYjdQZStIQU55d3EwWFdib2ZwaCtrTGtVVFllUS93Z1VqWlRn?=
 =?utf-8?B?Zmo0Tm53LzdmMWR6dUhrL2E5cld2OXQ1RUF5VGMxOW8vRDg3LzViS3VLOHNs?=
 =?utf-8?B?bXRhVGh0ZzY1VzhKZi85MHVCenVqdjdCdTlLbmNwQ0k2cUZLVWk4WWRBZ1Vl?=
 =?utf-8?B?VW94TTJvWkVHV3FpN0xWcXlNeGU2NTdFbTdmdkZZNktYSXZRYWlDYVFya1Q4?=
 =?utf-8?B?d3Y4SHFySlVWM2l1N3IwdWhwRWNCc2wvM0RybmI5UGRNVmlUVndER3lZWXov?=
 =?utf-8?B?MU1xMTB5QzRaZ0F3SFV1ZGEzZWFYQitZVFdneUs0WTM0eWpqakp0K2FTNEhl?=
 =?utf-8?B?UG14SGk0NFJhUWpCbTl4UmQ1TUc5MWIvbVZmbzBRU0dsRWJUTTJ5dU9IUk9E?=
 =?utf-8?B?VWJHczIydytUbFpqMXVBNG9XOVp3Z1NmVXgrMUJPZ3kyYkczZDY0L3g4dExG?=
 =?utf-8?B?R1E3dnpTbVc4dHdSZWJxMC8zamo1c0lUVGZaLzBQempXK2tLTlBLaUtmYUJG?=
 =?utf-8?B?WDZLaHBlNUVlZVMvYzV1ZmFiYTBnRnl5Nzg5bVRqLzhvaUZOQU1sUXFFenhN?=
 =?utf-8?B?UUFsaXIyaG5wWEVoUnowaWhLSHJkZHlxK0s2eElnZDVEVGRlMVR5RzBUN1R0?=
 =?utf-8?B?anBqR2dWa1RxQThDUCtLOHBObERzZGhHUXFzcjBld0ZacHNWaWhEU01YdW5t?=
 =?utf-8?B?RFpUYm95SWtDeTgxRlQvRWREL2tWR0pCVk5kR2Z3Qk1XOGZITS96MXAwRWZX?=
 =?utf-8?B?QU9hZGFzd0d2elZWNklnRUlVb0VFWWVKbVpoMS9KMit2b0puUS9rSm8yb2dz?=
 =?utf-8?B?cm5haTkvWVJnRVRLTHprM3FCakJZeDNpY2NlT1VMZlIyd0JreDU1RFNwclFq?=
 =?utf-8?B?NzVWa0ExS3ZqYU1DS0hhZWIxUm5td3JVMzVoU3pmSVg4Tk1ZdWladTUya0hx?=
 =?utf-8?B?dStCdHJYV1cwV0xwNFdmcWxOdkYyV2JkSzZVK0VMRXRsZ2VHQzB6d1UvdktM?=
 =?utf-8?B?RVZ6S2lQeFg0YUs5bUw5eGtLa3lsMjcydEVxeTR4ZUpWclAyWWFmYXNKaC9t?=
 =?utf-8?B?RVFjYlFvTzBXZkRUQTA3WDFQc0dwZUQyS3I3b2VPb1BmdGl4QkxPQmtvY1li?=
 =?utf-8?B?S3haWHd4TW9mWHBlcnUxOXcxRGVPdnVSa3pjTno1Z3VpUkQveVNJRGZ0RnNF?=
 =?utf-8?B?L0NmMVdFQ0JDTUwxRTlrdlQzWitaT0ZYVmNQWWpYL0VnTVhzaWFwQk55aWc4?=
 =?utf-8?B?eG5kcGlFVUhFQ25INTJXNzFYSGw4MFNISXd2amYyd0QybzVPRWxwTDZZSXcy?=
 =?utf-8?B?ZCtJQnZKRmxjMk0vc04yOHo1OS81aXEyN0hIMlpWajU4UE9HS0RVMnRXOWlI?=
 =?utf-8?B?U1BoampBMTVCR2UzSTJCalI4WXVCY0k1ZTBybVpDcG1UVlJ0VzdoZW14cW5v?=
 =?utf-8?B?ZXdZSGRYU1hkek00Uk1WWUgyaWVQNE1uSko3bldHRG54b3Z6R1ZzVWhrTUxG?=
 =?utf-8?B?VVNRV3pVNkJKZ3IrT2s0TW5hbDZZWU1TR0Y1Zjl2THRvQnRIdGFEdEJBZGNJ?=
 =?utf-8?B?UzhsR29hdHBoQWIzRHYwbGVrODJGY05NMDRaOU1Sb3VlcmJZV1J2ZlhiOWJs?=
 =?utf-8?B?SmVwaWpmWFFnWFFrN1FweWZ1blRWUE1Ed01jS3NZWHB0Y3dpWU56UWZ3bmZv?=
 =?utf-8?B?KzdSdmRWWEdpSzJZYUh1TlYrTE14dG02akZVTFhibk5zOTNBOHlnZDlkcUJi?=
 =?utf-8?B?bXhuNHcraHpXTjBrZno5bDZnVG54QVQrZ2tMNFVZRFRDWndXdXJaS3BmUWNI?=
 =?utf-8?B?SmgvY1VmM2lHdndQYWFGMjVJQ280Z1BmSTIzYU51RlhMNElxZDlvUkVoT3Ix?=
 =?utf-8?B?aHpWZi9qZHd2eGJEVU9aSHo2dzRJVHg3UDczZXd3dHlhdktRTG9ENnRvV0Zh?=
 =?utf-8?B?UWk0R1RocDN0a0YvU1lUbVRhUUpONm1aZ01IOWJKV252SFVkQmk0S2RIdzE2?=
 =?utf-8?B?RWF6eXJHeW5KZDkvMS9BcXNpbm5uS2YwS0dUcDlwTjFZbFcrc3UxNzJ5Qlg0?=
 =?utf-8?B?L1VSakd5YmxDYjBIcjQ0Y0twdEJZVGZmb1JvLzZqVEMwTnBlNmlDcld5Q2lM?=
 =?utf-8?B?aTNoaE14a2VtSE9BY0ZHNEhPOU1ManZpQjFEYjVrMElqbkF1NVFWZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d8a0b00-537c-4d18-a1cf-08de72f40d70
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 15:56:05.5960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YAr1m0xDwSk6hFhhM97LvM8jsUlKEi+VID+Yht90C0g4Mjcp71QgKq69S0Ft1lJHYR5wF0wLEh9T6QQNR0BIKCyzpRFjLr+CnnRF1QL/7EQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6904
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771862186; x=1803398186;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dY/A9uvj9AFNx0g3UTbMPg3OEd8M4EKsirEbFAUkmZs=;
 b=e59gsT4fpv/snK5qcI4iFlZaWclnBPtnZ7hz8yytNxkMVgeBiEXoPYWq
 aBAtdOPtcBjPqN38PmT+UYzV3A2qxJmFRhonVqP7s8nRMqPuzUWELU8zg
 Q6ZAd0G5KTMLVnfR9284IXCCWPSA+FNfhhmXVr8TqpgWRTszFI3WlqWNM
 8j5HcY6eDbThtbFVxHBy8yX1D5B1fRLdH7d9qinonG8hPBsahNACf0U3c
 ZM5Up6HXodJjP+dyB/GnrULT/zjm7XkMeL6a9cXWcMw3O0KcLv735H800
 XsjudxYF+iezbKG6qPkXHir5cBdciCnf/T3UhMych65I24BASrah1jEKe
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e59gsT4f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix netdev->max_mtu
 to respect actual hardware limit
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: EF66F1792C0
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBbGV4YW5k
ZXIgTG9iYWtpbg0KPiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAxMCwgMjAyNiAxNzozNw0KPiBU
bzogS29oZWkgRW5qdSA8a29oZWlAZW5qdWsuanA+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTmd1eWVuLCBBbnRob255IEwN
Cj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8
cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2
QGx1bm4uY2g+Ow0KPiBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBFcmlj
IER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBr
ZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkNCj4gPHBhYmVuaUByZWRoYXQuY29tPjsga29oZWkuZW5q
dUBnbWFpbC5jb20NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MSBp
d2wtbmV0XSBpYXZmOiBmaXggbmV0ZGV2LT5tYXhfbXR1IHRvDQo+IHJlc3BlY3QgYWN0dWFsIGhh
cmR3YXJlIGxpbWl0DQo+IA0KPiBGcm9tOiBLb2hlaSBFbmp1IDxrb2hlaUBlbmp1ay5qcD4NCj4g
RGF0ZTogVHVlLCAxMCBGZWIgMjAyNiAxNTo1NzoxNCArMDAwMA0KPiANCj4gPiBpYXZmIHNldHMg
TElCSUVfTUFYX01UVSBhcyBuZXRkZXYtPm1heF9tdHUsIGlnbm9yaW5nIHZmX3Jlcy0+bWF4X210
dQ0KPiA+IGZyb20gUEYgWzFdLiBUaGlzIGFsbG93cyBzZXR0aW5nIGFuIE1UVSBiZXlvbmQgdGhl
IGFjdHVhbCBoYXJkd2FyZQ0KPiA+IGxpbWl0LCBjYXVzaW5nIFRYIHF1ZXVlIHRpbWVvdXRzIFsy
XS4NCj4gPg0KPiA+IFNldCBjb3JyZWN0IG5ldGRldi0+bWF4X210dSB1c2luZyB2Zl9yZXMtPm1h
eF9tdHUgZnJvbSB0aGUgUEYuDQo+ID4NCj4gPiBOb3RlIHRoYXQgY3VycmVudGx5IFBGIGRyaXZl
cnMgc3VjaCBhcyBpY2UvaTQwZSBzZXQgdGhlIGZyYW1lIHNpemUgaW4NCj4gPiB2Zl9yZXMtPm1h
eF9tdHUsIG5vdCBNVFUuIENvbnZlcnQgdmZfcmVzLT5tYXhfbXR1IHRvIE1UVSBiZWZvcmUNCj4g
PiBzZXR0aW5nDQo+ID4gbmV0ZGV2LT5tYXhfbXR1Lg0KPiA+DQo+ID4gWzFdDQo+ID4gICMgaXAg
LWogLWQgbGluayBzaG93ICRERVYgfCBqcSAnLlswXS5tYXhfbXR1Jw0KPiA+ICAxNjM1Ng0KPiA+
DQo+ID4gWzJdDQo+ID4gIGlhdmYgMDAwMDowMDowNS4wIGVucDBzNTogTkVUREVWIFdBVENIRE9H
OiBDUFU6IDE6IHRyYW5zbWl0IHF1ZXVlIDANCj4gPiB0aW1lZCBvdXQgNTY5MiBtcyAgaWF2ZiAw
MDAwOjAwOjA1LjAgZW5wMHM1OiBOSUMgTGluayBpcyBVcCBTcGVlZCBpcw0KPiA+IDEwIEdicHMg
RnVsbCBEdXBsZXggIGlhdmYgMDAwMDowMDowNS4wIGVucDBzNTogTkVUREVWIFdBVENIRE9HOiBD
UFU6DQo+ID4gNjogdHJhbnNtaXQgcXVldWUgMyB0aW1lZCBvdXQgNTMxMiBtcyAgaWF2ZiAwMDAw
OjAwOjA1LjAgZW5wMHM1OiBOSUMNCj4gPiBMaW5rIGlzIFVwIFNwZWVkIGlzIDEwIEdicHMgRnVs
bCBEdXBsZXggIC4uLg0KPiA+DQo+ID4gRml4ZXM6IDVmYTRjYWZmNTlmMiAoImlhdmY6IHN3aXRj
aCB0byBQYWdlIFBvb2wiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEtvaGVpIEVuanUgPGtvaGVpQGVu
anVrLmpwPg0KPiANCj4gUmV2aWV3ZWQtYnk6IEFsZXhhbmRlciBMb2Jha2luIDxhbGVrc2FuZGVy
LmxvYmFraW5AaW50ZWwuY29tPg0KPiANCj4gQWx0aG91Z2ggSSdtIG5vdCBzdXJlIHRoZSAnRml4
ZXM6JyB0YWcgaXMgY29ycmVjdC4gV2FzIHZzX3Jlcy0+bWF4X210dSBhY2NvdW50ZWQNCj4gYmVm
b3JlIHN3aXRjaGluZyB0byBQYWdlIFBvb2w/IElmIHNvLCB0aGVuIHllcywgbXkgZmF1bHQuDQo+
IE90aGVyd2lzZSwgdGhpcyBpc3N1ZSBpcyBvbGRlciB0aGFuIGxpYmllLg0KPiBJJ20gYXNraW5n
IGFzIElJUkMgYmVmb3JlIEkgZGlkIHNldCBtYXhfbXR1IHRvIHRoZSBsaWJpZSBkZWZpbml0aW9u
LCB0aGVyZSB3YXMgYQ0KPiBoYXJkY29kZWQgdmFsdWUgYWxyZWFkeS4NCj4gDQo+ID4gLS0tDQo+
ID4gSWRlYWxseSB3ZSBtYXkgZml4IGljZS9pNDBlIHRvIHNldCBtYXggTVRVIChub3QgZnJhbWUg
c2l6ZSkgaW4NCj4gPiB2Zl9yZXMtPm1heF9tdHUgb24gdGhlIFBGIHNpZGUsIGJ1dCB0aGlzIHdv
dWxkIGJyZWFrIFBGL1ZGIEFQSQ0KPiA+IGNvbXBhdGliaWxpdHkgYmV0d2VlbiBkaWZmZXJlbnQg
a2VybmVsIHZlcnNpb25zIGFuZCB3b3VsZCBuZWVkDQo+ID4gbW9kaWZpY2F0aW9ucyBvbiBjb2Rl
IHRoYXQgdHJlYXRzIHZmX3Jlcy0+bWF4X210dSBhcyB0aGUgZnJhbWUgc2l6ZS4NCj4gPg0KPiA+
IElmIGl0J3MgYWNjZXB0YWJsZSB0byBjaGFuZ2UgdGhlIFBGL1ZGIEFQSSwgdGhpcyBwYXRjaCB3
b3VsZCBiZSBzaW1wbHk6DQo+ID4gICAgIG5ldGRldi0+bWF4X210dSA9IG1pbl9ub3RfemVybyhh
ZGFwdGVyLT52Zl9yZXMtPm1heF9tdHUsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBMSUJJRV9NQVhfTVRVKTsNCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYyB8IDE3ICsrKysrKysrKysrKysrKystDQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IFRoYW5rcywN
Cj4gT2xlaw0KDQoNClRlc3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3Nr
aUBpbnRlbC5jb20+DQoNCg==
