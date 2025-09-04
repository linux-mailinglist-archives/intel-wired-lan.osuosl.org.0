Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9C8B449AB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:32:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D45460808;
	Thu,  4 Sep 2025 22:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FOyxJ1d5LI0F; Thu,  4 Sep 2025 22:32:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E27726080A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025132;
	bh=BckbbNfHtMymbWN7xsu6Ka5CucveUYvPWIfO0NwnM/o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tiu80qMStzhZB/30ifMLQuuHj7LtmzP0UB/TodRoBEcXsLn2aYJk5Ke1Ngf40SMtP
	 Aj4SeNDJsznz8bXJYs6xoGw2xhU40fPSicdj+90C1lB8nhTDEOY1ibeLxi3Z2n4Nij
	 DYqPRUwW8LBLGAJwarzWdEQl0WTF/+HOCyTA+UnG+csPtBqMpHY06UxHLnwBby4bR4
	 j4kVjGgoKBxScgyVkgso9D68T/c+nhdo1X50nNdN2R0AVTC5plYNVCl+GwS/CQh5lB
	 F562Xy91jHc3L8DbzneiTbxZ7sktMAJgyJjxN3icmbrfTc00QEFLdNE8ueYaSL3R8T
	 siQuduVplE/gA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E27726080A;
	Thu,  4 Sep 2025 22:32:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DFB48B69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C656F4025D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:32:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7l3oBMGvsZVx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:32:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E4DA540249
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4DA540249
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4DA540249
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:32:09 +0000 (UTC)
X-CSE-ConnectionGUID: +vNLdd2NTAaPcBji+yXeKg==
X-CSE-MsgGUID: OxTzJbCyQRGz6qrwgqxQuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59299993"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59299993"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:32:09 -0700
X-CSE-ConnectionGUID: +phLA0AzQ0K1BAZd+Bbmdg==
X-CSE-MsgGUID: DYaXD+hBSayfDq0x8hmFGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="171902871"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:32:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:32:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:32:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.51)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:32:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=si7tn2t3AMI2bQ6h2QoBDiqN4SbDM1TNWwtzVGbGG4EiTOIq4N/uW2ztzfYlz6fHyqptFL969FVMUOlWREV+Mzc48eum1I5Lt5KLsTfn0qMWN40HjDQcvj6wM3LOIAUya5bvA2qpXMNtImRIf1rzQGujfD4h7aM82k608oHuGBf1loMfTBTwy/O554KhT/sMwQxixTA73pSfU+choAQiWyjqzXelSW752DiDfQpWj+s2dtN2q9faQdUeibL5DkgDiGnRa941wRY/0CkvtGnILubOP8vlni2vK24Tc6grDRiAuSahYXXTWRVSQRWB29SR5+KlCMyCnN05GbX/V7a+9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BckbbNfHtMymbWN7xsu6Ka5CucveUYvPWIfO0NwnM/o=;
 b=pk4Di1eoA0jh59oCkN0b3iYjVbvjYqj5LfvAJA12VuQD4UNeGMmifuiAVFDOBdVgs0BJSVgTc3d8D77cpO9Mr9ySitR2hGHGjONRTOKJRhVkUoikagviIvCmOTWUK9nefZgGfpgCu8yb1sh4XiPKFqIahO5G7r5mR1iyMSYpDXgf84hdE0KWXPGodBG3PXtK1ZFf+cUr7Hk76pRQd1DAWPUyCHzza/3dkM38T06b/Hy5p70n+ubpvfaEpgYYpsWatlB9MYoAC2Vmy+iY4e6iKwJNuy1YmwwNTcELBjXAMmp5JxyG2xAZ/PjLiyJPIKOVox9yw0qENOPQFmRwq2/Ilg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 22:31:54 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:31:53 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce local
 idpf structure to store virtchnl queue chunks
Thread-Index: AQHcEy+PXvGM0INTkUGqsB3eReI51rRuZnkAgAAMlICAFT2gUA==
Date: Thu, 4 Sep 2025 22:31:53 +0000
Message-ID: <SJ1PR11MB62974314BE40DF085D416B339B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-2-pavan.kumar.linga@intel.com>
 <IA3PR11MB8986F4E37360430BF937A210E53DA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <IA3PR11MB89868BCDB793D4B320399923E53DA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89868BCDB793D4B320399923E53DA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW3PR11MB4635:EE_
x-ms-office365-filtering-correlation-id: 51a267d8-b58d-4219-07c5-08ddec02d977
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?T7o2asNLvJHA7Ml2lnOC3wOlskLeTIDc9Ouh4nuY74yEhq4WpbfggyqiIf+8?=
 =?us-ascii?Q?eimyZrIaMmQCGkFv/q2gwamaEFcpPaENpcf8dSN+hXv52u2PAJtABUY15696?=
 =?us-ascii?Q?U4xRYoGIENc9d1tdTUCGjhAcHPsPsWVDTJYD8BKp42/1wOTuAqSXIW80XzNa?=
 =?us-ascii?Q?Nof4bLpQLJIp37vptXOG71xRuFFiAC9BQvaqAvJqkLetDc6Ad+vK+S+DBCMk?=
 =?us-ascii?Q?/fd3jeEeXYcAqxJACyk94B8MNzOhdOY1BqBt4Qc9PvcSDunqRyxGNMzFEH3a?=
 =?us-ascii?Q?lPzUkZxToEplBJj8ZJhoSKFcFji2JpjCVrkWdreREfdPRdIKR6bEqDrnBIdq?=
 =?us-ascii?Q?0I/ry/eUu7VVX2zJcYRcCo416rnvgcv1yvQb8jQJoJKBRK/0I1zZqD+mnJAi?=
 =?us-ascii?Q?W1EqlwrrJRKf+N3FxngCIGqoP6mc6lrQMQadCs46aYFYUOMKEPTvXpfJ8AMs?=
 =?us-ascii?Q?E5jIQij3pLN2zapGeGCQZ9eMiXA/mT86nVmhZYbeiWIEdxioRPZs/05Faq9+?=
 =?us-ascii?Q?ggLhgJD6ybJ0aUHxWRWLZ03fWCWvCQHQrDwhjMnq7Bv6D5di4hdGXiTWOYDB?=
 =?us-ascii?Q?nlM2ceDsHvghDEV5zsySXQgRpA0NY/e991dO/XXg5OpHBNgsChcM4YVdM5rS?=
 =?us-ascii?Q?7HNCvLtog2faUCjbn+hbqOGlpiT5m2Hx1y+CHLzznM7l8xBsUb7vu3yIbASc?=
 =?us-ascii?Q?MvRZT4wa2JaV9Uf6awZyTQ3HOOnLLQNEdhVCnpue+f681nXuHNjcTP1vvXQm?=
 =?us-ascii?Q?Lk6Xu5PHLoKxgA+d7Cc89AGAsbAOeTf+efT4WITKi6jbA45Q3j2xq8BFbkH0?=
 =?us-ascii?Q?HlbTIVwpZUAFZROy21YJrMRg79pOR30fKiE+S657EUDyWNI3DGze8bbUluKh?=
 =?us-ascii?Q?D9Ptsm0dZCF9pFN7UuuBydXynMOA8ixlP3x/ZCG9TrJwDGIRqaGW2rNQxXSf?=
 =?us-ascii?Q?oQUeY5cgRwQIlNWDpouTajE7x9ovBbA+40WfqBMPcYkLFv8WuxidP3VgP2r9?=
 =?us-ascii?Q?zCrm7XUwoRonavcyAaaTNzGJB1HMBaNBEIoDM8hu9w1qUNqGkM1vlg3pB9K8?=
 =?us-ascii?Q?cFQkiPXsmBbAsP66DNpcEswdOeEuLO5DsnS9YFNqLiRy2EiWL4uXpAL09R43?=
 =?us-ascii?Q?sZShF3raXoihCnjNpJquZQNK1+v57kzpBraZRBrWm93TmGdrsFy61SXvhi3x?=
 =?us-ascii?Q?ElvKvw/zC59YAlLKu71cFshfnJ0vxtEbUMWhw8q56FV78GrAZX+obH3FhriE?=
 =?us-ascii?Q?R+nfeN3yXd2wrMtvRJ5k8jFIxcZhUfn8NEazF8VwkxR0eTkQgtbuFjh+6++x?=
 =?us-ascii?Q?PbQO+ZQyJt2lrFOpsrol6KapeKjQ4vF6rBuQctyhHPgRsUS9tgLSbAZsW5hy?=
 =?us-ascii?Q?0e+PCviMJYgqCGyXZqs3X2B3jYUoevNz0a5SQ5USXQtycCYInJWUgFkwgKQK?=
 =?us-ascii?Q?7ZrrGwv1knKIZuSenjamhuKasC8sCCresK673YJQylwGd/0lUDYpEA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c9GohFzTE5mpCwRM2XvfLl36j7hNAdQ/ezJEDCjPGve8wDElzX+yo07bcG/9?=
 =?us-ascii?Q?scwlkSaNalFaUFMGwhhkrowmr71KT/Fp7iS7S549dsnzLR9JltEByS5x5i++?=
 =?us-ascii?Q?h5YB6BkhIQj1xEenCApsrkx9BmJikselWkT2mOfBHN7reS9aO19FC3W+sWgN?=
 =?us-ascii?Q?L1uQHGVeTVzke26AwFAT7sE9fUBzLGi1WYlAUndlSi1Gxnaer3fchjdb8f8Z?=
 =?us-ascii?Q?efRB05dwVueSyyo1mJvpt9RkOKZwxX9ATWSors/SVsW2t+lparSPlmfnS2HM?=
 =?us-ascii?Q?AlpRQmk3FAIWcWDydSa3ryFOfMr+UwePFp7oIIFTBoYNQDGUxSmdN4bGztPp?=
 =?us-ascii?Q?+5vH1bdVDDTQDLDcF2knHN9n8n4s8ThcC3/ItC9BszpdcDigQu5RZ31Fw892?=
 =?us-ascii?Q?/3Q1Fvpcm/Mxcgnc4C7YAqsPsp/TW+d9/kbUyxQ3UlqOi7QEoJCK6KBzEv6T?=
 =?us-ascii?Q?+M4kuI7p9uqI6dmR/KmUvRs94tkNu52rTK1CDu9Zi7m7OHO9eWEQHr6Zs7tX?=
 =?us-ascii?Q?6ix1njtnp1FY1f4As2c5cgI4YMY/RdBfm5y38cU6j6jFpDLzhsr9PdmhocWb?=
 =?us-ascii?Q?Pu90jAEyGrYdgNIaVdK/rq43D2IDXyNH70OZW0Q3HWeliwX3jEuoiSFMIJ0G?=
 =?us-ascii?Q?QEv33zcP0VS4F/Tfbm53c91yyrkmcaC+wQ+H38K9mEx83MWY+ZgJhfyOSLSZ?=
 =?us-ascii?Q?CTqHBX++J3LJ9x2ofkZfVB1TJUBJlG8bBFHw4f/YFJWEZbrwtlLNDoOymzeI?=
 =?us-ascii?Q?54jEdjenysLKorPgDq08BPiJ9Qw/6YLD1Fb/4M98wy+T0vJCWWbhIKUS5Py6?=
 =?us-ascii?Q?4SKzUalOq9ImxAQvrWS8Zj4MIa6bQEs9yEFMXz162aGJPdOQQDgflDvMw0pn?=
 =?us-ascii?Q?xczfCQOlL/eKukfPOxrhloj/pATA5k6UrGu0tfSRtpqu1YNaGngi3pIi4Gx+?=
 =?us-ascii?Q?tNOs5gIwcFyUEENnMiAPoFfLLFWQAxyobqKzR7QapT0YGRydSFk6Dq2u4e7q?=
 =?us-ascii?Q?NtsgI74ZW8qrKSiJERXrt38DU6Qn4Rn3JmalUnQVB0BFKgZ4KvQXFsLf33TB?=
 =?us-ascii?Q?qVBuAXvYvk0CZdWeCbjp50UNwcpg7nSuiM7t+/Oo58ynKiuBSt3XCD/DIrnT?=
 =?us-ascii?Q?VcCPNcVFJV1GSDElC+UMIb9Odc4ua0kn9jG9itO/aOyzl/o4jnubhjFhJzxK?=
 =?us-ascii?Q?9FUaq2GiYCcuHltIdm5ZpFwKT8flyTbqJQ5bam08sOUWpjeKwFa6UlSWxfO3?=
 =?us-ascii?Q?bfFq8f6Z0/OXnTkPevWGFhlO4GUBZtc2/6KoRUZZK8Tz3xkL13NLiiseepVZ?=
 =?us-ascii?Q?0QJ/aW342CNa5B5Z5jKmlPGbLUvOXPRUGjgethcdgq6D951SJ4WAouG0XsRX?=
 =?us-ascii?Q?EsbLvM6lC6fcVG3tM4EBxyGGkQEbxFS1gw0aqhaBqyrePavM64dp0/W9R+DV?=
 =?us-ascii?Q?b3nXZEJ/vWhx50WIu4WqoE1T6v9Ci4x5HrqsvkHZn2kYaGU1gFjaM902HScz?=
 =?us-ascii?Q?tYxhiTEncQP1xpSMS21GBoR+OTcY0JLlwEQduD7kTQ3OwRGLjUl0bYcvO3cy?=
 =?us-ascii?Q?fgxSYaGKBrKOde7kevsK1DYsoy3nmRPI9yGSx43a?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51a267d8-b58d-4219-07c5-08ddec02d977
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:31:53.8949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rmPa0d6hQ627ZCI5eCIYMPep9oZVDBCX5+UMnnQ5N+v01DC5CXFsQtJN029rcgksA9vnXhl0zK6PaHzhJjk33A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025130; x=1788561130;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BckbbNfHtMymbWN7xsu6Ka5CucveUYvPWIfO0NwnM/o=;
 b=YGHOWpTffbrwzquSs3qsl5OFUBxwDTx49Hmxw+V8QzEIB+sR7hnNia+X
 YHFK/KQEvi+6oV9dmOFh9Y1SMfe+K+OlFCg7TJkXO4GWkSyzANviaj4Dz
 GoD68aLcTnKaYmcI62/DuCMNmQki4mVpRq1PyVZSkDxsL4TMVCSDYJIsS
 4hMsV2i895iLJn9xYbKPzc7a7rxY0F4MitpsXroF/4a207A5WiDHyo6e1
 hTgKuHdAt/eH9Y7LoTJ7j09aXr/fCTOQDGU/jln8ZOOON8TJ2yoHnawrh
 DAErUM+aYAq7lODUKITEdv8RXft2izicFbvkTbbSudzAfsBYIzM+X/HJo
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YGHOWpTf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce local
 idpf structure to store virtchnl queue chunks
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
> Loktionov, Aleksandr
> Sent: Friday, August 22, 2025 3:09 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Linga, Pavan
> Kumar <pavan.kumar.linga@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce lo=
cal
> idpf structure to store virtchnl queue chunks
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Loktionov, Aleksandr
> > Sent: Friday, August 22, 2025 11:24 AM
> > To: Linga, Pavan Kumar <pavan.kumar.linga@intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>; Olech, Milena <milena.olech@intel.com>;
> > Nadezhdin, Anton <anton.nadezhdin@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce
> > local idpf structure to store virtchnl queue chunks
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Pavan Kumar Linga
> > > Sent: Friday, August 22, 2025 8:32 AM
> > > To: intel-wired-lan@lists.osuosl.org
> > > Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > > <pavan.kumar.linga@intel.com>; Olech, Milena
> > <milena.olech@intel.com>;
> > > Nadezhdin, Anton <anton.nadezhdin@intel.com>
> > > Subject: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce
> > > local idpf structure to store virtchnl queue chunks
> > >
> > > Queue ID and register info received from device Control Plane is
> > > stored locally in the same little endian format. As the queue chunks
> > > are retrieved in 3 functions, lexx_to_cpu conversions are done each
> > > time.
> > > Instead introduce a new idpf structure to store the received queue
> > > info.
> > > It also avoids conditional check to retrieve queue chunks.
> > >
> > > With this change, there is no need to store the queue chunks in
> > > 'req_qs_chunks' field. So remove that.
> > >
> > > Suggested-by: Milena Olech <milena.olech@intel.com>
> > > Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> >
> > [PATCH net-next v7 1/9] idpf: introduce local idpf
> >
> > ...
> >
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
