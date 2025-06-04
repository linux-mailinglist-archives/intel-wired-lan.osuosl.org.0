Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C00ACDFE2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 16:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A456C41D6B;
	Wed,  4 Jun 2025 14:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OAGmFHl_L9D7; Wed,  4 Jun 2025 14:09:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1746341D51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749046196;
	bh=TdUf8ict/xeQjtmtNCT3OHHN3cBvJsYFVf8Z5+H+XW4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YZ8sdQnhFixUJeOxqdbqSBHzCNd4kYLKxRUcQ6anAs6Dt98vhO8ivl6VQb1kFVng4
	 7ZSi8FK+0RV7hi6kt8Wu8A8YPmU3r0ueuMf90wkjDywM3qiC8g0meas6P6NrW/rNGx
	 TiHBidbWwmXghjWhXX129DthrmwW3Jn2wGSqLu+KmxHg+SySsjI+uNcwHHZ/NsGqJ6
	 2ouF5kkjNt0Nz6R7+9BsROfccm42KTYj5z7wq3aEPKPnl6FYP9S5WGFb3mzaFpJMwM
	 68nNYr3Rh1a+eHBM17EdJyLU6L8/H7ZDivm+cHKQJSXMcLh6MWY2iXc+do3Ps/D+dk
	 DnELb5xKfbhfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1746341D51;
	Wed,  4 Jun 2025 14:09:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C32FDA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 14:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8944241F83
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 14:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bKZId9BJzZna for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 14:09:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7761E41DBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7761E41DBD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7761E41DBD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 14:09:53 +0000 (UTC)
X-CSE-ConnectionGUID: jSDsvs9KT5m0ZfstjCG1Gw==
X-CSE-MsgGUID: JjfvzbGbSceMTqnnU54+WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51202552"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="51202552"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 07:09:52 -0700
X-CSE-ConnectionGUID: 1GLFRoCDQd2Og0addUImhQ==
X-CSE-MsgGUID: P9iqb4NhRsS9sDvVdA+RKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="182375650"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 07:09:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 07:09:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 07:09:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 07:09:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P4duyU4mSFV7/Rf8OLO23Xi6MNmwlmZveeFQzlLuptFWzX5V16dU1tve1P2bqw4Y5V6rJ7wGPcdSpbaAj2gQ5y9AirFrMxtOXSeLbKylTFjEeZPWXYQumVkG/gOXTHCwGQU3Gu/ddklIgu3pOGUrNczdgB1wtwVY8i2ns+aIz5MaRkbM6PZS6TAlJVhohCm21iJ/hNCWW8MDWvXfZRu/43oGoT0+z34rFgMwN5GC/0Kydq5E78bgxI5lSTMyER53uJ1GMZCNArTzmGpvIDsDTkE71NA1sqJxPv6I2CrVyTrIR7XRVLlURDc4Dq+o7J7d8drAdGSJtUPKJpM1UgMSoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TdUf8ict/xeQjtmtNCT3OHHN3cBvJsYFVf8Z5+H+XW4=;
 b=Q0uIkT5xu1RjLDNu2Hp+tUGglUmKI9ePW7gi3ka6r4EC7xNTUZ2R8DuUCyQlgKiqmAVx55ke8wsfRLj8IZ7+VjVT+mPyMbHd1wMHMoMSQEujQc/Dn4D7ONYX/DqWbw6jtOFvQ9tOwckts49sSd6pj0DUX9t/OrJz3n5HVUEN+chZUFLi6xn7suKD1LG2RNsS4GZrqTWd4T8IHkL8I+sFc/YdujEuJDn0NLEaFbWBELsUM06vghM3AlGstN4JpxWQVlVhVkMk/KBESdfLzEcpf4gtKLOqp9NvjVtehNMVISGF4j0gqZROX98KLAgHgbi8aWSQBxx9jVsW6VPiBJJ6KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DS4PPF93A1BBECD.namprd11.prod.outlook.com (2603:10b6:f:fc02::3c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.33; Wed, 4 Jun
 2025 14:09:46 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8792.034; Wed, 4 Jun 2025
 14:09:46 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4] ice/ptp: fix crosstimestamp
 reporting
Thread-Index: AQHbyWMmjbNwuz9HR0mjmg5j7XA4brPzIUog
Date: Wed, 4 Jun 2025 14:09:46 +0000
Message-ID: <IA1PR11MB62415BFC751AAFB3F7382FBE8B6CA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250520084216.326210-1-anton.nadezhdin@intel.com>
In-Reply-To: <20250520084216.326210-1-anton.nadezhdin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DS4PPF93A1BBECD:EE_
x-ms-office365-filtering-correlation-id: 29d31b70-6729-4e3b-748c-08dda3717617
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?yQ/GcC8mOQPyJGUAk5pZUDiW+bJxznrr1TQVQY+UNei4lU2IPpaP8oiZYD/6?=
 =?us-ascii?Q?lcwA7GzRlnT7FzFo0dtF9KURYNpH/YWnayRjMQaKFM1CPA/botwz/bRxYFvd?=
 =?us-ascii?Q?nVCFwRcwG9xMd3igrqb+WQJLUHU0BJvDDpCzKFSKuEaiKwjcNh+4oFCVKPsL?=
 =?us-ascii?Q?NYn1mR9pYrs47IGNnrJyUMeoNxd5zuERohic21pEzdpm2xgTHInldf95JFLk?=
 =?us-ascii?Q?2FLSbNs41/aWh3Lj9DTMdtPjCnOuSsLA1jED9sYw8I4fTuiVekc8CLktu2Fl?=
 =?us-ascii?Q?096xs4QSP06bzdK+BvQH6sfmGsDZPpdHnwmTnkZOSDQquYoflrLOwcye3ol8?=
 =?us-ascii?Q?DJ0qpr2aZod+SdSARP98qQjmSYw4Nm8SvFkVP+4zP/3whckOAmETjY24VsvP?=
 =?us-ascii?Q?ZGOt12qfx5qYJ1IO1Xtcexva0L+Fd3OKnU7InVILyJdW5a4pVO7ZW8RcJR1B?=
 =?us-ascii?Q?4O3XRQU6XXuqZLW9T2zu7VZ9+4OtP5Sk8iJaigSck4RmRGrSeSqsJ1VU78BC?=
 =?us-ascii?Q?4BGSKLaxzws+K9m1Cv3+I7jAJcxB+K63my+xJ78T5syvT4YLf4FAqFtzvirD?=
 =?us-ascii?Q?/lQdWhvvR+ErligCftqM7AtBuaCIqRnZe5wVbH7a3E6LGoIjaqWaJvJofrs9?=
 =?us-ascii?Q?QbGKOpEFpRwcgDTsS3ttpeC8gIQzGXP0vEJ9+3RtfXk5/MDA9qADxptmMwo9?=
 =?us-ascii?Q?SqFQLxcFSAKKQUXR0O9tzCS4fVPKVpCqEso8DmKrsgMg2SgdJcqHFxnudERe?=
 =?us-ascii?Q?Mc7B6qNAQvmyIYj396O45ZV0UmfOe4hWwsM/ekm7/zNvqYef69Bd56GrLR9N?=
 =?us-ascii?Q?HyXa5pTnnRIQvCmN2JB5ATZFhkzNZc1czAmJwK+m8GiRJhgKtQ7WXv0YySR1?=
 =?us-ascii?Q?X8tCPIvQBmpKxxII92PhoQVaDF8f9O0hz3ArhTSaTMfE80QbOPETQjcZDytg?=
 =?us-ascii?Q?QsbfPGkzea+33XZ/o9JxMBpkhYNAfKvLbsh8pOq88sQ4TEmJ9nhsfmE2cvw5?=
 =?us-ascii?Q?ymJdg5S6bstRBy1ZSs3BtpWzgYODXOtXdHqAHQA2sN8dZHy1+JJKh8MNES9n?=
 =?us-ascii?Q?Wgxy8VwjD5llDIAL3LnJC8hkij8/c97oPXwu4AUJJyG9inPURhFC9K+DpTDQ?=
 =?us-ascii?Q?r1w4/f39hHk+Duypj08qs+28em0zrmrgxYxARuL7reaN6eDbYASPyO6SxFw2?=
 =?us-ascii?Q?rVmxKXohAVX6s92lTonEoFJEkvo+IxceHCq4zz1gafI1/p5Sth0/i3GTixkX?=
 =?us-ascii?Q?mOy7jBEEYVeJ4wUDa788mRyAtQ6I356+0zEmBF/aWhhzHqTwzVCkQDMiFThP?=
 =?us-ascii?Q?RbRFYpyvEl5asJxPUmLPhyc6rY2FTrPu8KsZuRQv0tyg3M5V/uaSOzvlFidM?=
 =?us-ascii?Q?vYys7h1ZJ3Wd3Ny8rHOXcHQ8QHtEcY8c1QmEF40xMrKKyTGSW81mIFagHHR9?=
 =?us-ascii?Q?7omJPQZ7No48MD6pledRL3GepTiMSiz0W7+aTVDGFJR/67GUMy+vZg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MvZlQJ/ffis8A5fWJuyh0UqL/iVQtV2FlHg98U41zGllW2oKwuo+LicviJai?=
 =?us-ascii?Q?w+KWkq1B7FpOwrBuWKJnhoDsUTOjBWXu6lCdwEPIZ3++km0QsY3NCFa7y5qg?=
 =?us-ascii?Q?7gyNHqb77I8xdcad7G6WfMMvOHdGeowgrBwn/SAnYyzo+7kgtiL1yanrcFYK?=
 =?us-ascii?Q?ScNHFGf6TM89csq+FszltIF/37unfCL13NqP8kGD1yivyIknaqV1UpusqpZa?=
 =?us-ascii?Q?EI/7fVQIq7xjgmy7bKvEm9D6kaJogIPwijhel/uKrS9H62b/nxJWn1OIXAPP?=
 =?us-ascii?Q?GuefU4AwRK9lATGoDyT3fJVyPdRmSQ+H5I4xTq9vLzl+rWC4iCSASGPEMtAn?=
 =?us-ascii?Q?9EWCw3N3b3r9b2q6yyuNDxjDDGApyQQcNGn/wWt/bNCGjmaFk2fVqyGCzlWn?=
 =?us-ascii?Q?rxTF9L/uS1QQ80o70KnZwu4QGzqOW2KVr58/zlnku4sYM48W7M4hlgpKylV/?=
 =?us-ascii?Q?rQbAwRKErjk4pYtHB98sU8WxFQTnEzska6NCQ2Mcf4uIZ1C/CISanp+TqURK?=
 =?us-ascii?Q?KMsjvyXb/Ey+cQdourixdZy+drnS56gSz5bjvS03b92s9kzXchnlaDc6nlsV?=
 =?us-ascii?Q?yQCHYsdMCz4yFmOVtyYQXbeFDUHN77FsWMCZRFREjp01w61bW3tOCupDGdXZ?=
 =?us-ascii?Q?3Pb7ACnSRVljaQh9rWWHdf4SZAdphv/uWifjYnzvzKNLGttAYq1Jdb6yZ5F9?=
 =?us-ascii?Q?0k6IuOF/0MZAutMGvvLkUote9+uTLgKvVuOADlyPuEheml4NrefXZxpRa+vP?=
 =?us-ascii?Q?BqWXWbU6i65tvTOiMdTje/fhd/lwIa2S4iztw9zHrVo0hYSfgsrRy5KjTEE5?=
 =?us-ascii?Q?n+6jqBVhVvts3z1gd+InQeOCciPd9+zsCdfwBkywI7z0uoaQRvmPuRFneQp8?=
 =?us-ascii?Q?9DZJ+vPTcVa7KUtgaP9umV95M0LrVRHmQA1q+rCwdgwROHZie57KEe6zqern?=
 =?us-ascii?Q?GJGvjkjJAZPl4D5rmK6nvTSsH7TbG94jlXaygJruttJCLkc35gaWG6vgZd+o?=
 =?us-ascii?Q?fE4JsPVSgVtYGJRLJ4KSScxEiLdv7SNQwDKz+2fAMuX5xFoGQnHDWXSS2Y4g?=
 =?us-ascii?Q?RyGKDvs2ABTIStDgLZXk9m+tjCL0wLAesXlJzo38+69h57B7mSip68mrk9qm?=
 =?us-ascii?Q?c8fwH63Dw7FjCj27zmbemFdofMUhjigbXuB9OzESp03Jx0TLqEH5uqCTUS7D?=
 =?us-ascii?Q?RuVlzdE/vbaZYck9UiG8W4j7X2edmiAb74F9ewwvAXvtlp/Zs+lc7TXVq/ws?=
 =?us-ascii?Q?fhVvf72SrQ4wuKfFtKiBBIB2mIgAibmKskIBcfUdZeLPMrqSTaBcFl9dKEEk?=
 =?us-ascii?Q?YM835qsXxTFINrHR2D6FZ5Lnh0eDT1cN/5r+K1kDwbGgfZvjUYTkB6IE938N?=
 =?us-ascii?Q?DBKaNdQf4hlwUftaYgfA/aKwYuA9FJHI1undmrRilZrkXSzJpHITHxi9syHr?=
 =?us-ascii?Q?To3neCmNDpEHC2QRD6AM9EiWrtOtRxFlV/pc2/7U1Y54l5F7ahH0YyWF1ZA6?=
 =?us-ascii?Q?qmVdUmS1hvF1KWb0iyB4qo97Gdnx1ecOt3aAhEPxfeCy8StcMgmac2l3NKkT?=
 =?us-ascii?Q?3D4uMQztNruAVSwqT+1NUF818FtBshqlZvr21XOZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29d31b70-6729-4e3b-748c-08dda3717617
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 14:09:46.4024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S6RG3zC0zTYzBeHl4IouwWMgEo+hH+AXlIBYXCw9Cox3KDUIwnLHw9FH9Y9M48Kk5U3dXmzmRDuBzkmUt5b2rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF93A1BBECD
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749046194; x=1780582194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kjHHJTj/NI4P8GiKHsKtIC9IZG9nwXVM8IbxZ0dDBAo=;
 b=lD2eAi4YxXAsrPR6mlPB+TZ9w/iHZBeXsq39FO8zpESp0dxO7RfqRx86
 lg4yzbnYWY5KbcbnCdVWt+cch9EH8rdPJsNDQ4IOV3iLzJX/KDt7UMHTo
 43S0chjUEqr7w1fa/C6Dyvir33OZWRKWCkPpPbUGx5JOu/lDDGzgTZ06A
 K8s8mawQexSDI+bNPqmIUZ6eh8y42+3vdo5kHdi20rdacOJ9LHgef1l36
 CIa8ybXFlHiZTB5GEq+Qmb9k+KrNdz9WgYNTxZTbL5vyNH38HgkATztiF
 N4O+hpseLHzgQAKb7WStgdPGHLf+K7U6HC6cUh1PnXntj0WG7Ux6S0zup
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lD2eAi4Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice/ptp: fix
 crosstimestamp reporting
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
nton Nadezhdin
> Sent: 20 May 2025 14:12
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; richardcochran@gmail.com; Nadezhdin, Anton <anton.nadezhdin@intel.com>; =
Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kubalewski, Arkadiusz=
 <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice/ptp: fix crosstimestamp=
 reporting
>
> Set use_nsecs=3Dtrue as timestamp is reported in ns. Lack of this result =
in smaller timestamp error window which cause error during phc2sys executio=
n on E825 NICs:
> phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument
>
> This problem was introduced in the cited commit which omitted setting use=
_nsecs to true when converting the ice driver to use convert_base_to_cs().
>
> Testing hints (ethX is PF netdev):
> phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m
> phc2sys[1769.256]: CLOCK_REALTIME phc offset -5 s0 freq      -0 delay    =
0
>
> Fixes: d4bea547ebb57 ("ice/ptp: Remove convert_art_to_tsc()")
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> V3 -> V4 Updated commit message
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 1 +
> 1 file changed, 1 insertion(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
