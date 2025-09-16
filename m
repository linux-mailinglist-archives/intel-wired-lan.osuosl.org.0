Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D0BB591F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 11:21:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60AEC60902;
	Tue, 16 Sep 2025 09:21:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NML_mSG-ecVQ; Tue, 16 Sep 2025 09:21:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A3EB60AA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758014466;
	bh=qyT0cfgE1z62AEyMBq6ewaQoOVzPGmyAhdyyx1x/pzE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZePfp8xlzXJVwwzDkLxkHC4tG2etvp9F8YMYBzeoMPaUIe9uQrKjsC4YUr/Csu6J0
	 u53Qj+4pQh+Oc5GB0ioNCog86eyCsQfF+yqlF9PnSTJcZuD+B0kmEClBXn5Sr7eOer
	 +ORH09+MPq0pGU2XxzrB7E3trpVo5qVzBq/sK0BFj2I5SG6dpSTCX96yOVN51JAWMI
	 D8V4gi8DyyXtfWPWz4GqJX3nNSdiz1qbFpbMqDHB03RSEHfFjeHdw1q8v44gLAe3hH
	 KqSxqr42ianN2By4DUErUiq+NEczP+hA0YNWW7OctoGLKWrjiKmbCqZA4+gzNXR8Nv
	 UbVDK+3YWkC0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A3EB60AA0;
	Tue, 16 Sep 2025 09:21:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A8C7312D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A6A9608F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id icrrlJ9YvXDf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 09:21:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 53ADA6087E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53ADA6087E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53ADA6087E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 09:21:00 +0000 (UTC)
X-CSE-ConnectionGUID: /Pvulou2SdG2GXV2ClpfwQ==
X-CSE-MsgGUID: ue8Mh06jSa64h4FWnXXf8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="60157279"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="60157279"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:21:00 -0700
X-CSE-ConnectionGUID: lGyDZaoISruOlpH1xWO4yw==
X-CSE-MsgGUID: Q/y7aG+YQWGEyiM3SEWOjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174969252"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:21:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:20:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 02:20:59 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:20:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zLZM9h+/C6ItAv3+s/odkBmm6zrTPm5FFjLjjJPpzScvoC9L3INWM6WalD9rvhp8zQML2Gy0sRuUFmHTexXaKne7IiNnZorlA9cS15eSUbCVqKrjAlT1XDnYjFT1q2wrpQgxjfR+ueuJj47YCrYYx4VHsxm3r+FTLDnMFsaWG6C3E+MEvVxNNHmxc3kmUgiF3IVgsYO+PaLtRXaqLoEOClh/jpM2MT0hx4iraPc71LAayxxf+KQ5Dn4wPmSvyd+g6yoCgvgRd6S4OS6BG5LLCYxrXJo2fv0P4/8+01qa54h24ti0udjFKPhyvrBT0Hc8RGDCB75PhIJ1RnYCWCBKjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qyT0cfgE1z62AEyMBq6ewaQoOVzPGmyAhdyyx1x/pzE=;
 b=Sp9zIY7DxlbAmy1+ABqTcAKmUVnu275eHTjJ60GYX0iMk8M2K426XFVcZdU2Vs2/rMQSodn+T7wF7zSc7AbUASUxFODf6QUpDVcwGujSgWe+Z7IHQCS/zHLxXT5CgdR+5njvN+TbF9tm2khSoIg43m6ELKYDPcUmYEm2PlWGAs36ry/RMlzxJ0rEM6UFSxQRcyR+5aCQF09tWsTGIKRS+Mdf2U+q0tTMJ2tXolglciSyPdGjg6UDQ6KZZxzwmIWBz/9Po4Fe8JyPD2VKeZyikX/0rmVxzy68bxa0/Ardb7v0FOlCC24A8fdtBJL/P9qfvok2PjZ6IaMUuzraQPFbKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PPF8F79256C7.namprd11.prod.outlook.com (2603:10b6:f:fc00::f37)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Tue, 16 Sep
 2025 09:19:56 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.021; Tue, 16 Sep 2025
 09:19:47 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 1/2] ice: move
 ice_qp_[ena|dis] for reuse
Thread-Index: AQHcEIRAtMMOQg8LtUyb2isGMVCpF7SVWP/A
Date: Tue, 16 Sep 2025 09:19:47 +0000
Message-ID: <IA1PR11MB6241C735D6ABAC9A13E4E11D8B14A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250818132257.21720-1-paul.greenwalt@intel.com>
 <20250818132257.21720-2-paul.greenwalt@intel.com>
In-Reply-To: <20250818132257.21720-2-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PPF8F79256C7:EE_
x-ms-office365-filtering-correlation-id: 133730fa-e65f-45cf-e1fa-08ddf5022e59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?tknJayzKQgbGJGCoMCRRDyQm8LdQBhwkNvajOP/DXtHaieJsqsqb1crIc42N?=
 =?us-ascii?Q?g1LYQiOba3WeK0oXahRXIk9zKE7ahMgg5mrZxj1o/LadyVgWDzmaT8y7ZJ3q?=
 =?us-ascii?Q?PX6D5s1U9z7IswFPiID1ScbxR2BF8Fjbq9m5aPOI6r48GFG0ruT3ljwsnBy5?=
 =?us-ascii?Q?mZkDafNIkFUb4CEuK12oCjuObANmpSJEDOGAvXaJ5sCUr1fpaOADS/SWAIMh?=
 =?us-ascii?Q?Tb4I0ygfGBla8gG59znvIhBtLykn5veTBL5HcA4Ph9IF+5QDbRLzyIwkCrd5?=
 =?us-ascii?Q?1fx3EcHwdLlASPimLtz1nlBTDV3nveAfgHIORZ3KfJLgczr3N/E1FJbS/l+n?=
 =?us-ascii?Q?O5/Iu8LYwmiv8bhELlM2dTcZnlZ1UN8AeYBpEGF+y23ZklXwirzGRWoKLibu?=
 =?us-ascii?Q?h/LxPgL3p6zfX4YJz1AqlBDmr01DlwyJcFxT8cXeHN1pn9gRrspu53XfKJ9Q?=
 =?us-ascii?Q?0L57CMQVSnTOrgB3HoByXt0s0HJmmcratBFxPgkKrT9E4Ywdyc2oRTqMubmr?=
 =?us-ascii?Q?ByClyKsDFzMA8wOL01rr2vdar4EV+b+UxY4ojzZ/JbzX7TZD7BpYzkFVOKMt?=
 =?us-ascii?Q?L2l+Ka4Sl9L+cXKCEfO6EmvZDDLIktAi5qD7PRu2ygzch0s1/+LkPnBx0kBw?=
 =?us-ascii?Q?3Yv54QGUajmOk143a2XR48Q6824ib1T5Z/8Tc18zjs70wsKR2zUfjsUCWKEB?=
 =?us-ascii?Q?sWyefAQllZD2Cx3J7Ze2JaD1MFZm5xl6pdls5AewQhjXiCntFdF0dSqFjZ8k?=
 =?us-ascii?Q?Q7MxpM6ihzlJHV+l3INMYpmCxXWP/gsrDvLVNbMq1O8CoOofJPUbVUZHZHbb?=
 =?us-ascii?Q?vppTUPufab38zTRr3cC+nkSrsGkm+rIfhvZs3vsEH4cY952tm6hI1KaAgOLS?=
 =?us-ascii?Q?c81QuCUac2G9Ap93ajMAg2pE1xGtRp5WqXTL5Mf/RG0GaZml69W6SgoLTSgk?=
 =?us-ascii?Q?ihe21fJtr2E1y0m/h/iHDt2uPo/ZVlvgE0sAS6gK0AyxumTL0mOI1i17daIk?=
 =?us-ascii?Q?uVI+yc9HgpgMtrknBWlFt1C2rVliIh2PLqg+1UrDhQm0WCVsR3nR6cU/hPkx?=
 =?us-ascii?Q?rNmdfxc6+MqezfvLO2Q+dTd+ChzjsiRhhwfu0EnSrj1xyDpYH/tTpdVq9vCf?=
 =?us-ascii?Q?oNh9gnavNigHyetHvYkgK/zgQuRer3p7t0OVRNTwTGnbIzUOTjSQG/sUcgiX?=
 =?us-ascii?Q?50GyNZpGHzvVuIhFr1c/VZzIQ3Mkvotl2+3JPkLnZw5AaepWRkRCIbGb+oik?=
 =?us-ascii?Q?DiQW64bwvoRDbMdYpL60mE7+SOjDGrIekE/QgIzPOeqwk0auzXq7iUZXQByH?=
 =?us-ascii?Q?lngFHPQBwdqGQcF+XF1cNDspIHQCWwXTMfy5WBtGVmeziaWG9RjxM45NoiNd?=
 =?us-ascii?Q?gB4/0IoJIFYZPN+rnWFMv6zeAn5tdWwvYboJygcNCt4yKeogNnTFqjTmmti/?=
 =?us-ascii?Q?A0kZTkc3buNWTz31Tsrt4CgbQN0Ay0gEpgJOuCW1ExSXCpAcykkEcQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?N7OA7ljGaRTEUE6Sh8I0yEHU9zJhxP6tL4HF2uoeDOYRQhEhTAB7J5sSy8hl?=
 =?us-ascii?Q?ukOu0wdTRhcjweEjw7ndsuF9gJ39VPJUP1SknuC5TNGlxTekVpIEGQ1vnGsd?=
 =?us-ascii?Q?MZOihEsd1B4arwHDY1PbhXR7pAiN6hOgIKeT0rJH87AKtcfVmgzQPPCBjREC?=
 =?us-ascii?Q?i5Yjh7R8vcFmi/Oyf1qdSxG2HXtMD3R0SSTB2uiCII6pJ8GTUXo9AExFO85V?=
 =?us-ascii?Q?EdHPFnUgJ2+w6R9MD/32hedYJ6nbmORUt3zX6gK999Usiq7BBu/2t0ilqzaz?=
 =?us-ascii?Q?KpatCEUrrGn85AMUmZNtvamz8n9R4nVzxDsDY19O+MFvl+u3cgpGMdYbLJuK?=
 =?us-ascii?Q?26FLCAljOlk+z8pukODAb2aD00hBRMwu2pjHkd9G6BEGS0VM60raEbA0oSLV?=
 =?us-ascii?Q?dw6o6EXSnFQCLJtv5MZ6vuB8V/buktWP7CX7BGMtNtZxs/rxLv5WuY1a/eKZ?=
 =?us-ascii?Q?xW64bWP/27mS5B8lQ70H/CHVfZOVx+MeMJKt+IVf2ijtzEgLU5qCQ3Vw2dOU?=
 =?us-ascii?Q?cGpgBIUk0uDNo8MYEVSqYBvhjcenub3RgdSxW6GPk6ttCZd2D4DT6TNShBIO?=
 =?us-ascii?Q?Yzz8rooXHrQnRISaBjDMLUWglyNKfNEZLnSQsXEOWQ8wdoeCwy53o8FTDWQ6?=
 =?us-ascii?Q?KAKxREmUChLOiA/zfCrgVQUtXmL33Xx64MuvhqdJVFhcLiaSCi4hlk3BA9Dr?=
 =?us-ascii?Q?59E0EKmhedfxEmUOFGoOMLYPPqWdI75VGKg2O18TeKErMWvu9cEOJhBsbyDT?=
 =?us-ascii?Q?gC17HSNGVl7JkvafBAz2Cu374MyKVuLNvmZJNDmPHwywt2mW25f8qmE+6bDv?=
 =?us-ascii?Q?luLlSXpwjW+4UHtLE0T2uwG8qojb+y2xY3kSrsUTl++f7jFmrk4AMfUrhgRF?=
 =?us-ascii?Q?hJV5nHgmRYeGuaUSqBEHveZVlg74HWOPVC+L83sMg14nRH87H/BeDXnjmt6N?=
 =?us-ascii?Q?+/Qv8pDHY0zT9rujl+wRWhb23zgoCaEmXHm3mIILfFuBZ+eWJwwp1MPzU9q4?=
 =?us-ascii?Q?xkiodimXXoyE0vkC1aobpSknDgi712Z4pbRgFi9OvKnDoeBKmz405dLLeLzU?=
 =?us-ascii?Q?fBhTVOBdU3vJ/E49ZGRVsnJSjRY2RoL2IhOxk6+VVTjRPg5FZ4GvgI5sikLD?=
 =?us-ascii?Q?Pc9BPy3tPE5W5jWvmkMXxziwPjwJHukWygnufho3ThSoyGinm0qeIo8smojd?=
 =?us-ascii?Q?wynKod3ZNH7VhoVVLZRvujImeyq2N969TbdHstkYK4aTtbJ35Y/UIUGoR5VU?=
 =?us-ascii?Q?bsqb8k39b0Z7bTi9vw3TXITZ7SP7Y3+Gqr6lXFgahiZ9Yz728euHvgWJe4FM?=
 =?us-ascii?Q?jhZ8mU2pTV1XckWTK4ICzUunNBDgKnnqFMu6jpwC2escNrOlaLiYg8agFIVu?=
 =?us-ascii?Q?WgzBa2mL5a3a+AhKKpT/fRO5KLTPsnyhBeMhxeuUbpWyhlmkt12uL2AW+bIH?=
 =?us-ascii?Q?PXeJQN9YxadJhlWfebpEMMH3X49rrr2QCvq6rT8ASCNpn60Nvi3zGTQrQJ5t?=
 =?us-ascii?Q?oGEF2tHD+S/XSoDReOxcsmUnUBSmGcGhxH/Vj9qDiaWy41KZQsAN30nF/3Tj?=
 =?us-ascii?Q?UYLIbEFYeNO9ZJLQ+r4pFL/cAIX8lHi643a+It/B?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 133730fa-e65f-45cf-e1fa-08ddf5022e59
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 09:19:47.2590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cdUOjv23371HBj0414ur6WNg+UJsRpaFAeNZX6FI7CQ63WYUZPD2X6yGbkJT6VcanECjzqO50g1TZdfxTumWPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF8F79256C7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758014461; x=1789550461;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IxVxzBhYJd6plXZJrcfQCWNWcgvITIh+7GYQnOwXybk=;
 b=TsxKVSMn0G3Q7yQpltfduunWNxQHcrnSsZMM/CIBlF3MfxcLe2XmbxQ0
 O+fi2uZ7puOfB0K/ZT0XIpstS1tZ9bnXtKCuv+1jS78t0RilNnxQ+D4ru
 +LJUyvYH0QXhUFHC+Mhp10PXPhPTwDMiFs1aGXKUvx68xzcvQDxKzxhAu
 ON9plLnC6JHU7l7/RBx5uFjUXj612e8XxuAiaIE3Bz3mIdFV9j98jZPw8
 rCCEys6Ji/AElP3YyNHyoZ7Ojn5LhpG4W44fFANyi6MfQYjMVmr6qJNDi
 Lrth9DD+hKm/Asxc92uQkOcxy9DpO+I5oZM3NsY8/5rUW7nvadsqj0amI
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TsxKVSMn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 1/2] ice: move
 ice_qp_[ena|dis] for reuse
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: 18 August 2025 18:53
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Greenwalt, Paul <=
paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 1/2] ice: move ice_qp_[ena|=
dis] for reuse
>
> Move ice_qp_[ena|dis] and related helper functions to ice_base.c to allow=
 reuse of these function currently only used by ice_xsk.c.
>
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_base.c | 145 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_base.h |   2 +
> drivers/net/ethernet/intel/ice/ice_xsk.c  | 153 +---------------------  d=
rivers/net/ethernet/intel/ice/ice_xsk.h  |  22 ++++
> 4 files changed, 173 insertions(+), 149 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
