Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPjrByNx8Gn9TQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:34:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E95548034F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:34:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C768183759;
	Tue, 28 Apr 2026 08:34:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fUR44lmwxyUI; Tue, 28 Apr 2026 08:34:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23A62836F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777365280;
	bh=+yPqSPU+zpFri7zEIzZCIcKbfJIhVUAE3DZ1yimFiJk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FrSm5EJh4KBazeHCtz0YPQVClU8KywNymf7tBIeZ45I/wQatA/A7eUJ5PMgOowsUG
	 k1ifMrMSASYzTTjZC/+9tBbxTeW1FuOXAWyvtqPZzEkdCfNFtW3GKpFRPbODw/Eht8
	 kZcDZA2IXx21dhF9Y+6TEynvsbre25zw3XnWgPAFiDu9zirWikzXtUCtn0tC9am6zK
	 NTF80mo5p7dU0p7hmeaX0EuQqs2TbdZre+xL5gvXwtFsUZOCuGRwlL7NcO8iRs0fm/
	 ybMXcTSc+4Ml61UlHxlh/pQFkI2baJxmcSngNGA3aDD9CpdFLl7wKHn0iATjH89OJv
	 20GB4/2Mc4CRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23A62836F1;
	Tue, 28 Apr 2026 08:34:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 425231B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2804360F11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:34:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vrhQg8jVMMr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 08:34:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 73B9660F10
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73B9660F10
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73B9660F10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:34:37 +0000 (UTC)
X-CSE-ConnectionGUID: /EOWZANVSuqkeP1K+af3Iw==
X-CSE-MsgGUID: fgZ6jWX+RPujmdj32lgj1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77432052"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="77432052"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:34:36 -0700
X-CSE-ConnectionGUID: Fw9PWAhQSk6+NAYXRh+Ggg==
X-CSE-MsgGUID: XsA5sNrOSTWNpiwKQTKqWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="233024216"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:34:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 01:34:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 01:34:35 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.44) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 01:34:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A19sWG6v4GRyZwZiPPMZGh5nEDpqY4HHfD521u2eCdy2x3CMgNx/d/Nc345rEkA9E+4XAdPl+GeDycbN5kVSLZDjh1xqJrVNJ81MZUekCC7gOospzdwAb3Jyl8QpjYEg3sxt638B0CZTpyr9ugU0gnFTb8A3eAq/2seEFZCJw3AyBbcxAbjkP5XsvSYKBcVYb+dqnLqaYAV1LQwiSERy/5A4zGszTFCYx17F9pLbTmp3tN2uiLRq9PAmIg9dpM582bylgs6BE52hwID7sCSfKaWRyzcjTyA1U0OU8W0PRlq60n191D+mJCuBfSKcYOK6YkztPuwveUE2kzGqhRKpDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+yPqSPU+zpFri7zEIzZCIcKbfJIhVUAE3DZ1yimFiJk=;
 b=XDaw7a1rYMLR9MV7OsgPMRxrOZMuL5GFulhZhE6d8tw2KzjaoVk+92dbAfYZVYMDFIpXcDwgQ+nTQUMMtgkdNyP65lfZi/4O5i/VkeXVK7aLtTehOFHUc3e8Pg8luwE7eOKrBepVKN6jPEE4LMVqWDysvhDnw5nB/t5aH6W25toYvN7i+9gFhvDztD0ZkKm/opbWFkns0g+2igXxL2L6ZlXg/NsAEC/TnZ752Ex4fYGavpIBRz22uNUpxEoz+X357wlxSq2qp1r7W4DfpAqDq8Suxa9MpUXfVrvMESXDS43A/KeSU9gOpU+gqOULBtrM/e0ZIH0s/bfiX5r6vIUUSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Tue, 28 Apr
 2026 08:34:33 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 08:34:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "jramaseu@redhat.com"
 <jramaseu@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-net v1 2/2] ice: use NETIF_F_HW_CSUM instead of
 IP/IPV6
Thread-Index: AQHc1uN1hU7Zw/f0VUOSnLwRTMNKvrX0HC4g
Date: Tue, 28 Apr 2026 08:34:32 +0000
Message-ID: <IA3PR11MB8986F4B08B9F49914B0B0A9EE5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
 <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB4966:EE_
x-ms-office365-filtering-correlation-id: a5ca929a-f9a3-4e04-6c86-08dea500f900
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: ada3lwfqMSjRY8Gu8PZOPTp5Acbsn+BrDTi8ZIYcfgqrzbvHZarfNiYQR5FxzcOfS+vJtMCQH8kUpBpZsUFdLo6nQ6p/BrHMKarKtdHbCeIIB19A7mmmR8ktsfam3A1Fh3lP3wva0BFY7zlETUUCfqJEs96dw0tIaf+wWIIA/4pC7ROCrpnj4kjAvMEbp2wuRHLQfX+2Ntg/zgwm3WPb0iyG+eXbuoeJD32tmHnok+ojA6/kQ+0irTAGD/0KW+uMAGq2hM3036Z4KXYSciDyi3TQ6CawuENXFY7y1VtwPah2Qgdi4OsttGDuEmB113fFvH66FSf1G3BNuW4cHVD1VzZzy7BCD7GcYnXMwOqO1nDXBA0ogfUQo+KlzkFberggLnGhtLdNx/rB+V9/AalBLfVkD3U5ABPZhrrDmY2j5e5DtFo8XL7XpaACjMdDcsyOvivlRByvjQnHCZSomAlSUwNUJekLW+jc2kOt/J9Mcfn5B7jasZ5NKRTv22p4smCPHRD/IFDpo/Juvv0nbex4TYzWVPZvMGtd6fqGvqJQ9d+2F953mQXOCxtcgKU1lbnkutmQAhP1USzYI9wZqmHaJl66H9jJtkOT/Kpo2vPINl/CH4h3pmzUJmx2boy5WX6ddKHBjoD85Ma65jyzT269Engx+2IPwhF+MnFdvgnJLMNuoQpIEg8/gD6cjeYIBeT7AR+CejCDgTkyVJ3+s3WgaCyE2h1cQCKZVhtqwfNnyZpykEiCMK70Q47QVqnhihzNoAoM3F9fMwgV3HnPuZh6ZC0RgFUKNGQ0U+ooc5o+Zc4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XgcXseEDSWvvEvKrpuezQFI+apd9h1ebLV0pKoGSBI0iqx1UUpfR7308V2pW?=
 =?us-ascii?Q?uzbERLwlaffDZZl63sdsBW5Ge+W2Jm2pYE8b8nRrjNbcmiW97/C1Ev0FQR6Y?=
 =?us-ascii?Q?pE0D1nmkNjjsrzV428ty8CkJbBKmrXpZalK0EmpfjPlELn0my0q2WT+Vs4DL?=
 =?us-ascii?Q?ZfbJ8mmpHC7x2MuYL8bMX+CDmhOPIugTl9B7at4t1Ow8cqVBr4C2X+yW76//?=
 =?us-ascii?Q?+To7MYQ1ZNJi6U9V/w0u65sLWle6+IDjKk6mZiz79pRcgINUGncVKJK4bvW3?=
 =?us-ascii?Q?0ABHpyO3W41Q7kLkN/7uCIwxTMvsHBLDqaQIDWzJctwdWL+ZVQNjFamAmG5i?=
 =?us-ascii?Q?iSAK38v2qRVoFYMGK2mxEnTiC6tt4tpbwsxPsrWVhQzVh5e0BCDB/P1M+p3w?=
 =?us-ascii?Q?ZsoinifeYUiUNGr6MCCkb82pW14V0owV/G+5ZWnjDR0VDPwlRh+sO76CMxLZ?=
 =?us-ascii?Q?BLYI/H2IwsMsbypcYxQp7Ak1VipuL9CJj2CpKd4MBwX2fn6RloefoMhCAHQL?=
 =?us-ascii?Q?f79IV+VQ9xfSKrOxpuJAckpsz/SD+E5QSECIZlPj4j3EAFdRFpKyL4EzNp3h?=
 =?us-ascii?Q?Cp36DNeZFiz/zH/3ozp+9kDQ7512Op1MEK7k/HmGnuNzALLh3OWbR2rxvghp?=
 =?us-ascii?Q?NPj/0NBWxfGbBJ5dnea1mRtqzWNhkZzb1mlWnyIF4g2bcK497q23oLHa4eiI?=
 =?us-ascii?Q?195gPb7pniW9gQgtDeEMSeKkKgxJ54Q9NtcRwq+9yaa1Vt5AEsADrOiKru/D?=
 =?us-ascii?Q?jKdnWQ0N5c5GnhqXAROnzstd9wWZ3T75hz3lphJbQsswbPRhHMu0cztzEge5?=
 =?us-ascii?Q?TJMl4VExpqySHIZFujbvbWuFiUl2ct14rShDld8YENnv+o6VQCr02SuDeiQi?=
 =?us-ascii?Q?8GNcBveyUtxzlcZ+WJbsjoWOqsdADA6mB2RDddv8AhtbxUOyYwfeZQ8Rt0DN?=
 =?us-ascii?Q?UoEwGVOCr17XSgmcrskOkhVJCj8HAsBqXbVz6Qb2RS9z1HtEluvEgRUHX95u?=
 =?us-ascii?Q?GJHsZwPpAQbgcVpo5dcxyUuhRl/+3VjmSJj/muqHTO9vVOOjvHrUnMYtIgsx?=
 =?us-ascii?Q?hDrhqonnaUmIGJzspgeQjad8NiT3DWCuYF3PZex/VD45k3bN+qyTfphn2XU5?=
 =?us-ascii?Q?nFLK3yif9WlOQAqTjcYh/g8ld5812f2UOdrPlk3803sebb7eBuixBlZWVA7O?=
 =?us-ascii?Q?nI/YTvBhShB2W+Ndtmh46N6bjauHoUlymXkxHUK+wZz4U36MwsP+LWfXjbjP?=
 =?us-ascii?Q?OoCUAhW/dqPSzN7FVWVxpLSSd46MttprMSooJX09oIze8ZaT6mxXmaL/3llp?=
 =?us-ascii?Q?t3LqjZlO9BuuNXZytKVJoNe0cnvwOAYL3iQfvPaUTrAW7r2G34LSL63xPtJj?=
 =?us-ascii?Q?Ur+NPNzxIEuWiCnIXKJAMvaXcChT/VKwc+Fr2+qimE4ANsY3blsRumX5jLXR?=
 =?us-ascii?Q?chRMXhrstsog2RmxMTx/QQrJ+vRejHfFt0HwY5PRYRI5rlCIux7d/rDXEDLn?=
 =?us-ascii?Q?Q+RUXROZd6mRzAya964mYROX2eFtfV8PVFyBAnv0GsS1MOwyAWmI9t2oSNAD?=
 =?us-ascii?Q?8aQSCGkEvpjrso+9DoReJltmhHFnGDPOxK3vYh1e+PQRB+EX1iYi9X3Evueh?=
 =?us-ascii?Q?XrsWZ6dqWVyoJVJnFug1QeywJY7mw4H7Iu3ySMDb0e9kP6wUiU9XAZ5WZo68?=
 =?us-ascii?Q?nHgF2DCB2vvlUHcKV7M80l6koLp3YlM/KZ0Aay9jZcxfX/Z9ATezexNiY2lV?=
 =?us-ascii?Q?hMDpMezQMoiICMtlqN5tGxL4NrszPUU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: L9z5dtgILs5qk5ZLaC0BnwybFQVcdnHpsYdVVxABY1XLw/Vs2cy2sNq8IOyj3xHFno9pfTUDzK9v/Jw6mWCD70N0diBdw1V0igD0O++PxrYQWvIl17MvpT9rUFNdlOejoo1MH/e+l9JQcW+4Y6Oj98i0+Im7LlvxXRoIZpV92TFFiKWxsK1SjkthShRCNjsA3cEyFvJmUICOpZyOF3i0Q6wPezQnh7GkcJbOZjdq6Sk8lGyTN00/4owNHS/yG4wGqQujcRXFv3u8LRCxz4aP72zqSGTel3Y6b7priG2fxgShqsrPBp8t/4WGTqewaX00EspYPJZ+gI10zJQi0bpCQA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5ca929a-f9a3-4e04-6c86-08dea500f900
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 08:34:32.9005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9nEh8xjf5SDmxlnEGK2hsJzmOZl2r/eVnhsvuk9ztKJ35gl9Idov1vMax6WILC6InI0cGsuPBx3O+KF1j53+KBT/eP8lehbIF4sClqIL4ns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777365277; x=1808901277;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kStV6PrHGw1TcoUMh5r6YcOsSfBevvp+zgDvmZEJDqM=;
 b=boNQBXoJR5Ys06W96be+pdQ/c2sEHghI7GvEubE56hCli6VxC5mYz3HR
 AYNMtAkf7z1frmqihwhi3b/p3C1n79NCWwuYIUIgj7+BVkAjwsgAGB+ik
 pA7RNOj9Vc1GOFBGOpFRrFE4ZV4TY5QzRLeZLzSQ4SRfjHTrKOuYlGUFl
 g/oiLR4LAldjm4V+g1JrEAV3YpR8k6ix4j3V2QqWyPkIO3LLJc63oyqGU
 yqS1yD8TWry7kQl9a/cUswWGXMTChoYFv49xdN+QEfI4p1z1Kw93IkxyE
 A7zUbCdBn7kzkryi6VgEoMEBW0ASUVAX1yCRD4K5zXYfREs44tYHgCWeK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=boNQBXoJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: use
 NETIF_F_HW_CSUM instead of IP/IPV6
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
X-Rspamd-Queue-Id: 6E95548034F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Tuesday, April 28, 2026 9:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; jramaseu@redhat.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [PATCH iwl-net v1 2/2] ice: use NETIF_F_HW_CSUM instead of
> IP/IPV6
>=20
> The hardware is capable of calculating checksum for IPV6 packets with
> extension header. To not drop such packets switch from IP/IPV6
> checksum to HW_CSUM.
I'd recommend "To not drop" -> "To avoid dropping"

>=20
> HW_CSUM is also used in previous generation (i40e).
>=20
> Previously HW_CSUM was used to indicate that hardware supports general
> checksum. Drop it assuming that if the hardware supports it, it is
> used.
>=20
> Disabling offload for E830 in case of TSO isn't needed anymore as the
> check for TSO is done in Tx path just before preparation of the
> special GCS descriptor.
>=20
> The commit from Fixes didn't introduce a bug, it just shown that the
> driver is doing sth wrong with the checksum features.
>=20


Except commit message nits
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> Suggested-by: Jakub Ramaseuski <jramaseu@redhat.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: 04c20a9356f2 ("net: skip offload for NETIF_F_IPV6_CSUM if ipv6
> header contains extension")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 21 +--------------------
>  1 file changed, 1 insertion(+), 20 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 15550216fbf0..0f2f949af536 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3500,9 +3500,8 @@ void ice_set_netdev_features(struct net_device
> *netdev)
>  			NETIF_F_RXHASH;
>=20
>  	csumo_features =3D NETIF_F_RXCSUM	  |
> -			 NETIF_F_IP_CSUM  |
>  			 NETIF_F_SCTP_CRC |
> -			 NETIF_F_IPV6_CSUM;
> +			 NETIF_F_HW_CSUM;
>=20
>  	vlano_features =3D NETIF_F_HW_VLAN_CTAG_FILTER |
>  			 NETIF_F_HW_VLAN_CTAG_TX     |
> @@ -3564,12 +3563,6 @@ void ice_set_netdev_features(struct net_device
> *netdev)
>  	/* Allow core to manage IRQs affinity */
>  	netif_set_affinity_auto(netdev);
>=20
> -	/* Mutual exclusivity for TSO and GCS is enforced by the set
> features
> -	 * ndo callback.
> -	 */
> -	if (ice_is_feature_supported(pf, ICE_F_GCS))
> -		netdev->hw_features |=3D NETIF_F_HW_CSUM;
> -
>  	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);  }
>=20
> @@ -6489,18 +6482,6 @@ ice_set_features(struct net_device *netdev,
> netdev_features_t features)
>  	if (changed & NETIF_F_LOOPBACK)
>  		ret =3D ice_set_loopback(vsi, !!(features &
> NETIF_F_LOOPBACK));
>=20
> -	/* Due to E830 hardware limitations, TSO (NETIF_F_ALL_TSO) with
> GCS
> -	 * (NETIF_F_HW_CSUM) is not supported.
> -	 */
> -	if (ice_is_feature_supported(pf, ICE_F_GCS) &&
> -	    ((features & NETIF_F_HW_CSUM) && (features &
> NETIF_F_ALL_TSO))) {
> -		if (netdev->features & NETIF_F_HW_CSUM)
> -			dev_err(ice_pf_to_dev(pf), "To enable TSO, you
> must first disable HW checksum.\n");
> -		else
> -			dev_err(ice_pf_to_dev(pf), "To enable HW
> checksum, you must first disable TSO.\n");
> -		return -EIO;
> -	}
> -
>  	return ret;
>  }
>=20
> --
> 2.49.0

