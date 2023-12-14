Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E36F812C39
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 10:55:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF58861B21;
	Thu, 14 Dec 2023 09:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF58861B21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702547740;
	bh=Syq5gilzFXd2TliVCwX/NyiyzcBD1tCHRvmFx9H+/RA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nx7hNTCtoVgzOxjMHYCNXoP4cTgPG6psmt353v2fXI6AVReJLFXPVqAkDF45Y13Wv
	 /EVZF8eXlWTo4k0w6nO818JZKRksLmZXPQTsdnglY22uZK3pRP27OKob5DIcaz9eiJ
	 +lOtsL1FIH+L+0RIfbAu7F2eAdoUmZYk0bIPJNhuI/GIhe9CKD/sytbfNyg1tZ24bk
	 5r9Haw66tC1f9KhmgrYvOOCaVp0/4KwEASiAfbsjZ1geId5nwU9VMDhrMgC0SyMkTE
	 jfQIbetS8hct6YgVTazDBv9QtkRnjAGdSQZA2QmTipIyNEtjzWK878+c4PJKuc5D1q
	 oambRcsh9I4yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wraGVJLXwvN; Thu, 14 Dec 2023 09:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57D0461B19;
	Thu, 14 Dec 2023 09:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57D0461B19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8B81BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3F04420AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3F04420AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Zhif2AvW1Sh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 09:55:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DADE420A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:55:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DADE420A8
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="392271749"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="392271749"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 01:55:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="918005912"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="918005912"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 01:55:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 01:55:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 01:55:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 01:55:29 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 01:55:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LOJgiZj044rHNy9ElxB1bKy2kh2UjfOT9UMfLdMBOjQpTCp38b/kN5raldGChO0rMGSYDccZxHBpNrZaHdE8DcP90fnoiac4aMjAlDntsgBsyXRfZDnPwZWRkutZMs++pYY6XJ6F7gJtwBlgIZkWWY1Ae6cCNXsbCVhsPTB8LM9ThT4ZXLSWqRE983gljxjywsU5Tmih/ufIeZKa8UPh64d8O4kNwmpe0Z4K+yQWRy+4O64crXvOw6G3xhbAbXcKtEPPGIgVqUkD2avbj65nW1WW3bIMJ2oEVtP0RerFPVZumHvf3PowvignqwDBk1jp/qu8ddTmjGCrwENOYqzrnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nJPS+jpVVMeGbg4P/orR7ws2HnpAEJan0o1lGmXHi4c=;
 b=mawiTrxZojHPOyUfa+7X3/qsLnmPUPsPHulqX8Gpfcl08HctB6mShrueQctQVOQLcHCmtaRjEKsbdQK2Rdg8ODBEOdoipaTUaaCQ52rstt2FF1Ee8oq3ovOc/b5NCqQGcKyBatWhOaOTyLCv+jnt+3JhzkCbgkcm3Y38I+o9RCBN10H2hFmG2OhrlCqJ62/YfMcMMjgSEgpm07i2uU+myWnQEcpRXUyt9MxIrp6ykxLYtEb7tTUYZ5utnlhtUMf4pVIg5S5nA1EU2Y5waVEjZSJoxdifMGeuK0VqGhtZybQ6B7WEAdDIxa4YNRjRLltkpFFY6IDXuesTdOqc9sjKSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by DS0PR11MB6325.namprd11.prod.outlook.com (2603:10b6:8:cf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 09:55:22 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%5]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 09:55:22 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: stop trashing VF VSI
 aggregator node ID information
Thread-Index: AQHaKIGLQuDcIIF92k+ETZMwgywfH7Cia3aAgAYqwXA=
Date: Thu, 14 Dec 2023 09:55:22 +0000
Message-ID: <BL0PR11MB3521FE2860D9AABE3A4312D48F8CA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231206201905.846723-1-jacob.e.keller@intel.com>
 <20231210114431.GG5817@kernel.org>
In-Reply-To: <20231210114431.GG5817@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|DS0PR11MB6325:EE_
x-ms-office365-filtering-correlation-id: 25710272-98f5-4ebb-df43-08dbfc8ac9e2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GkcKEUOHmxyisO1d/Wdv4ZP4t0/3uRiCPxIMIccKnY1dqU2FMT9EX2+1gcr5fUsyM5TLwRx1Lsx9nFd6idVDOrVbEwx13aDBui85cWy1bNkpk1DZHtzTOLxVJNteMIlbGswJ7kSA8/cmYqV/naftQycp1V/HcwE8TlS3sq5Zl51FiTOSSVlQZy/GKedr13bbKskp1IO+FjWMffjvH64OriwESgxhAYjMICgmr3hTWNN2QhTrBvXDkI+HRERB/wUTPQxssd9ik5uP8UvTLS0j+EatsNNUEIC06rcoeOhSLfrqq3y07oZfSo6ddK5CZFf4eSJ6W4kFEJ/2TeFPpixXs1UTDodO5ZSKWiEtAMsNGXGWSEX202KSV8/XVPHGx7jC7YItX1pVyaDpcGxHvJhQjVeYLhoVpVew+Nwa22dOeaAUBuHR9vC3qPuSwPpJKn4mUfWot8H+Zjcqqn09cZ8NLq9XVSe9Bxh+w+Tczz5B/k1mV23mCqV2IaWEwguODTEZtq7aJukG7t4S2q0SZp0ApIteJvAxcKpQJktu2V0fEqva+xaXdAtjbvLa98Q8OAtvmmkhqmdMQyUGzYCYBgLc6kHLfTfDiZ2cw1zfZ9w2LuaP2XtND+aVkeQrJpEs/iTS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(136003)(376002)(346002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(41300700001)(33656002)(107886003)(478600001)(9686003)(71200400001)(38070700009)(7696005)(26005)(86362001)(66556008)(66476007)(66946007)(66446008)(53546011)(76116006)(55016003)(54906003)(64756008)(6636002)(6506007)(82960400001)(110136005)(316002)(83380400001)(8676002)(4326008)(122000001)(8936002)(38100700002)(2906002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZIYapCkUB+cMJuGZOYDSJLW49yYi4AmtmSh0LZehoPFd6Ksq9zhHzNqGAi85?=
 =?us-ascii?Q?CpU6l5ZqYKDReV81XqUgTJkjRZHxZfAC+jC9baffuLXSI2C8FmhCq90Ji64g?=
 =?us-ascii?Q?ChjRKDJdWlFGgyPd5lsWsuCex6rzXuWXxBDa3om7k+/Ppswetk9/7BjCwgwZ?=
 =?us-ascii?Q?yRxYjLLm0gP9C1EWhGoAUdvkrmA5d/t2NtMeTboJV2mc7tvTMUtdE84a/bsv?=
 =?us-ascii?Q?cO6TqVnpchIUjewdRS8JdtMEtS18sHr6newGsiKSJTbXmSqp8k/YUJwM5r6D?=
 =?us-ascii?Q?Cfh/0f8H0T//nZubZcCGuOubCA350DhylvGznG/UHkbFuhHgAHxfXkifyz7h?=
 =?us-ascii?Q?bHr582LGe2evKcrwBnD+cv1jER4hIpk9yUJxE6oI0f3q9NnEy2fvyiPpyv4c?=
 =?us-ascii?Q?0f2mhI9RnIrIFn/ks8ncb5memECLfB1FIWqwwYfFZ2ywY4XUrx7OicrV4FXc?=
 =?us-ascii?Q?ygu0iuD0N+qa1D6PDfH+4rZicWEw/mADSWed1FsMVnu5laOSQ0aDdDug5lWm?=
 =?us-ascii?Q?G8GQwRlftVofgWa3ss2dNeiCS6Z5MVcQqwnAr0DzUmBqdDHaFOx9jNMEL7Tk?=
 =?us-ascii?Q?EhNTFYfgNiHrJeExt5ssgNArlkUMh9y4NlfqKYlzhEYbAKhpQMI0IW+zp8YY?=
 =?us-ascii?Q?EYc1mh+/VlRDYEnNtyRN4+HHFo+7wcw9QC3Bt3CwtNKYIj4VpC+Z4iPX62Bz?=
 =?us-ascii?Q?VBzmuF5pjXBKGsNl8SUsjOBEtxGeT3dRQMTx0bNKnfZ2BHzpRREPvR7I/NPS?=
 =?us-ascii?Q?JjqUnTXh316yOQmlGeLmmUpWDjdHBFHSrjrvvp6VVSbsSincpPvaQBuHFiO/?=
 =?us-ascii?Q?IBS1Pl87HyrVcU198WdyZUt1GxPYUtMzWG1/xdE+WfUB/y7lVgOXlSDcsXzB?=
 =?us-ascii?Q?t8njVnjMLhD3MiGTbq9xLKPI3hg8dRe80xVaXu0SIVZXdkyvk1pAaga47p3D?=
 =?us-ascii?Q?C+n1T5PGeKc4paK77Pn2cW/U/Sl/sdXbBzy/PtuhLcO+m226uDvsqHuOIxkR?=
 =?us-ascii?Q?Pzl701tlLDOI1DkhnDJw8LIzmaBE9qs4/gtuMLCrsfBAcfPKJPylhiLnp+rC?=
 =?us-ascii?Q?Mm/Y2h0ubkoeHKCAZ5J04oIsJTxSacQFFx4ycWGPRX34J6Oft8GiOxsgOby3?=
 =?us-ascii?Q?yKEKNHITXVIALoV/J2SnWYnNx6vVMxcElNwdQjlx7QMe2340qTpdpWGzyJR7?=
 =?us-ascii?Q?XMi9HWbshKJ7XVTrDMVKGjtLcdCoOmpbFGqtKRBGN6+40Bu1EK9aeHobTLhK?=
 =?us-ascii?Q?Ewxjv25tsT7iOl9HO7m1a4PCboLP5WYwMMmn1j+OZC2Llw78ZoJd8XPjxP6o?=
 =?us-ascii?Q?TDVDKUX6wj9ZgX4dd6VTLw1jHMV3u2xU2BuUCQ2MR0N/dIZIuNQ61Rme4pIs?=
 =?us-ascii?Q?FDQX+JtBhAiMO3Z3mhrRjS0Sw1bzIP0Yw4d7hMpu+OSkoFEiSGYxCLfQ0+/B?=
 =?us-ascii?Q?nXfzDNJ5jzoOvZU62MhSA2njDmHL14w1IQEHsbcwfY1wlEJW5WVWD6OfCFUE?=
 =?us-ascii?Q?BejwDPU3tdnI6iIjbIS76EPGx4qC7U5hldwuAOP4Sv8UGgOvkxODPhivMk/M?=
 =?us-ascii?Q?CqtwawVoaIvtVXdXdCfSQc4lIi/O9vDdHAoQv+6FrQdAX1maKv7pGF3bZRLc?=
 =?us-ascii?Q?wQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25710272-98f5-4ebb-df43-08dbfc8ac9e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 09:55:22.5799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YB53bQw6Mz2pq7uCn6Bty63mHr73v3IZdwmPBo2e4ChwcV0a4DCrDuMsmdoIz3KOELsHGFFbuHz6J/LcRaApUBV8OfNOhvQeLqqIjy+oT2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702547733; x=1734083733;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=biw3dNGEUUS9byzm3UaE/MB4eSYNjwax+GK6N1Xnakk=;
 b=GP+1FjublL/fl9enYpOmv5zeyNSbaFdpQCuYXrNnefnmfIFY0I8AtKPG
 iidyQl2Yp6qVLFj2tl/XmsaCJue33T91d1SQDJwy3I+iHISfJmOrdWipS
 nxGP8rPQxy/97M00aFUHIjFUH2fow+9ybzPRLfstEhicsMNKtBrU3gNbk
 3mBlK+xP4Awqv5OaWIfGcqLjqLiYRZhGbfPWAJyDtDpGrb7ukUEW151eK
 tu/DYgBgV6xHcGnD1xNEl88YSzMp+fYOnd4AW28vcibzl9ABIoQNUmjT9
 4hKJ+Aq5f5aw3HziPGVN9E28OGA6z/lTmulTSK9CVn2FJTsn70kFrP138
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GP+1Fjub
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: stop trashing VF VSI
 aggregator node ID information
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Sunday, December 10, 2023 12:45 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: ivecera <ivecera@redhat.com>; netdev@vger.kernel.org; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-wired-
> lan@lists.osuosl.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: stop trashing VF VSI
> aggregator node ID information
> 
> + Ivan Vecera <ivecera@redhat.com>
> 
> On Wed, Dec 06, 2023 at 12:19:05PM -0800, Jacob Keller wrote:
> > When creating new VSIs, they are assigned into an aggregator node in
> > the scheduler tree. Information about which aggregator node a VSI is
> > assigned into is maintained by the vsi->agg_node structure. In
> > ice_vsi_decfg(), this information is being destroyed, by overwriting
> > the valid flag and the agg_id field to zero.
> >
> > For VF VSIs, this breaks the aggregator node configuration replay,
> > which depends on this information. This results in VFs being inserted
> > into the default aggregator node. The resulting configuration will
> > have unexpected Tx bandwidth sharing behavior.
> >
> > This was broken by commit 6624e780a577 ("ice: split ice_vsi_setup into
> > smaller functions"), which added the block to reset the agg_node data.
> >
> > The vsi->agg_node structure is not managed by the scheduler code, but
> > is instead a wrapper around an aggregator node ID that is tracked at
> > the VSI layer. Its been around for a long time, and its primary
> > purpose was for handling VFs. The SR-IOV VF reset flow does not make
> > use of the standard VSI rebuild/replay logic, and uses vsi->agg_node
> > as part of its handling to rebuild the aggregator node configuration.
> >
> > The logic for aggregator nodes stretches  back to early ice driver
> > code from commit b126bd6bcd67 ("ice: create scheduler aggregator node
> > config and move
> > VSIs")
> >
> > The logic in ice_vsi_decfg() which trashes the ice_agg_node data is
> > clearly wrong. It destroys information that is necessary for handling
> > VF reset,. It is also not the correct way to actually remove a VSI
> > from an aggregator node. For that, we need to implement logic in the
> > scheduler code. Further, non-VF VSIs properly replay their aggregator
> > configuration using existing scheduler replay logic.
> >
> > To fix the VF replay logic, remove this broken aggregator node cleanup
> > logic. This is the simplest way to immediately fix this.
> >
> > This ensures that VFs will have proper aggregate configuration after a
> > reset. This is especially important since VFs often perform resets as
> > part of their reconfiguration flows. Without fixing this, VFs will be
> > placed in the default aggregator node and Tx bandwidth will not be
> > shared in the expected and configured manner.
> >
> > Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller
> > functions")
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > ---
> > This is the simplest fix to resolve the aggregator node problem.
> > However, I think we should clean this up properly. I don't know why
> > the VF VSIs have their own custom code for replaying aggregator
> > configuration. I also think its odd that there is both structures to
> > track aggregator information in ice_sched.c, but we use a separate
> > structure in ice.h for the ice_vsi structure. I plan to investigate
> > this and clean it up in next. However, I wanted to get a smaller fix out to net
> sooner rather than later.
> 
> Less is more, for now :)
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> I've added Ivan to the CC list in case he wants to review this too.
> 
> >
> >  drivers/net/ethernet/intel/ice/ice_lib.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index 4b1e56396293..de7ba87af45d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
