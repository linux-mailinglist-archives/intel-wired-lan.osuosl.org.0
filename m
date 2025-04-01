Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8370BA77821
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Apr 2025 11:50:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA0FE84ADB;
	Tue,  1 Apr 2025 09:50:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IaxeOFu7aQGz; Tue,  1 Apr 2025 09:50:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA65E84B12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743500999;
	bh=kWtcSErcX2K3ECJXFSNs7X004LenvlJ+QvRMnV1uQFs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6OS8+bZ88bwp4fCl8Ps3DIKJDnKiNcQs+9g6oQGnCqpXAexnhzuBUh9+zgb5XT5XT
	 q1ZDCO3J0jA0MKK/cg1Pl0WWbbgM3y1sR5naaR8i4Bmw5vobuMcdda0EL5AKbye+yQ
	 7/4peFd7zsOLxpZ6cATdZrGKGwk2PFs3Ffiu3Opfm2cH62Mrkw4PE3v7wTRvDlA0e2
	 1qIZe9lhnmlCI48uAk22jjew1wFjlBmZx2qPSS2tQZmAQhyHdf4H5apNO2TKkjITfD
	 J55QwnYVwICDWAXp4Nagak75MIu10NQa4rz4oHzzw7JjxCgWU2NkZwUfMaaXoD9ALQ
	 wTATp3Li1qRVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA65E84B12;
	Tue,  1 Apr 2025 09:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A0BF17E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 09:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CDFE41965
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 09:49:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ytDSt2hVUDF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Apr 2025 09:49:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 291D441883
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 291D441883
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 291D441883
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 09:49:56 +0000 (UTC)
X-CSE-ConnectionGUID: Ubi5XTV2T4+mbXIj0anLZQ==
X-CSE-MsgGUID: A21YCWu2T2WYe/UmsmCgSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="55010614"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="55010614"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 02:49:55 -0700
X-CSE-ConnectionGUID: Ro9E7N6ORfG98McBYeQpyQ==
X-CSE-MsgGUID: tE3r7Tc4QwahxeP1CXyudg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="131474379"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 02:49:55 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 1 Apr 2025 02:49:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 1 Apr 2025 02:49:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 1 Apr 2025 02:49:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nw0hNnt+PK2XhAD6+1tdwNobZ+uZ+s2DzSHdD1FEH+3OIwxi/eoIvii6rY0Amf0mwZsDAnxSPaLsIDMI9F/rGr5ac+pVyEsyk29pIKd67ULJxUM04GeUYUTgqe8fMlQUycEpJEDKqV2Pk1rwtIbk7U8pL9XCUdvN2whjKox86uTNbkJhuYUO5HXAwYl6VADR9QOr0BYcbEZzsUA/IdtdcGvvVySdkGUoAzy9NuG0eyrAIwLdTWlHygHk5myw5zDo+bbBImVzhpCmfj2dvDEe6ESemYQDfEff9lhT6rfSClU+UYj1awIxwGx6/eK9+OoF/x/KsyhEoltxmTYoAcjRvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWtcSErcX2K3ECJXFSNs7X004LenvlJ+QvRMnV1uQFs=;
 b=Mc0RwJHumd1n3yJ9KXtNsWa+Z3bhVX+4oTxOu+AC6lgOCsihanE+cIp8WKmDgs2TpaUJjGA2VkNJOCM3aoclsyVRYTSpyMEKZ7xuWqVmgqxROQOUkVUfD0/bItlvJMvmwPkZ2smOkbJ0C9VxvrrTmPwAUgsK6GVSk7iI+r77ER5fUJE66WFgIx2tx8g4qUTR1q1EEjnLIJVsrQ1UJGRN6jPaD4IlVtPyR/AL9+pHsoVXwCS+fAlm/z3Qda9q529UDeMMxuHYRRKWTlBrW0ljgPZ5+3WnlEVPGiZmfaBTGbwshAo2TKzkOTCoTrIBCUAxRXYd4yoAIlbdLJ1t3s6cZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by IA1PR11MB6441.namprd11.prod.outlook.com (2603:10b6:208:3aa::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Tue, 1 Apr
 2025 09:49:52 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.8534.043; Tue, 1 Apr 2025
 09:49:52 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Simon Horman <horms@kernel.org>, Martyna Szapar-Mudlaw
 <martyna.szapar-mudlaw@linux.intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message
 for insufficient filter space
Thread-Index: AQHblLi6BpF6HIeWIkSLNd+sSrYdgrN6aGOAgBREBiA=
Date: Tue, 1 Apr 2025 09:49:52 +0000
Message-ID: <PH0PR11MB5013F63C43277D7466F4F95896AC2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250314081110.34694-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250319121743.GB280585@kernel.org>
In-Reply-To: <20250319121743.GB280585@kernel.org>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|IA1PR11MB6441:EE_
x-ms-office365-filtering-correlation-id: 934819f7-d319-4957-6c23-08dd71028cea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?oRy41ZKgwSAevWhJ0LWCdIvUiGmtbe09fCS+pe5CM3Nuz82eT5CVApDCCwhA?=
 =?us-ascii?Q?n2O3jkMQGTgS0VR/K39cEwi+obsleCVFEm/2v/YWdugJvblc4WwPPBO5amBj?=
 =?us-ascii?Q?RaTvMHESyzkhDpQQ9JFNivs9lSEapzV09nvYOnZ8S5vUOk3on0inMQJEm56p?=
 =?us-ascii?Q?EAvpGJ8xVF3JkWNGHJsoNuC8fi933kWo6GxrN1JZVFkuCxk6H34sn++4wVbr?=
 =?us-ascii?Q?rgz8sCTKlknYGc8HnZv2gm+K8AbZsgwRmEUdR+K6/WFH5hz0+ghEArc6BuNr?=
 =?us-ascii?Q?2ws4r4PJvGZ6WJN0x0FXiAyYjIgjli8ZdAG7o3WjKVfcz7r27zepQUznh+6H?=
 =?us-ascii?Q?c0w17Y1/dBkXAs7atFRW3Z9voxbO4ZNu7zshuMLDDR6bLmkTMXUoVlsUUnRg?=
 =?us-ascii?Q?hkDPSju6Q8ku9WrKbccfCGpn7duZ602SUduZQrUEUPO9KHNTZD9cqvVrPYI/?=
 =?us-ascii?Q?1uPQ7jCKfQFfmZ9/8FiYtj2fg38hqw/0EmeoV1DR+4DG5dpanQPdz3oRzmVh?=
 =?us-ascii?Q?t03ESBAUwbLe6i26tQErYFKsTfH5l9oeKTCf+W7PZkfKT4Ti+k4ILxXzs7Qp?=
 =?us-ascii?Q?0TkEYLwxtRKB6vYvDWjKqJ3yAHzyCtedLYFluRVH34eWymF5FgFpmjU/TGS9?=
 =?us-ascii?Q?tU9sijI4EMDFmXRJ0tUGZz+xa9NgU64kneh4jOozpjrO76zje5/kfGO0ev9D?=
 =?us-ascii?Q?wVhAJIwnep1wOiM7vwasGaYvvLvojIf7o3LpiZ+02L7IqS0UMrIUWgZ+To6J?=
 =?us-ascii?Q?xWBxdAqW605i4R3XnKAVR+gLtTD8lSy7LxXwctGnpoXXmiaHqnAwUYUZ4E9s?=
 =?us-ascii?Q?ps+Mhwl1VWqK2eVsG5mBANcxYWrLUo/M38QEtRgaQ2n0gt2DPVENslWTgToK?=
 =?us-ascii?Q?ONAu4nKmGtnk5Wn17oTPd3y0fFt8ZwzlxSixmhW9OMyat8twSh4P05hbrktI?=
 =?us-ascii?Q?SKgjrlrHMrN1qZHq7rp9h+PgVhwJLGkwctA5+GdjaUFOfb/PpESTJa6/B0Zt?=
 =?us-ascii?Q?GcGTMIKmqFA9EvU7w2j/4jUeS/MFXmhRghot3TJKToaPAzA49JyejYUaVT6d?=
 =?us-ascii?Q?E9j9SZ1GWTPeSRUSRNToYAuhTJhqaUExQKuVQzHY6yl1E98uHYOa8kkYkPM6?=
 =?us-ascii?Q?mmBZJGBcDE4ZK1twsb/iQrilv93AUpaJ1C4wUGbtKCOYcy4HGTi3uQ+fYyES?=
 =?us-ascii?Q?zR6Ftkf9yM3uSRs81uHvsm1gKqlCUuG1AVbKAZlTV1xjYWk5D/kcDnXQDP8e?=
 =?us-ascii?Q?RqbO41kxlAJ2AugHLKsVMrVbFkePov8O4seEpIvKKXPHbwYRiDZuSkPlxORA?=
 =?us-ascii?Q?n5k8Kj8ebCGIOX4DRw4h1Y7NG40aB6CzkRGskAkrmd708f2bqeigylvCd0Jx?=
 =?us-ascii?Q?5Nr2iN0N2FiLo6vPeRvqngXHoUn6WC76fNqpGAyKX5FX+7us6iHYl5nyuX7k?=
 =?us-ascii?Q?JYaOPp0Ppr35kU7FYPBydzRm8oq+wQPX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GlhXBT/zEAD1ifvJypVJJUHw4BTQJsp5OfNCkwsuFsnNxkwmPN+bLo0Gg7Gr?=
 =?us-ascii?Q?gVEMsH8dre3TvZ9inrudOaIE7Wv/NiXUZNX9jKNDUwooqaoWYO0JN6jJ8U6t?=
 =?us-ascii?Q?PvKXE5MYUnUyEbpSGd9rHXwNn/03UUVT+WeKmFW9o+Xf6eiUfZjT/ieK8THM?=
 =?us-ascii?Q?HiY4VlJGCkVuk4rkVrzH3m6tIn+M/Gsg7FwhODyU9wXjtCcAjbjU1cgugpY4?=
 =?us-ascii?Q?jSZQUIAjWsxo26OztqFTgDWya2HvlzRXwsUVRQz0gPt8dCkp7XS/0eOQyQ1W?=
 =?us-ascii?Q?A+RMuliUsTXsBtDb80DwC3VeH+/ZOEhQHjJGEfKV9ykEtNc3qdQXxGK7Wk35?=
 =?us-ascii?Q?xKvFQ7RLu+lTJtRfBhCqtK9WdoLaAMLGJZWdhtZPvEvRxLOz0/uGp+fzxaZI?=
 =?us-ascii?Q?xQLdV0aNnhh5BX4Jo5gsTs1N6OBIRWHIb8VnPoBb31i3DBvoLwK9pRQqY0Rc?=
 =?us-ascii?Q?2IkgepdlYuWdAAOkz5FCxL3xSAt4E4yebUQE4HMrBf4PJxF7szGFfdIycyug?=
 =?us-ascii?Q?Qiau8XpwJ46f0fWBBJK2bk7X7aKBkuvfoUwOmH9ZP1wxpU73hWsFCDrCk6nt?=
 =?us-ascii?Q?07NYnHhkU5GcMw0EOATRzhWKJ8E91U+drGGNWNMSTvFHBD94HwMv+HngFoP7?=
 =?us-ascii?Q?Ctyy3JmpVaNvuMYRl/dQ6IqbHbhqVnYxANxWn+HpWJE0HxRrmN7ZpmPq8ccf?=
 =?us-ascii?Q?CXxpBRQetalwL0OZ6x1c3cwraIZVQDQaycm0JoINle72RgfA7M1ds0jaDtZX?=
 =?us-ascii?Q?59mDcsNr2/bs7PFqkbVDJErQKJyiMmdqc9E0o2XMu7Jqt9Wfx42+sBuitEI7?=
 =?us-ascii?Q?UExuOdr/MCSoMLCGSS4xOsG3TwhN+b3UlOrwfILQUggazfREeG9XLWbES9qa?=
 =?us-ascii?Q?kplXqncWcekwJEPstChbT4dTq4Za/ys/hxEYFp1qM7z0VmaXvLnw1oV/JYaR?=
 =?us-ascii?Q?mMu/Riiu+GnANmz3Aagt+RdtCle61bLx0XgeYjRe2unRg/55ufUjOmGzCFQQ?=
 =?us-ascii?Q?xv0xlHBFB5UQWMeSlv0NzXZ3pGVLKHwvKPrzyibWjTqjH3/o7ePjShhrpHRS?=
 =?us-ascii?Q?CoV0ibcDppeI3fpn3iaBXqH4+ts4j/FxEMQMme+h8HGpQu97YByybChy2t2o?=
 =?us-ascii?Q?m45Lje87tbTOrBkOQ9/ag6RX6HcWIJTzhhrIPmrVaXf/8Dpvq+yCw/toDvLP?=
 =?us-ascii?Q?1zp+YgAJJeLjfpvcNIeAlNTlS19DumAgxAgR6WzunAQN1TROsEuMfrPJ+F1O?=
 =?us-ascii?Q?sG3bhWswAP0zjPbpXImnhLKZ6uQVnA2pS4ik4FYga1xpsGY2z1iJ1fGNH8fJ?=
 =?us-ascii?Q?Gr1/MpGTV5YUjYePEMQsVVCkv3jN5Gh4htwIEr5ETH4k2vLt0jqKDDc9vh4c?=
 =?us-ascii?Q?ThFZcANqP8WCYUAM4UR4HQnp0Ym/Lo912C6cOGHhoSueeyllrOV1heTibjrQ?=
 =?us-ascii?Q?uG5GwIbFnRIUHQtDtbwPa4gtl32EfwnuUf/Wcm0vuzosH4eeeJP0eCSoJwxa?=
 =?us-ascii?Q?Wf1eM+R0PZY1MBcSGYI5IDB7ZAUHnl+FQmfRk6w/eq8iS2AHAqfr4U53qM7M?=
 =?us-ascii?Q?/CDPuX/WM4nUVq4Wp31xiiz3Q5XBGbPihK7YdO+F1ig8hD4xPdW6Vt+3jzKL?=
 =?us-ascii?Q?/A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 934819f7-d319-4957-6c23-08dd71028cea
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2025 09:49:52.4047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nvu1oOuhEgHKiJuI8JTqeshQYI0CwpfmLEwYnBmoCgQn/nFhSr9WAOkLyC/DOZijP5BDcK7M+yTvuNPiN1qw/sQce+9E6QMatxu5MaZ5Uxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6441
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743500997; x=1775036997;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kWtcSErcX2K3ECJXFSNs7X004LenvlJ+QvRMnV1uQFs=;
 b=M3GTZddDMa+HuE6dLt4X/ueXePKGEMQ9Ek6874EgfKDUunFQ0jQc0bXR
 Eo2Dg0RIFWqjys/tEDq17hYvUtNkWpYV3tyE/hN1H4IS0+gnks7u229wH
 R1PFbq0zxCYuYvC3iXVguYAxAYAE8aux5KEx1Uo38uphB+MRQMzBgKqPw
 OcZTwH6hdziebPz8f1r85VJXQBka1LqdTO2zAJvfBzo3e2sZLdbCdZXzy
 dINkoR1Bza4FpYA0uppqrFZOwWkChWp2ZiGf1gt6xo4xp6AzQ3bPtBzTr
 JZCGaKHDnOkG2t/Uf5LF+iIc1TQjFjQfIYKQPlfbyNgMQmgZmKIM/UkMu
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M3GTZddD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message
 for insufficient filter space
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

Hi,

I tried to add tc rules to the HW beyond the maximum limit and still notici=
ng the below error message instead of error message mentioned in the patch.

[root@dell-cnv-sut ~]# tc filter add dev ens5f0np0 ingress protocol ip prio=
 0 flower skip_sw dst_mac 00:f0:01:00:00:0E action mirred egress redirect d=
ev ens5f0npf0vf0
Error: ice: Unable to add filter due to error.
We have an error talking to the kernel

[root@dell-cnv-sut ~]# tc filter show dev ens5f0np0 root | grep -c in_hw
16306

Please check it.

Thanks,
Sujai B

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Wednesday, March 19, 2025 5:48 PM
> To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Michal
> Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: improve error messag=
e for
> insufficient filter space
>=20
> On Fri, Mar 14, 2025 at 09:11:11AM +0100, Martyna Szapar-Mudlaw wrote:
> > When adding a rule to switch through tc, if the operation fails due to
> > not enough free recipes (-ENOSPC), provide a clearer error message:
> > "Unable to add filter: insufficient space available."
> >
> > This improves user feedback by distinguishing space limitations from
> > other generic failures.
> >
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Martyna Szapar-Mudlaw
> > <martyna.szapar-mudlaw@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

