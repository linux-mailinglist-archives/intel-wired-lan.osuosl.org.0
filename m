Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENPEIOQZFmqEhgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 00:08:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 704925DD16D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 00:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBE90610BF;
	Tue, 26 May 2026 22:08:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RIjgGbuUyZsL; Tue, 26 May 2026 22:08:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FF90610B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779833313;
	bh=H0TYmseidPgEuFzygT0NZorz/7vrUOX5oC5+gOLNL+s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zkMj8slfMJIh9KbHcZRGDJZDW6nA0iqJ2aH3JrM1s1LhhwGkALvifpKSEbqvWl2eZ
	 v0tYE9tXmOYahvGUwsWN0sqqvVHU0rK1FHgJO1i8/7DTkWpEXS/CHhFJ55uqNTAtJ6
	 OpCbun8dOKTfAI6Ha7bFDdvpB715ZyBYUcExZbm1po3D7+cqTcxRtDQnsqojeJmlGf
	 c6NHApgXK3CUyoM6kIW7byBYE5ZqeiKR21Qdw4F3M6y4EiKg68s1zOVbpk8kvXn4hC
	 mro540iOa6sYzv5ZXysSRRkvdmh9DBQPO4tAw/fAWuwFE+rqe1oxCOEP6TFH21soRn
	 +LY0eT9hap0nA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FF90610B9;
	Tue, 26 May 2026 22:08:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AFF8223F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9927841A15
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:08:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uGbAPh9NTIkO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 22:08:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC74941A08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC74941A08
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC74941A08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 22:08:29 +0000 (UTC)
X-CSE-ConnectionGUID: fV9hHkLST2SvjQsbdLFSEA==
X-CSE-MsgGUID: XXBFPDTCT1yYv8JRVCVSNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="83238855"
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="83238855"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 15:08:28 -0700
X-CSE-ConnectionGUID: UeF+9bwpQRel3NUZN+8qEw==
X-CSE-MsgGUID: SkyXIr0GS8+VgwWlP+ZguQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="242210739"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 15:08:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 15:08:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 15:08:27 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 15:08:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nn0HRRLr97P8lVL/R747iU5hVQJ/HaXpkVEcTvz9vBdJj13O68qC+ls/R6rS1G6+//eDWGg6/kDMZozRgjulrOc0+EqqA6e8TG4MXo+Sws5YCUCTfBd+XZcFsX2ctBevB8fCtfM3lIznrhY/tGmsnrOuV9DZF51y7ObRVKtJtUaLBKkMsQIrPTmA71IMtRUoUDKDN0Q6DaMO8CK9RSbH6dy8YtPXvFT1ZgSoOL2YntbKPp7o/0xkKQnEnIOPzBGGixxbQwbrT8ogCw81UNDq09gxQi1q+C6xwH4q1CQXUDGCg9GHH+KbPgGQoFjrnlD+qjFm1X9iY5dDqBtiKd5JNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0TYmseidPgEuFzygT0NZorz/7vrUOX5oC5+gOLNL+s=;
 b=Zunfyvh1ItFj7QOCPDaoICAv4lf3mVcM9MvfrvvTGK5h7eRp4OZFiMo0n+lGmTlPS8q4pRWrj4GQctg4ZzsyfSc3eVoknBuTXWnTcXtsoVYzX8bkfLwPmlIw+UxHPgHqVSg7igK5IXShmY1LxWu6JeeoSntTiMl3ihWzcBNwpPtndu9Zn3KBl1z8uv+/Zy9e0QH0bHtJjeIFyLXP3N5PEwCF1jSJPmjHCn1k8JAQ/Owq+eVwcJWZWd1ICuDlSEhf9ecxgupGub4EjeTmvVYLB6Xq5jUOBGqa4vUICkNyZJ2jxCCdox1pES2Efg2/QsxtMeA5wKABJK4/gLIUCCiK+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by CH3PR11MB8564.namprd11.prod.outlook.com (2603:10b6:610:1b1::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Tue, 26 May
 2026 22:08:14 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.010; Tue, 26 May 2026
 22:08:14 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "jramaseu@redhat.com"
 <jramaseu@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 1/2] ice: always do GCS if
 hardware supports it
Thread-Index: AQHc1uN6qgmRP5G3OkaolnGK23+oALYhCiKQ
Date: Tue, 26 May 2026 22:08:14 +0000
Message-ID: <LV1PR11MB87900E0840977AB4831220BE900B2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
 <20260428070647.777141-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260428070647.777141-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|CH3PR11MB8564:EE_
x-ms-office365-filtering-correlation-id: 8c0bb06a-86ea-4ff9-17fb-08debb734883
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099006|38070700021|22082099003|18002099003|4143699003|11063799006;
x-microsoft-antispam-message-info: oWgzL7xNBtB1BelsaL74VTtIZPvWC0eInpFmAyMZ8a4c84cDQZ9Vohejyj7y07e5FLpzlOlLsDaVF2K4GZSvFAHlgwWBa8YbmVvkbHWxk/QKpBf6wrJPAKtn4LQ8a3+3sgw6shP2XBCKg+s/bVstyO/AB2uIlcvzCmdZsfDxQ8EyY3DaeBMMSu00cu0qmn+mgPHIP1rrBkpYzjdHpiWT7Kdkusg2DjFpdSzL/kFP4F5wn6SZo5E73Arjb1YYT4XE3g0KYHsmsyLTCZ9+w+eQedJeWPMZa/Ytuo99kyvtItHRZpLr7rO2RgEJ/hH52j05G2BEk7VRNuPu9PJc48kY6C4+XiEuJ9zJ2TZ6Pa496GjMwoeMiJAkWM4Y8aEituI6D0o6qeLMi3jjAmT2kP36fcoZw509dP6Y1neT9dw9o5HWZtg9ieO3XfZQur4mX1jQqAAhEtibITZdjOFlgxMvVFWuvjpYXHDtMyiCKzrRFEuj3+Ld7W22TzVeXAxvB9nk8XQr9xidxoagjGLsgwgtbI2XIShKgWwE6L8botTbCyS6vLrQmLfH4vsA4aBQ+wBW0C/ZeNMugD7wI6591yhHHXTK1I9Ygqq8U8c9nTStJNB0wYwbisC0F2J4y8g9MwBKb7BApK2wMe4M0sk6F3Pho+OCsI6dcQblrqf1ZiILGbSmzGhrcAm0zjtTRrCtJpjfb7p0wOx1gDV6DFlXZ8q7k48rAlvFqnAcmI/khZeF8/A6jOuAj1JOKig/DndVMPSJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099006)(38070700021)(22082099003)(18002099003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FG50o+9ST8IE7Fu/wu4b6cYFjlYMBkO+FXDDSP42dT/DuCbQrEdyTYiEvDno?=
 =?us-ascii?Q?y4U5oYAC54I/DwVU4syENseTPLAPUfbfKwEGKAvUC0VEPA54AQe9+4716Isn?=
 =?us-ascii?Q?bOCbq1nPNPHcLLpkYVZO+5g6tD6iwaVBB49nG5Qhb4kF8hFhU6Qd7adDUK0d?=
 =?us-ascii?Q?hOAM342mBJEHQ2JZmDFaZspD8CeGXxs3CbOBbj32034xOq1RTmgANDewdZSa?=
 =?us-ascii?Q?CiUaP0ME0tJl7NjwoL3LB/WE+d0RCIL6h9zlnxn99FtPc8yC05oi0edwx2CQ?=
 =?us-ascii?Q?3ClPZy89yi25bEU63Dvswk665L7yqEmTmQQ9hOQOUELJKU3OonameYkNU40k?=
 =?us-ascii?Q?I1x9sTaZhXsTMJ33Y97Ab8jbxWf408YQva9cUUSbrXRMPbtiAVyoqkTqJdIf?=
 =?us-ascii?Q?njF5CgxbSIxLXj3TXrp2j8eMvzy+ZLqGReHvJWsCuUzq0MR7o2BBJx820AGK?=
 =?us-ascii?Q?QMAPiTcSGBxB4yOidIWSoah7tcRlhUUlaoglOONhBbd8+UQ9nHhPwcyLH+fo?=
 =?us-ascii?Q?3Q5iF/T90e1UosQnNTE9YMneUNH1RNe0zqub56uIb+otlBPSL/DnJ60WiLWK?=
 =?us-ascii?Q?yJMA6GXVMpazUyI4y3biTmUP540kSrvSIiq23aBYUF2CmnINaXurusxagx84?=
 =?us-ascii?Q?J8I86FaKucsqWPpONQn7U28rz4w8/1vkg0Pr0/ba4SPSr1PmFKM0ZfUBCm3P?=
 =?us-ascii?Q?U16IVrdflaFaW7iNOT2n55H/RGgbkOsrrYnbJt2SmtNVvPWdmEHoBnoNhjcw?=
 =?us-ascii?Q?Rx53dhbFM+U5AYviAo835aODM9+EzvParg84r1WfueJBpUDqwNr55a2E+4Q5?=
 =?us-ascii?Q?ajkA1E2TEab2YltAMVRPhtRsJgvj42rbyU+++6WEnjcbEMIyVkQS/bGSuCKI?=
 =?us-ascii?Q?pw355Beqsnl+aB4fLYlmqYgWG1Ey9J93pSU8TGBItJrLdFYPKw08E+usktr8?=
 =?us-ascii?Q?IHi0CP3MgKO8+cx3ao+8/aFbtP/MQxcGJ4HpC6+ZElZ7xtNH+1u1LfdJvoWD?=
 =?us-ascii?Q?VQFjJthuOFrmR9/k8imspNSGsRyH/Xd31k2rZuR7X7Z014qFSert7vB4BdiT?=
 =?us-ascii?Q?V2fHoNjAzUCWZtp62DtkdUG8ebdt6cJJSuknl98MzCnbAgoHMxv6cbDBHauy?=
 =?us-ascii?Q?QxeWCeeoytNTkAPN1hVvOKfas/DeH1LfahRg9eH3ZjuDCSBwu2l4whtPrgBp?=
 =?us-ascii?Q?gt9nqnX1WiVhO9GYnY1dcSSfO8+rNyQvcFD3qlS/Y4n75f7tXvivRMMPP8Ly?=
 =?us-ascii?Q?WA1CzAeTEixFBMwp5ILkXuPl8XFCNzi0e0Lv/bnzLwcuJt4nRO7N2jYHufYX?=
 =?us-ascii?Q?eD/ylSPRe5ddy3X13QZfOt+/A82OSL0ngQZlk12hpDtjLxpEQ7VlsN0j/c7T?=
 =?us-ascii?Q?CIILOOXN+ZIkq9qGHPID2K/KsHKv0XeFXLFXlUqxTNT7dVDiChtTSdEkngtI?=
 =?us-ascii?Q?ymMA8wU1VPELN8sHZjwV0ET/xJ2RTwqxgC7vBYCler11RCFG+oGwJ74wCjwf?=
 =?us-ascii?Q?xv6i/dr4h2FqR4gtJpZn6rIgoNYe35ce+REUciIPmYEbgb9xK4J9vg4NBl0R?=
 =?us-ascii?Q?mTsImxnvEX66eEGW5SQZGeY7yikhhD2sjplbPbMCcPXwvxej31L1QNjmRxLd?=
 =?us-ascii?Q?fn0zCZn9QBhOGrZBK+Sh8j6jVPkr7bIMKNE38K89D9N7UkOW40zj0GW64f4h?=
 =?us-ascii?Q?dOn1wY260rWlwUeI6L+Dw7zA3zz7/GBQ3tNYjVwIs2RW/AMllhsPO5SOR2s2?=
 =?us-ascii?Q?yF1YMLiVQA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qXRRma8RWt9EDLjX+CXtV1YgrNkRDnthfoi5YjyPMhOy2UrShMvB6EwLA9+jHumgYA8+pcnTTzHCVlUVrrbMVZF1cu+rlkTuEnsIBeD7qRwCwh7Alo3aygfXL57m/OzBPxBOrV44lwulrBOsRGnheq4CWMjOXWfsTKtUN8yMoljIs425M9QewoTaDg/ShRgxEPuRtDTfeX3VSNxQW4DzzOp22ZVVHLkPZad7r/AF9BCF/4mNzij3fEY1iTbqjyTaedHqj6oOgBsKkTPf9LCbO6n8fuB0EvGV1Zy8UhzhOJnj8dEmTAyxVyuVjXKD5hQoSLu4vuxr0sXAA2WxHwz9+w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c0bb06a-86ea-4ff9-17fb-08debb734883
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2026 22:08:14.5074 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +euEiHNgkppNbRapyQiGLpNooAmeVEavw4zwJflMn6ROL15MyY0/O+mMQw3wm8NQw4Jbb6JXx9IUJ9o/UM3RP9HJv47IiUZQnKGXGA+H0tE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8564
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779833310; x=1811369310;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1qvwUUsisKe+DD2epvNmuyg9okxfzffqAOyoms4rXhg=;
 b=ZcOqOmlVSgu7E8N2xJnQueBEWhe3VEtn6zsooarjGR1VnpqNkEhWC7d2
 B3RcTR0SRdke7t97KqHK6s2Ym2lCyx1MsUriIiFTfL4cAYQo3gsTWwRSa
 sckjXPxb0VgxWiU83c7gz/aKNdzVPxEXUGPAeR23b/zSTz5vAK4cdcUR1
 Y5s2tbmRRDstHwnV1vGF9qSyZdfQwAG/542esCZBJHOGtcMKEw6IogrMO
 5leBsrLnuvpCrU3dQGoZizEUVslZMheh18ScTqnpLQAjtRGW/rQ3XkcYT
 Cv7DiDWKQ3Nby1W5m3mKyKn4c3wCPsOBhxJnq8yLfnAQQ5F/Pb7fg8xCO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZcOqOmlV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/2] ice: always do GCS if
 hardware supports it
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 704925DD16D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: Tuesday, April 28, 2026 12:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; jramaseu@redhat.com; Nguyen, Anthony L=20
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@int=
el.com>; Loktionov,=20
> Aleksandr <aleksandr.loktionov@intel.com>; Michal Swiatkowski <michal.swi=
atkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] ice: always do GCS if h=
ardware supports it
>=20
> There is no need to check for NETIF_HW_CSUM. If the code reach calculatin=
g checksum it means that=20
> correct checksum flags are set, because kernel is checking that when sett=
ing ip->summed.
>=20
> Instead of netdev feature flag use Tx ring flag to check if the hardware =
can use special descriptor for=20
> checksum calculating.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++++  drivers/net/ethernet=
/intel/ice/ice_txrx.c | 2 +- =20
> drivers/net/ethernet/intel/ice/ice_txrx.h | 1 +
>  3 files changed, 6 insertions(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
