Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DwlfEcvEUGo34wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:09:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7809D739787
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:09:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=YwIcYLmJ;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3F1B811EE;
	Fri, 10 Jul 2026 10:09:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cZRvMj3v6o17; Fri, 10 Jul 2026 10:09:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E621811DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783678152;
	bh=zE0aOwgzXjB77Mj9jO7PhfyC5euNyy8WXLKUGkrpXzA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YwIcYLmJjb5a/w7y8v5rcyAAh9Cbgr0IssT364+bzxzBFi5R02X3Ir2SN/L4oUDGH
	 Y1bF+q/TlJHdRL5HYY+IInSv69V7cnq/zwA5sLT4km+y8fy0K2b17VH6+UKEvw7Tl3
	 nPhaw2xEnXVgXyCelbE2w0rTcu1zU1znO8QefSVh3CF7Iu9PGruaB2ntyg/Pp+e4wR
	 P1A4nrtq/wyYpsPKwTCuOLFsj5QENx/eF00orJoxRks8A4H+lfBGCs5dwelIS65MsH
	 eLjIaLxwEJ7UuoGJSA42ZO1DXxoOBWBrpvHqwv7/G53zV8UbIzCzD1b+5w3gb+Icb6
	 Bnwzb4g3YZK8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E621811DF;
	Fri, 10 Jul 2026 10:09:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 53A78320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 498134018D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:09:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bmo5-WBG3Nzl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 10:09:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3A59840142
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A59840142
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A59840142
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:09:08 +0000 (UTC)
X-CSE-ConnectionGUID: NRHoFxBtQMy14MxJZrrIHA==
X-CSE-MsgGUID: te6804GmT4+Qta21RqyVzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95529145"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95529145"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:09:09 -0700
X-CSE-ConnectionGUID: AoxEI526RZqY3Q2LTQCF/g==
X-CSE-MsgGUID: vfY45/7uR4GYmi+XElIoSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="278089133"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:09:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 03:09:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 03:09:07 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 03:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rX0fYDWVZE3VW6yDYNHy5jsTpcL3jA4KNOjnohlmivB+T/0lCeW7j5m1QiD71ny7n+tmeIPBSvpOPPosn4jTcnGRq2SL/WhhVQd7pf57TMHxpoYw2xV7Pw7i1mR40k1aXYg2ows5NHmqWns/+1mwxupKuXItkLnAalcSw+qQkU0cf3XpubDnV6XXC3YMvEzOkj8TAGpp+TgCLKHT/wZIWiWupddguFdFP1IvJnl8HWMjnEQZgwm2Pi6fDezKMo6jWm90rwSgxDXlrH9Muc3YslkucGG69sZiJoJ8UvdKX25W7mtD1fn32aEW+qDTItPelWskYvUGNly02J6yujlkng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zE0aOwgzXjB77Mj9jO7PhfyC5euNyy8WXLKUGkrpXzA=;
 b=hpNVqaWs9xEjYAcbEsfTVsQCPP672HgJn7+j9pmrzdfMJTLed1IoDajP1mb2p3IH+cdqjYDXy/3nA2sapiC5fE7eOoxwjlOgKhilSlNBZa0xIAMyITOWlv8jV7jaJ9qFN9OEme7HsqYHHlw1dgMDooPvDHs1hUz7UZB02Fd5xv/pkwYL8UzCU/A05weK3iSg2dZ70i5HyBMEG+duRBXaePKDWfaS/sSW4FvzrAyN0y1oyOLvJRJPnwbXk/CmO3IxfpNckuUY09j/hRX0BMJptd6FbJzMxIsSK8XDqhECkKq0uSeSMTVEd/ivr094sSXEgD0kmmjLqgclZs3hPCzBWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV8PR11MB8509.namprd11.prod.outlook.com (2603:10b6:408:1e6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Fri, 10 Jul
 2026 10:09:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.014; Fri, 10 Jul 2026
 10:09:02 +0000
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
Thread-Topic: [PATCH bpf-next v4 1/6] netlink: specs: Add XDP RX checksum
 capability to XDP metadata specs
Thread-Index: AQHdDxlIFTEtJ/W0m0qzpkQ9OeV8mLZmifuw
Date: Fri, 10 Jul 2026 10:09:02 +0000
Message-ID: <IA3PR11MB8986F269901513518E3B90A6E5FD2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260708203410.45121-1-deliran@verdict.gg>
 <20260708203410.45121-2-deliran@verdict.gg>
In-Reply-To: <20260708203410.45121-2-deliran@verdict.gg>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV8PR11MB8509:EE_
x-ms-office365-filtering-correlation-id: 1ba5a1f4-8c23-43ce-6633-08dede6b445b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|23010399003|376014|366016|1800799024|38070700021|6133799003|56012099006|11063799006|921020|5023799004|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: lVQ5k7HjJ69+ZwBoCD+wsg3A80A7w7VyBOmb+/N5C/KMyapfUiFV2tHo+PbLmbQ/LeoRpYu9eq8KH1jjnNMRn6J65PmS6aBXXS61bsD5IHENC1tTyinHyXXQs/OTwJWK/blHCZUNGOz8nrtsUDCBdL0EAWAqS7lmf4k4Wad5mplODwxJKwOeHXvtM+Aieu0dgbC9Ta1jAv3wMCp5m1dSdKrNSf68eHB4K1AKW/WuiMXqeHkDRWpYDfAUcR7kPOFjnrSZks2xuvm0GiAxjV+D1lxklRcJ1jPrhNstYsOAtGP9GjoVEh/rVMUXCVZnS0cAv0O3VMObv+4+TS31A3LOR8b3P48riLsepqG8jOgUuhmWWazXIbRyAbJ++d2KNUZUt6QtEixmxl7tXrTbqgN32J4EfpQ5xsrM49depVAznkJGlTSpVFtb1h5+JuXUMq+u7z9gnCCxjsvF4af+Je5gJipzOogOlF4a2FA2Do/dMF4zs/PNg+XPYSegA7o9wSDFGxuRRphBEXHtTrsAzdi3lTpp6WeUVW0HAq1u0fg2n1AzE7WpPUUAok9LTpAV1bYslzzE4x7WJ1pRTk5G7ICcV+5w17sugspf5NR6xNKufMX/cHiCmqPUzw66dljn3yx3uD2n9fb9UvYqf9eoWMl6AgGeS5YfZlrPEaB+siAI7c2bIDTpIwNstdMgoyvESn945KdO/2GUA4BMbIzcSwXcdz+GHWP/OG/QdvKx0K+azjzro8ZBoftuS3nneG/yuAhI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(23010399003)(376014)(366016)(1800799024)(38070700021)(6133799003)(56012099006)(11063799006)(921020)(5023799004)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nWeQcKmcXNhDPYwCzdt2yJD1BbQT73TuqcUuMLWPgBH86Q1KhDdGZIt3MlOS?=
 =?us-ascii?Q?UlIWFlx/gsqbLq5JWjlIybshgCY4TakY/NpHzGuFYRY+vqaiYgpi21FGrCuy?=
 =?us-ascii?Q?9qJiu1rKT6/ox2pdvNEFen5GNkgbLKAM1gu5neUcqp2NXRPeeIH6P2hdcTa7?=
 =?us-ascii?Q?u9A04cUk3J7OSYrxSPpE89a5GZ1Ia4+16F8rzQY3DiGJSx+cxr7L20YqpS7K?=
 =?us-ascii?Q?RTdNvd4NCHXxXeOgRr3+4xJ5QpW42d77lBVZfgmB26NJwpVDeRUUkRo8nCEX?=
 =?us-ascii?Q?8u8EsV+dR6cKjKS7ZtK2IsUGtiUD/KzU7xQ30r9Al1lwaqYHEZaA6e0hzj/i?=
 =?us-ascii?Q?to8TYs9c50eNoGhIzK+xCU+/Q05dbHS5iVqtx3015WtxjqPmygulVaZxd//Q?=
 =?us-ascii?Q?UE8SD+kksWDR38m2f5iorsKPh9H667xM/uGxS+Ci68NvW7Hdnax6FpR7R/Uc?=
 =?us-ascii?Q?e1Fax+XfsNQgA1NN5UfFFfMzi2xlJmqnuUgc7v71sDBnMI6iVcrGJp/LwGAP?=
 =?us-ascii?Q?8FCEH6mH9nP+R289axpmyPTLDNB0JedYbAK4SQnf7oKhr3NCONoXSo261CSY?=
 =?us-ascii?Q?6UpakBB/k6dBLFx/1jOAsiFgpQ5lV0MEMVK5d+tmRIEs4QcIia6WtoyQwpnu?=
 =?us-ascii?Q?WzKnn2XL0OwbYelhcWbsRuKhrtcXK0HTzcA+aA4eT0qYNLj7EBPhhrbnHXb1?=
 =?us-ascii?Q?V4jco2o7kbhjYze5Bwub/X11lCYTF6HbX0hLvmTWs6K6Jh2MSzCohBB3gQXs?=
 =?us-ascii?Q?88JdacVUPLOL6YmJqsXzMik2RtztrcjMNG6FsqmjpuxCBebCqbYkWnkII9QD?=
 =?us-ascii?Q?Hdc/N7WUUDBwJh9+FBD5sFVqKRHfA+kxFDDcfL8Yq9S++u5ERYp/PXkVoAcV?=
 =?us-ascii?Q?xbq+8YYCyEvx2OwcRJBO3ZdZ/atWlEcI929VGoEn036t2SA7ShuA9ccNzoaw?=
 =?us-ascii?Q?VyT/btoasHSnBf2GoRnEFHETFeCPAKhrPrqZmiC2kso+h62iyeaSjLi0t3SX?=
 =?us-ascii?Q?5iq6lln5xDrkEvM39IaEIXEh0nS80wMdmukqrjSC5zTvB1ym8/AwugmXZ/uO?=
 =?us-ascii?Q?Qalb2OvaKDjwv1qKreCJpIKC/ANCjOs9bl6Zt4bRc+e9+19IYXR7i4bYl6BA?=
 =?us-ascii?Q?K5otRfO494RM6E9EegA/mXbUlk+BRlUQb5qzb/daEJZipY5faYUy22O+1ibY?=
 =?us-ascii?Q?0nDjyQgDUPZC5G23nIxAVKigYUdow7PFMuW4nlGJshnBxdlDEuZn/v1hYZGX?=
 =?us-ascii?Q?QDoQ5X+DuMVa5Vvzizqzf1f7lADtgxGVEZRFuvyYSeMhqOB36u2itZFLnowj?=
 =?us-ascii?Q?ZmaaYwMcVNL5Q7zoNY6tDo5klrUwJxUCw5EedNAwZ8YgbjDd9Ptu/h2K2iBb?=
 =?us-ascii?Q?a9yeGoG8XMPnCSBplOqd2cCoTX2twspcHYPQEqpnFevm9qX5FPPIaVdNb6l/?=
 =?us-ascii?Q?6z3b/FnLh6VeANlbqEZoP8JaWNIRbyDEsegvf1wh+29RQtRB0oOkkrSkmlEO?=
 =?us-ascii?Q?pwMAl7/RrX6+SHQLcvG2XdDsLUEs1G4KpFrmzppXMU3qWw0pYq9WKSd2U2re?=
 =?us-ascii?Q?e/ipV56rF/QcI5zNghmExi39b3MqB4e9d44iXqOFHU95ueWv3b9SQ6TD/v/f?=
 =?us-ascii?Q?xKnmTF5aAc21fleQf0BK8+pktdlmPGO2vGPd/SgBjF9VHgaG0E2Qp7XPnHPY?=
 =?us-ascii?Q?RPQogudyGIiC95bR1ApTasCMCTb2tEKjXeDT3zeoQkuw9VsnPYWW+WWAaQsD?=
 =?us-ascii?Q?qORIH1bmycxFG9YYqbtIifFjKBzV5ZQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NbGupqzEXioCBXb5WrDbbjR+e/WI33aoj/DqwN+DrjPcta+un5yEgYMA7Rq2Q6348O9IfDUW/2wt5xnSEdB3ka4EjeIs7pHeuavkcXWyqy1iMzSMQYxU8aUYmpLZeHZFNQlBMStWOZV3XLoLrkYqqHpxW8hxSsAfnKrhv/xJzUxcVj4bZ51yPGJ8+YYGLfho/jI4vRN5OpumLdl/Ziu9SPMci4leStPpTGnWtp7XLIJqxXc2sl8Q2EPS0/XCc61Pqt8nLH4TvTDFsDmHeYqpsg2v8R/IOvi/GEuYexv+UMrp1xBpazt/5tC1KgUNqrGhFt2e3MqEYs8+U7QHK+7IfA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ba5a1f4-8c23-43ce-6633-08dede6b445b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2026 10:09:02.2352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +rx4vCcueKCsgGJBYxISw6AgRYGxfgEFFXmtFSlKhGT186QdXHKerlwbItdsbpgLvrnxowYZftXFXw41fIktMqOFI2lkUtnmXDSjPSchAyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783678150; x=1815214150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yzNulAacOpy59RdMpJLtIue+mcD1nUlYwe4czWfMQyg=;
 b=gdJhtUjRNVex6bzDgug5m/8zqIcsTN7bpOKXD6UMKOuHoCR9E+WgIR4e
 7xdXMrOzOLAff4WeYPT3GzD8pKANdFtNYg2ST+H4KMRZwbQxEh8epoNkG
 WBj+9p/zcYnOZ/WSmwqsxpib645joGPLbUW9h319gKTWPbGwHLFKr1rFu
 Zx3XzVBSH7X188cBb5HB4XHUh0CpLxaHFBuV/wH9o4lD5LyPHnts+8u+U
 W180OSUWVQijcRXMW8iuGSWndLAB6uuA4Np2EWNT3DvZ5O2GCZcTIlHRQ
 a9K4Rj6052mjT1RpvvJUZn6XnMN45frTBoCp5OAgGN4MPhnUJqqHQ3qFO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gdJhtUjR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 1/6] netlink: specs: Add
 XDP RX checksum capability to XDP metadata specs
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:deliran@verdict.gg,m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[verdict.gg,kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7809D739787



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
> Subject: [PATCH bpf-next v4 1/6] netlink: specs: Add XDP RX checksum
> capability to XDP metadata specs
>=20
> From: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> checksum will be use by devices capable of exposing receive checksum
> result via bpf_xdp_metadata_rx_checksum().
> Moreover, introduce xmo_rx_checksum netdev callback in order to allow
> the eBPF program bound to the device to retrieve the RX checksum
> result computed by the hw NIC and reported via DMA descriptors.
>=20
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Vladimir Vdovin <deliran@verdict.gg>
> ---
>  Documentation/netlink/specs/netdev.yaml |  5 ++++
>  include/net/xdp.h                       | 18 ++++++++++++++
>  include/uapi/linux/netdev.h             |  3 +++
>  net/core/xdp.c                          | 32
> +++++++++++++++++++++++++
>  tools/include/uapi/linux/netdev.h       |  3 +++
>  5 files changed, 61 insertions(+)
>=20
> diff --git a/Documentation/netlink/specs/netdev.yaml
> b/Documentation/netlink/specs/netdev.yaml
> index 5f143da7458c..6d0d90d3a614 100644
> --- a/Documentation/netlink/specs/netdev.yaml
> +++ b/Documentation/netlink/specs/netdev.yaml
> @@ -61,6 +61,11 @@ definitions:
>          doc: |
>            Device is capable of exposing receive packet VLAN tag via
>            bpf_xdp_metadata_rx_vlan_tag().
> +      -
> +        name: checksum
> +        doc: |
> +          Device is capable of exposing receive checksum result via
> +          bpf_xdp_metadata_rx_checksum().
>    -
>      type: flags
>      name: xsk-flags
> diff --git a/include/net/xdp.h b/include/net/xdp.h index
> aa742f413c35..e255ff786131 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -586,6 +586,10 @@ void xdp_attachment_setup(struct
> xdp_attachment_info *info,
>  			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
>  			   bpf_xdp_metadata_rx_vlan_tag, \
>  			   xmo_rx_vlan_tag) \
> +	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
> +			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
> +			   bpf_xdp_metadata_rx_checksum, \
> +			   xmo_rx_checksum)
>=20
>  enum xdp_rx_metadata {
>  #define XDP_METADATA_KFUNC(name, _, __, ___) name, @@ -643,12 +647,26
> @@ enum xdp_rss_hash_type {
>  	XDP_RSS_TYPE_L4_IPV6_SCTP_EX =3D XDP_RSS_TYPE_L4_IPV6_SCTP |
> XDP_RSS_L3_DYNHDR,  };
>=20
> +/* Please note the driver is required to invalidate the checksum if
> the
> +NIC
> + * reports CHECKSUM_UNNECESSARY or CHECKSUM_COMPLETE and the eBPF
> +program
> + * modifies the packet since it can change some fields validated by
> the
> + * checksum.
> + */
> +enum xdp_checksum {
> +	XDP_CHECKSUM_NONE		=3D BIT(CHECKSUM_NONE),
> +	XDP_CHECKSUM_UNNECESSARY	=3D BIT(CHECKSUM_UNNECESSARY),
> +	XDP_CHECKSUM_COMPLETE		=3D BIT(CHECKSUM_COMPLETE),
> +};
> +
>  struct xdp_metadata_ops {
>  	int	(*xmo_rx_timestamp)(const struct xdp_md *ctx, u64
> *timestamp);
>  	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash,
>  			       enum xdp_rss_hash_type *rss_type);
>  	int	(*xmo_rx_vlan_tag)(const struct xdp_md *ctx, __be16
> *vlan_proto,
>  				   u16 *vlan_tci);
> +	int	(*xmo_rx_checksum)(const struct xdp_md *ctx,
> +				   enum xdp_checksum *ip_summed,
> +				   u32 *cksum, u8 *cksum_level);
>  };
>=20
>  #ifdef CONFIG_NET
> diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
> index 2f3ab75e8cc0..f8caade93c8c 100644
> --- a/include/uapi/linux/netdev.h
> +++ b/include/uapi/linux/netdev.h
> @@ -47,11 +47,14 @@ enum netdev_xdp_act {
>   *   hash via bpf_xdp_metadata_rx_hash().
>   * @NETDEV_XDP_RX_METADATA_VLAN_TAG: Device is capable of exposing
> receive
>   *   packet VLAN tag via bpf_xdp_metadata_rx_vlan_tag().
> + * @NETDEV_XDP_RX_METADATA_CHECKSUM: Device is capable of exposing
> receive
> + *   checksum result via bpf_xdp_metadata_rx_checksum().
>   */
>  enum netdev_xdp_rx_metadata {
>  	NETDEV_XDP_RX_METADATA_TIMESTAMP =3D 1,
>  	NETDEV_XDP_RX_METADATA_HASH =3D 2,
>  	NETDEV_XDP_RX_METADATA_VLAN_TAG =3D 4,
> +	NETDEV_XDP_RX_METADATA_CHECKSUM =3D 8,
>  };
>=20
>  /**
> diff --git a/net/core/xdp.c b/net/core/xdp.c index
> 9890a30584ba..9bcaa423ad17 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -961,6 +961,38 @@ __bpf_kfunc int
> bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
>  	return -EOPNOTSUPP;
>  }
>=20
> +/**
> + * bpf_xdp_metadata_rx_checksum - Read XDP frame RX checksum.
> + * @ctx: XDP context pointer.
> + * @ip_summed: Return value pointer to a bitmask indicating available
> checksums.
> + * @cksum: Return value pointer indicating the hw checksum value.
> + * @cksum_level: Return value pointer indicating the checksum level
> result.
> + *
> + * In case of success, ``ip_summed`` is set to the RX checksum
> result.
> +Possible
> + * values are:
> + * ``XDP_CHECKSUM_NONE``
> + * ``XDP_CHECKSUM_UNNECESSARY``
> + * ``XDP_CHECKSUM_COMPLETE``
> + * ``XDP_CHECKSUM_COMPLETE`` | ``XDP_CHECKSUM_UNNECESSARY``
> + *
> + * In case of success, ``cksum`` contains the checksum value
> calculated
> +by the
> + * NIC. ``cksum`` is valid only if ``XDP_CHECKSUM_COMPLETE`` is set
> in
> + * ``ip_summed``. ``cksum_level`` contains the checksum level
> reported
> +by the
> + * hw. ``cksum_level`` can be considered valid only if
> + * ``XDP_CHECKSUM_UNNECESSARY`` is set in ``ip_summed``.
> + *
> + * Return:
> + * * Returns 0 on success or ``-errno`` on error.
> + * * ``-EOPNOTSUPP`` : means device driver does not implement kfunc
> + * * ``-ENODATA``    : means no RX-checksum available for this frame
> + */
> +__bpf_kfunc int bpf_xdp_metadata_rx_checksum(const struct xdp_md
> *ctx,
> +					     enum xdp_checksum *ip_summed,
> +					     u32 *cksum, u8 *cksum_level)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
>  __bpf_kfunc_end_defs();
>=20
>  BTF_KFUNCS_START(xdp_metadata_kfunc_ids)
> diff --git a/tools/include/uapi/linux/netdev.h
> b/tools/include/uapi/linux/netdev.h
> index 2f3ab75e8cc0..f8caade93c8c 100644
> --- a/tools/include/uapi/linux/netdev.h
> +++ b/tools/include/uapi/linux/netdev.h
> @@ -47,11 +47,14 @@ enum netdev_xdp_act {
>   *   hash via bpf_xdp_metadata_rx_hash().
>   * @NETDEV_XDP_RX_METADATA_VLAN_TAG: Device is capable of exposing
> receive
>   *   packet VLAN tag via bpf_xdp_metadata_rx_vlan_tag().
> + * @NETDEV_XDP_RX_METADATA_CHECKSUM: Device is capable of exposing
> receive
> + *   checksum result via bpf_xdp_metadata_rx_checksum().
>   */
>  enum netdev_xdp_rx_metadata {
>  	NETDEV_XDP_RX_METADATA_TIMESTAMP =3D 1,
>  	NETDEV_XDP_RX_METADATA_HASH =3D 2,
>  	NETDEV_XDP_RX_METADATA_VLAN_TAG =3D 4,
> +	NETDEV_XDP_RX_METADATA_CHECKSUM =3D 8,
>  };
>=20
>  /**
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
