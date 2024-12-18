Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4299F6638
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 13:53:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2215361689;
	Wed, 18 Dec 2024 12:53:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QLqVk3dgxg6y; Wed, 18 Dec 2024 12:53:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDF3661441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734526385;
	bh=52oE+V5oj6i4kYInFdYyIPKze8rgHpMY+u4VtlTRRV0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HpAdzT4z36EMrJZWbyfcX/AttJ8g+WZOkXu0Sms0feLNHoHoD1BUZDecAtsZlJdRB
	 9RFK9Str8rFxBFukZyovfRBau9UA2p3d9fY5ApBnyZyALPuGIPs7cFFI9dPinfx3bF
	 8MNDkcXFSxy4+g9hAmDYn4dJ5FpqS+j7ssbR5Xc1CQ/yIj/+/UyOWVXZRkgiBtM0k0
	 Xu2857t20YFKKBkVEdFocBk2NCsufWMAbdMR6Sh6u6R0ZAkYTo9oGWbmXkh3V0+mIV
	 3PBNVHy/c8GcEBUHvmxjiRkOA1abDTGhodRuQotRCU11m5wKvF/urTmuZNjL2l+xN3
	 y6NdzjipiFnGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDF3661441;
	Wed, 18 Dec 2024 12:53:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 206B4C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B288404F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:53:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5QMQk1LPLtZ0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 12:53:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D39B6408AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D39B6408AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D39B6408AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:53:01 +0000 (UTC)
X-CSE-ConnectionGUID: esbxP5wuT1GgNfENDNob4Q==
X-CSE-MsgGUID: cTEWE20OS7KyJUuDur6dgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="37834428"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="37834428"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 04:53:01 -0800
X-CSE-ConnectionGUID: n4g+pnfxThy+Cg31f+s3Eg==
X-CSE-MsgGUID: TRssRaFWR/m45KppImgp0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135190790"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 04:53:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 04:53:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 04:53:00 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 04:53:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qlJ5sxfFaWa1QPpiNtxV3xe0G5hClPOWma/lwGGyvT3weJiQcv0a/CNksni3AXQM3WYfqGc/EYa6AY5muHrqESOxBx0/CEI/1mKtmnGhPMRgEp0W1P+ZwM9jXZyMX1yyjnaHsRtYsWEgYE09F7koTocz2DUSqbHOENO4hg4QGXL+8eUYQfY8DEP+qXbYezIbv428Ks9QfIEQhmlNv71Piywfq77KwOU4YiVryQe25i72/5MjfXca/L8StS/jEtDRUDksy3etbk8ybxBmagC5rPy9kbu0y01bKDzJKTKF70dtvFTVYDGjUeg9eHGUnQIBDYlGiiruV1hBYRpa7H3vUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=52oE+V5oj6i4kYInFdYyIPKze8rgHpMY+u4VtlTRRV0=;
 b=XjtmfJzNUooZXtQbHhB8F8JXXZPP0+IYLRkKMqHt5ulxjRiauEc6nC0JVPlOfnFgZUjgfn21nTANjFl99HIGjy99Oiek+XumE8xfynu8swGC3PmpnHt3uypSQITV2+7O7fLr9lyIzg+DU7pnKs4q+fKl9r6aWdXs2qYrr7KChpVBphVXbfVs293ZmkEd4K125zNwjSij3PjwxllsL2pjQti29JOhO9p8o/7y5UImzju5wsgmDJexyS8OF/as28NrSRQAGwsPDgwZ0OSzf4/2oMunX4t1yOmDRjEErIOS6vqaKnbxfP2hgBJJ2e3eXp/cIUDw5ysQPwUcuGE1L/MMSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by MW3PR11MB4681.namprd11.prod.outlook.com (2603:10b6:303:57::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 12:52:58 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 12:52:58 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 0/8] ixgbe: Add support
 for Intel(R) E610 device
Thread-Index: AQHbRvIE6wjNh7cxukOdiEi93p1phLLsCHYA
Date: Wed, 18 Dec 2024 12:52:58 +0000
Message-ID: <PH8PR11MB79655E10E61E43A2269F7A6BF7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|MW3PR11MB4681:EE_
x-ms-office365-filtering-correlation-id: 361e5296-68ad-4166-ce9e-08dd1f62e5ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SLcYtfojihdLUggbcRXY5dW5byxpzwoNQiEA34Lcc/5HzzB798oZ27k+QqsE?=
 =?us-ascii?Q?qaOwcsKmgaP/SANTyWyIpjrsB9PPKUyyEiNoXjIPTfPCyuPK7nzZlaxqkgC+?=
 =?us-ascii?Q?fuu37TkXlboXZV0ITLOlR2Iwi9vaRNudwxaCptM3uQguPTP3MYwBBybY5ocN?=
 =?us-ascii?Q?NhDHM8QQdkXMzbBM0dgUlI20QEJqHVRPGGNgoOMhqY5O9Wn6o9pZRDpbpJlH?=
 =?us-ascii?Q?wChFiewgmMvp2oLI1HMTjvD7JPrPa0oRH2nkCBdF2QM3CmmrzQmzcH44CI/d?=
 =?us-ascii?Q?mRjvUV1kI00ly06WekjVwMqS6tAKHccaRww753zG7FJU+rJKsV4ZVz90ZtEv?=
 =?us-ascii?Q?lRb1HKLkTnfvJkYKN+WZ5dQDrZlVxQxPZR/6wL8cCdVHu/LyX5L5gB6RfijC?=
 =?us-ascii?Q?B6LWzqJqROB8uMw5mfAuiTy3xyxdYpoziezVm+2dctFy/7s2M9y2FTpdEkFi?=
 =?us-ascii?Q?pTqv76G8gA7V2+4IK4M/iA4OP1ZE+Z0pHwXlkZ9W10GXAns5LsQ5wQmm4kwQ?=
 =?us-ascii?Q?00KFFp8OOCuiHpOYQFiqG3YilvGVsObFgSH8TldKsGG+YfvY+5JtH0omwDDX?=
 =?us-ascii?Q?DLSV/BZhLSYWUFPf/lL6JMZtZ1m06d4QjgnraM2FGjV5T9xA2HJZYkKZpxYg?=
 =?us-ascii?Q?LHgLkzXcprJoVaVT5EvmKldtEqqeFC0GjD7L0iP1XwEl5aoSzv/tT2UR7C8I?=
 =?us-ascii?Q?ecw1zV4qXD+LHdLYAxmycud08FZD7R9ZXyHLgcOYycUH3gfnAiTCCIwBfTud?=
 =?us-ascii?Q?cbUuu3CIHFtyrP08Rrc0c/ScpFzQZNQW/yR23StS4UqJxu92dezHRQN4zwe4?=
 =?us-ascii?Q?H6thBXEIqOfvpL0zcWiVJJGVLj3sIaou8MU5iPkrVSboye8tswPwa+OQWkkU?=
 =?us-ascii?Q?foW72N0IWksqNLIJyU1dnR8j7U+QzpdtzDJ9f3mWL96DUxQg/sYgYUbA4exM?=
 =?us-ascii?Q?niZsk0UFbsc20ml6Av+Acr72aP5ebKLv++ONJyOPSYLsVPOifhA2xYdNJKEW?=
 =?us-ascii?Q?vh2rnP0eV7n6UGyKEA8Rl4qZeAeokGaUXOs69rz9BSt/ITi/T2rjOSMxYzep?=
 =?us-ascii?Q?kz6xl9ai3qrd0QDsMpCQaAt2gzPV6hvLdK8P/i+YcRV3aU0hNClG77U767TK?=
 =?us-ascii?Q?VPs3Uxt9xO6yBbPbvnYz+RNWkhah54xof6tt7Ao6IvfkuYCbq3Aad9o9t6Im?=
 =?us-ascii?Q?AbO4YpMFfz4JDobo8hlLFnJEqV6MmgLfHwQhrtKocQ++Kf/1ZYazfHP/qCMG?=
 =?us-ascii?Q?CVnIWVwWFM1fuqapWIMaRW1AgoH/HOAHj3CBu5/N3kZo1fyV/DDVGJPyuqcE?=
 =?us-ascii?Q?6NOJ7eKIGEJvBVk2ZLN6vIs+BprTm9WS2QSVfiLZSWXZsvq4qmuJGnh0fdND?=
 =?us-ascii?Q?YVbzvNmemSIFMw5hefwn+M5sxj5tsjNDkowHjNO4w8F/JVk8Jmzw0UIFnLFZ?=
 =?us-ascii?Q?4oEz9JB3F6idbP5bApm7qASRRFOowBIj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CPPNSr2i0FQFP09Wvr/QD347z7NovM3hwDdWMaVTSlXQRtWUJoCKOfoPY7SV?=
 =?us-ascii?Q?jP+XzY0RQIo7vu4unpClA9XMw3WASrDlEKoR6Yfvr/9iOKbyZCu4IhAEQA8s?=
 =?us-ascii?Q?4wy2R5aDXJNxdVTjJt0X5GJLa9cpAfKbGeT+H27gdXhPXtreTl0HikD9hK/w?=
 =?us-ascii?Q?Mlr4vTlu2PAJKVXfA66Egx5mT8to5V6V5Ug+IjWlt5g6tcB3WuP2WvR5g18A?=
 =?us-ascii?Q?00/7QAnGvy/XjKYS6mi6Oz7/dLiK7gk2ZwqsMdOP0KSkHQwMD+rzLr67RuT4?=
 =?us-ascii?Q?JsXrTZzqKyd6sFUp3jLV2M31CAWrN+mr1sXzFxrg4HwFJmFEx/kt9UIuhUlE?=
 =?us-ascii?Q?F+iZbp/RTpq/UWwiFvAXmML3gCOM3PDPgm8L7PY3G3D9BOrJPrZNH3CDvU18?=
 =?us-ascii?Q?jkWeVcFdM/pxwwhK1UzALMos5hNJGOhNKl+iy+5o0cwOc6PUMBvJbX8b8dBn?=
 =?us-ascii?Q?b60q/oCdYK2H90XbI9ayrET0Ek9kLrV3ufJ60nbMl/Trz2/4oaGDa9SiwDJf?=
 =?us-ascii?Q?OvC82zkFPis/Kb6eCBcEnrK7XO9aKpXdVZTxFjjuuew7h/Qfk0wUgHJouSAI?=
 =?us-ascii?Q?gPcsZisQj6zOWi8ZnBg7g2A2B8WBekveRG4BvECmODWBHvD2BUwFelwhrBdz?=
 =?us-ascii?Q?j6BzAXab5J2uKQ8YmlwGiSmn7dJ41c3tyXu7W+bNrpFNf1YKvgHQLFRPrU3D?=
 =?us-ascii?Q?7Fbu7ke7X14q0unD/S2dSoTLnaYMVdJv6q6q5+0Iw/NgZH1N00aaJCIvRs/Y?=
 =?us-ascii?Q?NeoJ+mTeACNfr65udvACpAirCeJkjTnt8qC7MA0gZVl6JgBkGLsmWzQanbUc?=
 =?us-ascii?Q?PlsBQzifRWeALMKUwl4rP13WdPJiRTgJxXfB34PJt4wnODyti6MdrtzLvROE?=
 =?us-ascii?Q?X5GiPrFjgFinNs50AYGEk5kXs+vfeuNaFyx1T3KI8h0CIRnxljy2T3GFxCQb?=
 =?us-ascii?Q?QtB6QYvAk2V9/bAcC+XDtv2cqwQKR0aj/V5bNE5BCcvUavfetxVAzX5FJS0b?=
 =?us-ascii?Q?gn3/3vVfXOcRVWv94hHvDltjUBMn18R8CSyqKqIbKF+rdBSbz4VqcGBTl1cM?=
 =?us-ascii?Q?iu92PKQyVBty2Ll9G3f75bNbVDFxTWyIinZGM0bMkcahflVfeNtOYjKRGLHu?=
 =?us-ascii?Q?bWeTvZFG+cNmL5OnRRpc2pX9C+U0JPpxGhOyO+SYShulprivSGyaa5bV1Xqp?=
 =?us-ascii?Q?K+srDcf/oqa9/xFsLWLvvI9royOs2rLKTOunPj1ZC5ZPHHCxydllAka+oQ7J?=
 =?us-ascii?Q?OSShVXa968SAAfvwisrKggG//+5aj0gVwrcMOnDKjDzpKej32WdGGaNKaeyo?=
 =?us-ascii?Q?YTQEBDgIdU3GaxfoVWiS5Ey9pZhNpgHaIMhuE0hN0puiDQvWYFxqVsZCiiKs?=
 =?us-ascii?Q?8h3ghCb7RJsLRPZ20ssJvTYLRgjmOh4cn1W0XCwrMqFCMLysdEXuu6WO5B+4?=
 =?us-ascii?Q?ZhLzfjIa6x0fqTKmQd/VZf7PdTS6ZmODqWL8NPiUGqVGtURvtKjnf7Ov09v6?=
 =?us-ascii?Q?pJ5c9jtjzHBjD0ok5vOon8J8kNb3IJe9k1o7MYS5N+J3AKckJRmpWXvYM3Sc?=
 =?us-ascii?Q?MQ8REHJluavDsI2FS6Lk0Scw4yh0eVevUVdYfvHf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 361e5296-68ad-4166-ce9e-08dd1f62e5ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 12:52:58.0562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HEUa3aNJZ4vqXhhXqm5Q/lTzK3AJmI3u+sRSIyU9ada4RzjD8Ceo1QTxGV4xQbQ2xbZNhQj98CzL3BOrG/sdAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734526382; x=1766062382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=waXdx+fsgapTXsfrbhoNEiDTYK/aW0WPZK2Zi4ClcWw=;
 b=fbDyjRad8boGIiXLcgLTd61550P+p4IbRZpXNlIkFwz2x2dJRQQ0+daR
 MWbqmcHO/DhSpay1Vy412ET2bl6fIAWZtsmwP9JYTfmHA/0ItMsrPI+qD
 dEzvPWhnNAWDWNKjdhaErQdxOJ4y9trjZVrpGDDKlpxe6i1UGcS/fs2/c
 AmncNIMQAeVMDPVN8XV1p+FfYlDVhAbhJoKck8tnci0JFwp1O6UoK7iru
 v9AcEgDof0mW+SaotPgCpUF1b0x0J6hzxFe6OLp7K90mrj0akogcqkTH/
 z4xHUkKRuS7LT3qXYXv8cp35cHU70nnCEI6hORSI1rj4yk9ijkkIRk+dl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fbDyjRad
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 0/8] ixgbe: Add support
 for Intel(R) E610 device
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Piotr Kwapulinski
> Sent: Thursday, December 5, 2024 2:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr <piotr.kwapulinski@intel.c=
om>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 0/8] ixgbe: Add support fo=
r
> Intel(R) E610 device
>=20
> Add initial support for Intel(R) E610 Series of network devices. The E610=
 is
> based on X550 but adds firmware managed link, enhanced security
> capabilities and support for updated server manageability.
>=20
> This patch series adds low level support for the following features and
> enables link management.
>=20
> Piotr Kwapulinski (8):
>   ixgbe: Add support for E610 FW Admin Command Interface
>   ixgbe: Add support for E610 device capabilities detection
>   ixgbe: Add link management support for E610 device
>   ixgbe: Add support for NVM handling in E610 device
>   ixgbe: Add support for EEPROM dump in E610 device
>   ixgbe: Add ixgbe_x540 multiple header inclusion protection
>   ixgbe: Clean up the E610 link management related code
>   ixgbe: Enable link management in E610 device
>=20
>  drivers/net/ethernet/intel/ixgbe/Makefile     |    4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   13 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |    3 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |   25 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |    3 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2655 +++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   81 +
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |    6 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |    3 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  436 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |    4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |    5 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   72 +-
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1074 +++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |   12 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h |    7 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |   29 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   20 +
>  18 files changed, 4405 insertions(+), 47 deletions(-)  create mode 10064=
4
>=20

Tested-by: Bharath R <bharath.r@intel.com>

