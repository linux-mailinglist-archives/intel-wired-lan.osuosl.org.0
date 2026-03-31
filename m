Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFIqFGlDy2l+FAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 05:45:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDD3363BC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 05:45:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA6F5820A9;
	Tue, 31 Mar 2026 03:45:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QZ6n0wpE09wV; Tue, 31 Mar 2026 03:45:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FAC08100C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774928742;
	bh=o24LVSWvV9jE0dI/dxLP4NGFOPsDfEF8c+vhR6HzVCk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7/7P/n41fIIshfYi1R9e4oEFTdIfeOPsDytE+WzKAVzMDXo5Z+nTPVx5GLOCQgoOh
	 p+nRl87ivqA+C4ufTu2CPgDfEYl9FnVLlfZEPGquE9HnZ63L+i29vZtQ2exGKQGbfV
	 D+ar4DYn56su477gx/7yEWgsnbXPMHBjZr055B2+SUV467GXBHd6bmQifcIhP/dGvC
	 x7np6W4u63UfTYRkvKuYSNWJmSsGEENZZOLTjk8HPFPUHEjoS6l4PhrnZixIWhY+B4
	 a3+NJjWUZQRyJmCerYTRwIsNboh2rG38iAkEQKHTNb5a10v4VDohNuUocGN1ZkY+G2
	 v2pozFsJyPPrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FAC08100C;
	Tue, 31 Mar 2026 03:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8628830E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 03:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FB4E40B95
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 03:45:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3MPaH1zFF9E8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 03:45:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 360D540B7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 360D540B7F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 360D540B7F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 03:45:38 +0000 (UTC)
X-CSE-ConnectionGUID: MYng5wjnRNiI5qLS2CRucA==
X-CSE-MsgGUID: qu7RVWBRQnOmc9h3EqrHOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75105172"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75105172"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 20:45:38 -0700
X-CSE-ConnectionGUID: ROJNtNu2T5WqD5mfTiSkNA==
X-CSE-MsgGUID: hJyVXR+SQDq10gkfPW4QpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="222937161"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 20:45:38 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 20:45:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 20:45:37 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.69) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 20:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m8OMSl4EKLcY9Bzzeum9p8RGakbOo1n85dC6tQrgKYvGSL3FNmsYIvt+jxWkaXODlOfih+XHAPN93cvgZWv7qBAuqBq4cCx23jo9PlPYMeL9GnS1EyVlYI9tf2ndAk8Nd8lChPLq/0x/Ra9GU6H4dCkaA6BpwSFK9xKw0wj84pL+GTsv11Cm9wVWJ370u36G0+hJZcXanAk3V59OSaCLPNCSewpViVXQR9U+8B8ii7sU1tle1iWrzXTK/tKEdkEnomcX37LtCUl+rcOLrOwa7atJKgDwsMhUCu6GOym7OiZii63hRbyzbAfPfQ2jOJMiINNJkm5gOr+U6Fe38an/Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o24LVSWvV9jE0dI/dxLP4NGFOPsDfEF8c+vhR6HzVCk=;
 b=BLiadqjg2U2KV5d3H7p+St0+aFMer8MGi5sd+QK3ZPrZkDnrTEvIYApHk3I9PstWLafnmOfPHu1JrS/TwhegwRhhVHniIlPPQRmSS6RS8C5xwwMJrK76aviECgEkRhVnGprBF9oVhXgD4mE5S0zkYj0GT10hGeex/LyMttGLYK0sqr1n9PA+uEKyQLMNIavr3QGAM9dQvxr6QELEJpM5cU5MVMnv/DfbKeG1zMeH0dOPCgnNMNMR379Lw9xCN0vN2eiMXUtJ6GjkoQ0jV6k7I4GfzW3thAsTm07b17DFnk0EaEJ3SMK5kPK+E9bex4tDCWlllnG2jcF+CKFnJI+oDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB5214.namprd11.prod.outlook.com (2603:10b6:a03:2df::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 03:45:30 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 03:45:29 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: stop re-reading
 flash on every get_drvinfo for e610
Thread-Index: AQHcq7LkpggdNSZdwEqmKXHI76f5jrXIIp/A
Date: Tue, 31 Mar 2026 03:45:29 +0000
Message-ID: <IA1PR11MB6241FAFAFC47D35324AE553C8B53A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260304084232.2937498-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260304084232.2937498-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB5214:EE_
x-ms-office365-filtering-correlation-id: 98674b5f-d550-4402-7b7f-08de8ed7f433
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: ze089hy2qZR3GNIV8/EfYnNzpMdPNLlNJrYAjvIVGdTnEERX9iO9oVrRA957theSIRRDor2VgpbpwVZjd3UPpSKDAWYjlTNCXTnrCoYvnhvZzvcQvfM8r/tL9+FvXiDhe8TGW6J34e6TdzMXQYm2G4USiFsLoQ8EdeaL8Oteut5/yvZDfgbh147OQUOUw8L7FGEwy+qJ+dQ8h2OaBl6CyrjwKMtrM3gq4oBkmZE6taMT/YOLtsX1+ngtzJ5aIfzTgNWHEQI7mSbIK0saodoS9SChoWC6Rr9jE7k4EDoWYhcgHwNOjZzPMwEWfFvVRf0hXMWZ2ztQ+4JUwzAe70HFxqUDIynatMdJlQwv+cqYV2XUpl0ddyJofwe8ncvLv106FTacvYm/eF54cBqLSjc/PCwNWzgjEka0AdIQdQnaW6AFlDgjV8Hvcr0fLpsgo+voaZSB1948bc3WDBrxm7pelbjquIjevlBrAw/8o5zwKE1sv1NiLR4w4yG9JhLWu3Npfop/r0nMCMbClPGvkVY4nGFiMCCRRiLhX984JMhup1euSkHAV7UA6i7qpcx/sXsoRwYf/KZ0/EZKDF4kLdUqHfNfTKBfHXLw+IHJ7hPlem/k2UBQ1SPySee0Kld/ShBsP8ogqgCNHHNKYCbwvfFVpAHNNH78zuFGe8EsPqghovEXnGj2Izpp2963GNZvbDp8wOEPNJ+wx0VCGqcdD17w5DAdrlsKNtwJV/+IHsnmpSHB2+GvU83Ywi6b6yDoGrYjypuomOKnI+eMp7Po9LhlzEYcT5xO9XsdiYmT5XXD2QU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6vG7pAY45Keyt/ciE9GjZHJH9CMf3JD/mk0eCJmJDY5v8yyg85lp9afPjChW?=
 =?us-ascii?Q?YzoRTNHMZWMRc96IMgskuL+SwLKtCVlqgMjL1CugKMeQaikU5n45ZmEzXwti?=
 =?us-ascii?Q?uXShOeMD4u+lP9fB4Ec1uVcaQUJGr2uHrOh/6poLCznxN8wWkZgjc8xVhR2X?=
 =?us-ascii?Q?+IJLBFfTvBdNiLrNCq6+o2L5+vcYSRrVrXWLueOchhVXwqcVXQwEZxtLx5WV?=
 =?us-ascii?Q?11yACVbLRPbTbo3RqP50Hku7xtTjabUA/d4venuopGMhpH09fBT/sjrmdirE?=
 =?us-ascii?Q?iBLTbmFuSYTizmUFHN2hQfOOT6JHUHi7kNo5LLKKnry7HRium0vE1UvxfiSJ?=
 =?us-ascii?Q?HF8u+ccJAcM3E8LTkeA2zN/qQs7YgIQ8LJkjwK9RJmcdSroeK+NIIDVdK3qO?=
 =?us-ascii?Q?wYmq6Nw4bm7DdUz5yr51ZpGLzM3XhtSzre74GuUGIESJnDmOIif6uArp7n9W?=
 =?us-ascii?Q?N2zTlCPK4f6L7CmanUOIV824itX5I096pyuqe6LJGP/moKbLMGcEdMHtFXX7?=
 =?us-ascii?Q?uTdyXY8xxwZNDsXSY8v83g57DicOKVyzecsDwhyK6YGKZSBWjj7JfMSI3IaD?=
 =?us-ascii?Q?laX6nWQVXScxkfOGoVH0k821Ft6PSBlM2VE3iLGiFC22m2t6JsDHYqEhhXLQ?=
 =?us-ascii?Q?X0sJ4auRZA6DA4CPe9iS35kvFdB+yKPsmsb+vHMoOdQ4kWC4MJk90Gg2vzhx?=
 =?us-ascii?Q?EeKE3fqzw/SlL2E6P0WFfDCd5nYCtq4kxc/RG/WSlIfN6wh+GzPyV/SNZc5e?=
 =?us-ascii?Q?JLIm20TwneUpNGMAmE8H849OJw3sate34fUTIeFr8L+izMfwPJrVoL7z5pmw?=
 =?us-ascii?Q?RaNiwwXpMS9DCZ3eNzVfVXw4F7MABkt1q1XmfKohtkP1goxoFuRgiGJ1LpA7?=
 =?us-ascii?Q?SmtId2CheHU58MRtLbo038AbbBaUdDiQUb8IG6GOwkJj1Nq6N8pWIiAm6H96?=
 =?us-ascii?Q?ytT7lcL044GCYxQ+M/99y85MZ3V1wfZbI/BDViaT2wTj58ZPe+27Q9/Pne7i?=
 =?us-ascii?Q?H1yhM7vtnRK98OC+aOgWXeHCts7mqr7ZHRQaunG05665o/SwDvt6sPOjuSmE?=
 =?us-ascii?Q?j0KOQ+5YvXwjJ0QywoDdaD51URLFBEPp1YuWziM7bqEEv9BArFnt26C0z/P9?=
 =?us-ascii?Q?iUO1JDs+NEUtMPL2DE7hQq8CZVxAiUVBGBnatRpmRwJNlDijNlfv/3y5w4Fs?=
 =?us-ascii?Q?D75RQnpDEhtLkOCFnTHp/WZ9VBaJes05a2s1ctrpiKjYF59zp0ApWT/WeywZ?=
 =?us-ascii?Q?idKBSLqi1F6EFVmA4ofJni0rc4fJei+XSHasPZB48jDlsePHfYUV+80NEKl3?=
 =?us-ascii?Q?6H2MMiswl4pWe0ANKkBf3GBj9GCsW3FTrcRwpHUpSBrOimYA2zOCE2396N9m?=
 =?us-ascii?Q?EHV0cRaF057Qwjx0kEPPBdaaxpYk5R4/hPk8clYOT4KK6lLIK7Pubd/E+7Bl?=
 =?us-ascii?Q?oofkKDfwYI/0hjdFTbIuTM2tGSHDI6J//2mzUGxwJPc+EANF5Xgl8TiDP+vH?=
 =?us-ascii?Q?JpyOo2LqGypreWZql57/3xxVx5CtOtPk8ClBM1of1NBo0kqT0/o7nZPH2N3i?=
 =?us-ascii?Q?Fp3gHzYa03jx0JhfzJJYfMWOUvZMjmMyAQmoOGFo9Yid7HBrY69edirLoLGa?=
 =?us-ascii?Q?PeDcxEXTlrle8XTExmYAanaeAgpNGUkVc46kFGo3ztFo0HZPQXlJIcxOCVzZ?=
 =?us-ascii?Q?Cii3/V+uB4JdgEKw7nBFx35ZIuujv6vYXTkXdXl6Rz5WVZfr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KCBosnXxdd1K/4opNIrB7O5RgZma19+qRifZPnxkQaT66hljinttRws/e1hU5RGTGyoSx7JeDRgg4eiXTNXn3yCNZvWSgKXaxpaj7Mx1hfSmn9zd5MK8r25dj25hz9qTQCGf/ci3s1TSY0cdSRb3E6zseNoxxCaApA/Z/oxIu510WWW4mozGRaX4P0FF2y0qV5SOyyfT5sFKfyPr4eY6961EvOCEgdVA4gKQc/ysAWZg6rWbCPthTHqx3F8DvqHUjSq3iC1YO+4K1xxlLJQgy9YKRTlLOLUuR2TtBdHRRy+LGGYq1RmK5LyqpHmN58xy9tLclNbVqb9XV74uHdCRfg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98674b5f-d550-4402-7b7f-08de8ed7f433
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2026 03:45:29.9126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2d4uGq6ZO1SKgRjFDm1sm4B61fWHCVxcf8rRbMlDmzuyqdEWg17SXzuU0/EhcjiESVvQGM/Nz6Ih8r/t3PicjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5214
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774928739; x=1806464739;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xu8aMrxPJxSDrSADjskCnK/oSYINxgLOpDhXYpKFSoE=;
 b=nmu3eFhjZjU2zMTXflFP9c6DhT5FywWufLw/WN41xzuIv4jr0TQWgVxJ
 lWfN/wKcDzwLa36ehM3MqTkLJhwMUop7tRS4TV2L2smGz0848oLlnh4PG
 DjT+u5JTAXmmBMfddCMLUmimdMox2twuJBbgPI1OYEGNVOxzkefxKyoWY
 +YwaWP75YEZCGe2nGucs6ZhhAgj1fbmUbLUbonThPGMgi2VYrZKi3WEXJ
 PFdy9Z+lOG9c1VpSOsMuJV2SHqj0XpE47AMeu0mKtIHetucgNV8Nme6H7
 vhLSbnend3K9EfrsNIt4KJ73FA89LkVMs+squnpn/+CbvrHqIz06VdP1n
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nmu3eFhj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: stop re-reading
 flash on every get_drvinfo for e610
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jedrzej.jagielski@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: 4CDD3363BC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 04 March 2026 14:13
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Jagielski, Jedrzej <jedrzej.jagielski@intel.c=
om>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: stop re-reading flas=
h on every get_drvinfo for e610
>
> ixgbe_get_drvinfo() calls ixgbe_refresh_fw_version() on every ethtool que=
ry for e610 adapters.  That ends up in ixgbe_discover_flash_size(), which b=
isects the full 16 MB NVM space issuing one ACI command per step (~20 ms ea=
ch, ~24 steps total =3D ~500 ms).
>
> Profiling on an idle E610-XAT2 system with telegraf scraping ethtool stat=
s every 10 seconds:
>
>  kretprobe:ixgbe_get_drvinfo took 527603 us
>  kretprobe:ixgbe_get_drvinfo took 523978 us
>  kretprobe:ixgbe_get_drvinfo took 552975 us
>  kretprobe:ice_get_drvinfo   took       3 us
>  kretprobe:igb_get_drvinfo   took       2 us
>  kretprobe:i40e_get_drvinfo  took       5 us
>
> The half-second stall happens under the RTNL lock, causing visible latenc=
y on ip-link and friends.
>
> The FW version can only change after an EMPR reset.  All flash data is al=
ready populated at probe time and the cached adapter->eeprom_id is what get=
_drvinfo should be returning.  The only place that needs to trigger a re-re=
ad is ixgbe_devlink_reload_empr_finish(), right after the EMPR completes an=
d new firmware is running.  Additionally, refresh the FW version in ixgbe_r=
einit_locked() so that any PF that undergoes a reinit after an EMPR (e.g. t=
riggered by another PF's devlink reload) also picks up the new version in a=
dapter->eeprom_id.
>
> ixgbe_devlink_info_get() keeps its refresh call for explicit "devlink dev=
 info" queries, which is fine given those are user-initiated.
>
> Fixes: c9e563cae19e ("ixgbe: add support for devlink reload")
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/ixgbe/devlink/devlink.c |  2 +-
> drivers/net/ethernet/intel/ixgbe/ixgbe.h           |  2 +-
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c   | 13 +++++++------
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 10 ++++++++++
> 4 files changed, 19 insertions(+), 8 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
