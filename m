Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPR+LiQZymk65QUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 08:33:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8653F355F8E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 08:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC9288110D;
	Mon, 30 Mar 2026 06:33:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o6ngsj8GL7bH; Mon, 30 Mar 2026 06:33:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BDDE8110F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774852383;
	bh=CpfCHXvR4COo3qKFgni8p2AHo2tQQLqmCZ3LveheOJQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lDYPtZOdlJc+LAMjSV+eI8tooVFKIqrvtPWQQXrBCe+TU43tCmaKK0BnzsP07SjFt
	 mF+NasICzhs9cN+sKaJquFhqrQqqG6I8tShYOTW98UF89EMak5UT/t7noBMYVdA0Nz
	 m0zX1cqvfx7h/1W7Lyyi6ovUIthE+EvBMuYjo+qz658xhrtOeNtT9RC9YPPcG9yT4v
	 1xgSsQj+dv79KCKJh9o6WGuiKeiz0hj+xJRaNYfYAfaxXAEko9ij9dgt9PL3J5mwa1
	 9E+VBDYlrUzjS/DkXdwAY9Tw/rKjuQ9zWKsEhls7HnC3WJGqf4/GAFULGH9xZb0j8y
	 vrG/BnFGnPpMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BDDE8110F;
	Mon, 30 Mar 2026 06:33:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B941C1D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 06:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA5CB60AA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 06:33:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N1CHM_kfmzXp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 06:33:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EDF1660AA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDF1660AA1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDF1660AA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 06:33:00 +0000 (UTC)
X-CSE-ConnectionGUID: y9iIrh1QTBC+Er37WZbUCg==
X-CSE-MsgGUID: 84I21lXWTD+tkBLR9Te+Hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="78434185"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="78434185"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2026 23:33:00 -0700
X-CSE-ConnectionGUID: JaL93YO5T2qcQdFkdzrPuA==
X-CSE-MsgGUID: EoOoy0rCQvqldXgBeV7Jcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="223094976"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2026 23:33:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 29 Mar 2026 23:32:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 29 Mar 2026 23:32:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 29 Mar 2026 23:32:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RR6eCG0dXGyjSRFUFqQEZHLlSemablxQaEg+vo13c7k82+1H+yUv0MMYb+U5Lu0AN1C046quI5/gXSBQ5/Dp4X01Vuu49Qgo7a2S5z1MEnYvCAfpWfwIbz65cexxOSCGGFQQS84Zk4qINGjrZd27qe2N+uHR5cO5AxV2kLN44vckXuphJonZdtIvH5HTsYTBWpQ/XJH2XyCkjmEwoaYtTdUBU2lqc1RYV/ejYNJjw28/P9diVCm4cNZg8kAKLmQdy+U1iz7vqnghy7+zsRRQltqAgdCN7vddui/uGum3j9dEAlf83KYnjQOQy3hwC36ltpzF2yqhIA4vvpr9sZQx8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpfCHXvR4COo3qKFgni8p2AHo2tQQLqmCZ3LveheOJQ=;
 b=HENlbSlOgYWBIkk/Caqoq9mu4VVp2o8voCTRv8UcZF14iit/mgVoo7sSQwAY+8hcGHzZXck2zzFFAK5XD0nQRYTpJjKzVf+JwB3XUaWBjGpItX+13WfOqrbjYM5LRCtArSw8LYXOhLyr5d7EHa6S0HoF6zJ6QqMPxnQLNm4J2vo8odYeUUYJ22LKaph0JAVOlfxGKgdqwezn8siwSrr4Yr4soBHyM4i2U4UnipXcKiiQLvhnSsf0zHHwOHrX+rb4fdpoG0k+MzF6HmMUthOct/yb60qNsuwZer7rRyOM+G1utJLlSZc8wjs0LFLBlvNut5Ck24Ocb/25BofviznAHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB6657.namprd11.prod.outlook.com (2603:10b6:510:1c0::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 06:32:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Mon, 30 Mar 2026
 06:32:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix potential skb leak
 in igc_fpe_xmit_smd_frame()
Thread-Index: AQHcv4uh3aXJ+pSgz0Ss4Xs6w6IW0rXGnsVA
Date: Mon, 30 Mar 2026 06:32:55 +0000
Message-ID: <IA3PR11MB898656A272F7A2F16DF92BFBE552A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260329145122.126040-1-kohei@enjuk.jp>
In-Reply-To: <20260329145122.126040-1-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB6657:EE_
x-ms-office365-filtering-correlation-id: a6b0e4db-3234-432a-45db-08de8e262d87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: r3b9l7xAO+AcRL1nGEAFX/0QPGripN/+Po9yJTbWs8D2HY/RFLPh6vyAnYsw2kjy9oZZqNrUh3AgouULGCxOGfcWUnKm/wPHbhqH/TQMmfgCL/LNmOktm6vck2jB1Ph8o1zwZWufxtX38cAHQ14XqPf8nHnHlTLLLcGL+UspOUptAuY437yXJ96jZ/5zUCn5MFDMFNaCn7hP+kC0JKpOB5zUcNroQY+pvjRBbuxGHcpvc/Md9Pyw0iZWvUmdzwpZfzQqtghu/lpOzv/yFTCdERGRKv5h7qlCLOQt/2zcQXFtEtFc+cUMhyt0xx2mX0ZS+4/M8HJ0D0sClXKVsDX8ewUZLguBVz4HqjDvab0p+ssYKS12hnY1FVH0lpCAg2YWeqE5fzbnWZSGD3alDOnm0rvmGrBKNe32xN8ONfvWDCsmO9WDRi8UrnysZmEviYdnK1n6GdJzvDGHqhc+MXxVPGCwHY8s4K7ijbvkbs4gOUFtGcJj9E+UBNa10kTK5xoFXIxHDGQ+CYE2R4qyXMC5QACZVEPbLh3R35n3g7SsSAkB0R1FaIKWqQDI8y/Eaexhd6c/T1gnnXf9brC69KF9+x/qQ9h+I1tiv4K3PKsrZ2HSs41zLB6qGpDvm45tGXwxGg1Y+Cu8vCQVJCCaUXKsYqIlIn9IlUK5ZWc9HgH1FlqrGZUwafctitxjnboBcKDBDAC/QSwiVizVaSRNj8H8yCRPUkUEUbBZ5eWqdKZKbNWRkxu1g2Kag4FkvN8uUfcinSXNZRgXN10KCauGJJ8U0qvjZVeP2FBaHrD8qUgi5NE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UWxpbIy0ayhguFsmNAcElamLMxti17nclZfkdfWzUbKGF1NqV7+MZofPWirs?=
 =?us-ascii?Q?q0ogIyGJBi+FSott4wKC2hLQB6orUHRX4FGvhigzqHw2WCBv0Mr8bsY49OuI?=
 =?us-ascii?Q?wRZPmiSPgharp4B4Ln9mh+KHj3svzWE99xOvcyrivIM18T06BqN1HEOvrwgY?=
 =?us-ascii?Q?pKN9zfa74ATjWTGgz5Mp65CCNV+IG9+x+1QpYEuNURXWojSMd13YjHlxTnnm?=
 =?us-ascii?Q?6Zx/+puBOIK7ovWw3xyiss/vMt4RBU5djPMmnmrq0M8fRgTSr6QBMcl0vqKC?=
 =?us-ascii?Q?oGY6X0KP+vILm8HkpHrMchZ9RSVzNEl6vDWdc+dZLRD/2tUvff+tvnJdqlmc?=
 =?us-ascii?Q?HzBCN4b3vv8tbEPrmhXJuf9g5PoWnoBGLT+wZcGcx2C4qua9AXChoo19Mwq6?=
 =?us-ascii?Q?M9mtlZiehQBT1tYpyt0Iz8yzJxLYKxm7+yLgxxFHL/KFVJ6CSg7FkEY5KO2y?=
 =?us-ascii?Q?I07pBBNwEtfa9oCjw3N/3ixwGrd03/9H8Px4SI6H1Ld5kkz9fyJ78iYTT3Q6?=
 =?us-ascii?Q?/QdbuVia0DgR7871vUC4DhDDwrcysoiWCgT6C9+tGFcNAx5JuOMuWiDCYZMC?=
 =?us-ascii?Q?FA+Z27CVhdHvaUglVvKI6GbGRYo8ROD0rPkgjTMOTKJl+XHtDqBs6+iHOrRj?=
 =?us-ascii?Q?KBoSolNnMar21+D5QprRjR+HpmOCA6XSOmINCg4cw/h7mWNke5V7qWqsXk2H?=
 =?us-ascii?Q?uQn1NTKVH76H9sVDd7nay5Y2uSp5yABT3neEOOgitKaFxNNBCXXk3aaxeKdp?=
 =?us-ascii?Q?xAAqVN4KEjf0o3VCnOOndZC36fqKhzZAigDtCSDzYKGX2KcUN9Nt2T9G8+ZA?=
 =?us-ascii?Q?8MX6POwLBCvZ+3srMh2jz/13UZ19ZVa7eXP+s6KLsuMNOGa3I2AGL057yOYP?=
 =?us-ascii?Q?vYh2OpL8qsvVp3+1CkUsIZdUny4W4/swNMZdcwe1kRkldPPZ99FxSmPb8A44?=
 =?us-ascii?Q?cxc88Gdec8WZstn8UBC6hxj/Ytefh+0p/oc1BrnOuGCRTwQN66b2h4RuwltE?=
 =?us-ascii?Q?aTdPc23+WWo/pQHPQUe62+sGlv5dyvZ0zX8P+u92+bJx6rrx41rT7mD1sB/E?=
 =?us-ascii?Q?ISn4mrOZ4w+IhuZ0JYE28fJbKjtwY3QxGkDgT/aVNsHqZVUdZsuk3zHLlRU9?=
 =?us-ascii?Q?xqQb8MZqEoyclx9UCmQzySzX8IzAqWXTn69yhB+oeBU11FJn/7MwVaBXM0C8?=
 =?us-ascii?Q?SzcW2YrbvunscmVh2gqzPhgUTcdBn2Fbh+qYzFme/MmBOJXXRNUq4PENWciN?=
 =?us-ascii?Q?aKH1inwyGKgzfC8S9nATetn6gyFYTB9hTavH/WHJWQ+wTeYYwSJ9VrjXNb2w?=
 =?us-ascii?Q?yw5m4wgHYVejMGEIq6SJWydHRgoVpFoYNDBTIgzsT4ULUy3RKgIdQRF4ymkg?=
 =?us-ascii?Q?cky5wKCNPq32uyOagX0O2m2qz1E1s5LqtrY/LpMkGMPvObHTRT6nnRHf0YFN?=
 =?us-ascii?Q?fQ5V2nBFHiOZY2DWzH/Eyq9jrJNwL7Wueyq6Vh4q+bMaAiX6de7if3VIBuUA?=
 =?us-ascii?Q?igE+7g43HmZdU9TjyFIOVBEl4t50LeI0zQQ3/hdRPkzR87MnHRX9JXRPlCRT?=
 =?us-ascii?Q?U2YCIXrle9An00l9kxkKl548ic1fUKt27J1rjpgrNl3vapvFfOjnWR8P0dba?=
 =?us-ascii?Q?3xvUFcONkFGJjDppBm5t5s2ZKZGRrEUnf+IBiDOkU9VODgh/hO4dYY/Y8kWB?=
 =?us-ascii?Q?+O1KeiX3+4dkPkpPKRSNzDq+XSkN6/yPZ0ce7RTWWPIVrEMq0N/dyCYu2aM1?=
 =?us-ascii?Q?vT3qDk/vykH04JHjqeqRIYtiU6IMbc4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cxlFGSFdJtlApMimPdaA0aBpjsoqw4zZCbkJcGK+8R116Qev8Ky7CHuRByOzWOdIKFwTh7ndWylIQP7xt3OP6twcM/NcmPCdgvHhT2ooiVKc48NCM3tIIV4i83bZ61Y7OaSv9bYwnjbdb2BGygNUvctVxIhfulmzEnBwroYPxlOvU4QwQVM7wxPcXtGBLRv8eSto310qRnZYeJt/od4L2VGuA6IKPHZBlnWlQ7wecxO/tUIiwW/n1WAWiRkh62zREEJ3++afvDaNCLT+joihj7awdeQBHeaJNSFwimV+fN97FPUOJToowMJDa0JP+YSNbs+yvxou1Za04cMIXaBxTQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6b0e4db-3234-432a-45db-08de8e262d87
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2026 06:32:55.6405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1J3opDzT2s1tl447Wk63T6sNbGd+cHjTQ0mTCnHjfGXpo7Thw2geT+b0NeFV01SaSPcljsZbXaI7Z/tIhdoeJFMO5ZFmJfkiE4ij7S6m/GE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774852381; x=1806388381;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2gb9PeEgagdA1k7vkRNJqmfwjxaLczDbSZQOpGQ6hzc=;
 b=lDkQN65PDemmAiqLgpOJcdx35Mw7ccOKeJl3QGjOW3dhw7sjkPPUIAfC
 sj8d3kIqfRO6nxYly2F/AfwSeSC9YZMYLuIiXpDmP3GqZ2SLZ7IZuhvgF
 tZiIIfkMcelNOkEHDvZpSWysT18DGKCfU1Z9kC0G8yyxOtgJunxLJcgHE
 YVM7eyL9gndEv5jKmOEbxWfpzPQmLjO/rwFzfyMEGmzymv7+51rzA5ohN
 ++MKsRPv8lM5FRC36ZElmSdOoLpPs5wqhL4r1j0Fa5tszNI4pF0L8A+yn
 ScE+3wQjUl9i+iNNqKqjjhBxnpX8ooT0y6m+uWyf8+K10VGfWjzaah3RP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lDkQN65P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix potential skb
 leak in igc_fpe_xmit_smd_frame()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8653F355F8E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Sunday, March 29, 2026 4:51 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Faizal Rahim
> <faizal.abdul.rahim@linux.intel.com>; Kohei Enju <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix potential skb
> leak in igc_fpe_xmit_smd_frame()
>=20
> When igc_fpe_init_tx_descriptor() fails, no one takes care of an
> allocated skb, leaking it. [1]
>=20
> Use dev_kfree_skb_any() on failure.
> Also call igc_flush_tx_descriptors() only on success.
>=20
> [1]
> unreferenced object 0xffff88813aee1b40 (size 224):
>   comm "softirq", pid 0, jiffies 4294709256 [...]
>   backtrace (crc dee31384):
>     kmem_cache_alloc_node_noprof+0x54f/0x640
>     __alloc_skb+0xd9/0x5b0
>     igc_fpe_xmit_smd_frame.isra.0+0xad/0x510
>     igc_fpe_send_mpacket+0x32/0x80
> [...]
>=20
> Fixes: 5422570c0010 ("igc: add support for frame preemption
> verification")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/igc/igc_tsn.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 8a110145bfee..eaa274248d54 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -109,10 +109,14 @@ static int igc_fpe_xmit_smd_frame(struct
> igc_adapter *adapter,
>  	__netif_tx_lock(nq, cpu);
>=20
>  	err =3D igc_fpe_init_tx_descriptor(ring, skb, type);
> -	igc_flush_tx_descriptors(ring);
> +	if (!err)
> +		igc_flush_tx_descriptors(ring);
>=20
>  	__netif_tx_unlock(nq);
>=20
> +	if (err)
> +		dev_kfree_skb_any(skb);
> +
>  	return err;
>  }
>=20
> --
> 2.51.0

I'd recommend adding reproduction steps and Cc: stable@vger.kernel.org
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

