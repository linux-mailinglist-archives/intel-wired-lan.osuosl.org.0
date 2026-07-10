Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ip+KMvrEUGpE4wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:10:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDE573979E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:10:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=kfoXiyt2;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72B29811ED;
	Fri, 10 Jul 2026 10:09:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kTaHAWypQa5O; Fri, 10 Jul 2026 10:09:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D47AE811EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783678198;
	bh=6HA3FeO417PLDnfzbYny6UsZFWV9XW/fIxpwfC/AY8A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kfoXiyt2H99XbqSp5p10KRJIaoSrD/iToSThxCd0hfOsZpJqygZJzCcL2UeDlXAix
	 7hwFuLSjtEMbZQKrTJrCckKKQeuFfmy0ZSFjPkZxNsHNsjtRYt9IaGUZlgDE8FL/o9
	 m9KOEBqVuKt/5+9PBLecl6hAxi/rTRhxkYmswB49mYobU1nA/ge9l/5Ox8kw9SMY1C
	 SIzZKxd1czgyLa/vhIWIZMtnymuFSf3RmfHsdQFAocuIgHuv4LY2C3nmyNx2PXPR/W
	 8OP2L6E7+roSYAZyKlW2600mcy4wKEYHTjjI9G858Qr51eY7zs2++ZIAU53gQ/gF06
	 M2ptokmTBhh1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D47AE811EE;
	Fri, 10 Jul 2026 10:09:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 13226A3C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01B0781142
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:09:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gruXEeik827w for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 10:09:56 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3C5B7811DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C5B7811DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C5B7811DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:09:55 +0000 (UTC)
X-CSE-ConnectionGUID: n74QVRreRkeBdq4p8tHkcg==
X-CSE-MsgGUID: X3PkuUjIRJqnQrkYCj1CwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88060152"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88060152"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:09:55 -0700
X-CSE-ConnectionGUID: c1QCjO2MSWST7wwhvZINew==
X-CSE-MsgGUID: ZmVDKiaQRrW7Kc6GacguAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="293047432"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:09:55 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 03:09:54 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 03:09:54 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 03:09:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ItQpsVRCGwOC/h32yqH8n9jV6ZV1JDub5w8ofGydD/MVW9IMzjb3LQ5oUnQ4RlJqrQRI+lzZyYtxKJ789xipNkHWNrZ8pgO3Gw99O399p5KRoUj5Jglq23l/v7UgKmn0CBLVJ//4preDMTLV1RkfsInHf+HwdLYVwNhmP1dCm6GIluLS+lnj9CL26UB6CyUZTcHUO8ZWkDNJWhwQJ547LMyjoLEAN5BklBpMXtiIOIf4cNO2jt+fmp+bJPeksw6s+BcOvtGCE5zWmNEukvUmFehAbesfMS/qTjUXMBDy0ZZ59/0Y9I8EpitgaKIu7TkrKN1AMInQEW7m5RmlofZF3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6HA3FeO417PLDnfzbYny6UsZFWV9XW/fIxpwfC/AY8A=;
 b=ACZtcHODMFdpC9IIRhqEOfZ9ChExqmU/impsuVCCfCdCxt/fql32LmvGuUAiTTaPp+eWssf/NVbuAcX+CviyDVoBa4zCY7kbgznUHZEPfvIQORUkQnWiB80GiaV5eI+L0L/pLPjXhv+05JVFSXZLCSuis/2q6q+w/vNcr8pDumsfpH8mf69iwAdd3vG8x5yz3QSWpQ2nOtywcSeJfG+8jGzMNVkd9hhnRsf58ENL68M0MfJmIoP/jxDvVsC3s7mTOSsedOXUVR9dEj2QXvYJ44HZRx4mbF8yw7SBx7rRpc+06xm7MK3twNXl0IvDB8SRQcqaGL2aQt08hPQjxc9mLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV8PR11MB8509.namprd11.prod.outlook.com (2603:10b6:408:1e6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Fri, 10 Jul
 2026 10:09:51 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.014; Fri, 10 Jul 2026
 10:09:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vladimir Vdovin <deliran@verdict.gg>, Lorenzo Bianconi
 <lorenzo@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Andrii Nakryiko <andrii@kernel.org>, "Martin
 KaFai Lau" <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song
 Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, "KP Singh"
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
CC: Jakub Sitnicki <jakub@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
Thread-Topic: [PATCH bpf-next v4 2/6] net: veth: Add xmo_rx_checksum callback
 to veth driver
Thread-Index: AQHdDxlfLpOsSXhOZEymmxGAxOsScrZmiinw
Date: Fri, 10 Jul 2026 10:09:50 +0000
Message-ID: <IA3PR11MB8986EFEB423FA81E72D2542FE5FD2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260708203410.45121-1-deliran@verdict.gg>
 <20260708203410.45121-3-deliran@verdict.gg>
In-Reply-To: <20260708203410.45121-3-deliran@verdict.gg>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV8PR11MB8509:EE_
x-ms-office365-filtering-correlation-id: 8edbcadb-b6ab-40f9-f980-08dede6b6158
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|23010399003|376014|366016|1800799024|38070700021|56012099006|11063799006|921020|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: MdqU402MNRqEU02jTbD93STENpXC4ZsJE85O2yUgw26KnEjm3Cwu34QnSqzp/RA1PM/SkmnynikuA/yoyj8gTwT063hgmUBvTfafDXU/BxIINe4Y2aEu814k90nTb3PhlZElXeHhx2yWwG4kDYFV3MWCt1YYl2ZJDt5xZzLhua3uTzR6URyv2bHkJz0GJka+p52hesd3yuoFMhFNBUM7HIfDzc6vTuFrVdhGc/kMJe/w7uBp+su+oZPiX6DNQuCnhlFIaSMimvZBbdARM/e4VAFqHrSAxC23I0o+Q5CaFws9JyG0g7kC3m50ihiQ202Zizw1gO/RU56FSFKlFPgjNUUgdUxtdvKmCrLgHEKJbu7R99E6ukOFtYiRmdP3dNTnoW3XehghWsDEJJfoq5y1wlfJb1Xcly0diBumuFr5n1WhccGHqvSFYOjLk5ionBp/4iIRq8Ygw2iatehWfqpFGUwI166L1EYYgBZrz9hRwa0bxruIsTb0HV1gQv9dUGicyrtExmhveCUJe4dlSh+MG/ObTwJ8CahzsRLbTygWCSv/t1sUE/KaWWKDJQ/zwhmQF8nZ/Y/SDToZPjIavEBvdDr7jhVyIbCDA0X5QHAF4l2CbbC2mbqX1YfVXh/Hq6iSu8yas1FKrQJvcPsNMPV/XwOCE/lf08DuBDjIZrFCQ5mkWJTYEnfjgURKP+2htnSVtMPMtp/iTcXL5ca2S1bZ3307tIQ6bS6S51jDYIBHgpassG7XQMOjSQ+bwPpyak4g
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(23010399003)(376014)(366016)(1800799024)(38070700021)(56012099006)(11063799006)(921020)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fpzt9vYYiTpJ5CR5J6xZ0A0ez97QhEKzK2QB7fwBbks0S9kV7RAY8w++LMo2?=
 =?us-ascii?Q?Y6UnbTVhXFI6XN3Xjuj54ytzANH8zDJhpgZma0z21EXJZFmTaacP5bX9hOuQ?=
 =?us-ascii?Q?imt/veKToK2t9pm/X7pOI34rcw2ZfmaqlV7vhmm0AkxMoQf6NtRIgcOG9HIo?=
 =?us-ascii?Q?9gJpInzgT44JYfP2QTJ8MSmbqrK1Ta5DkWw446cEGaV/wyUhziTGIm6xeIDg?=
 =?us-ascii?Q?r1vR0qtkcj/UV+L4TJBi8prYYE349wmoWS/WciyzS63vpQ4Q8NpVLYWCgiLw?=
 =?us-ascii?Q?XR0Nmt5AUEYPedk8BQdSnfRjZvg4Ew/laDYl6r/R0+eqfgtulayCoSM1nLlG?=
 =?us-ascii?Q?AhyIGmRGHk8/dt7OtySB/yi/lF7vWCQm4wzgtpFitpqdGt5LmthK2qjx/Jb0?=
 =?us-ascii?Q?Y5dSszUCYwlJ3XvcqZx6a5achU4EQ9FPvKVbbHpDocDtf4tmjVwZ3W53zfmH?=
 =?us-ascii?Q?n5SmnH7C/4O0aDm7rEjt9hO/bEMx+x2ERPB2StWrjd78OfWEcx177NiIhkX4?=
 =?us-ascii?Q?wGHn3HuUE8ur2UbZh8XYiVfNYQA73lDoGQEhaDGaCy/Q15qlYLz6rDINH1SE?=
 =?us-ascii?Q?gGwixaHZ1FPvtAJKnPI5blW4vproTJk1qQmCSAiCKsGm1Rk+UXE+xCEuLiFw?=
 =?us-ascii?Q?LTh4VOHxVAATdFlqecP2TvOE64S/Y4eMBpfgvxhC379JZuZxgp4L0k7KU/1y?=
 =?us-ascii?Q?en4wnFS+qywpxc84I1kFWCJmhtxssaTX2608u67gDzyNloCpHjOearjVvLTJ?=
 =?us-ascii?Q?HMb5nZy7Vgkykk0ftcJpU8cqiipXfSeJWorg0Enr1BhBOqfxDdJKZ9Dnkosh?=
 =?us-ascii?Q?bCN2W2sOJODvirTSWPa7aQARA31D5+p6hln2BE6GFkcqch6yZI/adZ+5N69h?=
 =?us-ascii?Q?A3dvsq5B1cSdunOdHV++JMf3dMwiA4qFQfG7wEo+vEh+9+ACD3efI7qQU5dm?=
 =?us-ascii?Q?hYur0plVs7LjBSzMLWRR5OTvKWalwFbcuNIBnJr+Rh7oDGIzrYOcMZAvynqn?=
 =?us-ascii?Q?Xc1G+KLDqws55SVfTEwSfqM2WuvfT/Dnx0ZK2m7jpT1pZoa73HF8TWdjXerW?=
 =?us-ascii?Q?UGsjOGBcc+Lg8BPiQSJJaiTMXlYIAKYKkDEgu7RnHw7CmZuR2xssdwm63qgB?=
 =?us-ascii?Q?ejqE5w6tR3udBvXmNIpJzVuqLMMTEgQgaiO2aFFseyDJpmiuYqVxjmaTU5Fg?=
 =?us-ascii?Q?w4LpKvdxiPPisCBxkMdrgpp0JfPmIpME6kL8t//vrrmgVv0kdpU3ussd0nXn?=
 =?us-ascii?Q?E+r5F+imphqY6D90EhpyrBEnw5g5b1TnOPnKkg++WTiHsVS/Wi4uK8ZMJfHH?=
 =?us-ascii?Q?/1nxPQACZUVfg2zGNdwX2nBGplMtIMvBmeGG8MCEaRlNbUrJWG0EawdIG9vQ?=
 =?us-ascii?Q?8TM83bB2cebWiylyCVGV61T+t6ckNVao9/IyidplQSlZhk4cF55fuJTB8GJT?=
 =?us-ascii?Q?CCVK/+TIT1RLUwlB7yXnORsMQJONfQ2XXxSroLFxKgCsd+GVetoQmzpMUxN7?=
 =?us-ascii?Q?bkKyByo/YceI4DrHNu1KR9rtGe///RXJttipt9ydmQEm+MBBW4duciuZ/BNT?=
 =?us-ascii?Q?90MgZBVGJvDxT/zxMUcvYXpxABT/o7RR/RuaTNbsHo4ckOD7jbgz1XbSeMvI?=
 =?us-ascii?Q?QBXfF29hPfUzStpj3umU2j2MpZHSUNycQQ3xi1Xl1Z8wbfR9GzDnIGOoxMn7?=
 =?us-ascii?Q?adxbWk2YQ4zwRYxWjGnY9XaQB0+CxAMOyTnPmGlDMq7lLvrf8QklcX7fh91L?=
 =?us-ascii?Q?PmmWvdWCoA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: g4Dg0jwdDR0/Y+1S+Wj8fL3SK51EPiC2w5eOk1WIsyH4iVpQWDSAjdtWhdrF7jyKW0IuHaKGcwm4NSZTsRII/TFtIUELohdVq/7yALxMB1AWG5EA9mbSSxHz388WhGDmcNtyfhxhcyFeaHnl4Yg0ul5h7JtrGkgrrb1sYSgXCs4YagDc7FMeymVF9XvzIIwaKxR0UN7X2V6aa0o6zTcOoJIZ4pGo4gh8tGJovv+RET4DZ8/v9e4M3LfIw4WEaIP9E1CkP2uiGWHTHBZRizjF1bGwOzqASH/d+jcJ5PhMoqUreJjt9C3j4XQU9ZWzGPKljJ3dJek/6TFCTO0j6f4zBA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8edbcadb-b6ab-40f9-f980-08dede6b6158
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2026 10:09:50.8799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fG2unSKpQIpVK3y8SCRyocfFaSzKb5ZmEj0N91FSxFBDbe7kAOazOQr/RO2Pm8Yk1uLg92dT5DfaH33RmAuoRnRY7xCAQKJOmJJpaOUSHpQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783678197; x=1815214197;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CRuv7oIh2VACW/EI+O8EdMN+5Xlv6yP9Pn8CGfRQ1l8=;
 b=KFD6xl8PUZFEsp2zqLvQXdcR2RQOTjf4KSoETWpX19DCjfTz42cxirbb
 zo5Zycud9LqjjBVHIM7I1cZUsULJj+QNJUEQIzzOYiT3fuvvua4x5Ot3V
 7lar1m4VSWYGGk67LbqBdNYmazewSe+4RE+U4sHBW2M8Rz6lEsICvJKqk
 DnmjqHbOSsFzuio7z+atfzMTx5vYHJmHd0WdFstASErsmcToMopiKXk9I
 9DS2+MYXqFv+BgNtYIkjpXHUis7l8z5NpXZrE/2qjKEzKMeESi2Hd4HBb
 j21RhP4+OLM5GQ6S8I/Oeo/JB9TuomBVVpnns02KUiGZVyZdSiH+H1r0c
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KFD6xl8P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 2/6] net: veth: Add
 xmo_rx_checksum callback to veth driver
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:deliran@verdict.gg,m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[verdict.gg,kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FDE573979E



> -----Original Message-----
> From: Vladimir Vdovin <deliran@verdict.gg>
> Sent: Wednesday, July 8, 2026 10:34 PM
> To: Lorenzo Bianconi <lorenzo@kernel.org>; Donald Hunter
> <donald.hunter@gmail.com>; Jakub Kicinski <kuba@kernel.org>; David S .
> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
> <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
> Fastabend <john.fastabend@gmail.com>; Stanislav Fomichev
> <sdf@fomichev.me>; Andrew Lunn <andrew+netdev@lunn.ch>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Andrii Nakryiko <andrii@kernel.org>;
> Martin KaFai Lau <martin.lau@linux.dev>; Eduard Zingerman
> <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong Song
> <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao Luo
> <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Shuah Khan
> <shuah@kernel.org>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: Jakub Sitnicki <jakub@cloudflare.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; netdev@vger.kernel.org;
> bpf@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> kselftest@vger.kernel.org; Vladimir Vdovin <deliran@verdict.gg>
> Subject: [PATCH bpf-next v4 2/6] net: veth: Add xmo_rx_checksum
> callback to veth driver
>=20
> From: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> Implement xmo_rx_checksum callback in veth driver to report RX
> checksum result to the eBPF program bounded to the veth device.
>=20
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Vladimir Vdovin <deliran@verdict.gg>
> ---
>  drivers/net/veth.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>=20
> diff --git a/drivers/net/veth.c b/drivers/net/veth.c index
> 1c5142149175..498d894d043d 100644
> --- a/drivers/net/veth.c
> +++ b/drivers/net/veth.c
> @@ -1700,6 +1700,37 @@ static int veth_xdp_rx_vlan_tag(const struct
> xdp_md *ctx, __be16 *vlan_proto,
>  	return err;
>  }
>=20
> +static int veth_xdp_rx_checksum(const struct xdp_md *ctx,
> +				enum xdp_checksum *ip_summed,
> +				u32 *cksum, u8 *cksum_level)
> +{
> +	const struct veth_xdp_buff *_ctx =3D (void *)ctx;
> +	const struct sk_buff *skb =3D _ctx->skb;
> +
> +	if (!skb)
> +		return -ENODATA;
> +
> +	switch (skb->ip_summed) {
> +	case CHECKSUM_COMPLETE:
> +		*ip_summed =3D XDP_CHECKSUM_COMPLETE;
> +		*cksum =3D skb->csum;
> +		*cksum_level =3D 0;
> +		break;
> +	case CHECKSUM_UNNECESSARY:
> +		*ip_summed =3D XDP_CHECKSUM_UNNECESSARY;
> +		*cksum_level =3D skb->csum_level;
> +		*cksum =3D 0;
> +		break;
> +	default:
> +		*ip_summed =3D XDP_CHECKSUM_NONE;
> +		*cksum_level =3D 0;
> +		*cksum =3D 0;
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
>  static const struct net_device_ops veth_netdev_ops =3D {
>  	.ndo_init            =3D veth_dev_init,
>  	.ndo_open            =3D veth_open,
> @@ -1725,6 +1756,7 @@ static const struct xdp_metadata_ops
> veth_xdp_metadata_ops =3D {
>  	.xmo_rx_timestamp		=3D veth_xdp_rx_timestamp,
>  	.xmo_rx_hash			=3D veth_xdp_rx_hash,
>  	.xmo_rx_vlan_tag		=3D veth_xdp_rx_vlan_tag,
> +	.xmo_rx_checksum		=3D veth_xdp_rx_checksum,
>  };
>=20
>  #define VETH_FEATURES (NETIF_F_SG | NETIF_F_FRAGLIST |
> NETIF_F_HW_CSUM | \
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
