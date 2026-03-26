Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKf0Ak7gxGnz4gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:29:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 656AC33072E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:29:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EABBE60828;
	Thu, 26 Mar 2026 07:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eu-sWk5bCVvW; Thu, 26 Mar 2026 07:29:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46D4060853
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774510155;
	bh=bOziiXl6Ak9Sr6OZjyZTmaKYH49hXk+DYuuqZJ3irng=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ekJUf8FvBWIMhf5+W1Msotj94QY0lhkYOEwSIi5d7HEKl7AmWJ1duAekjiM2a6wc7
	 Ii3iotYGX2U8pMnJnpaYzlBA5SG4hx/2KGfFcGJyUvTx6WhiKvjvTunkyLsXqDnZMh
	 7SxUZcLHqzXMN3PTnvQ99NCsoCdMM86GhsTM5x0Eet4Ljc64HN4LhwZr7K5zYKsa9L
	 lcOt5rHgpdM3cqOa1HrSYOW62t72ljIFEnpBq6+7FQBn1X3rN76aUyd3mJ9rJzAV3F
	 4oxcU+aXLg8qZqVWVqg7SO2Qh8ej7UkTS1h1VM9SNgUVxMTWjyYWuEFw9TJ0fXEEeb
	 QqkZrfK0qyjuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46D4060853;
	Thu, 26 Mar 2026 07:29:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BBB43353
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0EFB811E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:29:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JllGLzc99WmX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 07:29:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8B284811E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B284811E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B284811E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:29:12 +0000 (UTC)
X-CSE-ConnectionGUID: 51k8vxviQC6ZTxFB7SDVUA==
X-CSE-MsgGUID: L7mXxn5+TzGWU2/S4UUVpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75522854"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75522854"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:29:11 -0700
X-CSE-ConnectionGUID: pHGpC6uuQVud/V75NOG4uw==
X-CSE-MsgGUID: fDpgL0PaQVaNOvBsVwhwnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="229855240"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:29:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:29:10 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 00:29:10 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.71)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:29:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CvpQtwT64BSkFLlUkcEK2me2PuWfx6SMuMLNQja9X1gb5OTMGKCeUEa5z8rGJdIYmJlft6ze9UplYvKnXqYhrrx6friWbdSz1wop/bYHHUfmIddAWUSy1wzwZQ9gQQ0VIaheFlFI0oLQw36WBH6cX4kt9ZXGsiWGEX5+POqTtWBvqfy2eW6HFS+maJT07XPKDBqw/zeOReQ86ZEDCGZu8zSQMDDuLbJlGRXI1ndhQ7QJViglEGsZmL/xpbwXmCXpvsxQpr+WxJN9ZABAXaU75x6e7Ujg3J/HD4uvqQm9hKKhyR3NLJfL+GsWCluKbibgcVqcHeb8L430Lnx6+5tjvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bOziiXl6Ak9Sr6OZjyZTmaKYH49hXk+DYuuqZJ3irng=;
 b=AKZfPJfL9Gpm6iYD9Lv8/ThrQbTDr50d8QxH9cD1OMhDg99OZc+2Cx3CaDBI1YL5pFgGGcDL2kkC3QYrTeN9jgzeAAiVksns5uFVb+mzqW4ZXitoMzC05PLGMHHRJ3WiEFqHPI1SM0VG2RqR+dQb40GbVDDJJYbtbAIiLWcEwru3zHz6SRVmYsMgAsVmZMXCh0ZL4HbW0dXkiPOUARvJPrTgae6G6Du7G/aTBa+kmp2LWBc+czhlef3SHZdk7fUd2C9J2yjF7aDDJ3bcyNeBAx/CdlIXbOmkJ9iiXRQtEBoHzA6Oh2B7aIaIC3N0+XYT/yenH+XqWq5ALLEFY5hGyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPF341F90799.namprd11.prod.outlook.com (2603:10b6:f:fc00::f19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 26 Mar
 2026 07:29:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Thu, 26 Mar 2026
 07:29:06 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Agalakov Daniil <ade@amicon.ru>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "lvc-project@linuxtesting.org"
 <lvc-project@linuxtesting.org>, Daniil Iskhakov <dish@amicon.ru>, Roman Razov
 <rrv@amicon.ru>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/2] e1000: limit
 endianness conversion to boundary words
Thread-Index: AQHcvGpyt4vJSAcSP0ySeOkhqxhkH7XAa5Qw
Date: Thu, 26 Mar 2026 07:29:06 +0000
Message-ID: <IA3PR11MB89865516EDA67C340716BB4EE556A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
 <20260325151615.1407182-1-ade@amicon.ru>
 <20260325151615.1407182-2-ade@amicon.ru>
In-Reply-To: <20260325151615.1407182-2-ade@amicon.ru>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPF341F90799:EE_
x-ms-office365-filtering-correlation-id: 570ab664-d18d-47c2-dff1-08de8b095cf1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: vQoPI6ebwdaeGPyBZYn8ChrnxhV9jLpmSqIjZmnRBzMuIZNeON9+jGBu82m1YBeioKC9DfF953hbkaFfne5NKDoUq+LDyZ1E1vmFT9bRMH478tJrPPJ51uZt1U/5EclKf8cIiW9h3L/oWmjxx/P2CxNuDXstf6uJWD2BxK/cqGlPQxLKTw/964gBqJGTg1UaFF3Fd4nimU9UkMPWK5I/TkCXGZGlsFc6Fkc//WQMq3YHUaTMy+vvg8yiEfK2n3yLUwe1q/6D1LyqDHlqyv7JRI2oQxvJV46J03XzdPcjB8TwDS36N3AvLpFQNCRnqHb5CY1o2PHQ826ZWRMzvuzqA9RM7t3jVMA1gaE/fW0AdcYPt0iIXAANWfvyMpZZIWUsSZMoZ0ZBPbXna2cfKJKtLS7VUHKqeWx73/2ExYCY7Ate70IP9im7urJ9Uc8IOJg1YGZdIwouLDt6nVLB8+nQ/lkiD5OdT3MtMxgp4WASOO5nEd8FWX2DyyIVQb79I0jGMB3KmXSUuixPNJZb3I1w6oek8mIrtXUXOgc7et7tHTTpSsjhyHSVng2CWNWOGovYmnsPN2WkA9gx36Z/xrKbHg/i1cAjv0HIY4y8+blMOxAe4+i5HhI12No8LiQzfPlkZgQqzp9At0vnlC7FwytWZrsbaoTEmaB59W6UdSBeHXYeOoY2A2sbD89R0Ru4zes/p0Ygwk5X+uRT6/kwH4WrgpDE9JALa/Jo5QQ3zdJbr3KSSX7+MI1J0gb6FQuLpDosE96OHqCdNqvSe6qyKuBw1KCaC35TnpQ9Pj1N5kEqPNk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c3rWxQpwUGGdIH0jmm4qnpzXTjTvUCMDv24P6EpMvD8EEotMglEKlAUY2SlK?=
 =?us-ascii?Q?uh+iDx7KkJOlz+rMif41JHnbC3snaCQOLLs/co8AjCaYiqYA6yzsRCzGc3XP?=
 =?us-ascii?Q?cf0z+lLkUjJ8kJZHr7QjxPdN0Rllzz0Aiq55tUe4cWJHSK93rxpQti/8TVLY?=
 =?us-ascii?Q?GFt+WUm4oF59IN6Wzd76QBCUQ3PLRRFKuBDt06iCFIkw28axIfTGCnspg8PW?=
 =?us-ascii?Q?fzOZBhN3jVq90UT4DU8KnbPtYbfisJR0NEboUizYEIl/v0EXGXc/9phq6xxb?=
 =?us-ascii?Q?9vBsEOW38x3pxBDpF7UKccSW08AxkhKKbmvvIurLcPnv0eRzrTYvmUENToXU?=
 =?us-ascii?Q?2tEBz2Q+c7pXCIJELG4C/LowfuQGP2DrGhLCE2x3BUCFdH6djssLOxxC0ORK?=
 =?us-ascii?Q?H/a5YGKVxqnV2/2GWUYfPHeWGV36yUP7TP3e/4L4KIYilYMEFwwaaEPCQdUo?=
 =?us-ascii?Q?2CUQJv3vattgMiJtaCqJvyKEfFl0VbOnQyXN43RUQLO5POElhjLNBN7u3V1I?=
 =?us-ascii?Q?braero4oCwkczdSDaPLslxhmG6rygUX71T7HP+Od3mvzsJ1kCu44oIGa8Mr1?=
 =?us-ascii?Q?HgtftllgmDPX5QwZ5dMfuAZiH7OSspb5qdx8lfYrkV5JbUvb/fdQd86ichlr?=
 =?us-ascii?Q?ko5Wn7HjezezTBEApC1C6dXfFB0OO4Ens2tGzLp/4Oirl3gmW1FiazWd8AxN?=
 =?us-ascii?Q?3md+LsC8Ytk8z/Mjh+EBEZeq4M3Ebso5qpR5gF/2JUHrCA8GyGWwu6xJUG+8?=
 =?us-ascii?Q?hIC193vAsvv8dtq4j03cYSO9EIrK4522PdaL+lFi6/g3xuU25hYf83irJZhb?=
 =?us-ascii?Q?23auMg6kPGagByqAvDgn2RRWr1lwzk9UwpMEMwRuuoX9XAfZm86MvwxLXrYW?=
 =?us-ascii?Q?d/B51P/rVk15gN5W6IiGizUXg34+85CzQeqRjZJxDupKLUScmT/x5hdvXB2N?=
 =?us-ascii?Q?afDVpGfaDRl0QZJlrhz2jRfu5TifTgiyxGVT3z260/zwynLZl176PgMKakHb?=
 =?us-ascii?Q?55nYm0bicS3pfimX4INGLZGc2YijNZ3fVOe8s+JxztvaVynYAd5piLiZ5Y4v?=
 =?us-ascii?Q?3DrdRUy4GLNtq89slsN7dW7tmmZVDMIQnQelPGhCApsRvPlnUlcsKdAj28PB?=
 =?us-ascii?Q?4PNaSuR9yDC3LG5JJUkDVHiLbaFTn27bsMr8xTGrNm0qnBi4thE2EwvThA2J?=
 =?us-ascii?Q?+P9UcBoRkz+EKbMxwreoTRHVAx5ZphcLFmCki+PQT/mc7Ds+VmY6tO8XJ18H?=
 =?us-ascii?Q?jAhh7XhoJFx8m2AxBqEHTI5/ky67z2zc3RpXqCnH1PyN0AXiQWl09u078EvI?=
 =?us-ascii?Q?JOFkXHOl5PZsh9+RuAqgYbfOGi9RbFUdxVqkts/L9RHvmAv1tswOfJ0mtwBe?=
 =?us-ascii?Q?CJlfBocWX7f1ytpeGwCuLV1mRM8buQlcBoZjXPPInWKl1Ixh1wE0vUG0SghW?=
 =?us-ascii?Q?1BLJXOqiwTz1VAYV5kGpCAkKBtlcNdOke8heslPtUrsEzgxo0wuUZbD3/kX7?=
 =?us-ascii?Q?f3irIkNEGU75QlHF4V4okCC17ry5gHt5rXGpqFUtSWi8dVQ2c4BoWwStCALM?=
 =?us-ascii?Q?wiGiAvzWoa9WqO/KJC7KEQAcVPckp/07eJOO3kmZsc/mSpUMUF6KTG1lT1aV?=
 =?us-ascii?Q?r9UUXXh9F6C1n44UNdIPWiXN3j+eEcbG3RIJ+uy7UyUp/f/KmEOPja+D3ChL?=
 =?us-ascii?Q?FkXze7/GMEVlw+TExjrzf4DR2hV//LCo6SslVbb+TJHdBa/jTF16+Z1CO4lB?=
 =?us-ascii?Q?qDy0dAeIBbcmxV0cnT2yDE2FmPfCZZg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JJYMPyNED+foARYDYAsU84Ke1JHMdFqV0JJfwsY5V0CZxPMWNufN0VBX0LfmU8+UNRHhP1lGa+vPwSvHuQYFBYHQDv1R39AsJCdFLN3JDqSbv88KKKdLtCRVzqQOEiUTwZ85JGd+7LJEo1nS/CCgLO0Fy4rtuL+wOoM0naxKu8KRklumTHmjBdkk19y2Hs1xdAnY/3epoQCjPXu86/diy/CrhCTgL1Y+RtIjd230gObQP0LZlSWdV/4+AIi38FmW9ey1HlLF5n7MyRbZR0+QCWwPHbPqyMCLJwPLsH9eC66r5IcRFlbluNWC3ogeEQ+qRz+0MuWdrKrapCMl99vRww==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 570ab664-d18d-47c2-dff1-08de8b095cf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 07:29:06.3173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M8mx2r1uL0sIaw2fwMcVh927X6r2hpUTwwGOwrARZ5CHG4D06vYietAgp/NYQkIT/1WY3eHekSPaw1TwYKLi5HjyIOKQk9tljFdwa04X6kY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF341F90799
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774510152; x=1806046152;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kzRxXqjz+jM8szDY/CTkpF6VSePskomZLiUobaw64p0=;
 b=Zp/hIfUlqMwVb/5P49Y+Nu9I/1xFbVnqGl3lE8e1yH3k3y8HRro27+ei
 ulHG/62xCM7ng0D5aKoCVyGNpDPOcMzHOnZ/zT1YX0Im2cmUqtcs27a6s
 kVyi6QoCj3iDkPnLwtbO92pLtDx0BfNjsF1RNvK6PriI9XMmlfMm1uvXd
 cU5BPAkBF5JboHDaveKaJHwo30oFyqnFeB78NvNTIlo68Ojyi1kcbxXPG
 ev3L5F9EKCizvKXqw4P2jU9yLQFgKYI7asrAaPh88DN5KnuonRdd9A6bG
 JvjgvCEkoMprPCysHW5980zJRBNIrRRapkjfjwuGt1fxjUGI4iFLVxRNS
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zp/hIfUl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] e1000: limit
 endianness conversion to boundary words
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ade@amicon.ru,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 656AC33072E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Agalakov Daniil
> Sent: Wednesday, March 25, 2026 4:16 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Agalakov Daniil <ade@amicon.ru>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; lvc-
> project@linuxtesting.org; Daniil Iskhakov <dish@amicon.ru>; Roman
> Razov <rrv@amicon.ru>
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/2] e1000: limit
> endianness conversion to boundary words
>=20
> [Why]
> In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
> words. However, only the boundary words (the first and the last) are
> populated from the EEPROM if the write request is not word-aligned.
> The words in the middle of the buffer remain uninitialized because
> they are intended to be completely overwritten by the new data via
> memcpy().
>=20
> The previous implementation had a loop that performed le16_to_cpus()
> on the entire buffer. This resulted in endianness conversion being
> performed on uninitialized memory for all interior words.
>=20
> Fix this by converting the endianness only for the boundary words
> immediately after they are successfully read from the EEPROM.
>=20
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>=20
> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
> v2:
>  - Split from the original bugfix series and targeted at 'net-text'.
>  - Removed the Fixes: tag; limiting the conversion scope is an
>    improvement to avoid unnecessary processing of uninitialized
> memory.
>  - Improved commit description for clarity.
>=20
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index ab232b3fbbd0..38b1f91823ef 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -496,6 +496,10 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  		 */
>  		ret_val =3D e1000_read_eeprom(hw, first_word, 1,
>  					    &eeprom_buff[0]);
> +
> +		/* Device's eeprom is always little-endian, word
> addressable */
> +		le16_to_cpus(&eeprom_buff[0]);
> +
>  		ptr++;
>  	}
>  	if (((eeprom->offset + eeprom->len) & 1) && (ret_val =3D=3D 0)) {
> @@ -504,11 +508,10 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  		 */
>  		ret_val =3D e1000_read_eeprom(hw, last_word, 1,
>  					    &eeprom_buff[last_word -
> first_word]);
> -	}
>=20
> -	/* Device's eeprom is always little-endian, word addressable */
> -	for (i =3D 0; i < last_word - first_word + 1; i++)
> -		le16_to_cpus(&eeprom_buff[i]);
> +		/* Device's eeprom is always little-endian, word
> addressable */
> +		le16_to_cpus(&eeprom_buff[last_word - first_word]);
> +	}
>=20
>  	memcpy(ptr, bytes, eeprom->len);
>=20
> --
> 2.51.0

e1000e: limit endianness conversion to boundary words
