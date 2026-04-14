Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAQRLRkn3mk7oQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:38:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B7E3F970B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:38:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 990E684C55;
	Tue, 14 Apr 2026 11:37:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dYd9uRLGPHj4; Tue, 14 Apr 2026 11:37:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 066F784C4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776166679;
	bh=xfTN9gTKaQPyOFgqMNosIDFeinuyDr33RN6xck7YD7w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jpTyTUo9X59Y2yuMfN24F9ux7CRD9tkLGA3kq0WpknmlwHAFcz2j1te4/hOH5A1pr
	 CseEJui55FuF9pNR/kFYQhgXgxvBZITi9XH/LxxltEPuHpMQBWcbvw41+dfTC+KBgv
	 OHHTa0cusfx7J6pkwHm+I1ZNERZvx9B8HiMnDsLIFTYb4iVaHCy41Mqq5qFW66tA+w
	 6RjqQwNOeE0GKmA7mSXHPvEtPETycJNdLaZyYoRxkXW6VEIeHbG5nzn8NXqMlYKKHV
	 D5lvY71KjdmL/nL19k4Vo721s8zFb0EOcmZUVlqDw5A96Vn4V1ghAgdagpOXj59fQ0
	 2HjqTTN7EdS7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 066F784C4B;
	Tue, 14 Apr 2026 11:37:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 37694283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D44C400BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:37:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jxKN3vdO80J2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 11:37:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 10145400AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10145400AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10145400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:37:56 +0000 (UTC)
X-CSE-ConnectionGUID: YKNDULsxRmy7JyW+4B/fVw==
X-CSE-MsgGUID: AlzgHT4JSXKyEVLcV+WJ7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="80984611"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="80984611"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:37:56 -0700
X-CSE-ConnectionGUID: VHOY3tQ7Sais1BtUhC7Z0A==
X-CSE-MsgGUID: qDVoFQYKQcG4GYzGEv7uvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="225346677"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:37:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:37:55 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 04:37:55 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:37:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DlSMBDl+FWhGCEe+ihu3edG3aJW77NX2IK5PfZI/GtKFq9HuU3sCo7ZMCXs+4N500kW257s2mIdr44HlJjZiN5CE4z9f9puU4J3QbuXPEqbk0fx5Yj7lKKxVTx6Gs4yct0zIi6qiCwwNOsM4QCozqVi2VDL7CrB3MQ3GxYNAboS+z4y1f3I/9e4rOXJmlK9+XaacGBlq8J09NXEN+oDTWyMFocGmilZvJ4gkPJz63UHGHKE3hsTGDCj0OReuatTV3KjYM0Y6x2+GA3rJu93m92oN0skYEv4wHM4XV84+SfX+7y+aoPNeXSrffaFFLXIdYFhe0UGwRPZzhmr/kjsD7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xfTN9gTKaQPyOFgqMNosIDFeinuyDr33RN6xck7YD7w=;
 b=eCZT1Jhp2o4A1EGeayHXpbgSyzqVvPm9B5m429zHXbfC83YHs/I7tclKlhp2NaIsFAFB1c7C1y0vRjsyyRKjG2i+G+0D7HIH7PJ+If8z7f+NiPybdc7PG42oFWY2Z0sdk6bop9xgU6jG0FKVkOCVbhfwHo4CRw8W0Am3Hk+jlEPVa+yLP+0N9O7u4128lZvXgeevsx8wMsAtpNiwT4ern8fpgi/athW+Tod04XrITnWFKOeZzZVoguR7D8hPV0L+sn6BU0BACQOg+MrXYqvCbH0y/LHRh2P8h/RVQwgG4o5LWfB5bVla1qXmsDx9xeKIIQ6xGTDrjquZyXFv267nRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by SJ5PPF44E8B88DF.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::825) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.42; Tue, 14 Apr
 2026 11:37:51 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9745.019; Tue, 14 Apr 2026
 11:37:51 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: do not enable XDP if
 queue based scheduling is not supported
Thread-Index: AQHcxhwxEhYfRcJ2eUuNK+MqSCtBHLXeefAg
Date: Tue, 14 Apr 2026 11:37:51 +0000
Message-ID: <IA3PR11MB9301BCA3249FF9824DF59B6F8A252@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260406233236.3585504-1-joshua.a.hay@intel.com>
 <20260406233236.3585504-2-joshua.a.hay@intel.com>
In-Reply-To: <20260406233236.3585504-2-joshua.a.hay@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|SJ5PPF44E8B88DF:EE_
x-ms-office365-filtering-correlation-id: 5a0cde1d-35a8-43a3-25e8-08de9a1a4310
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: cijCeM9G0vL5ARuuPrsRsky/Y7B72i+Bqg2p7dJNO7WRHAGkqEDcg9v7KntXuLa//D7BlzjQyJsNFtth23C51+kWnq/VCS21vlcHXE5rCjmpsby9iWGnAPrAsnek4yG2N1NIn2IznSAK/751sguqhFKHf1LpIit0Uk7qTmZZOGN1/uIDv/yMIC1TBDr447AfHXL6pRdf48y+tYLFLfGKVE9tgyvLgRNd7q2wAMcByfjuidpOXbA//6ypP+okFwLK6GTYQYkj64ZoEaisEBQBQVatiSG8ZrvZ9Nz/1Gdkj+t3cM9CcA9EOaVV8b0+BcMh03PL3Iwq/frurpDqAmUVqSofjImZx0738woxFAOjX3wQBKMYZdVfKsTjYxKrBkrunBiaNP6Ey9Eqei8+gVVlXH1owciTaheYYmUeaiWjEyi478fKFFrLppxmQyFxwaaDt5Q30FR29StCbtIkxnNS6Bm1TP5b8+z0dMQ9V6voOw4E2/tb5sY77H8zN5xlna+AAcwCH6yk76W/oy5Y7fVuEVgtlezL/ZBHerAYvtZC28x2qxfHG/wr2FRf/x3GCaMk2zXYo0wX26NZz17npx6E/ARUVinDmbJxK4KMOWSQhJG6O+2ho7f+Q1opAY/2T61dPH/AkWkWqg3BbcjrPKg5Ep7v/a0XR1WxyXUJJJQF8BInfMi4g3yPDL00hcvwDuhWkqn2mQCmrp1Y7NQZn+1qmVPbLghWP4FIl89WYP2MHv7Uqt6CJZPp8uDwtyNeZp0Gi7G7b8ybdh0LJ8ekNMwE32x2sCidtYHUdDQoNV9w2pQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2KuuDbXWD4KnsE8vKulFc6o7js1KqQ1qYAqafm3tLPUDkrqRE1rduz4FPk?=
 =?iso-8859-1?Q?2ueLoFckSlqyst8lXBN3Odnwumd0SWJrBi4s9wkhOG2U+Mf1ZbQAyHpcno?=
 =?iso-8859-1?Q?08KRYEJGdLIqLRlgmN/PqKHNYnVxD2aY7YG1lfbvimING6tHllo4b5f+GK?=
 =?iso-8859-1?Q?UQ307/cXvQnEnLge0yc1MW1kl1nHzEzzP6r1gy/3WbcyfhMZFJQrS6xqsv?=
 =?iso-8859-1?Q?whdxVsXBQzg37F1ZJ5xBbWccCbS7pK7ScCtJsQsLGtLmSfkpfc4QxfGNUE?=
 =?iso-8859-1?Q?w5ad0cOuqFplfDR3dG2/MyvXCR8v18cZY4iVBP977EM8r8Et0DLf4Ux50Y?=
 =?iso-8859-1?Q?lKnmMONDXNVH4rlRFPj1O7Y7Xw9ROGJ+nIEAbLBLO1voGpWZ0ZZ5Yajn5O?=
 =?iso-8859-1?Q?IfhyJVVn26qs7OhP/UqSEaJO8RqTPbNbNJhnLioZo9hTwnrqU5eRUNCjbA?=
 =?iso-8859-1?Q?IhnGPeEKzKCaG2MdxwJ2AxdTDadyyZyqi8MQy3SkbdGd2cTXIA5CUu76H0?=
 =?iso-8859-1?Q?2RZOG3Ed2fUOdnwFSBSGphSZclCjmL6Pb0pHT1OVUmSZqQUGnCh93Sdjht?=
 =?iso-8859-1?Q?mBaHiKELo+D0xDrZJfnNLGxPFRF91CWQ3kobFbMseNUDGYwHG7zx+F1S5n?=
 =?iso-8859-1?Q?u7+YgEG/7HWfbH9Mzcf1O3qX031hJCHSeiUjjHWowzRppdvYpCfiQofhdG?=
 =?iso-8859-1?Q?yHGqzQxi2Phb1WFvUeuzGgDrAoIg3hY3eJielGmb/QWteI+terozrqTQ3D?=
 =?iso-8859-1?Q?zrra93+iNHCenIF5WYUICVDhzEY5ELj2J5jlku7A9GXcex3t9c48EBiTxp?=
 =?iso-8859-1?Q?VbUcsol9A6FLB70KhIIHQABdlqz+zczgdpeyDyPt6Ke15QiLKUOz36GhK/?=
 =?iso-8859-1?Q?q5EA7bgF6q1UuUHvlZsdjViN25D94w89RDe7Nm1DaLK+z2EOrgQ9fJNw8U?=
 =?iso-8859-1?Q?PjZTXJjb7D0PgYQ3SgVeXmWfIcv06CFUG97Cmv+Mg20zifQZrhRRK82TE9?=
 =?iso-8859-1?Q?kUPu2wO0Vg5Vd94jsDUQlc72Q7gx5wITmu+/+Uxy3w+O9jvToH/EniDkpw?=
 =?iso-8859-1?Q?crC2GCE2c8dLSuUJsZ65EqZLjjn6+3asgfaqjsh4DXTMsf6uyJQRzg/2sC?=
 =?iso-8859-1?Q?W0tLBXYzvEuAO7XT2+WNP7cld9Do719IqBuDFMxLy4RAY1N7HS+BpUN0yP?=
 =?iso-8859-1?Q?P9gy0LzcAyAhFMUy0DgoZOwqr5GcsrrZTsRjtk4RzvFjAq+AERHvchtNrV?=
 =?iso-8859-1?Q?SCRjmGqUSM4FqUhHAKctrDgClYhhMK3ydQrtmr1BjVam/GIn9+Wm6i339f?=
 =?iso-8859-1?Q?OUjWAsVw/XSclkFFmj//6Bw2p3tivjgHnFxH01USeX5IuM7jXAR8zewbYQ?=
 =?iso-8859-1?Q?TPWeaU/bY+APNrjFJXStOQKTAvH4NB+yhUHu7uiwUaN3wNY3s7ZGsTB/zI?=
 =?iso-8859-1?Q?y8Ky2ANHsUsvEhVuFq/pdiQgu2gC/ToEPLMbXhc/EA2CBTpFfZtvhrgtcl?=
 =?iso-8859-1?Q?CVLOEjb3HqnPgWmFBEiC8G9MXakVVHUhenbi8cvqoAnCzQFtuUKJzQROGL?=
 =?iso-8859-1?Q?ibPJkY9RYF5iz7CA1EhWlSjuD6pOGt+bUoqcE+bsRA+W/lzqhWo/mszrxe?=
 =?iso-8859-1?Q?Td5q1tR8YQRPHjJdlDSJx6Q0Yw7e7OE+Gd2KOc9GC+WwrxYokhKuqy3HFf?=
 =?iso-8859-1?Q?T2xteT2fhxNpW+CwV5qioxpRYDFzE6NO4Jx86shJHZryPEwCjQc+7dy5M8?=
 =?iso-8859-1?Q?ERHTEIQLsBwAhYsAdHE0N+jV/jVh2WmJugvkK4d0NOgfuGAgcTJE2UdmZD?=
 =?iso-8859-1?Q?WWCw96Z9Wg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cnLgJGjccT1Q55QPZaSFBzhg0Tk88x011bv2v76wnyzmfKRaA51gfF1Z7+6w+j2wadw4dYZZla1JNc+o7DdU+Y+CgJRzItmycmf6SiM4dQ6evsa1neO/Z8csAkDR0zPLNKLXzBb9GfQHAoEvs7PIWC6E4QdJ38O+i9wJkzNFidcvd5+vLxg/AEFJU/15og9sUlTpBKsiaeYaWp9uzLlbAie++mQmH9p6gGe9rkeSvkxnqlNnwUMq6Psn9EN2o702b24XE/3kvbnluTr9R9I6/ZAnDA4UY3use38FOnxyUjhYe8lJwSnNIfozYFVxZdex6AvLwyTo5orb47SPE2omzQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a0cde1d-35a8-43a3-25e8-08de9a1a4310
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 11:37:51.7874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gZ/QlzS/vcVLIkP/jdHP4ySvmKVQiUEgsad/JfWm2zRNmEiiPhvMGc7OoPui3+IP5meNDoq8WTgl8FB5usvYvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF44E8B88DF
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776166677; x=1807702677;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sFE/rr/GPz9vWafhe3Pcru5NW6VmpGGHpuUaGJN4X4M=;
 b=CBwsWQdV2i1QFmpMEhSF9pVxje5tvH29Vy+Nv1MLxgbxWGJzTLIZTHuM
 HVWUzip+3uaXHKbyMdHamnTXAtXTWpvS5qHTnUl0VJNYDOfjhOIdKDotk
 ps3PqFs9L36SxvkQ30MPHA1lN1D4tPr0koHJZmQ1R3N4JsmNgbg+m4jpB
 FDsSan6QN62n3tIngCqYM4YDWCrhwUw0h4DeKSwPmXnQ5VokDudMfVBdK
 Synu8Otyr6fXZWN4V8/4bPrq56OAkAFBJbbgFkJ1I2gHW3AWXw69TQjtz
 IUbVbSi4v9NTqWb2dcwpQVIiNVJ3FVLTM04A3tOZtYbflrZBmvZQJ64BN
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CBwsWQdV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: do not enable XDP
 if queue based scheduling is not supported
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.a.hay@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,IA3PR11MB9301.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 03B7E3F970B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Tuesday, April 7, 2026 1:33 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: do not enable XDP if
> queue based scheduling is not supported
>=20
> The current XDP implementation uses queue based scheduling for its TxQs.
> If the FW does not advertise support for queue based scheduling, do not
> enable XDP. Add the missing capability check at the start of the XDP
> configuration. This will temporarily break XDP while a flow based
> implementation is worked on, as well as while FWs with queue based by
> default are rolled out.
>=20
> Fixes: 705457e7211f ("idpf: implement XDP_SETUP_PROG in ndo_bpf for
> splitq")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/xdp.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c
> b/drivers/net/ethernet/intel/idpf/xdp.c
> index 18a6e7062863..9c3bdb193684 100644
> --- a/drivers/net/ethernet/intel/idpf/xdp.c
> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
> @@ -511,6 +511,13 @@ int idpf_xdp(struct net_device *dev, struct
> netdev_bpf *xdp)
>  	if (!idpf_is_queue_model_split(vport->dflt_qv_rsrc.txq_model))
>  		goto notsupp;
>=20
> +	if (!idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
> +			     VIRTCHNL2_CAP_SPLITQ_QSCHED)) {
> +		NL_SET_ERR_MSG_MOD(xdp->extack,
> +				   "Device does not support requested XDP Tx
> scheduling mode");
> +		goto notsupp;
> +	}
> +
>  	switch (xdp->command) {
>  	case XDP_SETUP_PROG:
>  		ret =3D idpf_xdp_setup_prog(vport, xdp);
> --
> 2.39.2

Tested-by: Patryk Holda <patryk.holda@intel.com>=A0

