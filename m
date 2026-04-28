Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBegARRn8GkITAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 09:51:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD1747F4B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 09:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F28FC40FF1;
	Tue, 28 Apr 2026 07:51:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oITBij-L2U2P; Tue, 28 Apr 2026 07:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27A2340FF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777362705;
	bh=75z3+T4Qpz+aR7K1BFVxiYukmHn+3e29Ti1MaVWnd9o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PKmGUjdepaUPwwyAQSyCMuLkrYzz1vZOfw+57MsNW3tR61ssgfvUMlI9hUijemTx7
	 Bwf7KZqmqHJ04DA4GSZkhCjkjOilqYUZbwVLm6btfKvKJkM026BIhVshvwn/JfVB1C
	 P+p9NTU3px+EqaZU/ZUnHmDsqLeijgWwg5DbpEjRJz0WO+JcEi9cC+YUOdYpG7rL5+
	 bGHrGDNJbL0Lz6Eh5uXdgfxqDaqAXuH9C+vn/AWFDzXlNJ0fDroIzob9TcZwS1Dptt
	 tG3urFx3e3hChzGsXpreiq4crk1tzsgKdr7LsZa/NR1Gq45heAOL1WZscyNAUaW55F
	 jBpATEg9SOUnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27A2340FF2;
	Tue, 28 Apr 2026 07:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A22D1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F1E960EDC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IrmZ8pE9Xu4O for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 07:51:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9AA860ED3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9AA860ED3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9AA860ED3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:51:42 +0000 (UTC)
X-CSE-ConnectionGUID: /diQXH1/TRaT8b4ufnfCGw==
X-CSE-MsgGUID: 3LgGofHNR3mwZ6AlLm1q/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="89353018"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="89353018"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:51:42 -0700
X-CSE-ConnectionGUID: WEZurL3CQdCZrwKoceqUmQ==
X-CSE-MsgGUID: 4YlFcY0LQtOEzRaCNhlDjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="233754667"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:51:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 00:51:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 00:51:41 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.45)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 00:51:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OwOWP8aOD2KxEO63XmC30Me6biOjO6rPC8MVB6NSSeAm2/UCQdogq0W+M9gDGhmsk9+eKTDSFN8/CObBasmp7p9NoFc3nejDGfApIehYhvTPk2G76wh1C/XNoJ5EcLYRlcpP+026djzHMfohtVMoOHiBM8p3zlkxGUfKmCgwoNHeRQF5vHt2nftkx4aTjOqTBIeLJ819S9HRwqK9Flg2LHVJyWeCY/e3UxZKcr0+HypTXjgw+XCahF8UYFQRzhfYgn2ZOAvnkie/pkhCVz3q5SvNizexiLC6kgOTGOsMBsI1qMoVLkHGC+MLWiYLN9ipOjn1nm7Frq1arEY3SaEZ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=75z3+T4Qpz+aR7K1BFVxiYukmHn+3e29Ti1MaVWnd9o=;
 b=T7dsLGrZHWw1VTYBxAuCglrAV2dC9IvPs8Bqu16qNN3+o93OZQ5ricZUedNqkRRtbJO0w7id0Fr5xvpkc6xO39SHbqMIQMsEwT69T+5KZWZc4WZEpN2VxiSdLTVhMIIzsvwSi4gt78GNhiguiqrEvuNcwd5sLlgF8VTqGmYWCbSG8vOOLylBlj90EDmgK/JbAUPktYjfYQ6qDfyEUXmL0UqZCsbtE3tORRcR875bLvg/RdsQiqsTOmAHgisusSXPhCscD8r2LZmWhGW6kPk4vq49uQrkBLPFuBHta2h0B5Uxgxpf7uHStCVHNlVuVY8WjpyF8Ckk59T6/2kTdPh+2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7744.namprd11.prod.outlook.com (2603:10b6:208:409::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 07:51:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 07:51:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix SMA and U.FL pin
 state changes affecting paired pin
Thread-Index: AQHcx0gPE6hOubO3W0+rhx3WSTn2PLX0OQEQ
Date: Tue, 28 Apr 2026 07:51:36 +0000
Message-ID: <IA3PR11MB8986CABF47B72BE92B383033E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260408110504.1032879-1-poros@redhat.com>
In-Reply-To: <20260408110504.1032879-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7744:EE_
x-ms-office365-filtering-correlation-id: 25aac673-33e7-4d7f-240b-08dea4faf92a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 3UEPg0WgTjfrASnuKSXXnyQgTPFuz6uZmDogV58PruRq0/RrzsauKQ0vDnMJMS2B6xOTzJSA05wz4cL2qSTzzrZbY+zb2i8YlB20jlW0qszi6ZB4zyZE1tz5auOGj32ZrurHlFM/f2joSr1/Lmg4v6QN5Y5UI+54l/VPI1LHXMbT4Ft+zZWLp0Vrco4aR/ndddQnQwl1bO0ZcpYHQ7yf/fCLea+JfSnyH2hs7kNCn+4Dm1320n19UQIQlPM8egAvzgTyWKjLM1nIJu0nZBd/GvLG1lRReZLPJfxy3lUgWCE7EBbbC6YLShKoEbZsoHrLF6WrKv96k1GR1JztDo1HGsbWFb84C9H2OC8Cq+X71sDpOc6EZp2jpsvfNswiNxEzPUM5yG4i0DqsjLhaH/HRLmslruFShle8YJjlsLOEpUuB9VoQaGlIbmfaFjSe7s+IhkSZ4ymHN2ScTKUIl2goW31pAgxHf0yU9B5lnvqGgPCZ13351V7RHyz80S0A34Ko8EPPgnvX4JEhXti1CiY/vqD/140h23WKoCdKaANOnt+UGNoYUosjlLIBLrB/bSRd40q4titvT7Oo+WyL4u7+ng6zYbuNQOkvUIK+VVLoM4IPjwwmB9KwTqzcfUFPgjOGFLOLQoPnHlta2Q/R4LrsSZ/qpwhTA/cyoY4OFmJCh6Sb4pUKvpqtb2Y/0+UqpiMNrO7/Ju2Mb0G56VxwMWXAE7NxY5Hb/cck0C9brB3zUS7lw2IfgdcxrOTGzGTkrN+DE9E5x7aQLjUPZpZoHPHuRkZXMd6+7U10ML0G8+iv2Pc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tjNVLiva9BFxG+xroB25/vkB5RGzuYf4cgl+33wh6kIN3ueVluTS565Wmh3A?=
 =?us-ascii?Q?eJ3X+KEntyqfbpjA+b12itjzfj3dOWlcY3zbsYEDXdsir3rHFwKuu0gw/pij?=
 =?us-ascii?Q?IsvlgUNwmfIb0maoR6sffypStCgtDGQZwdTwSrqTpYOQKX0Trrb2Xlxm7hBo?=
 =?us-ascii?Q?/J0lR+4QBuZAkhw9WxVBKQdXBH3YHAAbbND3ZhAhE3OO3Z+44/mO1unkShF4?=
 =?us-ascii?Q?4jWCY8eFcrjbPTVbCEu8UhBSBqKreg3/FBByr/54l025B9RFbrvRhCPE+G5S?=
 =?us-ascii?Q?19TYvehhcdr8GuoA/E6GDK45UEcgA8PYcC6Yj0ow5bUqRtaYw0P2dzCqXnB7?=
 =?us-ascii?Q?2RRrAJPCXf8aPAivj5cG7hU8vr5An3swFJupNOWm8JfARCi/C0fUpnlCCDtx?=
 =?us-ascii?Q?h4EWxwDVRe/bNEXtY9gfSzOxYCgg6yyk9Mms9srpIemc+Tu7zhByihEh0/iO?=
 =?us-ascii?Q?pnbLBGZC1tQ/cLW8pCSsGnCw3uAzey9D55U0qosVw5H2ziK0SetkQd4AuTle?=
 =?us-ascii?Q?dJya6eqOIFLrYPx3DM+rA2HbiHr0bQ/A1p3CF6VXqysu63JpxfnENwIk1XoK?=
 =?us-ascii?Q?Uz3c+DKI+u75BpYmJZYFjwmKYIeQqLQaCVwC2ltIfN1LNw+dq0ppq0xjjcFm?=
 =?us-ascii?Q?s+MUHKsBnKQGnynCtEXEE2TsvlAzLlLYqS69YsDPddZ5lp5V3F39+ntpPfxH?=
 =?us-ascii?Q?eF3F5WzR7mmqXNCh4nOaRRgaOnzeTANEggft0/z0lsCJrjVfD5k1pa4bXRSJ?=
 =?us-ascii?Q?XsIvsjKRGXgh01MOQqkAw9vrq3t6fYLB6Zv1tiDzrMNwKLVjTWibHci50Pj3?=
 =?us-ascii?Q?1zagvgIXeXEYtxTeMd+KI020nxwmWeMp2j10rFvXC4R1cJg2+ardA2i+PKXx?=
 =?us-ascii?Q?Z2Hcrzpsd1pR4AjTj+b0/PY4SgNyASUyHWe4VvvdrZj14Kyh0HL1lrJfMaZg?=
 =?us-ascii?Q?EN0Vo7EsBG5nRyJdTGAcsSE/OOl8k+d3uoteVeK+UuRIXIt1cRS1Ocs9f+BJ?=
 =?us-ascii?Q?l94vmaYlt36Ve48QkgEx/HgP8lvmNDq7cHg60p1ijjYjzdKn7Y8RZCszc+6Q?=
 =?us-ascii?Q?1PtZAzvHhahCfA/CehJvxCISU8FCu1qDg87chCSzinCqsrflBrokBMUBNoac?=
 =?us-ascii?Q?2/4NkYlkNlY+XkR4WUNe0atMSPCMlIu01lU200WAzeMAv+5ZHNGbT6dBiF3+?=
 =?us-ascii?Q?7hbPc1UaCO2LJVW/9a0j3A4Nn/zcIDsIcpuCfl8pu4MvZcIkwfXyYvhD2eNS?=
 =?us-ascii?Q?wo20biArn6uvPDp9JQcVrvfCgH0WYk/2Rw0KoZvJLctyS1vsNJISRxPJEts2?=
 =?us-ascii?Q?UOvNxHM7X2C+a6hHN83oMk+eus8VuLqJl85IpygCAp/0QNiw/qseavcMAWp0?=
 =?us-ascii?Q?apodFQWjt0+0rSinQwMWivn09hvSi/eNVhnNRPwN2NCqjdScTHp4WcbO79EX?=
 =?us-ascii?Q?xZx54YroB7FsJhY47cC56dlimGigUjYaX4P1dzE6x6kcP1EYix4q4wu/Gt60?=
 =?us-ascii?Q?OFg90DQe5/hVX67OaVygBxI2xkQS53bqb360rmQMN539+IktW5gy+K9oPqYy?=
 =?us-ascii?Q?jdu6KQZLGGXlbhRjb311GuO8r7dNn0BvOJ+dYv65fmMHSjq3+Lt0W6zpQjyY?=
 =?us-ascii?Q?pV6tofpwGdD5GSbQIiaYLo6zxI9AGP2hfmD2yDPmMTOnmv/MX3z636gBTqrI?=
 =?us-ascii?Q?HSOphjz5Gm7mbhVnH2C0+Eu03/y4bWCe6hyN4mzIiIjPWNHljBKKt/NGT3ws?=
 =?us-ascii?Q?+682E/RG2ZEtParuyg5N3qi6nx6pae4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tIRvnyJb29rftoM1lSbwKL4Nl7Ycrapp5A6YeaRBJ61+5s8oW13CJQRQ5Wj1LBZOjub1t1hpEJB6WPk78p9COr2mnHl5joXgfnQ/fMKZdK8Ry+DnwNwKkN1lcTML1h4J8RbL1PMlQbiLimAp3sjpjFakgOiKO+u7GOJpsKdOsnJ+8exl8QNUrOcYpOlIFnDoMCVcY3L3VZTn0TqbpJdxtpt5kSitUavVm3qeZWDn9VWlx7gZc7JE0NR6WwTTT5TUc41grsRunp8J9vb0NdiU+NkZCkEN7BwlYx5X8tnrMNsuwUFsQpkVCFR9SngHZt04k8m0VvQ3d1iccoDs2mHvHA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25aac673-33e7-4d7f-240b-08dea4faf92a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 07:51:36.1796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P/zha51Od3LDjzOIfZCZPbKQJFdXRqKKh9hjU0IVSL+cDKHBmSIWD5wTCHUy4SXjCq5orPZKE4JGcbe8q6RFE3rW4aRNjEtflNWVLens/N8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7744
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777362703; x=1808898703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zOpOBtc7+jyHZrv7E+1RnnJUMB12jHFGjR0TA6lXKXw=;
 b=d0uG5hPEX9I7nW7IacAeiFVIMBC2yAaaJnglhN5GW6EPU5tSZp37ytFO
 vjUBxkM6gTvRV3V1OpAZmKyvihYH8npOpBRkngftY6cyX04ph8209ElMB
 RbBy0kxhlfZeSjR8Bivz1LhSUume0ZeReg2xxjaE05awIrKCz2ut4etfT
 WGB+RRdgB4UfasSZFWfjTRkmbN5fYy1qMeQA4jCjVYashkXzwa6W5IhkX
 T+Zx1zTFM316DBPe+Iycy5Xl/ObPsFRh6ec4AKKojqtEXYOiCyZMs2xsB
 8NnGPJlEmk91f9WIJm6KicMpufiW1Ui7DzO0Rq8Q/GuKo9i97WI/2FHsY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d0uG5hPE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix SMA and U.FL pin
 state changes affecting paired pin
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
X-Rspamd-Queue-Id: 4AD1747F4B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Wednesday, April 8, 2026 1:05 PM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman
> <horms@kernel.org>; intel-wired-lan@lists.osuosl.org; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix SMA and U.FL
> pin state changes affecting paired pin
>=20
> SMA and U.FL pins share physical signal paths in pairs (SMA1/U.FL1 and
> SMA2/U.FL2) controlled by the PCA9575 GPIO expander.  Each pair can
> only have one active pin at a time: SMA1 output and U.FL1 output share
> the same CGU output, SMA2 input and U.FL2 input share the same CGU
> input.  The PCA9575 register bits determine which connector in each
> pair owns the signal path.
>=20
> The driver does not account for this pairing in two places:
>=20
> ice_dpll_ufl_pin_state_set() modifies PCA9575 bits and disables the
> backing CGU pin without checking whether the U.FL pin is currently
> active.  Disconnecting an already inactive U.FL pin flips bits that
> the paired SMA pin relies on, breaking its connection.
>=20
> ice_dpll_sma_direction_set() does not propagate direction changes to
> the paired U.FL pin.  For SMA2/U.FL2 the ICE_SMA2_UFL2_RX_DIS bit is
> never managed, so U.FL2 stays disconnected after SMA2 switches to
> output.  For both pairs the backing CGU pin of the U.FL side is never
> enabled when a direction change activates it, so userspace sees the
> pin as disconnected even though the routing is correct.
>=20
> Fix by guarding the U.FL disconnect path against inactive pins and by
> updating the paired U.FL pin fully on SMA direction changes: manage
> ICE_SMA2_UFL2_RX_DIS for the SMA2/U.FL2 pair and enable the backing
> CGU pin whenever the peer becomes active.
>=20
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
> v2:
>  - fix ice_dpll_sma_direction_set() to manage ICE_SMA2_UFL2_RX_DIS
>    when SMA2 direction changes
>  - enable paired U.FL backing CGU pin when direction change makes
>    it active, so it reports as connected immediately
>  - (both reported by Intel test on the SMA init and notification
>    patch threads)
> v1: https://lore.kernel.org/all/20260325151050.2081977-1-
> poros@redhat.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 50
> ++++++++++++++++++++++-
>  1 file changed, 49 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 498ec2c045f384..3f8cd5b8298b57 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -1171,6 +1171,8 @@ static int ice_dpll_sma_direction_set(struct
> ice_dpll_pin *p,
>  				      enum dpll_pin_direction direction,
>  				      struct netlink_ext_ack *extack)  {

...

>  			data |=3D ICE_SMA2_UFL2_RX_DIS;
>  			enable =3D false;
>  		} else {
> --
> 2.52.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
