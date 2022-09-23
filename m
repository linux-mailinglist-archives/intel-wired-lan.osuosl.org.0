Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 398C85E799C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 13:31:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E9944093E;
	Fri, 23 Sep 2022 11:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E9944093E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663932708;
	bh=vdhyusoHJlbpTu/cTPDTc/kiE5yXEzn1oerAS1UjD4A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z1GGDDr2UyohHfMo+EMFCBXauZbbisXbey1IfJvMKNmQS/gYXoRf2tjFAP28D7P/u
	 XW/Ujo7dwwHEN5RKcwNXILm7+fveoBl/AW7yhGQe0acXo3lPz5xm7bM9VmubBe7EAH
	 BjtoPKa9hwSRrIXpoug1XVMa8NV05IahiCfe2WMZuTzLvkAMpsN238ypP82VAFpMLK
	 svPHanUArEVyn3dFDdBZybPy5R4lUs/C+wWML9slH/bdIZ7+/R8lR8Q5gpgk58I6xf
	 vgS989gItP1f9QxH/LbgW9M+iSRQLivu4i0K3pUG8WdlErz/80EEb14KuHbzLi0sm4
	 SxfzFf/LS8Z+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19upgscbHgSB; Fri, 23 Sep 2022 11:31:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10F5D401D8;
	Fri, 23 Sep 2022 11:31:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10F5D401D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 999EA1BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E77A40866
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:31:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E77A40866
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N4KFG72M0-Ip for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 11:31:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 080AD401D8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 080AD401D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:31:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="364588315"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="364588315"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:31:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="762586080"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2022 04:31:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 04:31:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 04:31:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 04:31:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 04:31:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E0zr2MkH+zgN6VrC0sDwBvR90Dt/4w8ttf6VoDA+sVJL9BEYSI9j031Z69WSPAdTlybxMsHGNxZpyRuaxh4Kcuj1M54aK7AVw7J6Ywd9dt7MvUBGZCCA+HD2T7wvmAOGvhzMzab8c0A7PzB/5vvcNVKVkdMtPcoPaIvr9i+rG4aNd2Xerfn8KOq0yYz5/0COJhQMWJF31VdPqhcsXQzqMDTiSpV+E88qY8qxu/TUY7G+TkoUlVNau+RA8JMqi/xmkbbkx9bCrjBpr19CodvvbSY1D4NdTwcQpxeOc4iNDVTHRyWxDgvQ1gy5/FofKkk6qcJmbRDTi9+9/4uY1FuANA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=32lWNPWc/MB1hO3Ac97vNvJZUHIJ0FnlHrMZ1edH1YY=;
 b=GEUeAki1/4BUczyByz8OjxcyfuntDY6tPtW8Xg8Nfp0puZWrScCiK++kOvK3o5Ttwecbk2TfqjHmzqU6PHUdrhPI5Rtgc3BNuRw0/0UtvEdUYjcGZ9hVeS4mFivpwJyegYo6BQ4gVXUlzI2Cte2YAmmQS/lQ2ThAeX/glC4xKe1osRuSdCIhY02YuTujXuaq0ySr3sZPwJQsWgHMm7p79/Igt6p1FOnh19Xgdu83QzdEYbtKuk+bl2cnW5nSUK8BRu6+fDIneQzbGuVnseacvtm4O9plY27E9shIHyF4tBDvFr070/72P9it3s1BbND2leaoi+ArhDXdgrO7lXzRfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB4177.namprd11.prod.outlook.com (2603:10b6:405:83::31)
 by DM4PR11MB5996.namprd11.prod.outlook.com (2603:10b6:8:5f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Fri, 23 Sep
 2022 11:31:34 +0000
Received: from BN6PR11MB4177.namprd11.prod.outlook.com
 ([fe80::f3ab:ab2c:fa82:efa9]) by BN6PR11MB4177.namprd11.prod.outlook.com
 ([fe80::f3ab:ab2c:fa82:efa9%5]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 11:31:34 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Michal Maloszewski
 <michal.maloszewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: use GNSS subsystem
 instead of TTY
Thread-Index: AQHYyi4+WlqJDL8D3E+GQxMCG9BwBq3qB5KAgALjk1A=
Date: Fri, 23 Sep 2022 11:31:34 +0000
Message-ID: <BN6PR11MB41774304A0F8B36582518B8FE3519@BN6PR11MB4177.namprd11.prod.outlook.com>
References: <20220917004009.77412-1-arkadiusz.kubalewski@intel.com>
 <c814110c-4dae-462e-daea-de25ab29e176@intel.com>
In-Reply-To: <c814110c-4dae-462e-daea-de25ab29e176@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN6PR11MB4177:EE_|DM4PR11MB5996:EE_
x-ms-office365-filtering-correlation-id: 0c21d8b9-653d-4eff-8a71-08da9d572ba6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aaHiyMeGqoEURs9pcgCeX8xt+Rnm+Lo+8/1cbNFuJVVdbtxUdiksciDyVGZCPMCAx1qSZzzJbOE+3dPdTYZy1DsHXFQDyTVofMT5p4tO41vgddEWyZ1t54YEZmrSgbY6qNyvEG3awcIW0iKFhygqQ6WCzOp1GCsMQuOBg2Ig9b8iRubxUgiOgFpz6CDDZAN9NfcS6V05Uk8x/nXWqM5hi7tO4i9/0rkTscgppW/uJRbvICoqM8tAbancY+/22adRXWVQ7WR3N2nOivUjE++4BzVCaw29VMr9ofmdR//KSVADb0yVOXydReDBhgZR0278oNscLRrZgS6e80BgzNIEEEkhkUwXXJVu4bPeopTVOpTdEBANDCBnlWsU7/INJqKv8K2y4EVfs0hawhRIswn8iZndU1TcgnnTJ1DyNKmKWP6+zgcXQjWyvtLigsm9JFY1X7vts+5wfayWN9g3ZVD9BDTQEUU+OMHexqsT0wVDMBOWiQ2th8WnmZNzHgzoCWm51EeAa1+qg6jEz+tBzq17sTDBrpOfwwf9rFyEgurdEB5Fe+y2h0CI9SX/6rjPp8cGvYNBQSeu0575pBx7OBzU15V2upPVbuwdx71IuEKElKe9B2H0CCu6ED+tLRpSUrWNnuRnH/UCVURhkNb38aHGeIU2GTfruM9/q6hg30aruz8FSINjurkwfIfrKQznU5WLFPSLAcSxLUW1MB6ScpaeN3ESAMTM2Ct/IQn61rcqBEJ8OMiShWn4TfoKkzq2XwdpKc9IeS0T7OZpIYzhP6pEJSoGRgEn/cYu5IbvPXeoV5Up8BHZeyjMbnusrqRB4kXBBOJeZAl7NU1pjjWkfxSPew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB4177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199015)(9686003)(38100700002)(26005)(82960400001)(122000001)(8676002)(6506007)(7696005)(55016003)(76116006)(33656002)(64756008)(4326008)(2906002)(966005)(38070700005)(53546011)(41300700001)(86362001)(107886003)(8936002)(478600001)(66946007)(186003)(71200400001)(66556008)(5660300002)(66476007)(52536014)(83380400001)(6636002)(66446008)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tDS8KtZxZuf0V1Ocn+Cn0rf3aIHf0qzBRgCgUG2kL9lvufgZpnJgEuiKra/d?=
 =?us-ascii?Q?1IRaT8/OipK3OwOwp6ImsfUz8jBNj1yHRlEdt25cR2+B6hktP41FJ9Yap06U?=
 =?us-ascii?Q?RnOe1zdifmbS/G3mX4xtWlFnGnEOGihKq0f1lWqTE95Md708dH0c116N6Lkr?=
 =?us-ascii?Q?FZuUZAKZgtqesvMFI/CIC6vyuIZ2x5IPG2S7uVzAmS6mi/iKZMYoc/xT5USc?=
 =?us-ascii?Q?GhNoF8VAzjTU2vgCYbg8FXLO9VBvNtjZd6PfD9foDqMazCZxtYZCyVkIJWi/?=
 =?us-ascii?Q?TmK8DLWPziFxcuZpnZ4IJ39OaKa7TutWH8QbdSpRJkQzyv1k6GP+nXy36vL5?=
 =?us-ascii?Q?icZCRhaZomGOVT1f5ZoLZcs4eqRvdXu65SbaFjKEnrXRfszigTdMLCks71hG?=
 =?us-ascii?Q?/5HHeyDVG9EIzUWzSczOurPsjwiLbFqv7GyOC6cuKwBX54dEX+Exhq/V1Wcr?=
 =?us-ascii?Q?xiAyyGh5ICQrZ2UauL2PIP6zBoRYGKO86iujT8nMgStfoSWe4Sh5q9RhngPY?=
 =?us-ascii?Q?76Cc4pse78gemgPCaH8Tsxr9/Gtyj/QrDQmcyfg13y2RF2PIOH1rScnt66ju?=
 =?us-ascii?Q?Y248/UfJdhCE5ifBq+YEAL9cF1MoVGZWVMtg9qiwJEugEScPRiMdNfGnGU1d?=
 =?us-ascii?Q?zuIudEQ9EYycEwON4zZdknc8EPBkFvld6smbgJ/mklz62MWH4nPY0dNWJ+5G?=
 =?us-ascii?Q?OGiuPoOmzH1XQ6pETlYZvUJs5rgwsST7nonccSm1T0ZGyQxLh/cc2MB3MIBJ?=
 =?us-ascii?Q?3K99H3QyyTq8gKeLDfZXnuSW5Bf1Nta33aTNTp+tdKOGG9wHF6Y1zmKEHCLW?=
 =?us-ascii?Q?qO3kgaIraA4WF+VZYeAqUZPVoYgA3GnAT9rN9wDrYKHnysS60CCRPHJw2dPC?=
 =?us-ascii?Q?m7ShRysiJBmO8ql99L5aLCcKEf62p+fDyfeH3/fj715OqH9wvq5BrSUXjmVO?=
 =?us-ascii?Q?yvY4JMfQooq20VQQMIfStAAfIpWZn91OUYWo/uXLkH9IkKrAUuUbF/hRGjXv?=
 =?us-ascii?Q?vrfgcM20hjxg1Eui8Jh58LRL1qQRPqrM2cPNc/CFmRYZDcEz74gE0bgGO/oA?=
 =?us-ascii?Q?SWJ3xrZSigmt/IUuNlPFOeo+xl0rpDx7k9TS9BdXxFLnjkDYcQveDzVD252u?=
 =?us-ascii?Q?e0ther1ex7u0gvsGH1/7gRz0hVwiutpp5jSPuHvB2PKWQC1U+rvrUbZ0mQOI?=
 =?us-ascii?Q?c6PGdfvVveII7Oxnx61nGkERtrjzEt9f3cN3S1uwifo87bXtYCfsWYd2TJZP?=
 =?us-ascii?Q?HOvCYIW3JrDV7khDAyifMW+MzNU+2w8m6/68k+nhRig2abiCYRCiVPhyJRnF?=
 =?us-ascii?Q?e7S4IIyChGFClIhEfRg2iEihhCe3OYZXTwfk1BUHDxHzg+amgTU/piLbYG7h?=
 =?us-ascii?Q?GnFQEQyPO0zSnUJDXGQBRnLqqWaCK53KSkoJJd/uGDfLwGt+CuXdatpWbqxi?=
 =?us-ascii?Q?nmUEcgl7x+VdvePDJ0K5zMn3ueEcyHuArg57+GRe5menJByW7U8WdpzXgGKE?=
 =?us-ascii?Q?mvfaU8BfWtKCzAeLswbWIbrRJOD0oaOQwJzHdv2Pfc4DKIYExyGPCu37KZqT?=
 =?us-ascii?Q?V8XMFMSLqosn6e4+psVl5s4xTEitbiTSwUHHjVSflW+OUBZDzdleqQArN/eM?=
 =?us-ascii?Q?Qw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB4177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c21d8b9-653d-4eff-8a71-08da9d572ba6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 11:31:34.6084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PdaskGbdqvUMQENPPmIwWD4Wwgd/pDBTmiErYSB/ZgX9PDB48DJM+utJoKxUdo7m9CQ1P8i5Mg5Q2IdL4Dr1UZFesJ9yTkBGHXEodDlJi6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663932700; x=1695468700;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=32lWNPWc/MB1hO3Ac97vNvJZUHIJ0FnlHrMZ1edH1YY=;
 b=kl2n5WWSXGoIStZMdD7Iw2MEIfWDnm7xkrNluYdrKcJJH5F7ZOzzRHLg
 kjz6H+GP25VSHOBOGUYA7x3nKMeB3FY5tuqIz01xPM+KIyrjETMb6MYzU
 5km1nPPWo6gjLHITC4o00Y0Mn5SZ8yeVDo4BI0kIJ3yXTAwMlyLanM9wz
 Gly1qfo1hz6iwyovHFcsJsRwbUjX/DiPhX+8fmU0kvpfpQn9k5d7+TA/K
 pWlF0q+Tz7s/pbPFuxsphsZYFR36IohMY94jSFo0EzKXWj9ANmteJEES4
 6hsVHQ/SMmuztKgMQlgvsM+0JkgzHJvzjP3vB4JHgN7tS1356i7X+vHlV
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kl2n5WWS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: use GNSS subsystem
 instead of TTY
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony Nguyen
> Sent: Wednesday, September 21, 2022 5:23 PM
> 
> On 9/16/2022 5:40 PM, Arkadiusz Kubalewski wrote:
> > Previously support for GNSS was implemented as a TTY driver, it allowed
> > to access GNSS receiver on /dev/ttyGNSS_<bus><func>.
> > 
> > Use generic GNSS subsystem API instead of implementing own TTY driver.
> > The receiver is accessible on /dev/gnss<id>. In case of multiple
> > receivers in the OS, correct device can be found by enumerating either:
> > - /sys/class/net/<eth port>/device/gnss/
> > - /sys/class/gnss<id>/device/
> > 
> > User expecting onboard GNSS receiver is now required to explicitly
> > enable CONFIG_GNSS in kernel config.
> 
> I'm dropping this due to the lkp reported issues [1]. Please fix and 
> resubmit.
> 
> Thanks,
> Tony

We are working on the reported issue. Thanks.

BR,
M^2

> 
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> 
> [1] 
> https://lore.kernel.org/intel-wired-lan/202209211139.VPM7En0j-lkp@intel.com/T/#u
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
