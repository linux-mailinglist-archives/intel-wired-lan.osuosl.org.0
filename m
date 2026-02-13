Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 232/BszjjmnRFgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 09:41:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B64134262
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 09:41:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E56A960BD6;
	Fri, 13 Feb 2026 08:41:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hN8Fx4Y9isLw; Fri, 13 Feb 2026 08:41:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33F2460BD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770972104;
	bh=2ImhNjKECdRcQt2DT9yP6Qj53ixN8QAPD1QXGMZtURw=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fSHve1Xj+APXYbeeDk2nGOJWGmwlPtX+2BshZugB3IDWR0zk6bdNOzOKgikIn3btc
	 iYH2aaONtSzJ5TO0gLHesxJKTEsaiI9Wpc716WpXx/TRAFPRh+PC3gVtpknoNledtS
	 fXEz2Z0E6BOm+h8HRQKJCrZ1vjQvLNhqkZ7rYZdOp9VLmVUTeDhT0EaVBzTLF6kk6k
	 e6s7W6E4U8KF4LFfZINDydctBbY0OqVZ6KbrXS5FM2/JjVYrBMLAzoUKZ+Y0o1ErMa
	 Q+jq0qmcQHoZI6vvTPb3xtcNB00MHKgYdg0ahuhvr8+iSmLrTD8KnTItCZrGShg40c
	 OZ+nTJPpDEfDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33F2460BD8;
	Fri, 13 Feb 2026 08:41:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 533D9EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 08:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3507860BC6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 08:41:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OO7rUWCHnid0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 08:41:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2791F608DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2791F608DA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2791F608DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 08:41:40 +0000 (UTC)
X-CSE-ConnectionGUID: 1w2I8cq0QVqIflDthaisDQ==
X-CSE-MsgGUID: 5roRoRIoSea6rbUUcu0N+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="83254004"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="83254004"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:41:40 -0800
X-CSE-ConnectionGUID: 1pdMgHLLSvyo6eb8Z6qSQQ==
X-CSE-MsgGUID: o5jycjOBSPu/6n8O8gVpGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212963329"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:41:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:41:39 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:41:39 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:41:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vE33YQ8qPSkavcHywPt/In0UFbpCnWICpxgaxZEhw7Ossm3djF6OBgtQfiZvtrp93IjosI3MN6tZ+potJdDNNczIIv2DSp8qwxxWC4h7ZQtZWbcJNIPCHFMhvUDDltddeOzwWySuqe88oE4Nrba5yqaM5QE8at+l7q9rwrXSulvC5AmlnLtMrSQyN0wSmJAZuXZYlZ5Pe2cN61CJo/KuMulelp+NYDbSXmp6e/t6B8JPtcG3KywGOnZF+h2j8LZZupfFsg7R6KNNhCDjD5gSOgepYZlftC2vAKLHhbXddYcrN9fdWVwdgb8hbsV3Dy/SlHg8OTcnpWdHHCO5781DUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M8z7qZ6OGlhHdQKcukDS3ZipZp9D3mgHbxTj2jQaxA4=;
 b=XITCfSYCYnTFK6sbl/3ENE0u3ukXKBiK0Qlrkrsb1Kv4L4abUMu05g2XedOxrZTMuFNl6jVslhK45T53eR3y8ZL2530eJGDDYhSkqZYWBuk9l53+vYhH0Lm5RweMJSOKlDmNYpEB8cX8xjmNW2m5n1g/uASi3kZjS7elroTR6bEkt36ht8kKdhuqXT7BHm2EJrSZEwaofM98L09Nl+Vsapqkbh+a3UxwtcUpy5zjeLbWGlUa2Ayc0+nxh70mbiasNQ8l1gL2QpVRWgmfhY9x8Jh1+MZ5HQvzDCfLtfYLtPoYQF7sMYkftxe0G4RbML96Gi63vjmIPetV4uMWg4w0KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by SA2PR11MB4858.namprd11.prod.outlook.com (2603:10b6:806:f9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:41:36 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9611.013; Fri, 13 Feb 2026
 08:41:36 +0000
Date: Fri, 13 Feb 2026 09:41:22 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Claudiu Manoil
 <claudiu.manoil@nxp.com>, Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang
 <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Eduard Zingerman
 <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, "Vyavahare, Tushar"
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, "imx@lists.linux.dev"
 <imx@lists.linux.dev>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "Dragos
 Tatulea" <dtatulea@nvidia.com>
Message-ID: <aY7jssd2jAm8MLC7@soc-5CG4396X81.clients.intel.com>
References: <20260212183328.1883148-2-larysa.zaremba@intel.com>
 <20260212183328.1883148-6-larysa.zaremba@intel.com>
 <IA3PR11MB8986F7044E60C1DF4DFD44A3E561A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA3PR11MB8986F7044E60C1DF4DFD44A3E561A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-ClientProxiedBy: VI1PR06CA0131.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::24) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|SA2PR11MB4858:EE_
X-MS-Office365-Filtering-Correlation-Id: 375eaedd-42b2-4fe4-511f-08de6adbb26e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|376014|7416014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?4mwVGpW3CvRsBbgAG+JnUg2OHs5LfouEp3uu1/YCSY9+BIgGdIJ5fu5Sv/?=
 =?iso-8859-1?Q?uBnBoj6d1aWxUTr4LUUJXpcvH9Pn4c0q3kVsCAwjkupf2ER2562Wc0FaAw?=
 =?iso-8859-1?Q?EKPo8yMyKmBaWjmtOAGofam6boRJZB0wfvUdUR7a9rCN/dOyFZQvrZldHu?=
 =?iso-8859-1?Q?y2FWu51CzGCcRHA2vBdQ2c2lNeGgSDEh51Dd1eEnYzeWEK+LgLmFo7w75Q?=
 =?iso-8859-1?Q?k1sVI7H9BHlUBeIs5B/w7I5YaEyeWnVTUzkMwIqALjZ8VxTk6TdmXF+EIv?=
 =?iso-8859-1?Q?WBW7bMb8bhYNaXS6M10Yoxii6cgjiR2q0Ar5nfewEvE4U8uExNOcE2dVgN?=
 =?iso-8859-1?Q?IOQEDnmnwUbcbU85VyIGsWNhEzAMVBO/lkJXwExFr2TYagt8VMgv7UEJfD?=
 =?iso-8859-1?Q?N0z/HRpfxAaTFwFAqA7DwGarJ1OdiGa6ov0lx64MYx4Uuv3QWTPS3CMXQ7?=
 =?iso-8859-1?Q?ZVdpH5X54Rz9SJgkJay+IMikDpoGDV4Pyc9gSXxYj2FqJFr+aCS7gQ5sCT?=
 =?iso-8859-1?Q?7DQxJ6iMWQE5LN9sKuTHEbwM6PHRzA7ehHzVR1eOpH10vhV4F0MD2C+c9E?=
 =?iso-8859-1?Q?LyQbcAvfU5guPyPDeYA+XZoXBI8wO7gzJ9Ea0zWT0/chGPhsps4mRsaxlN?=
 =?iso-8859-1?Q?ULe5YuLUUXrGmOikP4PaxLIiOEA9aZx/d08gmipPCOKS/kVhlfB7G943in?=
 =?iso-8859-1?Q?lSq3U7QR2hhuc2SLvPWGP4UYour5uPeW2XfMbjLnlTv2dEqgljvVP//gyr?=
 =?iso-8859-1?Q?qw1IsQ4zREtLN+qaW30i9q+XbX5x/Mshf60THiQKy17Jir3TSseLzx1DeY?=
 =?iso-8859-1?Q?YR8t1wsDnGoaus9esGYQ9nE4KyrsHq1imTejltWpL4LNdCbhfTUN/gjvSl?=
 =?iso-8859-1?Q?k/mRxkc8lgme7gGD5Q0f9XHIO5HmBwVxXsE4SN+urxuEWpyqAFDSyE3iXg?=
 =?iso-8859-1?Q?Ta9jD4QKII3JrhejkjZn8VutX2ZVQZapSyQ8Xxw7CaIjYgXFCkRDotktBk?=
 =?iso-8859-1?Q?D8jFHQFrTtGT+HAufq7a8KuVBYwA01SzuUp0d2eFMGewUo02LyJdNAeHl0?=
 =?iso-8859-1?Q?bLHFpcymnsDa79/NPgkaaNljyQvVMaEr2TjmXwp71I1oztuUZACf5F+TAD?=
 =?iso-8859-1?Q?AvVvw/OdlA95E5obxpqV8XEC1q7RGw4yC08YbLh4vAl/dCccNRX6UkmEYR?=
 =?iso-8859-1?Q?ZV2ZhIITCgHHbM0P5TWgk2s9n2SswfurbE2xzPKV1QNMW8Q34P5LgHESKy?=
 =?iso-8859-1?Q?j3BoRKalJ3WZKuKfbFOio3Za0qvVxGKDL7ToqU0gzKT/bnZ7UMn0Fh3Szn?=
 =?iso-8859-1?Q?sswReRP6yDwUpSOYtDHNlBy/rvZOwjnI0l3aCOaaPVkApHVJPhPCWmZ2xS?=
 =?iso-8859-1?Q?vKw7Fym2peC/rFX+kL+0gyWvv8vph3nR4EohkD1b1UbmNPoPWoX/b5imQM?=
 =?iso-8859-1?Q?+Mu/5JIxODyIyjFHJqdI5vSfiEhLrxX2V1L+HsrPIRIqhkE1E0JT+L33uS?=
 =?iso-8859-1?Q?R5V0w/GAQmoRmW4HTf8D5cRnQcEp8E0dk4HHt6b8ijzuRNv5BTkoAFc5mB?=
 =?iso-8859-1?Q?FdYCzXq8AW6rUWNOciQb/tmLM3cAGnL6HU2P7A9njuif9eZ/CIfQ11u5pX?=
 =?iso-8859-1?Q?VUxrE+DX1b4JA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(7416014)(366016)(1800799024)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?EVs7Hib/YQrZocOwzz+x23CyPWEr0UI8r3LB840xlBbf4FRKXEYCJIrbeQ?=
 =?iso-8859-1?Q?Ay355t6XQxmaOebOIfy7e7m/mEd0mGt1LYObIGKjvEW8eYPOOoJ03zinRc?=
 =?iso-8859-1?Q?tuN3WFEUNCJlpjNsIIvfdTe7PYAFIgCnarthkfToVsgkmHAl9Tj69tF5R6?=
 =?iso-8859-1?Q?TuuYj/ha7pn7irCFCHvRlOOI8ADqgLjOSnEUvePHEslVA++iV2rkP6IqvV?=
 =?iso-8859-1?Q?Ex5iaga3mv+/SM67KmvqvJxG69kMQbMIYB7EM9Pn6gyoetxsCi/9mfBAHL?=
 =?iso-8859-1?Q?voMip2ReyR1ubqCbBpAMCN0QgJ2xH+5wCxoBSCTi0uhpZpnvBu9tntiddQ?=
 =?iso-8859-1?Q?mVNPMOc6SojQShmVJhzPbqgTPepRAAjiZzDSP7V0AAbNQNGmvVgop3XXLF?=
 =?iso-8859-1?Q?5K5uC8ymyrQUKHrMOfLixJ1Wly9Oor5eBEHystgQbDbInsqsMu7/ShSSB7?=
 =?iso-8859-1?Q?24Rll7MycNIeD/mj5mFNg6PnBwWq3jz+WIcOCLMF1Ee/AsV0m/TEmcegQg?=
 =?iso-8859-1?Q?H9iobEwxuNC63feN2ec33ct5aLR82Z7osvlNo2fwgxv3guE/HeXQV425z4?=
 =?iso-8859-1?Q?Z0lrfiZLGVMRySdpR3U/oSJbSHokTiVG3NhTknp2ryJXqCH4Hq86bmOjYE?=
 =?iso-8859-1?Q?kVIksiDx/0vu9sDg49tOddE6NbQ8Aug7t8JtgvTusf2TfzTCPZaqe/54oR?=
 =?iso-8859-1?Q?xqS8j+dbfrZ5ppB8TcQeRYJU/ljTg3U3a7ioLCqV/z3KM8MFVT8iP46OV5?=
 =?iso-8859-1?Q?GoMLeHLRA+y1k1Pce8JpORc4lK10iioQND87GosIUxtiHIwQ/MtZ1e2Tc8?=
 =?iso-8859-1?Q?hDTZ9ItDgaBbvGMYKsdI9vU0ZAw5PGaVXH2vVYSjzTHAQulxszxS4W32tc?=
 =?iso-8859-1?Q?ColI4hWjTye6JoqbAinoSiX7zywkdX7yuwtOkChPN2r26Tuu1Rfbn4okYE?=
 =?iso-8859-1?Q?EI19FkGFColX+5muZFkkUa/fSLZCGKCWqIScTGWAQ1rs1ngiCoPaYmhsEf?=
 =?iso-8859-1?Q?r/s1sXrQ9VTSWcuuDZizJHUvXPflI4FBB4RqHpBff6AMefip0hlbkPrnw+?=
 =?iso-8859-1?Q?dNR6laZgTsOchdnLGiOMlu7aflgoRI+STXG97/cRG6FnKtSEdB4LeOD5wo?=
 =?iso-8859-1?Q?g1Z/Bd1cVRMz083uy5mb/1V1rZliuf94NdGHjPuelp+AChioqaAFh5gTRr?=
 =?iso-8859-1?Q?kQyXNViMuhId6MRzBOzlMYiy59frXYnr2528az/0V/v5hH1wffkRx25TwX?=
 =?iso-8859-1?Q?GGtWCTRAi9Ky+/yifp8EGOcPCgU5DLjQUJutjdCl6sV+YXXXnjjduA79TI?=
 =?iso-8859-1?Q?gpiiluy1MsXflDM3BQyO6USh7TIF21o/LWRUzpfn4kf9gLpUE/wogEcPbK?=
 =?iso-8859-1?Q?uQrxblSyckJcXMYdhg+e4V7Ql1eIT0IAq6Hg6J+u5ElPZ9aNE6XXHBuAYD?=
 =?iso-8859-1?Q?FNWSUs5UHmfR7w7d6us38PTVrPnG+Gz6pVOWnuq5IHO5t3n1bCynL4rkU1?=
 =?iso-8859-1?Q?Js96I5v1b2Xf/61VnTwPAKETBtghlVXSPLfvdl2irfv4+go2JcFcPBbDpX?=
 =?iso-8859-1?Q?IE9Jjok2dzdgWKrzTKNK7AnGpRZd/DKuEVVTiFP+nhsgncBgiBO50y3nQI?=
 =?iso-8859-1?Q?3gJLj1iN35sGutwVDLJjjUIXEGpNDGsmfCWyUZ1IjWhE8ETQEOBSM2g0k5?=
 =?iso-8859-1?Q?PIBEzHwzB8ip/BCEYWKe8XIxUdv/daDZME2rMd5fzR1FuVyBqLnzrRN4gn?=
 =?iso-8859-1?Q?fM9U7BVAgbYXKNrZaIRdTgf9XZcn+IrDQsJUW4b6KpxgwZJn0R3/6yWxXv?=
 =?iso-8859-1?Q?hdGAHhpuOswSk8ZAxWnG+5uSZjbN3Ma7w8+NCZ+SaKwk4lVHsh2rgvyE86?=
 =?iso-8859-1?Q?cR?=
X-MS-Exchange-AntiSpam-MessageData-1: 3GWBIFOM3hmEOjtDXqOl2Vm7Sdqdys7abXc=
X-MS-Exchange-CrossTenant-Network-Message-Id: 375eaedd-42b2-4fe4-511f-08de6adbb26e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2026 08:41:36.0649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fo40hzmO9pRSSsUjmx1Q9hJSK4YFaIeRi5gqELHfj9ujAAwuZU6qpDqgaDwGAzGGJd+RjtgPsbDx+6oC7GSjL35+/Xxx8UMpNLfQJtOthcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4858
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770972101; x=1802508101;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=CmUTTNR6XKvpizkVHMJ6HT2etnrNw5Bw6QozyoqaBE4=;
 b=F7xr4B8hlYvJ7UMHSqqdxTnHB/kkPlqYvY5JzevRKAetSFbc07e9VDss
 lHag7tDJ9URe9OELKwBMOixTjmUca3VG9WbSqt03f6KUi5DZ+EOXRjRqp
 hJVctDQ8d0O806m+N/QnVkbNaL7DNEydBk8elzJxEJR/5H9sSxmJSXs+Y
 PjnId6qn1c6c26xG3whIFzI4v9WTNU0TqhXMsUGG8RnKuKvkWVIJz4giI
 bMkqNozD5IXC6p8aKo1gv5poW6C1VTiVP1r7A1vLIsHIJCmcrUXFB5znq
 qhXT6Ex1B+0suutU1oK9/3qW1irQGj0dn2bDhIoEmSLf9MNDCB0CoW8p8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F7xr4B8h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 4/9] ice: change XDP RxQ
 frag_size from DMA write length to xdp.frame_sz
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:dtatulea@nvid
 ia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 50B64134262
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 04:57:25AM +0100, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Zaremba, Larysa <larysa.zaremba@intel.com>
> > Sent: Thursday, February 12, 2026 7:33 PM
> > To: bpf@vger.kernel.org
> > Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Claudiu Manoil
> > <claudiu.manoil@nxp.com>; Vladimir Oltean <vladimir.oltean@nxp.com>;
> > Wei Fang <wei.fang@nxp.com>; Clark Wang <xiaoning.wang@nxp.com>;
> > Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> > <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Alexei Starovoitov <ast@kernel.org>;
> > Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> > <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>;
> > Stanislav Fomichev <sdf@fomichev.me>; Andrii Nakryiko
> > <andrii@kernel.org>; Martin KaFai Lau <martin.lau@linux.dev>; Eduard
> > Zingerman <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong
> > Song <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao Luo
> > <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Simon Horman
> > <horms@kernel.org>; Shuah Khan <shuah@kernel.org>; Lobakin, Aleksander
> > <aleksander.lobakin@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; Bastien Curutchet (eBPF Foundation)
> > <bastien.curutchet@bootlin.com>; Vyavahare, Tushar
> > <tushar.vyavahare@intel.com>; Jason Xing <kernelxing@tencent.com>;
> > Ricardo B. Marlière <rbm@suse.com>; Eelco Chaudron
> > <echaudro@redhat.com>; Lorenzo Bianconi <lorenzo@kernel.org>; Toke
> > Hoiland-Jorgensen <toke@redhat.com>; imx@lists.linux.dev;
> > netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> > lan@lists.osuosl.org; linux-kselftest@vger.kernel.org; Loktionov,
> > Aleksandr <aleksandr.loktionov@intel.com>; Dragos Tatulea
> > <dtatulea@nvidia.com>
> > Subject: [PATCH bpf v2 4/9] ice: change XDP RxQ frag_size from DMA
> > write length to xdp.frame_sz
> > 
> > The only user of frag_size field in XDP RxQ info is
> > bpf_xdp_frags_increase_tail(). It clearly expects whole buff size
> > instead of DMA write size. Different assumptions in ice driver
> > configuration lead to negative tailroom.
> > 
> > This allows to trigger kernel panic, when using
> > XDP_ADJUST_TAIL_GROW_MULTI_BUFF xskxceiver test and changing packet
> > size to
> > 6912 and the requisted offset to a huge value, e.g.
> 
> "requisted offset" -> "requested offset"
> 

I am curious why codespell thinks this is fine.

Will fix, bot has correctly identified that u32 rx_buf_len; is not longer needed 
after this patch.

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > XSK_UMEM__MAX_FRAME_SIZE * 100.
> > 
> > Due to other quirks of the ZC configuration in ice, panic is not
> > observed in ZC mode, but tailroom growing still fails when it should
> > not.
> > 
> > Use fill queue buffer truesize instead of DMA write size in XDP RxQ
> > info.
> > Fix ZC mode too by using the new helper.
> > 
> > Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx
> > side")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> 
> ...
>  
> > --
> > 2.52.0
> 
