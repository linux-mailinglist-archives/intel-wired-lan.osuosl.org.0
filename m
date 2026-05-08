Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGX2GNbl/WkPkgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:32:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B26B14F71B6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:32:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A50341B9C;
	Fri,  8 May 2026 13:32:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8woLzSUKDMEs; Fri,  8 May 2026 13:32:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B45C41B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778247123;
	bh=N4UhrMmJ2jBbcmXkniIRIK8IWxqAg3kCHcNpJggexn8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2pscl6d2YzLWVPlRohYm+QifcI0rwCjdV3j0OrtivhwRCTjArYLX4sRmuzVXFYXCz
	 EajblJU9KmiQ4bDgLymWJLksF3viYzoDs2UIVwRNRKd3TnKIY9xwOLVQAALiUzUaM5
	 cZnCUt1tWfq2PE7l/dUH1LiCmQ54uYscm06fWVfafTiEw7AnC1QQRTyt+XCeo+jdh+
	 U2KZS1w/T5MI9tCxhHM3HXXxAJVp4WzPY6b/PpoX5uzj3B8SEXhrkl0dhevT1Cpk0P
	 sMr8MKamKPlOX1Sp7Xvh7+EISG+7cnmAT6MAmHaoF59DSUAO8M0Eb6PAUWAndh9W7e
	 tRfNd8HeioGqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B45C41B9A;
	Fri,  8 May 2026 13:32:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F640317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40BDA40C1E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:32:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LZ7LfMdvN5CM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 13:32:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 74765406B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74765406B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74765406B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:32:01 +0000 (UTC)
X-CSE-ConnectionGUID: uahMLOtCSqqJKIfQ/Dwj7g==
X-CSE-MsgGUID: BYaS/wyKQ+u94qocP56X4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96783869"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96783869"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:32:01 -0700
X-CSE-ConnectionGUID: pqutQ20EQQCAZEojFmwZ/A==
X-CSE-MsgGUID: zNR+zP17TQmeLCWyHuXJng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="234108651"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:32:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:31:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 06:31:59 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:31:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bmru4lTvFPg/RJe0C1qCnl2OVe0mwlG6LESpMSTGulZaVJSvYX8fCFTDYOq3QQjUSkqZriYpe8ir+/v5lnL9DEFSAN6l+rwDQlRtW/JyK0TlcJ4aArBjBPrmKZ6V+F+/c9mBZe7c7mWHpJ7kjAE936uEuEZXKFZHwWhCRExgGbiEbD7FGEx/I0OzmUQWtI4ako9jQasmSmqkbqatw+WjOhr0hArFbHp8KMnTnBzSAO5Dr6V1Zxl6g2cqlnM5bNk9QqMYRz+0FlY1Yz7+f0N/RanHol3bPcpn/klBg93o5o9QJ2gXiFxDYB7QAGTWI8eIlBlrZ6Fc8LQOPoF4YkkUfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N4UhrMmJ2jBbcmXkniIRIK8IWxqAg3kCHcNpJggexn8=;
 b=nGYr+5oxmYzYuRLJ9D1eHw3upYb0evUdX7nCUZ/KXr/MRmxOqAQLg3NuVAERDy+h2TX6PcLSmtTwOPY6RNtXkkQMNX92dIoUDRNe3gpAtB+af9lROeFMTRyzV1Kmn7KvLkWdP3MrTMAqYOs50V/FT2+JhPxRTZDcmoohCMAVRsyvKLJ6vs7jCQ/qrUmhSlKybX1TvtUuybqslQNA+Vc2rEtM4BUSCrFS6vYCB9CJfShRYB/vRDV3xdHYlCRRnk9Mbmb9j+OVvdYqJYXe1LGMfLwDfbFxRNC6UulHJMwcM2qLU80Vkl1IgijJyOrIaDnjtGGxorRE7ECS2f+OosvoFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6545.namprd11.prod.outlook.com (2603:10b6:510:213::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.18; Fri, 8 May
 2026 13:31:54 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 13:31:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Schmidt, Michal" <mschmidt@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, "Richardson, Bruce"
 <bruce.richardson@intel.com>, "Medvedkin, Vladimir"
 <vladimir.medvedkin@intel.com>, "Connolly, Padraig J"
 <padraig.j.connolly@intel.com>, "S, Ananth" <ananth.s@intel.com>, "Miskell,
 Timothy" <timothy.miskell@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, "Tariq
 Toukan" <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>
Thread-Topic: [PATCH iwl-next v1 03/15] ice: simplify ice_vc_dis_qs_msg() a
 little
Thread-Index: AQHc3uqTZU59iluE1kmrax+P4Qi0VrYEICWw
Date: Fri, 8 May 2026 13:31:54 +0000
Message-ID: <IA3PR11MB89860D580281C5FBD7B05F88E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
 <20260508124208.11622-4-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260508124208.11622-4-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6545:EE_
x-ms-office365-filtering-correlation-id: 418a6a4f-ca9f-4241-448b-08dead062b4f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: O7I6x9vf12XQqEoAU0U8ipg4mDOtPLt3HYj61oyxTHjuGU5j/ukbI4HSqQBb9D5ThC1xC2NpSQmo9tp5LMyt9E8lBD/lONo9M9i0fh3l4CTsmlX3GE2xcYXG0fDpZ3m4rIBc6ZyURngTpVcpDV5iplUdLErfo7oIwK7rVThK/ByU0RNHbFIwX4oe0MJtPhnAwGXpdwvV4bfJKd617NbzZ765hiNYPAx58Ae3vn7gq43ResWWHXpjf9Q3DEqcVf5IhPTZWkqyOSfEmeCxjf+bJkwTX4SRkVWFYleLOj7AdnwbKgU18LuYTmhIMoUK4SOA7YAdqPP6zp6KU2q8ygkACbQab8iRKuL8tcHwleEkOi9IWFb6d4pAVPTY4ot8Vjz8TAbb2JT2+TMIKh04s1+Qh9cOAQwZwBcHYvjokvDFxuv4neyfMywJZVtpbmzAXsFef9xtasV31NPawOO5erHRkLFRhl2pM3kyHP7E4bJd6xTV0gZh+6PFpP0/LD25El+95goKJd07HbXeLN/ccsFdWxJaOvFaQE5XutIFgg7kqEJUBgpvnwHrfAe7qNr1O0PSMiDafuPP4oJDBgDUx2oaD72Gz7h6Ztm+zZJhwdWEq8BbTNLNk2vyBwGR4W8d3GURrnZGwKXW6ntahZNFn7O+4Q67FIYeLlh3anZ7V6xWhPTiKdwQz/MtFZChBkxxvmT9SbHIK7LSgk3DAHBatoIAK52+mCVC/dCHUhJnnD5cCDImKnKchVTJKhe6dzlRVM1n
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sjKOzgxfXq5k5V/yIzLc1cizKJK5UXbrxhwalm5y9CsVcpZEfXyso97E3N3q?=
 =?us-ascii?Q?+4lGqRV+h6lP3lo+jO1wazQfeaFP6POuyWCMaN+LiXgVR5a2hse1nhOO0fN5?=
 =?us-ascii?Q?3BBfOpQBgaqWnRjdX+Y34vtgRqOR8hX9tk/ToM/3TwiAAFRc2WLBKiNjZAgn?=
 =?us-ascii?Q?TfKuW1D1sYz8tDavy5v1QTTQhG7WdIYpmyhQQndUNDvF2AvnFmB6YzneURbD?=
 =?us-ascii?Q?HmIsR8oEuxPl9vzozoiGX8c5+zx2gcFuUGq6EjajiNrO/9nTzfFbum0FXen8?=
 =?us-ascii?Q?bo130XTagvM7KmUFULYGbuij5rKkiCrRL5y9HUX5rFnkN3k8QDqpuVHu6JV6?=
 =?us-ascii?Q?m0n2Kdx6+m/dgT3nXufZcqisNr4GbjiiCGcP7bms7KIrgC4OT2kTU5v1HIpn?=
 =?us-ascii?Q?F/3GB4/gDR+VAOcT/0g/1YYSZLqGZ0yFZAJNwMYV6KnKbXW11s7Svw6ez5HB?=
 =?us-ascii?Q?Y1tyurXI+aITS+gvfI+jQUO7xVTYgCP3LQuo0/CeiO0ue1TSOBNFa9V3hKZe?=
 =?us-ascii?Q?cfH/dQesS+VND1FoNuVR8AvXwHsghFZtZCc+UQkoV6Tq7/VZqByj+MLCGw7U?=
 =?us-ascii?Q?kshAXB/M1bcfqVADRJ3IyQypf6OhrJC0zrKc+1JVwzdi0TF9QwGoqs4TED+L?=
 =?us-ascii?Q?aZj/Bydxo1fOVktqJNV4KABfEQ5mJoCb8qUznb/bEiNlDVXXwefXBXNiVW6Z?=
 =?us-ascii?Q?Sa4gEEQ+ZM5hg56szWZ6zqREHixS32SeRrL2eyW9QXtPoxcOO8jmuQg4KuGn?=
 =?us-ascii?Q?1St7RFahSBxxNkoLZsvy81B07DAF+AJAr7h2RyKX3uQuNcHtYz+Gzc3A5XJu?=
 =?us-ascii?Q?+pN1cQtgLZs/UC+LnEjfffasGeHJFb5ARyvrg8AdJMqtQmlFss+5KF3dEaDV?=
 =?us-ascii?Q?kWESK75M49lay8Wu4+jXN/5b9VKXR5Yf56xxskNemE71dW0PgBkGbxT5YcTA?=
 =?us-ascii?Q?5cvz+ntUoqW9viTEwptrdFacjb4vt6L8ab7P/OJVRryKeJMehgE7OZXpETs2?=
 =?us-ascii?Q?mjlvfgBIbMiqx6oPG6rRn/2DfqLcraktPtSkBbDx2kQp9yIQdeVVWwYHHiqK?=
 =?us-ascii?Q?NoHQ40fWUgPzEZpvVurlY9i6CS3U7I7+YbiQJFPDY6uV1nenQgXovTP/CU/z?=
 =?us-ascii?Q?X0NIOD6NyNIeY6oHmACGSwTXuM8QsjNlSCZwY6ATL823VZOFN3Cvxih8qOum?=
 =?us-ascii?Q?kMmpQkzAgbdr7Mel81Hn/VKTaxXRArCgDXIRKXTH6VAyAMJjP+rSzPSq3iwS?=
 =?us-ascii?Q?L5W8LBLOoIDSm5Z2Mztp8iooYt+T+FtfPlXtAtZqm5WZ5Fek3Q5IiJDaatSj?=
 =?us-ascii?Q?8LpnwBVWVHhoSoZ20i7eXN13np0AW82ZMjBxaq6brGNk17kFI5wg/WdwLFlV?=
 =?us-ascii?Q?QpwnP5p/1+9RWNMtbVfx6u/n6VC7/OCCl5r+JGvIULLeVCUml5ClnoBMumMw?=
 =?us-ascii?Q?Ep3cbqdOQkrgG/TT2/Ynecgr9c1bdfMpuuu049sC/MzVsUynNDpOCApJ+Ee0?=
 =?us-ascii?Q?Gh+/Ja4rxq/xz2OmJBFeYSXjrmF8yW2AYJn6+mh6FjM2F7RmN4vLr3SoQans?=
 =?us-ascii?Q?jFwfi390rnLA5bi/p45YuIOPJer73XCMm8DXU3XwHs5Z5wDEVUIE7JIujzZY?=
 =?us-ascii?Q?h9Zfsj0EZ2fd6cIgwMMMNCjjClpwinzTCBHV+gNbZ357ZOY4PpERE3/bKjKs?=
 =?us-ascii?Q?IhAu5bIunMlwDmYWS8V4POTkbGFV2cNXBbrFgtqV6y0bZ/8LMPkVCyTogENp?=
 =?us-ascii?Q?Mvi9qYZoXfqhvnSO0evwRPeAQBue6DU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rI5R96lJ5Bnl8GllciBz+37aa4koJLfRciN14G31ybAsD2iV5DB6cKUtFFOGnhcoxfEfhKL1HRDeToCAYQGDClgFFyXrbB4kXK+sqX5Q4OASFDCcpTpFgDb2w+CF/NkOFJ7GHSh3Lm25IGnCMnnQsueHodeufRwzU5mLhCmtRuShaXoC2jkCmD87r8SEVT8ugX5ttwNg2h2r7A096l/oRNrCf+ZlM8G4fYm2rO6xlDnm0EPoB8P3AFifzS0T1BQW1dygEeOscB6rvQxsZKn+RQEONSsogAqaehpwoPdxCfNbPNyPAdGC8sU2CL41ki2x2djEkuNAk/RFrumGcgqWRw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 418a6a4f-ca9f-4241-448b-08dead062b4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 13:31:54.1127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BSlXQfEwuIGZ7hJKSdhhwDltmCRbG2RaVs2lDyIhi2oFPVzjInRWgawSpFbqt0UGrxrcd50b9ichdU9a4lo5jQtqZShVmqTk/Jah6Wzgp2U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778247122; x=1809783122;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1zd5VtAElPk6odNSMHUcyKjQtKUdayWIR3PxBN8XXNA=;
 b=Bhp5EPfpE7dMxR1tawCx1SErvH8Ip79i3xlfpKUNjsBc8h8Nz0oyheNL
 8+SVOUrbl4IJxGFP4FVfOMmfO/241yzUQY7MGojO8L7vihssKPLycLMAN
 YcPSU9bPzlOPYRdsHWVBule/oOVZ5DFcR2+oraeTNOd+BUvXshA4ug/HN
 vUAVLPr8KKCUUfK0A+9FVW4mkFYw1GdTDe0pYoaFyNWhHfVwKK2Ex8BiP
 kEFCxZDlUsbwXBJ58brMq8/NXo1a+n31YuAYu8+EePQT4Ie2YY75C9Ihy
 Lydw6zf8YboG4Y9LfhEYnUyhM5XNqIZDElUYlrDEeeRBVT8uvaj0YKiLY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bhp5EPfp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 03/15] ice: simplify
 ice_vc_dis_qs_msg() a little
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
X-Rspamd-Queue-Id: B26B14F71B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:kuba@kernel.org,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:bruce.richardson@intel.com,m:vladimir.medvedkin@intel.com,m:padraig.j.connolly@intel.com,m:ananth.s@intel.com,m:timothy.miskell@intel.com,m:jacob.e.keller@intel.com,m:lukasz.czapnik@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Friday, May 8, 2026 2:42 PM
> To: intel-wired-lan@lists.osuosl.org; Schmidt, Michal
> <mschmidt@redhat.com>; Jakub Kicinski <kuba@kernel.org>; Jiri Pirko
> <jiri@resnulli.us>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Richardson, Bruce
> <bruce.richardson@intel.com>; Medvedkin, Vladimir
> <vladimir.medvedkin@intel.com>; Connolly, Padraig J
> <padraig.j.connolly@intel.com>; S, Ananth <ananth.s@intel.com>;
> Miskell, Timothy <timothy.miskell@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Czapnik, Lukasz
> <lukasz.czapnik@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Saeed Mahameed
> <saeedm@nvidia.com>; Leon Romanovsky <leon@kernel.org>; Tariq Toukan
> <tariqt@nvidia.com>; Mark Bloch <mbloch@nvidia.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [PATCH iwl-next v1 03/15] ice: simplify ice_vc_dis_qs_msg() a
> little
>=20
> Remove special case logic for disabling all queues in
> ice_vc_dis_qs_msg().
> There were no actual speedup from it, the only difference was in saved
> bitmap checks, but the HW operations take the majority of time anyway.
> ice_vsi_stop_all_rx_rings() used (in the removed code) loops over
> rings anyway.
>=20
> With a message added just before removed code, in the "remove VF"
> scenario there were no noticeable difference with the "speedup" and
> without, and it takes ~0.06s on my machine from this point to the
> whole iavf removed, so really no big deal anyway.
>=20
> Next commit would otherwise need to complicate the "speedup possible"
> check, so it's another reason to simplify here.
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/virt/queues.c | 15 +++------------
>  1 file changed, 3 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c
> b/drivers/net/ethernet/intel/ice/virt/queues.c
> index 31be2f76181c..6e4ec681fd07 100644
> --- a/drivers/net/ethernet/intel/ice/virt/queues.c
> +++ b/drivers/net/ethernet/intel/ice/virt/queues.c
> @@ -357,6 +357,8 @@ int ice_vf_vsi_dis_single_txq(struct ice_vf *vf,
> struct ice_vsi *vsi, u16 q_id)
>   * @msg: pointer to the msg buffer
>   *
>   * called from the VF to disable all or specific queue(s)
> + *
> + * Return: exit code of sending the virtchnl response.
>   */
>  int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)  { @@ -406,18
> +408,7 @@ int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
>  	}
>=20
>  	q_map =3D vqs->rx_queues;
> -	/* speed up Rx queue disable by batching them if possible */
> -	if (q_map &&
> -	    bitmap_equal(&q_map, vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF)) {
> -		if (ice_vsi_stop_all_rx_rings(vsi)) {
> -			dev_err(ice_pf_to_dev(vsi->back), "Failed to stop
> all Rx rings on VSI %d\n",
> -				vsi->vsi_num);
> -			v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> -			goto error_param;
> -		}
> -
> -		bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
> -	} else if (q_map) {
> +	if (q_map) {
>  		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF)
> {
>  			if (!ice_vc_isvalid_q_id(vsi, vf_q_id)) {
>  				v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
