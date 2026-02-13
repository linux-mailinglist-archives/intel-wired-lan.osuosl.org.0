Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOZQE76ijmm2DQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 05:04:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 961B4132CA4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 05:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E07441A33;
	Fri, 13 Feb 2026 04:04:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wscLqB7g9KfG; Fri, 13 Feb 2026 04:04:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 381CD41A34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770955451;
	bh=UkQp7ZXf85LXXo1YHaV9Mu7JiMIoVfdAZJW+sv0K72s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yYN1+xN+91Hqb2DC0zSbDYdoA/Lko8r3TMA6acXyBmsLzZ/i84udg9LLU4GVtNsnx
	 eJ4qwxojZE4PjESRBOP+IUJAEh5TVbUONoNKixHOktr3KZ0ssFEVLOa/IqoouOe2g1
	 Y2rvq+OQKoPYY8wMkOnmoOZeXWKYzZyI1CTgl+dwqcejMVdWovxsmok1oQegi/feF6
	 pyyP3q44JmiJ+zd1WpJSX8kpRCDKc9lpXmqonszDB5GWX2l4yJl0TNzXUKc+jWQEsH
	 jtRPLWgupVGUIlt/QTpRdQlApF+LA0bwGI4dY+vAC9YhnhO/n25ieCtPARMdLnnQrX
	 qNBzU8iJbIgHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 381CD41A34;
	Fri, 13 Feb 2026 04:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DA1BA69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 04:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C87FA83E87
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 04:04:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bnoiIFEMxL7J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 04:04:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 88EB983E7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88EB983E7B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88EB983E7B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 04:04:08 +0000 (UTC)
X-CSE-ConnectionGUID: pA9s39ivQ5KWYd9vqLu42g==
X-CSE-MsgGUID: hx8HziN1SVyP7d2hdLCggA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="75983291"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="75983291"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 20:04:07 -0800
X-CSE-ConnectionGUID: 4eEsJz6UTbCemR6oPj/R3Q==
X-CSE-MsgGUID: 1Mbwd62yQR6h9Yudu9YCGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="211549604"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 20:04:07 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 20:04:06 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 12 Feb 2026 20:04:06 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 20:04:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dRxFhwFnk44CEpJXCd88Ag59zqBhNwK+hOP9TboNJ/qOIXTyQ0P220gBVdAbE0VD9fl0gpzplV3Gm+z2roe8iIl8WPmFN3p7IH5hUE7kpl/f/9suqJQpKRcN2uJuC30/9AkrQLJSjhZATeYJAoMY9iql4c+yHNYaCU0/QkyUXu6HsZMRRYu4ixzrvCdaETnhxiWbNUNfP4ojGoI9G1SaYW6gV9FO35EVuj3fNLvQPDF3Qa51p2aePGombDIMkSIiIMs/O5YRdw+Q6n4NC75+OFV5Yy1R7TeEDACGj8/zDZgV5eBS9GGP8lLFjt5gxI0kJeGysKF5jRmlZi7ZJtov4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UkQp7ZXf85LXXo1YHaV9Mu7JiMIoVfdAZJW+sv0K72s=;
 b=tUHNPVs++BajTFIu2OctW7VnaofbCkniXUhNcrFXucCe4xFPdHD8TSLb0GR+feTeUq4XDD34dunf2iYFGhavOzPr8FrBcSj/AkIE/+0grzwbuEX2l1jEzLC/ISYzUcirUJgAdKC1EIx7KzSC2TpQOrfn3Mrf50SbIWPXa/gxTVMbOLMgJQZVu+UCSytIDZgNNRKsaVLgZfr9Nfe5V62QbU5OufdkQIywVqFtq0J8i9IokPlj/x7jiaokGR8jVtpbJdNg2ouqDGUvXii8j+g0dGxohDryWerbTEhcafYiuOgOfpyXKfOJn8hkDPB851SbGxtDJMiajkr0ue1QMhGBow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW5PR11MB5884.namprd11.prod.outlook.com (2603:10b6:303:1a0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 04:04:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Fri, 13 Feb 2026
 04:04:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>
CC: Claudiu Manoil <claudiu.manoil@nxp.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song Liu
 <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP Singh
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Simon Horman <horms@kernel.org>, Shuah Khan
 <shuah@kernel.org>, "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Bastien Curutchet
 (eBPF Foundation)" <bastien.curutchet@bootlin.com>, "Vyavahare, Tushar"
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>,
 =?iso-8859-1?Q?Ricardo_B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, "imx@lists.linux.dev"
 <imx@lists.linux.dev>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "Dragos
 Tatulea" <dtatulea@nvidia.com>
Thread-Topic: [PATCH bpf v2 6/9] i40e: use xdp.frame_sz as XDP RxQ info
 frag_size
Thread-Index: AQHcnFJZA3I0xkFI6kqIOhLpxrQ8kLWAAcgQ
Date: Fri, 13 Feb 2026 04:04:03 +0000
Message-ID: <IA3PR11MB89867A766621F2C6CA2D2960E561A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260212183328.1883148-2-larysa.zaremba@intel.com>
 <20260212183328.1883148-8-larysa.zaremba@intel.com>
In-Reply-To: <20260212183328.1883148-8-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW5PR11MB5884:EE_
x-ms-office365-filtering-correlation-id: afefc934-0e88-475c-5a8d-08de6ab4ece1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?VM9VtROrZ5gAe7aYwEnsDaVPHsD++hfHZeNOt51qKbp8WSe9w/jyrhxp/A?=
 =?iso-8859-1?Q?apP8HdrAp3v+9wbHibXjdY5o93uRUnak0YX1Ln6KlzPn/EEOQuuAMpodkp?=
 =?iso-8859-1?Q?quII+gg48aSjQF2ydE/W4awFJTs7+ra+aBQxDIi8VvGVo0Vk6uCL+Hayuq?=
 =?iso-8859-1?Q?gpc3g/95eS4YyqDApZozFYAqZjnIPZvXGMSVLt1vScq/WbLuUHB0+RDUsn?=
 =?iso-8859-1?Q?qN7DQbFJwBH13rNaLM+ZuEVEXxLTbahqwsnRFuvovF8oihhpAklCg40nto?=
 =?iso-8859-1?Q?0CN1eBGrVupaZJ8OMcdj1eAbToP4LoHDdRpRj9/60lk6CTOtJB5zcxgdjG?=
 =?iso-8859-1?Q?GaW8dFuGWRseI/6nM0qPXnPKO5yqO7bT7k1X3pJqUEgmN2Sn1qRYpBYumr?=
 =?iso-8859-1?Q?KS3ajoGUe57BiD2p1mLbSvMSx1nZ4dZEiL/Gjyjx6CqquvEZwYGoKxr/ss?=
 =?iso-8859-1?Q?0+RvqIsIqvz8rioKz8ujJHgn2DtyBx+/BC4kcqAaH4av6SRo3O74hU4EAq?=
 =?iso-8859-1?Q?gw6SlEPih0zyVRimoHCfSeJcUieD09vZPX0e6SQi3tF084hLeHXQhagi2h?=
 =?iso-8859-1?Q?Pm3bBvpvYPSzWrZS5H7bWpklV2Oa/3LsxCz3WgUQwQsdlwHydmkuqEdFkM?=
 =?iso-8859-1?Q?aomGw7pV3Z404T80SMs0YvvqQJ+5cR6/C2SHksAycIzz9HhAGTd75YMMPy?=
 =?iso-8859-1?Q?DExo7n4d2SitH6Ydx4viZUa6zuzCrj5o2VMw1Krifl93JBwv+yxTq6tfn1?=
 =?iso-8859-1?Q?pHoDjHnsHGst4/F4i5t+5uK91pEpOHkhFrl0tdcM9IdtydkkSux8RlJLp5?=
 =?iso-8859-1?Q?hyQLyLbUaI5XQCPfWGyj9FsgaE1xxAtb9j8HQFEIWhsvaxkbqhkNS79qXt?=
 =?iso-8859-1?Q?w6fjMQUZ5os+7KU90FT0KmaKgKXQW5XAuEZW8YIfzeUvMMiq4B8JylllM/?=
 =?iso-8859-1?Q?Xt0TXCYFWCsyB3zggnyBX6/G4YRwg52fGsbXssYn29HQsY30TohQl5AU1v?=
 =?iso-8859-1?Q?zQTgH/k9n+kM468gkRAWSmmg4+7Bbb9RbnG1wTkyPD+YgtvDsTYHtfTt1n?=
 =?iso-8859-1?Q?T08dEAckmW2jyGDLzpUwgUrVkkt9cXWJoafUEPOXhmKFSBR/F/o+Y7Cd7l?=
 =?iso-8859-1?Q?s8fUgdd/JsqXTc7d0w1rVWFKBxolsNmKy4v3kzKouUARmKuL6XThLYvfIK?=
 =?iso-8859-1?Q?CzlGo8goERAkNcjpdbz0dtMAevF7jHeJnxTsH8/zGhduvEl6qJXY5MEzAE?=
 =?iso-8859-1?Q?OyGYFXp6oApoeUi9ZXN6yNzL7krz9IOdG4nzuYL0zv3ciErGwipRHL0Bkj?=
 =?iso-8859-1?Q?uS8KjFJcWn5vy/hEMbj3ReM8sHJ8adO7S1TDyTo3+xzZHy+k82OUqPMq46?=
 =?iso-8859-1?Q?m38xkvS2VZ+WNZl/1mEwI0i8j5CqV0IezATFMSEr/c0RtVGpRQ16I6DrYz?=
 =?iso-8859-1?Q?L8s9NteQqtN+pm/RiZ9uuCEBGyazW/cpA+KUq8V3f0xPiWIA+MrL2N7Zgm?=
 =?iso-8859-1?Q?JJiwazGo4r4p1yJsD5aUU5y97OrF5Kr+5B6vdA1CHG4Eq1WWKe0KyTyCij?=
 =?iso-8859-1?Q?3/PbYtpw1rU46BNTI2BNOWPZSqA2EMCQ7iANp+mfDoS11wKIzRbku4/olh?=
 =?iso-8859-1?Q?T1t/+tsaFIQJUb4P5PGupLwPJqgEkSSVUt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?VSMi8WF6l68V4wQzuZP6b8m+8neCCNs5fIJm9hyCn9jwvYcosXLIpTvWBZ?=
 =?iso-8859-1?Q?nAx5XX74nAQ0PCofm5LES5dMhv/pKHMUYcp2qCmT/itY4tD1oq1LBAjyt/?=
 =?iso-8859-1?Q?DBXCFgHQkxw1e2r0yOThl6UmXvczxczcf7GZC3sjP4C2rOA7kxfEcYtyF9?=
 =?iso-8859-1?Q?Vi4VlbXB343jBddFPS8wWhz9b5w9tt00NAQGNwrXbHoF3l3wNIT/bEiJLg?=
 =?iso-8859-1?Q?PpBDNn+8W/vUyLDuRzoHgbeGCoPzJQGACo4NXRfGOiF7QBrJQqUHG858AA?=
 =?iso-8859-1?Q?3tyECgJFkDoKbiP8JHd1EXsI4LOwSigJpzbQCtiiyhNzTRA51slJjyX4/K?=
 =?iso-8859-1?Q?XwXdqNr+yRtTqR9BujeBEB5IM9ceZEB09AHjRXaQE0gzix3vIKJ5X01+xf?=
 =?iso-8859-1?Q?W9rR5ogWQyfV+o76xw7Kfe/G06H95yAJGqQbRC9TZJKCYE/kHJ3l+azxkv?=
 =?iso-8859-1?Q?XT2/J+InLqgsPxKzc463F/EZPp28NOPHUy0SMWf6SzisBONMzeonnnx/iY?=
 =?iso-8859-1?Q?HURlmbidtQrTv2KBbXTYzGr/WtXwC7VDMS1/+nLpDY67C1guIZsbQPExNy?=
 =?iso-8859-1?Q?H+m6RLgJPqaDNODz9E367+aiwnGYH4/nCVqnfZkc7XTz6zOIryNPu2vy31?=
 =?iso-8859-1?Q?xydlQpHowntsJei34L2k3xn7FcXIO5L906P0+M4k9UW5YBstj+62YVlCg/?=
 =?iso-8859-1?Q?DUK6qDcXmliDmI7A/l0uZSOnNwTxQTp90GpOURbuN5SMfWbx3UiEjBlh+7?=
 =?iso-8859-1?Q?65wIl53swPBiEYfFDd7O4ZOWTPcz7t2zI/vvJko7URVytKEXl1emd/xGbx?=
 =?iso-8859-1?Q?bJx5O2bRkIPtHV3r0uCqKfbExiLepnH5iaeqTXRBa1T2zTPzHtqZRC+96n?=
 =?iso-8859-1?Q?5lpH5J7eLpSYBn7zw4imxdkvZKzImauxGuT7OfxEAujIy1Wb2+HxJjSSKf?=
 =?iso-8859-1?Q?eOECFVMm6nsowBAwiGIc78FVpIinvsqxwlKte7TneKU3NrhMacRHwhFifQ?=
 =?iso-8859-1?Q?3xM3IyYjq1CPYvPzGly906cg/9gwSu/cHiZcuXVi9mPf7zOtVnM8719GOH?=
 =?iso-8859-1?Q?wCUAOCVd/hWqVwaK84058J0PZUTwZYrpdqEwHRq/LIW9uJqw+f2DnsZR1h?=
 =?iso-8859-1?Q?OW2JnFU+1g0haKqSkaBBIiCSpNV3SpqXGj24cJKe/u0Hjh5ZW3UJ+vklTY?=
 =?iso-8859-1?Q?RTEL58tV53p5FX5Jegg4omWKjzIUeQm6JYknK5NRgNJgK2h0sRUKc3nTRs?=
 =?iso-8859-1?Q?uW6CR8oLRSRewfxQ58is5VTMYs2+auNBcI9NjKn4SbkNvG61LHw2UGhfxK?=
 =?iso-8859-1?Q?qW1ZZKMnBo7hC3CcLDthX1JaUGHsWTs1K/wqfSIfL/Y7WdD188iSd6JeO5?=
 =?iso-8859-1?Q?ZrtHih4ZShu2MN0oyn0cNGCnJ6VVqPiwVjv9Bcb1hob8vi4BzbbAjuPdcm?=
 =?iso-8859-1?Q?XTSq3CLxlg3mWG0kQf/IV+lNd1mrhIA3AnfRzlGid2HMgc0gYfLfwu1Bsw?=
 =?iso-8859-1?Q?8hRC2Bm3YSEBQhmx9mZTTc9wWO7wgcm8AB7Mfy7irjQEnU0ktclBMaCzFd?=
 =?iso-8859-1?Q?BlzApoRBsCO0LVcHOkSnMjChD9tqJO/eME2NiU3usgprV4GfS3DzOOarFn?=
 =?iso-8859-1?Q?bdBLRMfmYy3uvE2LWLuCOqHrp4+MT/ZL+yYommufJI7skv5W7GPugFrksD?=
 =?iso-8859-1?Q?hTMJv353LWw/IWwPh9ozl3DbqaAiF2S/zquyc4I8TtZF1wOkaszHWNNvpp?=
 =?iso-8859-1?Q?DqmSdynnoLeT8VLhYx0pW2apS3jngE4UokTZGW/wYAvX3PrlnScPzMG3U1?=
 =?iso-8859-1?Q?48X8hcuRFg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afefc934-0e88-475c-5a8d-08de6ab4ece1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 04:04:03.3399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7/3jMLRIl/Yaz5gEWlE/qvg9qVq8BV+zbscJGA8dDrkZRzxBb4OGSlahfbsVIMwyYhuO+hsnVl7gYgASv9m6Z0pqmJ4uZR3NfCSjr8UR6w0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5884
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770955448; x=1802491448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VZTHcDYPhfJ80IGH8SnP+/6pQSe9o6b+Qo73dvNtXMw=;
 b=oETgOqK7gfbD87PNgWE6Fbh5KT4u0l4FDQP7OtGywVpd59dyRpoCwL/o
 yv0odB9UfyKoXvkmomizBh8lB7gbXhM2v4Q2OWrjjcpEqfFnDj/hz2UOh
 jDfHrOhN99NVdWM7dLmiLCDwxgMOWgJM2MAORVZ6sz55jotNGyCa/dyuy
 D/Fv+EmUAFiPU2FlXaYfIWJk8jMe0qTYKkPro6T+g+Tgm9QJk1nDqe/mN
 IIJymvebikWpthCkuhvO2NOTawYtzVIoqjYd6fD4HaF7sPIEtQVDaXFJm
 CBbcvDkFPtye4ifyfnRWpshAwm21nMkBNJy9jDM9sGmslvBoGJlbn2BAB
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oETgOqK7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 6/9] i40e: use xdp.frame_sz as
 XDP RxQ info frag_size
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:dtatulea@nvidia.co
 m,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 961B4132CA4
X-Rspamd-Action: no action



> -----Original Message-----
> From: Zaremba, Larysa <larysa.zaremba@intel.com>
> Sent: Thursday, February 12, 2026 7:33 PM
> To: bpf@vger.kernel.org
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Claudiu Manoil
> <claudiu.manoil@nxp.com>; Vladimir Oltean <vladimir.oltean@nxp.com>;
> Wei Fang <wei.fang@nxp.com>; Clark Wang <xiaoning.wang@nxp.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Alexei Starovoitov <ast@kernel.org>;
> Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>;
> Stanislav Fomichev <sdf@fomichev.me>; Andrii Nakryiko
> <andrii@kernel.org>; Martin KaFai Lau <martin.lau@linux.dev>; Eduard
> Zingerman <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong
> Song <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao
> Luo <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Simon Horman
> <horms@kernel.org>; Shuah Khan <shuah@kernel.org>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Bastien Curutchet (eBPF Foundation)
> <bastien.curutchet@bootlin.com>; Vyavahare, Tushar
> <tushar.vyavahare@intel.com>; Jason Xing <kernelxing@tencent.com>;
> Ricardo B. Marli=E8re <rbm@suse.com>; Eelco Chaudron
> <echaudro@redhat.com>; Lorenzo Bianconi <lorenzo@kernel.org>; Toke
> Hoiland-Jorgensen <toke@redhat.com>; imx@lists.linux.dev;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-kselftest@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Dragos Tatulea
> <dtatulea@nvidia.com>
> Subject: [PATCH bpf v2 6/9] i40e: use xdp.frame_sz as XDP RxQ info
> frag_size
>=20
> The only user of frag_size field in XDP RxQ info is
> bpf_xdp_frags_increase_tail(). It clearly expects whole buffer size
> instead of DMA write size. Different assumptions in i40e driver
> configuration lead to negative tailroom.
>=20
> Set frag_size to the same value as frame_sz in shared pages mode,
> use new helper to set frag_size when AF_XDP ZC is active.
>=20
> Fixes: a045d2f2d03d ("i40e: set xdp_rxq_info::frag_size")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index eaa5b65e6daf..f91157774f1d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3563,6 +3563,7 @@ static int i40e_configure_rx_ring(struct
> i40e_ring *ring)
>  	u16 pf_q =3D vsi->base_queue + ring->queue_index;
>  	struct i40e_hw *hw =3D &vsi->back->hw;
>  	struct i40e_hmc_obj_rxq rx_ctx;
> +	u32 xdp_frame_sz =3D 0;
>  	int err =3D 0;
>  	bool ok;
>=20
https://elixir.bootlin.com/linux/v6.19-rc5/source/drivers/net/ethernet/inte=
l/i40e/i40e_main.c#L3577
All VSIs except main will be skipped, so xdp_init_buff() will be called wit=
h the default xdp_frame_sz =3D 0;
Is it ok?

> @@ -3579,11 +3580,12 @@ static int i40e_configure_rx_ring(struct
> i40e_ring *ring)
>=20
>  	ring->xsk_pool =3D i40e_xsk_pool(ring);
>  	if (ring->xsk_pool) {
> +		xdp_frame_sz =3D xsk_pool_get_rx_frag_step(ring-
> >xsk_pool);
>  		ring->rx_buf_len =3D xsk_pool_get_rx_frame_size(ring-
> >xsk_pool);
>  		err =3D __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
>  					 ring->queue_index,
>  					 ring->q_vector->napi.napi_id,
> -					 ring->rx_buf_len);
> +					 xdp_frame_sz);
>  		if (err)
>  			return err;
>  		err =3D xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> @@ -3596,10 +3598,11 @@ static int i40e_configure_rx_ring(struct
> i40e_ring *ring)
>  			 ring->queue_index);
>=20
>  	} else {
> +		xdp_frame_sz =3D i40e_rx_pg_size(ring) / 2;
>  		err =3D __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
>  					 ring->queue_index,
>  					 ring->q_vector->napi.napi_id,
> -					 ring->rx_buf_len);
> +					 xdp_frame_sz);
>  		if (err)
>  			return err;
>  		err =3D xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> @@ -3610,7 +3613,7 @@ static int i40e_configure_rx_ring(struct
> i40e_ring *ring)
>  	}
>=20
>  skip:
> -	xdp_init_buff(&ring->xdp, i40e_rx_pg_size(ring) / 2, &ring-
> >xdp_rxq);
> +	xdp_init_buff(&ring->xdp, xdp_frame_sz, &ring->xdp_rxq);
>=20
>  	rx_ctx.dbuff =3D DIV_ROUND_UP(ring->rx_buf_len,
>  				    BIT_ULL(I40E_RXQ_CTX_DBUFF_SHIFT));
> --
> 2.52.0

