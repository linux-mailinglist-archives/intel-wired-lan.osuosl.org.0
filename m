Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E796A295D2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 17:10:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 277CF40680;
	Wed,  5 Feb 2025 16:10:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m9vV5IxydP6k; Wed,  5 Feb 2025 16:10:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A69CD4066C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738771799;
	bh=mNbz3D+PBHxcoLSJGDdGFFwwmNPco0AImmv4AW3rJs8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oNSgXfaf0GZ9Pm/MdvkJjEd18//p3+W+/1IkY1HU15DDLVP2L2ldWByJs4zCFWOQ9
	 q+9K6YEYzpSEIaelE1eTpsQ1RdaKs5gKwKF5SBLgsdbKdLU9c8eTpYZOdjp2WiYrJM
	 O4mIYAUlCOQIapi22ExuxCVh+K85BQ5N049jCN4NJlcY6h/F+3Moqm/cMIadbirUIu
	 vTUHhk4RhdLbZ5Ayo73CEH6sMLtBg2tFViGBOI1QMoi0A7r0URRvE3LUCzVsACijdJ
	 TONfS/E12qKOvkg+Vv6vJi9TGH45atd8aNMgOWitQzmIxNkXWnY5X6jAS71KYuiine
	 +zn/iIS5dK7qQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A69CD4066C;
	Wed,  5 Feb 2025 16:09:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5127512A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3332880D25
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:40:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tfvvb_zB1gcz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 11:40:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=qiuxu.zhuo@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D586B80F51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D586B80F51
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D586B80F51
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 11:40:07 +0000 (UTC)
X-CSE-ConnectionGUID: oOlywxrPQwaz0UxrUzC1ow==
X-CSE-MsgGUID: vcCp22dXR4qOvl8sfb4YNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26919173"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="26919173"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 03:40:07 -0800
X-CSE-ConnectionGUID: J+abfLtnQ0Cob724+qCw0Q==
X-CSE-MsgGUID: ILag0o64TnGzjAusei1PJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="115931522"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 03:40:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 03:40:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 03:40:05 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 03:40:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MlPmVIK3tqNOfwbdSA5POv5ZVQeJW+pmPAmcL06CGEQQYu+6dmL0owsRfWBNXMrU27eauPjOD6gZ1vbxAcnmDTU8vvmEy9GEU/h410r8oeNv31iSIcBcXFKsTUo6BE8WRh9m8hAIpXhChu0A8RAXAzK9J1JPcXOoFWDRd8jbXtZJ+fxxhztEWXlG+aK+GQNZsSPmdCrS0xl1ycEr91YDExzuOxXT8wULiQRuJ8RQrXO3ZO0Q9EU7Sjr91rNOiTY9U7IJlcS4SbgIHqgzf0uzPbeplMkEKBm5o9IP+X+LJLWQ1PNcXhimLhIRh0PPV63kbkqSSW19HkJ0eufUVLL44w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mNbz3D+PBHxcoLSJGDdGFFwwmNPco0AImmv4AW3rJs8=;
 b=gTN547fLqIoaKx4h5iqOF2TnvTXUXXWsnlXjiHaY2506jvr0n2JiHwZ7XIRA/aXzjp24euwqiu0mVY7tqt891UXSxoDuJpC/F1xHQf+My7KFIUKvdnnJLT5X4Yn2rbRfszqu0emZYkUParZvLVZKPozg1wjfxVpyNEoMT23DPKYkYKYHQG4SRglYtINCNjBrR49SwRHTfJKIU62BdylRt8/yFOS3Ymiry2yCk9Qu9ExblgXFruU6xEwQTiFfLpdexhVl7JRZ7Vzb+uCYVvPyZfxwWQSiD8dg9TebtL/em8NYh2WAgrj6/ex43BWOuQzQihtDJWlauqTYZ+tSK6BWxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17)
 by SA1PR11MB7037.namprd11.prod.outlook.com (2603:10b6:806:2ba::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Wed, 5 Feb
 2025 11:39:43 +0000
Received: from CY8PR11MB7134.namprd11.prod.outlook.com
 ([fe80::cd87:9086:122c:be3d]) by CY8PR11MB7134.namprd11.prod.outlook.com
 ([fe80::cd87:9086:122c:be3d%4]) with mapi id 15.20.8398.025; Wed, 5 Feb 2025
 11:39:43 +0000
From: "Zhuo, Qiuxu" <qiuxu.zhuo@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, Kees Cook <kees@kernel.org>, "Nick
 Desaulniers" <nick.desaulniers@gmail.com>
Thread-Topic: [PATCH iwl-net] ice: health.c: fix compilation on gcc 7.5
Thread-Index: AQHbd7rK/6D6VobExkCEl7llMq+jkrM4lRiA
Date: Wed, 5 Feb 2025 11:39:43 +0000
Message-ID: <CY8PR11MB7134910DC9955677B163531889F72@CY8PR11MB7134.namprd11.prod.outlook.com>
References: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7134:EE_|SA1PR11MB7037:EE_
x-ms-office365-filtering-correlation-id: 8c0d9477-356a-4af0-ba4c-08dd45d9c889
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?lYLfLJL4jsSoXbfqjEREzv98PxgEjwX10iDUJhkCPUz4MjUmZj1amHyYrWT/?=
 =?us-ascii?Q?Fkt2XPSNF0+nqnFg/vbXJsdhd21Mnt76WHXK+JknxlJBOnvLzpg35CWUwFYF?=
 =?us-ascii?Q?vWT9UUvTgXZGlh/eUbhR6Dgz/+FDURK0jHq7tmqomp68Wus8FEIEv4AZc3b4?=
 =?us-ascii?Q?7aUvI6krw4Oj72PTqnyyh+j3teJ8sfhGEEfYWiSXcS3HiW0Do6UNBz1DQXoj?=
 =?us-ascii?Q?k9ncwMlbtKfuqyox27/Qht348t7vV1Lgm1Q6cqs2tiI75gZmu9TBoIVf6sDq?=
 =?us-ascii?Q?AThkJrp9nkMxheDeq//X3UjUvB1boMt0qymaKTXAZNgDU9NXisSde/uTsC11?=
 =?us-ascii?Q?39vuQica8UHbvlnBllWSPmSiZJVGER18NTkAY7LStRdEerXaW2wuyZzmLpZg?=
 =?us-ascii?Q?SzIS3LlJNLatnamjg2r0n+ShnH+W+EcRGdNMm/EPBkeE0N6lxKSJJ2+ixLws?=
 =?us-ascii?Q?0qZKBpN5pbvr3h6GpZCaolCmupqEyMDYux0+aDXiSlIEQP+uj4q2YKp/iLuz?=
 =?us-ascii?Q?VNpzvAesKPRaZY6AEDt0ZjxsnqZ+i3V63sa79UeGFFPJyUNensTwuCV0v1Xj?=
 =?us-ascii?Q?SpOhzrNxK/Nrpq6hn0W2YN8OAPq6kIVVY+j5guWvJZOaO0oT8AlzTzddw3Q5?=
 =?us-ascii?Q?MrSWz2qkPRBX+5UD8LuC2CCx0isILJN6NjB/aIsou29HiuCkDvepwb8uwsOX?=
 =?us-ascii?Q?DiuwRUzpt+xE/TD59uOUYrmFgYQo6z7a8lIhKSejc7xWeSGknQTVR7rjaNB3?=
 =?us-ascii?Q?1/f7Jqi0x9ArN+gHC/583cVB7TEmxIZsLG2bcYjWvn+zwbGAFMZ2iah24YUA?=
 =?us-ascii?Q?/iCcCrObCuHkzHCymOxYuo0hEq4D9GOvfOeaRWj1FMQBE5twMSDq78dBmOtU?=
 =?us-ascii?Q?8zrYEvdkgHmdmpclVwOIS91flcs0HcJPNzHnzZeTKMQ0SDriBrPQosPcp72W?=
 =?us-ascii?Q?WnDZLFM9Rdt/OGKDGlm4rx2+ea7yHR51MatRPhWeMPsJUhnUAWFJ55LIVxV+?=
 =?us-ascii?Q?As4uAudu67s/DH3Sy3r9eCXGA3OIZRO4CVgg0j8MUDVvWUoVYG4P27MTKjfZ?=
 =?us-ascii?Q?0WKlB+gqQK179Qz1u04qbJh1vN7w9r99p8g7fmllD80aLvZ+qHopVe/dZGdQ?=
 =?us-ascii?Q?vIiH2504YFAPlC8OM+AxHmLQb+yErr/NL5TCCCc5rsX1Dt+/P6n4YTbj1Eo5?=
 =?us-ascii?Q?XtESleqzfRo4mb2obpXFQvfv5KW1HQNEz7Al9HpIiWQ/orFn4O4tGD7+YNzc?=
 =?us-ascii?Q?WoKKX3FZS1MnKtFdXEKmV1qnBnPfgDb10/EC2d7Wr8/uG/rhXX1SQ06Un55b?=
 =?us-ascii?Q?urtyoOpBgcGQSFu4aDpxS8bi8ymg2dUU5+gXes0WdAG60+mMA49TkFevBKR+?=
 =?us-ascii?Q?+21odbI820X3Bxi4rpcT/agbP0VTd8pRP3a08Fxu6nmuwQFmZg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7134.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2i3Yw7vArb2kKCargf9nSqU2qgYidguE0kmELcXsH9DvylfajIWQReYwM+Eu?=
 =?us-ascii?Q?pSH/PTr4ur92OKRcY1wQfi7Qpsb61kPt+zsvOErfZoyLwZ3tpUQ+TwW2jUwf?=
 =?us-ascii?Q?3uscuvfoxnPv1VflvcX1KfmA8i9FwRfx7nEpCed+DBQh+rSQCjoCUGhwK2Ve?=
 =?us-ascii?Q?rrXeF2VpHQ27oKWjOiMrH+ACrepkwWz56brxfcZK3LkhoieIBr/oJdMz7cLl?=
 =?us-ascii?Q?4bb0C3MgxH6n7PCW5lI+BzSKn5NWsKbSOTzyTMofeKB9XxqS5kJNfZDXICT+?=
 =?us-ascii?Q?Fyk8ofP/0RAev3/1RJ5MrRq4BDrhK0AnpEmiQiMx75xzuu4Nc+JAPnDevRVA?=
 =?us-ascii?Q?XNbYkS9bQ/FKSRmMGLekp4P9hTAVVhYPbWWC4u3CCMaeqef6wE7eVfl+kuEk?=
 =?us-ascii?Q?n6A4eiw6yk0tQo7hp44/g9Qft5qNF4BhG596D0iemLziinspNw0Clj1Ecipj?=
 =?us-ascii?Q?PwgTxcxRn5FKadkO46XNB6Tk1EY9TTqH4VZ8zJ8hkM4mXTTuBxzNoTTJRoNP?=
 =?us-ascii?Q?sfgcKFMxUWIbNi4C/kzAGqB76wOODJ+RujHWTbDjjawp00xivxgEz8POl15H?=
 =?us-ascii?Q?WAUj7Lkaj46s4kzbGOPX4HUb9yk6ufG+DVM5ObS/jmPrkqt0h2awwjiO5Kp9?=
 =?us-ascii?Q?SCa15GgGTpwu7wBwwTqe7JyHvWSLiwKiLiR/RPIWAiFArUDSeoxzElKeKV3+?=
 =?us-ascii?Q?Dak1z/BDRMmSK+ujtZ5SKp0/XcpAoZle3TqlBanrT5pwgSLF8ie6xhpsXbvR?=
 =?us-ascii?Q?YjOpzbjEm2yfx14O4rdKRyZYg4Z8La2tusvape1yrlWJzAG3bH43e2hVcBKk?=
 =?us-ascii?Q?GrlXYapgL8eYF99DJS7KnIWhHeNrgrGF4mgbUmLfw08sZj2lr7M3bQh1exs4?=
 =?us-ascii?Q?DWjn2BsUC4BGh4e0KaVlPqAF9k2qOEMqlI59P39UeB4ShNDc3mUjomGojJYM?=
 =?us-ascii?Q?+HNljphsqaDzxagNGER6cypLxpO7gEBpinmxdcVgnNYduxsUV9GpXFBFgGY9?=
 =?us-ascii?Q?gUoqzqtn/MF9qV4Ffc/tCZgFWtIDHuBBwiGL/9MWuvX2bn7eDN+IaUQZH2qr?=
 =?us-ascii?Q?7PKTpooWx5hdMP1LcscmkHBN3CKYkJjcPyU4I6AE0mzGmAJrILzZiD0l/GGJ?=
 =?us-ascii?Q?+mkVj/sZJhW2I5WVOZs/fZAH2UBXwzM8x6FqliJKUadYt5hYwPsXiHoP+oPp?=
 =?us-ascii?Q?dw5l7PPc0sDHa5843Q2POs4TVLK+cyvhJEIG2pEF+Ps/fJtoTJoZAmXm+8SM?=
 =?us-ascii?Q?C39sNvGqKq3Qbg2aMqeJN5cQVC8sJXB6UDFYKGls/9v3nlZeidYc4Hhp8Spx?=
 =?us-ascii?Q?mdp0b67S06P4ylQBJqxPg+YSg/Q+Tfi0AI/qvpEoGnZnVhUrp9mmSBIByoFQ?=
 =?us-ascii?Q?NjXUDEO8N2TYJ+sEhToDY9xC0BoBfapCr+X+1Fskn+07FbX2lV7xceakmx6C?=
 =?us-ascii?Q?BQ+szH2JkJyO5pCm5Mo1xF2Vqd8Paq9sC5A9E55mApkr8d8pibfG0SfKjx7Y?=
 =?us-ascii?Q?gJNkQSY6XDRJyZTQpUMB4H2i3gsWZHvVuRXIOoB33naCP6Vge93sXFXzPfqx?=
 =?us-ascii?Q?krS2VPAqLKq0XhF4nmwPWxAZT/K+j5y2rlf4fZwZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7134.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c0d9477-356a-4af0-ba4c-08dd45d9c889
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 11:39:43.0891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tf8L7uxBPRswBT2jipbDg1OFPX/1+Sk8/Kv61dcwJD0iS4tRSd9At4U2Wp860lrCEeINQIhvpWPnRP6LpzDAIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 05 Feb 2025 16:09:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738755609; x=1770291609;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4+ndJvIyhPkjd+60kNXJ0Txze2USL4FcELMebwsBr/E=;
 b=hG5kz13YtW3ynNdrDCK73xFmnc3wlPrl3VbGMgJszsosLs8sVEIwzgsP
 Agaa2PGJL182KmzCoKCl9ZO1LOl0llhv5U44/s2qo/BMb9uzyt7etOdhG
 4PXpkk6yeuyF4FpoTrEHUkF3YdLdSeGBauGZEPSFv1SPQ78jTXFWcOnRD
 Lt+7fVxDzTbj2oGJH87HkJIDy0BvgJK+p58lodjKeI7C1SAZABfeevHEi
 2E0d9d8qjp2NaMGoIziYDTfSsygtecBhnfXaxHF7iF/YtTqshcT/azhdD
 moTcMBTWXCbMCuKjawp2XZXYBmFHX9zwr1LzLXjaPijFTN6H2a3WURfyk
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hG5kz13Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix
 compilation on gcc 7.5
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

> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> [...]
> Subject: [PATCH iwl-net] ice: health.c: fix compilation on gcc 7.5
>=20
> GCC 7 is not as good as GCC 8+ in telling what is a compile-time const, a=
nd
> thus could be used for static storage. So we could not use variables for =
that,
> no matter how much "const" keyword is sprinkled around.
>=20
> Excerpt from the report:
> My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
>=20
>   CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer =
element
> is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initial=
ization
> for 'ice_health_status_lookup[0].solution')
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer
> element is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>                                ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initia=
lization
> for 'ice_health_status_lookup[0].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer
> element is not constant
>    "Change or replace the module or cable.", {ice_port_number_label}},
>                                               ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initia=
lization
> for 'ice_health_status_lookup[1].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer =
element
> is not constant
>    ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
>=20
> Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
> Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
> Closes:
> https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A989F
> 72@CY8PR11MB7134.namprd11.prod.outlook.com
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Tested-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>

[...]
