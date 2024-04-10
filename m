Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E80E89ED6B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 10:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E45560755;
	Wed, 10 Apr 2024 08:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h_RaCYSSkS-6; Wed, 10 Apr 2024 08:18:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4365660761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712737126;
	bh=ANMm2wDb5xrhQm84BLcl+2VBJ6zjV5Ov3ZMDmme+m3k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vrQip6hXDaqxatxb151Hp+NiNnEH1wvsxVdTRfg3naBccbstR1/RlybvRnzMzjW/F
	 8hq74R8rfGOOwF51thIhUKNmP7VUFj9obaWbG+PJ7KgfSzA0xE7d5OICDMDJVWZB/q
	 nIgRUsvyQS7MZvHudtRlCiwnivtLFn3iUNkT6YDKJkHUHtur9K1NDY6ECTfHxOKaRq
	 hTC7UdokR7mB+dpcYWxocgHIB0u/iwgw7N5fJMMZi6YhOH7AXXYc/QREDHQ07fwf4S
	 A33fxPekvxX/jCBSYPbTEX+2clEJO4YDkzVCpWv5XzPa7/lX+wAFa17upuqy60Y6Ww
	 +glKsPU/Gn1Wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4365660761;
	Wed, 10 Apr 2024 08:18:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B2801BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 08:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 240F26071A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 08:18:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ii7Nu_fxWMqC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 08:18:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 13EDD606EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13EDD606EF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13EDD606EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 08:18:42 +0000 (UTC)
X-CSE-ConnectionGUID: yh3KVKC6QRa+RoZ1tPiM1g==
X-CSE-MsgGUID: fMbv2iNvSLmeuPHTjra4sA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11050515"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11050515"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 01:18:42 -0700
X-CSE-ConnectionGUID: RUwo7YGcSCi8/mdyABCEpA==
X-CSE-MsgGUID: PGWwzm0iSS2XN47dG1g61w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="24985401"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 01:18:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 01:18:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 01:18:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 01:18:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+UmXXKJzmsqSm2MrlTLs651ptLLprEasWanG40lx0VsBtC+xNNgozF8yrSUphRMC9Zudkkhoh25HuUpL1Hg9hQo+G+LOssuN6vw31hgwER9R26wGXf1qClO+LEYnUxqmG6dZoAQzmex1Ett9rRFDjifgczZnq4uly6SYCf585xfaHR41hilnVqishw5BzNokdxmwJDrPETUQA685PjFzdAjFLmVKFGDEDLGxRbkyHg2szYUICq8P0t75/wMjWtOkBbbl7Y7i8TUvfZXoQlG/ezKT0ZglTN6y2mskpn9apGa/7yy+VcxkSD2zTjpuMz1+c5fLzCLDhxxntDSmxDGEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ANMm2wDb5xrhQm84BLcl+2VBJ6zjV5Ov3ZMDmme+m3k=;
 b=dVohkNB7tIO0zZifeQt5+AG8LgSZiH6ptkns1h0n2ryNHosbrkSDAq8wxxunllTtc7/fuihpcbI2UY9hEY/l4pYChxax8cNYthbb8Z7dORBcJWJpDnXIJ+bi+zzS3PkgrDEbtbOwg+Tjnegz8H7+UUomviokTVsFH2KKdk9YLsf0b3MQaPCgrxA4IL42DX4ItlYy3izEvwVVjYvDRWdAK1Fywwk7aka66ssLEH0z5z+6UEvgbgJWeMe4IXdbXqeh5Z9WOb4JIqdnsDf8a58QlVTdwXow4qBqxz6pSEStH1qNssGYs9tQJlsJ5S/gaARdJxJlLQQEpYifL1HEjiulxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MN2PR11MB4520.namprd11.prod.outlook.com (2603:10b6:208:265::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 10 Apr
 2024 08:18:36 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8%3]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 08:18:36 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: store VF relative
 MSI-X index in q_vector->vf_reg_idx
Thread-Index: AQHafKI/mSMTjLkNWEmRd7FfdRLu3rFhRclw
Date: Wed, 10 Apr 2024 08:18:35 +0000
Message-ID: <SJ0PR11MB5865B740E1DEFFDE49AC35FB8F062@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240322214445.1653263-1-jacob.e.keller@intel.com>
 <20240322214445.1653263-3-jacob.e.keller@intel.com>
In-Reply-To: <20240322214445.1653263-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MN2PR11MB4520:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L8tmc0VR++wYMsgyZynUYLN0cChA9b2NPRj4NmYvi6FiqI7PNj+MmTUxFmG+e/w6KTVminoiQFjTbpKkknb7441vZl+V6TrPwFoazOq+NHNF1YL0JwuN6m4hi1LnR+tobxAiIbtBb+8KNdDTvFqN0pZuyKD44EPETfMFkS9znVP+BS1Isy2YKtZwbUJG/NVtMxwlvQ0I2bVd4prXaUFgPDiDeEVnNPRZhn/VnzUfkw1iJRcwQ+PhYdo0tBe1KcTzsIWYieLr39Ner5ACORYyIpyitQ8TuJrhMXy61Mvzvr3bp1wCsucGe9RKPFqf/cqWZXo1p55E5xysTm2uHXhWGTKcsZ74Nm1NgtePgqLgaplUD14rbxlbLpHmcrHIo21oeCg63yhQ4bRrK6QL8e8x72YyEDg9txSbwlllvOQ4BKoHVdksLBuyn6gbGP639VwrNdB/roHb5g414/yhCbjctsa4sd0eoRFdGfhVbX7zh8vIazjnsEWWGm5PojNgTG6ZiIpbAI1LP2IaQmbQyNsXvJgCq28fkhLtT2Ki2Q7Kk/Ito3kKLNkYIPMbbFknonpL8EfJHr5MbPcplSNequ1icELt711V4ovHjamXYerTvbxyzMrDLrTl67V7e7voQlPG4qK2Uw6pzgZVMNDiIIZQOXL5pXhQTFRzUif1k88iM5Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6H9ZCFBKboSjyTUM3GKJwTa//PDqgUKRze+AkhqJqcvRjPuChzsJv0RO+BW3?=
 =?us-ascii?Q?IyQYDBQ16G5MlpDQ68DAuIHiSuzKE8OQVklRag3Jd/DsPKxKyyJ/JAR8Ez0K?=
 =?us-ascii?Q?QD+vcx91W4tSUy6uVrAzJMRtMq43vSfzRErBFsTgwwV/8A4VGuwShaOChMMb?=
 =?us-ascii?Q?QKCzfTR3bh8oJM7uwRrQCMyyZmvw97HLx7E/v9/TI24fjybl9pgRFDdube/n?=
 =?us-ascii?Q?kRKB8adZurjj4sjI796iCYD4nkt+kahUouKPi/ZcXlism53pqzUJQXMap01A?=
 =?us-ascii?Q?ZCYLks2+G9pxtszJOAqU0tki3hrZS4nZ7z/5vxnKdO/rJ5G0BbhPFFbnZAEA?=
 =?us-ascii?Q?6jdX7u1ZDe5vt9WcfOCnWAjKlwwNEz6YxPg/nVda8chq83sux4s/Xy+oJ/qO?=
 =?us-ascii?Q?FGUi5zt53+9puVVboGuKoaLBdkEHPOdyB/qYWx1Wc1jlgByjUlmtbGHjtAPT?=
 =?us-ascii?Q?SIXa/lcMn6hMd0zwkUbIPJ32yhE+n5zFeaxHr4Jy2aG9vhLWakNXXcZgBlD1?=
 =?us-ascii?Q?okB6MnztCfdu3u2zhd8RO6yKodZQ0wQq7CItp37JgvPsa53QtYqE8ZT995qe?=
 =?us-ascii?Q?bYA1swArdULJMjEBnJVBYC9zXvdntBIhQUS9uU96SOc7MyLrMyusGAc+fGRL?=
 =?us-ascii?Q?PWWzmRT1nAawR5I7tXxmL/nqXdODOo1bAsp3Ensvbqvvwm0C7IPJsOGzEDRr?=
 =?us-ascii?Q?RLH1k193peDQUqAeU19WlIp2/v6iV+EkETM6M77rnR+arfwKS5ky5YhYEV2g?=
 =?us-ascii?Q?8eErW7GKgHwWfz0snWJP5cnIi2adSz8arsBX7BeXVEPXeP4wgtRZUDnQ6QX7?=
 =?us-ascii?Q?/4KUsE20ajX05ksklo6rroHmySHfn24Fzd6xakZ72wmWgd9SxDHTo7LTIMU9?=
 =?us-ascii?Q?PVUFJRRW8u62uv65z3Ck0UFlWw1xrRz0SMf4X8QYYBcsCnMlKN1hi6frZnbI?=
 =?us-ascii?Q?dAqgW7T2TUZfHKpIJyZWFSXSIKulhSFS+FajvISoeIWNcr+VG8QMPcIrFLsV?=
 =?us-ascii?Q?oDcdvuncwKWOK4n6RIAytXA5ruDqMYKBSr3e2UxSu8yzyb0Z4c1/9/AC4CbE?=
 =?us-ascii?Q?fwo7fLmaxhsoA6QZgwZN5fG9uBFAXmUZJU8za9ytpeiVUcmGbmRLQccpYLzc?=
 =?us-ascii?Q?oxVdaXxf/Urrjyp05ilz/i8Lfxr9CpIdJ2QuU3Ebijl687B5lD8VkakKRGx3?=
 =?us-ascii?Q?O6Dc4DSUexVbOktvNtiDGc7ggd9l3nrgWuA8KE/woEfns5rXQqVI4RkPxeK7?=
 =?us-ascii?Q?MDe9ASUhNG90JMHHiH6nQgXkfpHu5jv/1Cogq6BaMK//PIC58LF9LLehmqzX?=
 =?us-ascii?Q?Y3aGwSdTtSn0uxbIqCELo/jovLT5omqpCEP03hWaNkKkBJF6z3+s9u0KWJAg?=
 =?us-ascii?Q?Lqd55mxupphLTS8r/um48/t4paDANA4+FJQsA88Vwmf5O4NzqgrdfqnZa7nc?=
 =?us-ascii?Q?10xeuj/KM2RMm/Q+2CnwSZm7emgeQcmP7lEED2Oj7cggsEjTMvDJjc0ff58u?=
 =?us-ascii?Q?PIFA0ucDux89Y3vRdXuGJP+O0gqpMOr2bCkCFOCTqGiRGjHo870CPmUoA9JY?=
 =?us-ascii?Q?Y7dnpprHMTNOWfpty0RHO4bDd2rMTAFiFTu4jwEL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fc95690-c063-4461-04cd-08dc5936d19b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2024 08:18:35.9302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mg4cMsyrmE4KCWW98PyXkAfDgZUqQ4pWJg4ETbEIlE5LNN7mYSKP2y7nUPmTTF3H8XGRgkAo7cDh5si7WsWKQylvc5jByzp1MqADp1V9g1g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4520
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712737123; x=1744273123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cgJEFKoqvlH7ROPHj/HWbpp8yFyaZrs68RvN+Yj+3SQ=;
 b=Du91LfdcaabD7fFhCezBkKD579946cunaeUIaFwAYqyMWxeTjbxxVrVb
 8SehGnsXRj1PsPBP1ykHiGilAqe3LPOZWOA1Wvy2u1aYpnHoaiBE1AX2l
 jpWqBz3scEgznzYYXHEBCMTYG1sS/HSMWcR1oW2XIIIj2HUsO1qPLxehm
 AcWpYeTk3bY5iLqAmcAG73JbCXhcujVUY1YL4lf+SukflUV3JNVr92so3
 a7XnHQazrHnYC5jLRDlSM23h6qs+xQaTalDGkzBl5TQ9YNr4XyWFs2WxB
 zYMr2Z5bUB6YOge9JxBINZcs6Ihk5zYLST1K2/uMW3hODGq2cZ/9nXbgf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Du91Lfdc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: store VF
 relative MSI-X index in q_vector->vf_reg_idx
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, March 22, 2024 10:45 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: store VF relative=
 MSI-X
> index in q_vector->vf_reg_idx
>=20
> The ice physical function driver needs to configure the association of qu=
eues
> and interrupts on behalf of its virtual functions. This is done over virt=
chnl by
> the VF sending messages during its initialization phase. These messages
> contain a vector_id which the VF wants to associate with a given queue. T=
his
> ID is relative to the VF space, where 0 indicates the control IRQ for non=
-queue
> interrupts.
>=20
> When programming the mapping, the PF driver currently passes this vector_=
id
> directly to the low level functions for programming. This works for SR-IO=
V,
> because the hardware uses the VF-based indexing for interrupts.
>=20
> This won't work for Scalable IOV, which uses PF-based indexing for
> programming its VSIs. To handle this, the driver needs to be able to look=
 up the
> proper index to use for programming. For typical IRQs, this would be the
> q_vector->reg_idx field.
>=20
> The q_vector->reg_idx can't be set to a VF relative value, because it is =
used
> when the PF needs to control the interrupt, such as when triggering a sof=
tware
> interrupt on stopping the Tx queue. Thus, introduce a new q_vector-
> >vf_reg_idx which can store the VF relative index for registers which exp=
ect
> this.
>=20
> Use this in ice_cfg_interrupt to look up the VF index from the q_vector.
> This allows removing the vector ID parameter of ice_cfg_interrupt. Also n=
otice
> that this function returns an int, but then is cast to the virtchnl error
> enumeration, virtchnl_status_code. Update the return type to indicate it =
does
> not return an integer error code. We can't use normal error codes here
> because the return values are passed across the virtchnl interface.
>=20
> This will allow the future Scalable IOV VFs to correctly look up the inde=
x
> needed for programming the VF queues without breaking SR-IOV.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> I found a bug during further testing in the v1 case because the irq.index=
 field is
> used to determine if the IRQ vector was actually allocated. I then invest=
igated
> if q_vector->reg_idx was necessary or if it could be replaced.
> It turns out that it is used during the shutdown path for the Tx queues a=
s part
> of the stop queue procedure. Thus, I opted to replace the functionality b=
y
> using a separate vf_reg_idx field that fits in a 2-byte gap in the curren=
t
> q_vector structure.
>=20
> Changes since v2:
> * introduce new vf_reg_idx instead of (ab)using msi_map index field
> * Keep ice_calc_vf_reg_idx and use it to assign both the PF-relative
>   register index as well as the VF index needed for virtchnl
> * Assign vf_reg_idx to the same as reg_idx for all non-ICE_VSI_VF VSIs.
>=20
>  drivers/net/ethernet/intel/ice/ice.h          |  3 ++-
>  drivers/net/ethernet/intel/ice/ice_base.c     |  3 ++-
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  7 ++++---
>  drivers/net/ethernet/intel/ice/ice_sriov.h    |  5 ++---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 14 +++++++-------
>  5 files changed, 17 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index a7e88d797d4c..67a3236ab1fc 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -459,7 +459,7 @@ struct ice_q_vector {
>  	struct ice_vsi *vsi;
>=20
>  	u16 v_idx;			/* index in the vsi->q_vector array. */
> -	u16 reg_idx;
> +	u16 reg_idx;			/* PF relative register index */
>  	u8 num_ring_rx;			/* total number of Rx rings in
> vector */
>  	u8 num_ring_tx;			/* total number of Tx rings in
> vector */
>  	u8 wb_on_itr:1;			/* if true, WB on ITR is
> enabled */
> @@ -481,6 +481,7 @@ struct ice_q_vector {
>  	char name[ICE_INT_NAME_STR_LEN];
>=20
>  	u16 total_events;	/* net_dim(): number of interrupts processed
> */
> +	u16 vf_reg_idx;		/* VF relative register index */
>  	struct msi_map irq;
>  } ____cacheline_internodealigned_in_smp;
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index 662fc395edcc..5e1d5a76ee00 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -121,7 +121,7 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi=
,
> u16 v_idx)
>  	q_vector->irq.index =3D -ENOENT;
>=20
>  	if (vsi->type =3D=3D ICE_VSI_VF) {
> -		q_vector->reg_idx =3D ice_calc_vf_reg_idx(vsi->vf, q_vector);
> +		ice_calc_vf_reg_idx(vsi->vf, q_vector);
>  		goto out;
>  	} else if (vsi->type =3D=3D ICE_VSI_CTRL && vsi->vf) {
>  		struct ice_vsi *ctrl_vsi =3D ice_get_vf_ctrl_vsi(pf, vsi); @@ -145,6
> +145,7 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_id=
x)
>=20
>  skip_alloc:
>  	q_vector->reg_idx =3D q_vector->irq.index;
> +	q_vector->vf_reg_idx =3D q_vector->irq.index;
>=20
>  	/* only set affinity_mask if the CPU is online */
>  	if (cpu_online(v_idx))
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 5e9521876617..fb2e96db647e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -360,13 +360,14 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)
>   * @vf: VF to calculate the register index for
>   * @q_vector: a q_vector associated to the VF
>   */
> -int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector=
)
> +void ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector
> +*q_vector)
>  {
>  	if (!vf || !q_vector)
> -		return -EINVAL;
> +		return;
>=20
>  	/* always add one to account for the OICR being the first MSIX */
> -	return vf->first_vector_idx + q_vector->v_idx + 1;
> +	q_vector->vf_reg_idx =3D q_vector->v_idx + ICE_NONQ_VECS_VF;
> +	q_vector->reg_idx =3D vf->first_vector_idx + q_vector->vf_reg_idx;
>  }
>=20
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h
> b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 8488df38b586..4ba8fb53aea1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> @@ -49,7 +49,7 @@ int ice_set_vf_link_state(struct net_device *netdev, in=
t
> vf_id, int link_state);
>=20
>  int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena);
>=20
> -int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector=
);
> +void ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector
> +*q_vector);
>=20
>  int
>  ice_get_vf_stats(struct net_device *netdev, int vf_id, @@ -130,11 +130,1=
0
> @@ ice_set_vf_bw(struct net_device __always_unused *netdev,
>  	return -EOPNOTSUPP;
>  }
>=20
> -static inline int
> +static inline void
>  ice_calc_vf_reg_idx(struct ice_vf __always_unused *vf,
>  		    struct ice_q_vector __always_unused *q_vector)  {
> -	return 0;
>  }
>=20
>  static inline int
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 1ff9818b4c84..1c6ce0c4ed4e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1505,13 +1505,12 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u=
8
> *msg)
>   * ice_cfg_interrupt
>   * @vf: pointer to the VF info
>   * @vsi: the VSI being configured
> - * @vector_id: vector ID
>   * @map: vector map for mapping vectors to queues
>   * @q_vector: structure for interrupt vector
>   * configure the IRQ to queue map
>   */
> -static int
> -ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi, u16 vector_id,
> +static enum virtchnl_status_code
> +ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi,
>  		  struct virtchnl_vector_map *map,
>  		  struct ice_q_vector *q_vector)
>  {
> @@ -1531,7 +1530,8 @@ ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi
> *vsi, u16 vector_id,
>  		q_vector->num_ring_rx++;
>  		q_vector->rx.itr_idx =3D map->rxitr_idx;
>  		vsi->rx_rings[vsi_q_id]->q_vector =3D q_vector;
> -		ice_cfg_rxq_interrupt(vsi, vsi_q_id, vector_id,
> +		ice_cfg_rxq_interrupt(vsi, vsi_q_id,
> +				      q_vector->vf_reg_idx,
>  				      q_vector->rx.itr_idx);
>  	}
>=20
> @@ -1545,7 +1545,8 @@ ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi
> *vsi, u16 vector_id,
>  		q_vector->num_ring_tx++;
>  		q_vector->tx.itr_idx =3D map->txitr_idx;
>  		vsi->tx_rings[vsi_q_id]->q_vector =3D q_vector;
> -		ice_cfg_txq_interrupt(vsi, vsi_q_id, vector_id,
> +		ice_cfg_txq_interrupt(vsi, vsi_q_id,
> +				      q_vector->vf_reg_idx,
>  				      q_vector->tx.itr_idx);
>  	}
>=20
> @@ -1619,8 +1620,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf=
,
> u8 *msg)
>  		}
>=20
>  		/* lookout for the invalid queue index */
> -		v_ret =3D (enum virtchnl_status_code)
> -			ice_cfg_interrupt(vf, vsi, vector_id, map, q_vector);
> +		v_ret =3D ice_cfg_interrupt(vf, vsi, map, q_vector);
>  		if (v_ret)
>  			goto error_param;
>  	}
> --
> 2.44.0.53.g0f9d4d28b7e6


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


