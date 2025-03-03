Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D33A4B832
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 08:15:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1758840810;
	Mon,  3 Mar 2025 07:15:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DDcUwI6iWr7V; Mon,  3 Mar 2025 07:15:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7CE840812
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740986132;
	bh=8UJmPd0qhHzADFeVp0xTfE2aa04usdD9za8jAKBv7Xw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5baQ35SOINBgEgILFZZ+scuGXTILjBTXIDgwcgvUZ+JYXD5Sf0T9TeT0LWR+3p7wg
	 DxzU6ZBZBqJsypXqrwZmLIO4AzGnGtH0Ut9eM7PpgOJkB0ayhCBFq4WhDRltB2qaw3
	 s2fxrPLzHfYxWrPjHSTWekfi8xoZof4LJuz2UfTZatHER2zMXrA3uKMccjIq4+uQfj
	 lhTud9eZxvXlof5O6y89Th+cNpEdA1x6bGHjP5L3q6aaf2I1aQh1rd8Tu+64nT0/9T
	 vFB2wbCWNEeOj/GMXJNErBnLl9mGFjRahIi4ty6vPS1qrk3cGexVXmxL6NXeorklth
	 +vedoLoUKahJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7CE840812;
	Mon,  3 Mar 2025 07:15:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 42A4B182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 07:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9673F606BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 07:15:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id veCjKu_RTpHx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 07:15:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9E92E605EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E92E605EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E92E605EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 07:15:26 +0000 (UTC)
X-CSE-ConnectionGUID: ELC2hYmsQYOCA11v6o0WnA==
X-CSE-MsgGUID: gxu5UyzkRvWZE4H3aCvoKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="67220018"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="67220018"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 23:15:26 -0800
X-CSE-ConnectionGUID: d8jfne1dQm6N5jA7zjDb4A==
X-CSE-MsgGUID: Xs4n9RTMTOacj76Clq2ulQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="122881849"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 23:15:26 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Sun, 2 Mar 2025 23:15:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 2 Mar 2025 23:15:25 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Mar 2025 23:15:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AziihPsWNR9BMpgMQ3oIW2Ghtea+U8ZPHoko0xDES9fGESZOTh5JEd0DvIlY/gPNIj6isBdccWBY31eTwmoUng08iKRa/RC+YcUZvJazaMn23SVn54H8H2jKPWXHjx1Z9+8hL/nEg1zgHqxb4oVG6lbjnHCyGajOJMx293MS24BrOfOJiZEhWkFdDlxZxbUhTgVkJv+Gf7wk0ycaxkuGmMxvd+DZL7UiAqGWyml7agkx8oUwjFbuAdvBnMEU7pBw4iV0p4B1qJeo50U84BehWJkwl2XAHTML4T3MNWl4oxAMIxBVcshgyyKbbh8xCvRG4WJcKz2dxAMXQ+QoohtWKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8UJmPd0qhHzADFeVp0xTfE2aa04usdD9za8jAKBv7Xw=;
 b=r+39q4+2VXHTk66TlaJUPU8CrHS9kySBlGbk39IcYS0ua1yNOqYKwyLId+F1mCB9Xxa80SHFs47NLPd4F+iCJZVLZa2aSNc4CDMdfPvWG5C4DhYtJoHwpxQxyIqGXEUMkiqwujyzdnbSj7ttlhMKHshlBjMu8aTRufKPNzJKC3Wi5CIbvzjpLQE6Df6PyURsqbTcdV+K+FpCLtJbPq6ZxO1yNAgtA9N3/mriC2JpRuw9RaF4019Dkyv/3hNXRI60uEJDsTOwAa+9cQV8711Tj1TtvvKviYDgWBcqWDMS4bcf3LXJ9tiWL46v0NbN72CU1SuS+T+8M3cWWFwEkTAOww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7518.namprd11.prod.outlook.com (2603:10b6:a03:4c5::20)
 by IA1PR11MB8864.namprd11.prod.outlook.com (2603:10b6:208:597::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Mon, 3 Mar
 2025 07:15:22 +0000
Received: from SJ2PR11MB7518.namprd11.prod.outlook.com
 ([fe80::81f9:67e4:b75:88ce]) by SJ2PR11MB7518.namprd11.prod.outlook.com
 ([fe80::81f9:67e4:b75:88ce%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 07:15:21 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: register devlink prior
 to creating health reporters
Thread-Index: AQHbgtkiWu0lPSgQQUisiMdtITKNX7NhEWlw
Date: Mon, 3 Mar 2025 07:15:21 +0000
Message-ID: <SJ2PR11MB7518E04732616719793BD4C6A0C92@SJ2PR11MB7518.namprd11.prod.outlook.com>
References: <20250219133039.38895-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250219133039.38895-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7518:EE_|IA1PR11MB8864:EE_
x-ms-office365-filtering-correlation-id: 112bab2a-7b94-45a8-1c43-08dd5a232935
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Ak64iTr1SW/HZEXAqV2zRbXoDZ+4T2G+3Qq0azCaGKhQBaKOKlSyuN+XkCxu?=
 =?us-ascii?Q?2RNWLCuNMbx7/gmsXIPGQzYUtlpZLldMt6iTb3gF0384ZH7N+cHJLt0HJ06K?=
 =?us-ascii?Q?QZnKtjojtOHsjzkNU+K5pUqLUJ8Q+LEhltcdGG/uEhQgfQi397Eii09+4V3g?=
 =?us-ascii?Q?3+YCJv5atWq4VDKd0CAV4ogTx81rJ7vYc2GeKUsesU6ta9uFLQhv2f1P1hjB?=
 =?us-ascii?Q?1PxSPUcF5SpACO/ruWnt2MVrvZbCDhs0VVykfNrjqQrW+OumeuYfCGxhxoWE?=
 =?us-ascii?Q?X1otNGeN9SiB0vMTIPlLQL9x824Z1GNNYHLx8iUG4r7LctwcGZ5qjK2W5hvH?=
 =?us-ascii?Q?JqGd0kiwanc6yTce5WoEB5HjZt7OpVy+G2H2FlTbnTSBXyzfG1eDjYqjrD+k?=
 =?us-ascii?Q?XQ5hHg+Qb+MVftNjuYCg9WMwhhJGkWgwNWgCI+UBrpa2CSZYq8ruN7uY0Q7Q?=
 =?us-ascii?Q?Sf140rIxyMlWQLAbonVNr4LRRefd/33DdDWByNfHn+uyX/eag0nKiyuS7elG?=
 =?us-ascii?Q?LwJZdm22q9ImgxSfMjCsqmGo+4ii+8IE0U34YmqlGCLgbsbqGp7kOxNezLAg?=
 =?us-ascii?Q?ueGbTK4961oCjeaIj7QiMUQCd4WLceQFR6UvsS1hGyXxCdn6W85rUoqiuwBY?=
 =?us-ascii?Q?Bvosk9NqdzZ9d8U38l0rJNvzQqUizFRlz5/gwgIjemQUto+8f8wI97SzmYJi?=
 =?us-ascii?Q?+iXfHPzPyp4w1agTGp5y9frhdUGsi5qbdRX+U0xo2B49WnRT8yPX7Da3gKr9?=
 =?us-ascii?Q?xm/Lg/VskC8VeVjToOSWA2TfVO0nyZf4SfY1+0/A1SklUGnplPwwntCt/9oR?=
 =?us-ascii?Q?U5ctZGkyaue3UQmMh+ltLdi826NPNbgN1YKRLaji+8LT+nLD2jbng8zz5I1v?=
 =?us-ascii?Q?Eh2QncL1dCV9kQqPSLanvsXRiy8qcAUP3KFqD7vZpXDlpflckcx4Bbfz04oS?=
 =?us-ascii?Q?YnBMs/cSBr9feH9WYG+tAgHTz4djTV+oZv41zCX1rcMihjFOOI/W48ZwF9ON?=
 =?us-ascii?Q?OQksHiGipOdlpOcsgZal0KMwYp9U7fhu/y4H3aEhic1GHnl9Zvm107uTVB8F?=
 =?us-ascii?Q?l0g9z5l/rSCe55Ql+KIjpjgAd5s9YtmaCL1X1k8pczj7T9H7GxQ6oxjL20iY?=
 =?us-ascii?Q?QsrNluoZyQ3XbSL2LD4634teuxbrjTzVK01F3N0CeBWdlz/qPhbu3MJRpGsF?=
 =?us-ascii?Q?lcBa/wv1osqJEOdC+K/U0hSGYBx51UTxo+rm3fwbM9q2n8VZC/5wPYYvgCed?=
 =?us-ascii?Q?hk3NwFblt01WQrFHkWKkkeXNvCj9bKwUXWTBL/4TxuTya3hNIEiPGGVEHZ83?=
 =?us-ascii?Q?tSB0WgRqWdb8WJSnbcGn/FLix2magr3xVnA/QADbPzN8aIQmWEzC/wfr0ZEr?=
 =?us-ascii?Q?AO5lZsaOOouq6twY4GY/DvHBeDU5xgtSePk7M5/p+mlJ059+WHNMhGZDpjf7?=
 =?us-ascii?Q?CP5roULshvEg/BjYzWlE17JpRdj0536l?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yqylRjvEYenxCvqUACWuADh725d7Qgi3Aji+haycWQ3GIFcv0POGlzFrfvNT?=
 =?us-ascii?Q?w/nhq5T785pqPxlhdu5zygQgPmfKMcUWDGC2OiQd5XndRtO7uo2oADLIrSYk?=
 =?us-ascii?Q?3JVpNr9/anwClr9liUPE9KWw0GZAFgCstQ+KBU4TJTOvw6PJCKwEZybnl/X6?=
 =?us-ascii?Q?7cfz1ofrjzZDHVIEURvAaIfwB/ax6eIs0nTOMpXhuG8sG0JJDOlKmxFPk+24?=
 =?us-ascii?Q?xvis/4tJ60cnGjDcZlcn6c7ykOusr5c4lk0SG9pgJxJYzW9p+OYsk1DW9qAK?=
 =?us-ascii?Q?rgR93c3yojxgYidCySRzseGvhVPkrJ8OTCzZpTzra4PUaGYrW/th5fIWZ2f2?=
 =?us-ascii?Q?/m0hffByQ0hD8OtZgWWOO2C5yfl1VGMGg71MGfCHN9lbEsiUJmsQWqTbp+ks?=
 =?us-ascii?Q?I1nTfbhHYju0LRIz+jxnGFRflGNiBFjAw8UUam55JmNtvPaKgOr/ELyA32k8?=
 =?us-ascii?Q?E/lADkTvbHZ8E7lSlKnbtEyK3w3H6jx4Z7+dgKb9rnZJo/m2WTOknmWK3QzX?=
 =?us-ascii?Q?PfArUyjZM15ol+NjzVVHmyPZ7ITxKLAkE+CKf/7o8Wn+3h704M1JyrpEumgm?=
 =?us-ascii?Q?FG4GXu0hbLE/pH6tUKik1MObrcgOHPUWfY4uSaz8DM9xh8kwtYDmaOnB6UnD?=
 =?us-ascii?Q?OJ/BLWe11D/Z+6rBWxHUguul9aL1jnmL6XFIW7j01rDpRcrFtd9suQhTGmuV?=
 =?us-ascii?Q?3F8Keaeb4PwWLCugtnHkxauZiSRNfnhrg2QRbOwcUVFql+6z2H8sJ33g6OIs?=
 =?us-ascii?Q?6+7nNO3SUdp/oD2/H8i11/3dtQD8OgMlB1hvAu9TiGOG2fCPYzV8et2D5h4B?=
 =?us-ascii?Q?tCkQOxA1XWjcflJsrnxbWhqdillOk754ih2hS/A+LpIJbWdzfbkKt+vJEwUC?=
 =?us-ascii?Q?Ih+krnY6udkfzdYSa4L8IowWDlqmYWk/m/K4xwrTe+ZnIjbtXCG1p7HJyUeS?=
 =?us-ascii?Q?56qwKSW/4k9SPfVpMOMoxYvcnsUGtNv1ErirMKyVNFMeYgAlur5JLHopYtKr?=
 =?us-ascii?Q?p4DkCrJ3ha0H0PH/bTV3mSi2xXrhU5tgOo71YYohXlNbtpwTbncBe1Ti+qZE?=
 =?us-ascii?Q?E/iveedF+msZ2fX4BsEwZ1/iWeHo4UfcUwRaxdgBs8fy03DFRL5kh5Sv8ueK?=
 =?us-ascii?Q?Il9S/OvTST+k2i74mYuZdFQO4Tw+QBuh7HA9pFz3wb5zdM4RM5VlmRwSX9zi?=
 =?us-ascii?Q?sGPUbfV6F+onf/xZ/8OSsosmVXQAHZXv2j7BsGmM/X4e13y2XvPJQdGyfKec?=
 =?us-ascii?Q?Iy/qdNjP+F/zjECjPMVciDZRmbzAJD6i9jeH5qe4rKFFb6Muox9i9IYHxwLY?=
 =?us-ascii?Q?Yl8yo1n/GJMcs1HSW4zrVAbExy5P6Ylq5NYKUBmlamtKCI5H4yEEBK+5ZooG?=
 =?us-ascii?Q?+W1ofdrnIRUWuMeklPmSD/x7La5zUD5SGlSbFooG17wGHxUjNkBNlVRqV0N1?=
 =?us-ascii?Q?DSqnn4xN7MfFa8kNDJEmPmEHtQR7BOkMjpQOJkyWZwxsL8WUP/3ExaOkEq0a?=
 =?us-ascii?Q?uJvhoDF8zNHhKz+f6Z6FUqeDHPz8NIOw2GHHjrATqJ8YtraVadC7HI7Q+yKA?=
 =?us-ascii?Q?uFqQiN0kpO1560IEL36foZ0GHXxX3kP105xCvJK3b+4lkMmyCx4tpKtAAx9Z?=
 =?us-ascii?Q?Fw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 112bab2a-7b94-45a8-1c43-08dd5a232935
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 07:15:21.7874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z7fK8bozfmYZNu1cxV9F6Ydsb548lNbR2+fAjC8fXrBUI3yTXsxoTO/foHtXc4LBk7DBp5EpW3cuaH5PuXsCWtGECBxSLuNAdHlD/wUk3pY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8864
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740986127; x=1772522127;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cjh03b7jkjzjp/MEIHXmHWCmH7VbfS6hubRM75NLjiI=;
 b=n/9e5gdz9BotKG3hSm/MiMcefpRLSwPUOeE85BsS8wJsn5w2zzHp43vY
 0Ipwx8ZmIxHSIqBPxFsMjW5MRq97wjFBFHQMgg9d9YLlz2ONslMaavcwm
 fx7ro5QxDKKkXLHsg+zJcVpl6h7LcwOY9aOtsvLfXiPN3o0mqhSMw/8yN
 vAUmxb/AhwtlRdz/hH1kjoREvjKAejMTJzsZCOlv5G3lzblpdpPtkMU9I
 VnhOKluQ1Z7B9SEF58HPKa9l17dOdtv0GSEKvcw5IZ4fhIY7Y0QC8swGj
 lJccmynyr8TnlZ8aPZa1mVG2ldh/oMaV+ZO9RmCNQyr+gnuGyy9whLXex
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n/9e5gdz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: register devlink
 prior to creating health reporters
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
rzemek Kitszel
> Sent: Wednesday, February 19, 2025 5:31 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Jiri Pirko <jiri@resnulli.us>; Jakub Kicinski <kuba@kernel.org=
>
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Michal Swiatko=
wski <michal.swiatkowski@linux.intel.com>; Knitter, Konrad <konrad.knitter@=
intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; Simon Horma=
n <horms@kernel.org>
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: register devlink prior t=
o creating health reporters
>=20
> ice_health_init() was introduced in the commit 2a82874a3b7b ("ice: add
> Tx hang devlink health reporter"). The call to it should have been put
> after ice_devlink_register(). It went unnoticed until next reporter by
> Konrad, which recieves events from FW. FW is reporting all events, also
> from prior driver load, and thus it is not unlikely to have something
> at the very begining. And that results in a splat:
> [   24.455950]  ? devlink_recover_notify.constprop.0+0x198/0x1b0
> [   24.455973]  devlink_health_report+0x5d/0x2a0
> [   24.455976]  ? __pfx_ice_health_status_lookup_compare+0x10/0x10 [ice]
> [   24.456044]  ice_process_health_status_event+0x1b7/0x200 [ice]
>
>Do the analogous thing for deinit patch.
>
> Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Konrad Knitter <konrad.knitter@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> Konrad wonders if regions registration should too be moved prior
> to devlink_register(). From net/devlink code it looks safe both ways,
> and there is no documentation on what should be the registration order.
> (But in the past some things were necessary to be prior to register).
>
> CC: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> CC: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
