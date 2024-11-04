Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F5D9BB1AA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 11:53:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44D77606E3;
	Mon,  4 Nov 2024 10:53:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FefNw4C-Dij6; Mon,  4 Nov 2024 10:53:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90B6B6067C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730717629;
	bh=fGCJ4t8+FwOh1j03KE1mYyEE0htNJxx3J0LZuI2jk5M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BPy9oImHLq7i66CJ0g6F4non67FTUEVW8vFff59PLe1BYJ+7qXss3hZ1wkytamWi/
	 By7R7K+EgKbgefbMrZTpTSAr1uwv92BPBKqAYwBztn2RmYw9vrCbzdQ2vVC5tBHqXn
	 Nw9elkdhRpscqEU6m7w9APLnDSnvw6fEJ8J91SHQE53ULgJu7gaxfwbG+0UmLCtTdU
	 CBZ14KXBCU5vn1HOHWOW87wq0y1fJWlZEge7mLvlLodbEXwBrrE57QOkBY7oXgk+0C
	 knKK/QI84RKe32625QaSCGFgNYXSmeHUQsgK+FzK2BR/qKK7dhGVjNCE7aVAxAiRbQ
	 Jmk3IGJmS5dyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90B6B6067C;
	Mon,  4 Nov 2024 10:53:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ADF86723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E874605AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:53:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6FTK0rZfscyo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 10:53:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB6EE6067C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB6EE6067C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB6EE6067C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:53:46 +0000 (UTC)
X-CSE-ConnectionGUID: 5ldD8mBtRYiVuJjHQDJIbA==
X-CSE-MsgGUID: DlRoV+5CSMa+eyMgCA5G6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="41799682"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="41799682"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:53:46 -0800
X-CSE-ConnectionGUID: Qy6O53AdTZuxRlCeYxCBSw==
X-CSE-MsgGUID: JoujOm4MR1iWcaztyZeUTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="88386699"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 02:53:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 02:53:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 02:53:46 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 02:53:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ho4AzPwqCa10q7Z7gkqf0AO4YJ2k7nHJRjARF6Fs6dAn+SBg16p57nKISQop4bJ0nbgTEgnjC5yYsBvMsRIcEX72UK6E/Cyb+wQ/meR3Rxnf04QSy73pnAfagt6EpGX4kUrObiryUAr6LaeuPQxqbMYOs/1peMPKCOd0YABMUyIWttKvfK1ROb8JA/DMCS9N1DQ5P9iVNwiDT9QUAYCvUonU0/IxWtzn8Jt2MxSLT6rKY+3OdDu1/o0Uk1wS8XlLrAV7lBbwXW6f1CiXzVxXifbkEtp7tVO/3CQXYiWW2elvFcUH6XJzGaVHV9TPbrH4uAFUKZHkh0Gvpl1nGCR3NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fGCJ4t8+FwOh1j03KE1mYyEE0htNJxx3J0LZuI2jk5M=;
 b=b/JbMcoOABlDABLhrvSbs1KJrSe/uhUzDu4PsnrC7+95F59TLsehD0jDAur4KwfdM5kFyNq1d0EPXK04AVFLDSXV1p+lSsAzc9uj6b/IO98Qg/mdDkqB/L0ITwbQ6N5p/hWcdeZBhkSiKGC/H+ECHW6LL4OjHlLNTcQw5CGO1mCdbHCO5X/nDSuSRdkIdlRn1UudUrUp/JObgvs+K/3+pirUPkv15BzmbPKb6BupBVVDZgtewP+A7gpd6vrXhJ3X0wcLv9u1W6510L2MTuOzy/rZ9wV9vv2CyTpkkpVvFxaKgGbo4NuHB7yCDeazlwhtqCyUWo1g4offnBUKbxZPDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by IA0PR11MB7791.namprd11.prod.outlook.com (2603:10b6:208:401::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 10:53:43 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 10:53:36 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Simon Horman <horms@kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 04/14] iavf: add support
 for negotiating flexible RXDID format
Thread-Index: AQHbJEUby3tMi8aWUUCIWt67y7Fmb7KnBvOw
Date: Mon, 4 Nov 2024 10:53:36 +0000
Message-ID: <SJ0PR11MB58659F3730355FCAC5C8DBBA8F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-5-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-5-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|IA0PR11MB7791:EE_
x-ms-office365-filtering-correlation-id: e3ed0b94-d6fb-4be5-4cdb-08dcfcbeef52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?sA0RncJm9ya48dX2lUF0jXCP5wCu8am/l+SoOsQmUzqELXH0Sjt2y01esOlO?=
 =?us-ascii?Q?Ef1pTHrCIU/Rqn7WzfwKiUDaTCEgXGQaqrHaZhqfgEjKtABslU49cnoS/1GY?=
 =?us-ascii?Q?3zAO7rnLYWZ6P0nn6FiR38mq3uwaeWzgax0jIuZmqH2J2oVuipYJ2Xr0uJ0P?=
 =?us-ascii?Q?ySn38DtFSldjddbVqxhUqyUqwe7yMdOmU2osIBaeaR2l9YkHhWk+Z9spjtsd?=
 =?us-ascii?Q?7qEYso29z2HlgaKpVBO8rHbJXKqc64vkLzeHnonLZC/jvOZtf/C3XiPpsk+3?=
 =?us-ascii?Q?/EOmdzeZ2y2YnhDnUV3G/zvBR/Ds7w63HYjF0tfPOHzltf3IliAY5kN6CpEo?=
 =?us-ascii?Q?FXjco9NSP+d4A8A1iIjLYzYSbbtm/hgAWe2j6HFlUQO0/Jc4tLu9Tfo8q6zf?=
 =?us-ascii?Q?GW999R3KCnj/bQbrldsoZpZNZH5YLgxx+anVc9KK2PcnjuScZXY8cWDnnrA3?=
 =?us-ascii?Q?oID14GEVVt5P6w1TManIypYZTTl29ERkC3tYlu3lbUlU4idmOCJQjnuiyHNV?=
 =?us-ascii?Q?3JrxiMf11SKgaxMr0IjpKBHS/jh43alvR3LEHQfbAvjKH/nzTK6YKcRsMoCf?=
 =?us-ascii?Q?vebgvKqo8PWLjZTPd8OQT4LywlEyUZGtTbB+vFCkZMJvAGwvWhsbJMHP5Ea5?=
 =?us-ascii?Q?uKgdWcONCb3Du1Uk/C/RUUOz32+nctlLMYPCkAdh4zT+hOeL3QBlpmh8/XPY?=
 =?us-ascii?Q?Luj+sfaMBypvT7Et2ZlhSdopNkb8snse/BUN25KsCCJhHF5cA8s3zrMT5eOA?=
 =?us-ascii?Q?3/kWz2/RZFe/s553u/9NyW8NICO1io0C/GOtCbUh04pGDiTfenn9N/9KtcuW?=
 =?us-ascii?Q?H1KF3/DVnBPEJ/AKM+qBfSeZ96Jfjwfyzu1wTwHYLnFL016ft71HYxJxlJ0k?=
 =?us-ascii?Q?X9f2/VMWuNf03yMlqLsmSyNIDFIrldjvDwj33W6pleKeoOem3m6N4RXOzM6Z?=
 =?us-ascii?Q?YJcDkQ/FG5o54xzL8iQhavmcZy+qBjqi18uRBM8f4xd3LBn/suQh/O0eou/a?=
 =?us-ascii?Q?b7mu96sBT012LOqQXx5VLzmmwcRBoiL3vDTZZLpUGUoHoMvIh/J1o2t2wab7?=
 =?us-ascii?Q?pXzFQz3gAjhCExsFk9SLiHBqaY0Chl2ugLeYo5kHFeowueWnWdNucoxZvK+r?=
 =?us-ascii?Q?3mFVTkZVOc9XXwp0pyDSKDdgvcW+NgX/xDdFyTwOARoaXQ0r4qoIHivStgtr?=
 =?us-ascii?Q?hYvirYmAaZGE99gaYdTpHNDUKZyF2xIY9vck+VvkuDSrBLyOBVSWhEJ1AdPx?=
 =?us-ascii?Q?3Wte8Nm0372nblaSw59Nv0vCQ3PWXFkiJt5jNWIz4koAcx2sAKl1TjX/bhjd?=
 =?us-ascii?Q?bJ4+Glwvj5rG2qvJFo4fYevEZQM1WAcFtrM0VXQehi2NrguqYrPh9trO9ejQ?=
 =?us-ascii?Q?shWE6w0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3JTzwsySIj9ij7F0br/t8Eyhs0lI+shfN/hDvrvqUNwz7nfaI+N5LUF8Sc+7?=
 =?us-ascii?Q?YlmJvNeGl8/rAN2ErAyySzjyJpNf2rbabJjyxROgk+CYnoV32g/GxnEaqgjp?=
 =?us-ascii?Q?OKGhKa+jATYwRHkm3do/0ytpUmWKNXUVrqP3V+mjDO8pc/zyplHxxVBpnGP4?=
 =?us-ascii?Q?E4Q4WMfk9KRO/UMeZjLC2hr/L+s5L2o3Y5C9ufphfhZOI4cFYX10Bm4RhO7M?=
 =?us-ascii?Q?aFFXa/GzJLWKF1i4UB6YBQLuKKPrbqFCl9b70PH4ZKr/T92kYPuEkLPqQc7M?=
 =?us-ascii?Q?etTdIAecqBaYllL5dKfGdIH/65sXBF5OteXghfWr9WeiKqmGoBElJL/hF65D?=
 =?us-ascii?Q?WkaVCYxsAw26WO/SB55TRNDh2dN4hGIIl310ScqheGQcs15Xc3sqB8Ci6OVk?=
 =?us-ascii?Q?Iorq/ahRf/RQKEEnHKLZR5S7m3DUINBgqWYsPQry5SJ/SpIpbWzPd6YiKA7B?=
 =?us-ascii?Q?1/Zxe1+lvOD6KSCcJVUj6b/85hvE9lgg55bvM+4wGJ+Rx7AlPSjACNq2n3Cu?=
 =?us-ascii?Q?q/TuB8Obyb0P/8Y3f9WxBYocwd+ZeXxjKdWPRWDyEn1xFDI5+Rlp3RCcvKRJ?=
 =?us-ascii?Q?nP/MegYn0WBbDQxkLI3GOlzZZXu6ZMOQqMRxhaYp3mKJ8NnxMtz6Pmty6mtG?=
 =?us-ascii?Q?8fYX3/zPNVsmKsZxYPOrHHiVuLhq7Cn0jRGtnpMIbFFQPo6sm0i3BJFM+b/4?=
 =?us-ascii?Q?pMnxIUhVK0ZGr+QyPyeJibdDo3LB6avKWCiwb9gknqpmU8dHBLfX/hA7aQx3?=
 =?us-ascii?Q?UTMbKhjtj2vVdVc7Z6x8kzVTKYcgwCzDgyONcXhIxolXiGvFMx0zX9Y6mJEx?=
 =?us-ascii?Q?Z5EZs0PXB2D9y995MZDaZYCNRzM1RIms2/n4iQrenWHI4ifb11EyOSSEoLaU?=
 =?us-ascii?Q?qy+c6SwYjBTwX+JDF0tPnq9KDmqWCoxIvVc/+zruSHeWX2GYUCMpxIu9cU+D?=
 =?us-ascii?Q?F++v8R+2NFO7RBty2tGElj1+yZdJ32yQoE9r5XDTNnneTsBJ/KlQTffcUvjE?=
 =?us-ascii?Q?hydhRUY16ATjPaVrWsIBLBlsFKKoGKsYX8OtT+7Z+/ydMe/IFzT8PWPRy9zQ?=
 =?us-ascii?Q?PLNuWHsrGVrjy6voCJGtXfBUfJtqCSBccQiFu/MMmchhmku969W0QQwHHG0x?=
 =?us-ascii?Q?O1daxS0cPinDv6Ga+fI/BaSk+xncugEVScdrJ+6o+B/LMhqgUDsGMfc21iTL?=
 =?us-ascii?Q?ZJy2reJt/LsjZUEVSRZwFnAayNqYl9lKa6hbyGT2EfUWRzwfty0z83HgD2NJ?=
 =?us-ascii?Q?SlnAbO8qpid1NrVtQKWfRLVETpK0fZfbujdWzyarTq5Gju4GVleQFspnpTqC?=
 =?us-ascii?Q?VG4taUWVbFybJIZiyGjEtBOqVqK6qz6jrHuJ4yLrJ9PUHkq6jEaL/bUM3FBt?=
 =?us-ascii?Q?gUkczAh6vL6ROOxZLYBRYYnMyJFjTnt0qzkCotC8axkeHr5ZX+2nnSS0YsFR?=
 =?us-ascii?Q?O4OofiJcCD95EQXXcWKaNh2Wjl2v0/iU+bR+uYs23DZttdvnA7DVlKmOmN5o?=
 =?us-ascii?Q?Ss19cbCR94gLeyatHwaG+0xqAoWHbHov8QiDErvg6he9FGI8XgatoFazRNkP?=
 =?us-ascii?Q?aypuP6pi0/pGzrFeSl+qpPPCQ8ibJd0pYqyF559AmfYGu79186CBTFa92pHk?=
 =?us-ascii?Q?nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ed0b94-d6fb-4be5-4cdb-08dcfcbeef52
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 10:53:36.8434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N9sC2j9Baqh8adNx+0FTbWmurFTiOpY1QUXhVA+aM/CN0Yh+eWLKMsbUssjA/N8D49RrpxMXPW7TuVRBpn1KTEikCuDwvsxCB7fwk1+x6I0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730717626; x=1762253626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fGCJ4t8+FwOh1j03KE1mYyEE0htNJxx3J0LZuI2jk5M=;
 b=HBDJiuKvTHRUZLLZxrPwdT9HN7W9sG73ivl9kmQJAEr9ArSsWmURVAXH
 OxbbXEMt4H8R3dBx6UxbF/2SiS/qxm/ge9drgeJSnfmHwfQXmuCdQDLTm
 hUZwWUej+IuXUPySZmHj0+cXH6lpqnp+70eVOr7EfjgaRYG7iz+Q4U4+X
 Y6GIxfdd0aWH9EROdnakz/Hcht5hNmrCQYVmVc7pGzMpChl53C+Teo2AH
 mmktTkpCIcCVgFl985vuKPLh7XZplT91ZD8ZICEfiZnapWuUiMI/Cen74
 646gQXzAWIQjJ4zXq8oDe2HNhONuzw57d4wSoaVjhKcDlR1FJWo1Hf+aH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HBDJiuKv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 04/14] iavf: add support
 for negotiating flexible RXDID format
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; D=
rewek,
> Wojciech <wojciech.drewek@intel.com>; Simon Horman <horms@kernel.org>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 04/14] iavf: add support f=
or
> negotiating flexible RXDID format
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Enable support for VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, to enable the VF
> driver the ability to determine what Rx descriptor formats are available.=
 This
> requires sending an additional message during initialization and reset, t=
he
> VIRTCHNL_OP_GET_SUPPORTED_RXDIDS. This operation requests the supported
> Rx descriptor IDs available from the PF.
>=20
> This is treated the same way that VLAN V2 capabilities are handled. Add a=
 new
> set of extended capability flags, used to process send and receipt of the
> VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message.
>=20
> This ensures we finish negotiating for the supported descriptor formats p=
rior to
> beginning configuration of receive queues.
>=20
> This change stores the supported format bitmap into the iavf_adapter stru=
cture.
> Additionally, if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is enabled by the PF, w=
e
> need to make sure that the Rx queue configuration specifies the format.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

