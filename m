Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0HSGLcYATWpPtQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:36:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE21871BFA8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:36:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=7DDCyq22;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EDED607A5;
	Tue,  7 Jul 2026 13:36:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zXU4MD1qyQRh; Tue,  7 Jul 2026 13:36:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FA1B60628
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783431364;
	bh=F5+sDelNGqHrF9/kIC/kbwMGxj0GgB4pQzATeNOMG+I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7DDCyq22ijm5i9r0xvJCvZUiViZsE18zTqo8EfnIE1HohnJNT8fU980kSWGMlgw+/
	 97qlF/huR4Wj8GP9c5MVFJNE2uuuB64TdEioxR1HZZYRDL/rApIL/nfrtpQ8H051Xs
	 oDzBaYiE/b4yiWkd2usXIU7EW3Xo0I7oOXXI422Lpl1Tvol4a1+WKNMieUxjJm4fP+
	 exocavW4UmwYPCCN7PE7cjadzerxVOeSXxxbHnScc4HDvx/uSYrFAsWJS8BLA5AFG1
	 csYTCtZEUUmhvL47ErdiHyrFCEmm7u9gadjXiPvGQDcrbwYONezdq7QS4gvCiB41OF
	 1eCENbNtLovig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FA1B60628;
	Tue,  7 Jul 2026 13:36:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4893C2A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E6C940261
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:36:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zYnyEAoHfwez for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 13:36:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1A55840244
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A55840244
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A55840244
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:36:00 +0000 (UTC)
X-CSE-ConnectionGUID: rWSFBnDcRm2qvDUVZuOmfQ==
X-CSE-MsgGUID: +im8+hS6RUqMIlsHXleMaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="84267530"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84267530"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:36:01 -0700
X-CSE-ConnectionGUID: TvYy+Rq8RZel+ceRiUqi2g==
X-CSE-MsgGUID: srJOBAY7TIeUy3TLg/A/iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="277221057"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:36:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:35:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 06:35:59 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:35:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hRaFFhmazB04WgHCaslVAtVGvFLLqw1RypNFPT+hrdCbe55u8QTt2MFPLXr12Non/FjwbpdJ1obyZaeqfzFm9JUj3F4U5tz9CZlHyJ80fsE7Xe3yDpigWC9Dgfyp93xiR9xAViDfskWmV71soh7H3L0zrNTYVZsQYYiv1w55FG+i0BcK8L1wa2CTvAxq7pq1qGMUfKs9GyiDNPHzJh6b7F5I9RyTp199HOvft4Qg+vho0NBM6+xCKBCTJt6TOZmBdSuEOX8EeFmn4jvYshaseUnaVyRPSZk9BeL0jopMB90co/a3lhhkBNn5uK0n9Rlc7rV9K1vo+e1pmbCWLdzg1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F5+sDelNGqHrF9/kIC/kbwMGxj0GgB4pQzATeNOMG+I=;
 b=QRAwAW0OEQvDnse5+1DAz/V2zK9SYhgAAyTEW03pD4oM/VL2XlxSDa9+ilIW7vflmxW1yYD1R0REnI6DDZne/rXOjevbbo9+kFcHAAWeUSXV6s4uZhwCmFo2gbpz7ogGpaZx2RXn6X020jkrCJEbR3SjVd3R9rTohTl2Y+BYclH/7SUPeljzeY/3+yqyvwvxD9oPCZwB2Wm62/izZqQ0gJPHNQrU+GGiw5JCfw8cCa8uRojuUFwalOwDqWYRKN4UH3os+lnTndRWRQj3/J5zoVJ3+FMLYifMM+a3OcFYtv5CDkumtD8yJDeXRnBPG02pPXgNt84dDtJMWcDtP3EPLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB9873.namprd11.prod.outlook.com (2603:10b6:806:4d9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Tue, 7 Jul
 2026 13:35:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 13:35:49 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v5 net 1/7] i40e: unregister netdev
 before clearing VSI on reinit failure
Thread-Index: AQHdCVeTUgFfdFVjWk27U2expifMGrZiGEpA
Date: Tue, 7 Jul 2026 13:35:49 +0000
Message-ID: <IA3PR11MB89864B550FEE23C7CFCFA528E5F02@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
 <20260701124524.13644-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20260701124524.13644-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB9873:EE_
x-ms-office365-filtering-correlation-id: 5dcf5499-ca0b-459e-f395-08dedc2ca833
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|38070700021|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: j8+lSQ6OdTzVaLBN3Q6euXw5GJT3UzMvzjQaIBUdfaI3qDFwhM0tzmIvobVl/XRXdjT1jlJYc5BNRfIs/BcyLw3x3RNanwiMcff0+FUddKsKplqYImwDd2RWr6u0cLM9rm9WEcyVAv4kvLuV8LQ64D2XMXLe++eLzWlOx1Gx4zwin1ggGMagnXaeubM9BVkb7Oc1ekCM9CtMW0k9TrJEXl9gP9lXj4wHJR37e6mWMe/Run08O+cx16zVG42ayzwZMLHR1Q7aV+ZSf7Kghdnpmcedbbz0aOm/tXCaLo7VInHULjFHRSTKfNyUcwsGa1yG7msGdl/HuEj2Beol5/CncQXkmYf10liH2eYkUg7TQFA6qx7dYb5BwYFdNsXVFSangfdD2oxDCP2RjYtZJAcK8xAYNT44+CrH/fUMT/Jw86+ft8eQGK1JnKoi/fd/mtxEDrlzPowMsZkjGW6W3eodQgO/igEUQmFwD5bhVLho1LZZcow75u1Sm6UGazRzl+syXapqYhc1qm5T+tgdUv7OtSod5MNvP0/Rbj8qm+FCSz/uDFRl+FAJ6iEGi9zjUlWkoJ14MHgKvW0/d600lNKocyVYJ0QSUCqY1mXeSAO0ar74/VoTLYo8aS4e50Gb0PchdEERz/gvlut3NnxfVFXO03/EmspD9Z5O6bfz+i5BrqdTLufpusTEII+3wDdlMImhhu/f+WdYUoiJ4NRWKS+RZkKnyDN4+DwrM+XRUhC94ZU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(38070700021)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JlZ7jIGIReOwaBe9eD3Po7I1GMnWAPZkswiprAbJRDK/l9leoqm1WegjP3yi?=
 =?us-ascii?Q?mHsFePzzz/XqRCG0fQ6xyQuuEayDagTXrbfz+4wTG0s8g83Umzlx2kUm9jOv?=
 =?us-ascii?Q?0wMcq9fCPMOgpL+eJZy3ef8vJLjKT38tpiRBak4TaFaxs028V3wlkMHZmGJF?=
 =?us-ascii?Q?uA+KylfIOCc1/7luH1C5cBDLDWjGJdNMSjJVWCP0LMPBUZOGUmlATpu82WMI?=
 =?us-ascii?Q?2emIvJ+75EROe/VqX4tPT4qhLZeNcvu+P1VPqRUue8X4CHYFOdHxMx+lLqUA?=
 =?us-ascii?Q?HP7dhDtDWNPgOR7vZTS77PlGr08zGZX2UHIkSJYlZvpZoNQcl7A+yvJEnG0V?=
 =?us-ascii?Q?/fcCnYbk2rivLvf8gOTK7U36rkDbvzVgft+0m+NLQOlCZZ8LhFHh15yHN7kj?=
 =?us-ascii?Q?glcIOs8QHFj3Obbv6UvadvDehASW2B4kY8GEFZ3ECpe92iVLQh1eit8DGqN5?=
 =?us-ascii?Q?l3Atp40sVMY82x3UzCwQBhcYW8BEFbm2bO31SARDBcFaqxG5dc1oVLxEMcEh?=
 =?us-ascii?Q?2rPonwZ7APTvx2SpVdT1lNZXy25dnzpEYZH/9vybzfAHpUr47vGnwNHMNSpv?=
 =?us-ascii?Q?QBM64qSLZziHpKPC9973bAL02M+kOi9in3sOwkLimxFulorqIwJMk3t+rdVp?=
 =?us-ascii?Q?2ZosQDyx0m2YDCU4h9sWuscZMekhhzVMgFfkuf+HYGAT/AIkgvcyPUCWeBOn?=
 =?us-ascii?Q?dqNXOJY5ixhI8nt2CILZoZvLU+GwMLxzJqdZMMBhVQKkWve1idCkO62/gPu8?=
 =?us-ascii?Q?TPojNrMaG5yfnr+pujGaZxAKDD64wkV++5YIF26qVKBHlHvjEUxVLsmGUXUy?=
 =?us-ascii?Q?BWNyT7Js/rJIYXTXW9Wb0MsYSr9XxsF2tJvsaSoVIJSBDY9rcTpSYsm9YoAe?=
 =?us-ascii?Q?LQfgxCKxTazJddcqLnpq9ds5NqmM45bxzQc2cBYvDQ9He2V0YDfAuCCrAUpP?=
 =?us-ascii?Q?nD204HOC0A+9fVXN9HPlBkSUQUoXBoVpUZgth8WpM68rKiDitpyJkUhmHmOW?=
 =?us-ascii?Q?wdCE5o0G50jKPKealmGU1phHfwF4x+lavDB85Egv+A+nDTyaqhQgcT1N71Fq?=
 =?us-ascii?Q?oUjqT9IDC1f4MKFvef+Oi1kKjPDME3lGZKvcAsSId7vOgEHb0pdF8Mu5kPlt?=
 =?us-ascii?Q?i6NBgTUA+Br2tLB4IvPSyiW+4K+jy0T4sz1SJFSy6CFCO048atR5+Fi/AB4W?=
 =?us-ascii?Q?aedepit+L/P6vf9dhXjJR+VUDZG9TRwVpLfm1wzDB/7UAWTOrS3uP8zuKEpQ?=
 =?us-ascii?Q?sEVkqpAo0SVUXWoNt825rIozIziFGq+UM5iI3CKAdSKdwgGn+H/lmxahL8V+?=
 =?us-ascii?Q?rDJsvVoGqZ8VKeMVFUPU7O453qt4CWGdqUTa05qdo2GZG8G/675GjAS2JmWM?=
 =?us-ascii?Q?bC0vSp/bpfYtZQVka5FIe8QWMRtwwEkSSbyBUp0DY0RElxjfXsRZyaM4iHjl?=
 =?us-ascii?Q?RlMro4nynUN4+gASBIrtIHk5UpHylDcNdt8Zwz69AxeyCvWJiNaH5ju5Vfmy?=
 =?us-ascii?Q?MlSH+O5fseqTuTP9KT6emDBpze1rHvWBH0mBRNUFfLKDVZYUH2Nj574JONzX?=
 =?us-ascii?Q?qScuVlROojmeqZ4utPqUIeUDFoDMftUDvAMDsa+Ho4Hhdf3tis4DEixn2k4Z?=
 =?us-ascii?Q?hDjQDDl0AefePnC/Kd1a9Qmo/wZ6UcCLqmvRxebJUnjQPEKjspy7sPGAxRIy?=
 =?us-ascii?Q?W1VRuaJU1Lg+WyBkb6IPbza+W6xyl+0lJ+YVHN9lLPwu7iSSxfDsnRWx3Tun?=
 =?us-ascii?Q?kmgkVR00LruCrdaQisgzlAk3qDuFCFw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DbXSsq9E0K3YnCldv40HUXFtgZd7atprLZaStVB5orpKxuzNdVQ/A0VPDh4cCDQEHda6phxCstlpHnhM+MD0JsK+MRdSTwy+LmykuOXfbfcGYd60cic/95/GGdR0sckYP1Mr51m4zR5o+2C9VZ7I8oE5ASO/qu5w4xwx3fV52DDnLSht1RyRNAqGujVsCMUUqEYrso6qv4rvwPNkOMT85oOryXu2bO5eAYeZbmjikSBuKq9lAvuLR0TsMjVgeK5GpTYFI46lxlDeiT+gWE5RPfI7S2fFuFUPZxb2IsJR6dhj/oIH20zu8nTlfNMTppHEhQiK81c5kQEavT/NCveLgQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dcf5499-ca0b-459e-f395-08dedc2ca833
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 13:35:49.1738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CeawC5+9HvU9/pT7C2IHVSouh3glZKUVU34YQJYsvibPY+i2o/c2onKwyf4O5frg0ieYY7Mygz36iUj6L2AsbJaFo9b2RWTn6nO66Xucu8o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783431361; x=1814967361;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8+8pKRvgB2BkrX1Rju0K1m9TUyEjFLAbHdYxP3QB1mA=;
 b=bQI4XZrG7e52/7rvNGJGGShUZlbPl21rnqOPx34wQu2BwQmMBoLtH/c1
 O7oFYGYRiOUJnm9dTbmqydQjY0YKQZekeiBCtGzbcmRGc1OnRQrJPOuXG
 rfkMMVBm++OqTqWwNjvl4iHYd7xveLky0JvpKZ+FMQNxM6kINIHuqpv3E
 yuoFtK7EtgjrIL+tGgwCwrVf+E4xusgl4QlHzA/MP08OgCTR9c8ybJZhG
 frcs971xT601f9c/aIxWlseWA58nzd4hGqktw9N4XMdWgRztltEuWW0GR
 OLGX6fspA4xD1EfgGabP3u9IJTB0339W9CTGB1rmNBdO1Gzgyu5uJCE/a
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bQI4XZrG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net 1/7] i40e: unregister netdev
 before clearing VSI on reinit failure
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE21871BFA8



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Maciej Fijalkowski
> Sent: Wednesday, July 1, 2026 2:45 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>; kuba@kernel.org; pabeni@redhat.com;
> horms@kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v5 net 1/7] i40e: unregister netdev
> before clearing VSI on reinit failure
>=20
> i40e_vsi_reinit_setup() tears down the existing VSI queue/ring backing
> state before allocating replacement arrays and queue tracking. If one
> of these early allocations fails, the function jumps directly to
> err_vsi and calls i40e_vsi_clear().
>=20
> For a registered netdev, this frees the VSI while netdev_priv(netdev)-
> >vsi can still point at it, leaving the registered netdev with
> dangling private driver state.
>=20
> Split the error path so failures after destructive reinit teardown
> first unregister and free the netdev before clearing the VSI.
>=20
> Fixes: d2a69fefd756 ("i40e: Fix changing previously set
> num_queue_pairs for PFs")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index a04683004a56..471fa7f7b643 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14274,7 +14274,7 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  	i40e_set_num_rings_in_vsi(vsi);
>  	ret =3D i40e_vsi_alloc_arrays(vsi, false);
>  	if (ret)
> -		goto err_vsi;
> +		goto err_netdev;
>=20
>  	alloc_queue_pairs =3D vsi->alloc_queue_pairs *
>  			    (i40e_enabled_xdp_vsi(vsi) ? 2 : 1); @@ -
> 14284,7 +14284,7 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  		dev_info(&pf->pdev->dev,
>  			 "failed to get tracking for %d queues for VSI %d
> err %d\n",
>  			 alloc_queue_pairs, vsi->seid, ret);
> -		goto err_vsi;
> +		goto err_netdev;
>  	}
>  	vsi->base_queue =3D ret;
>=20
> @@ -14309,6 +14309,7 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>=20
>  err_rings:
>  	i40e_vsi_free_q_vectors(vsi);
> +err_netdev:
>  	if (vsi->netdev_registered) {
>  		vsi->netdev_registered =3D false;
>  		unregister_netdev(vsi->netdev);
> @@ -14318,7 +14319,6 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  	if (vsi->type =3D=3D I40E_VSI_MAIN)
>  		i40e_devlink_destroy_port(pf);
>  	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
> -err_vsi:
>  	i40e_vsi_clear(vsi);
>  	return NULL;
>  }
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
