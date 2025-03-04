Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C26EEA4D79F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 10:13:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30B6140C11;
	Tue,  4 Mar 2025 09:13:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L1cLzoYf5JRu; Tue,  4 Mar 2025 09:13:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33B3840C16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741079622;
	bh=1P4G56S5SyzD1ELkXKNiZqzGCn6j1YfMNnVDTsWqgG0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QDpPdQkveGBwkYnPJhNXGFp9XRE4XPGxJK59a5D4qgrQHQZZdIi/lyE02fTnnJm2Y
	 6BPvLd5sQvpaosq8W/uFSvC1cwhMTJz/XezYwowMQimcTWyEg9WjHENflANinagkrv
	 bK77/ahlxJ3qCIUR9Tiy/LKCbm+nHuD1KYIsRqGiY8qf+7PAjKilFPvBZJXdY+z0zk
	 /ZHjnNkvFA3KSVoO7JvbEJau/2ZDuIITE5CR0M0W3YHbURwzPHRnVAZz4kk/1nS+NJ
	 71SaWqGquN3g9WCC0vxRQJLDwU73YCNmLOCZ7GLICq+A6W7anbyurcxBKtwmIeqGfc
	 3RrovwuRzjffA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33B3840C16;
	Tue,  4 Mar 2025 09:13:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E76E1C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 09:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAB9340C05
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 09:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UeOjSb7ZsQuG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 09:13:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C3DAD40C04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3DAD40C04
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3DAD40C04
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 09:13:38 +0000 (UTC)
X-CSE-ConnectionGUID: Ul2cR/P+QfepaENiXdl8/w==
X-CSE-MsgGUID: 2CxWPt+DRSGu80IBZ2aNew==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="53382467"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="53382467"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 01:13:35 -0800
X-CSE-ConnectionGUID: sajkSwPpQz+1cGgIOep9Fw==
X-CSE-MsgGUID: 29Rtt3UIT4aifnm6UtXgnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149247769"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 01:13:20 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 01:13:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 01:13:19 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 01:13:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l3nEAZg7dpTnw52b0blJ6IorjJmFOd1ww6DRIgX9aHjo2T5q0RlpHZNqy5i88FHAA67BC8SX4xzhWVSWEldK4MdW5puJlD6i6N8HHpZWYNbOOt5pQ7pdtV+6of8nfUJ3KO1JLyUIvKyjE4w6nHEmgCVwiT5Ma15r4SSMqYjesWGDzpNbee5KlaAMIdt1JMOaX+XDEME9kkcNm4xAiCt/AzXts0A5p1xFkRjSXypbSGMvoNymADNQ3buRd7AV3oUfEc12Zm8Oi1u3l9wat1PblWunohFjP1LblQVxnEm+J9y4JpYmvrQmDCxnwRtrqnz8uj+nqoDIezcaIuI0RIgTjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1P4G56S5SyzD1ELkXKNiZqzGCn6j1YfMNnVDTsWqgG0=;
 b=QpxVSJ85Dkv4YjlX5ZAxXVy7fE2GSnyYtsuh400J6gf0Blfdjk+sN3r9XKLWmq9KjVZh5CMltWE/iK53ifigclIS0wswHP1eVtoUPfVIuN4rJrJMX96E/M7cWbZGYmhT6pxIjI5/oWYo5U0uhlJCfd7HwwnolFOkDB6SHAR0k1F9V/qQsGPCfqOdEsO4vBl5bVLIBVg/r5glZgukVrd/Mo13Zy3K3RihK8BPrEEhoYWmqT0D0tzj23oEXK5zCgkiOI/6QifvjctF327u28ycw3NDIgHX/hVYYFqCrI7MSvTdtgo3I/jMtncQmJUQFNblzu/NOscY01kd/pwVek2IIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CH3PR11MB8751.namprd11.prod.outlook.com (2603:10b6:610:1c1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Tue, 4 Mar
 2025 09:13:03 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 09:13:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: joaomboni <joaoboni017@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] e1000: The 'const' qualifier has
 been added where applicable to enhance code safety and prevent unintended
 modifications.
Thread-Index: AQHbjH2rW6Xv8BP5E0WE7U+tqIVqQbNisiKw
Date: Tue, 4 Mar 2025 09:13:03 +0000
Message-ID: <SJ0PR11MB5866B991631C98D81765916FE5C82@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250303204751.145171-1-joaoboni017@gmail.com>
In-Reply-To: <20250303204751.145171-1-joaoboni017@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CH3PR11MB8751:EE_
x-ms-office365-filtering-correlation-id: fa307a2f-b846-480b-8478-08dd5afcc479
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?sW7uWDjRMLe5QsurCcdkfezJcgQXxuFq0a7ycKBMjlB6VuqprjH4Y6lAuE6a?=
 =?us-ascii?Q?a8mysMC8KAEf0knnjU+bBFyAcN2Gi0il3rb8PpFDgOGpLPUqjLKLF9H5j2EV?=
 =?us-ascii?Q?lsvPfsphfG2me6cxVa7R0DCsdQCFfxR8BpbDfxwecxs828JPAlutSUtfrLJF?=
 =?us-ascii?Q?Kz0kh03Plts9XKZY9Y/njDMqlEGllWLwHvF9RZ5NndfBBiDyv1lLM08EOOsK?=
 =?us-ascii?Q?yxCWbvkgr2otNByFYla7rMPc7JnLHSkoq2ZqxzaIl8ndzK0w8RuYOUnq3UpO?=
 =?us-ascii?Q?bMZXTKtQcEV4hy9K6slHe8bHirwpMsZQrQTbzFMnWuNzlxDE4Jpz8ImtIGVO?=
 =?us-ascii?Q?owhq9PIXPXcEeyhZOMQ2AeXb6ceH45ryMkC9f21QbdXoNA8s2FnMq60MCAoJ?=
 =?us-ascii?Q?stOPEa3RZugSp+d7fnQwNsZitttVny5ff4ioqGffpYWPi19/MjIq42bRlx+o?=
 =?us-ascii?Q?SlOOOM/q44XkevxxesneS1Jbd1Lo9VewzJrxmdi6E1QgyMZY9U1yiKMuou+T?=
 =?us-ascii?Q?/JYr6B3xhunXWqfCohZWZXGjllvLqISU0YvlK0Y/xkO6eNTZI1QrhV5ffjd6?=
 =?us-ascii?Q?QEhGveyeeTQ/iHSMiQvo4cdiH6SIweAik4BkPchAUssYMOd+XQPLENZ63IR/?=
 =?us-ascii?Q?ydEE8sGLwSHfPTuZYUJDEZNZVfsNP1GGQOhrI7LvTadBgDUBW3RNpCpXz+03?=
 =?us-ascii?Q?X2p092yJ2Kb6wjmrHJB/a7Uaxj0PSEzWMIcvSsoVmmUVu8uSmViX9pmGLWvT?=
 =?us-ascii?Q?RRuuf3UX0218U7yfEyUCgnfeE9i0oatrQeAY6ra4aV0yggE5lFXvc/Dqhg0L?=
 =?us-ascii?Q?8iuzJlYR0hzQRtX2nH9iQI5R3ZW4iGTgzbqRa1eruh61qmJTOmtk38XM568T?=
 =?us-ascii?Q?4HbzqZOVtVSp78j5VZBzvjgQvrX5vqhaYGKWeFzgxdlL1KeCbnuXWOnYn/2o?=
 =?us-ascii?Q?38Z0XG4VgKfarIBD77cSIaXyhiDrSE5NUCSkveSbNXBugnYdXMjLBUbaTZ4s?=
 =?us-ascii?Q?miEqxKvXwFSRygz+8/RrLQS4XuU9N/Nx/zMd5dAtTj/gn/s/a+sqGlcPjCh9?=
 =?us-ascii?Q?b6riRTqc/qYFU/j2QnguU2YDOwbZmh8oi50ntLq7UYRaQZq3FuqM4+Pk878S?=
 =?us-ascii?Q?hr6wnDatqDPZPMSwtwNlJfIgRCk3m8vHAzIxUNHzmZ98WexkZijACE7AIi81?=
 =?us-ascii?Q?qy/xUpOqAgMFPSP47sJ/6v6F5FIx5Lq0Dkw5nOCIVAkPr++FxVc8XeVCv2ed?=
 =?us-ascii?Q?SL9EpPZ91f7WcAs7w71y01B9N7ghyG7fmoh5cR8IeQuSt2N8GtE7O53iFdzi?=
 =?us-ascii?Q?wM0VfEMQ5g6EeDloiExpVjgFc78oMeOW5MpQZzG/2Bs3us2/K6l0BrR71F2p?=
 =?us-ascii?Q?Wtd2ufWNdg3YNPHb/nLJB4CO7vDrSyqRfoiWL+byYQH/6VWmnvaxb3h3HR9k?=
 =?us-ascii?Q?hXriONFcwcwE5fTuLbxB2bLSdHRukU0lgKrT4gHYgXnglUgBBDfUJQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ySRyxOuAtKclFWRNQRyyZeSA4yyhvjjEF84mXzN+fCzIagiR25TdV4l1fgVz?=
 =?us-ascii?Q?0ddtn/cBwXODAIwrN9BYIyr7sm2L1bgpqCM8/4TJrzwY35DgCG3S4z6b36AN?=
 =?us-ascii?Q?BYcEGinmRUrXlE4JuzfUV4l0Ny/cpEygP4uBmCE3FKW4CTrO4DeWFGQy5PNz?=
 =?us-ascii?Q?3ad0o8+s5FSlIGOlutdR2KV/GAW6PkaaOCUhaB3K5YV8RjCtAqdKojdcZU1V?=
 =?us-ascii?Q?HRWL5l3mljzSpz4Oz4JlCWHUu0sDjTtYQ2ZFFQPq2tO7YBBtZJoNLfT8JTes?=
 =?us-ascii?Q?/J+IIw+ur7dLk+qmfhBqP7YgaCku7ju/6eBrNivVe2HnM5lrWGxX4RuXDqrf?=
 =?us-ascii?Q?oWe7xpeMotFfruel9sLz+VyRH2hJDylw4rtLFstBVSuE2XYbIDbjna3zlhew?=
 =?us-ascii?Q?gRSkYP/1SXvjTzHdiFT+jRFaSlzw3zGXY7j1nWsVWwp8vmaon/vlEzL0KJHT?=
 =?us-ascii?Q?S/rke6vmNe3ss7Dnd+ds/ph5udukuM4iu3la9tyOCb1CVom8cxC6sozkQnxp?=
 =?us-ascii?Q?r+Q7oOl5NSOZ78evOmur9/izc/gN76mwNkPpqrh1I4Az9bgAeOl/Z9YL3fD+?=
 =?us-ascii?Q?H7GQD9F4IFOHiGiuZXoNF/lLJSosZRi3cAMxoaCP5iBG0uMWLdeGtOSN0awz?=
 =?us-ascii?Q?6H6p/+Ek39TtJG7pJp6g8WjK5a57CNOfbOeDJAK/febEaC7mUtsfTWgqJpZq?=
 =?us-ascii?Q?l9Q/FgtEfUZxYrh0zXeY51pvJauD9zrtke8Ja+CiYn2NxYzYN5Bfd6HhP8fl?=
 =?us-ascii?Q?McKgvaFvP8KfV46o0MNNaccGnG0TsTFmOuQYAGfgj16+VuH+AVZj4xcx+nzk?=
 =?us-ascii?Q?t+sxdoj6MWic+CaGcCI00d8L087Nchm5XtiaFJlFZzjxUyCarxHDnRpldMzz?=
 =?us-ascii?Q?baO1Tvrh/muU6v5gG1ZbsO2GYbL0A62C5bZkAzsVDZhijJYJdOc0ir+u5K4i?=
 =?us-ascii?Q?0aGdVhZOih2a7+Wco7c30J4KlBFg6tA5YTMfQ20Rohw38EW9kgSXzw8F6bbR?=
 =?us-ascii?Q?rn77uzlhuKYZw5TycghFu44pkR3B/evqd8pgq4eIHFpTFMivwaH1gpocVvBG?=
 =?us-ascii?Q?ae+ddZVzj1O94FeJhbxuBHM9lafYFNAgp9Wt5kOY+s3RWmkW1L3G7n6/jPkJ?=
 =?us-ascii?Q?TitG4Vdl2g5hE70HHIaiXxfpWsIc1MqKJaVwGi8RthKvF553/k1uVcfG+0uV?=
 =?us-ascii?Q?wUpNkW2zFQwHwLmmV0xL7+CPOSSyyUnBMoHJWEy0Zxmlk60w+r34Q1CbYLJ+?=
 =?us-ascii?Q?k0Wbdh7rR/kgk0Tn28csIsq2cmcT/PH8m/lpk9BFzEou4rJ4Z/k0kl9k+Ufz?=
 =?us-ascii?Q?NLx5FtHwa1DnjjK4E8w5ZHUtiJU8iteGPAOvIY0cpig2moxkUAZEZdJbooZh?=
 =?us-ascii?Q?xcV1miepxsF1NB2LCixwee4e45bAxYpoRGQNsQq8EMvXrEpL3rbHtGz67ol8?=
 =?us-ascii?Q?TV16XcjrKYFHmhph3Xr9oNPHSG9uLSbwueEzpkR4/f0Z7vBPGRYNWJZBZ80N?=
 =?us-ascii?Q?0NP1BZuzDKmG+/ym4b+bVUPfTRTbFUPStqOMXteaFUZAyTgGpuEx6yph+MaU?=
 =?us-ascii?Q?SmJLbQttNR95LdJbuK7D+h4zrA5dD4jLAoc2xF/16O6ythHvtptK7Wt2rlEA?=
 =?us-ascii?Q?5Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa307a2f-b846-480b-8478-08dd5afcc479
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 09:13:03.0688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R2gcZt3xSnzguylEgwCoVy3jFkshvVH0yIVMbk6cznaxOM9NO1B1EgcRWHQIOqQFLaOe9XhX9Yqddl4f+Gt3rXb6NonWT5zPDIL1nn4sHcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8751
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741079619; x=1772615619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rplD2YmL7evvTWliCaQTEbQ0pN8qG+OO6ttMp95YArM=;
 b=Sjz/ymhP+xSsIDEWQutMVskAvu9TF5GcW04pMFVARm/Xd0ygPAc3oIXo
 EXQNqLf6Fd0xJ9QH5Owy6wQPed9uxGs9npPehiHcgCp8vpaNuDJyaia8G
 iFeCi5jeYx5AEtB7JDG42k/Gj4OjYP98xxNS2fCfOdkKxKZAWibVMt9oa
 08sTj1bD4GmDM2+KJoqBXvwp7ENyWyApYZmVVKb4ud5587AYzI/dm+nCA
 JrHk7W+d9TMtUm0DKKZhlZw/63bFdVABsvOCDNPQZGkP00quCM8ItYg7G
 67SDgriyhU1pfl4soVbtyv7g7AVeec3VXUy/snsPy6SQfR1VOY8EEtVzd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sjz/ymhP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000: The 'const' qualifier has
 been added where applicable to enhance code safety and prevent unintended
 modifications.
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
> joaomboni
> Sent: Monday, March 3, 2025 9:48 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; joaomboni <joaoboni017@gmail.com>
> Subject: [Intel-wired-lan] [PATCH v2] e1000: The 'const' qualifier has be=
en
> added where applicable to enhance code safety and prevent unintended
> modifications.
>=20
> Signed-off-by: Joao Bonifacio <joaoboni017@gmail.com>
Good!
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c
> b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 3f089c3d47b2..96bc85f09aaf 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -9,7 +9,7 @@
>  #include <linux/if_vlan.h>
>=20
>  char e1000_driver_name[] =3D "e1000";
> -static char e1000_driver_string[] =3D "Intel(R) PRO/1000 Network Driver"=
;
> +static const char e1000_driver_string[] =3D "Intel(R) PRO/1000 Network
> Driver";
>  static const char e1000_copyright[] =3D "Copyright (c) 1999-2006 Intel
> Corporation.";
>=20
>  /* e1000_pci_tbl - PCI Device ID Table
> --
> 2.48.1

