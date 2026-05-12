Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOIUD1ouA2qN1QEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 15:42:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD8552179B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 15:42:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A90340F01;
	Tue, 12 May 2026 13:42:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RkE0ivJji2BW; Tue, 12 May 2026 13:42:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B970740C8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778593366;
	bh=+KKDXEXjJ0ySoJ4J+kBTwNTaiNvw6pIvekAa/5RY8wI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E+8I/aidXZRDbsnrphKves5UWyC/ze3oPCMXsO3kSlTI9q7nlcsC5lEdJIjkbpoUO
	 rnBFdDPzdg2qcoAhND23AWLoNwZN7rnWhfMfHwXjfp79OEUg7SJ/kvXu2OxTmh62SY
	 CwtxKFe8nUEhWJzykULRpFKPcAskbsukmMQfzaTQ3Y4GteonWWFk2tjmQv1argNY/h
	 VTYdzV6cv/RMMx9BaOM4uEXFre+4tl4ufmscNG8DjZV9RF8ocP0GkpJeeRnacNHKhN
	 7xJoWfSM59CxJd9kFbLk+y81zEQtYkLntnYKJnSNfXko2Zv3/RpGny9QeT56+oAlLJ
	 paJyqz+O2co0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B970740C8D;
	Tue, 12 May 2026 13:42:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E429223
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 13:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 001F260D91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 13:42:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m5Ixp4QetgGF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 13:42:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DA3AF60BDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA3AF60BDC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA3AF60BDC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 13:42:43 +0000 (UTC)
X-CSE-ConnectionGUID: TkMc2ppJSSSK/ITBbKT/rA==
X-CSE-MsgGUID: TY2FhxSfTXik1EDc3MIJ1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90603725"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="90603725"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:42:43 -0700
X-CSE-ConnectionGUID: XoTJ8gwHQaWrKbcZlmAMLw==
X-CSE-MsgGUID: e886MvuRSEq24ZoiI0havQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="261256381"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:42:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:42:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 06:42:42 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:42:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M3bl04u6esO2B8jnIeNzmd4seA5EKlq6OxtDHf5l9mioc+PnrXo5iMl7yCJ+MrNyIuBanuRjtfsofs7zcQ1I0TVpDkOhKefeuYv2AMigpvJyxBsuWV2HTrqs58eWpJ+eaAZGlbbYiRCn6bIRK8T8o8nZcwxtrAErYVhvZnSFQtAd5Ezf05n6OCcLiRQvHniMgWlotOJNI8swS+Sju2VOYzGbbBE/wiRlVqt6BBXO/kiZHVQqgbWvLBMnt/bEgyNaC6L3EijNE+gcHcf1CLFplomqVeSseYo32Bc5kzSt17bOlbCprWEZ8Jc800adpoN/1h+QHvbVwrG7DarNH7a0TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+KKDXEXjJ0ySoJ4J+kBTwNTaiNvw6pIvekAa/5RY8wI=;
 b=CjYFTBiIenZjXdJyuX3ROdyEMgLbkhpTDzsPUBXTSqXPkhbwxd/aIrj383gK1lrtUSaKRrwE1Vp07CgFuKXfG8Ndl3v65rg/a3d6Eq+tPci11f4B0wFRizhIgr5DE9tikF/jg8/MCzZR087QsxSh2pGdBbklGENUjiH5tidX1ZmXhaqXQVX0V10VHCyK7A8kavRTcom377igqY2frpH4p5/nsu8qRR5wRC4dGOEwjWsIMrtEGFMVcoQbuzvepc139liWCZa5jTlTl90eg1DQrnkeuYpEWH5DdtgQjSLYRkrG/E6J9ekVNgiPxveppd3uDSCK/acEKjz1dDejV0OEjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4940.namprd11.prod.outlook.com (2603:10b6:806:fa::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Tue, 12 May
 2026 13:42:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.021; Tue, 12 May 2026
 13:42:39 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next 6/8] ixgbe: extract ixgbe_restart_auto_neg() to
 avoid code duplication
Thread-Index: AQHc3piM0k27JoKAcUurP7sSApZYDbYI+9yAgAFxKrA=
Date: Tue, 12 May 2026 13:42:39 +0000
Message-ID: <IA3PR11MB8986A411A8E4C16AA67F2709E5392@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
 <20260508031226.3601800-7-aleksandr.loktionov@intel.com>
 <20260511154043.GC27589@horms.kernel.org>
In-Reply-To: <20260511154043.GC27589@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4940:EE_
x-ms-office365-filtering-correlation-id: 3db3d360-dae3-4f86-49c3-08deb02c55cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|22082099003|18002099003|56012099003|11063799003;
x-microsoft-antispam-message-info: Fm6/XXK1sf//VHjZBxVCDYffHQIXtS9Zm8mWmglMB10Z+qebN/uI/BDVLXiNVdM6ydXGFjZZdI/XDMPz1rTXdPLavHMQcDpZ+y/GH7ozQu66IIM+JUI+disihqIYEWdxHDmL0RtF6Tng814kavSivpcAj6Ln9cZuw8aRhaRqoa/sYUHaNLkE93tXviN9MY01UDeblsCh8C21qFgqBNSgUAEZasb5SEp3gNVxuvHY3yIHcm0Obd9CpuMQeN3m+OVQ/zsYZ0+AMQuRlgxsSZNiSYDheCo5ShI0Jo4SPx+OSMs1CStauJCxVYCuI3EUvy0mfkb+Rxpmxh/orCr3VBnLQzFiJDhhboSEKvvchm4Q7iVndI5a8KzXVxE1fe77Qi5X500JunBy0lwCTYfvqs6Vt9GgzHl+2cYAfOUJXBR/BlRctAMrpWZcm4yfsV98Hjyxjv0uC3CLy/AU5MG+Wkhh4BT4cFIeXQIJwuUhlcUHxwS7SmQZ1QSgczTHzGQf5v4dDy9IiDO6KA0oJv2QYHY+sf4ZyGdRaAOAtZaf86zTsZyFCrsJ4eFj2t20PO+mlZjJMvq1xrROhoEM2x9y68ZD6gRRBDOwWKKUMEVsvolVFa8EVdOCKydxUHzB54CwstaMKxp4+yiOJVTuVumbAj67KuZwkNB7ZN/M95I4tHDkYc6nk2ncXFXPrVP0gzrYwuKSNSJRaz+QwtN1jtk5u/XMx5p28Bh/qH7TdWGjAC6PpFovSXVdLeB6mt4nmfScvILx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xhlPEnuLDp7FK7QhYkRY7J5aDQN3G6zFVNQXcQf3/wiP+UW0peNgIzVdXPtR?=
 =?us-ascii?Q?Mh5CGG6ibfrOI5Zmt4QdhK9OEcpm8uu4gpu9f+xcHMjT8Xi3qBZTrx+jWMnp?=
 =?us-ascii?Q?MsSQmkj8Y3E7t25YASISbuwFjSR2RITWCNvWam6xVIKUdU4Td6XuZJ9lSK4r?=
 =?us-ascii?Q?3Jggum4T/925+ACLj5YueEk9TVmeNbKiUvpuijNzs9AfcieF7oCMFlYU/UTx?=
 =?us-ascii?Q?TX5hjjM5LLXGZWDkR6G3xUrJIr8BBLvUgIz4u6KoMBhOKLPCnvfsUi/gBJiA?=
 =?us-ascii?Q?CVej3GUvwvUfXvamC+tOCdaVYyzdBq7ssFiL5wJ3FhDmGX5+bCt57GR2E/ni?=
 =?us-ascii?Q?lvmzylDK8FXu+hhMORev7lWXkVm8iK/11BFfOs8B2ajd5O3WvguzZd/cdDHW?=
 =?us-ascii?Q?t6TLfqTGvDl9jlk43qEwUgmj/pJMPGlfndFdyNDJWFpcl6VXi6mWu70Nlepx?=
 =?us-ascii?Q?+r3RuBnCXXvyOYkpHOaQH+pNXICWT9UvTQ9WuF8ePxVYW284qze2rO8Vte/l?=
 =?us-ascii?Q?kaUDpThdhfyB9XL6SRomgTM/1zIBoqCPV7Nl0Twt4ciogB5rgRXC4+qjkrZc?=
 =?us-ascii?Q?xw1QKTdyFMi6/Lg4QRFCc0NAg8v/c2BSNShlBpFGJOE3vQYOwfnMndEbqSI8?=
 =?us-ascii?Q?JDggP/KXk6Ir9GSSq1xnPxaUxBV4CEy9bIJPkDp8WgTmqWQOrpRTvkeLS7WK?=
 =?us-ascii?Q?3+A8vN9a3ttTLN5ohWgKBbOz9FgtN9Zk+ZP77MUTFSfzlVk9afUtWBW8NOLt?=
 =?us-ascii?Q?VsF8yZUb5shMqaObl2ibIfQZQZzvP7GkxdqUJd50S1+WmNR7Htyez1YNrdRr?=
 =?us-ascii?Q?MMn1HP/GI85dIF8Hjp62zhXFd9L/UcfXPGkQ10Nw1o+xrGJplpK0oRltnezk?=
 =?us-ascii?Q?9DdVBhOfdr2wjZtVnLcLBuUMkktqOQhVj11V3b/w9IgoxzksdQTLOIB2bPmO?=
 =?us-ascii?Q?LzNn/7d3FshueKhNmOo8PFIjz/Kf17WYgBffZffA26h5YxUROs34fRYdQl/V?=
 =?us-ascii?Q?Gu+gXbOb7w0kUMoe+zvvQr+NKl1i2wCZg4KQ+3nnJvX/b/ql3eQhpW0cc0NT?=
 =?us-ascii?Q?kjslndEyrxAE+viqG0FIFLje413kctki9x/KbLm1NjTMivQIhg7WocvlFCPc?=
 =?us-ascii?Q?cve8h5clNYgTXCPnLLUUGM9BgUk4luGqiyOBnmC8WSdQohLIXH9PvIvPzVTO?=
 =?us-ascii?Q?p96r2iqzeZXh8SE+S0iYFlgZtMTC++fnYdWtGZUd/XgtnNXhB1ZD6mk2AIqq?=
 =?us-ascii?Q?iNCI7YngbRyYqt4PpYa/PN9Jw6RPsZFXtIAwk9P/x/wtuzLGI+85SHJkrC+C?=
 =?us-ascii?Q?Jg0InEBXWM40cxYpG/F26gxKsA8XC+jwKTVN5QL6hZ+mUQlDOj/XC9Dae7dO?=
 =?us-ascii?Q?349spduI1nkHcErvyPUW1fPuHZLmEei+I2aQF5z7wcio/GD1Mtd8sU9iZO3m?=
 =?us-ascii?Q?QWZWRuyCRu5vDoSvpEZVw5exS8M363YAb3bbtYLaZTQcokc4f8PGjuAshHkt?=
 =?us-ascii?Q?fnPWkibIEn9XJcla2tS7x1U8mn+bm+gYHKrtFqXlxKa84+dtGa7ZSUgpqtWb?=
 =?us-ascii?Q?CE4SnCLkzn9Ky0c8cFhFrGhIlx277F6VS4/Bqs+Hjvi0+t3+O7jVgV6bWB9P?=
 =?us-ascii?Q?c64x0TvMUl5YuRiDSlFRtrmLphOdwco6skRfKNYHqW60xJSSw4OjDPDlrLiR?=
 =?us-ascii?Q?GbmbNEQj1ZQj23L/1rGzAk2gETUBJr+ugpC5yglLDzIptzwNT5Gc+9x7pefd?=
 =?us-ascii?Q?5m55Nu66mWJs32HG/0Xgr0nf6cM6KGg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MVwA6ScDshWEqexessn5FuXXLN3+S6hq9f/V0POH0I1j7Mz7ADA5Lxz/WGwNcPRqznu10E+BQIYU4aeMPwR3abdr6q1V+8+QZ6GPhg6E1Ug+WsNFwjsl5jhY3PaGwarOJA/WY6C6YczB07i8234C4ApyGWJ0OlkeYk6sMg+dfP4w23IcZBKUOWXgNHzTJv5fIllO4fyWUEUR/rEvvX1lzNhufmbeT5Gw6+HGBnLkrCwLZap4S0FdPAZ8w0v60spX+srRQuN7azqXjvyp/dP8sJbRVlU3w+FrxDz3OQn8H5nmwnPc//6RSw72YC55tqXoq6qsFLYt5upvqLk4PPSrag==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3db3d360-dae3-4f86-49c3-08deb02c55cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2026 13:42:39.6462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tZkALBjImJyPFZVSlsPs+1ADnlD8cqNZlW9XEbnQS/+0KUyuWeNnfzkXPsLKUOf6tFr2vlwO1nNN0fe/jKwhqBu4PCsoT1jNzEzs8HymscY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4940
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778593364; x=1810129364;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=soqtzY44gMXfLxOcCotjqN+5sjZ+zECr53fuowUwpSk=;
 b=M5uJGif+GhebQPnka6U2jUgrUqDLZzOUAB6EhaBMfWaBEd6NJ55bRLcD
 KdAtHq6BKbKLbT5MxFQa0bm/jpqDmW0WNXh90mzN6raFXVI/Z+y2yOf4Z
 Fn/1ZvKxrL4Jsg7IMMYeQNQm98XEEObvRmNk/FWwqNFnGNpjSEIsSi1WA
 2HyfsmF43GQ/lNjrAoV4dUTtIUheEGEP+/4oIVQe9hxDLTj60Ns0f9xG4
 AAbQ7Dq+udEJRb5UnfQl/DjBPBnHlG7Db5ZR11uh1qbkGOnd6/Sl4Skbf
 +RCnBLoc+9WDdTcIoBBaiWvtXkRsMZj+XGBafXFiKsIbb5j/A92V5iDIG
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M5uJGif+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/8] ixgbe: extract
 ixgbe_restart_auto_neg() to avoid code duplication
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
X-Rspamd-Queue-Id: 0CD8552179B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,intel.com:email,osuosl.org:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, May 11, 2026 5:41 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next 6/8] ixgbe: extract
> ixgbe_restart_auto_neg() to avoid code duplication
>=20
> On Fri, May 08, 2026 at 05:12:24AM +0200, Aleksandr Loktionov wrote:
> > From: Jakub Chylkowski <jakubx.chylkowski@intel.com>
> >
> > Both ixgbe_setup_phy_link_generic() and ixgbe_setup_phy_link_tnx()
> end
> > with the same three-line sequence that reads MDIO_CTRL1, sets the
> > MDIO_AN_CTRL1_RESTART bit, and writes MDIO_CTRL1 back.
> >
> > Factor it out into a static helper ixgbe_restart_auto_neg() and call
> > it from both sites.
> >
> > While at it, also check the return value of phy.ops.read_reg() in
> the
> > helper and skip the write on failure.  The original inlined code
> > ignored the read result and would OR MDIO_AN_CTRL1_RESTART into a
> > stale autoneg_reg value (left over from the prior MDIO_AN_ADVERTISE
> > write) and unconditionally write it back to MDIO_CTRL1 if the read
> > failed.  This is a small behavioral change: on read_reg() failure
> the
> > restart write is now skipped instead of being issued with a
> > potentially garbage value.
> >
> > Signed-off-by: Jakub Chylkowski <jakubx.chylkowski@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> FWIIW, the AI-generated review of this patch available on sashiko.dev
> flags that similar problems wrt write on failre exist earlier on in
> ixgbe_setup_phy_link_generic(). It may be good to address this area
> more holistically as a follow-up. (I am not suggesting increasing the
> scope of this patch/patch-set.)
>=20
> ...

Thanks for the review!

On the min() nit - the operation here is "clamp the new (smaller) itr
at a floor of prev - IXGBE_ITR_ADAPTIVE_MIN_INC", which max_t()
expresses directly. Rewriting with min() would need to flip the
reference point, e.g.

itr =3D ring_container->itr - min_t(unsigned int,
ring_container->itr - itr,
IXGBE_ITR_ADAPTIVE_MIN_INC);

which adds a subtraction and reads less naturally than the floor form.
I'd prefer to keep max_t() here unless you feel strongly - your
Reviewed-by stands either way, and I've added it for v5. Thanks again.
