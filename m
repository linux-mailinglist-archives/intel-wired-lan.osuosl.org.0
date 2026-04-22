Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AOWDIq86GkHPgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:18:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BFC445CF7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 14:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDFC16179F;
	Wed, 22 Apr 2026 12:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zeji-JafwZlu; Wed, 22 Apr 2026 12:18:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23DDB61796
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776860294;
	bh=13KO6NzULlcaGEa7fy4QQEO0bW9VTtZfJWNRxnJcaL8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tfVYSOSFwq5+cbpv8sOYv9hqOikFJYWgsdIPhw/XfUYnP20bNJq89Kxh1OvKeCalv
	 8aXF/4wwTvYT4N7BO6vTWmHisoS8td0ue7nndr8wQBqFQC6PYlEf64pBuypJbytb/0
	 xYIhHpZJtRtS5aQLn5R70AM/Eom3Olx3En3ZUCOTsfBrd5BukkznoVpaKbKMSvxKMh
	 7d2+TwHU6iPmVY261DZSfenf4yIBScEUOfYoBV73FRJbjwtUtbXPY/Ni78W4+wz2OU
	 MM4aV27EZ0/tHWcJaNmx30hIrgpdRXAoBInI+Cc1wqae97OZ6pWXZAWN+9X0TPVYj6
	 giWlRx+tpr51g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23DDB61796;
	Wed, 22 Apr 2026 12:18:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CF0BE24D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF0AE60DA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RqVgiSSkc14A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 12:18:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arpanax.arland@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C4D2260DA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4D2260DA5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4D2260DA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 12:18:10 +0000 (UTC)
X-CSE-ConnectionGUID: ua/uwKJ9RX63rE5UUPiwyw==
X-CSE-MsgGUID: pTHdov/ETaWnqOkOT1s0Jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="65345716"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="65345716"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:18:10 -0700
X-CSE-ConnectionGUID: cvC270MHTMOM8pMZK2f1mw==
X-CSE-MsgGUID: h2hc1J6cQR+D1ROSXruyTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="232203507"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 05:18:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 05:18:09 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 05:18:09 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.30) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 05:18:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QYwz1isCc+PGvZlXg58GPa2x9lv9OUYhT07EOSHRoU84Uir5UJuHLJ3Mn6KIE5kF6lwv1q2mY/7tRqATZUwO5e0+v+OKdYtIdNKw0ciKJ4cHGGx9tIfmNZc4W42NztCutBQbYjiWaAdH2ZeSfLyt4jpxDNnCqORxCfSvSqt8ojjCh1dEbVn29Ihm+H6W21n4o365idZxPLoeyDUAW11i2MYVl+N5Kb/JXbKDinn6ao+CLkDuK4J8g3KDTTDHPZ2gCSPbBhaxZbUcTKXws0LgSI51Zd25DxJatv5gfnmfBVlDqtPdx9VBfPQJrHtS9GNE8ecBmN0A7o5A0LUsYnS+nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=13KO6NzULlcaGEa7fy4QQEO0bW9VTtZfJWNRxnJcaL8=;
 b=KkRZg5tPfftRDUnO0DQ7WnKlDvrYNZwR/sxe3kuqnHVjADDdTShj4sCiIc5vq5J1c+FOJQUwc0xckeAjVFNZlFPWONnrdyLgg+ujC+XRoxpaTETA8OmJaAXplAIXVJqdUfNm+cUcvIARipV8k7I/BRiyUPhssYJZohDYeP+oL2hzjiqYNvCrVWFGd7LyASvM6pQitd0J/Qzrkboo78R+O0uphQjB8VWgCBllPf4ZDcjOBiXSzZ/dZ0ZURAgwAsEGd/nNxjroD0aGZBmTZ0rG4KV9hkuvDkNOigXn6wzJaFx9SoEqvVX9Pi5E+Y8WkJus8AhiPJiQZkR7FU5/5eqXyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB7155.namprd11.prod.outlook.com (2603:10b6:a03:48d::6)
 by PH8PR11MB9533.namprd11.prod.outlook.com (2603:10b6:510:39f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.12; Wed, 22 Apr
 2026 12:18:05 +0000
Received: from SJ0PR11MB7155.namprd11.prod.outlook.com
 ([fe80::a279:5eee:c8d:31c9]) by SJ0PR11MB7155.namprd11.prod.outlook.com
 ([fe80::a279:5eee:c8d:31c9%5]) with mapi id 15.20.9846.011; Wed, 22 Apr 2026
 12:18:05 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: Bart Van Assche <bvanassche@acm.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix locking in
 ice_dcb_rebuild()
Thread-Index: AQHcuLCWnjR6OzAcKEmQDMRcC4xxyLXrJETg
Date: Wed, 22 Apr 2026 12:18:05 +0000
Message-ID: <SJ0PR11MB7155B534C1CD04460262D10A802D2@SJ0PR11MB7155.namprd11.prod.outlook.com>
References: <20260320212824.264252-1-bvanassche@acm.org>
In-Reply-To: <20260320212824.264252-1-bvanassche@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB7155:EE_|PH8PR11MB9533:EE_
x-ms-office365-filtering-correlation-id: cc707bfd-6675-45c9-7a55-08dea069350e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: fwVBOQiFYt1HtyVeTMxayfU0EZEouDUVm7kby6e4MMXmi6grqQdPp1hvqtPEUHgQwZn1JUqW9DTFgy762qTZ2Zp/ysn7DxrGXGJlOFJAWhT9x8VJFALNk2DKhaiCtO1qzb+g+SimaMfO5x9yBXhfxGC2YM3VsI3pMK+OxSpr+YhhkWafUlAXtBbpI2EUSN7J82amhtUVPzW/7Rc3Sd9Ha9s0fh6yE76Zhi5QeWxLXy5rMdwE4lmGLQgrB+zyzbD5YqDsGr+UF2pZziH420fG/9WCkq6hzXp/zuBkz5W3CZKNSmn3IDDMuprPObg6u4/oTbJuikaxBoXnqlAPqM2oXnK9E17esXXjD7dKypDZAMHQKG+ueButh4SouqyI9zuKj6O2tg5u71odKH3YSv1bZF2dGmv0IYWUEPeDsSlRBH7rRQUr70ZbKhMiN4R2bXF7nd6024RJaqz96emIgkH2NSNRZgs8zhOOCwmStBY9fXG+lSk7A4pRXakKgnkAQJnnGtH/MzsF+k5xC4d5MwOWK4BjA2GdY6GB4QkC80MYPZr0PEembIkj0B3m2hGv+K+rZQgevKj20vbRQE3UxL0Vx2gOmTR6LvGnlfqHMQumiz5SGEAbVYyXNyr8DWhVOWRgajSOwM9odVI0Nx/Zq/cfROh78niQPh9QOv2N9YX5bchHGeJ4VP5xTmHxSWRzK8Bfb9SMjtH2oESPBxlySmpaDJzqhYMVyRNDtd9It73zU/HZKKG1o/2N2k3AwNTj04fs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB7155.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9PuWU0AvV3PhcFrfVtv/ZUhHZw94e76aI568PFpFj+f7trjbeLNM19zj79z1?=
 =?us-ascii?Q?qz5hBLioo7u+mwNMeTkWTd6qOFdRv+Yhrwgb6F14v6xyg0eP5kEBd5aTGgOV?=
 =?us-ascii?Q?wo0th53wCAGtxa0TdZat2oCMzILr6zg0Cb77BNdDGsA2c5ZQ3An02OEVPI5C?=
 =?us-ascii?Q?ToZiHFSU0bGNaS5G1kYkMMErpJf//yc4VLDZ/t19aE+K2B28vC2AUb2f9s0h?=
 =?us-ascii?Q?RwTXuiRFyooRRtt5HU8GDBbvebaQU7oZl0kxIAtUlB8zNivOprd04ucxEUM6?=
 =?us-ascii?Q?YyRLGyQiwYsIaPFAnIIv7CEKau3ANF06d75NZxYQkXeGI+o5rurWUOPTXbLf?=
 =?us-ascii?Q?qWn57L01wH8DBDUGrKzD9prTKQo3Z/lGkOXQlZ1IS8+uEZ+XUhmgo/S1vStX?=
 =?us-ascii?Q?hYkwQWox3k6kUQ+bQtqHkgmmmZKOSZl8WX3J7p4nFWy32OBdK5xkm78WPnIq?=
 =?us-ascii?Q?oDOD++YuFMNRuXkSwvQjHWo4x3bS0jQNTqGiwMcHN+cnuer0Fye4Le3cVwWA?=
 =?us-ascii?Q?4UlN4Ghdxw+bNPWm1EsbuvZdheGZyAH0j20XZb+tBd9pl19ABEcMSvrBXI6r?=
 =?us-ascii?Q?lQ5rlwj2mnACwtCwUjMo+vM/IzZrxFVevxZCJsfP6Nd4Hj3ubd40xslZrvEb?=
 =?us-ascii?Q?2NxpANSI+qppSqj6QkstwSAA9emnziEjTw5P+RiaYCki/9l2HRggv2PWnN1X?=
 =?us-ascii?Q?8kD5ifQcx4kuR3VNbUnZHr7InMAbvmezz7ZkBkchZPOxC6SGcJs1zgm/4hFs?=
 =?us-ascii?Q?yf85d6lNY6RLPw+2lnP3j4Fa9LcS0Dcf1NMlA4JZ32alzRnhlckyo+TRLlfD?=
 =?us-ascii?Q?EXs0U36t5zi6if4ZqsxafPUNS041kqlYEU7GvzIuO731KquH1d2ag2FKLWKc?=
 =?us-ascii?Q?rlXDbv2+OQ1umxT1r0xhgIWNbdqZCvWQohm8EKwrLpT0BOXhoptrfGkmlZcX?=
 =?us-ascii?Q?9RW4WVhOAhr8MUvZXi6+gk9wFilxiBxB21odN6uVQHKF/UjbVVuW+9Ro1/5d?=
 =?us-ascii?Q?Bv+nBhn520CAPRSkpHxF6tqoh5+UhGr2xpWTk+hzvXOagFlpEEoxqX+GMcd8?=
 =?us-ascii?Q?o0B+h8VHoAsuQWKHtj8QP3r+THJSKD1Y4xfWue/YSseicDNtZqxjjBag0u8p?=
 =?us-ascii?Q?lyqBGXkVujwUN5M0xvPcepm8eRew6Aj7FgJ/yJqtII2taL4Ge+vKhRhDOj9W?=
 =?us-ascii?Q?DS0n6GcYK/6b7JRxsrbEF6NSYfBmO3QzwlfdggMnX7u9CvEiCzMd6UaXbo6F?=
 =?us-ascii?Q?UgTpzFftlQh1m+pz0pfL6i2b0Smii2hK0xEy42kGMxg/ZJboOq271X+RiA1B?=
 =?us-ascii?Q?rlsfq93rPk85pfNs0NjrMEcAtNw15gfnDrKxSCPZLMP9EtcyelEsp5LvqFY8?=
 =?us-ascii?Q?a9Uv8L+/b7E4zqE3haKOtY0G5SkCjTJzkFegKfJvhvaUbRfNvpIQqsne9t5v?=
 =?us-ascii?Q?MTL7Z63931qcRs+72+koADF5LlFCoLZ0KYjX/DcwWMGUPyGOqHe0zr57v3Og?=
 =?us-ascii?Q?dunlynuQwt5XgHhDTZQiTByAARXyuiRiQhX4m0WAsGdCWVJaky0EbFlPcRGT?=
 =?us-ascii?Q?/6+8V/Hw8AMExSnnBcLiKjDmO6Bo0vHvDMxziHGfeQCOa2sKpz7wztDZSQTg?=
 =?us-ascii?Q?3rJpduyJJz4Jo0b1y425LftHoDlklV7DhYQt/h6H9X47ijjSBUlc9a7Gt81T?=
 =?us-ascii?Q?AhxuZWExfYuj3iy9nHqPCq9e6mMBM29Qwj4WJv7H8JHnU/BO92x9NiFYFcf9?=
 =?us-ascii?Q?+29uY/m44A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YkbTCnQPS+zyagRiKTEwYgMR4EVREBpbpM68FUiCczZEM3svmMX3CVjjnOEGhri0c5yfVlcizcesGX3flCEDk33Nj8QqmHaHwahxJWcVz5PqoCw8tWeQBAnWgNLbiE18m2F3GY11Y5eyxkDkruWh4QCUrl9I539F/M3GvyYjoX1xgVhNGrMVYsWnnb5Swztd3f5iM84yzoMnw3OxfpCpV8afX/PEWvHDT5cZg67CLzZylW0tpqNQUFNFv5//wH7f9OysIj8+0CQ3b+0P1PKQH+rU+jX/zZVYKfD00MIz0ZsO/nEzRjNC10MEHXik/liYFa9wt16xa2MGll3MaNKDkg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB7155.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc707bfd-6675-45c9-7a55-08dea069350e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2026 12:18:05.4966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /qXUP6aHdKxAiwD9NeaTLHArEq9mtrJRCykvxwmRDagAemb/WDA14Hjmf4ArbYc/ebc5dREBqV1fQPLIz45gMWiPz0HsA1D644OI83+UD08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776860291; x=1808396291;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dYaSeS4E6/oHKqbqWvzykdkUly4u5iekGeVRzbyhr/g=;
 b=PvecDRIQ3C5vcxtwafkzaxma/3MboWcUKGS9gFIZIsmmRgQLz7k7clL9
 Mnisp9CGyoa2x9ABXwptwNWplMdOwaVJWHDBM/8DA2nsqHF7eOCLhVCJM
 LOwEMMX9O7tz6JZQ9crcfmgsYxKZAgZ9Aq+2wlBBjx/ImEixNnBby7c51
 EPsagA+DQ8b5WW3qKvTMjL7yf0/Vooczno8M/ig5wCCJZHZB11GhVZdr3
 +0ocScg7ZO6+uAj3C3k+1fodEhii0gnCEOepZi65CbBRRGoou1fdaxB0z
 fJln+go9Gel+8VHLYaXtS54UlUJAGW4xhgsZuHSkFdrvYzNpk+LFxfq9c
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PvecDRIQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix locking in
 ice_dcb_rebuild()
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bvanassche@acm.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[arpanax.arland@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[arpanax.arland@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,acm.org:email,SJ0PR11MB7155.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 73BFC445CF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of B=
art Van Assche via Intel-wired-lan
> Sent: Saturday, March 21, 2026 2:58 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; intel-wired-lan@l=
ists.osuosl.org; Bart Van Assche <bvanassche@acm.org>; Loktionov, Aleksandr=
 <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix locking in ice_dcb=
_rebuild()
>
> Move the mutex_lock() call up to prevent that DCB settings change after t=
he first ice_query_port_ets() call. The second ice_query_port_ets() call in=
 ice_dcb_rebuild() is already protected by pf->tc_mutex.
>
> This also fixes a bug in an error path, as before taking the first "goto =
dcb_error" in the function jumped over mutex_lock() to mutex_unlock().
>
> This bug has been detected by the clang thread-safety analyzer.
>
> Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---
>
> v4 (this patch): Changed "[PATCH] iwl-net:" into "[PATCH iwl-net]".
>
> v3 (2026-03-20): Modified patch description. See also
>   https://lore.kernel.org/all/20260223220102.2158611-20-bart.vanassche@li=
nux.dev/#t
>
> v2 (2026-02-23): Combined the two patches into one patch and
>   increased the amount of code covered by tc_mutex. See also
>   https://lore.kernel.org/all/20260223220102.2158611-20-bart.vanassche@li=
nux.dev/
>
> v1 (2025-02-06): Two patches. See also
>   https://lore.kernel.org/all/20250206175114.1974171-16-bvanassche@acm.or=
g/
>
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
=20
Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at=
 Intel)
