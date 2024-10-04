Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B0C990720
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 17:05:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17F4D40D77;
	Fri,  4 Oct 2024 15:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HguuqC3NiSo2; Fri,  4 Oct 2024 15:05:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C93DA40C9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728054328;
	bh=h0RajIQyW6AjZIcISPwjmWQpXyNqFNkDBeD0FSNwsp8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5VtU9kTQIYCs4gOlF02MVSdFh57ihzv06Dp9RH7SPhFYkOAdULfArICunsAn4BW/J
	 LSRvWDSGJkg3XfsVid2SBdujsFDUWHcUXQ9T5FvgWSd1g5ryyEwGGD6krJu5fVXXdu
	 9uTw5B7A+JNJFh8m1LT1bfPrHITd4n0hbDGPxVck3huxFTgPI6RgXF7FVet0GxSylG
	 /sZdCvODbAGFWMFBhhHslJJiQgXy9GLXNw44pnASdOPrk2o9nWLhksw5mHS9MccQNY
	 mczV3gKR+r06GFAo7QsKJMmZFDOIyvfWw7wfPpicEaivKm7Dw/ZTFNJroXQVxji480
	 VLhr2WEck+94Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C93DA40C9B;
	Fri,  4 Oct 2024 15:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 058B71BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69F8040D0B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id otYQKaCGHrnG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 15:05:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D98840D1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D98840D1B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D98840D1B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 15:05:18 +0000 (UTC)
X-CSE-ConnectionGUID: wzlpE6/qRIa4rpOEQ1vedw==
X-CSE-MsgGUID: h7DGG392RIqiRAL/NXgQNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="27370019"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="27370019"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 08:05:11 -0700
X-CSE-ConnectionGUID: NISGDNcaSbqo/K2+nAkloQ==
X-CSE-MsgGUID: hdr4zv2lR9qeIHW+Jo9ERg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="98049682"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 08:05:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 08:05:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 08:05:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 08:05:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BupH3vGGOH5IcWOFMOPYp5lNjpQcl5qVPr9Jl2Yo99huY8YzNYI7xAoPikGSAmrA65vWKirG8kRhFAL68Zb2Hov0hNEW27SmrvLQjy1T+Z28emS1pGo+T1hhnAhy9Ochbt8+9JioarvUrEvsbRUl4c2QPDzBCW8AklyxrVSUud7fwdjblEAnmc0LDSsO+c6y0oYx7eoWpf7Qe1uGDXTL7nU67yhU1ZNB7VqXHhN3QWS0oQ624CyB2FeNXP8yDMLOD3b/RHBpDdM0DxfGbMK65qr2oTugoc72y3oQZ+TzlgR1jeVnGSoefrNZeZMxHI1rGlJWaBOnsSF7iWvE4mA5sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h0RajIQyW6AjZIcISPwjmWQpXyNqFNkDBeD0FSNwsp8=;
 b=AjKSXZwpu3Orwzayq4M1WSw9oG+5HgJNT1Bupptyz/ZxGCWni+W9WLEQio9ccff7Q6k8YqxiE0x4ax40AmPTxnRpSrvFGQt2lDMKLLIwanj2q6Hri0A00XbGeJomgqJVwi8nOwiBHptDK3j/IUdmeEaWQFQ8PRt+F7EKmDYhcvW2QxnH4d4heloFWfydUg8ZXemSefDjnpT1u9Td9PcKq/yyo78bzBJ8wv0Ja4oMxhcIoeeiQK6AhATkxQnH7qpinYEeTF2bvm8yIoPHG9OfQgWh2ltc8xqSgg22Irf43fr7LhBIP9/wfOATF78t1YuP0XNc66mBpg4zbZx4OzKyVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Fri, 4 Oct
 2024 15:05:07 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 15:05:06 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v12 iwl-next 5/7] ice: Add unified
 ice_capture_crosststamp
Thread-Index: AQHbEzKknT/eiu3k+EW8RF0NeKMZdrJ2tWbw
Date: Fri, 4 Oct 2024 15:05:06 +0000
Message-ID: <CYYPR11MB84298D9A8DB7D8CC265810D0BD722@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240930121610.679430-9-karol.kolacinski@intel.com>
 <20240930121610.679430-14-karol.kolacinski@intel.com>
In-Reply-To: <20240930121610.679430-14-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: 28c175b8-e849-4e2c-6b24-08dce485eed4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VJzAk/J25itxh0TbvQrv5UwTSC5MmfSzDm4mVxvAEKynmKrDpvUIGireQHrk?=
 =?us-ascii?Q?A9W7IKUv1K7ZdHwlpJoVLnu0G98Ar99F06sMnAceuYZ9bvhCvyap4n53Kltd?=
 =?us-ascii?Q?czXVgwRKS8FOBuAEa9Mn6vT3Wne9oDkxNvDg5JQM+Q/l05hFSu5C4VdvTdxr?=
 =?us-ascii?Q?rMBWlIEMnG/1PjBo6D1+kGTrEGOrUiTfx72JCrPYiFJMFOsNa6n5iVIHiKH6?=
 =?us-ascii?Q?4u6P5vaDUfE8tKkjp0Ohkj8rtmwT91PnsV+WNTyAxJ3GgicgdW9z0rxkbQFk?=
 =?us-ascii?Q?6s2shvemCk5o6Ns1robSOa9izW/xxDQGb5QfZzAtKTrQ7wc4861YmqEa45gM?=
 =?us-ascii?Q?ErN2pYq7a3DYaWLzsbQ/Gkb/3V4Udn4yalNQ4+n0sBUQAL0naFep8mGWYmWZ?=
 =?us-ascii?Q?8O0OPe3EwO5zCSG2Yph2qz1aJeWXGoNfjKlSsDaZQpbopfB3i5IaKU6KpNXM?=
 =?us-ascii?Q?PpJAb10dKbHOyqBR6lBVo4puLcp1cATR4H05Hh57fyWL0ucvJHtApU6Vfe9Y?=
 =?us-ascii?Q?PrcG8lp/wwNJiBhb4hpaHOa18c1C7C/iUXguVEzmLqrNr206R41mGVNU/TLT?=
 =?us-ascii?Q?vh6wtALsbfLABHhnYsmQKXbB4U/lCZ17wyYKZES1dn8DYJGq/x2U9IMfgbAL?=
 =?us-ascii?Q?VrgvGeg8DxRtnJN4Q4bX3L2mYcDoFpmWp9RDwZiGlIoz3jBDNNvKoE5PwWu5?=
 =?us-ascii?Q?yjyQcoMLXuT2PYzr5m1KKTjZrG2WQmdxjPebgtOCLpaZDL1PpIDyBCz91pur?=
 =?us-ascii?Q?HY5l4aiEnEXh+0ryCrQF+gRIKkuOfcZuqUrwa93kPf2tAEWTvmdTh0NJeUVi?=
 =?us-ascii?Q?xpXxc9tWvj9HJZAaDGx/IGjPDP4th/UDScrX5/lRKdWKVKKc0RZSJDdjjk/M?=
 =?us-ascii?Q?YUlYXFHDOBuufIl/11eO2m+fjuFo18bB1zgRVOKqT+2T2FWRs6kPE0Ai3G88?=
 =?us-ascii?Q?Mk5rytoAJlIr//GlEA7CwO9kEn6ey0b61jhapXMt62VgldExz3Wxax4Aduw+?=
 =?us-ascii?Q?URIbd5L3HxO3h3tmLKrKd8wt6TMvNkzocuVejQVe73QnJq+IL+33dXmnMn0T?=
 =?us-ascii?Q?MtYXr00FUVENwN6Pt6YDHEuOi9qD4k+5KKRIPQ5rx4Jf3mvJfMOBpWvPdZck?=
 =?us-ascii?Q?vc4MWhlXbT3WCVo0wBqhjhoG35MJCGT3gcY3F6p/mP6fYKII4jQ6Q0EHcaPI?=
 =?us-ascii?Q?NdhwsjVLkevKwvfr9cztr7zMCJQYYVzSOJK1/71VWwdn/Q9mKTGOtXp2Xh/g?=
 =?us-ascii?Q?OAxIWmtx2wbqYDe1pl5pFWC78gQmFEEDv6kZCdI9Nd1pZTHzGO2Mpd1NyYOC?=
 =?us-ascii?Q?kS2FwqJ+h1wxHo3iuGzb60nxO3ub+9WY2IH85FbWxdIpbw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZJgTII0HDqKfrRFu8QwknRxUrweLD19AEy/y9hcpgHUL8X5jhVdPjm675RST?=
 =?us-ascii?Q?ep3UIqquX6AQSmc7GzdYsVf75DblLrGkuKzh8dYPmwfja0kqjZPvKvTuAfDi?=
 =?us-ascii?Q?lGpOZz2a35dyHwLvy1WyQyQCTDVKSu+65BnuDPZyYqAwRAkue2uhi1oZvDht?=
 =?us-ascii?Q?Z/Ql9K79V0TQ6PEKvsilbsF++fdfgypsXr4Q47paLJE8tgErMDNz91+b0fVf?=
 =?us-ascii?Q?MmZjpHII4Bz0rlWl6yhKmZDXKU6ttZ0Yck5FfKcbsLg3DmTSZnC+KrLwdPlE?=
 =?us-ascii?Q?gFzw78/1OxqZ1GpQDLoSCXOjqCG/JlHF3a0U6XueErm/LXPjGtIxa4UIkW5t?=
 =?us-ascii?Q?fIRALEN/pCzCt49oR5/aMLOfuwDSyLlz9S3Gz5E9aXw9f3zm1MdAgwHxf7YN?=
 =?us-ascii?Q?5Y7XfNuMAsYVRdqGm6Qix4w6S66jA6OKc+tGh/u0R324szp63v/h9SJzPEk/?=
 =?us-ascii?Q?rwfQlX0INOcBY35W9c/b4qGJYmRRrkg1iS4GQN2EVmhBZQUD4QaMiXAXwspG?=
 =?us-ascii?Q?csIYqAGUQ6/AQ0iHTHHH7Yl8XtCny5oh7cEHqf+V4eBm+X1Wleu/5Sr5kXdl?=
 =?us-ascii?Q?ncFDtCVF1ZiFkcLNkudjP79KxhnhpclJHP/XBxpOCAy2q7RBL6WwFa3/vftQ?=
 =?us-ascii?Q?pqOc6fM5sREH5sYMPGA4v4uyPFb+X7AkjyUYePAIhYKP92EUvL9O6xq5GbD9?=
 =?us-ascii?Q?c1HQVM72cNvJzeFkLrBxg2QS3zDZCPI1hQwI8vKGjI6G9StSpxgRk5ZWkteD?=
 =?us-ascii?Q?Wq/K6jS0K98/B07cSU3ygU3R7eFalUpF03dYVS0d1VW0VE6KtZh9xVy2ecyL?=
 =?us-ascii?Q?DFjbI0QSLIltvfpjiPF9vf8MHUuDqxJZ3YzwrAAlu8VWFsPtLmqsyoRbLDSr?=
 =?us-ascii?Q?f1C7VEpPGFBoJN0BwIRgrZKBeNqJNJV04VpmJqqb2a3v4+9Rl34sfpCcyQ8O?=
 =?us-ascii?Q?Hn2hVt7eHNEtF6siYzgQrRLs8TxKxmHAo3HeFQPKHYv08IH9Ifz4CyRktkMg?=
 =?us-ascii?Q?ZTQI5GIbAJNtYIqmMLLp7QkmwyjHU7Nppm3QT13uDk1qKZYpQKormJvIBMRv?=
 =?us-ascii?Q?xt48YYzNtUQiXSDdHD0oKZOzQEmZtf+O0dCcfaauYgnWyus008n6NhpU0KvY?=
 =?us-ascii?Q?1xm0RqHlpl+GHXdBaqvfq4HPWrorbsWh/xaQlQKx5q2ZI06cHc/59G9E0kmm?=
 =?us-ascii?Q?x3rpeyz/tj7CMEovO0SLynebn5uYFtTwracQXg+n99t/QHgyDOxEjE6yXuUv?=
 =?us-ascii?Q?VYAA3nrMBszAWvik0rj0BMMLsjXogg0UhfgwGnLjFelpv1kWpsEjJ7BJE0tY?=
 =?us-ascii?Q?+BysqYiHVr5jNqeFihkqdaVpgN/vF4mtugWi33xOdehfMV3Iw4p6HoKd1fbs?=
 =?us-ascii?Q?5xXS+Fh0DCT9rLSMQqjtuDBAXoNC3Q8vRP8xmLuOFWXjEJ7lYwgCmBmXknDt?=
 =?us-ascii?Q?QAP5vT7h/mzJwieiGPlLCYrhSnnD6xwGDtJIj/NGCTMeYj9HRsuCcyAQfaOL?=
 =?us-ascii?Q?Lm34IF0R3e19nbjzM2NZQT34Plq9ajKpUWlQCLHR8FRMXLUUW9mlxFyhLKFk?=
 =?us-ascii?Q?c2IHSaHmfiy38QOmJN/eir3TN5iOgPfdQkATsYCzUFEWXQHBvanxzNRX5NH9?=
 =?us-ascii?Q?XA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28c175b8-e849-4e2c-6b24-08dce485eed4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 15:05:06.8057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ANz/fFUjSPK93hPastrarBIBDBkdiiqOSd+trK3BQoZTdfkV85hihIbeoL6YvgEX5Nz5MVq39rDYSlAtrMFuc74QJr7rDi3CZqWKByi1bk9DqWIWLXdQtU4a/44m9T06
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728054319; x=1759590319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ysul2nKuKETb8LoBenS4nMeMKgwFizrbNVtw7+yqICw=;
 b=XocXCJgXG1rx/mxmTcdGthaG6G7MGZ2xqjBrCg+YSK3HcB6AcdmA+sQk
 fdL3eT8anlDBvVWu4oX5XHjU8Z6h6ri8drsKAeAL7OHXQhh2K4mLCA0mB
 o3py1Y6GANOQ7+793shYmq5yXWjauu/QAzoWZzhaDv/wJ5Z+ijWQt45uw
 Y7abAL8y1ZxqvtYo9yGNEhy6Oc01CC1pGuF88ErerlBhHzx87uArhGNu8
 6RmrBWlFVP9Kd2PygGvGRY8Ol/Qss9/9czAFELxS6EsOVOQxClmXOPCJf
 n0lWyjISOD+c0GuQZrMtKGsg0dVXcLyEutKn+T5QWAnJt7U6nJQBSyvLN
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XocXCJgX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 iwl-next 5/7] ice: Add unified
 ice_capture_crosststamp
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Monday, September 30, 2024 5:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v12 iwl-next 5/7] ice: Add unified ice_=
capture_crosststamp
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Devices supported by ice driver use essentially the same logic for perfor=
ming a crosstimestamp. The only difference is that E830 hardware has differ=
ent offsets. Instead of having multiple implementations, combine them into =
a single ice_capture_crosststamp() function.
>
> To support both hardware types, the ice_capture_crosststamp function must=
 be able to determine the appropriate registers to access. To handle this, =
pass a custom context structure instead of the PF pointer. This structure, =
ice_crosststamp_ctx, contains a pointer to the PF, and a pointer to the dev=
ice configuration structure. This new structure also will make it easier to=
 implement historic snapshot support in a future commit.
>
> The device configuration structure is a static const data which defines t=
he offsets and flags for the various registers. This includes the lock regi=
ster, the cross timestamp control register, the upper and lower ART system =
time capture registers, and the upper and lower device time capture registe=
rs for each timer index.
>
> Use the configuration structure to access all of the registers in ice_cap=
ture_crosststamp(). Ensure that we don't over-run the device time array by =
checking that the timer index is 0 or 1. Previously this was simply assumed=
, and it would cause the device to read an incorrect and likely garbage reg=
ister.
>
> It does feel like there should be a kernel interface for managing registe=
r offsets like this, but the closest thing I saw was <linux/regmap.h> which=
 is interesting but not quite what we're looking for...
>
> Use rd32_poll_timeout() to read lock_reg and ctl_reg.
>
> Add snapshot system time for historic interpolation.
>
> Remove X86_FEATURE_ART and X86_FEATURE_TSC_KNOWN_FREQ from all E82X devic=
es because those are SoCs, which will always have those features.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V7 -> V8: Moved E830 cross timestamp handling to "ice: Implement PTP supp=
ort for
>           E830 devices" and explained the rest of previous changes in the=
 commit
>           description
> V4 -> V5: Removed unnecessary CPU features check for SoCs (E82X) and
>           X86_FEATURE_TSC_KNOWN_FREQ check for E830
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 204 ++++++++++++++---------
>  1 file changed, 129 insertions(+), 75 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
