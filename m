Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sM8aJwLbJmqYlwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 17:08:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E67ED657D5E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 17:08:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="fPUR/KFi";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8619061BC4;
	Mon,  8 Jun 2026 15:08:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kFMD-t3FtbqJ; Mon,  8 Jun 2026 15:08:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E13C261BC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780931327;
	bh=8i6XZ/EGYfn/sMSq3cRBmgMpptYfXjov9q50jzFfsc8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fPUR/KFincuUEP1815l2BS9A4U/nIjv9A6pX8Iw23MF9QF2a+pjCR9xIl+4yB5iF5
	 /vkfjTj+IXHqfkJ75P6lBS80utbFoDmfOhoJb5GvHzndx5PKw0DC9wWggWwqSSP8Nt
	 V9Mv1i68/D8MSkcswlZXo62Po2nnMTas/cIdBJAI3BZkXRsG7dMqy1DAEDWBQzKhR/
	 XlEBmh0Wu7g457PDf7Jm1E/ewteNZy7WuWzkyTfwGz9Oa62kWD0R95uAotQS0shIwW
	 MAX8RrXSEUx+TNUEjRLJtCc3rzFN23E56Sg7ddME97rT8k52rxICFKOerKMYe32MXd
	 givSukD8yt+OA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E13C261BC8;
	Mon,  8 Jun 2026 15:08:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1AB1B187
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F35BF41E80
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:08:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JthVb8GFEZ2W for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 15:08:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CCC7E41E73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCC7E41E73
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CCC7E41E73
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:08:44 +0000 (UTC)
X-CSE-ConnectionGUID: K4pYqry6R2qOfCi0W5h1aw==
X-CSE-MsgGUID: KiLJG3tUTi2O9YjAbwN7tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="80801365"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="80801365"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 08:08:44 -0700
X-CSE-ConnectionGUID: ncRzkKTQSTG3pZAGpRC/Vw==
X-CSE-MsgGUID: ZBzO0OkuROeS0y6oUdXnmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="242610809"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 08:08:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 08:08:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 08:08:40 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 08:08:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EDAGj/ZqL2lK35QvVCb+RfyjS27K7zm8Yr78CIfEac2E6d8u28HtYoMXCCPAcde9v6ChjTtjcUpyFaj3+aQsQjZWRlAvTqRG/4eDJ2pH99SIagUlPUR9I9nJLjoMe8kUz+SFkHUmdKR7RRezJZEIn+3ZdRX3ZInMJ6oFN2Gu6hMFFWeB+k47RLOdjPtwIg+DLY5f0ZoJt8tc48rVAh1McpkaJqN0OO0rJlonmlqcvdZWeA97Faz2VBCIL87NJMjN5ujOramojn0S1iHb0cQ1PXHgEOgORAqv266u9P7adfLWJu1QCSUpxggB+dxEeE3y3lQwHJ2ekewAfxWdZtt4Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8i6XZ/EGYfn/sMSq3cRBmgMpptYfXjov9q50jzFfsc8=;
 b=cOEkBmeXOp/yErrMe+itprRe+xiUT2SMVpE2piHsQSvWbjlEcMUTbUlUnxdmp/4nYeSs2MSV5oQaKSy+Ni2HEivY+nHTKWn5vMq650WNtgHbSvvodP8ikWoPlzOYfRu/K9BKXffuHgHsCtn/CA8o9MV7SJwwhpDhneOzL3IsQtR+T2gBwIz3IN3QYIfFcflNB/jAhFsa9tbBFsglJifxVQVkjTUlkToXXhU+sXAbdkzJif1u2QwuwaijIZUCs2uz17ZqCVWGR7/AZGpNByzmRssNl1YtagyMyg810729OPF7vRAQnuNgtMN3olzTQd1bKpugfdOWRsdcYU0eeLYT7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MN2PR11MB4631.namprd11.prod.outlook.com (2603:10b6:208:262::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 15:08:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 15:08:29 +0000
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Salin,
 Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 01/15] virtchnl: move
 virtchnl and virtchnl2 headers to 'include/linux/net/intel'
Thread-Index: AQHc91T6149WsKLmFkaLMhatbPt8prY0woaQ
Date: Mon, 8 Jun 2026 15:08:28 +0000
Message-ID: <IA3PR11MB898614A46016327AA546C9ABE51C2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260608144127.2751230-1-larysa.zaremba@intel.com>
 <20260608144127.2751230-2-larysa.zaremba@intel.com>
In-Reply-To: <20260608144127.2751230-2-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MN2PR11MB4631:EE_
x-ms-office365-filtering-correlation-id: 371bc451-d9cd-45e0-ec2a-08dec56fcc16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|11063799006|4143699003|56012099006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: H0dqquOaaF72TIsOcEOzJBoYXi6khreylz8Y8GYtaC2GSz3gM4WrJIFDEFGuOth3lQk5wW6MVJGj2Wu9I2xp2r4nFwayQoH0u876w4aHLnzWYQTnrK7XsGhhsUu+f2M6Y1BA1NXLpCpM/MHIPwUOBLbFWwszTz98tGwDg68ZHDg+h+z+xctRjRtjtr1uPT5UimRemuS891DRydaobY2wjFS6khUhD5Lu9ZZhCjOqxZ2YrlABU6mVXCKuhbX2LWv85eFPaD+bE9dska56ElgNvq5q7dpdeoVhehKWuP+5g8b6gocwJFsPedTKbXO0pCFqiPa/RyDYyEE8I2pTEUsxfvlEKDkFxpNzW5cYzDkhDf3zvD5wvz9BwPMWF1G4ULUYHRi483ipcZlAnzj0qRAMmtwo6ieQ4Pz6pUHOoZ/tqJ2QZ2Fh2Ont5G1WlYDQ7SY18IB5Ipi23SV0PFf/WIXY504DAOV+fNhEnszUM77Fp+N0/9slLxiLZyJqlfxWcyMg7+pasGtATLUY9m/eE9Ii5VImFmk5EH969wtVEfNx/AiFhtZ6QPdEqTT4UTYavcsNVU8hJ6M3zQ7+uKas/2IF0OFs5V43dYz/39NOeRoUkyJQRc7IK33LfgFcNUjjfSVwiBj6vxd0ex01s5WJIaLosR/sa2IXlk7aH8yi/0EAsZcAgSYPEvkLk3+zYE4jDcRtOkR4wEiXHa5WFRHeXSbKhVjSuSAfGa0k/MINH1g7XZ/0lxwwIa3TrNPVg5QUg5Yk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kSgXwlSyAtOSWt+mPAgIb7iOFirZvK3ugEzJHd54reQ4B4NQCOIJobZSn6dX?=
 =?us-ascii?Q?NpZrwdNuISKgvxFR4o/dwpIifACXFsm8TqD8gvWnLUGWJkZuHUbWqPzy+BU/?=
 =?us-ascii?Q?mGTXFzGvnbMAVcBCQ5HfFeH70sfwIDLz+ObbjABAH/SltBT8Vpw8ur4bs4u1?=
 =?us-ascii?Q?kQKlyTHj8XiV3tNHNWVGpvAPAx44ld/GxGottwHsXC1qy49gQoUqHoQCOnrd?=
 =?us-ascii?Q?jsW4n5cWyOUrH0400e3d0tZmcmEtzufD9dBcYuMiss78DK8e44KDbswL9N+V?=
 =?us-ascii?Q?rVWR77YAw1Ps7POy/RiWcwtmbf1BkQYkzMNlgGlD3u6+zDYwP5zzSBGRqpL3?=
 =?us-ascii?Q?AYXNEQwoY2K1wfPNpjOn6wJ9z20d+ETWxbx/lrg2S/JjaYEYNgBIOXHi0LLo?=
 =?us-ascii?Q?oUDBIBhiSlWaCkREZYgjwHL1pSO/VVx4aolpBVtlRBA1f9OubbuJP4pBqhdZ?=
 =?us-ascii?Q?fO/EnjD5hSMjtMhvs5LXj0jPsa1BGFOjolcM9VX4jvJ/uPLkZiWnlDIZNoMa?=
 =?us-ascii?Q?5hOxG980JQCiUZnuTbfZ4Ad5F28MvUPvU9uNgy7wcHHVKrhK4lnOCoxG7D9h?=
 =?us-ascii?Q?Nk9RIFfMncEypT/LHEaxWXlYYiGdHR3Ljjq7e1mdYUXKg9JEinMTWWUnWtQI?=
 =?us-ascii?Q?SFkIs4gRR7hJcL45VT6Z6vumtBy9WniTD3lIwuchOMYcgyWpqPFnm8nB8JE7?=
 =?us-ascii?Q?YZs8rcIX0YRZwVlWrdpLSxDZdBFPiYGwUy2l2u/C0GN1xQbPET+Bdoyc76WL?=
 =?us-ascii?Q?Pk8HCveeOGON9+zE4Z/1R0VMoOcatTaH5OKro0IeiwIM3efQ/sy6QTgmfbTF?=
 =?us-ascii?Q?X2W69fbZdtAoaiff2IIuV+S8kYECyyMhHZkAqq3BYkqKjulTf0CUmhQE8tky?=
 =?us-ascii?Q?bNBcFXDJJZ87o5BmsXYYYuGOjmHIUNlUX7Dw0GOFLRLOlxpmciW1F1awrEme?=
 =?us-ascii?Q?WYiuBxgQbRDyK96i7lbTmcTcEhT1uYMiGhr25HN2tMsXyqwl5izPsPvQWjns?=
 =?us-ascii?Q?zeqSXCE7QiE7cED/fFG5Uxyi6+SIDeeTk+NeXORG0ArtklTBVyNSLwkesYoI?=
 =?us-ascii?Q?5l9DfLHxCJ1oBhJ3IeWqEgGsie6XfpLaZkvxySt0RcSD3q3ZI3DQQDBMsPjn?=
 =?us-ascii?Q?LQcLgONAWpu6/mtw0vEaDFEhKyuraRpKl90zIHJilwcLqgOs4WMgu6uR5if7?=
 =?us-ascii?Q?m26ZRAaN5YX45ro6gt9y/xYoZUEMYdoP1Jf7Dv4XgmP4mkxNxD/uRzt4O0bg?=
 =?us-ascii?Q?wLY7RCmpPuVJDj2Ba5DlnjQbCF56bhf8a3VyYA9OlIn8DVo2nQU5sqwvKv23?=
 =?us-ascii?Q?KryJAqWC0gsQ1NLb69EkJoA+fCiWdbPb9+Fl7PG7sCbwOiV7Kd36b7+FpynQ?=
 =?us-ascii?Q?OefXhkJjMznoCRbzhxuJbHV5TWgxpWxcYAih5El8s6EkhPv6AvpirAV3l3Bw?=
 =?us-ascii?Q?Gy9uGIa8oDOGYuKvrSR0oXbUwvvpFiG0j+HMEnfl+boPNDRPohsCKFTN2uwd?=
 =?us-ascii?Q?HFk2csjD77D5OeN80sMTnSC9QZthtCQC0WlIxXrHl00HhK06S82fElYN07sP?=
 =?us-ascii?Q?6/z9lSQfNEefSuhq5OMWnb+aV5a52QkjvJsB/8U4KHN43T0t+YxVY02JvkJl?=
 =?us-ascii?Q?/Lvmm4mgtkFYm2kUDlIzm0tU6Y9zPXOPYFFAbkYa+4Fc/ztVqYh8DGT6m+bO?=
 =?us-ascii?Q?UmYeheKUJl0lYCpQSrfrLr0FAPiuUctBm6ZkYOKQwd5zm376bhuGZPv5QXyX?=
 =?us-ascii?Q?+3j6Bv3VgXjmYHqclJI2xka+lUQTbfE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hjTj3gdEW0e7x1EbIoCPn1vx0C9EZNXGydY7Q4Nw1ti1MTPECorWXTApdLiGJMqV+u0HFc23kcgM8mLHVu/w9hexJMkHH0t9QNmrVSI6N+7Nm+2tHEuflPF1b5GfgmWEcY9CQU5VfGaW5FNPzqzxD4CwPK3GHojiRpKyK8i50QmzcVFtuomO/IwWLM50wNwQiDPZH06CrztMr607g22acEKWMbSfzkw+XkUU6dik1ESJAh0FVyun5TkzMQbBxswfu0Efgd9MQecFJ0NHzjzGQtI+4a7ZTKimseeVhFNRC9TU/9nyJUb/vprG0AU15mtKRU8RdMoCKlT2UfXDlOvGhw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 371bc451-d9cd-45e0-ec2a-08dec56fcc16
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 15:08:28.8950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xRM7EMP9/Cg9cNOdeZBgB6L51Q9vYXnR2RBRc8DWRnzYZPQiGYThPCv28vVis+jg0+oCnznkrgqSqUhno79odbPFKBo6jyom/wH5PEAWDDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4631
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780931325; x=1812467325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JT8t0MwJqxczxX7tns6+dp/k+SeoCDMpeGOXl9iTtCg=;
 b=jpesk7isetp3U4g3gpKy/QCBML8sW4b78OhAk8pONBcW34Tasj1Y/owX
 M0t1xfhKZ2Y9HZDu+a2AD1FPI4TvsSdh+S4A9C+phBxvN3jdt6+2kQzMh
 Q7QGfdwbXlGyx9mUWuTP5LScMF06qziLkCLiha7b48v4tenccUC2Pbihi
 Lic/rhYiX5pVz/MSCZ6COTYOnsgXAP9ZZxU+BDg7UR9WC4JSPqBsOcTsx
 h2D+wpq8PRXRv2r5RGbojYdN6mWeb+3tVb9pUC+CeW3rkMT6mfZRaBZKH
 nhtiytX+Vhmx10EFRKHW/GIw+a0TCp6duRv62AXrW/y0I0aedAhPeK6yL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jpesk7is
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 01/15] virtchnl: move
 virtchnl and virtchnl2 headers to 'include/linux/net/intel'
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E67ED657D5E



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, June 8, 2026 4:41 PM
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
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Salin, Samuel
> <samuel.salin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 01/15] virtchnl: move
> virtchnl and virtchnl2 headers to 'include/linux/net/intel'
>=20
> From: Victor Raj <victor.raj@intel.com>
>=20
> virtchnl2 headers will be used by both idpf and ixd drivers, so they
> have to be moved to an include directory. On top of that, it would be
> useful to place all iavf headers together with other intel networking
> headers.
>=20
> Move abovementioned intel header files into 'include/linux/net/intel'.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  MAINTAINERS                                                   | 1 -
>  drivers/net/ethernet/intel/i40e/i40e.h                        | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_common.c                 | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_prototype.h              | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h            | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf.h                        | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_common.c                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_prototype.h              | 3 ++-
>  drivers/net/ethernet/intel/iavf/iavf_types.h                  | 4 +--
> -
>  drivers/net/ethernet/intel/ice/ice.h                          | 2 +-
>  drivers/net/ethernet/intel/ice/ice_common.h                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h                   | 2 +-
>  drivers/net/ethernet/intel/ice/virt/virtchnl.h                | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf.h                        | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h                   | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.h               | 2 +-
>  include/linux/{avf =3D> net/intel}/virtchnl.h                   | 0
>  .../intel/idpf =3D> include/linux/net/intel}/virtchnl2.h        | 0
>  .../idpf =3D> include/linux/net/intel}/virtchnl2_lan_desc.h     | 0
>  19 files changed, 16 insertions(+), 18 deletions(-)  rename
> include/linux/{avf =3D> net/intel}/virtchnl.h (100%)  rename
> {drivers/net/ethernet/intel/idpf =3D>
> include/linux/net/intel}/virtchnl2.h (100%)  rename
> {drivers/net/ethernet/intel/idpf =3D>
> include/linux/net/intel}/virtchnl2_lan_desc.h (100%)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index eb8cdcc76324..952f09b40711 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12917,7 +12917,6 @@ T:	git
> git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
>  F:	Documentation/networking/device_drivers/ethernet/intel/
>  F:	drivers/net/ethernet/intel/
>  F:	drivers/net/ethernet/intel/*/

...

>=20
>  #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
>  #define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
> diff --git a/include/linux/avf/virtchnl.h
> b/include/linux/net/intel/virtchnl.h
> similarity index 100%
> rename from include/linux/avf/virtchnl.h rename to
> include/linux/net/intel/virtchnl.h
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> b/include/linux/net/intel/virtchnl2.h
> similarity index 100%
> rename from drivers/net/ethernet/intel/idpf/virtchnl2.h
> rename to include/linux/net/intel/virtchnl2.h
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
> b/include/linux/net/intel/virtchnl2_lan_desc.h
> similarity index 100%
> rename from drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
> rename to include/linux/net/intel/virtchnl2_lan_desc.h
> --
> 2.47.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
