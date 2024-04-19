Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560FF8AB19D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 17:19:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CFAA41A3F;
	Fri, 19 Apr 2024 15:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nY6ByWwmMvP2; Fri, 19 Apr 2024 15:19:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FB6C41A21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713539965;
	bh=QXFDabgqfKV6EmiCBDJtiFCUVLAjK6wLijjqr7WX9vM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zidna4l1Qzik43BeAWsBBDk4NyMKN0JXfauthMGeBjMi618u3o6Z28xW0XT833fEa
	 ilEku2bhdwdEQZxunGqp+UdPHkXlu7Rki/vjxmncjuvC6IZYgV4rcJLO7e7cgZH2Eb
	 iT8wmVIyRjnmnLb5ysWCew/I7eQYKr4JfvtQC3fjIk3RL6LHhfyU7xv2pl9NueE+VD
	 QUsrFYzwghfxoo45YYfYbPRXVvagZcy3COoxQp9DqBUlw2N4Gk2Sodv/S6H6rdh0xU
	 pWl/lWiuTc19ctbU6V7k+0O97OI2w7pNxfwNWhK9hZhl67QUGIN6fQnzbUqNFCl8RJ
	 YTSkINYYO44Wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FB6C41A21;
	Fri, 19 Apr 2024 15:19:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2721BF30A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 07:55:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 860BD6078F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 07:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1YnwK9e4zrxZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 07:55:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=robert.ganzynkowicz@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA37D606B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA37D606B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA37D606B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 07:55:31 +0000 (UTC)
X-CSE-ConnectionGUID: kM/JNFhvRLWfgFXNV0+M1g==
X-CSE-MsgGUID: +2BWtEw2TDitx9JvPgiZAg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20528117"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20528117"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 00:55:31 -0700
X-CSE-ConnectionGUID: JxC8dY3MSjCz17vj1R6WDw==
X-CSE-MsgGUID: gXMpcxWjScWSxhC/hTy5fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23328796"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Apr 2024 00:55:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 00:55:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Apr 2024 00:55:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Apr 2024 00:55:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQYLK9v62P7CF3/IGmp5Tkpww5h2ZcQBIDDb2SWhe968KQftM/fDhra01UgfHFQaRg63M4dNfyEeDEN2TU2JQhel8A79bGnRIn4ZdHJBQdkyus41p2cJpHiuPhIHgD3Ew1T3M3xvVILrvOJYo0xIy50itlYGdkZzq/FTXkT94UiPLkPolfOyD07Pq4oAz6W7JYu5L4uUjKXw9l5uphmJXJ0JDHt5Oe8Ousu263InLyhvJ4lPlWCv8WRxkRTd+Z351CyglQ3JFIPqADDmHvNR7U2cJHRc5E2TNWVc/VY0BFzK7EFdbAs16D2rFUBi0UNc/xhSCdiGG7ZgD3CARXFtpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QXFDabgqfKV6EmiCBDJtiFCUVLAjK6wLijjqr7WX9vM=;
 b=Q2pdZBo0F1eckG6V4+U68kh+y6BpKC//opqgy6IXlkZhSY6mYMjbNUViid1Wv373L3jlmIf90k/3bycPgMPt6b0sDft5EVFhMltElDaMgUlG7kFJmR4MtDwaYtk3iTaHh4XoGIspBK0XqiNluYDSW2Vr/GgrHf+UN/i/n2yJD/IapaTzEjXIsUwzw9kpS2JfPY1LKgi7juSO5XRJLbijH07qVUSPYAvEGE/vroh5HyEOIs9kWLL99snmpRKqCqzaeaGsNcryYy1opjGHHBHWQqcfOAoIBsjRzSZD674PCpbuzDc+OGBFUZ5mGWps/pms79/Or1nwqLBz+ID4eRqViQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7558.namprd11.prod.outlook.com (2603:10b6:8:148::11)
 by IA0PR11MB7283.namprd11.prod.outlook.com (2603:10b6:208:439::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Fri, 19 Apr
 2024 07:55:23 +0000
Received: from DS0PR11MB7558.namprd11.prod.outlook.com
 ([fe80::3f4b:7f74:e7d6:9b49]) by DS0PR11MB7558.namprd11.prod.outlook.com
 ([fe80::3f4b:7f74:e7d6:9b49%6]) with mapi id 15.20.7472.027; Fri, 19 Apr 2024
 07:55:23 +0000
From: "Ganzynkowicz, Robert" <robert.ganzynkowicz@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-net] i40e: Do not use WQ_MEM_RECLAIM flag for
 workqueue
Thread-Index: AQHajBBMyka3IS7bQ0Cwq+D86U1vWLFsSt+AgAL49HA=
Date: Fri, 19 Apr 2024 07:55:23 +0000
Message-ID: <DS0PR11MB7558DE5B77E3CC6FDD12D4C3FB0D2@DS0PR11MB7558.namprd11.prod.outlook.com>
References: <20240411124953.120478-1-aleksandr.loktionov@intel.com>
 <SJ0PR11MB5866ECE86B8DF2C07F1FC713E50F2@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5866ECE86B8DF2C07F1FC713E50F2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7558:EE_|IA0PR11MB7283:EE_
x-ms-office365-filtering-correlation-id: eba2698b-6777-4c2e-61bc-08dc6046115d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +dRcX3syy2hzbcBOsLKkOx3FBoVYReFOYZhNndZYViEhQIWLPUbW3kSaP3tqBRlP4ovgRimb3S1nkSxcpsgIDVa5rOuLLR3DzjK758tnBpBvT5+Ei0V0DyozK0TH6V3WypB7R/25xhLGP/iSygHlUF8sjU6NSU1nLxtymgKhw2YH+4BHs24oSw5itkE3Qs0FIJh3kGaMz9m6uMH0xRh0ZQTGqPGhSVFoHVARrjiZtVSeU89YqS3ZrmC4brxb6p0fDedN6O82Pfm1HcVoX18yIKYfZYLmUHJsdPxbq0BGJX9tj0WOHlWp8/2n+6l0g687AASBF9ZmT7t1ZmDPY/p/2BQWkXHy9HKR2MRg/IL06L7cw/HE+AYhni7Rf1/pbnk+aixitGuTQKkUZoo1HzghlwYZMGhIpu0ifJsUT6VcWxq3A+xuPZelm9ldsq24oMTA3v483kmtFvBVzrmFs4uAMFqjUkNdZpcCI3lFNUJrcDkM7mwRq7CIXWV7yUF/EErQBTFBEnaHzp88ke9/E1888VCrZy+3fu2xRZJ9zSnjijnJvvF3lMIbEs9k6jUKczBsPOxu8Xtk6VKVZ9aB4HRe7sDZ5taWXjqluVbYjio6IOBqxabUMxrDkgsONaErxChTXZT6iuPVz9d/7tZ2V9hq8XawuIcmaPw4DPFxm2NkSB+AER2rh3wLfktlShf81YKuJsD++TEe6zPdrGNAydc4acfzHYXLfXjO0u3XWvVH5Yg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7558.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SU9oKBDxwSUSQB4fgGQTUB/+A/oYCAK1vQu4+j9J9zZYZogzSYVl2H/NVwhn?=
 =?us-ascii?Q?pORjgIsEdPnAwzT/Lxcm0XBfjqjd0/asppj852PAtuiOhCRcjbtSTPvR21zs?=
 =?us-ascii?Q?G+ta8TcTg78NgpQKYZMLbpJTyc4QtdxFMM253I7iq7w0Z5BpOjqpVp3B/chd?=
 =?us-ascii?Q?kMNhr4E9EYqVaUB+O8ji8xPDbLyftUhvOs3l46TEtpM0vCoxarleXd++5RJy?=
 =?us-ascii?Q?dZmmlfwIqzrkthOmqMqYlJpJY76wf3lCUMTn3u+vjrXrVD1q67nhVlPq3h9C?=
 =?us-ascii?Q?xFJGzREVrB+tovMeZgpdIt5M7ybMedA30F8DCnJ9CKS66MiTFbGG7zhpRS/e?=
 =?us-ascii?Q?hatxBIK/DsQ95Ff9+7jNMg2l22HuUpGFw1VWSjQ+r9LrAVqzqGP60vBZ3ZTM?=
 =?us-ascii?Q?e5n3wpas+e82v4Qrmk2J3GUFvbZJOr7cOEu2nkDrMAjXxfQm2aKog+hgrdYy?=
 =?us-ascii?Q?kOJU5hisO0VXTmPr0IGwIqS5j2ziO8F+OIg78yPOxJkmPUnZ8X5hyUpujVlX?=
 =?us-ascii?Q?WX8rcMbxvifbu92CBOZ/qX+xXIO0odoEXlfgWS3JHcC4d+rP2msD4ivwK5sQ?=
 =?us-ascii?Q?vjtAE+G8Zd0fxjkrNRqf2c2uIT5EDuhi2+5wtyP3vetUPGpLr/vEe1Xt/96m?=
 =?us-ascii?Q?KXR74wDQAl2JO8fsGgZbHYrfOBT2nQdyAmTjIFrE+uoXfPcHHa1/6S7UUirc?=
 =?us-ascii?Q?oJHrrDGVI1UnT3TUlWpDLEvH33oT9fTt4Z4pITz/irCcNOA/7KQgoC8RnnIQ?=
 =?us-ascii?Q?dsfIoKYy5MqCTK3nXt3nXE3IeAc4ujLA8f6HPc3HyW+e5WSJcUMRkU+NKM/O?=
 =?us-ascii?Q?jMPTga25Gq2y5Vkj2BQ+dyj5qT43FZeB+LrZm0Byg4l4D355SUW/aoqT6exN?=
 =?us-ascii?Q?cBl+1Y740fUSq2WenHwXwgHvwGl3M8Xy8pa/jaBBn1y8lPtTegMJIXIXI7fK?=
 =?us-ascii?Q?6juXr1vmv5cBMgGBYPP1UNX6bwSsXq4F18sQSEREGn4nRaKgT9VkqC2b8fLc?=
 =?us-ascii?Q?X2l6WoEhcVUZhJR1lIcND+XHZTVqLFl35YYonhTIFEspAeq7hnLeAL7EfrtV?=
 =?us-ascii?Q?7mfok/nsoX+1qUwaSvif6T6lOV2+uomxIRWZrTLc1c0Pse7ctgzlp2qQBnWx?=
 =?us-ascii?Q?Kvv8jfZABW0Zim6vpsVmh6G4rVBUn2rnfnFl18DzU3M2TJM1sVnVBDq2Yjwl?=
 =?us-ascii?Q?8HIiJ+du396tyKYYpMeqky3tBHOkAgUjhXKIelk+ZNokerjB4hg6eZQ/m9w3?=
 =?us-ascii?Q?TQHSBoQq5VgQwKIE/1LxUE9KVYLdbqrDgk8FE5kF5oGXQDRS0KuuPOvHsLE4?=
 =?us-ascii?Q?LlnfmjndYTLlwGwXvOhbbuWjZrSE94FOhI2BWrKg/f6VewHZH4qHP1BOrPIU?=
 =?us-ascii?Q?ksg6ljFCtrWafLsnbemyLd4Rpa64JA9xcI9KGTjmnSBeFtuB2WHrdeyLj1oa?=
 =?us-ascii?Q?YV0TEhgw/V/AvCjW+hPNzDWoBoRLOu4U4ETlhlxudvnySn+akhP0t7HMr6yc?=
 =?us-ascii?Q?FaFROfNQ0Kvy5pBX071AUZDR10goKdChsITp6bNfB4SeSGcB11GrDWELmX3N?=
 =?us-ascii?Q?ynuIMS0iV8nYwB2caLz0GzRBi/nnt4P6Ny2GR5npYpotJ+BT4wuFn6cZmXdK?=
 =?us-ascii?Q?mQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7558.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eba2698b-6777-4c2e-61bc-08dc6046115d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 07:55:23.4699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wxrf0A73OB1d87nmP7Vp0zj1pb8tlFMs5l5Q4QpHBloXtvB9c1HrIWmYgs5Vs5tXOoAgVx5BZQL1e0Kn7RPoa3eLssety5uBq54PGrh/evQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7283
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 19 Apr 2024 15:19:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713513332; x=1745049332;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tG/Zt/w4xboVcvhEcG8G13yqAmz3ujzIikw1clregIY=;
 b=h/61/UD5rnR+h56OmSs9YiwivFo60HswkAcCtpVA/mwNmKJNw/W2cIis
 rJq2Sm0acytrBOtmBjC6oov/dX3KakQNQXrwk2vd0x88MR4RtsVYDUFBq
 hbCwfc9iLhz2YuZZA36Int8dyAoF9CTwDShJK8IyAB+eIxLqvOyuxh7lQ
 BBUKjw4saIb96eb7piom4GdFFtauX/or3caiNlcmHLtQ9nJQAdvRkRwbW
 yZxoycEwp5hW1yvbNgeXWlqyHDZdP2t0ToJCUy+76yeye+Xnxd4uOjUe7
 ktxgcWxlM4bPvWIi3uGZtiDurkAS8BzvAZgfdZTEtiMT+5VBk+k8j8wE1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h/61/UD5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Do not use
 WQ_MEM_RECLAIM flag for workqueue
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Devale, Sindhu" <sindhu.devale@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 6010a49..dbc4ab90 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -16727,7 +16727,7 @@ static int __init i40e_init_module(void)
> >  	 * since we need to be able to guarantee forward progress even under
> >  	 * memory pressure.
> >  	 */
> > -	i40e_wq =3D alloc_workqueue("%s", WQ_MEM_RECLAIM, 0,
> > i40e_driver_name);
> > +	i40e_wq =3D alloc_workqueue("%s", 0, 0, i40e_driver_name);
> >  	if (!i40e_wq) {
> >  		pr_err("%s: Failed to create workqueue\n",
> i40e_driver_name);
> >  		return -ENOMEM;
> > --
> > 2.25.1
Tested-by: Robert Ganzynkowicz <robert.ganzynkowicz@intel.com>
