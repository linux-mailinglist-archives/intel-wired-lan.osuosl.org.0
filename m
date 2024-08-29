Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DD7964879
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 16:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EA0841963;
	Thu, 29 Aug 2024 14:32:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HIJ_4IlESYMx; Thu, 29 Aug 2024 14:32:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F09941940
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724941957;
	bh=BF9RT/wwtde74iKPHoaziTytbgzjf9FhUoK8hIexHkE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yo37SaqAgPdQX8mV2EJ0PGtY69wJvSrY+SFgNwW0FyZV31aucwD6Is++4OndfJaZH
	 UmJ5s9XLNurxhbAAbn6JKCQEOD6cBpxbR8RoQfI1jiryvHWHOe5FOMXivNGWZXTYmm
	 6ilgJxp5Z7pAcRtbeuBDAO49nWsFWfehSFXBmk9IDbKpQ+AQ8ta2477VvfVFS+lIPA
	 YvM3mydT1HygsUptgR2O6jnvHBTmWm0Rf9hDFSF/jhQKwpK3mEME6UUeNJaZ4i9jdw
	 IFNt8aEAnjjQ+4hDa1q7lC0DxnPuLM9iOQleP8RZoh42vv//DyF7CbZ1l7ymB+NFR8
	 NtOpU7NoeH6eg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F09941940;
	Thu, 29 Aug 2024 14:32:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E0811BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:32:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE8F460697
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:32:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rx78_EAWROSQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 14:32:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EBDFA60680
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBDFA60680
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EBDFA60680
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:32:33 +0000 (UTC)
X-CSE-ConnectionGUID: 3xlyeeFAR9OBBrXbsol2fw==
X-CSE-MsgGUID: 0coruoKFRjKx8as4PIoQew==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="41015099"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="41015099"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:31:46 -0700
X-CSE-ConnectionGUID: brdL6fwNQzOtSY8zd7/Psw==
X-CSE-MsgGUID: 6v6JHQbEQw2Gq2oI+QSsaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63220277"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 07:31:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:31:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 07:31:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 07:31:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gIU5RWfQBBN4UbklA/cH1rFJR+bPEQTrQv/QC3spFaTxgotf8NriYhfIrxnurz02LEWMlY+2gozlpzDXsCbu94/yjLWdEUaQDRltcRYNjmn2RDQL74pzcHAXQy8FDRTQIEjO5vhmPmnI3Idy0HaYL+idwpMQd9Qv0kRZlyUpcCGozs9ksUqjuL7a4w7Zju7zblmiIcfbNiTtH/VvQ0GE5xqGP7WyUWJCb/cika5QaujFgcWnGfRdY0uL6+wTue+kqM+TSR6Nw3a8wOj3q3DBp1kfiQoaChMNHFOhxKCPgUsSuWig130cZmSPuiJZ/PeHuyJsux/CAHL17uKpRzIvmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BF9RT/wwtde74iKPHoaziTytbgzjf9FhUoK8hIexHkE=;
 b=pw3aPOq2abMmAi1g41f0s5i/OKBEfgQ3acpif2rlYkP41SBE3o/6H3EVc2rWzPFLwwuxR/aGuOPzoMesLASd/JoPDJq5lMeAQU63zelr0PukKiuXR8mG9uT+n/9X47mB7cF55ukPOObhZIeQ80Ai+sJ9pQyZJL3V4Jbzxyq0ggBKzkAhhSs4yIwNBB2fq9KUG0Tmn+5aAygX0rVvotlCcrB+ENBXCNZhklzHqPH9FhfUbwQ8MZeLb6CNmW+i9neeaxKRqQqY+14rjzvSQSFoP+AqLibi71ICsZgiQ8n2L+hZD6nD69f+I8gztMIQy6KPKMbUEi0bYuNyfelKgbsaYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH7PR11MB6450.namprd11.prod.outlook.com (2603:10b6:510:1f5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Thu, 29 Aug
 2024 14:31:41 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 14:31:41 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Jiri
 Pirko" <jiri@resnulli.us>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/6] devlink: add
 devlink_fmsg_dump_skb() function
Thread-Index: AQHa889nRJKRoh2KU0q1NBRWFT+TdbI+WHTg
Date: Thu, 29 Aug 2024 14:31:41 +0000
Message-ID: <CYYPR11MB84294D75DF7A28E8478589F9BD962@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
 <20240821133714.61417-4-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240821133714.61417-4-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH7PR11MB6450:EE_
x-ms-office365-filtering-correlation-id: 7143a1ac-9258-4bb4-2b41-08dcc8374c7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XuV8ngrYilFD76IoosZM3gVJWCUTRUtfntBZ3ScYCe2kplFKWVr8u51hUD/C?=
 =?us-ascii?Q?Wl4+svvgpyibGLXpFYe5QPbk4tGJz/tN4dlX/pdAcnKSv1h/SHszoZLI5NRe?=
 =?us-ascii?Q?+1NL6h8HaLVV4lKdM+OsSZqc19/1as/ZVdAPiCb5rT9Cg+fHm8hL+LZijrUP?=
 =?us-ascii?Q?yBMoZPhK6IsRDJXkBPXum3PKJJO8rQBB6wTSP37oZo9EVVF5XYiKt+Jmb/GC?=
 =?us-ascii?Q?myjjvI/uxLXRw0piwYNyO31iOMHKFUsfdOW/RHdZkeud5woXQiyjPoYwZvQt?=
 =?us-ascii?Q?IqTXrDoBSudfIhs0jBz5iMGfbiIGyPq9+So980CWSf4wPKrz8XiTUlEd1gbO?=
 =?us-ascii?Q?jV79imrHWyPzbH9PtB00WV80ViEGFxu7NLICEu2hog5sBVZvYgpLlEuBvNO+?=
 =?us-ascii?Q?NhsI7mj02zkeiqUpe71HR+7wLJAFVobVBob+9UF0L7bEiqNxTZjRR2oxFP1T?=
 =?us-ascii?Q?5DQ+te+ww+5aKraO0na49Go2PvXFDNT0/KCCw1F+hx9rv3eTFu/y0wg3K1o7?=
 =?us-ascii?Q?o27OAnur0AVY8zlHI6t9HsSNrnv9mN7Sv0HsSRLfBzSdUD1C6Aqeq1zxKwRz?=
 =?us-ascii?Q?iw0VuItS5k5KgjsLwitfh/AoRK9gW7p8nNoizJ0Qtk71ad35/CqgpfHkcZby?=
 =?us-ascii?Q?WuYZ16dXjKfN+Zdt9R78futVk7NkY34ze4FEexH2vwRkuiqZb6X8NPhq3tCg?=
 =?us-ascii?Q?Y8uZfV6Y5kpJHxEZ84IQOq70p+nWXz5R+S+CLWJPM7ZM9vjfoW1N87mdXH/I?=
 =?us-ascii?Q?Us1gHv8/7axryDpnHlPcx6dflOdS2sgsE6nE5VLfCbtezv9d1peC9ZfeXX3R?=
 =?us-ascii?Q?fpcvsH7FIs6+eHc59TWnSe6i7EkuLtmR5v8LdenrQTwCy484gACgJi05ArpB?=
 =?us-ascii?Q?uRMTE24n8SLQ65pd+r8HAGDT/njo1Hl9h+y76PhNvT96z8OHE4i4ByAVG8mq?=
 =?us-ascii?Q?6AcZoYvb5wBoCJQY2bjzZM/tct/Szl9WoG7Y1QKsKi2mlHqemt+d9ogX06Wj?=
 =?us-ascii?Q?2DL0STsxgTxz/+PylLhIus/PLuSsZM7whPppFKdNJQrQLlird25v5haK6Kuo?=
 =?us-ascii?Q?jCS1S3kl7LOBRSFOrMbVL1G9wiG6CeT2p7Rn+vnt6MUTEUXLnZpcvaw4IAeY?=
 =?us-ascii?Q?2s90cqwEIhTEAoYRW6eKm/WNlo9VcA66EcjN/diTy8tJFvg76of8tlCLEtdr?=
 =?us-ascii?Q?ZNOu0VA9WCbSu9Rl4hFD+JLO9K5m8GktlzhrG5RqEiCzyLSQEOG61Ty5ME+O?=
 =?us-ascii?Q?gVPKUgYenKXFo3erXw+vnuBO7vNaWyGm90v5uJeWwxJDuAKMJEvwdH6IUWFw?=
 =?us-ascii?Q?8O3nNh96p/j6YvBDD+6MDP958ksD/v7OHmQC9z+IdeGGxdSFyooUZsyhiqPi?=
 =?us-ascii?Q?gKR6MF9KPih9Ria7KTzUFXvNz3GoNv/4LHvJ4bOCeqwuBPtNfA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VKKmkxRoD7uvGOVP+rbXADqesX3npBhOcj/UBb6Exbvur04T7ANaeHF6bV6R?=
 =?us-ascii?Q?iIQo5jttZLNUl4bZ6sK5ApOyix260+WPAlyfE9yVZ9xeTtjwgAXbrASrXAiW?=
 =?us-ascii?Q?tx4hDHrVHMfqASCngTTQ/07fc3MMxOA5ad/XT+7orHg+2Ep0ak1E8Zmm83Uq?=
 =?us-ascii?Q?ScdEPc1Vtg4miEqWToH6MgKzpqXWFjJlQVFj6xk2Sr3LcMaVzlVOYz/kaXWY?=
 =?us-ascii?Q?iM1U/5hcsLzoBJbhi195FR754d7kavCvV1CvVYxLpng1c58j7FIWYwoeyETs?=
 =?us-ascii?Q?NcfaYiy2qREbohnpD2VZ9K2chTrx1J+LyI7y4m8VVp6iOIs/45rjqI5g5mWm?=
 =?us-ascii?Q?ZiRZFfTlO2QNgjuje3WsRmuQe6aoyw+O+wS9aATNu/lXkGerk596z4jr+t7R?=
 =?us-ascii?Q?H/MEnkwCn7HJy1ULUcw/k0kFhYndeR3pj+panbqNEnIn0JTF8mzo0eXMzqho?=
 =?us-ascii?Q?yufc7qXjo0El5yS7TvOZuD3tOnSWNfoEBw3r87yLU5H74F6j4Lhv2UrzxLE0?=
 =?us-ascii?Q?zQvEXUxgSrQLkxW0jFWzMWNL0BNKp2YgkSgHSz74s9K4tWiysO6w1D9dO+Mx?=
 =?us-ascii?Q?tu5voDq3LnmdchTv8FMBvTqXZpZfVxIwqtjQmMVwK26NshDOmEr6WeAa63sg?=
 =?us-ascii?Q?QvE+0QCt4Dn7Js5NebPTJsnEjE6lKbCwTrf4qKuUaFMVLk+1v9Ts6UExKYzm?=
 =?us-ascii?Q?5j58cKMPfnCIfFPLymt+F+vb+X8/KAM7Tvr69QlIGf2SDk52jqLWVOF/oYuq?=
 =?us-ascii?Q?E0C5MFHNoKjNuHEKugKyDUJUxOtxuMX7lam6XvoifcCzleO51oh2uwjZObCQ?=
 =?us-ascii?Q?eDwnYzETfuqK8H0+4JJ6vF1VJiZlQO9fI7o8L4Q5tk4s1Jieg3FKAeSNV33B?=
 =?us-ascii?Q?r8NA29X+EKYB6hyIqIAMCkqzfByV2kpZlOwr4QICD2pxJ8HBd4S+yY9df9C3?=
 =?us-ascii?Q?LIVUCz7/zZqW08Y4z2k5AGjFBuVGWkYxqc+zvv6kcIpksd5pV/lyLgoFZNXj?=
 =?us-ascii?Q?mlwtl+NEbfDJqglZLDj7l7v8kIsgAueS9eUHTPwvJF7BvmhlsehuqTAen/Iq?=
 =?us-ascii?Q?O/K1/c92qiBILXwo4yoxt3PZMjM745xPIyk7iEEmKNYvE+5QHUW1Jx+t4DZO?=
 =?us-ascii?Q?MgwbJW+s3VK66D88FQPY/YZDjAK9+7WvRCVRqj9P9e5ZEIl1rSJHeCHJ6c6x?=
 =?us-ascii?Q?bqt7RhozbJsEBG7kegR842tGYVzEXMr61YozOmR07Nnao4bafUuo1azmIhVX?=
 =?us-ascii?Q?GE+taRPcMCV9YAbAqL2+Zxt3+sL19CG9qWh7IMBaGisfsoqQHQtlOSQVhwV0?=
 =?us-ascii?Q?z7Kvw26rbKBwq8zD4P7OHTqAj96TDJDBiB/0gurRnA7xq08W3fQ6eKWCtnm2?=
 =?us-ascii?Q?t+wRiFELcuJ/yzzI9a0yEPy2XEuNoqNfms0GfWD4Igge7XaE9Tap77X6PEJg?=
 =?us-ascii?Q?cEV/vZlE1cIJkCBtcktQ7KhwhgOILSW6mPdvyZL9OWIlHGLYb0KWeVd8hrrj?=
 =?us-ascii?Q?f7izvfM+SVWsIp0IDHA70HWz7gMw+yvLJIT4flbTos5cWGf20G7SZp2mwYUF?=
 =?us-ascii?Q?F/OMpA3zIYKyQlVQmeo8fdMCPDpo0avBYkWQfVnpB+wbFw6qQAec/1ZVbQDJ?=
 =?us-ascii?Q?Xg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7143a1ac-9258-4bb4-2b41-08dcc8374c7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 14:31:41.1573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P23klx1ChRSLWOMIEEXAZltZDpTMcXbMk2g3W73QV0cNEdrDuvIBI7AeIlk6m1T3rw6nlsvLMnUkZ9VJ0xgIW4CXIxAfwiMFSlwaXTpYUPKymmrZWzhrFUU3wK25lucb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6450
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724941955; x=1756477955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/Cz0QSdOelX/AMssbgY7N/R9TPLsEpcMMA03dPea8SE=;
 b=HYsPalawIZTWVOBn6pReuf5kUM9MG7siEMs2qts2kStdpC1S5jhQXcfV
 SzF4lmg15BLox+IUIhS0dfQb+ViK7zaiJOX04gGPX1cZsrzcv2D2BC3ui
 4rM8oZRZzYJuCuVd78ehm2c4cj26UDwfX/9FphSsW7odyHPvRSruCHNdK
 xSF3cpgGspI30irwM80B109ORFxD3lXxI8uE5MyYzXpfCwPKXIDoxf4kS
 eFeQjtTLbkI/n7VVjUgK7PUbtLHmMCYD8mnEtb0KUC7heWA843P+LkZKN
 DJCepMwAIOKX2kxUWs8choonpvp6sVM3R6hQOu+lYFQXrXpSHHm4RDpQ1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HYsPalaw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/6] devlink: add
 devlink_fmsg_dump_skb() function
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "apw@canonical.com" <apw@canonical.com>,
 "willemb@google.com" <willemb@google.com>,
 "dwaipayanray1@gmail.com" <dwaipayanray1@gmail.com>,
 NEX SW NCIS OSDT ITP Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Eric
 Dumazet <edumazet@google.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "joe@perches.com" <joe@perches.com>,
 "lukas.bulwahn@gmail.com" <lukas.bulwahn@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Wednesday, August 21, 2024 7:07 PM
> To: intel-wired-lan@lists.osuosl.org; Jiri Pirko <jiri@resnulli.us>; Nguy=
en, Anthony L <anthony.l.nguyen@intel.com>
> Cc: lukas.bulwahn@gmail.com; willemb@google.com; dwaipayanray1@gmail.com;=
 netdev@vger.kernel.org; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>=
; joe@perches.com; Eric Dumazet <edumazet@google.com>; Kitszel, Przemyslaw =
<przemyslaw.kitszel@intel.com>; Jakub Kicinski <kuba@kernel.org>; apw@canon=
ical.com; NEX SW NCIS OSDT ITP Upstreaming <nex.sw.ncis.osdt.itp.upstreamin=
g@intel.com>; akpm@linux-foundation.org; Paolo Abeni <pabeni@redhat.com>; D=
avid S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/6] devlink: add devlink_f=
msg_dump_skb() function
>
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>
> Add devlink_fmsg_dump_skb() function that adds some diagnostic informatio=
n about skb (like length, pkt type, MAC, etc) to devlink fmsg mechanism usi=
ng bunch of devlink_fmsg_put() function calls.
>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  include/net/devlink.h |  2 ++
>  net/devlink/health.c  | 67 +++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 69 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


