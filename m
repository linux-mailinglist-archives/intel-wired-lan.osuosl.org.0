Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D792FC7F266
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 08:07:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C141F408BE;
	Mon, 24 Nov 2025 07:07:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QsL1C6zc9zcL; Mon, 24 Nov 2025 07:07:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B37540899
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763968063;
	bh=a9LXR+juETGcTqcQHkM8vUJ6zCYMisq0fccUHHU6CuM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cjIBEc1eavsW9mojVaqTWu/FdNaz5AKfNxfD5ccKUkH/j4Ua2SRFt3QSjPAdx2AhK
	 IMHty5+PDFqf82IQBh81Sb5n03IxrdjWRH/X8+RkuqqdDcZ1LbwEEm2lTU64awnfEG
	 A8nYAY6Yst3D+ZwABSVDd3SnikiThM1cgmR5lOjNek9ifBVrg1qHQQ7NBJTTWPG+6P
	 fEcxpxg1vdQOk44YrNz4S7bXUIwhQweOZ5XR17cS/edPRNihkMWj8/Jx5v3MIcU8uE
	 ZXpy1PUNfHf40jMHGS2vma0B/1Y4H6+p0uOoYTOF8f+gyJCBAk74k7ydsWqt+ojY12
	 WilZWB+XqLrSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B37540899;
	Mon, 24 Nov 2025 07:07:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A7F0834E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 997FF60729
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:07:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0N4HSrPF1Q3G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 07:07:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CDA7360685
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDA7360685
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDA7360685
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:07:40 +0000 (UTC)
X-CSE-ConnectionGUID: NmfIDhM9Q/27tUa4zl4uQg==
X-CSE-MsgGUID: Np9TP811QgGImSAtz1rWcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="65991105"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="65991105"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 23:07:40 -0800
X-CSE-ConnectionGUID: 3gFmyhGIS66yPAWL9EixoQ==
X-CSE-MsgGUID: E4zioR3UTKCORXu2oYXoXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="196538616"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 23:07:39 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 23 Nov 2025 23:07:39 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 23 Nov 2025 23:07:39 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 23 Nov 2025 23:07:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d4NrP0hCszeXrW6ODsQlhAWsUNDRew/roKCe5oxpcI71xetKgi3GoeEb5uzmzvqILadkiqhSpfe+RaCkFVZ999xNqLKA6Ll9n1iBeJNJsLNnuvQ+svkird3ANHOD6Nhd201qTs8xBXATDAlT0nIwiRBy63pjGBK4ecbD5spPpMgFScbDpi5Xd56JbiIFwYq6A13Nu+J2/DHtJEX/AzwIV9BDYb+S3SUck5oe9Ug5ADGQKYPYUNBwg4icabd1p7wWhdtnE5gmhfEDEVw9bJyuhE9H1meUpPQMXG+vE3BxSp6LlTU0XPT30E59vo3/pYi/J4EWKOri0uZKQGrizPK3Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a9LXR+juETGcTqcQHkM8vUJ6zCYMisq0fccUHHU6CuM=;
 b=c1fjdKi4bOkGHvYIevlHI/Ts5UCxBqY4QHuEHF9Y8BJoG4xFYlb8QWZ0ms69RPdOozM5ZfOqVyCTOYAXVOQIJyhCvRGQcbhP3K8dPsiqY5iMQnC+RBN3w7uLLDjiT4fKq6eKH2q95nNc6ToIAU+k6WUgL2PhCEDkGzc2Ih4igRSYrot+P9Xwz+EmXOva8MRikcVx1KhKvDP7xV/6+K1RVKZYoFWJRBLmP8s70L2TN9Cn3G6qgnFQ/imuHBOAm2CeioLqSG5/Arz3yKlNb0EmfOs8HE2juBzouK52LcjMj7HfKbauxaKz5++FtVt1bJ0qURzwqWGBqfekxeQEtnbhSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPF310D5CFFC.namprd11.prod.outlook.com (2603:10b6:518:1::d14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 07:07:37 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.011; Mon, 24 Nov 2025
 07:07:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>, Mohammad Heib <mheib@redhat.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: delete a stray tab
Thread-Index: AQHcWuu5dKI21JWVokGnICaZX2IO97UBbBZw
Date: Mon, 24 Nov 2025 07:07:36 +0000
Message-ID: <IA3PR11MB898642470B3E7973FFC2058FE5D0A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <aSBqjtA8oF25G1OG@stanley.mountain>
In-Reply-To: <aSBqjtA8oF25G1OG@stanley.mountain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPF310D5CFFC:EE_
x-ms-office365-filtering-correlation-id: 220c2615-890f-4596-549c-08de2b2825eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VBxmq04Tf9AmaEuOSFGOyh6WkUErIPSTnirP7Iv9TWQJu/0ID0ANlOO+P3v5?=
 =?us-ascii?Q?/G2DkB/40rUwndpvimbdMDpjk3oQ6AMLku9eJbCLh5V00TZbX8Do3TyVIv32?=
 =?us-ascii?Q?LDcSPi6RENYwyTBKc+TinUkkfT76GDJAJAcfvtSDg18g7ruLft1AgmVXctG5?=
 =?us-ascii?Q?U1mhBqo1XD50uemN35RvMKP4jpvrlIqFVb/5lQj9XLGrenU1J3xcuMHJTDDk?=
 =?us-ascii?Q?eu+eFl2MP4b9t5ZKyFUPcdejyjDA3yLsF169e9e0/Jzn10HzV3CII1DqWjBX?=
 =?us-ascii?Q?/mRShSt2nuLTFCS04gz1VKJzgo685n4AEpWKWsJnxWMOoNqgzuXRvpS5TRoE?=
 =?us-ascii?Q?XCG6/k+y1wv4jRj2UdWk+zdpRRp96OxK/DrV63hO4FvDMSiuLYyGgBAR2w/z?=
 =?us-ascii?Q?68zejwvxvsFolEHv5WFKvwT7YE8dh7DvTP6W5dWtdQW8bWUuwDTh6ygBIHy5?=
 =?us-ascii?Q?O96w8mDY4poiEgpZMSzJVkuiquH1X8iUbobYjsthSsWDiz/B5vNo9SfjbNDb?=
 =?us-ascii?Q?ECkrLVMLQi1IDbeWykwtM1VU91L13H/yctaqB5awXS5898h744qjrCnMabhJ?=
 =?us-ascii?Q?O9c0aNe+9VnFSVBvpFIWiEygJ4XupoSd25tYtXfFGXV8eBFIUb+eZa0SLDR2?=
 =?us-ascii?Q?NCs9PYLD9mmxSF5aA2y9GeMtZiQJCdN6obotLLTpBeeP8ocWp/Pj+ehKXAIT?=
 =?us-ascii?Q?hzoJ29+w8Aw6WI1i6F2rn6gXQgj0TKxfVKZM1OCISvuB3H1xTPzbEYZQWU14?=
 =?us-ascii?Q?I0tgTq1r4T84GhDUbUHxI0YEKQfnkpb8yWw8bZqvargygTd7O949T70ozCds?=
 =?us-ascii?Q?N5RjiKTzy+0h0VsQ1S0VcEtBC9vWOV7BAx1JCGUL4Yj4GCK75bg9EHWpDUCk?=
 =?us-ascii?Q?fYBJ1B+KKGEZ8vYbpq8fxyKDUTU5RPaM4qD0ZkUh5Yp9n8+2CNvOIeatWH6X?=
 =?us-ascii?Q?1ye8MNFQnhrpO6yQ7Qm7OAXLFjhY8OxWpuAJQ9jlZIQiCMu3wR4u6b71Pz5Y?=
 =?us-ascii?Q?Uz/n+2TSkhmb+J/HuHB68LWJbM+K+/b1OzAHTMNNPgx1Lub/cgtL8IFaPAUJ?=
 =?us-ascii?Q?m+OyD2sGFkvMlDKHzLVWz5ILor6mpZy4Row4mXrrkD+X+o6l1VdkqgcKCjEd?=
 =?us-ascii?Q?mT4yiOw8GzJntlP5TYd6pzA5JpqLcZUEujyXNSpPwXnRbyplKUSEx/aI4iwu?=
 =?us-ascii?Q?Uj3cQa6Ln8CwxAV/89E4wMAWEfHT5dxyd5crcnDVIJQiDjGt+NpjAu7wEkHp?=
 =?us-ascii?Q?+cws8IkAow+/DPujtX3bakODcg6anI7FZ9e1TgnaizhAn/rq6hfZnBfxkVHT?=
 =?us-ascii?Q?gmowvlk0puIGwhlRuioKcITUzi+l+72c4AWTA5nKGJdjDlcYPF3/MpIeZDMS?=
 =?us-ascii?Q?raH0WhuuJJhZJr7ZaD0QmgIqyQRtYtMNvzcJN+j4vnaHe0q9T8ixvPWQN7aL?=
 =?us-ascii?Q?PlrE5IEjUoHaY9hnoSKY28HMOSP2zPqRkagucWbq8VBC8pgg5Ttgk5M/xml7?=
 =?us-ascii?Q?37DUycXM0Dxw/IFcnfHTCsEzHR0HG2nl7pbA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9uUt+5qVieLPb9zNTSkBENmNveit0D5dqbu5IpfQVx2eePHI1PxYe+us89k0?=
 =?us-ascii?Q?+z0pZth8o6gQ/AHTdMeeIdG8uJ+ap+EIzicNOWj+GnlhMu2i2zD2z1fiZ0jq?=
 =?us-ascii?Q?92UpYehpbORqUZhspNQvCV1tz7ETKXESvR/juaonLFEoS95zM4VWq3uPW+Vc?=
 =?us-ascii?Q?RmKxP8F7SDEINQ4XkcSj4z+5xzv3b9Mg7LG01AvZio8lNDehYQR3d7Fe1OTl?=
 =?us-ascii?Q?6g8wpYpdOluEKEXI8wMtQoIoodrw/1Re0/vrjmW+DPv7hqBVaUjey+o3E+gc?=
 =?us-ascii?Q?yUrEoKGcByCdVV0S10VvxZQYEtexKpecZ+wsLBoW09P/c45dpnFW2N1LOrHQ?=
 =?us-ascii?Q?noNPUwzMTm1kK5AILGJkQ8bW9/PMpoTVl8AZY8Er3gA3XEOjl5p+iiQy7iVj?=
 =?us-ascii?Q?QFSNkwGeItWPM06tklEQ+cFCC6S7Sy6/rYqSRDzn9FX8cq/TY4kz+HzTO2FA?=
 =?us-ascii?Q?trgjUWp09gTE6zIul+OiY0DG0QUWsGYsQjS6g6/PvOctJZBPpKauXb/Xc85+?=
 =?us-ascii?Q?fx5DfZ9QPvtwww7k3/RnjPDIUpBqmYM9dBEETPZY4QVIRgbDd37I8asoDgJs?=
 =?us-ascii?Q?xQmpExL9SiisN4i8tiD2p6RkF7IX1akvWtJ83Uh6/3gNuIWecyaNKXL3Tx+F?=
 =?us-ascii?Q?GsfFFS0REXt9Yx7B1IAFjpwi6HAHe6jiIRER+HD7mKeqCf8Wa8Z0UQAaHayr?=
 =?us-ascii?Q?1t9mHVkHroxDQlzpXagZQoFB3v2I0gstlhoxpU2yFG+dw88Tfu9HrVe+eYQ/?=
 =?us-ascii?Q?+benJGGOciIG6Hd5ZjXwSfo16yD9guZzFhP7U3/dBuE/L05HyC9iVfHm//XM?=
 =?us-ascii?Q?Yk+3updwHHIIMAgq4bwKSjtDAXHZBvagREhDkDF4iLqkhZV25VSf+8mAVCeH?=
 =?us-ascii?Q?3q4rK1Iqok3SCvfBswSCnm4KZ9Ex8ApAt9PvMdsXfr/72dkaIg8t1aQX5H7b?=
 =?us-ascii?Q?IUvyoI69/7Mc5iU8w74lSHtUdqSzRCQe7mpY3n2JXZrlAI+RfYh+C0baxMXX?=
 =?us-ascii?Q?hmuhAO6BnLOS+x6jVn/atXhNTeONLj/7jNu0pn4YizmX9tNztZlZe4bwuhbw?=
 =?us-ascii?Q?x9MTPQpem4KUJdPErzciDdhUvut9M4Pm+uNRceDjcZjpkRYxyJMAiBHAV2ZO?=
 =?us-ascii?Q?RCrEoLuLeGY2m8VKydDQQvwfzgXUq9L+IzpVilZR4yNWMzKTrRq4ubgjuKpm?=
 =?us-ascii?Q?DKXVQRWJ2rDnPs7rSrQBxigde7OBViQ9Z8n4/86dQTrZklOPEe/OO5uyFpWP?=
 =?us-ascii?Q?AtgoFb4AXAg/dGu2leHC9cBIfJn3b4cJadNRvQqZToK7iK093f2gBKuiNCTq?=
 =?us-ascii?Q?3A5d60VIFQ5ot0HM0DcZKF27XEjQaZRZmzV/vghqzjpb7SNcepK1teUMrLi0?=
 =?us-ascii?Q?GMBk4c6uAfvO5nhMNjvQEOd5fGIq54hZxxp53QIhMZb9M85T3fUB8dyl48Mi?=
 =?us-ascii?Q?oFlR/+FNK2IYd64Nlt23EHZiog3DSiKH/X+Ieo1fbzNAeTaNIfV53LRn6wR8?=
 =?us-ascii?Q?wE+M3EPcIe/MI3TWsNylFFiIkOF5JGezu8KFF4YKlG2e2g1nSX/8y/T/HuEL?=
 =?us-ascii?Q?GVMDGCA/aDSHp+QQCliRNGbACIrtDi2NgmXzXEIE4W34U7JXVloHVQIJJZgA?=
 =?us-ascii?Q?xw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 220c2615-890f-4596-549c-08de2b2825eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2025 07:07:36.7606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OdC/c1nL+iiaOdgOebKdTX6R3brkYg+tYeDScU9vH2B4CH6dSYMWn2H+AhKUJTjLMZl4zpV93mckKhBZnObAI8HhAEvl3T3SYl+FGQ6Fvqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF310D5CFFC
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763968061; x=1795504061;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IvmijqymzVmDEhvEcB9YG5bA8tjBiJjJvoaQhttjbPo=;
 b=JIFc4TmEq0JwMA5FzZZd6FYI8itY5N3QLjdOQtrV48IIMHFUqUql5T22
 4FFwoVR9hxNx4BMcXE8W7Ax+8d6HDBETA9fCBG6OkiQVbMPkp74UuSi0E
 MkZukIAbyfJvIReBhfluxpzXMjuL4Sj1XtNblFQotmn+B4Ou7UgWGGgdI
 2ohG1i4KGqOatA22H7/kofrH8OISPJR+Yq3wTDik7r2nhENUFBNGp7WyU
 WsAutXkDnrmRJR1T22fUcVnMth5KGN+++OZd32nV7K+SfG+cfllE1RWEH
 k8sq/ilYlSbYTX0GEAQv3q/CpBhYwskRwKvGMHpCkBl1NxQu7ZzewQbOx
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JIFc4TmE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: delete a stray tab
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Dan Carpenter
> Sent: Friday, November 21, 2025 2:35 PM
> To: Mohammad Heib <mheib@redhat.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; kernel-
> janitors@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next] i40e: delete a stray tab
>=20
> This return statement is indented one tab too far.  Delete a tab.
>=20
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 9d91a382612d..8b30a3accd31 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2967,7 +2967,7 @@ static inline int
> i40e_check_vf_permission(struct i40e_vf *vf,
>  			dev_err(&pf->pdev->dev,
>  				"Cannot add more MAC addresses: VF reached
> its maximum allowed limit (%d)\n",
>  				mac_add_max);
> -				return -EPERM;
> +			return -EPERM;
>  		}
>  		if (!vf_trusted) {
>  			dev_err(&pf->pdev->dev,
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
