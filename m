Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFtOFo91ummTWwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 10:51:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E722B96D7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 10:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C248E608EA;
	Wed, 18 Mar 2026 09:51:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 46YY24iXLV7F; Wed, 18 Mar 2026 09:51:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08EBB60903
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773827462;
	bh=fmg88YDKXZSGh3XyUyCxaMb050dhWIewRSjZvaPJooM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C+azQO8pMdmgPruedQCtDYQgG64SLXRge0z1wJoSAlBLS2i/ovkQpvuxeFVe/lbwz
	 wff2nnVugI/QjsStiv3rLGbOW/wcSv2rPoLEMUx/uCBQrKyN+99QRS87LIiIl4IlHB
	 F+RsRJzDPPjMWk5x3nYzCRqUYl0uVEKDwNoIc6HeMyBgJ2xUJ/qL+iuyL3EmxKBxsu
	 +grV/1hGEfupnmwVga3DF91H7Qu9Z50pVSbHd4cqnm2nX5W/lqaPJHE/FbMeXsmDlE
	 VVF1zyeRFmzguzXDj2YALTmfd45NhSg8VBZYNvmtNyHf9dnQERSxU+5u5FyJrK5e8U
	 xlVixMAz84klg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08EBB60903;
	Wed, 18 Mar 2026 09:51:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A3EC61BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 958B2812D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:51:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 53RgrxpK_zJ2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 09:50:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 15B8C80CA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15B8C80CA4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15B8C80CA4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:50:56 +0000 (UTC)
X-CSE-ConnectionGUID: /KjJgx7QQlauX7DN3cINHQ==
X-CSE-MsgGUID: OEwnwJ5BSQefRGqNH22PCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74851668"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74851668"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 02:50:56 -0700
X-CSE-ConnectionGUID: h/01ozcFSsKhjX5nw72lTQ==
X-CSE-MsgGUID: 338VqBgISj+/9aj6QpvHQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="227041311"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 02:50:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 02:50:54 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 02:50:54 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.66) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 02:50:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U6Ev/p2qKSoupzS+XWqD+BIOGo02ekgfwvdKZcPdhNi9iNp79hzxmRUCqADejc05ZoiYu77pHOVlceXxMwjRmjcdqcmTcIHKBi0MzqMKHQHS+LyxgmQ5T+VnoeZu2JfiUImxSfWifOhtu5+QG+1bb90WnsfbSE/BaI4i/5ifWFSyg651OtdRPYKvds5sMG0275Jh8/dimag/zyCxLD4mhgWhEJmMNWtrNmHcesNpEMieq31V4E+GP22tycuHhn0ZwlhVc3xdjinbRQVQ7tR5KRKDu3d67r86up0xETF9/72ChVvcAxV5Bi9jGIW8zhCIv36qnvJhkZDOu0IKgTemXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fmg88YDKXZSGh3XyUyCxaMb050dhWIewRSjZvaPJooM=;
 b=aALixRaQfViu2QMQRuSdU4miEcTIIwSQtUExguk9CNhZUX9Z+fTp59Fg+hb0DADBoIVWzj0cAs/soEdoAYWa5kz5rBseahqBTcmpp5ilRNuSnwvK5dCNrvtaczviT8RELnYHXzAs7FJmuIIZjhk8xJDCV8o0H+4QmODpLWJf3qWcS4MDmZB2EeW/IBCrLtMChYMBoGzzBIRXofJa7mNSskKEIuJHuIbQYWnOXSgfQiQ541Bb7IOX4/9ryJDl+KW82ygxoz408WKdYS1RoKmPf0iPY2QzpQ0VUJNvdoblapavoeYGYYoKoxNVdzTs6xAJJd2ONwcTQ3j3FZxAzpg+3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8589.namprd11.prod.outlook.com (2603:10b6:610:1ad::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Wed, 18 Mar
 2026 09:50:53 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 09:50:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: correct TIMINCA on
 ADP/TGP systems with wrong XTAL frequency
Thread-Index: AQHctrqeNTLbLEK5rESznVi4tdwd/7W0C+cg
Date: Wed, 18 Mar 2026 09:50:52 +0000
Message-ID: <IA3PR11MB89860502B719866D170DEF90E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318093412.2628443-1-dima.ruinskiy@intel.com>
In-Reply-To: <20260318093412.2628443-1-dima.ruinskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8589:EE_
x-ms-office365-filtering-correlation-id: 53cc552d-02ac-429d-6875-08de84d3d7ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003|7053199007;
x-microsoft-antispam-message-info: 1Q8ZJScQLpXt1+pF/RHQVmKqjIcpQ2i1YD9s0xmwFO9YwFlSbMOaa6JiMFSHcROV1h0Fh61gYisw7LuUJFntm1KEDQ0p49t40geqFFgQZXovFXhbzIOtkOSD4XNS2+O3hbnCjyv5Hlpn7HgNvx/RNVEAo4C5NktIDUojKi/Ni43/YPlfNc8ebB2a9Gv+hkQJdoF0Akv+JUAzC3s67A4xD2EUuWVfXt9gsY51lxrMGdwEA1+qcfMK3/TEZejE0MOsEvLlpQO789O/bEAxyQhQN46Pxr8d8jkAk4rxUPRRkyAvc/MsylaOWft+mSaz9x/gHjH0L6O6eDUaZeQ9oynhoOOOTSThFfMgSSmKh7ja+giHKgMf4tD4H2bdKdRigh0bkvTZERSPE6NyVwIxMn1JHtiNtPK0E4BQJTVPdCtm73SYxwmtSzsQQt5gqukv6sYbccMN98GWhgwStDYy/cadQbhORS/qQINsym7HNeKCWi5sPWMg4RLkeK9Qn9BUWDKApayIyCn7vB2nIsdGWfEifGeUUH2knuOcVAskEMZgbm8V3rERDr1REgzKw0586RWdqSUhLjVoIqwQ4nXDHkr8lWbYHqTIRJoWbs5mjlRP325R/gcTpI4IP3JM/GM/lRSyMmAjxg1j4ERJWPnm0bZJWZCEk9UKn489fdmTWUlrCx0y4T6QvHe3uTK/rgyqWreggUttYpcwc4m3In9iwF7oAE9cq+FXgKrdty3rfA2BIvXOJjPi4QOrQQUZySlN976A2m9XOJMucmHIN2igUjhmuIwZ2aGc60/bauXHNFhFs8A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AQyRy903N4la5TwMw23j73uuWLRyGmIRkh61sOopHJ8dVr6VS17zKlaazIuh?=
 =?us-ascii?Q?f+/2L7XyQDwVaGPVpbvnwd0HgNUK54vW4LFQ7NqEXksUt3/B7ZC9eL1ECzdi?=
 =?us-ascii?Q?yZ0WvWv2cLSlxnNxEec6EMpPLSq+ETAvAYOVJYOW6PTmd1GN10RV85LNDRau?=
 =?us-ascii?Q?PTwPH+j2rPo36f5okNTrBMnqKeEePSWtKg5WtI9jRZD67aHTkoVw0XGXFOrw?=
 =?us-ascii?Q?rtyzFVzqwzfBL3oLJHzhr7cJyHAyq5DdocsCfV0xLX/jGUOmcityrHgoPUTo?=
 =?us-ascii?Q?rdkn6Va6Opu9CNF0n8z9196mkzYQXgkqOJg7AENtPjZMRsGPDlu59cH4xEGB?=
 =?us-ascii?Q?8KxPyw3cW1zHUGDLoOUwDCerX9+DD/m7faFYD/DioCWNLDmzv5s88K+8kvm5?=
 =?us-ascii?Q?lzgVBCTtZgWUkYSgATt+8bFCrqqA+KU/+bJ/n7MCksigRe8Hd329UBZ9vMgN?=
 =?us-ascii?Q?wX/QdCuN0Sz3q7t1R1V4xlDQpqyj/14tRaoYppE2SQC76czRM/7e4iY/JaN/?=
 =?us-ascii?Q?6pnCJXgVTEaJW2qDuza0Ju0mzxDgWwecAduuq28csD2BHQjSHLTwkAQH+lK0?=
 =?us-ascii?Q?uS0AgHDGYazp60wgGMAkNW50dvWP5rN0Z99ZCU3eZqs5Y4RSiW14usSSzYMV?=
 =?us-ascii?Q?uFyZq2H/Ktp/oWq6nfMK/TD3jXnx3/OeiUGfK3SXs6aFgqzZDWm9fzWsq23I?=
 =?us-ascii?Q?g+NaoljsmS8bozq8w5qitapW1CDx5x/7cC5D7BiTIovj9ouLzbX6p2U8DVf7?=
 =?us-ascii?Q?REEDjHmM0B6RO8GqHVXUWNiQOxllQwGISWayKdmhqXTq8HfQd7ABKc0UM5xH?=
 =?us-ascii?Q?6GwTu8YuRk7mkydvgYzxmda151A7GPb2TE1WchbrPzXvtzPBlzd2wqbH35tX?=
 =?us-ascii?Q?jsRdxv2v2U+xwxKVriu7QSAVsI4rIlOH/U2wMZvY36bMF6b2kVmDiKxhJD6q?=
 =?us-ascii?Q?T9RZeeQmY+Vu0guB6lBThw6z0jDHxkl1MxyoMhxMgjZ7XAQOAT8nIVwas3d9?=
 =?us-ascii?Q?N8OaUFxYwKyHV7EY2esk2TgMo67aPKBmvliYYoGKIEb5kPh3lFXaHZlUh5wv?=
 =?us-ascii?Q?O+/yY0za+O7DuSmaATSJRWJ6c9ErSAUi5RZrDC69nrFFKZUyMpDglKDOlD7h?=
 =?us-ascii?Q?zEuM8uACX0yWsWVVoRbhYfMpM+3PGLHdLCm0zNaNdKXwv27xpuLuBNVdoq1O?=
 =?us-ascii?Q?TLBIlCIC0jaz+ZqlBsujv9iI/iy/h0XHusnEt6PJ+ltjj80MyCDJUTARrMHG?=
 =?us-ascii?Q?sG6qxWg+Haw8fyJQ72Fz2K6hi0rgcvRb92F2+nppBymZlx/iQn/AAxJpV+Mo?=
 =?us-ascii?Q?ZHxdE1FjZImbKrhM1XLK4GUNPFQO9d8ZHDNN/0p0BjLHZa/fvmh/mDKU1YEX?=
 =?us-ascii?Q?x8CNOaNjranwcehGOhCNcgHYFKhU5SuPIhWdto1vzRGqpo4Y/vhEBuxGAbsR?=
 =?us-ascii?Q?DxWoQXaPPUItOGNgWMBm1Ba/Aan5aYKsgZZOgosqd/16C9h8WeKwjg9BwrZB?=
 =?us-ascii?Q?9zDo2byAvj1Hel3rEi0pgMaPYfEiwzmtztde2Z6CMyx3TlyEL+JB0PcWdS0N?=
 =?us-ascii?Q?LoPYc6NwsX4lTOuRGcwJjzGz/MaTNBF1FzSOw6+oDRVuDBA9G/oNzBB4IxUZ?=
 =?us-ascii?Q?jldQK9mkqFbLlbg7ihEAyPklKFAnz4VLIa1LQVnGM1FKyCZf1vwutYy7B/zr?=
 =?us-ascii?Q?JWy36/8TTMgOFrI3jbL+0BwjWNzNCY7+R9If4x6080gfqOBV3TKcG7li006a?=
 =?us-ascii?Q?IUPtAC9QCYiO4/QRMrC5KLLzuGpOIs4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KnjVamy8ZFwSxl7As7jesAHNJ13c9CgNUDLvOhEnQQeczcBt+xM2ge+cdds4YBgE26kEAP9C28NEamSKduEvpRNW78QOgMG+4xav+v/xFvTU2gn2brtsccZY/QHSHOImGmcnqCVjA7hV9uyDP+Ey3zlP04Pg4P4uR6fHKMbUW+DIPs7MnafG83E0WKa1LedpsgzskyVv6g09L/QCB2RbaYmyDYZYqMxHLbGmaMas3FFZ8oXDP7vJhFpLJrjKQ2nGiaMNzhyyi8ZpExjSUtCc3VRGsNBXMRSMlPjspI/XOeppGKhOAK9kmstZ9/kRfDTwWtQPot6NTTHHJJQAqhTUrw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53cc552d-02ac-429d-6875-08de84d3d7ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 09:50:52.8465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xR2oHt9vaZsl8xLqmNww4iEh58EZa/t0LumOXIxVW9jCG84pyWvCaLrfnYVgXUaP8SXYhgUgaoYlxsgZJztwtiC64/943/Q9+ynrXrSdI3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773827458; x=1805363458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=enkM4UnSFFhWhbrK1dPMuE9Q71u7F80IEo/dyDBeegk=;
 b=FHKCcfluksrGC6+gBoTwTZmTRzjwrjqR5ayS0+GYAz3htzTPesfR6hGF
 T+aLjEtM+hJkuoFDDIccUFkYCRcXVInQShjipOWlF77V/3oQ/xCznyTLr
 noQM+CXVB8TCrqZFtAfwg1tkBiEBpuVBySRd1lPOrfckwUBaGRC9qID4v
 mVfKKZa/7hD7fA6gFKsXUeX3YDWLC4A/A3++eze3M6obu2XJdo0QHtwbj
 vEYaAszcGZMOqTwfsGLQZgqKKHVgX6wIxNh0X6en4pRXMrheQXKr+vepl
 u8XxrCRidvlysXBER9nkYucLlsFcqUFBD1ju6evpVIPQPMQhAfmeAJP96
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FHKCcflu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: correct TIMINCA on
 ADP/TGP systems with wrong XTAL frequency
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 46E722B96D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Dima Ruinskiy
> Sent: Wednesday, March 18, 2026 10:34 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ruinskiy, Dima <dima.ruinskiy@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: correct TIMINCA
> on ADP/TGP systems with wrong XTAL frequency
>=20
> From: Vitaly Lifshits <vitaly.lifshits@intel.com>
>=20
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.
>=20
> To mitigate this at runtime, measure PHC vs system time over ~1 ms
> using cross-timestamps. If the PHC increment differs from system time
> beyond the expected tolerance (currently >100 uSecs), reprogram
> TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.
>=20
> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 16.000541250
> (expected ~10s)
>=20
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 9.984407212
> (expected ~10s)
>=20
> Fixes: fb776f5d57ee ("e1000e: Add support for Tiger Lake")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> ---
> v3: fix cc.shift and wrap TIMINCA write in systim_lock
> v2: avoid resetting the systim and rephrase commit message
> v1: initial version
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 78
> ++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 9befdacd6730..26fdef6075c8 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3902,6 +3902,81 @@ static void e1000_flush_desc_rings(struct
> e1000_adapter *adapter)
>  		e1000_flush_rx_ring(adapter);
>  }
>=20
> +/**
> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and
> +system
> + * clock delta.
> + * @adapter: Pointer to the private adapter structure
> + *
> + * Measures the time difference between the PHC (Precision Hardware
> +Clock)
> + * and the system clock over a 1 millisecond interval. If the delta
> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
> + */
> +static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
> {
> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;
> +	struct ptp_system_timestamp sys_start =3D {}, sys_end =3D {};
> +	struct ptp_clock_info *info =3D &adapter->ptp_clock_info;
> +	struct timespec64 phc_start, phc_end;
> +	struct e1000_hw *hw =3D &adapter->hw;
> +	struct netlink_ext_ack extack =3D {};
> +	unsigned long flags;
> +	u32 timinca;
> +	s32 ret_val;
> +
> +	/* Capture start */
> +	if (info->gettimex64(info, &phc_start, &sys_start)) {
> +		e_dbg("PHC gettimex(start) failed\n");
> +		return;
> +	}
> +
> +	/* Small interval to measure increment */
> +	usleep_range(1000, 1100);
> +
> +	/* Capture end */
> +	if (info->gettimex64(info, &phc_end, &sys_end)) {
> +		e_dbg("PHC gettimex(end) failed\n");
> +		return;
> +	}
> +
> +	/* Compute deltas */
> +	phc_delta =3D timespec64_to_ns(&phc_end) -
> +		    timespec64_to_ns(&phc_start);
> +
> +	sys_start_ns =3D (timespec64_to_ns(&sys_start.pre_ts) +
> +			timespec64_to_ns(&sys_start.post_ts)) >> 1;
> +
> +	sys_end_ns =3D (timespec64_to_ns(&sys_end.pre_ts) +
> +		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
> +
> +	sys_delta =3D sys_end_ns - sys_start_ns;
> +
> +	delta_ns =3D phc_delta - sys_delta;
> +	if (delta_ns > 100000) {
> +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4
> MHz\n");
> +		/* Program TIMINCA for 38.4 MHz */
> +		spin_lock_irqsave(&adapter->systim_lock, flags);
> +		adapter->cc.shift =3D INCVALUE_SHIFT_38400KHZ;
> +		timinca =3D (INCPERIOD_38400KHZ <<
> +			   E1000_TIMINCA_INCPERIOD_SHIFT) |
> +			  (((INCVALUE_38400KHZ <<
> +			     adapter->cc.shift) &
> +			   E1000_TIMINCA_INCVALUE_MASK));
> +		ew32(TIMINCA, timinca);
> +
> +		/* reset the systim ns time counter */
> +		timecounter_init(&adapter->tc, &adapter->cc,
> +				 ktime_to_ns(ktime_get_real()));
> +		spin_unlock_irqrestore(&adapter->systim_lock, flags);
> +
> +		/* restore the previous hwtstamp configuration settings
> */
> +		ret_val =3D e1000e_config_hwtstamp(adapter,
> +						 &adapter->hwtstamp_config,
> +						 &extack);
> +		if (ret_val && extack._msg)
> +			e_err("%s\n", extack._msg);
> +	}
> +}
> +
>  /**
>   * e1000e_systim_reset - reset the timesync registers after a
> hardware reset
>   * @adapter: board private structure
> @@ -3953,6 +4028,9 @@ static void e1000e_systim_reset(struct
> e1000_adapter *adapter)
>  		if (extack._msg)
>  			e_err("%s\n", extack._msg);
>  	}
> +
> +	if (hw->mac.type =3D=3D e1000_pch_adp || hw->mac.type =3D=3D
> e1000_pch_tgp)
> +		e1000e_xtal_tgp_workaround(adapter);
>  }
>=20
>  /**
> --
> 2.34.1


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
