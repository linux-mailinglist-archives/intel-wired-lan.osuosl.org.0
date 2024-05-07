Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DDA8BDC22
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 09:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBF1F41572;
	Tue,  7 May 2024 07:10:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cjLj0tepRtQz; Tue,  7 May 2024 07:10:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2011A41550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715065819;
	bh=to8TGxwlzpK6uXp44QKpBXqhrYIkQTTmlbnUqkQwKPQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XRLj9+/gXnKemk/QNUYABcyfYmxb0rqlCAWBiHQaSZXXK8gL5fi7KXLPix1Ev0MwU
	 0ne3oCxJ3ZPa+G0LyDoai0NViKSPEsppoyNtVeNo3uF9bi3wVr/bh2F9dlmN+Ny0mx
	 yIq273VE4YMtaG+Xf84/1CvW5QifSgrAgJwsTvtzHK8S9n2R71weQ23RuB7h24k7Dg
	 upK2fQA4HJ6JF2dP16z97PL9AyHMLat1culCP5wKgSkKpz5cZghQN/JSPOXOLI63BE
	 ikTL61U3yN4xgmJJGCNIO8dsskmSXoItIvwyCMey4UsoPyR+hF5WWvPqPmDZ8A4Xkx
	 6ucM7Rm9RLIDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2011A41550;
	Tue,  7 May 2024 07:10:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42C661BF32C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 07:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E82E60AD2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 07:10:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LJ6oS9_EZMSB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 07:10:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2C65760624
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C65760624
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C65760624
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 07:10:12 +0000 (UTC)
X-CSE-ConnectionGUID: d8p92h7ySHaIa8s4A6EIkQ==
X-CSE-MsgGUID: QOumoC9lQvS5q+2CVabypw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10724740"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="10724740"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 00:10:12 -0700
X-CSE-ConnectionGUID: bx1lIlg8TvW0HyOTNpqRIA==
X-CSE-MsgGUID: ZjNrvrwUT7KvZgD3eLmDww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="65873848"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 00:10:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 00:10:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 00:10:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 00:10:11 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 00:10:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aEM+vGmdcpRCovLIuGf6hgzfeWTxP/nMP5em7EsZ61LtOejQECNsELNMuJqdA5JuDuICTdLdTWa4puoqmfYYzrPNZKNVdlUVUDMdjlUWyzdg+2AZiicFn4sa7yehn1pBflI3BZukA+hx9rynPg/ROMZ803HF1AY+TbOEVdFSyjAXjc9PssMt/hcQjCyr7d7l/pkB7z8Tt234OQGl/V9WP+S43QGHAv54PoFzbvNi+qYRwOXEDx3K6oaqC4lBCXG/SoFeHHAp2CC6Vdyycdm2ADXMkDY6wFOs9UuUEAAiOvsssZr1gZm3NkzHm5gboCaI/9b9hy04iCfr+su6lZeKLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=to8TGxwlzpK6uXp44QKpBXqhrYIkQTTmlbnUqkQwKPQ=;
 b=EtNSOrIqNX/vL5M9KNxpd51IR0Ftq4URA83qyfQGmO9tf+NmM9xcJ9TIJeV/0pkbdrewpmI7KJy81NQ765TZSTyeT/+UrQIDpfNal+NV2Rb7GJGvq/JfDaRPcnHj+NjJaZyauLVwmsmuYHhtEfFcAr0QvrHEZsZqd9GLHVMb+Smx9LA73ti+4pc+X6Zf55beLse6YT9R+OAJMN6Zm9kmFbm83jNxmBscw82fOeUumTbAk7t+RZPwADxR6Kw+jpbVONsWEAlvNoayH1m+s3sfLeWs+VaPG5dmc4Acp7PPeHbhiYMrRIMaWDohG2ZFjBjKpJlf+ZkLc50Rsi47tLh4tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MN2PR11MB4568.namprd11.prod.outlook.com (2603:10b6:208:266::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.43; Tue, 7 May
 2024 07:10:09 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 07:10:09 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: remove correct filters
 during eswitch release
Thread-Index: AQHalYt/UE/3bzuehU2X7UTmYp8CIrGLb/zQ
Date: Tue, 7 May 2024 07:10:09 +0000
Message-ID: <PH0PR11MB50132D9AD657E70A6881D33896E42@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240423143632.45086-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20240423143632.45086-1-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MN2PR11MB4568:EE_
x-ms-office365-filtering-correlation-id: 096db4de-69b0-4225-a748-08dc6e64baec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?PQcWf1lEk+bXcnu+oqu4eMA7vo4fd2p+uIom6qBW4nXDIlv5nzzgje8M95ns?=
 =?us-ascii?Q?zAPR7N4XGTYbSnibBrC4lZ7dDKL98xKKr6sekG225vVJGoqT46ALlZOQcCvD?=
 =?us-ascii?Q?otLTAck39MxCn27SrA9dTdkCQInhmqqorUi8tdijjMlIAJ1sucoOHiKO4Rmi?=
 =?us-ascii?Q?Jk2rJYPT3ASaMfQJbIBBfBxWs+d7S3xPtsZg6oTLdnd0iNR5ckQJQw57eSiI?=
 =?us-ascii?Q?p2CcT7mR8AuaI/2Y4TIg+E3dPQIoDHgq5UPHdK/ogbrt874KlenjWmAEuz4h?=
 =?us-ascii?Q?BCEXMet+Mt3sQVNNSffDLr3Uengintz7EcFtg/dX0VvWuPoKa2erPtjop/HH?=
 =?us-ascii?Q?1aEZH5RQlzM+T3agPFrPtn16RTgc6eLaJaHfBrhxq+QO53ttnbYRWxTN+Wxe?=
 =?us-ascii?Q?jL2KMbbc6IlcQFkJnCIKoZPHJc1Kwkvd1u1Ic6tUFGDw5mT9ycQdvlc46Skj?=
 =?us-ascii?Q?HdQUAMdRkIlLJFQ6OjO1RFRb01f7ArnIAkCME9I7Xf/LTuecpw+9CDD8VGcK?=
 =?us-ascii?Q?V1G8+h5E5xTJDq4ymDgDxSrrfINDZR2T+dCEPjATmUeYaGEQO5iCLxpKRpax?=
 =?us-ascii?Q?V4NHXU6GC8YnPSSFhmusA3Jy8TvXYVk//Nuh3phz1xM5/LW8wW5m1QGvs9vm?=
 =?us-ascii?Q?mVrX4HrnJNsiso/GyRXtX1q+rZD+Uhethl6BUhv4wvjxpyoMoZcH8diUWXnd?=
 =?us-ascii?Q?kD4m+XdkzgS4Kr+mK353g49gtcxDfCxq7Mr7sgacubxFwc2BFmm/VW6ARXh/?=
 =?us-ascii?Q?YmKQUzB3MCniTKnpqbF+GvGMyNb3tMcydZMP118s0NsEDLpzv4UZNQbc76Y9?=
 =?us-ascii?Q?wgSKpIyu2nq2LUHyOvjb47gv00vB7BZhT8IjaajaOdEHd9a2kjByFssB2Jc5?=
 =?us-ascii?Q?3eb+3mlpLa7j+6UawTo6Vqv+43srMlPunS6/1w72Fi0uyUXAevL8QhAnN9fc?=
 =?us-ascii?Q?LCAgZEzSjkhPr7J2xDfuRhRUCZWnbEkKH5NVOvdURg7phWlVY5KSy5inJY/N?=
 =?us-ascii?Q?uMpXXm01dSBxMQhOChaiIgWn0i4fNRK71Bdr2DBbt5SC8nfXg2DUCQTfVcA7?=
 =?us-ascii?Q?ivsl4Xwt7vfwZB+XP6RUQ+mxnLfhWB4IZyvupMmFKfnmlTPmwJjsDXpkXY1h?=
 =?us-ascii?Q?0h1pEk0a7sgosDEjMnbGBP7SL61VYvMPDlcmJTmu36lxLFdkJk1Eou24gL/P?=
 =?us-ascii?Q?g2+WDKavJTilMKY9qRayeHSO0aA4BFjyfz/EXVcFFJt/MC85ipKypJ2Izwt+?=
 =?us-ascii?Q?KFH/hCsQWBhx/lLhD/TR5iXk3kyiOwZWUg/JTYAOtXhgrg7Irvk8hmnCAbxd?=
 =?us-ascii?Q?ko7qgImEReSZq52xidnxnM1YmoSDUYI4XmTEZvaL/JKWug=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LyO8fEnK7fN014rsbspf5ZbNNq2uab/bZYUvFEGIvInbMiDdFvIIgnXVHtPD?=
 =?us-ascii?Q?IsdBUWRvdneQOnLH5Fe26U7BMwhWOkVr0vgJqKu2jPOTnc3SYqvrx7j2w1tW?=
 =?us-ascii?Q?BqQcs3QveTrIlBa5+TjQh+QdmQP9cUMUU1icl2ga00agzh87ImIRPgoyC0ow?=
 =?us-ascii?Q?1ajpslmLM8/XUQrjeEKYJqXPXqvOgK0SbmUXps7+C8hrZGC+5FQi0YwT07qO?=
 =?us-ascii?Q?n9ofjMoWtVK0j6EFXiawWpje08e0JdemPYhqXGElzYcailP+2U7k13vQ0/bf?=
 =?us-ascii?Q?aHf+bo+9CSflJaH8wRKSUnI95HG2qqMWztS+b0HwH+RAxEH13QMP+OhC2JP9?=
 =?us-ascii?Q?uOnkZMbjTG2/sA+zpxLazbk/1wE/LUJQWPDUzILPYYcH59WL/qyVLOCsEb0E?=
 =?us-ascii?Q?KyAl37d/tfon+rZ3I14zDCDl3rNPjldzxMJrGwdewZG0Bp28ZHC3iFssMWsa?=
 =?us-ascii?Q?/AACeWmMm4M31R26ZkctoDEAhm+E7eVc8WmM/aRrFyupFqvB9x+VqRycXf76?=
 =?us-ascii?Q?Lg6lbdB3L6ahpSrcNQ3R9z3lXuSIFPQMWLP9f3GYWKwQqFBQaeUWh7/mx4fV?=
 =?us-ascii?Q?vH1rKODi9M5uy19+9NWWYSuVFP9APg6n4ZBjFcEIf5DscRDursScGXsoIMb+?=
 =?us-ascii?Q?8ABKluFeiXFL1kq3W+6XBEu+kfqhRoMV1oVubHDkoEquDuLql2lfgKBUJknt?=
 =?us-ascii?Q?QtxQgPj1yQVfh77FhEosyiOITcQXR3zpPE7pcYmnGLuVsVLxy8A89qfmVimT?=
 =?us-ascii?Q?iJXOvni13d1Sq/HJx4T4rz9O6eR9MIjhHzFBzGZFG+q8bdGQTcyiKyQNUvCf?=
 =?us-ascii?Q?W3GXh8fChWWtfGrmnTmCvI1Pr989kfrIUngoXnADtJlnEuh7Q0nPTAWtmFeJ?=
 =?us-ascii?Q?qNLfIxAqEeLZXiQ/sKKtnMgnaAVcVqriyDd6ttb5WLXfvW0A6xG/pwrYPfvy?=
 =?us-ascii?Q?xD63w2IeCbiaYN6sh5rcC31gmHXxYq5nLocEw1Q1DUqf3GR1ymYP2w4k+9Ld?=
 =?us-ascii?Q?opzMjkBxayBnMkyxI51JXmY2Bpw7mim7MadW+At1QRGbscf03c3ek4mHZoPN?=
 =?us-ascii?Q?/TSExHvGKDU0olAceTOXANzcynglsFh0LE08PwFSFUU5hy8scIG6ZWChqWNF?=
 =?us-ascii?Q?U/n9LQLfuewz83pwg4V5VUGdolfGyct30JhkuI+lvPSZogv+dQ453vhjz2nW?=
 =?us-ascii?Q?4ls0sTUMd0Mq8T9tuuXkm0MniZKngKquIFVufyBI4pnm2ubIK9iUHuwLXO22?=
 =?us-ascii?Q?z3F6Whg+dhQCf2Ty2CietzBbVxjoGq9sLoPhbe8p0W392TV6+3jB+6Pi9bfU?=
 =?us-ascii?Q?nAqkhonH2rG8mJR0T4mIl6JVuJuRl70o4Itfxv8Wu7TW8u1Ze082xUEElQwm?=
 =?us-ascii?Q?7moBQGxBP+LJKEZvJB/d5Kk/FqdiJ4ylXyKtk56lMsnEYMhWEQVFwqRso880?=
 =?us-ascii?Q?CHC5JVs+hGuuLncjSzzVWdG+m1C/TLAPWVEKZP467X5vffEVabdKn0XZGZgk?=
 =?us-ascii?Q?Cnd+KYc31/Xexf2AeAv0H26Ub3/KZh8MPfU+X66hKBxeCj6wa8oDCLFhYhWK?=
 =?us-ascii?Q?QU3va1tSdk3fT450KUmhfOZQPxrwNUu2II1lorzRa5Z4nS0uyf8VmlnqTls/?=
 =?us-ascii?Q?GA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 096db4de-69b0-4225-a748-08dc6e64baec
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2024 07:10:09.1177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U5MiTE3u7WezC1RqXVWCgmOyAagw9ev2OpgCALxTiQCwJHGsoQdNqwybY4TPZzbM5AUjhxa1/UQVbkPiJyzCY9HENNOc/o7TOYfUnKJN6i0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4568
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715065813; x=1746601813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xabO1mTudH0pJvBmZxb12OSpuwh/ljGnpOzUW58L6sw=;
 b=iC5Y8mGLFyt6zCt4TlNUQ1oMrpkFKsSa0I9Abm76T3D46yNImXesyrPx
 XsEeDtaT2fvEqO5FXFWhMerGe7LDoup+PKdsbddwyYbOinvupaGmylf9H
 KGYYsYgzzSKslMm8awXpza8+yeHSn4p+byuKRQQUr3Qp8ilyuWepp/j7g
 d3ttvlvPXoMzkNCZezKzxd7TCxm8Qe9TVRSY81m0Jctdxo4/stTzk8Z6D
 3U41M642Ps5E35BW88xsWXX2ITGY3+pn10/WEZZxpHK8/JEbby2oMCEJa
 g6q8WSdTd3evS6Gg9eAm+hf4/3BUDmzebIxxXB3zljFQg9VDH+0wZ53TE
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iC5Y8mGL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: remove correct filters
 during eswitch release
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Tuesday, April 23, 2024 8:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>=
;
> Drewek, Wojciech <wojciech.drewek@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: remove correct filters d=
uring
> eswitch release
>=20
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> ice_clear_dflt_vsi() is only removing default rule. Both default RX and T=
X rule
> should be removed during release.
>=20
> If it isn't switching to switchdev, second time results in error, because=
 TX
> filter is already there.
>=20
> Fix it by removing the correct set of rules.
>=20
> Fixes: 50d62022f455 ("ice: default Tx rule instead of to queue")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> It is targetting iwl-next with fix, because the broken patch isn't yet in=
 net
> repo.
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
