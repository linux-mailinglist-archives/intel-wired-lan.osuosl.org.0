Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJYvK1uR32l0WAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 15:23:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 650CF404BE9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 15:23:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB03343CDA;
	Wed, 15 Apr 2026 13:23:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9dZUj97C-fw; Wed, 15 Apr 2026 13:23:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C7C044BE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776259414;
	bh=jeIPMj17X8UCu5J92Igw713pXmE4F3dD7RqBQA1E4e8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X7H3WLvfNqu7blOhluYKOEWRkalE7zDU3y5t28r9YfrCh5COmr8lgIg+OYG5WyjWL
	 C5asDkIZBmUTksYmv91Mds5SO2idQJ0Y+siS4fjpLVHXxQg066I5IHcKt7fG5M0Y4r
	 fwCjMrjAnamAiscm2OJldWCfCxlNt+RbobXSBacwuSPpvO2pNufUZQy0nA4LEwdDb+
	 XLJdCWQPDcqquiaL7Dx77nw8GSsikUBo53TInavadytwb9PGOrSCKKfiSkb5eQ6EoL
	 FcZbXW7SPCwIGZMa74nj24ytnYSxdTT3fOlxl5LOWD8DSwNFxamoPRxREDN4exjQRI
	 GSry+pOSSsH/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C7C044BE3;
	Wed, 15 Apr 2026 13:23:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F60B375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90F0661CF8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rbXqeRjxXS8X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 13:23:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0EA8D61748
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EA8D61748
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0EA8D61748
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 13:23:31 +0000 (UTC)
X-CSE-ConnectionGUID: vmFrdNqtRB2SwuPxKEhsrg==
X-CSE-MsgGUID: 8goYI2SnReuQrSIwKoxIQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76939041"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76939041"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 06:23:31 -0700
X-CSE-ConnectionGUID: rlsW1jhbRvab25K2noiwvA==
X-CSE-MsgGUID: jTsOjsU2QUWexX+cR6gzgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="225723412"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 06:23:30 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 06:23:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 06:23:30 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 06:23:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I8M6462l3t+ENCuAafDDQcRJUIgRRk6FsweFG5bMB+8k6pP2z5snoB61Lwq5u5GfcrpJ/WS3hLBTNa8DRtfaPzKGFQAK/s7VX1i4oc166SZGayv5ai+fYs77ell7jHlivb5gkhPThZjhsI1uO+AO4pYVJyY1lthe0gYDA+x7c6f4DjFs1eIYv0YQd4O8Xz3FDmJe9lJfAQqmOkmeQC00wzIkPdU1PY3rtq7Z0dbxeKh+8uiSC3OfKXauAAqOVTTm1cMe5yPHHhKHAwCBjxgoA4I/Xq5wVdj1FR1ZeFdbRWTHT2btgFkb2LyvbNBHOtbUb4x0aD1D8svT8r/1y5O66A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jeIPMj17X8UCu5J92Igw713pXmE4F3dD7RqBQA1E4e8=;
 b=M2BC+brRw11udayo0XFpyOD3KReQOPr1Y4L0PzrQ87fpK5WXJvURpXXEym/xPFsBk0esIriyw5ATD0MVEHlFOWvtQyT791zzpMSWUNwMH1hqrIF6Pnr9+My4Cy7ytQRkzFNNrIvE68hoRtPgsCTTEoqyYQfI1Uik2KAiGXl0G02Fq3JTwdjz8R2EIMl/qtC1EUapPLFZLcYeAQZfZ/KQo8xadnKa57UPol+QIFTNxJIwcbMbJU+jDb7BcDPEIK6h2czAlq7DYrJPJxj/GCKRcl3x0IodgIPFSodRXbywGfpldoptkpbSRJkup+WcelybJWDUT2nscRVj7dBTQn/MKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by MW4PR11MB7053.namprd11.prod.outlook.com (2603:10b6:303:221::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.46; Wed, 15 Apr
 2026 13:23:22 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 13:23:22 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH v5 net-next 0/8] dpll/ice: Add TXC DPLL type and full TX
 reference clock control for E825
Thread-Index: AQHcwvXix3hjxSFB2EyUhfJETBJtn7XS5QsAgAO7FYCAAOemgIAA3aQAgABojwCAA9gqAIACh5+AgADpDdA=
Date: Wed, 15 Apr 2026 13:23:22 +0000
Message-ID: <IA0PR11MB737842E2098D0952A8BA1FE29B222@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
 <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260409181041.395a0c37@kernel.org>
 <IA1PR11MB62194BF52262FCEB7FD5E76D92592@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260410133812.4cf9b090@kernel.org>
 <IA0PR11MB737882B384AE7279EBCD05C79B242@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260414145835.07fbe355@kernel.org>
In-Reply-To: <20260414145835.07fbe355@kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|MW4PR11MB7053:EE_
x-ms-office365-filtering-correlation-id: 95ed6515-9c5f-4515-85d2-08de9af22afb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: xKsJ9nXcH0evS1/mrP0p3y76tVc97yPDry8d+HbYaikAVHPeqfLalSjd7JX1pBEoLrOODXPT6CbvGkcOryIbleLmiihX34k99Na8/sGw36Licwf1Qn/s5q7EIebKbKg5vmWZmjWgfuyExW5K0GiCORUl0XWLz9m9jGO3DYOt++7H5CoykzX1CndMphHoWBLuCUlZ4BE6FyV6c72fkBNlczcPa6kYpzzaH8t77HNlKV0l5ids1iRdfndXaxzm/22zvyjW1qPhDCLy54IaxfOOV2kGV6Xwp1uYwmx8McYmkMrIrmZ+4shtcObL8XXaIs5yQzAOmYjN7VNcYTaZEZIMuzF6I5jvSpLuYUGvCoZTcpsvnzHiBxfjU19HBnPT06LGD62gZ4XNdHyvJM0EJKP+w0yMGTVCyHu82bIy7KLJG0UK4fCakDsKmV/wTFT6iolSUvpK4uXbxMA6GPEgjAlTpDI6wFl74OayyU+/3Ioo99gpVCrXyOT/q/P3BWYa4BWxCFGwjTDnwKog2A0ch7BZh6LeCKhypykDpt9JN7l4UgRVLUjJzEdOPn9E+vdAqIDoT2iPU0Z3rCyWw1yrpmnHwlnn54HMZHlXkLdfRU6uKPNaKIiNADvpJrWrEVQTKRvSZN30d0QfMeaBBduj9z7gEo8NViV4EXHYmwudD+sz9/qgJ1pW1UV+N0A64JVfKgl9QxwynaxcFtJSiFNeOIeb4HOX8JdfR99AHVrhbBI4IZg+sieMv1KNqsoyLMEsSKm/XSAf1phuLKi77UtaiFO4cgHDQjGmnP0IV6Pw7H/CjY0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HMHVYcwYVUX3FEMVS9Jvk75DGim3Jg8zEwnTQlbvdEgtMoXowQgsSH5/bRN7?=
 =?us-ascii?Q?fM6HEc8+w3l7VVz2U8/KRNz9DwoOmf/86+YjPgrJYT/35Mmg2BMec/+6XuVd?=
 =?us-ascii?Q?soxjD+hcccCI/1UCn8FV/MUVn0j8HiCAmsZ4lD5mTdcDvpmFwy9LyeblqPX5?=
 =?us-ascii?Q?enxZBpvipObf6DwHorXEgvch2D54Ysl4NfHH8S/AZ2npzsGdT846qnXk/3Ns?=
 =?us-ascii?Q?G0PVU0EIEEmlCQKBNShLeY71iOWMW6mpttcrx5jJw1MYq9NRfubvH8OUvWyG?=
 =?us-ascii?Q?2l5zL0+ShxAuJrN1nb9zU7uEfqj6l/vpvDC1aXm1NNvq9ooPQoUdpUt4Jqcs?=
 =?us-ascii?Q?IIDUVpnDUCRR7oeIgu36Qo5UqNKpsq4nCPVRTkI5Ew/B1m/9rJ4C67xTC0QB?=
 =?us-ascii?Q?5d56Uxl5SBjMunUShOW/fTJc2pmhS9FgxB18IeIJVkzU5lJ2a5l+hzDlKJW8?=
 =?us-ascii?Q?xI1dwBivWCU/V4hjLkxolVufwt23G0HGUYGJlrzrJDtdal7+5w8Aw5rxDVLe?=
 =?us-ascii?Q?Cqh5HvqkNepv+d6C4/V43ce2MDUyjF0u7DVEYY8+0P6b8C0MEizGn2CvrHAk?=
 =?us-ascii?Q?dCH2NWsgBwZ9icCwC4WCp9arYB94oorv6CvzeBGDJvqi1wCeUL20okaBN7WG?=
 =?us-ascii?Q?WHE3JXR5NmVWG25X8rJF2zy9T/X5avyp8o/k7PsSp8dvu7X4FI1F6lqO0Zpa?=
 =?us-ascii?Q?tDmCt2HdLoFi1A6JnsJrSw/8N1AmKxIvY/Ju+Ex4uI78Nj2jtNKijKTV/LCy?=
 =?us-ascii?Q?nYXZPJg69uFVE9xC73gLi1RKVbe3Jh09zQc5WZg8xeyVPHDLX7YXL3D3UqlW?=
 =?us-ascii?Q?gPMZfxR+5GdRuOsI6Tvdp35bU4/eP3CYfiRWoA2ASRnbQYB058azW35ejnnF?=
 =?us-ascii?Q?YcJLuIVBdNFcpMkVqlFTwZGp1nZumVpIq95CFFORQZOOxv/Zr/26pAQ+OT9K?=
 =?us-ascii?Q?ttrOIE+PD9Ui92CGZ5IiCe9g/RDHIydZGL0js8Mh8iwP4j/KjZVjvKy6FWbK?=
 =?us-ascii?Q?KuVik3RAK6CrPrAe6odCzsKxwApnGrrX74pCUHDTNAgD0Ozjxn499Xl4e6R3?=
 =?us-ascii?Q?DREh7fDR2tgDBjNy2MruFLfoefZjPvNAfSOAXCGfd5/0PW8WMKkmm/loMc3c?=
 =?us-ascii?Q?GVfKyh0NCdTfjiQdYw5U2FxjHKNSa2NOEydTJB4twQU+uy//PCgyx+9cdlV7?=
 =?us-ascii?Q?6A2NrAb2XZ0cYueDoi//0EDhqWqwSmVsikdre8DLvCcckzvPx3trcBsVIRdv?=
 =?us-ascii?Q?vxtEU1rmJhKc64ZmVN+WaGkKUz7agPv/sjIkw9i6SXJJXK0H/RuWcDS+1ENz?=
 =?us-ascii?Q?vq+I5aGutWFwk16c9TRVQSDOhCjWoLfvtrQGx9MmRk6cxJnPNgSyQrUw+++z?=
 =?us-ascii?Q?XVcjJRxUwDXISxUkP2jmYkBQibIQLdQkw80v59ELemasleKU+5bnxpO2FDN6?=
 =?us-ascii?Q?X5XmvlMl2mDdmjr9aL8JZJ1PfiNSCD/TGLIzInpFe74N6Hm4SOR7KED3TW60?=
 =?us-ascii?Q?F15YngWVckwakke4f74wx4t++CWW5Oz5cAOpCoPfV6uVj+gVctp2AEJnYc0Q?=
 =?us-ascii?Q?85tTSvpLhwPFKTR/awLr+GToNslZd983vtPpkYQrninnAclcISffTTmuHDNh?=
 =?us-ascii?Q?ST28bWsDrW7gS9kiyt+Y9KWpLhTEK9xUyudc3qiuh12/dvKQC5qzsv6ic7wG?=
 =?us-ascii?Q?r0D07ESKknAH4vyva9y3QA0ReOkfdehYxH3jHu6iLK0TL6GK0Vz438Ubpzvp?=
 =?us-ascii?Q?xcHGRR9SHR9SZtUbdljyz82tSsEEV4A=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Qh/eYldPzodRzavUxe2K68WJPoIaNSrZDt6oy35MexK6J7QFUQJqIrxHXP82S5vb88Dok5XTCMWh1oBYMlw9zP5QhfXFE3zGm1FeI9xF3QJ+GSI42s2EZDHXHT1Sj6C2gLzg2iyTE4PDbWyxPLeMxW3HzkiyUyxa31UKyWombQgvFQEJz38Ei1MDIZqMUzb48F2lE6INE0sWzZeuOCKI99jKBXNEinrteYzsZ1MZPTtZKlMXgBFuZXoAiKak0lrS48Kl0tsUnKxET8j2VDue3/V4LYkVXEB9ke2JILCBKJ4AytltpCHX2pUXTrpgfeYLUgvPGfW8ccjVrJeJqE7y1Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95ed6515-9c5f-4515-85d2-08de9af22afb
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2026 13:23:22.6756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NH8cY/pHYzsxAJ1RCsdMrsFZ/OQWOyrUVHQtDyBBKfxuz5dRKTmAztNAjcfAyHqSb01Q5SaSCn96QDT5uPoh+MeH+weRvoCwTtBBTG2OHX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7053
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776259412; x=1807795412;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jeIPMj17X8UCu5J92Igw713pXmE4F3dD7RqBQA1E4e8=;
 b=QBJDKM0uVrqQvvghsGFE5LT0bslFe0oWVs9pC7FEGcdwpN+qaLgU1MZJ
 zzU8sbksZ6PVA5ecAK7IV2unPVXR/BccgOijkxF22zDQjF4gaBAj0z5FX
 rdv4SK1t6umGVwpYoB3s2bZxt2+h6TyWp+pzFz9laQ7loO+ltNfc6q8P2
 GVZsURGW6dgUWzHRvpt4bs72CLiLvyj2y36b78xrVdk5hH4u5BIxLQcKc
 IHIMjOYqOJndxPpIDenpVbbeK9bZbFWRpX1l0mWltcLq450ylNh7w+OWf
 LNZ01Kjbz/70ba+PyJaOwzWVNqbj7V0FXxbXR3CTemp1RMrLR6Uz8CPX/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QBJDKM0u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC
 DPLL type and full TX reference clock control for E825
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "jiri@resnulli.us" <jiri@resnulli.us>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:davem@davemloft.net,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:jiri@resnulli.us,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA0PR11MB7378.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 650CF404BE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Tuesday, April 14, 2026 11:59 PM
>
>On Mon, 13 Apr 2026 08:19:30 +0000 Kubalewski, Arkadiusz wrote:
>>> My concern is that I think this is a pretty run of the mill SyncE
>>> design. If we need to pretend we have two DPLLs here if we really
>>> only have one and a mux - then our APIs are mis-designed :(
>>
>> Well, the true is that we did not anticipated per-port control of the
>> TX clock source, as a single DPLL device could drive multiple of such.
>>
>> This is not true, that we pretend there is a second PLL - there is a
>> PLL on each TX clock, maybe not a full DPLL, but still the loop with
>> a control over it's sources is there and it has the same 2 external
>> sources + default XO.
>
>Don't we put that MAC PLL into bypass mode if we feed a clock from
>the EEC DPLL?

This HW doesn't use EEC DPLL signal to feed MAC clock, as DPLL is
external from NIC point of view. Only 2 signals from such external DPLL
device are used by NIC:
- synce (a single source for all those TXC per-port DPLL device)
- time_ref (a source for the TS_PLL - which drives PTP timer)

Grzegorz is now working on submitting the patches for later one.

>
>> A mentioned try of adding per port MUX-type pin, just to give some
>>control
>> to the user, is where we wanted to simplify things, but in the end the
>>API
>> would have to be modified in significant way, various paths related to
>>pin
>> registration and keeping correct references, just to make working case
>> for the pin_on_pin_register and it's internals. We decided that the
>>burden
>> and impact for existing design was to high.
>>
>> And that is why the TXC approach emerged, the change of DPLL is minimal,
>> The model is still correct from user perspective, SyncE SW controller
>>shall
>> anticipate possibility that per-port TXC dpll is there
>
>We are starting to push into what was previously the domain of
>drivers/clk, tho. IIUC the "ASIC PLL"s are usually integrated with
>clock dividers. And cannot be "configured" after chip init / async
>reset (which is why I presume you whack a reset in patch 7?).

Well, we need CGU-dividers change for a frequency-compliance with lower
link speeds, the link reset which is required as part of tx-clk switch
and link establishment on a new clock.

>
>> This particular device and driver doesn't implement any EEC-type DPLL
>> device, the one could think that we can just change the type here and
>>use
>> EEC type instead of new one TXC - since we share pins from external dpll
>> driver, which is EEC type, and our DPLL device would have different
>>clock_id
>> and module. But, further designs, where a single NIC is having control
>>over
>> both a EEC DPLL and ability to control each source per-port this would
>>be
>> problematic. At least one NIC Port driver would have to have 2 EEC-type
>>DPLLs
>> leaving user with extra confusion.
>
>The distinction between TXC and EEC dpll is confusing.
>I thought EEC one _was_supposed_to_ drive the Tx clock?
>What PPS means is obvious, what EEC means if not driving Tx clock is
>unclear to me..
>

Yes, correct, EEC DPLL main task would be to drive TX clocks of NIC
ports, but if there is a per-port control something extra is required.

>Let me summarize my concerns - we need to navigate the split between
>drivers/clk and dpll. We need a distinction on what goes where, because
>every ASIC has a bunch of PLLs which until now have been controlled by
>device tree (if at all). If the main question we want to answer is
>"which clock ref is used to drive internal clock" all we need is a MUX.
>If we want to make dpll cover also ASIC PLLs for platforms without
>device tree we need a more generic name than TXC, IMHO.

Well, 'floating' MUX type pin not connected to any dpll would require a
lot of additional implementations, just to allow source selection, as we
have tried it already.

Wouldn't more generic name cause a DPLL purpose problem?
We still want to make sure that given DPLL device would serve the role
of source selection for particular port where a source pin should be an
output either on EEC dpll or some external signal generator but somehow
related to SyncE or similar solutions.

Thanks,
Arkadiusz
