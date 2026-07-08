Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vp/rH4RaTmqsLAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 16:11:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB72727242
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 16:11:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=F5GasTKR;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6612240B2A;
	Wed,  8 Jul 2026 14:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ojWJfDv_ruv; Wed,  8 Jul 2026 14:11:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B93F840E59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783519870;
	bh=h99VOwt9ULPkWQvpa/P9UpQpA4rnbWZ487YH9sr8glQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F5GasTKRH9k9mEv3yCcwnS8qsGPRzPLlSdLl1XtQCF7TTlqJKR/tuTeBYLwOVZjqZ
	 xdLuCKMmSEVjrVj79pMRThk5eroqXW0/o4356BFnPFXxj8x/kFG8jtX69FF4G6JSdZ
	 f5+zDS0rdHOTSq040gtW5/gU/hwVLPDhnTgjoQzPtigBwdtI80Bi7/R7AkaQJvMRhd
	 NC5ves01kKmT9RKA1YRFqnh117/uRxvV2kFl3XMMw0irpJQkwYZfRhYB5CIK1tEGNg
	 cnxzq7FFbQbpHziSfWefpucNyxEsWfvPtGpmBfcRffgePvPeHDHehsDkXTVVdD7W8n
	 9yEzmtE43LIxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B93F840E59;
	Wed,  8 Jul 2026 14:11:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 806A92CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1B2A60D6E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:11:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1J4ylzmnc9wi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 14:11:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1BC3860BB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BC3860BB4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BC3860BB4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 14:11:05 +0000 (UTC)
X-CSE-ConnectionGUID: 7jeqE74PSti6gg6KLLw3Ew==
X-CSE-MsgGUID: vokj1uJxRaCL2TbMLLxANA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="83294603"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="83294603"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 07:11:05 -0700
X-CSE-ConnectionGUID: zz1m0G5TRZ6ZEKGga+OR1Q==
X-CSE-MsgGUID: qInFZP+TR/iB0QJ4Fqb/FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="250941714"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 07:11:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 07:11:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 07:11:04 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.57) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 07:11:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PGigl65MAVx6PMO2bYS9Ayxt3MOElFCQwi7Kaf1NPViO6KYrfZHazR0lyIh1564eWgbfkB9+F7IylmLjC7/nlIxF5N+3rzelIYnZ3m8SrNgeby+9VA+/VBp3i9T07SgLVz8cmiq4AW0xwpaeb3EydRkkoSE1Ahice0YHQm8guMCpVQ6XjjqitcPIMZygknCIvKB+B6ASkssYC7fKbJTdFKIAqProBIhxUZwfHwgOofAKGcPm9mxUdQY6g/CPtCYDccaDRP6iFK12QlHZ8bNs1oj9Gav8jqJVc6w6Fcbc4obLUo1jGoiT6Lug/CMG158fivu75eRL8yyy1/cmxkANug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h99VOwt9ULPkWQvpa/P9UpQpA4rnbWZ487YH9sr8glQ=;
 b=ys4dCOQGjCL6ZX1hce2SM+2wdpdie8KgPttyu7mm3HsIgCDFFAiqhv8zi1Qaz5bmmtgrPq3lLCTZeOi9X8lpT27OnP4l50v1B71V+j2xO1mTxMLr5fndoAVyQy3iAa9er0YwGSVN4ehtSqIBvcofGjaOD8VvVVK9z59RGDvwq7ArsjgRqUOqfmCzFSWtig6Ae7nuSMbCSwLFYc65N+5Un1NjHOZE0V25n3TMHgbV9MiCWWnq4R88zPLpYnbYXnb+/QhTyGbb9qUWVQIhHwv6ayyvX+a8Wua9okMKApXs05welbQhN4guLC5JzjcSsXixiVSb+KD5DSANcFgyAYFklw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DSVPR11MB9577.namprd11.prod.outlook.com (2603:10b6:8:388::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 14:11:01 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 14:11:01 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Schmidt, Michal" <mschmidt@redhat.com>, Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>
Thread-Topic: [PATCH iwl-net v2 1/2] ice: move ice_vsi_realloc_stat_arrays() up
Thread-Index: AQHdDZuatrSYQyGKCkaWFw+OvX5slbZjq+pg
Date: Wed, 8 Jul 2026 14:11:01 +0000
Message-ID: <IA3PR11MB8986D3C36467475D7EA84F1BE5FF2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DSVPR11MB9577:EE_
x-ms-office365-filtering-correlation-id: 02284a35-5334-4116-ba65-08dedcfabd83
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|38070700021|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: vDxzApQeJ90PO2u+d1sdYwIwzljzi/TXsq32ywDpth7vsDthAx1O8f5SrXVBkbAedhki8SobZUwSF29k9BlwKo+oeqKRzpEMkyTYKrkWBKl3+FdPgPDZJVhX14SliKdeEb0BBhNouVza0/8KnTITXE/UQ4/OWSXIei6H5kiukQ74cX0Cj/r40iLxdlA2ddqHxyVANfuW7sM4lpgBazQeQcOgkogESlvRraFEm+AH9BCGbeabWibpIIWelDFBvPKJHYlM/65dFjwnlLt3RFPTvZmQ9qEz3PH9tnRP4rIIIShkgOWcO82tStY1m3EAyY+bv7ZzTw2BEYDvQP7acgvOYhHl+TkYqh0i4FEKoz8ZkfKpo8FsHPcKBgORKBZMMUu0k+eh3sBp0cyf7ivzqqMaRaTqCM6lOz7OQXNdTOYxUFiSxS6GTiS1s+SnrX+I9hKdYACc3y5geQd1E8uJmPe3+ZrsP3Tb1RSwpgNi+Frobdv+spDGQDcbQhIv8NcTBkE6pAZK6DA/oDsgRMys0TFAR+vF0pqmNjveXKFuOxCjyWjXncCoOL4M44ykn+y67YNN45/Uyk3y7ZiMFuWwvL9ChNe0utcblC9u9pBbWhgi2D3RsnPNheUfiJ6kSLCyBCuQgTJ1CpKg27lC9vsYbdoNI6yfkVNuSyjNwagKTNWSoktR5+YkDAQEsgD/4tTRT7nwATe78cvKaFVZo2q6lAkuNgz0Nsct/thUoEy1JN1HEU4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(38070700021)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9TQZ03tav3ypRgCxrOF8DNL3SStycIT74A7kwmZXwbeggzSTiCscJujyGPFp?=
 =?us-ascii?Q?Kir+JawbUyL7KNX191L4FdaYEyr9QTf2C5qQyCkFB9d+qkHyk6QqQ02wzzJj?=
 =?us-ascii?Q?IojOH8WAuEg0XSWjkQg4csXUsC4gxOBI43G6uNz343Ax344bg79dnXaEnopT?=
 =?us-ascii?Q?P1wgrFmCRXDRavDkbVrHMXfRtyRgSvlLwTJxaznYVnjzuREebrZoaXA8LZB1?=
 =?us-ascii?Q?ZUUvkSclIJDQcqfCGkBQb/EmQri8qpvBjUm/TvPzbztuUsRxmHJVnW+w5mm7?=
 =?us-ascii?Q?j6RE3XiwRmS1MzK285y5ZwmuGdWF8vfkrf6JvBBPcKf4Os6k+sRc5MKLq88E?=
 =?us-ascii?Q?NZZBeomRY2bUiswzqWmg++7lOe0i6SdmU7gDrad4htyGU3XdjPW1ODBTvfzn?=
 =?us-ascii?Q?7SJFn/yZ8bwJTtE920clbySTP4UHo6OjdbXFpCfc0fliVfg0IeNJsTb5BV+y?=
 =?us-ascii?Q?4pQv96tQJro/vJxg3SVXxCM00lCAsApsDjzeWl6MAIYZJF03NuBcFosDqe4D?=
 =?us-ascii?Q?XmHrAowPuKtzIB7kwOjaH13nyjAvccpiwwszHZaREOVOcY03dKi0dfKJOdKt?=
 =?us-ascii?Q?h7sFGyrnVXTxuTbfrdCiZX5iuUJGMbwuytLJ/RydKjRSv1XIt4W5KaA9JY4p?=
 =?us-ascii?Q?afx3k76SDqiI5y3TNrqFXDgT7oBCt+rEKhcX7TENmEcJWxk6RHFs8G6mVeGI?=
 =?us-ascii?Q?X6ujk5Q6qz1XAgX2oV8OSZQpR+G8INZMH13eAvIN7BjoW4ZybE6dBZQjajnT?=
 =?us-ascii?Q?1xjq/jyLVZl6fBwqhyZ2LMLsu3adcWV9x/vHU/0BhDnMv1BLd2M3NUbUJehE?=
 =?us-ascii?Q?2T2uUhYMP/UF4c0tVPMwuokhaKYxLNjqn9oOiSDPMsEOKd4NABDghQnILVRx?=
 =?us-ascii?Q?kHF5aJ7uOofPk8/iSK+JIdJKNo9PUgFcBUVTBHbddlOK8M1SaToN88Oaa+ty?=
 =?us-ascii?Q?ps61XpJXL8WOi6Ev0XSWThyw6o06s1F04g39Tau6h8HjQZnjdrocC8eQCje1?=
 =?us-ascii?Q?59kF4vd2N2XnUs2lSEBjxYgoy3/sT+a6e2VMkXpYTTXm85Nz6n5JPP9+CMVi?=
 =?us-ascii?Q?0Owz6CMbMVI+H+rAPvE8igyvgFRgArWFo6kwe7093OtAARWFO2Zy3/BHTFkl?=
 =?us-ascii?Q?DEb1HXFiK45i+OD1SnJD7rq7xjN4WwuuDnlEMqztDiX04CF8atHDA1h36gdD?=
 =?us-ascii?Q?7iaMTvOcwX99y3EalseHS0E5XlfHfHFXDH8trkvC6XL3fAmgqBkmzUiPhQyg?=
 =?us-ascii?Q?6svpsIDbRix3AG95bHJj0SX50moThC6SYmtnMtLTRRfCeve+KA49NP9QWWWq?=
 =?us-ascii?Q?IyIBZ17gAj91hL+CXRvGiPHiJ+w4tdKqA8TLrJZS5YkcYDVOT1UN6yv6HKAg?=
 =?us-ascii?Q?QgWaGg6Vo12tSbB96o8N3y9RRQE93ZDVJXIRvHXelleXxD2H/9CcoE8+8brh?=
 =?us-ascii?Q?g427G1D2692d8k/ufsff0LMFYYHhP7kVSnNWRR5pSOHRVY/1SNsycu0hzbLf?=
 =?us-ascii?Q?8tpDQRIQo8IBe6Kv85Q1k3qXxacoBIoo4YoXhNn8u+s5s7Q6S5fvar36UwFn?=
 =?us-ascii?Q?hnrdS/5qk1eSBXVdQuFlDpCwEEVWCU/B8JMPA65kKCf83u1oi6te4hc6Vs6g?=
 =?us-ascii?Q?V/dsjJQGAT00Cnn7FaqT3gvOR3q7YFKS2OOe8+jBJT8YXH5NF1UVNNqJcVzy?=
 =?us-ascii?Q?B2E9pWwlv6kzdPjfG02SIuR9Q+Xa4AgSrRimre7+ALuwqZcoM6G6a004FiQA?=
 =?us-ascii?Q?R3loVNhGGa9Va1wG3CIsT7SdBrgswgM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OAW4xwHHaogwQWteC9cHm/tXZ6Lhveck+iheWGfQNICidYPPmUgYFuRI3wJhzDby5DAyQaGr0f0dsSwPMj5MmZhkZ4JbDG4+T89qCgNC3JqJyGGnwRXlc1fbC8jW/IKT0BWn9bjJDhjh92ynQKh490l5Dox+FmsvFLwrY5eRLw7hESiYPsgEcdXHuS6eU0C4thGXUrraplm2IhPglV7Zul2Jse6fIYTd/t8Bh32EaAm6pqAN1rAXRmectSoGWO/XPx3+Mt2jTOMVhcOCVVR88O7mmlaOiMnCuFKNbi3ZljGieYNfM3m3ICrSmlJMmyCiYssttSGo5ZFtqI7uqDcLJQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02284a35-5334-4116-ba65-08dedcfabd83
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 14:11:01.2055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m1uUk9Qu442yYYXIp253wkZC/Cx7yyTxcNYWdIcdNLGpTzeU6Luy9b4gau4ryDL/juuPoqxw1ztVfwdWD1GC9Xt8hIIMqqDGMQW2Ht6XAy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR11MB9577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783519866; x=1815055866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v3LM7bV1ropt6OrG2d/Dx7zSihV6kvQcvrWWaGBh+Cg=;
 b=eWizIhosVFPhoU94RJZb4/bIQ5Vdy0L1HaXb32r49i6SYoZVYGNXM1To
 INjDLzFuE5UnpJZZwmG0S2Tlw3soRzS/dNJhnMc3v4dzBgpXs9ce/GddM
 r5O5WYhWuncWSsCmp6hWxAerTDAb5BZIugunCzygnMhMhKRBNFj1JgsPS
 M62elN8mouXOQQGjrrvFHN2mXrWVfBYhxVhRu7J+a5HVrv6dUWrvMcImd
 1OmB2Dd9LldpZXG2IlTNSc9toHCFAKAqzacFQQk0hgYSiw93XVe8HwOmM
 b+v02MFRfBTA5cr283sqmk6dAuflojZPXo7jgR5sWHGAAuhbE+JWynJbk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eWizIhos
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: move
 ice_vsi_realloc_stat_arrays() up
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:piotr.kwapulinski@intel.com,m:marcin.szycik@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9AB72727242



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Tuesday, July 7, 2026 12:44 AM
> To: intel-wired-lan@lists.osuosl.org; Schmidt, Michal
> <mschmidt@redhat.com>; Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [PATCH iwl-net v2 1/2] ice: move
> ice_vsi_realloc_stat_arrays() up
>=20
> Move ice_vsi_realloc_stat_arrays() up, to allow calling it from
> ice_vsi_cfg_def() by the next commit.
>=20
> Fix kdoc for touched code. One line break removed, "int i" scope
> minimized to the loop, no changes otherwise.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: no changes
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 119 +++++++++++-----------
> -
>  1 file changed, 59 insertions(+), 60 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 8cdc4fda89e9..e48ee5940f17 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2303,6 +2303,65 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf
> *pf, struct ice_vsi *vsi)
>  	return 0;
>  }
>=20
> +/**
> + * ice_vsi_realloc_stat_arrays - Frees unused stat structures or
> alloc
> +new ones
> + * @vsi: VSI pointer
> + * Return: 0 on success or -ENOMEM on allocation failure.
> + */
> +static int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi) {
> +	u16 req_txq =3D vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
> +	u16 req_rxq =3D vsi->req_rxq ? vsi->req_rxq : vsi->alloc_rxq;
> +	struct ice_ring_stats **tx_ring_stats;
> +	struct ice_ring_stats **rx_ring_stats;
> +	struct ice_vsi_stats *vsi_stat;
> +	struct ice_pf *pf =3D vsi->back;
> +	u16 prev_txq =3D vsi->alloc_txq;
> +	u16 prev_rxq =3D vsi->alloc_rxq;
> +
> +	vsi_stat =3D pf->vsi_stats[vsi->idx];
> +
> +	if (req_txq < prev_txq) {
> +		for (int i =3D req_txq; i < prev_txq; i++) {
> +			if (vsi_stat->tx_ring_stats[i]) {
> +				kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
> +				WRITE_ONCE(vsi_stat->tx_ring_stats[i],
> NULL);
> +			}
> +		}
> +	}
> +
> +	tx_ring_stats =3D vsi_stat->tx_ring_stats;
> +	vsi_stat->tx_ring_stats =3D
> +		krealloc_array(vsi_stat->tx_ring_stats, req_txq,
> +			       sizeof(*vsi_stat->tx_ring_stats),
> +			       GFP_KERNEL | __GFP_ZERO);
> +	if (!vsi_stat->tx_ring_stats) {
> +		vsi_stat->tx_ring_stats =3D tx_ring_stats;
> +		return -ENOMEM;
> +	}
> +
> +	if (req_rxq < prev_rxq) {
> +		for (int i =3D req_rxq; i < prev_rxq; i++) {
> +			if (vsi_stat->rx_ring_stats[i]) {
> +				kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
> +				WRITE_ONCE(vsi_stat->rx_ring_stats[i],
> NULL);
> +			}
> +		}
> +	}
> +
> +	rx_ring_stats =3D vsi_stat->rx_ring_stats;
> +	vsi_stat->rx_ring_stats =3D
> +		krealloc_array(vsi_stat->rx_ring_stats, req_rxq,
> +			       sizeof(*vsi_stat->rx_ring_stats),
> +			       GFP_KERNEL | __GFP_ZERO);
> +	if (!vsi_stat->rx_ring_stats) {
> +		vsi_stat->rx_ring_stats =3D rx_ring_stats;
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_vsi_cfg_def - configure default VSI based on the type
>   * @vsi: pointer to VSI
> @@ -3011,66 +3070,6 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi
> *vsi,
>  	}
>  }
>=20
> -/**
> - * ice_vsi_realloc_stat_arrays - Frees unused stat structures or
> alloc new ones
> - * @vsi: VSI pointer
> - */
> -static int
> -ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi) -{
> -	u16 req_txq =3D vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
> -	u16 req_rxq =3D vsi->req_rxq ? vsi->req_rxq : vsi->alloc_rxq;
> -	struct ice_ring_stats **tx_ring_stats;
> -	struct ice_ring_stats **rx_ring_stats;
> -	struct ice_vsi_stats *vsi_stat;
> -	struct ice_pf *pf =3D vsi->back;
> -	u16 prev_txq =3D vsi->alloc_txq;
> -	u16 prev_rxq =3D vsi->alloc_rxq;
> -	int i;
> -
> -	vsi_stat =3D pf->vsi_stats[vsi->idx];
> -
> -	if (req_txq < prev_txq) {
> -		for (i =3D req_txq; i < prev_txq; i++) {
> -			if (vsi_stat->tx_ring_stats[i]) {
> -				kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
> -				WRITE_ONCE(vsi_stat->tx_ring_stats[i],
> NULL);
> -			}
> -		}
> -	}
> -
> -	tx_ring_stats =3D vsi_stat->tx_ring_stats;
> -	vsi_stat->tx_ring_stats =3D
> -		krealloc_array(vsi_stat->tx_ring_stats, req_txq,
> -			       sizeof(*vsi_stat->tx_ring_stats),
> -			       GFP_KERNEL | __GFP_ZERO);
> -	if (!vsi_stat->tx_ring_stats) {
> -		vsi_stat->tx_ring_stats =3D tx_ring_stats;
> -		return -ENOMEM;
> -	}
> -
> -	if (req_rxq < prev_rxq) {
> -		for (i =3D req_rxq; i < prev_rxq; i++) {
> -			if (vsi_stat->rx_ring_stats[i]) {
> -				kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
> -				WRITE_ONCE(vsi_stat->rx_ring_stats[i],
> NULL);
> -			}
> -		}
> -	}
> -
> -	rx_ring_stats =3D vsi_stat->rx_ring_stats;
> -	vsi_stat->rx_ring_stats =3D
> -		krealloc_array(vsi_stat->rx_ring_stats, req_rxq,
> -			       sizeof(*vsi_stat->rx_ring_stats),
> -			       GFP_KERNEL | __GFP_ZERO);
> -	if (!vsi_stat->rx_ring_stats) {
> -		vsi_stat->rx_ring_stats =3D rx_ring_stats;
> -		return -ENOMEM;
> -	}
> -
> -	return 0;
> -}
> -
>  /**
>   * ice_vsi_rebuild - Rebuild VSI after reset
>   * @vsi: VSI to be rebuild
> --
> 2.54.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
