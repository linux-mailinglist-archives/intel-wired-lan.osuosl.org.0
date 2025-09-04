Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD568B44270
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 18:15:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74BA4606F3;
	Thu,  4 Sep 2025 16:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q9rnrzU6kfbj; Thu,  4 Sep 2025 16:15:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF3506070B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757002513;
	bh=wJ4IGAAAvUFEzAHcI2RD6VEib5Pv0tEbbKNqDa2cTCk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hJ5oKdsnurbRvXKx+segpnMdvEifhC0naQphKZK7Kk6viIMHuiPJi+feo/E0i3TEd
	 o1kxg0RMA8BrM67vD0l+x3QdYDtHsdGJ1RJDhzmh4EqWQDERaES5n22Pd2IC4NJpS2
	 ia0BP29c4OO7jHGxZIVQBrxklgbg3lnxxVCyCEJEHP4lxxp1/q5C3pWHesg/mk7RSp
	 q6l1I4AtP++3vbN6B4nNOtDvGevEJhhZwj3wd47K0m/DuTj2QM/GY3KdK/ja6oyvh3
	 50A8jizO/3X3S4bzwuDC0IFyipoEzmk0kbCNw8cvowZG65ltNd+DU2UtBZQAuYdRVD
	 j2uHVNC3JSHsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF3506070B;
	Thu,  4 Sep 2025 16:15:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0DC0C106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98D39807A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:14:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rdztZIRsNeBX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 16:14:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 894F080774
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 894F080774
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 894F080774
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:14:09 +0000 (UTC)
X-CSE-ConnectionGUID: 5yn72LGGTXG46tWFNFHLlw==
X-CSE-MsgGUID: 2x6KHbelQiaR7BHD87/0Sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="69963292"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="69963292"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:14:09 -0700
X-CSE-ConnectionGUID: sZ8eW9N1QOiQnjV2wDMWaw==
X-CSE-MsgGUID: I/zb6ah9Si+GnccDbn58AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="202771659"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:14:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:14:07 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 09:14:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.54)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:14:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AT+7E1hbFkxxESfbEVy7R58XcTslcfSjkc5+ug/miK+6cZe/M1wNNt+zSkkJpEribbHyLHTN+RSSJg/AA/yRi5jzPrweLWOeC8fFpfh6mWV1qKi+3g4RVXydovmN3o4dwKxU5r16w7GLfMURPRPOj8F8Zz1WDObUcmBVtjDx4mMJKTP7QSn/ARc2leSCKacyWFSU1e3S/VhyBaQiEAm7pan3e/jCoQ+48z6FRa1kOzh1bXG7ZyfVjMEqFX7aPSdJ/LIynUn88s9Os1PDDhHlxQqQT6lLPUUClhtNJwBtX9Lldi25PT3E2HHnmLQl/jonO1y4TrqS3mt75E1r2qYfgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wJ4IGAAAvUFEzAHcI2RD6VEib5Pv0tEbbKNqDa2cTCk=;
 b=WyRta0rge36HyTvzCUE+Qrkgh707bruV0dlrcWxtA9ujRby4l2BbdRG92xjMQ8Rbf3tGViPn9N8sz8qPG0PY3lduBPA0UV7XS3WeaQAahswHu60/uEJ9ArwuLgcJv2+PmzComNOAdAzeYPK4xzP/ItO0AYfLFoT3lA3DrQY2FwjQaO8jzPu3bXb/VEyyc/tOUD4d4b44aF6OTLV/pZucoy3oTBGCldsETA6Iu+ZXYiATxKufL7Uu16VtfATRyppJ1YQcMRoSUTKBmq2RxI5Lh0hwELab++yNH2k0haFgZHifGaK7gVo8rJdvxhfld1FK1GKdV+TRuKAbmQ2QkynVzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 MN0PR11MB6088.namprd11.prod.outlook.com (2603:10b6:208:3cc::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.19; Thu, 4 Sep 2025 16:14:03 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%6]) with mapi id 15.20.9009.013; Thu, 4 Sep 2025
 16:14:03 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Simon
 Horman" <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 12/13] idpf: add support
 for .ndo_xdp_xmit()
Thread-Index: AQHcFqWGH6KpPyMvXkK5+FUxs68NerSDM3FwgAALl2A=
Date: Thu, 4 Sep 2025 16:14:03 +0000
Message-ID: <DM4PR11MB6455AEED6453CF3E0382BD699800A@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
 <20250826155507.2138401-13-aleksander.lobakin@intel.com>
 <PH0PR11MB5013E23D4355463542468E3E9600A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013E23D4355463542468E3E9600A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|MN0PR11MB6088:EE_
x-ms-office365-filtering-correlation-id: 584e354a-3f8b-40c6-90ad-08ddebce110f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4fI/GL/uFHSjxQ8m41YiWEjWH4WuB0dYnhf/0uz0GewIS+6wMgqYpxiIhxGK?=
 =?us-ascii?Q?v8aezH+vIxbQi/sSqlwvmWg/Dw+1vpORYkeoNo4du9gm7tVA9Xi1sT8eKXTy?=
 =?us-ascii?Q?e5JzSW05OmAZEaNxjJe0cyyqC6nZv/KHUJikBm03i961MyYBwi7DgsvSSLbD?=
 =?us-ascii?Q?Nvql9cphnoCwqBtntz+zySTLFApeSYvukVV2zzSC55n7vbcI+73cmOsf6Rq+?=
 =?us-ascii?Q?F8aJIlDb8VB2c08SKppfh8RoVJZTl8JzaDCFJtKZDuVbqUTH37UBBx9rBqrt?=
 =?us-ascii?Q?xUWETMK96E5IW0JQfs83vTjgW/gYCPUc2LEKWekXH+Qrd8pYjOlgdM0ENkze?=
 =?us-ascii?Q?L+GkcQRZ2JfbyLbz/I+znNdP1mILAYS8FTuCQ3zAzQf+n3iT3veW8aA6CoFM?=
 =?us-ascii?Q?xjOYIDRGvCXgnZmyjIue90UANJdOjmV8IxFNtuSd6pEdkCSEd+DrT2raGKwO?=
 =?us-ascii?Q?ri1PLqmt8WT7eAZ7FL9ObWv/6TQsIhxxfHJBB1XXRLSR6Sra7v+wM/PsWDhD?=
 =?us-ascii?Q?10MgOqoiLdfZ1wcST/O/bkqoAkpB9+NHGFqkbJNXbngmHTTmzHEcD6hriwUH?=
 =?us-ascii?Q?HSZ5O5s7S9wlPZ5JXYeO3MpFkiulHIRcFjar3xzHBoxhNBr8+lxzotVHWcy+?=
 =?us-ascii?Q?64OFd9J/fwflZ17JHZeHMrEESTqFAEZRcQk330xNSEDcQ1DJziy6tAH8Hrw8?=
 =?us-ascii?Q?EwmNnr0bc9OECOTKDUw9lbf4ZR2JIITGg4BlmP0WgeYl0xRdliXPGsHBVKKN?=
 =?us-ascii?Q?PMmhLK7XtXBD5y5YCKkK32TpckXI9CR9e/0+y8+qzJK6SI4ZEefTKo8NrVN4?=
 =?us-ascii?Q?l4kFqirkIHng1H2X/g4UtmoxQk872EAmy7QKKkPlpnR+FP8fWfpDTEeNeNeR?=
 =?us-ascii?Q?iD3l5jOmE7Kx4zAs2fHkKb0b5AQuLZuGC0jc4ho21Fz9SGQK9DnRwJ/7DwJN?=
 =?us-ascii?Q?qRPm1uFlIwijCo7O2GXg3Rtj6IphTpakIr97Ealbbo27VLlnzVctpXXUUCNO?=
 =?us-ascii?Q?wY3GAyFY/ZsdReEa6H+igrUbkvT0aend07gp1FxBGvIh47RNviAPWXzMMQuL?=
 =?us-ascii?Q?FAx0kvQLG/7ROcl+VrxK0In9iP6ryPRWADtZ6NLod5pPYkSnEprOj6TXDIM3?=
 =?us-ascii?Q?kRDETcgVlatkONCX7KTxfVTxOnDoYTg4KEIZLuD30dEYo4X1Ej1QwD6HEFUB?=
 =?us-ascii?Q?mF0ydbCWXYGHAlNPrJvK65xDDe1ycGwtGibePj1tZU7a34d4JfHz8TaYAzZE?=
 =?us-ascii?Q?WpVJuoLGYTKyWI4EQwhx+UuCHajRnKPbYbpHXYpMGJMYyQH8BpK7ze7Syo33?=
 =?us-ascii?Q?qf9IOYhaYoDuJjxBgmuJ9Oes1jKwM4VM5mfOTiVYmd3ivKN/5R+HgtHqSp5r?=
 =?us-ascii?Q?JjNjd3wL4raM1JAi9+cqd2odNepL7c5Npc/JExtDgLXI/awGkgdHXPTDlmfW?=
 =?us-ascii?Q?zjPmJYfykcjaIFWiKRn0SzawJQGapIUBia/txPkdBTjOwvXOpxh9fA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/UfUH32VNBaBFpGHzKVawMkaDqwbMAuEW1J48Ll6BHwa4aUfhvCV75QQu55v?=
 =?us-ascii?Q?xqUYv6M36OJz16pv4zrAADF5GJuA1mpp/aixk8bgHEMUpSI0UIQlJJ8Ezxqm?=
 =?us-ascii?Q?4hl5ayafo5R6frzHNg3l+D5LUIfXKg8+y/KneregRolNloJF6BcB2C3alaFT?=
 =?us-ascii?Q?77qKKBWqBUjEUnJzbGALVvBks4xOcodynRmxrrltWoRaQttbGvcvD9XVfBmM?=
 =?us-ascii?Q?/RNYsPX/AIZFlO1iOfeTkFLyMF+h7KPcwDsZIXbrAj5jWTQV57segyE+5xtg?=
 =?us-ascii?Q?DbZfkwCZvYIyyAa+CsIyTxOqhYD6aFmPlO0Lx9biVw29uFTcp9soPp44rXPA?=
 =?us-ascii?Q?KZxh9Ye99j0al2NTtoauzNdpFdAbT6gidfVBx/+SJe6WplJuNfZl2TvIYmjd?=
 =?us-ascii?Q?B9GFVmehubie+WguqX8BKVYcNcRSvm+hy3HXXt9HTY/VtDi2VVTw070JCjl2?=
 =?us-ascii?Q?4L+TIqmojEiXYxGULxGYP6/9YtBWyLe8s7YFGmU7k0/jMcxwnDlaNPw7Zf07?=
 =?us-ascii?Q?QbIwd582Dkpzy5dqMwT17o4GD4ey2cTsXh6+9Jf6KekiUnZ/ahWKgJ1w4arn?=
 =?us-ascii?Q?ANzw0wms7dPV/jc6ArhbE8jrHEkUfUws1/cl8git1YwMHluo7HjKbCCok7bA?=
 =?us-ascii?Q?8t30aDZ82jQd7IwqeiQmBOPei/B6dWu3iIc4NV35mcEj6jF5dWbomGdHWKV/?=
 =?us-ascii?Q?I+aIiDNIXCaxtJhEtkOJdEJD/D+TF/iYNWkBAi4e3wOC1EOA1ZcWJWwcLkBH?=
 =?us-ascii?Q?Apz6gAq4ZDg9G503wXyBTHVRmIdijibJ8TAkAW/D8yCYIsoD1b44WVEEe7l9?=
 =?us-ascii?Q?TOl4Nx/Cm5NFR5G3idM1R0qUZJWb9TX82q0+cOeGACCPei9BbeQfz2BVh18n?=
 =?us-ascii?Q?ezglUTxd38vGmkIKx9g9BcSPg2UbUA+QrEUfn8n8djHytR2Bied09G/fO3I1?=
 =?us-ascii?Q?LdijKp9Qbm9aNELN7Ee0xUdJJtHqwKm7/zOQ2KTDNvVhB7Nt3T8XOpUoO2uY?=
 =?us-ascii?Q?Z23Tbbpv6m9winH4QgrfmeWieZNkJgHOTQWro4yYepKTFjcVK4w0pHhRDA2v?=
 =?us-ascii?Q?ymAhUgrSlYZeilW4zde9jyZdFibss9R2QOubGKQMml1fijFjvzVYsYBf1Kf+?=
 =?us-ascii?Q?dOJXwfnoJKhBROdPeZnVttWT0eR7FMXqsDFLfltIZel9KdDVrw9Lp+0Wo5mP?=
 =?us-ascii?Q?DVa/ojP2WSWASbvM0SisD3tUuIpxYiotjtzVU+Z0IeMbv+RHyI19JY3t7Jc2?=
 =?us-ascii?Q?XwIy1S60drGhvMQaqd2nGh1LkaAwE8GDw8BZ97jaaRyIFugtwNNVfV/tFNbz?=
 =?us-ascii?Q?KKKiLHXtYdYR+/JB24MWw26N2OS6mYEdfybRD3z7DVg/Chr8hOuQv4Nxr6xt?=
 =?us-ascii?Q?6O7Dp21W/PAh1jmplppBTR7TXXE/6Z5lCZphmt9JMcU30OLzSC9diSm3Mvei?=
 =?us-ascii?Q?x/O6szRCgKc28p7vPmx767dlSebaKlmuA2vckYqQDK34iTRHrKf024muwbGc?=
 =?us-ascii?Q?oEzDIbMKKwjeTAqELhp+7Grko6kc7BdPhDDno+OROjwfgdi5ktUfwgjsv3b1?=
 =?us-ascii?Q?/VpyRN0GwgoSh5dEz24=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 584e354a-3f8b-40c6-90ad-08ddebce110f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 16:14:03.8053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d28X8j7s3pLqTSiV+3Fvzpg9X/RRCixmSR5hHv1L0lw76te/2ErGkc0RQ9WaObG8xkZbuw8OXkVx6+i2gq3+iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757002450; x=1788538450;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+6ymLhvk2rFZgd+AjeyeOLZTMgjzU7YdAJ/90zydOUQ=;
 b=S7U1+hvEuOdghalN4Uhu0CKirw4GHT262/W0duNUtVYhLwueSSiZSUrj
 yWFXSnklxt4biqASmxBiq5q34ImmY9faH1kmu0dGgRNFAK+PG8D++xeVS
 +k6ucRYsQlbgHQEKQXavW6ayy0D9u1dnIvbT9U8gsbaBSC+cGf2+E6ecm
 rmU6VWbGYxCE+kHxNntfmR+yRr8KwaWimgCxcQaXLRtpd1cjFDmrlLYJ+
 WqFIX2n94aNZk/INsAGvra4nm3aHq08O2VIqm3KHFDmqpaCmNVQpZtBTB
 oYY8gVyKWETLvjv/FCQNfxjI9Q0K1co0m7wEUnlA2IpOI5CrqYMwPHzZ7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S7U1+hvE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/13] idpf: add support
 for .ndo_xdp_xmit()
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Lobakin
> Sent: Tuesday, August 26, 2025 9:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 12/13] idpf: add support fo=
r
> .ndo_xdp_xmit()
>=20
> Use libeth XDP infra to implement .ndo_xdp_xmit() in idpf.
> The Tx callbacks are reused from XDP_TX code. XDP redirect target feature=
 is
> set/cleared depending on the XDP prog presence, as for now we still don't
> allocate XDP Tx queues when there's no program.
>=20
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/xdp.h      |  2 ++
>  drivers/net/ethernet/intel/idpf/idpf_lib.c |  1 +
>  drivers/net/ethernet/intel/idpf/xdp.c      | 20 ++++++++++++++++++++
>  3 files changed, 23 insertions(+)
>
Tested-by: R,Ramu <ramu.r@intel.com>

