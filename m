Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F50496E202
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 20:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9510E812B8;
	Thu,  5 Sep 2024 18:30:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id klBPJ1ejZ1-B; Thu,  5 Sep 2024 18:30:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF6BB811E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725561003;
	bh=kLDMXNMMmdoaPVnO4WPC24zhrvO+HhVn8vwqpdhcQFo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Gkz1V/rWrdYizUaEBSPJwERLVCsQVCNV5IS7QYwQDZfx6z48YUO+oQCYhmMmGmjh
	 MrPzlEUZfK4Oa6kNjSuOSmKTwu23hXZ0a4dnxGW+WfF4AyN1GznD5oktTrw/6e1D84
	 H2e4Sk0kxLKaGkmWuoZergAqDeKFa+Euj1KcEwLNIGz5+m66ooGWiKfwubFVPbp8+F
	 38AttJxt6LPVcpmDnMVqDisoRonPsTtySE8po+3iqES483azWH+8wI2H+/hz+5UQmT
	 kbJgsPzIm3yk+KdiaLAji78gjhE11HJSNZ368q4fjm6NaARBc2JLPVfGUdGYGUXH0a
	 hcEOH7v0Z/Mlw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF6BB811E7;
	Thu,  5 Sep 2024 18:30:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1561BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 18:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8624C40477
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 18:30:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C8YcUYTKB6r1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 18:29:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B488440114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B488440114
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B488440114
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 18:29:58 +0000 (UTC)
X-CSE-ConnectionGUID: uKY447RfRmG2J+Zt3+2Zzg==
X-CSE-MsgGUID: HbiamlmVQS+AxYMQ/53Qvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="41780308"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="41780308"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:29:58 -0700
X-CSE-ConnectionGUID: 9gcrGgTkRIa+R9Csi+kfQQ==
X-CSE-MsgGUID: /q1JclHzRB6K5kHyRECrlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="65362097"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 11:29:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 11:29:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 11:29:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 11:29:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wkEpkS0b1iAPmNWh3Q8M44/n9JmOVrPTTCgTAZngKIddW9i8sp8NKXPRAouVHNWmRewSKPwW62RFQIRmXUy6OIyXAEn9FaQXd4udZKiCcVCgF5PgZkKogKyw1zS36qP0bgLdyGV68XgxKkKCk6o9fPSiVOhrPotgsMQ5qRveqmxyybEqxN6wlERIL4AWXWxq5euoxhZPjtESD0ULCiwjSIHlRi/ox3HbquIiCOo5jJbtAL9p2ri/V2h1U3hGOZm2V0HjoAAwaJpXGoaf6AQgoqerVMdPOE8PiDWNs+s4P8/x8AOBlQOPXNLN1T8MdTk5DWCk9zi0zMhGLB7UUnIgvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kLDMXNMMmdoaPVnO4WPC24zhrvO+HhVn8vwqpdhcQFo=;
 b=HnmDeNLotpOfdCcKma/qLxopSIE+nLTPjxN4iLYXdUydeT9F6+mNLfT/A371NN5pz8tYfrNWoy5FIphrO6o+IWbQK724l15s/UjYQm7N8hegjHEgc0BthEAy1VhZrgZYkw+yo4pKfpiYY1RFzSILyZeeg7B+odqgT5kHvIKZw7eR7AkulMw65HV77qmmdq9vaPpkxGKArtIqcXZsvxpCYbmD8RDEP9Osz+komf6/GxNO1kX7504cYdKfoTNvDcpAOtJ+k3eN35jgIYEbfZu7CZ0/5AMZcj8KBbUONfyOF3r+TFAWUB35SjTOcxczGUj857d+ratfO6XjBoV22DlLbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by SJ0PR11MB5184.namprd11.prod.outlook.com (2603:10b6:a03:2d5::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 18:29:48 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73%7]) with mapi id 15.20.7918.020; Thu, 5 Sep 2024
 18:29:48 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: mschmidt <mschmidt@redhat.com>, "Drewek, Wojciech"
 <wojciech.drewek@intel.com>, "Szycik, Marcin" <marcin.szycik@intel.com>,
 "Miskell, Timothy" <timothy.miskell@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Daniel Machon <daniel.machon@microchip.com>
Thread-Topic: [PATCH iwl-net v2] ice: fix VSI lists confusion when adding VLANs
Thread-Index: AQHa/q5wn6mOZl0FEU+lVuy65eBJurJJhSbw
Date: Thu, 5 Sep 2024 18:29:47 +0000
Message-ID: <IA1PR11MB6194461AB832D0F17B044AA2DD9D2@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20240904093924.24368-1-mschmidt@redhat.com>
In-Reply-To: <20240904093924.24368-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|SJ0PR11MB5184:EE_
x-ms-office365-filtering-correlation-id: 991c9228-0056-4461-8ecc-08dccdd8b900
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gXAYqbQxQpDo4p9JnL7EaLX9/aITqamOM1RcZWwDqN8t1mc7FKdi9NPx8qTP?=
 =?us-ascii?Q?5zNUUjJHxCUkTS6689y+LVW22kzDY8nFIE9GZqdcukbE1Coq7kJTQmvwELsm?=
 =?us-ascii?Q?+v7PdrvUSXC5J41/upnbBTppKgk5wkyUI5OsGvqfg9m8rCyjXLt/a09JCmgP?=
 =?us-ascii?Q?8iCtJeKcPMQ25AYWGcb7SQmqoVs0UXKIt9lpcnQt43xaTKUTOp/EJdyKSQ9h?=
 =?us-ascii?Q?EJ5sR+jk4e6e7E4K+RsU6vVHnfm5tiTikCmCcYxXuJMF+6+pTJJ+ObAb/C+X?=
 =?us-ascii?Q?Ei+ZLTs35TFstv/pCOCBwHpYqGQuQ0pn97wi3Nb9UdyFha+23n3MTKG5Q9q4?=
 =?us-ascii?Q?+Ow+q5tSHpKpNji8+937I760EFUUENtzFOIDmNcPwmDEmsE887i2Um8VPtvB?=
 =?us-ascii?Q?izgbY4XrsXfgrurIaJbbDfkHyaWNtHXbnIKcL4qPBOfCIIKm7RpJdUFEhEln?=
 =?us-ascii?Q?5QnLxeJNq1dwFyuU0W9PKUBdARNthfHmqwpKh6FJ5vCr6qrPH+czAC5cZqRr?=
 =?us-ascii?Q?kJutLlo9E/u9qDgZ3ZSOtexgBHdtOUsNINFwkEzOPREjRm9sIJrpSBvU8AGh?=
 =?us-ascii?Q?BVQrqSzPaZ+1vj/Fap0jr8srw1uz80FGlt5bJLryKYSa0VV0khoe68h+jBaS?=
 =?us-ascii?Q?TZmlga2Vz8hulPZq1P/KkArzsIGMuGBUQ+CtIOSTq2uuxlchSB9BsmjTzTwE?=
 =?us-ascii?Q?na92rOAJNtjb5M2JUnZ510Ska6qNu3iexk8udsRk3NV6/xkx+sQzLSqc7F3i?=
 =?us-ascii?Q?cpnNTlDcpard/23NaCcIa5M7AufHnaKWrVkJT19V+Y3jqDsNgYbeNAWj26yr?=
 =?us-ascii?Q?GpDjVRs1z/IZNQ3RUuTeqmK781yOU6wgzIb9UrmEIqTua+JrFY2E7SYpnrem?=
 =?us-ascii?Q?VKjvQQSqd862ZESgEYlw8aPxQGfQXrG6bt+eVzUBIY6cvYq/VRQ8G3WmHOym?=
 =?us-ascii?Q?7hHkEYsInO4UvP5P8bYPKwjhPH2aZFDdn9OUvNQaUwKc1fL1kZoBOA1quDUi?=
 =?us-ascii?Q?Qs8W5EufXQvwBAbKpBbrZ+D6J/uzcddT1ORzwCNyD6iaIXPSVsrbBfHf7fZh?=
 =?us-ascii?Q?/wtVbeJ5Unk0AwTdcTcxq1FgLAVqcaoEggnfTbReBluhYa3Ocd3591rsnieQ?=
 =?us-ascii?Q?ADNNc/CAa4co85irHpK15e8O11j4qqQjG1Yg0uqSE/W8YlwGcDJjbynAxObk?=
 =?us-ascii?Q?+9tpSG0xvHaCUVt4ioY1YoCvptwwbSlkjcBQVWH5D6q6tts+swW3QzFDSAiX?=
 =?us-ascii?Q?38O9+gNnnZ0yNdLHW6Kj01l3xWdhSGgJFAxoDEK+AMJdvUwUxgJxx1y0OR77?=
 =?us-ascii?Q?LnMmcCiDKRtSNR804aMyMPBjmaU7eaY9mI4fIY38gy+aIZoMaTW7nlp8AtbL?=
 =?us-ascii?Q?wWo3NRMGqADBXajIYFcf5Is0SSnWnjM8wizj2KZLS5o8huvWIeJ7V/Vj0gat?=
 =?us-ascii?Q?pz8vcvuy3aYBrJyzWqk9PRkZuAXfhQyj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?flEGVxdqfW3NtwQV7fJG1LZ8dUS1ua2copCGomijShHNyfe6Yv2C8BTaPc0q?=
 =?us-ascii?Q?UoD39zEFRxfsiJ0yZFKWYuVXSRohnFQ0dr28K0vs3jMekkbl+qbIjXzz3kO9?=
 =?us-ascii?Q?Htm4dZ4HdmOS8TVU4dUngT8av5FphMTiLcYw6cGfdwyog/d2IYPocsbNRm7N?=
 =?us-ascii?Q?Y/JSlTPg3T5PK2NVfGyE5puoH8O0tIr901I4RJn0erAUU6AKzO5oaXYWwb7s?=
 =?us-ascii?Q?CnHA5jy8jwusImdobFtzGo8RS/1b7pH40sYXB5vBdmYgBPB+la1wiNiFPYhT?=
 =?us-ascii?Q?VUVE7fbTRbAJpI+l1PzdCHSLAADdLkbuDHOfYEdq/uzkqbNIVe+nNy172lPN?=
 =?us-ascii?Q?a/Ys9nJRfMsCeYI/xw7YzsDAmeX5xM2FWH6Cx0QSCXZfPcjWFtl3VRNLCLnT?=
 =?us-ascii?Q?mfxkP0r1PKrljxiCRA5dUz08F7Y7qLJ/o9GQYlRHxvmXjZoHIfJJs25ms+xY?=
 =?us-ascii?Q?CNvzCbrIxRH7VpWDEdFkASfKVXpgtAh2rVBg1amB4TfAYUJoSTFBFgeDqMOw?=
 =?us-ascii?Q?1tliQnNge5YVXuLyClMwDx4rd4ZmSI1/2IEB4hSf1n+NJ8U2Wrd5fbewIguv?=
 =?us-ascii?Q?t1pWSuu4a2io0UAfihhbIU7lVPSHeUnkKGBYhMQZfLfk8oyclQd6sPPkgLj3?=
 =?us-ascii?Q?2MnePS9/mglttziKQfzlS7vuAOGhbfaWs9b2zP1vDPK6pnPU84JfdFEApD90?=
 =?us-ascii?Q?1K6Ny/sMQk4B9d5B2OwvL71QLmdVhl+GDfkHHmUWrMIleMQWpr26ZAdQNPxh?=
 =?us-ascii?Q?TEAtysgfEbK0ZaMSoy/jtCXkbxczKLVLZIS8uzgpVD6Ra7J9rrEbez1c+ydr?=
 =?us-ascii?Q?uxQcRqfJT2lPDUdqQDC5Vj90pEgm3uEDMUZktlUGbf5ZpfC+fTH+mjRYPOtO?=
 =?us-ascii?Q?9pJ0RQ1JDTyWMgwieX8AIrqYfFXwT2jjQJ/6SNayZtOF2Gdy/C0ABSaVdYRO?=
 =?us-ascii?Q?HQ/1jZa/+XjGua+lGCyvHHghi7+gqagpOfYhcI2TxqkwID5OdZI6V2GcbGK6?=
 =?us-ascii?Q?jpF7Ah3pCkXqTx4XBLIavBMnsPldX8bOtZFWIj9x7GWObR0q1E7ZozV9nqKW?=
 =?us-ascii?Q?Omk6L2HNsCD6jAadgTF9AfVOo7kIyBpZf1hI8CD8UGNZDg8Z0mn3k3AQV1y9?=
 =?us-ascii?Q?RHo0tal8HLuivsjwKAPRegOaf19ctpP6yxul5nQjCLec1yHeLv1lds9/bUta?=
 =?us-ascii?Q?ov5MOCNiuGmUIU/wQWpTQ/rhTY5uH8SDDx+ZgPu/Uh/FxmHmK1ry2CnjgM/Z?=
 =?us-ascii?Q?keOKENXGuVDXWdclUYSOqlGm8PaYY49VimwoZsnqSKWrqSEcBi8uVaItiOzU?=
 =?us-ascii?Q?yhP9mi7OrtMZ2ZcPQUNboFk71ebT4QS3VOJJVBwwE/bPVtsoeJpEXrmhpS13?=
 =?us-ascii?Q?gfEXy+e2CG0yDOMu7bCg/dopc5gaptyCbu2fqUupMkUUIOYbb3HoT3nmSE0U?=
 =?us-ascii?Q?eQzctnhJwsGrqivURf62HFVah9znEy2zQ+IwVrJAsfc/L8k3OsndYjK4ctnM?=
 =?us-ascii?Q?UfMFOiCzAAU3SXQ9ZGLqXx7k8Qby55k41dyfaR2drA3bKnPUdc/G7GCoUUPA?=
 =?us-ascii?Q?+RWDoZk78Kd+tU0gjeXdnOD09U3eH8GLy+hn1MUW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 991c9228-0056-4461-8ecc-08dccdd8b900
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2024 18:29:47.9633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5O3MH+sYdj8c+IxJn7Zpq/7RLYWMWQjx3GgP7B37ezEs5v8B0edMSP8uIwOXqsUauHYYyApda9hh6iKYCGhlihH/whmehmnC+T47ULMRmZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725560999; x=1757096999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bz+xf40vS8RhxF0J8BZZY7eNtfyPxhpxHICiZrjpYcw=;
 b=Ae83WSdk8owG4MS2UmMdIFu9fLC62qZXtLCnwukQmuk+30me5gpa3mNK
 gXWqu8Ed0JCIVRnt5FuHGYlwsXIeifeIOOJc5j87IvotGP+rEiYZC2m35
 Ux0Awc6bgnwCaP8N0QgJNxVBzlVAXqxaWvNO7bUCW+HYp1nmoxg11ESeC
 SMlWIXdH1fFAAA9RMwBPLL2kaQWAEhNdBxEHwnM/ryBmemL8rZ9KFv28t
 SNXg2fHQws2R7LT84GY8g7LCeR9NdpBUT7i0+3o/EYnO+4w3qtKnjb+X5
 pY/bFOSfPnIYX5fByE2YAHcrAXPOb4APv2czmkrVz7nut5h12pcvjrVXO
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ae83WSdk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix VSI lists
 confusion when adding VLANs
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Wednesday, September 4, 2024 2:39 AM
> To: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; Miskell, Timothy <timothy.miskell@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>; Er=
ic
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Ertman, David M <david.m.ertman@intel.com>;
> Daniel Machon <daniel.machon@microchip.com>
> Cc: poros <poros@redhat.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [PATCH iwl-net v2] ice: fix VSI lists confusion when adding VLAN=
s
>=20
> The description of function ice_find_vsi_list_entry says:
>   Search VSI list map with VSI count 1
>=20
> However, since the blamed commit (see Fixes below), the function no
> longer checks vsi_count. This causes a problem in ice_add_vlan_internal,
> where the decision to share VSI lists between filter rules relies on the
> vsi_count of the found existing VSI list being 1.
>=20
> The reproducing steps:
> 1. Have a PF and two VFs.
>    There will be a filter rule for VLAN 0, referring to a VSI list
>    containing VSIs: 0 (PF), 2 (VF#0), 3 (VF#1).
> 2. Add VLAN 1234 to VF#0.
>    ice will make the wrong decision to share the VSI list with the new
>    rule. The wrong behavior may not be immediately apparent, but it can
>    be observed with debug prints.
> 3. Add VLAN 1234 to VF#1.
>    ice will unshare the VSI list for the VLAN 1234 rule. Due to the
>    earlier bad decision, the newly created VSI list will contain
>    VSIs 0 (PF) and 3 (VF#1), instead of expected 2 (VF#0) and 3 (VF#1).
> 4. Try pinging a network peer over the VLAN interface on VF#0.
>    This fails.
>=20
> Reproducer script at:
> https://gitlab.com/mschmidt2/repro/-/blob/master/RHEL-46814/test-vlan-vsi=
-
> list-confusion.sh
> Commented debug trace:
> https://gitlab.com/mschmidt2/repro/-/blob/master/RHEL-46814/ice-vlan-vsi-
> lists-debug.txt
> Patch adding the debug prints:
> https://gitlab.com/mschmidt2/linux/-
> /commit/f8a8814623944a45091a77c6094c40bfe726bfdb
> (Unsafe, by the way. Lacks rule_lock when dumping in ice_remove_vlan.)
>=20
> Michal Swiatkowski added to the explanation that the bug is caused by
> reusing a VSI list created for VLAN 0. All created VFs' VSIs are added
> to VLAN 0 filter. When a non-zero VLAN is created on a VF which is alread=
y
> in VLAN 0 (normal case), the VSI list from VLAN 0 is reused.
> It leads to a problem because all VFs (VSIs to be specific) that are
> subscribed to VLAN 0 will now receive a new VLAN tag traffic. This is
> one bug, another is the bug described above. Removing filters from
> one VF will remove VLAN filter from the previous VF. It happens a VF is
> reset. Example:
> - creation of 3 VFs
> - we have VSI list (used for VLAN 0) [0 (pf), 2 (vf1), 3 (vf2), 4 (vf3)]
> - we are adding VLAN 100 on VF1, we are reusing the previous list
>   because 2 is there
> - VLAN traffic works fine, but VLAN 100 tagged traffic can be received
>   on all VSIs from the list (for example broadcast or unicast)
> - trust is turning on on VF2, VF2 is resetting, all filters from VF2 are
>   removed; the VLAN 100 filter is also removed because 3 is on the list
> - VLAN traffic to VF1 isn't working anymore, there is a need to recreate
>   VLAN interface to readd VLAN filter
>=20
> One thing I'm not certain about is the implications for the LAG feature,
> which is another caller of ice_find_vsi_list_entry. I don't have a
> LAG-capable card at hand to test.
>=20
> Fixes: 23ccae5ce15f ("ice: changes to the interface with the HW and FW fo=
r
> SRIOV_VF+LAG")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
> v2: Corrected the Fixes commit ID (the ID in v1 was of a centos-stream-9
>     backport accidentally).
>     Added the extended explanation from Michal Swiatkowski.
>     Fixed some typos.
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
> b/drivers/net/ethernet/intel/ice/ice_switch.c
> index fe8847184cb1..4e6e7af962bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3264,7 +3264,7 @@ ice_find_vsi_list_entry(struct ice_hw *hw, u8
> recp_id, u16 vsi_handle,
>=20
>  	list_head =3D &sw->recp_list[recp_id].filt_rules;
>  	list_for_each_entry(list_itr, list_head, list_entry) {
> -		if (list_itr->vsi_list_info) {
> +		if (list_itr->vsi_count =3D=3D 1 && list_itr->vsi_list_info) {
>  			map_info =3D list_itr->vsi_list_info;
>  			if (test_bit(vsi_handle, map_info->vsi_map)) {
>  				*vsi_list_id =3D map_info->vsi_list_id;
> --
> 2.45.2

I did a couple of quick tests, and it does not look like this patch interfe=
res
with the creation/cleanup of prune lists for the LAG feature.  So, I don't
see a problem with this patch.  Thanks for catching this!

DaveE

Reviewed-by: Dave Ertman <David.m.ertman@intel.com>
