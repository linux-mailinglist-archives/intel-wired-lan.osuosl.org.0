Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8hmqHIUTPmpM/ggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 07:52:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDF46CA810
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 07:52:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=nn+jfF8T;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EAC540EB2;
	Fri, 26 Jun 2026 05:52:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c_2gsmBRv7gl; Fri, 26 Jun 2026 05:52:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DC7A40E9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782453122;
	bh=uwIfxgIOTU1u2IxSjeLqtxyhiRG+HPIaaWnNEZW7isg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nn+jfF8T+WzfcxGMTRl1AYGUnCrVNxbBkEaAYJE+xCN9QCFYwsSHIqtGaMdx7zZ2u
	 tR32UVWUboaSF/dL6Etpj4gNHEhVxKfZjdnvTjP8iIN5EBM5KyxO59C4cHUy8mBKIf
	 PWol6YTKLgWKhHdSQ60xICAOrDxHNO/pgTTAERt4wf8MWID9+bGRW4GGYdGWiQfyv5
	 z8PZIw28jH+jVR/aEl8ToFu2NDt+3fFxNoDa7PH1YbgnywBy1lg1LCKsjM1G4CESsd
	 a0XumE9Job19Iflmbt2HZD1xyngaIwjZfGowvfUNggUa56yh3DgfN3v05nBIGVcg8R
	 4G0zmEU3hP5iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DC7A40E9E;
	Fri, 26 Jun 2026 05:52:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D50ED3A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 05:52:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6F9A406A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 05:52:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hVT90Q8WPaQM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 05:52:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 011C44016F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 011C44016F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 011C44016F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 05:51:59 +0000 (UTC)
X-CSE-ConnectionGUID: yoYs8dj1RbGos3JFyWzQCg==
X-CSE-MsgGUID: Hm+2n+z4QW2ZCo+uRCXefA==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="93833831"
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="93833831"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 22:51:59 -0700
X-CSE-ConnectionGUID: 98wlGLt3T66ipl5+myEEGg==
X-CSE-MsgGUID: tFztnc1uRUGyQ6GbX7wm0g==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 22:51:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 22:51:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 22:51:58 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.15) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 22:51:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S3+EECEdTtjLNOPxbKmj2+OgaUDnB6Cpa8X3+0fI74MWHDF+Vy4u9nsqGHPjlSHaeT9LXAaZ78lGcTf2Znfqc7IduyA7pnRrzBHHPUZuW8yJxYQRUL98U2oZTnFkOiqMt5a/UH5tjDKe4lYZev5RtJABezOlcnCSeDZqPtWnMYvpe2Qc9nKJuA/D6E/Znt5PdB/z+t9Wf5UN3Co8BrR9KAt5EV2PxA+L/5apbH1xae3yp7fFW5iMP8uhDMKqG67Ru2tr87kAdymwrOdaRMEvuqFrRtR7gGawnJ5phVCGB5KfO2DkhQvTX1G48YBmuhFqE7mGJx/2gbYylwO8jC5vSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uwIfxgIOTU1u2IxSjeLqtxyhiRG+HPIaaWnNEZW7isg=;
 b=fuVV70hi2qZXbIIeEEkIPOCTkTiu8HBbdCh3vE/JjJFrDBaW5uxL4q3gV2LTB7byuJUELACKCWSt9PodnG6jN8AdHr30FWc8JfQVEMwMbhKUiP9j5AECBqZ2qSgL7glGUy0s6FKWCvte3EU6vb2s5lZsBF629DQ/1+4J7rqlkOYrMHiyS3lVOKwTQ6KNl5ZX6pwwu4j9i1KAkysnyVOBqr6UCKaOBcCTZ2iNF4ETeDwaWDhlK/Gu9s9nk6zSOIrRAyXjsN0zVfbC8Hk8IT9xJZN+7UOBntM3cgGgpBRBwz64XCs32TrWHrzsP2pWjgjpvbNM+7V0Uv8P3aA8aEKUnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9421.namprd11.prod.outlook.com (2603:10b6:208:578::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Fri, 26 Jun
 2026 05:51:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 05:51:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "Pielech, Adrian"
 <adrian.pielech@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [TEST] Weird RSS state on ice
Thread-Index: AQHdA+55jK0wtvXicUe3gb30kirvm7ZO22bggAE9hYCAAD4aMA==
Date: Fri, 26 Jun 2026 05:51:55 +0000
Message-ID: <IA3PR11MB898629EB4D9DFE861E1C8713E5EB2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260624083020.131a75fe@kernel.org>
 <DS4PPF7551E65529A34C04A73F4287C2B4EE5EC2@DS4PPF7551E6552.namprd11.prod.outlook.com>
 <20260625190625.0f5ffe01@kernel.org>
In-Reply-To: <20260625190625.0f5ffe01@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: adrian.pielech@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9421:EE_
x-ms-office365-filtering-correlation-id: bac1fa5c-b0f8-4c78-df2f-08ded34707cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|56012099006|22082099003|18002099003|11063799006|6133799003|4143699003|38070700021|13003099007;
x-microsoft-antispam-message-info: ahm7MVvlBo9jUr0JQtc9PbEaonE+xTSnnlePqmeI4uR1ecfSKfLcGGtomwjCTcWZt843htiWt3lcic0vdfghlmGjpBXEpOkRj9oGXTYTwo0pjddxZuI30axPsamqrSjaokjRsq4UXV3tGC6+VQtoSUC6GPnx1euXBJMx6HXW4UF6E2xEw2aA9BArwAuumR7tjUnwp9vr3G1xBEFsYMiajGlbBi9j2rDCMDv2v29ahuL5isaXZtbph+f62umEDcqnrWdc+nvsKLbbBKH/XChb0sw2lpSmLZcrbo5SmQdDLvVdwpts+LdKoe3bGOVl4bxALt1dQlAY2g/Clt5UUto+D8rhBp3RTXvFgOqYfC4trriroa3WzBok3Gx+qraHKgT+uZXakbeUVvrX2iyH4a7JC6+nIItoL5twyih/obQF/s8tR2b4LslXi/FJnFZ0sLrN9HSLcXvFVOrOq2dgYbb0xRBt1QeIKfcKAUZSBSWzIIo4SSvNsp/QnxrLzJ/+OUqgfP+3XlzAIFDwd8eGsoYPEhvnsPFsgD6yxuDHzRQ6onzfoD7y/9v57L0Bbn7vVQ0np8gRmxGQbb2rY4FGcHmnOyeOK29GQi42MjtkeJ82ciJXZ7K3XejQjG8IB+z6aFVdPvefR9OSAm2ei4DeFgmkH2TxcYTiAjIrTEktS+SAGDxajQ/rZN+6DHb/NTu3tKM/fPXl7YZqT6JoBozt17g5rZPkt7PcN3Bj3+zcQakSRGI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(56012099006)(22082099003)(18002099003)(11063799006)(6133799003)(4143699003)(38070700021)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?64TPTmkgEssZ4AVF9tVzIX7532Gh7Y8+Ba/7UUsWI0VSgWEKjnUN3BvglY9T?=
 =?us-ascii?Q?YMqnKZ1taQlgwgyTdkBRGrIFQohUzSMAegi7uhntrRWFam9gdP4gQLDSwDiG?=
 =?us-ascii?Q?/NAELm61Er4/lYiNuvTmUmv0ztw9E1Mz3nmEX9/OuJkwjhseOxDvxLqFzUOw?=
 =?us-ascii?Q?0UIStpOaxc5KC8WtNtuvKbVvs+jM/b6DGILvg3u0kaHIr0ObDYMroYabnMYu?=
 =?us-ascii?Q?R150Ah+vkaByqmrsTIskjMsi8Op635yjrKf4eET19uVUp2oM5dHhfAXrIl+u?=
 =?us-ascii?Q?IIQZzpNHDVHiTdfr8ZNbiUGy94SBSZQljIiiyT6rRrXCoGdvmt3o0r8Cx/TD?=
 =?us-ascii?Q?18L0wOpRrLMg/7oluuDDZ6tqpQ0qFqyR+FW6+C+7PRxmltfedg7xRiZmMAVL?=
 =?us-ascii?Q?yOvRLDaS68oBG2ZseFTJwnUKDaB78z3XxWHAik8JM/vJ32FZyhebGptBDyfK?=
 =?us-ascii?Q?pW3lqDrlTI/Z9qhbll2Xly/laK04JH73GWw5RdbLSLl7szadlBlxdTX42GEU?=
 =?us-ascii?Q?WCjto1cmNkt7pysDa5ZIZrELfG2TpMLHLZmAfeKoEEXsEVNF1HXyTWSQucS1?=
 =?us-ascii?Q?DJcQbunvKZk8soc3yGZlpizJFHOO3vBzwCo5dJpBNzwwjsIgxtHq1G+w/24b?=
 =?us-ascii?Q?LfTDwQKpVGAVYJKi/5GkuIEkZSHVUHrfIAMXNwWhtK093Zkj4qUrDxHkUQTt?=
 =?us-ascii?Q?2e4X2Mze/rTrwvUqDzgKYyjqp6YO/ah0baEAGaTnSPZq0I3YmwvGY+OqCd1R?=
 =?us-ascii?Q?jRS76UrL5w+nV7ItCA/1JGQbMJnWQ+3qQ3RIysNQ7bcAEbDsEd3BWbhjictu?=
 =?us-ascii?Q?5mTeENGXKmq5VglI0rdUn6aEu8cP4XGE4KHBw/dCYL8vgGZ1waE+TR8N7Ugd?=
 =?us-ascii?Q?IzCLFyZPy1WFjDnEHwA7C6FaFM6mj8nOecxyrj/cx+3yMusiBFmQ2vY539m8?=
 =?us-ascii?Q?62A1LWWI0XhSLGPfmSO729k+OrcZvfsyUYF+XyHIf9VFy77PlfGPIbQZ/tYD?=
 =?us-ascii?Q?kwNbIhV927RpTkCWFlkapOoj0V3cI4T1c64wZCJA1ZclDMqdah3z0o2SbK7r?=
 =?us-ascii?Q?byEsV8+iCkxTAGxRlAuo88B+E4g9z/r742qxYPqulYqmHFLj4609F4wUGbU4?=
 =?us-ascii?Q?KSFfBKvYtTsRh25idTlCNQlM43xFocuZTpMustJEE9PJoDrNMvw36qQJgmPw?=
 =?us-ascii?Q?mnqEpDsi7LXy6OnwRN41oSfVBi6GsG0TbSg5hy71SEjIHs/JON/G0btGYTpr?=
 =?us-ascii?Q?6FObrAl6UES2a3XDOxII0pw0SBKDSKqWyUzYg3UEOJqwXV/YiLLkhA0ZjQq2?=
 =?us-ascii?Q?+8gOn+JMRoT8bkFQ/n/YajF1dgSEAzuRDnaFKkUt84dhkv4viIAptxnjGFCw?=
 =?us-ascii?Q?g77O2mrwGXqVKdqhoh6dyc+jMsLkRyb8wkL3Yx02etJgdpVXf8WMrEViyvFN?=
 =?us-ascii?Q?528UGlUZlOPOAtDnu3HF1bC+SpFJB6cEHVl6ASqXK+9ImmK8dO5f7QB8izx1?=
 =?us-ascii?Q?Or474Q3JwjMpZeWzQUU1jJhQ2nhpDTCYbsYOTy+4iFmsGkx8Fki1hu9gIZdE?=
 =?us-ascii?Q?9UWyQ+LvvTuAIZOEj0wJB9oEDmItX7Vj8OR87Ba6qKPax8p5tuo+/eJ1Gmv5?=
 =?us-ascii?Q?IDo3ygN3BNEPdZwnH5PlR72FScMSiyc5a/mI6qSzeVQCDDLj/VuRi4a/eQ3b?=
 =?us-ascii?Q?Ur7N9kpR+fWDFz9uJGMa6IX38/YtQLNeIlC+8a6H3vcEQxe3OEAcWQmOf+L3?=
 =?us-ascii?Q?Aby1IEEG/wFe9DWgJ337kPrIrOb1YlE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: crr0BNRg3YdJAOO3bxJCv7VZ8DjoVAwP+sOPmIYrJka2NFUmx9XAYxBH/3ihjDQ0YJgJNVEueHA0ZiGIRIOCbcxz1BUkMQHRA7mhvZFd34EWbGnC6K9BVThoYdz+kjBkb19I2qFgin53SnTbw7XO03LZ/HbhoVh/DCsjqtG91L+ZwicFNkoeargZ+9nWRF1pjvG5dXCa4YKYm1VlznWe3knM1JDPuMAWxhuvWGdQGDbq9b3qofe10CA38rNStTq4+U4AFW3iznq5tGZuvoreXkjFvlM5KU8kAaMiiImoO7506VwTu7N6YsnX5KJH/jo4+FEr+PeaNPFInB5vU4B13A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bac1fa5c-b0f8-4c78-df2f-08ded34707cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2026 05:51:56.0234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8mN4nKzigyzuScuoAlVq8Ou9lycT6vEPSo5zePFPc1Xm75aBAIf0/g+Cbppk6n5qE7M/8zme+yWzzoQFW29SJ5YbktFpLSGrSljsKJprLB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9421
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782453120; x=1813989120;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mmIHUyD5ODLCNiweatFcfFuEpCNlHbr8IdFxy/A6s40=;
 b=Q3Qj576lQSaomLQYG91DAhpr/fVFBxJp4lQef4xmymFdz5hS4RU3KPB2
 JCPL1ID7eFBxaCfHp/7+5oaXlrGIUGVKANC8oC/J34pSbHxqqYufxi3uG
 hQRcsxwfIgFX7PgTFMvp0/6NuBrwmFeg1L12/u5DN6IHcnI8wBPkON7MH
 Kp65uA4zdL78t/A03dwJniK7nCxfrxs+2k3F0O9UwRkNGeph5cEMRjIyh
 I25vGrwhpQQ539lALiNGzvRwfVex2iAiVT56iJHLnmvs2aN9jN0Y3Wuti
 aiDBgcXDh/Gb2qMTI+PrdE7rcOMvow81kQmypL39P3xmH4R6NGJK6kfYa
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q3Qj576l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [TEST] Weird RSS state on ice
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:adrian.pielech@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:url,intel.com:from_mime,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AEDF46CA810



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Friday, June 26, 2026 4:06 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Pielech, Adrian <adrian.pielech@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; netdev@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [TEST] Weird RSS state on ice
>=20
> On Thu, 25 Jun 2026 07:11:14 +0000 Loktionov, Aleksandr wrote:
> > The patchset didn't help?
> >
> > [PATCH iwl-next v5 2/2] ice: implement symmetric RSS hash
> > configuration
>=20
> Not sure, it's not in tree, and lore doesn't want to point me at it
> either. What I don't get is how we get into the bad state in the first
> place.
>=20
> Looking at other tests today I spotted that rss flow label test is
> also behaving oddly. Most of the time the first case fails and the
> second
> passes:
>=20
> test	"rss-flow-label-py"
> group	"selftests-drivers-net-hw"
> result	"fail"
> link	"https://netdev-ci-results.intel.com/ice-results/net-next-hw-
> 2026-06-26--00-00/ice-E810-XXV4/rss_flow_label.py/stdout"
> results
> 0
> test	"rss-flow-label-test-rss-flow-label"
> result	"fail"
> 1
> test	"rss-flow-label-test-rss-flow-label-6only"
> result	"pass"
>=20
>=20
> But every now and then they skip:
>=20
> ok 1 rss_flow_label.test_rss_flow_label # SKIP Device doesn't support
> Flow Label for UDP6 ok 2 rss_flow_label.test_rss_flow_label_6only #
> SKIP Device doesn't support Flow Label for UDP6
>=20
> test	"rss-flow-label-py"
> group	"selftests-drivers-net-hw"
> result	"skip"
> link	"https://netdev-ci-results.intel.com/ice-results/net-next-hw-
> 2026-06-25--16-00/ice-E810-XXV4/rss_flow_label.py/stdout"
> results
> 0
> test	"rss-flow-label-test-rss-flow-label"
> result	"skip"
> 1
> test	"rss-flow-label-test-rss-flow-label-6only"
> result	"skip"
>=20
>=20
> The devlink info is identical so it must be that the device is in
> unclean state sometimes?? Do y'all power cycle these machines between
> runs?

Good day, Jakub

I heard from @Pielech, Adrian that we experienced infrastructure issues, bu=
t reboots helped us. Please ask him about CI infrastructure.

About my v5 March 16 symmetric RSS fix, which worked for me, I've just rese=
nt it today, please bless it.

With the best regards
Alex

