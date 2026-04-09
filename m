Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMCeHK5h12keNQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 10:22:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8293C7B36
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 10:22:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B60440F45;
	Thu,  9 Apr 2026 08:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDRUnC8sE4Se; Thu,  9 Apr 2026 08:22:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F4EE40F1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775722922;
	bh=n4xAlaJyy/5obYOkHKU9R5HrEnwyBTQX1QnIEYFiTgE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UwBUgK2DHvid1tpirA1QbmvPVuFjWFuVbPv1j//PxwDzBSc5iohiRPR9TDttxFDKp
	 lAmIuX0bN0cot22+9A+3/rlMExGE8roCDg/lM0FEK2Jpa7/1y7osPLwCilHVoGADp+
	 +P+HFPyHDPG+IigDA1qe0AZ36jYWRHBD0oFk3BOhm8UtukpaUpxjQ8QKiUKIsjfInH
	 rBhozXKC152cfrEKVY6sGNTbWiijGtSivZi8SlPJw+8dIbd0bK5728QwFmtr1xoI6S
	 cmE4vpOWdZ2aJ3cOUHWoOvGVETKZ7EtsrZKXYmKMhyq2QMiOHWXivoEvsmT9IpH7mO
	 OoqAxv8a8bgWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F4EE40F1A;
	Thu,  9 Apr 2026 08:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AE461D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 08:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0C98607E8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 08:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UyZG0X-r5Qru for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 08:22:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F238A60735
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F238A60735
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F238A60735
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 08:21:59 +0000 (UTC)
X-CSE-ConnectionGUID: NvlBx12NQsiadUeHtccU7Q==
X-CSE-MsgGUID: IhvvZjkkRxuyWHICfWRw3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99348843"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="99348843"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:21:59 -0700
X-CSE-ConnectionGUID: tYN4z6+aRX2P+E7B/HL/xg==
X-CSE-MsgGUID: xFNYUamqTeeYHlDkvobrPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="233079515"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:21:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:21:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 01:21:58 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:21:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B7Vl2xU1uvLdcu457QrVisbbv+YsCsl/HbIvWlPP+hFq4fTmwlxUb7f9IrE771ryHLcLdvOdBo591LYpzobHgbPP+bL9zFLapZvHX+2QssPiRDcAS+Sa2x4vmFuwmdrXM5xThHmAJ2ZCWI+QQwu5BASn8AsPvtbId8FroWXPhqgPbxxHPq1325aMhLZBIE/57yPpv5XJx8GFwnq2c4X05/m/gg7iGJNcwEKaN4ihpogPqKENjQmcmrjsw4HGHv0H/H0MSgo35YqufSJ8FuFumDMk+gglWHTi2wcTfE9XagKCQnah/NXc2ePt7+7+VDDdZjSdfw8nXSxFuYjfgwB5yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4xAlaJyy/5obYOkHKU9R5HrEnwyBTQX1QnIEYFiTgE=;
 b=PyijPXn34cNW2EVnb1vyzHlwwzGeXVtcPG3a0NIwRorNbaVu5j5VJxHNdYxTHkA+d4RmpEOEKY8Y/FFS3s9Qzy+VBJP1lPzqFrzIwl14/1KYInUZZ8NMpLmnePYp+Kwy4KB6/x2Qrj40KBZ0hFiUZAYIAlgjb5cWUc1de943GeEmbih+hA6HrgAimIF8IOKiZwf6zb56b+mMVZII+laWGDPW95zLp99Ovwj9Iv9viNwzHTzKCKyHjpfntUXlWDkykw0OFr+5sySO5zQxSlE/0YMeAZYOEfZb0t1+0qK/CjMX0bZ6QwSnIOq1SNwTq+bL3t9nLBOe6jP6+wURJWlOMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH7PR11MB5793.namprd11.prod.outlook.com (2603:10b6:510:13a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.42; Thu, 9 Apr
 2026 08:21:55 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9745.012; Thu, 9 Apr 2026
 08:21:55 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: add 0x88E7
 handling to SW validation paths
Thread-Index: AQHctq5Yrh45DUTskUGxjsJefi3eyLXWhlUQ
Date: Thu, 9 Apr 2026 08:21:55 +0000
Message-ID: <IA3PR11MB8985568E0F47320BB0AFF1568F582@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260318080737.3012293-1-aleksandr.loktionov@intel.com>
 <20260318080737.3012293-3-aleksandr.loktionov@intel.com>
In-Reply-To: <20260318080737.3012293-3-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH7PR11MB5793:EE_
x-ms-office365-filtering-correlation-id: 5fb4e4f4-6376-4341-d762-08de96110fe3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 9s1cbz8EhkKvuuroXTrvz4lcdELaJGM2ouvEtQIE3Lnx2xoKDaP4xTTYO5Yc9cKigAlnEe3p79Tht9cxLcUiKy7PlYpGxokkBIK9xvhJNNTtEukfIPWBJEQUZNw0Wa4uhQZauY/LO7XpVepRwhxmxTDdEx0DtuVTwqIUfiqFVFvhG9psgkAjNUssAOedADwxg4MAfvvsDbzXghGrXSxXvExu+L/fWAnH7SN23prcOIPJfV6vZ7t2MWo2FRoZlzicjLo/j0oV5Bz0hBy3HCcsQnwoDC/zulVdCTSzz9EFpOm7Q3XjRK4W4LwqVqsKnjEalgIb6nNX/GL9x6/5Tgd1Ctoveee8jqQij5lzabs5sGJTznHPqPndMUbUSwHq4ty5RQ+SsmjEpmcCib5DRZzF1fWaaL7TkHL8IiR/ZwFsDUnXcbZiwFCFN6hwiAbckkuSB6GMKpGwje8ofL+PlgVLsAJGR6omXyjq31B8groEV2NbCOCG67g7bS7GtrMbTENdUTzzr+cC8kRajwdqMhG3LtdWgEo/AAE2NVesZQ04OXPS7EZP+8xmKGcYDydqL3/NrHclBayFGg7nYg4T4BJxkrztfFAZkRYhTviuE7Lp0yOH8HDMJgSK0bCKaccaSWXioUtjk2NgffoKLHUkOjwejsFCOsY2YfE9sxgekoFU2MFbcicTAwovxDqO6JEJIICtW7XcPQUXCb5OyfEGob8ZQqvEJEU5QeB+3qXnW0vH0KKquyP5oPfOTjwDkomRJGlNGz8QcWqA721J4wWc+Rs4/BFVdBjwmf67gx+vWZq6haE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TO4EYAiaGIw6MibthemI0Z7aRuJpbdlOZDAjg0SWkCYpip3LiHucTHT5Qx+s?=
 =?us-ascii?Q?JkhW8DMJdCBCzQXpy0ZUhbKiOxUGOJabD8GD69YUhUp60Tdd2IrIQ6G7nqzh?=
 =?us-ascii?Q?D92wDkcstpKxvhUneXtQNEDftEXuJU4aQUjCx/NOV8D5UkRsgxIeF9WuWrlF?=
 =?us-ascii?Q?/cY5mQlpcbvDa8is+saXqBuupYc5aUw8WxvZGD5l5PE+b7o8qRKZQdmELc7V?=
 =?us-ascii?Q?G2auqEXktetWWqDEtITgsOQWub4j82U4RGTUr6myUZUhy4B12ZLGHhiJiGRt?=
 =?us-ascii?Q?i8XBloxK2mg2KME5Qk3qUHvbCs/7TyFIrtpizwoEygat850b3KUf1Myt/YOa?=
 =?us-ascii?Q?U0lGdd5Ac1cmy7rt/DHkUC56OzAGFscEnGtShn4WbXsa2Qm/5rE2PNU4g0TM?=
 =?us-ascii?Q?hYYOW8jfGFVVj6Dr6XcnzvVgqzW19atd5T5Aoub/xuMY1w3sOJDnWnIAcr7O?=
 =?us-ascii?Q?3z70qnAZuDnweJBJ6AySwgrkWyehF/Cda3/3X046zzq3lbXM/Y9gtAgt38Mt?=
 =?us-ascii?Q?oOCuNwj6syXwAXY7XkiAIJUIT8FGnMMitWVqOUG0YSh2Qjh8PRG4BQmyS5ae?=
 =?us-ascii?Q?oW4UNHwEfByyUQoa+nerdyUjkSadEYUTkhWu1ptY1KErvF+rVhahjtYRtSt4?=
 =?us-ascii?Q?FhwS5yt7ZFaLgbTo0BXm01pwFi2uZ/wochWao/0Acm+iNQI/Qj6kjFLZ4Iy0?=
 =?us-ascii?Q?tVVRRj6zE7NEIrgZW08sdZa+ftw+OW/xmA8IcoLi0BF9Bi7LZ8+oqsaJsLJT?=
 =?us-ascii?Q?Xoj1fBgUHVZ6Km3NnpIj6/DsjZZdEkl1xa67YOuo/XWVtmcSGfBr0nmolOji?=
 =?us-ascii?Q?kLNcD5YN7KJjH8UNtQd1sMnNvxll0r1Fwu3VvUtPWqvUfUJJy89xP1b029N4?=
 =?us-ascii?Q?k4WKScCpV3cnhkk/NpunVXABmxxzZTl9CycEjcciGRX1SWxWsSZBgfmA/HmU?=
 =?us-ascii?Q?23oWJ3VB+2yKRVX6kMK+gkjU/sGW42cnS33CGy64VNsK9Yg3Wieu2mpgMdKA?=
 =?us-ascii?Q?nKdMGWrzpZuU/uYwnX12YDABdQKRLdxwINaYCe/nyUepokzF5jcmZlTjyuol?=
 =?us-ascii?Q?35kCFt3pvGt/fFQXXCoA15RXQKMCL5ZMgHQcqO9Nd//raOTMESFBgBdrJoJZ?=
 =?us-ascii?Q?oHKch+Y01cpyOzlt22hPkEgaLmFk+EGy/lWt3BEJh9Zd78Y42U2n7nSqFE5T?=
 =?us-ascii?Q?o98BraKofXWsHmzapyBehSWh4kJBAsdMkhcymNUszqHiWYNr7L+pPL7ah66/?=
 =?us-ascii?Q?MV4sSG6IbWtzTa20Fph5miVz/4ag8M2lEgoB61ELvmrMxftre63rms8YKOv7?=
 =?us-ascii?Q?4fm2iHo4BQfeWXsSsRelvVoip6pvaZ3Hl6Toc9Iyci6VZlcYr+0eaYLsYWJE?=
 =?us-ascii?Q?AZ9qiiRG4/JLHgWU8IEi3cENTdmmcnyZOT7znHiShkDIER3wX+0JIOKUKCYF?=
 =?us-ascii?Q?zVZflivjmw8vDiaXUox1TE9/0iKlkQmLTx9Mng1mGUBwWUNWRkJLuTnZ6rwf?=
 =?us-ascii?Q?cvld1ycBshBfyVIyffbC9p1mW8EKfBs/1p7REpqU1T1HKfK4B8uNiHyaa9Ml?=
 =?us-ascii?Q?CpCU8Xl5p9pZSA0/yuXA/H2U4oQbs44KrsCGLegoVWLa3bdnPEtA66myAeuM?=
 =?us-ascii?Q?oeKRRvFK3hOrpebbUWUd4odX7rDBA2olL/CKgUkIy78blv6CtR/30RbQ+yHu?=
 =?us-ascii?Q?n/BGrEEYlvWzcX4IKezh7PNvAHA2X4I2PvXkmI0vv6+UrEvdGT/UHpjLUZtd?=
 =?us-ascii?Q?ut3p3fN8/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: T/1KLVrcq2WYJs5agu4ZJ31YaKqy/yE3WvQSTnPPemZb3DDwhBCDa5d9cj25PZe2nz413IpWEUr+/7TJcy/b6NBMkLEb1P0xr2Il/3wmIxL0SnGIX5pRLIcSgyK2DgASldM9/o/WY2RPhq22+zqFxb2iLUbPrH4336wa0B4XqsAHU2sSLy1XTxonB81yB5Su03lHif50+XbaRyq415Vi4xQ2PBYPRMomgMW9wojUib3zPBWzS2ADoUqnz2lvRG1ISu2mT7fIg5bsExnZo+o1wFFv2Q2wALkPSuJCg1HzXUOTfgizuGpqOtnG5+5uSrpbeQltD3WMTxk7n1Yo8/I+Ww==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb4e4f4-6376-4341-d762-08de96110fe3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 08:21:55.7877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q75EdvCz/NgPfGIizMUwuDI/C7spGXBUzIGwfQfbLspECm5z1VfefCglG6MWldntEaZL2ghFEBkxPvvzkPDO1ypmd6v+wtHwXfL/CA/qmOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5793
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775722920; x=1807258920;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UaIc9ri4YcxXAA/ZX06feyl8qcv+jKDQvL6/lnfujxU=;
 b=J8nLmGgIlJ6ISZncqz87s3AAY0kxK92nBXrg9h7gQ9eDnDJMyBFVhjIU
 OAACvjFgQGIylr06IVhigxuXyDBlo+KR2Ix6L7UAwukmKJ74X+5lGoyNF
 9t3VdB2/z9uytQddijGCcBPw/ErQudUzRhkKSAZcNYC4UnfgiphIQvzzA
 agwDgQP4oZmsWKSMZe/mVcg1DrF9IoIfBcbWyVfIRMuUyrY78UNus/MNx
 hfJRQqTamQleEU+lAC1QhtSQd6RcOKggJKXvkawyTWmTTY4yXBFg51jKA
 bWcS8piGyXfjoXEW0sjgFkS9pODJrWA/aQ+4dMtZYrzG/FrIvLt2Qjbtx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J8nLmGgI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: add 0x88E7
 handling to SW validation paths
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 2A8293C7B36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Wednesday, March 18, 2026 9:08 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: add 0x88E7 handli=
ng to
> SW validation paths
>=20
> The virtchnl v2 VLAN capability handshake now includes the new
> VIRTCHNL_VLAN_ETHERTYPE_88E7 flag for IEEE 802.1ah B-TAG support.
> Wire up the corresponding software-path handling in ice so the PF correct=
ly
> accepts and translates 0x88E7 (ETH_P_8021AH) VLAN filters requested by VF=
s.
>=20
> Three software-only changes, no hardware offload path affected:
>=20
>  - ice_check_supported_vlan_tpid() (ice_tc_lib.c): accept ETH_P_8021AH
>    in the TC VLAN TPID validation switch so 0x88E7-tagged flower filters
>    are not rejected early.
>=20
>  - validate_vlan() (ice_vsi_vlan_lib.c): allow ETH_P_8021AH as a valid
>    TPID when adding VLAN filters to a VSI, consistent with the other
>    accepted dot1q/dot1ad/QinQ1 TPIDs.
>=20
>  - ice_vc_validate_vlan_tpid() / ice_vc_get_tpid() (virt/virtchnl.c):
>    bidirectional translation between ETH_P_8021AH and
>    VIRTCHNL_VLAN_ETHERTYPE_88E7 in the virtchnl VLAN v2 filter path.
>=20
> This does not add 0x88E7 hardware offload capability, does not change out=
er-tag
> programming, and does not alter any datapath.
>=20
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c       | 1 +
>  drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 3 ++-
>  drivers/net/ethernet/intel/ice/virt/virtchnl.c    | 6 ++++++
>  3 files changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index d20357c..4560e55 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -174,6 +174,7 @@ static u16 ice_check_supported_vlan_tpid(u16 vlan_tpi=
d)

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

