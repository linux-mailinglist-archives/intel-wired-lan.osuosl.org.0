Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A357AB12C9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 14:01:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9597460B26;
	Fri,  9 May 2025 12:01:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ONB0DLAUcDkW; Fri,  9 May 2025 12:01:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FDAB608AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746792062;
	bh=rELPg5s2JB0J1J6c8F+BluaJZ5FjDXbsc+Tk+oYZOrk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vWptTub3gljmI8InhnVIt9qb7kUZV+23oZ+LOT9ZPLuQIkOr4+OkbMCHmw21wX3W8
	 waNEfDYzC7/cQW/EqMBjXulo/eAasCKcwJb33reyyCl6ynuUDq2GOn5dGt8L3iDgn5
	 ttZj6MjpX9IUGVNE11k1VNeHSnB+hnX3jbSANh4oj5ChoWOTGp6NX6USPe5MBqQAoD
	 /h2Jks6ZFEdGO1xAOx1RS9UIW3ryv+KKayiXcDNODns1h6IjjwcCzKeaXHQ2pP9yIm
	 NYMdRmQYWZP/OD7BT31xmWxUt30ZxUkKxOCGG/sph7Ne7qKhpabQ7iu5xQbkt6EOXe
	 xZtce2DJyQFfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FDAB608AA;
	Fri,  9 May 2025 12:01:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 76F50E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 12:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73A2C81127
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 12:01:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q9WU2cAucexv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 12:01:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B092483BC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B092483BC7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B092483BC7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 12:01:00 +0000 (UTC)
X-CSE-ConnectionGUID: k1XooDrIT7ulPPQovBvHag==
X-CSE-MsgGUID: 1RYOgQs3SRito44MP8EtaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="73999801"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="73999801"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 05:01:00 -0700
X-CSE-ConnectionGUID: NoD6k/gyQOe3cPhTP00lSg==
X-CSE-MsgGUID: 64DLeVOtTlKp1G5d6B2HdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136987776"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 05:01:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 05:00:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 05:00:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 05:00:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TsMpzDFajsJ7JAaSMDm2qM2QCR8jQFVwx6kMgMi8W0gw5K5AUxthNgzxaSJr9dCtYDng6d11z9ih0UhlT6Ta12FTri/8FnqerBsEJUyEdIStXVxvnZcdks9fiHTkr5SElW+cPMajYOn7AfRoirDDsZ/oFvDhgJZmRbVLgtvXrIEdW9dH2S2gXFZrjiTdAuYXWiwiG9KVwp6MJMIP/xoXON20g1zeXEdW5fSzwcBzZ9pUy8zk4ZgvPj4w0bDZAXujJgKw7TtPDTkdAXIVZQbUkQHEp7qFelbnG64wqn5SUK2zK/5AHNNQudOmqDzETfV7gQXutVXASzzHe/9hzJoOPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rELPg5s2JB0J1J6c8F+BluaJZ5FjDXbsc+Tk+oYZOrk=;
 b=pTruVJs4khgKW8pSysxUN8r6qP3aQTklbJ0IzNLFDfjjKqvR4tSBLhX/5/p6FlPmuf37G/X3hBcy4uezuRj/OMbtq4ial09Ykrl0Y4nkOtnMUvG0tew7/NKcNztwpphkIi2VDCQeAgxOaX7eLoboLmGlWex8F5QLvWLuKQDtVgHvtPXgRucutk0tpmRuQh0wuK5R4e3HOQZAh91C67x9g5dJJMQtbxsVCSJ6b5lhqA9rIoPvP6jmsiZGmiEkPjQ3RzsMApC7D7nowlEAHRCQ+5PU8DwwNMDNZLZKAIkHCSphxdS/ah1qL9an7iMtcqpYSfqJVVWHuzpBitSjKJE0Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ0PR11MB6670.namprd11.prod.outlook.com (2603:10b6:a03:44a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Fri, 9 May
 2025 12:00:14 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.8722.021; Fri, 9 May 2025
 12:00:14 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix LACP bonds without
 SRIOV environment
Thread-Index: AQHbuHSWqcnZPFgiN0WnuHIQTkr4NLPKQuBw
Date: Fri, 9 May 2025 12:00:14 +0000
Message-ID: <PH0PR11MB5013C7058D93C5ADA7BE92AB968AA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250428193339.1692360-1-david.m.ertman@intel.com>
In-Reply-To: <20250428193339.1692360-1-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ0PR11MB6670:EE_
x-ms-office365-filtering-correlation-id: 2a22c0dc-23ea-4611-9b75-08dd8ef10edf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kxIYQbvVJ3G4oKVRFfX2MYKdJajXB9m1ulKkCiE3Yk8TKROAtyiP/OtQ+3W6?=
 =?us-ascii?Q?CuSPie7gyur5RE7safMOE/jvnPQK9VH8TIUhzbHBiWjdnGbaobDSyLU1mW+j?=
 =?us-ascii?Q?ChYTF7X73sibhgx2iqeOkedvwx0i9GkOLU4s9LARU10czUvgQj6WFenS5wx1?=
 =?us-ascii?Q?kO0EGpowJrl3pnh0ehT3m7EFZBkc3lanyQ8miWfLAYcNi9zTIYPQjWQUQ3aH?=
 =?us-ascii?Q?9g6XgNcpr9u7q8qb49MOWjDEWpIa/HrevdhssHPabMzLecZEwWOX01lE0o2Y?=
 =?us-ascii?Q?PNRObxJUdUYROqzwxODC7yZtx5mrA/1R8Z1/C8J6/HlvIT10uORR5O8y1WNV?=
 =?us-ascii?Q?grynF9aTzJcjUHieD6r8eC9D9XZoniN02bkneubsVdPBpL3Ibm8W6yI5jll3?=
 =?us-ascii?Q?vO4osikvtaaw7OZnX/kIzqnX+Xht4yu9bqfXkptOH/Dn7uDP8X7Qbp3JITeG?=
 =?us-ascii?Q?1kpEvxf/Iuv4KXYFDTnEfws9YqwzfgElGTRZHHRgQx7nDqIQFkjRmYcj51k2?=
 =?us-ascii?Q?MaBnBQZ5Gapu1PgSCj/zQOzOTNBDowgOMr/QzG0pgcuAI//kum6S6rjOcn9q?=
 =?us-ascii?Q?OOMwQZTLSxTTRMvfo4QZZih1cKzyRA0SyGfQ14lTEMfnNYy2dk5SC0P09JPW?=
 =?us-ascii?Q?pLJswsHRJhlX67PHHBKpd9g8AWNDHV0W5QsIHX2EfRtlw5TDBEYxa5U6LfiC?=
 =?us-ascii?Q?/A7pGcKm2X4ViHSlhwP3itJBdYJtQHqIPv3Oklt15xMXYdvbnRXBFvLGR5a1?=
 =?us-ascii?Q?GFEAHiHeahKg7WwUm/+Hx43rmV2ZYuWFg+163nL77vwqeMkM2+JzqB14pBYQ?=
 =?us-ascii?Q?q3pejZZdkgqW6T9Tdv0NRY8aR0sUe3e9gyCM3aoRA7N1B/BhfuqmNiFz0mXt?=
 =?us-ascii?Q?S8CaetSzCr83mMSnmToD8P6VqTL/u9pY4uqVsGM9CogBeZM6JVyOWAMUhwyU?=
 =?us-ascii?Q?qiSrzRWJVCp3LAAkvszZ4hkeCayeFL98LFr5TolXwV7KjzWMXtk5kNiOxuPH?=
 =?us-ascii?Q?BmT528PEYzRHe2q8ThlAgeJq3GtoH6fCJQ5DgB0cvGdl5RZ/D/q8nHR1TMor?=
 =?us-ascii?Q?Psns75uxud9IZ7vFtUZ3JjRJdloJLqWkJxXpL2CcmWjvMDop35syGiMEhSrG?=
 =?us-ascii?Q?rHPQELNS/O8/PxFZToP4mTx42POQ/tRZlB97IzzxsDny/IJ7LVo58s34owcO?=
 =?us-ascii?Q?RYW55ZVvd0fq+5QjlesYn9Rhj7EIg1PLeMF+6eV5gQrGPqmO0b8pE+jdmjp/?=
 =?us-ascii?Q?kJSal+vgOPSjtDHueNIvGxup1fqz6RdAWXaGDd52n457kZVKZOUcGcuN6rwE?=
 =?us-ascii?Q?CyGbzrL2UMLhigBpuHX2yGp3CFyGVxoKLMv36COn7aCS6cbkvT00XkGxHgjZ?=
 =?us-ascii?Q?iIIkQzhENZYDEckSV75ON24dYKp9jy/S5c21PLlfecb9YJpt0cY1z2d/EGPe?=
 =?us-ascii?Q?tQlbTCxoatVB/W189YStFMFL/86dG2IqUiAKtufShc20glNd16Cb7pUwTIq8?=
 =?us-ascii?Q?Rsx45vXaaYn7Sl0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WEC3KyC2sOW3bVcILHOfBRr8gk6mGt4llnTQYCvffj7HkGxk9FhEwUEmp7II?=
 =?us-ascii?Q?q6jWLYb9rah2j26kE+d3jfnqPDXkCN7pKNmax0vl34I3cKxphCRX8QvSPEmc?=
 =?us-ascii?Q?DzuDLcX8ckv0MX4Wv7niKAY6mbNDBA1mu06hNQYKhTlPodY6OPuAuvdoBIz5?=
 =?us-ascii?Q?Gj+F5cx2RJhV0SKgNFbyv4XAX61jmCOrwAhbb2EyqD+YJ2B/J/Pl7qRgvotQ?=
 =?us-ascii?Q?gGeJksgoTZweNO2sgy3BNSz0yZz9jQJhei0qyjymejkAvWIWHgYD22QA/mtl?=
 =?us-ascii?Q?+ZIihl4ofHmTr5MZbCKXJnPrE4wXDRfuW+vgA5iUYmxgH4C1kznG4YBjfUI+?=
 =?us-ascii?Q?KNCA0GiucjdF8G8AKjo5+opqucBcw3vfoGR9s6DhsN6Nr98KViiy8GqhHgPZ?=
 =?us-ascii?Q?8zkNBadjVNO8MmRcmNNzQrha6rL3oN6jG6ogqcC7P8M8hnD0K9kDUjlQXgs6?=
 =?us-ascii?Q?qGANbXAsPy6mzYgpGaXKizSXsCdNaNQ1a1QqRJex6/m4M1YQHRCfjGGxwSIg?=
 =?us-ascii?Q?tkRTx1j+zZPL9KbGGXjxTBC+9CyG/pPROuUXOvOq1VqUpaHhKZ3JDcHZzQXk?=
 =?us-ascii?Q?N73DaUoPaduTPt2tVE8GjB4CxrjXwSMpO/wyTJvnC7GQGPXBAF6HULBsW1dG?=
 =?us-ascii?Q?LNp6yO/yXYpthoVysjECWma71pM7bzJ4r0ip6mTnn8BTEM+vmTF7DfBAd9HC?=
 =?us-ascii?Q?22QYvnx4Sus/tchBemSfrM87nTH+9JsahoPYRnJ8KIxUgWH8qEcnaGAWKTQh?=
 =?us-ascii?Q?B4wZ1EPF7ohnF/LfVE6aVdS7S1khtWA3a/FRmBKNjLGHyH5kLgUTfYL/Z3M3?=
 =?us-ascii?Q?kIa3dHNL4BbFKyJAY2Zk8omplkSKWanpoi8QtG278WqzY0hf7giD7+PE2Jhv?=
 =?us-ascii?Q?QzS9M1T3Bqd5KAGrILNQkjr/SwNhjIJRj3fmsSpVDZcBoB3dkNaXRA69/UD3?=
 =?us-ascii?Q?LIske2wMSYa2N6uLGiSZKy7Z5IhNvlz9OJtyRzJQdj2aYgbUhREex9JNqcc5?=
 =?us-ascii?Q?eP+O2Mtre3Gw7QBDfviKUN0g1JShTC7OKqep69JuJLLmb+3z1ABTPkL2XDfW?=
 =?us-ascii?Q?eCvXl1bbDctyOM0Rao/GLEDoVJSvAPFbzmVfHKgNhYl4lT+F7SojQCrGiQbt?=
 =?us-ascii?Q?XT8pzf1lRnAs+586wPmYfvEimOZz9G6gAEiUcQEbiwVYbochHaD0FLBST32o?=
 =?us-ascii?Q?PmgmU0y18EEKTTbcPt9Y8S6jWfMnrQ+GIeZgQieuqn3FGH44xhW3P+IIry1r?=
 =?us-ascii?Q?nP0KR4aitV1qUSlEnc4wx8BxgNaeR1yc1EZcl7I5QOOCkrIq44VTxqTsLPlA?=
 =?us-ascii?Q?qNvuhkugNi2Qjd06xLNr3XoD38DVvxnSTVW2FjPQjOtCYF6yucV4VNmIcVlH?=
 =?us-ascii?Q?x9GDZisl/9Ye3rDidKhqPyDe6ySTmDh4qoBEnaJu1tO1DLHthowpBRzvZxpZ?=
 =?us-ascii?Q?v1wgAtaGmHoZoqZaVQ6mOyr4Z8mCH5wtgZd90ZxLPFNQMA5Wiad5u6Kuw6Gu?=
 =?us-ascii?Q?R9+9xX2cSkguOHJ+BRdLAYpLUgp29gDgbjmNLPlR2Kj98xSNPGvnBlnrYcOe?=
 =?us-ascii?Q?e+aZkM/TI3rFXTXh9XlXBQvyOq4vCKGy1/F/518714n0EcTPiOsykHkpldl0?=
 =?us-ascii?Q?9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a22c0dc-23ea-4611-9b75-08dd8ef10edf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2025 12:00:14.3901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GqK4DNKv1YpPOJLRhblU7y2AjiMAikp5hFi4R+dpUmiyGDYmI5aZ3CMYGT7h/Umk41IkyktdJrxDnk+uUcs7nrpXn065REenKRz9TNbJywo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6670
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746792060; x=1778328060;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mdFw8/X5i3yWh6twNM51RLV/JQEt5t7U1bk4ofSZfD4=;
 b=NwW1HoGRr64ftBcmGsJyHpX3Oh0IDYFhU4UrxVE0p9BDiTyOgNdgODWJ
 3VrOJhTYtOD4ZviNFIiVZvOYQ0EmdjWz1yeiXJo6TSR7h/SfRU6SDIaXD
 A87XnAp+OGdZObdPneKy7jxhOtyJmwYMaAFvyHtSr0yBn+rimCDF/6008
 oPfWgF/FKejAgJjzaRJquJbuwq65qWUaI1ajTfrZbPOHpvuKJKWB9/XjX
 cNIo5F/ienG+U+Nc7FbEBJkBQjmAs3Xw5LLVsUUL726CPoZjimq6E5war
 feZ/XLnGpldot68jwiKGlswqHgeo+gBNgOMBJglgakOebk2fLeYpqbXaK
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NwW1HoGR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix LACP bonds without
 SRIOV environment
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Tuesday, April 29, 2025 1:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix LACP bonds without SR=
IOV
> environment
>=20
> If an aggregate has the following conditions:
> - The SRIOV LAG DDP package has been enabled
> - The bond is in 802.3ad LACP mode
> - The bond is disqualified from supporting SRIOV VF LAG
> - Both interfaces were added simultaneously to the bond (same command)
>=20
> Then there is a chance that the two interfaces will be assigned different=
 LACP
> Aggregator ID's.  This will cause a failure of the LACP control over the =
bond.
>=20
> To fix this, we can detect if the primary interface for the bond (as defi=
ned by
> the driver) is not in switchdev mode, and exit the setup flow if so.
>=20
> Reproduction steps:
>=20
> %> ip link add bond0 type bond mode 802.3ad miimon 100 %> ip link set
> bond0 up %> ifenslave bond0 eth0 eth1 %> cat /proc/net/bonding/bond0 |
> grep Agg
>=20
> Check for Aggregator IDs that differ.
>=20
> Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event
> handler")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
