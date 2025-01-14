Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41037A10106
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 07:57:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A46BA409F5;
	Tue, 14 Jan 2025 06:57:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rggk5qp-2HXm; Tue, 14 Jan 2025 06:57:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A5FA409F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736837848;
	bh=iDxnUayBb4+mkl/gal4pgG0wl5gZ0H6J/4DbYe4q2Zo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fqz1QZi3sq81TsylIHubChfNszkdguPAQDmB8f9LL05OlRcm3bOeuTGqKrmWWzbrg
	 VQP5biaVX6l2ihkXxM73MwnrZSALBaComCVU0i7+iqraO/fUECGkoCtbiPRveLX0aH
	 4ZY/jlihThEAFFVXcbZ23dCQccAyrDMgrPlAa7AREhjWZ6dXM4/gsM/40clfnjUfTc
	 aRyR8rq7NGIhwJfnHa2fyDPig1Ml+KPMkkLi2u63agHxpJxYoUFUA945ZuP6teIRcd
	 BqcGWVldBJN2/mdLyJzG5HMUbCosDpP/q+k1kccgWZ4Vu4xhlyGUV37M0i3yB6ip0v
	 VaJzwfw8Xwb9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A5FA409F2;
	Tue, 14 Jan 2025 06:57:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 35AA8B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14E29409F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:57:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id js57wNv9YuZv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 06:57:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BCA294017B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCA294017B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCA294017B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:57:24 +0000 (UTC)
X-CSE-ConnectionGUID: m6YjwFg7TH+v1rClOU8SnA==
X-CSE-MsgGUID: JbswOHJnQ6mUfrWjKkmitw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39931125"
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="39931125"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 22:57:24 -0800
X-CSE-ConnectionGUID: Le7LlGGdTdy2A7HdLw0dnw==
X-CSE-MsgGUID: v8DMJiGLTM62p7DZjZEaLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="109707442"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 22:57:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 22:57:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 22:57:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 22:57:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wfrQs4fZ+V1BOJB4N47TtsBCra1EStwpFOMbRF1dIQxVdBaJvLrC1j0ZjmnkeYk+Et5jf/Xx20eIPjmacg9sBcRw+uj4ol3i2cnskMZolAGNyEEVlxIv/jotJbivw3WI/Cv2QBbbqXzaiwvWBUyjDx9qyT7US3VDxJY2/tL3jesEE21rc8dmUrMm+6lALR5fvQ9mCThm/e1Vl91woaz3uQMxhr+wLzCnYMR2raNQadVlOh2GvhboKoH7gGrgCAn7vEowRBLrFe+po94tiQ/lnFoRaQG6EopD+A/fWPqq8ZG61P0XA7OfxYReII+/qXYISND0HXo/V7WKzYHLlvrclA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iDxnUayBb4+mkl/gal4pgG0wl5gZ0H6J/4DbYe4q2Zo=;
 b=mV+IMU5wVXu5MetlZig+zKnmAbIHhZyLYCu2OZEi1G0Qnm4y4ZovzPZg76uBF6YE4ZUhvHeYNcp5udpSrmuPwhV8O9zGHiWS2KYSKIreKpPTKmEJ939vNU4oQtvfE+BYR51CisrCxbg4KXF8IgrNKfgjtUcbJ2f49ksjEvekggc0fvrnIZTnpfw8HFPyrNLxjNPu5v2vhLYgX0ch6ZBnPjWXsE6d37H4wDUe5aVR1mK3YljbnhHbcxte1ZDicpy8FBMqcMpXDby7b68g6uWsfBorrebUhKKHEdzSiJPvVfDOlCFlT8S+hSgNH4U/s6mV51phRtpuktJ8Brc2SFGAyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 06:57:20 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 06:57:20 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "decot@google.com" <decot@google.com>,
 "willemb@google.com" <willemb@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix transaction
 timeouts on reset
Thread-Index: AQHbUoRTkr1k5c52xE6BKGLPMB3pcbMJqvUAgAxTCgA=
Date: Tue, 14 Jan 2025 06:57:20 +0000
Message-ID: <MW4PR11MB59111C57D3A50EDF32EED382BA182@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241220020932.32545-1-emil.s.tantilov@intel.com>
 <20250106104444.GB4068@kernel.org>
In-Reply-To: <20250106104444.GB4068@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: 56d9478e-9994-4cf9-e351-08dd3468b0b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3c5Zh+f5bF6wQ5dAG1qZtLw3VW76uXqHVxeyIl+ASJKOdP+ndjVGJ734oN45?=
 =?us-ascii?Q?xlzeIOJzZXhWnvqoknvondCFR2qoJro+aHDve1rChmEzBFMEsztv3jrx/0gt?=
 =?us-ascii?Q?MBoNrYTYapcXBf9hM7RcJu8i4KYnp5EIijxmJqb3JTVyTrS9mRr+CbX8NsJG?=
 =?us-ascii?Q?LZx7KSC1MfRZIXhXXtwjJZp9xZyz6zymtIhgL+jCcmuGkfF+hM2MEpFdTFVi?=
 =?us-ascii?Q?ahYQmFtla7KjogMrlCI8JxipKpJyP84DFNkuyulleCT627TS21p3fbgiqzIb?=
 =?us-ascii?Q?LVJrlBsWHIhzFiN7a4DPHBuSTuNI4KARCrOUJwQOFPWmjDm6z6DcaJVcXx0q?=
 =?us-ascii?Q?mABihLKcfChxNTCiz7fYpKKNTjRzXV388g83ey+AgNdM12Dl6+rmix8T6Z7+?=
 =?us-ascii?Q?OmpQ7g4bOZS2LP1xuY8ke7ABh8tsvmcoqG4oYImrA8yaiMIQugc8g4S590DO?=
 =?us-ascii?Q?JW18CdTaPCGX5affaonIuj8WeYt0nsFdZrxOUkVcNiEJN7hpHg9zP3tsCb23?=
 =?us-ascii?Q?x8KDJmtX1J5UUZzOW78FR7cbQGw9E2hg8hgP2Au9G22OMR4SKslLZhMrPhGM?=
 =?us-ascii?Q?/wSfSkvC4zHRIGHDhLEf0wKkAKr4W+8KuTOyTeIqh96046LR337LdnPeWStj?=
 =?us-ascii?Q?DyEPV8hPE5Yodr1BI0i5D5i53f0p6fWClBoJbWEPiYb3m4tcBX9MmQq4mo8a?=
 =?us-ascii?Q?iZYyHYfPNx4WUfNzRyHGMZWSvwuTDegR3S3x0sgHVfcd3gukJKSxXayNW7y3?=
 =?us-ascii?Q?MzTMAJ5guxfjDMJNBLqBeS9VVi8iwtSv1UGAlM8Qvn5rCcm2T5a+HQHDeYZh?=
 =?us-ascii?Q?h50kFlekArpnV4Y5PwWj/EWtjCvnbCNwV5kk2qo8gsDd/NQiv926ra9jQhYk?=
 =?us-ascii?Q?PWkDBizGmSyFiwovWRm28cbuGgZTStRImTQMn0yVAmveVt5vkF8q22Pqm267?=
 =?us-ascii?Q?kvNWIIteRewmm/RgXoU2UBuvdDkSk69Vrs0VH4oteLGyczgJXtmwBHdjTySB?=
 =?us-ascii?Q?91WPLeSvQyPcGsbK0ViMs54KRkoLVB1KyORr6Gtr8sBVLnCVW992TZbFKjLy?=
 =?us-ascii?Q?AzYow0z8901I1XyiTU7IRd3NC96jP3IhIqyDwXDl9E4rKepW6lyhdnrT7F4n?=
 =?us-ascii?Q?2qgU21IWO+xoVm4cFYhK4jL4CGH4bJ82oS5oUtIiM7SBwgg4crBsq5PDvliq?=
 =?us-ascii?Q?0YBcMzcty49EoYx2q9yTZjwGKNRlm2L2rZgZvTNqXCecZaMiQVeKbSsd7+ux?=
 =?us-ascii?Q?6aBohxPgVNKYbAvzbBBVFkicSaJtYmePzh7LZ/Z6AyoUBuhgp61cE7Oy5xdZ?=
 =?us-ascii?Q?bn5q6nam0TkfiSQdyHn5tc2PU1P/EpqV50RcHLetiJeatYnPZKQ6CcH5E0T0?=
 =?us-ascii?Q?KK7fM1yq8ZoY3Kl6DWqMOCHuwKdqZZ6cW7MOGgak0D3AinhKvDlJk11RwWHF?=
 =?us-ascii?Q?wEsAhq4jFwLB72d+rBu5Tk39C1rLE3K1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vAE3HGZ+Fz6nqjI21IvMLzA4nk4sXzGVp/T82P+KN/zmyKuQEuDbyGFvLfGD?=
 =?us-ascii?Q?pa5NcRbDRTEfRoeiI1l+p65AXcPGlDfo9bpQz3R0yqiaD45O9710BGbv/pdH?=
 =?us-ascii?Q?zslIM20IeLtyQpJsUJPaZsiQvkZTlqlqAGwRK1c7wI2F/QKvbyqk596LGaaS?=
 =?us-ascii?Q?1Pj7z0Rn4fH4uXeBMiYHzMoT+ZRH9i1fjbri42SHP7z3Bsv+TI16SL+GuFr8?=
 =?us-ascii?Q?K+vcRa5/vRwXB1b4yAkk17lsQgcDdrCMSBFucFpemr20RMqWZ06hqQNdc1h/?=
 =?us-ascii?Q?sK4UfNlVcDpKrH2OaivxYAkeKZ8+h6Y+1qDVtmr15DhLVGawyQMm5qbiQ11T?=
 =?us-ascii?Q?qwz4arX6NjMhvCnNQZ6sWf6dekM2o67KVR8fhdpdPSTBSfKE6zEpQGTgScG6?=
 =?us-ascii?Q?3bO74HNmEj4WoTTd5tsrAGJ2SU6WB7W43w77/gBFj5sWbqrWHmRHL8lyonxA?=
 =?us-ascii?Q?TEXFo6SsEWbm8v+nGDcBgqmjLKThvJdTNYHi9xGWKINrajF2Om4eY2hAB+Kn?=
 =?us-ascii?Q?3qIK2f531aigekOjXAcui4znewuv97i4vQcZsVOVreF7+Un/wUgaE9KMcKh/?=
 =?us-ascii?Q?b1GxhGUNFHqmnW214V5PaN/n5NgDg3zvWevWwOkhWMRn8tEB5wmCB3wYHm9k?=
 =?us-ascii?Q?0XlsXs/G1lbnL/6YpO1Pmt7hutYruE1+uBR2ggp8kwd4FroaEXuthiE24h+3?=
 =?us-ascii?Q?eHg5qbIw72tGBZIXqvY0JOXW7jHJ6ARAojqEU5D8UVslBOsObfThEIPgKj/7?=
 =?us-ascii?Q?6dhxTe91DZdgAiV2xWgWip5xF3h/W6jec3mtDWtt1ovndDqGWVEZPS936oS7?=
 =?us-ascii?Q?/miB+sEC740HFf/mKhvyKdm37L4MHyEM1USTM/vjq+D6xepEtowM9fCm7l0X?=
 =?us-ascii?Q?rjrq8iMl1+H6HehwZjP1GM0kZZf0SFMvE6l7KuKQTaaaYIv5XFRabGH8N2/9?=
 =?us-ascii?Q?ULjqyjFyUCjLNInLjnyeBsruQUzQsiWv0oNoD/0bFJHe9+n03zBwjOSQuIzR?=
 =?us-ascii?Q?+S7X8yjq2RjQpIYyCsEaI85x8XS0HxNbbK/yXu2G2zDdoOzRB6MAa/Ib9fwE?=
 =?us-ascii?Q?dUCjWQ+JIrCmNOHuicEHNGiXHdCEusS1vBliCq8kyAAbyxcBZrsLOD0+IQ5u?=
 =?us-ascii?Q?6nrO1hp7I0GaqmH20Y6s0PYeZvqYaWsPHo+39Zjw4AQYXEbfFEs+xro3crcP?=
 =?us-ascii?Q?xkyG0MaJhiGcKQFGnNybSh7TF2lar+832ULz3aWYUPeeo3nJ5TkFpFcC3Uc6?=
 =?us-ascii?Q?TCqWuFETETdZ7dBy0JKWfxWMZSpk65yJACRJ7Py4rI5bqHXhfO7cv70MVkBd?=
 =?us-ascii?Q?puggrytUIGPbJt9fLCvYhIw+AT2vi8j8deI3o6h+z55lId0pHknETR6f9Vfj?=
 =?us-ascii?Q?PAGRcjrOXz/G3U0iYViXEL1mgHLk7Cn3LS/R8mZT3Ukb7WT8kb4tcJgJmlPK?=
 =?us-ascii?Q?nGopGMCZCMurYDmxtu/l4MAm5Wf5e5sLNwmde2qHBhLEkOlz8Bxhhb8X5g+O?=
 =?us-ascii?Q?ZZlWFiWOXtlerjNfLLlEKKsMLwEY1pfymt/JtN7B+bss1SDcBWYUVPOOn042?=
 =?us-ascii?Q?p8k8WFmZNdiLrSYx4qg0uVeoiN9Y8bEB5APrxo7d?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56d9478e-9994-4cf9-e351-08dd3468b0b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 06:57:20.2169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ++NHsPVHLifK1uk7SNIJoLiz7YigMNvT0QphA6Kb0PN1TZPmGEitQFf0vpdDN3EBnrpO38yydaZ8d0EGmQ+61t2Dh8ElKk5atqmKSg/m89s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736837845; x=1768373845;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9/Mif+ImDR5B+F6LIbVoFRJXxb1N+br4bUOyqHeibhc=;
 b=JdpP0zcEVpvipaO/lg8qXXtkB971gBbnk4ARBzeU6lyaK7V8BquFRb36
 oJxkjb2XOO+2VR9QrTH75zxvNmCFufps3dvDk57rZ9qvYueCrLuc8/XjW
 NY3HVsq2nDgKtrLdbMq/1g+1iUCe2Fu9m4EVdF0O1dJ9k4znT2ZYS43/h
 dgQVl39oE0hwEP7ivhjPSSrI2HlJYK7CfUeSYtyfSm/f3pjf1+u9MG+pU
 zFRT1GCR2fxRt1FeqmgVOuhDXCImVRmG5cUeS2JUBIn9UsEIPANMV2W7A
 GGTXxGgfKgT6dftGePy/+ZjZ6nxbILdUsAgJXSre5dkvEpvxQB1vh/S09
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JdpP0zcE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix transaction
 timeouts on reset
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
> Simon Horman
> Sent: Monday, January 6, 2025 2:45 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Zaremba, La=
rysa
> <larysa.zaremba@intel.com>; decot@google.com; willemb@google.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix transaction t=
imeouts
> on reset
>=20
> On Thu, Dec 19, 2024 at 06:09:32PM -0800, Emil Tantilov wrote:
> > Restore the call to idpf_vc_xn_shutdown() at the beginning of
> > idpf_vc_core_deinit() provided the function is not called on remove.
> > In the reset path the mailbox is destroyed, leading to all transactions
> > timing out.
> >
> > Fixes: 09d0fb5cb30e ("idpf: deinit virtchnl transaction manager after v=
port
> and vectors")
> > Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> > ---
> > Changelog:
> > v2:
> > - Assigned the current state of REMOVE_IN_PROG flag to a boolean
> >   variable, to be checked instead of reading the flag twice.
> > - Updated the description to clarify the reason for the timeouts on
> >   reset is due to the mailbox being destroyed.
> >
> > v1:
> > https://lore.kernel.org/intel-wired-lan/20241218014417.3786-1-
> emil.s.tantilov@intel.com/
> >
> > Testing hints:
> > echo 1 > /sys/class/net/<netif>/device/reset
>=20
> Thanks for the update,
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>



