Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFnPCofKpWnEFgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:36:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BF31DDE25
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 18:36:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 153D783EAD;
	Mon,  2 Mar 2026 17:36:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E0KInzT1Ub2B; Mon,  2 Mar 2026 17:36:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBD8083EA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772472960;
	bh=gvdcRHa3s0bd9SQ4HBYg2tN9kQreviNU3yyg64Vtr+o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g1K3viwCS/XfgtCshtZ2QfJsEemc7O/sRc/WwlUkr3+siYGfg0ivN8PucVeGO7QWo
	 pYlVecFW8y+lUPse+VbZaWquhlmA5BiptfVNfUqe4WUy3mhc4jH8lXP2QYRl8u0ORI
	 f9hmSyCI8+5RDRth5/dxi8aMDwFoKbIL89clq4znYAPOKNVQLXGkSlUAfavw4+1Lh5
	 OM1Bhva8zK1O1ByYjH1cTAr7midBE0L4Wb3LQHS3wyphIsqvax3wo0E3LdDbi8uZLJ
	 /1d1JbCOSwm1scZDYA4fcZHwSsO2Aips7AlrALXBW5Sa1z3vlqAwKESZs4t/exD0uj
	 ZLtLYK7Nm/mrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBD8083EA1;
	Mon,  2 Mar 2026 17:36:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D3E9231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2309B400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:35:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p4yeZ5x8Szsw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 17:35:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7077741647
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7077741647
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7077741647
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 17:35:57 +0000 (UTC)
X-CSE-ConnectionGUID: 7ttvZv0HQTOinBn9hWByFQ==
X-CSE-MsgGUID: QsltQtMHRQa1fpa6voXcWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73395982"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="73395982"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:35:57 -0800
X-CSE-ConnectionGUID: 8vEqekYiTkan2h7XachVpA==
X-CSE-MsgGUID: NFHqsTtJS+6vypPFnYAxsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="217731747"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 09:35:56 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:35:56 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 09:35:56 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.3) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 09:35:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EfB4kxnDk/xDtDkGlpBEjjdtHqIRnr6SgGAwMktP+MD9QIVl2BNUHDFGTK0//8TsEcbo41Sl27AY/1jAD/4t4RnDh8zu/1VJHI/yS8kkFg2PHeWzc5oUuWHHTMHLWnFntZB+89Tm6yYTWFQKos1UxaM+c8d9QUx8HJD/fDUsPIM30vtXlaUIJLJX+M9F10pvg3bzDIH0Ano7DERSYw3MUzwjguGES9TQwAKF7EE4Zse9NgbGyeiGzSS13VJmYBYIxKVVAOOqFyD21lHCRCfQaF7PpZ9ZU7oLGDwXnUuWUp7DMHD/tfMrfTLKAZzAKCmEhTUpxLuAlcOu3ZLsH5HanA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gvdcRHa3s0bd9SQ4HBYg2tN9kQreviNU3yyg64Vtr+o=;
 b=g8v4LwU6IZzIADT2mlCg770y7rNcPgUbra8IYL2SpsGAEp/SvYTFClhBBbksQ1CpmKCvHB0Tof1qq2yIJtIFbN+fb0y5dtKFY0mwnMrZQ3o8bdjLFHQPMr1wRamWy6y9Rnmi93jD3CLthcse/SCwaH6s9vMmc2ApPoVGwNypEiudAxB46gflCanS659/lckcTk609oRFPizHCiZY0R+gK/4XoNwMarC8ob80/mCV1l4+dUS8CE4MMuTAbJ2ziySDn6zku5VBUvT1z31ahyEQbJ6Ve3cNvvHW946a+4uylY7iMMfRdB48JpoRfA/KyCK3kgzJAJdFwVVKJX433qFUuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::831) by DS4PPFE70B31BEF.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Mon, 2 Mar
 2026 17:35:53 +0000
Received: from SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d]) by SJ5PPF6806D69E4.namprd11.prod.outlook.com
 ([fe80::16a5:1a74:21d8:8e3d%4]) with mapi id 15.20.9632.017; Mon, 2 Mar 2026
 17:35:53 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>, "Slepecki, Jakub"
 <jakub.slepecki@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 1/7] ice: in dvm, use outer
 VLAN in MAC, VLAN lookup
Thread-Index: AQHcle0+GIz6IzmeBEOaGohvnKyC9LWbqhnQ
Date: Mon, 2 Mar 2026 17:35:53 +0000
Message-ID: <SJ5PPF6806D69E4D7FE3D087247F9BFBFD58F7EA@SJ5PPF6806D69E4.namprd11.prod.outlook.com>
References: <20260204154418.1285309-1-jakub.slepecki@intel.com>
 <20260204154418.1285309-2-jakub.slepecki@intel.com>
In-Reply-To: <20260204154418.1285309-2-jakub.slepecki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF6806D69E4:EE_|DS4PPFE70B31BEF:EE_
x-ms-office365-filtering-correlation-id: 22d417db-a392-4560-176e-08de78822767
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: 0ewBWRogrYdz8bo04Cd0gdA3vAkMyzgnrL8efr6ZHDeZXXjF/TtFdD5JJDymrf9q9tswqFkrxzg5EyXaFJ3e7kxw/YwbAUF7pHXL56kf0GuppGTlL9858GyGvDqc6XIoWCz+L1mFla8Vmd2DqAcCwz01KXy9qT47xriTx5CS6bTYK+UMuVbIJ4vAYZT7fAWNvVsj6BH4NR5wn7JZBGFuBM4M0VAdWhIgMZIXVyTj7SMzrY1DV9PR8CO0vauWNkqccr7JI2L6S7n6a3d/qnOdpSOrUbvRrf8lndDySeC4wic1hmvVvH2TW6e0I83eK96fLCFCSUt6idEHcGuGef/1RvuDrI7klq/vjKUdb/rm9rjRgGfgQWoldsZaqRdBYMFPoAbYAocnVQLR0ABX/OyA/WkZglx2Mtah9E86yL9SYjMQSQM66+fqHs8gvgpR/LgRs7o2+QSlbH0leyECivxt20Ek9zK+AflcUg1BSLW/IJihLTy1XmWrt9Tm9EVMT2ZuxHENpzKQ90b6NmhEjWrOrUCAKWg8knHFTHymPa+VsHbkqNqcwwzf2nqcAZkAEJi3zbftJgXhrlZ6iUGUaiJnCl7iUVshceo5lXe3w1HRJB6KvBjlMT1Fg3uymYY0R4Xu3M19gBQzFvGPFCRBY+Ak/t4kdMcoMmTpT/n5ssT0+iIuqsW7B6DsLs/6srRkavMgj4ThpuEhbPaj0X+DKNjBsR7XJdks/H24SdVdllu/V7+p8mOsHcZ623mXpCjQnV3Q8mxarYYlkH3xdXFU8xphk4GlwaRbDhmY5cP6mGZd4mU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF6806D69E4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bibLxvL4hJ0z0ZirT0UXtveaq1DLQhK1qIRSPF6aeiKZaV65WHHZqBSAL5ZW?=
 =?us-ascii?Q?xxhm3PzapAfkn8Z9Po8T9xcUPsVFdScXfsSuKLMSUBO2PBGDLQHwD5cUVpxs?=
 =?us-ascii?Q?XBSZsyxbMDggRw14ebNNjqxjXRA3gu/HpDubfRhv2dZGXU1BsIs/XkawZ4cI?=
 =?us-ascii?Q?2epy+wNq0323IYXaymk3ZgG4NaD5V6aQs4UttRZn6DU44v99pUUTy/QLZnK4?=
 =?us-ascii?Q?+xLwV0UkGOvjFWrLSG+qRyTmPKGRBkHlCM6+4B3OYEDzayBl3nD8oedtB/BY?=
 =?us-ascii?Q?1f0Nso/scWIoMO1q/2ZbFo5R9b3MsonwzYIR1dnn4hf9duKvvT6o+ML33BUW?=
 =?us-ascii?Q?aNyzSQnAQXjqA2g5Qah70rQHKD+cffIu083GnCYPGsQ4l+f7U3toL5OG4oPm?=
 =?us-ascii?Q?bxnEcLx6z8PbwDo6F1MF9xW0PVrz5sfLVaRZGJFv1glk8+S2B2lbSVf8xc6K?=
 =?us-ascii?Q?V/1NCiveYn2vKVc9rxOSw8cCms7ZP/1oZVSSq9PPTUBLqUO4KmVsgmrg/EZy?=
 =?us-ascii?Q?HCjt7AExfm35PtJLDhQ0JOhWI6s2lUW5K0eZr2kN0k+d2UgNsBroykBrwbRb?=
 =?us-ascii?Q?p9nDVmOPoGP5bbrMubYkXZA349vKz6opb7t7Rrtb9VQRwbaeU7LL+zxDRNaa?=
 =?us-ascii?Q?U63nSyGA1dzQZD4hZJZKbOMqx7cs5mgDeDJduNqHnir1+EriqN0arvOjgqpL?=
 =?us-ascii?Q?OM6h/af0ZGBl/4pIf9Q0stKnpQXBsNI3SeIU0EWe6RzPXHU9sXp/ALD5QmWr?=
 =?us-ascii?Q?Cs2jR/3clVadPRWOimO/1ctx2UdCT6d8jcH5i0Bs3JRjuePIjYyM0lZzphzC?=
 =?us-ascii?Q?CS/wYzp3aGZ18Pq7FUcj7TPIjxBo4Lx1XgmYrJ3005NHe+RVnO3211JHwnrK?=
 =?us-ascii?Q?lpPBhzgP6hiD1+0+pDglo+CcKsHTSmmO/vMO+XA5UvmGfMnYm91UH/kbJMf+?=
 =?us-ascii?Q?DeKSnJOUMJP0TFQYhWe6/j1FPejP+Pvc9fc6JvLLemC+OTlK/AAf/bsABjTV?=
 =?us-ascii?Q?J91pdkPRR52lAHi5PUJBJAnDIa83EZAAnaiXrJO7w7NjZ0Q969MMl41w1JDC?=
 =?us-ascii?Q?ItFxCivOdyuEXoU6PQjFJcFueCMTDtJz3HtRhzUFYHe4nToIW77gAW7tQovC?=
 =?us-ascii?Q?AtzLAvJbrBJ1PoqILcKdQh2GzlxQgLinNoIu/QwHePR05FRc746o7Y6VueBe?=
 =?us-ascii?Q?B6BL0egMLvRCsm1jGM8fMk5nLsPICCRVCnKMD0TUtfBFks3dbQrZmcHrcaYx?=
 =?us-ascii?Q?unFUiDNVgqZ68H5dPUAeuNmmXqRJ/mDNHREmz2dMEAbvZOlVtDxeApn1A+XY?=
 =?us-ascii?Q?mdpP62Zh7PFcw7CRJD52/ClMfOZg8G1KwZzbRglvra7Y2NoYxXv8CC1worT5?=
 =?us-ascii?Q?EVMgCcBvEkYGpP1FI6UvQLCy+oGyHF0uoe9XbmDa9sO3xftiJfvcb2PZyS4x?=
 =?us-ascii?Q?BnhNXPxjpEDGSgPiT3OYELwipXxL4Z6xqNYAf/S+9JsyzYFCrI2BjgxAHqpx?=
 =?us-ascii?Q?duy5sr7K618YuyVASRsXJCqERkWqMDSvEZFHXIBSMQh5WeZACduVTU2nTIj0?=
 =?us-ascii?Q?XGtKLacvpeQGhc8mMO5j4DzqzqkGpi4ElGL8i/zY+MGoWgbi0vba6lwzSRi7?=
 =?us-ascii?Q?T3x45cPUa9TeLeXGQ7IlC8iNnB9zIytNdhsczBAO+MTuLfxoZPPPjLolslX8?=
 =?us-ascii?Q?KjoPDLADDab+AmTNuH4eal+kvpNVqcel9MXkCFu/yrb7Jtbso2jZ3BpPkjW4?=
 =?us-ascii?Q?h79XQa5QaA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF6806D69E4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22d417db-a392-4560-176e-08de78822767
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 17:35:53.5027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7I+Mesomfnd+nY61o4gqM7ZOfbj4r3Ph0lhT/vx1/4qX5gdCrDiXUDLKhKpXQQcwalAUliuPh2Ji5P19jMvfCe00CBhOppAsgHjdARcspMs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE70B31BEF
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772472959; x=1804008959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YjQpB3+U9q+yJm2qBemM6WLKlv6B9HXnnB6mXBMoTq4=;
 b=SwHEfwd99+P1LuGqi5bfLBlDGemFZhFhr0r551UqmfGrNWLcXWyrgb5w
 R9Qj41qGw9i00QOWGXqNUxw/Ns+43t9jP9FXrrKV7nXAeM1yzUUbtJQVm
 GPpgLK6UDGjPczbzRsDoJn4UxsdDkKDGIhzb2wfccO7JbhWS3nposL5y7
 iY4P1pvUucUZua0lkZAsq9LxqYl81FJT1fbaNNOpnSXNFrIZ10Ibxoiso
 x2AKyvnv+5Mg0OBvou7GOPRHlvV+iUARcNwBhuGPt53z+ckPwVgjAK9CM
 qZXSvFtUbghex1otdjvqvQQ3NH/5DxF3W3aVQSPDQKY73WAf9LbAjcEQ8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SwHEfwd9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/7] ice: in dvm,
 use outer VLAN in MAC, VLAN lookup
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
X-Rspamd-Queue-Id: 56BF31DDE25
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakub.slepecki@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
akub
> Slepecki
> Sent: Wednesday, February 4, 2026 4:44 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: linux-kernel@vger.kernel.org; netdev@vger.kernel.org; Kitszel, Przemy=
slaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; michal.swiatkowski@linux.intel.com; Slepeck=
i,
> Jakub <jakub.slepecki@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/7] ice: in dvm, use outer=
 VLAN in
> MAC, VLAN lookup
>=20
> In double VLAN mode (DVM), outer VLAN is located a word earlier in the fi=
eld
> vector compared to the single VLAN mode.  We already modify
> ICE_SW_LKUP_VLAN to use it but ICE_SW_LKUP_MAC_VLAN was left
> untouched, causing the lookup to match any packet with one or no layer of=
 Dot1q.
> This change enables to fix cross-vlan loopback traffic using MAC,VLAN loo=
kups.
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
>=20
> ---
> No changes in v4.
> No changes in v3.
> No changes in v2.
> ---
>  drivers/net/ethernet/intel/ice/ice_vlan_mode.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
> b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
> index fb526cb84776..68a7b05de44e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
> @@ -198,6 +198,7 @@ static bool ice_is_dvm_supported(struct ice_hw *hw)
>  #define ICE_SW_LKUP_VLAN_LOC_LKUP_IDX			1
>  #define ICE_SW_LKUP_VLAN_PKT_FLAGS_LKUP_IDX		2
>  #define ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX		2
> +#define ICE_SW_LKUP_MAC_VLAN_LOC_LKUP_IDX		4
>  #define ICE_PKT_FLAGS_0_TO_15_FV_IDX			1
>  static struct ice_update_recipe_lkup_idx_params ice_dvm_dflt_recipes[] =
=3D {
>  	{
> @@ -234,6 +235,17 @@ static struct ice_update_recipe_lkup_idx_params
> ice_dvm_dflt_recipes[] =3D {
>  		.mask_valid =3D false,  /* use pre-existing mask */
>  		.lkup_idx =3D ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX,
>  	},
> +	{
> +		/* Similarly to ICE_SW_LKUP_VLAN, change to outer/single
> VLAN in
> +		 * DVM
> +		 */
> +		.rid =3D ICE_SW_LKUP_MAC_VLAN,
> +		.fv_idx =3D ICE_EXTERNAL_VLAN_ID_FV_IDX,
> +		.ignore_valid =3D true,
> +		.mask =3D 0,
> +		.mask_valid =3D false,
> +		.lkup_idx =3D ICE_SW_LKUP_MAC_VLAN_LOC_LKUP_IDX,
> +	},
>  };
>=20
>  /**
> --
> 2.43.0


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

