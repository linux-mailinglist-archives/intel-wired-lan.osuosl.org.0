Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2B7XBJ095mlutgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 16:52:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8724F42D8DC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 16:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F65D41063;
	Mon, 20 Apr 2026 14:52:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zWDYnC7lKqO6; Mon, 20 Apr 2026 14:52:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFDDB410C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776696728;
	bh=6juJb//tlYegVjc5qRPVi++5li4PHb38QoJ1VFdjp5k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=muTOrmp2Dq4QOc2oba0inY4+p97rcO1FM6KVtu6JFCcBUH0DuKuP/BvmDTubXPcYD
	 Q/JH/w+msWPCcjO7b7UAOGnMw7zl/shd48a4auFr+1Iz92IjucZMO9/Hu9Z79il8bd
	 AiUy0eEnnOqrjrsjgmY3YkGqzUPxHxEftzYl7EAAGyt1xiRcytz+gdsQUFvtyBmEnR
	 daY3ZpNNGv4Wt1axOlHRIy8FfdKMuCnn9TymoOZ/mrH7gIIJyiqgTbhMNuODu+6Rb9
	 NrNYpQfrGJAprpg6peAjTcjJvP4W9v3tNPugTl4qn7MvrqJVqX7IxuDSe3MNMrpP0U
	 77AI1FS/euLdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFDDB410C7;
	Mon, 20 Apr 2026 14:52:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4CC02259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 14:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E73B4102F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 14:52:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QxDxku8iIFbI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 14:52:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 50C3340FFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50C3340FFE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 50C3340FFE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 14:52:05 +0000 (UTC)
X-CSE-ConnectionGUID: uxOoADfJQtKRj+pu3QLgvQ==
X-CSE-MsgGUID: V5jFbS9kRcaxF9SlYoejYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77627087"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="77627087"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 07:52:05 -0700
X-CSE-ConnectionGUID: xNOtLvjET/S2PN4/E6wKRA==
X-CSE-MsgGUID: rTD/UrNpSMSdQi1yshhFew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="235741286"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 07:52:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 07:52:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 07:52:04 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 07:52:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iJsdxKERjuybmHc4q+qERBwgDNLQTp0CetWuIEvcNK0bfHqL5AUeLfrBKI2OZNw41/sMMefD0dTsguIWe/grn9s1AAQ+fP9krhnne5n+T+xWodtrUwuq78gzMAwBO2gQlZf6QJr1wLCNI+euUOelDTF6wXKVTv/6kWml1GHiCxn0IC0anclV5IoYhHNdkPNI7SDNQW/QdrpynPSyqteLMwHrk5FBOJeotlRnwy5WFtalfXLJFmYJWbse/YjxTlDXDa+40eTghM71V5kLW55xQgqJiCo4m1R+zM3Ji1VgWltwonJvt3k0iZPBWo5KSs6+PBg9VCyCsfcQf5CLjpMVZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6juJb//tlYegVjc5qRPVi++5li4PHb38QoJ1VFdjp5k=;
 b=dE5czfHsFaauxutPZoas2Dypi/RDkIvF4EFIHoy1qYLCunBsEuCS0JkNo72YQ+x8i4oHwbhrB6jcOcTo2oIBiM/lMZTnJYhLzy+/rBnYdrhj/OIHhpim9otHxn9q7ERVoYpazQDHJimlIu9M4a+ymoVnL+VC0hWb+6GQUmH0ZiXjdFRqhG9RZtjmGsVEze71wAp+OdfZXYfPnwLWS6opsckABTCHKySQvAOsoxKELbLVvxG9z4HSTNlp6ASvQVmrsqSBHEPm1sZuOaGwpMrlKGMNJUYvgGbx1k/GsJPswzYhjozQuoGqUZJJ5140VvlNkfhIT0cNqTaEVGFlcmgtlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by CH3PR11MB8314.namprd11.prod.outlook.com (2603:10b6:610:170::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 14:52:00 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9846.014; Mon, 20 Apr 2026
 14:52:00 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "donald.hunter@gmail.com"
 <donald.hunter@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>
Thread-Topic: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC DPLL
 type and full TX reference clock control for E825
Thread-Index: AQHcwvXix3hjxSFB2EyUhfJETBJtn7XS5QsAgAO7FYCAAOemgIAA3aQAgABojwCAA9gqAIACh5+AgADpDdCAAc5xgIAACEIQgACY8ICAAJvRkIACKjWAgALVaDA=
Date: Mon, 20 Apr 2026 14:52:00 +0000
Message-ID: <IA0PR11MB7378CD18633287980620A9869B2F2@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
 <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260409181041.395a0c37@kernel.org>
 <IA1PR11MB62194BF52262FCEB7FD5E76D92592@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260410133812.4cf9b090@kernel.org>
 <IA0PR11MB737882B384AE7279EBCD05C79B242@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260414145835.07fbe355@kernel.org>
 <IA0PR11MB737842E2098D0952A8BA1FE29B222@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260416082751.04782987@kernel.org>
 <IA0PR11MB7378FF7BF4EA32C1F89372C19B232@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260416180447.1a3c5c87@kernel.org>
 <IA0PR11MB7378CF62D86454916AE8F9D79B202@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260418122603.06d12715@kernel.org>
In-Reply-To: <20260418122603.06d12715@kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|CH3PR11MB8314:EE_
x-ms-office365-filtering-correlation-id: b97261f7-29f3-41a4-cd46-08de9eec60c6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: 4eIz0TuK3mqPYDsnODLPE98bDakLvI0ZUcpiX53h84P74z4hRk1Osoa46QZUkJI6NpSH04I6ILz5Cz8/4M8/qjzAFApk6OUBkY6dtpH2JTs3QeNmoStE568XHdX0nvCMczOfaRyDcNkP4jiJ63tj1ztIDdXsJebR24ox0PI192pfQgJ/t1rla1gRItx6Rn8XEm52J5sbBG76vdkEh+/W6tzEHxrU4b31+ksDmcv7w5cxUNe8gSImlT6gbrZkxrXLsxVj4tuAePxlHgz1Ug4P8/IYcA9I2gOdle22xJhZGF5HL8pCesi6yiggrFYPy5Y3RQCiFGgPR6nyjPhEPEZ6XqUhrVdPjRP4WBOJfaugPrhM0RWDmGqIwELrZjc1wDkI+Vimj7UqtBcuvCEg+8c7GBmfUDwsqMJVerycpNsWn808HXtpEjfuHCC2wtx4WNKGh+VrgcYmtAKEPvUDbZmBpbNFqYiWhNvCnR2VWXotGR6GJTf0TqT7ZDjeCENW50j6HTOdSrMtFZCGvdpRI6B7gUuQ6pIBLyO3qNqDaDNLQrkI9PnvVOUWzIDtqZ952fs55ZU6K20VDgdyITBKCudrdKXToxr8jfr7FPkA+f8INYNk9F9/ubrI8uHla85fhbutlqzhC0XDdVp74CVDuZ8cm/5uoWnVqkcTDXNx8nTw7aiLRJ1c75MctMpNZa0803GUVpOMWVnSawkwkS4Aqc0cVq661LWVn/aUSVL+zOPZGNwlE7NBGLwo+5P+flc65u/nKfR9DnkBTrwhGZcmfTUr61cjD8mfQyWTeq2IXisweGM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jH6j6dgP81zTh/VlMjeTwpJt03p6E+22XVoK3eQakjluFJdBjVfLp8MbY8+Z?=
 =?us-ascii?Q?RQQW7HugL5yZwXP4fKL2E/eiTjiHoQAFhBGeI9NA/Fcg4878bMWWG0cfJrp8?=
 =?us-ascii?Q?1B12+cQmOJrrQ1zdcM/j8JzNJL3Ed73kaI07KL6dXASpsDkwGFi5lVo7wn+Y?=
 =?us-ascii?Q?cXE+lZINr9HMZToSv/Gh0zE6msH/C4+fRlYhTgz0QO//nU4b2Q36RJ29FmjH?=
 =?us-ascii?Q?/jc0CWXIy0hqczQ4XBT/ZtNepg/QKCJeWrB2rWNbyP4/cjxgvS1y1uZvclgn?=
 =?us-ascii?Q?PuY80gOnUCg/o/a6GKcUT+lkWLaC3O6KSpE8IIB9gfoT5q6Oo/gfRg9NkvQI?=
 =?us-ascii?Q?p8nD8dkJwNZpt+DxY5YLAfr/gBhg1YmRHtuTx07FVUPuw6h+tPxKvrStDnFV?=
 =?us-ascii?Q?NdgMwgpJb53jtRA7xQGr62mLUFBURd10w8OdtaHTFeTbGjEv4Nxmd4hrFlGl?=
 =?us-ascii?Q?DBrk44pG1ChfHD3SMiEGL19Kovn0nuvdXaWYYYnkd+IEvezNoDp4KWFaLlJI?=
 =?us-ascii?Q?tuq9tTTfftoyZKKeYFQSedXOAX/2FuECk+/T2SXHAsF8VBCo4L36DhCCxvIB?=
 =?us-ascii?Q?dP81Zlxw4nMHSlhTrS/h9BXTRUQ5CIRmRlBo/RsSF3WnFmEyXkRlyjlxDPdw?=
 =?us-ascii?Q?w0MSZMOvJXOxy4KA9teWwzLwp7YfR73XA0DeRVMdll6idFVLoldfXkvod1o/?=
 =?us-ascii?Q?0JZh7XnI1LIibJmhjMgTdo+KHTA1ozKtMIMwy7Tkkmjjvzi/YysgiSvZWpB5?=
 =?us-ascii?Q?NlDwhMJR8vOmOYVobaVhYU/Re8FKnfOAwizFuEppFJFvGZRvILAo4y7f288T?=
 =?us-ascii?Q?1zv+ShnsoVNjtiPVxmA3QU2L2ta+ykdRheRC4pdeJknjiOfYgFaRV/WHbdly?=
 =?us-ascii?Q?LGIVsuheyvkI2ynsTe92ayAy+srjE0x0VPT8T1h/Ros0Ip6MfuRE6AKOswsc?=
 =?us-ascii?Q?csKRQKq3xXUK/TkAPtyJzFy8/uJUBEM78OdcDjkLM9lzF6cJH7CS0/yARRrH?=
 =?us-ascii?Q?cSFg7TETZ2jSu+PHp6XvipOH3lZaZLSYWR646L+URbe0OpFefCN5KqqY0D4e?=
 =?us-ascii?Q?SaJ3xVVmrQFFzy2Qac5QfBqdkQCK8x7aWqKTCedVtC6YQjOHdmLCxjGa/0j4?=
 =?us-ascii?Q?MKYhgQEDxNYlNn4mJz3tDU3ebAd1J1/TztvX+ag3YAbr6ClYJ/DSLtNon6tO?=
 =?us-ascii?Q?vCmTAjAeqZWv+yZpHbgxIbDTMwCI8O0vl87D4nPkZfkCJnnjDtRMhux6RxOO?=
 =?us-ascii?Q?dAxJWfHnHuBoklNFDMTm4rqtjTLsvHiOHdZyHBR9gzWK6P6Z6/hG0voksNY1?=
 =?us-ascii?Q?UdSUCzshI7vQ5A2gam/HP+4L4kQ8Go6LBHyjMxkY7oZ6ts8P74Rtwv4RvVKA?=
 =?us-ascii?Q?CrdfO98clmuXUofUkCBJFGqvyRmsdrp2vuF6my3p1OhUrkwoNJsRmSMc1fSl?=
 =?us-ascii?Q?fPcACcuZDpFnYzrTmUnbHQJ775PLXXufctDxqLfdzlAluOAH4ZfXnVkRI6L/?=
 =?us-ascii?Q?b1Rb5ilEAYtqiTrfPi8oqByqLH3VgnQ40EhjbrgWAXQBVY7NPK4Qs6v19WIp?=
 =?us-ascii?Q?Wos08HQbDEUHjMUU3p0TUV5KP0hnXSWFkBrLKkAxQ6R7oQiBRUBON7q59fqI?=
 =?us-ascii?Q?56yVzBAWtx3kw3T1fC47X6ouIAC3pIc26/PMcsItDMBcvj0mFKjqlHGO3HyK?=
 =?us-ascii?Q?SBIHFjb6i28ml0V43+okcPMEI71lRRLkh9A2fqr7klE1REtm6b1+h2gTNKpr?=
 =?us-ascii?Q?CwBZ7aA2b0qAUtxAd0dYc+l+wDIlnMI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iltLFXyYyqBm/aXJwuDUCM+rxqJkcvsfT6aUq2zbcqiiSqnBG4cPW3HLxZc2DkESr/nkusJZfvAcZhjNlmTit5kjy+m4GB5Fq7DF535BT0IAEmGpGNWLHWmelMh0GrOSKfRlhDDRgXlbd8493c2K2OiKQHpvK9U9FxCX/BU8S24zDg8h+uxP9llEy7l4vj0bH7M8m5KGmk1rhuYGxmuUn4c/4FkSgsU9l6ePk5cf877JbgVEVpvPfQ2+zCprfPqFQWGxebI7L1hk1ACl4/BVJDdImQyQojkH+PoHZgjPHhN62tzuiDDwrbewAUcen4VbJOpPFARM30nkttfamC+/aQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b97261f7-29f3-41a4-cd46-08de9eec60c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2026 14:52:00.5790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kl50i/MR8WyehaC1qdoh8wk6O5NB7d1+6rglX1SvGaF7TuUGz0LssRTZ30JIB6nxiHbbGTgS5wl7lYhRpQ7cNksnj9TXRBCntgFj6Zzxcgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8314
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776696727; x=1808232727;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6juJb//tlYegVjc5qRPVi++5li4PHb38QoJ1VFdjp5k=;
 b=iUchQn1oguWyNOLNGlF8lAX7YQnEtrTQ8b3M0NaVXl4cqgUOlPcHcpYp
 86dNQElXWSUTCXZroBOGei6rw1ACw/Dqa1g9OFTif7Mm4/d53qgdnwThC
 na09blcsQW1w4Ww1W/fmS3R4LDQb8/SOz/vWic5f8cy9ZvB2xV/NYDo4v
 E2T0PUbxPWvy79Biu6oH7TI7Z8nB4S44I0Eolo0gkFD+OZbakve8+x08D
 CmY4iCO8OQFXcshF73UCW0choDw+4h8qZ04MKSMX+BtCiWdDpUaUqLYTr
 A0U/lK54yWQj8X/vWUJtQyXlRypuFxd6vNXxQ0gzfpIPw+wkkXmMmYfI3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iUchQn1o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC
 DPLL type and full TX reference clock control for E825
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:davem@davemloft.net,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:jiri@resnulli.us,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim]
X-Rspamd-Queue-Id: 8724F42D8DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Saturday, April 18, 2026 9:26 PM
>
>On Fri, 17 Apr 2026 12:22:05 +0000 Kubalewski, Arkadiusz wrote:
>> >> I was thinking that this is more like a purpose specific DPLL device,
>> >> if
>> >> someone would want something similar we would have to review it,
>> >> right?
>> >
>> >We would if it was a Ethernet MAC PLL, but if someone wanted to expose
>> >whether some random PLL in their ASIC locks - are we adding a new type
>> >for each one of those?
>>
>> Yes, that was the implicit intention within those patches, if other
>> purpose
>> specific PLL would have to be present for whatever HW design and user
>> control over it would be required, then that would be the easiest to
>> maintain in the long term? Multiple types and each have own
>> function/purpose.
>>
>> It would be good as long as there is one PLL for a function per board,
>> once
>> there could be multiple ones for single function, we would have to add
>> some
>> enumeration (labels, etc.)
>
>Defer on adding identifiers. User knows which driver and bus device
>spawned the pll and more importantly what the pin topology is.
>Naming in the kernel is rarely a good idea.

Sure.

>
>> >> It depends, TX clock has one of external pins connected to external
>> >> DPLL,
>> >> but second is a board-level pin with ability to provide some external
>> >> clock signal, the user would have to determine that purpose just
>> >> based
>> >> on the topology of one of the pins, which seems a bit problematic?
>> >> I.e. if at some point there would be HW with only external non-DPLL
>> >> connected pins?
>> >
>> >Not sure I follow, TBH. To me the function of the "MAC PLL" is fairly
>> >obvious from the fact that it has a pin exposed via rtnetlink. So it's
>> >obviously a DPLL which can drive the Tx clock?
>>
>> I am lost a bit now too. You mean clock recovery pin? And EEC type dpll?
>> In this solution the 'MAC'/EEC is external and it doesn't drive TX
>> clocks
>> directly.
>
>MAC =3D=3D "tspll" =3D=3D TXC in this series. On Grzegorz's diagram the ne=
w PLL
>was in the MAC, which makes sense since it's a pll in the same ASIC as
>the MAC.
>

We wanted the TSPLL from the picture to be PPS type as it drives the PHC
timer within the MAC.

>I'm saying that the function of that pll is obvious since its pin will
>plug into the netdev / rtnetlink.
>

Yeah I got it, just saying it will work for now :)

>> >It's the function / relation / linking to the EEC DPLL that may not
>> >be obvious. But user can see how the pins connect they can get some
>> >LLM to draw a diagram of a live system.. et voila :)
>>
>> Yes, correct it would work for this particular HW, but adding a variant
>> without a external EEC-connected pin in the picture would be problematic
>> to understand 'generic' dpll purpose, pointing to the labels later.
>
>The function of the "MAC/tspll" is still obvious. The clarity of the
>external PLL is not helped by naming the "MAC/tspll".
>
>> Just to make it clear. I believe that generic type dpll could be used in
>> any HW and for any purpose, so after all each such usage could possibly
>> introduce entropy and confusion on the user side.
>>
>> But if you are fine with that, then sure, we can live with generic
>> purpose dpll.
>
>Considering all the imperfect options - generic / unnamed type would be
>my preference.

Ok, sounds good.

Thank you!
Arkadiusz
