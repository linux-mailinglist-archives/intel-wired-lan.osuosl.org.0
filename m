Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QphiDKeHKmpOrwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 12:02:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A545670A74
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 12:02:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=YZJ2COIj;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64DB88142A;
	Thu, 11 Jun 2026 10:02:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PNuLXdqoY4ka; Thu, 11 Jun 2026 10:02:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DC6381423
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781172128;
	bh=JJapscJ0Ylf8i+TSVjy4g8hJ4p3+eVNzbAFHOpU1dzI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YZJ2COIjuZO5MXhpdUCbgf2uk+H1c3QIjsw9p02WjbmAbnV5ESd1rvMedOQlVL3s6
	 glC9ELJcz97mgg8Qg6XId94rUUETbCHOYAP6/C4D/G++3TGiUAgPdfA2pa3nuM3Gp0
	 odJDs80SnlizFbCeozCcyYF3+yK+3vr//GDQRt9Vj0Rw8HmsJrRbHJ73ISBOWnRfC3
	 fLt9Cc9VX2c0/4weLdjRBM29cz4/2DLRHzNW2h5HacZaIZFx76/NRR0/1/41D38c1X
	 6ukZahEs+aerP8S6rjVqDu3laKdaD0+LDzUMZ9YAaGmV0PoX71Ji1MWlknmwteqVPP
	 nJGl2n85RCHpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DC6381423;
	Thu, 11 Jun 2026 10:02:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 174FE192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 10:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14AE0406DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 10:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lnnksCvPPTSj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 10:02:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 19560406D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19560406D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19560406D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 10:02:05 +0000 (UTC)
X-CSE-ConnectionGUID: KSQE+CkERo2aO54zpHBo9Q==
X-CSE-MsgGUID: QKnVlSNjTz6SFMDcpfowqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81986395"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="81986395"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 03:02:05 -0700
X-CSE-ConnectionGUID: dE7udHqsQx224E/negNftg==
X-CSE-MsgGUID: fkogibYwR8C6Z5kvBCnrzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="246513796"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 03:02:04 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 03:02:02 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 03:02:02 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.8) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 03:01:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cSnR8OMr7lND90cx3VELXumZxbk3nfPr3uS9Z22E1mdthWI3jbi6GUuQ2O2G3fA7LOG/JetdqyRopXWoFso0Mjq4eAfV0FltnL0x3lbY0qIzNmR+j7tj1UTDfFio2EhxkndJY9T5wDEgokmKtikDehGNyK7dXTSIECNkAEev5G1wR7j4I9YnK5WBo2/i10I6ws8eYcM0UxIZy5931RBrrWQP93AV0CXrOpHG9dPaItQ4IQ4sdKKYZPhn8f6NSg/Yi/bc2jAuiGTzgKgKLfKRy/ofT8ujHgT10OgO4HWq5qms7O1vBcykS7uPtNrfHZW36oIcfk9wwdbhQxyOohukGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJapscJ0Ylf8i+TSVjy4g8hJ4p3+eVNzbAFHOpU1dzI=;
 b=qbRYL8y11hfn5AGyzmW1tvsTBC5N7qzB2L7Q0IKrbCVOGCwcR3RRcJDDklEbvHnMW43mZUQAXS32T+NzNCaV7Q489XusPaCVE80nnn4hkgFyOBjH88HXI0sQeRYSvmJGUhNkWYgn8/BH/0JUayZnak5fCcSYTsp29aqCNi6Xdoo83qe28mldfy5zsbCnSVvbPxXBXOOpKxvbDnkjJ9RkV0hU839i4HrXjbj/HuAJb9A+WUXNUSfq2oIXakAs+UUj/mLUrdevPxtWiOErK4gSld/l2NZAJy2IfUZaaFush9Y7cabfoIpmZpkPVIu2I+7MTJt9coYribCY5l2nTmQxSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by CY5PR11MB6137.namprd11.prod.outlook.com (2603:10b6:930:2b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 10:01:21 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0092.011; Thu, 11 Jun 2026
 10:01:21 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Paolo Abeni <pabeni@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH v14 net-next 03/13] dpll: fix stale iteration in
 dpll_pin_on_pin_unregister()
Thread-Index: AQHc9qxzOSWGh7NPvUubHfjHiXtPNrY5EVeAgAAM3xA=
Date: Thu, 11 Jun 2026 10:01:21 +0000
Message-ID: <IA1PR11MB6219E71E2581AE3A4C91F870921B2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-4-grzegorz.nitka@intel.com>
 <5ad977af-9bbb-4376-b0a6-2b1867223145@redhat.com>
In-Reply-To: <5ad977af-9bbb-4376-b0a6-2b1867223145@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|CY5PR11MB6137:EE_
x-ms-office365-filtering-correlation-id: ff7569f9-5378-4000-4bb2-08dec7a06380
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|23010399003|4143699003|6133799003|11063799006|56012099006|5023799004|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: hwonu4b6xaLEZqbXPQf4cimJdMRyX44heO3ju/gSUt+d68fwKBVvy7PDEmxzVpPgRzpYGGL7z3ivAplcnqq5pccv3G9CWitGYnm00x8QPRfFsTqEf84wD/THeRTk0JgMdZWuuRisT9MwqRjYcuvgXDFWgsUirUid7xYYi13jrepWOaLH7OgwJ4EOcGFUndIZN1P5cDdNCxS+2N2/n/3QfCh+PtJ+e+SrmXcXlTFr6nffQDjTjTvShqI5BBy2jxZMNgIgyyOcmpMDs19Q+24ItDHrQhQnmfsWXOBo8k0H9zhsebuLK/TTjaumLyFAlJHHOvO0uFbI4pL3Mo6sW1k668i8d8EaJGpExbza80Fn2r9T5CuNBdnU34d6w9PzlO7Dn/qXC1DxfpvXGYbv6vDqJkzZ2h6NgBgs2j1SKSp6hIO1H2jOKcRj/hr1k1l+p5ywLtFEMweGmBrRpD8bra3FXuBy6OzFE7xl9aU1csYC4p7khcaqbraFRcoyHSmwsbHOAanoHfnq7+uo0LX6dDU7XM+eHV1tsWw/ZYA7276pweI2qqfAm82yV+f/y1RBW9tdFtjZdsbOumxIDxgT1RGQUaj4TT+x4hPhzO+3MSKMqVTJIYDFWdYpYmL6wfHvCeXMdNBLegBgi8+UFmMRFwVpCNEBAmquka2HGriMWgT5bjm8UWlsO4SuR+y1W5pUMM8seP39dSpYr2pcMBcnAlPaCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(23010399003)(4143699003)(6133799003)(11063799006)(56012099006)(5023799004)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uk5iNy9EUFZ6c09nejBNQnhLVFlEUDBhOXlnVHFCWVhuZWFncXVvdHpaVWtr?=
 =?utf-8?B?YXpTaVlUSHZuZThBeG5XZW5zZExaQmxaYldiall2eElkWEdNNmZPaVlxQWY3?=
 =?utf-8?B?eDBXZU1venFhVncydEZxWXl0b2VTL0NGbC83STRnSXI3elkzU0VVV0FtTFFv?=
 =?utf-8?B?TEwvTk8wckxDeEdHVXZqdUErdmp5aEhoSTJ2TmhaSTBnUjRiQkZZWTE2aFNl?=
 =?utf-8?B?ZUswMFB2a2o3K0pKUW9CSU5MdUMxeXREMGo5bktETTByTGFETnFMUkYwMkVx?=
 =?utf-8?B?TkcrRld0b1BvblA0RitONGlNT3FNbjZmZ0VobXk4Mmk1UnlrOVBDaWExeGl3?=
 =?utf-8?B?T2RRaFppYXRXYlM4bVpZcDZNbVhkNFBqdGIrN1NFV3IrYnpaWWNTNTJnUXpH?=
 =?utf-8?B?aDdjYXNxajBqMXJsbFNyVTFXZnVWTUF2QzZqaVM3YTNMM0t3bHl2cDhuU0pH?=
 =?utf-8?B?R01SWGZ6WWdQQnVuWC8yQTZTd3JreG9Ga24wa1plMmtZS1FDdzU4eWFaY1JZ?=
 =?utf-8?B?cW1oN0NveUpIaU11MUJhQXd3NlJSajV6SU1OaUpKcFZYVDQvdGNVSHBCKzRU?=
 =?utf-8?B?TXU0Vk5FeW4xU3BmNEVBM1RkVGoxZ2EydFZwMGE0SC9xeGNNNWwzc1FoR05B?=
 =?utf-8?B?RHZFc0NRSXFlVWM3U2djQVBMdkJKekhlOUNoVi92Q3FYUUNEQ1RvcWNSaFBM?=
 =?utf-8?B?a1Y1Q3dxZkpFL1VvMW1YNmhQY3dZQk5tYlFIQ2QzakNTNVNNTlVMRURuTnRa?=
 =?utf-8?B?M1k1bjZpQTRDcWdQR0p4dUVrWE83empGM2o3bXJuYUN6aWhYcVVjSk5iUlRZ?=
 =?utf-8?B?TEIwZXpJb3lneGw0TnI5aFZjVXpiWUtUNVczK0lKckpUNDFpVDVsYURPTE1j?=
 =?utf-8?B?UXR4NVNmV1BZazlaeTAvTUVldjNEY2FuSUlreTAzSEUyVW1sSUhZbjhlQjhY?=
 =?utf-8?B?SzFzNWJseVphbUVWT3h5YS91MTVKOUEyMmdYKzFOcjlrZ1hSMFY0VUdCeGUy?=
 =?utf-8?B?NzQrbTU2OEhDMFBUWjlJU3ZoemhqbVZLc3lla2poMDk4OVZsTVVhdjZZb1Rp?=
 =?utf-8?B?bVJMS2RzM1F2RHd4L0FHNG5MRTBwYVIxSjFPeHVSNmhQeUsva3NBR2lJbElv?=
 =?utf-8?B?aEpxUU5qVmxTWVpsR1B0NktYVXhXMkR0K1Q5V0VJdC9xd0owRzdEVjBTY3Qv?=
 =?utf-8?B?ZnVCZHRZcStnZi9xU0daRSsraUE2VXlIckRJc1FHN2tXNERtbDI4ZWlTQnh4?=
 =?utf-8?B?NjBTRmIyeG9LQWk3aHNNWTZFenhzaHhGWU0xdDJWNllmZVU2SlpzVnI5eDJK?=
 =?utf-8?B?TE1OUzdCWDdOSHExa3BnSE1KZThVb1lqbmVueXRncmRILzluaDJzdWpkODVq?=
 =?utf-8?B?QmxLWDE5YzFyVE9pRW40d3lnaVA2WkpjcnZLb3FhbXcrS1hxOStnb0MxZ3Jl?=
 =?utf-8?B?VlVpZTFuNXFjeGNNUUswb3pobjdmeDh6c1BwcldvWVYvTm9vd2djQVZWRGRK?=
 =?utf-8?B?VmtJeHk2djZpa1lsNldkN0FUUUJ0MjFDZi8zUkpyNDQxanh6bERpZGczb1Mw?=
 =?utf-8?B?SXJtc2xCWTF1VCtjQ3ZKZTJlNlJRMkIrNFQyRW83UUpZRWFYMmNYdWlFM2lK?=
 =?utf-8?B?UXAzdFhldjUwcWdFWEJsY1F2N1pra0tkTHg4bnNJK3MvMWZMdGZGSXdxSzNT?=
 =?utf-8?B?M2h5UnExNVRCQWg2Z3J1SVRmRldLZ3M0TjRaa2RDcFdObFRlQ09ndGVjTjlp?=
 =?utf-8?B?UkVOSDE2RVJrNFpVYnA1QXlkU2FVcVpaODdkaEhKdWdMZi80V0xpQlcwVERJ?=
 =?utf-8?B?UndMMncrc1Q2SnpBL0lqSE0zcW91UmRURHNGeWs1NkdKRWJvemdpZWQwL2Nq?=
 =?utf-8?B?OG9lak9Kd3VZVC9Vcjkrd3p1WU1VRjNlampzdllIK010MzhadUZPcnNkZWUr?=
 =?utf-8?B?RGcxUHhabTd3MEUwNWM2eS9qTmw2SFJXV0NXaVdYVHFEWllaWk1mbEZpSkJR?=
 =?utf-8?B?eUNxTjNOMnpiVEE1TW80dDB2WVhaVW1pRnZza1VPQXJGQWZXaXRQcEpqN1ht?=
 =?utf-8?B?UjlFaWRIalMycXJmSzJGUjZEMy90WVVuVXg4YkZnakRieGI5VjRBbE4wVG41?=
 =?utf-8?B?YjZmNmJMWlp4T3FRV1QrNmdGN0V2SExvSDdsZDFxTmJ6YWJqcHZqTmx0b2Fl?=
 =?utf-8?B?dWQ1c1JYWjVuNGZ3bzNRWm9GQmJ6Y2ptV01TQllGSC9jSytxNEdkK2l3TjJ2?=
 =?utf-8?B?SndoK3ZlVk9uVXpRTXRQRG9yaVQ2TWdieTZUVEgxTHJrRnJEREJyNjRkSUkw?=
 =?utf-8?B?TzgwczJRTE5mN3dYTXc1TFQ0SGlrYVU3Wnc3bVZOUVVTL0dDZXlMQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Uba5bEu3wXIz0HZIg5E+va1l2Fp2xy7il/S8T1TTZLgu++4yg8SSftIPs5gVvm6ouAJ6LNCGlx3qaihzZcSd50RWWpEdVpD+m3wr6Ro6/tiZyuFeNLh4LV5/x6rL/AzNX5MzYcSo7Pk0TI9HWI6rI3Q8v+VcCVkYphKRm5zVvHqVft3AcghbhnnEkgAwb42kiWSleD51p/DmAaihvs2GQuPH1tKro7vfzetw6gcKBmRzYEtsdfY7ZyGvDt1rwnurtz93T8NYJVy2PudyWF9gLnW7nVYb1Feb64CedCa06cRBuMJxddAcHRmQCL3WiXUD3TmSjMuCrxAigc+lm29nhw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff7569f9-5378-4000-4bb2-08dec7a06380
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 10:01:21.1178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vBBNSlPocyYAM0Gx7EM7PMgVCNuWUSW4cUUTt22tttkOiHyINZSOsRYax4r1Xb3ju9DrUY7YISupa49OmbEmEybKGwOajGrsOebryg8EFJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6137
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781172127; x=1812708127;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JJapscJ0Ylf8i+TSVjy4g8hJ4p3+eVNzbAFHOpU1dzI=;
 b=G3/NdG9l7Et8vYTe6x2D6flM6SdGFzvmgYEN7zrNvr1fuXEjj600bkh6
 Cw6WukuPVUFgSdud2MN+pbB78jPmh+QjhR5kdVdXqpeieiT2LvPU3poom
 7dFZbwELSL5jamiOocN8iVQ5XhfbarBFYaO5eA2VnViZ2UhZ7i81+bwgI
 zN5SlCCVsoysBWszEaKTWkVFmg3WRkTU2uSzW+01eMFfjIsmIN9cbxjnE
 Hp166g4KO4dZktHkLkBgVxSppjP+7tVEzpvzLJuoIzsK4W4bMHMnbhZvw
 tETvcBZuM6I8LJc6fkLLKroruW02QgaVsE0h3UXYsxpVfB16gtxmnEgIm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G3/NdG9l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 03/13] dpll: fix stale
 iteration in dpll_pin_on_pin_unregister()
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
 "kuba@kernel.org" <kuba@kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,microchip.com:email,intel.com:from_mime,intel.com:email,davemloft.net:email,lunn.ch:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A545670A74

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGFvbG8gQWJlbmkgPHBh
YmVuaUByZWRoYXQuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgSnVuZSAxMSwgMjAyNiAxMDo1MCBB
TQ0KPiBUbzogTml0a2EsIEdyemVnb3J6IDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+OyBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnDQo+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgT3JvcywgUGV0cg0KPiA8cG9yb3NAcmVk
aGF0LmNvbT47IHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbTsNCj4gYW5kcmV3K25ldGRldkBsdW5u
LmNoOyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29t
PjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgUHJh
dGhvc2guU2F0aXNoQG1pY3JvY2hpcC5jb207IFZlY2VyYSwNCj4gSXZhbiA8aXZlY2VyYUByZWRo
YXQuY29tPjsgamlyaUByZXNudWxsaS51czsgS3ViYWxld3NraSwgQXJrYWRpdXN6DQo+IDxhcmth
ZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+OyB2YWRpbS5mZWRvcmVua29AbGludXguZGV2Ow0K
PiBkb25hbGQuaHVudGVyQGdtYWlsLmNvbTsgaG9ybXNAa2VybmVsLm9yZzsga3ViYUBrZXJuZWwu
b3JnOw0KPiBkYXZlbUBkYXZlbWxvZnQubmV0OyBlZHVtYXpldEBnb29nbGUuY29tDQo+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0ggdjE0IG5ldC1uZXh0IDAzLzEzXSBkcGxsOiBmaXggc3RhbGUgaXRlcmF0
aW9uIGluDQo+IGRwbGxfcGluX29uX3Bpbl91bnJlZ2lzdGVyKCkNCj4gDQo+IE9uIDYvNy8yNiA4
OjMwIFBNLCBHcnplZ29yeiBOaXRrYSB3cm90ZToNCj4gPiBOZWl0aGVyIHBhcmVudC0+ZHBsbF9y
ZWZzIG5vciBwaW4tPmRwbGxfcmVmcyBvbiBpdHMgb3duIGlzIGEgY29ycmVjdA0KPiA+IGl0ZXJh
dGlvbiB0YXJnZXQgYXQgdW5yZWdpc3RlciB0aW1lOg0KPiA+DQo+ID4gICAtIHBpbi0+ZHBsbF9y
ZWZzIGluY2x1ZGVzIERQTExzIHRoZSBjaGlsZCB3YXMgcmVnaXN0ZXJlZCBhZ2FpbnN0DQo+ID4g
ICAgIHZpYSBhIGRpZmZlcmVudCBwYXJlbnQgb3IgZGlyZWN0bHk7IGJsaW5kIHVucmVnaXN0ZXIg
V0FSTnMgb24NCj4gPiAgICAgdGhlIGNvb2tpZSBtaXNzIGluIGRwbGxfeGFfcmVmX3Bpbl9kZWwo
KS4NCj4gPiAgIC0gcGFyZW50LT5kcGxsX3JlZnMgcmVmbGVjdHMgdGhlIHBhcmVudCdzIGN1cnJl
bnQgYXR0YWNobWVudHMsIG5vdA0KPiA+ICAgICB0aG9zZSBhdCBjaGlsZC1yZWdpc3RlciB0aW1l
LiBBbm90aGVyIGRyaXZlciBtYXkgaGF2ZSAodW4pcmVnJ2QNCj4gPiAgICAgdGhlIHBhcmVudCBh
Z2FpbnN0IGFkZGl0aW9uYWwgRFBMTHMgaW4gdGhlIG1lYW50aW1lLCBzbyB3ZSBtaXNzDQo+ID4g
ICAgIHJlZ2lzdHJhdGlvbnMgdGhhdCBleGlzdCBhbmQgdmlzaXQgRFBMTHMgdGhhdCBoYXZlIG5v
bmUuDQo+ID4NCj4gPiBXYWxrIHBpbi0+ZHBsbF9yZWZzIGFuZCB1c2UgZHBsbF9waW5fcmVnaXN0
cmF0aW9uX2ZpbmQoKSB0byBmaWx0ZXINCj4gPiB0byBlbnRyaWVzIHdob3NlIGNvb2tpZSBpcyB0
aGlzIHBhcmVudC4gU3ltbWV0cmljIHdpdGgNCj4gPiBkcGxsX3Bpbl9vbl9waW5fcmVnaXN0ZXIo
KSwgY29ycmVjdCB1bmRlciBhbnkgc3Vic2VxdWVudCBjaGFuZ2UgdG8NCj4gPiBwYXJlbnQtPmRw
bGxfcmVmcy4NCj4gPg0KPiA+IEZpeGVzOiA5NDMxMDYzYWQzMjMgKCJkcGxsOiBjb3JlOiBBZGQg
RFBMTCBmcmFtZXdvcmsgYmFzZSBmdW5jdGlvbnMiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEdyemVn
b3J6IE5pdGthIDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+IA0KPiBUaGUgY3VycmVudCBn
dWlkYW5jZSBpcyB0byBhdm9pZCB0aGUgRml4ZXMgdGFnIGZvciBuZXQtbmV4dCBwYXRjaGVzLA0K
PiB3aGVuIHN1Y2ggdGFnIHJlZmVycyB0byBjb2RlIGFscmVhZHkgaW50byBMaW51cydzIHRyZWUu
DQo+IA0KPiBJZiBpdCdzIGEgcmVhbCB1c2VyLXZpc2libGUgaXNzdWUsIHRoZSBwYXRjaCBzaG91
bGQgdGFyZ2V0IG5ldC4NCj4gT3RoZXJ3aXNlIGlmIHRoZSBpbnRlbmRlZCB0YXJnZXQgaXMgcmVh
bGx5IG5ldC1uZXh0LCBubyBmaXhlcyB0YWcgcGxlYXNlLg0KPiANCj4gVW5yZWxhdGVkIGltcG9y
dGFudCBub2RlOiBzYXNoaWtvIChnZW1pbmkpIHN0aWxsIGhhcyBzb21lIGNvbW1lbnRzLCBzb21l
DQo+IG9mIHRoZW0gbG9va3MgbmV3IGFuZCByZWxldmFudCB0byBtZSBpLmUuIHRoZSBwb3NzaWJs
ZSBkaXZpZGUgYnkgemVybw0KPiBidWcgaW4gcGF0Y2ggMTEsIHNlZToNCj4gDQo+IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYwNzE4MzA0NS4xMjEzNzM1LTEtDQo+IGdyemVn
b3J6Lm5pdGthJTQwaW50ZWwuY29tDQo+IA0KPiAvUA0KDQpIaSBQYW9sbw0KDQpUaGFua3MgZm9y
IHlvdXIgZmVlZGJhY2suDQpSZWdhcmRpbmcgcGF0Y2hlcyB3aXRoICdGaXhlcycgdGFnIC4uLg0K
QWN0dWFsbHkgcGF0Y2hlcyBmcm9tIDMgdG8gNyBpbiB0aGlzIHNlcmllcyBhcmUgaW5kZWVkIGZp
eCBwYXRjaGVzIGZvciB0aGUgZXhpc3RpbmcgY29kZS4NCkl0IHdhcyByZXBvcnRlZCBieSBTYXNo
aWtvIGVhcmxpZXIgZm9yIHRoaXMgc2VyaWVzIGFzIHByZS1leGlzdGluZyBpc3N1ZXMuDQpLdWJh
IHN1Z2dlc3RlZCwgYXQgbGVhc3QgdGhpcyBpcyBob3cgSSB1bmRlcnN0b29kIGl0LCB0byBpbmNs
dWRlIGl0IGluIHRoZSBzZXJpZXMgdG8gc2VlDQphIGNsZWFuIEFJIHNjYW4uIA0KU28gcGxlYXNl
IGFkdmlzZSBvbiB0aGUgbmV4dCBzdGVwcyAuLi4NClNob3VsZCBJIHNpbXBseSByZW1vdmUgJ0Zp
eGVzJyB0YWcgZnJvbSB0aGUgY29tbWl0cyBhbmQga2VlcCB0aG9zZSBwYXRjaGVzIGluIHRoZSBz
ZXJpZXM/DQpPciAuLi4gIHRvIHJlbW92ZSB0aGVtIGZyb20gdGhlIHNlcmllcyBhbmQgcmUtc2Vu
ZCBhcyByZWd1bGFyIGZpeCBwYXRjaGVzIG9uICduZXQnPw0KDQpSZWdhcmRpbmcgdGhlIGxhdGVz
dCBTYWhpa28gY29tbWVudHMgLi4gdGhpcyBzcGVjaWZpYyBvbmUgYWJvdXQgZGl2aWRlLWJ5LXpl
cm8gcGFuaWMNCmlzIGZhbHNlLXBvc2l0aXZlLiBJdCB3YXMgZml4ZWQgd2l0aCB0aGUgbGF0ZXN0
IHJldmlzaW9uLg0KSSdsbCByZXNwb25kIGluIGEgc2VwYXJhdGUgbWVzc2FnZSB3aXRoIG15IHZp
ZXcgb24gdGhlIG90aGVyIGhpZ2ggb25lcy4NCg0KUmVnYXJkcw0KDQpHcnplZ29yeg0K
