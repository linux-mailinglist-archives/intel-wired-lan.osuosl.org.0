Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GSzD9HqgWkFMAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 13:32:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C944D90D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 13:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB4C183C7F;
	Tue,  3 Feb 2026 12:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iqyXUS0iEDJ7; Tue,  3 Feb 2026 12:32:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00E6A83C82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770121933;
	bh=BGare9RCdsrRKkBZygDFWmTjRL7tAgHJP2zbRWCRuAo=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4LiK2Lf0B7gB6pQC9LlWwpeTXgBSzPUGp9pxlEhLm12tslx9bLuCUW/k1kN6ZdKbi
	 ig3c3cZSSLvmoG03AJprh55FaJWwcDvxr1LFImQ0wDVPvZ0DiQ2IAu1wrgSnbs4tjR
	 ncqD8IzqN2lgjI/Q8c4vCSkEhwQHOj2gWhv3QBtMXJa3OVGMHbfAppl7p6ZefIdlGV
	 TZaOiTQcpTOOhSUeC/fECB8Nc8aW+14G464bn15JHhDCwch2mfIP6Cc5OJDIVmJDV/
	 ETjnTu2jTvH/y/BwpdYpbyoa9yzyyfNtH//LaKfktlezt1lJLxzcJsFyEjSoIeNjk6
	 C6ISvAIWEa2OA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00E6A83C82;
	Tue,  3 Feb 2026 12:32:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 72D27F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FDF06086F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:32:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EHA7khe5hshE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 12:32:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BF3D16070C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF3D16070C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF3D16070C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:32:08 +0000 (UTC)
X-CSE-ConnectionGUID: CvQtuVqkRmOqyw2ajblJiw==
X-CSE-MsgGUID: 9cyvJm60SPOag1+Jfd8z5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71452909"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71452909"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:32:08 -0800
X-CSE-ConnectionGUID: uUbGZ//KRqCYVnPQcE5/bQ==
X-CSE-MsgGUID: tDqYSAlOSIGwtpOaPrKnpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="240808885"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:32:07 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 04:32:06 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 04:32:06 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 04:32:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rTttfUMhxF9qkz2RB56ScCLuXGliKJA1D/RdUoL8pJtfNcF9E/nlu+5aRdvLwZS13Dn8b6nj0b3rtokyjjN10NM4YoAsRKnXrhVfKVLRa1cgjlHiTbx1PnkYVvu6CovDzoDKrCh07NMOjCSZFKv3nuhNGIQjg4ZUL8GzP6BTUzSrv9OaiyExRj7N3ySK9zbTrU4xmzD1PFbUWIIoTuvYvo83H2hX6i/Ww/d/1MdxTz1hN4qnyZNjx7LP8sr1PH1Nv6g+unVdryJFW/fReLO3nHSIY3SQA94O2s3ejg4tumtvsrBbqabf6/LQhjdW15LSRV5vR90BW8NzgMqwO79S7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K/EuUbDo7vJm285D9OJ2UZ0pLoTBcTwNvdvTIqDGBEw=;
 b=nG7+V/b61JvX0kcWRunNZmuPIl7Xo52y/3/CsjU5RMzqJWJ+uf0hXGPcGsoAnfhfBRtRv0Tj3jI2vaaw8V/qp/KGtwS7z23hviXME2xkw54iogCwzz9LRaex3HQhJnLqnw41A+64Ty/R/Ee6kcaBle+KFaIYSExWEhht/a8v0ENZm+v4DsVRXHHXWkQxwDx+DHenRelc4sbEAmkFTU+/KJQNASzLKaZ/W6bqVRuQzM1fjJcpgZlvb38eGctFfjouvC219ExDcU8Sds4PWeEBmbHhzI2SwDdu+PjF50p+kzFxoIdN/jtbEF4gnmmqffx5XC6HiOzZS3A7XOomrib2Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH7PR11MB6608.namprd11.prod.outlook.com (2603:10b6:510:1b3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 12:32:04 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 12:32:03 +0000
Date: Tue, 3 Feb 2026 13:31:51 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 <imx@lists.linux.dev>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kselftest@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
Message-ID: <aYHqtxtg3uNXO668@soc-5CG4396X81.clients.intel.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-2-larysa.zaremba@intel.com>
 <87zf5q109e.fsf@toke.dk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87zf5q109e.fsf@toke.dk>
X-ClientProxiedBy: VI1PR07CA0156.eurprd07.prod.outlook.com
 (2603:10a6:802:16::43) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH7PR11MB6608:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e1256f3-a8c5-4c6a-94df-08de63203c5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|10070799003|1800799024|366016; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?39VD34ccBd8jO5WEWybHoRauSOwuQ11fw6rk1MupyewIS8lJqNgHnf7Ssg?=
 =?iso-8859-1?Q?ACJg0KHyk9lAatleKG7dGrbS3HJX1WEJdsDQX8eJKnmpq7tHMTReOOQvAF?=
 =?iso-8859-1?Q?N+IXQR0oLhyUixj0yWIyaUrvqD0R0iq+b9QLVwxh7j+6hf8VpfRpBohDTy?=
 =?iso-8859-1?Q?gQ6u3r+hnHGVffCO4AavjWd/vLbjux8PZrMBEk6ruiDnTtgKA0NMw4iUXL?=
 =?iso-8859-1?Q?5GAXGlfGrLiYlCOx/HetnvlQDVsiABdyCjNHgQIE6EW8SgIM8TEl/11FYH?=
 =?iso-8859-1?Q?dO2zFwl9SzglirJmWuKwNXO0+noabP7TFfn5em6wSxeyN35I+ZCNZGdxM5?=
 =?iso-8859-1?Q?odPW8Qbe3a9yOwLPhCnJbBYhAXbyJO/imjSP39qnfW08T6/4mlZCkVmkpO?=
 =?iso-8859-1?Q?gvWKuCJcLUI5LRJqaOKCIgaoYJ1BFMRxNvEUy1X/ohpMftHBpvOYnatqA9?=
 =?iso-8859-1?Q?OtEGoTAQnGJo131KzCyCDIVa+ruRGDNpFL1dtbQZvgw79u03JiLTo0oE0X?=
 =?iso-8859-1?Q?jB/3bNCw98EioCLj4pfvdQ6MJxig+9/IiikMZR9kK12/rqrg9CtvtnFHBS?=
 =?iso-8859-1?Q?7HcrbSxk+Vlw04h1uA00k2PndgG3Nb5mw/lEdkDBnuhxL+n3CaOZTblBhX?=
 =?iso-8859-1?Q?gYcwWt9W49TMaq7qgvHSSH///XVYvpy7egVnk9rUABcw+eIzu6YQGMX/iV?=
 =?iso-8859-1?Q?ZQYbOmhBH0iTMYqGP53tdG6z4D1c16LZa8S/rhlj9k4C3MCRN/J7ejx4kG?=
 =?iso-8859-1?Q?ECGBM8/W6WvvTnBfkRQi/BRH8P4XfvycWY1oSupUcuPcBJhdin6ORHvEPY?=
 =?iso-8859-1?Q?vDmcuxzSPz7ZsLbLqbmYIBWlj03HvpjO9VI7i2qKlh/15mLVszquE3pAxo?=
 =?iso-8859-1?Q?AsxHuAvJ5p5Yh4LnnEsnTnGZmw22AyktMwPon9M3AX90v0NNuOxMjS6gWH?=
 =?iso-8859-1?Q?0FyYA4admrv74lGPSmDAIyzGAObilwN+dCEE2uitH1D5AqezsM4VvtmkmC?=
 =?iso-8859-1?Q?P1I1pWnjU80hE97wHs/7HNx5GCWVsZEoJRLSiVRKAlsSEQM4kDMmg5Y+tD?=
 =?iso-8859-1?Q?TgvXp8S6stqfjsMOmUdKQOFMwpl45mICYRjnndeAUshJJ+WbBwjqPLJxMu?=
 =?iso-8859-1?Q?rFVeiOjNTn15FbWjbz0QLDLw+FkFl2H33f3i3mR74BA5S04mLLURn4L7d9?=
 =?iso-8859-1?Q?crhVlPSJWCDkF/JWqYK6N3ITb+W4EjK+IJWpe4DkRP9FQ9tyP8FWbdL+I/?=
 =?iso-8859-1?Q?jVAokXQmr8i3ZAqTQiZ411JsOXjYjU7CRFZEMlYrkxmRn0NybkKfXR8Imo?=
 =?iso-8859-1?Q?/BFMGQkXW0vdtoOgLFBbXZQr4frjzpyJhaSM/fy16dZkFVgMVorlOzfHyo?=
 =?iso-8859-1?Q?naouB5JhfX4eD2LbiLHIJhBpnqtoIG8WCbMhg6OwnyZi2NERJfqnlMg8ub?=
 =?iso-8859-1?Q?XFRh5dKkCAjWUq3rmoBFArp+zMEA0kgUKmAZ8JGYEs/DU42rtobcnLIxrx?=
 =?iso-8859-1?Q?K01nm2jbPb6+Uzg1ZjcY/vX94Cq5ePaF9OQ1jQy0FhajEkihiPMrV/KiEe?=
 =?iso-8859-1?Q?3MtFj1K2HXJ9LK/Fo7zVnjPQaiGj3BQS14+vSMqrFSTSijiNlUclHHPBKI?=
 =?iso-8859-1?Q?uCv1EGTj8A6tY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(10070799003)(1800799024)(366016); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?1aysHKx1c50Rcx5xMzxF+s6F2hWF0L8I5KzdpwB8NK6/9h968qks+o28+T?=
 =?iso-8859-1?Q?0cW+jw3eKjRqkiWYQIX80IO1ZRLs4KCpF1P63UVDK+dE3nrxl596hEmGZs?=
 =?iso-8859-1?Q?a/Wq+YOYemVrRu8MfJRCMUyQLaXVXEnkp0h7tSIAXFuHKY2uBLVh+NxyGF?=
 =?iso-8859-1?Q?O2BSssXFKlLDL8hbnkyi0Bjxx5OsOTHx8LP7dDV7ZOzIkL+Ok3Xk64RDls?=
 =?iso-8859-1?Q?5ospM8WjHF+H+XjdmPi2n5KHjgGqTXr2Wk5nN88l6wggyymhosVbfgkLCl?=
 =?iso-8859-1?Q?2geUXpFBOyDxWDc5wqhxziP9tyAvldxXSmEXbBesBHybWh4MMoONUQ3nNr?=
 =?iso-8859-1?Q?pGxp0Yiwh6ERZ4xpEAv377lfOctoqe2wevBFhv799PHk6pmc2j1cOHZCCl?=
 =?iso-8859-1?Q?oEhf/+3LmxMORrL4NBb8JtczHilWl0Xezeewwo2KeBRU+2jDw3xwJbbhKd?=
 =?iso-8859-1?Q?MdztywyvUYYbG2qNC8y++V4CW3OxqsTTaVeLUwhmtjsxGjFTw/fYayjOei?=
 =?iso-8859-1?Q?p2/HmNSDjH72RxPIbCN6b1HraNjNCKMkq/MLpACgxT+z0ERcSLGEvcZ7vK?=
 =?iso-8859-1?Q?fvmMcM6zWuARHirPxnrLfJPfEPF/JjppitGyAqKsm/nWzmD5TeIswOYrYh?=
 =?iso-8859-1?Q?UB3AwAmqq9UzPqazbAdo6UcWo74Jy+PI4qV/BWeHEVP/ELkt551RNVJmrh?=
 =?iso-8859-1?Q?QKd1DmCS+y7axqM9nu3oN8ZaqkHvZBYDWn/WBoWe8qJCrBqX1rptc6eieA?=
 =?iso-8859-1?Q?B0qbu2VdglSMv9FhecPnV5AI8jLPMxLrrxpK8/lOiO0kbC0/vToslR0XHR?=
 =?iso-8859-1?Q?EqVP2zFmeCBUrmr1oZRkH7Cn/EmbIcINKnCOHXrw3er1NGNGg1yRJvsu9W?=
 =?iso-8859-1?Q?rIDR22bh7VeASmynlPauWu9i+fY3YaHheDulqITJ7Bbupq0F5v9U2NjJP1?=
 =?iso-8859-1?Q?fe4QFnWQ+wuZdGoJsUI7p+ZFKZklT/fKRfbpTh7TNMNMF/neO+qE9KafPc?=
 =?iso-8859-1?Q?9nPDKC9ko9mzB6r7fkqaFq4/XDxJ+A0NXq5+7/QAj6JTwRU6EA7OAEN+uo?=
 =?iso-8859-1?Q?u3wTdah+b23nXD/TbvFUZ+bvaO2QoMJpLqPO1cUa+QJqmbN3kE9frtxMll?=
 =?iso-8859-1?Q?KCEpY6oqxo4orhQEkVKjYXWNvW797y3XNV5h3ddCRj2rlWk3lVGUwOfm2z?=
 =?iso-8859-1?Q?eRi3P3KpvDzNrsXoUzLwuBflcln5L6IFa3ULDDJWo9p3N+sSXwm+67OKOt?=
 =?iso-8859-1?Q?nec7pX/AOWuZoFvOePSwXjX5yLDEEvFnYfGSUPHDu/ruguz1d1nZ8YiAu5?=
 =?iso-8859-1?Q?diysQU81Thx0erixYOPLIhQD1+RaiCOTyEEM6xYus0gIMCppr67buBr4Mv?=
 =?iso-8859-1?Q?PLeiUrKRciwOfjhKrIirCIvIXKCrcl9G0XXjLrmXy+vc9JTDhQbBlRyEQo?=
 =?iso-8859-1?Q?lpeNWRos3/Xt6ZJsN7LMT1XjvX69mkJkXfinuTb8Ou0nzHKLOD9Idfyg6R?=
 =?iso-8859-1?Q?NCSqEVlKyU5YJgMNF1+DlTwdnyNvXQXtB3cI/tpNCp5o9ZW/Knlq9fyZz8?=
 =?iso-8859-1?Q?O/VNPUgDmUGTPNiBq74pa3pK/8WksWb5fKlDCG90rRZ4Fw1wz2jP3wt0Ye?=
 =?iso-8859-1?Q?1Ox667CIM8zZ6S7tHXq5Wt3CCrgAPP1AE1cXCfYv/FcLNO7xV33L4S97Yd?=
 =?iso-8859-1?Q?NRxKLxxy7+AquKgMQTGLfkaI4Ui2svG5Io6aqTI16l3Pej0LwoV7V86H3T?=
 =?iso-8859-1?Q?DLaUeNiVXyCSjCMQRltiXCbUF+PrZbac5olSMEuX29G7O1doBrOoHPGkSG?=
 =?iso-8859-1?Q?wbDonJwg2XuZSeYMp0ct0yXzA/z4G91oUa35IofnKFyRst3N6VzQQc0qzt?=
 =?iso-8859-1?Q?dH?=
X-MS-Exchange-AntiSpam-MessageData-1: eh8gU8CiTX3LQ5bGyCPRvSGqHTtILq/58zA=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e1256f3-a8c5-4c6a-94df-08de63203c5d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 12:32:03.8204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 05ItrMWlkhHHRNADGNXHzpUWdWN+uOt7Eml+b48FYjA0jiWHToIgBBi3KRJH6qTLDXqpgaLRObaqkpXCoJe2moMPVNq1y0Uue3/9wmaQ8Ds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6608
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770121929; x=1801657929;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=j5t3sxU/iRNnjB1lZ6ypHcNFdFodVtCwSDt427XB8AE=;
 b=jaRiRBUlhs2v/q30AD9xVDnW8RFt5mWX0lZ3uxdF6B1JnBrutC0q+vBS
 6W3tcHy2HmT99j3gJ+KecZlV2bY4u/7DKzz/hyhQMvcBcmRRImVVQnicM
 TtUKJXCSLqZv+jch4us2d3qWeXjgBcFjuQcLTpdwQ8bhX3uGAz0isHwG4
 mVP+3URxs3DWRDqDq1trMT+H4T/13bJC89JMA7YTR5zWyIGWVM0G9CLE4
 2uxdOIJyq/JKo4Peq+mftBxUiV5vcTDr+0odhxTaSt9cpd02pNUzSVF6i
 ubzQtBMyNIW0wAHMXrKkc9kv8+2iNtk062FLwUpu+4Th0k/vNKNeVpT2A
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jaRiRBUl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 1/6] xdp: produce a warning when
 calculated tailroom is negative
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_RECIPIENTS(0.00)[m:toke@redhat.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.c
 h,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,soc-5CG4396X81.clients.intel.com:mid]
X-Rspamd-Queue-Id: 7C944D90D8
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 01:26:21PM +0100, Toke Høiland-Jørgensen wrote:
> Larysa Zaremba <larysa.zaremba@intel.com> writes:
> 
> > Many ethernet drivers report xdp Rx queue frag size as being the same as
> > DMA write size. However, the only user of this field, namely
> > bpf_xdp_frags_increase_tail(), clearly expects a truesize.
> >
> > Such difference leads to unspecific memory corruption issues under certain
> > circumstances, e.g. in ixgbevf maximum DMA write size is 3 KB, so when
> > running xskxceiver's XDP_ADJUST_TAIL_GROW_MULTI_BUFF, 6K packet fully uses
> > all DMA-writable space in 2 buffers. This would be fine, if only
> > rxq->frag_size was properly set to 4K, but value of 3K results in a
> > negative tailroom, because there is a non-zero page offset.
> >
> > We could return -EINVAL and be done with it in such case, but due to
> > tailroom being stored as an unsigned int, it is reported to be somewhere
> > near UINT_MAX, resulting in a tail being grown, even if the requested
> > offset is too much (it is around 2K in the abovementioned test). This later
> > leads to all kinds of unspecific calltraces.
> >
> > [ 7340.337579] xskxceiver[1440]: segfault at 1da718 ip 00007f4161aeac9d sp 00007f41615a6a00 error 6
> > [ 7340.338040] xskxceiver[1441]: segfault at 7f410000000b ip 00000000004042b5 sp 00007f415bffecf0 error 4
> > [ 7340.338179]  in libc.so.6[61c9d,7f4161aaf000+160000]
> > [ 7340.339230]  in xskxceiver[42b5,400000+69000]
> > [ 7340.340300]  likely on CPU 6 (core 0, socket 6)
> > [ 7340.340302] Code: ff ff 01 e9 f4 fe ff ff 0f 1f 44 00 00 4c 39 f0 74 73 31 c0 ba 01 00 00 00 f0 0f b1 17 0f 85 ba 00 00 00 49 8b 87 88 00 00 00 <4c> 89 70 08 eb cc 0f 1f 44 00 00 48 8d bd f0 fe ff ff 89 85 ec fe
> > [ 7340.340888]  likely on CPU 3 (core 0, socket 3)
> > [ 7340.345088] Code: 00 00 00 ba 00 00 00 00 be 00 00 00 00 89 c7 e8 31 ca ff ff 89 45 ec 8b 45 ec 85 c0 78 07 b8 00 00 00 00 eb 46 e8 0b c8 ff ff <8b> 00 83 f8 69 74 24 e8 ff c7 ff ff 8b 00 83 f8 0b 74 18 e8 f3 c7
> > [ 7340.404334] Oops: general protection fault, probably for non-canonical address 0x6d255010bdffc: 0000 [#1] SMP NOPTI
> > [ 7340.405972] CPU: 7 UID: 0 PID: 1439 Comm: xskxceiver Not tainted 6.19.0-rc1+ #21 PREEMPT(lazy)
> > [ 7340.408006] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.17.0-5.fc42 04/01/2014
> > [ 7340.409716] RIP: 0010:lookup_swap_cgroup_id+0x44/0x80
> > [ 7340.410455] Code: 83 f8 1c 73 39 48 ba ff ff ff ff ff ff ff 03 48 8b 04 c5 20 55 fa bd 48 21 d1 48 89 ca 83 e1 01 48 d1 ea c1 e1 04 48 8d 04 90 <8b> 00 48 83 c4 10 d3 e8 c3 cc cc cc cc 31 c0 e9 98 b7 dd 00 48 89
> > [ 7340.412787] RSP: 0018:ffffcc5c04f7f6d0 EFLAGS: 00010202
> > [ 7340.413494] RAX: 0006d255010bdffc RBX: ffff891f477895a8 RCX: 0000000000000010
> > [ 7340.414431] RDX: 0001c17e3fffffff RSI: 00fa070000000000 RDI: 000382fc7fffffff
> > [ 7340.415354] RBP: 00fa070000000000 R08: ffffcc5c04f7f8f8 R09: ffffcc5c04f7f7d0
> > [ 7340.416283] R10: ffff891f4c1a7000 R11: ffffcc5c04f7f9c8 R12: ffffcc5c04f7f7d0
> > [ 7340.417218] R13: 03ffffffffffffff R14: 00fa06fffffffe00 R15: ffff891f47789500
> > [ 7340.418229] FS:  0000000000000000(0000) GS:ffff891ffdfaa000(0000) knlGS:0000000000000000
> > [ 7340.419489] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [ 7340.420286] CR2: 00007f415bfffd58 CR3: 0000000103f03002 CR4: 0000000000772ef0
> > [ 7340.421237] PKRU: 55555554
> > [ 7340.421623] Call Trace:
> > [ 7340.421987]  <TASK>
> > [ 7340.422309]  ? softleaf_from_pte+0x77/0xa0
> > [ 7340.422855]  swap_pte_batch+0xa7/0x290
> > [ 7340.423363]  zap_nonpresent_ptes.constprop.0.isra.0+0xd1/0x270
> > [ 7340.424102]  zap_pte_range+0x281/0x580
> > [ 7340.424607]  zap_pmd_range.isra.0+0xc9/0x240
> > [ 7340.425177]  unmap_page_range+0x24d/0x420
> > [ 7340.425714]  unmap_vmas+0xa1/0x180
> > [ 7340.426185]  exit_mmap+0xe1/0x3b0
> > [ 7340.426644]  __mmput+0x41/0x150
> > [ 7340.427098]  exit_mm+0xb1/0x110
> > [ 7340.427539]  do_exit+0x1b2/0x460
> > [ 7340.427992]  do_group_exit+0x2d/0xc0
> > [ 7340.428477]  get_signal+0x79d/0x7e0
> > [ 7340.428957]  arch_do_signal_or_restart+0x34/0x100
> > [ 7340.429571]  exit_to_user_mode_loop+0x8e/0x4c0
> > [ 7340.430159]  do_syscall_64+0x188/0x6b0
> > [ 7340.430672]  ? __do_sys_clone3+0xd9/0x120
> > [ 7340.431212]  ? switch_fpu_return+0x4e/0xd0
> > [ 7340.431761]  ? arch_exit_to_user_mode_prepare.isra.0+0xa1/0xc0
> > [ 7340.432498]  ? do_syscall_64+0xbb/0x6b0
> > [ 7340.433015]  ? __handle_mm_fault+0x445/0x690
> > [ 7340.433582]  ? count_memcg_events+0xd6/0x210
> > [ 7340.434151]  ? handle_mm_fault+0x212/0x340
> > [ 7340.434697]  ? do_user_addr_fault+0x2b4/0x7b0
> > [ 7340.435271]  ? clear_bhb_loop+0x30/0x80
> > [ 7340.435788]  ? clear_bhb_loop+0x30/0x80
> > [ 7340.436299]  ? clear_bhb_loop+0x30/0x80
> > [ 7340.436812]  ? clear_bhb_loop+0x30/0x80
> > [ 7340.437323]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> > [ 7340.437973] RIP: 0033:0x7f4161b14169
> > [ 7340.438468] Code: Unable to access opcode bytes at 0x7f4161b1413f.
> > [ 7340.439242] RSP: 002b:00007ffc6ebfa770 EFLAGS: 00000246 ORIG_RAX: 00000000000000ca
> > [ 7340.440173] RAX: fffffffffffffe00 RBX: 00000000000005a1 RCX: 00007f4161b14169
> > [ 7340.441061] RDX: 00000000000005a1 RSI: 0000000000000109 RDI: 00007f415bfff990
> > [ 7340.441943] RBP: 00007ffc6ebfa7a0 R08: 0000000000000000 R09: 00000000ffffffff
> > [ 7340.442824] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
> > [ 7340.443707] R13: 0000000000000000 R14: 00007f415bfff990 R15: 00007f415bfff6c0
> > [ 7340.444586]  </TASK>
> > [ 7340.444922] Modules linked in: rfkill intel_rapl_msr intel_rapl_common intel_uncore_frequency_common skx_edac_common nfit libnvdimm kvm_intel vfat fat kvm snd_pcm irqbypass rapl iTCO_wdt snd_timer intel_pmc_bxt iTCO_vendor_support snd ixgbevf virtio_net soundcore i2c_i801 pcspkr libeth_xdp net_failover i2c_smbus lpc_ich failover libeth virtio_balloon joydev 9p fuse loop zram lz4hc_compress lz4_compress 9pnet_virtio 9pnet netfs ghash_clmulni_intel serio_raw qemu_fw_cfg
> > [ 7340.449650] ---[ end trace 0000000000000000 ]---
> >
> > The issue can be fixed in all in-tree drivers, but we cannot just trust OOT
> > drivers to not do this. Therefore, make tailroom a signed int and produce a
> > warning when it is negative to prevent such mistakes in the future.
> >
> > Fixes: bf25146a5595 ("bpf: add frags support to the bpf_xdp_adjust_tail() API")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  net/core/filter.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/net/core/filter.c b/net/core/filter.c
> > index 616e0520a0bb..9715d957e3c5 100644
> > --- a/net/core/filter.c
> > +++ b/net/core/filter.c
> > @@ -4149,12 +4149,13 @@ static int bpf_xdp_frags_increase_tail(struct xdp_buff *xdp, int offset)
> >  	struct skb_shared_info *sinfo = xdp_get_shared_info_from_buff(xdp);
> >  	skb_frag_t *frag = &sinfo->frags[sinfo->nr_frags - 1];
> >  	struct xdp_rxq_info *rxq = xdp->rxq;
> > -	unsigned int tailroom;
> > +	int tailroom;
> >  
> >  	if (!rxq->frag_size || rxq->frag_size > xdp->frame_sz)
> >  		return -EOPNOTSUPP;
> >  
> >  	tailroom = rxq->frag_size - skb_frag_size(frag) - skb_frag_off(frag);
> > +	WARN_ON_ONCE(tailroom < 0);
> >  	if (unlikely(offset > tailroom))
> >  		return -EINVAL;
> >  
> 
> Why can't we do both? I.e., WARN_ON_ONCE() *and* return -EINVAL?
> 
> -Toke
> 

It would be redundant, offset is always >= 0 here, so with tailroom now being a 
signed int, offset is always bigger and -EINVAL is returned.
