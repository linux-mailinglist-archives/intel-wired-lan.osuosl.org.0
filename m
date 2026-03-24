Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEo/Ad1CwmmCagQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:53:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8A3304319
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:53:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA4C18266D;
	Tue, 24 Mar 2026 07:52:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-pUtZ0s91bo; Tue, 24 Mar 2026 07:52:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E664826B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774338777;
	bh=ezxj5j75A48KyufHDiWllZssJ4jsiIqwht/eo6tlW3U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D1AXvin1BeNH6kuRSHkO7f28PpqbcebKcYmFy1BVz4jbwl8g7kRIFkYrRE3j0WZyy
	 7SfcjKIrQIFWVNl8Y9EAkHY0hloVh5FwRf2Q1MtVScXtNONVMYOLclZ9Z67fyZSP2T
	 zMWy6YhNdbOCx9PjAgd5NKnmcgonAR5Zo5bFkfNARMT5XoPoib4588lZr9WcQIz2Cr
	 cSM1faZ8a4THpl6Xu5sxIto1pmZYwQibyMXJGI/FemANN0uHixo8jKzZb570Fy+ZHZ
	 QzgnbKdAu1agZoVR2+XZN0xG9pKP0G76kFW8oon5bvhelglBBMdDN6HpagCN6D0df5
	 gXsHr7bnpdO0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E664826B4;
	Tue, 24 Mar 2026 07:52:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DCAEB1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C24DB822A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:52:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hajg7si9NWzG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 07:52:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E55D781E31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E55D781E31
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E55D781E31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:52:53 +0000 (UTC)
X-CSE-ConnectionGUID: AZg+aArzRFWA4nh0qEpanQ==
X-CSE-MsgGUID: /kAeE3esTPqotSueM9aoog==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="79204606"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="79204606"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:52:54 -0700
X-CSE-ConnectionGUID: BKk0p3u1Q2WmCCjrTU22Jw==
X-CSE-MsgGUID: RWNB70+VRwyVtT7nl2OZ4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="217712175"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:52:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:52:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 00:52:52 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.40)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:52:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WnZhE8clq+7lcqFwrazPFIiuUDCRGj+17lfc8PaLSKyYe1XfZb3IWfvAIshyur/6/5FDrYcUJ1fuWUWofYukmThXxi9RFPUT14UouX0geD8Bu3dA2/U5JABg1Ef/GeEBxCbWpPcKWL8v35UWW56la0Ycv2r5rtGP8cka/4WmZoaT2mrDhhKj0Dkf8OKLpk2jFk+8Ev3MO6u/hkrYSdCZhqFV8npAN8x6Psi/KwqFbvnE0fT0PmCBwekpd3ZlBAiob7dwfDCv+z7mwQU1zRWEzzfTEgAgIoUNJHItmoRn8pNxtAHUTIT03dZR+oxm7K2QdLoM32CMAk6x1eKfbmtcHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ezxj5j75A48KyufHDiWllZssJ4jsiIqwht/eo6tlW3U=;
 b=E1sSK4gvEeo3fCJA+5ECYOSJt8da+9oWqXuIFKYI0i9s87cbpu51cwygYmzhEp6npERRxZgb3niz1R3xPSfZ0ZvQ+UjVRSGmye10snPbI4+YnAEttFYTYOwY1D0D1k5oLVRORlnbaPG4Chz7gRxpKO4tHNZeoAS+NKj6Vm/fCpvns24cIu2MSL3xjjgKqzk8eg2MKdClebInnUVIfff5oD7fXZwCAGVoKRjJQ72aTNiy5tAjIieWe3b4E4IHzbDW7nx9GOZr1j41Jm7YPcWeOaQXdau++AAmAsIUXnc9fHgelTYSwHjzxkxGAWTFpA7/M103X9Hu0URhycMZ2y3kiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF2AD6B04BA.namprd11.prod.outlook.com (2603:10b6:f:fc02::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 07:52:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 07:52:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 02/14] libie: add PCI
 device initialization helpers to libie
Thread-Index: AQHcuuxIVTdwdDSGfUWhB0b12Ap8K7W9UHCQ
Date: Tue, 24 Mar 2026 07:52:44 +0000
Message-ID: <IA3PR11MB8986FBB3681F4949059038C1E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-3-larysa.zaremba@intel.com>
In-Reply-To: <20260323174052.5355-3-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF2AD6B04BA:EE_
x-ms-office365-filtering-correlation-id: ccb0daea-072f-4cd6-44f8-08de897a556b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|38070700021|18002099003|7053199007|56012099003|22082099003;
x-microsoft-antispam-message-info: o2iuM8R7hHg0TA6i7STqWYVp5b2PGkFY4uqash8dzxFHLBhBPrUNmt0LYJy623lXVR+M1sLw9jTORii5rBQaibVsId8ZhUiF9VjtaJ/4YOTu7UjY+mRzoEH9Iptq3PaPK/oNQK+Xq2pbp3xOvsgFSF6EhJA3PoO7/S1wW3qa+D5Nm+cNWtUhFBq6VLu+mDDxulpxOnf7N+vTwZBGMelbrHCMY2ns1I/58Px5NW+JtOejg0u7EZNq0/2Gvj4QeetFGJaODlTD6tpXHYNJT6/q/mzkwGgqQ/W+PluNXA701IpLj79ti9f9rh4TxQfM6RdAli9UYZNl+e8FDqZuolQr1Dxi4vb06rZVYZ1Y4Oupw3AXMV7Mvc71rywjkIkWoYss3fY13GF22OucjgtQH3ig+Zv7ZYf+j7+MDMReiFS6I6t/eowG5/dkwOp9K4m8QqezOQWqxGIWSFi+kIOgRV4/V+h7jglfRSlAoZRFyb8RLHqxZiTaCBWWB1PfiswRFsy+ISoSWZKyVMDIR/M02JOM39G5EIGkbX49u3tFuRkfewlca78ZMVUef9aYXGg/DPXwSIHXeQu6b8p+bzxOGrIwGPtVWk20OUzei4aXt/MMdtwiyaQVqiQj25K21+yqHMOSimdDEUcfbH2VqeNyJeCVle0SA00lOwKwn6jZG7vmQrDWyLzXhQMjQFOhSin6IyRkcSsTZLx3g+jHp2J8EvEeFm2ug5I2ohRfGq2664yaVvlZC3AmlCif7ti6QRqQJcuFmNXrLkc9nTHHY4CUnoBrEi3BehKSRFV7ywQDLHCw7kI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021)(18002099003)(7053199007)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ju6LIu1wD+csJ/1Q7fD2h8VBNZW2zdXp7kwleoz8UcJ8vMJ/eRNmYQSv6VvI?=
 =?us-ascii?Q?cZerbLgIdFuZvT9F7Mf3SxmUsySQnN0E2bHVIEqnphdNJ7fc0FzfMNWVNlWI?=
 =?us-ascii?Q?NVCuUA/7dA2w+llqZk4m9xw5UV2uVYDBJ6z7UjAoldp/knBxuy+P3OjMCemu?=
 =?us-ascii?Q?tdYrLeezZWaQD3fJob296vpuWlK6ONjZpkxbmEDi4CaMIfgLy5Qx0TQE2AmX?=
 =?us-ascii?Q?0EUEm2jBpT1L6A4jGua2DkTwePsRshXFAcWEf8bHMjtMen+SGjQ2RVwHTB/u?=
 =?us-ascii?Q?xFwyH/fARsCxJFS+9igM7Zb4g4lrPiT/G76l4+gXGeROf5SB4fzdsiG70gVs?=
 =?us-ascii?Q?lrBZn2JtZM8Bs3oGpELJdmDiQoPbl3s5RR0oGhL3zgaXKFQPlNOt8sQkzMav?=
 =?us-ascii?Q?9FvVgxUlkjRfowBbxqrSNL0VOWneOc9aBO4R78dp/zfRqIoaMzlJeCx9pelU?=
 =?us-ascii?Q?uYaheTNXHZwJHQO+yB0UW3HiNa7gP6OSqzbV+nQtcWp6h99p64gLXzL54hzo?=
 =?us-ascii?Q?kkWSan/AZhkBD9GcVMbiraadZZjT55NyOY74TFZ5yon6Q5rHxs6toD0pdLgg?=
 =?us-ascii?Q?mIr7cCuKueTqtx6BSGwy56ggT8+Ya+22VT3WnkoWsHrZmdiQ19gvrKe2J0l6?=
 =?us-ascii?Q?xV/KvTu7pF6XHQVSHGevxZJelNA0C97Z2hHNUVYaJveiahI2ftWZkDY27j2F?=
 =?us-ascii?Q?nqqKHhS5XSB7Mzcb34ctobT+itFzzKD/Z0lbpJ2oah4QbSqYVMQEAs5HjZck?=
 =?us-ascii?Q?NBW4IK66qgPy/a8TLgLrg+TU1ZOnRjtZ9mzDJBiRPXN29unREXDkHYtDR3Bi?=
 =?us-ascii?Q?ToX7mP9HkM7w5FIwPP9opzdSxaDOfNLQ+cr1I287aasv7TC8JoINRJmR3Use?=
 =?us-ascii?Q?6dJ+Hq+3qp5HNN/BYMzQGZ6pD8/DCbgzjrGbl7WST+/lQgmDJGp2ypg422Wk?=
 =?us-ascii?Q?ov9f+NFwjyMsd5f5ZdLuEp+Fh3g3wxs38QGwUykHh5lyyVLXDbAvLbo8ulho?=
 =?us-ascii?Q?oLWB/rDuaaldE+4rGKL0fNLBnwVnEYf+aAMRKDX46f0ZnDeGAcyHDPU2AO7R?=
 =?us-ascii?Q?8aK7fE40i0X6BON6vgHRZ4LmeMc+94qrCyDh/rtcycXlHfQvxe4lpmAlnXf9?=
 =?us-ascii?Q?teNQZpc+3k2Kyj7g+WLdBwWhYclk/ut1sZngDtoeqZWHcwG7OUT01zQ2GPtK?=
 =?us-ascii?Q?767iHFCoZOUylgzb/IDfnxv7KtDwghmoY9w2l2PlsVLrTCEJr1CcjPK/ehiy?=
 =?us-ascii?Q?n7WiFntkcTLMZedheOsaUip16vyVu/yDobTnkFkdRNWfMiUhT8V9JFSVBljo?=
 =?us-ascii?Q?EHCMiKrt/Vnh5wajvJcjxAhsUiv8tpjBH46ScKRNzaZ4I4DFjIZ+oJcHug8w?=
 =?us-ascii?Q?c2E3XBbY0DQ1OxMom+nu0Bx7UWiSV1BLkSiHag4C5OP2nPAz48zmrLB1dTe0?=
 =?us-ascii?Q?Bq2Sqr40FIfGHKSHzohWfr9XDHxg86hBkxwcsTdoYMGQc+DcnpD7UisFpuVk?=
 =?us-ascii?Q?6t5WfWHvr6KuCVXvsk9wiPjvsOCGYt8Z0nqgLw8zTi2J+6Gz4ihlxz5dXYix?=
 =?us-ascii?Q?/dJYdTja1xHua/FKri1k2ZFk3k6qbzgu6SRNrrfdBVU+G61UyICCeUgkxK6h?=
 =?us-ascii?Q?Xam9Dc/b8sIQI1JnGZFZ4kqW5yFSoBi2jN/D/MtMJ/Howq7R23xY9M8mHL+7?=
 =?us-ascii?Q?iWT96SB4jdhk/Ze5saZxqh5s2xVvjZTfDr/mJSiuru3VDavQQJcB0TUUDAP4?=
 =?us-ascii?Q?OuaaYhsGiMVpyx0AmmK+xIR7JP0b3uM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dpqBDz5J3zSrZ3gQ1jkNF7ZDpQFRxbMN1qH6D+CnBHX7S+H1/g2vkVtrt9NnyTBuTUszDMewu8qgekeBG6t3ZJcHI7JVLa95eX6s80r80fAwq/uQk3fMI0tZpMV68dX+8uwS0fpYKgJkG1/ZSwMa1CMgo73fGoxUmK0RW33T1PPwsxBosDnWcllkH/GMD12VQFkTpDdSRDBno5yTm8BnNUZiY12Y8Md+wTnDzjo2I4P1e6jiRzEKM51zARmt6BO19oiNnTbLMNuvowEsTqtWSAfYJibdqfx50BDYYbcsZnm8FIYrg/9YI725ZC6sQILgA+7Om+80vQhxH1dnEh33bA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccb0daea-072f-4cd6-44f8-08de897a556b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 07:52:44.4833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jm2JTdvav1y/26y3m5g00+aAkO1ldAYCVMvXJG9iMHJkueZKOHgKtLJhBIvrqc10BWzsFsLsulueBBZpjoTPFyhwaV3yiEh1PJDBsn3ujmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2AD6B04BA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774338775; x=1805874775;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T5DZAvhuRctyQ0wyPs8GBEeb5DfaAq9ajCS8GeY8nSg=;
 b=K8CryH2emgNqoJ25ozp9iyVHph4p3p/dO7LawTRMr+nG438Mk5b0ZJ+O
 sJzy8Ef7t8r+57vuHCoa0qeV8sfHBmgYW0fPVYn+Vhr8919yhL4DBLpPB
 ZYUUvookw6qu8ULEJVMgR0JnseIoA0erCEod4pwp5vrIq2KXP93IOa3kF
 JEH7uZP6pxWIgbiFkfYrFhDcUcMA2371VSc1kL7BTuVC1OQctw1gxoSVW
 vXLPkyy4/w5znw0JVgoZeDGsFoV3B3HNxGwE4FAFFAAqAmBwjbgM6Awi3
 jWjiBkrztDmVjKd85FoAV89fZAywkpFSyEJ0v5ql1UW5YQf0YR6T2hFkf
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K8CryH2e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 02/14] libie: add PCI
 device initialization helpers to libie
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 3F8A3304319
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, March 23, 2026 6:41 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 02/14] libie: add PCI
> device initialization helpers to libie
>=20
> From: Phani R Burra <phani.r.burra@intel.com>
>=20
> Add support functions for drivers to configure PCI functionality and
> access MMIO space.
>=20
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <bharath.r@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/libie/Kconfig  |   6 +
>  drivers/net/ethernet/intel/libie/Makefile |   4 +
>  drivers/net/ethernet/intel/libie/pci.c    | 208
> ++++++++++++++++++++++
>  include/linux/intel/libie/pci.h           |  56 ++++++
>  4 files changed, 274 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/libie/pci.c
>  create mode 100644 include/linux/intel/libie/pci.h
>=20
> diff --git a/drivers/net/ethernet/intel/libie/Kconfig
> b/drivers/net/ethernet/intel/libie/Kconfig
> index 70831c7e336e..500a95c944a8 100644
> --- a/drivers/net/ethernet/intel/libie/Kconfig
> +++ b/drivers/net/ethernet/intel/libie/Kconfig
> @@ -23,3 +23,9 @@ config LIBIE_FWLOG
>  	  for it. Firmware logging is using admin queue interface to
> communicate
>  	  with the device. Debugfs is a user interface used to config
> logging
>  	  and dump all collected logs.

...

> +#endif /* __LIBIE_PCI_H */
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
