Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wKpQGMPWKWqteAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 23:27:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB9466D135
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 23:27:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=FjfujlVm;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74D3A82389;
	Wed, 10 Jun 2026 21:27:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5T1L2wa0mdRs; Wed, 10 Jun 2026 21:27:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4A7F8238A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781126846;
	bh=dIAiA9UDggaZF/OTkytSMfkFw1dCsUDfgyFRAO9FQNc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FjfujlVmpga3Y6OAT8E4gli7IzweCKwraGB2Xt9bMBYjDXDmOeNMYdcipJMtRB4r2
	 zL+eNx6iE3p9BlcEN2wupIidNG7if9HSrb78SzeRKz/yiqBNyX7/Mp7ANGlfOzd/q5
	 Bx/MuFWiOm8Rb2hVvWsAN0lwomMV5vKKKrMFnrotVUwHp+iNLF5oJXGs9RDepKJBkn
	 ZTH5TyLL4MD+wvLdPTEgdzZqVacnCZTUrR4uLVjAzUDoZWJl9yMItCe5xPjMo5KLeM
	 AY7W3rtXgaTNPDytZLhYUosPgnUaf6TuWlPmh8RX9LLp16wBLMu4fZ5BRsmJfgJy3u
	 cS815Ngs5cAEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4A7F8238A;
	Wed, 10 Jun 2026 21:27:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 914F4187
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 21:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77B8082387
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 21:27:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sR6khRKb39ic for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 21:27:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 494F781771
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 494F781771
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 494F781771
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 21:27:23 +0000 (UTC)
X-CSE-ConnectionGUID: INQGQkhBSjepl82i4KXr+g==
X-CSE-MsgGUID: iEHJKV4/RU6nrFwvooCBFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81780521"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81780521"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 14:27:23 -0700
X-CSE-ConnectionGUID: 1krtrB0lR0yy4vDJ7TAvwA==
X-CSE-MsgGUID: 10lhGgktTKGJy6NdYVz1nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250559275"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 14:27:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 14:27:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 14:27:22 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 14:27:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g3h6c7EdVQwC/DiWdGcAj4LpXhXTX3pioMal0/ECHMFHHNzf/ehCD6geBXVtP6tCz+dRSEH/gIAwz5jjTsK8D/6TemxWZnVpH/5qbpEHg55PW55YlMwSbYdYtc3Py9Ax6wzFw9UhTGXNC4IO0tKQ7I1ZNywbARiTIsmlZ+u2lugjmlH2PGi8HyMXNNjj2H9j9ZG1RUAaL06YPjpBZciB77qPAuM20MsPngtFQr76lXVUBQk80IwlHtPgIlqPRDB/kflPDx4hpX+xh/YD+miAfzdgypbjrGZi3pERnN/mrRaCALDy7Zj8XgcFywSab3LUlb4ELny94goM9tgKJJnqiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIAiA9UDggaZF/OTkytSMfkFw1dCsUDfgyFRAO9FQNc=;
 b=tUdu7LhlDteiBysIas7IqRZfNepLjrqHciQQE9pupr4GoaGT2/j64vh1AK/WDljU/FsPHu3aSqG6fRaLgBQuDtox3C7qxAL3Zy3ihLMMHAi8ySf73bwDWFjQX4Z2Jm92u2N3LbkWGpMQ4oMPtu33GrBEocoEAXqLg9ytMeUZwXH3dNB9fi0xQNGHAsM/vOBJXkDAAGExLtYYqeVx2cqF9CdLgRV2EWou+C3rN0Go6GiFBykpquufBUulzJrkDx4Qr7WYWFgBgeksG/TghMKksXXZ7t0gJzjC8/C4SMeWdZ6cD4SSHc/RCG4tkeCC1W4P+DOf10KcINuak6Vkk7aiMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by BL1PR11MB5318.namprd11.prod.outlook.com (2603:10b6:208:312::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.15; Wed, 10 Jun
 2026 21:27:19 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 21:27:19 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Prathosh.Satish@microchip.com"
 <Prathosh.Satish@microchip.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH v14 net-next 04/13] dpll: send delete notification before
 unregister in on-pin rollback
Thread-Index: AQHc9qx1WAOADYOsh0eBk268hx/sxrY03vWAgADwD5CAAOECgIABn+Vg
Date: Wed, 10 Jun 2026 21:27:19 +0000
Message-ID: <IA1PR11MB62191E328EA066AA68747962921A2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-5-grzegorz.nitka@intel.com>
 <CH0PR11MB539452AD940A13941ED1E6D69B1C2@CH0PR11MB5394.namprd11.prod.outlook.com>
 <IA1PR11MB621956E9C0B9EBBD32C8A332921D2@IA1PR11MB6219.namprd11.prod.outlook.com>
 <IA1PR11MB62193E85F10A8ADD43343946921A2@IA1PR11MB6219.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB62193E85F10A8ADD43343946921A2@IA1PR11MB6219.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|BL1PR11MB5318:EE_
x-ms-office365-filtering-correlation-id: 303e8668-f825-41e5-2fb8-08dec7370d30
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|366016|7416014|38070700021|22082099003|18002099003|6133799003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: DzmaL2uQAOUiESAIv5wq7Vs55BQ7J7AdysrSIXuV95+ICbWVgNeFMEM29hpsPB1+9uNuOYN3KR1Aea9GzV0cs9bXU4K1Xdz3KW9wGU+hAc+bi8UpO3NRic7wqz7QkBCB0FmU7XE3YESasuEVWkiWbT4lwkuFyopHXU56cSUZlNt3NfFt2LDLv5nzVZsXcQzGHozHGnkQ0d6C+WvLkvzbYSRcZsg5Ss/sByYBQM8mZ14k8ebVmouj8dqSZbSe++E7ASWccDBbGGQukDFWOqD394+60fNTYQvLY07FfDecgl+GP4Jx8+Rt2Yof8Y2HTVeGRX49dD2lvs+83Ft2tr3cs7bnUdoQGT6HZ8e/egfXedLArFEZ8lsGPxOCHzxZNpvaEUX/m2YOoNLYE0p4RWOaV3UnLKB93r5uVASa97bMOx3z4NhMmBVPxHSiO9T0fPg5+IySxHnt1hNu2i7gUwhtGJLLL+yKWNcG3mfcHslc51GgcjTUvl1YhBMzgHKIIbn5HkP8tEiYC1D4er0FYsDgmUfFoBp4SJtQnMRmlcR2T4+5qhAy614P6V3FuyfC8IA4aShmSKZmUiALon7W+RUBbEBckWc3FnGOYvO2JgVaXibXoKC9o+mikfdrUr6v9zRZyLY3fUdXJGtQEoe3xkzmV7a6b8+EmfW9VWXZJ/qEHSq/iw20pMfljxivtKKurmvcXVny8JEfGHe+xHQ8C1fx3gK1Ay9qu0NV4N1Ji/pPowpxeOt+IjcgmDJ0gIzc1aR5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(7416014)(38070700021)(22082099003)(18002099003)(6133799003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?viWKlEJz9YP0iiZ+vdqjlzLtNRqOOuAcx6+srEsZ4M9d7JTExFk1zDF2Q9BX?=
 =?us-ascii?Q?EPyT6rmmTbv7H8m4eOy5cZ9DcpXARfrD1ECvMIgP5olfXphTEQ/iuharqt4z?=
 =?us-ascii?Q?lTWmmzVP6ocXOsV0KrSklAyMx/fvHueFvH+SiHNK0w8ySTSf1ePYfTVhaocH?=
 =?us-ascii?Q?ciJcdrL4TTUBdok9nUnKXkDSmoyLApO9IgQXheTOJTMvUeC61IbQkdYo+cze?=
 =?us-ascii?Q?XCKDoFiBASt67f32MHkzuEfIKvTsg3GrwlCos3Y1rWLFDUVviLjoOWFlnJG0?=
 =?us-ascii?Q?rsIrCiwNw4YJu7+uxqoTcQNUJF72cGMtHzJl2pnoCJfQotW4Qo84+BS+ds4p?=
 =?us-ascii?Q?llex8NIs6f9Fh4YVn7ykhmaG8wd7Y/OKdk7tnPR3b8o0zEpjqC0cvh2cLq0V?=
 =?us-ascii?Q?dwfOmT1pJljrIDikoOVyXVlgDwUdk4eRhVaeKjoj/4Z4MOd3N0lXZb+im5AA?=
 =?us-ascii?Q?JKve3tmh8N8q6BLRBrpqXlHd5AXHawfr7MSU3MyidHSPm0URMyA1aCc7QHzs?=
 =?us-ascii?Q?z0T8m9YCasEO6zym3C213gAZQ5+QmtJbQv230XxjbvV9dDcAxw+KNPnry44t?=
 =?us-ascii?Q?XAnQadsL7DMgPd6WdpVxApLP/kho6XGgsheTAzeX1/HQlbikERmql43ZwwS4?=
 =?us-ascii?Q?b6XkC4txmwVOH2mRw08wezzNABQd9s8kyd82HK/kQoeJspz1r6dLznzU2uaM?=
 =?us-ascii?Q?+xW3n/UPwSNam2SyaxmZ4QaWFAa6SewA3ig9uMBB9XWfbbUppG/kB8tuuYff?=
 =?us-ascii?Q?5nTx/1vRpTr6B86wDviNihkeaNtX9spytl2HnxDjA8zEaOo6LzG8b3vUn8uL?=
 =?us-ascii?Q?uiSbgkLnStUP6+Pi2RsuVg52+ltpQqgU2HFIsbTM9tL6gL2dRzwCkBcXBD8n?=
 =?us-ascii?Q?XGZg/dU6693fM0yKySD1VOF3+336G/3DwtRjL046eRrIRaKykKy/OI4x4VNs?=
 =?us-ascii?Q?hQ/kPqbU4rrNVbBFA5XNr2oP2x8v1UCXWUt3JwKJUqb0o6L01+4WHtCWj935?=
 =?us-ascii?Q?nXDbC2QiF40fEFww0el/IVa/g7YM9+S6sYCaByHLjX7HRarFe+PZUFn3FlDe?=
 =?us-ascii?Q?yKMjoOf7XZ/2dOkXIpdaT1Zk/bxAu5+JZdEKFAiHGQytJwCtc+3FKwKm4PqX?=
 =?us-ascii?Q?jNaw3C2Hv6V8pf3pf3Y1533IlJJjIg/0GPxkEPs+1GYKt2985MsRPX15lXOA?=
 =?us-ascii?Q?IzsfUfLGC84dDa4Ao5EqaEuh+LHXVoa41vSi3fHf35ksZOoUkwFuD9CXTC1F?=
 =?us-ascii?Q?HvcvWQohH2TJppbn3spFkcH4oO24mSLSiMgYzQYBXTmriO6HWOaUMchPti1q?=
 =?us-ascii?Q?T7BM8FMe+2VakWQ76ZDg2QTQfOBLLoms/fTV6QvVhiJOgQme0guxGLRI6877?=
 =?us-ascii?Q?rmuz54yHFHb335+Y1ScZ0uyNde0f4f32puG4KGH21zBJZXVAuMr7kLR/gGFj?=
 =?us-ascii?Q?aGv97fYatzMK58HVh0UTTPEX+dxLDZCGGGt9Q7extoNjk+6YNFZxig5dLRCr?=
 =?us-ascii?Q?z1ouPhljnu0iCkVwWcfavQzaOu5V0VPOx2cgjIaPAQlvRt9s2Y9wp4qsioyW?=
 =?us-ascii?Q?zmfAJYC85kVgVhDBwCwbtSufHjuX6+zqg97q4jqePGaytIERZBH33Ipptcha?=
 =?us-ascii?Q?TkuRO1CmhcFsS3JIyAg35Gv2J37oKtYsB/vxhZ7KiIQ9uwLIppIiOq7jRct8?=
 =?us-ascii?Q?3Gv+RENWrPGW1KdqbEXa5nJ7MNSrr4L+spMSJ5BwmMozgpN9pIRul5Z4WIeD?=
 =?us-ascii?Q?Cf2UhwIYtA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZfnqHhMudg2S8dbqTXa1Vlpmavz/vKn3rVzCTKb6HK5MmZUQRff/RJgb/WOQJJfldoWVgw/roG17RABzJEiNb02oAbfYkDvmDFTL0MVk+OCJ9kjh/sL19I6GRhP9Mb7k8x5Md/P33EkBDwUebhnzNZpqoIAAAkGc56VMNUwQbrRYmtNenLQnXPK02+gdSC0h8S17MkEw5Pf1nYsTu5GyXVkt8OzyJ7/9pfyuijih1Kv4GJI1jVn961ChScNp1MU6uRqT60858MIHzFrwclS8tPSlj/F7K3fkteu85H5AlPJCJUJIqIgrJYWt0SdJb7rAptpxCS9g3VChHZ0kAtHEEg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 303e8668-f825-41e5-2fb8-08dec7370d30
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 21:27:19.0935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0OYdV0zmj+m0MxPoyn3JF9/yNbDxbp+gqm6GkQtjf1vxMiFR0zrDRcxs7t0OZfUAhSERW0ONkTNvPLoyy6PlQ1PoEA9pgaocneO4GnSgaN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781126844; x=1812662844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tBZp95b5pGR3J3epl/i7SzAMgAsX8MCmwQYQvHDM0mE=;
 b=OkrqXG90RY4vRKXYYojTjT7N69fusdmRmFG/dmuAsI7rZTtPTPhZO2ye
 lvLs9XpO/aTEM1PHhdKPREQCBp+qjfVudAWpiWB1luvYEY5CJYgofZKF2
 z2+vM8La2HUbkgUp/BZHwv8x+2SD9Zjxm5p7EbOQHsGfNxUXG1MlqFrEL
 SbzUe4yMCB6I5GRkCh+ojaO/VOHu/1b4e8hYoF9YKdMcdtYUeNlORYoHt
 zZl1NdBC1R8HMl9ba4yUJTgwKtUb/XSDLkCNqLwgf+dIzzJkeyjjtyE/i
 VygMeiBKNFBKevB1p1ftmA8BnTS1HxQevHCnAGkobXGRbODOA9GhfExPT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OkrqXG90
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 04/13] dpll: send delete
 notification before unregister in on-pin rollback
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:arkadiusz.kubalewski@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DB9466D135



> -----Original Message-----
> From: Nitka, Grzegorz
> Sent: Wednesday, June 10, 2026 9:42 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; Kubalewski, Arkadiusz
> <Arkadiusz.Kubalewski@intel.com>; netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org;
> andrew+netdev@lunn.ch; intel-wired-lan@lists.osuosl.org;
> horms@kernel.org; Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: RE: [PATCH v14 net-next 04/13] dpll: send delete notification be=
fore
> unregister in on-pin rollback
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Nitka, Grzegorz
> > Sent: Tuesday, June 9, 2026 9:10 AM
> > To: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>;
> > netdev@vger.kernel.org
> > Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> > kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> > donald.hunter@gmail.com; linux-kernel@vger.kernel.org;
> > andrew+netdev@lunn.ch; intel-wired-lan@lists.osuosl.org;
> > horms@kernel.org; Prathosh.Satish@microchip.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> > Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 04/13] dpll: send de=
lete
> > notification before unregister in on-pin rollback
> >
> >
> >
> > > -----Original Message-----
> > > From: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> > > Sent: Monday, June 8, 2026 6:45 PM
> > > To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.or=
g
> > > Cc: linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; O=
ros,
> > Petr
> > > <poros@redhat.com>; richardcochran@gmail.com;
> > andrew+netdev@lunn.ch;
> > > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; Prathosh.Satish@microchip.com; Vecera,
> > > Ivan <ivecera@redhat.com>; jiri@resnulli.us; vadim.fedorenko@linux.de=
v;
> > > donald.hunter@gmail.com; horms@kernel.org; pabeni@redhat.com;
> > > kuba@kernel.org; davem@davemloft.net; edumazet@google.com
> > > Subject: RE: [PATCH v14 net-next 04/13] dpll: send delete notificatio=
n
> > before
> > > unregister in on-pin rollback
> > >
> > > >From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> > > >Sent: Sunday, June 7, 2026 8:31 PM
> > > >
> > > >The rollback path in dpll_pin_on_pin_register() called
> > > >__dpll_pin_unregister() before dpll_pin_delete_ntf(). When the
> > > >unregister dropped the pin's last DPLL reference it cleared the
> > > >DPLL_REGISTERED mark in dpll_pin_xa, so the subsequent
> > > >dpll_pin_event_send() failed dpll_pin_available() and aborted with
> > > >-ENODEV. As a result userspace was never notified of the rollback
> > > >deletion and remained out of sync with the kernel.
> > > >
> > > >Send the delete notification first, matching the order used by
> > > >dpll_pin_unregister() and dpll_pin_on_pin_unregister().
> > > >
> > > >Fixes: 9d71b54b65b1 ("dpll: netlink: Add DPLL framework base
> functions")
> > > >Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > > >---
> > > > drivers/dpll/dpll_core.c | 2 +-
> > > > 1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > >diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
> > > >index cea7e2be2cbc..80195f3a84f3 100644
> > > >--- a/drivers/dpll/dpll_core.c
> > > >+++ b/drivers/dpll/dpll_core.c
> > > >@@ -1007,9 +1007,9 @@ int dpll_pin_on_pin_register(struct dpll_pin
> > > >*parent, struct dpll_pin *pin,
> > > > dpll_unregister:
> > > > 	xa_for_each(&parent->dpll_refs, i, ref)
> > > > 		if (i < stop) {
> > > >+			dpll_pin_delete_ntf(pin);
> > > > 			__dpll_pin_unregister(ref->dpll, pin, ops, priv,
> > > > 					      parent);
> > > >-			dpll_pin_delete_ntf(pin);
> > >
> > > Hey Grzegorz,
> > >
> > > Since patch 7/13 this is already part of __dpll_pin_unregister ?
> > > The call should be removed at all? Please make sure all calls to
> > > __dpll_pin_unregister(..) are aware of that, also maybe better to
> > > put this all related to one patch?
> > >
> >
> > Yes, I think this patch is a good candidate to squash with 7/13 (with
> > proper commit message edit).
> > Same 'Fixes' tag and both touch notifications fix.
> >
> > Thanks
> >
> > Grzegorz
>=20
> Hi Arek,
>=20
> I revisited your comment, from the perspective of redundant calls
> to dpll_pin_delete_ntf after patch 7/13 is applied to.
> Yes, there are still 2 "redundant" calls to dpll_pin_delete_ntf on top of
> __dpll_pin_unregister.
> I'm going to send v14 with this fix and reordered commits in the patchset
> (7/13 moved up).
>=20
> Regards
>=20
> Grzegorz
>=20

Wait ... those 2 mentioned calls to dpll_pin_delete_ntf  are symmetric beha=
vior
for calls to dpll_pin_create_ntf on success path in dpll_pin_on_pin_registe=
r.
I don't understand why there are two pin create notifications needed (insid=
e and=20
Outside of __dpll_pin_register).
However it's long-standing code, maybe there is a consensus to have two cal=
ls.
So I'm skeptical to change it, unless someone tell me it's the right thing =
to do.
It's out of scope of this series, in my opinion. I'd leave it as it is.

Regards

Grzegorz

> > > > 		}
> > > > 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
> > > > unlock:
> > > >--
> > > >2.39.3

