Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBA5Ob/us2m4dQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 12:02:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FDF281DDD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 12:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79E134046D;
	Fri, 13 Mar 2026 11:02:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qsTXBLd_-9q1; Fri, 13 Mar 2026 11:02:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 667C3405B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773399729;
	bh=CpXQ2memlGkshSYZWYn+DRj/R0g3Ztj4VjMYHd7UPoI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pk+6I/jt1C4kCyHjhqpmQCinIdU6VoSBpoCXrl3Fn7u0nWgQvSi3kkz6jvrIyp7Kf
	 7+ipauw7p/kEtUQ4yFofBMwe/iqACOvRhCj4ist5W8g7+LQLUCx16U77ehZegPakSk
	 OxWwTmnhcV9PipJfMhlhWKtf5YOl9eIUYOfEENLbY1reiHgBroJpYHNRBoNJymnVgK
	 td6dNSqYXAtxH7wVrjm6zHW7mYmj8XPEHIXK7MiFj8X1vjTONfDKdzc4NmmLEV+Vsn
	 TCKSya11Oce6LiLFK9blTOaKoL93nB9mp9wbesNNIBA9a8lp+PmGSeV2Kj6Z+MUlbK
	 ugtPadlssn+Dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 667C3405B3;
	Fri, 13 Mar 2026 11:02:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 97099201
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 11:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7524040368
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 11:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wBeY6jzdAkBJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 11:02:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3BAF74009E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BAF74009E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BAF74009E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 11:02:04 +0000 (UTC)
X-CSE-ConnectionGUID: jV9/aEIzTR+U+1ORXFoLFA==
X-CSE-MsgGUID: UIIqBMYoQYescoMUjZ+csQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="99966519"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="99966519"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:02:04 -0700
X-CSE-ConnectionGUID: iumt8Hw6R8Kr8cM9ariM1g==
X-CSE-MsgGUID: 1Zd/vImSQBSiggfbmYGaGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="244152118"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:02:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 04:02:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 04:02:03 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.19) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 04:02:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YTydGF8zp2ftmOaZohp07blKh3HZlqWlZf6mCg8EDcl01KqQotvii5vp5GTiSVuotuQruagQmxieOP4PllZEszRGN95a9LKlxQOaVVnQrbSLC+sxkiz2I5j+JyAML6Oe2FBAtGKTv97N+4GpQbPCFXSfKDU7cuZJKpCoC1FsM/xiFJyDfzJqcGGnyHZeDN/hq6wsDNvMBpcweYpfr7+vlxy8R85QSxB2CQ9Sd3kPDFpsksCKklrSwXHNIuPugvdAVGEWJUMVwMGu+6d9+mqiMmLq9teLsfeNZ3tn04MvMkVPoUueRJU7p2zienqIR5MoPfPu7JSQRhZHj4Pa/0qGPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpXQ2memlGkshSYZWYn+DRj/R0g3Ztj4VjMYHd7UPoI=;
 b=iXSfgRumvQNyK7tUnSVYp0GE8xdzL8hDf7XeQYQzzdR/MNJP0KQDwDQTK18My/BoIodnLmDO7NiSlV97L3SY/N32v1fE33lXWlTVhdIC8S1UXo3DSqDrapVTk4TOuNtEZTT8LkQb59P24l6gPT4mz8Iey1N5m4wEDOWQW7N53ibjyAIsOrj0575PxEjMnvY9ZP7QNuNq1YPKEw3hXhQyKbD088dTRepgQk9cJUAZ277h3Jpjuiw+AgWnKPn/RPwmRbMkU3SrNVEojY/0wYUCmhUSa39ltq5NWBHurBmn1udfbzqbstefCrN+9vKITuy1mdlV1hxzSzeLxCt1rU07WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB8118.namprd11.prod.outlook.com (2603:10b6:806:2f1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 11:01:59 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 13 Mar 2026
 11:01:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Schmidt, Michal" <mschmidt@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
CC: Xiaoqiang Xiong <xxiong@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH iwl-net] ixgbevf: add missing negotiate_features op to
 Hyper-V ops table
Thread-Index: AQHcssKmqAfFA8HfP06whTfdmXHofbWsTAjQ
Date: Fri, 13 Mar 2026 11:01:59 +0000
Message-ID: <IA3PR11MB8986823EDFC614EEFA90C9FEE545A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260313082230.195208-1-mschmidt@redhat.com>
In-Reply-To: <20260313082230.195208-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB8118:EE_
x-ms-office365-filtering-correlation-id: f2a3b494-2008-4358-628e-08de80eff317
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|921020|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: HvEuiM9a0xBFKXLTEc3nOG0CJpEaynKa1crwg8YxlzNgD7jM77MaGps56vxpdfASDiQTF/lF2uyVxZ0B56/6QyOANdN7ExSkqDuamNLDwjl+QyVzyDW7Uc4b8sIl67nl1y/vPFKGcUjzdxe4QpGJNXRWCtj84iCM4S/aOIjL/vBYRCCnO9RjAdRSecKkXqRJAg9Lr8gOTJtgG4Z1TRN/PVSsDnQME36GpETdYyvk1km2R1FcKX1fe+UpRyQ9kKReH231lgkwdqsh1HlrKOpLlLW5ffWURNaXqjHZWoGbQQGL8ZXNu1OSiIyTzf2RfjSFMRR6UTi3XsiyG1uXgaNbI9XywuU0Tl8F1L9H4VTmbCZy1OP2FbcZUKaaib0nx3/W4Yu0J8og2em+aFVwk1W944p7FOVO/inhi+zMQTrjSz6mJaM+s3h5umIgGM7ZG/ewc3K7iKX0NQFCtsuXctqMbEhWIr+XpT7+cq97cpj+dOJ/M4lC1Lwb8gxgcBy3oOG60ShcU3xgogEz/206NCigAiug4uN9b5qS4dKqlh/veHPeeajIk002ON8bB2eNxgqxbuPMAixgBPIN3JEc0NyMkqkWb0DkgecUn0Z+ZJ55Ywc7Gnn86qjkNSXiXDH1Gowl+BC9BM0Q8/RASGjpWy7WbWDcWNYwtXIRlafiRbgYX6REiOgalzK2V0O9ZSHGIVeWcUoWGVpZZ6RImu/QPW8/8gIo2JNy2BX1/m1KhCsxeboP+EJzQYcK1UdUCOC466UaJr9vBTexJoyeR7GuQaqTojhjFtbebu4juYHbCv/s22WWZmJKTQouAtSZ49foDYBs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(921020)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W88wP15NW7r4GEbtqdkCPThW7t9+lHYTm0v+DVrGXU9r6/DXhJUiErJPMQG0?=
 =?us-ascii?Q?45VZd3k5IiAt1xuV+ew5JnWI6dOqaxwom7dBEzRCtRNOiPX8CJ2DYP9bvnv9?=
 =?us-ascii?Q?d0cheDC1pMgjqSxgxciTeMZjHDQuz+rl5OY4nm+zh3vSCNvM/OrLnWj4Kbmv?=
 =?us-ascii?Q?atzVVUpMXEqkb5wg5ykjiiRwTcN2b3nePit6+847h8TLckIJ1Q+J+YGQoXdT?=
 =?us-ascii?Q?GEmpr4iIR61JxsvAorSqf47W9axdbxdRb+xb3j3r77tTZ/L02vdHBdQeEcjP?=
 =?us-ascii?Q?TRcquhJwKkFlauGFHFpquRies+xftJOPt3+8/Hq5GgOKfvBfssrKA5hgwJKa?=
 =?us-ascii?Q?asu2Rif/CcY3Q8kdRDu5SojxUgfqH7RIWOyFTRRBxKnA8Zvhm54xYkBjiaDi?=
 =?us-ascii?Q?KPKfOXESvevVe2PAuc8lt5+gauPW/syc0Y0DQaJfW+8dbREa3F71w8c1RzsD?=
 =?us-ascii?Q?BEdkChZXrSc01JybvS3X+2t8wBiFhMQabzXElIR/ivX0erZ9g/Rf/yKGG91s?=
 =?us-ascii?Q?E9ks2eZNJJpb90fH6kdcnwWFk2SNM/OJ27JumHB3JY/Xe4AMddmhWPqWkbFr?=
 =?us-ascii?Q?/DShuSAODN8z3EDsKqlFclRnGqLHZsmPBD1yC74I5tqf4P5JbJE+L8F0AsGn?=
 =?us-ascii?Q?ljNwxP2/k8ZUgLkmDZioqkrt4qd3HxyiG48tgT0heLVcApZDr3vT1u6sImOQ?=
 =?us-ascii?Q?l5bTZgC1KtxNgI/rfZtBLqjA91kDNacNyOSQ7T+uRW6lYnejvrCdNu6lVBId?=
 =?us-ascii?Q?ZsPZ7jsSRnNfPm7FmSbr4NH4go64u3TLKUqrFBQdTKMdUhmN4SkEnr7skEYk?=
 =?us-ascii?Q?j+FtFvMjlV+mRjSaJ3G5oD0bgI1VjJHH8nDHvuwK78aqiycBfjBalMO1UA6l?=
 =?us-ascii?Q?rIIsQmSGAErF0Kw4gM4jU0wdUxJ7NAbGQnEYDPDiguyBIk0QrKQJfTEFqQ7p?=
 =?us-ascii?Q?viUOxKWnofQJ8JeR1xEF5YISd24ka+e1+zjnGj0KyQQBEI6QAdPBXcp/E5vK?=
 =?us-ascii?Q?+iCWm/WZE3bvvLJX169EHoq+kqKdFBkJMoNj0okWbvDNj8kPLJjC5zNmykv0?=
 =?us-ascii?Q?lbwfaRqp6HQWuDMo98QyM4v7RL/rPhqQNNTMoTf93rgCClf8+w+3ATRDZMOh?=
 =?us-ascii?Q?UYJJ71Vh2NOfmJH98juflL1+J4pSvgc5bYLJIlHwF3eY0HkAz+yvkQ2QkgXF?=
 =?us-ascii?Q?tilHzb+QDcbCrMozB4G9MNkU/qWDgi26ZAz2PfJ1bYhiHHoY3o397kpCgix8?=
 =?us-ascii?Q?Xqg7tVVjBPRFWzD38OdaOCOur6uXUyuU5dK7zZQ5QHG+PmQbwlhCP+7eCcJ9?=
 =?us-ascii?Q?599J2sOLv/4M3NnY8f3KKnTF2qm0NXF+/2LBUAVKqfZirVWiPAVI4n8bIdw6?=
 =?us-ascii?Q?ZpY1ss8EGVSlD/qAdPwcAHfzbASfOu0kUAQwcyZPHh6Un9aJkQ6vzsBK9n64?=
 =?us-ascii?Q?9fDR/s9tJy6s6j+pGsaSHHjnUZg4xnVgce6B8sLhC0iqwR0WlxWBSyYduEWD?=
 =?us-ascii?Q?qBbvhBvMRnOUy9eT0C/CDm5vtUfz7J33n4yUH0ZSdivGy/M4+eE21Eg2dJFe?=
 =?us-ascii?Q?RGwXshFSfY/HztfjZJEc5QYbA2C2euHRM9ZKeCWF9P1H4dnGYqb4BeTpz2VD?=
 =?us-ascii?Q?n3D9r5uFUocP5Vwhlk3pqIcWKE+ozbyKnxp+a6S0/Qf1+zUcE8nKYPgYBFHm?=
 =?us-ascii?Q?9C0dX+ltDZjYHgt2RWwTgljXBlUZ0vlC4US2MziURyPJRPCWR1p0BgYa+bOx?=
 =?us-ascii?Q?W18p64651F1pZHuf0nsKTLyf7wsTB1c=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cD9m8tncXYPRbJj1M9zB6We9lJo/9A/iP8rLKEXxtCQ9Tjav30rXn+T9bTzhWrG7WBa7z/P6xg7DvqrDvfLe0OhtrN2a2tg1OANwZnvN+PVhDX/Q0o1Jdl+adLBnd8zDNZjIZSQg7uWb+fe0VfbFXyRteeY/Vnt7zR8xM2yZmfBZHSh5bVoFwuOpXWTa3PASw48kf+knRCiHBWMQGACxcFxOpFwCwQ9cAoBEFsvFq8h645FKS1Q5T7ad8rAVSyActY6PZkEt8nMQe+7C2pE8BaZeVPUkJt9SXFVsbxFf0w8Ln4nc17yb72HMDpW1L4CBNHqokV2UJA0+Sy2jkxqJIw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2a3b494-2008-4358-628e-08de80eff317
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 11:01:59.6574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /vgGroCoYKPuyicEkFEyxkmvk7PRYoEVYj8kgD1ZbkNlLZ3IK/3y5SqJg0qM07q1o1GKECCB/rz4Z8lDSKd6621buYH/CJ5uRa6uI5hy//0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8118
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773399726; x=1804935726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XxsQ8ses33gmYyyLVscdmUsJEd8Yj0TtIzdIAUrDtY4=;
 b=Uw1ld9JRLEee8JBzYsruqeiiSLu3uFWBten37AGzxAr784vS51Rn5acD
 SHhPECk8phgWjjBylsmDJK96H6E1UsbbhwXPJklXteQJQ4gc5zz+T9nUS
 Nl7JVV32okc5HHXOOdzMrlYaJvJCke0SbR0K5GhBWU8sflJKkeHFzaMcN
 pS+JyDaPTGV1r1pN21qiRuHyg6i8wdCDsPd5Sk58o7z2VLSxSzSZZvfeS
 7Bh+Hmt16jB5/e2d+YC+uWRnGcujNQzg7Tt3tOb8s/w0/6uZomi/nBTm9
 0AOT02S20AZpQly9MtCSeZj6SV682vNCWu03SHKeORazDm7eIHVP5BE2o
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uw1ld9JR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbevf: add missing
 negotiate_features op to Hyper-V ops table
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jacob.e.keller@intel.com,m:jedrzej.jagielski@intel.com,m:xxiong@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RSPAMD_URIBL_FAIL(0.00)[davemloft.net:query timed out,lunn.ch:query timed out];
	ASN_FAIL(0.00)[137.166.211.140.asn.rspamd.com:query timed out];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 69FDF281DDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Friday, March 13, 2026 9:22 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Cc: Xiaoqiang Xiong <xxiong@redhat.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [PATCH iwl-net] ixgbevf: add missing negotiate_features op to
> Hyper-V ops table
>=20
> Commit a7075f501bd3 ("ixgbevf: fix mailbox API compatibility by
> negotiating supported features") added the .negotiate_features
> callback to ixgbe_mac_operations and populated it in ixgbevf_mac_ops,
> but forgot to add it to ixgbevf_hv_mac_ops. This leaves the function
> pointer NULL on Hyper-V VMs.
>=20
> During probe, ixgbevf_negotiate_api() calls ixgbevf_set_features(),
> which unconditionally dereferences hw->mac.ops.negotiate_features().
> On Hyper-V this results in a NULL pointer dereference:
>=20
>   BUG: kernel NULL pointer dereference, address: 0000000000000000
>   [...]
>   Hardware name: Microsoft Corporation Virtual Machine/Virtual Machine
> [...]
>   Workqueue: events work_for_cpu_fn
>   RIP: 0010:0x0
>   [...]
>   Call Trace:
>    ixgbevf_negotiate_api+0x66/0x160 [ixgbevf]
>    ixgbevf_sw_init+0xe4/0x1f0 [ixgbevf]
>    ixgbevf_probe+0x20f/0x4a0 [ixgbevf]
>    local_pci_probe+0x50/0xa0
>    work_for_cpu_fn+0x1a/0x30
>    [...]
>=20
> Add ixgbevf_hv_negotiate_features_vf() that returns -EOPNOTSUPP and
> wire it into ixgbevf_hv_mac_ops. The caller already handles -
> EOPNOTSUPP gracefully.
>=20
> Fixes: a7075f501bd3 ("ixgbevf: fix mailbox API compatibility by
> negotiating supported features")
> Reported-by: Xiaoqiang Xiong <xxiong@redhat.com>
> Closes: https://issues.redhat.com/browse/RHEL-155455
> Assisted-by: Claude:claude-4.6-opus-high Cursor
> Tested-by: Xiaoqiang Xiong <xxiong@redhat.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/vf.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c
> b/drivers/net/ethernet/intel/ixgbevf/vf.c
> index b67b580f7f1c..f6df86d124b9 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/vf.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
> @@ -709,6 +709,12 @@ static int ixgbevf_negotiate_features_vf(struct
> ixgbe_hw *hw, u32 *pf_features)
>  	return err;
>  }
>=20
> +static int ixgbevf_hv_negotiate_features_vf(struct ixgbe_hw *hw,
> +					    u32 *pf_features)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
>  /**
>   *  ixgbevf_set_vfta_vf - Set/Unset VLAN filter table address
>   *  @hw: pointer to the HW structure
> @@ -1142,6 +1148,7 @@ static const struct ixgbe_mac_operations
> ixgbevf_hv_mac_ops =3D {
>  	.setup_link		=3D ixgbevf_setup_mac_link_vf,
>  	.check_link		=3D ixgbevf_hv_check_mac_link_vf,
>  	.negotiate_api_version	=3D
> ixgbevf_hv_negotiate_api_version_vf,
> +	.negotiate_features	=3D ixgbevf_hv_negotiate_features_vf,
>  	.set_rar		=3D ixgbevf_hv_set_rar_vf,
>  	.update_mc_addr_list	=3D ixgbevf_hv_update_mc_addr_list_vf,
>  	.update_xcast_mode	=3D ixgbevf_hv_update_xcast_mode,
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

