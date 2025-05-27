Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F941AC510B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 16:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5780460B50;
	Tue, 27 May 2025 14:37:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yX8Ckj2ckioI; Tue, 27 May 2025 14:37:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B770460B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748356665;
	bh=TroNkWORKnjW7CYf1Uyj29JyZ+HRKIyDZiXCfUZtc8o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yuJdJLzwDervEFDQpViOi0Z77drORBy3uhZkrT+TIGnXK5rL572evjnjfOZ0DXDHr
	 rxklO8pWDdKAyRiq8qQ6a9vLq265s9KcC2/uyVkLEg+8nsFIi3YYB6G9/madkwHysP
	 1NhGGUxkObrFZeVrUHL76j0NyyQ/EssXPGiGHgDOWVWKtLZ4nMUPUewl5HOf1AWojh
	 KgRDkirgnDeFZyVvKrHZFLnIhGblxn70QxL6wsbme6jbVuyHeVas+OIW+w8P6A6hyq
	 D1ov251ukLcDJSgeRKC7TWath/cZxf/N6YK+gc5w9GeHyC+2+rQz1uMnSTKsMfra7K
	 uTPXsQfL2CVtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B770460B42;
	Tue, 27 May 2025 14:37:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BE0619D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E641960594
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:37:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uyS7QIy4Ciz1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 14:37:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0FAFF60B13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FAFF60B13
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FAFF60B13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 14:37:42 +0000 (UTC)
X-CSE-ConnectionGUID: PUmS1MCiSVaBPah6jU8+4w==
X-CSE-MsgGUID: LJpDQ4liRwaAjUkPlt7c3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="54155155"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="54155155"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 07:37:42 -0700
X-CSE-ConnectionGUID: Br1iJFMBSvGkdDbAgfwM0Q==
X-CSE-MsgGUID: +TAUPLkBRQGPtH86otPMNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="143289971"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 07:37:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 07:37:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 07:37:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.57)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 07:37:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i4ye7twUiBi2lQByKiGvDNRb+ND4FwWyuxx+ZIM68MSTLXL252W/Lzf7AtfeaSB7MyHHVdkJ9jTr+VbR4nSM/oVfrCstcedQoR8039koLUz5JrJ0nIOvVec4GAmsQ8FOdHiPSvpDqrLN4f7d1bkEsuu+CuSV31DXVy89zDVnBHqlcijVDmVVlQ8ICUlFSXvHpkdVgXqAdtcYTqfK/TB6keufJ/wHCikFf1g1XEX1dA0UrLYWD+slOuH7tKE6QQoXZ0RBel4FBdfHmtS8gtLXT4TzGj0iGzX+56UNmAJggsAZxsfBR1u2cNrjJc5esK+A+gwOi3hRf0d0F5AmooGLkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TroNkWORKnjW7CYf1Uyj29JyZ+HRKIyDZiXCfUZtc8o=;
 b=HBmm0kXlQz3WGEb2nG4kKwVdvCuKd0TcCI3rULM2gNr+nnou6XcrbM8/SXDoZ0T4Yr274TAociPjoE2dE5Rs5oS3YeEFV6QOmev91xzsE6T5liwaRVGMHjhQHezlW44pmVLKevMILH1dOrNlNbfWFPHR3G6WFFRj1YK+DNI0W5Wxa+p0WsBcdB2voX9MWuaclJKJ0E79tBrPSiCIdf61kjMOlfCdzC9xX0ba5RvYxO3RQ3Bj71hO32JXJvxZP2kGy7E0yIArtY3ZJ/WF1f92DOs4nIwgLZPiT3ayqHN1wBZEm3NAx1ZAbaKGfjPbgd9jkSC6WZ+/UBGJR9memmgubQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by LV1PR11MB8850.namprd11.prod.outlook.com (2603:10b6:408:2b4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.24; Tue, 27 May
 2025 14:37:19 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8769.019; Tue, 27 May 2025
 14:37:19 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Haoxiang Li <haoxiang_li2024@163.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: Fix a null pointer dereference in
 ice_copy_and_init_pkg()
Thread-Index: AQHbzxAxVSjmIjbEr0GCs4gJB1Ep8LPmi3iA
Date: Tue, 27 May 2025 14:37:19 +0000
Message-ID: <SJ0PR11MB586609F5E30394AFF23CC9F0E564A@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250524072658.3586149-1-haoxiang_li2024@163.com>
In-Reply-To: <20250524072658.3586149-1-haoxiang_li2024@163.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|LV1PR11MB8850:EE_
x-ms-office365-filtering-correlation-id: 67e8ca11-54d5-4dc0-323f-08dd9d2bfc48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UkP1Xep1iRuDyVjOmokq5uak4jGl9x/2z8qdpMonGleQygC6hJzBzs3G39vz?=
 =?us-ascii?Q?dYaJbhtf9tLL4nCGtrssW1ocaRpzlX5fwz8i0JPc6UBdpSn5QSAf17z5yzqp?=
 =?us-ascii?Q?gNxJ0p3rgQ8m9vxJxfkhYn+XFvRXw2/9Jo0OBPpuQhFvJgZJHiCBMHywg1tk?=
 =?us-ascii?Q?wXo5MfHM2V/vfyiYmOugZcYl2BhW4ngbB1HhQ4Z3MA3xEG+1v/Smw61I1+15?=
 =?us-ascii?Q?Zsqr1FN5wOIUtIeQ5nUynrtDnLHVyMMnci4Wb9jMHzdhdx2vV9J0wiVdRml8?=
 =?us-ascii?Q?Za1cYzJYwhs1jRMUxG+YW1fraSP6DztMNnsJ63nzn+gDpbdnLOgwEnd6yMRp?=
 =?us-ascii?Q?57JD/rsQLH0cOeeAoH7RqWulf5ehjtcmd2EUOF/2tRsuW8E4B4cPBsRNml7T?=
 =?us-ascii?Q?43wMQF7RkTja7s+7+Q4iRBe06uURVtqTnUdc58QvQj66eRkvooKNfb+5RpiG?=
 =?us-ascii?Q?QN++YiZgOoEIJLN9TabavBsgA0vpLU9/KMZ9f/AawVfGJkvFCQ4CPQBWdJ5Q?=
 =?us-ascii?Q?z7QTrxeP+G7K0qyv6N1np7nH+oNynJpAhN5HzG4p4qW8o/93V5LTkeJI7d6k?=
 =?us-ascii?Q?eOwp5W8rtAZ3arMiS8fKQwjmLFjiisDOpmImirAe2HVaUF+R8O0gM9qZOUeL?=
 =?us-ascii?Q?P4Zf0xWl4Dv32Tt89j8HQGOaOjgVLORVS8tz9ISJHt3oy8A9J0GiFJoVk43X?=
 =?us-ascii?Q?dUVG5aK+1jzA+nrsD5GOl8C+tNOC4ELhn0bzJ1HZor+bifG4zdr6ecebg4qV?=
 =?us-ascii?Q?lST3FEoiU9araYWRQsgSIRz08sZQQGJtJazDtH3AQQwZ/VDO19TyW3Dq6gJQ?=
 =?us-ascii?Q?8mtYP/nbKsTmFYbUtcZ1I6R3VPHuDhzBpDOWWojb/PfznmKbcBoA6eZ5yrBU?=
 =?us-ascii?Q?LPbOw+7+n0x76nw7YijwfzEFk1Wjox7Xp47AESfeX++1WFeQzFsVUK1O1ReK?=
 =?us-ascii?Q?axL6Qy3PQg7V72gbJmVyjcZKWJ2ZkqogGAUjK0vPwLDOESrgHz7YL49XLslH?=
 =?us-ascii?Q?j4QKfelPxx2L6WXKq/YnQhiY8I/mOD9ajJMUN5/Z5bgqgbGSt50Y/8rWcIZ9?=
 =?us-ascii?Q?juMSdiLfxFiH65yL+zdTQRzxFE8NpYpmlyu+Lha/5xPKpM5iYfcf4M+KmG7x?=
 =?us-ascii?Q?rMro/PNDCteGRI15bdmOlHu9bNM7A+UhhRMWtgRN7G6yG1ym37MOHX15naF2?=
 =?us-ascii?Q?Eda2pHdLjqPInLl4/w+wVVH7/5kvePEi2AmrR290DAYZvwa5/aph+bcSkXvm?=
 =?us-ascii?Q?49Ed4sw/xX55mvsYglKJNGINOb69x6VZI6P7SxzMnKqSXK8LMyNwQvHdaXI1?=
 =?us-ascii?Q?fSK23FnXzgVbMamWOtvTz/b5DCmupj6dFUmW7ELZ4FMdOIwexAaO8qfb3sH4?=
 =?us-ascii?Q?+GlnZIIFmqWv2SeIRmiOJDZSWwSdU8ezqynp5WP9hiUioI51kCPtlXyYTvWK?=
 =?us-ascii?Q?bzK4N4xYFtoGJx54/0VlWV8PHVirylaHoWdp/aBzADVYxrtaUUmNQrKcl7O2?=
 =?us-ascii?Q?WoDl89ISIsYQvxY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mx1zATBqmrilTXDPxo49zQY0ZBApJ4MHSGXdoHrESNsu//ODvu2mItBbax30?=
 =?us-ascii?Q?OeKt7xaucehUOEYbfN73W9ELeyH0JlOWq8rDP5sffI0OUe9T43u/3nd2nt7U?=
 =?us-ascii?Q?MC5szrWS1eABW4ahjF6LVqu2OLvsncGcc18Fy8TSiq68fmTusQpPUKqB6KTa?=
 =?us-ascii?Q?PvwPcwvqyvcf6djh3xxznenKWz5uhgasvcF5qgQz6CPGDg41UfXGXTCoLq0f?=
 =?us-ascii?Q?zRUHls1ljEgvjenx/MLbmkpwniJyhRvcaNAQtdjaj4Nx061IcN44iDvRYy6w?=
 =?us-ascii?Q?4SEHFlXgybzp5GzoFWf3BsoYHvMgvx68Y4pNMEneXrj4IaGI+peCZeZus5HR?=
 =?us-ascii?Q?Ki9ymSayaYh0xZZ7pyAUU8PX77u/QkP3oVqHYfruBL6BYYZzZLCrZbiA5BA1?=
 =?us-ascii?Q?Dc/MrNj8GyihSxw9PLjkp9FNynNUU/A0YXcIaaSWv2sjY9N2lmeB1Y12mRzK?=
 =?us-ascii?Q?NOrWwA5TIQVjsrOHyoy6jmhf1WpIfbX/25e4LX8xWepxtdmgdY7OR+HsO4iu?=
 =?us-ascii?Q?51ubRGg8nPFH/VMz32E4Y2wXm2bP2vcUnVNqhYrSH7QgSLv3ZkR7Yrs3uWs8?=
 =?us-ascii?Q?el+vYYBY2hMZirNEnnIcHtzxhdfDvDI3RzW8S/Gd68f+znsOzSC7Xv7vyoA1?=
 =?us-ascii?Q?Sk4dVCwHOtkuds02Ab61ZYZlD9pLJr8t7WPNG8Cv/N/OZh5i/BKW7uLL8Q8y?=
 =?us-ascii?Q?Eh7U2w2+FoWKOKG/GKjiqrvpZij8CzXicaXY59GdDuZkDh++H58z8ov7vmeF?=
 =?us-ascii?Q?kHHJnm0mZkPHpqJonzcFsP4oeLVhnZxQzh2RCylTYrOcoaSptd+RCWpClRL/?=
 =?us-ascii?Q?MP4tVwLnp3oLhGhnl+P3Qbmc+A55jW2PNnDSQhOOu7WYIeC0rXK/+1iiEa7t?=
 =?us-ascii?Q?ZAccQNmMTbRD9vUQjH5Qi9iNNMjJXqX7vQ/0WDGLVcmmzG0H631v/FP9B0az?=
 =?us-ascii?Q?PD51WJxgA4RXqoqW+055oK9ZQUUeI8CZJLXZdjZkGF5g+HCSRsYaKlXGZydn?=
 =?us-ascii?Q?ipmEEeU+ci1rRXxrzBzoweQpnqhMsnHtM0muBBYmXhseGUI2eTOEYqL6Z6Sl?=
 =?us-ascii?Q?pDsKrmpGUKN/YFV5NdU2qnuAH2PcPGiFDNWkwjFdrFZoAvRoPJg3I9aBlBma?=
 =?us-ascii?Q?+DZwxESzanK5Jy21dBDUYxa94VRHufe+UCIPmoUaOynM+PSR7MoVylgzZvz5?=
 =?us-ascii?Q?2j+dcbhwyvpAZy/NuN+lqu1D/4Apk6n/Mc+0DZtKRHchjb1y/TZ/tZH14Sx7?=
 =?us-ascii?Q?xYpVLDS28LtNOpzm/2sSEo+qSGZX4OpU6TStOwPZoqfaCqVu34E8Tm3k5g6p?=
 =?us-ascii?Q?lx4fBvJXKa0sVhHQK0UQLwdXUrzWpLBVMa0mvnbxfwzr5kJR++2lpcnmphGq?=
 =?us-ascii?Q?mMzssIGyNes97jAciZ5pm6TiUfTphIjWoJxtjwzoavVMaTW0HJn4tXlhdDBE?=
 =?us-ascii?Q?3zjz0vS/XIeggGMF4Meg0r3xCYrPGGvK3nUv637rAWQpU1uATY/zATB9i0uU?=
 =?us-ascii?Q?1eOOtd73wrqn5ZpAkHMBjoUhj7k3JWRS3li3xndRt9PAiFSU1Xhk692V5OzQ?=
 =?us-ascii?Q?dVIo1SyCSBKJ5Gptj5xubjMsg5SH1EGwiG2jIGeRmJnh9yKfmWnACJP1ZPMq?=
 =?us-ascii?Q?2g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67e8ca11-54d5-4dc0-323f-08dd9d2bfc48
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2025 14:37:19.8034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ch3p14gO+o5CknNCXf9H60q7hBUhzgy5D9f+a+ZBymnfKVEoPp+UjwhrzPrzzIsbipujhxPubk6SGG98wChODNvqZECMOuelSbEDjxwqXg8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8850
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748356663; x=1779892663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xEesws7RUtPqWOkmmLL3q07qWXD4Rg6vlawitmYJzm0=;
 b=hpqVkHvTzpQuvZPoDjCIDba3WlnkQXpoJspT62Ppk6lIy1rIuklOAl2i
 wtPhSZiA86PYZEo92e1Ye8q6mMw1OEV/LJsoaonlTToDDDMEqYhvuYvCC
 nzUJIRZ/H9SM8axwg102zzneZ0VCQTbOgmfEHt5+0y7z5+oeq5aC9t/Cj
 ayUnNggR9o+PsyNJNjIoSqip4B3GTvvZFQgKO6lZk5Gqmx0EpHCf9kp+S
 KZ3kknIdEJfZ7YJJ8T/lcdsytaOKvF1WoVGAUUMg3VVevfpdyRQfk5T/b
 /xr4hLwVsjjER9ca4jhuACs59dJMVLSItA1Bxjy2O03LNwsh5PIyYH7z8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hpqVkHvT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix a null pointer dereference
 in ice_copy_and_init_pkg()
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
> Of Haoxiang Li
> Sent: Saturday, May 24, 2025 9:27 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Haoxiang Li <haoxiang_li2024@163.com>;
> stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] ice: Fix a null pointer dereference
> in ice_copy_and_init_pkg()
>=20
> Add check for the return value of devm_kmemdup() to prevent potential
> null pointer dereference.
>=20
> Fixes: 2ffd87d38d6b ("ice: Move support DDP code out of
> ice_flex_pipe.c")
> Cc: stable@vger.kernel.org
> Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c
> b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 59323c019544..351824dc3c62 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -2301,6 +2301,8 @@ enum ice_ddp_state ice_copy_and_init_pkg(struct
> ice_hw *hw, const u8 *buf,
>  		return ICE_DDP_PKG_ERR;
>=20
>  	buf_copy =3D devm_kmemdup(ice_hw_to_dev(hw), buf, len,
> GFP_KERNEL);
> +	if (!buf_copy)
> +		return ICE_DDP_PKG_ERR;
>=20
>  	state =3D ice_init_pkg(hw, buf_copy, len);
>  	if (!ice_is_init_pkg_successful(state)) {
> --
> 2.25.1

