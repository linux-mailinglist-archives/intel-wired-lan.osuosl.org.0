Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IAlGA/czGmEXAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 10:49:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA8D377132
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 10:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47BD440FF6;
	Wed,  1 Apr 2026 08:49:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b6sIVVPdQmoy; Wed,  1 Apr 2026 08:49:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A023340FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775033350;
	bh=amiOCIM9pJvLzTiijLYmPMV0GDD5qK4T6a+pHlk05qI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x2PVghe+zrSYU4YoCO+otiQZnBtAwnqZes5LpzV0plbPzl0vHllJeSwCVp0zhMbU2
	 9soZnBM8qUXr9cTn8PNFUTY9C5SA0wvbYucFZ1jz30/26+IC6dEhY3zGizisbwSyvK
	 0g7GLM+cWpA+iRwqgK8tfiEbe/2vTNRJFq4hpMQ+nyr8oVOWvUlXwxipHzgSmW0CUu
	 kFnYKxTQU44w1PZ+R6RUgFdEnnOucd1NBNUndDxZ6SuFdPKakYzyHMbFhMZBfb1Dqp
	 duoUEpdqU8/tb9ym5Ya86PJ5+eUn3FVkKeRCDFmrf+P2wVPTDeovEFJEMmwO57W7OX
	 cPrlgXZBJL9ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A023340FF7;
	Wed,  1 Apr 2026 08:49:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 127D4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 08:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03DE540FF2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 08:49:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id guvhPAOgYRhl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 08:49:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4271740CDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4271740CDA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4271740CDA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 08:49:06 +0000 (UTC)
X-CSE-ConnectionGUID: kLivD/BqRviQrScyKWvZaA==
X-CSE-MsgGUID: ubXc5wCjQB2UO2xztud4YQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75957890"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75957890"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 01:49:05 -0700
X-CSE-ConnectionGUID: pJX1vNTpSJC2UVqQ1cmYGQ==
X-CSE-MsgGUID: 45pX4oyzTieSGuaYH+JMBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="221762860"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 01:49:05 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 01:49:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 01:49:04 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.25) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 01:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VGjJSZdcDy9jqTEohH1bI8ig2kqcreYt+CZtTxWSedrntbUeIx+mGpPwwdwSvjiNhxytcKn4V+m42DKmWI0ZYnoybobnWYYkAwvbKc8HY/A9RzdIayRTtYOhsosWJ/Xff/1sfIR9fzmJBjm+2bMTHyw2DYS7EF+D6YE/n5OgBAOuasDRXY64OGMI8vtoK/OCeY4ODxZUeF9oFte15suSksmowAfgPjXu+JUX+eJ6L9pSNmWEh0BQB32atNBlA1xTU9DC40G11WgY4+QjXvjuHwS74168wjFbdRkVB6CrgxW81nNNdvF4z5yFHtnGRn1kf5h5ubj/NoRIEMnp+rDFRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=amiOCIM9pJvLzTiijLYmPMV0GDD5qK4T6a+pHlk05qI=;
 b=I31QDE4cH79xfneqkZhWLJkxRbv4RdzcTAtuKhbHJVieHxRBUf9tmBEXpeZMaBuRnxZSaIEXyXIfSHAp1GN+tYoKB8YsAAanS2lHR4ijxHopb+kleG4+ODvKYA8mS98hiMp8O4qAJVysuqKtVsHZMdZjkEr9vIcRaO/vFFNv/uZxo+Uj6vfD9sYN23qTC/wwyRMGnhQInj7xhVlgUJ5Vth+Dy+AcS+lWK40eK1wl6yWgZ/hdM6KHmlWa0MB+bnqPxh02XGpS2T45X5Ykwut1fPpEDP9Ffx0y3eTAza+vm60+rGxKSlOJ/QMZrQDgZ38R9lyEXoqhsk0KBo9VZ502ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4683.namprd11.prod.outlook.com (2603:10b6:303:5c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Wed, 1 Apr
 2026 08:48:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 1 Apr 2026
 08:48:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Matteo Croce <technoboy85@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 Mohsin Bashir <mohsin.bashr@gmail.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 1/2] e1000e: add basic XDP
 support
Thread-Index: AQHcuvL2ls/Zpu65nU2IEljeWVhcO7XJ8hGQ
Date: Wed, 1 Apr 2026 08:48:55 +0000
Message-ID: <IA3PR11MB898682FCECE3DC4FD301A922E550A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323182823.5813-1-teknoraver@meta.com>
 <20260323182823.5813-2-teknoraver@meta.com>
In-Reply-To: <20260323182823.5813-2-teknoraver@meta.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4683:EE_
x-ms-office365-filtering-correlation-id: 3a55f9fe-85da-463d-28f5-08de8fcb8225
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700021|921020|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: R7b0sLEKpXoKj+EkIV6zo9pfNnESHGlYCf+jH4K7PAsN/7KTgIwBhnSUrNLuKJpJCIC+NxqRWqQkyeoEdUPapJMSA3FxEsbxPolaHe3UnvgpzRPK9STyziZ7fL8DWYYLRFXnU6McvpXq+qX/lzY0VhXE8u5vNrWeTDKr5ktf0oINwYb+aPfkqksJ9z/LWDvBIp8XwuXJ6WgMCEleYll2U8rYFUojUVYAs1W2TCB6tWF1RNKiir5lHlYTfsHZHd6e2zRtNRxBmSUe2v+TR9P+Y3tvD8+6r0ZMwIy+JZGD2cMQTSsYdRSESN7RlaQesEkC26ymrOADAKIuFGf/fabb9l/OFFPiaQNZD37JchAD27xSI3WaHluV8d3rrn8xahg/4dHVgy5YxtceeJWCwxfwjvsDjnxQPqKRXYi2pGiWukFgwGqj6eTvRSy59kGM5ypVbSfJqSecEGZWVzcG8csAzYu+sdnjEbjNrkFF6O82Kn391COWkprnlQn5uJL3rWMv6y8nRcBeKZLteo896DUPHCeV29lVY+/eLlmiaIE6+QwFcRjwr3J8cYSLl47q3GZMEpOxkqxLdj2RJydkNcoeXhZnbq3jc9ObkvxLuy0ItQm69cRrlTf5p49ljN0llloVbZqizWcLAeL2ncCS9nHlJWJW0jdyyXOVLkKS7ShC/ZmNCb1QzuYYEUUZO3gGXqN3DyXowr2vaoSkMAzpKKWVpRCbztyOaQWM9WuY9mOFwtwy8izW8oOYMVBwfCVX66WbtKp1VJuGcOxDH2mLGnrH4gsauCmU4Uy2RCG8pz4TbJcGsz+93IeuEDGqCcf4y8g2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700021)(921020)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nA9StDbxyAAotTfN3TWak4x7dErod0JpYZNI+C2M6EuBEw2GfnSyveI4QdPi?=
 =?us-ascii?Q?kkAy6oP1+76D5Szfu6kE4McbmizTQJppHnCk0OMxLO76tsDXRnhBdH0spVbi?=
 =?us-ascii?Q?ZQbf4WvSggew2naO7hr4yVG8sPCAZrHC2jzus+Urw3VgVa3DZvj1V+lJdQOd?=
 =?us-ascii?Q?/4AFxQLQ45bjxlf6bErU3TqB5/XloRq7YIhmO8UMRJA88YWPP/0AeiGP1PeV?=
 =?us-ascii?Q?212JpZaALGc5d4p6rhoBu1C+ZCDGzeDUQA2Y55EX81SkkUc+VpSs0irGBqd2?=
 =?us-ascii?Q?AVxgP3u+yaRxNWXWyACnjs9sqWQN3mNWWgxy/t+ZJpTYiE2Z2o/of197swb7?=
 =?us-ascii?Q?pi6x9HZ0NGLjtZ3iNdCWWtaxcAvG2WhtmYmZ6i1BeP3utnRowyByY9HqqFzt?=
 =?us-ascii?Q?DThDFaxCANctIj2ciZJws4BdPUA8y7bdeHnRt7H46DOR4pD9Fuh2SHBg/b94?=
 =?us-ascii?Q?oZZpF4QWmUSyVEZS5o4bYxj6tf/78bPjnDwkdGj5BqWEECFGrJhKAWUIhscR?=
 =?us-ascii?Q?5YMTTRAxu+CSgRj+mRDG6UTrg75tRyUPFe4BwQvlsdaBVlgTuFOqdltfj0os?=
 =?us-ascii?Q?Nl7krUt3YT8AHnmzPYQlUfX43qm1S9KIR1duzhCYwh/fdP0b+f1GM5DI7hxk?=
 =?us-ascii?Q?EY7EgMR2UcI0Hnz8oSlIwNBAb7D0f3/DIu2j/x7115TKmaPdg+BrOfbI4Fal?=
 =?us-ascii?Q?Lrc1YAHYEtmYCE5bGWxtvwg1RcT6xmk4uFC4XHVbQaFE/2tHeq1ZFwhntxNY?=
 =?us-ascii?Q?6eFlIjTbBKdx6F/Ve7EsLI/zcapuHDezMFGxlPFHR3vjgCKTFtDJ5Lcopk+a?=
 =?us-ascii?Q?nMEyYTfZIMS2w/2vVkLFS5IuvFjtbFg/sRXiM0zUJwmgDoOO5bW/Nt79XPTx?=
 =?us-ascii?Q?fOX1rhF4LELyxPcDs2ckpncRSm049xE+c9FFGjLrEj4ksif87U9+IUYGaYIa?=
 =?us-ascii?Q?OEocUZRLmjnuGJphUS+7q8rBwYHjhY/k+vpZaneXPxth6vrTPPIdYrIr/TL6?=
 =?us-ascii?Q?U8VWYnepdl4rZe9XGlLJLBdGQk/yftzRysc4yaRGVCBYNd+yJGSPOC+O24jt?=
 =?us-ascii?Q?JD+wWuH91VlVEocUXXC3tr9QaSLxy//HIwNd7DlSUdWE+4glbNLTg9sCye/+?=
 =?us-ascii?Q?tBO4XoWWxW3EBFs/dW2sAy7LbAqdL12h+C6p2vmrKkl1Hf94BfOu/SpEPjeZ?=
 =?us-ascii?Q?5BZheI8WH9XxVNnHBMOgaUFEaIZ2tmrI/fs9xKkqs7luTs7hUVoj+SY4CIL8?=
 =?us-ascii?Q?Zv5TcXQV47UjqRsR3J6bMNvZpiJ55qAXK1QJsjKXANH6GindO0XPzBXkiiJ5?=
 =?us-ascii?Q?tzrPaS39PQ2LRcmDUo5rV+X/gfA7Qe81NCZIeRWM9GHMVKZuQR7xg4GrPV7K?=
 =?us-ascii?Q?9s1cBPieJBVLm+NLL1CzUHbO6cek3UJmI50QN1vkj39npGBI9A/6rXnMPE1J?=
 =?us-ascii?Q?25qgaNbNDTwBBne97Gj4APcLDdlbhO0vQxHWcmS1HRvbFMQ6LLcZG0xNKLBy?=
 =?us-ascii?Q?eKrf7kkzXN8r38c34VKAkTPs5n4exFZoCvy9zLDvtiYMJ0eF+LVBBMIpSoWa?=
 =?us-ascii?Q?ylYGsoLwRSPtK3gTzvuO3yuueToSugejaXW2ZJzpv/cm4mpmMZvV65LwS9qX?=
 =?us-ascii?Q?mnnywbi1kkbqhxuz//HelBmhF9Agr2UckIERYv79k/t9tVQJlIXEUBYSTk/Y?=
 =?us-ascii?Q?OGTOPPXj2tGsZduD1Ij8fwLEhJniE4/SBQg2KQbkaZLINMj8Rl9z7s933iiZ?=
 =?us-ascii?Q?yYeRpIFZnO2vzmVAuUix05XThm0o1+c=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: uv8mN8Gf0BKlYU1Pc56hXaVeB0IP7qFjxsMxpQ2GPIlVOUOl4U1IcMs++eHk5C3cImYS7ZaBURMzrfb/TrPhIVFxGp3QrhQA4LQ9/eaEij1lhNTWc8AL84liWumaslEpOisFE4Crw5EV/ZgtR54tcOS0UVfrtMDbXvw7CXo7iJ2rKFIfYCRX8u/x++ZEPufNgGq2IHMQxi3azvtpWFIfuAX1ooDc6V5+Z4XuNlgF0bqSeOXqYFbRIBBfnZqqmppnWbgTMNQ0p2gOnkwjxVHCMYcu8hIHE7QG8qePw9TiTkPw1lsTV93o6AP3NRpnNpv/f5SE0kEw4oQGGG1zpQW6FQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a55f9fe-85da-463d-28f5-08de8fcb8225
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 08:48:55.7164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nvUIoUBzTAFJdWEqGNheLc4KAzIZruNeFRd2JS33NtFoJzD1f12Kylimntg+V0VTLAr4Ttvz4yWSjgKCJ+IQE2pYBUehgissn/GM4OLRSck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4683
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775033347; x=1806569347;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IHMNKRfDcXZtkf/9nyT+Jr33UmONLlGHYvNMda2S8Bo=;
 b=mxHwVQPh6SE4I/dgReK5uI+8ohPrugOReV94rqWnT4IW1QVVqefJVPKx
 QFVnuZoWypiYXe9FPBQZeM8FK85yjJ8dfyxASZwNzD3CXuIav1Cqopk/4
 3/Vtno4wlnyYrbyx+moNRpV2lpYHhRH7cfjBK9T4/331vTdUzmYVI8GHp
 3FsTgT9luLes5CG4qTZbee2vc8/6a27gZ1EVjhE0SooMfpmLi9Q7TyDKy
 Gun7C28w3cm31nnt8eW7xEPaoxvR6rbY5hVCceD/tBxHOipiunwCdf/DY
 839sCaEAdt1xsUuASzb4ghV+Eg4iI2rDxrH0lFt4r4MIBjg+YBhZzAHks
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mxHwVQPh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] e1000e: add basic XDP
 support
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:technoboy85@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mohsin.bashr@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3BA8D377132
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Matteo Croce
> Sent: Monday, March 23, 2026 7:28 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>; Mohsin
> Bashir <mohsin.bashr@gmail.com>
> Cc: netdev@vger.kernel.org; bpf@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v4 1/2] e1000e: add basic
> XDP support
>=20
> Add XDP support to the e1000e driver covering the actions defined by
> NETDEV_XDP_ACT_BASIC: XDP_DROP, XDP_PASS, XDP_TX and XDP_ABORTED.
>=20
> Infrastructure:

...

> +/**
> + * e1000_xdp_setup - add/remove an XDP program
> + * @netdev: network interface device structure
> + * @bpf: XDP program setup structure
> + **/
> +static int e1000_xdp_setup(struct net_device *netdev, struct
> netdev_bpf
> +*bpf) {
> +	struct e1000_adapter *adapter =3D netdev_priv(netdev);
> +	struct bpf_prog *prog =3D bpf->prog, *old_prog;
> +	bool running =3D netif_running(netdev);
> +	bool need_reset;
> +
> +	/* XDP is incompatible with jumbo frames */
> +	if (prog && netdev->mtu > ETH_DATA_LEN) {
> +		NL_SET_ERR_MSG_MOD(bpf->extack,
> +				   "XDP is not supported with jumbo
> frames");
> +		return -EINVAL;
> +	}
> +
> +	/* Validate frame fits in a single page with XDP headroom */
> +	if (prog && netdev->mtu + VLAN_ETH_HLEN + ETH_FCS_LEN +
> +	    XDP_PACKET_HEADROOM > PAGE_SIZE) {
> +		NL_SET_ERR_MSG_MOD(bpf->extack,
> +				   "Frame size too large for XDP");
> +		return -EINVAL;
> +	}
> +
> +	old_prog =3D xchg(&adapter->xdp_prog, prog);
> +	need_reset =3D (!!prog !=3D !!old_prog);
> +
> +	/* Transition between XDP and non-XDP requires ring
> reconfiguration */
> +	if (need_reset && running)
> +		e1000e_close(netdev);
> +
> +	if (old_prog)
> +		bpf_prog_put(old_prog);
> +
> +	if (!need_reset)
> +		return 0;
> +
> +	if (running) {
> +		int err =3D e1000e_open(netdev);
> +
> +		if (err) {
> +			/* Remove the XDP program since interface is down
> */
> +			xchg(&adapter->xdp_prog, NULL);
> +			if (prog)
> +				bpf_prog_put(prog);
I'm afraid the reference is owned by the BPF infrastructure, and you will d=
rop refcount to 0.

> +			return err;
> +		}
> +	}
> +
> +	return 0;
> +}

...

>  	kfree(adapter->tx_ring);
>  	kfree(adapter->rx_ring);
>=20
> --
> 2.53.0

