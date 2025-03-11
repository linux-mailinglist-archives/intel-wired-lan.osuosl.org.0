Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D015A5BDDA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 11:26:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 208704110F;
	Tue, 11 Mar 2025 10:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Zm0n0xDsAU4; Tue, 11 Mar 2025 10:26:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D18D41113
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741688811;
	bh=ai/y5K4+WPhowmEiz+PqN9coF2YIcbzPCnh3XnsZSOQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bEwnsfyJNWpxjWYZ0Jwr180sJqDVgRhUsn+KLgnNdhPjiqZIzXC8yRIYH93/F1PHp
	 unORQGI4hA53WXtrMO66pBeIP9PSv3PtgMKnCdrwTrrFxoPrauAndq9L5eCRzpVjVX
	 cMcXCPuqxp+2heOE0gOMrSQykDSSq2OzuA09Y0zWb/fT9xM6SYlejMISEuLqbbJXbc
	 dON24owwtHqBUxbeyAaUPNOHyJc/G7A6xn5B3A7i6nKptg3OhlsNeFyfwPaSm85GIZ
	 Y/G63qqPVQLf5qI4i/bbkStmkZuOyo2KNYIm9h7Or3rwuUNB1pzEKmBZ2CXf2YddI1
	 splWAg1XjkQ1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D18D41113;
	Tue, 11 Mar 2025 10:26:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1080C1DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00137821EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:26:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lor4t-2LWlYN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 10:26:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 27BFE821EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27BFE821EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 27BFE821EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:26:48 +0000 (UTC)
X-CSE-ConnectionGUID: QIu35DqjQmGe1Scdo2gwxA==
X-CSE-MsgGUID: 9m5ewG9QT9Gr4UrAsX5ZUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="45504595"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="45504595"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:26:47 -0700
X-CSE-ConnectionGUID: KZo8+CogSQyQNyCbbTm5IQ==
X-CSE-MsgGUID: Gzm84/0TR8KqlBSrvjzh+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="120005611"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:26:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 03:26:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 03:26:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 03:26:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w6/yWw1xuwpztRftAI5jTiU83S/Fz218fuhb60caIvqyvVQLfXOO40VefnpTYzfN+2rNJfW3f8A0ozaWOR1WnFyvLQ/K6WV5ppFx2pS3tu2vBQmtrfVkzSD7D7M0AyMZxQ+JyGgefQbsE1z7aNXDAYJYanl0Wls2c9iMToAkbuBhq1YMw8AeUydvwd1z5KEao23msEMyS4z5UDoGesmb7cVbV07KgdNyitG2I6otf7HU9r9kYTiIMkSQSmQw9tH82kXprMfDBBMAJOsR/cGWvxQYGvuAmyAKY9gVdX+7otwNumFfazwTJNW9w34hIByaArnGdHJpTQ88BD3emA6uAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ai/y5K4+WPhowmEiz+PqN9coF2YIcbzPCnh3XnsZSOQ=;
 b=JhD+oURvFiwvQZt5OEQN0JzpAuh1ZfBoeRxeI8mUJ+zzY5mxKKsrIBMc7a7QRH3T0nKfHIl1VqZTN5d2cGTCBjyyt6SITDim+9pAVoaiY1tvNd1woA+5S9OVEZxDE4ncZ0TtbrPqWGI4sDkLxtLtyrp0R/tHVVc/pLn94ZZXoS2KyzCbmVmgifUOFBJwg0faK5tyjV/dvaFg26D9QzRJvlv8nEl5roVDcVwzHYuqp/3iQnNl5yfRCZa6Fd1Jv0qw34Ayik5KN+XFLr6SQBdHCD860dmaVZuOh6D/YKkptsvOH/SeDYmzROriVSP8iddsb7voqYH2fR3PgR4D0kuI4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 10:26:26 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%6]) with mapi id 15.20.8489.025; Tue, 11 Mar 2025
 10:26:26 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, "Pacuszka, MateuszX"
 <mateuszx.pacuszka@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: support egress
 drop rules on PF
Thread-Index: AQHbfsAn7BnIARI/Ckma/1XB11u4crNQUl2AgB2QKqA=
Date: Tue, 11 Mar 2025 10:26:25 +0000
Message-ID: <SJ0PR11MB5865B9D0F5B1C4A78AAD14A58FD12@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-6-larysa.zaremba@intel.com>
 <20250220145843.GC1615191@kernel.org>
In-Reply-To: <20250220145843.GC1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB6807:EE_
x-ms-office365-filtering-correlation-id: e1bb7325-4532-474b-043d-08dd60872daa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lRrJ0CErrXushMkdT1qBIVHwU2G88eCUkpjizdi84I4DakwiXqNtCa/aaXRv?=
 =?us-ascii?Q?bRC9rlGDqpUXU86GhcsWeMBIEycOoZe2JLqC2JJvsGRocJn79eIu3ewCUSqn?=
 =?us-ascii?Q?DxJqeLyIkgdKoLqAmUOhEnVfpgTEkNMb9xgZYqNsPRRK2SoqCwF9Dgl3lBfg?=
 =?us-ascii?Q?gq2b7pkDsbQ4qqt6shUoZHqrbNspmDa+A5OQlQRUzw7q1A57i6wwRN2v5YSn?=
 =?us-ascii?Q?tU6RGBPme6Te9+RyZXXnOquUNJEnIlJud5EQXwFD2yh+ZTQHMQpI1weKyut1?=
 =?us-ascii?Q?f0eRx6JRXkzqVTr8IuUchQspdU+Cg3c9A5EyEYb17s5RE33zB1ueeFXDW1fy?=
 =?us-ascii?Q?LpWlRw0ZDzkjQrn4bhZz3/NLGBKArI+7vQLzKXsPLgYGg0fqAQ96t+xVby+0?=
 =?us-ascii?Q?XDD5GR6MrT6iBQthLe9+8hy8nSOp7EoWMUE5sODPa7Z7JwTtTBcgNkeT1Ve/?=
 =?us-ascii?Q?gRsOj2Eks2qUDalhNx0bvTGWlwbWYKVDjMD8XvQq/xve1SBcRz11D0zqjJi/?=
 =?us-ascii?Q?pidwJs8eg6pynCyVcc3FVpQUn4eh0dkY2Yrp1d+Rh9dGO+htfSf5q+MINgWO?=
 =?us-ascii?Q?9W2Cn0sgBjESrrfZGk3TAGFDZmQniqdIOEVX7r6oNhN9M8j9GTrCyjCz2+ra?=
 =?us-ascii?Q?e5EzAOLV+faLxCyADJx62O2CMiZRitmiYTqEOBPfErzusJCObPrikunkJg7J?=
 =?us-ascii?Q?hlhiwtaR7eXVYdKa7nO60A0rniCdbmkAfFtt1dHqYsHTd4DAv5W/qC+S0wkP?=
 =?us-ascii?Q?fJXZtRy8ZLKc8OEpDt1Pu6PVtRWX36qBvbNBBVa9dW1S/s3CCVMTwwx3XAi3?=
 =?us-ascii?Q?s83u02mKeH7veOkkC7M0Xt7/dNMoVXW0WCnlLAo5iAedp8P2LDmcEmsezzgG?=
 =?us-ascii?Q?q2I2EkO4NEoqudFmzpgNpSn6VwKxY9D2pDZ+dNn1xQeRv4uaN+K0GH7fvLF6?=
 =?us-ascii?Q?0nBgttl1xbQLxVzT0AmwYPW+5fzNOCszMWJG654o9G77SQFLhtDPAa5NKlyj?=
 =?us-ascii?Q?G2Khv5y65/MNrB2wVbVX4b/yOmb0u0YSIX4c9o3o1KbBZ0hVT1pqW+yDSkfk?=
 =?us-ascii?Q?7Wj5lAuccKoFzESsKWu7zaUVw382xL0/narOd4x1/Y07ydoJsB700SRMxdVs?=
 =?us-ascii?Q?uMiyGaJaTkayZQhyJjH20mDViSpp8jSGQhUYY36bBOdbLuMq4LNvDDeVCHvG?=
 =?us-ascii?Q?SgGplwWFDq0vsx/GoRjNFTa7Efs8j8jj6ip5NCQqt44PrBY1g0YR5lOJnFzA?=
 =?us-ascii?Q?kA62ypDqL5NYyIbDaUkXG5va61XngQpASyy86fbHwVfyNw3xMwxYim/Y3WvU?=
 =?us-ascii?Q?ow6zFMt+LqPucJ+Qrvs6FdmtOHxO0Vz+EyM6M0nTjvs9Q/TrOq/gDBb53O7c?=
 =?us-ascii?Q?8p09K0tSOSuupVk9mAiThPYdmOHzig0J5+eEA39fFCnXoAm6x3ySnLvO0O3y?=
 =?us-ascii?Q?V9843UCSCt7TZx+/nypK573AIOr+gfgZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+JkK0OfkC54jtJ7uzvGc7a/fq2Jqk2J9QOqkIjLKwsaRusiYZWmurrn3CLcQ?=
 =?us-ascii?Q?oUGmcFqqdF4AVjH9NmW4UNONGBdwL/5Xgdxhj3frCOVdSTtSYH9pmiTvRynO?=
 =?us-ascii?Q?qYJ41AreRePF266gEQriEBQVeNnJBNUpGkruVOJ50EeZyiwMyiDQClD/vv3r?=
 =?us-ascii?Q?y6/qI01iHhOXZiwFFXsysautuNToBHj9c0BVY6lm2HV59u451qEYoQ96asFp?=
 =?us-ascii?Q?bNkdWAf/7dHTTal+z2f/Cp8cUt6c+DlzBZ1OPeFlAlYfyzRnyBFzSVXkKFXK?=
 =?us-ascii?Q?DRqfKR0Aj1N3seBB9Fs5puonWcV0ROhxIQwPVx2S+AJ63bKPurdyvVDmzlPD?=
 =?us-ascii?Q?BLsvt5H8lBEv80pyJYYr2gb7+9h8/7JEbkIKCM5/cRErL5QSSWCYfW8oMQUp?=
 =?us-ascii?Q?eFD4Zy1F7QjowG8Gm7f43nheOZV5K0EV/3z2+ZbQxQm0JIJJucKx5cMhrlaj?=
 =?us-ascii?Q?2YlFimWf8IBmzXNCCaXSCx4XOBYHodK5+aYL8K6+RsPTsBcHLVqtwprgYVTY?=
 =?us-ascii?Q?o3zEDyMxknnJy7/N2p35dd1/ruvwNdaiFI8PT6pnv1VfBVN00mD7xuGaJ2Q0?=
 =?us-ascii?Q?Ua/kuaiUXIG+XXGpofuuXeybToh9nndiSyAhgRaMlsKmknA7cFQE4rvW3PZS?=
 =?us-ascii?Q?v6mwVHhV33nuP7uX1qXus1YIBvprwyFyRvT+jn7vWG3GzI+VCWsW/gVbRcb+?=
 =?us-ascii?Q?+ix3dBqny7T4dFdeK6YHKAhFVy5pch+rTzn/5PZTJSdinYjvhEM+qfNGEEaV?=
 =?us-ascii?Q?xeGFKYe9CfhugCO25O9owFCvdgMH+fz54i0iEt0zQNJJpO9IdrKsXs/WfI8i?=
 =?us-ascii?Q?dZ/xEeJqLM6W21YbsCpDsnY4rFJEUmftgLJwJ4z4qUJ+YDF18WTy0IGsmTLG?=
 =?us-ascii?Q?vWV4lE86PpEn7e9THufDGnYklq1B/5cMQIX2deHH0d57Whw8pxRNsdII4w0c?=
 =?us-ascii?Q?RON5iYbRZzBwAbMtFa7L5a2l6izKTBqQF1nfQQdXuEqPILts+TvgukN6B5Nh?=
 =?us-ascii?Q?1wJjz0kPK1BgCkTa6O2kEiWurxytFNH8Qy5RLhCrSg0jrEYBP2umEyhr7CXr?=
 =?us-ascii?Q?V883b1RXfNkfs+JkuSh8sH6ukuuOmFrRhZFfd2TvCt/8iT8uqoQEI3EDkscS?=
 =?us-ascii?Q?BNVdSq83BjLJufaquItah664vz1uKHzI4psKNr2w6W+at+WkVkvjCnbXIWHr?=
 =?us-ascii?Q?8gbw+SyIn0AlJovamDLVkUhvlX7lAsK11ehMAphGFB7ASNcDjV8HPILl5fHX?=
 =?us-ascii?Q?eNCbgvsfC8qM/4V0GPIpJHK5avfvl5smCWQ6cXyi8h90bjoDYgv7j1PHCI8U?=
 =?us-ascii?Q?hxs9PttR4KfHKJ2fsQth/C2sPktwUBkLfqufExsqn2BHqWJuQ3iBEO/cj18k?=
 =?us-ascii?Q?2yACebcGOCWG5NV8eJliKAPRprGAie3FM3BSGAoimLMVqSKjN4FbRUezgAoJ?=
 =?us-ascii?Q?yM/zWHSRzcR+7QiKQVvOs+k0EmB2FOs3VO1Vq3pLcm/sDTbGZBXPMK1U+8ur?=
 =?us-ascii?Q?B+L6oFO79SD0cfDD78Z9IhnAHL7/N7AAg8rbxHBT3ye3OfVpKwyqLAts8NJU?=
 =?us-ascii?Q?wWdRyeLSat4F1eAuDVk0j8CCT45IDLslcT0PqYGEZdi8gknKXQcZm4wY7Zae?=
 =?us-ascii?Q?7A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1bb7325-4532-474b-043d-08dd60872daa
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 10:26:25.8854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HgoYw2otPnpTGqmJmBW308aPaaLsZWGKDSuSHx5zu3nbU2Jvs33GS2yuAWXKtrzACFQxUsD5ND2S4bsXNdW2sabF+HAaxkOHTxbKZgYGCvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741688808; x=1773224808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hNVeYiQsC8Sjy8TBRAKPaXlNYtAPy48JgNqYBc2xI3s=;
 b=WFUoNwW3m0M1+eey3ASE+8PZ+VQM3yYcOD2ls2jO0PW4nTFwFXy7cjMg
 eEA1VU7nqnZax1sPzhRYaw+HA9q1D/p5dposwYV54o81CdBzpLRniHDwS
 3O+eM5oW5nmhgk+pH4cvlsksRsJ3UTetcj5iw+vaXAbm/eZoGbMZsPJ0O
 54SJvKAvQzGWj0xPLFIvw4A0hVQscsgGCs1Op+mnq656RQJ6XlioNayH5
 PZXkYFDprCYjd/ywz04ZtIKdaxTPDFDOOWOnNZc6fitZIdc/Lpseyxta0
 nAN9nO+uAtWk3xnDkHJ29QvIIAxOk0BniRweA3zBvGg6XwKrlM+KQNN/X
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WFUoNwW3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: support egress
 drop rules on PF
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
> Simon Horman
> Sent: Thursday, February 20, 2025 3:59 PM
> To: Zaremba, Larysa <larysa.zaremba@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Pacuszka, MateuszX
> <mateuszx.pacuszka@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: support egres=
s drop
> rules on PF
>=20
> On Fri, Feb 14, 2025 at 09:50:39AM +0100, Larysa Zaremba wrote:
> > tc clsact qdisc allows us to add offloaded egress rules with commands
> > such as the following one:
> >
> > tc filter add dev <ifname> egress protocol lldp flower skip_sw action
> > drop
> >
> > Support the egress rule drop action when added to PF, with a few caveat=
s:
> > * in switchdev mode, all PF traffic has to go uplink with an exception =
for
> >   LLDP that can be delegated to a single VSI at a time
> > * in legacy mode, we cannot delegate LLDP functionality to another VSI,=
 so
> >   such packets from PF should not be blocked.
> >
> > Also, simplify the rule direction logic, it was previously derived
> > from actions, but actually can be inherited from the tc block (and
> > flipped in case of port representors).
> >
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


