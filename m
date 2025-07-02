Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 174DDAF608F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jul 2025 19:57:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84DF141ABC;
	Wed,  2 Jul 2025 17:57:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vBlmuB7t85sK; Wed,  2 Jul 2025 17:57:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D05D741AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751479020;
	bh=iQqdeEAsMA/qcTg2WjvkdU67gIlnOw1a+5qAPMrlKL4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8aOk0p9Q2psazPh5dVaN/Bvp0mKmglg/jSZEinZ8qdBPsCAYxf8aYnt2Z2j/CV0Kz
	 2Gl60aHX90HNwiNut3JtkoeE+cRDCIRygOPFzxsM6HOJniFAvuMEwNThbOF+wCe4zf
	 JBylOhOdEWgM4+LNCSCVO6wKZBtON5WD90ApH4/iy8HreIY5PBIYSVEv6OWzuY6wev
	 60daqq1i13+DDz8BlDbuQc5GoE6xXkh22FLpZJh/zD/IF5pb/FBX2B3Zd9cMLogfkh
	 4jxzn2biBqZ4zvR/3NLGZYEisHo/9CxqrIdFnGc9kevKwKvDtjG5WYf9H24gXGXqqz
	 4pAZHU7hcI38w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D05D741AE2;
	Wed,  2 Jul 2025 17:57:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 96F4F196
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 17:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DCDB61011
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 17:56:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R3weaVvukFOu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jul 2025 17:56:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C7C5D60859
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7C5D60859
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7C5D60859
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 17:56:57 +0000 (UTC)
X-CSE-ConnectionGUID: ZYC/7bddSRCG7jVZJEHz6A==
X-CSE-MsgGUID: QKmL84YGQ+OVq1Q5euhsVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53653516"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="53653516"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 10:56:56 -0700
X-CSE-ConnectionGUID: vJhm9RVuT5ObmpM+OKmtUg==
X-CSE-MsgGUID: ywfmo46FQ6S1jneEInLVKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="154224100"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 10:56:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 10:56:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 10:56:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.44)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 10:56:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AUUztIcUWgXcm07moPmovQv8fuuQ6XQnAzkurcz9GiyFz0HRKv8l4WCeuaLdOAPc6Sfd5T5QpcqWaeX2ICnmh5XR/xacDpzGS8SD8+xm+wx/Xssm79sQjXEHqWc0tDiPD0FLpcVj1tKnGnQrhK1yF2LafxfmeN6QT1xcgB3L1i8ycBBsLuaj852A8twUY7nTEapoAo43y9jClcqXHjmX0OfvQOfDqspTj5jgWVia+IXMKRP3D73Eng8hlNt9Pazk+G8AOYZV527PbmblDQ2aUkWEqXdj2wTB6TbkhzsdgJ/ijmxteIJk7wOQuTxHpign5JCdhIrxayzNSplFRnDdPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iQqdeEAsMA/qcTg2WjvkdU67gIlnOw1a+5qAPMrlKL4=;
 b=IrVvfcqHwDepbuZ+afNORax+etW9y4pOAJVy8sFNnzJfntfKfGw4NeOsf6e+2F9pxFc2kpEHOSM8dFNI4Td+HQG38uboPOsityVZRAHh3IlBu6/fClkjAFCJP2uf0sEDM2OuYN9NgZ6Nv5AOhzglElEFaXhsbKDJLnypEN6eNzH/H0Y5SPFEqf5WZ8u6opsZnrsZiZzqfmbI/1HPritbYfYXKIptEyIpT0M/N52tmjmJbsAf3pDNBTlCH71v4NzdDtFyih9y4LUD1EZA3y+gQWAjiKF7Pjn+eZ5KTXjzBwpkD77yuO+s89N+EyiPM+mtAo8vvdQ1/bH88TGBl9teaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH0PR11MB5781.namprd11.prod.outlook.com (2603:10b6:510:14a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Wed, 2 Jul
 2025 17:56:49 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%6]) with mapi id 15.20.8901.018; Wed, 2 Jul 2025
 17:56:49 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/5] ixgbe: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
Thread-Index: AQHbw++J6QYW6vs5bkO0t0fxOcbsH7QfaI6g
Date: Wed, 2 Jul 2025 17:56:48 +0000
Message-ID: <IA1PR11MB62419E27D8BA5FEA9B7735C38B40A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-5-vladimir.oltean@nxp.com>
In-Reply-To: <20250513101132.328235-5-vladimir.oltean@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH0PR11MB5781:EE_
x-ms-office365-filtering-correlation-id: eefcca76-4f71-476e-c6ed-08ddb991d15e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xK/31D1ZqAwuecFw/rfYxm2EqnffSr1ZfJfARXweDXBYTMXypWRvupFgdypB?=
 =?us-ascii?Q?fjj0ygLR3tMMdYfFwWDdc2mcfD87skF5cc9yKf3PZYUTx6mRv7hHMDK3Pz2C?=
 =?us-ascii?Q?bo7LPdgkCt1WFKL5R6yUt544MrHU1KWAxYpagbOVqmchS2IskfTA5KSk6Kln?=
 =?us-ascii?Q?VNyR2IkL6V1syjauMxcA1pnz7vlsxR0E9b+enC/0rJPb6d2jH5j/EMPRF9+n?=
 =?us-ascii?Q?Z9Nus0ySYzTIlUFdPVeyoZ40PdCZDYvo+pZMwGYC1miq6MggWrQOif4zMEc1?=
 =?us-ascii?Q?ae+iezyJC5fNdXnnc3B5iooW5QrFrgUX6Mt4k4Xk+j5gvserJwbJ2mezlbkS?=
 =?us-ascii?Q?r8Zqj25wxa/Chb1LYBaF5ksOkuCuHnaGELwC/AY825HJRWbrRPfXDu80Tp+0?=
 =?us-ascii?Q?d4dU90IUVF5NOj85XBc68eJNM3uxCZ+5rz3Y/mGljH/tjIoHWAxwYc7Frvh/?=
 =?us-ascii?Q?P4jmPZJ5etTjKrAmOM9gU5mX4xrKIj/CsHqt0vtU/zFqnk4vyW0XzXSDxKBl?=
 =?us-ascii?Q?8ESKjyh8RHEwswMAJIU+va2mNZ1BiJ3BzgkrjyvWnC+BrvLOpA0MUhPrutIm?=
 =?us-ascii?Q?yiMQpcJsPDbJ6Ll9RIxUTksGVBWrDgNIRxdUcwT1WWw/oMUcQnRttQhnYTW+?=
 =?us-ascii?Q?Q3DiemcgshhA3uLuk1njtyrEDQ1Jy+9Xkmwz3wdsrhzCznmDuQdvsIZCbSyB?=
 =?us-ascii?Q?oM0CkWcWw03m3fqgKcPPU0lIohlj36WxXue8sXK3OKkwrKxn6KlY9GqcB0vk?=
 =?us-ascii?Q?kLmoxcN3mdiPW7om8cHjt3QNueDFvHBOdScJ4DIwxw8R5pUPRzCIJqGSJwZ/?=
 =?us-ascii?Q?dGmo2I7JFvj02jWoSV1YvlrTehORhdyGKW0EAR60mD5jeVcUoUA71OcFFqw4?=
 =?us-ascii?Q?x0Qmj/z4AufBQgUk8gfWhn5wBsplxtLAAJ4fKIRBXhOCAA2QsWdIh78sSi3m?=
 =?us-ascii?Q?B6YSCaZcafL50NXqGP0CdU5KMKtQi4fddynM5FOqHdFw3M970Hu+a8ogJefH?=
 =?us-ascii?Q?P23ZlJdUqJiqi8NbMruJkTb4qOSG5L7WuhPLY0wMne20MuK/YVsIC25Caa52?=
 =?us-ascii?Q?cu7xawlcCJtFL/288VBwHIMDq2DyWI9dNeNtxwC1jYo+LWx7O+I+VMffKNcx?=
 =?us-ascii?Q?Wdw0LgyDvb2SRLadprkVFb83bAmbVMA3T9h5Ei6Lpt/ZgEeeoxTuiQWPp7Nn?=
 =?us-ascii?Q?TK0IvWagu6jV3k7JAE2LtwPyMMBt2fna2CTcEJHVxAZmp+J0mkPvJmxW4AV/?=
 =?us-ascii?Q?bmwHwU2Z3w440Yq0GiAfhGPqQhp02lqu5I+YqHvfkgLLSRqWnOROEm3q34vk?=
 =?us-ascii?Q?rh+Ml2VDsZkLrqQ5wKXjC52evDlnZD36n6uJicezqyWTkGd0VABwasgNOO8k?=
 =?us-ascii?Q?bje8HiChpESnHqgaWypBgJPjg+P8IaaTu2QvGJZm5ugEPeR4hyT280SGQwXm?=
 =?us-ascii?Q?8qu1ynQHBN0xKMZEV7sbVF6F4g6/jm13IuCAiJzdL/AlKAv+7oxXiw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F95YXtsrg1s68eFCRqu24VUlNN+U+Qnm2/21HewImgv9Y9t1d1vwYE/c8het?=
 =?us-ascii?Q?PeFfHEtX5a+W7POAjhIwaUDepkH/obL89Ork2sjFjEM2tNgXzp5QT/IVpM4Z?=
 =?us-ascii?Q?RdoLVHJTe5A6DszWYtex7qG3i2/ky5aLBFzA2aHcqkBhFR8mhH4Hqf0DXlKC?=
 =?us-ascii?Q?IH2taDdE7w4o6oEgu1fX+TmsqK5YBoAnLRgOZzkhgD3gU+fXzqxWISAYto+7?=
 =?us-ascii?Q?YJCFWfMMBmveLlqGDF0sPXWWpNPTHoBfmdNDxb3FUCXzOsK3QaqkHkDFYdq1?=
 =?us-ascii?Q?ydMD53Ia5p2a85K6PXXFy9gLcvvK6Dc4d7taqx6LtUsnmKjHzjgGIotTHXzd?=
 =?us-ascii?Q?qgYPW9RXsrPEEW8Qgzcob61TCL9Jr+vt+dhFjbFt1vcFdWcZJBm44F+z4NLs?=
 =?us-ascii?Q?FZmvBuy4K7B2JtgAsAOMbm6u1wG9yOBJ+KtThYCcjuyCcskmCDJYSvK3AIY3?=
 =?us-ascii?Q?iBrQH47O/Oj1fv+4HfOYK/A3IWuZXPLk8tFsXc+Lf0+G7wWoHIpeApkQP6QY?=
 =?us-ascii?Q?YJOOYe1YBmUCLqlwR8kb6JYBIT3zm0/0XxfRv1vP+gt7EUFvje1Wu6rGRT88?=
 =?us-ascii?Q?12XrATxxJM+qA7sc3iamTrVtRHNRjC79FX4PyNkX264IUS9eErTfBdD40+S4?=
 =?us-ascii?Q?tehKwX9oxU5vPPnsKTbnZ49ljKnrfkwtCDJrviMbJsLCv2iqV2v7Re5DI9uO?=
 =?us-ascii?Q?e8cVvGfK3QbUW7+/7KBnmtamQukLZc/q01P1czF8LyeZFSnR16KN/NM3QcA6?=
 =?us-ascii?Q?hvFPkYIh9m689OnGZWaUn+ZdqTiEef7JcWpAKmopYNDW89tvCf9PL7n121jt?=
 =?us-ascii?Q?CffXtBnPIOWgnmfWy3p42LmLdDMRtlJyT8gFk+GRvk8+DQhhiH4xTnQTjUkO?=
 =?us-ascii?Q?5oxnmuK0z0m5RkoP1a5h48YfLj0xncTdh/GYTd50fyGwN58mmHQ/1AKu5qZg?=
 =?us-ascii?Q?QERtTSB2RiWrQ1hENxPn5S8k//GprSGjrk91x+K41bGPRevpX0+KA7SgaVu0?=
 =?us-ascii?Q?PI+XcD61F05UawyDuKwi4BkLZAgV/+j787rxii3lOH2guiV0/ziXzFdPC4nB?=
 =?us-ascii?Q?P2yTYhRFACmJZr/QYSeTnLeCmO0syDw7lVwpL7zf0nuEV2Lcp6dSAgoxwezr?=
 =?us-ascii?Q?HVLbrKuqX9vgLvR1DW9R6XUpVaueUBrvJQmjU9bd2Ie7/9PrxNfBxLflWb5J?=
 =?us-ascii?Q?e2f0NbcfFFn6tk/gI0h45/apzZVZYS+El6uzP5LZK6RUzfBmrpOyUL/fCDVr?=
 =?us-ascii?Q?4y7lEi+7nht23quJZm0E6GItlvQttZ4Up2FgrlMahqU7EPk4AAVcpKh/TzuY?=
 =?us-ascii?Q?0uYllX8wqN6o/WrfPHYr3adu3duL5b9gcps4fWxao8cNlUHNEXPpD5ipM4ma?=
 =?us-ascii?Q?kUGlv8xrN1aqAwZH7Voe2rHIyMLlrc4nrtUKz5y6yFi8Xzj2IcQp4ZnH2DWp?=
 =?us-ascii?Q?aZrJbDGvuOFGURtehpcFvpC0YNGRtBJtsqG1oSBhkFg27gckGCR88EZZovfW?=
 =?us-ascii?Q?b/DN6eHeoIdT142Dgpokd9MaBcmAcxfHRxmLdxV6IsTbIoL8Z2dVQN2DKkPN?=
 =?us-ascii?Q?OGbrOKq8WoX8/enZm6K/W1kw5IGjE62y15FiSmPHqJ5deui6KJdaj0c1r1pX?=
 =?us-ascii?Q?WU1bSU1UGifKQUp+0h8ExdkrzgdtbsxNDDGX3jqpItTt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eefcca76-4f71-476e-c6ed-08ddb991d15e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2025 17:56:49.0211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TBnnOuwTK3+59c1oliw04yutELFSA78UrhHzT2NZ+nBs+MX4QXxzk00W/Cd6T+EpZLEBfvdSG8IbWA8L0IXoXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5781
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751479017; x=1783015017;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sVCJMo0/fsFlrIWzBJJqQbaMaCEisss7vPPCp4gdMdc=;
 b=UiHvNt4q6hx54z81tD9nUWWn/GdVN0Kzs6DMIPxsZA80fdW0BjHO1B6o
 8jrbSbU8B/K0XIrfiJD3nWJkjzD8fMb3WJzgVsNrPtWAXxMwWdX/I2jjp
 LX/+LIslJNIf1uyr8hKj4nDoGRyK7WQFdS4QhQj4AAWxxafzXlneDGN2b
 iJ8ZDgEd+7Rjb1qcbEtLq2ohMeb3xhHmPzM1oe0GSnBGgwimKyyL+2hk+
 DZsGtBOVWv2S9+AEaF2kgi46RH9swFSxyj9Jf43/ARKdL3tEkZugzjg3C
 XDRaYgLpJGdXbBM+lveyfGQ2PBnqa6Z0rV8CzomhA6zhwI8c9VI8GljUS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UiHvNt4q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/5] ixgbe: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of V=
ladimir Oltean
> Sent: 13 May 2025 15:42
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; N=
guyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemys=
law.kitszel@intel.com>; Gomes, Vinicius <vinicius.gomes@intel.com>; Vadim F=
edorenko <vadim.fedorenko@linux.dev>; Richard Cochran <richardcochran@gmail=
.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/5] ixgbe: convert to ndo_hwt=
stamp_get() and ndo_hwtstamp_set()
>
> New timestamping API was introduced in commit 66f7223039c0 ("net: add NDO=
s for configuring hardware timestamping") from kernel v6.6.
>
> It is time to convert the Intel ixgbe driver to the new API, so that time=
stamping configuration can be removed from the ndo_eth_ioctl() path complet=
ely.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  9 ++--
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +--  drivers/net/ether=
net/intel/ixgbe/ixgbe_ptp.c  | 42 +++++++++----------
> 3 files changed, 29 insertions(+), 28 deletions(-)
>

With the ixgbe_from_netdev() change

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
