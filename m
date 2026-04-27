Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNteAlhv72mHBQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:14:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B98F474218
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:14:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F4EF6F554;
	Mon, 27 Apr 2026 14:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MqUEPj9ez97O; Mon, 27 Apr 2026 14:14:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AA396F577
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777299284;
	bh=fZYUlegKlGtM07MUSN9rfCnoAu9TcgvkWMHpJMrMHjA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jp9XDuGfkeBpBZhUuPX8K4b4VRLDa0XvzDSGS+KRgaEppWsS/83cRPhqQnyJrdG1M
	 zurvPF7pXbbfrMMxEtI0DCeZ+LxxRS2QEFk1/hsftjqJ2EIfkleYH/o9ha1ViZ4Iz9
	 NG/1oe+anQUj2pV+/SwLOtf5kfnq7TdBXgTDG8dlMlOiP7g8wbJfzPftkOZmf5sm05
	 6Ph88RGB8VOMbozA+Fx6I+sj4urDLXKsCDcCL42DEDwDGBO8m8Iomh2fG4LP6V8fmV
	 GM718rV5gu/UiNXZhd2yQPf9kps8wAN58DvCcYiTpn39Ernp4CP//xYLJ9RDR7/YpX
	 CjSnVKaJymbeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AA396F577;
	Mon, 27 Apr 2026 14:14:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A4C12DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BB4D4595C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:14:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id axtfIeBo47jV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 14:14:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 223BE4571A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 223BE4571A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 223BE4571A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:14:41 +0000 (UTC)
X-CSE-ConnectionGUID: b75GqgUGTkmwzzYetA33XA==
X-CSE-MsgGUID: 3EIDhd25R9OhmoGp+Em6AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="82036836"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="82036836"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 07:14:40 -0700
X-CSE-ConnectionGUID: 6nRRiAoXR3OJCNuWnSpVwg==
X-CSE-MsgGUID: 05DyxZXCQu+igv172A+KGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="238637796"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 07:14:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 07:14:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 07:14:40 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.39)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 07:14:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J1GyDOpuR/SOaJI0Pq4/I6OwpPy4+F3OsbceFTxMAz5gjmRwrjInpa4TtylfS4mzHTp05ys7ZnU/IlFte/qXSxWhYi+2YfQTu7fx9oGKmnvI3bvhhd7akNagX6d4VysdEUmFT4PndxhzZJGDvCd8R6v9qKSElXBV1VevLhrKezlhu7dsBAba8jIHKw8Pv1ezioBjsyox0ewz0Rj5mMBKFGQZLFVK5fwETqLhY1caF/SNIxQxTCxqRSBM7rCFZrudkFrfjs8Pwts/FaOYll0KzgDvKbk48NHmK+yx3XXUHgyr6WPqgUSrh1y6UmsbZidAHEfYSgYoSgPehLl4q/iamw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fZYUlegKlGtM07MUSN9rfCnoAu9TcgvkWMHpJMrMHjA=;
 b=knIWpzN48J85215QH+qZHqJCX+DiHAUa/EyWH/+4LNax1HET2Btioha/tpelIJ8GmabYWRbf3T0VXEQQF57RnslmUk3Q2JOvS91CrWZKggZJJNNhyLoRu9gO9Zmif8TBL0XznnVCtg157fh81YWod/enExvglSWbzdU1c/lDuWpEEZ4lWRXOIVNktHnfwOr2P4jNAbWIuxJm1VSIqrTEBlJYNM2SlN2CYUR9aLkENlglhSqNpxuSUqEkD2C8IF8QQFtkc0FykiCM2xnGmjta/K2Ia8bnaGt8xSO0xsiF+0wHoqqKA0zxH6CaHlMowLjNFt9Jwz7tLd0T2fSDKTmg/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by MW4PR11MB7079.namprd11.prod.outlook.com (2603:10b6:303:22b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.15; Mon, 27 Apr
 2026 14:14:33 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 14:14:33 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v2] ice: fix SMA and U.FL pin state changes
 affecting paired pin
Thread-Index: AQHcx0gHornDxe5KaEa0d60wvjFuHLXy+9dA
Date: Mon, 27 Apr 2026 14:14:33 +0000
Message-ID: <IA0PR11MB7378F34CB38B68BACBC295C59B362@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260408110504.1032879-1-poros@redhat.com>
In-Reply-To: <20260408110504.1032879-1-poros@redhat.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|MW4PR11MB7079:EE_
x-ms-office365-filtering-correlation-id: e7448b4c-8627-41ce-2e27-08dea4674e10
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: faPYSik+S9+jI6pTAaONdzRz7FdabazGvJaTB+3JVwQlgBgwxpdlhY0UbmK13zj17BrIQngbJVvl3QkANlzNJbffMXdQQVv5IjjBGaEgY1kAHyrVAIuLShZn7soRStmJyxwY4P96uQ1jdqHBqZF/5XHe/auDbN0suRRZ72vVyB33lGyRwMCabTYYGNWBYiUG97e6GfZufXFUx41+Cp8rb8crCLogc5Z9c+248M0chph0T+j71T1PDpuzq2Fk695ULKS/jFidzB7ZhRfd5AiSEgvPbLnC8amRN5CddT/+G3LTIBt0ykFPOjCJ4fAxoexa+OsCwO1HSHqGmVvnDy0Glnv/ex+1hDAC6bicTpiBHRuduZssmoVZ7DRgMvgzXwSRYKMs7xzs+YV8vUXRj72qqzwmPDV36XtdS78YBC1Ndcj88cyTWHbh/lbTZojGRMM7lqS55WmTQ1PIdgUm/DiCIT32MBkua53lCTsiIyRfK+rT8/PPuaNAwY9KOmCLqjYzxZD7Y2RzFymnWankHLjPXilONdRjyqHklfXVYAKIuWAYDFQVDbqRIeOZShNTMnMq8AsQUmCDFejtccevVNRdjFvCZ60yJ3thiDxldCBoiRzAB1m5MwlaSArAfaw2l9hORjalEj+X+PbUev9vA9cFjj/lAheGUESjsxm/qgJffrORIgHpltEd3oKCbW4GKhhWq1Rk07a76L94fuhJ7Ht0UA9VGL/OrkMsyNHGHRQtgQFzlOeskOtJIVCiuMwXPV/dQJhfZ668Xb7QjfPNFaj+/dqdvNymCHhht4k/haWORVI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e226G9xzV28uiSt3Mzk8Y61b0kiWDazntm4xNTCH55y375WqLFV6n4pCHOkI?=
 =?us-ascii?Q?UZ1uL2sCgKghtrYkiLEERr6cf0I8bagBygBaYCR2UF4Det4GqjpJeGfV+doh?=
 =?us-ascii?Q?zAMZgMuhb2BGIHfMKnQy3vGOFHXXGOqIm1w/Mag3vExS0PL4eSwbOIEpph2S?=
 =?us-ascii?Q?K9AOxqS1FAludSzWZkwj9rhKVRQSAK8EYJppVWGb3MG6//BAfbXzQrU59sVs?=
 =?us-ascii?Q?BBB+qQ86gq86MSbS1ayid2rB61se8OvFf6fRw2ARieEF3nk8YTahTYJyrMoC?=
 =?us-ascii?Q?RMXaXpuSrtRTv8JhRHZttWKCuJa6cjdSX97MQd1R6naE/ZU7sFo8sSuBK9bI?=
 =?us-ascii?Q?Pwgpw0eE+N2gmVtf0H+Kno9S5xImIVZs6BKL+1LJefkFBne4GqfG73ZQvpos?=
 =?us-ascii?Q?Tki3TRHLcKenVWROZNRhTcqpZt+BPVYcVYIzrCq3tmQVfrWIWTgsy4hsGFcg?=
 =?us-ascii?Q?vjRslY8asT0fDwc9VJNtKtUpNmxhNA5bHrWKk/CojkPPPUYecZdGu/pXxFYi?=
 =?us-ascii?Q?QYhlnZ9SFD9d5xXbZF3szljJg3wdt0iI0uKROP1zl0cLLJW5QGbUx5CIx+EQ?=
 =?us-ascii?Q?VCt0VxWBaepR7OP5quJrY4U6oARg33/R6FavO0BqHWvPByONy6PYSGe7uy4x?=
 =?us-ascii?Q?7rmSm7wNeE0AeUzVSGCwDnNlmid+M+Fq6EFqh7stLXaZ2rOSWEOL7foYGinT?=
 =?us-ascii?Q?PoV1PZtwlFxUJ756XGqe0ruIM/98H3L1a9jua4EqmOFFUkgrnJk0GSqffVMX?=
 =?us-ascii?Q?QRLIMLOvGRGJJT+uaVge+yxB5F93UcC0a1tlpjNNGQB74o5wmVK+auUfSQ6a?=
 =?us-ascii?Q?vsYVtKdJDGmCmV2BwEqqbdeRZUvoxa+Oo3fKsj7MI0A6P9hKBsIDr3jOZRfM?=
 =?us-ascii?Q?YtvxE0moeLtnoKmoiecwIsSJA79sI2Cag+0jkQGkFuYEANcbCtF2qbiYa3yD?=
 =?us-ascii?Q?0jX7HwHXBhZyxn6tpes/gJj01CqBXIsz3ITEqM5LaUBhMpV6zaUOb6AXf72a?=
 =?us-ascii?Q?5S/gby/t/7GJGYALGKMYgE5XJA3IAQtCmXpT5EpAtfONVh4uq28gHQ0uDfvl?=
 =?us-ascii?Q?gGvCff3OH8Xia/DCdwNkgtIh0zsnAVK2fln4jY1rQE1svT503Vid3N+N+cqW?=
 =?us-ascii?Q?if7Pg3POX4akgtlZTQ2AsSrp4zbT/ctiTF5MepZNXClEpqP44/vvPydGrHpe?=
 =?us-ascii?Q?/vW4MhwGthWUsPpDM0Gbm2T9X6FlJFHePo/WrG7fXzvr/hFVfW3cWIP17xov?=
 =?us-ascii?Q?IEOGVd02TFjby9Nq4I7r6C4Q7vIzm1VGB8APstiSJ7ccU10l1i5BQsqtWku+?=
 =?us-ascii?Q?rv/PpiSaSu0ldvQVu4/hjisyAoD86MhgOKv6d7ZUuLV8xeJo28LXAiwCiOBe?=
 =?us-ascii?Q?SAE3caA/EEJy/9DRyuSbNfhky/PR930xiUh1w5B2r385+vfcf+Jg7s+y+0Yx?=
 =?us-ascii?Q?xL/IttMFuxUFvS2UgccE9cj6UBJj3FEc1tdT3ethXLj74WVTlXdpslyHptf2?=
 =?us-ascii?Q?QVr3hj+q6RwABvTMt9WjfCs98BPzKXGHFQbW6B7CFgPhvwrVIH4g4gDFomSR?=
 =?us-ascii?Q?X37a4bhZuHqPSXnNFSgd70M5HGJQ0BFk4I+zAYfq5AlZA+0041c9wxuJVcer?=
 =?us-ascii?Q?YHiZQr67aBY4CPhtQqhmOq8oSVln9m3KIVJ9GtvxR3EOlqAbWOAg0Jy7gIKj?=
 =?us-ascii?Q?0kSjDT0GrYnzwa6PvYExeuJFWss0uG5UybGsyU7nHLXvy9tfAhX63RVC1vCx?=
 =?us-ascii?Q?YgMDkZkBhGWOO81QFlbXpEtdrYxOcIo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fRl1dxZ3B5hYAHgBA4BVNMiOUh7VKWD+7WgEkQhKnN3IQsq+u8f7fV6c0LWjncUePnfwh4WqD1KoDCBUO1OPROEQOtdlLzOWEDzra1ECBpNyf4JaCRvwq9jorFaUL0qlKRG/QJtkjF/CWDH5Eg/h69LcnY+wValjh4ytV7Iqfty1mHJ1Bn3JhUMsCn8Wc4CdDMBaH32vwOAiJ4c9bZZ67CBR6+aQD2S3qSfb5WIbwTOugLxtxXJ/BEKP8Mhjk8TdxfSXgJj2JibFNMvO1GT3Q7BAkGe1XmA3FzZSD7xPhvjph9wbm4b+9HKKLIGK2fHYYN2iNfNdNNZ86YfWgQPV3Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7448b4c-8627-41ce-2e27-08dea4674e10
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 14:14:33.1402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k7eVrI2lEYK9UoUu8edB2u0PgDVv1YVdXhNKfph1ZBWyylkU2ueGsxCggxIwWoNH5OFnGb3md914C4gB2TSmNx//vXk8MhVUG9Zi7imbBoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7079
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777299282; x=1808835282;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yeVyIkjNcc6BvEWbTVXnjky/MbhD7OYsevG8scQXC00=;
 b=JHHxI7Qa1h6JJjIxGlSCXILW9vwv04n691yakwu9qLLABzpl/Qgm6GND
 NLLKkqByUUSeb4/Rx/ql+CtkbeN1ZlCCxZf/tnE6+Jz5cy7upvJaBxjG6
 +NoQPOdgO8lNK+/vff6VyqfU/e2udg8hRgXnycOuGgoYRNBLseP9koF2I
 aFcGENCJa9qSTj42ocPl6Z1NGVxvcwSIHt1Bh3t+qGLRKv6kAQS6q4egF
 loFV0O4FErFkASsM3KBBwIdAouM8DXyKGjJxc+0aPPzKq/b1k0jp6mzFM
 45T7kbfT3YW8A+GmocUBS5etquIdu/U0EI5HSrpJdnzUWgjuFioPkSiSy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JHHxI7Qa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix SMA and U.FL pin
 state changes affecting paired pin
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 4B98F474218
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim]

>From: Petr Oros <poros@redhat.com>
>Sent: Wednesday, April 8, 2026 1:05 PM
>
>SMA and U.FL pins share physical signal paths in pairs (SMA1/U.FL1 and
>SMA2/U.FL2) controlled by the PCA9575 GPIO expander.  Each pair can
>only have one active pin at a time: SMA1 output and U.FL1 output share
>the same CGU output, SMA2 input and U.FL2 input share the same CGU
>input.  The PCA9575 register bits determine which connector in each
>pair owns the signal path.
>
>The driver does not account for this pairing in two places:
>
>ice_dpll_ufl_pin_state_set() modifies PCA9575 bits and disables the
>backing CGU pin without checking whether the U.FL pin is currently
>active.  Disconnecting an already inactive U.FL pin flips bits that
>the paired SMA pin relies on, breaking its connection.
>
>ice_dpll_sma_direction_set() does not propagate direction changes to
>the paired U.FL pin.  For SMA2/U.FL2 the ICE_SMA2_UFL2_RX_DIS bit is
>never managed, so U.FL2 stays disconnected after SMA2 switches to
>output.  For both pairs the backing CGU pin of the U.FL side is never
>enabled when a direction change activates it, so userspace sees the
>pin as disconnected even though the routing is correct.
>
>Fix by guarding the U.FL disconnect path against inactive pins and by
>updating the paired U.FL pin fully on SMA direction changes: manage
>ICE_SMA2_UFL2_RX_DIS for the SMA2/U.FL2 pair and enable the backing
>CGU pin whenever the peer becomes active.
>
>Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")

LGTM,

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>Signed-off-by: Petr Oros <poros@redhat.com>
>---
>v2:
> - fix ice_dpll_sma_direction_set() to manage ICE_SMA2_UFL2_RX_DIS
>   when SMA2 direction changes
> - enable paired U.FL backing CGU pin when direction change makes
>   it active, so it reports as connected immediately
> - (both reported by Intel test on the SMA init and notification
>   patch threads)
>v1: https://lore.kernel.org/all/20260325151050.2081977-1-poros@redhat.com/
>---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 50 ++++++++++++++++++++++-
> 1 file changed, 49 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>b/drivers/net/ethernet/intel/ice/ice_dpll.c
>index 498ec2c045f384..3f8cd5b8298b57 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>@@ -1171,6 +1171,8 @@ static int ice_dpll_sma_direction_set(struct
>ice_dpll_pin *p,
> 				      enum dpll_pin_direction direction,
> 				      struct netlink_ext_ack *extack)
> {
>+	struct ice_dplls *d =3D &p->pf->dplls;
>+	struct ice_dpll_pin *peer;
> 	u8 data;
> 	int ret;
>
>@@ -1189,8 +1191,9 @@ static int ice_dpll_sma_direction_set(struct
>ice_dpll_pin *p,
> 	case ICE_DPLL_PIN_SW_2_IDX:
> 		if (direction =3D=3D DPLL_PIN_DIRECTION_INPUT) {
> 			data &=3D ~ICE_SMA2_DIR_EN;
>+			data |=3D ICE_SMA2_UFL2_RX_DIS;
> 		} else {
>-			data &=3D ~ICE_SMA2_TX_EN;
>+			data &=3D ~(ICE_SMA2_TX_EN | ICE_SMA2_UFL2_RX_DIS);
> 			data |=3D ICE_SMA2_DIR_EN;
> 		}
> 		break;
>@@ -1202,6 +1205,34 @@ static int ice_dpll_sma_direction_set(struct
>ice_dpll_pin *p,
> 		ret =3D ice_dpll_pin_state_update(p->pf, p,
> 						ICE_DPLL_PIN_TYPE_SOFTWARE,
> 						extack);
>+	if (ret)
>+		return ret;
>+
>+	/* When a direction change activates the paired U.FL pin, enable
>+	 * its backing CGU pin so the pin reports as connected. Without
>+	 * this the U.FL routing is correct but the CGU pin stays disabled
>+	 * and userspace sees the pin as disconnected.  Do not disable the
>+	 * backing pin when U.FL becomes inactive because the SMA pin may
>+	 * still be using it.
>+	 */
>+	peer =3D &d->ufl[p->idx];
>+	if (peer->active) {
>+		struct ice_dpll_pin *target;
>+		enum ice_dpll_pin_type type;
>+
>+		if (peer->output) {
>+			target =3D peer->output;
>+			type =3D ICE_DPLL_PIN_TYPE_OUTPUT;
>+		} else {
>+			target =3D peer->input;
>+			type =3D ICE_DPLL_PIN_TYPE_INPUT;
>+		}
>+		ret =3D ice_dpll_pin_enable(&p->pf->hw, target,
>+					  d->eec.dpll_idx, type, extack);
>+		if (!ret)
>+			ret =3D ice_dpll_pin_state_update(p->pf, target,
>+							type, extack);
>+	}
>
> 	return ret;
> }
>@@ -1253,6 +1284,14 @@ ice_dpll_ufl_pin_state_set(const struct dpll_pin
>*pin, void *pin_priv,
> 			data &=3D ~ICE_SMA1_MASK;
> 			enable =3D true;
> 		} else if (state =3D=3D DPLL_PIN_STATE_DISCONNECTED) {
>+			/* Skip if U.FL1 is not active, setting TX_EN
>+			 * while DIR_EN is set would also deactivate
>+			 * the paired SMA1 output.
>+			 */
>+			if (data & (ICE_SMA1_DIR_EN | ICE_SMA1_TX_EN)) {
>+				ret =3D 0;
>+				goto unlock;
>+			}
> 			data |=3D ICE_SMA1_TX_EN;
> 			enable =3D false;
> 		} else {
>@@ -1267,6 +1306,15 @@ ice_dpll_ufl_pin_state_set(const struct dpll_pin
>*pin, void *pin_priv,
> 			data &=3D ~ICE_SMA2_UFL2_RX_DIS;
> 			enable =3D true;
> 		} else if (state =3D=3D DPLL_PIN_STATE_DISCONNECTED) {
>+			/* Skip if U.FL2 is not active, setting
>+			 * UFL2_RX_DIS could also disable the paired
>+			 * SMA2 input.
>+			 */
>+			if (!(data & ICE_SMA2_DIR_EN) ||
>+			    (data & ICE_SMA2_UFL2_RX_DIS)) {
>+				ret =3D 0;
>+				goto unlock;
>+			}
> 			data |=3D ICE_SMA2_UFL2_RX_DIS;
> 			enable =3D false;
> 		} else {
>--
>2.52.0

