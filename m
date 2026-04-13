Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLf/K0DO3GmcWQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 13:06:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9554C3EB183
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 13:06:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D76460E14;
	Mon, 13 Apr 2026 11:06:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QEVi503SZPVe; Mon, 13 Apr 2026 11:06:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 029D560E16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776078397;
	bh=aaUQkm3ji4uWuAHcc09ZH0307zoZoU5oSbymUpchdyw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vIMVKUa3Q6BEeYP1+Cn/aIwOh4jKHqI287wbEPLjY+le28DKIcwj49YpdPMyXr8Nz
	 ia+STNdR8eVTKERuRDMHiOcRBTBeIcnUoo4tvrMamluNoQA5c2Z9nu5iEzcwjVAmP2
	 D/XMQ/gZASSn+gFvVtjSv1hE2kDMmL4GJb5dWUbEA/6OKikI4mRBADxNFBfatzVLjG
	 S9CGWuJDp+kMPbz+djfJPM7WtkPn5vqrir5pCSED74iCK02WcmXRpMSMxY2m8WveEn
	 28XnGll9eiwCDQg8Ope/dO4o6/7LO7fyUQgjlXfMmuHHyfwy1HryOEBh1HBOovKZE4
	 bwulPfGlG6bHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 029D560E16;
	Mon, 13 Apr 2026 11:06:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 92D11283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 11:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78348400BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 11:06:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4WQaaXQ4IbXB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 11:06:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6FCE7400A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FCE7400A0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FCE7400A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 11:06:33 +0000 (UTC)
X-CSE-ConnectionGUID: JgI4ekiWSfq7cPNcOXpzRg==
X-CSE-MsgGUID: YArqW/nYQVSZYpuO/w15gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="76175838"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="76175838"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 04:06:33 -0700
X-CSE-ConnectionGUID: mlvWuf6pQ36MZO9UaIyyFw==
X-CSE-MsgGUID: +B8Kz/1WTead0PEI+pYKKw==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 04:06:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 04:06:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 04:06:32 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.29)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 04:06:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aGqJWnRxWYdNAMCV0/RRjfsvNmr8JRF8DJphqZXAWDsXjVvCtfm41Fhn1kB8WmVhL2x4p2K8KiA0rBSQ4OMSZDjDFCm+ocCVrSqcUbvrZ57lwRCGiu7xFsYR39fRgH58c1FxX8fs5WVo1p7xA2GF4jQR9zxY2QNt2XsiegPtbhVZlwdux8PP3N1hKSLMhRRkJ5y7ezDvg/kWFZV42Rczkq8mZ8oM3twkAEcDvvZ0NX6bv5PS+GKOM3uU93gRxd6n1HQvDGR+KmKl6vtbgYbR7RzO2saVXO31C+oVSt8+8u4AGBR8LIKicGA3ATZ0QXo1u0FQBtFz64b6q+lwKBegsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaUQkm3ji4uWuAHcc09ZH0307zoZoU5oSbymUpchdyw=;
 b=iSHgVw79zRbMvHw+5kyyoEZzfOVPlGiyYF/10vLFKbya6izMK+k1F5B7g91Y/mYQMaOWOwR9/A5BRSW4p2ouIJEvSORtBDxGpkw5H6Os0GDSb4Ln7Y1U/zsMO5+SH1hd0zOTg0mQXUzuw3OpHuccEPoKLfvQP388J0sXTf3CArTvqbcexP6m+sJqBJ+pMZY6DMZd5/2gzF8Sd1DcpPZYe67gZpoLC4jYlUHq0GubGL6yjHOnDjQExdu12r8Ejp9Pd3oq1F2SuUjbzLfmo39IBDw7lOI7Sd3ypGJFTFc5FwxApjkYavGjzJLXB5oVeZBEOBMXP2QeXdfCX27sf6x5wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB6841.namprd11.prod.outlook.com (2603:10b6:930:62::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 11:06:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Mon, 13 Apr 2026
 11:06:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, stable
 <stable@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] idpf: fix double free and
 use-after-free in aux device error paths
Thread-Index: AQHcyZu/E8M8djZt4kS6cHaoKhkcRrXc191w
Date: Mon, 13 Apr 2026 11:06:28 +0000
Message-ID: <IA3PR11MB89867D9A3665ECA17BE60ED7E5242@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <2026041116-retail-bagginess-250f@gregkh>
In-Reply-To: <2026041116-retail-bagginess-250f@gregkh>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB6841:EE_
x-ms-office365-filtering-correlation-id: 02cfbcc5-12c7-4a5e-71ab-08de994cb647
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: ywiKFFVNcM5Hj8vTWe4bBfhbxe7mQINahQZCoE6npU9aRaEwbM9SombKlzPc/3OrnyBly7xUiS/Kboi5B91mjGuww3Dw15bdMVze65RG4rPio7E2zJPoVn9LVp4TbetlEf6M47FtpTEJ9P3XcEdBlcRcG6mJS8XKnCdfyMtdfO6im3sOZPP7Hh9MMcfrU5ilgq7S0NAUJsHfrQ5OWFAhwzWT7I8nHwtmxFWtP9IMArBgpkYY4SU5+i6a5PaEyLrmOUBFIHbYI6CpU8HgPPzoAI2vrkNJt5SOegLhfsIZrwO72bA5af/17p2tqEdNnWW+oXlTMOIKDbHqvcO5SYpihTl0Xc4qUhKFdo2CMSkR1SHGF5CaJmI4wMe1Uhsm+0shWttwgyE2RB9K4Xb9TJYZow/Kg2/qwdDQEVzJ63tCq3PRZECJj7HjrRSZnS6s34uUCb4WdsDOeEtWutoSs4oZSu/5URopbg69Bu0sleIZZBOA5Gj771sTT/jMFD5GkDLjVggI+gtbEc2qODxLMo/VhPmwa3tSa6H4N5Yu8ym7H8dP6ArgftX99Vib/RzhCKA1/T550Ti/GtPSYb5mBLDnIhXGccuj8GexOps93SmZoOlpBpI8B3TSGH9nuv09IrfiNhlZcTJ8DoQTHbrHxDi2j84drU16+GrVx96XS66IiRnwv7WdU9LF468H2UQz5uAqj2r0K5gkE3Ky9kHB6p+cYuopfFeCpEI+fMFBEVgDCF2ZIdssCWtE/5pnjHO29fVu3f7dcPXiyX7xL7quoZULVygL+uD/jS2IHd0T1ZaVp2M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dZpxGD4v9W8zWJC3cb4OMAyD6U1UCLVIlm4bKUf8CO5edEZmTbIv/pjQIsN4?=
 =?us-ascii?Q?IvLAoFOM9tXovM30mdx1s169daRyNsX4mIugsmMj0bROmuSEDrOjiNIwnBzj?=
 =?us-ascii?Q?fuwoQ/C50FgCnm8k2QWQSiEwynP5y8rF0Osy3yw1Liy2seQn32mA0eHGfHBW?=
 =?us-ascii?Q?OxIlgvjVYp/AWd81X15F0kS89K2YuhKq44CEXz75XLYOD6xiYeZ/0kUUeQ70?=
 =?us-ascii?Q?jRIoE7OYmkbHiHWavkGHUanVP4Max0K+Re11f0Y63UWZo+jDhQ+1nC/pXkec?=
 =?us-ascii?Q?WFoG/qN1QoiCFVc/0CSLWHDnXMfYS79TVlxKBGl9R0pT6NzETZTpgVYm+VTx?=
 =?us-ascii?Q?xe94G3Nt+7QUjGgVcn9/UXnfkMGIKS7dJSqu7LW0cy20eaZep0H10dVNLLq3?=
 =?us-ascii?Q?oZMUj3WiJuLzK2RtsMijAeRCn5DjpXz914kB3bqmomP7eYD52uo9YuIVSijk?=
 =?us-ascii?Q?c4LjCRLxT31tVFuQYawoM5haZlbp9pmrsWk5u0LM3P9dptoHx6i98c8e0OJT?=
 =?us-ascii?Q?pqeIvZJZlDOKMmhyMDY+KGTLEGkEUCLPpiOYGSAWTFwd8R42g1c6Z+6KePnn?=
 =?us-ascii?Q?z3qz9cq1Eul82ujgWnmV10Vrumt2+EDQcyhxEk5bmAb9NmG+GkQLviM2b6F8?=
 =?us-ascii?Q?kiV4fA4w+60I9f81tnYVKoVyU2tSnKI2iT9vJcX427VTFbWnO9WZyrgamIkj?=
 =?us-ascii?Q?mYx8qMNwARUHZJQlGl0WiKOeD8jatBaJVLVMEUfKla7RxlvNjOEcOrLkMY76?=
 =?us-ascii?Q?tMzwdqxz+hr5UkD1g9H8QAIO0cZ2tcSWF0cf6iN8W+/G1lfu8YoiEGVKalyF?=
 =?us-ascii?Q?MAfWNkEAiq2bx6I1DBOcSELapzXWD/s1nO8Mi+5pXldoGwtqd85MzusMi+Hc?=
 =?us-ascii?Q?xcgrfJl4nb+z456lrWza/rrILnTDJ6LztDfgGt7ZvdZdu/TXDem9OS5XPqyt?=
 =?us-ascii?Q?L2PX/1DLhiQ9yutzRuCKhYiCHv+ZE6HbYtofliYLLvApk8MsWaWkZTtklxSH?=
 =?us-ascii?Q?5pupMxdG/Mf+ly3h7VjjA8GEC5AguAc6Ou+6LS0vnkgq6gGDvMsOL3alaJox?=
 =?us-ascii?Q?pMBI88x3fD9LZwbt4aQjkHUrcVkJcaC3OboN3CuSlf/lTQzSMmlFILw1YhxI?=
 =?us-ascii?Q?ONIKXxHYXzQvGJMMkei9KhUWu9GMVjyT9kGdiUbdWX3O55lKjo6ETJX+BTev?=
 =?us-ascii?Q?rbMwcAbWB2GRJfRLcs1iszC3B4BU5zRhU9hujfziTJrEmpU6LO+3ZKD9N70V?=
 =?us-ascii?Q?kdlayVhePrTGwmje0mq7FgXFT8tDgmmT3CUOGWVJWfIMXIAmtXLmzjfl2acf?=
 =?us-ascii?Q?V8EO/62moeoUtWhwC8Y5t00fYYp9g27jvJuOs4MatSg/2pPYp9u1qdb4erhX?=
 =?us-ascii?Q?hALIaqSlkGQTpxykrXPvS+8UVVtpFO71tptVn5+LaJJh9wFWdw+LbQ+6L23g?=
 =?us-ascii?Q?BZtcHMkC55UEhzqeslTTh+uqCtwnBWZYATc/ZwHve+YwDTCYdkP721jqZmqK?=
 =?us-ascii?Q?Ix1bwVTXBOoS2uNI+6o25TE9XuShtl5iFG3dYtQclN+Y6oGX/KyNVVmI7rCe?=
 =?us-ascii?Q?OOzxg7X/ld5qqvCfEp2ZGwRXXuFp0Q/gSz3FtX0Ui5pn8sF64HHAgWQgLjBP?=
 =?us-ascii?Q?RdxVwSF4TpnUaP/SISXKLhIwNhLeBu5DKH2WOGp4eKQdUZy/N7uisRtt9PE3?=
 =?us-ascii?Q?oWcMJKFJAgCOaoPalP0SBTT3XHUmkfbTNsHjeTHhsj57vhgXrollYN3mKrU2?=
 =?us-ascii?Q?4/Dz4otSWO+Ei1hasrrLpuzA+vKcMb4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: L4KbBUS3i/6lfAE+PsTtCMKxHuWoPF1fEPLF2LNTZJVuEJi+brYMGQWtLl1gy3Q1KSYie2ycIfAMxPl53tB6JpzZD0ZsM7dJdTvU7gU24cHexMrM1zLJy3mPcUJtCAJT4bxgfMbk/GEkFYNrl92e1hNQgGij/Sk+eFnNHPuiUoKAOEUiRtgNjcDshHwW24m3HUoQi8srWrU+OH6eVexetAH2Bx0nmp42omooZox7T677VFPG1624XhrCxz+6MPLv879f07/0T7mEGtFE0SZS35Ir0IQ1//RFw3xNVkVlUvKx1/1aX/r+zh01uEC2z32/55xiFozJasJd30PEVGt5cw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02cfbcc5-12c7-4a5e-71ab-08de994cb647
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 11:06:28.7827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ogz87aWeiLiYwGkOwKNNSWfTG0kcC+a4QYMhjLYn/q/CwXU/VGR5oV4yOgu9it4QwTz+Xae4jROTrIycTcnn1GiwCuP1Ir+YifuhdH8FYU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6841
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776078395; x=1807614395;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KBK2E7QiyKADSHTVjqsnMKUr82SRUu8zpVloX1ccoXU=;
 b=nc0mOszhur/hdYvKaWqEKv0YCZn4kTn8UYg1pBq0yBS5PA41gZHBVnxb
 U92pbRHtfDXA+g6PDp22y+X2GukN6dNbLZWXv1V00o4gKyGV8/txKkECF
 DCEVJiDHM5szKOdGs4YMEa2q/lPfKFKu+vdhyWmutI/sZpqFPNXhE+1yv
 Y7yZoR4BzBU5ATS6ro4NktN2upUQjACEQUbcNCF1FXrpIEt/j4YyNFNtJ
 sIA9ySFLTuOuINWh4cq5M6REb1Yh58FIUmvlJjtQBrMkdqZIegaDTTBDW
 AO4uA0KkP81mwUdMq5BNOzBQCKPrwCauviAPhTPdUPZPTV3BJdfrl2H81
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nc0mOszh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix double free and
 use-after-free in aux device error paths
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stable@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9554C3EB183
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Greg Kroah-Hartman
> Sent: Saturday, April 11, 2026 12:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Greg Kroah-
> Hartman <gregkh@linuxfoundation.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; stable <stable@kernel.org>
> Subject: [Intel-wired-lan] [PATCH net] idpf: fix double free and use-
> after-free in aux device error paths
>=20
> When auxiliary_device_add() fails in idpf_plug_vport_aux_dev() or
> idpf_plug_core_aux_dev(), the err_aux_dev_add label calls
> auxiliary_device_uninit() and falls through to err_aux_dev_init.  The
> uninit call will trigger put_device(), which invokes the release
> callback (idpf_vport_adev_release / idpf_core_adev_release) that frees
> iadev.  The fall-through then reads adev->id from the freed iadev for
> ida_free() and double-frees iadev with kfree().
>=20
> Free the IDA slot and clear the back-pointer before uninit, while adev
> is still valid, then return immediately.
>=20
> Commit 65637c3a1811 65637c3a1811 ("idpf: fix UAF in RDMA core aux dev
> deinitialization") fixed the same use-after-free in the matching
> unplug path in this file but missed both probe error paths.
>=20
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: stable <stable@kernel.org>
> Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create,
> init, and destroy")
> Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create,
> init, and destroy")
> Assisted-by: gregkh_clanker_t1000
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
> Note, these cleanup paths are messy, but I couldn't see a simpler way
> without a lot more rework, so I choose the simple way :)
>=20
>  drivers/net/ethernet/intel/idpf/idpf_idc.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index 7e4f4ac92653..b7d6b08fc89e 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -90,7 +90,10 @@ static int idpf_plug_vport_aux_dev(struct
> iidc_rdma_core_dev_info *cdev_info,
>  	return 0;
>=20
>  err_aux_dev_add:
> +	ida_free(&idpf_idc_ida, adev->id);
> +	vdev_info->adev =3D NULL;
>  	auxiliary_device_uninit(adev);
> +	return ret;
>  err_aux_dev_init:
>  	ida_free(&idpf_idc_ida, adev->id);
>  err_ida_alloc:
> @@ -228,7 +231,10 @@ static int idpf_plug_core_aux_dev(struct
> iidc_rdma_core_dev_info *cdev_info)
>  	return 0;
>=20
>  err_aux_dev_add:
> +	ida_free(&idpf_idc_ida, adev->id);
> +	cdev_info->adev =3D NULL;
>  	auxiliary_device_uninit(adev);
> +	return ret;
>  err_aux_dev_init:
>  	ida_free(&idpf_idc_ida, adev->id);
>  err_ida_alloc:
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
