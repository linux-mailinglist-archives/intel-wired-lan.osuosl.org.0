Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 646A09C0543
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 13:06:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A05EE6109A;
	Thu,  7 Nov 2024 12:06:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EoEPlj0XFP0v; Thu,  7 Nov 2024 12:06:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E8EB60F6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730981194;
	bh=LE9n0TnIO3URxXBpySNP+r/iVRQRtMEHYhPpFKIBUOI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=chaKUEGtjyQX9xbY74kYwZIhZd2p7tgHhBrSfO/qIc8CT+CacMBParQxaYMIdELoG
	 NlfkQ5LHSnnVIF6BjpCCCCnDDEQOHpfjhf34cKrkBYF1OIMug3DGOfg8w7WXbMJdNW
	 A6PYLJst4emE2RanoYSWJaURzQ5DPEgo/OtazRr7g6nuI6Nn3/5sBbRh+RPt0mWd3W
	 YdzntPiQn5ddexdM+iuDxQer2NbizT1qQRm7SdvUh5xhTZ2BE6nQaJv58PtQkIrCUg
	 +P6ivuwztADgDHI1FZ/40qPOq7+vQ1JrMPPHHctKqGiTGWEuwpPMhiJ5PqtdF8hs1u
	 OHzKnGMkXP4hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E8EB60F6C;
	Thu,  7 Nov 2024 12:06:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A7EC9C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 12:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 861CD61092
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 12:06:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7DHvDa1bTN2G for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 12:06:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 535AD60BE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 535AD60BE5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 535AD60BE5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 12:06:30 +0000 (UTC)
X-CSE-ConnectionGUID: cdAOx0PkTFm0KoTr5okvBg==
X-CSE-MsgGUID: 7EzYHGDYQ6qlepO28Tf/Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53376928"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53376928"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:06:30 -0800
X-CSE-ConnectionGUID: DVDpCQWkQwGtTupX95Njvw==
X-CSE-MsgGUID: dzQaupWlSe2hlQrV3eXyfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,265,1728975600"; d="scan'208";a="85048152"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 04:06:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 04:06:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 04:06:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 04:06:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t0tPXo3SEV1onaPnljePAtzFSdYZlNwvgKhUfnhIBz/7EP9KW1l+gbeMgYFRaPynLibRDbCxha0QM3qm6GMHqtMmcoDbJp+l3OZNR8NcsKYUESFKRqI32t2rBIHWGIn4eXuH3gtnnuVx4gReN28/3dX85JVvs4qI9zqIKhGTRfBF8C3sdngQstGllanjGjNacpyIv4VEZ7/lCJOBADGT9lNsRGQFJFiEwaA4vMPc7UnV77iM95Z8vCHGbfjZFfusjB7D8ZN3efJV+7jKRioFmd+PeJ/aatgyMvA/fDT1Z320ergIzofva3mhrxY5MNY+gp7qdgxPiqz8J+G4off2Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LE9n0TnIO3URxXBpySNP+r/iVRQRtMEHYhPpFKIBUOI=;
 b=XwMw9Zr2VIcpgq92wncHzInMq1hh3+E//gaz9een7qfCI/T1QKhqBalMTDOtQrH5uOqO7wVnYABaBe7zFEFEtCIm21GBCQ2NEmmdRomtGnc9KL/gBVupOqTEkydncojNP2Tt90j3gg71H5M2lPVqaAfx3tTLurT5j1w4fNUG/CFqqQ/y0Js99nIlOuUJ7ipj/f/q1vvHR87jviQKmEw6w+fB5JMf2DnPeuz5LFRjYv6YIycFI8ZRuE11gfnsJTc4TnRWdtKoEzeJ5kj98WWxd1SNuuPKaZ3aL/i4iCp80oplkMdcVn9UJbxC84s+J5HBay8pJN8WYNN/ypy2RIuslA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by IA0PR11MB8304.namprd11.prod.outlook.com (2603:10b6:208:48b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 12:06:26 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.8137.019; Thu, 7 Nov 2024
 12:06:26 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Szycik, Marcin"
 <marcin.szycik@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check
 in search
Thread-Index: AQHbG6vBWTR5GFs8z0a5mDQFNHTxQLKr3+MQ
Date: Thu, 7 Nov 2024 12:06:26 +0000
Message-ID: <PH0PR11MB50136A29D7ED13173A313FC2965C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|IA0PR11MB8304:EE_
x-ms-office365-filtering-correlation-id: 8d7b9a70-dd07-4795-bc09-08dcff249ae6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ta9ERXZ720cBVSKB2LzVHjCoHfehaGcP6SU9XCnRAkXDUp6AyQcR48mp9TAH?=
 =?us-ascii?Q?Aa4TAcQzRZ+uxWwshVhDhyKk6+hoKm21N19Jiw7NPtlCqsHGdv0AiGSADEwH?=
 =?us-ascii?Q?mzTGua5jB0X8KnOeuodQK2PFj3NDEtyCViQt566Z46esyk5/gnAqA7S9T9Sp?=
 =?us-ascii?Q?Aa+ntvGh7plQ5RB7Fv4ua162OdOABG2XS9V0mjDhVXVB0VrNzVaAany6mq3h?=
 =?us-ascii?Q?O1POdVms4Kbp/uxPeL662Z0PyL49/hc/YlblVg/KM/lZp4KiwZqJF4FyrD2X?=
 =?us-ascii?Q?mSGlEpTOHFyejjLDRPaIkM6/hEUkiceyHaSUsUP3Eb1zj1Xl6glMb/hfm2C/?=
 =?us-ascii?Q?ylX9jpFhEixDikz7DYCet4VB7ek8/7KSvORSu/7i1zw1aAyMSrRv9OAxy7n7?=
 =?us-ascii?Q?xIE59eFXpcsOTGDLcxmP0KjHfWbJxOJH1pttzYJ0AopOBsPiFYa+W0V5Qnle?=
 =?us-ascii?Q?TcEYtI/CBxOAs7uopr+GQe7msWXGfnewW9Pu0NQ07ILDh946zBpqx6CPGkZG?=
 =?us-ascii?Q?NBZRvTOrYFpNaryfNdT3ibvc9FvP/AkZCZobRR6Wuc19ck90i/1d9F4HHiYW?=
 =?us-ascii?Q?rN8gJrOYibPZOTqBTRqzIf46DyoavSFF7aotoaoQWNFfV4qYCKZzZgiFsBe+?=
 =?us-ascii?Q?5yoyHCpLAj6Ns+IqXrkmySoQQBUup230+QON+bzJIweSuVc1fc3IeGd6gIHK?=
 =?us-ascii?Q?zE5iqVUke5KyI58EdznahV0+VY4ZTHFlYh4fFDEDPdCHJTFop6ZrODbUWEMK?=
 =?us-ascii?Q?XUBG/Kj8J0VlDxZ6PXE2IJnSbEferNDUlYuL2WM0j9LLtEGXq4+XTq6+GbQL?=
 =?us-ascii?Q?G6TjpflpYUP1jluMjtm47vbkyoLQXfUUoC70OhUGUP8lsUPR2iT4oQ63qP1L?=
 =?us-ascii?Q?VJruBFq1HGs80XDTIpBwkdNYZ4uFnOo2Zu7Ew/s+UvogcsBuGbS2IsOcsM2K?=
 =?us-ascii?Q?gPHnxzrBWu0bHBRvkQ4x6swHo8nBqEbsEynbgZwGZpXm8QvZRqT9fmMNhsa5?=
 =?us-ascii?Q?ZjBq/0HAMOYqId5FVimdulCv0K7OJ6pnkoz8K08ub5vm45BwaxNvG8Whqj1N?=
 =?us-ascii?Q?RboN5D9B3mS3wV7LujZ2rjOUB8mOB/O/+AgLsuU4e+nb6bWrCRYcO/9/sJEd?=
 =?us-ascii?Q?fHPoldxXaUTXoiYTHGcBF9axrwv3GaG3T/X5GI4wOnIb0qweUo2uyV9v9wil?=
 =?us-ascii?Q?VXEO8sGodloBJPdtxQNmwly3yprc3BaOGugcf/YleWbPcMYufxeBuZbKFW/J?=
 =?us-ascii?Q?0DXiuW9zEtTLv1fGNCXO2Jio7ey8yAagRaFo/kIsHe+i9mLAoVPUyyX1aw5o?=
 =?us-ascii?Q?hOeS3SPcUcTWAbLaVr2GVqimTzeeNV3xOEYiNpeu7Dj++O6//C8nNEe2Ku9l?=
 =?us-ascii?Q?V7YAYJQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tp6Ls8x8CIB/paMTJ/gsjDVfpw5XZoUzHeBU8cUQYTN8hx+zSIvuJbd2IL1+?=
 =?us-ascii?Q?dCIiX6f6n4pgr0xjYW9AZM/HirjkswBzeICj84vFEEfF7ivu+p3q958NCAnc?=
 =?us-ascii?Q?4gGJgnaXote/kYMREw+xNFi2w3BwIROZFZR+1y9itKJDOT2SfMtkpuW78lPZ?=
 =?us-ascii?Q?XbexuHd8zWY7tzLtSNrzMCWpoalTgsJ0ij4fsdBGN8rJdNCPpkdMTb74Dv2A?=
 =?us-ascii?Q?2CO03kHWHUqpsBAPkeAI6uoHDCybd3MmrVu5gLTD6s41ddTEisNplR2CwRRS?=
 =?us-ascii?Q?s3+XEB69M9KFZunbz7NH430zoEPXKz8w/mnE0OP3lcYp6LXhIYyKKUZ36D5N?=
 =?us-ascii?Q?NNdXdbI/ryNnaLJ0mpQOXhi7A++SOlva/svmyhYO2kgIGf4pi/c7KFIUx3n4?=
 =?us-ascii?Q?nsivk5ML3ZUt/A4rGpqk5PKJ9NAUDnSyo4xYEobabc4XLVD97i5GKx9CFuLC?=
 =?us-ascii?Q?6ATRO64a9PcAplpCW+pkV/I790wFOXZrabwXWDcdEfXzhaKjtn03CssM79GV?=
 =?us-ascii?Q?1BYt1AhWpAe86qsR5Tyx7w6Ajb8vAO34qN/w8dpYjW1uhkDw23H6jSEDxF0s?=
 =?us-ascii?Q?+gSy0woEWu6FEGzsYzp78v4ZVxr+q+7YKPN1akGZUG8EOucbQdhdZO62TY+m?=
 =?us-ascii?Q?Gwe3dIs8ooinoxmsm9lOfidm19ghUZy9b+rpnYFNnAfzVcD5k8dJvgy/oUPg?=
 =?us-ascii?Q?oDqyhi6rFhJ6nSijORFVQ5voD3H9uQbLeWuGS2CY4MNa1q9zFno23Y8IfVfJ?=
 =?us-ascii?Q?HqT/lxC1gVZfGL27KIexYbl044DWoXSUmeW16uywLvVKKCGvTEDzEjA+Fep5?=
 =?us-ascii?Q?cAhko0NcFz1VfIGeTcOmjGdSTPlZL75WHzX/iWLWAeAF8wMOJKRZkF3ua1ZX?=
 =?us-ascii?Q?1fJN6Oc3M+7gq3Nt32Xj/3UQsmn9s+BlEsCz0OsRwcLjoYprepl4CwCyQfhF?=
 =?us-ascii?Q?hXe0fqz3dp4rfkHragab+TnZZUqeAf34oR7PAbdeQlt60Fmsz0kDNjMFJkAE?=
 =?us-ascii?Q?qXmEG/A3kKYRqvVEcDe3gY0CtP9Gxglo/kvYluMjqF1be+ojpT4ZJtKCDhYO?=
 =?us-ascii?Q?FDxO5DlYDvp1KrrvIQC1zHZUlF6P9kRzI8A41qo9FNUh2ab3fjN1j3pKRmto?=
 =?us-ascii?Q?nPSfZYcPuDO8lZos9OjfSwk7v36+K6zfLMiAtECzeblYYDQ/rNDZ8Ka/dVwF?=
 =?us-ascii?Q?9UrRIXvnI7b5w/RRZD9yjUtStLRMxpxT29O52prl4HCuXJDY3I7qV2Rllrrm?=
 =?us-ascii?Q?71Q2BHhFkIn2uBGrWM/LJldtdgD+10My6qJr0+GjNvNScdUVYV0QnE7wHKdl?=
 =?us-ascii?Q?ZuuF8guWXtBohKXEcv4ZCz9Yxb03IuHQM5LKcIVSAFJ4x140XPcHJGlyVfAV?=
 =?us-ascii?Q?71Aymyrxljfys4RTyplpWML47sGObBoTUdIgvghXZtKJPqK4lB/OjAOVYl9c?=
 =?us-ascii?Q?l12r50rGDOs9VrWd3tiF4t2L+TRBa2DYZBTGfq9v1D21SEcPRuDKRUFCj3pH?=
 =?us-ascii?Q?9DToIoTzU3qQXqu2ZAkrLgB/7IinlZvZldb6KtYlwjmwm7d12GZTkAMcaxjD?=
 =?us-ascii?Q?8vp6nd5Ktoaq+VXXLZrdYbXTnWzVLdguMgn0cJbn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d7b9a70-dd07-4795-bc09-08dcff249ae6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2024 12:06:26.2273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wvlp590oFwzA5zGIBNA34XQmt/fDpnzakf3rCwNu5FHkuGFTq8bIBtI94wuaWlI961Q/3clrZZPdX0rH9b2QNez3QigQ0OD6UrBVuS7DCCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8304
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730981191; x=1762517191;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gu7loSCZSv/vSFW7n4vHnngnKOZJwhnjnb5hXlB1ThQ=;
 b=kDnn5JlPetqkBTrECAQ0hdDCLCrS48VCvNoSenKgkliHz7WripebI5/h
 BwsPG8nr/cmYRUtQiaJZS6P8cQhS1vIc0m8PVtfXJfu29EKa0lYU66xnz
 bUrpU3LVkLsQozqL8XcZpRulF/xFBItCVMwvu8ZycvfPLSMgbafQirulk
 V4cr8YtuJy49kRvbw0PMAhMLY6IYV92ukT0I8t+XDGJmrjJoyUHVlRPw2
 nIQC+BozkeEhjZ/zAplwzaUxSJ0vzFKtKTqPdytmquD53C6z/FFXNh4cv
 YHfkuBl8RmkvTxo70NwUiQ+ETHZ/6IWQVbbO2YdbQ2yuVSPBrdT753p5q
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kDnn5JlP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check
 in search
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Friday, October 11, 2024 12:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check i=
n search
>=20
> The new recipe should be added even if exactly the same recipe already
> exists with different priority.
>=20
> Example use case is when the rule is being added from TC tool context.
> It should has the highest priority, but if the recipe already exists the =
rule will
> inherit it priority. It can lead to the situation when the rule added fro=
m TC
> tool has lower priority than expected.
>=20
> The solution is to check the recipe priority when trying to find existing=
 one.
>=20
> Previous recipe is still useful. Example:
> RID 8 -> priority 4
> RID 10 -> priority 7
>=20
> The difference is only in priority rest is let's say eth + mac + directio=
n.
>=20
> Adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI After that IP +
> MAC_B + RX on RID 10 (from TC tool), forward to PF0
>=20
> Both will work.
>=20
> In case of adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI ARP +
> MAC_A + RX on RID 10, forward to PF0.
>=20
> Only second one will match, but this is expected.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20

Hi,

I tried configuring two rules with same match parameters but with different=
 priorities. One rule redirecting the PF traffic to VF_PR1 and other one to=
 VF_PR2.

In this case, I notice that both the VFs are able to receive the same packe=
t from the PF. Can you please confirm if this is expected?

Below are the rules (1 and 3) used.

[root@cbl-mariner ~]# tc filter show dev ens5f0np0 root
filter ingress protocol ip pref 1 flower chain 0=20
filter ingress protocol ip pref 1 flower chain 0 handle 0x1=20
  dst_mac 52:54:00:00:16:01
  src_mac b4:96:91:9f:65:58
  eth_type ipv4
  skip_sw
  in_hw in_hw_count 1
        action order 1: mirred (Egress Redirect to device eth0) stolen
        index 5 ref 1 bind 1

filter ingress protocol ip pref 1 flower chain 0 handle 0x2=20
  dst_mac 52:54:00:00:16:02
  src_mac b4:96:91:9f:65:58
  eth_type ipv4
  skip_sw
  in_hw in_hw_count 1
        action order 1: mirred (Egress Redirect to device eth1) stolen
        index 6 ref 1 bind 1

filter ingress protocol ip pref 7 flower chain 0=20
filter ingress protocol ip pref 7 flower chain 0 handle 0x1=20
  dst_mac 52:54:00:00:16:01
  src_mac b4:96:91:9f:65:58
  eth_type ipv4
  skip_sw
  in_hw in_hw_count 1
        action order 1: mirred (Egress Redirect to device eth1) stolen
        index 7 ref 1 bind 1

Packet captures:
[root@cbl-mariner ~]# ip netns exec ns1 tcpdump -i ens5f0v0
dropped privs to tcpdump
tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
listening on ens5f0v0, link-type EN10MB (Ethernet), capture size 262144 byt=
es
15:21:21.428973 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 8001.18:5a:58:a3:1c:e0.8060, length 42
15:21:21.428986 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 8001.18:5a:58:a3:1c:e0.8060, length 43
15:21:21.429001 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83e8.18:5a:58:a3:1c:e0.8060, length 42
15:21:21.429012 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83e9.18:5a:58:a3:1c:e0.8060, length 42
15:21:21.429016 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83ea.18:5a:58:a3:1c:e0.8060, length 42
15:21:21.429029 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83eb.18:5a:58:a3:1c:e0.8060, length 42
15:21:21.429039 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 80c8.18:5a:58:a3:1c:e0.8060, length 42
15:21:21.944173 IP 1.1.1.100 > cbl-mariner: ICMP echo request, id 7, seq 42=
68, length 64
15:21:21.944182 IP cbl-mariner > 1.1.1.100: ICMP echo reply, id 7, seq 4268=
, length 64
^C
9 packets captured
9 packets received by filter
0 packets dropped by kernel

[root@cbl-mariner ~]# ip netns exec ns2 tcpdump -i ens5f0v1
dropped privs to tcpdump
tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
listening on ens5f0v1, link-type EN10MB (Ethernet), capture size 262144 byt=
es
15:21:21.429028 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83eb.18:5a:58:a3:1c:e0.8060, length 42
15:21:21.429040 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 80c8.18:5a:58:a3:1c:e0.8060, length 42
15:21:21.944170 IP 1.1.1.100 > 1.1.1.1: ICMP echo request, id 7, seq 4268, =
length 64
15:21:22.968162 IP 1.1.1.100 > 1.1.1.1: ICMP echo request, id 7, seq 4269, =
length 64
15:21:23.432386 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 8001.18:5a:58:a3:1c:e0.8060, length 42
15:21:23.432403 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 8001.18:5a:58:a3:1c:e0.8060, length 43
15:21:23.432430 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83e8.18:5a:58:a3:1c:e0.8060, length 42
15:21:23.432472 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83e9.18:5a:58:a3:1c:e0.8060, length 42
15:21:23.432508 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83ea.18:5a:58:a3:1c:e0.8060, length 42
15:21:23.432549 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 83eb.18:5a:58:a3:1c:e0.8060, length 42
15:21:23.432588 STP 802.1w, Rapid STP, Flags [Proposal, Learn, Forward, Agr=
eement], bridge-id 80c8.18:5a:58:a3:1c:e0.8060, length 42
15:21:23.992156 IP 1.1.1.100 > 1.1.1.1: ICMP echo request, id 7, seq 4270, =
length 64

Regards,
Sujai B
