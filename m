Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDzyMv1CwmmCagQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:53:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3437D304359
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:53:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDC5D826B4;
	Tue, 24 Mar 2026 07:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dGZh6Ehw-ddD; Tue, 24 Mar 2026 07:53:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34234826D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774338811;
	bh=qX4m+61ByVXi3ODl1ldmqaxsUvUTU+U4v8eAkHzpLto=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dzq0S824YL6948CuNBpFi0MuS71alGRh6Y7VpM//tvlAnVxPDqZ+aXR6/mPoDOygZ
	 477CGTgOFJ+iOtZnZkdJWx20guxWosKSgU4yl0L+DgTjd119KQGUVI8FSYnF3Cotrf
	 QP3JwwdYNLtZW+rbJvmVXAXIBLMrpC7pepDAZQIwUN3RVRoemCYTBHhX4yFYIq5NED
	 b+LPQY7V1gYJETy9e9pwmojwZWujSqAnCK4fTU0QFsdp3Czan73LddCjnz5BtQqwVR
	 z52CeGKEcZIBxz+PAIHKULZwfabDQosgqcpj7dc8j6oy3m0VnaxslJNoLF+g+oGdTY
	 D7pPXL3/b9m9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34234826D6;
	Tue, 24 Mar 2026 07:53:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 143A41D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE52740156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j0635fd_zK1v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 07:53:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E3DAC40072
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3DAC40072
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3DAC40072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:53:27 +0000 (UTC)
X-CSE-ConnectionGUID: BwjopMj1RbqqOeBfrTqtwg==
X-CSE-MsgGUID: TAsN/QaCTV+R1tgO7TlJOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="100794423"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="100794423"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:53:27 -0700
X-CSE-ConnectionGUID: l3xNhaD2TVS5OnYRt9a9KA==
X-CSE-MsgGUID: j9h05lUqQT2B3DoEc5mmOg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:53:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:53:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 00:53:25 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:53:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kN7XMydzzXXs5mdoQZwK198POUQkeRGZEBxapz0egBfTpkgrzP9fwnNKSw7GhjvdKo7K5Cd+lnibPHMxg6PioFRvjZyWkHugD7G7EBmR2raC25ehkQrsFJfKr0dekFJaLYXNhQP5jwPEG39RQhWHVBnN658HXYI7fGp2lLzzNheCG/66DEyErowbUP0mBRWAs7W4i0OzgX/SPxwU2SMbjY/aqpW6PAM+JAjlIydIkleIRKMi+vJawpLlO1vDru9TdNJ6K0hyCoGueJmqrPTzWCMdg22EXPHIBth99MF0EYCI3VQNXV78KSmKFsb4YQ83IVZ1EH2YjQRRgGNZwIei3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qX4m+61ByVXi3ODl1ldmqaxsUvUTU+U4v8eAkHzpLto=;
 b=eV2AVqsdlzXE+TQZn8+8Q6tuirrQBEd+JPkoTohzPdYfriK+yM7FWPX8HLcca28o6Y6xsswAddPPZr75hpv8K0hYP9mSZZLpnHs5c/WwrFzl2OrZn43jNaVYNLfZ5sJLgiUa/Z/H3qRYv00ZLxECrdqpiNkEXAxpJT2AKF5RQXmwHqxJLEuqhGjrFQqhNEkWBJWRueAzxvYw6W8Fbo52tMK8Pcxfx0cqOywQ5EScJtw+CzWNCh+WNk3puRWsX/VZD8i/U9hs1vcjh5iBzFwLaUSgeuM6Mh4DgskHWFRhKLdnHmP17rSUw0XhjE3WpgC2kbxkqqb17GyJangFd3IO4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF2AD6B04BA.namprd11.prod.outlook.com (2603:10b6:f:fc02::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 07:53:22 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 07:53:22 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 03/14] libeth: allow to
 create fill queues without NAPI
Thread-Index: AQHcuuxGmnjs+Bnr60+lYhlWK0Ndi7W9UJ7A
Date: Tue, 24 Mar 2026 07:53:22 +0000
Message-ID: <IA3PR11MB8986B588D1DB208DD5121AF0E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-4-larysa.zaremba@intel.com>
In-Reply-To: <20260323174052.5355-4-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF2AD6B04BA:EE_
x-ms-office365-filtering-correlation-id: 85e1743e-0653-47da-3e6a-08de897a6c17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|38070700021|18002099003|7053199007|56012099003|22082099003;
x-microsoft-antispam-message-info: EUxNoLOXjLPm57H0nxWPuriQ+ccP8clkKSiUK3FNX7al7vitR8BPmKpu2waGOwI25foe8jZ0vcb+YquPfReocrXDdBzvCyKdtP9fwnfOiuSZBxNrkGJMpn7PsMahjUkGD1Pi7FRijiDKY+4+/ISgrcYgj07+deYFmhQLTinCESnsJO3dSUNhK1cJgyKi9KYkhEWGVaW/FQAEt647S1KfWGvtm8S1q//zc7kbM8HcXxIP4GD9/nRu47PnokDYHGPLbA1jLeP2HRDJbVwPqrRKo+SpYtTJuG0fCRmPXdPo81DlpF1lXNo33whKriTesZtOmF0SXOGJKRRODrXSCakaUjbrasfeVzn7BYpZgAbs6oM0C+f9zmV5BgUM9Vg2oAJ9enQR9PYs19phmZd/Sci4Lz/H4Cv/r1rN8nKbu66xSuRgq+35ntnhupB2/hdHoEtDJUmkFSV6YHyZTM2/XoeTd55QzvK+qgoBHDvBYZJK6GwtEQH+c9KLtgwZ8E1m6zKH/Gmsg2B4Bl3EAek2/+yizOs4M/8JhVAWROKchWmLrjJ0/V+WMvuR+B4UD7v8N2fsy1tBwedPOkgocug2ZnWj2/E/YDxvqVtUMtNtrke2ZnmnO9OgUuOMv7KfX/TpNtit2pMzkAYpEI5gnTzh4oSYzFRlYo8yTp+XFzeIuQ55MbfM5XAv8BeR7TwgW78ybGc8C0f53cl8IlnaXU6zqc4gVlITs4DlrPxHcGtwlkbq9eAqR6+FZGXHlAE8Iu0Mt3NPkB91qNyXXiOkHmtrrfCuvBI+arRKIz52XjTAfCqx0+Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021)(18002099003)(7053199007)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T2OXOH51pR6zQ1IdpnXRJm4E1qMkl8q47mDD8ir0CJ1xlu/M3i5oyxvu5IBJ?=
 =?us-ascii?Q?k7JfHVBuXxJKKFtiUtL/Ere3r+cQM3I9pMOKt8dY9NNsoq+FZ3uC9LtbJRat?=
 =?us-ascii?Q?OZm+B8fVVhgK6kD168FTHiqgXwK4RstJ85E07ZWjhFQvX+TLCco72FP9EoYU?=
 =?us-ascii?Q?q20bkKSAYIar1kmC3oAMVgw4ujHSpgCkYAMyHdm+d2tY7ViE7kZTZUCB2rqJ?=
 =?us-ascii?Q?inNs232NNDcverAqyx16GUA9dxJpGMFyjPF6hClk2WN6d6DrDhhy1/sVnnDU?=
 =?us-ascii?Q?JK6rKW1IvNszKsagAD2Ea/OluQg2yG8vDsWiAbgETY0XhM4vCI+lwtBOvKPd?=
 =?us-ascii?Q?x00nImamh61ynhtYkHYITjS5NnsWJ+IgEjgmqnicm0M9RTdb4n6kX1Odtt3m?=
 =?us-ascii?Q?si31ep7PpXezYqpAGqBXYOrIELn+rhTgHqj34szmJKr9I71pY77YWEbgKOAu?=
 =?us-ascii?Q?b/qISUTPH+8m1VdbcmCJeAbntD1jxgw8v9FuYfozMxNgAq93Og82bmgWxonQ?=
 =?us-ascii?Q?EROReocgHAs1/sLnX+2XP7TV9WNS74tPhC106o5FvFjUdyj6ciGViRMWHMH5?=
 =?us-ascii?Q?Vqrk7RSc7ktRUWynhb7WnsuiBBnQi3scd0n6oq+M+LyAqM1UmZbK9ClZJIWk?=
 =?us-ascii?Q?ciw6Fi6YieqGwtveJZV/z/aP+e0ZTduHKTo1/hDJ+o+29nQ+GsyumYMAX6tS?=
 =?us-ascii?Q?NvEwy909BLmTIAg4ckKHLfBrckC8ENUyhyjqzyROgKNsVt+OZV5EnCQ9cho9?=
 =?us-ascii?Q?vqBAQtv41rhMF/whjYfWLhJw6Ti6DpH/wjGI+C4eY58qeKKGnvfottpX8TXf?=
 =?us-ascii?Q?VfJHWsaOBkRx9cBYy797v14c4blFJ5M+5zWXTRpw80CA3uZ9DT/M6Na6dVf8?=
 =?us-ascii?Q?wciBG/WSGRSa7SJAdegaOkTDktQ7bZu9bRg7qX4pSHUFgHTpO+VA0kLNwm3X?=
 =?us-ascii?Q?6XHOstKCaEzOkNQ2+SUTDX4L0uVH9gnLXmCryq+evkcAciLN53kIhGEAbAdI?=
 =?us-ascii?Q?Hvdj22/Rp4HrBB+DL7clVG5BDskXXVXPZ/n4usq6Ux5wCu6Mos4Pp24Be8Aj?=
 =?us-ascii?Q?jXbCYK/o4HvRqJ8bHyYQG+su0zEu2RE3Aph/SnA5f3KsVbt5JD1jwFAb6ag6?=
 =?us-ascii?Q?WbaOSq5+ZUzm9XzXkN2iFFxlEqEkZjWIiRIGDD2AsWOyCrU01b/uNbk9BCqM?=
 =?us-ascii?Q?lI0BKwgm5w2wNpcVQNVFrHoJZ3q2vTz9ky6y/uJkO9StSMMEBkq5kxE41r64?=
 =?us-ascii?Q?hDXKi5Oa6mFfbVwgQjF0+HuEe5SplXZJh/gGqU/2tZsyU8Z8aZ+wgDSYDQBn?=
 =?us-ascii?Q?0FAAZV6LYi7gQMT4C4O1z0DQol9o8GI009RNytBClr7BKdHOSXl/NlTIT/mw?=
 =?us-ascii?Q?gCA9Kh9UupxmxEQry2Lvg56c8kxFH40d+jHDnQ1OZHDML27Uqj8mBB5E6yFj?=
 =?us-ascii?Q?MegYfih/5FFA1y3DpOW7oILGKlAgC8WWKYkwIkdHXWnbTVwCcN0w7D4dmt8s?=
 =?us-ascii?Q?1gSdKwui7T15vfVnsTkVQpI01QQ8rndfPNVJDuGMR3o/bP2gtHCTr0Kztwjz?=
 =?us-ascii?Q?iPBBg0s7HDqPRfOSgHAVbBf2Uf2Csxh175hgR4H8kfL9qGTlg9Cj3/qpCjAO?=
 =?us-ascii?Q?lizyG9FItlPH0+R4Dc0ZwySsU/jS2lSbPg/E5iDAgNW4glVTAOgojy3ohT6q?=
 =?us-ascii?Q?Ac8cv67Rsbdq2GrFmaZeidENXPpYNxRLs97RGqFOLycOTwpiS4SVn9xKyiFJ?=
 =?us-ascii?Q?5P77Vw0LRsZ7/HTQF43vCzJAUralLGA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: twsHFTW32I4FjtmEnnCVYf/cl3uEFJIq8LhLc6z7v3qgxZEtS27ESBTCemSUQoqdhA1GiJnu39rVGzGIYh2LlSK9rBC5ZullEasJKcGlQdLWN84WHIAXPyx25IE9DfdZs+6O/zfcmAPPlcNZhPfjefy8X0rO8n36A+S4OmQni3ZrzqOHtKvs2KO4yvoIBiM4dPe5fH5xEE6XPuM7AQhOXr0cpGjtyp/7G/VkxaYn5dCyslLYsU/KTuJTxWgTMBKT4AdN5a249pwiaNhpMEU9chajE2106ngZHydMGUfFCTh8CaJykOkbLuYlD1B8QW+u3FZqC/AAhmRfynRJkgmH0g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85e1743e-0653-47da-3e6a-08de897a6c17
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 07:53:22.5618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NsH1LBDJf1O7roQhLseIjLInYmrnUQDNqtK4z/Oepdwpt8r6VTI8YJd3Ur/8SgazdYa8FrGjvr8pCavV9ZVvRwagvqbCrLv/XXzTKLoVWGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2AD6B04BA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774338808; x=1805874808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=22JAfpj+WslXC2nT3V1X7nPDZ6CK8PmakQw8gQzcBd0=;
 b=QhZSLZ2Dk28JBAv3YiEcla2eucoA2A4z5YeaXbV5i+VmL5Y/lX72tu/k
 tJ5bnQQia5AE0VBRirxuHoG2Qx8Z8XSsLH4xzdARDxjO9xx+XF9278Tcs
 MBUYvhfKmZc6DpipqPinFZ1JEKeqaXtSBJzrXZJ8EP6usLEGSrwuWeKPF
 EdIS7RYw+QP4u18QBkvi7gbcp7P3aqjWcihGtlydGtfkF6QDl4Puw5zNh
 C5KYaRqD9qxoTM3L1tP9tYKON/lL/C1FiX4Ik+hONRx5p1EnvBL2jL3Mk
 mXld+Z32qizJVYadWNgsBJrqkmln3n+x9lsgFsCu7/F7VNcbhwwepMGCV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QhZSLZ2D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 03/14] libeth: allow to
 create fill queues without NAPI
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
X-Rspamd-Queue-Id: 3437D304359
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
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 03/14] libeth: allow to
> create fill queues without NAPI
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Control queues can utilize libeth_rx fill queues, despite working
> outside of NAPI context. The only problem is standard fill queues
> requiring NAPI that provides them with the device pointer.
>=20
> Introduce a way to provide the device directly without using NAPI.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <bharath.r@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/libeth/rx.c | 12 ++++++++----
>  include/net/libeth/rx.h                |  4 +++-
>  2 files changed, 11 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/libeth/rx.c
> b/drivers/net/ethernet/intel/libeth/rx.c
> index 62521a1f4ec9..0c1a565a1b3a 100644
> --- a/drivers/net/ethernet/intel/libeth/rx.c
> +++ b/drivers/net/ethernet/intel/libeth/rx.c
> @@ -145,25 +145,29 @@ static bool libeth_rx_page_pool_params_zc(struct
> libeth_fq *fq,
>  /**
>   * libeth_rx_fq_create - create a PP with the default libeth settings
>   * @fq: buffer queue struct to fill
> - * @napi: &napi_struct covering this PP (no usage outside its poll
> loops)
> + * @napi_dev: &napi_struct for NAPI (data) queues, &device for others
>   *
>   * Return: %0 on success, -%errno on failure.
>   */
> -int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct
> *napi)
> +int libeth_rx_fq_create(struct libeth_fq *fq, void *napi_dev)
>  {
> +	struct napi_struct *napi =3D fq->no_napi ? NULL : napi_dev;
>  	struct page_pool_params pp =3D {
>  		.flags		=3D PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
>  		.order		=3D LIBETH_RX_PAGE_ORDER,
>  		.pool_size	=3D fq->count,
>  		.nid		=3D fq->nid,
> -		.dev		=3D napi->dev->dev.parent,
> -		.netdev		=3D napi->dev,
> +		.dev		=3D napi ? napi->dev->dev.parent : napi_dev,
> +		.netdev		=3D napi ? napi->dev : NULL,
>  		.napi		=3D napi,
>  	};
>  	struct libeth_fqe *fqes;
>  	struct page_pool *pool;
>  	int ret;
>=20
> +	if (!pp.netdev && fq->type =3D=3D LIBETH_FQE_MTU)
> +		return -EINVAL;
> +
>  	pp.dma_dir =3D fq->xdp ? DMA_BIDIRECTIONAL : DMA_FROM_DEVICE;
>=20
>  	if (!fq->hsplit)
> diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h index
> 5d991404845e..0e736846c5e8 100644
> --- a/include/net/libeth/rx.h
> +++ b/include/net/libeth/rx.h
> @@ -69,6 +69,7 @@ enum libeth_fqe_type {
>   * @type: type of the buffers this queue has
>   * @hsplit: flag whether header split is enabled
>   * @xdp: flag indicating whether XDP is enabled
> + * @no_napi: the queue is not a data queue and does not have NAPI
>   * @buf_len: HW-writeable length per each buffer
>   * @nid: ID of the closest NUMA node with memory
>   */
> @@ -85,12 +86,13 @@ struct libeth_fq {
>  	enum libeth_fqe_type	type:2;
>  	bool			hsplit:1;
>  	bool			xdp:1;
> +	bool			no_napi:1;
>=20
>  	u32			buf_len;
>  	int			nid;
>  };
>=20
> -int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct
> *napi);
> +int libeth_rx_fq_create(struct libeth_fq *fq, void *napi_dev);
>  void libeth_rx_fq_destroy(struct libeth_fq *fq);
>=20
>  /**
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
