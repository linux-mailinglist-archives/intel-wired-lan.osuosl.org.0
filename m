Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFTNMWqH8GnuUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:09:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB08482447
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8D7A4122E;
	Tue, 28 Apr 2026 10:09:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iwCUkXMwhynA; Tue, 28 Apr 2026 10:09:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 230C94122F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777370984;
	bh=3vHp5mISxjAtYf3j+t5sIQBwn/lSii0a6UYc+JIwNYI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oULZjd6gkAyjnLfiIaWTM+cEGY+VM4fLw9Xlq2ourCTiEIsHA5h89NGN/Xc34I872
	 Sm+RkfkwqLdjeWs8ttFvoJngJZwpRfxsqsdgSh1xAj2bwOCRm4+cHmmfaQ2ZUvHs4u
	 lvZYN2l/w1jwlJ/n6yL6vcMdG4OUnzPoHo1+y439obVHPTDBvmWH1Mf7q39w6klIqL
	 ErnpNMUteGvzstibfmoLT7SXTs8IWYFoNN53qE9M9vFx7BM0KQPtk1GEtYC/XfZR6A
	 G495fu3URk9qpDVbWMFuUcIsXWcAjUOn1XatK+qBOzICW3vZS/eDuBc46RyrbUI0YA
	 Wf9sFOj3C3x8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 230C94122F;
	Tue, 28 Apr 2026 10:09:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C66A523D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC498406B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:09:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VqOwnoC0pYEZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:09:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94BEF406B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94BEF406B2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94BEF406B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:09:41 +0000 (UTC)
X-CSE-ConnectionGUID: pB4j5WU7S/eDTjq3ujEe2Q==
X-CSE-MsgGUID: 25oAaAo6QByALIC06UeRnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78258450"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78258450"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:09:40 -0700
X-CSE-ConnectionGUID: iCQxk1pfRlGRrYW/8eWK3A==
X-CSE-MsgGUID: EZDcJEA3RGic6NoyXg1ypg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="264300844"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:09:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:09:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 03:09:37 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.20) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:09:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U4r+wdq23tXazV3izjV2kCqa3rrNTOK5A+Ae0HUFYTA9p1kKkJxjEW4IwzwgXhw1bGNnQoSy73e1I4eqJyVZ1p6DKeXCRPXYMJZIBzeApkb+7lp1JHGJX9O49sHDl+EnxFc2Hg+2boyI6qKQfI9VYUWaRaMDF3uOTujbEPjgMvrdhTGZVjK0uXnYqfcf3seW7zyZcujIf9q00mPMqs8vy/yYQ2UigJ/o4Lu5RpoUkhO4zkTuUYfQmcnrjigv9y+NgkRR2rH2eSvs0nP/RQxGoaS5femzfHuLhTfT9GKEuYLny+k6cRqbnHS6X+up47S1R5XQ6sM7UcuOPIHp68ID8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3vHp5mISxjAtYf3j+t5sIQBwn/lSii0a6UYc+JIwNYI=;
 b=NzLJVecHSLDPfYZga/qzgECHgbCBUGa99Tx9QNjExBZHHRkDV84kYOA33Y1+tYXwEkl0fkI3KXjTENnAosM7p3Oi2FfIrh34wG3GA+DmOaB4w+xIKbxdmQq/nMpkGdoeqGi6IXt62WryuLHa/6jhEGGprXl44LtxBIFuXbPgwxICe4z7bIFO93bfe4n0sHP2ep6GZ0hMvJhoFJoOGSK2BLN2gE/I3j2uQcgJKOtwpuA0LydU2nFxRb3v1Vf0YUK5fE/xLZ6E1TGc8aU9JHLhM9KhlRigMOs2YnT9ISqv+ptwMceF/KPgSYJbcq7mP1U0rw+SJXuQJWX/vbhuSROMsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Tue, 28 Apr
 2026 10:09:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 10:09:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>, "R, Bharath" <bharath.r@intel.com>, "Salin,
 Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 02/14] libie: add PCI
 device initialization helpers to libie
Thread-Index: AQHc1ujc28MfH5Z8SkSpCjwBiQLRL7X0QE0w
Date: Tue, 28 Apr 2026 10:09:31 +0000
Message-ID: <IA3PR11MB8986CC82F38D627AD8B0C420E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-3-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-3-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4716:EE_
x-ms-office365-filtering-correlation-id: 6fb024c2-cbb0-42ef-3fa2-08dea50e3db5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|18002099003|38070700021|56012099003;
x-microsoft-antispam-message-info: b+mxuMI5TG9s6O5w419MlW43YIpSlPPQFUi57F5sg0qw1f1NvOR+9zE0N60uspKdHYllZP1P9JWnv2X9TugdOJG5Gnyb0bhL5SVky/PhMH8rDnuMow5Hf/UdFYURqE/bVT6zO0wx+0MKhgDqh3Fgi7Au7RzFpZZwn7yNSxbjYpYKcswKwRWbSZFdN36w5XUKVD3RsbuIvCFQjBSuZczZ5bp2CAH8p+fGXvtaqVAKLy0VDt3sdnzhOlOcjILlDX5PxcF5QSnsEPjSkzMp9n7Eo0HHhtC4lws99JthLZfOYpLv1OGLYXd+INRu2RTMI60auvlsplJdAbRMXXEq4AbT/G1NM5CXxLumKgkk+OX5Uf4Gt+gn/gwMB7u/SPrR81TyhDemRx9k7fQNB61lgl32xwCTqS8goS0ZEreNIOvlfn6+eBysnF7DHE+VbZ/SYfDOK1VskQIqt6MjvnZar2Ugou3OGaEDutnNZfiYZEooqdNjY0YpnkBhsOTSB6RGmxTvdaYIT5f64I+gdopH0aOgS1jVnHtAQV+zXE6/LWqm174ZMeuCGm69e4AkJka/e61935KT0sot4jVY3ii7y4FxiytytwJcIsGBEFH9c5bD5cwTULvIH+CwK+yVypja2zekmHAdoCHw5u0cDcfNHWULZT12cBVfhLlR9XTO8WvJ1rhBbUYgtV/Lh1fGES0w4cyK59+t4cMFFxB4LlZRz5F8CFBqQo5ICeRyC5/5fhSzNPX5fez958qHHX1XyZGHm26o4+C0RS720S1gKio5p0h7Mwebtc3ZW11TDpprUlv3vmU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(18002099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aWjTErBGGeqjOLfyOl+qTJKCc3WQt02BpwiWW0UmApoxdJUuGY3FW0seUD/7?=
 =?us-ascii?Q?/Wib40Sk6YWRjQh50sqNtXisJiFOipDMS16F2GfWaAE04Z6OSWzn58iihwjI?=
 =?us-ascii?Q?nzuCMCnxNcbcsu1Qys1eFGCkF0NODBxE8DjZHpuF3Klp5Viy0K0ufqhmMWvi?=
 =?us-ascii?Q?6rRfKRPzAQ/6bBkXPMTEt8MRpzv9z2Q6M1iyA/PgivzGieeJym71cMHzQxt/?=
 =?us-ascii?Q?rdGBGGN4JlF4QVLG5mhzf9phrN1Ge6uoTB6Gy2bWBdVVBOMj9/xdebrmiHvm?=
 =?us-ascii?Q?CooYU1aE3SlyzwhBaKvtDpNCA17vgBXxvnCZnHZzi20/I2ml7kVg9FJYJ4Vc?=
 =?us-ascii?Q?sngaxy3BNS1QzeNA6CH7Mu2t04McXZ98czc6fbIrq4/P+z7xV5x5NCRRW9cR?=
 =?us-ascii?Q?pbdTvMuNo/CaDM6oPozaHImIyYybBt8695kjRdvmgKlaQeNFmHtg+wykznhx?=
 =?us-ascii?Q?JmQ+z3aLv2NFwgCQlMmwUWVh/E3Cd4YWQPUfKxWecCH/PmUUyzaqVhO8HBNL?=
 =?us-ascii?Q?ZDkh/lgJTkyYlpO9dOabfIlzVOqxmdglGVkJsdpYgpo26NVrKBkyNV3rkYQt?=
 =?us-ascii?Q?QkrziZPwKuG5AhFAAOi4ty2kTKefdBfYY7K2bEsxDuRTN3HCjYLu+vILCGtm?=
 =?us-ascii?Q?TsZpTmtqanoeTuBglaz6+UassJqejVRIaclnAvXbu5xheeGRLTEC8ldoTEts?=
 =?us-ascii?Q?N6opyWXYXvVOIQ7TkXmG4c4UnkTsCFSy1NQ55PpVV4S6aDaCemrrVYmk83Dy?=
 =?us-ascii?Q?2AnQ/3XXzX11huAcTGOVGufNPvEdz4O+q2WhE9EVZJNClznM3tfOFC5BcnJQ?=
 =?us-ascii?Q?c0eFLPBXm0/G8zcrZF93NfflqDphovmQEZZlJEvS6VgdznYZC5o5Bjxslifa?=
 =?us-ascii?Q?vg0nIt+t5VpVeBAdBPeQTgxi5jA4CxJR5eMu4o9KG3mmScCrJw00GNta4DzI?=
 =?us-ascii?Q?Di/xIhREQ+dPbaqKBFN4oAxcG4e5xbyIV6i2PtpVKOqewsx33VEQMhYBofZM?=
 =?us-ascii?Q?vxl9Qmh9+zLdfuomIao+OskKH0lIX4aNnlW4v4T9/IgBrxTZRyhwUQXBtRW4?=
 =?us-ascii?Q?sLhqJVBEAx15k9GX/TE8CQCv6Qq0d03dJcplQRBjaY/KQrbTomCegPRALX3h?=
 =?us-ascii?Q?gayOciQgHoRNET3DoGTU5EMbqsVK9KqRDJZJm8a/6OeysJDG428x2FsyGFHD?=
 =?us-ascii?Q?WDZcd8B0sRB5q3Ygzvge65KBDpRcMkdfVv1ZHDalFuYEJpnVEatB4lNLMnSf?=
 =?us-ascii?Q?sg1sSVrTP8Xu7gJ8dYAhorz9q9JS7iqOmZw/edOBEG1drqwTiJnQI4ggaDFe?=
 =?us-ascii?Q?Cy74EIA/kK52aqSKDHFzaR8bnP6+V2HYonakyrWIJpjqnnMWUj2MmNrhZOPV?=
 =?us-ascii?Q?ke3Yuge71yzbl/ijWXo4Ei9btqAj+5bEqOX0URv47W0hZDSkTkrQdSCnuyOB?=
 =?us-ascii?Q?4FlmjMBgDLx6ttBbFUV+Ub0tGbyuHQH0eVoUzyrI/1I3bEgJtEtiE/AAZ8xk?=
 =?us-ascii?Q?2TPfU7h43s0BXCYwb58oUzxFQBTaLBYMlQ2pPG9ncZtbbZUx0l41KdYM6AKH?=
 =?us-ascii?Q?QLtF4JSFHmFPWz2F6S/vp5ZUL8ORqTFJjBW98T6HFjqXAt6c3w9SGxeG4Fs3?=
 =?us-ascii?Q?9QgHBVetwOAGs38yNotOU4kP/qeDo48Tz5P1ept383Qk1mw66txHm5PGjVCn?=
 =?us-ascii?Q?rx5gteJhknouQbCApSZhW7Ywj2ImW23+bscf/MuFhHciqDfYTluutUQytRyS?=
 =?us-ascii?Q?AbWrf5XYKyVkh5awjsapOY9kWJvz8e0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: h33S/ANhgFEqi9TQ89+gBlD3L7SOV7012gojfPaf/Da95r5BCG2DOMUV2zs+bwWxPn+ZvGn1ehwnCk4kd9NCBmnmPPCJRu14+L/rBbpIlc918InPw9k9VyX50CxfQenEyizEcVqgw4QnzviU0Yn5TVR9iMydBqT6T05z0sBk8xzoSm1KPHsOsEuqVd4g4enak5DbP2OnzEHUdDZ4lZe2JpU5kkeHU5410t04oDSe2C78W5MTUowc3NrR6qcxfcYyDF0XwCOrB3aMd1x+IN8Sy0HpmqOikIPjASKAG3xX95RarT/HlWKdUPdMqWvbyt1cQinE53OosICsv2XD0V/P9Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fb024c2-cbb0-42ef-3fa2-08dea50e3db5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 10:09:31.6030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TpzQqkFC6/KggvncF4Lwdgo79T1YCUicnAHCTlvbypll5NQ+vWpEJBtNHDyGDrU5cCRPSWn3bh3+Kqp8H+grYEaYzRMjgnFDQxUAhohh2M4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777370981; x=1808906981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4vryTFhIjc82mKkm0bWln6Pkifahwk89Hjgp9GhVX2M=;
 b=ZLW+Eg5wn8Fhs19hOvkafMUl1vPBFU1FPfb3hoyUQlsUiJWJvzkXXvMJ
 NgOB2MwiaXF8c/6BpqQS+Waq3Bz9GSMgIPbz2xe21PQrPMs6KjChmP8cL
 7Cn/hF7OvcDtF5xqJLnRJRWPe2yslKtsU0XpA4H6eW5EeAAkNdV29QHAl
 wa7KrORIvgibFHjtkrHyH99LfxMsxEkBfOFCqAuONvU9biCXloNHrm11M
 4ra45JZIVziJIcyumfiyQKbNsVZT/3UrN+xn/LQWN1uiLnDALgtd2dvby
 HB/b4NDvkIGu1DIF4Tp2R89A96rsqLc0AoLaMhmMLSDPKJwMEdxKSFxoa
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZLW+Eg5w
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 02/14] libie: add PCI
 device initialization helpers to libie
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
X-Rspamd-Queue-Id: 2AB08482447
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phani.r.burra@intel.com,m:bharath.r@intel.com,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.957];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Burra, Phani R
> <phani.r.burra@intel.com>; R, Bharath <bharath.r@intel.com>; Salin,
> Samuel <samuel.salin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 02/14] libie: add PCI
> device initialization helpers to libie
>=20
> From: Phani R Burra <phani.r.burra@intel.com>
>=20
> Add support functions for drivers to configure PCI functionality and
> access MMIO space.
>=20
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <bharath.r@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/libie/Kconfig  |   6 +
>  drivers/net/ethernet/intel/libie/Makefile |   4 +
>  drivers/net/ethernet/intel/libie/pci.c    | 208
> ++++++++++++++++++++++
>  include/linux/intel/libie/pci.h           |  56 ++++++
>  4 files changed, 274 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/libie/pci.c
>  create mode 100644 include/linux/intel/libie/pci.h
>=20
> diff --git a/drivers/net/ethernet/intel/libie/Kconfig
> b/drivers/net/ethernet/intel/libie/Kconfig
> index 70831c7e336e..500a95c944a8 100644
> --- a/drivers/net/ethernet/intel/libie/Kconfig
> +++ b/drivers/net/ethernet/intel/libie/Kconfig
> @@ -23,3 +23,9 @@ config LIBIE_FWLOG
>  	  for it. Firmware logging is using admin queue interface to
> communicate
>  	  with the device. Debugfs is a user interface used to config
> logging
>  	  and dump all collected logs.

...

> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
