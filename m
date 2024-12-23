Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4E29FB374
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 18:09:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79B6B818CA;
	Mon, 23 Dec 2024 17:09:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kLUTEoGe1HY7; Mon, 23 Dec 2024 17:09:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF9D9818AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734973773;
	bh=KJ4pDF6+xhAI5+bbvKIcNoBJK3r9LVMC6bpY487b6Sc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yvxumrYVrIBcMdPTY399RoE67jt08UOejpQjaG0AKsnfmRqx1fUvgub2xUiUkRqkG
	 N96Op+YAy+kxgGDp/lZIH0ibcSyHbIxFz9wAOtjlnVJu8bd95U0ccp68w/mpNHc5Me
	 3mbGKu2n4hnljR1cJMEZxfum3rlAw02Xtb5ibkkilvZ8cqQxgtXyhR1EA8GohPfnLQ
	 6KDzAltlxi/mki1LI6v0wWueVmYO7+NZfmn24p1JFm3iC/HqkuM5L/zESWIJLtdmFe
	 F1oO2hXfAaineexFAw9i0hRTARBFNxk6vnMkRxNSuJVhGyISfPG5MSSdpvlsvEwS5M
	 bEbJbg4Exa33w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF9D9818AC;
	Mon, 23 Dec 2024 17:09:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B8CC5D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 845DA606A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2LVrD2-c5c32 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Dec 2024 17:09:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7762B6064B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7762B6064B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7762B6064B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:09:29 +0000 (UTC)
X-CSE-ConnectionGUID: tMJBGre9S7ai6B2DdHH5AQ==
X-CSE-MsgGUID: 7cri11rHQgym5/pB9fQgIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11295"; a="35472449"
X-IronPort-AV: E=Sophos;i="6.12,257,1728975600"; d="scan'208";a="35472449"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 09:09:28 -0800
X-CSE-ConnectionGUID: svYvFRsTSme20IZxdft9wg==
X-CSE-MsgGUID: ycnSScvLTgKgOSV/PwB8EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="130229186"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 09:09:27 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 09:09:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 09:09:26 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 09:09:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fx4YZmlbkzdVkqvRxXuJq7M/NcjGpK+YemT4i2XhBMdote/a2TrFzK+K/Sf3/ikTeCtlYNFSlSBHvzUR4zNJ/n76F4JohiSuMtq6b6HqjUObStWe52QEfClfzXwhq22HsJ0UFmPnMdI35ofXIZvkGm/hEhrMSBYvRgKFfunn6POkGJpJjW7j/GIT8B7HbmNIyU0NHy/YUCJ5ASHgWb1aePg0PEafwr/k5vw3Mr+BPv7YvHblF9U5Av70tcK0S/iGXBBhXwF+6IANfHLf/1jLkpYgt8a3cBO09YWcln3cZywdBZvY/8Pajsgl29M+WiZ4eY9sUn3aVxcn6TYiW+6msQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KJ4pDF6+xhAI5+bbvKIcNoBJK3r9LVMC6bpY487b6Sc=;
 b=x8taqNtKFW3yslHcBEJG4XP3JPAld/lFe3p3LPKEh5aw4tCVrFtEpl2jrmNeA1LA19kxdlKYylCIk8PdHaRNdMf7KWbzDNrqGt/vtn3y/Tv+ycEkXIXcUgZGSbxdnFmEsd4J7E3PIo760OnGnq07JTefctU4clRs8Lax1i3JY0iy40n5+SljQ3IGsfqQM+uWxoQjVh9zibO2YxY35ROKd25hAV2pFpVG9HrzCINdwVxedbrOvuI9rndWIEH0kdJ0hu1ivKV0bbq5jujorVsxfpPwZIfE1YkN8M6/1bCzxy/ZxRXyzNIB++RJGqlbAHF7Fb+43kXP6GKN+VatD3isvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CY5PR11MB6260.namprd11.prod.outlook.com (2603:10b6:930:23::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.18; Mon, 23 Dec
 2024 17:09:20 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%6]) with mapi id 15.20.8272.013; Mon, 23 Dec 2024
 17:09:20 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: check low latency
 PHY timer update firmware capability
Thread-Index: AQHbT5h8/dyAGHHaFUiWAmPe9FW5DLL0Gkfg
Date: Mon, 23 Dec 2024 17:09:20 +0000
Message-ID: <IA1PR11MB62413E43C0F28715F3E55DF48B022@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20241216145453.333745-1-anton.nadezhdin@intel.com>
 <20241216145453.333745-5-anton.nadezhdin@intel.com>
In-Reply-To: <20241216145453.333745-5-anton.nadezhdin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CY5PR11MB6260:EE_
x-ms-office365-filtering-correlation-id: 7c2ccf8e-df5b-407c-e4e4-08dd23748ab7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?egAeY4ehQjnAk3g4aepRzKBU7TKzvekjQz+iSX01nill+AZxsHgKPE2ehyfL?=
 =?us-ascii?Q?zeHCcgTHpmOG+T4W0Hut6M25STM8P9YqfohCQGelNYwRkMrQQquvasXLeGUO?=
 =?us-ascii?Q?BYXXyLqdScyrWarYcabXwUGyrRYS/E8BL+SIQ56K/+UeAiegPT1AU1azxIKC?=
 =?us-ascii?Q?WLhJG5gA0B57uLyEkUU7gT7HyffWsp01mX6dVSHY9pzFW4RXrx6GMhT6uaDT?=
 =?us-ascii?Q?RRbkDzqMqBwr6vj5v2ZtB0MqISBx3f7QVB4LDk6n8dr9e7U/UXyJvWHTyhDu?=
 =?us-ascii?Q?M+EJ5dHuXoMFk5/XXLDDfwCBJMfBbOgqkjh/fn3ID14H8isKGdtdoXVKl+ra?=
 =?us-ascii?Q?62vGHZOa++yTMJwNzgJPrly2IS9M+HyP3t5CAtZF1lvXD2IZp8iZbwARMrob?=
 =?us-ascii?Q?qhAwS7F3LqO1G7XH3ErbgFPs2tVKQTszlDNtmlBbMqonMbLXeyvvq1kbXSKE?=
 =?us-ascii?Q?fg2i3hPEMUq4qt0kxWJwnb5jWwrn6tVu6sO8Wm3KCeVaOzDygKGTrWvx52hu?=
 =?us-ascii?Q?qMHjglRF6Oj0/ylDyU2UeVtlPhO233B43V5wFXJTLg0/GwTi/WW+NsyV3sDK?=
 =?us-ascii?Q?uiGZq2QbHgOQ+LB25lmv3rigKYG84dcq/+9Gbni7e+m7aW3uR5xKk6luMXbp?=
 =?us-ascii?Q?tu4VqM8jX0148Z1iQr9+VkmOnqqYRcfcMU6Exl3+Q/VzSVk67nAqKCjQO19r?=
 =?us-ascii?Q?IyJ68OpAwDyO//eTcyALa54xL2VLZkIgoIz0omRNfeQouXeB4PFRBu2UEyxB?=
 =?us-ascii?Q?8Hy3ySE2fKmVo9tXmtzJtW0CwGKOkaAaI/nYqEUQPOesPAaPTcHbAn/znyUZ?=
 =?us-ascii?Q?ETzNznsKB+3VLbqWNHAQ+nxMYNXZ6cBSjd+0ATlKVmhjJeR/xjCiX5B7TrHN?=
 =?us-ascii?Q?1WgqzhHEBE7atuDeoMEL0ej1bZWUTwJkl8jo/NAHpk1o8rZ3+b8lNVcKD9vJ?=
 =?us-ascii?Q?isAIJ7G2+Bzb25HwxXEAqG6CoubHN4nwR7l6LD0xM4HDOD9CgeQXdhFHde+Q?=
 =?us-ascii?Q?Af6hncMGCQMsnYlEj9PViccQc0LxvPOLLsFEYfVyprW47hDVCOam5kf5PrsE?=
 =?us-ascii?Q?QFvSchouarI+euDxxQ8WRsEOtJ6XdiEmvrJZ3sce1IkIi4ip0lafv6Be/fca?=
 =?us-ascii?Q?cF0FYZGArsgolrYubmSvSYZT84RMnoznlWFK78baDAXjBd7EAXlinQEq2woL?=
 =?us-ascii?Q?J/knfeOo9fVvhmqrwXOn3puV/3d9lY6hZJQHs6PpfV+YBJTASTFtOePk0Vzf?=
 =?us-ascii?Q?SMlUEFRfUBaHPxNYxc3m066Q5n2aRWgQFjx8FKh2J3zOMeUwGI2Vn0Af/lAV?=
 =?us-ascii?Q?a8RqR32xvJnyvZeXCAutKGm8EEqJwvCpHcxq13Y/pPL21+oFu/b/nZZmLLOP?=
 =?us-ascii?Q?V8FnDY3ZwkkN0M4btqNdPVguzDnTHDH4CNLeUPN2EkzibFwBaoF2IlN0FdRU?=
 =?us-ascii?Q?/C+QKmA6Seh+vBo1R/czwDSkCq3l0n02?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kQ41Xek17nAInUBgDJDDXkpwVgelu7Wpo3kNbbHMcfHrsYfTcrN6SAj+rxRi?=
 =?us-ascii?Q?OrhdkiC1qE7dhpzHAYhkPvtopVMSAxeJvtss+GiMwfrOBvWwBvELPtRGGOiv?=
 =?us-ascii?Q?22TQHom4oNMwbX10PYd6oNMFpyiEKTz1ljEMnwb1AhgvymVw5b81EWr+2CL1?=
 =?us-ascii?Q?gJ4+tkbk0Zx2Pvqwi2Q7DpQ/YB9fJ8YWqie9tH0g3ABDfhb32CbhvvcTuGfL?=
 =?us-ascii?Q?f73l/uHs2O3ejkTu/Hzmoo262Hm6Qn3ecf+2MkrONGoW4fy4MNHzT/puqcAu?=
 =?us-ascii?Q?sXewf2mNLt1GwKHTTw2tujEf/Rb119373d2CQ1cISQfNxoGkvK2nol2dzYvU?=
 =?us-ascii?Q?PaLq7TZTE/GrNvR+ey0iic1mnzafZOK8JFsVEW7AE52MhFKFo53YWjlQP0DS?=
 =?us-ascii?Q?4O8Bo44XEtWCws8DZ1j7bgalfqZLL8RiTrvLTsmuKNzZjBuMh1JTav0fF/ae?=
 =?us-ascii?Q?qxmqLdGM/DaVdDOVgnPyiOgJn4BwADxsziG6QNrKde3kk3Pkcv+0XXpgactW?=
 =?us-ascii?Q?ko87i4orhwrJByQ2fEkjYJu53zLuoSyFf3R6lA8QjKiCS83mxWsF3PCzmTTY?=
 =?us-ascii?Q?bT+VjOQbZf1UW0YW9EqJz00Q9CALGcW3Mycm9YNtU2vxepbwiUq0Sbw0AqnM?=
 =?us-ascii?Q?Xn75RLampDm+mW/M5hbNRPssFKSmjCbQtsccnuW10si0byyQ3IN06mnArUxA?=
 =?us-ascii?Q?9e91I2N/6jp9oijXAkScvL3TTyvi9ijJ02tBWvRWwZla+m1v/v9L6hYUDB9B?=
 =?us-ascii?Q?4IhJGMG4Oy7PBsj1z2cA2qhqiN7kXZEBW8t/rbza2tfVeMGOI7kkG2JUVZUN?=
 =?us-ascii?Q?sPiTyExLPTQ0U4x1caaMFG+HbzdHcQuFDYJrRHwJFM2LtW2N8qKfAun4qoLY?=
 =?us-ascii?Q?eLyFMcwR3Czc88/tgqQcgITHsxmXbgK+tDXQ5a8XzI3A/Vn6XUWCWz8/aD62?=
 =?us-ascii?Q?jnrvElh6qmbydUsiDkqSpRCz9yOQb5HHkHmy87+r+AUiqP/lPboAEFTpKBgd?=
 =?us-ascii?Q?UNH9nMDWxdPdalS9OIbfX43+uocMx6lVCvFv3Jqan45O7fRd6L7gSa7kBJA+?=
 =?us-ascii?Q?ZKr6wTpwckW4CmvgdRZeSgmu3M5Y/1hBfbXkqHUCCwJkhJikkCRDDTScXvRR?=
 =?us-ascii?Q?FpJojZO7QPOh/aJQQ5PBGsNro89TRKDvjdShzpGy3xwx1ZSZ1szzWp0r0xc/?=
 =?us-ascii?Q?0v+FcV2Ikt1qIgR8VYzrG3IeorcEc/+oJ/FZUsgAKYFr+QG27enfXaF9J7E8?=
 =?us-ascii?Q?4nPP/PkTzMbV8hUyK+d0cks7LE6Ro0vqGjZgBXjZBUsWt8IW4OTrk6dV2/GV?=
 =?us-ascii?Q?eMzvZA062o835V5cQYwL2+YHz3HTMIBSWjTJcd9Owqj9TJRxrrBr9eqk2pOH?=
 =?us-ascii?Q?N7j9aiUqIHp6JuMlX9hhFbP0QxALBpCYb+DAhd19K4kV6F2iinI+E5984mGa?=
 =?us-ascii?Q?FSHbtXIOCJokLrSSI+LsIaK5e4lKVKSefDeBquX5ma8BO19/VrGqIj4DVqhm?=
 =?us-ascii?Q?Un3UxBfRci9eokUJtv97z6I+aIgTFe39uScp7tK59wATf+fNsQYJJA3MOXqe?=
 =?us-ascii?Q?cE/UmvziX9iBwZgretCzOq76OvAUOp5SBKZSCT7D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c2ccf8e-df5b-407c-e4e4-08dd23748ab7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2024 17:09:20.6550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cu3tMYA13DGykUavXtVAWkwNoEz1O5+dWvd6HfzQOruzybQUbydAEnYfK0p1bpR4saPnEo/5wUcqbIrM3b+Lxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6260
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734973770; x=1766509770;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E2V/aN5JBC/KB+Y2FK0OiwXk6z4ZGtA5+e43BKE5e1c=;
 b=Vq8YS+u3SW3INTNdVqvmW2oK4ezVoxnIJBLizNgIqmYvxsF8n2d0Off/
 q9ElXIek9oikq0MJWgHsvzTsWSawWhL1TjUEyE0PJVSPgaV+OzdY9rJ3S
 yZS1umetQYWY5E2RKiuvG2uUxYkKB0pYC8gRDnHQd+0yZOqdPuFiT646I
 YAPwWpch+v6uZ8a11T8GzrPN/nNeioZXLZxfzwdo3CDFH3Zc8jc8hvEGT
 QQEYFg091NtkKEcXV9Nof6EqlTj4tpjaDhejAZSxTfdmBOb5GFZKPymyN
 P5sMRJZ0ek3S21mVJjibw/1ZnRdZEOpvcGaCJTXj9x2h1ZkUQWO91A7r7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vq8YS+u3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: check low
 latency PHY timer update firmware capability
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
nton Nadezhdin
> Sent: 16 December 2024 20:24
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail=
.com; Keller, Jacob E <jacob.e.keller@intel.com>; Kolacinski, Karol <karol.=
kolacinski@intel.com>; Olech, Milena <milena.olech@intel.com>; Nadezhdin, A=
nton <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: check low latency=
 PHY timer update firmware capability
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Newer versions of firmware support programming the PHY timer via the low =
latency interface exposed over REG_LL_PROXY_L and REG_LL_PROXY_H. Add suppo=
rt for checking the device capabilities for this feature.
>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_common.c | 3 +++
> drivers/net/ethernet/intel/ice/ice_type.h   | 2 ++
> 2 files changed, 5 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
