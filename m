Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBgGNRsCGGp+ZQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 10:51:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F5F5EEF63
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 10:51:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD05661ABF;
	Thu, 28 May 2026 08:51:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yJCN8S8THAF; Thu, 28 May 2026 08:51:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38EBE61AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779958297;
	bh=FfTccvaTOvXZQ/P2UUBrlqUQiLDWsXR49vFZ5tSeDkI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sQUjHw2R6fiXVNLmP/7Xed/jgQLISo0ZGvrhK/dDgibH/CGZ/wPRJZ5l6RSx9U6Hj
	 3w9wQgGbgue4FnSWXUqnu5K2ivvnm3OHQChBc0QfL0q4lUEw5ACaZBedDNiQnJRgPQ
	 24McIzQD4GOausxybpbvNUCTL+snv5HwBHhjb/6bj708FuEeHAwWz2HvO2+JzYfoTj
	 Sar/RrPnYGXS8HJK62msA37SghIrGsQU+0u32wgbPk2QNAdyn3Qb9VduStlibd1nop
	 qy0fXKcn/Wg+gwMd+szkAAhHZwJw/yWXNPiof5Z6QGo8hgb5vWIBX1u0cQRWWJmGPa
	 1SA6K4nfuVVaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38EBE61AD3;
	Thu, 28 May 2026 08:51:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A08C02E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91A9384CE1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:51:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9qivONTxgWEl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 08:51:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BE8BA84CE0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE8BA84CE0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE8BA84CE0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:51:34 +0000 (UTC)
X-CSE-ConnectionGUID: Y6RsWLiPTISDRmKT5lzDWA==
X-CSE-MsgGUID: lXQMu0TiTwWH1iGIapAWEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="84423462"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="84423462"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 01:51:34 -0700
X-CSE-ConnectionGUID: eNydyUWkSQSw9/7f8xkyZA==
X-CSE-MsgGUID: lPDe9VVpT0K4lrEoiYN/fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="236137730"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 01:51:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 01:51:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 01:51:32 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 01:51:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mHcG3YPPIBntLjkRHguyaTaI8OJRzKZeUPmYAcAYvs2BkdQrmNXnEY2HA7JJOm0oLNur6ohX/jz8/uY/tayH04gKlzB3Q2NfEyUw5npkPhdgID3TyZJpNA8AFV1N7kasXk8ysLHsbWybxu+cDeO6dnhkTyq5sEBWsnw5/e3RvDVviygT1KI0D+QPbWoKvg5hQy/dAYXPbwRWoszCSyuKJV+/tefpHr5PXPU3okEzQfSJGbHFlkpihxf1ShuH99RMFpmzVuHMlGMy0wXwlR8euhk4irBbmfy5XBs+5s19FWvw/3XDSnkn0ICM7hv3la5WsTP2YJNeuPhIiKLta5YAuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FfTccvaTOvXZQ/P2UUBrlqUQiLDWsXR49vFZ5tSeDkI=;
 b=DTIKdZB3jOJnyyCv8lV51haK3bAGyhxiVK+eeHBln91mob9L6xV4nz5Gd/wVHwOLV6xRqfHomMBOOx2YOU4rPJ2SYWJL+Yo/UTTgMEvU6QEpE5uzGtvBFK/C0Med3YAqLjr53xjL63SLSfF6EH9ZfNfEkB5+FcvSGLDpKiDGDJsSzg+yu7VkRq5s1BBWSK8SRDRz52x3uzMVhCUbIn8Aj/urQJWVcgIcFhKR/WilKrcWBJ/MORf5++AHKr8xFIHQ9MFL9FnMEK8GZG4HXNBwG2c7g3aQK1u58IKuYU8yu0jD3917xg51yiJOhf7ovMj84zVbPto3Vcg1z3KLPxwaPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 08:51:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 08:51:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Olech, Milena" <milena.olech@intel.com>, "willemb@google.com"
 <willemb@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] idpf: fix mailbox capability for
 set device clock time
Thread-Index: AQHc3xvFc86iO82i6UKcRa59LU29H7YjQBRg
Date: Thu, 28 May 2026 08:51:29 +0000
Message-ID: <IA3PR11MB8986551646265A2276E0F127E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260508185123.2422760-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20260508185123.2422760-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB7104:EE_
x-ms-office365-filtering-correlation-id: ee2af9b9-0cd5-4cbc-c713-08debc964f77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|921020|38070700021|6133799003|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: iTAIVws1dlNzfgC1M9cZ3soknAI0cBzSn1wd30y3GJi5cexGKdfxKfivqmvNYA9Tr6BbqeyIr05wMFGnoP4OyZEMZRucmxSDyDXxSg4BpyU+1wxBjK1n/sKrNLIQn+jJcxl73SmG8zcqkNixPtZ/uF06UL+91u3Vt+XMo1EKzrMWFAyixy5TdwHWPdm0CRU5s7lEJVabd9w53CMK+M+NYp3lCKkpKDZjP3Vi9whDmKWD9uoTGHx/vmFy87sLQ2PoSJfW2WUYBhv/3hgiDnyDYToCTJsvimsksvHG3UcnnP3cP+jo4LtdSton96YBGbs/dT4SeoISyoyAJjfOrXgWV31d6tWH104plQlpzBVMWJ/Tn/RT9uRu2R9MebQaZm7urW3tD+pLhzVsMRneXZJwqlQppTH8Gw7FtEEy5xsoB+uSR9ovy64gOONIEXNrpXc8j+XCkSF0WjcyFkXFOFRPBOZVwImm6n5Ob1/Lj2rjXKM3EdxklrAkvvxxL6ECdwDxXA4CCRQBO8HhHaXY9rGg+Gj8+cl4Gk4EeGQjWtUghtuSWIXT14iVCKL9xFLVu4aHMsr4P67oQSknFPIaF/c83kor+WEsEIpW/a5PDN7LPWzBrGVbJWkKuob1LDxsk3vxyukQ0KaMQkkW7//+HHem7b5rzax6fNgSKPOQk6WRmrU8PRPdghcMqe7XWy8Sl4WtRXJ2uaywjIFDaXBDCC6K9rHsoFw9w80hvvcJ1BF58VSJfOgav1fUsWt3cgI7+Ded0m3ZZJ+dmX/VQW4Agz5csQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020)(38070700021)(6133799003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WV8ZiLof7Y5SbrFxBIvtA7hgDeORy9kzwgVr0Ht17ryVQXk8pqWrUtn8zI6Z?=
 =?us-ascii?Q?TY1qDIymA/T/pyz7LmOFh6BCczAl4gKbVFw1FiLB1eRRj7Gy01/dhaqC/+Hx?=
 =?us-ascii?Q?jzf3MPlftxpEMIA/JqpOc7QgU5yWYDUFlktiSP9+5TyXvhBnD4zH4qkCCOPT?=
 =?us-ascii?Q?YxzkVB0nut8p1L8NzI7hjdmyj1eZJgk3XP8IjYIEz4LHduUG/Oo/ijBhhijG?=
 =?us-ascii?Q?5I/FvtSYkohegg5eMH/OVfxL1/pBAK65pfPh22ha//jbfrTrNyazkuDNDW/g?=
 =?us-ascii?Q?rzsJV1yMh0xZ+m6KvRrOBnmJcJFUYTWEvUtvY/errcIrUiomlIwObgyFajtK?=
 =?us-ascii?Q?FCYjBuFQo8DeBLMildVaw4v4lMWkBAMQ87hV/qAV0zNDn+9qgkwmrVmzxwau?=
 =?us-ascii?Q?Jr7aGFdPf+8riPS9mmy/vj8o1D5ueD6IQhpFuRxd/+/LOuBV2XOwkvrANnWK?=
 =?us-ascii?Q?lglYCJ4I3bmzG/pZKOYN7Q62ucyGSxwR3cdp04K+dPVHcL/woedXDkOmvNVq?=
 =?us-ascii?Q?JoOcUBWzN04J1UXudaDPqT7zWc3a29j3ti5PVVhqNTyCq7I94Y66ezuwHbGB?=
 =?us-ascii?Q?XiNmlJk94iaI9nQIH6WoKinhoSrzL+wswfh1QBS//GZEN5+xLgxUVJ6GpLxh?=
 =?us-ascii?Q?Zym39fpJEvxn9XLLWUfvUE/J4YJOYouv4favGVs055sl3JB/gJqShsx22quS?=
 =?us-ascii?Q?XotzwpEZJ7ue0BMkA17zahjnPFrMiw9PQbYLvdvrYpoiawWCRfsQyqaTUhf/?=
 =?us-ascii?Q?rQnxd6AIn/WWrkLU00g12jHi1aqvsNT3Z3sKyX60GK3HbOyXOBInX8ZEsb9c?=
 =?us-ascii?Q?25BGyNZU6MjBZbu9NdTMayLRfoc3eEL4dWmKFHjU+9ZJIWr6saiJLKdPbOei?=
 =?us-ascii?Q?Wky85+gtSqOSq2jawSxHII5pTfhU/PtSZp1sQQg08whVsk2qijCTvI3KNWnC?=
 =?us-ascii?Q?d0YMWwgXvQ6DcvRCLotUWtk/CMVpI2YHRt0iacbjODQ6y7PYUvt3Q2AsH+ki?=
 =?us-ascii?Q?1MGisoY+O3a+llEaqidtEVr5Rz4vIoBZoSqUn/RdVESI7+vJ2IvkUZa2W3F/?=
 =?us-ascii?Q?F+6C9zOZQPOva8lDWNTLPUtUEmMuWsxM8SWZXuQGcgN3S7XEW0Otcob+LLeB?=
 =?us-ascii?Q?BxxaTyeLEmBBUadYPPkF4LhAAWk90UbYomKmb9xAFUX34v40hsHmBVdyYsJM?=
 =?us-ascii?Q?VzxbzPwWrYcLbnycNyMd47kw3bK1KoTur674qfDzYZLPmW2URx7PLKnC+YzA?=
 =?us-ascii?Q?SbhMRIeyBt+ADND8u0qZJtwOC3kqPFpEVWz5i01B7g8+a8ByWxnpSkkurPuP?=
 =?us-ascii?Q?bR7jWl3dAURz4bVZlMDdx6KVPrBHDMV+PDdraHf/nTFDWHTWkz7KzWlEqL+n?=
 =?us-ascii?Q?YbYaz5r81gVBkjxzceUjvctznktWgSnpEstPgFD/McxqS8eeOo733BjbCUgp?=
 =?us-ascii?Q?1Oif9STXlAzC6L3xDjiM5abLgMnS11lH0lpfOEf5lndesShEnH3PSq1mAOGr?=
 =?us-ascii?Q?Yn8NCbUV3xE3ZocCAhXzZSHIsFSB371Xb2azS5+rlXo+sG4dTXVN3lEV5Wez?=
 =?us-ascii?Q?Z9wePBaDc7xMfiClOrkf0Eq3hXexb8S1yk7TRjeftQ9BhmchpKQPbzvqCEAz?=
 =?us-ascii?Q?LYWMUJWZu9VI6wOtjdS24FnX3KMkKC4folW1nk/pAHLpeZCYVJOY3HUhBmaC?=
 =?us-ascii?Q?77dvEQIIBa8+jcprXm7upt5d87BuQRyRRbSSQrsemR6MCJlJmdYokMSkfrl5?=
 =?us-ascii?Q?FFHHe4fxLDzpAw0BQo6nr8+6HRlZPHA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: L4xbLSLDv4IP49Ocd9LY9gkGo1n/NZj8/zj7QRXjgH3jtJ4PSjGL5d+vVcd61uv9hcMie8ZlIuITJd1tOqk/wh0EqPyYX9kZl41x6YuB18/NKsvg6diVX/qYOXelYiYrLzTycujTYhIBO93zSjKwAFwu+wW6Qkjz/Qn4/6BDg0tCr2UklZFfKVugqt65fC6Xql/iVKfIxGC2gp5xE6b2McTxJw/QxDImwucAkJlEqkkRCFSutVkiaFyra8c00xq3dBfuHJKY6DZocmWZWFY3886z/amXxHtRma7af42iU9UZlt/IIq4dVerItF6a2m9f0QgKJuq7nrnxhg7WiE0slQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee2af9b9-0cd5-4cbc-c713-08debc964f77
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2026 08:51:29.7437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5e1lltB0aEREXgQc0ugNS0rrSVPrCXZKRN+XhAw/hEZbIT3g9rNyVNjh7XuUnIVVO13qy4OxsOSJT/2tpRY7xvZowjHNsLuK/1FkMe83Vi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779958295; x=1811494295;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oD+T5HnnSLSyJ7HOfe271nAbR2ReN+KfWbmA9gAbtos=;
 b=gO/Bn/wyn9meBjdC/LdGuzd0vWvuRV8smpIuWLhnBesAgq0OHhJH+LV0
 bYFqwcZvx0Cu7fymjUdXkM8HHO89qBGBXV9mCBKivM5KYdnsLixuqiEII
 3Z9Pr25gonDPfZg0LVXr2NZ2G83hs/rbQSz9sNUG+EQGR4hjHrGmNoKmW
 WmzyfN6p1goVje+6/Sdd66JVz6b07GWp98esNJuafLsujsdl02U7Yl/fJ
 nB/WHDK03Dk338vM37DhEBNLZ1RiGPEACUPEg5+xZsnlStG25JGQoALNI
 qG8Z/UdBOrJ2cZlXaW7rJJuMnsUdNEVl/RYDxD3IVbbgteP2dAljr3hrB
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gO/Bn/wy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix mailbox capability for
 set device clock time
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:alok.a.tiwari@oracle.com,m:aleksander.lobakin@intel.com,m:jacob.e.keller@intel.com,m:milena.olech@intel.com,m:willemb@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:horms@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 24F5F5EEF63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Alok Tiwari via Intel-wired-lan
> Sent: Friday, May 8, 2026 8:46 PM
> To: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Keller, Jacob
> E <jacob.e.keller@intel.com>; Olech, Milena <milena.olech@intel.com>;
> willemb@google.com; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; netdev@vger.kernel.org;
> horms@kernel.org; intel-wired-lan@lists.osuosl.org
> Cc: alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net] idpf: fix mailbox capability
> for set device clock time
>=20
> The current code incorrectly uses
> VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME
> for both direct and mailbox capabilities, causing mailbox-only support
> to be ignored and potentially reporting IDPF_PTP_NONE.
>=20
> Fixes: d5dba8f7206da ("idpf: add PTP clock configuration")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
> I did not hit a runtime failure directly, but this logic is
> inconsistent with the capability definitions.
> ---
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index eec91c4f0a75..3295e2f1db9c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -51,7 +51,7 @@ void idpf_ptp_get_features_access(const struct
> idpf_adapter *adapter)
>=20
>  	/* Set the device clock time */
>  	direct =3D VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
> -	mailbox =3D VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
> +	mailbox =3D VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME_MB;
>  	ptp->set_dev_clk_time_access =3D idpf_ptp_get_access(adapter,
>  							   direct,
>  							   mailbox);
> --
> 2.50.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
