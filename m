Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD0EC62B6F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 08:29:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7060E820B8;
	Mon, 17 Nov 2025 07:28:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v4AG5bgQV11p; Mon, 17 Nov 2025 07:28:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80436820E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763364537;
	bh=VfAaBU67QfS5wXUSxMfCDmCuIpOXyNORdJ7B9AWruk8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ocTlCoWXh3k3j69ygHABLrjRsvEFQgxX5xJjoEx/pJ8EKGu5n3PyMOpEl1hqPVfPY
	 ygAx4af7A4vUXqsUzQcUUg0urWhg5OVdwn3FV6VahvhJ+bieiiipYpHLrZCwZYkmaP
	 w3DmNKzHWwzab83zCx9n+soLEQU33+1OBZcxdw6tqsKVpFUo9LQRkNUbqhYgIZZfsr
	 DUgMxKr7pEkl+bRTsvMYX/AJKuPuYwY4HxwzaZwolE/UNkME4CJRdnOx04Sx92Innm
	 KO3DgAmJjFwR0heIt76txfWB+QnpRatcon6lKEn8UMvUwT8kG2wk8awgH58/SgQtTj
	 8KY9nMCVdVmww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80436820E2;
	Mon, 17 Nov 2025 07:28:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 81075D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 725BE4082B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:28:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fT8lv2kUMk2m for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 07:28:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6209C40820
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6209C40820
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6209C40820
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:28:55 +0000 (UTC)
X-CSE-ConnectionGUID: bGZvR2/KTaWBWugmygMipw==
X-CSE-MsgGUID: EP5SRn2SRNGPGCvZniKJ2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65238252"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65238252"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:28:54 -0800
X-CSE-ConnectionGUID: 6GgfGMtYRZO8dTV20lKWfQ==
X-CSE-MsgGUID: sIo+kG1XRButncXwCygmvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="194482814"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:28:54 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 23:28:53 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 16 Nov 2025 23:28:53 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 23:28:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AM+flw0Yyl39hu2XI+fpbZKxOtmSW+ybvYyN+AtC8f7JUlGBXruLROWHQApGNnHWXb0bjs3vdSnOapyqlSH6/2dvdbAnxgzHaAZe55amakoz6WIIfwHDh4LoJhl0AEFXfcH0Pc2AmQ3IdlumS3gb4atnY0vfv235e9l7deDoMhqUw1mKSubqpIK1e2vBRmANv9nGTmKxHMn5OQhUUed6s6kh0WXH0F0wJ9VdWJFvypqxZQGYni8gwbXKmL3EyyQo6CqQiWRQgj5dwrhC1PXuWRbyof20WtksnW+K+gdsg98BI9twocVvZWmRySDQndn3KQeCjohd1Tw3P3qwCNu9mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VfAaBU67QfS5wXUSxMfCDmCuIpOXyNORdJ7B9AWruk8=;
 b=pS9rA1K4V+y4MouBxV+MjNTHDftfjpe3HuY1ytgrVnvwJYaAEmpZDLhF1/luccbLn9Q1U68J2m5x+WB9vp3Lbn8fN1A2M+s3jsW59BNGpT+x+s2UQxLqUb8tmbyaje30f+tW8HgVOJ1XEQB4kvkr6lBkEtLf/4Q9QfKenk1Cb0Olygn2ngDtIGf7YksMNdydfOZOQq8cohnXTl2dhPQVgaxoYmV0o3/g9mcV7B+4biWB7W/gyhFRRdkSYOrnPaj02i1hKSClocn053W8hdEur78EIw23xrhfrN+ILyt8m6WNNBBVuYhgFPnWQjsAB42PZqc1/VWkl6+1j4uomzAKQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB8066.namprd11.prod.outlook.com (2603:10b6:806:2df::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Mon, 17 Nov
 2025 07:28:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 07:28:49 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device
 unplugging when rdma is not supported by vport
Thread-Index: AQHcV5B1J8SwrZYIi0Wu9YEyj/umwLT2eFTA
Date: Mon, 17 Nov 2025 07:28:49 +0000
Message-ID: <IA3PR11MB89864F00A4C112B6FC38BCCEE5C9A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251117070350.34152-1-larysa.zaremba@intel.com>
In-Reply-To: <20251117070350.34152-1-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB8066:EE_
x-ms-office365-filtering-correlation-id: 7da9739d-d987-480a-ed47-08de25aaf36d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?LgUNRl552NMBjgeRVS66spmL3PxPWQnsGbNvUwWTDqHEXv0VgO/oEfZroQH7?=
 =?us-ascii?Q?w11/apLBIO4de7LOLSE1HXat1SpUKkhoR71Cx4Vv0qq6+cFo+rW639wclMSi?=
 =?us-ascii?Q?A4ohaSgwcJG6sEqRsXGr2uZiSGXD2221XsdJg14Izt3fY7Q1MhXvKTxuSLmH?=
 =?us-ascii?Q?bv7Mgt/gW9bS4Thi3lxVu/EkaqTtCBrIzoHXeGlQEYZKyOHnorhzIL0DGIs9?=
 =?us-ascii?Q?IlA50xNJYQv7aSZKMcggS1luv1hO/UVJNoMjT2qE/pkEwDitqJ7bxoaeH0/n?=
 =?us-ascii?Q?TMPe5AGoHWx1Sj97eoeBn7I1bQwiPZ/txtmedpfH/USc5l2EvvZUaTeZ8t29?=
 =?us-ascii?Q?BoIihi79LzwPH03keaHep0hFZotfMIObOvvM9whkCpZUFdU6X0ojx5ZVK0kG?=
 =?us-ascii?Q?7m+IGUvK93z08ng6Lpx10YtWXjOqQtWitOrGqy1lfH5YpNnKLWh8isX8eV9P?=
 =?us-ascii?Q?s5c4AJtk6VNg2ABDp5TDxCemCaPWEkzrvvL3U3tU3Si9cNN3s0b5hCUfPirX?=
 =?us-ascii?Q?AQATJw/WyqRrnhwes3OeBDa0QpVwoC+8slWG/wky5gXjrB7wkPt5BdxZQh7/?=
 =?us-ascii?Q?Ryai0wIB4PitTTrtxkOmbADkrNAX0OpxakBRGug5PVFqx/MY4OvCiqj9DXdn?=
 =?us-ascii?Q?as7Gh4VY/yNxqMsnY8yB0A4H9rhwVXh+mcA8ITPzEOn4/zA6c+9fFkkbtHhn?=
 =?us-ascii?Q?D2C89aiUS9LIW5/QkZ5YLCgGNMlLnZ5MtEgJUD/uQfknhbCf1Ew8PSNgCfg+?=
 =?us-ascii?Q?r2BLpU4Q/INcQYY7zZB6akglelVK9OVWUnvDr/YAn2jsPjNG1uq0X3UBtKk+?=
 =?us-ascii?Q?rcifE/GbSfTCYrRJ3m2lgKx2YZIclS7l1aRaCoEcHKqSGh1iv6gXFU0RSyrX?=
 =?us-ascii?Q?zEzImxH6756fsqYIWHTl5K/he2t1HrppH9xqpUf5HtYTjvqdIrgh3J80L7kb?=
 =?us-ascii?Q?BlkGRs+S4bEsjQb6cI9BrGEmSanY3uKVlbvXTWaqY8mqKzWv3f8KctLlMdj2?=
 =?us-ascii?Q?1AT5XeFuaaI2ux4vj8q5gdQkL8qjlHidvmq9SzO8raxmt1AMPP7coY7QJ6nt?=
 =?us-ascii?Q?Ab538OsOcSXn+9dWtBPKIMeZ1dNs5NtP6jXX1zPDPY1IPlCbMdA/ZGx7tvNM?=
 =?us-ascii?Q?bzF/3Ge2ZvpaWrMqmT5zzuggmJIqKOTDcqDUzcHSHSC92bD/dXqYGqj0gHIV?=
 =?us-ascii?Q?XRsSgdLlsAD8X4MRZUr9XzIyZQW+3bAkDgc7vqLFkSZf6QYTev3J0+fRLwQp?=
 =?us-ascii?Q?nMP2U+ScDk7vwcbdOpkp41dUKfZeO5NN1gFHPYFPI/6MEW8Xs+3NA5BksrGE?=
 =?us-ascii?Q?jXrEHnqi/WNCuEqXhNqfz9ypLP64z+zUS2f6jW5NxdjkOY0ubNvmkeSTgJXn?=
 =?us-ascii?Q?eUy09HJk1hpX5D8tRhYCHrdWeDXsiuing8l2d/GuV1MsOSD2d+yKymFJ5IHO?=
 =?us-ascii?Q?Qs380JDP6mLtBfz5GDVgzdQ6sdWwSOQ1NoUvuJPm7wMdBIrzRk+RMMh1xrtb?=
 =?us-ascii?Q?OZhXRWfAXPKBPDEBuDVg28P9oGAq6wVpoTaI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/Phy+hbnlHhA80MIMS5WJXX7hFkeHAGxAZm5hh10TDN9DUDFJlE7Kc8VpOlv?=
 =?us-ascii?Q?Sd+ncG+cRP3mlmW3wcOTIc6kp9A3nbjuDQY2E3Yy53sDSu3wqjxLMznW5EgW?=
 =?us-ascii?Q?GLeXmD7noRDNPoejKauSUM8XMKFKDtfNuca1LOdfc9gva5oa3QvXvIV/9Tdb?=
 =?us-ascii?Q?rMTIZ5M3JBCzOXL7n9JOJUIQxlMLe3UeYP2xm/5DfaLKfVwkjPh//5HPAdk3?=
 =?us-ascii?Q?UoBG4+gD3SQjAGnA0YeFIC8n2QCxjzRKYMEJPruRd8X30C2okHTkU99wERFR?=
 =?us-ascii?Q?m1ntU5+ur28ZFkcnMu05NrnSQFCIq9Qv+IVuA7qJM+Po4lkEABgoluAy++8M?=
 =?us-ascii?Q?JmRrSwf9XkC/UldjLEaoVd9Iw1oAX68vc0KHTCCJmq6o479DeN2IkHSJBz1s?=
 =?us-ascii?Q?hGDYItHrtjNSr4QI9YPLjTAM2gYtuvNYXjdn6NP+rVjnZvHZDZfvfPjlnZKR?=
 =?us-ascii?Q?y1DicoR4QJhlmJo2P4EBkDjUHfrBAZlDrOOe6LCbgCJ30XP35IkcdjEtJTe8?=
 =?us-ascii?Q?ReO1C+bzwHEJlt/4yYh+Y4imtl7PEm6ttH3juZzTfUeMPEQ0djWQsXBLRYqB?=
 =?us-ascii?Q?joBG1kmzRYaHFp1KFnntEY59tzEobTGit0oSmuphTE551/jJRdsuMbI2QGPb?=
 =?us-ascii?Q?5cgmKTZGJO3TS5RsxK7hLLSBYGXMe1nx7wpaV+Ac2LryHwqWMlFVLVtD6FHe?=
 =?us-ascii?Q?vt/ouiAfw12f26vPmRlZwJyMu++8NR1mz8pwb8dyw6OFdLNJbnE3r6MfhyV1?=
 =?us-ascii?Q?/Xg/awC2xjA65XJ3JVlKF0CUUMYyC+/AXZ9HEoLG8H7FBxnOfuHKjrJ235Js?=
 =?us-ascii?Q?AtohcCd2+Lumc5Hr6mHIpX/eqlOEn0B7cii6QSs9DLuyAmdjrytww1ZqRgaP?=
 =?us-ascii?Q?xOlPeKKIs3SP4FTCyLHnPw58Wp/SFz0eujGWWvE9dX+Uk+5QlNNmGNc3GuAh?=
 =?us-ascii?Q?Nu+aewY+aM48dG6bEJzFDapo7IhRLU6LECnMShUb83my1xCW2VJihqIou0NT?=
 =?us-ascii?Q?rQHa9JT8UpktgSTzd1lOoKSe6wtZuO2DUknZOJ49dUMHWdxmEgZKPmAMDwu9?=
 =?us-ascii?Q?wZhy1lu5ee5d9Tkn/wloss0fQlHwOcaZzYHfZ1jPS4Q7FuKCp18J1BqvfM81?=
 =?us-ascii?Q?sxytYRQXlAJFc9TEnhEY4ztOxbviD9Z8HsnctI+/eBkmKzGwLwBg8Z1hftqj?=
 =?us-ascii?Q?1uNytQYJLJ0gV4hIrkBuuY/n26QhG+t9DJuoyxpYIN02lN7l6bB5hwUTJDg9?=
 =?us-ascii?Q?L3bUbJ+FnBA+58e4SHhl2h7/ewUNk2gITsR6lVD5JOzz/wI2z8xrvOKfReQ7?=
 =?us-ascii?Q?D1R4MAyzUpP/WHyOf3FHUKeGD7quUJ5NcHw64SGDL4Yc7pZ4y9rfbISs9JwH?=
 =?us-ascii?Q?DmpozflAVogpfCrcGSkFG2MUTVAG1PVDW8h6lh4pw/FlYAJvuEB1k1O4A5Uz?=
 =?us-ascii?Q?utrS304Z7s+lexsSGBIvAbKp/9WGvef34q+mRVofCHyHrj8GkefF2hJ/zxqk?=
 =?us-ascii?Q?s0cLSlnGBinP0wgKu6Lxy4cLZpawde5zy+fXJs0xpZjR8LmGOGhTLLuxXnPx?=
 =?us-ascii?Q?yCdXH5o1aZS9Cpo/e/tsIIwSQCvbAcTQiAOO3YCCq74szfACwzjpAUxlnZCD?=
 =?us-ascii?Q?+Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7da9739d-d987-480a-ed47-08de25aaf36d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 07:28:49.1514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zRaZ7crHsr8tir+9e4rdZYrrko2J7bqgbkhptiKtAsYKv2pNN4SyB2GSqkZIZduKZBLdyDHp9EbnYZKB8AiRb8Dz/uH2zO7IlF/kJXYX0QE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8066
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763364535; x=1794900535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nu/5qs4RiOhVqeRYlVBB0WYB26yaClhOZIQanphuuwE=;
 b=MgtbuY1c3617XUQHgn85Mo5vxcJKPt+mMJ60pLfCOB4Hm0Y2NXY0oMGe
 DiVInzR3U0ypcq8J+JE5SQqWthSjuBnnORM1isl/F2WeIU7EehbmUFK8D
 VCpkm/ti9IBzAE257zXt5Hs70i6KbNCQHEJkh27IYe6StJSuKyDKLh1dW
 N1thr9LmJdwzFCQDlNr5dyyVFL1XmCby958T/ds1sh96AocwIFG87on6T
 xMM+zBeef911npXc2L9z66a2NIWrXeu8J2Y4KBMqqE03HoZarTsOY87PR
 dj82hUWW6o9zGF0sz8tAzvq3svZniK0oKWNlQZRsHZSYiADF+7SIz4xXZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MgtbuY1c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device
 unplugging when rdma is not supported by vport
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, November 17, 2025 8:04 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Tantilov, Emil S <emil.s.tantilov@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device
> unplugging when rdma is not supported by vport
>=20
> If vport flags do not contain VIRTCHNL2_VPORT_ENABLE_RDMA, driver does
> not allocate vdev_info for this vport. This leads to kernel NULL
> pointer dereference in idpf_idc_vport_dev_down(), which references
> vdev_info for every vport regardless.
>=20
> Check, if vdev_info was ever allocated before unplugging aux device.
>=20
> Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create,
> init, and destroy")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_idc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index c1b963f6bfad..4b1037eb2623 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -322,7 +322,7 @@ static void idpf_idc_vport_dev_down(struct
> idpf_adapter *adapter)
>  	for (i =3D 0; i < adapter->num_alloc_vports; i++) {
>  		struct idpf_vport *vport =3D adapter->vports[i];
>=20
> -		if (!vport)
> +		if (!vport || !vport->vdev_info)
>  			continue;
>=20
>  		idpf_unplug_aux_dev(vport->vdev_info->adev);
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

