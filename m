Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 741A8958436
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 12:23:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DF7C403EF;
	Tue, 20 Aug 2024 10:23:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NJ2DPTh9ckyR; Tue, 20 Aug 2024 10:23:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 327C6403DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724149392;
	bh=C3sySWZVJLs167tBheM4vH/J5u/mz5SC6Rr6E+v+DDw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KFRpd09mS0DqON8gpqrzd7pmTdD17SBAzlGOGTJtPOq0OZTq/oVi+lil1Nj1kkB0N
	 fVyXf1FPdjCHzw6gaZVfTRYhkZORo+1dX6pVSwowFy0NMlKl7Uyd4T3d4rtWfUS8F7
	 RSTv2QAxUu5OKjPQr47rnBaJUllVV/MxDBUyD0ewilhimfx6yaDp8wlPvu+qQa6Y8y
	 LBGabDcgA0mFPs9lYAADUAxGRl8jiz86e5cZI6TVS4dKh8DGvyE/qFLUa3/ZIovXCX
	 p48ZvDHQwkVze+kwQB3rHnD54wLaWD1IuRPsiMylwgGqxoj9HZV510mfK//uolEzyT
	 qeROgniltz/4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 327C6403DA;
	Tue, 20 Aug 2024 10:23:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4A5E1BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:23:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC6DD81113
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_Fcd2-Z1OTJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 10:23:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1987381110
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1987381110
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1987381110
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:23:07 +0000 (UTC)
X-CSE-ConnectionGUID: /dgKlIdDRdaNCgauqPo8uw==
X-CSE-MsgGUID: G7ootnUcTwe32BYUeZmcTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="13111658"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="13111658"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 03:23:06 -0700
X-CSE-ConnectionGUID: eeUS+SUZQdKWPPvgQlljDQ==
X-CSE-MsgGUID: aHh8mQlTSxa/u/dVNOOlfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="60995538"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 03:23:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 03:23:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 03:23:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 03:23:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 03:23:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gJ3jchLTagkw/W1W6++fHrGwOhQiApiVPFnuhWeSmhMNOlnw2uqLGmvj+M0sU+7lTke5KfFqJRoLstg9E93jQs7by+VHB4bzoWw97ygdj5fRBQ2t4QpwUd1QMeF3IKv30Qy19gsRnKwl6o8gdDjEc2HKkTCEB1r06l+BymnRbqYBGyoezBgRsgB20IHQLOvexwtld7Y/URfSLuN/r293aqLWPCrub+e+eodtJ3+bYzLCSjhAiOnRkAsb1+qDydSVh67bzjtguI6yMYY3sR8qITfQ11xzoiIa+1kaXXv5SShz6Cp6jMtd7/JyI+7dnv/+M0C2IUe/7mwWyP5x0K1Cjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3sySWZVJLs167tBheM4vH/J5u/mz5SC6Rr6E+v+DDw=;
 b=H00FvKl+SAFqhbLkar0oodOdsPkO3HZ6CHGP+giOf35o/ya9m8wIKVk/IWJGSgxSSnwn4uy/xrs/TEEJdTJtvtNlCDTEXpxW+9kRI39DOV1b2Gs9hElw137dBwjsCU6y1QTymA1KXeI0eH9g6mJwcJ4byq2L1zUl8loehl5HAv7AhYnYwyqcU/6QXHBxgsrlVRC2fxG8BWeByYwDOMAw4jPisFT5/Ll2oPKuc0ioZ+U2KR89eaUwmWlq+sFqT+bl21/s3ANkEIZKQrTSMFqRSZptUHNn+NpZkn+gkGJ+oM54rb4fu2WeVWQ1oH/SgDT+8yZ5rHxLlc3pXVgWFO/Srw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 BL1PR11MB6025.namprd11.prod.outlook.com (2603:10b6:208:390::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 10:23:02 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.7897.014; Tue, 20 Aug 2024
 10:23:02 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next v1 1/2] dpll: add Embedded SYNC feature for a pin
Thread-Index: AQHa6YWetxpyQwER/kmdLN5gT7vM5rIdQDyAgBK+j6A=
Date: Tue, 20 Aug 2024 10:23:02 +0000
Message-ID: <DM6PR11MB46570EDB0B2DB8A9C4C945809B8D2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20240808112013.166621-1-arkadiusz.kubalewski@intel.com>
 <20240808112013.166621-2-arkadiusz.kubalewski@intel.com>
 <ZrSx0QRXUXB53UFr@nanopsycho.orion>
In-Reply-To: <ZrSx0QRXUXB53UFr@nanopsycho.orion>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|BL1PR11MB6025:EE_
x-ms-office365-filtering-correlation-id: e3836040-187d-4734-ff02-08dcc10212b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Li+vlbvGmO+iWQ6sB5v7tCVZOA+eb52Bl4gjnVBhGYQYOYGsmLROQYw9f7EO?=
 =?us-ascii?Q?lhf6ZQf0IFfWXtbLzKI9odC9xlJacXvU3VS4TkKXmSOIVuKYfnGyiMLhzgAz?=
 =?us-ascii?Q?MdNEjGGXaT0+CC07UV5xIfOBahIWnEYbalUR34pdWdWiXJPf30LT5Md2a/4Y?=
 =?us-ascii?Q?t/klTzuoQRPG5E+039lstepddPNBP0xkdjJO3Azg3Dsobu2mIxOf39JLwT24?=
 =?us-ascii?Q?1Lw2mKVVAFUfB8ac8KOVV+qpum2rLTEnydr4CoNjUzvdtY1ejngLCE98b1Iu?=
 =?us-ascii?Q?krDFufmwq0cMQc6q/HHsQJa5cV6mHTZDakRr55ecpT0n89z2ONuAputbDhWM?=
 =?us-ascii?Q?g8yOLKv17Q95UOrUc+ZRPd5vErzyFi9hblEYBmIlJAqzcLiyWNrajlo9/upM?=
 =?us-ascii?Q?G9syacnsJAunpCCLmIAfiYSgRVIifRqRPzWbdfQOVo2LipdZXkNoh+ilm01r?=
 =?us-ascii?Q?H+ZBpaWVsxnHgABMhSGr2v1pxzfV+VBpJ/LN7WtQFQECfgoxfCs6tNKORoNI?=
 =?us-ascii?Q?a69atGCLVV+F6DDPw+SZUpzUDFqr5/hsAG+1ejQvy5loEVAp7n7/edKU3ei2?=
 =?us-ascii?Q?qbYwMCjS5S/TLoxnZnRXF0NjtINAe32shTwEYUMcPBvN5wNG0WIJsKZi3yQE?=
 =?us-ascii?Q?gFP7U/aCMvAYWfnu8xiBIHZzTJU58OD1w+kWw84VtppJINWhSnf6C6xzzMqv?=
 =?us-ascii?Q?abYNPjbnLgbv3LjGWP7JelUSLMAOHYiPnFK/Fv/TxUe6JOVy1h+T2KxRGWvv?=
 =?us-ascii?Q?P/sHKP2KfLCcKBy/INPceHtM7RB3Scidy3wde3mkvsfCetu9dFZnlVCkcOpz?=
 =?us-ascii?Q?McuOz14nbklwsNZ3pxm5mWlApYRGPBQZdAGRX2xcM+nA3/Bg62GOJUd2HPH8?=
 =?us-ascii?Q?7os49lLY7mbd5krwZcokxe2ripJJaUiPZCYa+SKTu3YwFWjQePu3X5QxBPDV?=
 =?us-ascii?Q?D01ydGVH1FdPnn6CFCTp8PLpcm+6iFRrQO1WI1t16KIVWuDm43A4grBknNbx?=
 =?us-ascii?Q?VsQhPihjMMpjlnfc4lQrep4PgYKmq38z2englzMlfbRuthRywVPY8oCg868K?=
 =?us-ascii?Q?0Wv1qxPHriMEaxvuz5W+KaQO3UnjUajnTwtv7erU8nIK2Gvi7HseG73h5Ab2?=
 =?us-ascii?Q?0Jpbp56uGqGd98h1/vISP+PXUCEcMaw6eB+jHeFUguUtQVke6WjQ359J3Y05?=
 =?us-ascii?Q?cj2mroE65emkzZ+JSWGbtJ+rTwZvHGrMBcUpwDgoE7fbsVbepdbl7XSuAUB3?=
 =?us-ascii?Q?ilsCpqQTdG1bjNV8tk9B90dDD0wCLdpNGajkb9sBSi+zvwkFUH7JdfhybX0P?=
 =?us-ascii?Q?1DaFXcp2tlQ2hugeGoPB9/4xJXOyTcAUYbGfHqK2gU74hT7xhtZRqx32/Fcb?=
 =?us-ascii?Q?lqxNHVDdIAXTQBlShIqyNH//tTPFNBHgIeG6q7ct7PZ2wf7kVA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pGGBoyyLk646+pcc2ekf6oIwekVmS3GggzfxpmVRpOSjbyrvmd5AXHJHhcGD?=
 =?us-ascii?Q?snuxKH5VHIat/nk/SB6a7k+lMFNCmHRuQ87NUStcVjyD8cCjlllsxYR/5Jfs?=
 =?us-ascii?Q?WTEfaqNJ8m4AnCldarakU9M6XTfQkL5bOLN2vctJfWkBmLYn7ESML44rFdmK?=
 =?us-ascii?Q?HVfZLTaZzctQZO30LJBt8INTszHKWV5SRFJGyZ9Wob01HIwfYmlWwvtNPlY7?=
 =?us-ascii?Q?H//IxcReGe9M5vGnXGKx6kdOSATu61y8J39Fa/pPzQJ7O5LdFkVZeVCFMJVg?=
 =?us-ascii?Q?hgx/buodrLfq9xUjLaVVcc7Pj0x3DMsr0S7rvaq8WItxDl3v23Dcinm8F/my?=
 =?us-ascii?Q?5+22g/pX8Dm6h2tzUEGMz0URiRx7YjT6WT4abfz5jmGbWZI68aqSyb7xp7sg?=
 =?us-ascii?Q?WPiKdrnDwyHGDCylo4wT8fMnq98YwQdam8AUXET/ttpv9vcH/JG27TDfvFxx?=
 =?us-ascii?Q?dRk+0FF6UA/g+spsss7bGdiFO9vPBirsc0KCimVGaa9AOJpzHpUb8wU1yWZZ?=
 =?us-ascii?Q?6cuBUcm+TJv8swsPEDlo8HFBh7lX5W7jqUM+sCtPNrmqadtf6nTPOvhqU44j?=
 =?us-ascii?Q?Jcdn9J5WCOhmVJvJog7HP/VbB/D7O+XK2HGyBT6PMyjfEERLcEZ/UJNNUa1P?=
 =?us-ascii?Q?2SFiSRzWbVwcYQ0B7ufEUA9kpZ+vnLdk8WU+5ue3g4t/1O8v2LBzLbzB78x+?=
 =?us-ascii?Q?pJ1izfMkHVbX55zTZLQMFvvyO7mt6RIx+aiHK/LgEgZ8lUSFxZgf4hfAz840?=
 =?us-ascii?Q?cscrjSSApElxxD8HTcJ2PRojPSsHmpqEo5PfKBn0bPrJkUv3El/b0MeSH79k?=
 =?us-ascii?Q?3QziCbG75JTIeY4+S1byIflvmrPH+Zi4sq2CgpSUGhiGZiKW5zv9qLoOuloC?=
 =?us-ascii?Q?zqaxsQS/BTgIW7QdGnOvdbP8CpwOTp6whyqTz03dAQtq07zeheONyRutbwEG?=
 =?us-ascii?Q?xzj/SDGXMLkZ9nxBROJfx+SYHrGdy9IctcdZad89s8tAR61PQMVoQSHGlPpZ?=
 =?us-ascii?Q?V/HVcWQE+iFd626ABAXtCIFsN3oOKfiAew8LjkKkdrvlquUvb79DvqtX30Aw?=
 =?us-ascii?Q?pVz26Y+vLYTkv1gAoBlAJlgTgzJ9jbhPDAQp8wIY0d5IzjTW2StmwJtCnJ5o?=
 =?us-ascii?Q?+xBhfN17/l8BMcHU6HeQg8827azWs2csc1ED9ELY+2S44EMMK/+tXyE8uKA2?=
 =?us-ascii?Q?RRAxwxJwua2BXF1Cqfu65iuKbMIgycWUFl9YFTHguymX2yPxnoAP95ymdmOv?=
 =?us-ascii?Q?Kug2KKnnEIS8NGxfrEjfi5pVRO4UHem6usNjuesfcSB3dIo6Hcku5m67NEZx?=
 =?us-ascii?Q?e5rQd3Jp4CnjEPyOOqgwoijicIfwxu1OeQRVj0RvqTOHsE05O8EGJzU1b60h?=
 =?us-ascii?Q?8a5yszvm/XArnbVJP25WdUeiPb+tZNgIT40pcF0reN/gckDXHEz5iRGGRJ+H?=
 =?us-ascii?Q?fKsVkMi/RlOdNUCCvXmh6kRrQQ2km9Bc5bE5FCoEC3xc19VIqW1Zrp2TKwOm?=
 =?us-ascii?Q?TSb1ca3gB68uYq4avLOxDxpRVWr4DN7nBGyPrTTl8Obn/9QFM7j0RwL5qPRH?=
 =?us-ascii?Q?L5nrhoTtdMcw0fC59AHIEQxjOtgaXFJ0H/EufWhEODsDnx/KPIsHP2WQ72DJ?=
 =?us-ascii?Q?tQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3836040-187d-4734-ff02-08dcc10212b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2024 10:23:02.7603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BXQZHQcd9zrPeMhI8dMwmP4JVBHyHWsXpYd/9+8Q8NeX2+luoYm6mK6yaAIemC7mH5mVN9XK1dXvqyUm7seXD8ivIBQ1fBf7M5So4l2kOME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6025
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724149388; x=1755685388;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FgXDNuoMM1O1QOE0Eir77hRZF5zPR5HUO9MdX8oDH60=;
 b=HDklbJ5vnF45jPG/NUg0/xEx6oSTYhr99NGWfs8NmGtFqssnKFqd3Sjy
 8VuqLNnxZrrcVkYcWchKVBrKyrI9q6RqOY21Z0lXNjDGPiQH9Ge9L+KBu
 c/pVrDNnhEeJ4mUBZjcSyBJdI8MzEkEtfBrvvkIjlGvkRfZD1kHcLCfL/
 vLuxLo8BmSoFl5ewo/UjJXp1Luaiqirt0u11p3OFFoae2cUaMHcKMhV1j
 rab1+DYn36QLgutjSkf8KerLsJy47pWuk3H+od9KIWWmOxeViLf+9QhSy
 1mpcdcd+tP62PyK1nbNybeYD9M9Noamukj4kfp1frqHvpeahAutsuJxOi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HDklbJ5v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] dpll: add Embedded
 SYNC feature for a pin
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
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Thursday, August 8, 2024 1:54 PM
>
>Thu, Aug 08, 2024 at 01:20:12PM CEST, arkadiusz.kubalewski@intel.com wrote=
:
>>Implement and document new pin attributes for providing Embedded SYNC
>>capabilities to the DPLL subsystem users through a netlink pin-get
>>do/dump messages. Allow the user to set Embedded SYNC frequency with
>>pin-set do netlink message.
>>
>>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>> Documentation/driver-api/dpll.rst     |  21 +++++
>> Documentation/netlink/specs/dpll.yaml |  41 +++++++++
>> drivers/dpll/dpll_netlink.c           | 127 ++++++++++++++++++++++++++
>> drivers/dpll/dpll_nl.c                |   5 +-
>> include/linux/dpll.h                  |  10 ++
>> include/uapi/linux/dpll.h             |  23 +++++
>> 6 files changed, 225 insertions(+), 2 deletions(-)
>>
>>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-
>>api/dpll.rst
>>index ea8d16600e16..d7d091d268a1 100644
>>--- a/Documentation/driver-api/dpll.rst
>>+++ b/Documentation/driver-api/dpll.rst
>>@@ -214,6 +214,27 @@ offset values are fractional with 3-digit decimal pl=
aces
>>and shell be
>> divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
>> modulo divided to get fractional part.
>>
>>+Embedded SYNC
>>+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>+
>>+Device may provide ability to use Embedded SYNC feature. It allows
>>+to embed additional SYNC signal into the base frequency of a pin - a one
>>+special pulse of base frequency signal every time SYNC signal pulse
>>+happens. The user can configure the frequency of Embedded SYNC.
>>+The Embedded SYNC capability is always related to a given base frequency
>>+and HW capabilities. The user is provided a range of embedded sync
>>+frequencies supported, depending on current base frequency configured fo=
r
>>+the pin.
>>+
>>+  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>+  ``DPLL_A_PIN_E_SYNC_FREQUENCY``           current embedded SYNC freque=
ncy
>>+  ``DPLL_A_PIN_E_SYNC_FREQUENCY_SUPPORTED`` nest available embedded SYNC
>>+                                            frequency ranges
>>+    ``DPLL_A_PIN_FREQUENCY_MIN``            attr minimum value of freque=
ncy
>>+    ``DPLL_A_PIN_FREQUENCY_MAX``            attr maximum value of freque=
ncy
>>+  ``DPLL_A_PIN_E_SYNC_PULSE``               pulse type of embedded SYNC
>>+  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>+
>> Configuration commands group
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>>
>>diff --git a/Documentation/netlink/specs/dpll.yaml
>>b/Documentation/netlink/specs/dpll.yaml
>>index 94132d30e0e0..0aabf6f1fc2f 100644
>>--- a/Documentation/netlink/specs/dpll.yaml
>>+++ b/Documentation/netlink/specs/dpll.yaml
>>@@ -210,6 +210,25 @@ definitions:
>>       integer part of a measured phase offset value.
>>       Value of (DPLL_A_PHASE_OFFSET % DPLL_PHASE_OFFSET_DIVIDER) is a
>>       fractional part of a measured phase offset value.
>>+  -
>>+    type: enum
>>+    name: pin-e-sync-pulse
>>+    doc: |
>>+      defines possible pulse length ratio between high and low state whe=
n
>>+      embedded sync signal occurs on base clock signal frequency
>>+    entries:
>>+      -
>>+        name: none
>>+        doc: embedded sync not enabled
>>+      -
>>+        name: 25-75
>>+        doc: when embedded sync signal occurs 25% of signal's period is =
in
>>+          high state, 75% of signal's period is in low state
>>+      -
>>+        name: 75-25
>
>It is very odd to name enums like this.
>Why can't this be:
>
>    name: e-sync-pulse-ratio
>    type: u32
>    doc: Embedded sync signal ratio. Value of 0 to 100. Defines the high
>    state percentage.
>
>?
>

I don't know if the other's are actually used by some vendors, but sure
sounds good.

>
>>+        doc: when embedded sync signal occurs 75% of signal's period is =
in
>>+          high state, 25% of signal's period is in low state
>>+    render-max: true
>>
>> attribute-sets:
>>   -
>>@@ -345,6 +364,24 @@ attribute-sets:
>>           Value is in PPM (parts per million).
>>           This may be implemented for example for pin of type
>>           PIN_TYPE_SYNCE_ETH_PORT.
>>+      -
>>+        name: e-sync-frequency
>>+        type: u64
>>+        doc: |
>>+          Embedded Sync frequency. If provided a non-zero value, the pin=
 is
>
>Why non-zero? Why the attr cannot be omitted instead?
>

Zero is also a turn-off value for set, but sure for get it can be omitted f=
or
a netlink return message.

>
>>+          configured with an embedded sync signal into its base frequenc=
y.
>>+      -
>>+        name: e-sync-frequency-supported
>>+        type: nest
>>+        nested-attributes: frequency-range
>>+        doc: |
>>+          If provided a pin is capable of enabling embedded sync frequen=
cy
>>+          into it's base frequency signal.
>>+      -
>>+        name: e-sync-pulse
>>+        type: u32
>>+        enum: pin-e-sync-pulse
>>+        doc: Embedded sync signal ratio.
>>   -
>>     name: pin-parent-device
>>     subset-of: pin
>>@@ -510,6 +547,9 @@ operations:
>>             - phase-adjust-max
>>             - phase-adjust
>>             - fractional-frequency-offset
>>+            - e-sync-frequency
>>+            - e-sync-frequency-supported
>>+            - e-sync-pulse
>>
>>       dump:
>>         request:
>>@@ -536,6 +576,7 @@ operations:
>>             - parent-device
>>             - parent-pin
>>             - phase-adjust
>>+            - e-sync-frequency
>>     -
>>       name: pin-create-ntf
>>       doc: Notification about pin appearing
>>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>>index 98e6ad8528d3..5ae2c0adb98e 100644
>>--- a/drivers/dpll/dpll_netlink.c
>>+++ b/drivers/dpll/dpll_netlink.c
>>@@ -342,6 +342,50 @@ dpll_msg_add_pin_freq(struct sk_buff *msg, struct
>>dpll_pin *pin,
>> 	return 0;
>> }
>>
>>+static int
>>+dpll_msg_add_pin_esync(struct sk_buff *msg, struct dpll_pin *pin,
>
>This is "esync", attributes are "E_SYNC". Why can't they be named
>"ESYNC" too? Same comment to another "e_sync" names (vars, ops, etc).
>

Sure, will change.

>
>>+		       struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
>>+{
>>+	const struct dpll_pin_ops *ops =3D dpll_pin_ops(ref);
>>+	struct dpll_device *dpll =3D ref->dpll;
>>+	enum dpll_pin_e_sync_pulse pulse;
>>+	struct dpll_pin_frequency range;
>>+	struct nlattr *nest;
>>+	u64 esync;
>>+	int ret;
>>+
>>+	if (!ops->e_sync_get)
>>+		return 0;
>>+	ret =3D ops->e_sync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>>+			      dpll_priv(dpll), &esync, &range, &pulse, extack);
>>+	if (ret =3D=3D -EOPNOTSUPP)
>>+		return 0;
>>+	else if (ret)
>>+		return ret;
>>+	if (nla_put_64bit(msg, DPLL_A_PIN_E_SYNC_FREQUENCY, sizeof(esync),
>>+			  &esync, DPLL_A_PIN_PAD))
>>+		return -EMSGSIZE;
>>+	if (nla_put_u32(msg, DPLL_A_PIN_E_SYNC_PULSE, pulse))
>>+		return -EMSGSIZE;
>>+
>>+	nest =3D nla_nest_start(msg, DPLL_A_PIN_E_SYNC_FREQUENCY_SUPPORTED);
>>+	if (!nest)
>>+		return -EMSGSIZE;
>>+	if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MIN, sizeof(range.min),
>>+			  &range.min, DPLL_A_PIN_PAD)) {
>>+		nla_nest_cancel(msg, nest);
>>+		return -EMSGSIZE;
>>+	}
>>+	if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MAX, sizeof(range.max),
>>+			  &range.max, DPLL_A_PIN_PAD)) {
>
>Don't you want to have the MIN-MAX here multiple times. I mean, in
>theory, can the device support 2 fixed frequencies for example?
>Have it at least for UAPI so this is easily extendable.
>

Sure, makes sense, will fix.

>
>
>>+		nla_nest_cancel(msg, nest);
>>+		return -EMSGSIZE;
>>+	}
>>+	nla_nest_end(msg, nest);
>>+
>>+	return 0;
>>+}
>>+
>> static bool dpll_pin_is_freq_supported(struct dpll_pin *pin, u32 freq)
>> {
>> 	int fs;
>>@@ -481,6 +525,9 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll=
_pin
>>*pin,
>> 	if (ret)
>> 		return ret;
>> 	ret =3D dpll_msg_add_ffo(msg, pin, ref, extack);
>>+	if (ret)
>>+		return ret;
>>+	ret =3D dpll_msg_add_pin_esync(msg, pin, ref, extack);
>> 	if (ret)
>> 		return ret;
>> 	if (xa_empty(&pin->parent_refs))
>>@@ -738,6 +785,81 @@ dpll_pin_freq_set(struct dpll_pin *pin, struct nlatt=
r
>>*a,
>> 	return ret;
>> }
>>
>>+static int
>>+dpll_pin_e_sync_set(struct dpll_pin *pin, struct nlattr *a,
>>+		    struct netlink_ext_ack *extack)
>>+{
>>+	u64 esync =3D nla_get_u64(a), old_esync;
>
>"freq"/"old_freq". That aligns with the existing code.
>

Ok, will fix.

>
>>+	struct dpll_pin_ref *ref, *failed;
>>+	enum dpll_pin_e_sync_pulse pulse;
>>+	struct dpll_pin_frequency range;
>>+	const struct dpll_pin_ops *ops;
>>+	struct dpll_device *dpll;
>>+	unsigned long i;
>>+	int ret;
>>+
>>+	xa_for_each(&pin->dpll_refs, i, ref) {
>>+		ops =3D dpll_pin_ops(ref);
>>+		if (!ops->e_sync_set ||
>
>No need for line break.
>

Sure, will fix.

>
>>+		    !ops->e_sync_get) {
>>+			NL_SET_ERR_MSG(extack,
>>+				       "embedded sync feature is not supported by
>>this device");
>>+			return -EOPNOTSUPP;
>>+		}
>>+	}
>>+	ref =3D dpll_xa_ref_dpll_first(&pin->dpll_refs);
>>+	ops =3D dpll_pin_ops(ref);
>>+	dpll =3D ref->dpll;
>>+	ret =3D ops->e_sync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>>+			      dpll_priv(dpll), &old_esync, &range, &pulse, extack);
>
>Line over 80cols? Didn't checkpatch warn you?
>

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Dbdc48fa11e46f867ea4d75fa59ee87a7f48be144
But sure, I will use 80.

Thank you!
Arkadiusz

>
>>+	if (ret) {
>>+		NL_SET_ERR_MSG(extack, "unable to get current embedded sync
>>frequency value");
>>+		return ret;
>>+	}
>>+	if (esync =3D=3D old_esync)
>>+		return 0;
>>+	if (esync > range.max || esync < range.min) {
>>+		NL_SET_ERR_MSG_ATTR(extack, a,
>>+				    "requested embedded sync frequency value is not
>>supported by this device");
>>+		return -EINVAL;
>>+	}
>>+
>>+	xa_for_each(&pin->dpll_refs, i, ref) {
>>+		void *pin_dpll_priv;
>>+
>>+		ops =3D dpll_pin_ops(ref);
>>+		dpll =3D ref->dpll;
>>+		pin_dpll_priv =3D dpll_pin_on_dpll_priv(dpll, pin);
>>+		ret =3D ops->e_sync_set(pin, pin_dpll_priv, dpll, dpll_priv(dpll),
>>+				      esync, extack);
>>+		if (ret) {
>>+			failed =3D ref;
>>+			NL_SET_ERR_MSG_FMT(extack,
>>+					   "embedded sync frequency set failed for
>>dpll_id:%u",
>>+					   dpll->id);
>>+			goto rollback;
>>+		}
>>+	}
>>+	__dpll_pin_change_ntf(pin);
>>+
>>+	return 0;
>>+
>>+rollback:
>>+	xa_for_each(&pin->dpll_refs, i, ref) {
>>+		void *pin_dpll_priv;
>>+
>>+		if (ref =3D=3D failed)
>>+			break;
>>+		ops =3D dpll_pin_ops(ref);
>>+		dpll =3D ref->dpll;
>>+		pin_dpll_priv =3D dpll_pin_on_dpll_priv(dpll, pin);
>>+		if (ops->e_sync_set(pin, pin_dpll_priv, dpll, dpll_priv(dpll),
>>+				    old_esync, extack))
>>+			NL_SET_ERR_MSG(extack, "set embedded sync frequency
>>rollback failed");
>>+	}
>>+	return ret;
>>+}
>>+
>> static int
>> dpll_pin_on_pin_state_set(struct dpll_pin *pin, u32 parent_idx,
>> 			  enum dpll_pin_state state,
>>@@ -1039,6 +1161,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, str=
uct
>>genl_info *info)
>> 			if (ret)
>> 				return ret;
>> 			break;
>>+		case DPLL_A_PIN_E_SYNC_FREQUENCY:
>>+			ret =3D dpll_pin_e_sync_set(pin, a, info->extack);
>>+			if (ret)
>>+				return ret;
>>+			break;
>> 		}
>> 	}
>>
>>diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
>>index 1e95f5397cfc..ba79a47f3a17 100644
>>--- a/drivers/dpll/dpll_nl.c
>>+++ b/drivers/dpll/dpll_nl.c
>>@@ -62,7 +62,7 @@ static const struct nla_policy
>>dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] =3D
>> };
>>
>> /* DPLL_CMD_PIN_SET - do */
>>-static const struct nla_policy
>>dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST + 1] =3D {
>>+static const struct nla_policy
>>dpll_pin_set_nl_policy[DPLL_A_PIN_E_SYNC_FREQUENCY + 1] =3D {
>> 	[DPLL_A_PIN_ID] =3D { .type =3D NLA_U32, },
>> 	[DPLL_A_PIN_FREQUENCY] =3D { .type =3D NLA_U64, },
>> 	[DPLL_A_PIN_DIRECTION] =3D NLA_POLICY_RANGE(NLA_U32, 1, 2),
>>@@ -71,6 +71,7 @@ static const struct nla_policy
>>dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST +
>> 	[DPLL_A_PIN_PARENT_DEVICE] =3D
>>NLA_POLICY_NESTED(dpll_pin_parent_device_nl_policy),
>> 	[DPLL_A_PIN_PARENT_PIN] =3D
>>NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
>> 	[DPLL_A_PIN_PHASE_ADJUST] =3D { .type =3D NLA_S32, },
>>+	[DPLL_A_PIN_E_SYNC_FREQUENCY] =3D { .type =3D NLA_U64, },
>> };
>>
>> /* Ops table for dpll */
>>@@ -138,7 +139,7 @@ static const struct genl_split_ops dpll_nl_ops[] =3D =
{
>> 		.doit		=3D dpll_nl_pin_set_doit,
>> 		.post_doit	=3D dpll_pin_post_doit,
>> 		.policy		=3D dpll_pin_set_nl_policy,
>>-		.maxattr	=3D DPLL_A_PIN_PHASE_ADJUST,
>>+		.maxattr	=3D DPLL_A_PIN_E_SYNC_FREQUENCY,
>> 		.flags		=3D GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
>> 	},
>> };
>>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>>index d275736230b3..137ab4bcb60e 100644
>>--- a/include/linux/dpll.h
>>+++ b/include/linux/dpll.h
>>@@ -15,6 +15,7 @@
>>
>> struct dpll_device;
>> struct dpll_pin;
>>+struct dpll_pin_frequency;
>>
>> struct dpll_device_ops {
>> 	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
>>@@ -83,6 +84,15 @@ struct dpll_pin_ops {
>> 	int (*ffo_get)(const struct dpll_pin *pin, void *pin_priv,
>> 		       const struct dpll_device *dpll, void *dpll_priv,
>> 		       s64 *ffo, struct netlink_ext_ack *extack);
>>+	int (*e_sync_set)(const struct dpll_pin *pin, void *pin_priv,
>>+			  const struct dpll_device *dpll, void *dpll_priv,
>>+			  u64 e_sync_freq, struct netlink_ext_ack *extack);
>>+	int (*e_sync_get)(const struct dpll_pin *pin, void *pin_priv,
>>+			  const struct dpll_device *dpll, void *dpll_priv,
>>+			  u64 *e_sync_freq,
>>+			  struct dpll_pin_frequency *e_sync_range,
>>+			  enum dpll_pin_e_sync_pulse *pulse,
>>+			  struct netlink_ext_ack *extack);
>> };
>>
>> struct dpll_pin_frequency {
>>diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
>>index 0c13d7f1a1bc..2a80a6fb0d1d 100644
>>--- a/include/uapi/linux/dpll.h
>>+++ b/include/uapi/linux/dpll.h
>>@@ -169,6 +169,26 @@ enum dpll_pin_capabilities {
>>
>> #define DPLL_PHASE_OFFSET_DIVIDER	1000
>>
>>+/**
>>+ * enum dpll_pin_e_sync_pulse - defines possible pulse length ratio betw=
een
>>+ *   high and low state when embedded sync signal occurs on base clock
>>signal
>>+ *   frequency
>>+ * @DPLL_PIN_E_SYNC_PULSE_NONE: embedded sync not enabled
>>+ * @DPLL_PIN_E_SYNC_PULSE_25_75: when embedded sync signal occurs 25% of
>>+ *   signal's period is in high state, 75% of signal's period is in low
>>state
>>+ * @DPLL_PIN_E_SYNC_PULSE_75_25: when embedded sync signal occurs 75% of
>>+ *   signal's period is in high state, 25% of signal's period is in low
>>state
>>+ */
>>+enum dpll_pin_e_sync_pulse {
>>+	DPLL_PIN_E_SYNC_PULSE_NONE,
>>+	DPLL_PIN_E_SYNC_PULSE_25_75,
>>+	DPLL_PIN_E_SYNC_PULSE_75_25,
>>+
>>+	/* private: */
>>+	__DPLL_PIN_E_SYNC_PULSE_MAX,
>>+	DPLL_PIN_E_SYNC_PULSE_MAX =3D (__DPLL_PIN_E_SYNC_PULSE_MAX - 1)
>>+};
>>+
>> enum dpll_a {
>> 	DPLL_A_ID =3D 1,
>> 	DPLL_A_MODULE_NAME,
>>@@ -210,6 +230,9 @@ enum dpll_a_pin {
>> 	DPLL_A_PIN_PHASE_ADJUST,
>> 	DPLL_A_PIN_PHASE_OFFSET,
>> 	DPLL_A_PIN_FRACTIONAL_FREQUENCY_OFFSET,
>>+	DPLL_A_PIN_E_SYNC_FREQUENCY,
>>+	DPLL_A_PIN_E_SYNC_FREQUENCY_SUPPORTED,
>>+	DPLL_A_PIN_E_SYNC_PULSE,
>>
>> 	__DPLL_A_PIN_MAX,
>> 	DPLL_A_PIN_MAX =3D (__DPLL_A_PIN_MAX - 1)
>>--
>>2.38.1
>>
