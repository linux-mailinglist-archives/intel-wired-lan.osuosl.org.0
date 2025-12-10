Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 152E8CB43BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 00:22:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9CDE849A1;
	Wed, 10 Dec 2025 23:22:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 08gLTntBYC5g; Wed, 10 Dec 2025 23:22:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 008C484C90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765408932;
	bh=dJuWI2bSMPtvA0sG/osGP6+I21ZxFTcowlzYFKe0ygc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PlmCWcCxmeCfmXClAUXuQmqaPyP9YVrVqyZX73r7QIMug07hAD8EHnUMsOMs8NRHC
	 yThE2oxUYPvaAbFGevZQOtFbcz/K6o9h7IK5nZ/dcBSXulQB24EvC7EL1gMmECMcO1
	 GbRMZunGJihqgts3OTZA8mFwKxdLevpJ+epsVe7SF3UGeEyBQa+KCkdyAXz/r9sJMo
	 Y12rS9aBAv3PZl/aAZjHaxRWOxrMMemf+E/5kIbxzStxdgk4aQUAkY1FIFiC+9jO/l
	 1Y99+dkWuayhJtNg9i6uni7s1XmxNZF1H+hw/PfJyAW3rZsQEdhKVy5TadT0ohCJqy
	 8z7brmP8mKDng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 008C484C90;
	Wed, 10 Dec 2025 23:22:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FBFBE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4648D8499E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0FPTRlu_Area for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 23:22:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5870A849FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5870A849FE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5870A849FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:09 +0000 (UTC)
X-CSE-ConnectionGUID: lIYQb9OmS7arE/SoxwQC4Q==
X-CSE-MsgGUID: KEY1N4QYRT2R0peLPLdEqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="84994702"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="84994702"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:09 -0800
X-CSE-ConnectionGUID: W3OY8x4FSaSuKHoKjJ5wdQ==
X-CSE-MsgGUID: Pyk1JtycTpeRju2c+PllQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="197445230"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:08 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:22:08 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 15:22:08 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.45) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:22:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zHSX4kIEsJ1DK0QVlcsykVcV+3jiy9GIpfehABDhad2Km85pwwcj0h2FyOG90wPDaDEASdSLZEWCScQtB1WP0gCUnW9pTkU3MWMtRPnYS6NlUntQfL3SNObZDRLkd0PFTFwD4OKbjAD3nQfC4hw2zYXgl9wiWd/7BBXoicipjs7b4NdPo1LBOZ9JtoNs+EShf0K85xVCuUA9W7CtOb+7l1O7Elj15f+hXwqBRvj4yk6Gvg0+1SXiG4/P62AFcptW9hnJdW0T3QUVbVOcdw2zWWgE4PYgpNqUW3WsqtSTQZv/oyIRrcpN2wvmllLc38QgSCm7GzrlICkVinG2owPjrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dJuWI2bSMPtvA0sG/osGP6+I21ZxFTcowlzYFKe0ygc=;
 b=isglGcZeY5BGiEwnp2tAhj/zVw53PccdQbp9epvP3HVqGuTzElSRfJxl4e5aa4xjDqQV2lKoWR1rgD7VXLcsYtHK0S+rcM3oIYVzqHenNR2JlnBRs06EhKNv7+KBF6JCEfP0+0+83HdIUs8TJYkPoBBltgZjtEdT10MEdO/Pp8Vl664K2edIz+408RZELdwW0keI3OieZl3Q3xH/KmmD+WbbY6085bMD7gaK8Xu2Sev3KtECANQKNjIMQ8cawqqq7WG+qP86fGBOkIYf/J27gp4BMEBSYN9BQZii5NmQ9CfMw6AaPmpGVTXIwT4f4vPNEStfA+Fb8IeL7ZvKIKJL8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Wed, 10 Dec
 2025 23:22:05 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 23:22:05 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 04/10] idpf: move some
 iterator declarations inside for loops
Thread-Index: AQHcVDTnU6yUmaX5uEiDR5ilsxUlqbUbrOjw
Date: Wed, 10 Dec 2025 23:22:05 +0000
Message-ID: <SJ1PR11MB62970B888023FC699BCB462D9BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-5-joshua.a.hay@intel.com>
In-Reply-To: <20251113004143.2924761-5-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: a063eda2-74f9-4608-b674-08de3842eec5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uoZTDbNDAOC5N1WyjbtQTTnzXM8msfl8AH9ynVlEh0oeqEVeHVHHdQGW/g9s?=
 =?us-ascii?Q?sMS7qqMspgGu4SE73Eidgx4HAuJ/QnxxbPgUhJknVayMkBhzCTkCSM4Rr+xx?=
 =?us-ascii?Q?xR3mPqDaceOyQHNCE0xYSqet1KK/3vwGQ87WS+S+Gj/REA4hk7ldNvjSQnLu?=
 =?us-ascii?Q?8MjwgEpdzMPNoMnczhEKuIeC155dT2zcl2ARvSGqGn9xl62NIH7NUpeUIM69?=
 =?us-ascii?Q?ky7IzD/i5Wz39eWEGRCo30c/IlGgszQQ9GRlY7QThIQqTDNDEDimqczG/zyA?=
 =?us-ascii?Q?Ej9Bnlzgt7GYY+/z/VVsuwbOxg2sCmIQBE8OnFxHcoo1z2BX529pqcdIwk+h?=
 =?us-ascii?Q?gzySkQbf05IVbdN51m02ilBTK+5hK4rM+lAHgo/5lhUEghitOz28Es4cCAEU?=
 =?us-ascii?Q?RaZ0VXHRYQ+puhlsE6bKRrTJM4o1ZYA5ABiYwWtnZwQsTXGJl7rqQwSpqf5W?=
 =?us-ascii?Q?8Y3QJB8PXny0jUTHwNgwQnQNFwd4CCXM+Y4hYcRCPV+WjE6EjT20UgxtgxNq?=
 =?us-ascii?Q?xkRBk0hmV2ryO9N27b6B4F1uE31OBFKwKg2Qc7qZ4RRCr4sxCaNy+S8/DLae?=
 =?us-ascii?Q?tbjSi/U1mIlDuHOvPl1Q435Z2Gn0f3T7Bx2fxlnRh4E17ahTd/tlKWY6F2Fx?=
 =?us-ascii?Q?rSmm7XJ4G3crwikCozEMu9zteKaVsz9Sr++i78cEfbC1jZtXscBZUitamKHO?=
 =?us-ascii?Q?i69XikA+DoN6KQzsydmbQPBvBgdqwS9JcCX5f7P64H1l4c2pneOdb+uSmu44?=
 =?us-ascii?Q?XNAnKUJsIjbE6W+B3Q87MJTfwjohrRpIOe7gYlDmcgjYR9YmjWjkNfwqhUAi?=
 =?us-ascii?Q?oAmXYtIi2SompqKv9eTntjwD9z3OmBcxdciUXn0piWblpTmUQHdUYJ6+t+/F?=
 =?us-ascii?Q?m2ugZhoaZopJZJBOuxzYc7yDmTLSAK7Jn/aIvzN+KP6fvm+UuVrPVvR6tLh+?=
 =?us-ascii?Q?w3HH75bss1E8i2+kfa30BzKRkx2DCW/MQ2nFcK9yNzr7sV47nMXCbZ/ybAof?=
 =?us-ascii?Q?aCEFODAO8nj2eSdTDNzBNkIDw1LvtR0QgvvfHpxR4+ISW/H6YSO7uFayS9rw?=
 =?us-ascii?Q?iA+r4PwGKHm93mGK5AJycGD+7rzJybqUBOCwMh5A3XOC3fogARpBUHHQKAYK?=
 =?us-ascii?Q?0/7RqOe+6qiIBlOoQ3FzOycrNORfwgntdb/AYN9MsECXfTw7X33/0H/d+u73?=
 =?us-ascii?Q?ECXyfmND3w6Zfnw97TFr8beJc/8u4zHq79RoZMN4M3wShaD2RD+NFNhMxkyq?=
 =?us-ascii?Q?lzYGPKABeTIlZYY+nRZDr6sEsAiJKQIj4z32ePtH74OPv9jo4nDwUalbMPXP?=
 =?us-ascii?Q?pcvJ+ACDPgf4uTDTHMbK0wXrPnn3ZjhxKNomCh9EkYQFU2aooAxLCmBnz0jF?=
 =?us-ascii?Q?HHd1+gjEa0jfLp83BplXqcZt/NNvh99EQhNoZPOq1HrWW+3JPYbNnJ4BKY/x?=
 =?us-ascii?Q?4uUJQgOrjc+AnsCmiQ+xUWaCoGpEWfv/xc5EDZdEnNOPZkDCx9yK8Myp/hXs?=
 =?us-ascii?Q?FNmA7iFl7vuRt8RpU2NxGIvHDBSlNpdK5iej?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ih7JTeBECnxK+ga2DjAw2axA4HuKTfmUCwsYseom7Y+hk6nNyqy4UXxUiYpu?=
 =?us-ascii?Q?+XFmgKB2mFLrFLvUlo781/9xEaK3ugJZi/Qjiew1mCKwI6qNa7DmIwR/9T4B?=
 =?us-ascii?Q?HWLkqv8R/dD26lm4fZvRvySc5+ftrihAMIItCxG5xFTx10fxw3cf3ntcbeCx?=
 =?us-ascii?Q?tN38LffDQjVJSdOXIwXXlm361708Jxl3xY2TbAWUwXtPqMNtiiHk7J+l0pBg?=
 =?us-ascii?Q?cGX6ISrIRFQlYcrA8jXfTl7fjYg6kZkoDTXj9Tr0uVW2JsiLrIWqb2TGW7Nh?=
 =?us-ascii?Q?NFux4XN2Wm/P05spWipIyGqqHjIy8QzBzpH5y3/5aYKb33Dadb5gFgtpOI5j?=
 =?us-ascii?Q?ONpOkkMZ4tLBoOS3K+iSWiN5EEka1hzZ3jwW3QvdbSLF12yyyJzaMixStWEa?=
 =?us-ascii?Q?yPvrtUiG9VEalPCWepYkHHaCH3M8ZQ5vx65kJA/tCBMWUhJ3g2PpSB6KUGkl?=
 =?us-ascii?Q?BNrx+cYYwdHycPo0qJXqKkoZX3GC/FpW3bweD9EvAXHBdQOud5SLZDPJMT0j?=
 =?us-ascii?Q?lZlSu5rKV9KPV5W5UvvDiYKbKe5WkrNk9U0IszUrgXBeE+3MGfUsEkRAh3XE?=
 =?us-ascii?Q?Jzpb6QJ/bcuKQpuxeVVtgvwaAZFtdMJvxrRNnb8ru6+M3FO3PbfybP3wJ/qR?=
 =?us-ascii?Q?f/rpOXBckXYPMwoI2eqY9cvrjXg50KIZiTSyTiC5+zlgOE0+HA+MwW81m2FR?=
 =?us-ascii?Q?0FZdxljgd0QUj00ivLT+CYVWV/4zafSYAdqtE/kfhhDTxhrQfDeYfI5DRbeJ?=
 =?us-ascii?Q?xzBknPCmP3j3X2VhjMTeLrEOo/Vh0RKt1oRJHXjogMV6KngDj1cRbcaBYk0o?=
 =?us-ascii?Q?Xk5J3CrDIcBExby5mOrb2HNNjhyLkXaRbO3pRyyJxi8E6agNs/dU09Jm+/IA?=
 =?us-ascii?Q?OIxR7g02NYBLAe/CgGOtwhjmgVh8QAd68pLBxu1Xlonch8iP6ACh4Mmjagkm?=
 =?us-ascii?Q?gqh9Xq+zImYacSIboYl/qgIj1Gyl82Pha3WPVMiVBzyVGPr2C1wsB1BSsnN4?=
 =?us-ascii?Q?ssbIfsHn3pTcXAxeNrPmGJrZsuctOOQ2VC7LJXF2y1booyu+3iF1vCbgrbpH?=
 =?us-ascii?Q?DvwZAdzLnFjxlvSGaqdEKhDXLyafpYbONspkJ0Kh4819TGIEiB2o0xzmLpwN?=
 =?us-ascii?Q?+JoGTRNwbrP6ELjKraG8TfeCPRDGPRDQmlaZQwLuML1WC78vKiB9eep/QHXZ?=
 =?us-ascii?Q?csxFf89bzH32fmoT3NLPWP5sEAxviVULXZfhafRXAIWL11L9W1avandn7J79?=
 =?us-ascii?Q?FS8ojhsmGR2KxB6rHDcHVcMf2DMi696vcDvPFG//pNaIEJk3qlLpIhB6JdnP?=
 =?us-ascii?Q?58/hJkcuyG0lZzLbQj+j0HpYgUygDBJepx26mVwzrNwVI8ARuwvtDm+s6nZn?=
 =?us-ascii?Q?EpfRfFhR4ec8wX1PiidYhYvm7d9xHGjrfeBzbVfPIw85jqAwJRoAditfDQ4V?=
 =?us-ascii?Q?2UFgqo/GqnR7/fb2I7GV9UytTZ9ZXyr00Vt9CoCubWmAXikzOnvNM81MDgw0?=
 =?us-ascii?Q?JNyst9UKN07141HKWO4bN+kW3B7Q+sXdEJOCSmI3YtcgkauHRfdzMdck4F74?=
 =?us-ascii?Q?xS8bKU3kDHjODF7H2WeJ/P0AJIoFSIHmxU4HK5iN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a063eda2-74f9-4608-b674-08de3842eec5
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 23:22:05.7763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ewf0yWCfddnObh3/9JufZQ2UUucIbycGiweVCFceyCxrRE5MrUA2eDJ0slkVg+t3pokSd7l2h5ila6V9f6RP4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765408929; x=1796944929;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dJuWI2bSMPtvA0sG/osGP6+I21ZxFTcowlzYFKe0ygc=;
 b=J2VGtKQEoVjbavFV5C7nbDayShfpb5OBGHIPRGXQPqu0/jWixqFAqanC
 B4SG1dR9RVShEtVAQQuZbVJEv7qWh8fZBj0lYmK0SeeMFxrHpNVKBn5A+
 zMI+uaNuQ8hUr5BxcrPoyZod8SnJrkIRNC4KpJ6lM+WdEW2racc0xNFTg
 PPR9nI4v+Er0W0aKVPmdaAcpvRbK2vepLaJo6ZUaVCUEI1UFbncdrDC1y
 isjOBToUI6vXyh6OhGxaYNYKpsAr2G8i+K8R+0bEh90oUoR3QfXnzxx+7
 Fada/hD0yadbDjpWidvYJ0m4qCpPsnDHdTDUp7Lw95hFc6omEL5KgxQOd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J2VGtKQE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 04/10] idpf: move some
 iterator declarations inside for loops
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
> Joshua Hay
> Sent: Wednesday, November 12, 2025 4:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v10 04/10] idpf: move some
> iterator declarations inside for loops
>=20
> Move some iterator declarations to their respective for loops; use more
> appropriate unsigned type.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
