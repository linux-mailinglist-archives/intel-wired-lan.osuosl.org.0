Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 433DFB402EA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 15:26:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AF2A4075C;
	Tue,  2 Sep 2025 13:26:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mTB5b3FuUGTq; Tue,  2 Sep 2025 13:26:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFDFC40643
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756819563;
	bh=i9ASS+cxQNFhMJf7TWAWdczSCbAuBzq7bPyujWBFVDE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zM1gi4jNKswgCX3lqP+5cT7qImWcW9sbpXgI2jpNkTI3ao+PKlFIX2ukVItQdFGKo
	 c1h0L9XZK8x92Y0XGnkOfmnb27u9AyGaetuTdRBASicoMebFs+48bPosG0JjiRqBCC
	 fkQ3yMfC4h0mgdhk5thFd5WmYdjFfAwWHBZwsTm3N0BfX9GnfBStyt7pirX9HFQZL0
	 k3fJO7rMzZJr/HHLI3tnxBoQTdbrbVak9OKy2ipULqhnG6fzsOh2GHGdVO/9encpHf
	 WNKgR1/IV1fT/De13cBqrQ5nnpxQ2Ho/sCBSUxi5UmK/awWj/rni32A6F+4N6GHi1V
	 65FqrKDVStivA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFDFC40643;
	Tue,  2 Sep 2025 13:26:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 86E27439
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 13:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D13F60BEA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 13:26:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOImkZn-rNyN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 13:26:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C425F60BCF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C425F60BCF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C425F60BCF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 13:26:00 +0000 (UTC)
X-CSE-ConnectionGUID: pURJ+Z/ZRBSRIgu1BwJnCw==
X-CSE-MsgGUID: muzgZ583SSuz4y0YIC7Y/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="84512727"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="84512727"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:26:00 -0700
X-CSE-ConnectionGUID: w87JWhObRe6E8Ol2Ms2sXA==
X-CSE-MsgGUID: /FD3mgVnRcGgADZkNa+u6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="194920302"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:26:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 06:25:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 06:25:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.45)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 06:25:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZwWocv8Lt2BospC7aoTw5qvfHglC1Xik1h88SedS0qyy/5NQw/BpMbS37n9eKQoZVwUHYJNws/xbHws7/OBuTChryk8v+MoFuuE9hzoeWBUnEv3nV+XIfdkBy3IbPlNFU6E5s5s7mIYvElBgKp8Sl/wb/WizrCzfwtSvUld+iRWqzJaoEBljDvFklq1BwSltbCwr5SZaSeTb10p/Wd80xNddQmkTms274cKMB6roe/RILJysGNA183zM/YUGVdEHuSub57gWNlP3z6KY1g6huQ/DMWKd8xUK4LN6xRN6ZA9OaEGBPUXuU2/P6PWVgjEvxRAGuSDbvY3IHX8PBSnDFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i9ASS+cxQNFhMJf7TWAWdczSCbAuBzq7bPyujWBFVDE=;
 b=OmmX6wGlrx/seAersto/6TX8p42z9QaEDIwsQIkiwRfcOcRrlDZEHcSrE9exb3gy9H98b5h09ULPPmlpMSp/twelJftbwDrlV501uibr1kRcrFmnry6UXjDzVV7Wl1XaGuYFyGlGaoUWShAf6SfaIkJKSDGGvm4AA6vkkUTRgoaKbRf4Ff/0wZ3thnF/Ds3+n2ls7rhwaa2u8Nh6Ur+XLmBnI1fpNGwGkQ1ZpoXMygyQQQuaJKJDt8Kb9o1INPWW3TScNyVhBcYakYJDPy/mJLp/Dm/qp+10Hf7dW+V8U8NNz7qudenYQUH4jvQy1SLsb5oXQgFmS4BdBmejpMALNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 13:25:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.015; Tue, 2 Sep 2025
 13:25:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
 indirection table across admin down/up
Thread-Index: AQHcHALqHCOGVcm6xkqBr/9dXuH277R/30aw
Date: Tue, 2 Sep 2025 13:25:56 +0000
Message-ID: <IA3PR11MB8986AD639F3395B5BFCC2C38E506A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250902121203.12454-1-enjuk@amazon.com>
In-Reply-To: <20250902121203.12454-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV1PR11MB8790:EE_
x-ms-office365-filtering-correlation-id: 62bde376-a744-4f88-25b1-08ddea243fd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bkSbRlKZRQwk76LpeK8Fv4BKg5j9M3xsS5grSVr3lvosYN3lLsjKyKL5lJfJ?=
 =?us-ascii?Q?eCx4sDmhe+CSFLu3noCY5s0sCsejasSJ7BAwrrGUSOuUq53p6rs1S49MgAEm?=
 =?us-ascii?Q?wbGgCrQuMR0swF3pm3RgpM97aVFJBsl3z5dPaNQHjmDG2BPp8gb4p996Kpzn?=
 =?us-ascii?Q?klAK+j0Uftl965lB9ljx01/4dwBbwcUZarBKr86+a2bVEODm/c96IW1zQwLQ?=
 =?us-ascii?Q?fyRY6Wn3ieEAs2O8qzJijvXFQXisGs0XvUqthmvykFwmhO2uLXxwO9/lbitc?=
 =?us-ascii?Q?m186L0Y2CSS4n8xyE9cJE84E5XVk4uAvj361zV3htriiIkqvS6Uuy5/DAhPb?=
 =?us-ascii?Q?41VNaQFE51gM6dLacGkwuGzPI3aSHmqw1cGHJTMbsjKfev0rZNYHlgwmF5e9?=
 =?us-ascii?Q?t721Q+btYQAosw7mlcdgBXNvEqgK7nl0a412jDjgw8O0V7CN5nmgnj2taKp1?=
 =?us-ascii?Q?jc6SAtziH/pJCsMNMqCIv2ZH4+8A0F0kZOr+QIfCQUBuIi2RnxOqKr1QOnhq?=
 =?us-ascii?Q?1QKtRQuaVDP6rgc/g/7zmEYGb0iEY7qTrYEckV9E38BZwjtx15bt+gXQM38w?=
 =?us-ascii?Q?FwF1nl7eFqHnqHIBB+kL27Wjn4VqmS4kgxj7BxDtLHGFjG1+UPKpVMoaaYWj?=
 =?us-ascii?Q?EawKIh8lD+QYAkuGjKbGS6FYQ5xAC7k7zXkjJEuUENDyJOaSBaiWXYG7FJpa?=
 =?us-ascii?Q?8TzAy/t3qigk/z2SVs7j2RX9WPgIllVSilh1kzB9l4DwzoXEvfZVHpv9XfPr?=
 =?us-ascii?Q?xA2iUCblZehrXg5uslWcBTw7d2P9S9nzn0xqihYQz7WCHJp2DMKNUpXXFR/t?=
 =?us-ascii?Q?PASu7ujY7LcYT9jLf1NXUT9x1bmzVtoN2TlK2alQYQHpTR1618EwLYHg91N6?=
 =?us-ascii?Q?dYszbOm1Cv6Idu1NWyREB1T7tka/U7SkuC1GI2KWS6J8hoQ63WxiFlYKFLS0?=
 =?us-ascii?Q?+6Q3tw7Lt+qg3yB5VwzH5ZtG6WGVWihZ0rGM52ShmQvfKN0EJ/3m53rGY8Be?=
 =?us-ascii?Q?UwU+yh8nC/i/4/Q9GzOYLNgHSYQyBV1ktoO2lDJ250Fbqnq3ZlbCa3Kj7GV4?=
 =?us-ascii?Q?2TGg7hamt95KfaRBt7BpDBpFAsjve76UBrLPD4N6FuknAC6vrTsnlhDCsrZS?=
 =?us-ascii?Q?/vDznPcmAUb2VKVrQbY/nUdj/Iq1dZ6D44w3TpkMW+vlALPaudMXljn+qmNC?=
 =?us-ascii?Q?g/0QpvGyxAW5vC6fAR1nfHPwjkfrSt7+wnmqmM1w906GfmyED571aPeOs0w/?=
 =?us-ascii?Q?Cj6rn8bqjvBpDTQ2bOGqB72yJDnCmVt5YpmfWXCYpBEONp2/lrOjqwQ5MzF1?=
 =?us-ascii?Q?NR7abdC9pnWX10xdK8RdWmtgEZ+GUQoXvXmuGdKnY3eO5dossa7Juc3Nkwg4?=
 =?us-ascii?Q?5dmV7u0H/xTahdML7VQkabyd+SR7vZtmozisAYaT7PZWcECp9skYf+50ha3d?=
 =?us-ascii?Q?Lifog16txQx9zMyzOiWIQHCVSAU35nk02bRHg6pfFRH+rt638N267Fgmzrfc?=
 =?us-ascii?Q?5vWsa2cTN62cvSs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tNNVhzVFRwJctOOfdHeJi76MwGbEEUWbln3VERFmQ4Wq3lMZiF5ryOPP2mkL?=
 =?us-ascii?Q?zTXyd/qBojq/7p8mqytBVBW+n9F24pqpb0LDxsyrlF9wElQaeohlyH6ZYPwg?=
 =?us-ascii?Q?oZ2FFTgT2C5gM9QQez2mtXJ4Y9WegCaKSWCf1u0Cht3eolJV0fXyg4cR0Q4k?=
 =?us-ascii?Q?pOd3HYkufxQy3Z0zcqiLbwmUF47L5kuTG7TrjogFs1UlyM1x3kUOfd9N53AV?=
 =?us-ascii?Q?1MxiIMH2zIKn+5xDii2yodSQAig+9HedOFxJ/whdStkL5DN6BEEa9gKhQpM7?=
 =?us-ascii?Q?UPzNJaIENU3uAlStiOFcwlrmaug0pZJ0HdUv/3/D2Vo0RvHCPafXJBMifWh5?=
 =?us-ascii?Q?kTcOPOGhR80W3tVCMdgrO51MRh9eSnPkDFWrNNLspC+BV39JVqGukrl3J9hr?=
 =?us-ascii?Q?aT6hH/+TVyQ3kg9ZkOhZsHt9mfH/v/40N16AWhzFvuyoyhiNc9QGfqyKlR8C?=
 =?us-ascii?Q?cdk99uzs3NaqV2OB5HSxcr357H9xLSL2WFHkvHFUyfiuix7PLd5H0bLGpCli?=
 =?us-ascii?Q?xzF9gG2LM75iauyBdD+oVO15DaS/euvrtuL5sY7unF3M/3L0cqFzuRB1PDIM?=
 =?us-ascii?Q?GS9PegqQo/oJSQhzrlA/W6O3tdcaIV/0MPD5XKlKfTpqBp9vTzCLdJ2J27OX?=
 =?us-ascii?Q?CJRh9m6DX8LYa6jFTtTNRlVC7B8JXlA0H60m61OkUJAp5U+dnQE+cpu6YPA2?=
 =?us-ascii?Q?VGqLnw1/emMR8+7AKqvSENr6l3d/SWmqNjdxR4tf+TmCNuDzgPMIDhtwz8GU?=
 =?us-ascii?Q?ZOqwt+X46zEVtEQKwa8DHHFqMyCbBJjxzXOwuFi9KrAkx1FOP8lB1T2joAVt?=
 =?us-ascii?Q?UWnOX4Z9GLbUbm4sMHGEOBC3erfNMBr5kFygyT0zJJQThSdrXpQWPppKDJhT?=
 =?us-ascii?Q?+zUUQZ8n+KsrJl6VssjqW5jsDO6I5Tmz6vRdFYlsZemDXhpezOwJr9eufhwm?=
 =?us-ascii?Q?RrnbaEKWI1u/Aj9gdhDRnR3uA75aCWUomzMk9rSvkt3sUZkZkcynXCecZAt+?=
 =?us-ascii?Q?zbgwgy8GwW4GezTVrqEurYLFCcy8GXWdayudH2E5yaYM9wMBqNVqo+7qDZRz?=
 =?us-ascii?Q?JcE4Hfh6CcISrSNp23g8TE8nBukwn0o4JlF2pgBoG3m2/yD5LF/g6TmVc0gX?=
 =?us-ascii?Q?t1/xQztbctnu/0GZMfx2od/rl0TiH8WbzaGu3RgPK20PyRqCQ9/fndN1nehw?=
 =?us-ascii?Q?S+lGu9NCCeH5jH5gSi6n7j+1JyEo+WKyf+mPGKhDRZtpfanZFawzmHsmP2TV?=
 =?us-ascii?Q?MJ7Qt6Olz3GWGL9QKWemonLA68Ei9M0RLfg6K3FP1JMKx4aFT2o8ikh7anJj?=
 =?us-ascii?Q?flEiOacdILtwN3LWIJWS8RbTWDLCWC34fOzooU/C8Gzfi6Z3rdFPFyfT0Yoc?=
 =?us-ascii?Q?85+Ehel3cOXSaIfTETRA+q2Ll/tuc0THxybHs07m4LAIgaMy1Q9Z6yxQLLVe?=
 =?us-ascii?Q?sgx/6LQTrk7k12Pl9OtsZQlY2RChUtc2Z0f3w3AvRYCMORbnMh3GdgD6R+Q2?=
 =?us-ascii?Q?gGtv7xGsqV6Lth3+N1qFvrBdDmB6k4ztu/DFJwyqsdYiOVXNRQll00rOW+1Q?=
 =?us-ascii?Q?UjdvT2pGp6grlCVaTBUJGmSwLdXzrpZHjIAJyYgp69PIssAuK/kzBNyMoMoD?=
 =?us-ascii?Q?Vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62bde376-a744-4f88-25b1-08ddea243fd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 13:25:56.6583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H3G4L46XkSyssWHTt9LJLFWdU/mca1iw+qVVmekFthFmY/b26Tjf+duK2sigW09KzkebctHgpFnhowvEt6ybRnTLff+0vvzco67o9rBHZ1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819561; x=1788355561;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t1Ug5AHgfloNAdtuXZ3+88EtgjjQGGmzUhlEhSo7vbI=;
 b=DSix0R5sEwBquv6KYsfK1eTB17ROKq27o4llD2+x4qnHZCxOY16sgfJp
 5g4DseD4e0V4u/qiKqoaL8R4zU+2i3++82ME26fac9hSQo2a/FCAWbfLy
 +W2kv3CO3PJeZQYNRQ8RjGal6P2Pnf/+XwP+s+tRI5WSBFSwe7rBmb4hM
 KCjN1JWxl7cfUmry4WjEAauevD7vZP7it1lGP5zECkOrINQWwuBXHYwNp
 ezSKPqjXeIcPYkMBHEnI0fiLqt6Hr3gQkK7A6CQo0yCMvdh6cZoZxbqp7
 MR/S2Rf+Ycs5DRU2voyCxRlQiI6eJQIurilHrQ708w1/kRSPbIkhPoyE7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DSix0R5s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
 indirection table across admin down/up
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Tuesday, September 2, 2025 2:11 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
> indirection table across admin down/up
>=20
> Currently, the RSS indirection table configured by user via ethtool is
> reinitialized to default values during interface resets (e.g., admin
> down/up, MTU change). As for RSS hash key, commit 3dfbfc7ebb95
> ("ixgbe:
> Check for RSS key before setting value") made it persistent across
> interface resets.
>=20
> Adopt the same approach used in igc and igb drivers which
> reinitializes
> the RSS indirection table only when the queue count changes. Since the
> number of RETA entries can also change in ixgbe, let's make user
> configuration persistent as long as both queue count and the number of
> RETA entries remain unchanged.
>=20
> Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network
> Connection.
>=20

...

>  static void ixgbe_setup_reta(struct ixgbe_adapter *adapter)
>  {
> -	u32 i, j;
>  	u32 reta_entries =3D ixgbe_rss_indir_tbl_entries(adapter);
>  	u16 rss_i =3D adapter->ring_feature[RING_F_RSS].indices;
> +	u32 i;
>=20
>  	/* Program table for at least 4 queues w/ SR-IOV so that VFs
> can
>  	 * make full use of any rings they may have.  We will use the
> @@ -4323,14 +4323,17 @@ static void ixgbe_setup_reta(struct
> ixgbe_adapter *adapter)
>  	/* Fill out hash function seeds */
>  	ixgbe_store_key(adapter);
>=20
> -	/* Fill out redirection table */
> -	memset(adapter->rss_indir_tbl, 0, sizeof(adapter-
> >rss_indir_tbl));
> -
> -	for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {
> -		if (j =3D=3D rss_i)
> -			j =3D 0;
> +	/* Update redirection table in memory on first init, queue
> count change,
> +	 * or reta entries change, otherwise preserve user
> configurations. Then
> +	 * always write to hardware.
> +	 */
> +	if (adapter->last_rss_indices !=3D rss_i ||
> +	    adapter->last_reta_entries !=3D reta_entries) {
> +		for (i =3D 0; i < reta_entries; i++)
> +			adapter->rss_indir_tbl[i] =3D i % rss_i;
Are you sure rss_i never ever can be a 0?
This is the only thing I'm worrying about.

