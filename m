Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DB5A85651
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 10:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B4C840C9D;
	Fri, 11 Apr 2025 08:16:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gvU5ze4wRT_D; Fri, 11 Apr 2025 08:16:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BFE641955
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744359382;
	bh=vZZSrULpzlpukfOvkTZ1G2/ADSqgBDHohfoHtvSiOy0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HmKKRNEZ038er3Q6yq8CTkjHQPpVoICE4+wntN97VSUu3jC7xIDPCA8Al4uy0Ddky
	 OoekogTwx4WD2zRlyVgCBP328JLPje8YRGGctFyCMWo09jYXg94EalgwwYM6XBuYZj
	 O5r8zXYL5YmcQrS4uNhjHhkJri/ZR7qN/ih9r2TCiX9V00ixVpfWmEPKmCJFtycNEy
	 BcHSAi6B9U2Wg3omdHzcEsz1x1i4yonhMcsrqrQGdgBXWkfAdS0MgKI4bDTYnIyX2G
	 V4i9vJOTfDGU6Y1cr0RBTg32i3JHwHDGcF7B1VIX/jHjRQJRm8GfWipLFIsJ6B5jvd
	 VCCn7chA401TA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BFE641955;
	Fri, 11 Apr 2025 08:16:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D274F108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 08:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C305D61175
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 08:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cz9vt0KHuIaD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 08:16:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EFA9460D55
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFA9460D55
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFA9460D55
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 08:16:19 +0000 (UTC)
X-CSE-ConnectionGUID: bXlAPj5CQHias3eQpbL5/w==
X-CSE-MsgGUID: 239vfjISTb2lWiWNOhGQfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="46034122"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="46034122"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 01:16:18 -0700
X-CSE-ConnectionGUID: xZhHXa94T0Gffsvzyb1WXA==
X-CSE-MsgGUID: 8dYFNss4T3Ow9VQteDBaeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="129129215"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 01:16:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 01:16:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 01:16:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 01:16:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vS6h7TK+42wc6omKYhsFzuE4R0gMtsleDD/UOyosepmAyJEkNd4B6Y4OFbj4tE8Rv5Ww9ngx6Zd4CITyHGn7YMvI12qJLY23S3rmdCE4ycCt/LnbJ/GiFUXrtjEWQST2GiXWeDaKkR0Kzb5NKuC9q4wGNZt6ucIjWS3J0Z+uR7XkBM4xEiQajbGDDULVMdjAHhm16FHAF5q8OFTC9sus7Ruhf6ydO6ATDq88NtQ3lJPZUOBgcjfcbyLLkrfQppujS7ola2yKYxO41URaWEdqrouV8FDAcaW/9fuSJqipCYBsAlq22ozXI02/NDKS1KSZSc87RRAcQr+QtYaRr38fgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vZZSrULpzlpukfOvkTZ1G2/ADSqgBDHohfoHtvSiOy0=;
 b=iGa2frvEGRF/PdRSrwd7CPfP7Qh6o1paBpzesZpcaIEjm4wdLekMfvVnbS5HuyB8FL9+vQSp7L9aATtarvxW+Qc79oCtFSoFBz2rBGXPrgSUVW76qLkzPELqFIt6ViSsdYE4Ud7WDIjGoxkCGkZJPJUh0j/+pvilcqFLSLgy1KBaufaxZci6A1161+kr0B759WqUhYjjM1bPmU7ipck4rGOqK37u6SAATgKdpXxBeGQh40LP2N/7NIPBho594hpjW/XMiOTjxqJlQEJDOlPwao78N+/nJ1+/XulrIU4zfMnMmV1V1W8oCM48wz76u1pzIlSdS5EGI8h8hvpS34WulQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 by SJ0PR11MB5136.namprd11.prod.outlook.com (2603:10b6:a03:2d1::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.35; Fri, 11 Apr
 2025 08:15:30 +0000
Received: from LV3PR11MB8673.namprd11.prod.outlook.com
 ([fe80::c098:1901:a40c:505f]) by LV3PR11MB8673.namprd11.prod.outlook.com
 ([fe80::c098:1901:a40c:505f%7]) with mapi id 15.20.8632.021; Fri, 11 Apr 2025
 08:15:30 +0000
Date: Fri, 11 Apr 2025 10:14:57 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Jay Vosburgh <jv@jvosburgh.net>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <sdn@hetzner-cloud.de>
Message-ID: <Z/jPgceDT4gRu9/R@localhost.localdomain>
References: <d33f0ab4-4dc4-49cd-bbd0-055f58dd6758@hetzner-cloud.de>
 <Z/fWHYETBYQuCno5@localhost.localdomain>
 <ff7ca6ea-a122-4d7d-9ef2-d091cbdd96d2@hetzner-cloud.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ff7ca6ea-a122-4d7d-9ef2-d091cbdd96d2@hetzner-cloud.de>
X-ClientProxiedBy: DB9PR06CA0029.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::34) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8673:EE_|SJ0PR11MB5136:EE_
X-MS-Office365-Filtering-Correlation-Id: 66788a0f-b795-4ccc-281b-08dd78d0fb94
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ajVkb+ZHCRjtMsqrGlzFlF3dt/7XUvRBcSUQZ3YSYBLV38q6hYMxqzcutLoa?=
 =?us-ascii?Q?iSl42PLrWtH+Iw/8ifrZdmZfE0zH9Ybbuz2AzEbiatOg7fL8UvQoMyt8n0il?=
 =?us-ascii?Q?S8nW+sTX3mKNfibQVqvf8sAYtZDexM825HDA/kWoR5apzR1r2Mu5bGXVsKli?=
 =?us-ascii?Q?wbBVyIxGTBj1gfxw6whEtQTd+5fYwBd83FESmsZLPPUsAL9cuQv06K/NcAba?=
 =?us-ascii?Q?nLSW5bclPaOfKIg29m3yOMCoAuMrzz9Z390mxi9Lf/XGyV6Do5O3R8Q0K9Fe?=
 =?us-ascii?Q?t95uaA8xTbmr6xUd+m+hXg4hK7E7UObl0y/IHbrcmcUQd/t5Ft/TDE/BdSm/?=
 =?us-ascii?Q?OSRZNVByFL8blQ4WBLMaXKp+C+DErKyR8yTqKk01alrhdVkEdgxnVU9M1g7R?=
 =?us-ascii?Q?Q3d6Vle/xnkDV+MDsd3Rq+Zfo3za1GrkCmpMM7mHbKd+R43V8/bvSVLvQ++N?=
 =?us-ascii?Q?+77AHhUeSfO5s1wS0nhaaIAfp40tbVfdka55Ej7c96baljtZhs8NTF28KfS4?=
 =?us-ascii?Q?rcl0iz3+zbwkgEnAMBrQMqc+ittN8h/H/QayCCLogIqD2J1zVUNmvqueGRJQ?=
 =?us-ascii?Q?p6SNaBHGX5wkFM0iDWrDTUl61GtZcsxPyIuW7+kiGSNuaIjCyHFKu+xwR/mt?=
 =?us-ascii?Q?qmdXO/xc1t5C7raO4RR5eigUPhFwkai5XwAiPNUpnhN7spvRPBj4mNrlTrII?=
 =?us-ascii?Q?Pj91ZF1YZr2hcGCL54RWv/y6AcEDqX7i69K2ctQXmsNz9lTTMiK1H+jnBMkX?=
 =?us-ascii?Q?mJJGX3cBkxV39+fJYD68PnIC9QPYnu8AsXYt5iqlXw/Sw8GYAA+4JbxmJNra?=
 =?us-ascii?Q?+VxVjPLP6piD99kN7w5tsm+ho+XaQ2/Gn/Eosr1+w6dVeWZIigfnux491LiF?=
 =?us-ascii?Q?/wBsQTbLESdO/Yd6FeAxkH8vBj9DCYRrgim/9Ksl12wOdKaMqGHY7jfZ00ae?=
 =?us-ascii?Q?SRSFKwjVwF/ntb4R/sh1F5JJF5jjbU/O/SKihqPi3caVgEFIzCSClA395MHb?=
 =?us-ascii?Q?XV9N6YqH/rnTaLTA+Nbn6RXjLKnHRZhhu35OUVKVAuWlA5lYRhb7JbrbL+vu?=
 =?us-ascii?Q?KyaWIYhyxA2cj2dZGicLYV/D6gauwNcjjPp0k9r2ykapdeYUq4AroRb1h/ew?=
 =?us-ascii?Q?VGqSXSSXxpEqWotZ6v5m0C8SD0cBAtTeuFOZeZqZasv/GjU0x1EGPTYGO0a6?=
 =?us-ascii?Q?bzxeyUXgL7SL6/V0IXT7faCg030MV4nDGJt9CEUkSZWue9YNTkB2Tj2GUUGv?=
 =?us-ascii?Q?oEqYCxLW3RjeRIIByps78Be6P3uhsIwPhGTHxoV+kaQp8PpawxKBNiuwtZ8L?=
 =?us-ascii?Q?0IrBbygPCdyZyM0V2QL2O9+rAX+6YUvcRyh4X1n6YRylUpxHKzYpVPzlcZ+u?=
 =?us-ascii?Q?QYvPRrtgqzD6EL4xWnpA4Qz/xTnMuNqR//W17gxY6HrlpVYPSg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8673.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZzYjekPWmk5h8+G7hIW6/ZFSR1uQj8yGfdxvbBkyLxUrY4lhTJyO5yOQzRUd?=
 =?us-ascii?Q?lsFJbtGU9j77ueSln80k73dRyRWNa7NDAJT17hJ58tMozV/3GREM7RDTkmb6?=
 =?us-ascii?Q?+I+xIgMxfOLsDCzNjbrO8YcUZpTjee1YOycdYz38kDpBoCNgDVaWCeNKaiCa?=
 =?us-ascii?Q?l3oyH+CTZizdQyxi8/Q/nKZyOw/7sxdcd39Kj5LNKjyU4fytCMCoZ52qEOHY?=
 =?us-ascii?Q?vcCcVTyUz2rRIrq/L5+nJflno4PdZ6Sm2u4l+9tx3Edgac6gABNWFORxBzkz?=
 =?us-ascii?Q?S5evE9OCCK28mENIg/Km83wre2C5B9uYMfiVRYikmgi7tGuPioIgu516Do/g?=
 =?us-ascii?Q?x2TMVQejhn0gsZETpp7H6R7scj8E94RRPlNNAz8DKkmZqK5KrBlKh/i3QylN?=
 =?us-ascii?Q?VYBG7xv0c9gCQKBEsm+CHT4Yaze7BuJiF5sqVY3xOHb1/mDcj8HjstezamBH?=
 =?us-ascii?Q?QpyV6H5nyKEJ2Rwl6aL2rBlMdwkp4wW/dEtuc/zXzNbMpxUQMiu35s01DP3S?=
 =?us-ascii?Q?lJPgUUgvTvyqxOeEDQH1DQda/2nTXVgOyvKf4tl2MvwuzpKp82IV7AiBDOk7?=
 =?us-ascii?Q?y0dSoFXhqj6DgVoiKm++HNYsRpZdLcEETvRkqNw+/bjKkUPkYEwQfdEaZkQ2?=
 =?us-ascii?Q?JN+ognjykBTGGqigxufVybhEZCSiAmw0qcURUzGyXp5cnBicAzfjww400iJZ?=
 =?us-ascii?Q?eSpEbn9nyGJJ5VHtpWMc2+287GqLN1yHVTlh9jufcs1w4519w7mgqWNm/uwo?=
 =?us-ascii?Q?MSBvxDnGucbSpbs/w/A/NsoHm1CYneW0Tjv0+eLL/LIEaLZC3VqD/sPpzvMs?=
 =?us-ascii?Q?u1l7ZUNi8gezxY+zONKiDte20fwHtizQobux9E7AKkFlOQO55dpdGQMQJkga?=
 =?us-ascii?Q?JqevqPUu0fC81uhXqqGEUWsXpXACMYGR5IWexSVKHvhBd4FQzM0hWJ5pZ4ut?=
 =?us-ascii?Q?xWj6z+IRGTmNLZJmDwzr9coSXiV8lwmkXG//TB+TtzILlZL022BR37Aiec4w?=
 =?us-ascii?Q?ltB8geXBbBVnBzhXid9PmhEbLX6t3J3K04u6dN5pCkzZpV0ZnGwm/bGkX0iu?=
 =?us-ascii?Q?F7NhV1xDNtP2gbdgkRV7wYM+sWqG1p8PrQ2i0ThwcB2+0xfWAUltDcRx/CzP?=
 =?us-ascii?Q?B14ZNyn8ooWN5GmDcRvGge7GdmmbhYIS54Thcl9qfAGVx3NbMDUC5baRcycm?=
 =?us-ascii?Q?wKrB/6+We8+cwrWOoFjRAJ5rmbdJ8Xa4H7DAAcBpoqkP6v7rZEfn+9ZJvE5j?=
 =?us-ascii?Q?QE0S7PeGm6/whezpASpxMWUtIYMhtEU5ajwaGRIA51AuF5iiZTkxBRVbPkdP?=
 =?us-ascii?Q?QoGEc8wt46jLSquL/0uqiczPSXjWVsnYIW2NDJO75jEOTQthAfqyqXoVMmMV?=
 =?us-ascii?Q?8Sa51xrqthCNa/EBXTBqtzcJXX6qmyhyT4eOSCALV+ZBlNaZKI2ZDso4rLbF?=
 =?us-ascii?Q?jD77SQ6iq3uXGX8q8w7q3ML8MvPTA1XC4crlPtwseOaJnZCyCRlue2Andyze?=
 =?us-ascii?Q?/IJ4p9ElGN5SyCONIYlpLpCtcLYtNOHbLfRv4BYVHfb4caR/muaaNkb+mzIN?=
 =?us-ascii?Q?pZcyBfnRqEn0eIyz3FppdMWezD7akd3Nl4L8Ou9XMQTs8BmL1LG7MEuhmvEM?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66788a0f-b795-4ccc-281b-08dd78d0fb94
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 08:15:30.4872 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p74gEimsgWDpveTX0kgZ47Yh/6eQidzw71EFT2OQbjkPAaliNkZwexaqLtroBN2qA15H6yFbYsmbW9Xc/hJ/DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5136
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744359380; x=1775895380;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZGaOM9lvuxfKkbs3JWJk1b0Ev//yTigJIrR2rWttRkg=;
 b=mjk197h/96SdNuIh3hZcMeqq+Z+Z1/ssOBWcupXJl8xIr+60qLTU7u8+
 oSbNBgXAK9tnNpPvv4EgpHC6hnCWwGDQf6QU2dpRsYAOmj1YbsAA98+h2
 EsAi+eptIh3UAxSZ3ysezWY/ouSN3Uho7rkPl4VUXJH4CBN9i1hVHzJKQ
 wpQ3tW3Y3f9JqMSveSSySWANPLiM2+6Bmbl9pr4lUxwNYX1yUsiCGzfW0
 AkTIDduzHX6aY1UcaI9F4yxXAi/+XGzoucSlc+auhKQv2j93rfr5Lksdh
 wdholBJOBqdbCLMuz90xkVIgraDjNSqPxwfhfXliF3Dc9sABOZ5ZBXWHg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mjk197h/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] ixgbe: Detected Tx Unit Hang (XDP)
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

On Thu, Apr 10, 2025 at 04:54:35PM +0200, Marcus Wichelmann wrote:
> Am 10.04.25 um 16:30 schrieb Michal Kubiak:
> > On Wed, Apr 09, 2025 at 05:17:49PM +0200, Marcus Wichelmann wrote:
> >> Hi,
> >>
> >> in a setup where I use native XDP to redirect packets to a bonding interface
> >> that's backed by two ixgbe slaves, I noticed that the ixgbe driver constantly
> >> resets the NIC with the following kernel output:
> >>
> >>   ixgbe 0000:01:00.1 ixgbe-x520-2: Detected Tx Unit Hang (XDP)
> >>     Tx Queue             <4>
> >>     TDH, TDT             <17e>, <17e>
> >>     next_to_use          <181>
> >>     next_to_clean        <17e>
> >>   tx_buffer_info[next_to_clean]
> >>     time_stamp           <0>
> >>     jiffies              <10025c380>
> >>   ixgbe 0000:01:00.1 ixgbe-x520-2: tx hang 19 detected on queue 4, resetting adapter
> >>   ixgbe 0000:01:00.1 ixgbe-x520-2: initiating reset due to tx timeout
> >>   ixgbe 0000:01:00.1 ixgbe-x520-2: Reset adapter
> >>
> >> This only occurs in combination with a bonding interface and XDP, so I don't
> >> know if this is an issue with ixgbe or the bonding driver.
> >> I first discovered this with Linux 6.8.0-57, but kernel 6.14.0 and 6.15.0-rc1
> >> show the same issue.
> >>
> >>
> >> I managed to reproduce this bug in a lab environment. Here are some details
> >> about my setup and the steps to reproduce the bug:
> >>
> >> [...]
> >>
> >> Do you have any ideas what may be causing this issue or what I can do to
> >> diagnose this further?
> >>
> >> Please let me know when I should provide any more information.
> >>
> >>
> >> Thanks!
> >> Marcus
> >>
> > 
> > Hi Marcus,
> 
> Hi Michal,
> 
> thank you for looking into it. And not even 24 hours after my report, I'm
> very impressed! ;)
> 
> > I have just successfully reproduced the problem on our lab machine. What
> > is interesting is that I do not seem to have to use a bonding interface
> > to get the "Tx timeout" that causes the adapter to reset.
> 
> Interesting. I just tried again but had no luck yet with reproducing it
> without a bonding interface. May I ask how your setup looks like?
> 
> > I will try to debug the problem more closely and let you know of any
> > updates.
> > 
> > Thanks,
> > Michal
> 
> Great!
> 
> Marcus
>

Hi Marcus,

> thank you for looking into it. And not even 24 hours after my report, I'm
> very impressed! ;)

Thanks! :-)

> Interesting. I just tried again but had no luck yet with reproducing it
> without a bonding interface. May I ask how your setup looks like?

For now, I've just grabbed the first available system with the HW
controlled by the "ixgbe" driver. In my case it was:

  Ethernet controller: Intel Corporation Ethernet Controller X550

Also, for my first attempt, I didn't use the upstream kernel - I just tried
the kernel installed on that system. It was the Fedora kernel:

  6.12.8-200.fc41.x86_64


I think that may be the "beauty" of timing issues - sometimes you can change
just one piece in your system and get a completely different replication ratio.
Anyway, the higher the repro probability, the easier it is to debug
the timing problem. :-)

Thanks,
Michal

