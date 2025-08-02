Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A93E7B18B1A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 09:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60AA3607CC;
	Sat,  2 Aug 2025 07:37:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H1syxfWxggg8; Sat,  2 Aug 2025 07:37:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B22BE607CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754120267;
	bh=RBzPHvZaYsdJnw6JcHOdMrPd5tDfT++eGRDlTJhsNXo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=27ub7xfAB547v55z6V6EY3EM9CCnYaiCeot+5n+c8VbN6nlS9Z2UrhpDsuJwwWuHZ
	 CIZly3S4b1qh51ngMf0BCCXXCjp47RzeVwdVmK8mVU1+MRN4dZbRN2TyDyycFu9B6d
	 x5/E0jao8GSF5C/Sf//dtzRfnvQKXJYgGZnabkDQMUsh3aOEV/2RJGcWmSE5Vdzf1W
	 TS7i2aTRFfaNsUU7NV0l+8mlGSi68LOwDoJ6I4RhtW7hw5CvAoHO6YUfu4rbOx97NV
	 ld2P8bk7GcAv6MIMcW7/tpJCMSEJLFMrxXgTJX7QBJXrZ9SXp0lAMR+tgS4QM76C00
	 QbFOJXj6QKMhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B22BE607CD;
	Sat,  2 Aug 2025 07:37:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E3D4160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34412838B2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:37:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A0h8Jw6V53iH for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 07:37:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7B77183927
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B77183927
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B77183927
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:37:45 +0000 (UTC)
X-CSE-ConnectionGUID: qBlULSR2RXGOPWNkdjrgLg==
X-CSE-MsgGUID: BDIyN9++SXK0QLI7Xyd09g==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67827114"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="67827114"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:37:45 -0700
X-CSE-ConnectionGUID: RNTR0pk2TUOaSqgNDm5rzg==
X-CSE-MsgGUID: +RGA3+7HTQaHB7l1rHr9EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="167933009"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:37:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:37:44 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sat, 2 Aug 2025 00:37:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sat, 2 Aug 2025 00:37:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uoL0W2v7Alj/+nkiwR682eDeAZO1YpPSmoc592mlOhJM5CfKk1w+QrMkihT9AqYqW3z2n/o8z1HYSRF/K2WnZ2piySULkHnV3ue8amGn8Q3SnVlUIJeg3vTPjcowYt/6F+eIHaVenKirhS8LFQ264CswvA8TyIktDl8xQpKuWR53wd1jOMRplZgt/zKnxmRiRvWAdkdRggay5X/W65h2e6HfXGXYGhkvp/rsDAfq7leLBHur3du03hPIf/LZhrJ/YXCMJmdtNClrUBa9nXdg9oKfYaYC6ezodiLNj7rDrYMKpLqcvaAmphq1zFNBIGAhEk4x2+8cknYrNS2SExoYqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RBzPHvZaYsdJnw6JcHOdMrPd5tDfT++eGRDlTJhsNXo=;
 b=HaWnSCsTdOozjufC9RwXWcCOxm4voyPUijLVAfLjaxSkTtTT6K8g3iVzePw4Cuv6DAtUJPfRm73X75o++Jyy55hVvXo6Dbwsj4OZA+Hz/ef+8ESR2czMBagsGhGJJAf+YvPVin6AtOsk/5O4NEhlgrG1QbynK8C28NDiMAFM/ajbWcPvFUs9/fYrhrqtCXkXwncjco/aPjchw+H3d+Zk52PoQrBO3mc9VyBh+KP5FsJkW44Zatzlnh9rqLo0TFf80Mr/Su6e20vI/L9SC1bzcUSGMRoLUd+WdROCnKK7MFdWnErTEdhEpThEi+PtDe4asu5b40ETO7+/xBkibyNygg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH3PPF1AF044E07.namprd11.prod.outlook.com (2603:10b6:518:1::d0c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Sat, 2 Aug
 2025 07:37:37 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8989.015; Sat, 2 Aug 2025
 07:37:37 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: Marcin Szycik <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 8/8] [PATCH iwl-next v3
 8/8] ice: Implement support for SRIOV VFs across
Thread-Index: AQHb3vFevpHpkRZYLUKYdUseFn2durRPQpIQ
Date: Sat, 2 Aug 2025 07:37:37 +0000
Message-ID: <PH0PR11MB5013C36595EE9F30EB1A2C3C9621A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
 <20250616110323.788970-9-david.m.ertman@intel.com>
In-Reply-To: <20250616110323.788970-9-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH3PPF1AF044E07:EE_
x-ms-office365-filtering-correlation-id: 45ad09b2-acaf-499f-a2ee-08ddd19773e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ekmo7eN+dx21oIduMqAFdx3r7psBP2UcpIroQNUrSk5kdi94bEfR7MA3Ve7n?=
 =?us-ascii?Q?Nd6pnOegz8s2cc7dfnhTvfL9DBwTyIsI/3STHd4e0i6sJDxBLt8d4g1wnlEf?=
 =?us-ascii?Q?OlxOXod/Keb4OIdJFfUxNW2oWhu1+RTLygMPo0sIRwEpfZn+TY7mVqI/Qa8+?=
 =?us-ascii?Q?jvozq2mSsVGberiHt2Q5OXEGPfB1traymz3dKnvGOtdPFn4MWLgDTu53T8Fj?=
 =?us-ascii?Q?DlbzJoMaTlrhpIN6YLk3xQ5bSRFJNpZ4Z/EosWfN4JQw14IJlqxsg+iYMK3T?=
 =?us-ascii?Q?5AvvByqpxYaSZggSwlZ4PMuLrNg98faFEVqLWQskNXNsD0ESGWPO5xahdTy6?=
 =?us-ascii?Q?IrmhZM+NHhfZBjIPTjC++cn7r3ReL58SKwS4IsMQGF17YSx5qt0jvEN+MPvu?=
 =?us-ascii?Q?Y9S4GjuUGij4eZe3cCJOMIk7ceaizEngpM38KbRabmo8/8i0KpirsZaLAPnP?=
 =?us-ascii?Q?0LsRiLy9kN05mWslgy+hdYT+Lp3YJtkqpX1z6uU6b5BJqftYPnnTS4+MPPEi?=
 =?us-ascii?Q?68cfPguLnXDlc3LHaw6sxzGjLoBIW8uuYaFE3XdTZkcH0kRRRYURro62etnM?=
 =?us-ascii?Q?a6+qZmRwZW/GHz9xQzIbIfw/KoF94peG8FYP8YVwQsz0aKKSDlA1+Zs8avTc?=
 =?us-ascii?Q?5Qxvowjegyl9Zu/8CpFWr854vTxSb62UCH1kGZX9jyCLCbxlVmEcloLixYq9?=
 =?us-ascii?Q?xPMOdHP9qe42vAHroOoqvpq9fLWcvuSld4eM+8NLrau/kCA/shoStfNRD9ip?=
 =?us-ascii?Q?R26ffz72eGAHWEJJxem2/5ZD6T/CyIub+bVxsM78nyfsWr1DPhcZYOT4yl6j?=
 =?us-ascii?Q?gaGs/zJu1F4gYDP5qav7zBOpNa7h1h23z2VEz7xuv1/kQhqoLcbFPq2cv/XQ?=
 =?us-ascii?Q?ut5+/Cz3WrXzs/TYHhnZTCpeKQc1j3W4AeCICCrK8g6qKs3z9Ap9AbcmUhIb?=
 =?us-ascii?Q?uT+jMjP4d2QbRkezC0C/ayrM6WQ6pY4lbnxq9xpPDC3nRgeoPHosMe+gGVkL?=
 =?us-ascii?Q?snKTZw9vqeOZeXXKKgU68F/ZwiuqnRhRyRw6PvY4DbOxre5jKsrYAhoCEmvE?=
 =?us-ascii?Q?V5ZwA6XUq+cyotIRt/+4EtcVz0XlPH2K2nSdiMkknwP8C8fxVh3f9XzZMfd+?=
 =?us-ascii?Q?5sgDppyscbgW9s9q2eHO8tmWDmak9DTKEAGao6fl31tKT5lMq9rCWk435/lt?=
 =?us-ascii?Q?bxRR7QvCg1JkbpVilU0wbH8j+DgqSD1tn4RM/QsG41TYcHwOW4H0zHfPTkNb?=
 =?us-ascii?Q?sCpJdEmzUzreFiDoqpw7qC8mB7y10qfJxSjFziYbl9Sj0dmaGzpY3VQXpY6X?=
 =?us-ascii?Q?UTbmLjuntc3xwFbmcSsBowZOeD48xFGornDtoJLpY+aVTQD7Sw1OzOaD/Ybp?=
 =?us-ascii?Q?isfD5CSF3gzI3G34LC8/kAnrzw1dh7f8yBeSMwencCqc0WtunkdKoK/9G8Gn?=
 =?us-ascii?Q?CGP1hGUaHxXgPZxNP+L8U71hVxbnNCKY53wsb7FDU8qq/qarnLxJSsMER0V0?=
 =?us-ascii?Q?qkfW6x9bQcbckYE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aP7UAiPCSxBAguFltlcs8PqayObcdZL9vuAkbxPD1mvtQUVncMuGfaBS+ajA?=
 =?us-ascii?Q?RSF1/pEKIFXeyPskDRdMPm6g+X5kKNYuIT0/Wms/LLfjA0uv7s2qEWBDXHIJ?=
 =?us-ascii?Q?T4lUAr+BAzYZm4ZsFNaEiCX00c+faQ0480uYKUf3w6XROf6FHeFxx09USmD6?=
 =?us-ascii?Q?zMWPecbgO8KiV0VUC6jYEC1oec+c0kCAj/eFHSbenlP4CMllwa+mhvZ1X9HS?=
 =?us-ascii?Q?ceXquxZc3zN4/dJce0Xdc2lS2VDGApj+kJgtTp08Rr7kthHEropYvACX5HK4?=
 =?us-ascii?Q?SWjnDYO3YqsgZ+r02QQZbdAj+1NE9cCsGxfj1Fu3UeiPRM0FkzLBC9nEQNGQ?=
 =?us-ascii?Q?tyUQKxSuQdERePDtU1iJw4q244ZAoVKPN8xzYON/v5lmO2iBJ2jq8gTIawpe?=
 =?us-ascii?Q?2H/fOtXjQNyzRhfUcwOworJyTpmu0xGkyZBCwx1JDaNSHwlgwlQkM3f6A+d3?=
 =?us-ascii?Q?g6uRckc6oIviaHeynpNxgniStVg2lrw5QZEgAJaBrzCwHHRay2oJfaOYcqQv?=
 =?us-ascii?Q?kja9JkhrrM7SJ6qBW5zH4NIif62YxYlYsKZ+V8r6JbuCW6e6A/XGMkp5Rq/2?=
 =?us-ascii?Q?u8NcLgtEDFvXNCoV+fKLCNmatESCJ5SckIwjXNWbDsIJZiWyafb3jYWjnoCk?=
 =?us-ascii?Q?j5XlSUPxsjipqI0+mM+wGGlZ4dGTGkMI5P/knBOI4zm+eat3LXMDibWPdFbi?=
 =?us-ascii?Q?QnGyrWo4k1iE6nZUEkP3IK8onBWLyJ/Ak7ycRwA+PVVeFjCvGYFIzGSSBdVB?=
 =?us-ascii?Q?0k5brWsrOam59HAtyEerRo27Gev+b6LCDStveomP/9NmkykTYmYUHLHtLpqw?=
 =?us-ascii?Q?bdVOXMn3z1gas2NI+Oi4t0nKCUqz26lkqK1gv1ccfJNnrdGgxkE2i2lKoZpq?=
 =?us-ascii?Q?etJD7SKdj+5sw7ZjYxky7PoS8zHsn4zpoZ63bvr9/FAS1ysaRK6B6hISpdMM?=
 =?us-ascii?Q?CCJ25SaiHieS5fhH08KXW3bXmq1dfXlNZVQHZO0rHAMAifWnr6P/3RSP77cU?=
 =?us-ascii?Q?dI0NDh68LBS0er0XUcfkWCEB1mssuqXj+AIFvNznr22Nul0wgT2mXAxunG7z?=
 =?us-ascii?Q?C5fQn36eBx7OzifepTJ0ZkebVIEzbRK+UoXgnBpfSSCBYJoyBNWL/rt1Dep9?=
 =?us-ascii?Q?D39B3CPId+LLghSr/1rbNR/JWFVNktTlY0sb9SLCLSAJ8n5nth6MBHkAqHMj?=
 =?us-ascii?Q?qlBk5JhGjg4USV/yFIkuaOVFOmzZDIv3i/4Hf3J0e3+/ujtJcssNOIgPBcdg?=
 =?us-ascii?Q?561oG77RjF0/DUDX+unuXqhZ5P29UDpixjkisjbSkfHBebEYAuh1uv0goyoO?=
 =?us-ascii?Q?q0mdmNDB59oMr/2XUCYHI6hwL0ioZoCHX8ly7FZMVPnllVse2RhSKh2lBWz8?=
 =?us-ascii?Q?Nv8ycZxC+MANXouKA2UW35kxbzNqimNkIQCemSn+J3oc8gITYN+F8kvz2tb9?=
 =?us-ascii?Q?K8MmY/F6wcVP/0ADML+6pOOlTfbyRZKPDHBYdI8hZ4BBDebNS5umryDRVqGY?=
 =?us-ascii?Q?FpwCPHufG0jDhktuNGN59bl/JTsdYd/WFMRcVTI+j5Ln13sEQL3AdncgJSF0?=
 =?us-ascii?Q?kVpXrOQPpriNtBYF58IP3eO5e334rW6v7m1O7HOUI7Qmz+H3w6QUdh/7sK5e?=
 =?us-ascii?Q?TA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ad09b2-acaf-499f-a2ee-08ddd19773e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2025 07:37:37.1017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f8DiPKrgulYcfHT2t3AtgYPR9luIB697gLY6UXlmKuDE1qes/x6jtsBSfgaw7boKQOoxEAS3tCh6cAWKbPog2tnqopfj3SJ7DOf6DEEGaEs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1AF044E07
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754120265; x=1785656265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hZYRYUKA6W05/Yrd3+AQQzhtY5rHBIAXnjKgQeNAOj8=;
 b=i51Bv+nnCTcpMpZ/YU2DkKs0FfWdkPHOraQHokOicPY2957oC8svPsvv
 1g3uxnu6NJOPoI6NHx9AVwMVCvsVSOj7ry3KSc05Lxikd30IqiYUrnrqO
 XNT/I5WUKg+x7xJuNgf16tloqf+wx0hkBsk5YmUH8scHzY8TVO2hfIWcs
 oNH+J/LlqCktSLkK4bPLqnXNeu1By9KPs2/3IeeRyQVvNg6fixJSIrE3s
 x2BgfcNB2AHr0htB3sXTD5SXBLNY2gIEhZ6ZEK30+opRkkvsUD7v1cGSM
 vEFHa2LAD7JCdvSC4oke9fEPGPWvRTH1wmhOjAMb437nSdBcAJAzoJR/M
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i51Bv+nn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 8/8] [PATCH iwl-next v3
 8/8] ice: Implement support for SRIOV VFs across
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
> Sent: Monday, June 16, 2025 4:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Marcin Szycik <marcin.szycik@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 8/8] [PATCH iwl-next v3 8/8=
] ice:
> Implement support for SRIOV VFs across
>=20
> Active/Active bonds
>=20
> This patch implements the software flows to handle SRIOV VF
> communication across an Active/Active link aggregate.  The same restricti=
ons
> apply as are in place for the support of Active/Backup bonds.
>=20
> - the two interfaces must be on the same NIC
> - the FW LLDP engine needs to be disabled
> - the DDP package that supports VF LAG must be loaded on device
> - the two interfaces must have the same QoS config
> - only the first interface added to the bond will have VF support
> - the interface with VFs must be in switchdev mode
>=20
> With the additional requirement of
> - the version of the FW on the NIC needs to have VF Active/Active support
> This requirement is indicated in the capabilities struct associated with =
the
> NVM loaded on the NIC.
>=20
> The balancing of traffic between the two interfaces is done on a queue ba=
sis.
> Taking the queues allocated to all of the VFs as a whole, one half of the=
m will
> be distributed to each interface.  When a link goes down, then the queues
> allocated to the down interface will migrate to the active port.  When th=
e
> down port comes back up, then the same queues as were originally assigned
> there will be moved back.
>=20
> As of this patch, all bonding modes are allowed for VF communication.
>=20
> Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   5 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  15 +-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lag.c      | 774 +++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_lag.h      |  21 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  7 files changed, 714 insertions(+), 105 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
