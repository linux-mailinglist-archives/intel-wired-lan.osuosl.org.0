Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPllKmzr8WmalQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 13:28:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 102674938E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 13:28:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C0FC61580;
	Wed, 29 Apr 2026 11:28:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDKOTeLXqCDf; Wed, 29 Apr 2026 11:28:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D11161581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777462119;
	bh=ovdDN0kfVgsr+o1j0KoC+sts4YkO+2sTyhj5T2VeSQ4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UV2HOfNW5Hh/mA/YKQyQuZKty7QwRBBz+GEok20qNICI07RMFTLhPFOi850401Kya
	 lky7OQcQiSmocTphD70L7mrrNR3Cxb2AUvA9kd9hFsalWIfjf56h/D4B4qWdGjNUaA
	 dW4NDiFoUU2WtFIQ24veSDAfICmMv5Ty4bITpUpVjCD0yPNdG1Vn8aso6olX9vr5Q8
	 prGJ2UV5p0njtGKIY4FhBXr0yx8YGJ1CSK2dbDrbT6CI9VYu7y/OCRrXjpvLG03soq
	 /g+1jKozr2asKRZYwIMWHQdrjUzqsdhxSvL+SugpnCMmnDpA4b8IOWbE4Bmx4ZqPTX
	 RGLgChV9fDT8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D11161581;
	Wed, 29 Apr 2026 11:28:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 34979231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 11:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19CBF420B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 11:28:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gvRS5E95dIxS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 11:28:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A38CD4209D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A38CD4209D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A38CD4209D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 11:28:35 +0000 (UTC)
X-CSE-ConnectionGUID: BdnbcExzQ7yV6oTM2bGp+Q==
X-CSE-MsgGUID: r5cNdcZLTCKnRgWCYHmREA==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78444227"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="78444227"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 04:28:34 -0700
X-CSE-ConnectionGUID: zyo6koVcS5u4GiOB8znU/g==
X-CSE-MsgGUID: FVj0GeWmSa6jAZ16svdhlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="231101609"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 04:28:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 04:28:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 04:28:33 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.2) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 04:28:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BKr/UHFUYWqaLBaSVLelyATKOmIELFLq6cjrA3KohQTkNGji7bfOct6vZFNZz7fIBNn5uM7KQnMI2HLDbCNs3x1iY0w4l2muCjYCg6i90ncgfYJgxDqriKOiJ6CbMQutIPU8QK0YbDuy003eEibUrrUuUQgkpzWGMXgb7dAGFul5DbMikQ8Z5u15PFGqewscsIy9/aAIEX4gk6Zniref4/hwkLQMDOX0kR3B/GcYibLVzJYD0ZV/Bz7fiKxgfSfBLpO8SsKruhG/8Y5tBfB0eCvVJhgEaYCmppNYoW3Vancvo/xD20AfzFYOf9XtY+w71oIwQ0veaMNjEhua8Yzpog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ovdDN0kfVgsr+o1j0KoC+sts4YkO+2sTyhj5T2VeSQ4=;
 b=Wd+bfthFNiDp3NY7r0hOxZrYsWsj3SF/Mx8qHIMgib0PbqD618Ua57gOBQdTZuPGYHjd0f+eXvR9a8AdHzExOVcWgv30ZgnlVGuPM25pWI8VhaY8+E2fMDZzuPTPoxU1gJ3isI4TYvW1g9gf4R6vCg+RnwJnvkMLW9JrfUKhZMFA7WsD0Ugn/s0harHf/gMJ0r1xZJmdcO1W8H5jCfm7LvB1idHpuwAXeLLoP06RDdceIzTITvUpeR20O5w/pxLAwaRhdKrXbpCZ6wea09AxD4Z24W/5k5vlukC4s3420tvyvBl6mOPw71d44xibnTOPOuqsDYv2auOXpQBDQbovfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB7564.namprd11.prod.outlook.com (2603:10b6:510:288::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 11:28:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Wed, 29 Apr 2026
 11:28:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [PATCH net v5 3/4] iavf: send MAC change request synchronously
Thread-Index: AQHc18KBJc7otQTA8kazvt8l9ITW+bX15rcA
Date: Wed, 29 Apr 2026 11:28:25 +0000
Message-ID: <IA3PR11MB89861527E138BBA14FA907DCE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260429102426.210750-1-jtornosm@redhat.com>
 <20260429102426.210750-4-jtornosm@redhat.com>
In-Reply-To: <20260429102426.210750-4-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB7564:EE_
x-ms-office365-filtering-correlation-id: 1707bde3-4ea8-4410-0713-08dea5e26dbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: POGgE84KI0fp1md1lDnKuycLSpoCZ5PQK1Hjrw3z/91vrgK2d4jesyN+mi6InxuXvjj6MchLV2NtP1W0UTZJUwDi+QBFYDT3CXBhv9AhjvGvBPXs9rsK3Bl8WH7pKXMDlm2yC+h0ciMdGmuvH9x8ZLIPzQ/tdh/ZAZG3jU1uUXgdpeXyJw/JJJHzKsnraDTqf+dZDZ+s8Mwe34HkkjqUN9BTe/8JOVYhMTj9bcXan6R2HuXabeQiCkKFs8AqSXJqxgHNmWFyEvfZlSBHqIpN19CICGgDNdPfn0kgoffrbs6j3ELKMLI1JhYFyUS2xOW8IEG0Et+uDSrXP4bMg9dg0/piOro+xMd9xafeAqCfdladl+dXHtapWdXIsGNzw1JkHcPV1jHDDZG/7pwBz97xIaMPwxDSclNAzssztACHVNnYTspmoJRkanjaY94TjfXT7Smk+1qRXXDPkljlwAqdORgbywBo2mc6k/O0eVXSRv1VnVDeHImNO/RcORFAqT0rZhjpsBVgJYG5RYG4xgdgCmlg7EnhRaOPxH+cqn9u9gShPQJOYYAVUv/SLnVDo+cloHokc2gmP/Odx8JMIEdkrahszBHY2FvaV42CuHmuXwv6svamzJz8b02TWq5B2zYVyLWvVZwSioKX1T/uXZpEt6pdgLvcQI/NBrKU0mHvGylV8KTIJI3vNruAcdR8FluWeCOXXFMnMurLdkvCAI8mtN/sPuQ8cY8gsH+UllCXn9rLPTu54iZCnXrbJbzgCnM6CgL2f0swfzdxZuZglFr0YsWfA2eB/xvs2Z9CujQIxcg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mky64SMyjcYAtVvr/wA+zpY848vuMt2Wj8QNN21WxxDHicviZDos43ikBJfC?=
 =?us-ascii?Q?M7eAupTrWeQUoG6y04Ev1zKFHNvela3tsqUXLrY0dvEFtahGgkVDgb0Af3Tl?=
 =?us-ascii?Q?tf4LXjvS2dm86pTrm0J3yxUy9sS7CqBCJJqvw2lGwbZcVJqZfEjWTZ4vT0h1?=
 =?us-ascii?Q?N6B7eP5vPlRKlJ+M3+xPnjq35TgTtKThw5nZu7QGe+Ui4P7G4SCZazV1SU9L?=
 =?us-ascii?Q?D3ektdMXChpqUiYntDL1thIrHq1nwc3ynpup0ErxhPzw92PmbMNjpX8qodC4?=
 =?us-ascii?Q?oV8xOXN1QDQBKu4r000iy1eorra3nztneh9m7kS6taKX7F4XFsggZ2sYYVCh?=
 =?us-ascii?Q?l5k7wsYaJL4TTEGmyASJsIIufvMTIsbxWL8pE4mgzuv5oxYIG/jSHBdOo8+D?=
 =?us-ascii?Q?UQwnHjeSqpaEvwIEOfWe0v4hWOerCcg7LYbEroURDKyVA6ddYOAYlisyf4iV?=
 =?us-ascii?Q?oInG3yleDwS2YzIJWG8pGZ6lRmptu0nIMsUhFsuv7OMO7Hdg5YQlJAoLxVTF?=
 =?us-ascii?Q?mRFF15SXtS6MtHUCVAohqV0wNn1PEB4MSc6S/UJDalXNvnszm5REMwsiF4VC?=
 =?us-ascii?Q?jcXMz2BYifd36UQqJl3dd5sqnsgiooLVamWYSjqgY+ihgwp01eJkGNcbptGt?=
 =?us-ascii?Q?DBY4bNaqYgSvh2eMKw+lFiWuVofEO1vnyCVmC4HnPv/u84XNlT1A8gYfHeee?=
 =?us-ascii?Q?zq8v2BtJqSuvXBzMJpq6Xh9x0uX2hN2F11VJlo3G7kXh6LKggU3SPGKEYdpQ?=
 =?us-ascii?Q?ajfxr5a4u+Rn/OxKhwLsB5FQ7j+luTm4mpnSPB6lel2qJUFLSrythKlktrYp?=
 =?us-ascii?Q?0HF0Gk/2fVBUahWhGVJ2aWpE7ioZZBfitwtr0dXFKbaamKdKS4FlbpN6ebPn?=
 =?us-ascii?Q?jjQkJteJQiHba/ksZTrmBpfotjgbPjhvxkqpYXHt6LEauZZo9bSVz5nG43WW?=
 =?us-ascii?Q?7Md5z2OGq8xSHlRGUcZc0u/dvL43mNlUWI8vkhR+FalMlX0dcqFWQxmj2fEm?=
 =?us-ascii?Q?QYSw+JzQRFTUS89a15UwAr65VEwSd8EknUxA5YJN1Mh1nae60hAw0dwR1rEO?=
 =?us-ascii?Q?JaN2rfpONu2LZAnhd4kJSxK4IPPdDBuCUY5yitDK4Z/kx+5nWxTulJ1ZKgWG?=
 =?us-ascii?Q?FwdT1353nBBlXn6eEmEbTJHn3vENh8FIBgptGircYmH6qAeYUx2u8vIhYml6?=
 =?us-ascii?Q?j94EXMvP1CXtzUu0N2BtauERVfimvdcZ8xQD4QCHK4JDJtdtQ4/YIkGt+vQq?=
 =?us-ascii?Q?renS3IsciDwCZce+T5shl9Mob4ge4CBcT4F7S6LBQ/Ta7X0/Vmw99SRQ/SNE?=
 =?us-ascii?Q?yLhzddjOf2e/11Cur7rJVCSqgdax9m01/Xy4SzZD+eqW69lxIosKydrAMK0C?=
 =?us-ascii?Q?I5WKBMJ0Ga9ClEgx8JByu4XfWowEerTSKCgKeTEIIlpL5XcdmT2t3Tk6V6WM?=
 =?us-ascii?Q?EJwgYHkeeChYhNJOImMFfOjRQ3qFu4vcofuY5xLSETRcgJDUzURyVdJt356B?=
 =?us-ascii?Q?eLOwZR1Zg2qcI8O5dd/k892Yi6PoGo2cHl9xBzs0uwM1AO5HQo8E5bmLNCUT?=
 =?us-ascii?Q?4ZX8B9nyWR8osz9DHfKRZcFq5koHxZSJeRUl+oKVw+gwje4PrJBxJz3Os+2v?=
 =?us-ascii?Q?Ghus5EAdNPbjO3bOUT5oG2RHh5OQhApjvCA7QdIzALfJp45o8rNbThonFly3?=
 =?us-ascii?Q?fzYATQDFMouHlctG/gCvBAlxW0xKXu8Jn78HJiBDWOe/BDnQAMOmv41tCOGb?=
 =?us-ascii?Q?/++KqzX2WjFRdI6dGpg7ukv0XIE/imM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ld0iQGMXLvI/bd6mFBLJINcJ+W9SwfJWuXkq6UH2QzA5tzkhdzYtZ1CEl3j6O2hFRej39sJbJ0uMw8AUo7WirO13YAskt6MGPXso6X3rr27daOlX41jRDf1GMHYyv5fRR+9DRhx0wYFCBP8xY4hnw/aGH9dhILsRN2PFkt0LLZUuY3Stzf7Bhh5xFgdJnNFZ612rgHaEDnqTHb+ssSbmubnKCqDjJWlhIMT1r86Sj25oBSDXoIZz+whOxC0mtUxOvVNOs+Q+pzzLyyLJMs7T5CHSdwYnMFwjfVxDyQclCV2HyCtr/5GXOMemYtGKRJ4yufuSeHOP3gTtWIoerCrFcQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1707bde3-4ea8-4410-0713-08dea5e26dbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 11:28:25.4631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XqrpJweKEL3Fh6n0ZsC0w+eUSKU+qb0HGijD+UbCatG+W1kmLSGz6jEnP07WyMtuIyEliAthcJFwOt9IOu00cdoB0bOKZFAe7NhHCaZzqaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7564
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777462115; x=1808998115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UBb8fQJvK1Esj7KPS5QG4RcOApniJlymwXtFr32JV7k=;
 b=aTLGKTwck2NsIWLyXnf6r+odOFR/nhuFU5pikRwUwZFwLpfX1V6RUtJi
 /pB6Mxi1RPlbJMIBaJXaDohbW8HVxTByo+dlY4a8PikNHCliuh2FqTjIU
 iFTjnWlCA/wLSGsCLIlfasbOqUyHW+fmHQsYMKtMMc3jNEiINoU0rM2NV
 iOq4hQROEesyxw04MMw/74emXGAJn0AjvDPdbqRaMEn4yn1joI/ARV9EU
 0OdXgOvyDwLdTI+8U4eqQCNH3uGoTrpTjPpWOn6vzPAmGZSptbEzxdbim
 vNhOj+4Q/v6gYEBdaBiHBiBGDBvU8SjGHE51UZnSu3ribP74q+ItxhJKx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aTLGKTwc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 3/4] iavf: send MAC change
 request synchronously
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
X-Rspamd-Queue-Id: 102674938E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]



> -----Original Message-----
> From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Sent: Wednesday, April 29, 2026 12:24 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; horms@kernel.org;
> jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>; stable@vger.kernel.org
> Subject: [PATCH net v5 3/4] iavf: send MAC change request
> synchronously
>=20
> After commit ad7c7b2172c3 ("net: hold netdev instance lock during
> sysfs operations"), iavf_set_mac() is called with the netdev instance
> lock already held.
>=20
> The function queues a MAC address change request via
> iavf_replace_primary_mac() and then waits for completion. However, in
> the current flow, the actual virtchnl message is sent by the watchdog
> task, which also needs to acquire the netdev lock to run.
> Additionally, the adminq_task which processes virtchnl responses also
> needs the netdev lock.
>=20
> This creates a deadlock scenario:
> 1. iavf_set_mac() holds netdev lock and waits for MAC change 2.
> Watchdog needs netdev lock to send the request -> blocked 3. Even if
> request is sent, adminq_task needs netdev lock to process
>    PF response -> blocked
> 4. MAC change times out after 2.5 seconds 5. iavf_set_mac() returns -
> EAGAIN
>=20
> This particularly affects VFs during bonding setup when multiple VFs
> are enslaved in quick succession.
>=20
> Fix by implementing a synchronous MAC change operation similar to the
> approach used in commit fdadbf6e84c4 ("iavf: fix incorrect reset
> handling in callbacks").
>=20
> The solution:
> 1. Send the virtchnl ADD_ETH_ADDR message directly (not via watchdog)
> 2. Poll the admin queue hardware directly for responses 3. Process all
> received messages (including non-MAC messages) 4. Return when MAC
> change completes or times out
>=20
> A new generic function iavf_poll_virtchnl_response() is introduced
> that can be reused for any future synchronous virtchnl operations. It
> takes a callback to check completion, allowing flexible condition
> checking.
>=20
> This allows the operation to complete synchronously while holding
> netdev_lock, without relying on watchdog or adminq_task. The function
> can sleep for up to 2.5 seconds polling hardware, but this is
> acceptable since netdev_lock is per-device and only serializes
> operations on the same interface.
>=20
> To support this, change iavf_add_ether_addrs() to return an error code
> instead of void, allowing callers to detect failures. Additionally,
> export iavf_mac_add_reject() to enable proper rollback on local
> failures (timeouts, send errors) - PF rejections are already handled
> automatically by iavf_virtchnl_completion().
>=20
> Remove vc_waitqueue entirely because iavf_set_mac was the only waiter
> on this waitqueue and after the changes it is not needed.
>=20
> Fixes: ad7c7b2172c3 ("net: hold netdev instance lock during sysfs
> operations")
> cc: stable@vger.kernel.org
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v5: Address the comments from Przemek Kitszel:
>     - Add note in commit message about vc_waitqueue removal.
>     - Change kdoc to use "Return:" instead of "Returns"
>     - kdoc should end with '*/' not '**/' (new functions or with
> changes in the
>     prototypes)
>     - Sort lines from longest to shortest
> (iavf_poll_virtchnl_response)
>     - Avoid "sleep then check time" (iavf_poll_virtchnl_response)
>     Address AI review (sashiko.dev) from Simon Horman:
>     - Restore adapter->hw.mac.addr on local failure (complete rollback
>       in iavf_set_mac)
>     - Remove timeout current_op clearing to prevent overlapping
> command
>       race, the status can be controlled from outside and better to
> not
>       corrupt it (iavf_poll_virtchnl_response) (as in v3).
> v4: https://lore.kernel.org/all/20260423130405.139568-4-
> jtornosm@redhat.com/
>=20
>  drivers/net/ethernet/intel/iavf/iavf.h        |  10 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  71 +++++++++----
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 100 ++++++++++++++++-
> -
>  3 files changed, 151 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index e9fb0a0919e3..78fa3df06e11 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -260,7 +260,6 @@ struct iavf_adapter {
>  	struct work_struct adminq_task;
>  	struct work_struct finish_config;
>  	wait_queue_head_t down_waitqueue;
> -	wait_queue_head_t vc_waitqueue;
>  	struct iavf_q_vector *q_vectors;
>  	struct list_head vlan_filter_list;
>  	int num_vlan_filters;
> @@ -589,8 +588,9 @@ void iavf_configure_queues(struct iavf_adapter
> *adapter);  void iavf_enable_queues(struct iavf_adapter *adapter);
> void iavf_disable_queues(struct iavf_adapter *adapter);  void
> iavf_map_queues(struct iavf_adapter *adapter); -void
> iavf_add_ether_addrs(struct iavf_adapter *adapter);

...

> +/**
> + * iavf_poll_virtchnl_response - Poll admin queue for virtchnl
> response
> + * @adapter: adapter structure
> + * @condition: callback to check if desired response received
> + * @cond_data: context data passed to condition callback
> + * @timeout_ms: maximum time to wait in milliseconds
> + *
> + * Polls the admin queue and processes all incoming virtchnl
> messages.
> + * After processing each valid message, calls the condition callback
> to
> +check
> + * if the expected response has been received. The callback receives
> +the opcode
> + * of the processed message to identify which response was received.
> +Continues
> + * polling until the callback returns true or timeout expires.
> + * Caller must hold netdev_lock. This can sleep for up to timeout_ms
> +while
> + * polling hardware.
> + *
> + * Return: 0 on success (condition met), -EAGAIN on timeout, or error
> +code  */ int iavf_poll_virtchnl_response(struct iavf_adapter
> *adapter,
> +				bool (*condition)(struct iavf_adapter
> *adapter,
> +						  const void *data,
> +						  enum virtchnl_ops v_op),
> +				const void *cond_data,
> +				unsigned int timeout_ms)
> +{
> +	struct iavf_hw *hw =3D &adapter->hw;
> +	struct iavf_arq_event_info event;
> +	enum virtchnl_ops received_op;
> +	unsigned long timeout;
> +	int ret =3D -EAGAIN;
> +	u16 pending =3D 0;
> +	u32 v_retval;
> +
> +	netdev_assert_locked(adapter->netdev);
> +
> +	event.buf_len =3D IAVF_MAX_AQ_BUF_SIZE;
> +	event.msg_buf =3D kzalloc(event.buf_len, GFP_KERNEL);
> +	if (!event.msg_buf)
> +		return -ENOMEM;
> +
> +	timeout =3D jiffies + msecs_to_jiffies(timeout_ms);
> +	do {
> +		if (!pending)
> +			usleep_range(50, 75);
> +
> +		if (iavf_clean_arq_element(hw, &event, &pending) =3D=3D
> IAVF_SUCCESS) {
> +			received_op =3D (enum
> virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
> +			if (received_op !=3D VIRTCHNL_OP_UNKNOWN) {
> +				v_retval =3D
> le32_to_cpu(event.desc.cookie_low);
> +
> +				iavf_virtchnl_completion(adapter,
> received_op,
> +							 (enum
> iavf_status)v_retval,
> +							 event.msg_buf,
> event.msg_len);
> +
> +				if (condition(adapter, cond_data,
> received_op)) {
> +					ret =3D 0;
> +					break;
> +				}
> +			}
> +
> +			memset(event.msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
> +
> +			if (pending)
> +				continue;
I think continue at the end of the cycle is redundant.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> +		}
> +	} while (time_before(jiffies, timeout));
> +
> +	kfree(event.msg_buf);
> +	return ret;
> +}
> --
> 2.53.0

