Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDb9I3iRAWrTeQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 10:21:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F4B50A010
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 10:21:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D899F416C0;
	Mon, 11 May 2026 08:21:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0HpY1aI1PJ9Z; Mon, 11 May 2026 08:21:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C993416B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778487667;
	bh=yMgVFcvKJm6zMczKe033US0C2ThIxJiHEaZrSSSm+bw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mPzUvas7R4XY05f9NACeDZWS3S/KFJz036ocXKMF5LmD8f/z1SfA2xoOvKP6BKV6j
	 3BRsk7/5JwKLRdJ0NTT+TXldPf7wEMegBm2PjsSqA6YwoK051Z8XTTRgDWpls+oHD8
	 ocweFDQFNLFqh+Wz2Pys6yMGzBtfKHrHWxDrBgs4opuz4J5JYrUghQx4/G7X+FB3gr
	 MKrWHf8G4R0+V2StwWKHrJ17i8nZbU3Oj8DGYXVPHkytzedF035zr2qCY+PSDk1xTu
	 dHCUJNINLfqk+CZ45R9/gVpV3m6FchGK4cJrwlS1xHWh3SH82tnGzyyxdHeaquc/pg
	 AvvAN9S1C0JnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C993416B9;
	Mon, 11 May 2026 08:21:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B5657223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9AB758402E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:21:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pq5ucIeOm-md for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 08:21:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A22268401E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A22268401E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A22268401E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:21:04 +0000 (UTC)
X-CSE-ConnectionGUID: NOuwwRyYTUui5v6tPP6DLw==
X-CSE-MsgGUID: lIEbfRXpSZaLU6jCNjAZ1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90745246"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90745246"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:21:04 -0700
X-CSE-ConnectionGUID: pwZcQhtrSgq0CrRs0qE9Ow==
X-CSE-MsgGUID: XoHAx+2VSkW7guhkA3H5PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="236409939"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:21:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:21:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 01:21:03 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:21:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eZwTaQv/P6ErGZCUhtepbzgkpilXU0eEp6LZQSferqWOFOo8NOstzOQVNi67AodEP9HoQSTUjZv43ckRT8EaR7JEQGtfHayLSoCSAmfUTmMZ+8W9nPKNaqZjOFh+xiC0wDfvR9bFJ0w4WT8PIIr36DlMbdT2MVU2gcClyBNQVerljNJcow+Zt2MtdLUv/C+XOqtxA9Um9NMK65YYRa5M18YTkIDjhybq6jRXLzQw3YwNUl7E5PRr5w25KYnkReUGnPzzNMw/QnhNl88/TE/gP7W4i6/Rg2VaI3Sp/dvHZYRbkTk7EbByNyK50t5UFwkuqV1WX/eCVxBg8FbhDTlMhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yMgVFcvKJm6zMczKe033US0C2ThIxJiHEaZrSSSm+bw=;
 b=kVcGpymK4p8Fwtr7/b/w9YWYf+aixERa6NsysaTkI+HjBH01woppaM1V/G0iun6Dn5/PjMPd6U7xld8c/0fzQyz+4whSBzy6h8YO6D7RRbt/uwXTMOzJWXf23C+YAV4qlYSbWArJTQiGLglBv1m9/YZL12KEoo1Ur4X0bwaOt99Bi7CBcZzx6M+w7V2eqgX/TB7evOn4My0Tpj6NW5LbKSYBZoI2ph0dcDXKP4+INWdbzxcKdFtA8g9b+w5fZAUHz09Wc8cwltZVIdO0Lw10wHY0EZOLJhd5h07vt30o3PMnACBhqmJKQllJbc/nySSjzYQdQTy+3uPxIjvQI0YLYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH2PR11MB8816.namprd11.prod.outlook.com (2603:10b6:610:285::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 08:21:01 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.20.9891.019; Mon, 11 May 2026
 08:21:00 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 0/5] iavf: five correctness
 fixes
Thread-Index: AQHcyxeGrpHC3tvSWUCA25Zqcm+GD7YIp/UA
Date: Mon, 11 May 2026 08:21:00 +0000
Message-ID: <IA3PR11MB8985A33AFFF2E661BED14BAF8F382@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH2PR11MB8816:EE_
x-ms-office365-filtering-correlation-id: ec8ad372-26a8-43f0-832e-08deaf363c3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099003|3023799003;
x-microsoft-antispam-message-info: Xm7Igdc0zma33+rLBcqLg4v4tYwxN0Iv1Y+10kV84Xa659QW7YxyuYAw2AW0ERBOwdPO/Pco1LBlq0olGGmkV2FoZzthVQnvqrpMAsLaedw253+z3eicowtUsweKIohrT087O235XcGgbmUkY5hgbvJWChz/Vpw83DjOn+NOCHd1SugtjjCHaJTNVnMzwAc8CoOKWbCZUhytU7GCOq6hcAMbFXKLtXbn18aBun2fu7ozxeU1i2W5r4zX8W+CfmpUCPfMEFz068Yz1pbu5OE3hrib/bS27Pv4mm80u44KgIBQLqbFPMTkEjwF4DExPC9FmZ/2C83WHEaa8pFOkG1GzwoTHkrcj+cBFNNjGio0VVoUuxz/AF7lbEnMJaz3JdJUTlCoYTmoI85gYvtbMOfAF+Yw63MnDlSfjQ3pHqmgKrmCEAMU86uyy9lRWFwfPiyt4PIS68PnVx9gwdxWqys4qCh+32EGkxoZMoBVF2fNIi9s29BoMcTYZT4RDT+kB1woSPrLF3t5hfIpx5mQjfYWE15xUnC1ILXMw/8RO4+84qaoFEJW0B35/E+6YjDEqJzjX/WlF3XfNOCc3GqKF4rooPvtn6+xTW2r18fsPIiOTR033tBkO4unaL4l8CGu+0c0fuZ2Qmgu21gFl9iz970o9hpmZjjf5RvYd79MkG5t2wZCGTvXhhoPPML1pQAv+D4Hn3M0OsCw7xPWDpfKH4vr1ts/nZVSQt0Ct2vlGlssFeGX9fMZTl8HlQDc0gJc+Mfm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099003)(3023799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t50ijJLxvYqD3rjpC76NlpLQoh7Hn/+8RDGmHoJmKwPiWZOl9oSn3j7p/ynq?=
 =?us-ascii?Q?weQthmBm1CYoy3YfSpocQ+CdUZBtk5cKt4vmTGN2gNBBfhlqwl/aBbEPE+zb?=
 =?us-ascii?Q?SkdMGRs1tlKRix4Tb6dPBurmJFw8sq77IdkUG9mNJicU89xLF+7Ky/nG5niE?=
 =?us-ascii?Q?Df/5+YhvCn2/pAcpEUi9RbJQHLs0V+9ogj6u7thyc5I4LoNiNm+5PkN1d6Eu?=
 =?us-ascii?Q?7Rs/piC2ikgPpyuIIlGdphxTFFBWBvrvBMJetZBr3USKGidPtr9X0Oub9Pgf?=
 =?us-ascii?Q?gZ9faJQCqo1kDXGlYh81DNhlG8cG8ycezJBndyNMXNNTaZbDu461N1mHBEAE?=
 =?us-ascii?Q?6A7/SxWcehIiySRjw4W69NSxq4E803E9rQG2gtVA0DSUZApiFR87eNobj6HS?=
 =?us-ascii?Q?fNIGo9nVcxXVUI0/Gg0jMv4gpJ/KtWfBl4Fhc/OpQ7eYTAFTX0kC1sfNo2ZM?=
 =?us-ascii?Q?vtfP1LFBWEZqwKPxF0mJqZcpnKMRO/oCExyOKI+j9irp/filRdkP+AYjGW3b?=
 =?us-ascii?Q?OxUvM7cX0HbcpaFdP6gpd5z+WPxSadrYZ17K+gl+HW+EzotQC9A1RJS4mkYI?=
 =?us-ascii?Q?DXc56WcSGm1fV99XmT92aG4zREiACvw6g99LVVE+KoP+vbl5zZW8uB51U7OQ?=
 =?us-ascii?Q?AYzCF4C+5fWa9n4Y2+slwEvOf+gOSHOfBcy4cFtMQFtqWqi5XD8qo9PFeYXz?=
 =?us-ascii?Q?mYXzZ1Nh3hzL8s4uRkTM3UuPQwA2ADyOz1lrcyIN+CloP80uITi9MgRj100c?=
 =?us-ascii?Q?qCt2Ye/GJsMx3s3q+JPdGjF43pZMJaivbARIWYiRaaHzswGIFpWBxYaKW4Kj?=
 =?us-ascii?Q?Cn6Vtd6cw3q7EKORJaaYgu04t3q7Fvtb0SgRbGkccVO8QaodlhlNRMR0xgtg?=
 =?us-ascii?Q?kfEvqBHGAF/9eS8WEIApMI/AI5lIC7KWMSchzQrn5wjRSjwduwFamCXYl3eF?=
 =?us-ascii?Q?DzyGcyqUWLVvhoA2eQC7CvKbjffrzrFj2VZHlf+4Iu/hkaJQjqJMeS4OueRX?=
 =?us-ascii?Q?cPI+lJf/QSITI5q6Q5p6PXkESV1sV1Akvgm7RKCuw7ZVqkA1/yMU7ofm7E2l?=
 =?us-ascii?Q?xM+ZfjpGt9UeILP27Bt2OOl0/a+bVT/Cef/VLqHk1NXtEGjiKYloa2Shb6H3?=
 =?us-ascii?Q?KW9nNXYVYyXjhYUaQFUHH7dnuWOzT8LBAoOJJnFic5bFU6vlYTHe41BK9Qzw?=
 =?us-ascii?Q?p/1fy4VQ2BJngtSiqu5WgVIIV5xHdIqr8X84A0Pf9i8zJchKhDrkxK0jeabX?=
 =?us-ascii?Q?O2FPKZ7arkTvuaC3xzXJ+XVq+VWtgMJdlm1G4lEofH65Qk00zCzxSwoxZUpo?=
 =?us-ascii?Q?+z62J++5cEhDNqL5o2voyDOtwjkEvYodfg1nzIIKuZmT6VpXooSvU7kwSrkd?=
 =?us-ascii?Q?QG0EsuRoOeoJ1jyWPb40PkXxkfFRQQfuYjJXjkTz45f/NKMh7DV2uHxkMPyl?=
 =?us-ascii?Q?6Hf8e67XJHysMz4o7m8UhjrbikEYdL4yLsx0d8LZ/11U6kXYL3RN2G28hkIN?=
 =?us-ascii?Q?/McICEYiUZzDtKz4GKKgvqMtfhKddeuG3fwX7jPb9W9vVXzVXy7nfm/YNwrh?=
 =?us-ascii?Q?pPw6L0wy7MSG89LCan72/3aajILfVf6CkILVg0/Dj4EKNbqzY9S496pxjdCj?=
 =?us-ascii?Q?xwotBB/+G/7yffeixRNv6gGiwT5wJBELeEBqPYaLhFQewtnLj6/5AYuocOr7?=
 =?us-ascii?Q?b0loKG9blKYLvoGnxarZJbr2aUkyLb25Ya1mErgixbRn5jOmq0vVxNUWeu7R?=
 =?us-ascii?Q?bN+uOJXR7g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: L0piS+xZZVqZMj5xE4s+W6b2wjJIeU+0Kx65Bt0zXrOyGcZCqAPwMiqwci0l3AnI5150VefErO+r8OWxkzcpPIAqR18gw/dFtNMKVpqB7s7/4O7kjFYzavpUHpifBNIc5ek2vfQeVSUoLkLm/H7iJXm3X9mHeNHYXGAn5Cty5aVnPKH+zq5yuJegw7fS3rNc87FQb8rQj53C6fkdUdeYACr7jtbLNbbKYnZK4aF/myQtPPK+4r8WJDeI6bp6T2qBm8vNBwlIzyMdajetw4ITc1sux1PnmZi21B6GrqhXD37TNToh5eg8XZqFzIEgvAYML70mOFLLtVMeF843uUDK6A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec8ad372-26a8-43f0-832e-08deaf363c3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 08:21:00.7003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0EEKSMWdy6LlSe//9vrJPfIxeekVTb8J3lexlYcJRMhzrCZQuWmIOJanU0onXt4YTZ0bj/i3sWEldV4qtaKDwvmLTCE4664zMDXHa0ESTN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8816
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778487665; x=1810023665;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0wNtSLAWm/SQoHJCuJg3aud2Pmhp2dHeRl9ZfSitku4=;
 b=Rb/cGZZGnxQ514D4hk6U3wRf1QoBPNu/a4yyju8siCn9qpjMbH+MyZl4
 JCuXWEP1ZDAZEAFGZEBH2r4jRDmkRXraxyuO0XxDs3b2fNddSAUSnmxp9
 86yXj/+pLDXxVKgASbDkKmgNXI6xUhjARa4gjCDORImB7WG0RsCA1n2p+
 2tvXPpgQjugwtksQVarKOIo6+iHRELc/8AYlwcqmP8WcFuSGF4KaTVLMF
 GTSCfY82f2wQSkuoOlIIwfyOBgpIZcjQMqKWrkOCX/KK82PEY1l/1VU1S
 bSC3peHVH12evZcrK3v8F4TAJvfCU2b/UZyKsI8/JjFWnrRveboFO/e7E
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rb/cGZZG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/5] iavf: five correctness
 fixes
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
X-Rspamd-Queue-Id: F3F4B50A010
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,IA3PR11MB8985.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Monday, April 13, 2026 9:31 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net 0/5] iavf: five correctness fix=
es
>=20
> Small batch of iavf bug fixes.  Patches address a NULL-pointer dereferenc=
e crash
> in the hung-tx detector, a spurious free_irq() call in the misc-IRQ error=
 path, a VSI-
> state-corruption race when ethtool changes ring parameters during an acti=
ve
> reset, an inverted TC-boundary comparison that silently steered frames to=
 non-
> existing traffic classes, and an -EINVAL that confused upper layers when =
a TC
> flower filter was looked up after its qdisc had already been torn down.
>=20
> All five are genuine correctness fixes with no functional changes for the=
 common
> path.  Best routed via net.
>=20
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Avinash Dayanand (1):
>   iavf: fix TC boundary check in iavf_handle_tclass
>=20
> Kiran Patil (2):
>   iavf: fix null pointer dereference in iavf_detect_recover_hung
>   iavf: return 0 when TC flower filter not found after qdisc teardown
>=20
> Piotr Gardocki (1):
>   iavf: fix error path in iavf_request_misc_irq
>=20
> Sylwester Dziedziuch (1):
>   iavf: prevent VSI corruption when ring params changed during reset
>=20
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  5 +++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c    | 14 +++++++++++---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c    |  8 +++++---
>  3 files changed, 21 insertions(+), 6 deletions(-)
>=20
> --
> 2.52.0

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

