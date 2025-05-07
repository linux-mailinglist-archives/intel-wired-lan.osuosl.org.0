Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BE9AAD701
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 May 2025 09:13:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3033760E9E;
	Wed,  7 May 2025 07:13:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h6ft76qFMfbg; Wed,  7 May 2025 07:13:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 595AB60EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746602027;
	bh=MpvSOgOUQka/414AcObT5xhcHURKChQyPSEomIH5hlc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WkFuO3C1qugYsLcUeoWmfCzPljz7PtZbQc0UC3VJHGo1wNSm12QoKzfeFBhHCwnwk
	 s6k3ZTkHPMfPRIca6fofcEN9Z/Bn4YDFfxuG7RypPG9VaU6nxfnSRrVXlABAljpFBU
	 XMsTxsfjhINzNWoh8Xk4yv0KmmwXqKnC1S733cAQaVF4kXYH2HdECZX0XL9SAfNpxL
	 jfOgiAxlbAG5DYQS+eRoySak7VhMh9ZYHanVw9iLbqp6d1uFSl8TfwLQCIt7DYyTnA
	 rYD5fof5eIDqjb8+K1YfiJWcCkGeeiKjs/c8hM7gAe7PFv9pd+6aalMaUg7bMGL9Jn
	 ogXpzW4IZ6MGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 595AB60EE4;
	Wed,  7 May 2025 07:13:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7355950
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 07:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD31080C8E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 07:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zlroXmxlSTSc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 May 2025 07:13:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE9DA80C04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE9DA80C04
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE9DA80C04
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 07:13:44 +0000 (UTC)
X-CSE-ConnectionGUID: MZ9WVnTcQkaGGHyqK75/wQ==
X-CSE-MsgGUID: /+yzwiJaQEWgz2LsRagZZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="50961772"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="50961772"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 00:13:43 -0700
X-CSE-ConnectionGUID: mFJ4RLy2Tai7oJoqmXgDJg==
X-CSE-MsgGUID: 2eKns+/xT8+tgSS/Yc13wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="140703467"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 00:13:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 00:13:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 00:13:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 00:13:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VSx+DcjkTlFsVgNpqkGeanhRlQbvTbClaV3VU6os50p2Oq7NfvieKbu1HgDtUwdTmG+B6zB747+KonKN1mkaKcKwk62YWLJTDjopQp2UF5yY1wANf653bZZsXmFEeQ99Cre4tYh7kosAIeqPKxubrzQgGRSxueOVJnIvgSRiedaL+q/wkoiAyucIfTKAZ/At07E2nzj5WbEwTGTeDmK0YMSbkmH/6eYr828zhavJYK4IVprUAiNFzLNprngduQSxlYPcDoVMe77WKvF4IQbAcSg9/v4SB1MSy5X9TEkVZ73soQhRggvqpJkkfj7TvhJfQtvpqUUC3OyW9mNdDCYz2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MpvSOgOUQka/414AcObT5xhcHURKChQyPSEomIH5hlc=;
 b=DYu4qM/L2sjqUwNUqWcBfMvvsrHNQyib8ypBUPnRIo0wE6dMlf1Olueo71EiRlpex7kf3MQngAaQvUmv7KsH/ryfnbhtxxRvd/L13MELr9SS4R51BQJOiS/l+D9fXsLimcpH2bx8LEH/rhOtQWV+Fml1LSuiQOhrhzoqsA7PcWwIfSQhprw8tAv/s+tXLgaCYBp26C4USy6SqEtuz2TEm+mKJU6uv8kUXTJXDneXAmQux+Rq5OZyNJuXYmz6kZZUc7qWSxJMQHV+YlFkCNMMgPIz+4SjLyoBLhbYgzjqcAFcIbJ8wPOn86APLPOooeFqDx7ZRnrpBykgrD9Rz8sBkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by DM6PR11MB4529.namprd11.prod.outlook.com (2603:10b6:5:2ae::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.20; Wed, 7 May
 2025 07:13:40 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8722.020; Wed, 7 May 2025
 07:13:39 +0000
Date: Wed, 7 May 2025 09:13:27 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: Jacob Keller <jacob.e.keller@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jonathan
 Corbet" <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Jiri Pirko" <jiri@resnulli.us>, Tatyana Nikolova
 <tatyana.e.nikolova@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, Michael Ellerman
 <mpe@ellerman.id.au>, "Maciej Fijalkowski" <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <aBsIF-HTPhYyiffc@soc-5CG4396X81.clients.intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-2-larysa.zaremba@intel.com>
 <20250428161542.GD3339421@horms.kernel.org>
 <10fd9a4b-f071-47eb-bdde-13438218aee9@intel.com>
 <20250430085545.GT3339421@horms.kernel.org>
 <aBhvNfWP-Rmec3Ci@soc-5CG4396X81.clients.intel.com>
 <20250506155958.GT3339421@horms.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250506155958.GT3339421@horms.kernel.org>
X-ClientProxiedBy: VI1PR03CA0047.eurprd03.prod.outlook.com
 (2603:10a6:803:50::18) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|DM6PR11MB4529:EE_
X-MS-Office365-Filtering-Correlation-Id: 4703da3d-c401-4c9e-9d7c-08dd8d36b114
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|10070799003|366016; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?X9G7s+FiOm6Q/9RKXlJ8c/N4AToo8depOtJiaXq8OwzNdc33QoUl+3spOkPR?=
 =?us-ascii?Q?5jHeFQ2nRxqN/kvN1yeaSODbeUvKhAXiieC50IQqq7uY+3KVYqm9iidZ8InU?=
 =?us-ascii?Q?ttkLmWdVWRYNLuCiTmiA7R769M7KP8NE0JCjdERaNFgm/DBjmzNV3PgWu79u?=
 =?us-ascii?Q?/2wGHCBEk9sxdbkGYLNnJJuGhlUM2l2XDal1+w2W4lpWmJeyp1BYvHdsa9NN?=
 =?us-ascii?Q?8EiSs5QsMDuSG88ZvHZdFpSTn0QIp8AzATIDm7zuh3zep7m4Zb8+KZN1NVGD?=
 =?us-ascii?Q?m2H8NNDmoaoq1RAh+tbyfb7fAgcfhfyv3GayxiW3+jMtWI5N685qDf0xtdK0?=
 =?us-ascii?Q?SsNVQIBgGJ0TyGY1Mzh9e4VwNOE22bkUzWCWf5GtVCTUY+WkhjfCaH7L7ixl?=
 =?us-ascii?Q?3GNcrlX+D3EuxmvOtwfVbGY2gvfqIG3CKXyTdhezSDpSO6Z4u+4HdZox2/A9?=
 =?us-ascii?Q?5T5YGps6qzORWxEOXDsGdYXLnB4tPpUJQA3IWkYrPwqQYiFikamaLbgqiXuX?=
 =?us-ascii?Q?DrZbf58umegtFzebYsfY58QkyhdrKqOl7iwClL9nnt0eMD1qNvsUDrHutSrL?=
 =?us-ascii?Q?uZUwEbO2utOeNcSNB5FpsLjvelLdua8HPaMOaiTD2aMbV3cStzid6b5ce8pr?=
 =?us-ascii?Q?FrUYDgEzmXd0ap/tJ0WdiOZZ4SeTaZqcXAflfANbcEA6h0vZQqoPt8xpL+9x?=
 =?us-ascii?Q?Bu171OQqJgHs6/FywByd7cUm/usi1Vl0rJwV8V1tP2Hb34LN4OoSsF0o8+J2?=
 =?us-ascii?Q?F05zYjZfyULBuFsNZHP3kQdAiBgxtFZI6BLLLPpUxjsduguRVOsbXyn1yPMK?=
 =?us-ascii?Q?7YjXJpQb29HFOeAkuOFYKf9iYcecn/bAZInuehCMyGneQCE79XX3b25OTDWe?=
 =?us-ascii?Q?z5ZPVhb8zhGu8xjqFu1i4UcfcABb6mYR5diVm4Qal57VVVYnxDDoqDlHwgku?=
 =?us-ascii?Q?YB3k5niK7kU1k2yC+XrSQwqiXx7/+I/ysXN200jPxl4QkSVHBNVDoUpQM/Wm?=
 =?us-ascii?Q?1D/132gKQPugVPk0zo51emBrb8whekSpEHywZAjIV2Z4G9vacg7kGsu6Dt77?=
 =?us-ascii?Q?4rwHLcvxt4sRVRDyqZ+OHFn/vq8yk8IP0wbKkR5VAurt/PIahwAaOD+7B+D5?=
 =?us-ascii?Q?KLYdD9we8lWSwMOEkjk0GWg+Xhd6YwPPJGhuZ6hNcX9tqjrvmvXBxSotBXWz?=
 =?us-ascii?Q?8DjHzmZXGvUZpqdH8xXQFF4xvdIvE51f/698RtAIo/8+P76Gzsg85NQdx2sk?=
 =?us-ascii?Q?tbpae3Udt2OyWnVVGV6OTPPKCu7K4zx1fz2e57fSgH9TEDHvYJAueKZ92N+5?=
 =?us-ascii?Q?IHSykGKjop9KvS3Q8pWlT+UQK6/p+6bXizalYXRgxPYR3fIb+eEKZXoofw9z?=
 =?us-ascii?Q?K2Mgo/tQXDA2ODF1gIYZjxIhxb/PEt90uMLP8r86Xs+87WQfE5cPLLjMVPb8?=
 =?us-ascii?Q?71kEyloT2+A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(10070799003)(366016); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GebAyOgGYEMln5gJzq51mUHbpT0xJZyY51bmxF8U5z9LKt8xnIMHki3IR04/?=
 =?us-ascii?Q?wq52Yg56jUNQbMoP/cMYEL/gQixXVsKEUF6NACxnMZEZERim+6+cvSnh7jJ3?=
 =?us-ascii?Q?lO9OAFHeUxZB+xWQmatKKk4eR/kuO+oVfU4DObzIenk/DTi3jkYPpkOBUY7r?=
 =?us-ascii?Q?IX/+HnZmr33gcNpY910rzPboawvYtnU83P0wqDqxM/pHHyaUYBbD0GewohqN?=
 =?us-ascii?Q?TJR4+uryf9pcPORA4cbB37GMUUw2D5pXS98YRDO5wUhwoDmWSOZkAc0M1r1X?=
 =?us-ascii?Q?VrDEHUmfll3gwk97UNT6MvhmFwfUtq4TisaKoEBx6hmicMP2Midf28Tj9bqJ?=
 =?us-ascii?Q?gg23uMxaOQoHXAu3flqDruBTJOAc3c016Ou4Tn1Yk8kvE5WFneoMJz0PrzBB?=
 =?us-ascii?Q?6/YTHwTK+M2t1NRjhri+MXLNhi4XVsoEA/Aa29iqoff8rTynbGm33Ry2W1+M?=
 =?us-ascii?Q?b60CalPE3pWB4RVjliyOoGZaX+kBwMWoaH7H1lvFkntYi1zGKUoJ9rbE8lJT?=
 =?us-ascii?Q?3Ht/l+CAAYjllttlG3S1NRQibsoqf09VH5BnUR4TCyjBaSspLEQ9FeqPzx0G?=
 =?us-ascii?Q?CL2ud2incLozh8FgU76sVXoNvFCe5OgkV31KStvzyetu6A4kMVYQwHulaDsm?=
 =?us-ascii?Q?bp/IPsGEUGNV1k7wg/0+iblV7v0qw1MkOzgD8i3X+MTh3o6596zmDD233pJK?=
 =?us-ascii?Q?RWiOW8samLRl1rVvwMdbEtEZ4Y/CsxNX8utp7FbSF5CFNGBaNrdcviLAE5wO?=
 =?us-ascii?Q?14zXLEzPWuaXI0mS6eowiIsUmXpQTc557IQYwOdtFKZ9Nk9Xi/LXP2hPjQGK?=
 =?us-ascii?Q?Qx/byVHuvOepmifdbtaMqS0vEhCK+Pgc0bKg4KwJTPnDawHGeWOxMJgKkI81?=
 =?us-ascii?Q?RfzCh8IdOy7Gx/PTHzV0Eu/q3/k7FolGltsIMAVK0sTrXdOc/E/14BPl8/DV?=
 =?us-ascii?Q?CbOFl+CdOYTUlnGu36FqzUrwj5ZEdm3rqnUE5HtFytAOyhgFEo6ZZ+UIZNrE?=
 =?us-ascii?Q?BxYHHkmWjtIL9kQOlcmFQyLrJ5uijyfgzdukrtHgg96JZd5RDCEXPYhP8Sjr?=
 =?us-ascii?Q?svkDWyppTBC/fID8VM0WaQ0Jj4OWnOhfWkJ30gRnJZQziZzqHWi+fc1ETGzm?=
 =?us-ascii?Q?ecAxqvL1gjif1uv8eTYLEL2LyaRFw0ue2JTBZ8doF8kKhBySLDuucbtieAB4?=
 =?us-ascii?Q?1E6e5P+q55LfKAUVXrQ6ttRB1jKtWuDB94ilBzbaTYlbuWz9TG4aglz7lJ3Q?=
 =?us-ascii?Q?ws2Q34kJ9hib3dWdfTECVQPJrI5q79eT6JFrzJfICMmbTFagaFl5YDOYHApc?=
 =?us-ascii?Q?XJ1R5peun6HkhEG36VbT8qCxtc67C5/Vo17AChCih6/4dSeTirjnCDXWttxX?=
 =?us-ascii?Q?v6k+VK+CZKTeFCPKuqUQIZyUMfxAKpLTOoorvUrwF7vntvNjLLVg+ZX5VNgj?=
 =?us-ascii?Q?oJ/feKgdKKmXB71hUQpONDtOY8AlUxz8C0FjQjDYQZ0SByGbt29H5MaDPfaa?=
 =?us-ascii?Q?ZLUpTAsalN2J2lP3cMVtUZxmcBafUqZv3HlNwNkpqVHe8QZSvd2Z3dvbWHLy?=
 =?us-ascii?Q?PNUcVZlzfBPSyzu+C2/W3S3Ujs0qT5qd8o1iEAUAGxukuKgQ1awd2JMlzOCo?=
 =?us-ascii?Q?N3NR6pQxp5eIz+IFW9Qv+FK+Jf53vOh7zwSdVuEPBGIaHUAUt1NfTAW6uHVK?=
 =?us-ascii?Q?rHNEXQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4703da3d-c401-4c9e-9d7c-08dd8d36b114
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 07:13:39.7933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t8ovoWJUGHxBuGwBtkZFx6P0gNGd93N/1JqAGnHOOa+qfpRcn2bPqiDA9bvdHtJjbpJgXMU4C17vd+2S1Ei6KDzf9xjoxOBKOGpkK2K9+Mo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4529
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746602025; x=1778138025;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lP886RMx4oc7Stb3iV/RZZW+bJNbiURbmQI9xHNBAp8=;
 b=J3IsXL8NbIP41GmhhqR6LP2HAtU10PjyulsG/zwOgStzvOpYzSrYh7u1
 dORoH/peAWENnbG8dSsZOwTwcooicXLWOuO1DLDowlU15xcN4BU3hO4El
 9D+jAOkWI+Vl8R2jAwXHNXEzOAn1k6Adg08lHYTD5r3A1VRFS0BRlwhhE
 P5dEvA/hi1pXUV+bS51PY9nc4+7dvdnagy/il4COfX5jkv8loPkpx2DxP
 C2GE7q79OpT0Wq/vYCg8qkWpNXvawRVerTnHgplID2hUCV6R4CAgnyRj2
 PZVN3rQlN0iF9fUyIagy8erDhsixS8KMkmajRQbXkYHx0QxqSdCIINmN6
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J3IsXL8N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
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

On Tue, May 06, 2025 at 04:59:58PM +0100, Simon Horman wrote:
> On Mon, May 05, 2025 at 09:56:37AM +0200, Larysa Zaremba wrote:
> > On Wed, Apr 30, 2025 at 09:55:45AM +0100, Simon Horman wrote:
> > > On Tue, Apr 29, 2025 at 11:47:58AM -0700, Jacob Keller wrote:
> > > > On 4/28/2025 9:15 AM, Simon Horman wrote:
> > > > > On Thu, Apr 24, 2025 at 01:32:24PM +0200, Larysa Zaremba wrote:
> 
> ...
> 
> > > > >> diff --git a/MAINTAINERS b/MAINTAINERS
> > > > >> index 657a67f9031e..2e2a57dfea8f 100644
> > > > >> --- a/MAINTAINERS
> > > > >> +++ b/MAINTAINERS
> > > > >> @@ -11884,8 +11884,8 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
> > > > >>  F:	Documentation/networking/device_drivers/ethernet/intel/
> > > > >>  F:	drivers/net/ethernet/intel/
> > > > >>  F:	drivers/net/ethernet/intel/*/
> > > > >> -F:	include/linux/avf/virtchnl.h
> > > > >> -F:	include/linux/net/intel/iidc.h
> > > > >> +F:	include/linux/intel/iidc.h
> > > > >> +F:	include/linux/intel/virtchnl.h
> > > > > 
> > > > > I'm not sure that I understand the motivation for moving files out of
> > > > > include/linux/net, but I guess the answer is that my suggestion, which
> > > > > would be to move files into include/linux/net, is somehow less good.
> > > > > 
> > > > > But if file are moving out of include/linux/net then I think it would
> > > > > make sense to make a corresponding update to NETWORKING DRIVERS.
> > > > > 
> > > > > Also, include/linux/intel, does feel a bit too general. These files
> > > > > seem to relate to NICs (of some sort of flavour or another). But Intel
> > > > > does a lot more than make NICs.
> > > > > 
> > > > 
> > > > 'include/linux/net/intel' seems fine to me. I agree with moving
> > > > virtchnl.h there since it is quite clear that any historical ambitions
> > > > about AVF being vendor agnostic are long dead, so having it in its own
> > > > 'non-intel' folder is silly.
> > > > 
> > > > Strictly speaking, I think the goal of moving the files is due to the
> > > > fact that a lot of the core ixd code is not really network layer but
> > > > instead PCI layer.
> > > 
> > > Sure. I was more thinking out loud in my previous email than requesting any
> > > action. Thanks for filling in my understanding of the situation.
> > >
> > 
> > Olek suggested this because intel was the only resident in include/linux/net and 
> > include/linux/intel was vacant.
> >  
> > > But could we please consider updating NETWORKING DRIVERS so
> > > that get_maintainers.pl can help people to CC netdev and it's maintainers
> > > as appropriate?
> > 
> > I am not sure what kind of update do you mean, include/linux/net directory was 
> 
> Thanks I missed that.
> 
> > not under any maintainer. include/linux/mlx5 and include/linux/mlx4 are only 
> > under vendor maintainers.
> > 
> > For sure I should add include/linux/intel/* under Tony.
> > Do you think it also should be added to general networking maintainers?
> 
> I think it would make sense to add it to general networking, or at least
> those files that would tend to be updated via netdev. But at least let's
> put the directory under Tony so it's maintained by somebody.

Thanks for the clarification!
