Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDC8B3B50C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 09:58:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9491461288;
	Fri, 29 Aug 2025 07:58:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U8aWxyhZr3Ce; Fri, 29 Aug 2025 07:58:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2D656132D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756454307;
	bh=We/Smkev+7cPuX5U1VYgDdLE31PsdxqHAtSbmSUMgBM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xy18CGhdH4/ohe4zFM3gvs5hnIYZPYc49SGyszWNhYk9aNacGYaXM5xGdL2J0jNTd
	 q96lTT2FcISvFmuN3Qqbon5FFjN9ybEksTwJi19/j9Wk7jimF8jNMFyuNirIg8L1qx
	 xWIEoSG2K2BmKYKil9YyIVtjouF6gztMnE4RMjefoHweawWB9k8Hzf32lKxRr+v3/O
	 8nGNfMMGksU3lIvT3klZCRAu4hQYcqmz05Yw63eUDlpEcDq431VuzZpZi674spH9tZ
	 BuhjMLEqwNs1gIjpvFqAEkRA+FRCDmZ1Meqzz9JENJwhL1kz68h2RRzl/vl3bHSP5Q
	 QArXpIVAe8fTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2D656132D;
	Fri, 29 Aug 2025 07:58:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1092D6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9D448154F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:58:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id frqBv3QqjTxQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 07:58:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A2738143D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A2738143D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A2738143D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:58:25 +0000 (UTC)
X-CSE-ConnectionGUID: 7f3ddAOnTti0KM37gAqvCQ==
X-CSE-MsgGUID: U7BN0lAPQpSdx9KQjfFq2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58444792"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="58444792"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 00:58:24 -0700
X-CSE-ConnectionGUID: lF3XJaOJSkymL892R/+KZw==
X-CSE-MsgGUID: +Rby6yWJRYSc7v6Myq02qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="174678878"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 00:58:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 00:58:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 00:58:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 00:58:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bqnDSBJLjZ8fyo0in+TH/PAu/W7TyFwob2qA8PILw+sWEzidgJVSPBk7mcEtSNg78fZICMGn5DWF1yArEREl5wv8u+m8+I8QTlmOezATYItoVzI6iTS1+vuBam1Xc0OgseZWY/h2aO74DjJzzF3u6zD+SsnwGxZgkgYXiVbLpMKmswY21dXcj5KaAKFJc9ci+fcjr7h7S094vKP11Kns7eBn1t2qN73SKbrIDXQLNUkHWvwSeQrTSJhgjGVJFNlAOXL74dR65+mRalF8z1dhvF63yyVsNfpx0N2IPdame4kguNgEZKid5aeRm+RiUwQHbF8tPcATaVt1bsXsFSVMmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=We/Smkev+7cPuX5U1VYgDdLE31PsdxqHAtSbmSUMgBM=;
 b=jl67Bjw3KtX2nnMe7MmG5tMWvXJRO5p/POVG5e7WP8rXhkXNrzQtaLkREYjUHufb5KjsO8RXkqBorDXxfurbABUfhKBpd4UDZZ+CbntQVpG8olvlRYmign5hqDysS21ns7APzE57NnhTbe6lQokGYA7HRH+QNNAb3p98UP/iHVq3PJ3rBSwr4kfDixSqWovUJP65RMN7EHocLuhmbqL29rzeBoKnsJuxat7mQy7CdZC8NbOzSqdhSaNEW79etvncj8H1CQidZCaRd0nDdjqd3/ODlF2i8GLJGj+rUgQoggnzSfDX/yJ+WCFOk4h7eaK3To673IMiOgQAXS/OHm4mSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by CH2PR11MB8777.namprd11.prod.outlook.com (2603:10b6:610:283::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Fri, 29 Aug
 2025 07:58:16 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%4]) with mapi id 15.20.9073.016; Fri, 29 Aug 2025
 07:58:16 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-next v1] ice: add support for unmanaged dpll on E830
 NIC
Thread-Index: AQHcFp9iGCnCyumMAk2pU9WPyeV8BLR34QQAgAFmfmA=
Date: Fri, 29 Aug 2025 07:58:16 +0000
Message-ID: <SJ2PR11MB8452A51ACFB84741F38B01569B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250826153118.2129807-1-arkadiusz.kubalewski@intel.com>
 <20250828103302.GZ10519@horms.kernel.org>
In-Reply-To: <20250828103302.GZ10519@horms.kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|CH2PR11MB8777:EE_
x-ms-office365-filtering-correlation-id: db3de5ab-7f5d-43ef-d2e7-08dde6d1cff2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?LgOaz0ZYd/NxrAlOAk18gKnojL9GUJgwinsCchKf3Ci3ngLmRCB4IFSpy4C5?=
 =?us-ascii?Q?Kp+Q2Ss2A319J/qzLkUgGX5b1PIIM0DzlPFVzVIr9Yvsq0hHWk025efgahda?=
 =?us-ascii?Q?6Vy66PEcJnabA9dWHGzq99FNV5GsQN3yxvpHVhSPuL7LOZjke6zwW8K/6cdK?=
 =?us-ascii?Q?b8F+d2i3oiY+j0OsgVDikwG5WX6/DHvsyt6e7tm8Vv4r9zjhF/yIWu3vzacq?=
 =?us-ascii?Q?ddw7W70cNt9pV5I398/yVJfox1hV4Q9XchVJsLHLEBFie3TBtOqHDECTmwzU?=
 =?us-ascii?Q?F2nSod4ebdbTViWg4l94VD4BH2S0OCgml0ZbCE7a3s2hFzkOj12jv4P5Mu3a?=
 =?us-ascii?Q?dp3Vvq+IPBNIMkhKIRHEtR4M1Siz5mZyNl7xOimo+DCMt9hgEitOvH06NNPQ?=
 =?us-ascii?Q?FUkk5zGuYleRl2rAK6M2NZtTjMC09wQuGoYhkFiKDBDK2jht1WTpp2EGld28?=
 =?us-ascii?Q?8mxkDXofzg9lrKdQLROJH11CZojV6jWiUKLVnhlgtojd7bQnikR6cBGDS7/H?=
 =?us-ascii?Q?AK/wD0oAE0WvXMFlhRCkvlXMbu1YkESzKNS0/XCfFTAV0hq+NMblxV993EKq?=
 =?us-ascii?Q?IBHYOvbzwAxn6BcssOvUDYsm0Ec8jxbFXs8tlg2HgZF76If4a9ksBzk8BMVv?=
 =?us-ascii?Q?L6/qKTVFuAKO1rv3IQKj7veoxjRX5z3Uruhh8KYI4GFoTF8q932gR0Mwe+g4?=
 =?us-ascii?Q?CCDi4KTzwEWEoaZyGpp/RxfXH3uqWOgwQhL8LkUCPaMJ7+0nqWPKMyoqn7F3?=
 =?us-ascii?Q?L+wHtDIHW3DaaSnBQ/Iy399wbI5CD+If7HMe6+iPxW95glTY2QYouqKRRAx5?=
 =?us-ascii?Q?3k/U83S/OBum7ZlMm1GvVwsPFIZk7D+na1pA67+znYRvml/nA2MoKBTdW70r?=
 =?us-ascii?Q?0ye/1PKdP9nFn/y8f4DJc2CRBguJ3x64q2Mn98siWYG4qh0zElb/oZQtPM5U?=
 =?us-ascii?Q?p35wf1gtzIOqrCy8pHdL5O6MDjvURy1h1wVAhWzQJ6HcN2wRNYDy8Wl+PmR5?=
 =?us-ascii?Q?jk7cecZbPVddXfaLVCEtSj8Jk0bGNmHxtr+oDWMywYASFwNSzzU5jUNuh3kF?=
 =?us-ascii?Q?STSZvfJ+ZOOAeA7Fv1DS71kX+gNIHNolmIrLndkrzHgYs9t7LKWW/xaybmVP?=
 =?us-ascii?Q?3hOXevve7l8a8XIuJJgD4gyQ9iFqSYyEm7cFZEEm0dYiZZTAqdNmlvj6v8aq?=
 =?us-ascii?Q?R73hn1H6yomG/Qzdz+GSBKE4XnvP7jCGiCsWm51FrLDucXmaYQD23CEHKKdT?=
 =?us-ascii?Q?eYOUqLjhNZq4QDhR8r8qf9wBKNKdH+3OVrBtoU7EEG3gLMR5mLJJeaF0hqdV?=
 =?us-ascii?Q?JunVFNQxvmGX6ySPrQpBiv/nLoELsctTmIAhk9Tpg3a2ntWnbDz1dsFNa9nK?=
 =?us-ascii?Q?ak0fC5451rpDlNj3MtpC7J/mZqimBUj/KuPbmX59V8TXw2ft2SNA+npTehAR?=
 =?us-ascii?Q?Qx6ZXP8T89xAlHDOreUb82Qga5lfZhzPuFhE9hN/JYi5jhJTCqHf8g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XOrCGtIdkVmYEcDq4c8t2946fZOy0J75xiidDERZihmCTgCzEehhOEUdSoF8?=
 =?us-ascii?Q?tSMoi+SxrSIER9eQwZNRNRHBKRrYjbcuOZGcrND4hUoEo4n59dmKUyYC/WDb?=
 =?us-ascii?Q?jac1vEUF2fxwkFZlPg2BVE6A8KWFnD4i6rIovYGc+jsy1ipU1OF3U6flLC3Q?=
 =?us-ascii?Q?Sy2oSVY9GwBBJfmX4OocGaWQ+FtqRzmfqX7igdb8hvAD5NDZRcbGprw5u/JA?=
 =?us-ascii?Q?+IHsTcp9HbRYLL3hrL1DTYJVVNahl4DfNWSAr6vGNajBgz+00G1Cbf65cgYQ?=
 =?us-ascii?Q?5eG7NtgRHbyhQKU0OhiUZyk3MKcL5xIzPIPdo2f1kmzoYainL9CB3OQHSzXQ?=
 =?us-ascii?Q?zvyse2zbTCYCF5zijLNQrfHM6Uu5SmlGTVDxi3oVIxjq0niU+FPoiWpZkTHv?=
 =?us-ascii?Q?256s1iHifiwOwqovKsqfqgNPznJmJCjrIqv4noO1Ym+bnl0qE0LbSa8xlVpU?=
 =?us-ascii?Q?giq3J+uc36WiYffvsl2FXfiH3duJS48+lGEd/UQYWBdhvswYtSrSk9J9YBww?=
 =?us-ascii?Q?UQ7NqzrDE36YhaZ2kimmM5n5MC+BC4tIWpFnwybz5Gq4uSIF5bON2TTEbaDY?=
 =?us-ascii?Q?Hlm3182uPwBU2YVmhj1bIY8dfZxaVzpqvtvzBg+RFPA4rUlcf42X/069A73F?=
 =?us-ascii?Q?JTYlz7NhLvBZSGMv4aiD6fOCEBFvW4kjdyIsoUH6N58g4CcTIDt8c6y1MHAx?=
 =?us-ascii?Q?xqThWDuIY1oQ1rEUVwxqVbve4oSNUARvpVRT1udVXMN+Z2/xuRddxqGI33Ov?=
 =?us-ascii?Q?CFNHQRz1lEBGvudQIiFqAusKfLVPqDqOBy5K3M/UGRaFSVNL6Tn/D5hjGr6f?=
 =?us-ascii?Q?YSuL5cJWoFvm3Ii0tDmguW83+F9OD8oJ0X07aNwi8dCafhTPSAB0lAxlJ/43?=
 =?us-ascii?Q?IoFeTzlrjE0E1xMe68+1TVorycrdYU1wiY/ObZ/4yMa95Bp8aOqj6b0Cz9l9?=
 =?us-ascii?Q?72emAoG7+f3KZ0yETorAVtGFLJDRxB5M3EEFmXNdwW2PQVjJ3/mMxiPqs+JP?=
 =?us-ascii?Q?3ymOxf8LKWMOXe7ZzsGeQdp9XAAqomUxg7dblCTqsDObiwI/p86/hIZJs6WF?=
 =?us-ascii?Q?57QbJMq6AagUYUWsqQcE5S4wf6qn8qGdYs7So4hddxG9ti1DGj7l8i07gCmQ?=
 =?us-ascii?Q?bYYtOX2aM+5KjCi9bNXypHz4SUVBeR2Go45R/qMx1p9pukOM83W0g+p/n5Ce?=
 =?us-ascii?Q?y1pRPTRh1QCXfilXb4Ugx3hlDScDu7UrlyyUUjV2HdXt0tSLR/DyJ4oFieZA?=
 =?us-ascii?Q?7VrBE8VU7Rywq/c3/PyC/IpLPRlFJcOZRJNWee2j8VuHPBut6dVuQFdV1/U7?=
 =?us-ascii?Q?/LFVq1TfSxUf6A9PDfyUHPLF/yy4tzJ+wFIdv1tAVw00eE+V/clisPC5OvJO?=
 =?us-ascii?Q?D98z1vLm/+YeTwrELuUMInMp7zPxGFozsu2CA7FMw9Tr2zJs4O/icl9cK1Ua?=
 =?us-ascii?Q?Tomhsl1K+QiJp+u4bAYCXGLB7WYzk1uHJjh+x7mhXzHK7Uw7fK5dSM3duQ2P?=
 =?us-ascii?Q?FDWhuunnL0I/xClncfdFAbhh/T7ag+zwhYW3dtOs17pG1J+U9AZONi5xuI6m?=
 =?us-ascii?Q?VJ8gQ0UKy8lVrTFdGclPZPuaToR0ZxgGzUeV7autB+i2tz3nAvt8g5mikDsi?=
 =?us-ascii?Q?oA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db3de5ab-7f5d-43ef-d2e7-08dde6d1cff2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 07:58:16.7768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: by4f2kk2fXXZUt4wpJLbxyBWLKEzrwTO/0oRAFiMR2FT3UDxAOceThn8oYH9gIYC7tVqlrgn9q3kX9Da2+xgoyiuTPhKKxQpnGfrZUI/BgU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8777
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756454305; x=1787990305;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H7ELDKYLfVdQ9IjQeSglN91N5TPz9Ira3hAV7xKQAnk=;
 b=QNAREpX2S8htzSD1cJmqV/8+LtE8KaNTiLRIdBWgDJolSHgu7j5PFYzg
 ANNWlnHpxEKgivgKUIa2GExoNg0yohRjWGFWEM0v/OgfrArzBNCV1D78l
 zS1Z0nBW5H78+H/RKRiftqNYyOtXLt+tuEkFGJIeaZ9vWBUSENmsFxwfy
 H8C6V3cU0x4FyVjaj+XWtgxjL4PzxTJ7mkJLq71I6G2/drWsxwyIlbt70
 ECtckghzf37oSVIWitcPolq7ftARNRrUa+ARZUNN3lZNrWZtJSlf+pHwK
 jZCwkPnIJi2vGGYpYubuJa2e7VDuMLOi28N+FoOBQWHpsX/FKVAAwelKj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QNAREpX2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: add support for
 unmanaged dpll on E830 NIC
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

>From: Simon Horman <horms@kernel.org>
>Sent: Thursday, August 28, 2025 12:33 PM
>
>On Tue, Aug 26, 2025 at 05:31:18PM +0200, Arkadiusz Kubalewski wrote:
>
>...
>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>> b/drivers/net/ethernet/intel/ice/ice_dpll.c
>
>...
>
>> +/**
>> + * ice_dpll_init_info_unmanaged - init dpll information for unmanaged
>> +dpll
>> + * @pf: board private structure
>> + *
>> + * Acquire (from HW) and set basic dpll information (on pf->dplls
>>struct).
>> + * For unmanaged dpll mode.
>> + *
>> + * Return:
>> + * * 0 - success
>> + * * negative - init failure reason
>> + */
>> +static int ice_dpll_init_info_unmanaged(struct ice_pf *pf) {
>> +	struct ice_dplls *d =3D &pf->dplls;
>> +	struct ice_dpll *de =3D &d->eec;
>> +	int ret =3D 0;
>> +
>> +	d->clock_id =3D ice_generate_clock_id(pf);
>> +	d->num_inputs =3D ice_cgu_get_pin_num(&pf->hw, true);
>> +	d->num_outputs =3D ice_cgu_get_pin_num(&pf->hw, false);
>> +	ice_dpll_lock_state_init_unmanaged(pf);
>> +
>> +	d->inputs =3D kcalloc(d->num_inputs, sizeof(*d->inputs), GFP_KERNEL);
>> +	if (!d->inputs)
>> +		return -ENOMEM;
>> +
>> +	ret =3D ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_INPUT);
>> +	if (ret)
>> +		goto deinit_info;
>> +
>> +	d->outputs =3D kcalloc(d->num_outputs, sizeof(*d->outputs),
>>GFP_KERNEL);
>> +	if (!d->outputs)
>
>Hi Arkadiusz,
>
>I think the following is needed here:
>
>		err =3D -ENOMEM;
>
>Flagged by Smatch.
>

Hi Simon,

Correct, will fix.

Thank you!
Arkadiusz

>> +		goto deinit_info;
>> +
>> +	ret =3D ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_OUTPUT);
>> +	if (ret)
>> +		goto deinit_info;
>> +
>> +	de->mode =3D DPLL_MODE_AUTOMATIC;
>> +	dev_dbg(ice_pf_to_dev(pf), "%s - success, inputs:%u, outputs:%u\n",
>> +		__func__, d->num_inputs, d->num_outputs);
>> +	return 0;
>> +deinit_info:
>> +	dev_err(ice_pf_to_dev(pf), "%s - fail: d->inputs:%p, d-
>>outputs:%p\n",
>> +		__func__, d->inputs, d->outputs);
>> +	ice_dpll_deinit_info(pf);
>> +	return ret;
>> +}
>
>...
