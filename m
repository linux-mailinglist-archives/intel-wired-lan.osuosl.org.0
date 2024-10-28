Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D697E9B2B20
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 10:16:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEADF40680;
	Mon, 28 Oct 2024 09:16:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BP5_me04-Zdk; Mon, 28 Oct 2024 09:16:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CD9940571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730106963;
	bh=oPgCOFF6FMYdiDXhhdASGIuFswk5i2M9MJgkptF2vSg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2XXv5DZ8ZPcKxt1rPT5unDTvBhTEA+C81n5LateieaXiq9CAXrRCY60F930i+WaZv
	 f2iQsTZlWk7g8QSUJwANiuQ3/l7NhxtKpRAYHGqgscBkmTjozMMvd/jFBYjR8nSKbK
	 LUZJzRl5hzWQHyU3l9JMw/Mv+IXMMX/zDF/IXi0xohctWVHzCwKS7ocaU8h1o4YX+O
	 sjLMpiRiJdRerlHFTPr1nUw19oI0ZZkzNsMt0kTEgmlWbq7ssJjqAjg39wO8aB7Gbx
	 aR8HD3O5RudlOiuIGiOnaq61lbSwYCeKkBbyJ/EOt7dJ82KCDVftzcJP+5Saql016S
	 O+JPCMgXlB+yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CD9940571;
	Mon, 28 Oct 2024 09:16:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A8F68AEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 09:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8ADAF40571
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 09:16:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tSykTXr5Pwko for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 09:15:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4B7DC40603
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B7DC40603
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B7DC40603
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 09:15:58 +0000 (UTC)
X-CSE-ConnectionGUID: QV0aSurbQjqF3QMionH4MQ==
X-CSE-MsgGUID: 9Rzzq2/vQ0yWcz3l08WqwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29806889"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="29806889"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 02:15:58 -0700
X-CSE-ConnectionGUID: oOFefqYYSEGE9B84Y/NoYw==
X-CSE-MsgGUID: mU2kSxK8RWqzEnPzAuDwsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="86698785"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 02:15:58 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 02:15:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 02:15:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 02:15:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BvqR45HjnWvoMdMimJbptL3ucIBiq25HGIyjNt41mMdvxK/9BnBGhgPtz5G5jSk1n9y580wb0dyCH0jCDviHNxodEPdSfgEooFU2Zr4z3qizt0dD1/Ish+3HnUhBUZgHJ6LiVBd9hOXx4vcaTnUzPxEl7sLY8DEXbei1SaxTh8fNDR6oA4ZVpmgG/17eAkCWgma5UEBLw7Ub/NlTlNIr+lfbmyCPZT76QGhPvI1wdVnRdaqrs7qRCEPKd0Fddo2rQXtm8+nCELRTl4Gx2tfp6pa21ePB2lKEqnyu0rCEe4Hd3YlK6lXAX4JP+LR4p2z68Q9jKJH6mxSbOs893vdlVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oPgCOFF6FMYdiDXhhdASGIuFswk5i2M9MJgkptF2vSg=;
 b=wUeKKP2IvAj/HzPFuPzc5bZtPbyoGpo+gsgPG3FLu3ZWXE8hTS7aT/79fuejlPTPoiuUFI7T1/Wfpa7KXEZNnfpHnaa6So3mKMP8D/g57K6J+CzGLOxDOvnf7FQxW4BQHGFJ8KDwhN/IuC5gZYgUOUb9MKqwk5SG/gLcCSn9vChxB2RiHtG92xmjRD/Rg4CCJbE9chbQXFvMzK4gT5ilyycRndcJUytuAsHq1/OAQJ1qxfVJn8OZbjPUEI2XTZYajP0igyzdR82FjuW2j3zxjo3/L03u3Rwtgh+sPi5BskMGNzrcoT/zK6Byql499RB0YqsOqo1byqygR+/a8kf2Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by DM3PR11MB8671.namprd11.prod.outlook.com (2603:10b6:0:42::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Mon, 28 Oct
 2024 09:15:49 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8093.021; Mon, 28 Oct 2024
 09:15:47 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 2/4] ice: Fix quad registers
 read on E825
Thread-Index: AQHbGyAM9AmfqJCjcUqVY8ypqrI4v7Kb/WTg
Date: Mon, 28 Oct 2024 09:15:47 +0000
Message-ID: <IA1PR11MB62191C949FB1816DF4194294924A2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20241010142254.2047150-1-karol.kolacinski@intel.com>
 <20241010142254.2047150-3-karol.kolacinski@intel.com>
In-Reply-To: <20241010142254.2047150-3-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|DM3PR11MB8671:EE_
x-ms-office365-filtering-correlation-id: 4fe4d780-7b8a-48ad-f5bb-08dcf7311c3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?b9cs5Qj8yF2t464q4XTFrKxohNc8ZKZfqmsHOSJMRCLbLVdfC9pbf9sISfRT?=
 =?us-ascii?Q?12IIr0F49QjGPrAbUdidiS6rsdutsVSn/wCekg+h6CUy0jntxZdxhyWnbcbi?=
 =?us-ascii?Q?2Mwsf4LgIFIUd/IHSAnqsKQ5WNS/d6Bsqg+2L0RKUd8Cf7T9Xe+bn2FIl1HF?=
 =?us-ascii?Q?PVJxHWwjKA3+dgvK50010WEQEPQnkStvl5cVSH7+Bl24j5+9l1RDUMLKivQa?=
 =?us-ascii?Q?Dx+0+s7euejx7rxelmHEQ0q43bqCmGiP1WircWyLc5F7hoq50fF0ZfGrhfwm?=
 =?us-ascii?Q?OtghuFcnoHx5qZHqGZVEYRKOsW8Gx7rI8yHJ8X1su3hABW+1Z7Nwgp13npeS?=
 =?us-ascii?Q?EAZXDwWWcSVW6aACCs/qxMUre+QKtDQqmGZU5bA4s+ntc1gywWHAMTTqQGBg?=
 =?us-ascii?Q?jYAIY/ihXhh9+dPHQhjoCfkNEqGRHdx6BmejJLTX3UZQyiG2pDQ3Rhv7TFHK?=
 =?us-ascii?Q?LLHvJ9Ve/394XlATle7riq7xvP8C58YLDk8ZIS4WIImrzctMqflobQ/V9nZm?=
 =?us-ascii?Q?6SGv8qL0NFN+j6LMyFKU7drxaUpg0OFwZx0rjJtfDyE7l6ai4kuK0Z0jlwTK?=
 =?us-ascii?Q?c63IGWYjgrRCq3hvaZ4dcG+9qStkP4r7BLe74AsB8bQV/QrQg6XW1OX9u2lw?=
 =?us-ascii?Q?TMPZtASELneRwkjaS5lF1H3bStkbT1tk5OfzpnpQZ3WZ3Ak+9pHPZvldi30N?=
 =?us-ascii?Q?NbXGGePw8kJXalJkE1Bvy4Xa1pgsCPiNIFYPS320yOoIULOTt1A35nbvZfaB?=
 =?us-ascii?Q?fuhsOsP8ZlCpPSmTfOvlPLyAlgvwHQ2gk6ruSCRzctxnGLlk/NjjWHSTmas3?=
 =?us-ascii?Q?ZSlc1J8TrfYrooRipxGyBrEuXWpzYDNg+N1q+WfcBUibNT3dawuh5aU+/rzM?=
 =?us-ascii?Q?2n14Gk1braf6K/f5ha0xfL2dqSWBpZlpuPQOytXg4vJiDI8gjbcHYya6OrQ1?=
 =?us-ascii?Q?CmLMM/2poalOobhlmHysc6uw6Tlh1dufPL7MVnf0QlBaRvoXQoWZ4AiXCQx3?=
 =?us-ascii?Q?+y4+FYUiV7dyisfxYP4LP0i8QrvdLx/Z1+TgI6+lQ4HyFysVTfygEfr/RGan?=
 =?us-ascii?Q?zYUrXVX3yA5+fgP1uTii3UH+ZyRbGitNQZUymo31MQThuFA7lx2etJPOwL7X?=
 =?us-ascii?Q?vYCLn9Fbd4DFSGjooYukiaExyp0BkflXTvXy9FrqLrmF8ulxkcCkGFlUIzMZ?=
 =?us-ascii?Q?e7+FEzFnSENDgiMrGcvzUi59cgyPzFF01FEfzhs9VmTRgzojQlzy8HOy23Ox?=
 =?us-ascii?Q?cLdtjTK9GKIYhY7nbdXU3btayMeZbNTu0QDWtUk1iwJppqnRd0qX7SeOBBmb?=
 =?us-ascii?Q?LwQBuws+EEkiQTGKg7e+bir3NOf2pH/GYtg4+gmkls/XRQFuX5KvXMFv40D5?=
 =?us-ascii?Q?8WHsxbo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fZo6i7Lm0Q6iaTvrhUyQwvH+R/E0ofjnRkEY82b8cCL3N05Q6S2f7qhVnTsk?=
 =?us-ascii?Q?ytecAhuax81DPVkK18tnIgN9GsJ78tC4AaRXJuVUrPvVzirKFN/8KxoQp9YF?=
 =?us-ascii?Q?wnfTkdzGOY2slUboa5UZWPl8eMPpUhaFh49pWZYe/dnP0vizTWnURrel9Xaz?=
 =?us-ascii?Q?6TSfwiQqGJqEzAWjoivFieaCIVMfhYNxYTXa+N2MYsGwuzdcTh0hXg8+9NeU?=
 =?us-ascii?Q?NCOTMhHwbx5i1J8vWhJ++g0RF5OPpuNGN6PAOdCCQUnafgZuzkmMdhu7kQK/?=
 =?us-ascii?Q?K0OvUeQnyNr1C3nB+Rf2cZlfjjPjNwjiJC3YDLgEeWEAMj7n528ezU8Pj5+z?=
 =?us-ascii?Q?9g06iW4JFlohw7HdruAObiDI8BcDz1bN/BedC3PZXM96sjcKYfNh9ooTez3v?=
 =?us-ascii?Q?JL22Na23BLKFm3WCL4gLjbRnKBfOKUVtx2f0TUM28rkqfqwezgjKd7ljozEY?=
 =?us-ascii?Q?CMRFHzFZE9g1lvCsvUJGiPJSk2kqmGU9IJa0/PSGM8o3PmiqDG2ra21ysujs?=
 =?us-ascii?Q?DH8Yjgd9305FxYxLFTmJPrxHESr+kO4bhOeK1mN72axt2x329NUN6LyqtbRY?=
 =?us-ascii?Q?E4w775lcrPMQ271q5TXi+digYs18SVfAz+EDhrqmjI4SKH6W2pCdsHdd9vZS?=
 =?us-ascii?Q?yPpY+y6lh8DNN7ZFydOJhp+KBbtFxunQIuAg6opLWdsgqS6E3hcp71vjSYrS?=
 =?us-ascii?Q?7sXBzYQ25EG8TY8ZkBht6xkI0HkU6JzaCO7hsP8ibi1FeiA5XyTylJNsCDy0?=
 =?us-ascii?Q?Ze18SBXNwtQ+HS2q8ITA/kRLZSGrLtCGQsttGdojHMYNVoL4eEUtKfumURWw?=
 =?us-ascii?Q?pYZG+p2Ke66pecPkxvlPNTPRmXD3Uk+d9XcCPpnHGThBrOSmeyeCxF24NGLz?=
 =?us-ascii?Q?M0tNm36FrIBvfBDtqjBE6dwD5HdppBp7xZgkqEUgUOhNzPPG1jmfXUlPRec4?=
 =?us-ascii?Q?lNTv+LtFad6yH0oHEbzEzhnivoPwcu9bmUAVavZ8Jo/Ui0zymLgQyWjvqINX?=
 =?us-ascii?Q?PK4PEly5fx3eEeXxrb7wrXC5ERx3yWOVec7UbqRA33O6Y3QEkWa64CP1KzlT?=
 =?us-ascii?Q?o6emVABdxpSkmRpx82CSiV0YQOctiWtVN0GgpU8vtfOOSwM/936o24b1ulbZ?=
 =?us-ascii?Q?x1SaduqsWi8G7dqXnAfO3j4n4vqgYgguKTrpnvm6nDZkyNYT1wBRMcI4lej7?=
 =?us-ascii?Q?BGy2GYSoLAgYBnRGWXxAKPdBwBK5WdWQHQobyrq5RJb3Cg0FQdkI80akbv18?=
 =?us-ascii?Q?yXM7+vMcP+hccbUTjqHFBDX10mZNOS3Xfaj9D16BSUocAXc9mBhiDgmkIgQ5?=
 =?us-ascii?Q?zfHp6NvIYx0GkI4qZvsGSLTbTlDxFLSuS+7HtgoA844v/K//0tNVrSEhxT1V?=
 =?us-ascii?Q?HQ+u3kCFmI8d2pn7WWoH2TAGnNThEWFW0EociAHSZOfgn4SAU28WlJrgFW7J?=
 =?us-ascii?Q?cRJ8DP4IVybKnAEePBZ9ZJJXal8/qR3RhpG8nZUS+ZBSUVRxZ9wBUNE2KrYx?=
 =?us-ascii?Q?Ic4F9Ntw6fdlGi6fsovJbUCu+dL4mjnRYyusJDHadEfNGHRbXzYXqkeN/RTt?=
 =?us-ascii?Q?LRuM1/mD3L8tgB1BX72K1cTo8+9Qm2zcm0qaJLFY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fe4d780-7b8a-48ad-f5bb-08dcf7311c3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 09:15:47.8523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /I7nbfvbWPfaCwnaDDSdOzZywk/+SXXMVDlFi+edGJJ/cjs8YY4Gg4RqrXHFeLe+ixRfDNxOeSYeH7+KO8rTggFrYPK1tJwK3WwzaK5ozFI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730106959; x=1761642959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J0oTUA1pD36rJJ3VOjqHkEPpesu6hlBwxptDL5ByahM=;
 b=eS7bqTT0R/9+T9F+6YAsfiLEC54ArbRPcjTO6Wq5gvKwy4GW7czk/tnX
 AfVlrwDskUMRrlk+TQC/+UrSvDxtzmJ13xWU8Cl2c5g4BTsP7EXa3+DmI
 p5tU4MVpac6PP9T6xDlSv/5+Bh+XE7GDbB8hLsRGnv9Jd+jVGaSTO+x+p
 4JHqOC6SfRz32Ou8FdPED6pz0lw5Hi/zfNl73okhkshlhfBXLbQSi6IB2
 6vDg2pnB2K22mBN+EZEllO1qTisgLBquIkQUpS+NlnGGctGfS8aHFRiTo
 FkxWkYBO7LHukS4BTuv1EGXhJrn+KFloGnokSwczzYZqwGi0RGk772+Pg
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eS7bqTT0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 2/4] ice: Fix quad
 registers read on E825
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
> Karol Kolacinski
> Sent: Thursday, October 10, 2024 4:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-net 2/4] ice: Fix quad registers=
 read
> on E825
>=20
> Quad registers are read/written incorrectly. E825 devices always use
> quad 0 address and differentiate between the PHYs by changing SBQ
> destination device (phy_0 or phy_0_peer).
>=20
> Add helpers for reading/writing PTP registers shared per quad and use
> correct quad address and SBQ destination device based on port.
>=20
> Rename rmn_0 to phy_0 and remove rmn_1 and rmn_2 as E82X HW does not
> support it. Rename eth56g_phy_1 to phy_0_peer.
>=20
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products"=
)
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Fixed kdoc issues
>=20
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +-
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  75 ++----
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 237 +++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  37 ++-
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
>  6 files changed, 177 insertions(+), 182 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 009716a12a26..0eb7f828ed3a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -3454,7 +3454,7 @@ int ice_aq_get_fec_stats(struct ice_hw *hw, u16
> pcs_quad, u16 pcs_port,
>  	msg.msg_addr_low =3D lower_16_bits(reg_offset);
>  	msg.msg_addr_high =3D receiver_id;
>  	msg.opcode =3D ice_sbq_msg_rd;
> -	msg.dest_dev =3D rmn_0;
> +	msg.dest_dev =3D phy_0;
>=20
>  	err =3D ice_sbq_rw_reg(hw, &msg, flag);
>  	if (err)
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> index e6980b94a6c1..e63f2a36eabf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> @@ -10,70 +10,25 @@
>  /* Constants defined for the PTP 1588 clock hardware. */
>=20
>  const struct ice_phy_reg_info_eth56g
> eth56g_phy_res[NUM_ETH56G_PHY_RES] =3D {
> -	/* ETH56G_PHY_REG_PTP */
> -	{
> -		/* base_addr */
> -		{
> -			0x092000,
> -			0x126000,
> -			0x1BA000,
> -			0x24E000,
> -			0x2E2000,
> -		},
> -		/* step */
> -		0x98,
> +	[ETH56G_PHY_REG_PTP] =3D {
> +		.base_addr =3D 0x092000,
> +		.step =3D 0x98,
>  	},
> -	/* ETH56G_PHY_MEM_PTP */
> -	{
> -		/* base_addr */
> -		{
> -			0x093000,
> -			0x127000,
> -			0x1BB000,
> -			0x24F000,
> -			0x2E3000,
> -		},
> -		/* step */
> -		0x200,
> +	[ETH56G_PHY_MEM_PTP] =3D {
> +		.base_addr =3D 0x093000,
> +		.step =3D 0x200,
>  	},
> -	/* ETH56G_PHY_REG_XPCS */
> -	{
> -		/* base_addr */
> -		{
> -			0x000000,
> -			0x009400,
> -			0x128000,
> -			0x1BC000,
> -			0x250000,
> -		},
> -		/* step */
> -		0x21000,
> +	[ETH56G_PHY_REG_XPCS] =3D {
> +		.base_addr =3D 0x000000,
> +		.step =3D 0x21000,
>  	},
> -	/* ETH56G_PHY_REG_MAC */
> -	{
> -		/* base_addr */
> -		{
> -			0x085000,
> -			0x119000,
> -			0x1AD000,
> -			0x241000,
> -			0x2D5000,
> -		},
> -		/* step */
> -		0x1000,
> +	[ETH56G_PHY_REG_MAC] =3D {
> +		.base_addr =3D 0x085000,
> +		.step =3D 0x1000,
>  	},
> -	/* ETH56G_PHY_REG_GPCS */
> -	{
> -		/* base_addr */
> -		{
> -			0x084000,
> -			0x118000,
> -			0x1AC000,
> -			0x240000,
> -			0x2D4000,
> -		},
> -		/* step */
> -		0x400,
> +	[ETH56G_PHY_REG_GPCS] =3D {
> +		.base_addr =3D 0x084000,
> +		.step =3D 0x400,
>  	},
>  };
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index d9a3c7de0342..f28d0357c88f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -879,31 +879,46 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw
> *hw)
>   * The following functions operate on devices with the ETH 56G PHY.
>   */
>=20
> +/**
> + * ice_ptp_get_dest_dev_e825 - get destination PHY for given port number
> + * @hw: pointer to the HW struct
> + * @port: destination port
> + *
> + * Return: destination sideband queue PHY device.
> + */
> +static enum ice_sbq_msg_dev ice_ptp_get_dest_dev_e825(struct ice_hw
> *hw,
> +						      u8 port)
> +{
> +	/* On a single complex E825, PHY 0 is always destination device phy_0
> +	 * and PHY 1 is phy_0_peer.
> +	 */
> +	if (port >=3D hw->ptp.ports_per_phy)
> +		return phy_0_peer;
> +	else
> +		return phy_0;
> +}
> +
>  /**
>   * ice_write_phy_eth56g - Write a PHY port register
>   * @hw: pointer to the HW struct
> - * @phy_idx: PHY index
> + * @port: destination port
>   * @addr: PHY register address
>   * @val: Value to write
>   *
> - * Return: 0 on success, other error codes when failed to write to PHY
> + * Return: 0 on success, other error codes when failed to write to PHY.
>   */
> -static int ice_write_phy_eth56g(struct ice_hw *hw, u8 phy_idx, u32 addr,
> -				u32 val)
> +static int ice_write_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u3=
2
> val)
>  {
> -	struct ice_sbq_msg_input phy_msg;
> +	struct ice_sbq_msg_input msg =3D {
> +		.dest_dev =3D ice_ptp_get_dest_dev_e825(hw, port),
> +		.opcode =3D ice_sbq_msg_wr,
> +		.msg_addr_low =3D lower_32_bits(addr),
> +		.msg_addr_high =3D upper_32_bits(addr),

This needs to be lower_16_bits(addr) and upper_16_bits(addr)

> +		.data =3D val
> +	};
>  	int err;
>=20
> -	phy_msg.opcode =3D ice_sbq_msg_wr;
> -
> -	phy_msg.msg_addr_low =3D lower_16_bits(addr);
> -	phy_msg.msg_addr_high =3D upper_16_bits(addr);
> -
> -	phy_msg.data =3D val;
> -	phy_msg.dest_dev =3D hw->ptp.phy.eth56g.phy_addr[phy_idx];
> -
> -	err =3D ice_sbq_rw_reg(hw, &phy_msg, ICE_AQ_FLAG_RD);
> -
> +	err =3D ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
>  	if (err)
>  		ice_debug(hw, ICE_DBG_PTP, "PTP failed to send msg to phy
> %d\n",
>  			  err);
> @@ -914,41 +929,36 @@ static int ice_write_phy_eth56g(struct ice_hw *hw,
> u8 phy_idx, u32 addr,
>  /**
>   * ice_read_phy_eth56g - Read a PHY port register
>   * @hw: pointer to the HW struct
> - * @phy_idx: PHY index
> + * @port: destination port
>   * @addr: PHY register address
>   * @val: Value to write
>   *
> - * Return: 0 on success, other error codes when failed to read from PHY
> + * Return: 0 on success, other error codes when failed to read from PHY.
>   */
> -static int ice_read_phy_eth56g(struct ice_hw *hw, u8 phy_idx, u32 addr,
> -			       u32 *val)
> +static int ice_read_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32
> *val)
>  {
> -	struct ice_sbq_msg_input phy_msg;
> +	struct ice_sbq_msg_input msg =3D {
> +		.dest_dev =3D ice_ptp_get_dest_dev_e825(hw, port),
> +		.opcode =3D ice_sbq_msg_rd,
> +		.msg_addr_low =3D lower_32_bits(addr),
> +		.msg_addr_high =3D upper_32_bits(addr)

Same as above, this needs to be lower_16_bits(addr) and upper_16_bits(addr)

> +	};
>  	int err;
>=20
> -	phy_msg.opcode =3D ice_sbq_msg_rd;
> -
> -	phy_msg.msg_addr_low =3D lower_16_bits(addr);
> -	phy_msg.msg_addr_high =3D upper_16_bits(addr);
> -
> -	phy_msg.data =3D 0;
> -	phy_msg.dest_dev =3D hw->ptp.phy.eth56g.phy_addr[phy_idx];
> -
> -	err =3D ice_sbq_rw_reg(hw, &phy_msg, ICE_AQ_FLAG_RD);
> -	if (err) {
> +	err =3D ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
> +	if (err)
>  		ice_debug(hw, ICE_DBG_PTP, "PTP failed to send msg to phy
> %d\n",
>  			  err);
> -		return err;
> -	}
> -
> -	*val =3D phy_msg.data;
> +	else
> +		*val =3D msg.data;
>=20
> -	return 0;
> +	return err;
>  }
>=20
>  /**
> - * ice_phy_res_address_eth56g - Calculate a PHY port register address
> - * @port: Port number to be written
> + * ice_phy_res_addr_eth56g - Calculate a PHY port register address
> + * @hw: pointer to the HW struct
> + * @lane: Lane number to be written
>   * @res_type: resource type (register/memory)
>   * @offset: Offset from PHY port register base
>   * @addr: The result address
> @@ -957,17 +967,18 @@ static int ice_read_phy_eth56g(struct ice_hw *hw,
> u8 phy_idx, u32 addr,
>   * * %0      - success
>   * * %EINVAL - invalid port number or resource type
>   */
> -static int ice_phy_res_address_eth56g(u8 port, enum eth56g_res_type
> res_type,
> -				      u32 offset, u32 *addr)
> +static int ice_phy_res_addr_eth56g(struct ice_hw *hw, u8 lane,
> +				   enum eth56g_res_type res_type, u32
> offset,
> +				   u32 *addr)
>  {
> -	u8 lane =3D port % ICE_PORTS_PER_QUAD;
> -	u8 phy =3D ICE_GET_QUAD_NUM(port);
> -
>  	if (res_type >=3D NUM_ETH56G_PHY_RES)
>  		return -EINVAL;
>=20
> -	*addr =3D eth56g_phy_res[res_type].base[phy] +
> +	/* Lanes 4..7 are in fact 0..3 on a second PHY */
> +	lane %=3D hw->ptp.ports_per_phy;
> +	*addr =3D eth56g_phy_res[res_type].base_addr +
>  		lane * eth56g_phy_res[res_type].step + offset;
> +
>  	return 0;
>  }
>=20
> @@ -987,19 +998,17 @@ static int ice_phy_res_address_eth56g(u8 port,
> enum eth56g_res_type res_type,
>  static int ice_write_port_eth56g(struct ice_hw *hw, u8 port, u32 offset,
>  				 u32 val, enum eth56g_res_type res_type)
>  {
> -	u8 phy_port =3D port % hw->ptp.ports_per_phy;
> -	u8 phy_idx =3D port / hw->ptp.ports_per_phy;
>  	u32 addr;
>  	int err;
>=20
>  	if (port >=3D hw->ptp.num_lports)
>  		return -EINVAL;
>=20
> -	err =3D ice_phy_res_address_eth56g(phy_port, res_type, offset,
> &addr);
> +	err =3D ice_phy_res_addr_eth56g(hw, port, res_type, offset, &addr);
>  	if (err)
>  		return err;
>=20
> -	return ice_write_phy_eth56g(hw, phy_idx, addr, val);
> +	return ice_write_phy_eth56g(hw, port, addr, val);
>  }
>=20
>  /**
> @@ -1018,19 +1027,17 @@ static int ice_write_port_eth56g(struct ice_hw
> *hw, u8 port, u32 offset,
>  static int ice_read_port_eth56g(struct ice_hw *hw, u8 port, u32 offset,
>  				u32 *val, enum eth56g_res_type res_type)
>  {
> -	u8 phy_port =3D port % hw->ptp.ports_per_phy;
> -	u8 phy_idx =3D port / hw->ptp.ports_per_phy;
>  	u32 addr;
>  	int err;
>=20
>  	if (port >=3D hw->ptp.num_lports)
>  		return -EINVAL;
>=20
> -	err =3D ice_phy_res_address_eth56g(phy_port, res_type, offset,
> &addr);
> +	err =3D ice_phy_res_addr_eth56g(hw, port, res_type, offset, &addr);
>  	if (err)
>  		return err;
>=20
> -	return ice_read_phy_eth56g(hw, phy_idx, addr, val);
> +	return ice_read_phy_eth56g(hw, port, addr, val);
>  }
>=20
>  /**
> @@ -1179,6 +1186,56 @@ static int ice_write_port_mem_eth56g(struct
> ice_hw *hw, u8 port, u16 offset,
>  	return ice_write_port_eth56g(hw, port, offset, val,
> ETH56G_PHY_MEM_PTP);
>  }
>=20
> +/**
> + * ice_write_quad_ptp_reg_eth56g - Write a PHY quad register
> + * @hw: pointer to the HW struct
> + * @offset: PHY register offset
> + * @port: Port number
> + * @val: Value to write
> + *
> + * Return:
> + * * %0     - success
> + * * %EIO  - invalid port number or resource type
> + * * %other - failed to write to PHY
> + */
> +static int ice_write_quad_ptp_reg_eth56g(struct ice_hw *hw, u8 port,
> +					 u32 offset, u32 val)
> +{
> +	u32 addr;
> +
> +	if (port >=3D hw->ptp.num_lports)
> +		return -EIO;
> +
> +	addr =3D eth56g_phy_res[ETH56G_PHY_REG_PTP].base_addr + offset;
> +
> +	return ice_write_phy_eth56g(hw, port, addr, val);
> +}
> +
> +/**
> + * ice_read_quad_ptp_reg_eth56g - Read a PHY quad register
> + * @hw: pointer to the HW struct
> + * @offset: PHY register offset
> + * @port: Port number
> + * @val: Value to read
> + *
> + * Return:
> + * * %0     - success
> + * * %EIO  - invalid port number or resource type
> + * * %other - failed to read from PHY
> + */
> +static int ice_read_quad_ptp_reg_eth56g(struct ice_hw *hw, u8 port,
> +					u32 offset, u32 *val)
> +{
> +	u32 addr;
> +
> +	if (port >=3D hw->ptp.num_lports)
> +		return -EIO;
> +
> +	addr =3D eth56g_phy_res[ETH56G_PHY_REG_PTP].base_addr + offset;
> +
> +	return ice_read_phy_eth56g(hw, port, addr, val);
> +}
> +
>  /**
>   * ice_is_64b_phy_reg_eth56g - Check if this is a 64bit PHY register
>   * @low_addr: the low address to check
> @@ -1897,7 +1954,6 @@ ice_phy_get_speed_eth56g(struct ice_link_status
> *li)
>   */
>  static int ice_phy_cfg_parpcs_eth56g(struct ice_hw *hw, u8 port)
>  {
> -	u8 port_blk =3D port & ~(ICE_PORTS_PER_QUAD - 1);
>  	u32 val;
>  	int err;
>=20
> @@ -1912,8 +1968,8 @@ static int ice_phy_cfg_parpcs_eth56g(struct ice_hw
> *hw, u8 port)
>  	switch (ice_phy_get_speed_eth56g(&hw->port_info-
> >phy.link_info)) {
>  	case ICE_ETH56G_LNK_SPD_1G:
>  	case ICE_ETH56G_LNK_SPD_2_5G:
> -		err =3D ice_read_ptp_reg_eth56g(hw, port_blk,
> -					      PHY_GPCS_CONFIG_REG0, &val);
> +		err =3D ice_read_quad_ptp_reg_eth56g(hw, port,
> +						   PHY_GPCS_CONFIG_REG0,
> &val);
>  		if (err) {
>  			ice_debug(hw, ICE_DBG_PTP, "Failed to read
> PHY_GPCS_CONFIG_REG0, status: %d",
>  				  err);
> @@ -1924,8 +1980,8 @@ static int ice_phy_cfg_parpcs_eth56g(struct ice_hw
> *hw, u8 port)
>  		val |=3D FIELD_PREP(PHY_GPCS_CONFIG_REG0_TX_THR_M,
>  				  ICE_ETH56G_NOMINAL_TX_THRESH);
>=20
> -		err =3D ice_write_ptp_reg_eth56g(hw, port_blk,
> -					       PHY_GPCS_CONFIG_REG0, val);
> +		err =3D ice_write_quad_ptp_reg_eth56g(hw, port,
> +						    PHY_GPCS_CONFIG_REG0,
> val);
>  		if (err) {
>  			ice_debug(hw, ICE_DBG_PTP, "Failed to write
> PHY_GPCS_CONFIG_REG0, status: %d",
>  				  err);
> @@ -1966,50 +2022,48 @@ static int ice_phy_cfg_parpcs_eth56g(struct
> ice_hw *hw, u8 port)
>   */
>  int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port)
>  {
> -	u8 port_blk =3D port & ~(ICE_PORTS_PER_QUAD - 1);
> -	u8 blk_port =3D port & (ICE_PORTS_PER_QUAD - 1);
> +	u8 quad_lane =3D port % ICE_PORTS_PER_QUAD;
> +	u32 addr, val, peer_delay;
>  	bool enable, sfd_ena;
> -	u32 val, peer_delay;
>  	int err;
>=20
>  	enable =3D hw->ptp.phy.eth56g.onestep_ena;
>  	peer_delay =3D hw->ptp.phy.eth56g.peer_delay;
>  	sfd_ena =3D hw->ptp.phy.eth56g.sfd_ena;
>=20
> -	/* PHY_PTP_1STEP_CONFIG */
> -	err =3D ice_read_ptp_reg_eth56g(hw, port_blk,
> PHY_PTP_1STEP_CONFIG, &val);
> +	addr =3D PHY_PTP_1STEP_CONFIG;
> +	err =3D ice_read_quad_ptp_reg_eth56g(hw, port, addr, &val);
>  	if (err)
>  		return err;
>=20
>  	if (enable)
> -		val |=3D blk_port;
> +		val |=3D BIT(quad_lane);
>  	else
> -		val &=3D ~blk_port;
> +		val &=3D ~BIT(quad_lane);
>=20
> -	val &=3D ~(PHY_PTP_1STEP_T1S_UP64_M |
> PHY_PTP_1STEP_T1S_DELTA_M);
> +	val &=3D ~PHY_PTP_1STEP_T1S_UP64_M;
> +	val &=3D ~PHY_PTP_1STEP_T1S_DELTA_M;
>=20
> -	err =3D ice_write_ptp_reg_eth56g(hw, port_blk,
> PHY_PTP_1STEP_CONFIG, val);
> +	err =3D ice_write_quad_ptp_reg_eth56g(hw, port, addr, val);
>  	if (err)
>  		return err;
>=20
> -	/* PHY_PTP_1STEP_PEER_DELAY */
> +	addr =3D PHY_PTP_1STEP_PEER_DELAY(quad_lane);
>  	val =3D FIELD_PREP(PHY_PTP_1STEP_PD_DELAY_M, peer_delay);
>  	if (peer_delay)
>  		val |=3D PHY_PTP_1STEP_PD_ADD_PD_M;
>  	val |=3D PHY_PTP_1STEP_PD_DLY_V_M;
> -	err =3D ice_write_ptp_reg_eth56g(hw, port_blk,
> -				       PHY_PTP_1STEP_PEER_DELAY(blk_port),
> val);
> +	err =3D ice_write_quad_ptp_reg_eth56g(hw, port, addr, val);
>  	if (err)
>  		return err;
>=20
>  	val &=3D ~PHY_PTP_1STEP_PD_DLY_V_M;
> -	err =3D ice_write_ptp_reg_eth56g(hw, port_blk,
> -				       PHY_PTP_1STEP_PEER_DELAY(blk_port),
> val);
> +	err =3D ice_write_quad_ptp_reg_eth56g(hw, port, addr, val);
>  	if (err)
>  		return err;
>=20
> -	/* PHY_MAC_XIF_MODE */
> -	err =3D ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE,
> &val);
> +	addr =3D PHY_MAC_XIF_MODE;
> +	err =3D ice_read_mac_reg_eth56g(hw, port, addr, &val);
>  	if (err)
>  		return err;
>=20
> @@ -2029,7 +2083,7 @@ int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw
> *hw, u8 port)
>  	       FIELD_PREP(PHY_MAC_XIF_TS_BIN_MODE_M, enable) |
>  	       FIELD_PREP(PHY_MAC_XIF_TS_SFD_ENA_M, sfd_ena);
>=20
> -	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE,
> val);
> +	return ice_write_mac_reg_eth56g(hw, port, addr, val);
>  }
>=20
>  /**
> @@ -2071,21 +2125,22 @@ static u32 ice_ptp_calc_bitslip_eth56g(struct
> ice_hw *hw, u8 port, u32 bs,
>  				       bool fc, bool rs,
>  				       enum ice_eth56g_link_spd spd)
>  {
> -	u8 port_offset =3D port & (ICE_PORTS_PER_QUAD - 1);
> -	u8 port_blk =3D port & ~(ICE_PORTS_PER_QUAD - 1);
>  	u32 bitslip;
>  	int err;
>=20
>  	if (!bs || rs)
>  		return 0;
>=20
> -	if (spd =3D=3D ICE_ETH56G_LNK_SPD_1G || spd =3D=3D
> ICE_ETH56G_LNK_SPD_2_5G)
> +	if (spd =3D=3D ICE_ETH56G_LNK_SPD_1G || spd =3D=3D
> ICE_ETH56G_LNK_SPD_2_5G) {
>  		err =3D ice_read_gpcs_reg_eth56g(hw, port,
> PHY_GPCS_BITSLIP,
>  					       &bitslip);
> -	else
> -		err =3D ice_read_ptp_reg_eth56g(hw, port_blk,
> -
> PHY_REG_SD_BIT_SLIP(port_offset),
> -					      &bitslip);
> +	} else {
> +		u8 quad_lane =3D port % ICE_PORTS_PER_QUAD;
> +		u32 addr;
> +
> +		addr =3D PHY_REG_SD_BIT_SLIP(quad_lane);
> +		err =3D ice_read_quad_ptp_reg_eth56g(hw, port, addr,
> &bitslip);
> +	}
>  	if (err)
>  		return 0;
>=20
> @@ -2554,9 +2609,9 @@ static void ice_sb_access_ena_eth56g(struct
> ice_hw *hw, bool enable)
>  	u32 val =3D rd32(hw, PF_SB_REM_DEV_CTL);
>=20
>  	if (enable)
> -		val |=3D BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1);
> +		val |=3D BIT(phy_0) | BIT(cgu) | BIT(phy_0_peer);
>  	else
> -		val &=3D ~(BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1));
> +		val &=3D ~(BIT(phy_0) | BIT(cgu) | BIT(phy_0_peer));
>=20
>  	wr32(hw, PF_SB_REM_DEV_CTL, val);
>  }
> @@ -2680,8 +2735,6 @@ static void ice_ptp_init_phy_e825(struct ice_hw
> *hw)
>  	params->onestep_ena =3D false;
>  	params->peer_delay =3D 0;
>  	params->sfd_ena =3D false;
> -	params->phy_addr[0] =3D eth56g_phy_0;
> -	params->phy_addr[1] =3D eth56g_phy_1;
>  	params->num_phys =3D 2;
>  	ptp->ports_per_phy =3D 4;
>  	ptp->num_lports =3D params->num_phys * ptp->ports_per_phy;
> @@ -2710,10 +2763,9 @@ static void ice_fill_phy_msg_e82x(struct ice_hw
> *hw,
>  				  struct ice_sbq_msg_input *msg, u8 port,
>  				  u16 offset)
>  {
> -	int phy_port, phy, quadtype;
> +	int phy_port, quadtype;
>=20
>  	phy_port =3D port % hw->ptp.ports_per_phy;
> -	phy =3D port / hw->ptp.ports_per_phy;
>  	quadtype =3D ICE_GET_QUAD_NUM(port) %
>  		   ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy);
>=20
> @@ -2725,12 +2777,7 @@ static void ice_fill_phy_msg_e82x(struct ice_hw
> *hw,
>  		msg->msg_addr_high =3D P_Q1_H(P_4_BASE + offset,
> phy_port);
>  	}
>=20
> -	if (phy =3D=3D 0)
> -		msg->dest_dev =3D rmn_0;
> -	else if (phy =3D=3D 1)
> -		msg->dest_dev =3D rmn_1;
> -	else
> -		msg->dest_dev =3D rmn_2;
> +	msg->dest_dev =3D phy_0;
>  }
>=20
>  /**
> @@ -3053,7 +3100,7 @@ static int ice_fill_quad_msg_e82x(struct ice_hw
> *hw,
>  	if (quad >=3D ICE_GET_QUAD_NUM(hw->ptp.num_lports))
>  		return -EINVAL;
>=20
> -	msg->dest_dev =3D rmn_0;
> +	msg->dest_dev =3D phy_0;
>=20
>  	if (!(quad % ICE_GET_QUAD_NUM(hw->ptp.ports_per_phy)))
>  		addr =3D Q_0_BASE + offset;
> @@ -4772,7 +4819,7 @@ static int ice_read_phy_reg_e810(struct ice_hw
> *hw, u32 addr, u32 *val)
>  	msg.msg_addr_low =3D lower_16_bits(addr);
>  	msg.msg_addr_high =3D upper_16_bits(addr);
>  	msg.opcode =3D ice_sbq_msg_rd;
> -	msg.dest_dev =3D rmn_0;
> +	msg.dest_dev =3D phy_0;
>=20
>  	err =3D ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
>  	if (err) {
> @@ -4802,7 +4849,7 @@ static int ice_write_phy_reg_e810(struct ice_hw
> *hw, u32 addr, u32 val)
>  	msg.msg_addr_low =3D lower_16_bits(addr);
>  	msg.msg_addr_high =3D upper_16_bits(addr);
>  	msg.opcode =3D ice_sbq_msg_wr;
> -	msg.dest_dev =3D rmn_0;
> +	msg.dest_dev =3D phy_0;
>  	msg.data =3D val;
>=20
>  	err =3D ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 35141198f261..d913ed00c730 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -65,14 +65,14 @@ enum ice_eth56g_link_spd {
>=20
>  /**
>   * struct ice_phy_reg_info_eth56g - ETH56G PHY register parameters
> - * @base: base address for each PHY block
> + * @base_addr: base address for each PHY block
>   * @step: step between PHY lanes
>   *
>   * Characteristic information for the various PHY register parameters in=
 the
>   * ETH56G devices
>   */
>  struct ice_phy_reg_info_eth56g {
> -	u32 base[NUM_ETH56G_PHY_RES];
> +	u32 base_addr;
>  	u32 step;
>  };
>=20
> @@ -773,37 +773,20 @@ static inline u64 ice_get_base_incval(struct ice_hw
> *hw)
>  #define PHY_MAC_XIF_TS_SFD_ENA_M	ICE_M(0x1, 20)
>  #define PHY_MAC_XIF_GMII_TS_SEL_M	ICE_M(0x1, 21)
>=20
> -/* GPCS config register */
> -#define PHY_GPCS_CONFIG_REG0		0x268
> -#define PHY_GPCS_CONFIG_REG0_TX_THR_M	ICE_M(0xF, 24)
> -#define PHY_GPCS_BITSLIP		0x5C
> -
>  #define PHY_TS_INT_CONFIG_THRESHOLD_M	ICE_M(0x3F, 0)
>  #define PHY_TS_INT_CONFIG_ENA_M		BIT(6)
>=20
> -/* 1-step PTP config */
> -#define PHY_PTP_1STEP_CONFIG		0x270
> -#define PHY_PTP_1STEP_T1S_UP64_M	ICE_M(0xF, 4)
> -#define PHY_PTP_1STEP_T1S_DELTA_M	ICE_M(0xF, 8)
> -#define PHY_PTP_1STEP_PEER_DELAY(_port)	(0x274 + 4 * (_port))
> -#define PHY_PTP_1STEP_PD_ADD_PD_M	ICE_M(0x1, 0)
> -#define PHY_PTP_1STEP_PD_DELAY_M	ICE_M(0x3fffffff, 1)
> -#define PHY_PTP_1STEP_PD_DLY_V_M	ICE_M(0x1, 31)
> -
>  /* Macros to derive offsets for TimeStampLow and TimeStampHigh */
>  #define PHY_TSTAMP_L(x) (((x) * 8) + 0)
>  #define PHY_TSTAMP_U(x) (((x) * 8) + 4)
>=20
> -#define PHY_REG_REVISION		0x85000
> -
>  #define PHY_REG_DESKEW_0		0x94
>  #define PHY_REG_DESKEW_0_RLEVEL		GENMASK(6, 0)
>  #define PHY_REG_DESKEW_0_RLEVEL_FRAC	GENMASK(9, 7)
>  #define PHY_REG_DESKEW_0_RLEVEL_FRAC_W	3
>  #define PHY_REG_DESKEW_0_VALID		GENMASK(10, 10)
>=20
> -#define PHY_REG_GPCS_BITSLIP		0x5C
> -#define PHY_REG_SD_BIT_SLIP(_port_offset)	(0x29C + 4 * (_port_offset))
> +#define PHY_REG_REVISION		0x85000
>  #define PHY_REVISION_ETH56G		0x10200
>  #define PHY_VENDOR_TXLANE_THRESH	0x2000C
>=20
> @@ -822,7 +805,21 @@ static inline u64 ice_get_base_incval(struct ice_hw
> *hw)
>  #define PHY_MAC_BLOCKTIME		0x50
>  #define PHY_MAC_MARKERTIME		0x54
>  #define PHY_MAC_TX_OFFSET		0x58
> +#define PHY_GPCS_BITSLIP		0x5C
>=20
>  #define PHY_PTP_INT_STATUS		0x7FD140
>=20
> +/* ETH56G registers shared per quad */
> +/* GPCS config register */
> +#define PHY_GPCS_CONFIG_REG0		0x268
> +#define PHY_GPCS_CONFIG_REG0_TX_THR_M	GENMASK(27, 24)
> +/* 1-step PTP config */
> +#define PHY_PTP_1STEP_CONFIG		0x270
> +#define PHY_PTP_1STEP_T1S_UP64_M	GENMASK(7, 4)
> +#define PHY_PTP_1STEP_T1S_DELTA_M	GENMASK(11, 8)
> +#define PHY_PTP_1STEP_PEER_DELAY(_quad_lane)	(0x274 + 4 *
> (_quad_lane))
> +#define PHY_PTP_1STEP_PD_ADD_PD_M	BIT(0)
> +#define PHY_PTP_1STEP_PD_DELAY_M	GENMASK(30, 1)
> +#define PHY_PTP_1STEP_PD_DLY_V_M	BIT(31)
> +#define PHY_REG_SD_BIT_SLIP(_quad_lane)	(0x29C + 4 * (_quad_lane))
>  #endif /* _ICE_PTP_HW_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
> index 3b0054faf70c..f362607ece35 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
> @@ -47,12 +47,9 @@ struct ice_sbq_evt_desc {
>  };
>=20
>  enum ice_sbq_msg_dev {
> -	eth56g_phy_0	=3D 0x02,
> -	rmn_0		=3D 0x02,
> -	rmn_1		=3D 0x03,
> -	rmn_2		=3D 0x04,
> +	phy_0		=3D 0x02,
>  	cgu		=3D 0x06,
> -	eth56g_phy_1	=3D 0x0D,
> +	phy_0_peer	=3D 0x0D,
>  };
>=20
>  enum ice_sbq_msg_opcode {
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> index 45768796691f..479227bdff75 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -850,7 +850,6 @@ struct ice_mbx_data {
>=20
>  struct ice_eth56g_params {
>  	u8 num_phys;
> -	u8 phy_addr[2];
>  	bool onestep_ena;
>  	bool sfd_ena;
>  	u32 peer_delay;
> --
> 2.46.2

