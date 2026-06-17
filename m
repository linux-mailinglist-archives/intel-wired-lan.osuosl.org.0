Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mV+CNRGxMmq23gUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 16:37:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C86669A961
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 16:37:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=eE6jn2z0;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 881D44EDDB;
	Wed, 17 Jun 2026 14:37:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rqY1pWo8eIYS; Wed, 17 Jun 2026 14:37:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 977FB4EDE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781707021;
	bh=IfTuwQtrvu6DlUY4YX5WWrpwTc5aSXr63e8DcxmjZnU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eE6jn2z054xaJViu1h9K+1LApaezONNlEosc4oN1OZUchZ4IzNERu4VuP8Fsk4OrK
	 q0eJRJOxgCd8InYJ0aFmDDUsMB936s51Lb+Pz3dbFCkFCUnL/66O0Qfq5Myw5OmQJB
	 OKFTTGImtkIF0fQXCkPth9w8KfCVMjILqOUu8XhOjvNRIOQeZ8kmj9eXXOvHuycYSp
	 EfXRzdZZvs6QjKIZVJ+wrwn25CaQdNELK9YdyKi5g2u38427DXfTGMDgVwZX+wcV2u
	 yngRLHDOzTevn5hUsLGVzu9tsUjmYuRvckNTdlDanvNBsTZivAAScZMWTDZwD5I3jV
	 AHoSYtB5YGFkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 977FB4EDE1;
	Wed, 17 Jun 2026 14:37:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 64909347
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 14:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A66140647
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 14:37:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 35YMB6S-msxw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 14:36:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 76CA240145
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76CA240145
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 76CA240145
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 14:36:59 +0000 (UTC)
X-CSE-ConnectionGUID: M2lc0TSWRLOAzLHYCFhibw==
X-CSE-MsgGUID: oh5GmIvrT5+UGHwaJ4hoGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="99914035"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="99914035"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 07:36:53 -0700
X-CSE-ConnectionGUID: 5ly3y8C5TUSL0jbE2HEHqA==
X-CSE-MsgGUID: z9klPXHPQ2uK/Z/TOheFNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="241728315"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 07:36:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 07:36:52 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 07:36:52 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.46) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 07:36:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zx9jXmYjI1yjCOIdxgj44Yw9s6dUrDrwrO8UhVG0Q1kvilWD6YQbnzRRbYD8V9nRR0U2hFL5sUH9PHD6I2Y/aN/YoRCsSUXyhLLJ61E4G4bsRgr+uJcQELlWpzrA1GUzfgLYmB3cTAdJ4nsJRsXdWTmboXf9ae/aZeJjImJvUzbFNzUhWtwqVm4mnyR+jpcTGR8ONxlTL59TMyt7ewL3AfDQJZwozV3IWiEb3vMqEdym77k61+WMkzTu2YL4ekWVKZxVcxxCUMk0DkymsX3f3kb2GVM1xwIPIWCYYcfzPW2CR5SEzZp0g/gnm9P7WVjTjrcf5LRh1MoHNGEjGjOWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfTuwQtrvu6DlUY4YX5WWrpwTc5aSXr63e8DcxmjZnU=;
 b=jaIbt4AdDZ0xXfTjyxNDkNbAfw494y4n/Rp7LdErD/lM4uSCDxHF6z3ZYKy42MXoTZCb05ILocZpUM/qFCbn/ftuZ33wlLcvKAVUOY6ccUEymemvuTPvJgnUVIjM2dbM6C4ECYCtf2PqWtvniglABmUZ2sopz5uu5lQ+Flb8q0Z3vxgJdDEKs3frUpQ3+obbJm6nGRcUlsRofLZKulSoeFgTpZDFzinWxcAyOhL98+8/OB0Vz2irNB+KTnh+JRKA/Vsa6OP2lKB5lkvMEvV0MpL2awoSZfsglEmpAkGijhJupghSA2lFYh7ZLR9zoDpDKpcyhU4s4svs6mZtrODV8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6864.namprd11.prod.outlook.com (2603:10b6:303:21b::16)
 by CH3PR11MB7723.namprd11.prod.outlook.com (2603:10b6:610:127::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 14:36:48 +0000
Received: from MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b]) by MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b%7]) with mapi id 15.21.0139.009; Wed, 17 Jun 2026
 14:36:48 +0000
From: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Implement PCI reset
 handler
Thread-Index: AQHc/jVtv5IL+H7VikSB39F6YJ4mzLZCc+UAgABZxFA=
Date: Wed, 17 Jun 2026 14:36:48 +0000
Message-ID: <MW4PR11MB6864BC9CA84F060AF7E0248480E42@MW4PR11MB6864.namprd11.prod.outlook.com>
References: <20260617084329.199110-1-sergey.temerkhanov@intel.com>
 <bd5ab9e3-ab93-43ad-a2ce-03d56e2d2ecf@molgen.mpg.de>
In-Reply-To: <bd5ab9e3-ab93-43ad-a2ce-03d56e2d2ecf@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6864:EE_|CH3PR11MB7723:EE_
x-ms-office365-filtering-correlation-id: 5a490179-0a0d-4816-792c-08decc7ddd11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|38070700021|18002099003|22082099003|56012099006|5023799004|11063799006|4143699003|6133799003;
x-microsoft-antispam-message-info: 0fENVNWK3XASQXZGyMJGWNBvktJmoIknmuRrhUvC9pLwSJU5mjcYBEzydXd+vsgW4o6+n7pEBSBQOTwvWfQs1RVmB9RTE9xhuvcBTAG6sCViWFJ2bsJq7LTpf7dH+nAv7oP7fKDNaE0vOxImOnI1vQOVRFN33YfZ/CWt7/OskcoYPE5NaBzyTParjLHDDK3JQ/DR5RGHx4H1BdQ42C/3EYxy99cVfu5w+BgOIu4Rti2JNkSIPs4b0Vc0VG2zw0/viReztkMCHOab5e8MJ2nh7qFD5WCsOptijdUT/mcvye6mPhBCEuiXJwGmL8kMR2Ay+4g20WI5/aGGzdGt1MJ8Kp17Mp9Ske9zOm3AXGboYNpeJSs11g8f2qcwKTbcU9nKBYXfEihD1udFlnEPXfU9TtZvMZ0gaC1o2RtjrFd66emrjlkKJwiqeqcn2RKSpiJMAu3rzHOJDzsbHYSVllpitTp1C+buT8GNLbDRvmnZWm3RBkRtYuC5pinOwSoNxwMWI6YB1o0y/70yIAhtpYQB/QQ8kPRIYETAZepZSRH7mABxJrarAoAccHiJdLIRiy2KY51d9H6/bGR233kP9H6pZTZsEKlm7dZinBWoIO+Gs+KrB7ZdbfvV0S6oJ38plqZR52Yw3SvCuWEUUQE5PGse1BYZKrBZKJu6nyx2FvLKfvnqqwIB2HMoXPCyNXKs5woJQz5U1SxZgf7OAPGzifcDR6OAr5qyHPYE1mUa41n1czxs7mRS26VuVzRZOzO38Ctx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6864.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(38070700021)(18002099003)(22082099003)(56012099006)(5023799004)(11063799006)(4143699003)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTRnVFFDanY2L3AyWFVueFBKNTh2cXEyZGRya2xSQ3lYMGhwN0QrNDhaZ01N?=
 =?utf-8?B?WHU5emdCbkRIaVU5aE1Zb3VVMG1nMGVCQ3JYVWZ4Q0U5WFFtTGNyQ1g5Y1ow?=
 =?utf-8?B?SEpMbENQTVE2T0pUWGJXcW95VGE2N2pNWEh3K2o0Z2hhaDNraFExVERobzdl?=
 =?utf-8?B?ZlRVSjNXRTZoUTBuWk5JREYxSWVFTFBNbXEwS2UwK2l6c2daTk56NXllNTc4?=
 =?utf-8?B?NEw0UGNpYjRQVTE1QjRqcTUyVUJJc3BnOUV0YmE1NHZJTmVZNHBoR2ttSjM5?=
 =?utf-8?B?aFcwL2dMMXRrNFZQUGY2SGkyNkZIcFFRS05wWktQdGVUTy9rWmFuVUR1SkQ4?=
 =?utf-8?B?eDdpeW9wc2RHZEw5WmlOcng4NGpxNGw0dWhib2Z2Q2lmMm1QTmtxRlI0Z1Zl?=
 =?utf-8?B?Vy81bHp5OEc4WmNMTFNUTm1ZM0V6TkVLNDJFZCs2U2I4TW1naVk5TkRjVG9W?=
 =?utf-8?B?clIrOFVuNUNxUDRnSXR6V1pSZ1lLU1hMQnhxd0RFbzRZZ2Z5RFNWSkYrcHB2?=
 =?utf-8?B?VGFLME5Ta3FBZ0ZsS1hEdXVqNjdLVW9oWjJxQlRaVHRXSGp3ZWh3akJHY0M0?=
 =?utf-8?B?QU1uK3NYVDlMR1FQYXBidk1lNHZ5eXQzMVJlVXFzeUxBOGdkYzZpd2wyKysw?=
 =?utf-8?B?ZVRCMlZZQVJFVlRiNVp6bVVuZnAwY2xIcklBdXlWTzE1TDNmWUF6Y1NRYUo2?=
 =?utf-8?B?NTI4RUZ5UFBlMTZBekZaUTg4RVpuV3ZFdWxtYkpKQk1hTndHSlIrSnZuSjFV?=
 =?utf-8?B?bjVaWldseFpSRnh4ejhMckhCdDRsUUxuZ2tNZ0lhL2JKMzRCTUZRYmVGdzd3?=
 =?utf-8?B?RTZxMU5aWUtQYTQ4WEZ4Y2pEaVpwZ0hZYTdOWWlGUXYvVWY2MHdtTm91Unor?=
 =?utf-8?B?Wm9JYmxIS0xtMXc2ajAwRk5Id09ORmNyMU45cFVIUUJBNHE1Vm95U0UxWER0?=
 =?utf-8?B?dFprWXpqQ0hEL0psRTNNYnRtbGRHQ1U2OU5qbWtFaTA5U3h6ZGZTVmJtbFVY?=
 =?utf-8?B?ZU43YzFEcUNCM0xURy9EMXJ6a1pFMG13U1VaSzdnYkVrT0F6dGZPMWdDemMw?=
 =?utf-8?B?aEI3cUtlN1Y4UWVUNUxvY2dmSXhzZ0pGOFcrSU05WXRYZ2N6NTdUc0plK3dv?=
 =?utf-8?B?b1pNYzE5cmtDZzhBK0hnVmUxQm14WjBLNWdCU1Z6cHVRL2NrT3NvQ1ZTRjZQ?=
 =?utf-8?B?Y2hWSy9DRytDd2h3QjRQMHRYMkp1ODVJZkx1QkZheUR3cGZSb1V4RWVtWExY?=
 =?utf-8?B?QzBhaElFdVJNWE4rQXZSTk5xUDZibk0yWHRMQ24reWRTQmZOR3pXWWVjdUdy?=
 =?utf-8?B?R1RqMGxmVFpzOXhwNnpFVE1rQWxLblc1Q3dPZEowdU0wREFwUWZGd3NmcVVQ?=
 =?utf-8?B?alNyV3NYdm9QSFVDb2NhVVU5ODA1cEgvWmhGWGNCMzRWakFoT3ZJQURsV1hv?=
 =?utf-8?B?YWJCMWo2QUgyeEUxaXJlajlrQ0ZiOGZuUWRnalBRKzFuNVg3SkJwZVRpendV?=
 =?utf-8?B?MXFEeURXWnZVM3JBUFRpSXBRVVlMWERNL1o4cDdLRGpSYmlJMi9ad0hSaGRY?=
 =?utf-8?B?Wk1SV2RCSDF0ckFDTmIrV2FqTHcwQ2JEMUFyRmY2Y3g2UDAxcndjYWJFNFlz?=
 =?utf-8?B?YmZJN2hLWVJKK2N2UlpDWjNKbjVQNUFCbXNCckVZWjlFbVNMT0UveGNWK2Ix?=
 =?utf-8?B?RmIrL0phQ1JKOEhNU29LdEZrM21kcFF1ZThaSW9Hemx5REJVY3g2Z2tnT3dk?=
 =?utf-8?B?WmdxMG1DK1JuREwzRkd0cnFoVmZUWW5RVkd2MlY1bFB2TTBJMWFrUEdpbWRG?=
 =?utf-8?B?bDRWUUJVeDVhWmZxU3FjWCt0TTJmSXEwQklNY1B3Qk5xN29sYkdIRCtFeERB?=
 =?utf-8?B?WkNNZENnWUxTajNtdjBvdFFjcFU3UUdnQVk0T0NZTUtsSjZwQkNQU1VENFlC?=
 =?utf-8?B?S0o5bkJKbGlQZ2NSMlhyWkhvTjNXRkRaZG9iTk1VSGl3VG96TE1yYm5RVWxL?=
 =?utf-8?B?NmhmTFh2MngvaHgrZHYrTzBuc05oQnVDQ0JRK3F3UnRKdytNVGMzS0VVenhT?=
 =?utf-8?B?dUFJNks0QkFjZkhvUDRnNGI0NWxFc044anFjWkNxTkxKS3NnMnVzMVB5UFd2?=
 =?utf-8?B?QThrME10UWt0ZDRGTjZnTDJ2Q2E1UHNJY3UvZ2FqamxEczhnS3pBVEN5R0pW?=
 =?utf-8?B?M2tFMytwM1cwZE8wZTVnM0t2eFRFWHZEcC95eHpXa2d4MnhOckVjMHRXVHhS?=
 =?utf-8?B?amk4M01RYXF6akNvbmhOOFJaTVNkR01XNThrUDlCblBGUlN6THY5Q3cvekhj?=
 =?utf-8?B?V3J5Z3hpRTViKy9YVzdlQTgyRE9CMWF0ZGJKM1U0WEpMd3VUTnVPQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: aVQ1uMk+0+w6ifJe0yJNkMvpYxKHaOhgWXKpKXzcYH0He9BFM9/EVq3nWkvDWz26IhcSNjqZe7ms7q6EDEykQe1Vnd9dqUaufepKhx6FXorbrCk3ho34M+QN7Z5LioeJSV33eiEqnGQ/tsbT4hqhebcnEWWNqcVDRFqT7GmiyRnVtmiO6qq0tKYF+zIAtOPrWXgX0GIOKX0uKSUkeFkHoPu2jo3ieEPKLryXAETS5rp4O0AxucLJ4kFD4GTQ/G+VAEDYeXMf2ZKHWWmeWzMzqOFrUnoXIb57GljsXc//SbPd0ZMgzUcCcyBJxaNnypxy4S7ICzIfmqcgzJYLP0tNfg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6864.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a490179-0a0d-4816-792c-08decc7ddd11
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 14:36:48.3591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uY893kzMxI37r4UmncNtFkw+gR8dpUeJL3NGuWfIRQHazkPcoHFEeUUD4vPFgKxUGfO76C/c26ceTGyI1Qytn4MQfLGjBUyJ4+73G5u5A+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7723
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781707020; x=1813243020;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IfTuwQtrvu6DlUY4YX5WWrpwTc5aSXr63e8DcxmjZnU=;
 b=loKGjZ7fEldf6s2S6WHoihRJo5Sf2Ioa+lIWekkE+ExAVMYoYisKbZaB
 Axc28fASF4yS/fBZI5aq57X6O4vMQnxr/xLsp3VsBjv+iT6u7kVUMIK1h
 dyksc0xTUr1GAPceq+6QCigqLvJyEwevgXm38fRg5NNg5O3VVWLALObWK
 zKFu+wRlBXcxiMo8bZVruZLTOvazUZ5c2ql7Ox2yE8gqhLiH+Ly4CuyzK
 ki+Hab1y/jMUXameVx+dRJk8f2gBzsfY/EKeDhAXkmmnPgzIRGE0dHZ5G
 ILDl6m4Tc0LahvXjWP5sqXYNFoQICqocXaZBBEUKbUZD7znY9k2ADvzCG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=loKGjZ7f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Implement PCI
 reset handler
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
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:bhelgaas@google.com,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[MW4PR11MB6864.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C86669A961

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDE3LCAyMDI2IDEx
OjAzIEFNDQo+IFRvOiBUZW1lcmtoYW5vdiwgU2VyZ2V5IDxzZXJnZXkudGVtZXJraGFub3ZAaW50
ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2
Z2VyLmtlcm5lbC5vcmc7IExva3Rpb25vdiwNCj4gQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlv
bm92QGludGVsLmNvbT47IEJqb3JuIEhlbGdhYXMNCj4gPGJoZWxnYWFzQGdvb2dsZS5jb20+OyBs
aW51eC1wY2lAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgdjFdIGl4Z2JlOiBJbXBsZW1lbnQgUENJIHJlc2V0DQo+IGhhbmRs
ZXINCj4gDQo+IFtDYzogK0FsZWtzYW5kciAoYXMgaW4gUmV2aWV3ZWQtYnk6KSwgK1BDSSBzdWJz
eXN0ZW1dDQo+IA0KPiBEZWFyIFNlcmdleSwNCj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHlvdXIg
cGF0Y2guDQo+IA0KPiBBbSAxNy4wNi4yNiB1bSAxMDo0MyBzY2hyaWViIFNlcmdleSBUZW1lcmto
YW5vdjoNCj4gPiBJbXBsZW1lbnQgUENJIGRldmljZSByZXNldCBoYW5kbGVyIHRvIGFsbG93IHRo
ZSBuZXR3b3JrIGRldmljZSB0byBnZXQNCj4gPiByZS1pbml0aWFsaXplZCBhbmQgZnVuY3Rpb24g
YWZ0ZXIgYSBQQ0ktbGV2ZWwgcmVzZXQuDQo+IA0KPiBQbGVhc2UgZGVzY3JpYmUgdGhlIHByb2Js
ZW0gaW4gbW9yZSBkZXRhaWwuIFdoZW4gZG9lcyBQQ0ktbGV2ZWwgcmVzZXQgb2NjdXIsDQo+IGFu
ZCB3aGF0IGlzIHRoZSBjdXJyZW50IHByb2JsZW1hdGljIHNpdHVhdGlvbj8NCg0KVGhlIGFjdHVh
bCBzY2VuYXJpbyBpcyB3aGVuIGEgcmVzZXQgaXMgaW52b2tlZCB2aWEgc3lzZnMgZHVyaW5nIHRo
ZSBvcGVyYXRpb24gYW5kIHRoZSBhZGFwdGVyIGlzIG5vdA0KcHJvcGVybHkgcmVzdG9yaW5nIGl0
cyBzdGF0ZSB0aGVyZWFmdGVyIHJlc3VsdGluZyBpbiBhIFRYIHF1ZXVlIHRpbWVvdXQuDQoNCj4g
DQo+IEFsc28sIHdoYXQgaXMgaXhnYmUgc3BlY2lmaWMgY29tcGFyZWQgdG8gYSBnZW5lcmFsIFBD
SWUgaW1wbGVtZW50YXRpb24/DQo+IA0KPiBQbGVhc2Ugc2hhcmUgZGV0YWlscyBob3cgdG8gdGVz
dCBpdCwgYW5kIGhvdyB5b3UgdGVzdGVkIGl0Lg0KDQpUaGUgdGVzdCBpcyBzaW1wbGU6DQotIFJ1
biB0cmFmZmljIG9uIHRoZSBhZGFwdGVyDQotIEluaXRpYXRlIHJlc2V0IHZpYSBzeXNmcw0KLSBP
YnNlcnZlIFRYIHF1ZXVlIFdEVCB0aW1lb3V0IHcvbyB0aGlzIGNoYW5nZQ0KDQo+ID4gKyNkZWZp
bmUgSVhHQkVfUENJRV9SRVNFVF9SRVRSSUVTIDEwMDANCj4gDQo+IFdoeSAxMDAwPyBJc27igJl0
IHRoZXJlIGEgZ2VuZXJpYyBQQ0llIG1hY3JvPyBQbGVhc2UgZXh0ZW5kIHRoZSBjb21taXQNCj4g
bWVzc2FnZS4NCg0KVGhpcyBpcyBnb2luZyB0byBiZSByZXBsYWNlZCBpbiB2Mg0KDQo+ID4gKwlp
ZiAodGVzdF9iaXQoX19JWEdCRV9TRVJWSUNFX0lOSVRFRCwgJmFkYXB0ZXItPnN0YXRlKSkgew0K
PiA+ICsJCXRpbWVyX2RlbGV0ZV9zeW5jKCZhZGFwdGVyLT5zZXJ2aWNlX3RpbWVyKTsNCj4gPiAr
CQkvKiBQcmV2ZW50IHRoZSBzZXJ2aWNlIHRhc2sgZnJvbSBydW5uaW5nIHdoaWxlIHdlJ3JlIHJl
c2V0dGluZy4NCj4gKi8NCj4gDQo+IE9uZSBvZiB0aGUgdHdvIGNvbW1lbnRzIHNlZW1zIHJlZHVu
ZGFudC4NCg0KSSBhbSBjbGFyaWZ5aW5nIHRoaXMgaW4gdjIuIEVzc2VudGlhbGx5LCB0aGUgdGlt
ZXIgY2FsbGJhY2sgbWF5IHF1ZXVlIGEgd29yaywgY2FuY2VsX3dvcmtfc3luYygpDQpjYW5jZWxz
IGFueSBpbnN0YW5jZSB0aGF0IG1heSBoYXZlIGJlZW4gYWxyZWFkeSBwZW5kaW5nLg0KDQo+IA0K
PiA+ICsJCWNhbmNlbF93b3JrX3N5bmMoJmFkYXB0ZXItPnNlcnZpY2VfdGFzayk7DQo+ID4gKwl9
DQo+IHByb2dyZXNzXG4iKTsNCj4gDQo+IEhvdyBjYW4gdGhpcyBoYXBwZW4/IFdoYXQgc2hvdWxk
IHRoZSB1c2VyIHJlYWRpbmcgdGhpcyBlcnJvciBkbz8NCg0KVW5kZXIgdGhlIG5vcm1hbCBjaXJj
dW1zdGFuY2VzIHdlIHNob3VsZCBuZXZlciBnZXQgaGVyZSwgSSBhbSBhZGRpbmcgYSBjb21tZW50
IGluIHYyDQoNCj4gPiAgIHN0YXRpYyBERUZJTkVfU0lNUExFX0RFVl9QTV9PUFMoaXhnYmVfcG1f
b3BzLCBpeGdiZV9zdXNwZW5kLA0KPiA+IGl4Z2JlX3Jlc3VtZSk7DQo+IA0KPiBLaW5kIHJlZ2Fy
ZHMsDQo+IA0KPiBQYXVsDQoNClJlZ2FyZHMsDQpTZXJnZXkNCg==
