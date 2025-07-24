Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8F3B107FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 12:44:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C262761182;
	Thu, 24 Jul 2025 10:44:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LJhdPA0VTh3n; Thu, 24 Jul 2025 10:44:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3363461186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753353857;
	bh=Fv86KP2aD/Zk6v45aSWA923FOvpbOQWlVmB/GRgAB+o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uqg3Xkp862po4ElSARnhmojg6G7aagM7aWxwLwjBD6zmwT5niVqgsa3TAqixtRXsh
	 WyLyWVV4DAEzGjPzODR6eRDv1FHEHKZBqIvYgnXZxNukx2gBOeJNVF/8BdnkFovHU5
	 6N0wLLi64aZGCnK5gbD3MJ/OiAg5R3CViOF0QvFO0cIYiz3B0UwSfV90v8bn6Cr0wr
	 EhB/KOLWMAmmGEPK+hmdUpB4olgCubPEkADKlHSea/Bc9gGkfVCVlHmVda9KihLjtS
	 xk7R3VXxLfnPbH9FbDGZI6UK/YdIVrWrmwXsMZLxbARYpkOrkWpZq3xzGOgl1399Z0
	 nflhFiOcfpgpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3363461186;
	Thu, 24 Jul 2025 10:44:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 116ACDA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBA6340053
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:44:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2MQdWQG0BqKM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 10:44:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2D3E8400A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D3E8400A9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D3E8400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 10:44:14 +0000 (UTC)
X-CSE-ConnectionGUID: QG1djR1SQVeaN0YTMXSTfA==
X-CSE-MsgGUID: l+DBxsxmQYmJyTjuFsWVzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="59317964"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="59317964"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 03:44:14 -0700
X-CSE-ConnectionGUID: 9coXBVDWTBS5tajfBvkpvw==
X-CSE-MsgGUID: MSSD6hXvQtOmdlZEiE4SPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="159742002"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 03:44:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 03:44:13 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 03:44:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.66)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 03:44:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IG6qO0cOmN9wXZQETR0bau/bvehP09Y1ScBg2YxYEeCn0Bti3TsLwJfvLtchrhwNAACLFQbkvppC+HCfWbgLB4fTmxo43o0NV5UjvXSvZNDKD2PazLmNe7LhOgtRzEvwREKic03qzz9A4dnZRkTNTOYAJdSCsfTcnTMZ2FZ/eP6u4OoXfbHjvRkqL/we5lKcRtXEis41YL5xGoi44KjfnyLQuT24CduiyKrndwWCZ/rcX/hXHxJkkSRCdpSHwvX7Ck3pgnP6XBH56dRuelhEp2gV2fAqFE66l40ZhJuLdELBhrz4ClyMdPSkY4jAkH89EAAckvgI6m/xvVImOieudg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fv86KP2aD/Zk6v45aSWA923FOvpbOQWlVmB/GRgAB+o=;
 b=d0ysRpg+9G4RzX0X/7PlEVI4a+cfK3zNBAvlIZefjnass2G8ynggV3PXoto0Msgyv7avigvT+XEsKEuEbwfrZkiZVZRp+n93VWM9HzeN7ZHnJdvZsTBVrkIJ/5GsoHb5393wJ2pCJ4V7aDUfdOtmXvftZn76NY4O80KbxEM+vrTJeSqJ79qHUm/dERGxLCNzJFfMl1QB4niCV16z+KqIJbQv6Ij2mgvYZy+KPNUU6Yfpq1i093W7LRb3ZYWTt+WHCkuj1eRjlGncTNxKUwFxcyJ0UnbuXt1ccKHcmrlw+P9pS00zu7Sj6d8x904NZ2fjTPKUXlsDkfxZ32w3XuLSrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CH3PR11MB7275.namprd11.prod.outlook.com (2603:10b6:610:14c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Thu, 24 Jul
 2025 10:44:04 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%6]) with mapi id 15.20.8964.019; Thu, 24 Jul 2025
 10:44:03 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "andrew@lunn.ch"
 <andrew@lunn.ch>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and 5G
 speeds in auto-negotiation for E610
Thread-Index: AQHb7OKE3FaMDWc6DUKcScwF+u6QdbQ/0lOg
Date: Thu, 24 Jul 2025 10:44:02 +0000
Message-ID: <IA1PR11MB6241A1940E8E31B1F78BA87C8B5EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250704130624.372651-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20250704130624.372651-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CH3PR11MB7275:EE_
x-ms-office365-filtering-correlation-id: f08a697e-bdf6-4abe-83bf-08ddca9f0193
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lBDkfaqaKd+MPrhiK9shMBeJwWLmHeo9CdrnMZ+7NHzDEG48soARJD2j1PGp?=
 =?us-ascii?Q?aegkn6lbZD/DIKinzYEC9HBI2TJ6KPNypbud6TTvv7Nt2DU7sydhazr2aOGU?=
 =?us-ascii?Q?eweH8Zzk7Few7zVdqw9bphKiMmpzx6AbbOEdD5XVQlrT5YImdbJMHVNHyu/3?=
 =?us-ascii?Q?qKbXqmoUyq+G+lFJ4ibtP6gWglSKdPqWoXswwTNel4xhuiBZJgIhPyNzIJXs?=
 =?us-ascii?Q?lNvBTfuCIo444ozwAvCX8jcdo2FxCjQ1EaydrqNTvrQILwcSu4kVEb0qS3F1?=
 =?us-ascii?Q?b7bXM/SnxOI4lqG4j210KMhj98HzSrTGgGVgdFCQ7uSvKQrn9G+/cS29XtGD?=
 =?us-ascii?Q?VNwv3UPYX5rtiOoqvDJTp65+tYkjU2ggCpgFQFmwENa1uN80FAnpZu5Jk4+M?=
 =?us-ascii?Q?vKxtNLt+fnLJaMyWFk4DdUSdFFEBPXSo9NLxoVHBCfjJLuJETLUqKLJRuKsp?=
 =?us-ascii?Q?QzJDdLo7cXHhvzbaZSAr1ERd0j+SKd/bHumYv67tEamCz7lP2Ui8hRePI2EP?=
 =?us-ascii?Q?1TOt/YzlNFyyJbsO8oIIKO/ztJm2w6kkbqgN/TiaLo8tyk3p1R+ozNK/9rij?=
 =?us-ascii?Q?2C/i7psgRPGWDYQ1GnEwUmsI8UrDRLLPh0eHZcb2fgSHvkVFnLzXZ5QjNOJI?=
 =?us-ascii?Q?yCbrlFslld9BwPBSItw0IAAQgqWr/OJto5+56mn5khbsmcbSFS6gFovEFTFq?=
 =?us-ascii?Q?XDtSnOHI1HGFhX8VmqST5CfVBr+HIroyYZU7KcwmVZsu5lUHarU997kllbjM?=
 =?us-ascii?Q?3mtgl235f1mpAZ8tnlm3cAEKiLNz1qB0XHGHIHA8hDojTeoZGk6fV5N2kA/u?=
 =?us-ascii?Q?dCuyH7PE5X5pvmWFBkYU/Dj40+ATLWgRPFVx8eZEjkDVMeJ2GrWMrZLFOq9e?=
 =?us-ascii?Q?ESVwZCMJZMdAgsxQfjzh6KS7vCHp79m6eDkX97ewKgYaqtWBq9u9GZXoaJU6?=
 =?us-ascii?Q?T2ld2ndVSdEsyow17Fw4w/LA1Ac/Q9pj/kLJiZUB34wecWri8XI2w6zI34q4?=
 =?us-ascii?Q?H9JJ8cB3pluJYdEZP9fq0sglyGyJcRqxcu2dt2usenN4ppQIo8UDWbzLSiTr?=
 =?us-ascii?Q?Tblrz2hSKAFF5c0r9j/shillCFMqnGc0vOW3Ej802ds4N+3mS/evl6frm31V?=
 =?us-ascii?Q?r074lWlaj2Ol4zTdsLCFNky8FaxavNmcckEfDGchbf5qK7eLzM50olAGINWm?=
 =?us-ascii?Q?Dnt8SAa13jGZvPVNHy/IaLsNH0hOjvMI8VqJndhIUAS9Hqx4tAL7pHNU3o+9?=
 =?us-ascii?Q?bfLbDcz0BwRi2LvLoDQ7tdl1bN5VbaPAFwuvrGdZrq7Mj61YEKIGlwc6dwvw?=
 =?us-ascii?Q?74Nv+qODbtS7jH8FjVMArNOt0T2On83IpU8QY1T4nQHKEnmiiq0ROPLXdj7P?=
 =?us-ascii?Q?hihomCHxYPbexuDTjm1Uy8GUOe36X+FFreMW90yzXskfHNTEuCHyl3xsvb15?=
 =?us-ascii?Q?bXJg9Gjurbpg19LugxysF3Ey17bsRohpk2OmzbE5W7HCJUXMpMk4FA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5Vq50OradTbN7j0q9Co4/qBt/XBVmyR/8Td3aicLdDGLNUJdM0q1+33UWog6?=
 =?us-ascii?Q?19Do1JjvLrDH3K2VyT9hsLXIZ5E+gUNs8Gz1iksG34Q7+OWQuQGdZNUMOvSL?=
 =?us-ascii?Q?b0Nr1QaQyWfy5XQWw93sMZPyr3LuiTbE7iTUc6kCUTzEXN30gMu5EN5xVfh+?=
 =?us-ascii?Q?xpMcs66p44/Po9k2eGJylleiUELN2sT6/08HE/MzLNRFax8THsGDHQrfDxPI?=
 =?us-ascii?Q?MKAfRST4j0QcE3+DnrmaE0RaRC2q+yIHmoBKYvHH9m4M8+25xsbDCmstDlXA?=
 =?us-ascii?Q?w7vRLfNpTryPBtt7LZ+LH1iaSw1ksruftYzKAfmYqHhJdcMmewJDuLcHTKH2?=
 =?us-ascii?Q?vqk16hQKi8gm85Fm7RqwWxDqyxaOsstbBvixhYNharccg+yTWvH30CxxQDnz?=
 =?us-ascii?Q?/EVgC0mG5xp6tZPSuyEnvCqq1d4nKZ6NAw9Mfzz/zatjiZkhdxYl33ctJdum?=
 =?us-ascii?Q?gocpQUi4vrZGu3sn9lMh4TeOepUVMIvNYFJjAkb2NWLpfWyuDrGpB897sIrM?=
 =?us-ascii?Q?XJnLKX2LRSbCsozHxVHPZ2DimO+xpGpPcd47d4x3UTlXvCasZj6WjWTUCKvN?=
 =?us-ascii?Q?XH3y7hifLikCtWAQesfCXVbzW7hgnIMLeMPEt3/yCRjKS4Bh9kZ/d5vF+8Ua?=
 =?us-ascii?Q?1nK/1auSljpA/Yamhxv7dZJ3I/8mMiEbvEdHBEK5sCh3su2sqykUr5iGQHqj?=
 =?us-ascii?Q?2wCxBzz+7Hmu6x/rx1RoCkGvYyF47RhonCM9OFT0tA1Hm/N2T/mDx5cqeFGG?=
 =?us-ascii?Q?IWa3WopTmUxtw3KsseuZqNsrpAI4Al84LPcPzycLuK/ICS3+iWyrWFfddnws?=
 =?us-ascii?Q?hGxbXmMmCyZlMX/Za9lqCucIgdhjdle+XYRQX5Wp2JHO++9yKFJOiR+wB7qx?=
 =?us-ascii?Q?YzQa8Ba9oR2t7JwYhQgPUDHOIsIGXIsajJ8+EdxlLuZqTx60mw8wqjRdv6RZ?=
 =?us-ascii?Q?B5/sK2QWuNL4FjOAhUYGItEax0xHlpBOpsWf2d8684eC/zTMfHC/rlfCzFH/?=
 =?us-ascii?Q?i70Td/uAwSn/eufPIu6afURnVPwfYp0WzbcQHvXWLP7Hx/vopwM5mQqHLpZ5?=
 =?us-ascii?Q?MaO+dt4rOy7emoj2On9ywq072LA4cQ7z63p+4jx9vDX34wVkZaY+Iqqf2gt7?=
 =?us-ascii?Q?EDhwiLJqQKL8dHiJ+BXMSr4zZrH+M0ZM7zILnUVA36ClH52M49Sk9mF4qx+k?=
 =?us-ascii?Q?FIyNl+DVCQRFGwvP31vsy+vM0x/k4iTlCV0xG5ZqB/cUlg8BQBMfPx2IgUUK?=
 =?us-ascii?Q?sOQVqNK6MrDOW6Su5qUSB3HjD9mvrBbAD1CJrwI0voJj45WNo5jTtdeSAf6R?=
 =?us-ascii?Q?+YUtgDa34V9CZNH06DkqBO4xxHhtiV0p4dxeYyMnUutQHNgN7P+lesrbqDPG?=
 =?us-ascii?Q?aF7bzKXWFZ76UgwfnPxKRvm2ba/6YIJ35WLcL7anRztdOnjWgjNMaff0fBmB?=
 =?us-ascii?Q?HIsNPNW93VXdqmw6YYUmn/E6jRNyna3nk+AsJpJpcHvX5RmnB84rLzb7WyPv?=
 =?us-ascii?Q?XvUJmaA6Zp4goUX6Fpo+6YKuSKBi9B3jD5zZlHulI1jhgzGw48+BILUEAjuy?=
 =?us-ascii?Q?fnHW6GGmw1jW9DAdcsem2Yc4kbimL+mhMoR/tuog?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f08a697e-bdf6-4abe-83bf-08ddca9f0193
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2025 10:44:03.0561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kglKVFXBniYpkmbm2+iNiXLU+tS67TbjqHirjPVvJy7meu2pwNW5Tt96lDw3ljIw2+wbHTSQR8AwYbv9OARWdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7275
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753353855; x=1784889855;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f4ZzxlR9p1Lvf9KWTkgEEu2KJIVstWIw7P4b7p20KKs=;
 b=ana6IlSKV9QwZUIvTXI/QNqQ43tOP2DVY0klBYNeoLsCM9TxR5SVzJxd
 8uzT3UgFbQ9hx+N3cm0rRQxpJBnlJgHEm2kQw3EnmVr1Svnb7yqHp1yff
 6JlID/GibIuvI2UZpSKd/L0eH7k/iRe+Bijm3oMhTtUK+YeEUmoRn2/b0
 RKupOgiqds0ZXju+W5O25ad6SsSL55nGs3Y3bZ6NznfArOqkx1ZFsgrr2
 I96cTkucfOV28UV5BIb7fbe9Gkf1M+/p1PSZ6EBXiwH2Ek6RDIGmRU/xk
 RM0uoATUElqLM+L1gxfGcKCmz8bizhQVA/I0yd1oXwamWZDs8dZfARmnJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ana6IlSK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and 5G
 speeds in auto-negotiation for E610
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
iotr Kwapulinski
> Sent: 04 July 2025 18:36
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; andrew@lunn.ch; pmenzel@molgen.mpg.de; Kwapul=
inski, Piotr <piotr.kwapulinski@intel.com>; Kitszel, Przemyslaw <przemyslaw=
.kitszel@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and 5G speed=
s in auto-negotiation for E610
>
> The auto-negotiation limitation for 2.5G and 5G speeds is no longer true =
for X550 successors like E610 adapter. Enable the 2.5G and 5G speeds in aut=
o-negotiation for E610 at driver load.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v1 -> v2
>  More details in commit message
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 35 +++++++------------
> 1 file changed, 12 insertions(+), 23 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
