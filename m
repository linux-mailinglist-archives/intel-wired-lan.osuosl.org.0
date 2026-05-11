Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDk1KdiRAWrTeQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 10:22:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC15150A04D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 10:22:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4FA18149E;
	Mon, 11 May 2026 08:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4d9OAKK_y3Rs; Mon, 11 May 2026 08:22:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08F8C814A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778487764;
	bh=MhX75Ghg12vw1M9EteIgsiDjdWfH1akdsRRP39tOeNI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d+Bth+yfcQAP3A4toiMzFQdxoOnytxQ3SQUi/Tx8TgcvRhTFAYywnZTHL74qvXCE/
	 ihHbtfveZR1vV4uwKhOTChAXWVKOhZSj7ED9TmSES68w0cL0TNAnJNpdPVpWUwARtB
	 5VpNffUNrGsMy01qX+qP2sU9GXsHhI/q2klrGUsD/8SBE21QfAOTY4F3zft9tGtFPG
	 Rwr29yfkEp5gWScWgWyRnUeGAv0NrIPOZOsya3nvyvistDEGhMSK6J4vzg0ndG0dIv
	 A+SRprem7LOn9jmNxjnwALvm7CSak472SQWzsIJrg7JEMp9bH1VnJxmstn93FYrpSk
	 QJAvSoiIPhyNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08F8C814A9;
	Mon, 11 May 2026 08:22:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0564D173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DFB93416B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OmiigjM7wYDf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 08:22:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 163A5416AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 163A5416AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 163A5416AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 08:22:41 +0000 (UTC)
X-CSE-ConnectionGUID: rxubY7r7SsCikDwiW7ddUA==
X-CSE-MsgGUID: wgLmxpoASWOAl07JHgqDgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="66900246"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="66900246"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:22:41 -0700
X-CSE-ConnectionGUID: yrh0309UQQShPeGJeWxhhQ==
X-CSE-MsgGUID: Pxd4RH/qQ069d4BDYFmm2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="242356616"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:22:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:22:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 01:22:40 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:22:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XtCDWFdOGgcmRmgP9U8PpvCAXaglJOA48hBbOchsaZx2kzd6E9FOR3uTEWom5b6wBUJfSh1n4sgcIe8RwZpF1Kr5NLuIaZ8iuF8JrX86VjRN9z9Z6swX5zMDcvLnLS4qAiZHrS7WskSAKDcVowtXU8mCKakh4k3smfEJU5eHNXiK3Qi50FFe2HNR20DOCHETzo89hFC5wg+hFCEvm6O+uvAOqo85rcUqYLgd8tGCqPq/mTmXhSAt8PbSAaOc6/fi9OaIm2plQDgSVfhGBBovtfKZ4Dek3N1VfNCz5JVJRVIBT94CgPD2cprdmiD6bgqBrHww8KV2PfEUZ9ViLaGhhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MhX75Ghg12vw1M9EteIgsiDjdWfH1akdsRRP39tOeNI=;
 b=Qs4iDV+7lpS77P7Bj1G4e9XjAos2wNrLC645Sv3xRCnchNGFUxS4Pjak4tUX8zoxaaMpo1kBWBgWmIvsjOJ5KvgE1znx+lXuvEUA5AqdzuMIMxGXuI5z4h0t9O5bu/mfI6W1tSzd7gNMoT9IYfLUvwItLlKMmC8lSHOy77zONBwZt11zvjWQGheuQrMESqlHeHXJX1UL1+z2wuRo+2Mg631M4QdOzSSiX4UTx8zk0K1Mh1yGRSgqGfXSFdvQwn5Zz1XYe5U/Qnx5u5pPUyXsMiCJo8EWjEsefg+WzRbT/pWkeniy6mQpxcNN4F+0DTHUAQQAio9ZMCfBctcb07BahQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH2PR11MB8816.namprd11.prod.outlook.com (2603:10b6:610:285::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 08:22:38 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.20.9891.019; Mon, 11 May 2026
 08:22:38 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Avinash Dayanand <avinash.dayanand@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 4/5] iavf: fix TC boundary
 check in iavf_handle_tclass
Thread-Index: AQHcyxeIPoWlHT7n5EGSuqCEvdqtP7XgJmYAgCiB/TA=
Date: Mon, 11 May 2026 08:22:38 +0000
Message-ID: <IA3PR11MB89854F2BE90AB13EFEA4BB808F382@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
 <20260413073035.4082204-5-aleksandr.loktionov@intel.com>
 <20260415134642.GJ772670@horms.kernel.org>
In-Reply-To: <20260415134642.GJ772670@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH2PR11MB8816:EE_
x-ms-office365-filtering-correlation-id: 4b495dd1-66a5-48c3-ab09-08deaf3676c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099003;
x-microsoft-antispam-message-info: U+rFPaqG0ZzQLaM9UFHO/7mYEKxy5vPHukzJeKJfAPjdd8DBqffLtrDGS2m4RxKo3HcHnQ/nW4G2Sdx4a67Ycu6aM+Nv+ERrJyLtMXVZZNrX4xzPg93BWMM09Bfh0CcVQymjez+PFbebIwzsruIH1PNEHx9V+Yb5973v3cPzH2bz2B1JjhjFHb+rgAJsHQ4EvfuS0X8RQKvmBI1r4GkqST+OhHd/UwlvMyh+fwec4PlBHDXnTVhnas90naluzJOUbCgy3ToI8CUWQbgBfAa7YUF9eD6GSJb3YYQrhObi73T/9UXhW+BtoUWdRRO0p9AGw1WYyTTWmMdORfbXAu4BbrU7nMzgOT+AsLYK21xMJZeqrpMvAJDDscUX1cRIJgUklftK6PmLWh2mrt2I4Pznb5CDch6d0qBTLmcMMdIV8Yrf02/C/OIpIGGgCxVuU/soaCFaamzc40hzlM5uBlQw3SXDNMBvEuE1i9EkwyiraWtvXMOcuLhaXqZkytJ1OCoMUHo52x+RnzUdC1FpCG3cURm0KwR2HILSYhN8r3iMGLtXt0is3eFP20tVZkv6zlkP9bUpP1fejqSF1mdCWW6EhTi5t4B64iURIk1C1Dfz3nqv19IGfMWbZppxkgr+FcRnhsTu9qkjIyY5M/ZguUOgMldjwSgzRg+4R+0T+Znq7Xlcf1PronPpxK6eSCg/tOetCVRRJKJZ9UW6MUGhDP/l/u+Upr/+MsY5bczTaDTrvPzh/5mdLqK+UBQWAiViqkST
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZU/TrxcrULZy2Q7uTcWZVMZinJ6XJex8qLefcxU6/Usg+IU7ui/zBNhQa4Fr?=
 =?us-ascii?Q?Rk2zOo74UZyQpulkZHtiMRo2qUkJFu+jEH+F/ZzsHwzoOOxOH9HkLFXLrUqz?=
 =?us-ascii?Q?a6kq/ZjjWpjK/Dx4BS1am4EvnD7VeY74pg5fiWuTetkwNqxY3uPYCmNBTxEw?=
 =?us-ascii?Q?fv/6D3ua+NZzDlXV+jZ7JsdG67NySRgAA75zpRPV7SwbGjh7TG82saUicOTN?=
 =?us-ascii?Q?+zYQxUkbv99CWYP/nyMX9KQ6eh+f6r+8PeVoL/gp2gyZJAtVOw6o1YpheZ7/?=
 =?us-ascii?Q?qM2szHXxmiYxvW+EeRz93qUSu4QciZ7qQM7eGvqPTMOzBn2xoCb6VkoCPNAP?=
 =?us-ascii?Q?QBSFvSGRpmj2Zc+b1GZrp5mg8eJZStx80V2+vMEM6aS3Vaugb2gTg44Nobql?=
 =?us-ascii?Q?N6tPL0cNJt8otWrR/HDr9AdsNf0YPVRtHUtWBYpv4lOcmZExvJSJwCdqH3wt?=
 =?us-ascii?Q?xskjNS1VsHXR945eY2BUktFWyuNJtDlS2PEdQRDJCnYCvRVDbvgvaCHju9l4?=
 =?us-ascii?Q?uvfIN63aQsmNqyxkSI5W7EVEmlrjtRtj8oN9hTBw5hnu7gmpjaBu7901s2t6?=
 =?us-ascii?Q?oGlBxvWz5IVq3t38MJQbC8KkUx4dUIAlUU0QQ7FQURpodhfOHsrNM3jPJVAn?=
 =?us-ascii?Q?bYryf81wrq22mZdFqO8Uqd+Wk0fz2Y0ehQ8pYGmsX1X4PtufQa3ESawGZX3F?=
 =?us-ascii?Q?sFOWV2Vho60iNm6KS6u4hOA4lCvGE1O4jF8ZHrMSnNNe0j7Z3xlvwxinODF1?=
 =?us-ascii?Q?fGR+GLUu420yRUK6HtaxDFUCq82YTCVgVuINyKdscrfQwP3fUa9PE4O4FP32?=
 =?us-ascii?Q?PkWjOYtdVwww3MFpMrW0pppm0SfAqehkM/3+FQn7JuWruEVpt9/dFcb9J9zG?=
 =?us-ascii?Q?bQ28FYfb7LsCZgWrY0Rts1UwfD0eAA52gENSt8bEhorBD7WSgFCM9SyF2f1u?=
 =?us-ascii?Q?PcPgltVXof6ekSZQ/oQHUCeE9RKxhPM/qoZ2rw5Z/rKKEmITWkhKNWUeOdgu?=
 =?us-ascii?Q?Shs9pflB6TnsKc5VO1t14cS/+9xOufszLWmbx2CbTc/YGY59+/1IYew52XHy?=
 =?us-ascii?Q?7Z+g4LfOalgdmo1gSfdjFcQO6fsjln5zdkU75SBsscZi2p7VqqHkoO8w7Oj9?=
 =?us-ascii?Q?2I/JIqCIviFUXKzhMVgjN9Yw7FPoxDh35VCkJy8wi+i101pzloQRcO3A8iFI?=
 =?us-ascii?Q?OVt4lmHQeVJWftfTJtJacVX0O4VMnV6AUa6Fj/QIp+/0WzAXYEEgkxKycG+3?=
 =?us-ascii?Q?HRBkU65ATk56iiKMXrQhM/8kHB8AgxqdX+7nq3nXMMnuQt5QhP3bP6UV7Sn7?=
 =?us-ascii?Q?noHsyL4by5PUi0erUIVt1MDIujSGEkco0qQgZpxRA4tIEyW+znTtW2ordFkh?=
 =?us-ascii?Q?QRTGCv63i1bJ2dasPy/Ba9jraGTiDIQkInuv6QblK6a2dFfB2hP3mfTt7Z8i?=
 =?us-ascii?Q?l3xInVaCBHEmF94U5fDk3KHGzl7aVbZy/t1y0KrS+W8kGb1sHdO8VpyGKx6/?=
 =?us-ascii?Q?oteCAcYq2mkzRysYVHIkwTepKZoL3G9phlbul+e57bD4l0io6g6vxW1TVXNj?=
 =?us-ascii?Q?g9FmsrCH2sySpZ+IpgN6iJn7u8WeD76LmF2etX/7rctd/C2miV2HAIF3YAGC?=
 =?us-ascii?Q?pPgO4eGTcZuA8yBAcPEbBIMmO0S91MboxnGENuMW+7SG1/HZctDB5xmDzkHv?=
 =?us-ascii?Q?hoSShk4n/d1+n2WNVOB6DRNM9dOLXlJlEcixKXpaYoSEqGH9h3pcYvxT5rap?=
 =?us-ascii?Q?jPdaKltYIA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Afah1OeD9aYuA4DJJFe2SAGSweofJ/x8X0217SL+9D2D+RjeWA7tnsO+/aQ69KyoLgk8vZH+qGlBc0JmJbi9d9ccLBB/DfrdhvQ2uyMiMtzvBFIyLy4sajuwWNc2bmSua+RKC8QS3TcH80uLtQWM6QUc/AUxcpOQ/Tdj+ocwlE5+6XEdQP4G587Nq172whrB51j2uTN824Dj/59DbILx3D8Gv3Uitifc0Y9s8QOlZjx7EmwWbPouW4zyBHqlsYRcxxiQsj4W3SSeb2hMfqax2MOFkFRmrOrFokMu4t0WjBS6ueDU0pPl1QXDXn71/vRMdNnLQdOXzNBan5oUNoL1Zw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b495dd1-66a5-48c3-ab09-08deaf3676c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 08:22:38.8798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: reSKpxu9b2pX3EJFhIS99PuTkyAUhSjNS29KjyfVqFvGK6IymxxgebU7uN9/rUyzE2qKxO+GhVlrc++jK3uolSPfSOdmhcT7Bs16mAfDGqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8816
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778487762; x=1810023762;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DvrU3/s+CNQUtiO/gDT+9ejIBE31PdmpESV/HX8q+l0=;
 b=RY93G5NnHfwm4YXSDwWEdTSSe5fpXNwjH/e8cWzy9CG3LvTR27kLchcf
 cjjVr8GL/Ulrw54g/LdFHEY5Fzcfu34ewRBmAB3cMCoxxPFVGugW2mJNs
 0suC+4w896fS653d9eA8TdxrF2ixrIfgIw6CfmInQXSzif293NhIA/HQ3
 lU075YwxXz3jVKN4cn0G5GD7BFlOdGvxRA//m4fdnlgsqMSGZpOWo8ymZ
 GxWoeUUidF/7CpmvhaaK13Q35j0nvNfx351btLJlV5yeBNAhYpZh2iHmr
 yn6ymJ7FVJGEKJ7tFDL0ge/fsnu9r0OddV3ImEnfgXofOzqUPTfZ19lID
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RY93G5Nn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/5] iavf: fix TC boundary
 check in iavf_handle_tclass
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
X-Rspamd-Queue-Id: DC15150A04D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:avinash.dayanand@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,IA3PR11MB8985.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Wednesday, April 15, 2026 3:47 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Avinash Dayanand
> <avinash.dayanand@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/5] iavf: fix TC boundary =
check in
> iavf_handle_tclass
>=20
> On Mon, Apr 13, 2026 at 09:30:34AM +0200, Aleksandr Loktionov wrote:
> > From: Avinash Dayanand <avinash.dayanand@intel.com>
> >
> > The condition `tc < adapter->num_tc` admits any tc value equal to or
> > greater than num_tc, bypassing the destination-port validation and
> > allowing traffic to be steered to a non-existent traffic class. Change
> > the comparison to `tc > adapter->num_tc` to correctly reject
> > out-of-range TC values.
> >
> > Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> > Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> I am a bit confused by this logic.
>=20
> With this patch applied:
>=20
> 1) For tc <=3D adapter->num_tc, which I assume is valid TCs (other than 0=
,
>    in which case the function returns earlier), the filter destination po=
rt
>    is skipped.
>=20
>    But the failure path for that checks logs:
>    "Specify destination port to redirect to traffic class other than TC0\=
n"
>=20
>    This does not seem consistent.
>=20
> 2) For tc > adapter->num_tc, which I assume is invalid TCs,
>    the function will eventually assign fields of filter->f and succeed
>    if filter has a valid destination port.
>=20
>    This doesn't seem to be in keeping with the patch description.
>=20
> 3) The above two points aside, is there an out by 1 condition in
>    the condition tc > adapter->num_tc. It seems to imply
>    that tc =3D=3D adapter->num_tc is a valid tc. But I suspect that
>    is not hte case.
>=20
> In short, I'm wondering if the function should look something like this (=
completely
> untested):
>=20
> /**
>  * iavf_handle_tclass - Forward to a traffic class on the device
>  * @adapter: board private structure
>  * @tc: traffic class index on the device
>  * @filter: pointer to cloud filter structure  */ static int iavf_handle_=
tclass(struct
> iavf_adapter *adapter, u32 tc,
> 			      struct iavf_cloud_filter *filter) {
> 		if (tc =3D=3D 0)
> 			return 0;
>=20
> 		if (tc >=3D adapter->num_tc) {
> 			// dev_err(...);
> 			return -EINVAL;
> 		}
>=20
> 		if (!filter->f.data.tcp_spec.dst_port) {
> 			dev_err(&adapter->pdev->dev,
> 				"Specify destination port to redirect to traffic
> class other than TC0\n");
> 			return -EINVAL;
> 		}
>=20
> 		/* redirect to a traffic class on the same device */
> 		filter->f.action =3D VIRTCHNL_ACTION_TC_REDIRECT;
> 		filter->f.action_meta =3D tc;
>=20
> 		return 0;
> }
>=20
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index ab5f5adc..5e4035b 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -4062,7 +4062,7 @@ static int iavf_handle_tclass(struct
> > iavf_adapter *adapter, u32 tc,  {
> >  	if (tc =3D=3D 0)
> >  		return 0;
> > -	if (tc < adapter->num_tc) {
> > +	if (tc > adapter->num_tc) {
> >  		if (!filter->f.data.tcp_spec.dst_port) {
> >  			dev_err(&adapter->pdev->dev,
> >  				"Specify destination port to redirect to traffic
> class other than
> > TC0\n");
> > --
> > 2.52.0
> >

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

