Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9E5B2EE47
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 08:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 150C0813A4;
	Thu, 21 Aug 2025 06:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hmsKWf9nCOXo; Thu, 21 Aug 2025 06:35:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AD3F8139F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755758112;
	bh=HOMZ9lrjBNaKAHgtuRRpgw6QmhIUX7KE3JEvuxcXzvM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=heEOmzDdVAV44atybyj3hwSZ+YXXEsUn57VYHfMi81kbDAVqctgUznYTuILtaUJwp
	 VcWT2grU81kYT7uU/gE7sPlHZuiudQzSY1MzESyNA42W29S8pCzXQR2GRcfODsQLJZ
	 CKqUlayaiQoUUWsZMwC/dy2ZpuBkmfFLEo405ux18Rt448qu5UDvawmbmwWptq7NEb
	 LecxNpQ3Z0am5uo2UPJslsrAMlriN/Ojnuo+cgdD+jNiv44OkGujTzXvC95saAd3rC
	 sLwCfqfbvcp/dPkARQlMbrlN20dgZC8mLep4x9ZpcJ7jn0aOA3Ru0mEmJq+t9YrXk5
	 DbBQT+6B1xrDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AD3F8139F;
	Thu, 21 Aug 2025 06:35:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D331E0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 06:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3044940320
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 06:35:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i8jdlEwGjg5u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 06:35:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 751E540809
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 751E540809
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 751E540809
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 06:35:08 +0000 (UTC)
X-CSE-ConnectionGUID: NlauWtCaQFuX/p5vvmruNw==
X-CSE-MsgGUID: Xk68tz+ARKWfJ90IwGvmdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="80632095"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="80632095"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 23:35:08 -0700
X-CSE-ConnectionGUID: s1YWI/2xQ/mpPtw1vAkgwQ==
X-CSE-MsgGUID: tfTryhiuRtOP8zG5Y5scIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="172746951"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 23:35:08 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 23:35:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 23:35:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.71)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 23:35:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cUN0My0CHYqf2sTIFlLRFezIDkb1iQIr/YmS05TeyoGmOKWPmshs0/Ll3yi7fByITwxZzkPcAr9r1db8vBWYa7oTdaeu83L3X89GkU8FoxAu6xNffRVambv0fL4/zXF8DLrp0dS22CDvj0QNkdd2J8voXABdSn/rdWIgYOapSh7ez4fLp6RNMaVadebVsHnmtVbvLs4pULt7YUaEXtqTggrZX1Yfo6HKM313qTKscCxR1rQmhKiEr/9xZJMp0i6xfA2hi/2tc6jk4Yub4TMUwg59AHuNN56ohdzK87HaaALl9GyEH1/D7m9PoOz0ltfwvU9fZdLL/DtWt4SCTu71YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HOMZ9lrjBNaKAHgtuRRpgw6QmhIUX7KE3JEvuxcXzvM=;
 b=boE7I89eNvhuwmCiIZmVO8lRme+Jn7fSPpPK2l9D91seN+DsDDu56BZSBOEQChoo8RxFswWrDBS1BOOERbDq9nsMuGhcbG1B5jJwL0mLW5azIFWKEbDvu6pEd19c24w+Ymf0vA/yVL7E/zUlHmT//VLLwXtkKxT5eylL1RS/dLS+Ju25dh7fwpwp2XR804dhFYNnFJb7fbtY0wC9q/oJ/Uanqk5gMVepGbRQIDGNKPLF4AO9yGjmQH7rqnKraJBoml/y0asYP6QyPh1gTXsrdQ68Ugjpu90c00Hmfor0zBmYGQTuLHmmNfqGWaTrjN2boeGDwQpwueaW/i7OMhPXVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 (2603:10b6:518:1::d28) by DS4PPFA424F92C2.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Thu, 21 Aug
 2025 06:35:04 +0000
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480]) by PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480%4]) with mapi id 15.20.9031.023; Thu, 21 Aug 2025
 06:35:04 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter for
 buffer allocation failures
Thread-Index: AQHcCHzKm0URyTWIbkCtGiy+UHkQJLRsqjpggAALXmCAAAQUgA==
Date: Thu, 21 Aug 2025 06:35:04 +0000
Message-ID: <PH3PPF67C992ECC512DABFC86B37C0997289132A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
References: <20250808155310.1053477-1-michal.kubiak@intel.com>
 <PH0PR11MB5013285B7475C7F6ABEC1E4E9632A@PH0PR11MB5013.namprd11.prod.outlook.com>
 <PH3PPF67C992ECCA25302AB283AF3CBDBDF9132A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
In-Reply-To: <PH3PPF67C992ECCA25302AB283AF3CBDBDF9132A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF67C992ECC:EE_|DS4PPFA424F92C2:EE_
x-ms-office365-filtering-correlation-id: 71ff1259-f566-408e-ea80-08dde07cdce5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?vw7yvBoIQZwNSTONRPC2hSEaoplYU3nb5e7B2AhYuL7bOzB5NhVfjIjC7NWk?=
 =?us-ascii?Q?kCE47ggEP7atVCpQKfkc36LQSYYFsVy+WouojQaBYqVGpKGPEdXswvvAuCwb?=
 =?us-ascii?Q?X3eRy+urkME6d+VAsfIqJYIMMTIXTWs9iI7WamWmdupK4AMw5B1EmFhUvuWP?=
 =?us-ascii?Q?CDiQSwhT8hQ4asIWQSnHKgi1P0ItsF0YPdzFUofPpDCOsyM/dMVco1UDVJIT?=
 =?us-ascii?Q?i/QIfvO2wSDBkdPVRwr2FX8w9YuI1LTniGZXOf4E3Bw4hEqQh8nZ2L5r7NvN?=
 =?us-ascii?Q?Cat2a1Y17OYMZvsJLMW927s/7kXFMmpcR7RoSvOiBJfH+ysDLyWNtNODwNiM?=
 =?us-ascii?Q?6LsT8/3JxZ6d5yX/0S9RKDxQ6RkX4QFCMsMHejcippc0r3hourXGlFAAbbJs?=
 =?us-ascii?Q?AXeW617hBFsJz830YPPC1cjBJ/gbuLyXs58rvMYxXDIxWjpRCaVuhMKKbiGU?=
 =?us-ascii?Q?qqvulCqAuUL+mqtHHDBu84D7EPyWDjAhdTfkoRNIJds//H3UhHSGnMUvc/xv?=
 =?us-ascii?Q?ZX7aJYx6gJ5h3GgAxE6OijlC9PRINnXK2kFx75HM5mF8ikfOOQGBRebXDy5F?=
 =?us-ascii?Q?1YfhJw4EtEoMl7ycJy8+SgPk7JMB19JUhn8DLSGwP8YhNvbXJRs0kMMxsy1p?=
 =?us-ascii?Q?9Sgha164nNXOjkQzOFFl1ln58SLmgdDyfqcXmqaZNAuNmaByR651i3MUo3ew?=
 =?us-ascii?Q?jU0OARvMI8BDYQ9zFhTuiVwQmiM8FJP3UypcyDJzZZl1s+c5cYsBkva0DMGQ?=
 =?us-ascii?Q?TFmstwz1GTgzWCVp43qy9kBHXScm/DUOfHccn7c3TI7wNoIwU8ggLiw3svWi?=
 =?us-ascii?Q?ChOswCNqXeg5xqXED8IcSQ9DhjLaezmw65XS751MMk3ND7bARuNmCu4Qas4d?=
 =?us-ascii?Q?PascMWT0dQaUqLQ2X3LrLAUMiiGDh63oq2iEqT/+07uJoKERVa8GImP+yRZK?=
 =?us-ascii?Q?8RVi+9wXB//hsDtIDDjVLejF9kZmng3oD9X5/pwo1iY1dzOrBF8RoKEJ6zoC?=
 =?us-ascii?Q?Ke+Ng6eAeICsmpArE6U3W0mE2k4nSwzuTznWRrnxPzlJZaA+cKNOoPwBSh+Z?=
 =?us-ascii?Q?wdqOQCu3WGQuCUmiIcr/Qsn4VcqkmPrbGrUNgGK51fKhZDKtqte/SkRCTbR1?=
 =?us-ascii?Q?5AuWnlG9UQo2Cka7rhFxT2SIM0d0SBPVziQ3KMje3nvr5zDxir1uPyv4QQic?=
 =?us-ascii?Q?kTf8RfiD0AO/fGwO1bhNp7QjYY2pC6+gXCUTk1EPfvcqNdJ+Qud8lln82QVH?=
 =?us-ascii?Q?jW0YoG0OLv5CN1vxNVySU+PsdtfcD1iZRGEjm9gOVEz50Z+L/9FAZ0IaQed3?=
 =?us-ascii?Q?Wz8RoJP+1r1BdpMaToIFZAwy1XWKGfVyVeRs4s0ImSeqQKoV7MuSdARUmQLx?=
 =?us-ascii?Q?nMVYVEnzLh7WFjKhKYTkS2Zs7Ov0o/047GUtU0lhCGNWxJPuZQtkHihYA3rX?=
 =?us-ascii?Q?XNW1blLVt/m9YWIvpZJRSijHxOboN4XFyLzR2BVi7JfFqQETtPjMrQFV9D2F?=
 =?us-ascii?Q?/apr6isinqQqPCQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF67C992ECC.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6BIiP8Cs32fe0qNqQ3ppd0Aild939Y+YgjMR+0fygd0LX+UJNUdCpNHz5VWs?=
 =?us-ascii?Q?ef2ZRLYVOxJlui14Zhcpwx8UBGRGsPm7OaTfOdIUahEQMz1WTD+1+ptsSuxj?=
 =?us-ascii?Q?xv5iuOvdyglsGALMp/FJD65x+Hr1NBFyNXHzXpA01y2SM0gjkWkYjrV50rG8?=
 =?us-ascii?Q?jrVuOnifJDFnhQ6piZONGXnuA9mM7hPg4DaBrJYWzitpccFHobUfaHDg71Qt?=
 =?us-ascii?Q?/5XCs8tbUolgVSnoBWbJlE+P/4Sp6nXpzF6L9Ky8D9wojncLOCHhyEj6hopI?=
 =?us-ascii?Q?A0CN6JJ5ICQfQP3PVTomgCKJXOT5uwHwvchqnrfQisqOS86fa5kts9Da9Eni?=
 =?us-ascii?Q?3+ReHZqXjqfGlYeNj2E1SZenTZm563nONin79w+Ch7o7GWpbCLJ6cjIHZipO?=
 =?us-ascii?Q?jvBxnuVR5+uBQ4hrCQyTwF9POMAlhUzZi7YPi22Dec+rx1PU9fEezj/HLFDx?=
 =?us-ascii?Q?OYMco9zpt7UKgH9amCO21WghcUmWaCuf7gXlmxkmDtTAdcRKVggn1NfscVgq?=
 =?us-ascii?Q?ZnnfMAgILrkF40I8lot2414jDrhQ40c7tKfvpmXt5x+WhlUfmFu3YR/SwbUb?=
 =?us-ascii?Q?LWHJHehTR+umtKm9I3pmeUgM7nbZG5fAkyr9GdjXaNAT13NKnLJokqmb1aV8?=
 =?us-ascii?Q?4FVpW60IYZKcDySQeTTiU6XS5fVhYQEJnDfsrLh7e+PaVJ+QunDUIXAFF7Lb?=
 =?us-ascii?Q?iP8ppdFs/tMp+Kol64XmlOLRPcBoqGj/ZPFlhq7iyH4nIGb3/Sz3QKVQKahc?=
 =?us-ascii?Q?OBOvysaiXc42lK4jyLZjZyDC7oGeZttr+Cixt68raHB2k4OOx+hmkHIqxvMt?=
 =?us-ascii?Q?JBnm4HRFSfGQ57YbBapYpsmrNXeVkelUxdEN47FW+raGmC+x6FMw0bl2FvKv?=
 =?us-ascii?Q?Nf5ubaREkVsxh1ZVNnq+tnpUvDuVYyWIPcRpQCVtky9QByBrbfXJP3kvaxZE?=
 =?us-ascii?Q?m1rLnlNuTcnTZiwa5n5FyVSooENOSLiIM9hegLv2EqQbALwqi1v8QJGvGTDb?=
 =?us-ascii?Q?i3wkExEmLlu1L6BL1Y9+3xw5ZeqqqOU9ZN6iVmlieDRHI6H9lIuJVPgqw8Os?=
 =?us-ascii?Q?4hHxMqJqjWUWjpKDaxSHgrMcholIQym3GcxIaRf5FDzC7wWGdvYf6J2WfD6W?=
 =?us-ascii?Q?RUKLpXm7oDrajQGwv8JOnED4X7oAGb7fmRVPypndnyownUoH6HeBicbtV50A?=
 =?us-ascii?Q?nLIadELO1ITkMqOXH/QgrQOgH0i1zRNYMTV0I1g2kQ3Q0HeQMNY5Ucma/xug?=
 =?us-ascii?Q?RqXxXWf29yBYhr+2maZdS4w1Cw4Em/mxScBm5RNZNQtCgHKgCq4Q0kzuC5TB?=
 =?us-ascii?Q?7/EkftpLqGsp7IAeZ/gNjatADBCin0JFk9aSUR8xEML6HGu+QawTUexdE/Yn?=
 =?us-ascii?Q?RI6UJqXeWLBJ7S1AcxMjA7/ojk7m/bII96FlMF8tk4guWzFM6ZDjEKTFdP9I?=
 =?us-ascii?Q?aiBM5/rypZVF4jIHwvDPQ3OqEXdQoBFaRxrY3rBj8HOgldNj1ANsLKoRzD97?=
 =?us-ascii?Q?PX37V/S/UsaDcQ12EvPDuuZsRHaxoAgW2clunL1wb4xT4p5beCQSbhAPBrxy?=
 =?us-ascii?Q?e/Ty0e9z97hhFkiAzQiU7UGK8HUPZRIK6ho4WhfR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF67C992ECC.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71ff1259-f566-408e-ea80-08dde07cdce5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 06:35:04.2486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xKekMdfIEKgWyQbeQRrxjeJ8p4rTVNLYf2RgCHXd4q0XtPXku+zCK06HOJUv1q1QkPJMBIVII6NWVG/6gS+V0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFA424F92C2
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755758110; x=1787294110;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eZGgR8AOLhQ4xrYOtJiUk6z46kd8n3tFh22igiU1574=;
 b=nu9zp7RfgW+kGL2kkcgOlxRzzwLjTWmSrIZQ5Vsr0frTLjww4TPUDwAL
 n8yI+lESGE1pZLpuqQm7pn0gl+VluduL9R6MRVcCZGKAVzui4h7YobIeN
 0eTGyVcKtlwfzWFJWuRayXX4WpAb2cxDKqiPwrSxutHdDbJdvsCLcudfv
 2s0Mx99ELYCI1E3tSB/X1T27/TVhJN2IhHHWzKaCzlatrPTNwmmp1Ip6G
 HwsNUuU8DDkO5UZ9HvCPZRa5DYDWzk0/cBFD+GtnOBIFzwsJ/A+HaXTxg
 fT89S7RSSbFbLyxgFFdXchFOrBsjov6nwzywNNvv64ndYKbzzpX7wm1uT
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nu9zp7Rf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter
 for buffer allocation failures
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Currently, the driver increments `alloc_page_failed` when buffer
> allocation fails in `ice_clean_rx_irq()`. However, this counter is
> intended for page allocation failures, not buffer allocation issues.
>=20
> This patch corrects the counter by incrementing `alloc_buf_failed`
> instead, ensuring accurate statistics reporting for buffer allocation fai=
lures.
>=20
> Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx
> side")
> Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> Suggested-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
>  ---
>   drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 93907ab2eac7..1b1ebfd347ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1337,7 +1337,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring
> *rx_ring, int budget)
>   			skb =3D ice_construct_skb(rx_ring, xdp);
>   		/* exit if we failed to retrieve a buffer */
>   		if (!skb) {
> -			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
> +			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
>   			xdp_verdict =3D ICE_XDP_CONSUMED;
>   		}
>   		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
> --
> 2.45.2
>=20
> Tested-by: Priya Singh <priyax.singh@intel.com>

