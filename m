Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 752F699A045
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 11:39:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F06CD81B25;
	Fri, 11 Oct 2024 09:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id En6V1byY2HHS; Fri, 11 Oct 2024 09:39:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2880281B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728639581;
	bh=s4tFSgxzuIBU+MF5I6S8eZYshZp42mWyLVS79oOyLu4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J09tT4qVnj1Br6392HGFE6AOwp3e16iX590roQebB42PT6OQM+P4eDnfoIh+/OQxn
	 kSXA4Fy49n8OIygoD/6/7mDVjECniGquwh1yX3Iafx7wzGjpGAEsYYhMJvtP+wk9s2
	 Y24P99FRI5zG0BDdxnifbGxImnTPdVLbroqTBTi8mM/+TyxhrcNYhRIOi5mchDPt/J
	 dLT29i9Ae2VMJUdPDwzMRo4WIhn69N2d4T2IYpXVX1354Bv3qIO+Cz/hb9+JG4DBMD
	 zbZG2daxi0jr5wwGGKy/H+SjSpRgwxd0Z60gyNHBBeUOq9FFRj7isHX+9gOoBGxfbh
	 tSbaM4C+nw9hQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2880281B26;
	Fri, 11 Oct 2024 09:39:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F0CC21BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA453415A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:39:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8X1zzzVr1Yza for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 09:39:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 932C7400C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 932C7400C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 932C7400C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:39:37 +0000 (UTC)
X-CSE-ConnectionGUID: tdlNvKH1STy1xJ/99e3jPQ==
X-CSE-MsgGUID: yfOx69/uST60E0bbYYzo5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39428146"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="39428146"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 02:39:36 -0700
X-CSE-ConnectionGUID: W5zx6QdAQZuUEDBBJQqeFg==
X-CSE-MsgGUID: TD3zE3SVR4aVOAndo0bBLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="76774202"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 02:39:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 02:39:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 02:39:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 02:39:33 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 02:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jSdWlWdeBHgK+jeDyjy9b0Yc8NNtKOHsVyEeGlQnSSqimhCTQ69Ad2tpfAmkZlKf+ByFMxUJ7sSwlKY17ShiyJ71udK6imXWkxK9MQaaEFObOzicpmbrm5olkqDr6YaGDvp5HD6FWXHHccIkXU2XhbBztKTuif2N2SDPuUcruM43AErT4/JR/AXzPR6xkN54zrKFQczCZ7ACMa6g3S1hN/tdqxxUOogLEus/XOlobwxoXDrtMsuhWuFhaxMZYyaoLZBWqeCS6BJ1x793oKayxRyZm9Xis8pvEMmvPqmKE0lGvpDCZ5TJXoC15doMBd702uzfzzguN0I6s9PAHtZniA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4tFSgxzuIBU+MF5I6S8eZYshZp42mWyLVS79oOyLu4=;
 b=jxhNnce8y1DXielGQFUx6MepS8FbaGDkvQs4WFEVy854WX3EE3gpaIbYnrFUiDHyBeiJjvNplnzxxHCQpfgBQA4iaDrA2vHWITPnPJ+xI/RQWxH7fygQXqCbjLS8cHD+dl1QCMYAaOBSonbZkTDkOXzKgli+lCdi9SJ/ExsD5HDpdWUJEzMV+1yzZCEnWvS7N5JWJaQFro1lZsCScQNVeFgvVNNYuneSouA/6mNcImILv+okLXbLkU2CNP8ydjtBdaMD+hyrxBBfvnuGb3gOdQZKma1cFMYhV/hZfhsaxo984bUoLWV4Wc0gmyX13cBS4i0AyVTvleDioiM43sgoeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CY8PR11MB7394.namprd11.prod.outlook.com (2603:10b6:930:85::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Fri, 11 Oct
 2024 09:39:30 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Fri, 11 Oct 2024
 09:39:30 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: support optional
 flags in signature segment header
Thread-Index: AQHbFSlacZ9h839R6kqk0e0QTMkxwrKBWEFw
Date: Fri, 11 Oct 2024 09:39:30 +0000
Message-ID: <CYYPR11MB8429A89EF6EB2C84BE2466EEBD792@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241003001433.11211-4-przemyslaw.kitszel@intel.com>
 <20241003001433.11211-6-przemyslaw.kitszel@intel.com>
In-Reply-To: <20241003001433.11211-6-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CY8PR11MB7394:EE_
x-ms-office365-filtering-correlation-id: 2ed890c2-407d-46ab-9b34-08dce9d89b13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rVrkIOvawKqBWnITQxp15y/i3DeCrb6nrBwc+omP1AcwfzvuGdA6IYuwUo8e?=
 =?us-ascii?Q?+bKEXgw06BFbEhaQX/30XdXaxP5FZkx8FC9DdQ6W6dsODTF/j3tUm6h+Aop8?=
 =?us-ascii?Q?2SwiL2McHsqV8x+34PdGAqVUMy69pANK4WZkFOjOEpa7kDvZREMSoAdt6BKC?=
 =?us-ascii?Q?nd6y5Ky2l9HlmoXShLG6wB3KGZdtqlkyqP5opAw8AY5XbIh8H5MgMfpG6AEr?=
 =?us-ascii?Q?Ph8tQvFKoqtUVgnGQrMZpGKFVU6TxZASpGzJL7eVHxlWKi5aTYxJVM7Ty1pg?=
 =?us-ascii?Q?XEyfivQWb+p24ZrKabgXp3iSE/h3qWyT0W3CjLXWFUoxGhAQBnQJEyO6GRO8?=
 =?us-ascii?Q?I/+tjmpOqzg2Qi/OuRESsmksNMAgjBof86DO2DDqROiKYOqPsDblsMGCk0n+?=
 =?us-ascii?Q?fss4a8gLBNCGH23tgcdRhTzHO64i68SWYkrhHD2EghAzE/oH3Vgfyqk2ngp0?=
 =?us-ascii?Q?Dh7jSodnCEgbODNoXYAQlQaqrSJntzx6U4aA1YI5NtrGh+NeXZwJg8EMIVGx?=
 =?us-ascii?Q?ZaUc6HqS9ZRcQGltMksQ+Qgw4unG4RZbURfoSXYJmOi/Pnp8tWqp8Zcl/U1Y?=
 =?us-ascii?Q?7rRFMpmEhR2JMxBzDY6cmipntxX75vpwRKlREDMCSWml13RABND9v6B3w7lr?=
 =?us-ascii?Q?3yU/tNUx2yMkRtNN5BqKpTEM6LOxa2Ous7Q2D7Ppy32mq6sv+7mONjwiq9TN?=
 =?us-ascii?Q?dZlhG+LSrRiQzm03kJKeel0Xxd4wViv9VfNihsglzhICmT1BDnP3FSxHMQ8X?=
 =?us-ascii?Q?+hN3jB1YEpMmY4gjbhRKIkAcKfdSv8kkxTWEF4me2wS/IfxzbC2u87sjICq4?=
 =?us-ascii?Q?YjjMgdBhlbHp9MaraXfdE8uWJbjoTWTE8oSFOYi2np6NtjW2ZTzdx4rWqC6U?=
 =?us-ascii?Q?T9hwIYqBZmnHvr8iVh42Lt5JkWpmn/ygJNR9NuRCSASWy2z2wFB/0dva7g5U?=
 =?us-ascii?Q?qLfZfwYuyFHGloF/jSTMhVt7PYjw4p5c77OY6oUpSyZ7pN62dmvhAHXxEl6S?=
 =?us-ascii?Q?dO7A0jKXgMDZlx69aF8LddiFNw+cvQm4+CYxio7jEzozVcgtJmIV6qdWBD4x?=
 =?us-ascii?Q?VqKcV1z2EcEvr0b6pZLNkeRNSZ9EmlmdeJ4KtHwuh7kBRllVCqr96ncVCm6Z?=
 =?us-ascii?Q?5FKPDVlz8WMxdIWFdiXKTJNR7uePZD8LlHgkwjkpPsXNpDkUkXUYbkEfDC/1?=
 =?us-ascii?Q?LlMaIHjsBnx7QZEwZ2CrZQhpXq5lTQV2mp4UGjmc+x1p3DUeLmgx/bp6l5Gh?=
 =?us-ascii?Q?X+l0DZYIxM9GARRJu8hpbC8g3kRZxxPtDUocD5zRm57+UGjp+lkWv/rbiE1c?=
 =?us-ascii?Q?D1oENVKp96+xJCLx+1C73DdWrItFvYkpBLljN3X4HyRbxw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ed4vvz902vu2gQSmA6dRp5bXVW0+isvLMpLIe1Tzm0w4/HO9ADUsVmf9MzBc?=
 =?us-ascii?Q?faHRz3yLAWeWAwQygXyTQ2wBfp8JE4ItrHI3KGM6w7BypX7VenPXsaFv9XVo?=
 =?us-ascii?Q?Qn0EqIGCaCG8SbkS+QJJC45WDbsm3HjuAKVbxngV8wPd9zPxPdgYbossb+nl?=
 =?us-ascii?Q?LP0tL3FOTm+TI2Lc422S0g6xN4AeBHjh4fJ3b79uL8r0ozbtriY+DFy5fJME?=
 =?us-ascii?Q?T0bSkh4dvTBe835Q/eYHgs/x3MjVKDUbBVodDZxqO5QVHf/9iGXcPSqGur0K?=
 =?us-ascii?Q?9Esj9STsn+3dWzCnKoOVpWYrNMbmoT2nFQy7UGI22WOYpylrjLCnM4gWC9WP?=
 =?us-ascii?Q?6ApPoxhwoUmlOws4KkCQV0NuskDS0SzEkE+kZWIr7WMQs0KuW0eB/crBKn90?=
 =?us-ascii?Q?YLIUWNk6fHNjf5WjSLoviYr+BZvOtjKakVG1ktdJPGgHnCa0WoEVxOjEvaL4?=
 =?us-ascii?Q?uHsK1SYK2XZakl4FOzMYZH7nN+bslYwVwY2+n3l0IEa2p8HipuIZtvPBUZKH?=
 =?us-ascii?Q?eJm/+/F04hkmGO50RreERZ3zTALbAwsj15elrT2nhZ6aT1uc/KPmIyF0j/yN?=
 =?us-ascii?Q?ID7YtdXZDR6wZfXmJ5w2SWbHcTMqQ22v63czHSLb5ETeJNIrDWmmWqRdu29M?=
 =?us-ascii?Q?EDqVnZfKJyNzJR5NJgWyZ09apToh44ChcW0oYZkKKkClGRWL037P7v/p9T+f?=
 =?us-ascii?Q?+GHlY3Ib7Ff3rDNDZrps9s6SCAOx932VB/c38YfC1ezb1LNyaBhpCPphafKj?=
 =?us-ascii?Q?PcJNTiyJ7YsC+tYYWv603IdVL8dz2c45Xs2fqjWvq95CxzPADaZ5fpL0AsFr?=
 =?us-ascii?Q?fRR4YK4knscZaerIUQQNaUIwElrfqGNExh2lD0SsQY4F34gpTKlYraaQrFnr?=
 =?us-ascii?Q?HIoIHed6NjUyep3N+PfDVHGHdGrQza5VSXfnL15MYdiLb4KP+Wxq8xkHSr8L?=
 =?us-ascii?Q?S8a8s31JIa6TGjfR4CHa6WELi+4AwOzUYc9jQ2f757RAXb1C/ho97a9oHtBA?=
 =?us-ascii?Q?cuscCrbY+HM3SWOzcNErUMvvMpOj+VT6/txkYSuK44NcUsqkMRewCMukSQRD?=
 =?us-ascii?Q?ifiCy5+DPe85J+DEwvuDSVVMTBMClsuurrIWD3gVRxwBDDJt7qqwjZ1ug6gG?=
 =?us-ascii?Q?bQM2psS65Cf3XoKcxuaLuRpI+YHppAChP8D5h7/MSPB3a8Y8AxTz4g2G9O1Z?=
 =?us-ascii?Q?Sa5BfSz1qHNh2X7ocgW30mkNzAaeT/jneuIgimgqMBBEP+4bU353pUWeI6dv?=
 =?us-ascii?Q?vnUXsarnDoe6/tM1alCnBCpZ0kFCulb50fNzX8PXJIyYdSE/hIsa8VCCsARp?=
 =?us-ascii?Q?koksnnm8BQ0isFXobpYZz4tdCbZ7sUPoOVQGt0gGZSmdOxETSxitArkuAXgv?=
 =?us-ascii?Q?ouORJnqVq0eZC7wv52UJWCSTwzynUplx6SsqxMP7b5dh4GRPMEfJTm0yfy6g?=
 =?us-ascii?Q?dssATY8Aa5Q3b+b1874Mvma/u5p8p2doSx+mETm+LfRONc/rmj1jNbTMmiza?=
 =?us-ascii?Q?vLbHbbIXD/3eAM4iJr9E+yTsfkRAdX+tpsQz43PFW+uASxjZru9K6ieqPYhs?=
 =?us-ascii?Q?0KqNCrH2x2M9Yeoi2RK5vRrn5qmvBsqX81u4nhjlW4c1sSxCsPzClkb2FAjK?=
 =?us-ascii?Q?RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ed890c2-407d-46ab-9b34-08dce9d89b13
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 09:39:30.3339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DZEb4Zyq/fjE0k/XG4AxXj50iVk8IRTgIuG0+pQg7kMADmLjLzWzc21DzBuUsXQvjCPxvTYrvT42ufezaeD59VSBAiBEgwR/T7y1xzAW5l7667Sw7tS3iZf8KDN3SJPu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7394
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728639578; x=1760175578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QZj37hZeUirqvwhBZ2uXq7LKOIyShQvtZI941YUQ0Ro=;
 b=QzbR5VZTy5LY96hUEZFh/vcioirApBpHpNuKqEiv/kT6qiOL1pLMNbHn
 8j5r44x/RCTNJdmi3jglUUJ3D3xGhe62A8wCylxy1spi3gDhiEn5fHa9S
 O5PeD6DRzctYIvB7oF4CFFtMt3wSprPBMcuCwXgoQTuC2SOMvO0eKzhH7
 Mou7gqqmfKSUfm0Imww2hDLkd6c0y+xtD4LQZCW+wA0pwyT4FPxi2MW41
 5wm73yIORyw3Bn9pNhf11TBgh9uQpcKPtE/eUnfEOtfYDQjw4Ue/+A9G0
 r09kHl5u+YJ0oz+fA85ZAHZTloVpjUsECfjrtjhNx6qBi2dCVtX9eoaKb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QzbR5VZT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: support optional
 flags in signature segment header
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Nowlin, Dan" <dan.nowlin@intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>, "Kitszel, 
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Thursday, October 3, 2024 5:41 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Greenwalt, Paul <paul.greenwalt@i=
ntel.com>; netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Kits=
zel, Przemyslaw <przemyslaw.kitszel@intel.com>; Michal Swiatkowski <michal.=
swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: support optional =
flags in signature segment header
>
> An optional flag field has been added to the signature segment header.
> The field contains two flags, a "valid" bit, and a "last segment" bit tha=
t indicates whether the segment is the last segment that will be sent to fi=
rmware.
>
> If the flag field's valid bit is NOT set, then as was done before, assume=
 that this is the last segment being downloaded.
>
> However, if the flag field's valid bit IS set, then use the last segment =
flag to determine if this segment is the last segment to download.
>
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: co/- authorship change
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.h |  5 ++++-  drivers/net/etherne=
t/intel/ice/ice_ddp.c | 24 +++++++++++++++++-------
>  2 files changed, 21 insertions(+), 8 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
