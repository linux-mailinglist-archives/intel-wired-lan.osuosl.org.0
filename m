Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gECGNmKJ+Gl+wQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 13:56:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E734BCABF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 13:56:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3469F84502;
	Mon,  4 May 2026 11:56:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4mpRirXoSO5v; Mon,  4 May 2026 11:56:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FA4684507
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777895775;
	bh=P/1CZAmMQvdhkb5kxLOTH5tykUcq8Mz6LYBBM5cV5Jk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8NUvn2DbsCc5cYPb4+1PVITpLIbyfG8ReVfvyc7QQ+eAci+mZ1v5xyo0LZQItIZwU
	 KxiNv/hf4R+CGj1N0v2vQPvyLWoA0iEz2Vk5EUcHra7y9KVmMsCbk9DXpWZwdEF3qI
	 CyPVpNf6cw9RZV4Ek63vtkxPTdhwTg8BnY8UBGuWoZesMDp1N9vPxySbgnqA/CGeVj
	 Hv40rlQKbgbPQuyUyXZ6WtRMrumv2O+6SswaUB/3Evh9slORE9omNgEbAX0sB+jMM5
	 JoCduAW+HJoYKIe2/3QrzbX+OyCF0r+5YW/Hf91D4jrPVvSfEHSgzKytg3uaxAtq1w
	 tv4wSMAWuLVCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FA4684507;
	Mon,  4 May 2026 11:56:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C689C190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:56:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC39F613CB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:56:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bkeFurZ9s9l8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 11:56:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C4EDE613A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4EDE613A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4EDE613A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:56:12 +0000 (UTC)
X-CSE-ConnectionGUID: ByZy2DE4QRSRL0uqJbGE4w==
X-CSE-MsgGUID: oZRQ+azMSTOBvVtLCoHjDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="78942819"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78942819"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 04:56:12 -0700
X-CSE-ConnectionGUID: cUblWPi6RvSMxhbdj50eBg==
X-CSE-MsgGUID: ikUVt9zWQ062HpRmEBQGGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="237274288"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 04:56:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 04:56:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 04:56:10 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 04:56:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TpNSa2Ay0BQQo4FkzwiFARHXYbdGowTvZxnl4xNYRDkyWEeQ/u4zF2+m0AloVLDBmnggRvbLk8KPxVqBBq662PoQw3g7+/+a7W9VE5t948ShMb+zncSDp9OswyxjvTQ2qY5YuDghpKZBeaIWbqbnxna6YkXAHG3WN+FSAm3o2LSt5wvWikVgVIoNiYBNKNRS7YikDqs5RLLLrsl0McIvveCRF5dm4BQgQYmf6+sbu+cMv7gzTFA5zcObbb3HLPCE3P62B5By7CpfzvQEoMOn1izvwC23Cj09G3EReTu8HSZsKV1xLDMoJjzbyO+/Sw0pFL6K/Iy+5VyjIrHmad0+xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P/1CZAmMQvdhkb5kxLOTH5tykUcq8Mz6LYBBM5cV5Jk=;
 b=ap+inRN3XSLuPWe7aNUOqdQAtT0mQ8kI5798UTuIilGSiRmFeXHvYpaCAXjCFqHFR6ilLRHCIAIYlQZmINRRkwt+hCL5B//1D9q4ztJMIbtsVkMt/9cC0t2CtXIAzKnwlZAda68QO10KcdSJFXL/xsZ5HP7GUq4PhfRuk3ey9KOfs+heh1yCab4NRuV/6/UzhYGR2fRrfAGauqJg4PvYBIRtmkm0pRAWGSZFy2XhL+ZT+AlHCsnm9/Q1d4ewt9kv24HhOg67lnB3Fm+gZb5Ly2Kd0IeqejOdf/Fi687phCtEmiCcVJgS5pPgnlhf2VEUqfwyzKLLC7dnTEjm0z3z4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6864.namprd11.prod.outlook.com (2603:10b6:303:21b::16)
 by SJ1PR11MB6202.namprd11.prod.outlook.com (2603:10b6:a03:45b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 11:56:02 +0000
Received: from MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b]) by MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b%7]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 11:56:02 +0000
From: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
Thread-Index: AQHc27VbX4mvLtRifECRj1T9Cp0qirX9vzzA
Date: Mon, 4 May 2026 11:56:02 +0000
Message-ID: <MW4PR11MB6864EF71913A0371ADD9C0BC80312@MW4PR11MB6864.namprd11.prod.outlook.com>
References: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
In-Reply-To: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6864:EE_|SJ1PR11MB6202:EE_
x-ms-office365-filtering-correlation-id: 94624bd5-90b9-478c-3924-08dea9d41d4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: cIMyT6YtXtI3EO0YYjReOA2ew2JFjqmoXRgufgQPB35xLJvMz6yFvXfkRk9gDEgESje8iixDGALNbUWqZtOeSeZiQjUIeN2c5mUZ1IqwXlqebH3acNHVFcb8ckZMu2176GnUTQTm2zYLM65T3eR9EmxfjqU1WAXFxMmQtk9fO9zvCd9QID7wDZNB2enr/qoqTeUz3trxL4Roxl6s9x+T84SH/C4HpR4BERPt/1WmkKV4jAz8O/AegvF4csdj54Ds/FiTQRp7eJ4nlfDlqkc0xx7qCOvQKjfvk/FtfiJe3ZDTCbH0aBqmc3dqzJsDVezCVUhwgpVv68Hmx6SbYQEOb+VMeda5uwREFrIRK8myo5VAKRUo8goLzjJ716Xsn72TtEQ5IaWmJDoyz4cXi7cEiGKZQ6ely3RxPGoZXo4YXPI7Slsapn2Rl5AKOzTtxjBLSVsInTGVsVIDyM93YyUc3r6Yg3dVB3pVqQNnHPsAFiL40u4wpJk2tium1w7SB8yFgIsqntY20/JfToTj/9Mb/noz0n/29JAaBuPXTkT4SUAgI9dueO6maS2IjYCqW/PI5gA7ltraBGvuOe5V28C/V99Lf9Ms0usl0lsTH0ar7kmr0ibI4cusHcbSNHPyZcLpjUC0bcAsdEwEcRkcNVA8zxG/o/wltmJuOXmXlPIyEwZUNfbQ1/pf/3L0ZQobz//vL+3S2rDd5Lcx+PzrhxvnzeqbR1DaH+KHmTv8oIuMn5cJtPa3MCqIGLfDMFav3jMh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6864.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NhFUnsCJEZxckPrhoBHBKfaQPPbDnc4xZwO+vAugdOemw+a/vP7BS4lDWINX?=
 =?us-ascii?Q?5R3Tw1dFYmrqJTKMDJVAcG18PuGDpt6HomMu1wEHoLL1s5YCekNG0uxN7xOU?=
 =?us-ascii?Q?JfoCogFH2Fr7rqXcH+s/4ULJZbdgQg4qOMjyfG9jHV1RH2yYGFAO2XKpI2iI?=
 =?us-ascii?Q?82q2Y+aWfXRAK5LrjnD5AsafLrY4awFw/5hAoxFwFDpL1gir8ukoCHTAyslW?=
 =?us-ascii?Q?VuieE01HxS1VzC+de63CqV+ClrY6uWC2dIhxEl5OpCS7E2vBCpIdM0E6FeTk?=
 =?us-ascii?Q?2k2bmg3JoFv6ilFNUnJAkwcA+9UM77T9lROJfFZjcs0p8OhPtAUHvJgvFPvC?=
 =?us-ascii?Q?2Ud9iG0acueZUIDl3FDwn5+2AgmkUXL0o2J+i2jHNJhbw8YvgqeVMhUCT1qE?=
 =?us-ascii?Q?yuycH4cvf9wiCj/PRvEYYug73gcdrPO9wDnpA5oRKd/IA0J4Ept7m+VzRpnU?=
 =?us-ascii?Q?6tTQGn6T+r44lTim5z5+hGxeobQNsFmnCMsvzMPX30XXfa/oi4LNskxqIF0o?=
 =?us-ascii?Q?MD3JxPNWlM4urVNbJ4X/vGqw02Qp+Pyzp4XmQv2noIfmnmhUuEJHIfOL4/hz?=
 =?us-ascii?Q?46GB7iYd0aJ0uHkvy0kGpeGFGkev+4Tv2xDMoJG2WEsLg983jK0RL00i4xoW?=
 =?us-ascii?Q?6u0gd1wWML8dm5wgk0oqYW5kTS+yp5X+Y/l5EYpt3LUjt3q7mgAUW5r/8Sc4?=
 =?us-ascii?Q?CQS5XKcTFiEekpzK6N7SRbNOqNi7XFK3pSK7zCBs/ardQ25d45voAqbWgcO8?=
 =?us-ascii?Q?MaSlMtKdID+VqBktik0sctBBKu8mxxEulcrFViOwtbAkub18RUtAVx5H4oK/?=
 =?us-ascii?Q?JgPaWX2F/dTIoamFH6tBl2iVndJRKO9r31DciPY3pwq8z5LGtXZunKmC+Ive?=
 =?us-ascii?Q?/WhxZnqT4mjnfZPDUErQim2yzliT+MJLPIs5XZcFI0wpWtWXfFs9B9S4t7RQ?=
 =?us-ascii?Q?HBgCC1pOdgnVy9A7yymZirkguccBMATEd/Eh0uXMkPs9eRLOuhWzOKByJtb5?=
 =?us-ascii?Q?zq5XcCleAHt6qM22M3eFLfwf6CvAAc2f7Qm2/8HacB+Ege9Av+DTq096bdEP?=
 =?us-ascii?Q?qbVuZOrePf/XPEznq5Fyud6g+OTnzUr+UQ6THQtSSjATtXWYIXJ0x6/VpvMJ?=
 =?us-ascii?Q?99gjOZ51LfFUZPTxiqGgjNdCgI7uLQjTEBSOYPdTPZqB9hNIQtmbxm/Aj9he?=
 =?us-ascii?Q?FvnsrXCaTMlXpCthF9iJv38Af5SPDXUqFtp+h6Zk9/cp+AF7etfSXtxt7B4T?=
 =?us-ascii?Q?KGFCfv54Ac9pLfaRqmaBFnHvu6O5REG3NF1gzGjr7g6XTetwweY5lhUFKjZG?=
 =?us-ascii?Q?Gi1g3gfPrsFDj2Gsh9Lyn9zs2TTjqRjRySayB8Q9GOfSi0/56kO9D7OvP+cJ?=
 =?us-ascii?Q?V5BOSR+yIv8cBVpfE3lO8vX82WaeNWctfIXvSnR2vLlj936VC52MhdqeGQzl?=
 =?us-ascii?Q?eBnXWDSJlqeOLYxpISCl/8IIdLdkEDkJ/LahN5Osf2oWLX2s15DTXJ4PoQTK?=
 =?us-ascii?Q?ctY2x9wBB8ZkyQUiWszvaRzgt9iuSv8NMFMyFhaN+Aq1cFDbKjnXM6PqLCeC?=
 =?us-ascii?Q?k2OSb43HUSMFgDheET8Jf/TWhC2eoZrRfqaJs1/CbtVaG1QFebt2jqSuw70x?=
 =?us-ascii?Q?WRd06wAscMGL4PL2zKg+QFEg+D21nHFQw2GncFJjog/f0DoX3WttuKdvrTU1?=
 =?us-ascii?Q?Gxsr37bOOm6r+wSSPhVHIWtoUbWw1YtywnDiLBCuwP0YrzUYkCz9uAWhGidM?=
 =?us-ascii?Q?iXa4Ju3IwA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Mc7CHGzrY7G8FqJAhm3RoefmHYjaW9e0blQsm0VYlr6lOoN/6cc1pn1ZfZrShDL6zQQmzXmec/kX39lKLasXgwCtXffeUnPbuuRHT0tWcaSmxO2bxjW5RCCa8tiw4aUtBzAgj7nSftpaL0zNV0T9Mbiak14kEF2BpBNAj+96TvOGHe2qZL2ead/SVAgaGRm9WZRd0rcJq/WvdSVCMSMGebVavoe0sp2TRvtfqZLR1JICFMkbr2w7YT1VE23stQpO6+sQ2INHqfU2tTy+E8lTsX7tGSQO8PuI0yr3TpJtTQznKYuaCKqfJoC7sHeycLFJmgwpUoELrHQYiWF9dalM/w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6864.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94624bd5-90b9-478c-3924-08dea9d41d4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 11:56:02.2425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kpH/VjmmZEX/215q04Yx0qbho5Vu9jNiGWWwNTT7mMLzrvX8hRMiSGgbDRPo8+mDWH+Spb54lB/y/FHCRJepNawiQTNQN4/nz1AAlosPJjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6202
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777895773; x=1809431773;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zjnbDHFNLFqME/343j7cRVSkeLbR+2eQsaTSEVk8Mbc=;
 b=d5oeddhB1HxWRHR0NY0Vr5y9xTv3H/LRc9OGA6zo3S3v/58GOSRIrsKg
 iZWP+qrrZ6eofSTr1YNX2lka4GERqCdEcJMx2W9m1G7sFEGeKYWhs3bWy
 ZZqx31V2epNZ0cGQWPwYdjk/Mh93Eqdb8sBOkP5FcuvehFazALYU4Edvr
 z2z9DYpaHDiZ4E/HlCll+sbd4pB3KBO483NLxUmVK8YQu5223VETOULj0
 paQ8ZgQFW8ekBkIUX5JvssyPi5ZHZYP/GzOJPC6z4oyJhHWlYTvGYgLBN
 e2AlXB5HTBVSTYr/aaMmP5tLFRLYvMA7kPybClS31NGYoL/nDpRP7H4eF
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d5oeddhB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
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
X-Rspamd-Queue-Id: 19E734BCABF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[MW4PR11MB6864.namprd11.prod.outlook.com:mid]

The patches are based on the https://git.kernel.org/pub/scm/linux/kernel/gi=
t/tnguy/next-queue.git dev-queue branch

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sergey Temerkhanov
> Sent: Monday, May 4, 2026 1:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer =
usage
> in struct ice_adapter
>=20
> Rework usage of the control PF pointer in struct ice_adapter, so that it =
is
> always has a consistent state, since it is global for an adapter.
> Utilize RCU for reading the pointer value and atomic operations for chang=
ing it.
> Zero out the ctrl_pf pointer when the control PF is removed.
>=20
> Sergey Temerkhanov (3):
>   ice: Convert ctrl_pf pointer in struct ice_adapter to RCU
>   ice: Zero out the PTP control PF pointer at ice_adapter cleanup
>   ice: Cache struct ice_hw pointer for split register reads
>=20
>  drivers/net/ethernet/intel/ice/ice.h         | 10 ++-
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 66 +++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 26 ++++++--
>  4 files changed, 89 insertions(+), 15 deletions(-)
>=20
> --
> 2.53.0

