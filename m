Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wN69ERh712mXOggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:10:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC813C8FAC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8D6140904;
	Thu,  9 Apr 2026 10:10:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YkDWh6XShTvN; Thu,  9 Apr 2026 10:10:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52E1840929
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775729428;
	bh=NwSoRe64wr9nnClSVlG+s3sa6OejkvHEYZGdELuyaJg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K/LMJZ/AJBowbwr8XhnWFPF5YqIwfmShKrVpZv2+JP9dVbJKhLUlAlbpebpK64xGO
	 hgDucXV8TuSeG4kYBSansEnWBFiXpfyFRSF2hhrPvzMkOIimN4ZJnZS1k/YBYFobZy
	 S44By+evH3Y6W2gIghvRfxLn7A8DDPIZ3feAQb+oyDQ0FS90AK9WQb+YrZw0OH9Q/s
	 Ojv5RoSx6kERxd+Fjww9JIL05pNqAZX5wptgJa4Mvnz9yukqb+daGCvAaHzPWx+vBS
	 jvZr64lJSdwir34ZRRhmU6Axek2ef+pl/OLF8H0mkevrWQwUv66VYpeg90M4iXrKpw
	 viJZGXvnRUFXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52E1840929;
	Thu,  9 Apr 2026 10:10:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 995BA1D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:10:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F231408B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:10:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ppb2VrtwcuW4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 10:10:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C63144082B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C63144082B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C63144082B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:10:25 +0000 (UTC)
X-CSE-ConnectionGUID: F1Ri0RfwSwiRl+lqKfjojQ==
X-CSE-MsgGUID: DnAdvzKxQFqtLE+IGA1bUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76609530"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76609530"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:10:25 -0700
X-CSE-ConnectionGUID: 3fkq6i2VQISUnXe0IZruEQ==
X-CSE-MsgGUID: D2mmfG0/RJWxb3Irv2bOZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="225565813"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:10:24 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:10:23 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:10:23 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:10:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VhYVpHUEuu6WDmzHyk4hpuYHmQ+CoT6VQU2dnKCLuZZsBNzx1WcDkuB8feOzwDu4dyVHHeMs+SkeeERIrfvE/yO6QpV5t6WUBg3VYY2NN5DuFrUd35v4brND0i2htroJ5KW7uabW7I/LYvtpDwn99Vcx/4M5VOoFvogQ+R3IFGBttOskdoV6eGPCPU1osIf3znGrYkrdrjiwXxT6vba9WqICnADZfvI2xQHRp4GLXuiarutumJZ95am6+th+gQXT8/HXtRpieKdSumwLNwsNMZNqXqS7tvf3by93Tfpxv3LE+vSHou0RrO5fjQU/QX2VTZkaAoNMN7x2SKbIPYHPAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NwSoRe64wr9nnClSVlG+s3sa6OejkvHEYZGdELuyaJg=;
 b=XH74nRRMtgXSDaj7lW/fxcGZzVA4h1JeBq7qt3envQ3xxiuYiRbJFPfCtYQCrtcdI1Y1bMbWwvCpr4Yq3bIv8xR3rxmOUinUdHzgliaBOulBmooyyRMo9wtuQEEOrkaik2T0lZQNaz3etto0ord+JpKcLcfJJGmJbMbL9hf4rS65xBzrVPrcBlTHUYLEFGlj1ishkhTXsg+6WHolLG8Oyc1dNUmhZGYpcrTyxdAYUvs7Ua3sZcl34WrRGcsSU4ndAFfooz4//Ikd5OVGTpEP5EkJSYxIyLaRXbSQRyPcCtIoUpY2FiSubiOwE1XL8e7CSByQLQZskL2NPew2wPl+eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DM4PR11MB7184.namprd11.prod.outlook.com (2603:10b6:8:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Thu, 9 Apr
 2026 10:10:20 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9745.012; Thu, 9 Apr 2026
 10:10:20 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Oros, Petr"
 <poros@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH RFC iwl-next 1/4] iavf: rename
 IAVF_VLAN_IS_NEW to IAVF_VLAN_ADDING
Thread-Index: AQHcqjl6Bqx/uV/290WWyo9jaQK9dLWxHV4AgCWgNXA=
Date: Thu, 9 Apr 2026 10:10:20 +0000
Message-ID: <IA3PR11MB89856BF6D3F86A5D867AD05A8F582@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260302114025.1017985-1-poros@redhat.com>
 <20260302114025.1017985-2-poros@redhat.com>
 <IA3PR11MB89861519B35EE57D5D03969DE540A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89861519B35EE57D5D03969DE540A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DM4PR11MB7184:EE_
x-ms-office365-filtering-correlation-id: a932bdd0-a853-4c05-d30f-08de96203526
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: yZfOOaQ6gaFZMcsmCpFxZlpdbET4KkwrMCc3vjPQjr6JuR+wyfUjd0QRb8pdB4tqEMZr5XREHF/9P4u/gMnQvHx82QYEtWPAveBOnVxUXrao5dvaOfHLrmlnj22dT169kxmTDeb8O9CkcWNL1GG9CFW9AsrfCAhUk7Vw1SaggZ1X1KHEGSG5ACbYQykN8eh6mKfTTvayXHGItMQFaseobcfk1qe9L3talp/pR7iaYCNZN3z8UnJeg+3FTCmWApHEsoH42J5Q6WEB7r/1yAYYFPRhPWe911nt1CIW3T/31WsaKSV1oSDQ/mf23A7AwZIjOyI1trL/jTDRjLiFF4JaS5n+KYOd3Z4RkWz++O8xrhVz9Xxs2fSrYSXGIqCSY60pZlXQ4xZaQAjMtRB2QKIgS5r+YjrN6e5GhLYJvGrfEC/rW3kyrxk2rf9LRV5OdjMDRwfbKdmJzVGA3let+08ftXM/z0Y+nDb8pNbLTHNpNE96WpwOWONpXJO+QbmNqw58Mo5WGG7ARjIET5C9Y9Iuy2YJPoRwM4HHeDs2Lj5df44yURO+PxuhNxQOgvZlvNqMaipJlcMFg3uf8OIeLystSmCJm1vQmRMCDgcDuJUVa4VOiIKKIVdYeAj6HTBOG0JlQHMdsXDbeoJwKNh4J9xmVzJLf2+Ui6GzowKaKMkJLzVE1w1k9CT8wHCCUgVle6tIaXnDCdvQK4uFWzGiLVUDLxf3On3Xma765DdT0tnoqr75CYEYpWdqHUhIGymxR8NlxdbmEZYA/bIGfhUumnD5Mmfjc5eZOJKavPuViz+nGVE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CnZY+F4w4GfANHYkmx+NR/A5pm+kA6/lrPWPnWAocAcpqoVOcuz6sT9P4sXp?=
 =?us-ascii?Q?+IYA8437rHKlJpr7szp78qOvRIa+Q1IZCVuk5oBZ0kj7XakN015+rj27H7nD?=
 =?us-ascii?Q?e1ZAefNQ2BgRtluCsYAMjZEGOoU8Niy7l6474xTMrlG+gnW8osJyq95BOaaR?=
 =?us-ascii?Q?/bqhg5D528dGOBftAiD/zJkNRmoPAPi1gk9mQ/K9FeBtqv9CNwph93w+eQIr?=
 =?us-ascii?Q?OxdphQV179cPK8f37TJq0/N6KGiRBgUg25z2UtXkuD4w1pFWTStTYXb6W2jN?=
 =?us-ascii?Q?jmOf4xy5AlMnfZQruJR6RyHmujUy2cn2aYzyYlPv6pVPYZD+e4TWjPhIZYvA?=
 =?us-ascii?Q?s3sR0TAPAWkk3s7KT/nWIV1X8B3oP3NA62X46CfEUCPtj5hm+KPbtdy+uGq3?=
 =?us-ascii?Q?LdVXseZViGm/67y5BDf4JfQN2sYR8VJVXZot8Y38jQac+jTD6rilE2ZctHa/?=
 =?us-ascii?Q?o7iFmaYggzRwcEAAIPqKKZtgh57kuhUx3PEu69wfz6i/JWImNTQVPIkZUnsR?=
 =?us-ascii?Q?KvnO3cKUDOWWB58uhWBQjHSCrzxLTQXGAfCOE0+aLN4iZ0wixKaOucqomEUc?=
 =?us-ascii?Q?0IAw3Zhlm1ZfYMxWK5KaeVeeT9rnIhgxl0DIYS78f7rEVOVLbGFHXYelX/U/?=
 =?us-ascii?Q?sRxFyfLsAhVoKUu9sWWFLmTVkPFs6j/mcOFXdN4w7yrsP4fjXBII1fn6DvIk?=
 =?us-ascii?Q?QACDjkaiSMIZGn2bDzN+Z5asQ6L8zMFY8utnWlPxc3rrstooCPPmduDOAK90?=
 =?us-ascii?Q?3EVURjxm25shvVt/49NFjI4omTZ27YsjBEB0DBI0cvIV82TmORckWwKa4BCU?=
 =?us-ascii?Q?NgL0XRpXXfzGrFzC8ZWxvIlxlXx4PSyNHY1EGGfWlJJiCFGkXEi7ReNQrrD5?=
 =?us-ascii?Q?8C/5VPDTXA2uvmVMVsvjwAz0/ki9aGmQBAK5mIo6WnBNAHgeWfdvKC/EiyxC?=
 =?us-ascii?Q?rKXztzbmYKFkC4xmjxJPPEGXpdxZ0y5XCEOebCWQJrSHa6Sa9MxZb9Wh3T40?=
 =?us-ascii?Q?iudJU+ycQhEt7PwJysdzKijoZdB6veKtsQJ+sK20ZakapXkLEs/IVwGmeE0S?=
 =?us-ascii?Q?Mvwvbol/HDqT9k+Cp/+yHiyKIHukypD7fXZ4L/gtMf0cIQ/UotjFZ4rtDt6A?=
 =?us-ascii?Q?UKQa8kJt1B9Zdm+NtTW+MnrETL9laHgOJo9UJboSesTImn3aYuADH2AdjcAU?=
 =?us-ascii?Q?14Hc9zGS8hWUVpn6EKUmuMKs3t7nmUQoN20EIgR1vsLIAFmka0EfBoVhS1uw?=
 =?us-ascii?Q?e9wBC68svXtpHsMXEqyH4b10XSv681plU2bSMAB5aNIc/mZnRURKGhofVlUB?=
 =?us-ascii?Q?K7GvCX2ceHYDxdmp0jbvdfc1oDh4dvg/sfC4quofnDLPP1kkheBQKDSIquh1?=
 =?us-ascii?Q?bV6VD6QYIR6D3qWtPcPs1WZQn4u2zEELL5nXv84B88U0ioIfQ9ojyWERK4sX?=
 =?us-ascii?Q?OwFc8Lm35ptr34IhfO55tUYnievK32KyFEZz/YHpKy5gVQpjjvEmV0IIPBJA?=
 =?us-ascii?Q?iz2tMYaZ2ohpku5hwm4qcy6QgPPrnY3VJ/612dz2HJZBI39BbuKlKIcI5SSE?=
 =?us-ascii?Q?zGf8J9FKh7OxzdCNpQ7CyMzscOKC1W0Dm/9bZy052x6VBdMvoVjS71KQ0uLV?=
 =?us-ascii?Q?RHDksOziFG4lowz4ADgznXLk/MU0XYIFgYIKrui1HRYiSkRiXzbSCmluncXC?=
 =?us-ascii?Q?SIKGKywmiygodasT15tRQnqpxjmdOq+Dq1gOId02ACjPN+IYgQNzAz2Uj83e?=
 =?us-ascii?Q?bADv8dho7w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Fxrnk4St8yZGZX9iOd3axCI1x0ZcPIsa4xdkIcrH3eq5wE+NO6IL3Sx7hA0RKYJHc+CuZbDixEKpGGD1CO0l7rACmGil/NsKmpaUfVZZLRnsB0E2BNgr3kIu9SCA6R7Y65DgXh6w90PN9rbk0sNfPTpYZKu4tR6lquqIWShukrQP9zIjGEi6HM1dZUPLPHoqhReGm4QZRloIXOUd0tL5wvSinEKxFBtakMoqmhmGvrbpuJXo4Fa8u4Nwrwd1aDMLgqNPv+bvncvqNizafo3I//a3SzkCBgm9+fWnUwx5xQ7whwTUji3OnrEU2nWCLFMNXmRC462Z7gQjYdtZ+Tn13A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a932bdd0-a853-4c05-d30f-08de96203526
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 10:10:20.7813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Awoo6jJEA3/s1urZfLAHOFOsWAzAyrHcDWbH7GjCuzv9/t8RRxSOd0jXC/DFg+4gUuBx5ALRMOM5nN5B24SVnQyyB+k3MzO1vLmrCRjXw8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729426; x=1807265426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BgiLPCnHP+5QHLjCk6SY4Kov1NJDxim+tH/ndSmfUng=;
 b=Zq14nNjjR72IgM4fyA3uUzTCiPvZLqqZETaWvuCpekC3q5T+M4cSszoA
 D8bL7db+IKHBBYlCMx+Jb1jV/dy6FmxXgzfR6NfUTXCfckefoVYnRqmal
 R4hdca/++WxnXh0cikcBRaQMTRPhHv4lQGIw6VminlNUo9Gl0lUK7UgZn
 SoHP538ul2isK/te8p2yGEnWsvwyW3h7DMNgWt8+BsT0koP0+ACd3x+Cq
 dxXLSbQByC7ck8MvA263hAFR1Tz6LIC2WbursUc4Etl2gw3AjUd59WTPy
 KsiSoVe3t3e8DIWIWLXDqD/Dhw9bYrAN1CuAeuPBRX1TIpWu0J6AF9XIA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zq14nNjj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 1/4] iavf: rename
 IAVF_VLAN_IS_NEW to IAVF_VLAN_ADDING
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lunn.ch:email,osuosl.org:dkim,osuosl.org:email,davemloft.net:email]
X-Rspamd-Queue-Id: 2FC813C8FAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Monday, March 16, 2026 12:35 PM
> To: Oros, Petr <poros@redhat.com>; netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> <andrew+netdev@lunn.ch>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> intel-wired-lan@lists.osuosl.org; Keller, Jacob E <jacob.e.keller@intel.c=
om>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David =
S.
> Miller <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 1/4] iavf: rename
> IAVF_VLAN_IS_NEW to IAVF_VLAN_ADDING
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Petr Oros
> > Sent: Monday, March 2, 2026 12:40 PM
> > To: netdev@vger.kernel.org
> > Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> > <edumazet@google.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> > <andrew+netdev@lunn.ch>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org;
> > Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski
> > <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> > <davem@davemloft.net>
> > Subject: [Intel-wired-lan] [PATCH RFC iwl-next 1/4] iavf: rename
> > IAVF_VLAN_IS_NEW to IAVF_VLAN_ADDING
> >
> > Rename the IAVF_VLAN_IS_NEW state to IAVF_VLAN_ADDING to better
> > describe what the state represents: an ADD request has been sent to
> > the PF and is waiting for a response.
> >
> > This is a pure rename with no behavioral change, preparing for a
> > cleanup of the VLAN filter state machine.
> >
> > Signed-off-by: Petr Oros <poros@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf.h          | 2 +-
> >  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 8 ++++----
> >  2 files changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> > b/drivers/net/ethernet/intel/iavf/iavf.h
> > index a87e0c6d4017ad..8e6db72828ae14 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf.h
> > +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> > @@ -158,7 +158,7 @@ struct iavf_vlan {  enum iavf_vlan_state_t {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

