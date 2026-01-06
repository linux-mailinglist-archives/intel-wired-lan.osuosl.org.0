Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F3DCF8D33
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 15:41:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF3E281183;
	Tue,  6 Jan 2026 14:41:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2t6NRdGxMBXQ; Tue,  6 Jan 2026 14:41:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A578681193
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767710512;
	bh=dKskHICDh8aUeWjBoYjuAhzy1MxbjY92y04Ol56nmOI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tvfx9a4UiiHOE7s4Cfr42CDZuYyK2yT6Fa4dLE8ZmP+Uq5YktTmZxomIy0iEwQCJY
	 OAqWPRPGDiUSS5ZjiVfvkoRc0j6xIFZ5YvSkJVMxsXcyZvasVkMor1uePyK64UEzbv
	 6u1DsBsVAz2wfOUeBPYUC3dbhixt0/awtxOVwM3xpaRQPD2AVdpyYHrh9qYb61pSiC
	 u8Ulsv33/c3C3BK6yooicQTdVoo4PO8T+k/KHKF8UcwnifRyzrTWuUuhbwqvraEn6q
	 7A5f12i+nQa08suq+nlp+J2ce6+ezMHqMwaMm9ltv817gzU8Mb3Q6ctt26c1R8ctbO
	 0J7C7C39uBT0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A578681193;
	Tue,  6 Jan 2026 14:41:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 36F7A2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E2408114E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AOXdS2zveu-f for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 14:41:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=nellorex.kamakshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4AE6A80C31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AE6A80C31
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4AE6A80C31
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:41:50 +0000 (UTC)
X-CSE-ConnectionGUID: 4u+vWjh6TaiGHTaZy02brA==
X-CSE-MsgGUID: PG3Y47sxQGWT8ReAmbOQkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="72933320"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="72933320"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 06:41:49 -0800
X-CSE-ConnectionGUID: eryDBHloTZ6yTcuUIRsQuw==
X-CSE-MsgGUID: bq0XLabsR+aBACCCNb5YNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="202443004"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 06:41:49 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 06:41:49 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 06:41:49 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 06:41:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TiULrNPtN8SZJ3k85EwK9s5Bgl9x+hR1G6ksrws0vEyL0E2EMK6G+KQ6+QoV3es74T3IdQAIspcCsDB33v2F0CtUuBWnniE5akHYAg04ApoNizxzfV6LBj1+zyWs6tDfYzbubnqf24xN9gSG6MQ7CnowvQIGVknaaTJKwRJHFDs7Q8319/QnS0TgvrwkGJ1RM9TYbu4otbzhw93ppqEnzwCTrlp3rsSMn5PFqpLHxkcWN3yYOwz+qj1+ImPHSe5bg+Exm2gMIKIJAi3E0KXI6VAAv6dpUfKaT+GzMlBJxduXgON1499/ICZ511Aco7Jz7Ym7+hxrt4amaWFUkvGMiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKskHICDh8aUeWjBoYjuAhzy1MxbjY92y04Ol56nmOI=;
 b=wGUPFhEPpF8a0YW3h0PgD4O6emZ0XCLp9aRioah6GMDP78W8Ra1TMLCuk3IJxBlOUHqi8JRlGsb8MCDbduvLJHJ+D8bjGKEgvdpqO/c//NYQhbI0u6kuqJRuBeDuKYg7+1EOLsF/X1pjqmIcYLApZJAJR+Lvwz07Px+8txGVGYTyJx2uoASu2yTnTrRE9C9uRXS6lRMg5tInhmjnM8ACqrbeNkxlPWyvTcS5BhG+ZYYyI+/fXRStA/IXq5ZuE+9Vqo8BohrSbC+zO0N0uALMR1ghFQ6bJaaSA7Wn8FiIwUfKEYus3qJ6B2It/ghEi9K5A4MWnJB8jWu7LBf4DUwYcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5556.namprd11.prod.outlook.com (2603:10b6:208:314::14)
 by DM3PPFA4B6D88E3.namprd11.prod.outlook.com (2603:10b6:f:fc00::f41)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Tue, 6 Jan
 2026 14:41:45 +0000
Received: from BL1PR11MB5556.namprd11.prod.outlook.com
 ([fe80::4124:870:2b43:4467]) by BL1PR11MB5556.namprd11.prod.outlook.com
 ([fe80::4124:870:2b43:4467%6]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 14:41:45 +0000
From: "Kamakshi, NelloreX" <nellorex.kamakshi@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>
CC: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "alok.a.tiwarilinux@gmail.com"
 <alok.a.tiwarilinux@gmail.com>, "alok.a.tiwari@oracle.com"
 <alok.a.tiwari@oracle.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net] i40e: fix src IP mask checks
 and memcpy argument names in cloud filter
Thread-Index: AQHcUnY3aRyFcNinEUyQ9XIrRVbhYbVFTSoQgAADDAA=
Date: Tue, 6 Jan 2026 14:41:45 +0000
Message-ID: <BL1PR11MB555670AA62929815A84BC3D5F587A@BL1PR11MB5556.namprd11.prod.outlook.com>
References: <20251110191344.278323-1-alok.a.tiwari@oracle.com>
 <PH0PR11MB50139E1973CFB73CFF221FCD9687A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50139E1973CFB73CFF221FCD9687A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5556:EE_|DM3PPFA4B6D88E3:EE_
x-ms-office365-filtering-correlation-id: 583185d0-3d18-4fe5-c895-08de4d31b710
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pqnjw5mAjmpbL+OejPIZbjP49IQxnQAHUSOVA656xlV1DNyFXfUInUPyMdrM?=
 =?us-ascii?Q?irZGOkRKB7dm/tzHTL4Uqp1EdFJ5PLbt6bFknzkTWaICrsB2BkWY1tIDdSxL?=
 =?us-ascii?Q?rTB8Sk2SjlSOaXCBk9KJuDYinUMIrhMUsQQfZb1oom1l0iBY9dbMQY1Wlj54?=
 =?us-ascii?Q?LAAvNceK1o5qEIBOy84xVGywU5N8NHWDrbBsymyZdoQvl/RtCoB8zB35IQxB?=
 =?us-ascii?Q?A5IlfV1tZ32xWqJfpL4+0GEO20RsCr+FOJA7+GOhDPRFHxJniIZY6Wfnw0Uz?=
 =?us-ascii?Q?7eXk2ATTc+BTjOWj4TByCCVXRHBSpHU8Zq7pcS6NG5kazv57jhKTxhcZLrPa?=
 =?us-ascii?Q?PSgUd2kz0I9JPNeqSvdE2JkGwrohkPdOKPUimTVC1ZWHNJPAAc2JEEslus+9?=
 =?us-ascii?Q?iGHfN95vDIVVD2gDWYgG2Hq+9zOOxsxNHiGgd0t9sjySH70WbLyrYibsvgHT?=
 =?us-ascii?Q?c+zJa32eQ1v3mD0OFEFrc1Jw/gHtaX5CHsNPA0sHkWqMeSjk9pf9QgoYqf7F?=
 =?us-ascii?Q?sj87w1LLAnO6h04FmegPGSl+2fATsuepEfJRGN5PWXGfNU5AexS2ECmd3RBe?=
 =?us-ascii?Q?T3mntzpUtGcLxK73ZSjAaQ3fi9XriWLO4JoiG85+dOf1uisYZPPqHp7IXMb5?=
 =?us-ascii?Q?VXreD3DUEy5YB0dtZJzG9oXylWJttcR2gnxZz1s9IlVuE2NdP5/tHuxHSNSa?=
 =?us-ascii?Q?ng/LBVcFfio1PPhJBs45Ad/zOqzsXMPl4Q2w1qE3fcYeqk0M+bM7optCu4kf?=
 =?us-ascii?Q?KK0CcqV2ZNHRuNNEPVyGbXMP9Sg3svMAyEAQ0RFQ9euX+tWRDQF7iYzidDUb?=
 =?us-ascii?Q?XmNAIsGVMmhs/IjjAnEZ3BBub1VlFvBgYF5WEYf/g/M2nlTjul3t1w5Iah0u?=
 =?us-ascii?Q?O6/KUzyiIPo3W2NzFSQaLhFjMBwcCnKp9khvQTzlCXwCgTdp9cXvCSaQE9yq?=
 =?us-ascii?Q?yuprv5iz3MOAXbnNZaCAljhkSypTcLyBGD0g6tvsiOzQSUp5oJtuTwX0I+jE?=
 =?us-ascii?Q?SgXeaaSojrGSbqvAoaaUuTUoQrXfEaoweAf/Djt/iGrsSmPi9DPK4GkRHRSc?=
 =?us-ascii?Q?nPcBnHw/m8COnBg7iDvQpF9A9c9E2FLOAF8W9wVcRU9X/vB7Piy923OnK8q2?=
 =?us-ascii?Q?W1lx1pdt95996ZnwgUSg+kPft8CZmvO9rUI6YP4kL2FPLD4MBrL01YOuFKTe?=
 =?us-ascii?Q?wM/aO0rTU5lLFYeGSxTfLtdjXX23C6gjzoAy1RzVVVODEPEh45fAPiXnTQxG?=
 =?us-ascii?Q?5Gyws2H5wRaLle9KC4ayYsYoPsZEmL4doi3DXwdJepoET5Tqgbld6Qp+bg5b?=
 =?us-ascii?Q?n/2L/vNqJYFuabb1pbbHFhD1KVVAnhAZfzP8UNkqFgPW1sneFAKjHsO2xCTb?=
 =?us-ascii?Q?NFwJGbv5z6oQXmfGXU0P1aLnJtCt7qcgs38Eqz+GU1yt6I5GxQfmRsn7TSTZ?=
 =?us-ascii?Q?ZGc+tXx5mZZPTijHYa7sQuL74BYee982OlBAmw7Ohrxj7tg7egjcxp0iBvR3?=
 =?us-ascii?Q?pxL5U2VBfuU9kbxTBkWur8cRI04yb7IMaRLk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gKRhaMyVpQG59IJWwF7QY2IiN1siH0pI21ecO8uRcdTtHVNAVAr5KIjgqpCy?=
 =?us-ascii?Q?Pyh/3SoBLwwIjN8nbx423xI47XYjOwc6JToPz5gdJd7ykT6NRz25KeB7Jwub?=
 =?us-ascii?Q?tRQ9ddlXfhpB+IB1m4LotCwrGzu7T0Jdi7s2qAiwhKf2jt4TDbfLvxlSSGwL?=
 =?us-ascii?Q?5z8nss9byKapcF1SqiwoQaWM+Zz32svmDdwNCWNQtHHpkiOgE1MuCC0oZ78b?=
 =?us-ascii?Q?DTv2QSzK2x7BqIngconmiHSS1+HghJ+DEiJGB8FhSQNtPdgQfRKfv02AeR2a?=
 =?us-ascii?Q?fqm1h6SBIxHhbyddkH/lEsXBt3lofBlvvbCTAYPedrdIQu8iMP3P6yx/a+Vv?=
 =?us-ascii?Q?U5TfWS5SwHSMx+TKxWgLlkkxw1erMni0WWfVQAsXSP/WvMOhXky7LfK6V1Or?=
 =?us-ascii?Q?Af7npFAf5T4p+8WT2Jd2QhWcZCIjjklCYK23ePDlIFUDGnnrMslG0S8xJ3vg?=
 =?us-ascii?Q?uiP9jTYdx4KBxiDZlHRBF6ybyZHs1OF+oBU9C4fxXcUSajiAZTqspuiDOOWM?=
 =?us-ascii?Q?t7R1ohRhYu9zi82Bvs9Q79uzLAIXqhEUQoh0gc7VaHEaDT2CBv8YTC9tte/z?=
 =?us-ascii?Q?FMHJkCIHcxh/WhR97q3FxmvcSaZC0XeIgsWmp6u2SorwAI6JgGOc6MmkD/kT?=
 =?us-ascii?Q?lU1Bo/ndUdgeg1ZferGkFklRwrMAzeUNsd9DxzoSLrlMBVBz54TRpgwstGWq?=
 =?us-ascii?Q?01DI3+OtIIjQ2ynhx0AUBNoUygA/yTj5oSGFTPUv8tUbTDeZmjPcjnqleNDd?=
 =?us-ascii?Q?h8N+ROr5WzZ7AfVjCo9MTVplmAaDRWoeJhd1xWr/tBGY45GEdRA28IlBcMI+?=
 =?us-ascii?Q?4NTyMvWwu6LeMJB/ayDy+VrZZb69bQ3HS1gexioclC10Dstb7Lgy61R4FwI/?=
 =?us-ascii?Q?jXGZTd8wTlVsW2NMd0aJL1SptK9Rr0AtBq1l/I8gcpo/O0421cNfcZwIWWed?=
 =?us-ascii?Q?q7G7ZUaNsf9uVwKeksJWrSB9MjbHAPDV/G4nZWGOsJHNNrVfG7PQ2OWFTLKB?=
 =?us-ascii?Q?V6Ws7vhMraRJdY7zMJP8YAJExprARlSzJ7OMZs8jjXLJQdXZ2EIGbmo7I17i?=
 =?us-ascii?Q?eY3SVTDvVQ6JzgHWaaz3iY3dIM0CBtgI0ZtCaTnBW4kdTGf4ZW1J006RWyW2?=
 =?us-ascii?Q?+lpNkQWkcQb2MHi8kOQEpe0f4OHhg+RHOAFORVDZtUjakbbTP9njkA9aTNmC?=
 =?us-ascii?Q?QDxCyVKfcHaq87fdSo4N6oI64y4agRb9mGssIgqMQEv9zF0YR3Sm/ILJrZlf?=
 =?us-ascii?Q?o5xk9TWHXybviK4At3qiVbqcIoxqxuhDb/Q9r4G//ESVXZ4Ih12IDY4Idunf?=
 =?us-ascii?Q?cwZBcvR6xTZ8QyeA1m0aXGDeu+FUEHUKEWfEtKAdMb5vxJRB+gYKszc1HJo+?=
 =?us-ascii?Q?PRYa6sWckmqjdigk4xWrIQCnKqcRi1Io6emCkj3TlzXlWAGdoxR6IVgAw43Z?=
 =?us-ascii?Q?v0Th6tmul6indR6/BUo8VcuhN9IfJobIgFfhVSCBr7MNvdqm8Yj4uFd3bQiu?=
 =?us-ascii?Q?ts3ymyagOyGVRrYdJIRlEm0440jhEvR99aPBD62er8uxFMJt/rhO5U4vhQGC?=
 =?us-ascii?Q?IwfFMN/EQfMo0z1XwbX9sieRipcxH8EpyqX/Bb8yXEEgScGJPjLQJxWLdb0b?=
 =?us-ascii?Q?4p5tXU1p0NZQwSsVB7bgtd+CRlvYFkDtYPFdRA4yWffm/oBlrpc12LPSKtOn?=
 =?us-ascii?Q?gH/lcMcPMfaNegTFOF8v9PQInptmj/u8XnNOtfhwBy9l4Wq3hbergzHXIZPw?=
 =?us-ascii?Q?PcSxHSLOIw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 583185d0-3d18-4fe5-c895-08de4d31b710
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 14:41:45.2725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UJ1qHtl7keI9wGIDZNA2TRRiaOVFnp/eQd+C7gl0xXRqzmalKOwy0l63ehXkLfyhQ1pnzBOVSoOmXbYdRo+XEpJXAtxfKk0TePerPBlqedY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFA4B6D88E3
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767710510; x=1799246510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jk42+nssCHtSkMA4VvV4gZ8WnldLbDcJ/Lvw3WCTug0=;
 b=D4D6onWlgUAo4Cr6oSohtMNU18O469GbDY+YuzTLaKDOSGuFKb5miV95
 qOeKMSdqswhlQj7qXBtYUB0LQwtYo2KQXrY7FN0goW3s1E+xEroM/K9DV
 MJV/W/UEnflgwSQxeFqSNieFf4Ul7Id0PFHpcEi0PdTdqluNE9VFCHoNt
 GpRtB6S5CQBKeIlLhkaOKWOSXz3fZytDRgH6ov4RsMP7lTltx8w97uceF
 FwEKOytJSTZHpHM/nWcrN++fBUAxInyHpx/SjvpO+xlmGf3T9tQ9PW3vI
 uzy3ubzKd7cfoVOPZ/6cWfUcltWd9iz9pFprM7+EtmHiuZP3GLfB9QU4Z
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D4D6onWl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH v2 net] i40e: fix src IP mask checks and
 memcpy argument names in cloud filter
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Alo=
k Tiwari
Sent: Tuesday, November 11, 2025 12:44 AM
To: pmenzel@molgen.mpg.de; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.co=
m>; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L <=
anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch; kuba@kernel.org; davem@=
davemloft.net; edumazet@google.com; pabeni@redhat.com; horms@kernel.org; in=
tel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
Cc: alok.a.tiwarilinux@gmail.com; alok.a.tiwari@oracle.com
Subject: [Intel-wired-lan] [PATCH v2 net] i40e: fix src IP mask checks and =
memcpy argument names in cloud filter

Fix following issues in the IPv4 and IPv6 cloud filter handling logic in bo=
th the add and delete paths:

- The source-IP mask check incorrectly compares mask.src_ip[0] against
  tcf.dst_ip[0]. Update it to compare against tcf.src_ip[0]. This likely
  goes unnoticed because the check is in an "else if" path that only
  executes when dst_ip is not set, most cloud filter use cases focus on
  destination-IP matching, and the buggy condition can accidentally
  evaluate true in some cases.

- memcpy() for the IPv4 source address incorrectly uses
  ARRAY_SIZE(tcf.dst_ip) instead of ARRAY_SIZE(tcf.src_ip), although
  both arrays are the same size.

- The IPv4 memcpy operations used ARRAY_SIZE(tcf.dst_ip) and ARRAY_SIZE
  (tcf.src_ip), Update these to use sizeof(cfilter->ip.v4.dst_ip) and
  sizeof(cfilter->ip.v4.src_ip) to ensure correct and explicit copy size.

- In the IPv6 delete path, memcmp() uses sizeof(src_ip6) when comparing
  dst_ip6 fields. Replace this with sizeof(dst_ip6) to make the intent
  explicit, even though both fields are struct in6_addr.

Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
v1 -> v2
update patch subject line and replace ARRAY_SIZE with sizeof as suggested b=
y Alex and added Reviewed-by Alex and Paul.
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)
>


Unable able to create  Ipv4 and Ipv6 filter with src_ip.

Below are the commands I used to create the filters for IPV4 and IPV6.

tc filter add dev eth0 protocol ipv6 parent ffff: prio 1 flower  src_ip 200=
1:db8:0:f101::12 skip_sw hw_tc 1

Error:
RTNETLINK answers: Invalid argument
We have an error talking to the kernel

tc filter add dev eth0 protocol ip parent ffff: prio 1 flower src_ip 1.2.1.=
1 skip_sw hw_tc 1

Error:
RTNETLINK answers: Invalid argument
We have an error talking to the kernel



