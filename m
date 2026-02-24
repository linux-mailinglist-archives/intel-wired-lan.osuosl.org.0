Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULtUDs9LnWmhOQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 07:57:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8961829E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 07:57:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 725498375B;
	Tue, 24 Feb 2026 06:57:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15VRyKo_tnWI; Tue, 24 Feb 2026 06:57:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9D0684440
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771916235;
	bh=cVpojfxDZ2uz5xxtGAVchRMQjEA+IO/XyWLO4UeI7cQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x9XWH/C38eBQbvLH9h6UmgwOhBJwhV+p6Stkf3XmH63LNq6N49nITcDqRSAhSfakY
	 AIUsM1mmSxqXAE01dBz/emqs9xrk6+d9IQkJe9OH6S0MigHxO5wgE0jLKKfKUsO0BB
	 c+xKn30qk/u0w4Oa3AtbZ8ztpv92iMJtmIrlYXmJPZID/y/yMps+hgi7PjUeBq8RWV
	 rutMnkwhdsBbVUdKQtnCkmtytcn1q3kta7tZVxMjZbz03zkE+WZY2OHvhVM/3zMWGQ
	 F/nFwHmF7nlkmhEByYZcmBgqPtERnZ8P1Dl7O9jhCPihyDlpPDlTSgWW3T7+G2pGB8
	 j6ekfhdh/Wqqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9D0684440;
	Tue, 24 Feb 2026 06:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 141F2249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 06:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 052FB4042F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 06:57:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3g9e5CHqPVQX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 06:57:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1E5324022D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E5324022D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E5324022D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 06:57:12 +0000 (UTC)
X-CSE-ConnectionGUID: XlXlvYdaSsu658FQTbADTg==
X-CSE-MsgGUID: +EkWqs8VRFeMgIoRY5rUlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60500732"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="60500732"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 22:57:12 -0800
X-CSE-ConnectionGUID: xNwJ3GRJQjSQiEFhoTwhVw==
X-CSE-MsgGUID: 0RfHcQgwSHuMZXPqjsQ8qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="214660912"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 22:57:11 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 22:57:11 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 22:57:11 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 22:57:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fgZBFtT8viBlg2WBWN8rePDf/7HwyLdXE5p2b2HwKLrocSimBBP7nCAqHCv5Jy6EVTBSVnyEBSLV9AdRwB14riyPzfxfTa3+Ql/FXeQtX6hPZaw14xaVi0svcPnPpIkyV2MHCWPI9ABRZ4hB0DG2VpD6dk1tlQR7Xi2kE5MVyYMQyOnp8QMTBmkDBmjHc0aDUhQI150YifzMsvtZuQpjojkiimiaCUVC+iRUTpyrXQJGuJgubuwRKtAsbRQsQvpRTnOuKzRJY6CwDreSHsxmKg9eaKoKxyC0TRgU439Sea7Q/HTOrlO2TKP7ugrmcuUCMepQZACrEA+TVSs7kP0NDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cVpojfxDZ2uz5xxtGAVchRMQjEA+IO/XyWLO4UeI7cQ=;
 b=BmDLq2D5E4/RR0fUGnpw4PjEFaIuK9L95bMFp/xzvZSdRm0stSvrMiAKBOWcqOSGJeEkRjYJ+4DwBBFCKLed4TCdckjSWIBKbVEYtFyzhtQ4YYrbTTxqOjIb5Y6QlCxc4GOXQLx/85WpHY+tmT3OTGJma4VtkhpBS207zXDHutbJwYsjns/bEYu5S36DJoihO+9PzqC3pejxiTLStxwTDHdTe+5nLsZ9Mt9PzUIH0U68gK3pkSKkSJIu2Hx+wrPhW0m2itKM/8Q4nfM1UAokj3e371x0yUGDkK9g/RfcbyeplB6SQYjIsk+0EDaAiBiQK99dSfh0yfTgP3UPw9ieLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7970.namprd11.prod.outlook.com (2603:10b6:8:121::7) by
 DM3PPF49E43CAC1.namprd11.prod.outlook.com (2603:10b6:f:fc00::f1c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Tue, 24 Feb
 2026 06:57:02 +0000
Received: from DS0PR11MB7970.namprd11.prod.outlook.com
 ([fe80::b66d:154e:f761:5d49]) by DS0PR11MB7970.namprd11.prod.outlook.com
 ([fe80::b66d:154e:f761:5d49%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 06:57:01 +0000
From: "R, Bharath" <bharath.r@intel.com>
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
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 14/15] ixd: add the core
 initialization
Thread-Index: AQHcV8kYVvu/hwmG5kq9PnJzIrFNULWSBbUw
Date: Tue, 24 Feb 2026 06:57:01 +0000
Message-ID: <DS0PR11MB797038AEE76B5F224EF5A09CF774A@DS0PR11MB7970.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-15-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-15-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7970:EE_|DM3PPF49E43CAC1:EE_
x-ms-office365-filtering-correlation-id: fbad970b-ac98-439d-ee13-08de7371e975
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?LkD2Cwv3+AVOa7F2JR7t/T+4/EoicscNBjp+WWZdjxZGrbS15t/oRrVooypu?=
 =?us-ascii?Q?Duu0qmBMM5DOcldMFD+UFZAFiG3Dmy4lbUvsiiO79/OxbHA1yxeL3aM+CcxI?=
 =?us-ascii?Q?NaKNZIHTxw76nVn8kIVH1rjIYhW3fvNn0eNZvmCHDKAkOdo/Q1nVa+s3gO0Z?=
 =?us-ascii?Q?pN1JenxlxZKO1HfWdxEjqR8EgKdmXJvhri63/pdq6xtkI6GU2NeHT1CUrDz8?=
 =?us-ascii?Q?8w7i57+eFgTetHiuVdENtrxk69o7xENP5UNlgDW0kyGySw5ZXdspoS9klTWJ?=
 =?us-ascii?Q?GjJqQcVzU2cWFMkWftTxL22hv/4R/Glf1Rdwr8fqPxfLtn5q5lc1OHLBWri2?=
 =?us-ascii?Q?pQ5NJDENWmqY2tDXByjyGb18YwRNzs6jQN93cAuclkJb9fqLronhAJW4y4eP?=
 =?us-ascii?Q?qGdKBITODDOExhn2cUmH6ozfInsiNBo1NOX7RNqKxogsl76UeXFnZ3XQiVss?=
 =?us-ascii?Q?yqFrqetm7c+srAeOSc4t10dZaA8eEwO1WO4+GmhN3K8ZMk3XFHiUFR/oPwsr?=
 =?us-ascii?Q?BrJPwAUeV9xwY1slgl/+QYvZ5AbhguvjWPu1Qk3X4gPXU1U3fbdriTOKWwL4?=
 =?us-ascii?Q?eFqognD4duBfwv3VqWmBDynevzjCR7YYzLF29M5LpSEV9u+hFL0cS1djWANY?=
 =?us-ascii?Q?QTGmdHyjxB8A5VPomQZQKMq8CjXhf6rNPRVU8tPkiN1QlRpxCUQSXPlkO+Dh?=
 =?us-ascii?Q?pfXnwZCC9S7dfXJdzBOQi0vFP9Cy250XoZPWNh5NM0m4GEAqLpc9Y0ybDp3U?=
 =?us-ascii?Q?WTVce/1dTYWoMsRo2bhIrKE7MoH3pk+P79LCb6N4U8kzp4wMhcpcS36VexqH?=
 =?us-ascii?Q?XlgD2+eKx3ThNsU3XKvGoVoMXnAjVVzucqsYv+g6+X530/kZUjWqsy6knrT7?=
 =?us-ascii?Q?PwWgOVhnY3c6GihK23C/vbHO2vYj63Ok4Y4kTMULhKLBDgOlKu0r38hz83mc?=
 =?us-ascii?Q?LAjxkkn3c6H61bLEoBbrhzh1na6n4skvBtxH8ZURK/5054JDg8oydwNaQMCv?=
 =?us-ascii?Q?G8Dl7+sBesxNuF8rPAIQ9GnK6r0RVtEUwmvnvRPyJAoJ2XEruR6KkiN8S4En?=
 =?us-ascii?Q?jxqp6L3QqQyjZCJfy60dF0aLJR2969g9Q43v5ISqIpODr2pvGN8H3+DUhU+L?=
 =?us-ascii?Q?06Akkv/Q7nuUR0y1uHRV676ePJlSV9YbLnQzmc9vJH+pm4xBGcIKwHAr/7Kk?=
 =?us-ascii?Q?BL+iV9NAeUwPn+MjF38SLRfF8y6Fv151ZGS+gYEf4a479wmqcK8RSSkKVY8p?=
 =?us-ascii?Q?pDinEE4BYtBdE6ugodyUBZ8l6qH5nY3pMxlzlDLYAJm2lqgIqshKJvNtJny2?=
 =?us-ascii?Q?TygbFIcWv1dfcMDudFq37/ZswhfA4VarVFlmsyiSG/ehkmX8PCV40621PYMS?=
 =?us-ascii?Q?tN6fx8IM3sEOCWd8zuwiSoijoYm+/yOfRDsj+TDcWaWBU6Waxoyq/KKz+glN?=
 =?us-ascii?Q?95PbgQaNnWcgSzGpd8JadXkxgi418GOokr6ItulaQtTEJza8l6FJqJCI73On?=
 =?us-ascii?Q?TTs1Ug1tzKVUP9cxeS6SWsmvcAGX79Q+F036R3KKkwU8sYfDFzyEe02R7OrL?=
 =?us-ascii?Q?kgF41pfG0gRCkHr6hcpWtUGROk7hdYXkUGKg8h6+NTcHA8qd2vuRrbtIM/L4?=
 =?us-ascii?Q?DrSlUx1ndaFSbjSAaJVjmiI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7970.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LPu9cKd7mrPtsN/DkuCXXOPueqi9d/QarYub2HkkRelArAaqLEu4lCyZtSKQ?=
 =?us-ascii?Q?6pbuawoGHAEruTerO526I4NLXCp3AH25hFnOY5asgQfRP86gCW6SJ8y1J63X?=
 =?us-ascii?Q?aokBWWszJzq3wK45gNe+tCQ5RuSaMS6LH1mkWKWqT7dIARQdeuckzn6HfcHL?=
 =?us-ascii?Q?DcQiMdgogb6xLlXzsJED0ovQ/cPcwkQK9lg/OSzzCSYjT4/2/bnpdPzABZgs?=
 =?us-ascii?Q?jKmktAO9Wo06wOU+4nxVDcR9P+r66AAzPedd52xRodzbdAVtcfLXJzZvtWx0?=
 =?us-ascii?Q?j6+WEV2cVazetJFIzDtBMT/Y8BmdAnSWP6baXDNxn+8EpjDr6J0VGpEcmnCu?=
 =?us-ascii?Q?lWhQPU30gDcWzOyEf9Os9gikdrTZ8nkkdOQqL8ks9sTURnEjKAxOsxV5j/TG?=
 =?us-ascii?Q?yGOqSf+iGnEuPSPb7U2TEIv109+km0i/oyT1P7uh8+pC73NmTBC7rSSrqjhK?=
 =?us-ascii?Q?Qq2siYHfM0ncE7mTSBfEHyjFvKz+9BQ1HdELsQ9tyk21Wv6fK82CBKR4jdV+?=
 =?us-ascii?Q?2Q5RsVd0C3gue4Tc97pg7YdMI+w7b+LcMhmc3b9ZJ7TsjDyXbE5x7x2zZX/N?=
 =?us-ascii?Q?TSemoctCMrjO4YY4gG2NNxg56DQx+/WXUyCrqtsRKNQiWdrQVG89jPqW49dZ?=
 =?us-ascii?Q?Se7PY1k0cfySlMc4i+jJjvnDMHCiI+i9Vza3cp4gNcgB3uGgOX+iJbvx7YjC?=
 =?us-ascii?Q?VLT41d8fyl4XjxSXYqY2MpO949pA1mPWSU5GbDhhq/hfFD/BT6yTbcXLHWdP?=
 =?us-ascii?Q?LK5FPhWJZbYUX1hzmSW5M7jFrC12rV0aUVq723dMeFfztO/5BZbRFf0UjBMb?=
 =?us-ascii?Q?+hI4zjubYMDaTJh5YgH4RbNy5CmPAAuaE2UplPBR7kAQf49+EJ6/w6rHrXCv?=
 =?us-ascii?Q?GFuq/hWGfULXZfq1PRZHn8MZWlNYfAzsW9iwu+JCbT3xc0gtPrVDKrqPWW3Z?=
 =?us-ascii?Q?NiQ3F8EBT6M9gCllIPOrXJsj2GQl1vSPZKlS6+VY6NCMM0rZPQSJIss1A/x6?=
 =?us-ascii?Q?yXqcseDGBjnqWN0PoklgceezIX7juWI0MteNXU07QyOjlecChgog2393be3V?=
 =?us-ascii?Q?0TEp6quZEdpWJ5Lez9J12/RNgrhGkyzvlv6+LfAgIM5FoZ44MeRBjD8lXy8Y?=
 =?us-ascii?Q?WJ9bXk3AsRGl93fqAk6T5JfZpNpiYZWiUfzPV1XD5wzZ5Paz4KWsjs55oMkb?=
 =?us-ascii?Q?ssbSqkWa1S9Vp7rr9Hjf0AXc8/ih5swCSfw7Zdte9SygzZSgWmMuMRWvWcmX?=
 =?us-ascii?Q?bO1op5IDC/mje1HuWCsqJSHlMoli/Rp9wuYzQ+EJK4d9YcMzVtcXCKUTG0Pd?=
 =?us-ascii?Q?0a500T6YfAWwzUc+cBPbPLRm2zdjdPpzsuk4Dh/yNKuAm1PW9wHQnG/Kc0wZ?=
 =?us-ascii?Q?7JCQjY5JzCptEcdInlSxMU+NgnJJCyCRp/NGOI/81M51KG5b9WFX0SSlS13H?=
 =?us-ascii?Q?HnrF5lNN4ZlGhAtwqmfgZAgCjkMNYvu6S/Wj9Xbc4g2itgpRAUDX1409oUBI?=
 =?us-ascii?Q?iy5O9Q9CC6CMWcDa0W79XHSBD8hCuf21FRYmSrgmrXzIADwWgQaD39lgxfbx?=
 =?us-ascii?Q?tq5KCuq1Yyd5n837tvUN7WRr5zGIV5c2X+AEmTzeDdnxWWBPI9inQw5/3UvG?=
 =?us-ascii?Q?LuwBCNwupaTfBNKQccYz4sXdoZuDrETI9RLyuLAaxXPm69pwmjPnPIoC/Lkh?=
 =?us-ascii?Q?Qjm0bVv5TcM12R/K1wxOiKa3Uvq8q+REj1b9xkT2xISzMlds?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7970.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbad970b-ac98-439d-ee13-08de7371e975
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 06:57:01.8237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dctLi1maDTXI8tiKA7fIFnc3VI+flhzeRR3eahxgNDVlXbwc+DSLMuBAnazwROwme3nBto+QOWRvhwn54tE4AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF49E43CAC1
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771916233; x=1803452233;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VooMJvGcxNEVfVULPb8rn3pkOR9pZuy8gg5Lc9Y0FKE=;
 b=oHWKgBmWldgLUISG0Zek7YWi5ZdEeAkSDk+Rs5W7xwy+B+2VZLd5TaHk
 DeIwziSCGXKSiG5pPs1RhQ4z104Vbrm7Qjq37hj0LWZwKesANjSbPBx1/
 MFNGTXsLmb+fC7PM09Px1WtLKmyiaNpGspk5EuwmiQnAJ1E3a2l3QHZ72
 jluBkyncMTio1u2UuqFL2+liUaxlmtvTnjLR4cwr7C2sKaXiWs/zuIdha
 H7tyk9QtCyNG3dufv6KEBMipB4f5ngPc+72vImNXBl5Bg5QAv3N3NgRQq
 /wl7Tp/JtOmtS8bsxe3ZlVTLdJAhIA0GKuD2NDc7ZgeJctaQxTsbMBSMD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oHWKgBmW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 14/15] ixd: add the core
 initialization
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3C8961829E0
X-Rspamd-Action: no action


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: 17 November 2025 19:19
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 14/15] ixd: add the core
> initialization
>=20
> As the mailbox is setup, initialize the core. This makes use of the send =
and
> receive mailbox message framework for virtchnl communication between the
> driver and device Control Plane (CP).
>=20
> To start with, driver confirms the virtchnl version with the CP. Once tha=
t is
> done, it requests and gets the required capabilities and resources needed=
 such
> as max vectors, queues, vports etc.
>=20
> Use a unified way of handling the virtchnl messages, where a single funct=
ion
> handles all related memory management and the caller only provides the
> callbacks to fill the send buffer and to handle the response.
>=20
> Place generic control queue message handling separately to facilitate the
> addition of protocols other than virtchannel in the future.
>=20
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ixd/Makefile       |   2 +
>  drivers/net/ethernet/intel/ixd/ixd.h          |  10 +
>  drivers/net/ethernet/intel/ixd/ixd_ctlq.c     | 149 +++++++++++++++
>  drivers/net/ethernet/intel/ixd/ixd_ctlq.h     |  33 ++++
>  drivers/net/ethernet/intel/ixd/ixd_lib.c      |  25 ++-
>  drivers/net/ethernet/intel/ixd/ixd_main.c     |   3 +
>  drivers/net/ethernet/intel/ixd/ixd_virtchnl.c | 178 ++++++++++++++++++
> drivers/net/ethernet/intel/ixd/ixd_virtchnl.h |  12 ++
>  8 files changed, 411 insertions(+), 1 deletion(-)  create mode 100644
>

Tested-by: Bharath R <Bharath.r@intel.com>
