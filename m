Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHMoCQcXd2k1cAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 08:25:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B5A84D45
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 08:25:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C659B409D4;
	Mon, 26 Jan 2026 07:25:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UMPwxDmyWEIp; Mon, 26 Jan 2026 07:25:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38D31409A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769412355;
	bh=tX1kokL8ItMBM4BeHdwZ4MPyBk2XbU5koVCkElYr9yk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wVp50ACGIavWSF5YpeCVyCozJg9IwclpwhigAPdAOHrUvn4pmvZnZSXL/kqBrsabn
	 fMOyhT2Ee8AqaloWTPmLfW7hb7QLhUoKhHFIgploJsMjeM3fhNG/hRzlyuo6V8mwUO
	 gtg2cN4DdVvvUaLKc+macvaLmBc/T16ZQYqUfA+6MeAoqiCsKVO6pbOIeDv6GMx7r3
	 R0JmBDozRNCUry8kL6/K5nYcUp5ZFYMNYJK8RgOyMsmo36qOAve5J+imXM45Z5Aw82
	 XTaH0s7Kc6y3oS2GCpwhBz9elg/gaoDc4CAtgyZBSoAuZakUSORUYyAtQ8OEpHCdd+
	 euDU5TAmPUheg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38D31409A4;
	Mon, 26 Jan 2026 07:25:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CD1151CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 07:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C451081E12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 07:25:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5GkFS82H8pxS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 07:25:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 787DD819F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 787DD819F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 787DD819F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 07:25:52 +0000 (UTC)
X-CSE-ConnectionGUID: Cmh/vbQwT7G+cPl19SHGow==
X-CSE-MsgGUID: TwPRIs3XQ8awJPurKKLvOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="70488292"
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="70488292"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2026 23:25:45 -0800
X-CSE-ConnectionGUID: zk3X5thJQNuHwD4mhuyy2A==
X-CSE-MsgGUID: Q+6zH7luSq2za4iFgsXKsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="207505424"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2026 23:25:41 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 25 Jan 2026 23:25:38 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 25 Jan 2026 23:25:38 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.14) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 25 Jan 2026 23:25:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XpJtyvJpFNAfmpWCTt9wOUiPuPPPGwM6apzA3yeakJPo+0l4c6YT2PN2+Q4cWW+LyTh89cxli2p/93KDyk5j5XerY7wrN9YwRXBB++dftyTHa6pU5zxp5q83ihDUOA7hubNTqBkzSTn8W/KmVVyWSvV/2qBi1IuOMv94N3wIFQDksh0OozG4wMvA5mOX/A4Z5Y55pSp0UY4c2ueJDk7rp4ujIeWFyaOOG2thNys6PxPt7UE9yV5cM78u5BwQaVZvq4IfgmRITKZpTEfmxF6qPCoFwhLoI3rne2NzMTvW0Zv5OJTT7rDo0PYnWYEKg7vAFSVaPXpcV/DlacEBMyPpyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tX1kokL8ItMBM4BeHdwZ4MPyBk2XbU5koVCkElYr9yk=;
 b=f8uuivfqQt9fdlt11NAB9rJYgjtQtXafbcZHSn8SpHAKUohiPJ8F51DqjqSUYD/HKlGRsrB6iXZblMuqt+q+wkYyfvBXJpy9JUGeVq1x9XPKF5d3wgMXmYao11D9j74I4QFHYvCzbGCR1ePdYZCkIvo4OxKIvyL2HVjNklCHz/RAmcBWLo1aRmGEMDEq/6gsiimRlJFr2ZRNnwZ+n0Qyju+AM2WkH9wJ/Zo624/x2snHWe+GlPUS7zworqaCITq8O4kJPQMvjKOUjd4B38VCSW9WAaTlSh8t1K/QecpsQ5ZwX116bfQeEw9bTuEJdji8JmotWtw6ZiZns6IiUm87zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB7367.namprd11.prod.outlook.com (2603:10b6:208:421::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 07:25:35 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 07:25:35 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 1/1] i40e: Add missing
 header
Thread-Index: AQHcjMxj63rxScLR+UaE5bhPqTjCd7VkEEWA
Date: Mon, 26 Jan 2026 07:25:35 +0000
Message-ID: <IA3PR11MB898603CBB5245CCDC1B0F222E593A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260124005639.3175766-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20260124005639.3175766-1-andriy.shevchenko@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB7367:EE_
x-ms-office365-filtering-correlation-id: 2fc719b5-b045-4654-2fb4-08de5cac18ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?vwwd0cju+FncVbS7mKe49mj0/RLJBArlj2YGxO1K+LcCb4Fqlo9KWz7d4oP3?=
 =?us-ascii?Q?HfJL8A2h0p5LilZawLsYGbX8F//erR3GpxgXJUedIlQEoTqqefeMRqAAPSZ7?=
 =?us-ascii?Q?M5MtsfYKzCXjgH78PUcqk6RqWKfxVD1IFyNdE8KgWqXAdFm5apGRKaydIQku?=
 =?us-ascii?Q?LSl9kakuuvipq96xBU7x3y4hWAWW2dHXIM76iLE/GUltioPZ6UkGYEzIlOAG?=
 =?us-ascii?Q?4r9T3oV5bZulCuWdzfaHVg4PJFa7ySonCjMDjogDCESW4LGDbSukbvQZcSz+?=
 =?us-ascii?Q?EwVGu7cURQnC7meUkoRxCabs9yjQTPTIGfvJGlodUQyUlryIX2q35a7gsp9h?=
 =?us-ascii?Q?jrzEUc8VaT0HBEKZHpESHVkRFV231wFJ0QFmhDy1uVGP4L+sFdheHrcVETI5?=
 =?us-ascii?Q?BpFOipf+E8nLKIG0utK/TQaM0gqFUgieqbl5cofpAk3LWnkRj0vKdilHle4C?=
 =?us-ascii?Q?Xn0Ue9MhTFRTEV4d+dabpkdcKGNatb74wd/u40G94o81FZwTPb5CfxB2PR+9?=
 =?us-ascii?Q?C5gEXSXeGCl8Np059lSYP5sfnX1MmoEmpX0r0lAIoHwEYf0szvQGkFRCYDeo?=
 =?us-ascii?Q?svOuddQbWHGJvoJSo6Vpz4TbqqtgoLcmzVr72vfp55cljYPQC3V6wFeIt8At?=
 =?us-ascii?Q?I2X5f3MgxPJL2nb02GRO8fuqikJshT8e3Jju33HNpAoU5HEHkzsNiojAtKzt?=
 =?us-ascii?Q?i5vQ3QTFiaFwqZzDW93uHOIJbrEBI+/E/0+ajqIcHf60Yj5LsbxYq6+vh3+O?=
 =?us-ascii?Q?lhpfYjI+/p/D411SBErH4YlcajUsayCmpw+SDSGfbWBaL6SfLUa4e95vXkhX?=
 =?us-ascii?Q?yFOSA+m+8uijMxto2VN5asqhurmbFO1cNibrnBVXap+zivCTm78D0gz3OWUz?=
 =?us-ascii?Q?oHrWnqjSRFvrbx8JlppeomWQOhwTbJ9w5ZivViPmO0irIiw/7Sk6fvw5tMIF?=
 =?us-ascii?Q?ke1HUZo/IfVrfg8HGH76RT+dXgv4snfqd3XU30j7k248cKNDNg4xZUNxmPJ6?=
 =?us-ascii?Q?ngFJAhkB91Z5Zxlp3hJtDm4jGEeBwMrHAdHfnnjcsZ7vL8ZNQ03ROe178iTg?=
 =?us-ascii?Q?Vjv17j4AiFefNrm58CRYWRE1SlkIiDBOkFsDAVZLLo3Apa++AxIy2ZLwZwfY?=
 =?us-ascii?Q?oyhkFIB2mZj3IuPHNIqwcRr0K/rYa+7NbnuXgUBdPf30PrZLISowrK/CB1b4?=
 =?us-ascii?Q?BuNh70esWpJGQ+oYvB4cab8RHnPc82ky2lsTK4NlUeSewhZzs7v3G5NvTOB3?=
 =?us-ascii?Q?qhCLQ6qeX/aCPQvj7DnLKlMOBy2oVKCFaH6wYCPeW1smUI0eUT5uy0hRBEXT?=
 =?us-ascii?Q?kYsLaKMhSMxeWrPM5Aq+z+n0UqooZcByDZK8645WRfTH8Q10CSotN2x7/N5v?=
 =?us-ascii?Q?4i1rT0p4evDagSOsPGBFbMvdM0+yQEm2A9E28xTkz3hSTuUND2XnR5s98pMI?=
 =?us-ascii?Q?Lyqujfpz1MjvN8OVxXKcZDx/aD6lBjv6j03x81a5OjjnGKD2O8SEV25y1wYz?=
 =?us-ascii?Q?rZFeI64BLhFUM7p2MhDEnEWPHHii4lkt6F3J995D5oOFQv7dm+Mf25srl0GJ?=
 =?us-ascii?Q?/ux8c/ravurcrzoW1MvyW74R3/fb4AhSW9i2hzgYDzBpjVEcW5thNQUAIVdf?=
 =?us-ascii?Q?Ni/jfeT/dq1AeVOSaPIE92c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5Kuwv1GJlJH49jR+zgQE1BDQTqFUd1V6FIrn85maSiKldTjqR66PUgKjby+j?=
 =?us-ascii?Q?fWTNC4/0P6ZGJL7yRI7iby+V+MXhrcqtx3BkjUmtJ1pT6Kt+GBXYc3TW93/b?=
 =?us-ascii?Q?ra5x3VPzmf60SMqVXcdJTQCokpPITnwoLlcpphmbMZcwY3ZlnJaVjNTWDkHx?=
 =?us-ascii?Q?vEFVOhag0CZG5q3JGNAG4jyJxrjJSjWRb4uzKGPmkQcjJu0+GcQUndVeK0pY?=
 =?us-ascii?Q?KEqaNsrFoOnqqMIf4JbRjRtQtvjGu0dmiWsxRpUfroqcxYpEU13Oca8aXMbu?=
 =?us-ascii?Q?vtcOy0IBJc8/eM1KKO9vaURnqb+P/IDnc0w22ovx5dvB3Af4QmztA8qTHBdH?=
 =?us-ascii?Q?32Weli1esb7Pe00uBUlK07IDZgfe+il5lBrIHRTM6a5wFwA6drzayeWLtaA0?=
 =?us-ascii?Q?PFzoGZGZwZnHph8NVkSN2WmXYIpd8XXXlGyEIpYKpo/maCw0JGaViwTXXKul?=
 =?us-ascii?Q?P5pGnyumc5HpxiIrwmWgkWhIO6U662+8CbV4H5TxdP6uuOMM7FnviJsZhz76?=
 =?us-ascii?Q?pTOtjdBsIDDa3SVpTlMAXWDSzzwiWw4QTzWI0Ul62zusdrz1kGbVufm5Ulew?=
 =?us-ascii?Q?yabgzYkMkR5MwSGt1AFCznsAwet9FMkscTIjvMHACsdpHpQ/JGblxgz5G2bS?=
 =?us-ascii?Q?vx2/66jN6qJbLfVa46YNTPFhEcKtAQXVrsoE5u5YLRR+7lap2OP/7O0a+E/v?=
 =?us-ascii?Q?fUWMis76V4G0gmt5IR52fjjfnWiIRXXpNBV4YPhspP7zPz/t6dZbX4Ve12Yr?=
 =?us-ascii?Q?I+dIPJFaYjSHQ3NV4SoKfW3WPOb5b4B5W+bJQUe+ymPANadmQI1enrY/cYzv?=
 =?us-ascii?Q?CL6mzGLYyoyHVRFXuh1nRVFDns/1xjyVIct3gxw+VMry1X2OV4FpfbjrzzKZ?=
 =?us-ascii?Q?A19mJhYz/hvbVHYoyEjrosDFJeV6sR5TNp1lFPpyWDgyl82rczrqrEuAjZJQ?=
 =?us-ascii?Q?4uvXb79vakF39SjEpy4Cc06wDuKi/ZocpOvxGsnbMGBViXHmddj8YcqvezFJ?=
 =?us-ascii?Q?Jve3BP9175qoaz+yZjWxFxK3U0FRUq1b7MFpkUyCfHK01PFFKW4ApLabIvVD?=
 =?us-ascii?Q?gdrxGPbH66HfHB5dQH1Qd03/2Bt2QJtr8ua1kvhUdCIT5nYdincFR6+njP1T?=
 =?us-ascii?Q?3V5v1OwIkrEj+B1CCzTpfoQUTTO1DCIOSjNCoDhMKWOQP63soCobwqVzRGWs?=
 =?us-ascii?Q?lb6QtZAzMzHOG4n7I0w63l9/1qZENYVYXSalfQqKJ4AVEEnbVsTh19gipFh4?=
 =?us-ascii?Q?XSK18MzBIGiLRc2o7XaD2RPMBn+J4oeLhfh6ceByhEIDNZzx+wOAvmsuiFno?=
 =?us-ascii?Q?+NQoNGD3u7xGx6S3Gh2sFvVm5d4lYYYkYDILB6z5+h9BZtpbEN9quWOG+yeT?=
 =?us-ascii?Q?+crjIgiZi8TrhWCnx2lDQlSk5cyr4xTEJ1TTvYif8h9ooA7zLQGARhWcV581?=
 =?us-ascii?Q?ZWCbsKZLvsRUttnCcLV/xtSmdFnRV9GxiXlNdZmuroeE1YWBL8e7m4JFLAY3?=
 =?us-ascii?Q?6IALVbIpEhbd1IAlJwtTo5nz7gJvf151P1cP/PY+P8PjlLHh8R6aS9MzVyLX?=
 =?us-ascii?Q?8dbhTPmewv18CIjYhxapUgr65gUpgWlZXrM8IipObOm9prm1uT8nSmeTIj2c?=
 =?us-ascii?Q?tGp+qO511yL/wPzl+yj1dtVWppn1F6Dy+pP2fyv1/dnrwNzVR0ANCLJJGaE7?=
 =?us-ascii?Q?1gLyTNja62kZcn9ggegT9d7csWFIyzA86S7COCRjYX04j8hYPnMHojYph6xF?=
 =?us-ascii?Q?rxfyhA/+sGY50tluNQ7P2jI0IdKE0UU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fc719b5-b045-4654-2fb4-08de5cac18ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2026 07:25:35.6443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dqTdMvKQnwckMXMw3rUA4CH+RvCUlhYI2fZY2dWnwOgeFByzu9qHm29gauDfSb+GulLNSp1vkIPULYCk/hSz2FnzSwe44vXSQLDpKSwKkII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7367
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769412352; x=1800948352;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ay58Om3yz1hJhzJAaY2XK8RrHEYf4EqbLchd0B/8sQ8=;
 b=g0ETvXkM2/C7WdZCBODP3MyCvqkjdctcrWOtrg8MCtakxXycrqKZa0w5
 qDSscvmmv3T0QNT3gRZ3O836EurCMYdr+vvrtkbcfKiXVpLGHTaMqZfBP
 VvA7gRbyyIWINq0jQE8saX21Ft9U+1rBb0NT/m/x4fsBgkiFb8ykvfb57
 Xkz4Es9bhfztEm5ffBNGaHUUvuxbnhPzSv8TLL+uC8jgTXtQfsgpUqIm4
 wHdLxXvwosPLw4/p7EereYKt3IcI6R2KrJuzLEXN/pp0XK0CuOFr4cZPV
 xjaJUROG5CYJd0sjJh7tBbft/nfrCbQ3USPEDks78N8eJWvfd4phFrg65
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g0ETvXkM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/1] i40e: Add missing
 header
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: D5B5A84D45
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Andy Shevchenko
> Sent: Saturday, January 24, 2026 1:57 AM
> To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 1/1] i40e: Add missing
> header
>=20
> When cleaning up another header I have met this build error:
>=20
> drivers/net/ethernet/intel/i40e/i40e_hmc.h:105:22: error: implicit
> declaration of function 'upper_32_bits' [-Wimplicit-function-
> declaration]
>   105 |         val1 =3D (u32)(upper_32_bits(pa));
> \
>=20
> This is due to missing header, add it to fix the possible issue.
>=20
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_hmc.h | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.h
> b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
> index 480e3a883cc7..967711405919 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_hmc.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
> @@ -4,6 +4,8 @@
>  #ifndef _I40E_HMC_H_
>  #define _I40E_HMC_H_
>=20
> +#include <linux/wordpart.h>
> +
>  #include "i40e_alloc.h"
>  #include "i40e_io.h"
>  #include "i40e_register.h"
> --
> 2.50.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
