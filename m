Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 065AEB48A7A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 12:46:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 444C184A19;
	Mon,  8 Sep 2025 10:46:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1gi2MaOTyUR; Mon,  8 Sep 2025 10:46:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85F3684A34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757328365;
	bh=My2HHep5Bqbw5WAdo+vh/XFZrB/07putkOjfZ1j8KaQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wpLHGEOKaEZ4c41ave0RnX7oQ5iDADyqTlMmMr1z5pPLphdSBym9JL9OVg2YXOvd4
	 HqafEBdlBFOIwI4cIg5qQGQU/Um7jPE2UrtSj/4Dy5Wn310SHfXPn/oRG89vESQ2pQ
	 nMTUlfj6/yYihwt99ybHKghzk6d74L9NXGt0PdV+QYJVX3GoLNmHdbP9Z/RTnY9Ssx
	 hdfJD4mof/oHvxIQCtV4kx5hz5BWzHDVKKN0Ol6tMSPUcrghrHcvs0XYSQcn3n+/tp
	 rkaD+yc9qkA86eJNC63RLoqNNPqcqza/2MvmtDWUP6eEwDbJHyCqkX1ivIsj4dPLvd
	 dSxXBOjdIjkxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85F3684A34;
	Mon,  8 Sep 2025 10:46:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 151591D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:46:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF2E461514
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:46:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ICasnYQj8OEK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 10:46:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E94C8614D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E94C8614D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E94C8614D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:46:01 +0000 (UTC)
X-CSE-ConnectionGUID: mHamr+ReQQm/mYnuDs5xCA==
X-CSE-MsgGUID: SMP1ulhAS7WLGs2jxcSh+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="69834609"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="69834609"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:46:01 -0700
X-CSE-ConnectionGUID: yQOsyn98SDuYgGDjJJsMQA==
X-CSE-MsgGUID: kGR+1gUpTJOsmq9JQkKRHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="172879018"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:46:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 03:46:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 03:46:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.84)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 03:46:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B+6ffUt8T1RU+Rqdi8ihancS1Dgr9b68HSJDO9aBadvHV9BrCVLcNB9ATOkVm/8kpcfvUbPhRbGbkTSbnc1TEYTzmJMFMSLXd0BeYGoFuIPPmewq3lEMCkUsUjGV5N7Pj3QvnJpsPyIcpIzMrtancRxCXq/uo11bKlp+9akgNl7Z4t1M5xZ2tEBn9I71d1C3jr1YY2Wwgh00u70oOCZGy6ITgxVhwxhomDYp+pWPbdtdnM5tbZL5/zP3HydzD1tY16nJVxBlOIoX0tVaz0Q/6POniqc55Nus6jzIJYhhxecwcjqztyt3Lygzrvjitw+SR7z1oX3L+c5v/FeOkVrR7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=My2HHep5Bqbw5WAdo+vh/XFZrB/07putkOjfZ1j8KaQ=;
 b=OI4zoQ3R5+2DbsaCrYFwVi3qD/KveWxycg8sBMKfA8eco6Y8UmqsdEC68lA92lyo4ot29fuzwHo4OoHdWau5RwqcoSFJcvtIXVc8vzuhrXPwVYvLqAdQTVu71OWsg+FdJ3NyKb5YGO/+oUwX/Q7tGY1oG6erl42bd90Pqf4LoYkMhPLfhHCAj0qoClPIWptuUqpo82QX+ULtzVCk6hnPFjrjInjSA2SusCNXJll//9muiC9aWiRkHq45jRmYutfMa6yknk79AD/As+QWGHiNvDsAI6DLkVOLpJV6fFDToRMjj8uyoP46A9mOA0DBtHxHAS72/i9ZKI2FdeOOtT4+Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6796.namprd11.prod.outlook.com (2603:10b6:510:1ba::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 10:45:57 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 10:45:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
Thread-Index: AQHcHoL2/smGuXvoPUmYb9tmcEVxG7SJHj5Q
Date: Mon, 8 Sep 2025 10:45:56 +0000
Message-ID: <IA3PR11MB89863C4EB321285BFF8D4768E50CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6796:EE_
x-ms-office365-filtering-correlation-id: 4b9efda7-a44e-4cca-d9cd-08ddeec4e422
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?mNEzbcCp7AN+fzbUo7xvv0PLA0sTrAXWsx/nkX+0QNIBXPe6RndIU9ZhwaSB?=
 =?us-ascii?Q?djcba6elrqVtCoAqBtZ8zipEgPriKs2N4q5sWsyA60dCL1R0iIU5NU8bZeMz?=
 =?us-ascii?Q?0SxMudBPWq3F/yx9CTI7DaqrFSF3uKpYS6MSFnVjQHKAXzHeZ8nDPDXHFQ9e?=
 =?us-ascii?Q?AEf3Nd3qJoioeRRwqyv6KP3QzU07R8GI5O7xAWALshP0E+LjUjDHT1wYO74F?=
 =?us-ascii?Q?9KeJuEW6vALhukmcyfYYg7ODIEg6i+JdwBTEjhZFjtJrQFEyeSyc5YszNw1M?=
 =?us-ascii?Q?K/Hv9VaWI9t+JKUzfy0bpylLu3uFl3B4QhlUyvp72pumAEAGhcrzrwKDErES?=
 =?us-ascii?Q?fJ+fkbaRDyblEuwriz+V+s2czBw4cxs6SFS+Cup2mjY35lhtE2rJXIK6/mO5?=
 =?us-ascii?Q?WzKV++l9CjDN9zBSJ0YTR8wpr59fzROfVrM3hnZdDCYlyTer3OhcqzkYMRA4?=
 =?us-ascii?Q?9fgqq8gmYb3RFLYLPQ8dSw8AnHKmTIfYxuQLzEv04gofa3CDC5zUXqdNewBg?=
 =?us-ascii?Q?u2I8G0PPAamAnxd2PxrhFv6KCz8U3hkiRD2ilsxjCnPNhhWtCaLPK3fInc0d?=
 =?us-ascii?Q?FHjIoPT/phTUPcyguk8ra5W7biceoi87hUL9hcp1bMKpAGfwUqvngnX3BQCE?=
 =?us-ascii?Q?7tviGCQ+4DMUYxQ6IsaVFhtUpe32u7sBzFTa3sLtEVT/1PoLnOGudMyt1KJs?=
 =?us-ascii?Q?zrXzZAPrER8EVUnt+PoCa9a9rkBDGbscgHonztzChOK3sbBuc0IPyVO1bo5t?=
 =?us-ascii?Q?89e3OLESlc+DX5GTLYZ39tj8qZxdqKDcletr6hvkqT2ewIrVmGTgzs4Y+z7a?=
 =?us-ascii?Q?whEddYcFfBmew1naz0tFiEcvnRi/4TqrCHObhFJiH6Gk485tKZnxgQn1RwDp?=
 =?us-ascii?Q?G2m10krOjFyNClhTDaOODjTNi4M2YzwfwRND5wztVtwt9t/ubp9ljqG+xYc6?=
 =?us-ascii?Q?IaUNd0S6tzhN3sk5hxG7Af+X1aiRng6bcusu4OqXH0zwPqgmoqHhNNX0WOUs?=
 =?us-ascii?Q?gjQLQyZ3e+tTnry/ol/aKfk3gmmDjzFy77V/j13W7/A+76BZNMxq5YdXIH+V?=
 =?us-ascii?Q?RtWU+GwRyHTbSVD29wCqK26RxhVb6Q6/Hj2qKx12qFJXgqfBKS8sRLP32NYw?=
 =?us-ascii?Q?sQWjYwGBvCdYscsuNOsnlwzIdQg1u7SOEkkDjdVxHZBrY4ZLz53RDcniBM1O?=
 =?us-ascii?Q?04QXbfiqRcGoCTxUl9hLiux9kbZo7pai+d2DvedooXkwQ2SSCZfAaRf3tyrv?=
 =?us-ascii?Q?5PbG/WPBF0J3ehNKopWyGvQrTuhjFWFmRnpQDJJPKwPe+gx0VdgY16EAXT34?=
 =?us-ascii?Q?G62ZyshrCi39kbcBsEq9kk/fisPJ8NzFVY2HVIpuQ+kn462qx1Unze4sysJu?=
 =?us-ascii?Q?/JM+K9AsLNGEgOGCOcZeh23l82LDFgW5FS1uz6coXuuNRcf93IMSfE2vrlSz?=
 =?us-ascii?Q?Wfi4Mpc3/Hv6pdFz+77Z3JR7VrkQoWcYEBgZlDfCGmKrvbkLUqwvMjq5h2/C?=
 =?us-ascii?Q?9o0AOGUPDd6RlSg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ztFXZUuRIx4lPge+oAUwBo/tAQQrxMMBwtz63QJovNJm5qrfZKuPpfsxsU4n?=
 =?us-ascii?Q?7o8iTJxJ3xmHabM3jaSM/MczmLBIHIXaw1iKpxdUdyaSNcqvx+Io4HvpSFUm?=
 =?us-ascii?Q?nPbxJzdCLfrC8KvoTa81OD7rqn5QPYm6vcyqCAxQg32m4zOG28lxfMzv59Ek?=
 =?us-ascii?Q?OU2tTEOsI0mGbdYxqWUUYAo83vfbKvaejOVAfA9WFqgcRT1tWP1kvROiDRtU?=
 =?us-ascii?Q?eSVbETjRoPYpS2j2nA7zNvAG0aHqVBqEZGUByU78TRUO7kWuxxrBuW4qwFAk?=
 =?us-ascii?Q?K78zkMtGDcsA6PufvRlk9lzrRl7j9VtoFKAQ4NvET4L6R0wIIyXDhUNigwA/?=
 =?us-ascii?Q?TfrFzG0mEGrvSOQMuOdu3F4Om7NPkz7qSkk8S4InKl1vZdlseAv2u/jhgJaF?=
 =?us-ascii?Q?++Bdwgwc4vUTQT+5dzCUYm+bC8yt6cTnxMBK7bPYHERi421eBPDVfhFvQzIz?=
 =?us-ascii?Q?tAAe55bDT+aN+hpt8x24y2L5EClKlQkBnsvwJuldBnVtHU19fnBftK7bspjP?=
 =?us-ascii?Q?F29v6WcRyXQVFK9SchLcgOnCE87gK1m41iDQGGSvuvSy/AxiYlruJwL9k5+8?=
 =?us-ascii?Q?l/bD/Owgg+umYiKV44ADXUsR5LNC0z7lZL+JzNS3mTtK9zgRTLlWnNrH4eQv?=
 =?us-ascii?Q?pdAM/wJkzyHvAsx76u7a/p+DettZesvE1QYwdzxe5fJlkFXgW+4z9DoDvFA8?=
 =?us-ascii?Q?HsV8VMvKaijh67yCxsS42/3TeJgKikkaz96j8y2g0biSfdFJpW1AmlWStNt8?=
 =?us-ascii?Q?1sGJDBGFkqqYZae0DMmhMDcsz3ttU3H4lCpkLvYFqRMMjbzogJKQSD6SoW2g?=
 =?us-ascii?Q?lc+XYQFVcvS4/gYtWv5Oyz6fXK+KBdAUY1Eez9cqmePjQMTgvSK0xo4z6Dno?=
 =?us-ascii?Q?3peCdCSTo2iiZFfma22mBxV3aJoLDNpMpaFtYaTr8GraTZ4WtC5J9wIB2Ys9?=
 =?us-ascii?Q?NL6Wy4ixMRbZVwvS2Yzd8f/ZBPf5MLLvqsgSOU5thKl5CAtZOmi48Nns5dvc?=
 =?us-ascii?Q?SfLH449d8cTajn4ldwG5mCoL9Mh4CL/FtUlXeg9rnmqhWkn8ATzVZmsx92G+?=
 =?us-ascii?Q?6YKI2ubaKp91a0m8QL1IDCFYkqKlR+Tn9SsHd6/9JlQ85cNtyv2xYyuz4AWX?=
 =?us-ascii?Q?Iv9WBzMP119FphR/NVVeX3xkRx9Yz/Fsma+8LEIaO0GUjqO4Tdc57wYfH7qX?=
 =?us-ascii?Q?jgKo13eTsqknCU8VgRDQpx8zTzT5Qg59bF89pIg4PhelmUUY+j0LHwI0GcoA?=
 =?us-ascii?Q?O/prrgJModmT8O8KBoeGNpOBQGyIeYm6AP0ot+yQ01ic4FPaYnzHaY0D+vx/?=
 =?us-ascii?Q?qwcotT5cwjmX5TNGQsMRvkLm2c4PaXHMbIRgTbR50URidGeU+4wh6XWOIl4S?=
 =?us-ascii?Q?AmKP92af8teO2SbGLbAU4VbE9m6QwEEKMfeRhZkLD5ctjOpiYhZSXY0u8de/?=
 =?us-ascii?Q?AcsVUYL/rJnmSrLNooZH7XP6iUyEzooqrEAHoacOYW9h60LRziEiqghlddl3?=
 =?us-ascii?Q?GPgac0kHTfeM0YBsD9mnM9SrxfncPns6QYiF2mURAnK7vBwvokhhOZCL7++w?=
 =?us-ascii?Q?ViBLmt8UaKJIabsuHTxVSMWGHH6GulI8QRHMr0Z0PhA2LZl4qFqGP4Nusr8Y?=
 =?us-ascii?Q?rQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b9efda7-a44e-4cca-d9cd-08ddeec4e422
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 10:45:56.4438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sO6sJDZb4YHTPVZi/gBSCDBQSkUiA9qO3HmOAQWMY4Dlx/Byq9owFlth3mDQ34DuLEcWP7ETXraO8RtisEPE+gbXxu2HxdodpUhlvoTt/xY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6796
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757328363; x=1788864363;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1Tp6EyXDak7kHm7wtY4IOYAX7unB8Hael1zzhcI8rVM=;
 b=n2x+hNhlebvuzltQmCKtPt02i+mcx1YI2H6ZnCabbaVcAciJsIo19lf5
 ft8yfc8khPSLDClBxPJgACkObqQru+I6TIQXi2AJwLmbJiF0ZKAFCTaLB
 7NKY7LkuEBLj0EM7hEhlTX01vOPkv6+e3VSuDQlNxpVBJ/XCcL0/22293
 /Wi3U9wxmqNSN8uT5wCv5QW8V8x7DN65Bqvt648xi28sm2h3h9jy3puaU
 AEjrXl59K8Pq3ptFROW8JOySUhLDzaOnv5FwFrYfd1sduJLIV6jYtYt9l
 R1FEg/FRTBuSIhiVBKo3OvWsiiTUPm8je93lAtsJ2yFsgNH30TBQNYPwn
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n2x+hNhl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
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
> Of Alok Tiwari
> Sent: Friday, September 5, 2025 6:34 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; horms@kernel.org; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in
> function comment for ixgbe_get_num_per_func()
>=20
> Correct a typo in the comment where "PH" was used instead of "PF".
> The function returns the number of resources per PF or 0 if no PFs are
> available.
>=20
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index bfeef5b0b99d..aed8b30db2d5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -774,7 +774,7 @@ static void ixgbe_parse_vf_func_caps(struct
> ixgbe_hw *hw,
>   * from parsing capabilities and use this to calculate the number of
> resources
>   * per PF based on the max value passed in.
>   *
> - * Return: the number of resources per PF or 0, if no PH are
> available.
> + * Return: the number of resources per PF or 0, if no PFs are
> available.
>   */
>  static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max)  {
> --
> 2.50.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
