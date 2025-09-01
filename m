Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C371B3DAD9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 09:12:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1341F83F21;
	Mon,  1 Sep 2025 07:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DizXgm1tGAEn; Mon,  1 Sep 2025 07:12:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D701B83F22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756710749;
	bh=qb4pOIjHVDzcirKpUMBFgGU90VNSTgpoXC+R5gjQukg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zl2udaiyFthgEbgj6LRD6f4ArYGZMe1xDL9zOo3ijbJEEYTlTtC6kdOkS1YTL3yZ0
	 Am8kwylf1PAw9x65j6lVLlatj3HsBeiqeLXUOXTqcEaPQeNHB2iAMG7atvQRn0yGzA
	 KCs+oi47fiBY8gICZnfO7KXBc9PoHaUlPHE8ZS4KwRYpdp7XRFm5Nj4pQuUevAvi6Q
	 pvlkR3mZgBFebr65IFRN3x/wrNpc5O0aXTVTdZT6lfYgovcvL/P1p12i5bdGr2rthx
	 YXDtzApGD+KfRSpSQyCtKqupBUnD79Y+H0Me9p5yOxps6yChLA0BUjhu1uVXVfAa6m
	 jSQWaBS7Ytncw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D701B83F22;
	Mon,  1 Sep 2025 07:12:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C1A6169
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 07:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C90541113
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 07:12:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYHHcTLpSFgP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 07:12:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 91C6540DC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91C6540DC1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91C6540DC1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 07:12:26 +0000 (UTC)
X-CSE-ConnectionGUID: 94lKAxwGSqqs5K+8WvzWHw==
X-CSE-MsgGUID: bpI3r1ELTNmbhd+T4XGQWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11539"; a="62721269"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="62721269"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 00:11:45 -0700
X-CSE-ConnectionGUID: Qmzdo6AeQpqbTZFuX2Sdbw==
X-CSE-MsgGUID: /EPeGm+TTbeAnQHXlvOILg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="175263255"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 00:11:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 00:11:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 1 Sep 2025 00:11:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.83)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 00:11:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zs5KCGOj7IJD/rn/Hi3QF8jiMhMkwoOqYXABGyuVgcXMN4uLXY+z05+0Iyui7FHbJVs4S++lysZk04se+qAYjk+9uvKLg9J0Ttw0Rl9VrMsWGMHP6FU6QgXL92qfXbCDi6GsEnRE1sinOOHVbSkjB3DabXdMHgiBu+oV7N3mh6hgBB9gdz8lRZ8hIBKlZz4300wJkw+uH+YeoYeWl3ilgnzHGjyRrBhHLuWsR+mDX4qhHrOTeLjxanQLmqcJGymKg07Yd7D+4oaANcjPZ1F5kbLpmUtbWF0T6y3/KeAt+GheQHgk8Q//lPt/rnYaq5eEMXexvnlZLYf7WbebK0EegA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qb4pOIjHVDzcirKpUMBFgGU90VNSTgpoXC+R5gjQukg=;
 b=bJBjqEEouHoYa9U+Gwic/Vjhftm8jyLghs9Y/ZVh8oKeMw8uho2B6eh+SpSje1GebgNt8/LBOboPnDkwQGDzuTlPsaN6GQYwX1grWEVgeJN1bt9mcngfvRgybY03DykfFvT5DTCECjnjb9YErTvj/FvepGRBCIk0b2Xsd4u9/AI7FOSqhFJ9sqnxzD5jlflqSSrYmPzuAg9KxoWakD3bz9uhjMu04ZLtAMRjDHEYXdxsSqvwIZyS+yNHVPVaX+ypmpmyNDWAi93mHLZ942RemNFAb1/c1uH140XkSJQ/G3+g8dt5rqJ361bCUqJqkCfv9mhyeQFx99pgvcM4tDydMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5062.namprd11.prod.outlook.com (2603:10b6:510:3e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.26; Mon, 1 Sep
 2025 07:11:26 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9052.019; Mon, 1 Sep 2025
 07:11:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Wegrzyn,
 Stefan" <stefan.wegrzyn@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "kohei.enju@gmail.com" <kohei.enju@gmail.com>, 
 Koichiro Den <den@valinux.co.jp>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
Thread-Index: AQHcGraWxpP5XDedcUuXXroPaR1Em7R96VZA
Date: Mon, 1 Sep 2025 07:11:26 +0000
Message-ID: <IA3PR11MB8986BB7E1C9B70B43014F1BDE507A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250831203327.53155-1-enjuk@amazon.com>
In-Reply-To: <20250831203327.53155-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5062:EE_
x-ms-office365-filtering-correlation-id: 74958451-427a-4541-4e0d-08dde926c41c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9ZTA08DvsZAB55UdY+Py8cihJ04YXA7UHvhOhWRlbf/5sYaLuvbVriS2Q4Vc?=
 =?us-ascii?Q?PAeBGTX8UlQGcJkqXVq5Uiekt7wlswhl0WI0iBWpQHb/iUMzd3XJd2NNw1c3?=
 =?us-ascii?Q?vQRJaPFgFgqjvyk66StnedRn2epSMFxnc0Pir1l9G/XPDy1y9+ce00SMGGqN?=
 =?us-ascii?Q?/3ZfOqD/neUtruRDnfSqPdyPBTkbgNkcRfbf2gRzvSCx3Wc+IEkA20RBAOmA?=
 =?us-ascii?Q?k2mM3MneUe0HdzgRkspyTPMdIQVXvOW5VFc3xRnnLNy6GlCJ8sIYp4ygTvTa?=
 =?us-ascii?Q?ZyZXZMW1M301iWIMK5a0HOFZNxT18doa/Wvb+ASJbtRZaAxLV7dyNi6HDDAV?=
 =?us-ascii?Q?Sdg30q8q2fAAb1LTcabyTO/QtpbRw22WcwgLLKr2xnY55VcC3+ewCApGkjGp?=
 =?us-ascii?Q?0VS3T3ACNXSO7MO99wFs7QQ1S0FLHOD3FsxNKIIRu1jF+fjaMX5uwrMPG8gS?=
 =?us-ascii?Q?W7qaNEkN6tx+F9eVI0zVNh9hhA5FVUzkPzwwWFG7fDXGNrptLXFylwq77QRP?=
 =?us-ascii?Q?PqHwzgeOUx6JgprmyxrZqw72Qbi1+RjiIp5JVvTVB9OtglhtKzCYeEojAI11?=
 =?us-ascii?Q?3nz4FRHwKYIYOFWRAQJwzjhGrMMOid87SwW/pZeXARDoe8cyj5NMDRCWYo5b?=
 =?us-ascii?Q?7hrkfGTNlSEqKulnjHMv8tS8M/6UGnEPKp95R1fZBEwvfcvRquS+n6sTKpmu?=
 =?us-ascii?Q?TjVSM0gi5B7rHJBZPZ3iO2XFvUSpvaFVN+GzQOTb0O2ghfisLlns91KLJMQO?=
 =?us-ascii?Q?dUm76m7ZpMHN2qKKu3wdY/Y3RDqeSeZrFZDfmfTHpP8pwAvN943iTefjqKgk?=
 =?us-ascii?Q?y4TxtHEJ90K1uf3m29EL++U8fphfh1XTSTZtgDtEvF3AnZIUDkihwg7UHzdO?=
 =?us-ascii?Q?pl1ifc0RhWj8okzqzDViwdipZUKu9XJwK9E3crX3TyK0GXIJWmDzuJLl4I20?=
 =?us-ascii?Q?BQjzc6yQTbnIN+juz1BJfWZ8oMpoc41JBDQjlkEJ4S20PwjCLUFb7d7NwYvy?=
 =?us-ascii?Q?mpY536CUaplmnJBD3uhQNQVknQE1gT1DJbqamhZldThcF1TBpgSCaDoU6D9N?=
 =?us-ascii?Q?n2gKEzR08NueOW0OKdRnvGp+dpwgQLG7W81/Np/unDAYGJ01N/3nRWk3TTvK?=
 =?us-ascii?Q?G+y/XGJPZGNO9uYOTqBpaA7mLzZpFR5vt/YJDpOfxUQ6sbttwA/VbXczl6b+?=
 =?us-ascii?Q?yNEETKDFX5kaqks8EFHl0wCCvhoznrz3UzgBMHsM1T2YWV/0OPLWwdUJBMRz?=
 =?us-ascii?Q?6JRRBB/7BhjwNzL8yIdNf9c+VOeF6QFRf36eDHu6ozOmu3ZVbzcd1paA8V3i?=
 =?us-ascii?Q?f6lJTOzMFazoUsKteSx/8nuJGgCx7mV93ESZENoZtdFfczK7cNyAzS0AnACv?=
 =?us-ascii?Q?s0awU3mp93mSIkTtWhTBEBe9+s2cPGG/IA8ER+/srAI2wsp7Qgrn/N2HVBBG?=
 =?us-ascii?Q?DgMdut7YBK/SBqSXSez+5kq6mDACgYRl+RfPa+9w/wPhe7pM8SgG0QLbO6yA?=
 =?us-ascii?Q?5sM678jksL58Qyk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NdjXkbl205V+R35ZtpXtLAYiJuuHoJpY1y7jUOP7PfsPt8w7uCTUr5Xm4Iiz?=
 =?us-ascii?Q?ntPeL3b5zDHbJMM7ptpVbTlMCjdyhUGbiSzdpaE1ile2U1DIbo0itZtoE7Z2?=
 =?us-ascii?Q?hSxqYPZudHYPMDQi6KsnMVnVsayG/5SS8xzeah01qX41Z4e/lhCTKeKHy9ff?=
 =?us-ascii?Q?quo8QXPGi3Wp0wbjK9LfXx/pPz5QsuNzZFob199buGG1G0lrS814yIHaSaYf?=
 =?us-ascii?Q?a4dpDMIL30JZ+J3EmVIl8Q10jCedgdV7v+CgjoYa9qEDrLj42lXp5PC0mPnV?=
 =?us-ascii?Q?NPSg4ivusP+lXHK9H6xcztsg5MQ2pLp9a/7HJCItWp77shfjDDfkqFN3m1tR?=
 =?us-ascii?Q?IhD3VlQ40mAzS/S+zF16RQ7onNOj81hKAC+Jwk/6cC4pf8TE/5tDvfhBhpyG?=
 =?us-ascii?Q?NlKQdCNUaoE64bHmGdhsTMMqXaMbW9lCq/Tul1swrT5SKSiKZcAJEGvsJ+Vm?=
 =?us-ascii?Q?dLuC9Wjl1FjWAGvnAxS7GEEsYwZ8rNAc15O7JobPBq4o8Sy/aLurr85zQdhr?=
 =?us-ascii?Q?94beQTKBbvt0RcNsfVPtt0+rkOwtlFuf42K79BU074ecDFmkUj9NlwAGiZD/?=
 =?us-ascii?Q?EjO4Ogv00C8tfYGBn35ghhEW3cu/h1w5AgrA1IVOuDLJw8eXT2528DFdHOIJ?=
 =?us-ascii?Q?g3uHne5EMa5bIEysE1EwTNfIDilvcsIFVcvrK2KuZ7kpqEyIZBA5j9wGWuPH?=
 =?us-ascii?Q?5FIkf0ciFqDUc+aN6MK0Xrn5LqG5K2D9swLXBqOs2gHRV0XjWnsnEIxEACRT?=
 =?us-ascii?Q?JDfo6xhZvmbuQIutCXYbN3KwmsPHELyvnBJUWC8dKXcBxcZue9jItsKlGhVf?=
 =?us-ascii?Q?kcVIjr1HRCK1Ptnk20lXBtofsg1q+YoC34YygRuNA1kuwrooRKUYnflujmmo?=
 =?us-ascii?Q?phewThL1AYBuSFfubpRZ2wcsBaLRyq62X4fRBp/lg2q/70q3d4WCxcOKpXTD?=
 =?us-ascii?Q?dNlG8bYYO2Ka3VimvG5a5entRHZH+qROfVUijcx3jg/xBc3FNt3ZDBc8WDS0?=
 =?us-ascii?Q?znl/gVDrl+Z4rHcRbY6rj3IDobavz6o13YBqdM6t/anaHqzeG3rGc2C7f3cc?=
 =?us-ascii?Q?hE0O4VdmeUaVFCPS6toaYC8HevlP5XC0dmayc6d2p/yKHCFLO6S/uDwqcbOw?=
 =?us-ascii?Q?6c6fwhR4lBkrkWsu+dOvF6wDQIQqGV08ttL+UmrFlsy/0f9tHvaULu6PIjSp?=
 =?us-ascii?Q?Q66e4EHsi6UvjJfllcsIeMrMDyBhxajXbmyaRo2phyd2yIiPVisA9QioROtZ?=
 =?us-ascii?Q?uSkSWJ4yBoFPUw4C0d/ebaVEFxmn8OI3wIFAR52ZV04jplvoT4Sv2sX/6Ggy?=
 =?us-ascii?Q?Wp9kccFTKP90gCqD7GONdkyKrZRZ1STP1HWHJizPWO1FJHIX9IkUw1pt5Wk7?=
 =?us-ascii?Q?pLTlvVgRlD3zUW6zDNU6xV2tnSNhRb4bL7V8DTt1U/+sYkVbP5Ohvm38JLZQ?=
 =?us-ascii?Q?j9c+0In7cr74Spv8nHle9ygz4nTvS4F2mDHauw7OE/2NUCV+Bo9DmXksduh6?=
 =?us-ascii?Q?tn0Eetn/Sr8CRS5PxkQHirH/6dRCRVDZbYf+ek/HjwoO1EyAzD783YU8Nrer?=
 =?us-ascii?Q?VoCRW57+VCqoaWUuX+ZzUWbf1gXL50BfHDdx1j+0IWybjAUGv6SqUHXAt551?=
 =?us-ascii?Q?EA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74958451-427a-4541-4e0d-08dde926c41c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2025 07:11:26.4646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7juw1Pubht+KSikSyn7TI7MTYOkab9ffjTbwqwD52HujwFgRqSE/OCvQ1VMW7+b0srJBdf0EDAPWvHgAUgOf3gK6l3fXuZxS9kOw6o3EZb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756710747; x=1788246747;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yiIbY30OlQyZ04rxNgMzo3sUkbKmsbtcUeCbWg9YKIM=;
 b=CDCCW6cj9Dmww8R0yRQZc6rZm9Kx750gc51alkRqWFPESMB9Pib4ev9u
 zLt1ptgJ5LcJcI+vHmScHksFGLqCWcRjL/bpfBiggGAfAoVQ/FCG4rJ50
 RsEZm6iPikOee267nfgZKAorqyTmgX/mbyj8nMUzPD6x4gDVBRdUcGpME
 MUiK4d8c6tUbDst23lI0/uQetC1I88hl8ob5cYYIhvgvfcmkzHszVHl7H
 F1Qbv6TarbKfGY8q+Gk0MioQTwGwyKODUDBQ3ALiccixHN2y7uU6EoOXq
 uTyyms7UeB5Y8fRVil+nq04v9Wsgk7pUYwcbSWxZ5ciHg7myiqRt47sw2
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CDCCW6cj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
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
> Of Kohei Enju
> Sent: Sunday, August 31, 2025 10:33 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>;
> Mateusz Polchlopek <mateusz.polchlopek@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>; Koichiro Den <den@valinux.co.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak
> and use-after-free in ixgbe_recovery_probe()
>=20
> The error path of ixgbe_recovery_probe() has two memory bugs.
>=20
> For non-E610 adapters, the function jumps to clean_up_probe without
> calling devlink_free(), leaking the devlink instance and its embedded
> adapter structure.
>=20
> For E610 adapters, devlink_free() is called at shutdown_aci, but
> clean_up_probe then accesses adapter->state, sometimes triggering
> use-after-free because adapter is embedded in devlink. This UAF is
> similar to the one recently reported in ixgbe_remove(). (Link)
>=20
> Fix both issues by moving devlink_free() after adapter->state access,
> aligning with the cleanup order in ixgbe_probe().
>=20
> Link: https://lore.kernel.org/intel-wired-lan/20250828020558.1450422-
> 1-den@valinux.co.jp/
> Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery
> mode")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> Cc: Koichiro Den <den@valinux.co.jp>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ff6e8ebda5ba..08368e2717c2 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11510,10 +11510,10 @@ static int ixgbe_recovery_probe(struct
> ixgbe_adapter *adapter)
>  shutdown_aci:
>  	mutex_destroy(&adapter->hw.aci.lock);
>  	ixgbe_release_hw_control(adapter);
> -	devlink_free(adapter->devlink);
>  clean_up_probe:
>  	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter-
> >state);
>  	free_netdev(netdev);
I'd add a guard here: if (adapter->devlink)
What do you think?
> +	devlink_free(adapter->devlink);
>  	pci_release_mem_regions(pdev);
>  	if (disable_dev)
>  		pci_disable_device(pdev);
> --
> 2.51.0

