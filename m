Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E91139AB65F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 21:02:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93D04607A8;
	Tue, 22 Oct 2024 19:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tFIXFf5HqIb0; Tue, 22 Oct 2024 19:02:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDC9960671
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729623747;
	bh=zjiXSiJaDFqKoWp/5CvBioW/l92ZlvQkNFp9rAU8W2c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JkCrgqMxr0CLz6nVPBvqMmQ17gFrgGpOV8Equgu0wmr5qkzEYwyy9dHyf30K3ojvo
	 PRB1GBA52P24WREx7s6vw3pqwvxJEcqG0W6AMaJ4esAQQxB1l41RN6JdpphFuhzY0V
	 2GOo4wiM65ioATriyGn21v9FHFWfulGXypcC9HJBuJaZr+Nk2X4bDwtwZgyIBT6YQX
	 srNFQa7Qq6imHRDilEMICrDxx0VrWJBEYOq2bkR3YQSWDSA0kEByI/xJPKfNJUr950
	 Fvvcy4u2UhbkHpf5Yk9/AwRV6wK6iV8CnlIfU/MwBIv3z4Ee5cD32q7fiqFjTKPSiT
	 lR4Ix0XnyPEQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDC9960671;
	Tue, 22 Oct 2024 19:02:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BD72963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 19:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 666BD60671
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 19:02:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hYdmxH_rtphC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 19:02:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8AF2F60604
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AF2F60604
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8AF2F60604
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 19:02:24 +0000 (UTC)
X-CSE-ConnectionGUID: FanCTZAgTiaOVFs1eAZjFA==
X-CSE-MsgGUID: ks+4PVJGQTqpSFdV1MekFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="39762114"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="39762114"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 12:02:23 -0700
X-CSE-ConnectionGUID: f7DD18a4RCOUCfibsvLvdg==
X-CSE-MsgGUID: LEaIS7QJSKeqtldt0clpPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="84554720"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 12:02:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 12:02:22 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 12:02:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 12:02:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 12:02:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rMP7s2s5yTTXkelFv5K+i2tIayfVsTiSsy0Y+SiuPEDilN0Q45jc0bqhF4RL5Ap2wC6LLu6Ss2nn8ND2pSyQZZ3+CTueGqORMgmno1KOtEvbNvC/oAl0leduzG1kLJyBLjvnGB2fPwHD/J4gsnxjghe3015NYMYZwaR6dBYMedQk18ZmUa61ayGG6kKQqwTN7OIntk+ErQWejzlr5tJR+jK3J8RP9GPFgqmV6gcEXFCdMcdlN3xDSR/8E+NFMXKWvNhROE/6LuvfEWeGwoCKv02hZCuKOBoPILHkdw3L02QtT4Q4wE7lLN5mly3JB5Boctk/tXY/otfHdu9zkrgGGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zjiXSiJaDFqKoWp/5CvBioW/l92ZlvQkNFp9rAU8W2c=;
 b=pJbQ+Fm4xPPN8u4jbO2QBUFNaUpRjkK5f4xrZbS6TWA/8j2cYnCcAEMo81lMkC74IRQM/0oek9lEWhvBjAXu7hpRZVAZC0YJNLITb9Ef9+ENsddwHuWDfWypXFUWle+YDTB+8hwmSU2zcvFe3Y/+jqDPs8iYFkWX9aVuCLr5fhPs/poWauuIjQFnxhsiiK80BigfiddS2TrMbrpkQJ4z/myHmHI522lGJnW/ZDmsGXIRRfN5RhxGDIvXedGcR54wWpcRkUM78numAA05xo+A8Us2BJBFvYTVNcryLVFK2r8vJ0RdltEXogH2OT6WEl9pM9a6goQd86jZOuJ4nz6OIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA0PR11MB7741.namprd11.prod.outlook.com (2603:10b6:208:400::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Tue, 22 Oct
 2024 19:02:17 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 19:02:17 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix race condition by
 adding filter's intermediate sync state
Thread-Index: AQHbH64OHsaxMG1WeUGRefnFAewRXrKTKd4g
Date: Tue, 22 Oct 2024 19:02:17 +0000
Message-ID: <CYYPR11MB842921033556D07353B62CC0BD4C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241016093011.318078-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20241016093011.318078-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA0PR11MB7741:EE_
x-ms-office365-filtering-correlation-id: 9c1d3491-8c0c-4062-f94b-08dcf2cc0c63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ymps72kh2cgAbdEJM5WMhrsd581DFLUGYreeI9PrqkEFaH1cSOZuKqu+eYaR?=
 =?us-ascii?Q?Cwr8qPKI8F/z4pl1wOlXqkJR52Yd9SRkGIXlRWrq90VGDGLyWQg6ZIgvP05K?=
 =?us-ascii?Q?ZpymRRFFaz3knAFEuDelNOafBVhz9tbrNAHIZKYDZHaGuY1iVrc297eOjDGB?=
 =?us-ascii?Q?Ptig+WvqAvRMflCZMGNYBo1lVzox6EkekSWSxWQiVdQfcuGD39W2zFi6dXKE?=
 =?us-ascii?Q?SWGQNPTx/D28UuwoaxI9T6eL35bx1VxUVImzz/65dd8z4XvJnmkEExKGLdum?=
 =?us-ascii?Q?BY4omL+Ms1BnbZbMTJ1D+peold6J2akg0TrdVQjtmI8VrnAHugpoWSYZ25AM?=
 =?us-ascii?Q?PKQ4eEE3+UAiNHgAbjnZWSaU7RYg0CG5NTY+gxkaQmsShi73tkbNsnuP0CGl?=
 =?us-ascii?Q?PPvdoRXiJL04WLFts7onz4JCUdebsnDuDqdb/Miznk9yL7AQ1aWZOj/18Pif?=
 =?us-ascii?Q?PWAAembSiuZgCkGu4VuEqwQeYS8zdnW9I6/l90O7qYNdpuvgGG9FQAMMFkf1?=
 =?us-ascii?Q?B0/OzdO4wO5dzx9fEQ+3D+j65UHdWTliuFUr5X5pP6KNYByT3HwEDcCYavA6?=
 =?us-ascii?Q?pgQqedt3uA6W9lXlI/2b4N6+tIdjBqtaZ1ywwe98+5Uohee6pjwkPlXB1vLs?=
 =?us-ascii?Q?4KUw91mkvu2yM3Q1w38HRFFFYlSjPKvyYOtTDaw1LbxO9jB7wYdPZB8D/3cy?=
 =?us-ascii?Q?kYACZVbPJmgl1eskPxBnU8EdL8HNzz6tOIGDMdjqF4CpnxEwJyoxig43Uo8N?=
 =?us-ascii?Q?LEB7BUqQTLNTLsSeIbSsRG0uPCZSKMeTuVwCuMic2PLDSdODFjGoGYTkUxVM?=
 =?us-ascii?Q?8PT9MX4a8KqI2xgscEuoKuXbn7vGNiLoM/Kjx3sdvzrcL0KS7kaM3rOJOMaN?=
 =?us-ascii?Q?lTlPOLNtY31XlrysssBPvQCieajvGpeBeEtgIw4sO3dcrBQfJxFwNb11wu9w?=
 =?us-ascii?Q?GN4zPQmg1M6CHribH7zR6+vYD3b88+hS/4wnbLWt7zBfBqsrNX6v5k8j8uUq?=
 =?us-ascii?Q?uZsSl4Tk7MTLqiU3pBdn8xJlWE5dp8sWIczn21AK93pII4H2ZTfZs3cMc75v?=
 =?us-ascii?Q?ui7OfLow3PkILJGsfVzt3SG9FFQtRNTI4Fhn5yaySlvO4CkCPhxfCvwLPSpT?=
 =?us-ascii?Q?2naTi+NWUpnAmxbCwKylelhNUrUjBsCVlVAPkKgNIywcbYYzzPwvp5GVhyNH?=
 =?us-ascii?Q?/3Hd7CNl/RfpJcgHF1b3ZmkDMMJzszpc9NJfXWYR68/l7RuY4vWCiXTO5wkf?=
 =?us-ascii?Q?m0Pur47Cj3XaNzV/1O+0Lwe0xHt/vhKiUbcKsFB0f8ioGLIPUhVM4ZuXm3Tu?=
 =?us-ascii?Q?VQ1VGVU4OBRGEQ5nrWMFg/JtqV7bmchhqxN+9vjtCsj6TMi+4aRM4EbId0YC?=
 =?us-ascii?Q?Vkw2nTM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dg84kzOK9Z6bOBEYIMHuBVncpx9xidPvBG2MYZTeOj1O8Gmcsf9aWSbh5imT?=
 =?us-ascii?Q?p3LKTX81P66pxRm6v7nVqPXZSCVHMkYXLwCl4FMpInVOE4ifsBfmNLwWEvlg?=
 =?us-ascii?Q?pnOEnJHDalof2tZjNS+3Z7V/bV6rwJK0sFCdPrPbadvyr2ZJaecRVPLU+c2x?=
 =?us-ascii?Q?LsnbjTsnd3UZvpWfAHzmDBwY92QLPD7t+Ejr3oc3ga4752+jjqX8dsDD48z/?=
 =?us-ascii?Q?/KO/rEFMmZwoWlELSDhxFRjivRarkH2tmlhOzMhpkDsHOb1TOnUuSN9/BVB6?=
 =?us-ascii?Q?tRrsrYwherYZab1d2aE5pq2DJGt8FnsutBLGnYm6bQjGROQWOEYxs+9gg2RP?=
 =?us-ascii?Q?PCYMtAeGBA2h69s+1hRN5YHxD9wkv3bkUeRAOL2bzmHFdEOL5064wi4bl9g3?=
 =?us-ascii?Q?QfSNvcEWXDd8xFs7zOzB/DzeGR5IuGkmLqXopahRQeXDdAZyk7Q2idqzBqGm?=
 =?us-ascii?Q?0XRkLJab7XsPyX91juJ+HpN2nZH98pB60LXW6pYWRLk178PKVBEVNkeMBmgy?=
 =?us-ascii?Q?8C3S8wqB0VUJZlhZ+xyiNEkEMLkG+uC9rdf47LEjn0xLIYK5wt2Sb/zhWcrB?=
 =?us-ascii?Q?KMPNkN9WzyFH6N2EpbqToIBsRcKWq3B1CoJJ9rpDU+nOfgq33QUjXnoQfr3V?=
 =?us-ascii?Q?PKYC3BnsnVStdXC4IBquvJPYuPkYoYQOLbxPszTc4VGB3/XR5QaIUsbONE2F?=
 =?us-ascii?Q?lkLG2OaUgXVNF9/9mwmiGEAwLq65j7FosC+FIHoWySYH3UA1ZmkMPZ00ZZ7x?=
 =?us-ascii?Q?VngVOJI2zf3Q6CjYuB+g2GdfrTpzNJaMty+3PSEyJMO19JK7rBERRzdc8+9M?=
 =?us-ascii?Q?lhhOgTmR9ISwPStpNctcgLsELxM3TapEyPz4X5zdA8fueBhuu4DnKeAeGTUN?=
 =?us-ascii?Q?z2WezwFKZ8RKLbm+QOzfRePWaIjd41H1uahH6+ePSH+Q2HFMKiCUS3uwOF0R?=
 =?us-ascii?Q?7Uq5TWjBq7xrw7MFrMop0c4x3Q4+T5TcoRBQNHvGQJyao3SbhoV8qTw/tp85?=
 =?us-ascii?Q?QsL/uY5zkJCUyc8mbDLrUU8DmDQurwV8QbO9pv/N21/RAJ/Hcd51b2tQs3Tp?=
 =?us-ascii?Q?FWIGOh/6giMvtfcjs4oKNb/0gyfTS5WlpTsm4Iek7gUac+eVnOMwwSrocNBd?=
 =?us-ascii?Q?dtMtvsqloVKrsR7sHDgUh3gAdS/US7gZ68013LI2ehVcrKDungW2yFYvfnA4?=
 =?us-ascii?Q?gI4Sp6K2MXAykGDrmkCJnxJ/SmuxZSdXReFr4vc/26Fsc12Lewq/kVLnS1gl?=
 =?us-ascii?Q?cikykmDECiQTWPxVDHmjomMrPNrJUCKMqzSlcwUpbY4CqM5gdZSnYzx+4Qf7?=
 =?us-ascii?Q?Au6XdtecBUleGWq/ZvNQVg8eG9LQR33aWHj3SouDY43mFM5x/j7dKKzoy4bb?=
 =?us-ascii?Q?bJRkt7tfOcPTdoo1wYPfMBK3aXjfDqPGcQZIPe8WOCNYAdbvkysbMgKDH/83?=
 =?us-ascii?Q?MXpjxXJ0L7dXExji9kO/Jsont07FFN3HT8+GrOE61sQ/oSsK9mbb4g3obh3h?=
 =?us-ascii?Q?PjKpDeGGnlnTGSgDBf/HsJgwBe6LX1rq+V/6dyWflM5F980Mou0OOBJ7y2zq?=
 =?us-ascii?Q?N5eIaJ2BXbHVXLQRQgUrGxreLOW3M9yQ8DKE0iPrYa8DrTLdFGOgTjlivLip?=
 =?us-ascii?Q?zg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c1d3491-8c0c-4062-f94b-08dcf2cc0c63
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 19:02:17.4742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tAi4D0/w7Zi1dvqjUnAxGfzEtxoL452icqlQ8RwszGUf+GokbcYdsve63kXon5nAVg5lP4jYZ2nOzkjH6/K4iaoqAxuNtc4ombd7vbrIethmjkYmn5G8I4B+6Vy8RsQ+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7741
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729623744; x=1761159744;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tYAqubV5OKtQr0pSHWFRQDh/0Jy0aYNOe/S5ym8Mx+0=;
 b=AWZwhuWR2xEQ+RjEHvMeIu9/RXMn0Ozees1E0HEfBIAfIzTWOXOoXLnr
 f6O277T+m9hNRJpANEZkttiEMDjRYnuZ1/HsOiSYP49utSln6GDB9t/ak
 rM9TbDkAdfi8IaFdlV3PDyApCS/fbgXCO0AQUOERbOFfkbn5fHB9cpy/D
 sjLLmGxj37deJPk2ESU/Iah8UJow7c99ySlKC9JObZDIJ63rHSrZF5f9H
 +70KJ7SaAQE1HnvYthrKqa++BFcuqkzNB4XtL3uvvYu19tB/ywB0LK/by
 ohuZSOsju9ZAfoNYq9WJz5Vy0HM5X5Gwt1fzd9ccdhdsVTbfBwN2/lA98
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AWZwhuWR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix race condition
 by adding filter's intermediate sync state
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 16 October 2024 15:00
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix race condition by=
 adding filter's intermediate sync state
>
> Fix a race condition in the i40e driver that leads to MAC/VLAN filters be=
coming corrupted and leaking. Address the issue that occurs under heavy loa=
d when multiple threads are concurrently modifying MAC/VLAN filters by sett=
ing mac and port VLAN.
>
> 1. Thread T0 allocates a filter in i40e_add_filter() within
>         i40e_ndo_set_vf_port_vlan().
> 2. Thread T1 concurrently frees the filter in __i40e_del_filter() within
>         i40e_ndo_set_vf_mac().
> 3. Subsequently, i40e_service_task() calls i40e_sync_vsi_filters(), which
>        refers to the already freed filter memory, causing corruption.
>
> Reproduction steps:
> 1. Spawn multiple VFs.
> 2. Apply a concurrent heavy load by running parallel operations to change
>         MAC addresses on the VFs and change port VLANs on the host.
> 3. Observe errors in dmesg:
> "Error I40E_AQ_RC_ENOSPC adding RX filters on VF XX,
> 	please set promiscuous on manually for VF XX".
>
> Exact code for stable reproduction Intel can't open-source now.
>
> The fix involves implementing a new intermediate filter state, I40E_FILTE=
R_NEW_SYNC, for the time when a filter is on a tmp_add_list.
> These filters cannot be deleted from the hash list directly but must be r=
emoved using the full process.
>
> Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC=
 Address as key")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2 change commit title, removed RESERVED state byt request in review
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h         |  2 ++
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c    | 12 ++++++++++--
>  3 files changed, 13 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
