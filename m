Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDjCLGjLpWl3GwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:39:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 032E81DDF18
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:39:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9E6941922;
	Mon,  2 Mar 2026 17:39:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sr94eXE6FL53; Mon,  2 Mar 2026 17:39:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A3C741945
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772473190;
	bh=3wNEOfJwsKkTyHrdIcfeBgHowzSqfXccrA8rx41/QRA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g7n62o9UqN1l7Hj5E212HSjQJrUpz3cc+ZXY8F/MbWHazBtNsS/KXs3i+buqqaYjB
	 hZKwAr+ao8RQwNQ7q6BKApim+zBPWAVZE5dbXJsuMMJEEZKH5Df704YNF6HKKS/9mm
	 FyKPhFA7pvKHWyrk89OeX6q64IRjAbUUT9aNa0l55k7aOLzRTRFouVa1hv2EUZuRaB
	 9Thd4ChGa3yl70RlHEe+EhuW3h0IrJSj4Gd7uO64/5TPpBrgHVYwliuQPcE/6T9Qpz
	 dNidkM27KXRoitJCc+YI+W0tmuvThk55HPpcAtZGN1/7y0Sz9iEf9y/Z48bPd695rG
	 Ihhmi1XmP45iQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A3C741945;
	Mon,  2 Mar 2026 17:39:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DAC34231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC986400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:39:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BjxJhxfna-T for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 17:39:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC8BE41484
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC8BE41484
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC8BE41484
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:39:47 +0000 (UTC)
X-CSE-ConnectionGUID: toUD7LjlRfm3XiDID3EQOg==
X-CSE-MsgGUID: DuHt/ZMnTNqzZJuRA9CDNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="77330763"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="77330763"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:39:47 -0800
X-CSE-ConnectionGUID: Yt/xzmPeQYGl/fsho2REKg==
X-CSE-MsgGUID: jy4otWPzSWm0x4/cc0rxmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214909752"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:39:46 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:39:46 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 09:39:46 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:39:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S5uDtKyF5rIzEXhFTlizbm1nh7B+ixx1/Hb7r5QbG7P7vWHtA1k4yj/AMDJobPRPHVNwNqvBuik4pd6PlOOsCxEbEjOA6hpv3xJwtkSeGEuV005QytUu5yTOa8hgDEfaKHRxuq42DZnnmCeTA1raSX2Kqz/5lIrw3fBqs71gupCp22+XwzbE5NxXt6zKGUKp2Otndy0Q71vODGo7GHvjxRNdeKay0a9UMZDxbvzMFxY3K/dZB6/2G5ZAMcc9mXsTaKmJAIWjE+F9N7WGAIn0ezbPdWDDFzJizWxp/zt5qnkp7vOmBNncRny9OIIlmDYArCjS36ZgxJ9JLx8Q8cH2DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3wNEOfJwsKkTyHrdIcfeBgHowzSqfXccrA8rx41/QRA=;
 b=KJbfjdAv4WpPuYux3Wi2QfyB7YYPNnuuwqGpwSpmfmi26guhOYU/ySNdiySAip5kH3qkrpFGvI20yNyov87G0oZHxAizTICuIXV7NJ12AplMZjN7ojYKQNX2lvfHNAhNhPemhdVnopxVQpFTNihndY71+AXT20cdM7tk/Z0vliU3EOG15pw1D7LanReMC+3BHrh4oyOjXr1XHqXTeLhlnSblP1inccLQImPtH81N9YmkQjfYoXf3Sqrh6jeFH9zHJa503TnwK0CulTodll2Ryqv4+0tf2H3x/5yFUaOpBUVTxB7YnicpIxhQ5dtBME5RkGU+Gw3f5ujbe/+jYzd0Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::831) by MW4PR11MB6763.namprd11.prod.outlook.com
 (2603:10b6:303:20b::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Mon, 2 Mar
 2026 17:39:39 +0000
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d]) by SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d%4]) with mapi id 15.20.9632.017; Mon, 2 Mar 2026
 17:39:38 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>, "Slepecki, Jakub"
 <jakub.slepecki@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 6/7] ice: add mac vlan to
 filter API
Thread-Index: AQHcle1Cb2c/v7SjxE6FroODj5RMOrWbqyUA
Date: Mon, 2 Mar 2026 17:39:38 +0000
Message-ID: <SJ5PPF6806D69E4D45C2860E386DC657B7E8F7EA@SJ5PPF6806D69E4.namprd11.prod.outlook.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
 <20260204154418.1285309-7-jakub.slepecki@intel.com>
In-Reply-To: <20260204154418.1285309-7-jakub.slepecki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF6806D69E4:EE_|MW4PR11MB6763:EE_
x-ms-office365-filtering-correlation-id: c7d65172-defa-408d-cca2-08de7882adb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: gulqSvxudgG0CxNRy1uXy+bcPTDN/9XVX96uMga4JUCk6KJXVIu9BcEwLpyv5zwfQjxO024Ic3t6OvGhMok2BxYvmuhlM9WPjQdKE4S1tanZsPhwE1EnZHkzkC/ItkecNsOKmbQ8au2rmORk/3MBGAtySr1/R4A53r7ra7QNZK/c7iSBevj0zkJKL/qQNsIWcU4whIoPHTgmG20WXEvg5XRWp/0CCHdQUPu07P+2/Wd2wVsLzl0CiIEE6Jpcjt2IQvheb2QtxHfd0a3y9Ivw72+dTHWLKFpP7UHZLpcR9yFsMik76PFm/TVG5tJZrfMMTCso5ERLU4lcmp8LrB65rnjE6HFH11XFoXrPY2dysUPCAqTvRd/yZtpkFVqJVLj2Dvgok2D9ZecrZ4bLIcvTr/Cn7KCZPOI5+d1Kg3In2iTCCK+lr8PI0OaqGeF9P/p8ayPSS0nWb2P8zFNakn9MHFwYytQXpumyXmEtMY4Z6l5y29MVuoORS8J9OaOG+r4ugniSI7QurE+IX5yJsDK/jfCWBGcmyuA8Q8/YLTx45lajtJmVaGnNHOd2l7y7bt/24RQa9Mz0rD0jtepzeo2LNcbxCI0gBSESuEIMPg3nBmU26bMGh6O1uchQhqaEtterxcjXU3uU0HxkQ0MZI5yg27yq0PFZSR9O93cZ1wvTigdVKjkyH+Ry7sE2YuegpIX+P+nWvZVWCntdzsj+hMr0gl0ihkKq0ujTK9cS34caDoUBfkX+hoAssKV6sqkRP51pN7xYz3Jt0IIbRLyUSMb/slyGP90MujdVBrFLoVZoTco=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF6806D69E4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C9UuF20fRnFWYNeVPjX6l+te0aQgny+JsdruD5ra8itgA95bwtg/2q2fYseJ?=
 =?us-ascii?Q?dtd8oKu9aeNZxAKfZwXdm1tjLiIJM93yyDZTMAkJVixtsfKrDT1cNYS17Q2f?=
 =?us-ascii?Q?/wex5tIgGc1obrEDJ1zRWzOsss6iATuk1sunzH+sC7Phb4DLOHvI2HOo06d1?=
 =?us-ascii?Q?fwtBlKP+72XNvATKXp+tFaLFgomRmyQep7n+KdAsmX4Z7QIili5+Yd+HXocY?=
 =?us-ascii?Q?z6Im/IyUdrCzwwiHiDAjGr0rFkUyxGBmbWGh0exxKDljZp1/8heE04Mht4KC?=
 =?us-ascii?Q?RRjMSEXANxgE1/hAXQoBw49lQ3uPi+LptIi7uCUjqM8N4flgzbqJ/QuyPD8r?=
 =?us-ascii?Q?mzeWMYdg2lNcQ4SO34FYo8HLONoGZf/W02PW0GmLRzpsRHjw+3Q6seG0gVKp?=
 =?us-ascii?Q?g8mjw/LY2d3P2BLUtHg9lLbEZEoGWKNDQ7zxizwsp3bIoaamk0VtD9AP/YdB?=
 =?us-ascii?Q?cHeB6hPyFQ0/UfZ0a4b1SL/ZE4NYrSM1gjfLuaL2AZFooglof0DX6eY/PR/A?=
 =?us-ascii?Q?wMdMXI2GzMaNNlu0CmXqyaEW8BY9f4G+vjDbossTnKfe5g0b+2M2dquHiaDs?=
 =?us-ascii?Q?FAhTu7c/QQNAf/+baXEU/b5TiQVUTnv7EbiH0GN66sqYZV9o+40ijirt/Aq1?=
 =?us-ascii?Q?DS5/vmbktP03fM2RTljkfvA1dGY8aWZP/6HWAtJmw132o0GkD/GAQnNstnCS?=
 =?us-ascii?Q?6BGbK3zPqqyRw4/F3vQ976yDYKTZq0BZ9gdMyyBbPanHhK0gTQJwRVRoozRP?=
 =?us-ascii?Q?5DMgxuQ9afC/wSHUkEL9UK//skJ/VgQR8JbPu9fFIdnC8qG9IgfWFC5scDVO?=
 =?us-ascii?Q?qzGG/tXcKQPNt38X2hgwYi1fMkRRpiayRDntwzy+0Y8B7idOzQkFZd97+bCS?=
 =?us-ascii?Q?IP0D+whgajAVMX4cWyhhF7cmRTCi9GnSHSVpTI3ADuMGtqy7BXZQPcyBrLPV?=
 =?us-ascii?Q?0XkRBtzbZITpdBFLm1D4i1NFchx0u+6bdtEYL1Hm5awwysmB3xwP/Qt3c2qo?=
 =?us-ascii?Q?9M6fQHyR6GQZWF5pR+BmJnkzPrF/5SZKzSwUJ93cJFTb55Hv5JrnRkDTPElB?=
 =?us-ascii?Q?9CtUdDDj981rYNw3S8GE045qrES/rX9bI1Uv7JhErBCY9PXJb1Cpt38LJ+Sz?=
 =?us-ascii?Q?fJ2IDg7roBBfWSh8VOsE2+GkhTqUImBygyVvQFJGwfQ/ZFTS/kFQD/PEZro+?=
 =?us-ascii?Q?gCS9lD119Evwi+6SL0J99LqF+VnGaoZQ2xP+pNsXR8GORfWI8O9xg6TEEhuM?=
 =?us-ascii?Q?tYtOPgHCq+4x6+LqQS49BmnX1ZloEaYf2/Ktlh9C7BpEDIiN5s/ui6pwt/De?=
 =?us-ascii?Q?W1TOP+ytxCkQbXcrBGYoBr0W4ZgPfVIL798gXuzJt9VGSGU9xmKeWBcwHoys?=
 =?us-ascii?Q?hpEgxzS6kKq42AhwZ9P5c7cBvitO26MJhUdDBQ+dBMSaIpFXkzomjQYQD1fv?=
 =?us-ascii?Q?sYk+ln6U7dkSsdhB0rmubMt/k9Le6T9Dp098InmsPToNfxDFODtgA3k8wmUi?=
 =?us-ascii?Q?Lq6Y/UvHZ/d0qcFaz0VXrYfVvAfOv1FN19si5ZxviqDr3zZiq2S8tQXDJctw?=
 =?us-ascii?Q?FUc7J8s0WlT9pH80erCYSiiREI0N6oQXllWOpTQMVsE93mK3wgzjcLXym85Q?=
 =?us-ascii?Q?uOu0IOLb6a/fzxx7cU88ejpFy17z0dDaNma6XeIQqWftpsDrlYhllHFAnWfo?=
 =?us-ascii?Q?iXf8vUstuvkI9mZVPOLa2W0OeCdLR25yrCCB7Ly+4yVxXD0yM6dfJLmuVeiy?=
 =?us-ascii?Q?9tZoweI++w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF6806D69E4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d65172-defa-408d-cca2-08de7882adb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 17:39:38.8669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vW9YsUOTw5aQpaTLpLm1aHISngTLmMVGDziel5f+6Ba2Ww3X9eCQYuyQWs7l8iANftWXYwNEckx1+uyQvqcfQTllkKvhhHCDBRDt3AujVWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6763
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772473188; x=1804009188;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7xX8bUjghlK4weDmzVPM4XjSerDWYdnzYpRM640PmZU=;
 b=MuRquBK6guWwvGgR/Zm4lA6cSIJY2C1YiMCG3g+fz3I40r0RBZxARvfO
 HWSFyJdlJwXRwhsoTXPEeBLStoIeEupASy4MzwZkB6v1Fu818nAHN0jHM
 mW0osOXQ1PlFh8tDrugD5WaHzT8dOOOOSnF3mKXi+Tp1RuAb4eo/J7ZCU
 s5k8e4RO6sRJUrGZN2X/MVyOZ+WKydIA50Xes50qjWJTZvjsF2UmR4wZC
 e3+Vt3HLZj52RuvnJBBypbCf7flT3HYKGYXosEOaTzH9gIVSjxCXA0W4C
 Tuu+y1s7iEebMv5fJEsWqP46rLcG7wGr5QPdTsB289jD+WrK3/Ml4PAAe
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MuRquBK6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 6/7] ice: add mac vlan to
 filter API
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
X-Rspamd-Queue-Id: 032E81DDF18
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakub.slepecki@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:email,SJ5PPF6806D69E4.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
akub
> Slepecki
> Sent: Wednesday, February 4, 2026 4:44 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: linux-kernel@vger.kernel.org; netdev@vger.kernel.org; Kitszel, Przemy=
slaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; michal.swiatkowski@linux.intel.com; Slepeck=
i,
> Jakub <jakub.slepecki@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 6/7] ice: add mac vlan to f=
ilter API
>=20
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Allow mac vlan filters to be managed by filters API in ice driver.
> Together with mac-only filters they will be used to forward traffic inten=
ded for
> loopback in VEB mode.
>=20
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
>=20
> ---
> No changes in v4.
> No changes in v3.
> No changes in v2.
> ---
>  drivers/net/ethernet/intel/ice/ice_fltr.c | 33 +++++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_fltr.h |  4 +++
>  2 files changed, 37 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_fltr.c
> b/drivers/net/ethernet/intel/ice/ice_fltr.c
> index aff7a141c30d..96a4e4b1b3fc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fltr.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fltr.c
> @@ -240,6 +240,39 @@ ice_fltr_add_mac_to_list(struct ice_vsi *vsi, struct


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

