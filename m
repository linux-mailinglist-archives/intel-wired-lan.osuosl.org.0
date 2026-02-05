Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAHjLvedhGmI3wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 14:41:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A46F36CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 14:41:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FDF5840FA;
	Thu,  5 Feb 2026 13:41:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BmAwrX3yEwVa; Thu,  5 Feb 2026 13:41:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A61A2840FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770298862;
	bh=iMNzhGghf6eVc8eDGWAkHCnxgiSU3RzkEqHzYFdDEm0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D1/kRmqJMGlXYdf656hMh508Iq6X1lXyp0sds9IWuz9160dUDY0In3u647jmMMNJU
	 LREbcH/9qCIuVPhzUUVM98B919J1uLqSAVizxwJiXQtqcsDjXKdw39ePOiCnnQpyr6
	 SDtX8glIGXLqNp3vlRzHo5QnBLRZfXWIO1b9Afi+yBGL2c8wVZcyBJFzH9gRzdmBdN
	 pqy1LfOcaUT/lSA5niU0XBVgkhE2GYKKMYT/J73+G2OijjMA3xhCw/9fXlCGfIYw4S
	 RQ0ytHCoMHIVuLsmsOkhrfauQ6Bmme3cbPS120VQQabyg+4WwhFaoESd2RDxHfUxFR
	 AWYDUDHijQbSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A61A2840FB;
	Thu,  5 Feb 2026 13:41:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F066E173
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D02D8840A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:41:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dtuLC8-QfOc0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 13:41:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.15;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0338840A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0338840A0
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010015.outbound.protection.outlook.com [52.101.69.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0338840A0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 13:40:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SNR2JHLeQKTq70PivarG3+TEA3Tbnnf3TX0qhlKeL+0/3nPxKa4PUHX5x4tpxTnEDbiZd6ifD6tKMZvrb26uRfvKx1nU5hGzWrBUL6as2MRLUMAJ4ZGdxJPkA8oHmSbXfnQzVsmgeIwrJIO+kTDZ/KhNBbj1P5j+1H81Xb60s/gu8YJAFHSV8yC3nc6i4mWRVLkvhUmvl6Sf0eUkHOJ4MiQnaftZAlinypQHLXH8aLY4Vqlz/+OZHNtQMqi7bJGNk05fCFRprJgeUhWjYOfpDxgTbDZguVYBqGiqy2Ekr98CBOScCm+9X+3ByGpfHtHAWRhF4zxebbSNqcQo8JXIOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iMNzhGghf6eVc8eDGWAkHCnxgiSU3RzkEqHzYFdDEm0=;
 b=MdW9UV4aAAT49fcK30Up0VOjQS2Le9wFgAzomX9/Wd1jcii9GL/v44+ETa02CbdLIkpnzcS55jDzRYOqysZxmgMbSLcVMtDEFykHg3S5BsvW98oAh2dlbT6FbMo9pkluG5SFmY5efc6johaMv3MAsWYhUzKyKtcRM0XHlacXVl/ckMFkTTe0H24FELH+AUNxs+nrbuTnEMBNSxaJDI32+DmxXyrsViVyKOEi2pZ+ckecnskMukszbDcsfXiYc68QzucM0+L4YeddW+yA1quw8qOvaQ5CWvRL+h3Cq5mRrNYszLYXhc1aZpCRksK5wFhDKamRR2YelPLgPDI+B8mkqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by GV1PR04MB10478.eurprd04.prod.outlook.com (2603:10a6:150:1d2::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 13:40:52 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9564.016; Thu, 5 Feb 2026
 13:40:51 +0000
Date: Thu, 5 Feb 2026 15:40:46 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Wei Fang <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Simon Horman <horms@kernel.org>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 Ricardo =?utf-8?B?Qi4gTWFybGniiJrCrnJl?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260205134046.pggwyosutj7ggi4i@skbuf>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
 <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
 <20260205124638.hxzvjiocephzlrk3@skbuf>
 <aYSZw4wbd-nvLTuD@soc-5CG4396X81.clients.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYSZw4wbd-nvLTuD@soc-5CG4396X81.clients.intel.com>
X-ClientProxiedBy: VI1PR08CA0239.eurprd08.prod.outlook.com
 (2603:10a6:802:15::48) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|GV1PR04MB10478:EE_
X-MS-Office365-Filtering-Correlation-Id: 27692714-31ed-4984-4629-08de64bc2d2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|19092799006|1800799024|366016|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OcpjA/lGwKtmXTgaOGJGDELocES41U2Pu5YfbQwbuKVA7Z19PhG/GSE/h2AC?=
 =?us-ascii?Q?TEy700yZahgNBKC/7DgauIMVThrezhg8AqINXtVtv7GNcLUA5QxBWHSAhKMN?=
 =?us-ascii?Q?Vv5pU8doKv8NK+cGDwB8HXsuhn+4NPPZOmzw9bHecI2fDDlKNzHjtyl0F0Jy?=
 =?us-ascii?Q?Y5K0pEDkzRmQlbqOoGRSh1KF8tlTZ1t1gDjNCqqd1DiBS6dm5tQF1mRK/E5Q?=
 =?us-ascii?Q?uYWje7HzHCbwSu/+iEDMP8JubcDynprayUcsGbj7XKGR5kELXd4K1pShF+jJ?=
 =?us-ascii?Q?IiOLwXn2SxpON0XB0lHrZQUnTvJ/Jgrva1zmRuJQn8N90FItHbg61GK5mm9h?=
 =?us-ascii?Q?0W6lC5mleJCXN+KRbJJlGTwPSG3FguuyIWSeS//DX6Q84OmFOYxegE9NldQN?=
 =?us-ascii?Q?p1XRckOVJTpf37X70mTXkZCekybXcyqZERVar0SaNRa+fX8ZIjaYXtFFt6Zp?=
 =?us-ascii?Q?+5TuXregQK+d5GZ6tAAMuXlYoUH/LS27qq6cIZHcwboU/1i+Qgw7Mm1W0zWL?=
 =?us-ascii?Q?NXteNB4zIrZHZW+/Ij0lqV6HSxt8uoEBWYFs7cx5rOyqBCJ9VPGUkkRvcONk?=
 =?us-ascii?Q?n6a9fJiqQUH+pcnPxsS76aGtXiyM5oEuBJAhAE7dQPmf2xT18PG8v5QWJJV8?=
 =?us-ascii?Q?WxcjeVHMq9Pz6HnFknNA5MQpdlJj3/mBcnck9RjFyO/ow8j7cnMGqPOYbX9/?=
 =?us-ascii?Q?TjIU5DjCNu5oWV2ewMrTgQ+rLgsOC/B+TPHosX9r4aXL2Nf+Ewjt4ksE4N1d?=
 =?us-ascii?Q?IvgpGKkOZ+uI4qCc7dlHhmvhwBIRA/SHj9mYIFbInV53LmpdskxQNy6QRdEA?=
 =?us-ascii?Q?eNSCstiX/mBfoznT6h5QMzNvo3H17aPPf4wjUJYtFyEmuD0UQih5acuDOMqh?=
 =?us-ascii?Q?a61+4uPudPOOlJ8WHZAZWw5NIZNqO3KRShFqj+lFRl6al1DyJiYzf0zCkqS6?=
 =?us-ascii?Q?z7xb0vXneY59Yp/mLyux65zBKm/Odqp/uyM0ZU4xwIbb8HPHhlDJnAzeqd6w?=
 =?us-ascii?Q?prRleESOZ26sTETj+0Hn8jZjD8A/KFWTZOIIOzxahnFxHceB0QeZP8j2e93K?=
 =?us-ascii?Q?fRsg5RHdDxAgEU+D+RHXo6qR1ypXdbmJhiNZoHHx+COKgRulBlR9hmtZHVZd?=
 =?us-ascii?Q?AOD2OQeDmD0KAzyewjZ6+6Co0AjU+7rs12MHcqCK0i+8Aiwvbi6nsx04GX3d?=
 =?us-ascii?Q?w9JaUx4s1xL6Qzg/uhrbSwWHze7NRuAFjVAEzWOis+sdHX2JC9bERyfEIDF6?=
 =?us-ascii?Q?rVpVIhxHCrQcxUhoPVASh3DLcFxO3IGUuycldNBrhl+sNCsw+wjOmeqc/lSK?=
 =?us-ascii?Q?aT2rRFOxScvubIpIQKz2mF1aUsHZRoSinHbOJQ2u7MXsqCOYsAJXye0Wv+ph?=
 =?us-ascii?Q?0WREKn3RWHHUzUllJ3ecK4hKO3wXH79oyGKQV221M9rbDVASxBvhwIL/sbu3?=
 =?us-ascii?Q?Ca7uPuPoY1j79j1uCES3NvUN3m8BIUr8bSSl3fJVqNnwzDR1DPK96KffSG4q?=
 =?us-ascii?Q?UVzUUM8ZUb4+fLjbLIGoy3v29oxaD8E3D0HnNGCfvgiKxlqOCWgfKJ6TOsD6?=
 =?us-ascii?Q?wyL0KbPmQLSXTGnOAhE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8585.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(19092799006)(1800799024)(366016)(10070799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?owbVyTug8VyosgvjIMJQyrLaYFfrZw6YeCjflw9QeySndAktFp6kNaYH+1df?=
 =?us-ascii?Q?7u69o3PK3fw5JXTvXiNldjwujkY75ZsIzcZPxS8k7ytYjUP+EBYg+pW+ite4?=
 =?us-ascii?Q?BOnOQFoJF50sT5NrL0eydEqD2vdGiF23EoDNO6JPAJcHvHwABjWlv1lIDxau?=
 =?us-ascii?Q?Zc7OM+Od4fMNs03e1vKRdyuK/58NWwX4IpbYornz5WV71EAAVSmAEMWc12Lv?=
 =?us-ascii?Q?WFt2auzTizXb9iaEp2EVuuGyE5yWL+IxvbEGA4c5eClORIKZjuRDSfUHzB0S?=
 =?us-ascii?Q?7366bJ+xFz8WvqWLMjaYyVG5O7No86dquLQcLe24C74Vny/xdDQDETu6uOLB?=
 =?us-ascii?Q?GsauCuYkgKNzJDxv1mAZ1fOVznp0e2u+m4jx4bGXDrjNgMbx4b2kt5bGqlzK?=
 =?us-ascii?Q?kW4a2zELqpSwLV6vzWHl4Bs9LA1sajjAWrAEG7ZqGmNa4qtT9QA/Wk4M2TA3?=
 =?us-ascii?Q?oMZPqatRVN8wvZ4hWhlbDV5Cf6i5j0A2IUifPJrJNEChkbdua/uXD+Rxwtdl?=
 =?us-ascii?Q?kjpIvAyfHQ6jaMwQOTRc+wGD5F5L+X/jdJGagaJcDvtnfAHUj0Y9QS87Gmpz?=
 =?us-ascii?Q?OQjwpd9bvNWpNDOlG5DyeqO2x/TfpRY2rbRmW2DkCJoqUdlP84j9hPf5PHJz?=
 =?us-ascii?Q?LbrAMXAu2dDrrtEsjI++ZEa+sc9iaI+QTuOV3Lt7zLAwy12c97QTKOrqCitK?=
 =?us-ascii?Q?/D1iG5gaIPXOc8AHpe2FNOgopse9e3pE+jGsjVQItv39vrPuoXMOyGQhccWj?=
 =?us-ascii?Q?mrym1VnJrmPBOt1bu9pRxOHAspIZmTUWAay6DEtY4s/kaRjxaVAOl4cKT37k?=
 =?us-ascii?Q?wG4b5Om6fcvcz7SfCUXpfX8TI+UXbhE0D4/Rip5F1jzfOOT6pMbdWugh0fY0?=
 =?us-ascii?Q?RnaUveSh1/+0345kyzTEXBmaFD2foi0wPHOuDKA/jfznHdKd/YoTFjNNpd3f?=
 =?us-ascii?Q?DG17Zuz/sIxcTpilH/UA+fo8v2XPgJhn/y1OWxPRCDfhJOaWuCnS+A7UjYWs?=
 =?us-ascii?Q?bK+dW2xQyeyRRe4y1p06EBukr0p+QpZkAmbc99jrr635OKz2iUIsAVpLoV1o?=
 =?us-ascii?Q?SYtX6h/HghA/OATZ+45jzUETXPp9Si5cJQtFWMTmw7j43IOwvnb1tdxtXcNk?=
 =?us-ascii?Q?rC8hULqgwFR6CYzvIA3Vlb7YyUWyI4UeH0XQyaJgPsjJ+d+LBi/k+vbtcNmd?=
 =?us-ascii?Q?ionLaiDuMHbRZB4Vty7IMyAimW9eekFIeq/JDf8r3FtpnOFWKOB15jVRSeAX?=
 =?us-ascii?Q?K7LGJ3QqqbSi3hg7ZqmOFBByiYA2d7+miDBScwR2I+6nzzqfUvuwH4tDbj5O?=
 =?us-ascii?Q?qGtoqz6m/oLY35Vi4a1Du2vt8p9obVGEzeLsgcc2/PXsE7bdqEZ73acMwQ1e?=
 =?us-ascii?Q?ZI99/pooQNPzQoduRP4eNJc3+06Po5awq9l5sc5X4eD4tw5oeuYPJtYGTcMW?=
 =?us-ascii?Q?y4Vp/XR+orm08jFDkkQF16w6fvEHr296o+yBdaLwX+EAhDsjQFNYVVjnOdnY?=
 =?us-ascii?Q?tFH3D8eZgfaiEgGCHDOhRXRx0aLKrknPxCud0sTvzxk2wPLni3KvWUmY0BcW?=
 =?us-ascii?Q?wT/dxvWgyLsWaD3SFYRs7Ht0cBSgiKVX46KRAFbTvwSAkfZLAcyINUuXfXB3?=
 =?us-ascii?Q?J72l2DO7ZePE7bqzr48OpyG3BKnSoniVRTzpPf1exR64oijPOXv1ckdWzIvd?=
 =?us-ascii?Q?MY7brz0SrUxcxwtnuC44Q/tNnM+axnTzj+16MXDiHEpJPYIk3PwLgLvd1p7c?=
 =?us-ascii?Q?j9flgr0WN29UsvG6sIWwol5wWUb6c7uh8cSrrIMCv8P4DK0FPamV4fz3fBFr?=
X-MS-Exchange-AntiSpam-MessageData-1: R70149CyZNn8z/Q9ExY+mlua9c7GChNe88o=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27692714-31ed-4984-4629-08de64bc2d2a
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 13:40:50.9954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NyKYHxXyaxGsdh5rzLWG2XbvBVgDEr4BosE/6r/isdUmgAzFPX77CBDYBekDp+mO/s5zrXaeA8N4lvCYvj/Gfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10478
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iMNzhGghf6eVc8eDGWAkHCnxgiSU3RzkEqHzYFdDEm0=;
 b=C9m4c5OwrWqUqi7sXqaHJnQt+VtoOIzet3swHNbptU8gbJQENapGUHUqrmjCAttBpaAeQ2vn2S6gT2F0+7xr4Lkc8RY9GrjlbzSgfHRJ6/F0gbvRyuLVFio0LUiKX5D+zoQBEvKwu3OPZal0PmINnuYn7LV2cH2gP9a0jcS3shsjAvdtcn9BCFXiClMBtWILW7PJ754jderJGhv51421dXdpB24F7f5q1Rc1yJMQ0+bM8cmjbIh65TlPxQfRjH3K64KTF5u4IrytDGQ2hDw/ZXcn5Ka7zqieTzIjg2KUhmVPCtrd0of2C56yC8lkNdr9fAiO/N9GbNJUmsQ4M2i/+Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=C9m4c5Ow
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 6/6] net: enetc: use truesize as
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:kuba@kernel.org,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.
 ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 10A46F36CD
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:23:15PM +0100, Larysa Zaremba wrote:
> On Thu, Feb 05, 2026 at 02:46:38PM +0200, Vladimir Oltean wrote:
> > On Thu, Feb 05, 2026 at 01:41:03PM +0100, Larysa Zaremba wrote:
> > > On Thu, Feb 05, 2026 at 02:29:53PM +0200, Vladimir Oltean wrote:
> > > > On Wed, Feb 04, 2026 at 05:34:01PM -0800, Jakub Kicinski wrote:
> > > > > On Thu, 5 Feb 2026 02:59:01 +0200 Vladimir Oltean wrote:
> > > > > > Thanks! This is an extremely subtle corner case. I appreciate the patch
> > > > > > and explanation.
> > > > > > 
> > > > > > I did run tests on the blamed commit (which I still have), but to catch
> > > > > > a real issue in a meaningful way it would have been required to have a
> > > > > > program which calls bpf_xdp_adjust_tail() with a very large offset.
> > > > > > I'm noting that I'm seeing the WARN_ON() much easier after your fix, but
> > > > > > before, it was mostly inconsequential for practical cases.
> > > > > > 
> > > > > > Namely, the ENETC truesize is 2048, and XDP_PACKET_HEADROOM is 256.
> > > > > > First buffers also contain the skb_shared_info (320 bytes), while
> > > > > > subsequent buffers don't.
> > > > > 
> > > > > I can't wrap my head around this series, hope you can tell me where I'm
> > > > > going wrong. AFAICT enetc splits the page into two halves for small MTU.
> > > > > 
> > > > > So we have 
> > > > > 
> > > > >  |                 2k          |             2k              |
> > > > >   ----------------------------- ----------------------------- 
> > > > >  | hroom | data | troom/shinfo | hroom | data | troom/shinfo |
> > > > >   ----------------------------- ----------------------------- 
> > > > > 
> > > > > If we attach the second chunk as frag well have:
> > > > >   offset = 2k + hroom
> > > > >   size = data.len
> > > > > But we use
> > > > >   truesize / frag_size = 2k
> > > > > so
> > > > >   tailroom = rxq->frag_size - skb_frag_size(frag) - skb_frag_off(frag);
> > > > >   tailroom = 2k - data.len - 2k
> > > > >   tailroom = -data.len
> > > > >   WARN(tailroom < 0) -> yes
> > > > > 
> > > > > The frag_size thing is unusable for any driver that doesn't hand out
> > > > > full pages to frags?
> > > > 
> > > > This is an excellent question.
> > > > 
> > > > Yes, you're right, bpf_xdp_frags_increase_tail() only has a 50% chance
> > > > of working - the paged data has to be in the first half of the page,
> > > > otherwise the tailroom calculations are not correct due to rxq->frag_size,
> > > > and the WARN_ON() will trigger.
> > > > 
> > > > The reason why I didn't notice this during my testing is stupid. I was
> > > > attaching the BPF program to the interface and then detaching it after
> > > > each test, and each test was sending less than the RX ring size (2048)
> > > > worth of packets. So all multi-buffer frames were using buffers which
> > > > were fresh out of enetc_setup_rxbdr() -> ... -> enetc_new_page() (first
> > > > halves) and never out of flipped pages (enetc_bulk_flip_buff()).
> > > > 
> > > > This seems to be a good reason to convert this driver to use page pool,
> > > > which I can look into. I'm not sure that there's anything that can be
> > > > done to make the rxq->frag_size mechanism compatible with the current
> > > > buffer allocation scheme.
> > > 
> > > I was just about to send an answer.
> > > 
> > > Seems like my mistake here. I actually think adjusting the tail should work, if 
> > > we set rxq->frag_size to PAGE_SIZE in enetc and i40e_rx_pg_size() in i40e, and 
> > > not to (PAGE_SIZE / 2), as I did at first, but in such case naming this 
> > > frag_size is just utterly wrong. Glad Jakub has pointed this out.
> > 
> > I mean, it should "work" given the caveat that calling bpf_xdp_adjust_tail()
> > on a first-half page buffer with a large offset risks leaking into the
> > second half, which may also be in use, and this will go undetected, right?
> > Although the practical chances of that happening are low, the requested
> > offset needs to be in the order of hundreds still.
> 
> Oh, I did get carried away there...
> Well, one thing is shared page memory model in enetc and i40e, another thing is
> xsk_buff_pool, where chunk size can be between 2K and PAGE_SIZE. What about
> 
> tailroom = rxq->frag_size - skb_frag_size(frag) -
>            (skb_frag_off(frag) % rxq->frag_size);
> 
> When frag_size is set to 2K, headroom is let's say 256, so aligned DMA write
> size is 1420.
> last frag at the start of the page: offset=256, size<=1420
>     tailroom >= 2K - 1420 - 256 = 372
> last frag in the middle of the page: offset=256+2K, size<=1420
>     tailroom >= 2K - 1420 - ((256 + 2K) % 2K) = 372
> 
> And for drivers that do not fragment pages for multi-buffer packets, nothing
> changes, since offset is always less than rxq->frag_size.
> 
> This brings us back to rxq->frag_size being half of a page for enetc and i40e,
> and seems like in ZC mode it should be pool->chunk_size to work properly.

With skb_frag_off() taken into account modulo 2K for the tailroom
calculation, I can confirm bpf_xdp_frags_increase_tail() works well for
ENETC. I haven't fully considered the side effects, though.
