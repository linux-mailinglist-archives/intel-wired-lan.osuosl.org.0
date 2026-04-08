Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDtfLnf31Wn4/gcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 08:36:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE883B79E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 08:36:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F4FE8237F;
	Wed,  8 Apr 2026 06:36:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dmU6d3yBAbE9; Wed,  8 Apr 2026 06:36:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F01788238B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775630197;
	bh=TCHY1xcDAZ4h7MqJ5goRQ5+852U4QGkCwcNFoPpbeio=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E8mCWG9Y5yv1eyBcSq1G5GF5RI9nbrh6K8jBz/QnK5URXPXKGqyKTf7Et6m+PjHJ7
	 5EcEn76bXySTvlWZOd5iLz0YKHCH/Q9yLYKuDiJqv6RPuDtdnMmtppZ897T2SLRIlz
	 sDqRvelvrF8cqZnSapR0AtZKFvc8ZiLQSGciqBorkj2ZRf8OamreOTH1m2rfejSFTp
	 kIR0Wy8IK22SXQGelXwjUu0cVsE3avgtQIAzkbM2fHCemJmLgsOQcQ0Ucx+2e4Q07S
	 oAoeyg2KNGJE5x9Kzp0YgtWoR+LMjJOMv597zyc0zTWBG0QI8uL98aDMJX7CRbpZ1D
	 /n9iI4LtMnogg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F01788238B;
	Wed,  8 Apr 2026 06:36:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 49CBA1F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 06:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B10C8237F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 06:36:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Iw8RlwZaiYMn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 06:36:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5CD2B8236C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CD2B8236C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CD2B8236C
 for <intel-wired-lan@osuosl.org>; Wed,  8 Apr 2026 06:36:33 +0000 (UTC)
X-CSE-ConnectionGUID: xhkkAaW3QQC3EQkJ/8ltzg==
X-CSE-MsgGUID: 0umxWwcAS3aBq84SGrrzJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87680734"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="87680734"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 23:36:33 -0700
X-CSE-ConnectionGUID: kJDjRG84QhiLLtNyrbniTg==
X-CSE-MsgGUID: 6gfhjZ05R2iSRejQonU2iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233263763"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 23:36:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 23:36:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 23:36:32 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.29)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 23:36:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zw9kGeS8F6jED2myqW22EPsI9TD/dIgUO5pMeisHuo1JLki5SiRUgxAzU/AnqHGONmRXl1AlNHutDHyEnIROzBnxdHo8iAKlj1qOyot6K3nL/ldUCQY1ZHeC5iNcIjNxYd1mA0ieC+3/uTRtzukA3SXVsrzqYNPmjZE7LjS2cn7lstHNTqADrplQG/lITBmi3kkaOQO/eLZ2DzCgXEyD5zxTKk2s5EWYWEYM6Ol1CM8couHzh9EI7FjsVTmIl33GFv4ccd0MLrz5wDokDSqxWVkxqhH56Vkik1ZkxL/5tGDIqbFwCnrMfPqfUODFI6dP+knoxMHvU03R7swDiFRVdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TCHY1xcDAZ4h7MqJ5goRQ5+852U4QGkCwcNFoPpbeio=;
 b=mzpQQnJUPBGYJIXI1PdEBBudG6mLHtQyJDqgiEGOndCUjOLplVh7KRps4+iLSanUU0CjzeTeP/odOl0UI53d8fVtCt/bfjkfkQrT+gpBQRY6c8S2gNpgWhBzjnCcnczesQ1Q0k7ZRuYRhU+biEmLGVnCK6T3ufh+2fvFTO9FmHWV/fMeqeYOWEWfic127ivLTc1jrbGc74P0xGWyc/FAyCVU93RH8O1sTQlUXaG1k+rOj5kpSpX5Yl3u7j1b2Fje+ua5fnV8AfuWhpTaJaSoNIOFu6KF6mK1hfoTjmOyo0eyHMjesy3zcMEYUu9Tb1kQ8eLZiFXyYJpx10TADoTZzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB7280.namprd11.prod.outlook.com (2603:10b6:8:108::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 06:36:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 8 Apr 2026
 06:36:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Matt Vollrath <tactii@gmail.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
CC: Kohei Enju <kohei@enjuk.jp>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Cleanup PTP pins on
 probe failure
Thread-Index: AQHcxqnNkgOVNixjlk+DMZ1/F5XyPbXUtq1g
Date: Wed, 8 Apr 2026 06:36:30 +0000
Message-ID: <IA3PR11MB8986FB8A72C8434B910319A3E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260407161447.43645-1-tactii@gmail.com>
In-Reply-To: <20260407161447.43645-1-tactii@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB7280:EE_
x-ms-office365-filtering-correlation-id: df721b4a-7f1d-4046-5d60-08de95392b15
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: 4ixqZ8ViKNLvVXm+4Aga+fjanNgfFkHF7788mdf2f8snBKV7LIjL2XNKnv+4iJ29ruBOBHcmvDdnEzmNpm1MLF+QV/+G2YFqFS88dk2hqDtVCnjzebTjxbSCdOMh8cxkT9MOr3YXpWoFlhl7RPcaJqQwDLMd7vtQtATGxfUgFQjKBlEOZ4VKkfwar84VJZm1DcEIB/Z2HRXsEZ2XE21BoHxmCir3lSR3oRwHcKKLxNfrCMjOvPBl29OzXN5VDWtcm2R6WtSXUCoK0+WvL8zweuVQEtupDwLqoy5ZmO9tLjcmPx+zlMH51vJg5gZAzZ1iOtld/DejolNZcjl9QODXO2YdSUDeaDiyL6OgzwScYH3WsulqPxun2nujF6UPUC/rtIlbqy6t83ndB+0kBBk/AkE//qUlUIt/u47ixpVtlCjovKX0jBYB6hb+rUdwZ1rGzuCqI+O24Fi5ggijZT7kJOqznW5F0BW1SNTJRP8EFsg5381yXltYOmEsLca8hRTBcxSLJk1PwOJbmfUC0fzsfHUVOYvu4mh3zz6yYexsjAl9K3JhNvp7GmOZbWK9yiBYebd9KGc7ElZM+xxTffmPpql5i2+OkFZzxZit4cTgGhxG4r2ME2D1dxMNqodnjS+Qc83aVcZxIL84MPG6lU9Rapiqodq/Py/Ww1hoPJBhu6ICJFEsqIkSLQ9dJyJn10BUU2xXYivOue+JifFnxCMcT5Y3L7buD1YKzRGleDpN3fCotuPLrt02niyAhu8Urr0E9E7hgXrUzP74qri0+6umhOCKJU4taH4wfNCwLnD6GTY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?41JmK5KH6VyZTsoP3ScrMsRYj4QuUNzfIBF4VKxxxS8hNVoaGJVcUO1M30V+?=
 =?us-ascii?Q?LzpcSA2EkRKxaA0ToixYZAXc88QMD6TrtS/buaL4Nt3ziZM4CL9TeIXS6b0R?=
 =?us-ascii?Q?KeLsTbPq4oNBiNg4wXX6dfcQIDVn5lAFa+GfCaU3zWr6tpD/UV6RbOAjpJFh?=
 =?us-ascii?Q?gkHjgvvK1ZCoGvRCMWmx07l3GS7SO1yKL5tUXpWiXe4zXcLiimYbp44Rxzrg?=
 =?us-ascii?Q?5E8AaC0AFu1G9IYK9rkxXHyS4UPEAhz1G8Rzyq8QJn4ysGh8sgAKfiFHRA3i?=
 =?us-ascii?Q?KaHu4cbYz3VyvGQcUjVBjXP81aadNps8uQZrMUrencOemuzvYddCm0oM9HOc?=
 =?us-ascii?Q?V4+svlqrrOsTyJirf991NvFlcAzf3NkU9GYPwWw69J6pdHGXAYRPIQ0NIUbM?=
 =?us-ascii?Q?5rFA/y9hfEewqHARsmAvbqu9PX4RTvf5hE7/GqwVS8wXJ4gibfpzMU6kI3bL?=
 =?us-ascii?Q?HkvqrK1cZfNzyXIpZwKA6+jI7txp4iFngQKabMHi4owOg8EcCELhBMlVUmmZ?=
 =?us-ascii?Q?lJe62pLmvRWjRhirHCgynnzKYR4G+qFGr499jbLizgRmuhgze9rBp+Gh/FEY?=
 =?us-ascii?Q?7WxPBd5oINme4fW6t731CKsQDSP51/2PJU9GmopUBsm6/g8oH8YHPcgWj9X+?=
 =?us-ascii?Q?43M3CCwtFHuNu6q/tmMhti3qSNcrl36W87UuG93k9URZDlYSt88SKNh/cyiF?=
 =?us-ascii?Q?y0Kprk1CnvT6P+4SNhwYLHr1COabkrGB+E6a7X6RGBTd3WNLWXZfl+Dp0+DR?=
 =?us-ascii?Q?yqlcEfHFDK7ujZ5zMpAWpEgVT7Jh5ImTNj2yeZOcOlXqvREw5DbLTRsx816X?=
 =?us-ascii?Q?FxZkBp26uGiihKoT87lSLJccQQctpytjMpUQ8wCtvd0fRYyZNh9cn5McVWYO?=
 =?us-ascii?Q?X1HEWLtnWnN+2nTFaHg+JLbABDc7UKpOURLRKn6chMlnV6G4PHQ7c+A/wu3e?=
 =?us-ascii?Q?mAbJe8w781GMRToPwjq5JQgw1/gELT+f47WszcX9DEv/NjhQknDPFa9hzOE4?=
 =?us-ascii?Q?Ia+Rk9GXuH/vkg4unGm5wb0nhiYo8dmB14urbZzGS1DXcVGSOkiJi2Fj3MQj?=
 =?us-ascii?Q?2dlQUQZ0+p5sCeTXxOZ1ZnJFZjwVzPJ8Xizd+GGTqyqC/yuzhnJCryoE70kc?=
 =?us-ascii?Q?Q9Pw33eEyd3Pr1NtFxdkkj7iPQ0QKBLmmIQftI3fZr+G1qKHqjOfWubL4eJP?=
 =?us-ascii?Q?SHUPLMFvAAFhyrp8AGDOGOm8PZuRRdoXxS9suGPtZbWY/woZPTuWWJFnJ8L0?=
 =?us-ascii?Q?PHtERdH0/EzMVXaMj3sHPNXacfvamzYyXqxSZPDvngQxlDyfZcB6C6yqBbhH?=
 =?us-ascii?Q?F0/VeSf+PfoOKOKr2VUnOAL9ftPQm07u06zNUzVU0SFd9/lTdJiWI9NAEtbZ?=
 =?us-ascii?Q?S/pNKfDliIIXJF999eaJ8lFWJLiPbwCQkfGG71oSrADZdutinplG2fUkvH9D?=
 =?us-ascii?Q?4QJrxtm+x+n/auSsOOcXtGvJIRtvgqt4ZvlFBFy/rgIGc+uGOkWG5kfOQmHz?=
 =?us-ascii?Q?s50apZKkYPCYbcNubaeMrOkre9FRyZwZ3ljCpyjru/K6vD90/9JD1JAdd7bx?=
 =?us-ascii?Q?bHQ7+KT8w4jnvNLB/+w0E+L7QetCePJICkZvc+B7NPH5vYEf0LK/O8zdI7Je?=
 =?us-ascii?Q?lyBCBGdqdu48SPzE44ktwLgarA02qpbPjDilgaPLrEqFOSP9QlRQVHdGCpoP?=
 =?us-ascii?Q?47yhi8Dmr8i34CDIi/mMf1V7mDo6m58XJd6/A4bP5F+pIsYDFCbrArE93QPT?=
 =?us-ascii?Q?JQmeuDTCCobJohRNIS2mzbwoBKxVQkM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OfB8ATYKbjXaTwf/JyRo3N0AZSMyqOwGsB2HYNR/HB1w8ZIgVpF0e2D7bgeVoXhM9cMPtXQCpOuPlPrF1CcpC5cIIcn2nRa+Y3uIJZGMEsusezqwJcFJpExI+stBdbss5CeAYSapmlq1NLU2u6pGDGfJR+rCdNd+KILOmKvewtYsOcyOTAUNQkk0OVZm2+TUckrEnrsVvWooNedxaQHFPuzrzNdP7na6DhgMTCZQ8fOJ1R9/MZz7kkkFTEa81zZSjgcRE3ysR8q6sQovTSTP5JBZ0Vk1vB0sFbPqo6KD+HZiKXWPX3K0itvAKjilDVNo/eNW6wXZ7em8RBISnb2VfA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df721b4a-7f1d-4046-5d60-08de95392b15
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 06:36:30.1345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SY6ar9FthXs0sdk2QFb7i5Ifpu3CANejT7VZ00w2g7qKBrK7tfsu733IiyRybZ7XE7GR6ZOmLQj7waqw2SunNhfAbGndknj1UMnNq+F1HBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7280
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775630194; x=1807166194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NcninM+AerbfOzOZVEu8c4AawQNNrN2WDl2aMX+slhY=;
 b=AtoDvaPUTNv1CSt2hB8Tiq9SFM+FkC/YPglV/r3Fd9C2hD20nWgpQslc
 o+vvsPBshqoG4+BnZPUmN4v6TsiEzzMeHpi1Q3P/1PmkrxGdj1K//k3Of
 Pl5zn4CTEaPSKqW3n+GhF5m9Az8ZTM5Iy/llhZ81jrN7+p06Z+G5J9AAZ
 tK8NHGb6MPEH8hS5/EHCCw4HqcV7i44rU86i5lN7K4tjR5lcOWWj1m+Or
 WDxouDXWeehjh9wvr0yZLe+v26s21MukLWZ/Xc0j69yM50wYlRPeO/Mf0
 0Uqbsos+gz3Om9riCbJ19FCS5J21fKG7MUPUgrswotMF90c0eN0HFA3XI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AtoDvaPU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Cleanup PTP pins on
 probe failure
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,m:kohei@enjuk.jp,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email,osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 0BE883B79E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Matt Vollrath
> Sent: Tuesday, April 7, 2026 6:15 PM
> To: intel-wired-lan@osuosl.org
> Cc: Matt Vollrath <tactii@gmail.com>; Kohei Enju <kohei@enjuk.jp>;
> stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Cleanup PTP pins
> on probe failure
>=20
> PTP pin structs are allocated early in probe, but never cleaned up.
>=20
> Fix this by calling i40e_ptp_free_pins in the error path.
>=20
> To support this, i40e_ptp_free_pins is added to the header and
> pin_config is correctly nullified after being freed.
>=20
> This has been an issue since i40e_ptp_alloc_pins was introduced.
>=20
> Fixes: 1050713026a08 ("i40e: add support for PTP external
> synchronization clock")
> Reported-by: Kohei Enju <kohei@enjuk.jp>
> Cc: stable@vger.kernel.org
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
> drivers/net/ethernet/intel/i40e/i40e_ptp.c  | 3 ++-
>  3 files changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index dcb50c2e1aa2..83e780919ac9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1318,6 +1318,7 @@ void i40e_ptp_restore_hw_time(struct i40e_pf
> *pf);  void i40e_ptp_init(struct i40e_pf *pf);  void
> i40e_ptp_stop(struct i40e_pf *pf);  int i40e_ptp_alloc_pins(struct
> i40e_pf *pf);
> +void i40e_ptp_free_pins(struct i40e_pf *pf);
>  int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset);
> int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);  int
> i40e_get_partition_bw_setting(struct i40e_pf *pf); diff --git
> a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 926d001b2150..c7062aa476dd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16112,6 +16112,7 @@ static int i40e_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	i40e_clear_interrupt_scheme(pf);
>  	kfree(pf->vsi);
>  err_switch_setup:
> +	i40e_ptp_free_pins(pf);
>  	i40e_reset_interrupt_capability(pf);
>  	timer_shutdown_sync(&pf->service_timer);
>  err_mac_addr:
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index 404a716db8da..7d07c389bb23 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -940,12 +940,13 @@ int i40e_ptp_hwtstamp_get(struct net_device
> *netdev,
>   *
>   * Release memory allocated for PTP pins.
>   **/
> -static void i40e_ptp_free_pins(struct i40e_pf *pf)
> +void i40e_ptp_free_pins(struct i40e_pf *pf)
>  {
>  	if (i40e_is_ptp_pin_dev(&pf->hw)) {
>  		kfree(pf->ptp_pins);
>  		kfree(pf->ptp_caps.pin_config);
>  		pf->ptp_pins =3D NULL;
> +		pf->ptp_caps.pin_config =3D NULL;
>  	}
>  }
>=20
> --
> 2.43.0
>=20
> v2:
> * No need to guard kfree of NULL
> * Followed Dawid's instructions re: target tree, Cc, changelog

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
