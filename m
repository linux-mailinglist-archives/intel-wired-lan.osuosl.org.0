Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLCWMIQbFmq2hgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 00:15:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A01285DD22D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 00:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2913D608EC;
	Tue, 26 May 2026 22:15:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UqKThUajjic0; Tue, 26 May 2026 22:15:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C11860840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779833727;
	bh=hJO9StpfCK+JC2IrcNU0u5Imtq/PiBxxZJb5E+LfQJc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xFpwz6vIedteR4PHB/YQhxcY5ok8q3piMaWiFVR1mUKjBuQ9CWWTYmhRt4SprynSy
	 EqGTMQyDk7s5KUIig75fdSh3PzeKAeYj7XXIi+tnIKKVRWwRFTuI2+1ViRBqPqDTV0
	 TEWzGPAHkeZ3fQAn8mcRo1LKqSWxtfwxtfEDpbf1nNN8p2tlpNwq/nK5NAhP/V/ZHx
	 AHkzhu5tBYtNnr8za9eZaXKq6QttYWi3eQs8xQXjMHWgP8s5tnAr84K1vdIL/bh8ZL
	 k67gqLAwoVjlAOaKWPs6ICJd+A23qFukaBtgtsjdjVICohcgyoqlKp3hav8A2fOfO4
	 cJyIi6yf8vaXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C11860840;
	Tue, 26 May 2026 22:15:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 36518297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AD30419E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:15:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p-UPe2XTXKJ4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 22:15:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3B3C8419E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B3C8419E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B3C8419E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:15:25 +0000 (UTC)
X-CSE-ConnectionGUID: QBJDdYh4QdeuaY3TCcQStQ==
X-CSE-MsgGUID: 7UzaFvf5SbWZv5v3mvFvPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="91233292"
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="91233292"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 15:15:24 -0700
X-CSE-ConnectionGUID: 6XxJ1upDT5KXazmdsXumig==
X-CSE-MsgGUID: BPMDip9OQpaG+NpJ7jUQDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="280172353"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 15:15:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 15:15:24 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 15:15:24 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 15:15:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B6xnLivVJBua9vFsO8U6I3cQ0I/ae5UQl3evBpoUwo0KgxRPXFsxwQ1KRd9IVxqIYF04n1gLJNGjtu5xqRXRAU/X949K5A0CGbU/VO0ThBBd30R1oFRSrjkkRu6SqBrSOHEYH/4Iw810PEm1hH70uPvCfHVHen7Xe2wbza88/AA9f8kUt074C2JbMs0bbwR7vYF5S51EIN1XArz4KxxEHtTb4X4TwIawIWKCrjql2hUKTsE7o7o6UNUXhPsltRoKzbiixjTcgpUceytJy27ZhDtdQ8W2ooA286waD0cFLkfobZ5lJDSGrKZ1NcEqVjQ/gOaUXg2Fx0fZ4cW6/5FlHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hJO9StpfCK+JC2IrcNU0u5Imtq/PiBxxZJb5E+LfQJc=;
 b=KyWsZa7kUgceExLGzjG89VCa5B0ujHH8vujRYhWUXHmnEvYDw9alTnbVgkhF7M3zZfOrpdvAMo7LlFWM16ZnuC1TYQ9g4VT6DrtieWiAY4c8HV3GVZxDUrGTngQpt8QiOWlGdEet4VVhFeuiLuqPTTGr6GfxyDPWd4hd5a3j3Ow9Y1C5Z5oGxfhj9/AFduyXNCIVEWmqTdI51u9mzi1w9HiEhtmyCx5IYF+f9pRjO4/5zmFEIv7Q7HsiEkVZrj7zgtdJX0oC/lZtAg2C1NjvE+fGjPbdtdBSI9+wtNNfB8BUlRmhEC5qagWzkqIntT4smc/fGWbB/tOgw+qWRn5Ypg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by PH7PR11MB6859.namprd11.prod.outlook.com (2603:10b6:510:1ef::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Tue, 26 May
 2026 22:15:19 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.010; Tue, 26 May 2026
 22:15:19 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Mohamed Khalfella <mkhalfella@purestorage.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] i40e: Fix i40e_debug() to use
 struct i40e_hw argument
Thread-Index: AQHc3amgTGAz/YYQ0EuSfslyp8nQsrYg/qjA
Date: Tue, 26 May 2026 22:15:19 +0000
Message-ID: <LV1PR11MB8790F15FC23D3330E661F0C5900B2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260506224123.691160-1-mkhalfella@purestorage.com>
In-Reply-To: <20260506224123.691160-1-mkhalfella@purestorage.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|PH7PR11MB6859:EE_
x-ms-office365-filtering-correlation-id: 771b0d42-9258-416c-19b3-08debb7445ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|38070700021|56012099006|11063799006;
x-microsoft-antispam-message-info: TgTQXdKy6tFFPnzn4HdShL0msnr2kVTFaJA6Y/MWUyEPI+8F7dqAYJ20z+KTJMW19MBe+Pe9XAnDERvAC+5z/m6hDydgvIK/MwSGGJTmOjfZPSvmTvSxDAvQTpMn2by0TauJ+f4hx0ZKC2e3OzzD8OPn6LtlCCKUObJBxMX7l/fJAKc612kV5/H9KXtxB6afaTRBNZXAffDMFwRUgd2EeWm0k87FkHP8qAeEMBYF68oXk3gJFlPxPwtI3rJXEzOZa2Lf7SsCV/Sh8I66dFGrQ+vHm5ODyZuWBoCywd5hcvuzosFsOMZtq/p2op+cKldxRunkfxFZA+kT+8C2n+x/+7eoSFToNI6KXy5EKnpQM7XMXeM3kWuW4mY4qft8LnTHl2255mp4HUY8lM5ZPLWCPYCHMRcIRzFawZW/V9HkUQkdNVX0uvWnyohFOm7SX+9BeYDEpNdGX/918XcGKUJo5kGd/kXEKUmSskD2vVAMpfsjKzVWJ69w6H6p0zliUjiOtiKijbxQwIpN0sHnK7FY2tVoxHzmY/HEGSljwY7zUgGYgCmtqItpSx2LJiiIQ1bFQVsmZNGHYj0GYfWT/cqAvSl4ik5TO9KG2PACjGsjPwrk72a1jK85eexh5raJhEQYuQ9uqhrzALFA+rkqDEx3gOPKR82Ohk4Mn66TWmqNYBwC8FTWoGx06KedX6NPXN0rL45pcdO7ZL4oDhvzY51m2cvChcjAgfOIzAC/b/beRtS7EUO8xDHPU0DAl1aHs28Z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(38070700021)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CNiL6qNy3QhPI3hllpC+VV0Zp6sQ10xGqhlXBxzTtzYj/GvuslypR9jfR9HP?=
 =?us-ascii?Q?i23cwOsqtsUxPZZ93KuUisiQGOoMT4MYcSSTpPDF/y5Y8dpN6idqE9iXFuYS?=
 =?us-ascii?Q?8puhH+aAd6vGemPfbyTzcENJDWebp3oPJQ00BqgsD7/eBriP4MLnjgAnqzyZ?=
 =?us-ascii?Q?VJxChL3SiRcdSi+6pB+WteioLHR4dxLQqP5DPQUaK3BW0cOToD7aBU645vXA?=
 =?us-ascii?Q?gRXhZgR0xoBfVJctCcPUl1FyDUNVtfzcpdB3e9QnX6y0q5bL2LvFuMJy1z5e?=
 =?us-ascii?Q?ZFofYmkvvjPS5h0ZPt8WoxaGoAQFBOv+JCCsT4JgszUHrOU2ClTRyD/KGimm?=
 =?us-ascii?Q?3HlBoYREFYN0vmT3egsBFkAwP5ObRUJWJhiAVPyhfTO19ftjrB6SMDDTB/bh?=
 =?us-ascii?Q?EWUWZZRUcbWxRXvy0LRLQO+jI/dV2fisjpQlIQbBJkecmQvlF/6blbDEz+si?=
 =?us-ascii?Q?jwXFN9zLY9hJklC9XozofcyPni5qEmIKpJynCmh9gRnB5+mKwoZNfCkD3Wdd?=
 =?us-ascii?Q?aw0Hn3SAolbQPYii7XycA8SqXuoBeURntNT09v8Eo2Vb8JC7YI9B+Lz+NSZ6?=
 =?us-ascii?Q?9OALHZkmR0S9SOh6BQ43lRHSYjygk9QeRsaD931+FKBbQ24f7KYDMvE/qPot?=
 =?us-ascii?Q?Ns/93W6lAMXEfc0PmBZ/BKL1ntjNngZ6A9aVildJuOmndLDA5Td3bKMjC4RG?=
 =?us-ascii?Q?cwUzzoefLQGjc+c4xABaJs6rr1QaVPkcywk5VzR51GK+m5EL7i/9eBGpBEZb?=
 =?us-ascii?Q?VcgLaejBEpoKLCn3cd3zGqZHZNCWrfqRy97NRuA83Cy+ZajDeKQto/WlKbdY?=
 =?us-ascii?Q?wSKMUw5qb81U1mBSiWautB4uFEZ0uM2CItdfMpFWItd1a4o+lBYQlAcWwH7X?=
 =?us-ascii?Q?QjDcUV4eoCrjdJrGk2H1ZrLe5lxTEcO6ndslCEJkX8xBES+niXiepvSsCalw?=
 =?us-ascii?Q?xOPxP6AbM9ttYRD3CYCOZk3dVnpGwk2OHo8EIUnuCUnn2CWn4t67Y2ukvTAH?=
 =?us-ascii?Q?8DsqynbvaSmNhrZRO1oXzFc31I8+4trCk7Ko6dCu6Ak79Ac5CmSA7iNkCNhC?=
 =?us-ascii?Q?IOP9lOmhn7Ivhxe92hAk++TMi6ojq9/JmWNwm0/gdZOHw2r+DarZho2ZmNHS?=
 =?us-ascii?Q?b8XY4LaqZstZl1SCMFTzD0F1tJpInnVaoBXMEb67ZxSZaAQwn3l5Bc+ANJdj?=
 =?us-ascii?Q?ZK40AIVsa5X3TAh+HHt4SLbRLxiByKRnKLO+1ZlUqvpH6aYWNIpgGV6cgW8N?=
 =?us-ascii?Q?Cr01tNsUJ0c4vf7Ipi4s7D1ti4A4c7QumT5DbcppJ79lkT+y7hXueh2Uupgg?=
 =?us-ascii?Q?aNfvpZIe3d9RX3U3D0oDvaezFaizhtYvPBB8SZxrxLacxSlc3kAZoWXfq9gb?=
 =?us-ascii?Q?y4XBUPwrWKif2da4cJK4lAFu8wFAN/rrqaKSMXxE4JuoJFJje8I+92HOMjNV?=
 =?us-ascii?Q?XKUzee/mU79o3vGU+RFugTKNz17MrTiWELvV9axu86nkccJ0sfBypmIAjTDB?=
 =?us-ascii?Q?1DdO8Ss0pbeVYN7wkVvBksMvVBmm/Gl6nHRRVG7d0Tx0eSFIBbuticqu7z3P?=
 =?us-ascii?Q?IqqP+OU9dsN/1uAR4lvvUUcssj2xy0YJtIfBvSL2quDPK+fKwGQLhy/jw2MN?=
 =?us-ascii?Q?qUVzoOO5cUUXJYh4EvrzJSCTW4ROytEmOinxrzcZS6DS5T0OBExmBuUdh1YX?=
 =?us-ascii?Q?TI2Wb1ddd+Anyo0p1+5/7mHM6MwK0NWAp6s/UB76pCz+RrucsIyAZMHrH46K?=
 =?us-ascii?Q?XojHgY5qCA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: U4EFrXbFyoyo/yQyEYnizsS2ZSvz5YcHsdEanMV5kJ/48TDpdNE9l3L96CrJYjrh881PrDrJa/Jkk3e8JFp+zYJTRjfAIuFVMT64KckmwNoqKOQ12wWOF6LUvj358YLYlraYvBSWlUez9UoICixuKdnCj3vTjSPmbUeRQCWUdI419A9QVyR1XQ932CQxPyPDM2nmZQP7PdrTyaQxPMEaa1fq80RhY9WK7NzhBCq1groK9C6VIOP8RoLkLT/5sG7j0ny7fUvbsyX5iyZ4j0czN8hdGdRUccCWyjtUD1Tte6tMadz9V+cTp/DJUox/vZA2ybEKD6nRe3MKjnDd44Oj1A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 771b0d42-9258-416c-19b3-08debb7445ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2026 22:15:19.2998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8PzFgH5ExOaVGo7uQ0CIpYdnJicvhljK72wDG0A8dih3iOJPn8Qnb67mM6XgzdxkrWVVF7X/NqH9Vb43WfGiQ9u+6HJkPjqCjZehTsqkyGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6859
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779833725; x=1811369725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QXr4Cg6PafcemlxgI8jN4ZvsIhs7xdJVbdkraRn92rM=;
 b=WnjDqqUrBjAZtPue6bIFjrMlDS+p7DDejgeKRUISqY+YR7pLvYbcy9mx
 9dIYp9UUvBW2Kk45QzlSh4UTruAVEoufYELCgZPLTrO+6qtjPSyRGYSzM
 LnO0uO4vr14NKp1N7+dx6a3tENBZb65d+71x+Zr4sTAGiGdUNwj0CTUzn
 H2JDgjbX9cu3oqp4pkTZfaFAscCEZBZX+4HItFu75oT654F5ahvhTFl15
 3xGBFpL/rjn85+aoisq82+CLm5s3/Bs8uKYV9PEhkuRCz6Eb7fkn9EUSL
 l//keZIFd7edNypbFmiPUxdPexEvmNtfc67jHeR0pRqcgeKqYqel75I39
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WnjDqqUr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: Fix i40e_debug() to use
 struct i40e_hw argument
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mkhalfella@purestorage.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Queue-Id: A01285DD22D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ohamed Khalfella
> Sent: Wednesday, May 6, 2026 3:41 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw=20
> <przemyslaw.kitszel@intel.com>; David S . Miller <davem@davemloft.net>; E=
ric Dumazet=20
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pab=
eni@redhat.com>
> Cc: Mohamed Khalfella <mkhalfella@purestorage.com>; Loktionov, Aleksandr=
=20
> <aleksandr.loktionov@intel.com>; Paul Menzel <pmenzel@molgen.mpg.de>; Kel=
ler, Jacob E=20
> <jacob.e.keller@intel.com>; intel-wired-lan@lists.osuosl.org; netdev@vger=
.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v2] i40e: Fix i40e_debug() to use struc=
t i40e_hw argument
>=20
> i40e_debug() macro takes struct i40e_hw *h as first argument. But the mac=
ro body uses hw instead of=20
> h. This has been working so far because hw happens to be the name of the =
variable in the context=20
> where the macro is expanded. Fix the macro to use the passed argument.
>=20
> Fixes: 5dfd37c37a44 ("i40e: Split i40e_osdep.h")
> Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_debug.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
