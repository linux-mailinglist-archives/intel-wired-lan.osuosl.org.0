Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGkKCPl08GkMTwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:51:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FDE48096C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:51:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D70448113F;
	Tue, 28 Apr 2026 08:51:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PkruV-cuBKF1; Tue, 28 Apr 2026 08:51:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3580381141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777366262;
	bh=XJQJ7DDWycDT5gG5UXZlQx6EsUoNmLNZrUsPdaqBIX4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iFlB4n9VURctWytQ8Jj1guFhwyVnIKEVKN5rmmTLtQfqru7I/SMYVLc+VhDUHtkBX
	 cy7g5Juoi8e+CixjWINiUwtkjNA21F6wTRYaKo4o+TiiOSq0CuZwKS/LDPEKogZGzj
	 5XeMDzT6OTZFEtHCNcChkshH8BEI4C3XMC8pmjBioa9p0bV7+0waker57hV+mGJ4BM
	 JHtpM5NosKUGwz/PBsdVZNE8QmDZZL08rT4ZmFyO/8rxW6py1MOetNLf/y1OZSQ8Hf
	 QgTG7NotKmcHDaXvzxDHQhn2PZ77tN3Nou0uoWZdRWLbt4tFrGqvRv4uIOU89crO6m
	 Ike7EWdp75oRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3580381141;
	Tue, 28 Apr 2026 08:51:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B04A23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48F038113D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:51:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hVDKOHLO-gei for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 08:51:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D4508113A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D4508113A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D4508113A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:51:00 +0000 (UTC)
X-CSE-ConnectionGUID: 5MJH770rSQqt4Y6Ho26seQ==
X-CSE-MsgGUID: uhQ2Ok37TFKmyYRjoaGRQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88579841"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="88579841"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:51:00 -0700
X-CSE-ConnectionGUID: kDNSuyi2QeuBykQiwtdXhQ==
X-CSE-MsgGUID: IJtdiDvHTHmjoGpE3HUjzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="232887440"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:50:59 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 01:50:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 01:50:58 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 01:50:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l/3vRpedE+RY98WXeDTxliHxc/5JTY1Swsi9bh/mNtpcqOX+6MvDp1H1RtejOqnnBuP7QKT0OUbj4FKVlqdQoIYI8SbJKybHLRm7GYcqmozfpx4Dpm6BX9j/sDREiZPlElCnmOqmMd13Zrg8pv+JFVq26RCfvnyyMC+mbTUKDHT/tDtJgCK68Z2Zlnci0SNaqYkMJ3V3il7drRVCMUOQx1ra7Wy7LzU6DO+StUjttq6w08H6zOKSqJWkrKNl8ckpMPBh9xULI/hO7GKApkb7euzwWGRby3+cOhpnwSpnLAGG7PnI07xYtxlQdS5SkFUdpM6DckJ5XNPbGuag9ADUwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XJQJ7DDWycDT5gG5UXZlQx6EsUoNmLNZrUsPdaqBIX4=;
 b=eAfdktdff9meo9umPkQAlbuOJrAfVplvo5sR6ZfDOk02qBdq9QfWpG4OpdlcKcODUtXBhH3rWzCJsO0SGwlofTa1IDuz49V3bjO8QOyr9eiE+B/2GIVPNJWjfiDFr67KdsVKBEUASXYvkhyRup5xl8rpoZOa+HsB6FvUHHNNE5mtXjphVvOIWqMjlBhiD2aWE5Nl8LqWKVFjmANJn8+O0JDYupnYyRiVnHFNdWZLrLjyKeugkYMUuS5n0asMMoosDRi/exKGb7S6623mAsE4bsjkr1Dc0BSRWyQ9IAp13/PAaFFPaqNz3JvMfAIvZXCJ3h1GUQe9RELh5YCVvF+xBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB6850.namprd11.prod.outlook.com (2603:10b6:806:2a2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 08:50:54 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 08:50:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "R, Bharath"
 <bharath.r@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 13/14] ixd: add the core
 initialization
Thread-Index: AQHc1ujydwK8ZLmO40eBSVQprctHjbX0KfFQ
Date: Tue, 28 Apr 2026 08:50:54 +0000
Message-ID: <IA3PR11MB8986076E6260ADB50B05602CE5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-14-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-14-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB6850:EE_
x-ms-office365-filtering-correlation-id: 13dc251f-860f-4cd7-69b7-08dea50341f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: 9W/FUEvITPUmOxiOODUDSgVzDOHAh+sBfbZnBtKNDDi9WNUF1U6SY/pN+Q8hYH0HL4gFlXwYt41QPcbVeFd53xxpfHW/0KGvwIPs4fdAykipnZT03Edg2sXxi/f11mP2DPLPWqW77gXVd2y2IQqjggzWkIswgjZAuY+FsY3tqIvtvVefo7TCNbMkvVhJuLMZZjiNySounbKuFcRCyknsvY1TsV6YnHU+CJpF4RmSmQLBEwgGquzCUorFro0KWBWUTBrmqAV5WN1f9JTJUSoZxXjNVyx2qgEzWG6QpC2OR0ykGTt5kKm7Ju6v/34gZs3XBugG1gy7bmJJcrIfHBvpT8oEjCRWXKnQiRkl7IrmSvDcokF9K9jRdkUVT2n3ja8YJdpHFi12rFjfkSNfjWEiEhAxDUBqfaAvAEmdqt+uwO/HZCX62KacNkZzaK4PwwsNTG14AUT/+JVCl/On7RrHCUw2RrNJ6lzIagXDR9BfTBV6fFB2uixFyXHTKc0WsO4HHrjOgsJDGMSfqFs3pyfZK6UcFayNNyAgcgRaoVViPhJ+G9wbahOl5VDRo0oIBcxy1ORAWi1fkPnhY/c5l4FtgJf6zb4eAZ/1xnMNF0l7OixQ6yChEmjOZvpr2gkznWpI+BGKijMU2uLVDXHZWyNhI4wRUCr+aj3lwHKEed2/kVVJ5fZLoI9QoM+VNeXGlH8mUcRTlVPetp6YJCGpyaEohFx/KgDdnapacwZiOJcm5+2iAu47ShST3DOufdh6Rrn/4E5ogI7uhIGZ367WgDz1CVH45Z7S4SHOu5Ny6c5VGU8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SsQUSxGHq2gesKOZxgaRXeTKEcmQY+QVCFbdZc76Anp7ZqehFUPp7gdIEINb?=
 =?us-ascii?Q?be9XoFHvNIQsbOK9j7NCukaTsjvJttV7+bYwriOEK2aWEjqZ8kTO4WLs2/c9?=
 =?us-ascii?Q?Y4WYyhOYtyHllYDAgVsNsOv3OHsUgUiiSsO9FRLHHibWMwPxp2olQ0zHkAgl?=
 =?us-ascii?Q?MWcyaSuO4w27KM+8Kj7IFs8Gl/IyzlD9zTBC5/KjwxshXzGtW3LR2Nm0ypUP?=
 =?us-ascii?Q?hJ7ja+jq1HMjFuMlZTEg/IwKFJwpvTEz/K130UE6ZO6bTYYaVGgqvBWiaYmK?=
 =?us-ascii?Q?GFtsPQgBSBV9wtMyksssNhVPrbQiehJkwDBvRMgoEfYSpuUCJaXYTOttdEnW?=
 =?us-ascii?Q?jSVwTxqzFn5QPb/XZ7rsGkOM34Fui4jN15JFdsnkOz3f6SCqhVJ2q85rWFM+?=
 =?us-ascii?Q?uAWj+76XzGXWHM4kENQJJPBcr0TZwJtrG7UNgJrzbnEEsVT6AlRdhFSG+hLF?=
 =?us-ascii?Q?WOuJHicx8phLaqIdmGsLxWH7kysIkJEYANh8ovEZYSH/R6kas6w58b8PaDMV?=
 =?us-ascii?Q?h4L/848RFijn9eFRIgW7P81h94L4bA6Gme79YvoH5bs+mhN053PPQhug0POh?=
 =?us-ascii?Q?1A/Xvm80YvU2di9SYEFtFVGt/WRUzVIZDf0NNg5a8xoxczZ/7u/3xej8cc4b?=
 =?us-ascii?Q?Q4zbfTo3CFU4a5tWdGpslZ9TfJ7cBl+pJA0eykrpgcmlhDukKmUy+K/rLOJI?=
 =?us-ascii?Q?9AvHbGJ0fzlo6SUnirMWpxb7mpefLJtgowvWdVALcx4+sitqP4uf4rP0Z+5T?=
 =?us-ascii?Q?lJA8WgGtyONhWdG5ok2oEXA6e/riDVpvAFx9i0v+PX3/lO6Jz38ZnjAdPkXg?=
 =?us-ascii?Q?ilMoWu0QioTl7aKGSqNzvaGhsyySi6xPW6Lc14N1rfPFK59D7dHMyBf63JVi?=
 =?us-ascii?Q?NHB74IOyEotw1EwQmDhta1GjxdeKeqorRvlTN8HyDAk3z9GJc6nqaqp+U4HG?=
 =?us-ascii?Q?YM/gFZhrj1nxgc4Kgx3X3Q3Q3Nap2OM0U6ysct9tYYfAPJuSKmOpq6evtOXr?=
 =?us-ascii?Q?2g5LduMo0TVbeOJMb5lLOjRYO/pqe80REOPv3dIEScGYeNH6Vff0Il8ObWch?=
 =?us-ascii?Q?fsEi0pwBdNAcA506bbXSQRP3QSx2D9Aq52DzNBVclmXpPcOCiG/zzxr2EPxC?=
 =?us-ascii?Q?YJMwi4rzOk9GMws9c2V2fRleVNDEpWhnukTjOl739P3pxmbCL2vx2bruZbBk?=
 =?us-ascii?Q?DxkJzv6Yjae7/+aSsHnaPV3111cguu5SIDOc0DjZ8+AZtwZlIo/406kpMuvc?=
 =?us-ascii?Q?KACshBlqC+oTYfYybay28SxVXlUnRH/0uH0KVZjibhbo/6pQVHCCQIKp25sJ?=
 =?us-ascii?Q?I8N9iuP+dtWQGNdn3Kp5ToiZnoxcXzSUGbXwHGdpE8y5hgjpotX7yh8dAEQ9?=
 =?us-ascii?Q?7finrFTflEt7Mu94H05I6Y4Fl8+Y3wC5mKZLQ2x8TrHcLl9Vk8PsQ8NIiwsa?=
 =?us-ascii?Q?FdgG1AbFyzBbhpoSLMM57KJHTLDXgCihAU78IowRXukmfEQIxkD5m9/q9WNf?=
 =?us-ascii?Q?yal3O4MokvIbXC1ZRKQ8i08ikqPvaYnB6uj+nLwxIwtAFcgnU2txRsgA0zSQ?=
 =?us-ascii?Q?LzkGHzevwlu0zOO6VD/QHO+jbwxaHRnLRaVNfERZo3fx+y7fFmgvtpfmyLD4?=
 =?us-ascii?Q?HjxX0qdeZJhReGJtBSiU9v84nI1CSb4pt9MbBVe40Q4R+2tBVx1/zcbffJvg?=
 =?us-ascii?Q?NjQUW6B6uRIGAsS2KX3VJNYSA9ibpYvQ425ap89wsI7JdirLT+6DW9afKRCb?=
 =?us-ascii?Q?ubWG22VyqniXIhRCVOdtxjtZoRa88NE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MrHubx26Ej3dd2/ybmdfGvAYivlQPA3FAJHfNHrO2UfRlsZSnFRu/QhmFaMxia4byNWZkaUL5r6tfIOGQzYSrZ8YpO+4EPwTstggDPRurMbny/VQjE5nhIMH7Q9oZyWV5TtpMqZ/14p92xH1AkuAoxafs+mngyuFi5ppydksact7aKkqMqHDzMBMkSkYZLKpLMzlXD5hg+dclze/zPz9iNezbbKOsfTJtEI7TwHajvoygAn2g/h0oe+QF6K0UULPUBKSCA1s4O+oEOSrTUA9UICJEv5VOCvwlYv7pkJa+JyxJ6uNM4zcfG9bqVBQwZmgnkgpi7We5shdd3gNOcEkPw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13dc251f-860f-4cd7-69b7-08dea50341f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 08:50:54.3123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o17rIfd6d0pqdqsUTf4MxL21qGfQDRsIFkj0WoKU5O3ZFIx1TBkdV57X/dUgQ3/tOjFCIkf15MhAz0KN4eKUypNhSDMvGcYaOWlnhSwop78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6850
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777366261; x=1808902261;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i9wQvQtjY8KEniB8YpcWt3BhgacaJcRWzat9k+FL7X4=;
 b=VI7kPOiGZ4If1hM/4bEoTyMwQeXABZB2+9FU3bEnspn/B5xJzlv2WlsZ
 //6OCFQFTXRyCQg+b5cA/0g9Fz6V5UXOlG3q3Sk4UTkZplPUdXtCbqFnW
 zk6Axm1IovulV04lV5nG8yKS48fHz/5bci/YoH26pMU+STYquDI3pljFE
 ev25W8V2XbrIhBiV0mxEcTIV2PSIduK3tvzHaMbd0p1LMPtZWlqASjkE3
 CU3zhtABub1FDg1KZj+aHkN8SNWBeIqC3OfReSBavzN8OAyFMbC8scJz7
 WIPBHd+6gTkRFDBFkAmkuPcAk5OOTHyhPA5apAo41JWCOz2xBQFsmR+xj
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VI7kPOiG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 13/14] ixd: add the core
 initialization
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
X-Rspamd-Queue-Id: 37FDE48096C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bharath.r@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; R, Bharath
> <bharath.r@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 13/14] ixd: add the core
> initialization
>=20
> As the mailbox is setup, initialize the core. This makes use of the
> send and receive mailbox message framework for virtchnl communication
> between the driver and device Control Plane (CP).
>=20
> To start with, driver confirms the virtchnl version with the CP. Once
> that is done, it requests and gets the required capabilities and
> resources needed such as max vectors, queues, vports etc.
>=20
> Use a unified way of handling the virtchnl messages, where a single
> function handles all related memory management and the caller only
> provides the callbacks to fill the send buffer and to handle the
> response.
>=20
> Place generic control queue message handling separately to facilitate
> the addition of protocols other than virtchannel in the future.
>=20
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <Bharath.r@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ixd/Makefile       |   2 +
>  drivers/net/ethernet/intel/ixd/ixd.h          |  10 +
>  drivers/net/ethernet/intel/ixd/ixd_ctlq.c     | 149 +++++++++++++++
>  drivers/net/ethernet/intel/ixd/ixd_ctlq.h     |  33 ++++
>  drivers/net/ethernet/intel/ixd/ixd_lib.c      |  25 ++-
>  drivers/net/ethernet/intel/ixd/ixd_main.c     |   3 +
>  drivers/net/ethernet/intel/ixd/ixd_virtchnl.c | 178
> ++++++++++++++++++  drivers/net/ethernet/intel/ixd/ixd_virtchnl.h |
> 12 ++
>  8 files changed, 411 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ixd/ixd_ctlq.c
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_ctlq.h
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_virtchnl.c
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_virtchnl.h
>=20
> diff --git a/drivers/net/ethernet/intel/ixd/Makefile
> b/drivers/net/ethernet/intel/ixd/Makefile
> index 164b2c86952f..90abf231fb16 100644
> --- a/drivers/net/ethernet/intel/ixd/Makefile
> +++ b/drivers/net/ethernet/intel/ixd/Makefile
> @@ -6,5 +6,7 @@
>  obj-$(CONFIG_IXD) +=3D ixd.o
>=20
>  ixd-y :=3D ixd_main.o
> +ixd-y +=3D ixd_ctlq.o
>  ixd-y +=3D ixd_dev.o
>  ixd-y +=3D ixd_lib.o
> +ixd-y +=3D ixd_virtchnl.o
> diff --git a/drivers/net/ethernet/intel/ixd/ixd.h
> b/drivers/net/ethernet/intel/ixd/ixd.h
> index 99c44f2aa659..98d1f22534b5 100644
> --- a/drivers/net/ethernet/intel/ixd/ixd.h
> +++ b/drivers/net/ethernet/intel/ixd/ixd.h
> @@ -10,19 +10,29 @@
>   * struct ixd_adapter - Data structure representing a CPF
>   * @cp_ctx: Control plane communication context
>   * @init_task: Delayed initialization after reset

...

> diff --git a/drivers/net/ethernet/intel/ixd/ixd_ctlq.h
> b/drivers/net/ethernet/intel/ixd/ixd_ctlq.h
> new file mode 100644
> index 000000000000..f450a3a0828f
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ixd/ixd_ctlq.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2025 Intel Corporation */
> +
> +#ifndef _IXD_CTLQ_H_
> +#define _IXD_CTLQ_H_
> +
> +#include "linux/intel/virtchnl2.h"
Every other file use #include <linux/intel/virtchnl2.h> why do you need #in=
clude "linux/intel/virtchnl2.h" here?
Please explain

> +
> +#define IXD_CTLQ_TIMEOUT 2000
> +

...

> --
> 2.47.0

