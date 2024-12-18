Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEABE9F664D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:00:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DECD608E4;
	Wed, 18 Dec 2024 13:00:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id stiejn43JiBL; Wed, 18 Dec 2024 13:00:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88B6A61090
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734526801;
	bh=2B89DQeNvJdDCMZdKo+T4OsBNoWI2www8c8GXOsjIlc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LDW7UdbUDk5B9D0kxFuxhcwG92+oHAxeaov930T8+Hw0ZxgVrY+7RzqCDze7qc98E
	 W1eArifJ2LcZUFPx09D9vOIqBNu4Oh6DtL5yp2/byC8LPiPRkXQ1TCJldJPcTzeTsd
	 wpDjzCR+k424T8Sod9rYIXJN7oSGHJ6MjxkOGax6YrULYIAuXA45sPTyaOtRw9PHVC
	 b0Boij4JtZMwmzhw6D6jwjJk4vxWgUZI1ElxVkDvH/RsRAzLVKY1B4gY4u40cNw40d
	 Ls7+LLWekZMADdgBdknohaC3yUJy2LUTog9ftffOMmXK/jt64JbPAp45tNbfbopMJz
	 6OXkxbg18MYnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88B6A61090;
	Wed, 18 Dec 2024 13:00:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F124C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A25E84A68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:59:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZDSG-SCG0Ceq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 12:59:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6146684932
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6146684932
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6146684932
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 12:59:58 +0000 (UTC)
X-CSE-ConnectionGUID: y7ndOLJPSgerahh3FsYnLA==
X-CSE-MsgGUID: NDA7GHseR1mO8Z2GEXhXwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34282363"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="34282363"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 04:59:58 -0800
X-CSE-ConnectionGUID: A5a480RPTSmy+6BSkwaZZA==
X-CSE-MsgGUID: kIcz3Y4HSOyOpgYnGD9TPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="98086451"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 04:59:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 04:59:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 04:59:57 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 04:59:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t6wf+VegSIWfTqMD0W6NCM1z6HyvbbRXVRtA+YCg3FFAmLYz1Ba+BRvST46jVybrxRQ5YeeG0BOczqyahusJo7a0O9g2mOdpbnMBQVJm7/PcSr2ZOJBRNtv8rs7h7h0LpyFHPBXLr9LcPHvR8h2Bac31SXONyxlWuBQogubihcdU4X5EUpRWebPrNe46ymKST59sJaM85iDYwLaSWenyvTc6Yb0FqC+H9J9xaCyoYjs/Ja5xTdSd++GXByDdB2z6Aj5tbmgbYAQg/j84M3Ou0qVGtrbiEIZHVJ3NthzBdEFYNbPBW+T56wn9rRo67ui4hfQfF74vMc/a6ZD9zlmOsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2B89DQeNvJdDCMZdKo+T4OsBNoWI2www8c8GXOsjIlc=;
 b=ZFwH+zD7A8mhvv3qSh5pBn0fK9zItmX7ymW6IfHjqh1g6yYbT1FuPdZQBCyIpyufxIPHUKkvJNhEf2zRHOrTrrbzz3Jel+iBMH5N9dpb1D5SD0uhSQ0EKvjKPOcC1zQzRtCcFQ71LE/xE5TJg+pe6ZjITQfcp5A0bTh6/FIT2y/kgT5l8Y4VGaQvCnWQWW29rBhgrHOUBl9mOdkAxyQlGU1vkIxVHu4K8PQrQfV+BFI5sm+NrdYuHaVIYSFws9PDiwYu1sDSGBqmxo/ux3VPil3fmmqkmKK6Gize9vj2kbuXfiCQ1OeFxA2je4LNcDfvhIryBkTGpGrlkE8tBv0LiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by IA1PR11MB7941.namprd11.prod.outlook.com (2603:10b6:208:3ff::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 12:59:41 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 12:59:41 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Sokolowski, Jan"
 <jan.sokolowski@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 2/8] ixgbe: Add support
 for E610 device capabilities detection
Thread-Index: AQHbRvIgk11caYb7sUqcl48q2j28kbLsC02w
Date: Wed, 18 Dec 2024 12:59:41 +0000
Message-ID: <PH8PR11MB7965CB91E715B644C06923FCF7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-3-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-3-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|IA1PR11MB7941:EE_
x-ms-office365-filtering-correlation-id: b3222031-718e-459f-a069-08dd1f63d638
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?aUfjIiAaZsfPipiNot3XKEjKapdm4AsViqWlP8tes7rMHe3euG8UiuEgPEd8?=
 =?us-ascii?Q?IELOcXgLHCIMOn4dL6c7v9sJOZYzTZKPA/DpABJl3sV1JxSRLmVcQbuT6egj?=
 =?us-ascii?Q?8kjnF1Ms9t65DtIUCLlHkugb+jIZ0LGdGhGg0ELcDtcytKWrBdDD1+dAYl3H?=
 =?us-ascii?Q?ARceJSjvxBMyZXlKCnC0d7ECtBde7wGkGgBPBeKIN729q2+EcupjjHuBd8fY?=
 =?us-ascii?Q?DPulVjvOx1RoXAqnCpw0rX/Dza5TXRBhqrWYfgWKryHEmerWOV3AfvjKyWTj?=
 =?us-ascii?Q?IjLJAzDXB0gIykDRsAtWmW/v7xbIxT9lpFbZRIFA984bK2ADYlXXrEKnoWI3?=
 =?us-ascii?Q?tQpWdVDzhFFAkImX+gGLGJI5PjhYTbTytqIkg4dN/nxOQ7niXE4Bqcw71rmf?=
 =?us-ascii?Q?Ha6DCXAjIuzi9yYQE64o0OcwviLPoBEHjXVplJiB3sjpr29eT5PYbHzZvhbr?=
 =?us-ascii?Q?/AaTG0d8O5MSPmMBoUUsrBG2enInuf8/0jcNQXa7k3vbSKKYZGIypmsfoDQN?=
 =?us-ascii?Q?1kCXDTAf/Lx6tmcVL4+u50luulPDpwZ8MdiHihTFkrYd89Bj2i8fZ9kOz7HC?=
 =?us-ascii?Q?jUKiJJZ/RvSeBWuR2PQO6fJ6hN13dCSg8GnNLdl0kOxtK2N7jr/Xlu1EnjFf?=
 =?us-ascii?Q?1qHY22PmqAOB9JyM9UK7vF2ktlBiVURwZIUJ/hsjFpvYv2c7OFe6Fg4BMz6F?=
 =?us-ascii?Q?eE+kl7PiAqXSGgoPRKgfrsd7YDpQAdHgdlxXG/pMY2sIDxHuwFEEi2GTfT8D?=
 =?us-ascii?Q?HwvRdsPlMLEm7P0EWJkopP04E2pIW8Y9ETXGOUbLxyaQpVpxN/lua8sUilgb?=
 =?us-ascii?Q?wVOMt/LclfV2b5qfE1xceLrlfqUsnig9O/QbplfulZp5SXQ958iT37h/Y82V?=
 =?us-ascii?Q?qavYnHzuyUctPeDCuL9So7+zdy1IiTdfJ7ce7yHfKK5wsr71vpS6rr/5EYTU?=
 =?us-ascii?Q?kGAWzBWfeThgI5CIEWO43l0oFNLPqsGmPpcx95zRGHwHMqgNE/ZAiwVKr1Ae?=
 =?us-ascii?Q?M8VWzR0rd/RbQAm+n6Qz1874Oqn7B+QunruKV5whuiqubTmBItlmGJ9cqvA6?=
 =?us-ascii?Q?VZ1Isw1oFfYZP/clsV+AotU/we7+bwPZpCFjDug9rlg/50gzQfwHbGiM7XZY?=
 =?us-ascii?Q?2KrDiybBqJD9Bnem/mIKrokTZihXsxoHo2WNrmKdmxTA2YCXrIuyi6JRxHmK?=
 =?us-ascii?Q?/OLlA68yR2s/GoBbcm85XD1pjOyxZZWavRvKFRO/g74DMg2zqGtpFefaEL/H?=
 =?us-ascii?Q?q9MWF9StQEDOckscHSBkj/3YKMnmJ7ZAZnnA0fkL2UUgPFatO56CBuIcHrng?=
 =?us-ascii?Q?sKLBbDtJTj7+sJ0yclf6ZErYsOuMTqjZR0iZYUwdVMs/yqPLQyGa33OaUPKT?=
 =?us-ascii?Q?rk+BHUr739DWK5TlG/Y5b3ubYpwVoIfXQrP5DA7uyyXSK756dcCejUVk8E6A?=
 =?us-ascii?Q?LFy+ftMZL/YZ2n6tJ5s6g0lzrSR0t1TS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aybvK5s0zLjdXRjUKgN03LYvIoHDtFQmYE8LQL4frSaNEeGA0KUIy+q5LI3d?=
 =?us-ascii?Q?JkB4CgZdpvFnmkw3TbMxBy0+4VkCUHLmadAvXJ6WsaA7YDu08my7NWkKoEB+?=
 =?us-ascii?Q?Fax8CaZj5bLaKiiACy2bzcVReBQjW46GZhSmwvn8O4+RlpbMMulBLkCR62cC?=
 =?us-ascii?Q?40JyZO14XY9ppcF4oX0w6KfGr5S+2tuvzXkLfE7n/fd1AvYgwEQeZCw5RhIM?=
 =?us-ascii?Q?eS/uGGKLn97ly6DY6m1Swp/ByXhJIPxNg0b+akpN+I1Y000SqmMigo9lshpK?=
 =?us-ascii?Q?GfUSrw4CffK8tggaEx+oG8T0JPCU/j9XjJb799Srdwgy6R1hbKQ83aeh89yl?=
 =?us-ascii?Q?MIU/xMSgkstXEDc64IvZkwTSS67dLs2oSytFN5Ab8ZZxbqOaRnwLm5ZQ5cF0?=
 =?us-ascii?Q?4SELpqPGtAYZhErGSJw5J/sob5d+S2+j1RXlpmKyjHHLdhQ2jq1Ti0TpJuIM?=
 =?us-ascii?Q?gjRcsztyQe3B04PzN1Yjy+GV6/g1zn/FioSovXHUd0RDGCeeBrOVtB7k3HK9?=
 =?us-ascii?Q?iqQZpiTpbKf9fL06Pw+6E80j3yEn4Pjh3eCmm1okbSQRgiVPmQ1lly807uVX?=
 =?us-ascii?Q?wDayRcJVjnpbrgHAX5l+SQKnos8OADubKbVZHXykIOT8YTGdvK6XWey6nHQR?=
 =?us-ascii?Q?m0ZK2tBZp62/goX+CnTRrNbpX5NklwN54Jh33Uqvn23u9PsreN08/LeBJgFX?=
 =?us-ascii?Q?hbz8qLcdvelACBqlgICn9lSaVL1nzun53+pV+sOc/6mVyHWxnWyULOnJwZhx?=
 =?us-ascii?Q?0oL3VDP3QqP8xQ0XK2rx95maUTFy8Ip6Ve4YSDXGNa8kvhAUOJoV3nH6X3Z+?=
 =?us-ascii?Q?Ubi9ACzk28cOxrcPq2SDj1aik/wcC0xAv5JKr4zvDvUk7UuhEUfD/Y/eK9yv?=
 =?us-ascii?Q?ptnz1qtyoWYGvMSBmirkD8IBPKidgL5ZT+VW7UJaIGS9C6zvZ/mtRwNS1oAn?=
 =?us-ascii?Q?2vrLEc/wVsoKjKBTsf7wNxzOqU5X3y3z97SMmuZNkMSllR5/z5bvWEEWYPlz?=
 =?us-ascii?Q?2neQCzLQvjCI/YkoA7u2QXwAuBOoxUFBlVZDSW24mdPF3AghJtZgFMidR5qY?=
 =?us-ascii?Q?iY17Xxm24qhf8xWExBrJiozkRE6lfrTuAbbO/Yxe0urPmJIZrTN/CLcCeX3j?=
 =?us-ascii?Q?BPzW2lni9G6UGNeMsE/ytY41YOwfYId+6ofG/doX4MMVNO4c6sO5v3Tvftfk?=
 =?us-ascii?Q?oc7FSfSAiOWT2OwM47wdj/am0unph9ozWrqdDr1XI3qN1F7DvWkrJGYb+Ek1?=
 =?us-ascii?Q?cHWcGIkX94c+B7dlh9ASRCaFZvNA5SHN5vyLuDHyvjWpMWOJ84D6WLnMUdVJ?=
 =?us-ascii?Q?lvqoLehXQ3PDPyV9zjH0SfHQsw7d4TXiga9eMk0zRiLXmVqC0GT3+T5q68EX?=
 =?us-ascii?Q?IfCDobTWOj3k6hPhgZHaptidAatP1FcxUPOuVXH0VKs5e0E3ZYWHt3i9vpRM?=
 =?us-ascii?Q?rm2HMmiQNWs9nVA1GuOUtezOZWXUd4DS2nei6B8TP8VLCp35f2XXV8AEfQCY?=
 =?us-ascii?Q?IlI3pladqV5M7hUCDfiv5XMGCUeid6a38BRNMdm+lKY1Z6BQnBLGloIE0c4h?=
 =?us-ascii?Q?ypRznGtEuIkyBu0oI6tJDtfT3w+PafHARbafZkuR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3222031-718e-459f-a069-08dd1f63d638
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 12:59:41.2545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HtTOMcYR8i8MJ8QUExEKadQQ9E4QniNjBVfoR5ZtmiIQvrmulCSo9izO1E9X+ePOYvBUNga8MkWZHdX6gMaujw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734526798; x=1766062798;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QjvHrPvSCi6zmjyCT6/Zq2PJqffKYi3ds+xLddR7Au4=;
 b=V76voMW8nKTA8YSzycIGS/nRo46D7lbE1Pl4rYFATH4MD+ZWQKQu1y5t
 NQA5QDQzOi/TvseXHF0zgBj/Y0voxFCtwD95ukQktqN4h9ePiHVeffyP+
 J+sQWy+OSqbVBLjZIVBcTdKLJSrLt+hWlb1E6/4t3uy4/xlvRVGwZYb0S
 nZIfJ1Romt1ba0k6Ao/c1TEdYlzoOHyFMa1N81FDln7mwVlLe05mfn7JV
 imiAByQijAXE8ZOZwFfjPp/QFsLInQYr3bceZzJUpjkNLf4eCq7/1a2ww
 7FLnJ03F4rguykuoyapJ4XnOLx6iAjtxpN228Sl6CJVbZCMRcfY+bF4DP
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V76voMW8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 2/8] ixgbe: Add support
 for E610 device capabilities detection
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
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.c=
om>;
> Sokolowski, Jan <jan.sokolowski@intel.com>; Simon Horman
> <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 2/8] ixgbe: Add support fo=
r
> E610 device capabilities detection
>=20
> Add low level support for E610 device capabilities detection. The capabil=
ities
> are discovered via the Admin Command Interface. Discover the following
> capabilities:
> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
> - device caps: vsi, fdir, 1588
> - phy caps
>=20
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 529 ++++++++++++++++++
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   7 +
>  3 files changed, 548 insertions(+)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
