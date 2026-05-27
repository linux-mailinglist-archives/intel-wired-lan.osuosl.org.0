Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBt5IWUeF2rw5AcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:40:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D48145E7E64
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A1BB6143E;
	Wed, 27 May 2026 16:40:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FjrEVxI4KlXQ; Wed, 27 May 2026 16:40:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0C0B61444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779900002;
	bh=Q8AlVa17et8BiibWIJ9JJHIXikol6nMrh7G8tXfMfB0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1RMqONv0OQjWMhytCOo9jCVZNPT27w1E6ThIBdY+P9VVXbLY6aiAnQ8yQF99LvTGf
	 tIer454vyvQR6bPcad0i9X99K3OYOm0iVhcVT7RwGQt0HFhhTGn3C+S8+CdWJ/RrWi
	 Bktp3x1B9WACImTAtT9Ih22fw1xgF8RqbuRmXfpPAM65mhF9vSFlR8n8XHn9v4QuGZ
	 +9gbnsmaAEL+hw1rr1ZtJAXtdn2YJSz3u7MQUbNyCOoQXxiovYh9o+mVv+1tVWmqsA
	 nN/dOTUAf9GdxGTMnY+aM7rK5oXl2Mg1TXHjQWd1oVKAf/Kl/NAB/fBVZhudkZxa+s
	 4U/URp/cLhZpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0C0B61444;
	Wed, 27 May 2026 16:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 000B3CC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D520A42164
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:40:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mJaM5tEL5dzO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 16:40:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DE72842162
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE72842162
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE72842162
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:39:59 +0000 (UTC)
X-CSE-ConnectionGUID: k14UU3xAQauSPLtQvys9XQ==
X-CSE-MsgGUID: 4yo47rQJQGKpie5cYcoIOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="103412760"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="103412760"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:39:59 -0700
X-CSE-ConnectionGUID: pEmZlJ/YRpyqLcefVpCpyQ==
X-CSE-MsgGUID: UmVaLMuSRYG2y+mLUEKJMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="244117267"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:39:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:39:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 09:39:58 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:39:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yhyh0T3d6bBOwtxEYYFPf3pYBvMzSfxNx8G8UY/HWMujpcfUs+QcDfH2akdasl7GTJtDyNAOdpJPa8sA575W3UHdaVVkxmydX0sBPCjDTsu59IfZ5d40Ls7I8N73F+LEl1QbEWgYbJwTaBJUFWgPkshUwMPiI3zxsVspn3ZQt1Tz9Gi3bf0W8QtdgfT/76zcbgWTZkHpW2nhN6AryCoVBX+wI7S0Y1lZ/i/e1zud4dmfWCaeHcaGcuf9pC+sLP0nrd/9PhdBJv/WPLPjB/k92CGddW/aQiQIgNjS7NLVOI/UsK5QIuR0nG6qtNsdvWr0gKt/Bqdri/o/AcUP6r8i8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q8AlVa17et8BiibWIJ9JJHIXikol6nMrh7G8tXfMfB0=;
 b=L1J6kRPptWU0CiYccCJ8HriX/4AE58T9HRG//0o8G5KbpcvCaMnyi580aK02q/2qjrLO3z8628QwUPbWZ8AJ/krq4wDWczxitLUmzZxdlZRKX0fUDKDwCHFVB/NsnqXA80Nkah5midekLIlOjyYCRMp05SlFnIDMfTjEbOgcxwne/R7ayorsCm5vxch7tMPFBA9NWPVk6tLkP3nM4fOVrY2f+YPL+yIx6/NOVbLWIFlRiiLrtfbkRiWi7YaWCW1O7R6PAvqMx6pWia9Sok0CY2HIKTYD3RbIwVo2+wohhDbN791C7UfxtjJl58BuzAJxmpgMjOi8ypE/tnCpBtnnMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SA2PR11MB5100.namprd11.prod.outlook.com (2603:10b6:806:119::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Wed, 27 May
 2026 16:39:56 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 16:39:56 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 6/8] ixgbe: use
 ktime_get_real_ns() in ixgbe_ptp_reset()
Thread-Index: AQHcx1lqwEJjc9l4XkWzEfZIeG4fHLYiYBIA
Date: Wed, 27 May 2026 16:39:56 +0000
Message-ID: <LV1PR11MB8790450E30FC069FB161C4F290082@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
 <20260408131216.2662245-7-aleksandr.loktionov@intel.com>
In-Reply-To: <20260408131216.2662245-7-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SA2PR11MB5100:EE_
x-ms-office365-filtering-correlation-id: e8fe7ed7-ca71-423f-da0c-08debc0e95c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|11063799006|4143699003|18002099003|22082099003|56012099006;
x-microsoft-antispam-message-info: DQYznxL17jbdEHWOBLFRLkBHMiDF7sDH/o1WDyzQz2Blo9bfgiNKRrLfy1qNIdKFp1fGOhlZxRm16j1KWyPDLV7gGlBtyCxVb7/TuR53xAC8M3pvKw4jtGSyQzNk23SAVy2K6KbsWE7GOb1+SaBWwW4Yfy9feG4uigcgfN7ykpwF4hkBIEXWXF8bJkDvkE/4Niua5mqzc0ja10j0BAWWZP+lsxxx+Y5B4wkVja8Ygsu2JfKb+dIgeTAJsP3t2TZnzqchE0pBCCnyFK1GPuOSzdUWfiq8EHNgD07gSligeJJdD1Co80RMlaQNugMxBO0vg5Mo31ImXc/rrsUFF/DF2nKckejX0y91RJc6MUjndAqvzrkRpsKebnM0w83rZBnda9i9fzFm3uxrX5sAhobsyffAfnAi7V9iOnANdU/3noicxUNuzCO2JdxtLi0IQgbmasbwrAlMW0/pJzCgAQUYMCnz/10fbvRdMYZG8h+orCl+2xEanpq/Td/S56PLxYXTZm5+SJGSuDSFQlLEbA7VEUM0veZoL4EmatsY8KS0aMBZxymQSaS+lQ99KqHJ6ajYh9/4zNmqmIlvVhl1pTbVc4xXVpxUwlSY1GtEVP2d40t6TBpscr2QcuTawqhkqk+onRjw3kvfco31dWryjP1erH3cGw6TiYgTlkP/pL23g9JrGbGltbE6ZQ+xTP52PZNoll2MMr3omzB7LXqvMOT4r5JZV0TR8Y2lSZdiMeIBAniMU9jDfwzVNfONtZm+EwDY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(11063799006)(4143699003)(18002099003)(22082099003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OuWOA42kBG89flMMV44DgqymjdmzLK3Re0wDhbXG5cmablnQyBjZ4F/FCzAu?=
 =?us-ascii?Q?7o8w0IEcH7DZTICm1S2/KFYX2g8EIWSmetg/iMIVhsqer+kh6Diwgeu3481I?=
 =?us-ascii?Q?SpDyMmcv6Bbyu5yrExQtqEH74louAibBZKVgp/pOKpRySQW1TDXEXLLPKWiz?=
 =?us-ascii?Q?dthbTNYKQJlAlpPS3vsm1nTJU5ZlKKNadtT3+QYfARGxr6jZTin7FdUO+jmz?=
 =?us-ascii?Q?0oB5LlSJ9O8Y2kfq6zJ6T478l5Seyvw6XQ20OYEPLQ5dMeqr7hKPtbAH0PB2?=
 =?us-ascii?Q?re6U1M3zCHLzOn/ENMCHbX78KWvdID3sADimps4pH00q7odLG7naUBKVcjx5?=
 =?us-ascii?Q?k5UUKkKHhf3fh9FzrJcVuJQhLfnij6hs+GsN0WO54FC4XwlcRJWnaSadyWM3?=
 =?us-ascii?Q?3sP9iZ4fvX5omlOiv21iUfkS7TjUiTxrSSA4txMjsZe5v/8J86dCotiK7rve?=
 =?us-ascii?Q?meKkqs/T9X8/klsh1eMnUmykJMCgbv7AOHAURcsNbrtuEPpD1Nzr1SzIkc1M?=
 =?us-ascii?Q?7Fv/njDmm/2JRvz+CrqWQW52GHqV614HoAKUjNxH2/1sUhX4KOXUSa4zGAe1?=
 =?us-ascii?Q?9LLWGMW785ffU4ayygsgqsWtQzWWbMB/aRkSydaEjn0Wi6CBxzeXB9lR+cYv?=
 =?us-ascii?Q?99in2SFB5M9zDMz5clxq5e7ID2kfVffudCrjRcuO0qXRV6394E0nqMSQ470C?=
 =?us-ascii?Q?3TrO7bz4UnhLkwVa7DqWLvSJTYpvb3BKUsRWzXwlU2sxJJwc2ktEpPEEO+VU?=
 =?us-ascii?Q?U1mTljbvlk12A4v1jubtjrekDwqUxr4FmvgbFaiXkjUZrBSVY2m4yXfqmJzt?=
 =?us-ascii?Q?kn1kwRhWeZSYjgyLjjjQwrRdewuT8DZtovfizm9DMjtKCxmdZ5r7pWwfV+Aj?=
 =?us-ascii?Q?wOE/zVAJUeCt+NCgzpsSN29EzhJC+6g2k7Yjj+Y93r9MVnmIQZKGL2HfgrSh?=
 =?us-ascii?Q?HJhkGJTkNhljVREXv12PopH7WhGHVGZzIqfnHie6D7Qy6nrQGSoC74VUh/j5?=
 =?us-ascii?Q?TzDYuKJTxgJMoiKtxl7RpyRD15Q6vOb6McV8bnFI5b2p6HZ7qVt7L5zur1xd?=
 =?us-ascii?Q?MG01jHqpognxWnRuZbjjrZdnBRk+tavztdY8KHY6I78sRlaukq55hkA2YgbF?=
 =?us-ascii?Q?f4Dce+6FMe1/jzckWzFQ/YuDCDFLZjEnPoCw0FxoIjNWybMECH48B0D7uf10?=
 =?us-ascii?Q?MxFc2YUsCy0mIKpnvqN9MbptGQZXQmXYEdkafMubMzcso0ym1xVDyXmbVWSh?=
 =?us-ascii?Q?XhZqueVbcn/fNLDokTGHNSi2A73WeLfyxG/tqqmk51M6xJzpY+pY+6US4a0F?=
 =?us-ascii?Q?sejHg39WfbxSi6ay+dE+h3tVj1YPqVbrXsgjSK3WKZZxCLXmBl7gEdEuNwk3?=
 =?us-ascii?Q?w8Yj4xV3L3F5MEGRzsl2rPaCy5TSu/hryhL3yN37JDv0elKOmjPmqSIpnbM/?=
 =?us-ascii?Q?AFTjLnW2rLIJfKVRRfvr0ANTuSRFY3j+b5p0ik7IuYtxFMdtj3g1JQCOKu/d?=
 =?us-ascii?Q?Uzs3x2MQjSfQdUIO/fNweYCQwNaLj8Vdt+as8ybkf4E533nSRszxxIngX/Bs?=
 =?us-ascii?Q?xvUQ60oFG/FaKo6SN7VI3hcmrncbPKjbOXDwEmDvoNoHQKhDIZqBSun8+dMj?=
 =?us-ascii?Q?mW6ewc2e1cye8uZTkHqp4E2JDnvrESEUINl75MlguttwuiraiP1JMhsglicJ?=
 =?us-ascii?Q?VQEZPQ6IeToGVBM+H8EuhKkiQW6l0K+FbuYC9X1IiU0mtOnaxy5f82Eex3pi?=
 =?us-ascii?Q?K2rKo6t6VQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fkWH+Y7cTSnl5+PT2WTHRYGKW824tt3qke8bor9G09PFhNY67dsXEpE1hHvCh7HuilMzkpoY7bIFY+1iQdFs5OXiHQFtyhisbNRYPhNnq63BNbNzqS5Tx9s54VWpCP1Gs6htU0XCLb7MA8QiFf/OScwEEl+ZC+ciYFtx/qvocA62tZW1wLNCl7lOHJdrRu+iVzCe+HVolEk0ccBZmgVFTBjK4hofhOAWRBCrKmyh7VJOIelcRZRf+La2yc1NEIlpPDek6/E8PlafRwC1v1kPyyUPsUxL9s6R1ePIdXIpDjCMwTh+L2lQQCDsI1C5e4YkWlqKizeM9qMdEDZvRqhZ+Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8fe7ed7-ca71-423f-da0c-08debc0e95c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 16:39:56.1166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qhDWBFIQh0HcWr3U2ZQEXPpIdUMPGpe/9qzTGQoKMdRyt6EISuqDdTDlAnApAHqkdHJTGPkAHyR/FYku3Zoo47ZfV7/36KsOLNE5ZLNsgqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779900000; x=1811436000;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6O9ZoSkW/sMWdQQF/3VT2TiBstcsWYTsoYbftXcrRLY=;
 b=HsDv130JiP3QnzsvX6BzRuGqWxWiYY2MfRre3GcvXOnAdOFLpwud9PaX
 S4TauFEe4pbvwLv03exOSNXpDSm8Q03Cnz4Sh2efBXwnIVYVUE01MLKmi
 mWMM4NpsDGlPu1tvVcHS2SonPnaX6OyDusriCAvFMFZ5GDs0KF/mPhB2O
 27uE2ks/IwfGSN5BV5awd79h1R1Ni6shWChwdcSpRgux7uzIqJcaA8lf9
 nGWqVZCXYRlYZfUDveNzjeGWQmeFhhBT34/NcZpB40Ufru/7LZrVDQXBS
 8ykUue+aawh8UJkoW6/OKzDxza3THk0C7LamiXKzRmFSkOrxOfGTOpGG5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HsDv130J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/8] ixgbe: use
 ktime_get_real_ns() in ixgbe_ptp_reset()
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:marcin.szycik@linux.intel.com,m:horms@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: D48145E7E64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Wednesday, April 8, 2026 6:12 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; M=
arcin Szycik <marcin.szycik@linux.intel.com>; Simon Horman <horms@kernel.or=
g>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/8] ixgbe: use ktime_get_r=
eal_ns() in ixgbe_ptp_reset()
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
> ktime_get_real_ns() in ixgbe_ptp_reset().  Using the combined helper avoi=
ds the unnecessary intermediate ktime_t variable and makes the intent clear=
er.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> v1 -> v2:
>  - Carry Reviewed-by: Simon Horman from reply email; add [N/M]
>    numbering; no code change.
>=20
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
