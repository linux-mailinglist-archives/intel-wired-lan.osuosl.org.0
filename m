Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6722C34356
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 08:25:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 139C283E5F;
	Wed,  5 Nov 2025 07:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OYVg8g5Fo7EN; Wed,  5 Nov 2025 07:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51CF883E60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762327539;
	bh=SSUkmN8ioKkN0ayrCcgTKB+P28pUaZaVBsAYKlC90CI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rn11ZZ5dQW2+vZ+at9AQqrHoi9kJjtNFaraIwvUasLNWPA3q/CWGFEWAWvQDMUQwk
	 cfIe9QeM0yyaNbQEvUU3TmtTeBsw16VrNREbeqlZNuTQ6KEIf2aliKq8of0923Bzbf
	 f9P3jXSDPnyrWVMl++kwKwwT6hjFDGSpKEyp8pp+DJLSb4Z7T6NCuz36Avi7qp5GhG
	 sa5kUr4AeGVqODXR6Qd8TJCZ6ikq9P+5eTrooX1l8EM6Xez3rH26KPS0h2LfO/9B+K
	 MXGhPLPFW1eR0LaE2MwvzvJ4Bgf7eR4hGwxXgYW6U3xShJ12fCLSPT3UFFZ5MqB2gE
	 5DwYUIKo5r0ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51CF883E60;
	Wed,  5 Nov 2025 07:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EAAB462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:25:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E191C40EB2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:25:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70WtvwLltsyH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 07:25:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E921040EB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E921040EB0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E921040EB0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 07:25:36 +0000 (UTC)
X-CSE-ConnectionGUID: 7V9hPNLDSu6ZRJfHO3UKQw==
X-CSE-MsgGUID: UQX0dHCITA6Ps0/JxuTnxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64349488"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="64349488"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 23:25:36 -0800
X-CSE-ConnectionGUID: XuX3b2abQCGlfb5GsJK5ig==
X-CSE-MsgGUID: RK4nJF6nRTK17MFuJIUzbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="218025263"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 23:25:36 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 23:25:35 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 23:25:35 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 23:25:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=drC8yucTBKl4I/ga/OnwSUiKp4NYm84Rjuxo2Zr2wddbEsImX/REtgv0dUyFRxo4F2Cb+o/zL42mCLxc315mtPI/G133/anuUQmRpFPrIKj37GSE3G86KCsqewGXrZdpr9LL0o7DUyFwhv/oMs+SL1dR/a2fdlyzwwIxGYGvkxb3DgwXUTmztn4IhAqHgbW/3UFeW548sdszxiDPJUVNzrO+uPdXUNAsAklWVAB+f5G+fPxjej/0vJrFBk+UOUDhPCVHY7e+cr8NflegatoomfT12dIVnbQ1HL6C3TO7vjuEmlWTCLVFsjUrkCygm/R+AnHYIlABzFQeTJzZ4PVVxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SSUkmN8ioKkN0ayrCcgTKB+P28pUaZaVBsAYKlC90CI=;
 b=AREG1hMQ0aoBd2ZvPuZx/K4OXWwZiUtMbiBfkOoxzldfXx8ENV0dYoLNouEHHWcY8ICkBXx///WRO+bkw8nq2tGQKkou1Fy8W4kO/UtdqfsF/HigIVNzaP5T87WkrgDmXcVTQ5YJf+pdM2cMLuafQWxdRR0QsAL0Thpuk3ENhsrpBxo4/2BH1ahG/XjQbaNw9Ue9eZkclEG9QqgEP7+6ShJSH6GtdNZXYjGgG5hcpSq9cc/N2uvsZqHx+7ahxJVKrawBYxmnMjAgNPjtFPTR6a8+TYJsKasA4QZKrkV7OEiwzTXPwZIyyalFpQ9G5Z/X6P2l4z//CLU/8P6bukHvzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7631.namprd11.prod.outlook.com (2603:10b6:8:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 07:25:32 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 07:25:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Guangshuo Li <lgs201920130244@gmail.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jeff Kirsher
 <jeffrey.t.kirsher@intel.com>, Florian Westphal <fw@strlen.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] e1000: fix OOB in
 e1000_tbi_should_accept()
Thread-Index: AQHcTaaxGGBadKlcn0WrwivHt9QSnbTjr1JQ
Date: Wed, 5 Nov 2025 07:25:32 +0000
Message-ID: <IA3PR11MB8986FB480ED8CBB6CC32A6BFE5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251104082801.994195-1-lgs201920130244@gmail.com>
In-Reply-To: <20251104082801.994195-1-lgs201920130244@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7631:EE_
x-ms-office365-filtering-correlation-id: d066df43-d881-4ffe-40cd-08de1c3c8143
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?oax2WqTTB83ieQjfKmRnzpdMkJPI6YDU49wPIX/jnSOMp8QYOTV6zUaTFmzx?=
 =?us-ascii?Q?PFESrRQBZZ6/S7gWuSwfC6H6oggI952/NlxC2ohpc1wwQcEEhEzQcahIDuRt?=
 =?us-ascii?Q?VRhjhvk2Sy3D69ZJsv6e90jCRF/CgxJUw+Yq0iAIE0b86cg8ANYBEQxk7mEL?=
 =?us-ascii?Q?CzOFSrTmSmreJPXkQlKtE4ydoS6pImXZYtx309GcdUEIQ6fEELlsqmucHaAL?=
 =?us-ascii?Q?AmEI7sOMi+iqe4aZnckghGE+9Xced7LVNx76TtLA2L9q5wkYoEjQrVz74WLb?=
 =?us-ascii?Q?z3nkty49Z1LVhUX6uvInbvDAF2SE+TPID7fWo4ZJ7u20CsRLZNSNJdnYW+YI?=
 =?us-ascii?Q?fqy8Xc7EfZvh6rXQhIHtZ3uQzi7yflAq9LXWSyt3KaB5CttQoRhlRYzZQ5Aj?=
 =?us-ascii?Q?UUfJk2a6nf2pOuFfI3tIAjgNaKBrIvpnX+EejKoIrRt6iA8pRh2rlsD/ax7f?=
 =?us-ascii?Q?2W/m9PlvmVGzu0ERBBVJ5CtI68CzkcUDcjQ5piqT8LXz42Ddyj9sLAklvLQB?=
 =?us-ascii?Q?xqpYR5fqKF8ujSp20j4x+D3XkFeW2ZJwWVyXiV/hV3nJRkqVHz4xxcQkitmG?=
 =?us-ascii?Q?G0O2cMBsJEn3zFlcwcvMiueroM1Z706hERaOA+5YzKHm8MvKJ8oF8UVTbY9k?=
 =?us-ascii?Q?X6lAQJ9rmezENuXr2uSIEysFw76hyH19AMXLObxFHe2YpLDjdLv19XLs1Und?=
 =?us-ascii?Q?38SuvUxKS3Ir28o8JjfjwkQJrgFN0pQCbz0hxxRt2RySR+P9k7D/2gn4Zj+Q?=
 =?us-ascii?Q?nyqwKmTY/DYgsbEBBEsPBB0O5xF09hN25kCJr0UFk2t7gqKiIPoWFH6whXFd?=
 =?us-ascii?Q?cS7azu+/BBZ+waiANV/oW0YhMma3M3fFM8pu0Z9RuBZ5cbVU+9kLVTL0D+yK?=
 =?us-ascii?Q?qCCuETCHGR3mWsvzHZnXw5HXOFO8IyrKIaJ2mVZDscvzcxUCchsFZU4JGZYZ?=
 =?us-ascii?Q?MW9vDnDlM4jFD+LMVSAQvGzxJJklK7AMnqBVZ+xYZz1uL6JBommb/DsKH3/N?=
 =?us-ascii?Q?0h/iMLOSHTnBRsC113UjfUQXT3gI9MTgDtX6ZvXnUcTq7goPA5KCfgF4O1Ew?=
 =?us-ascii?Q?dUKomDcbFOk1CZ4GoCcJyv2S1AF+RF1M2tnoplfg0vGtYJh8wFD7rsnbC+zY?=
 =?us-ascii?Q?R5r/3XufR2guTCKJbvGFrh9T91PeOwbiqL8TMVMGL8vUxkPnP5nlG/erDwNT?=
 =?us-ascii?Q?tA71ui03quIGP5fs/3Rg92h/98Dn0OgPITXxtebGQkVib83cFFUN4S2l5Nol?=
 =?us-ascii?Q?WlKpW7vOuFOs8UbkLtNkbdt3GoUE1q1FzaPl/m6DoVZkr0U/rawjqkUTXIg/?=
 =?us-ascii?Q?bYmhVgLLpEvzZwK5OgAH0cZVSm1GnTPIjAGQYulCMndiJNLbp/dgA2l9fFF6?=
 =?us-ascii?Q?/MuHV4D3TggEUjnHXmlu0F55wlGYbI+xVEuJ4H2aRDDGL1CyiPXSDhqCUmx4?=
 =?us-ascii?Q?1uI/bW4gO9ivPSx7eIdbsFF6QQe6HjI0/wrqyqjERMLi6Co+97VfKkf/MpYV?=
 =?us-ascii?Q?XMyCBDcxN+ihKTnGHg/lDJxqKJZ8wUDU6QcHF0nB7IWXyUpKFb5R3pXvaw?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3i0rJCm8YyebzRBXZf/+ygHKCXc0j6z3LOvJHwEkg8Esi4bsO2Q17HEcWtOJ?=
 =?us-ascii?Q?l9H5lUzWrcpnSK26qCol053PK5g20KaW8J/C3wBsfmVsUqGQsn+rO2cp7axh?=
 =?us-ascii?Q?DLKrA4G7UGMlGQZZd3uFLCrTO+rS+U4nmiEpmVTD3QZBFNV607aV1BNWqr0N?=
 =?us-ascii?Q?BRzmJLN1iqDIZglAZRRNdiPaS8//PhaaRQf3QDSk1UMweUQCIYW0Lz+tep0S?=
 =?us-ascii?Q?57QqnNY/ZLSopeys0H6w4EgIrr+wGLkN0qoPN2yGNnHR1gJ58deyMxgW1IPB?=
 =?us-ascii?Q?zmY5H1uaydK7QGioLBEjYawGfSq5XJSkoYevWUD98pXIqkMMIlaz64nhnjV3?=
 =?us-ascii?Q?8Qo3uTFLeTkV9zbOLVPz/JriqIovk7vY4Y4gA/Ab1VWPJy8wOwyX+ZEmoHYG?=
 =?us-ascii?Q?2Ug9Z/BMdA2faWTSWWKKWfJtPmWCp4aN81o0gu5BoiVPsoB01SX+VKOAlGWk?=
 =?us-ascii?Q?FQvqSR3WS4bpSDFlURw/TSM9nnL5WmPCvxdojWlZIHfrtqyAHEkPZ5LzqU4/?=
 =?us-ascii?Q?vjU+1Qbc1LCRlzwHdpU2Qdwknh6qnXREXIYK485ynmTGIfmS9clcsSbMfO60?=
 =?us-ascii?Q?8bCeYZErtfgrazE0tYrayj8lG1SFpU+GsVBXu4zEvCPwhlNui0AACvaMEAuW?=
 =?us-ascii?Q?QY0WlrPMMM5bLv+cUMbKvIkUCSIuDA9gQXO73fOM0d4YyT/6wJBGyZY/HpwP?=
 =?us-ascii?Q?Tyz3Le/1UY7YMx6efN+vNdKQhdxwNKMfIWBw8/rwScmJk1a8WMbyh45KU2pu?=
 =?us-ascii?Q?NJpHDWgnX70dUBHQxMURSskqZ2H6CYUdjthUHpZ18dgHlfnuxkVRmTwxYPoa?=
 =?us-ascii?Q?+LlnFhHbLv/cG2iRnWZZpwrVcYl8IUJTKYfGWgfWc/JDdO7aM1QCb0SD5g7f?=
 =?us-ascii?Q?eGeUI8qjODwOcw2W576UFDSREjLx0+6XY2PdAokMIeDdiYuibNiDZdepIGOW?=
 =?us-ascii?Q?f2AYpDdh8Xp3pu9P8k53vD55jy1/SdZLnRPZo+iJncQRmgSf8/yC1xaTaiZZ?=
 =?us-ascii?Q?5lc4AhizbaPak77XvYvYRDrKuyEsz155QyjloLe44Q3rKtoHn2Pc7gZ83SMI?=
 =?us-ascii?Q?Ih1VjMUQWFSkvhaPjsILjrSDUwrmTxpqUxa4hOA4S/wWacFXwPYxPsv7dpr5?=
 =?us-ascii?Q?ZIwN7qPvYly5rrhsetHnjY8wv6Hr8g5/wQPl4moz5AQzoxHytD/tlp04l8bF?=
 =?us-ascii?Q?bS+xjEN7Z8dRu01RIGWFv4raHk15BGyc/4cJMZzq3h50NFl3jDkejoqcG1km?=
 =?us-ascii?Q?6PZ5ZNZQoNEWPsNPHAneWwpgbaAqu6RKpJUeeczEqzgcDX3a2lvhUnM06M0I?=
 =?us-ascii?Q?2qOuLTrdJP/SPWLKGrpwSoPXd694avCEvVUqQT+tIHxsYRqdBIxo8ZVC1ylv?=
 =?us-ascii?Q?KuLDX8TJm0evr1z5Q6gW0+tvV2ry2fC5+WamtHRps0Rv5w5J98ov4GqPeot5?=
 =?us-ascii?Q?n+2wQkMTmzkn73crWIU0shc4bwcuQgFoHQgZCZq+nTc/7WWuVkL6v+aCtKuy?=
 =?us-ascii?Q?FidNoRpTFHnCkwLul/sWhdpA3nPhvq5WuVUTMz8m7PpmH9TsLrhdtbDm+ioU?=
 =?us-ascii?Q?IrenqxhNoDOchu2ERe74NnULC8xSPiNLD8zMohnfY4x/3wubNgJgH8FYI2E2?=
 =?us-ascii?Q?3A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d066df43-d881-4ffe-40cd-08de1c3c8143
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2025 07:25:32.5329 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Or8wqYtdo2C2/i3tinE6PO2BYHL15esPdOd9kcjNQEqSo7nZ1LKxIDfqXp1Ohw0R2zCVXhYcs0GE0xTqB9HftMbQJrTdS69FQvyeJUY9Pz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762327537; x=1793863537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xJJtgISPfyj2jb60UO6WFOnEuqbXJc8y0geelmu9J/Y=;
 b=hBANJs++e8dNJidRI3YXyn/yx+ywo3ayMLyeg+8VFR3ReuiHXqWrrTE2
 HBwcrLbbHFr15Mb/zbxYmHbnrYaT12aLTUR02qSVpdjaLkafPCJzWfTGU
 4uZ9a7MLwDSG4H12w8Ixh3gs8Ow5VTa8gpLLrKxsRVS0oa7V3K6TJf6yt
 Sd+zvDzVI3pxwr7TSMkw79FEvPLUvYmszw3Demq445w2ufqW19LiCvaUE
 83Gyi4S4qa6UoF4NlnT2LMvxQaxZOMZYYlfC42mjtmY0IlUZwAEKbHLtv
 YF3dznKXsh4g6IUeOXdsLBiuSgYRYWbTEVgUiDC0liMI6HwFCa3Rctxr3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hBANJs++
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000: fix OOB in
 e1000_tbi_should_accept()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Guangshuo Li
> Sent: Tuesday, November 4, 2025 9:28 AM
> To: Jesse Brandeburg <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Florian Westphal
> <fw@strlen.de>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Cc: Guangshuo Li <lgs201920130244@gmail.com>; stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] e1000: fix OOB in
> e1000_tbi_should_accept()
>=20
> In e1000_tbi_should_accept() we read the last byte of the frame via
> 'data[length - 1]' to evaluate the TBI workaround. If the descriptor-
> reported length is zero or larger than the actual RX buffer size, this
> read goes out of bounds and can hit unrelated slab objects. The issue
> is observed from the NAPI receive path (e1000_clean_rx_irq):
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> BUG: KASAN: slab-out-of-bounds in e1000_tbi_should_accept+0x610/0x790
> Read of size 1 at addr ffff888014114e54 by task sshd/363
>=20
> CPU: 0 PID: 363 Comm: sshd Not tainted 5.18.0-rc1 #1 Hardware name:
> QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.0-59-
> gc9ba5276e321-prebuilt.qemu.org 04/01/2014 Call Trace:
>  <IRQ>
>  dump_stack_lvl+0x5a/0x74
>  print_address_description+0x7b/0x440
>  print_report+0x101/0x200
>  kasan_report+0xc1/0xf0
>  e1000_tbi_should_accept+0x610/0x790
>  e1000_clean_rx_irq+0xa8c/0x1110
>  e1000_clean+0xde2/0x3c10
>  __napi_poll+0x98/0x380
>  net_rx_action+0x491/0xa20
>  __do_softirq+0x2c9/0x61d
>  do_softirq+0xd1/0x120
>  </IRQ>
>  <TASK>
>  __local_bh_enable_ip+0xfe/0x130
>  ip_finish_output2+0x7d5/0xb00
>  __ip_queue_xmit+0xe24/0x1ab0
>  __tcp_transmit_skb+0x1bcb/0x3340
>  tcp_write_xmit+0x175d/0x6bd0
>  __tcp_push_pending_frames+0x7b/0x280
>  tcp_sendmsg_locked+0x2e4f/0x32d0
>  tcp_sendmsg+0x24/0x40
>  sock_write_iter+0x322/0x430
>  vfs_write+0x56c/0xa60
>  ksys_write+0xd1/0x190
>  do_syscall_64+0x43/0x90
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x7f511b476b10
> Code: 73 01 c3 48 8b 0d 88 d3 2b 00 f7 d8 64 89 01 48 83 c8 ff c3 66
> 0f 1f 44 00 00 83 3d f9 2b 2c 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d
> 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 8e 9b 01 00 48 89 04 24
> RSP: 002b:00007ffc9211d4e8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> RAX: ffffffffffffffda RBX: 0000000000004024 RCX: 00007f511b476b10
> RDX: 0000000000004024 RSI: 0000559a9385962c RDI: 0000000000000003
> RBP: 0000559a9383a400 R08: fffffffffffffff0 R09: 0000000000004f00
> R10: 0000000000000070 R11: 0000000000000246 R12: 0000000000000000
> R13: 00007ffc9211d57f R14: 0000559a9347bde7 R15: 0000000000000003
> </TASK> Allocated by task 1:
>  __kasan_krealloc+0x131/0x1c0
>  krealloc+0x90/0xc0
>  add_sysfs_param+0xcb/0x8a0
>  kernel_add_sysfs_param+0x81/0xd4
>  param_sysfs_builtin+0x138/0x1a6
>  param_sysfs_init+0x57/0x5b
>  do_one_initcall+0x104/0x250
>  do_initcall_level+0x102/0x132
>  do_initcalls+0x46/0x74
>  kernel_init_freeable+0x28f/0x393
>  kernel_init+0x14/0x1a0
>  ret_from_fork+0x22/0x30
> The buggy address belongs to the object at ffff888014114000  which
> belongs to the cache kmalloc-2k of size 2048 The buggy address is
> located 1620 bytes to the right of  2048-byte region
> [ffff888014114000, ffff888014114800] The buggy address belongs to the
> physical page:
> page:ffffea0000504400 refcount:1 mapcount:0 mapping:0000000000000000
> index:0x0 pfn:0x14110
> head:ffffea0000504400 order:3 compound_mapcount:0 compound_pincount:0
> flags: 0x100000000010200(slab|head|node=3D0|zone=3D1)
> raw: 0100000000010200 0000000000000000 dead000000000001
> ffff888013442000
> raw: 0000000000000000 0000000000080008 00000001ffffffff
> 0000000000000000 page dumped because: kasan: bad access detected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> This happens because the TBI check unconditionally dereferences the
> last byte without validating the reported length first:
>=20
> 	u8 last_byte =3D *(data + length - 1);
>=20
> Fix by rejecting the frame early if the length is zero, or if it
> exceeds
> adapter->rx_buffer_len. This preserves the TBI workaround semantics
> for
> valid frames and prevents touching memory beyond the RX buffer.
>=20
> Fixes: 2037110c96d5 ("e1000: move tbi workaround code into helper
> function")
> Cc: stable@vger.kernel.org
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c
> b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 3f5feb55cfba..2d2ed5e2c3c8 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -4090,6 +4090,12 @@ static bool e1000_tbi_should_accept(struct
> e1000_adapter *adapter,
>  				    u8 status, u8 errors,
>  				    u32 length, const u8 *data)
>  {
> +	/* Guard against OOB on data[length - 1] */
> +	if (unlikely(!length))
> +		return false;
> +	/* Upper bound: length must not exceed rx_buffer_len */
> +	if (unlikely(length > adapter->rx_buffer_len))
> +		return false;
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	u8 last_byte =3D *(data + length - 1);
>=20
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
