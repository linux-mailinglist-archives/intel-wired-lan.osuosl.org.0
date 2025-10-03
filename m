Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE03BB64BD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Oct 2025 11:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37683610F5;
	Fri,  3 Oct 2025 09:03:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jVoRshSYFafh; Fri,  3 Oct 2025 09:03:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7DB8610D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759482228;
	bh=s2PCZmiAgmXByEbQB98h2wjzS2UH3Ce8/okr9Is6YUo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TrcAlnugpc2IdUl6BuanO6DPFTokhk+8GZzKgfQG6ZDVAmYQV8wPwCNgoEpllyjC4
	 Nv9npMWBT8IV8vjp3O8dp2K6SyH9b54CQvlVRAZJ+zZ2Fxxp05hmT4cvqaFs8tryMw
	 AbyNyLhbWGMLev9slTmkEPx8eIXh4v0f7P+K+hPh2TNcmPBW9cHl+y2hPu8V3mXHOH
	 CyKJHbiOZYl7zcQoTyq/XfgWLaaOPg6Vm0xy2RRZL2563SSnwXihnN0RipRWryc662
	 Er9JGGPBybXDklySx9ke6NxBCVSm2bw76N/JFnYmCchNomT23SuPgOTK2WxdmQH5GU
	 nffeuEOgiGlCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7DB8610D3;
	Fri,  3 Oct 2025 09:03:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 71F1013D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 09:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57A8480898
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 09:03:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JyqG6zgfrMTr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Oct 2025 09:03:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6FDCC8073B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FDCC8073B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6FDCC8073B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 09:03:45 +0000 (UTC)
X-CSE-ConnectionGUID: Uehu9lY7Q2W79o4wBCXRvA==
X-CSE-MsgGUID: PwBWR+oSS9Wua4YxrsMw+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="64380131"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="64380131"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 02:03:45 -0700
X-CSE-ConnectionGUID: yw97eQejSa634VTfnZ9rpQ==
X-CSE-MsgGUID: FNVZ7Dq6TZS19e6NpYGWfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="178884613"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 02:03:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 02:03:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 3 Oct 2025 02:03:44 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.19)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 02:03:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vFGRvtjoqtd3szBYtp6VzeV6JoS5UEZj1SXNHKdP8agYUjHae+UHXSsCWx/UpNu7FqpBsgA150uAWKYKnCxb8Xp0qDy9KaOWGhh1vLBnopTWlBygFPStwye3zCcR8iNLR76Czz4fOJXBsjkKS/0zf/6O9cXuodKszBGDlC3XuO296Tq+ceu00jYD/NeHJED9HkL5PrLnsmWnCZ6oTErbDo4F2I4Ss++XhjWHpV28OwavrRlffKyL6MR/btrrIqUthoq+jZl872YYN7jVVw2UfnB03aMOxDQnjWglWpPNoNEwqYM5qhqbahrNRgApmQoqMoPwPqkOeU7E9VzPMYtWmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s2PCZmiAgmXByEbQB98h2wjzS2UH3Ce8/okr9Is6YUo=;
 b=IPcS//6ma39OJKHSIBV1y1bnDZf3rLgn0cIg9yYzcuZaSNHV81LCzoLPpc9RlO1cJiwvhgJOqe3znTr76pFmussuTAWg9IxbCpoQFzR9JE6FOAmgpfu0OvqmSoalcK/F8YgXz1aj52uJS9ALX4SqpNa4BT3Fn6Yd+yjgA22fepa/VvDIoZcVpSrwFHRoD70hDYRFaSjiLXfNwxI5OhFkO71L6K5re8m70BP95J8neWtIvBlLfZ3E1EImb0KjmASwBT8q/BdIeibAd3xkEvEcZ2qSw+ET5MuRw87/SIrsZnwQ658/7ga2V2rmFTfjwY4Ki1Je8RdOyKI2awqG9J1Ucg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.16; Fri, 3 Oct
 2025 09:03:36 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.015; Fri, 3 Oct 2025
 09:03:36 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "kuba@kernel.org"
 <kuba@kernel.org>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, Kory Maincent <kory.maincent@bootlin.com>
Thread-Topic: [PATCH iwl-next v4 1/2] ice: add link_down_events statistic
Thread-Index: AQHbxYc5ihgTJ11SlEKuEw4VvB6ctrSw+nOg
Date: Fri, 3 Oct 2025 09:03:36 +0000
Message-ID: <IA1PR11MB62410C7D0383F3FF6D18194C8BE4A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
 <20250515105011.1310692-2-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250515105011.1310692-2-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CY8PR11MB7170:EE_
x-ms-office365-filtering-correlation-id: a6d562fd-3d23-416a-b7b7-08de025bbcc0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?d69fzIuqcN+5hmtzpkQqLs+h2WQd6uoliZ8cUESrbpfK3Jo4olR6p1qI8ytN?=
 =?us-ascii?Q?CpVJR/1knM9ksaxj1NdNy0eO8ALuf88UaUAHjTSEXPJISyTiW/lTCDTPJO+Y?=
 =?us-ascii?Q?rZHsUjLFS+lpf4lnou/KQ9Bkzfrqzgv4rR22PqKQ2ZsCMbWco5J/4Ny3Flsz?=
 =?us-ascii?Q?avXT53j++CVYN9CwE7TJfBWDhRc2lzc672OQP7OoUB/gHd1Xmdj3yhYXAPZz?=
 =?us-ascii?Q?bzpPjim0I+jp3F2c0MZWKF8kK5WJknWAIu6jYxbpie+MuGvCHRjAtQeLoD2l?=
 =?us-ascii?Q?W+xaAaxXO39+YdmG9kPgOEveaMvsVQqtYwZnD7J2ejQb7UDUHtt71xoZwSxP?=
 =?us-ascii?Q?gE+oYqOJp6P41uIcE3h3azFeK6ikd7iybCnEC5KkIWJlgbNEkmhT2C+DESyE?=
 =?us-ascii?Q?MX11YqmoEYu/KnHLvdAMkm9+JWupqLv7Bm0I1tPNkXj/348XUwpfhwGbexPc?=
 =?us-ascii?Q?7ezKwHzwE8tSXS5bdA12kf7XE3+Z5gXQaBftobCiSeXRDHRdRJOSA4Bjj1w0?=
 =?us-ascii?Q?sVz9r/vNb5Ppy2k/9GKvHo86Vd/hPYb7J4L/kB9ih/FkY4gg5U6xhEMnI5Pn?=
 =?us-ascii?Q?Q5VQNRK63dhPrfZrLtH6mLp96Ypx48s0tLRoGxm+aEY+Eqmes7dGBB1Ly0Qe?=
 =?us-ascii?Q?WWzCdwz2Dnk7ga3juZOTW4DOJI6Kf8v9pVC2CD1GZLtxGYMqPx+nVwMOXjgH?=
 =?us-ascii?Q?puXnGWpvLTJ2wuQIKTpkdJQeRthxpfeSNqNoz0xibHiS0c/UWNwITTazdo4J?=
 =?us-ascii?Q?O+Qt26Tw2JilPiAzfw26IvBqWkcVKdPzHwkA2uVV+Rup1OPhmBl7kzjk6SMy?=
 =?us-ascii?Q?NVUaOvnP2vMGWAfKz+pApAtwql3oqW2WEYKcVtJ27SChpS6ZR5G6c49mO3vM?=
 =?us-ascii?Q?w7tHXpJVBQi4oIeOv9OglDH0XDEl2W2NyvVGgema/Oq6nmXt1S3UdsDKQp4C?=
 =?us-ascii?Q?zjG93RZ1wKEoo2zlR1s/nxGBGxOLXxIRJrRjbtFh3BqfEHJ8m/7r854+qL4K?=
 =?us-ascii?Q?J2wlQ5cPL7g6BXrQvfsWay+1K816R1RdjR/a/r3O9cWg4FhcDQu3m/lGrVfZ?=
 =?us-ascii?Q?FHHe9nD0Vy7MOjI+8MOrp5+7SM/6CFRR2fISPsl4qP/gLqQJgeIO6sJtQa4y?=
 =?us-ascii?Q?cq4FJmzB/cwHh3ie/jYfE9RWt3NUaIld1AVGozSbwSAULO23DaTjxDJEB0Wd?=
 =?us-ascii?Q?casTdxonabOOrxcCimmb4Bs71iNVG2Kqxa00Wq7PpqQUn1TJMWOP2PJZ4jNd?=
 =?us-ascii?Q?lTukYPm4CD79vZ7sCnIkGFsG57Fh80Bft6OVwSXd+6iDV9YcTIkgff/Vh8hl?=
 =?us-ascii?Q?hWpHKM/VxTCf0F8DRtqhRcBgDdvBPoaszsCF1l5RfpK2dHkcbEEWTuXMm/ge?=
 =?us-ascii?Q?LCBEHi7Vo8lpckfYVouj4Q0LGR1aBsqqFX7i5vMKTpmKe5fXlgNtZ1XkeQRS?=
 =?us-ascii?Q?iFreJwWDCgL8e6YbOzeLuSeY2UgM5eok3VsZXqTSohmoeRnHVSjDrO+zkTb1?=
 =?us-ascii?Q?wQRd8Q1BkzX8DKlElfGR66oJEz16vuLzbr9O?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hMnXqB9Nni6Ptg6eplZVdx051NanupWGusVAzs5oOB7n7I8rKD/LcTVTGW+q?=
 =?us-ascii?Q?9JGgwsqkpdNnMpJiZ3hYuonUwpH8R1d8oIShwfccIhmF9jeIzNNfdVVzbUXy?=
 =?us-ascii?Q?FFIKIcw5tJ9vim8MWNnB07++lP/3vMTh2mVM/vaIA9cH8OCwpWRz5XKSIRi1?=
 =?us-ascii?Q?NPoM+H/E7pAa68oESb6YtbJ0/vttY2dfJSm8T+mcT9zd9qcafVaDVJilnyVj?=
 =?us-ascii?Q?zROweTijdV/SYP151mKr6TwYQloMs2RtBAQeVwFJ0wqkh3rk2tYr+F2hQh5D?=
 =?us-ascii?Q?P2juE35Qa6HiAL0xlShI/QITwb6LGCAepf+0RuO8qmKZqUMBEUFkRrqQM91v?=
 =?us-ascii?Q?5+s5oqpOcyzy0ufrwgOakdp0+oTngnT9pkiLflMdboYwv/lW05bs0gHABiLf?=
 =?us-ascii?Q?f0drnEao36kiN2WejX+JcNXXo8h2w+hBsKP4oCfK6Kq8QWrleYhgrvCIPNcl?=
 =?us-ascii?Q?aS71tA8JCXPMr2ZN6/a1FfKPWcX94EmmhtFXB+gy8AusHyMDcw8OwXkmAr1Y?=
 =?us-ascii?Q?PbZX5Ia3J6tb3ENHdQQ/0PYN5WinQW4qZoi8WdOiT9IfionsVwl9a0ZPILjk?=
 =?us-ascii?Q?/93rsuPzP7vi9rf4jhidsRN6kYKiuxtFVTT9MEZDe1JxcprEmoyTtXqNofuq?=
 =?us-ascii?Q?KWbk+f7wtObcMbs89F3hZs35QFF5OugWf1rWKY8voJ4Kc3kkcl3nKPS14q2l?=
 =?us-ascii?Q?rnhFHsyU30PejN1wqHp9nMqz1Hx33WRU2VH514d8UxqAjeI5KfnZF4mnCC5H?=
 =?us-ascii?Q?vFgCTMUquWIxoRVz8gxOyg3q5BqDWyNH7CFrayMmr9K9VqJhpcIWeeVIY2VT?=
 =?us-ascii?Q?YRaaGR8xtp/UkCeaE7i46kofoVkhstW1UhIpm9ycx5in9C6iabK7uTtU/0Sp?=
 =?us-ascii?Q?ulkVYcIGMbqZ45FL08nYxU+7UWmO7M80+NiRVqOAcLGuZhmMqQF075E3bSii?=
 =?us-ascii?Q?djacZF9MwCfBVzEnf1yzlIMVdmfmg08uQlnZuBrV4uIbYaEZ+Jv9UK/vZWnO?=
 =?us-ascii?Q?DY52fm6GG7GGveYE0NRN6/hJ36LL3trpeUy1w2tt9y3WdB9E080kclCk76Ta?=
 =?us-ascii?Q?mBX/+yRkqzQat4lzCTYfHWvnFz5vnr7OUTsmD3qpbnzhIUwqkFvOsBdLmBja?=
 =?us-ascii?Q?T0GMGsmbIWYGeaS5TRIFwpRz5iI0kwSw65/jXsTtrKzHZV4zTgPJuoQhb0hk?=
 =?us-ascii?Q?LBpRJpgW2FV7ikhXK7jXeRXVCwfpBA2i+esgOtsDcDUtxYSXEl/5nnGJGP3e?=
 =?us-ascii?Q?LtkX16sNPGrWZBB2KaIKPCebmCqGDkGYbbAN+1YwNA//o500hntD71MolBiQ?=
 =?us-ascii?Q?hejwMI/elV37kIIhXe+whVuwGYXGI9ZMsN/RtftJw/rXez1A12wG2YLCa/Ej?=
 =?us-ascii?Q?653EZshggyMXvF6M+SaT/umACz8VxXHMJKyhiQsFCQFMEyClMChWjKetQI7q?=
 =?us-ascii?Q?hqO8XThq1jPcV0cgkk99bZ+S+1apFPSLK0rVW5iWvaRToyirF7wIxz51UeqP?=
 =?us-ascii?Q?kv69t+HpXODikAhYr2rY9JZUMIwfINkHCQa55867YG8i23Q3W0kmfy9HjN58?=
 =?us-ascii?Q?5S6B6Z8d+Ok8JKQktI8QkxNmX2GK2TEQNqI4Ps/G?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6d562fd-3d23-416a-b7b7-08de025bbcc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2025 09:03:36.4835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IV98ofn1kNcH5f0KL15gUVjf6/drxworRkRINB0YJuTtDCnYn/HxRKOM4SlI81i59sPQqrgkhYQyFl3V/QAWxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759482226; x=1791018226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=317gUBa35U4zkPBeeZwzDQ/J6tGQJfkqS5lRWhAK8hw=;
 b=g7TJnYxyB5bEUfLD7bgmORtEEXb0aWHYU35Hmp6boV2gv7EkapomK7sd
 q+nPdJUA1RMa4Idvy+XlS3xTxZ7FKVkqQM0MmOadkRkdPj+mVNekumcaj
 MNi1DpasyoRnNutRwherkZWbx8qUyGtGwLLz23h1Vt2ytFs6nuF639aVx
 0vc6ArAMCWJBd+dT9Sb+AKFd5b5Q4kJXiXo+ExkLyAgDbwm7Sk0P5qqtc
 3cPRKOrPwVAV0D6UVVfxnqRYnLdFNGPRLnJspYqGhP3lw9is95B0JoK4L
 Z3afBYgx6N6QkCiaZMs79AT8lgpIti9bcofBJ84XhcH0CMdseDT2sIWzn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g7TJnYxy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ice: add
 link_down_events statistic
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
> From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>=20
> Sent: 15 May 2025 16:20
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; kuba@kernel.org; dawid.osuchowski@linux.intel=
.com; pmenzel@molgen.mpg.de; Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@l=
inux.intel.com>; Kory Maincent <kory.maincent@bootlin.com>; Rinitha, SX <sx=
.rinitha@intel.com>
> Subject: [PATCH iwl-next v4 1/2] ice: add link_down_events statistic
>
> Introduce a link_down_events counter to the ice driver, incremented each =
time the link transitions from up to down.
> This counter can help diagnose issues related to link stability, such as =
port flapping or unexpected link drops.
>
> The value is exposed via ethtool's get_link_ext_stats() interface.
>
> Reviewed-by: Kory Maincent <kory.maincent@bootlin.com>
> Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel=
)
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.c=
om>
> ---
> drivers/net/ethernet/intel/ice/ice.h         |  1 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 ++++++++++
> drivers/net/ethernet/intel/ice/ice_main.c    |  3 +++
> 3 files changed, 14 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
