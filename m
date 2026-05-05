Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INFWML55+Wnz8wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:01:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F86A4C6A20
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:01:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0D2C811F0;
	Tue,  5 May 2026 05:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vf2NjC63oB4N; Tue,  5 May 2026 05:01:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 157A0811F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777957308;
	bh=7dsKQ7ZBpXCOWHb7R9MyII9y9rVPI9ZfmJ+2IP+r0F8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lMCB28LWmp8+5SSDFhnwh7qF0vYRhFEeS+aXVqiktVI1NISgL/h1kx3NrgA8uVznz
	 zA2qyr9YUpVY2+qjjK8WCUlXzI1go72SQSNNN+XWJIX5/CUCtSIZbG8G0yG9la+dcj
	 XDcqDl4EZFnSJL58q+1MZLf7SdC8f/TCqoCjaEwqkVz8nGsA4EmBHecLTHGs4smQIz
	 SyuE7qWoGVRWEVi0IJRJJT7d4w7s/GtgHFljPNbxrbhidl/ubFz29ze+1PKjJrVHXc
	 tSa2LEqh5cdriq8lHitnWf+39kUE7I/hdWlmbVkYNZh5EI48A2/4S6TyXk2CJ8ULr9
	 gOdgHBxMv1+OQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 157A0811F1;
	Tue,  5 May 2026 05:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F02B2DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23E92811EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:01:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ixKF_YMmBiuY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 05:01:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 586F1811E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 586F1811E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 586F1811E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:01:45 +0000 (UTC)
X-CSE-ConnectionGUID: GtZihPWpS/eSvTjcU36qHQ==
X-CSE-MsgGUID: 8EK9QWEfR2CEOHvEPb2cDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78919740"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="78919740"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:01:45 -0700
X-CSE-ConnectionGUID: PVeYPPeiQgScUogPl4H4Mw==
X-CSE-MsgGUID: ASY1/+KnTxeh5rNmu+69/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="259374441"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:01:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 22:01:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 22:01:44 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 22:01:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SVb4xD1VJUKqn5ePVWYpz0MMdGdVqIyroAFy5Fr4pNndvHbQFzNooGiPW8yoGLAsFAbjRmnklIM7zTU5oocsG0CDmZiuhYgeViu8c1nc5zlJEw5iuDBD/Yd5/oO45hij0zEx7yDWBLd1keIhazOaLnKvbW7QBDG/pG7gtCN3yc0JFU7a1sl5n3uCBbW/0Vhg4u7+xR2XaAlAr0T6NqglFOeLYjOl4lZaFg4wrXpkIovoGcTzMsqqq0JbDnBTOECwaAqP+d4uSVQbbeE467J8cOj8q9xTeap1IHCws/qUETJfrKoylLUr5oe6VLBCmkXFSYxWiKwE/xjN1meM+ukL/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7dsKQ7ZBpXCOWHb7R9MyII9y9rVPI9ZfmJ+2IP+r0F8=;
 b=UkUNlSrUjEHWVVoF8NbRalInktO1cGlll4A0KqypTHt8rrsIIsz+F3Lre7I1btCmkJNSEbVa1F6BV6BX5gyENzaC1pqhUVqCFEKiVLAqHJt+f7ZwsPmp4dyEdP08pU9hriEmJXQnqriYfmnSFzLtyOa8NQ3KXwRp52PKZdJoY/Lvd72hP/pIXrnuUOHe6a72tuj3xAcEY2TKZ8icEKWXqKgOBgy0GSKgcL39rL9nbKo4OwbWNlXDT4tGIWP39n4ytWKsGPkKVftghEunVP2fSwrJ/3cpu8ajSw9fIu722YsTLtxGfOkqxGICir4lBiyGQaUUjfPO44MF92mfDykChw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SAVPR11MB9551.namprd11.prod.outlook.com (2603:10b6:806:4e9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 05:01:41 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 05:01:40 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Szycik, Marcin"
 <marcin.szycik@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix setting promisc mode
 while adding VID filter
Thread-Index: AQHcvbqxqUmv2LlcjkqkKIm8d8wZarX/Guyg
Date: Tue, 5 May 2026 05:01:40 +0000
Message-ID: <IA1PR11MB6241D9DF8B2100C4F88147258B3E2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-5-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327072332.130320-5-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SAVPR11MB9551:EE_
x-ms-office365-filtering-correlation-id: d18dd223-a375-4d6a-4895-08deaa63652a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: KxolF0FhMHtrlk3ffD0WY91r62oEvF0JkUrimSleRxmnDRWOYKY5x0ffg65BXyWAbDePb5ePuwPvOcQHXqfMkRPe6A3ZWg13jiChu2u+0iih2hfAEq8VC08u6rh+poNVZa4zhudFSMPzC/usrfStVnx228GHt4/McVaZmFz4KRwF65C8y091ryvEskFT4LTnlD2TixUpolHYXAhNRrGGVD5ctOD7DreHuiB44gBmpZ/PEV7IgXhqKCgS7hSyt2I8ZF5BUC5JxuRZdI+6VpNDiQVkMKUCqxqnr328/8eRf+cHeMKk1j+kwaPKRRmVjBKdDEPA1gwT1WzaObX+ER2wPeBbNrAdk5ujSmHs5rZpm/KIjETvKiUiE4BkSD0xuhzF7d//88rGlGg8ReLNndM1E9SMGZnD5GXptNw0B9eW8+TDwW9x+LQo1q9jpni06B55RGmgp89MbHejjmcla6iFStwPfWai8gPusMOc5HlEQk5FqBaaisvnYCpNQ4Nj93U8H16NTFlHF0AWQCbb4nKr0FxmhW/loypj+mdiKCkgPgamr3b6KYxw/HuCGgC4Fe1Vetswz2y/zv6Llk/m+5z9kA1xK7g8/PpjlC9DlauK+mmvCH5p8yN7u+Gkwf3YKvctUaOBONDhYD1Bf577zKVqMvzDVQVo6YOAsVGYncEyjOBjT6CbKxUesorIuKdlFe0z2vTXGr6EVQJj5MG5ynXBlSEMV/TZ0nAj0ACjHF+dGdSd4pHSSDgebojFodq4zQja
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Es1iuKhiC70GsJb+rCYcewsHVHuB/JYmsv9O8kJ6WbKcj6pztrHihP4Dfiym?=
 =?us-ascii?Q?vtuSmbaBJR5/qEnvhKxfhTRaIF6Q/TQxii0G5M4hrA2TEVa7qMGeK9IC49UC?=
 =?us-ascii?Q?dEwhsHxHwXgzdesuMnArZvPsoyRRc3/38q8PS4vKYFB9pCUL/uryB+kf/B+8?=
 =?us-ascii?Q?fzAo7DSDvY/RWWSIjFqscpGZLx1/m9+05MbIPqmuVA+yTm/rSFkVkbW0TC9u?=
 =?us-ascii?Q?0rtqJmNvG9WO7mwXOwQyQs+hXa/jVlqEPjsup0dEOA7EJ7Zd1X6CAxSoRtpa?=
 =?us-ascii?Q?0Ieu2eIT/QOfB8lOU4L3AlttI3P6WiXhC23mHxiA/xCmrdqe9Dw5qyqNe1se?=
 =?us-ascii?Q?6b62PKiSEbFe3uIQYywWdUrcFb1TNvEHNkpjFsan3xIbUtWzwWi5UudNqqRW?=
 =?us-ascii?Q?rfDxIg5gFu96QnEksslL4K4JnYU4J0u6q2Tw8DKpAGz8mwXa+lN/EIhfLALB?=
 =?us-ascii?Q?vqK8dABfNUw+5iG+CEX5eMZShCBYs5GPyp1BLRo7903TA39sOCO43B4CQeoa?=
 =?us-ascii?Q?avOTnAnlYq8HWnzYEHTusXV56juf1sLCRfT2VH5j5xMAsA1TOwYKwEJPc4gQ?=
 =?us-ascii?Q?EG5SzwaztkmU3TMF3tnSMcg/w2mawdgs0iLDMyak5+rbs0IDNL+uEEkTxG0m?=
 =?us-ascii?Q?VUtIEFo05JTyXV/8wcXQg327m6maGuMIMuIfeTzMBvuEAQLuCxNUHM3Vm2aJ?=
 =?us-ascii?Q?cIFeCz6snP607OLe4bTLX+whDaiVgJKO9ibHvhpJ63rHetFD5B4ofcdhBgPk?=
 =?us-ascii?Q?J7JcUu5zIVTxekxvnNqQ1+T9sucQC/nF+eF/mAGTZanNd+eFZKR7vQZh1XcZ?=
 =?us-ascii?Q?dNLqdFzVCswmoIriUjyRQBYdOpE/u5C6E+UErgYF2VWZkWRaac1wHtPK628d?=
 =?us-ascii?Q?zKPmxLdgisB2juSwz8DSPorYF/wAqXKHTCPm+a6w/6Xdp4DVJTy3caBFwlfN?=
 =?us-ascii?Q?Zd+GDGI+ura0DymxEGbqVOmAQg7FXOov/h1cv0nnZ5Z9nA/q0pTq5yeR2IIY?=
 =?us-ascii?Q?Vn0K9gYN/VwG2hsehMelTrY2c1AyqxMjJkjigOJwK4BTlhXTzyXE7fLZ6e0f?=
 =?us-ascii?Q?XFbtoDdE9sy7xYmI4SwZmqr0C9Ph71E8C2r6UshBUIMCLxNxEYBGMQ62w3kb?=
 =?us-ascii?Q?wiamYDyh+CrvQtfUvYCZ+zihJUUOCbqWdXEcd1oEMSlodPxcMwt4qwdCxfA3?=
 =?us-ascii?Q?rxlTIGCditEb59Gs0JrIMwIVz/YvuPn58RG67EgatT7wU2RSqaJPLdARO3CH?=
 =?us-ascii?Q?0jvJIIcvZxlWu07sM64w4KWon2UBye8bSUF+TMm6unTTRPSU2Vn4qUHKx1zw?=
 =?us-ascii?Q?l2l1zmClgtw7ZD+x94o5SRk9eqtzh5zB6Ruq2/0PUAmiKjMlFn6Edp5yWipd?=
 =?us-ascii?Q?v9ujDQ1TzkKHxdX2RX5tUA8PS1phcCRwbGpHPomZBwUO/emyMt0SW+CY+4Gc?=
 =?us-ascii?Q?dDCDmjj6EDjEMOzlA1OJLBIfuwWLhaVny3MwWLK0sb7HmXY7jvDhunWZGSv5?=
 =?us-ascii?Q?RWteqhYjn15/aQrD7bc5L1MZUZh0fUxmblqlfMoikI3FKZ9ozQDHTrpQZwe3?=
 =?us-ascii?Q?MuF4KYkQJ7PCNClY0JlDQhOcB5H/cg5L/rfA5W5C6hT8efh+WmPiFlYVj/Xf?=
 =?us-ascii?Q?frqEN1basUKs0b1PavF1o0/3Gs4C6x6EJgScWA0a1DrM9rhyvxjj8Xj8IjDt?=
 =?us-ascii?Q?atqJkd7+E7rdMJMD8AEBJCEwQ+80eYEpNAfHHALnjWPDN8UP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: B78OrDh/C89x4UQ0nzgZ69nbeHHPqoW2o+0JlY3wgajoaNliHWOstc8LwzK2eO5xAGB3V+H2ZmnACfR1ATTBP2p2ntvnUY5R0dKPhSSmpQTyK0U+pWdr86rI35W9izZ/ElA76pTpJ5GZL3Q299CsMqQEJFZkBdsavT1K3DSReXVARhLod4D7XGdTaILSMwtUovKcQoBy+untPUCUN3MpqpO9Lu1SHaxTWC6mMhGI69lDq75IJYf/8ge59vZY4x6xtsAzDNbPNjUiKXibHP1l5I7cLO7/pVrD5HQhRap7KzIorDsK4zCed83061jnJfIkUs+2uauDgZcTbhVS6s6iMQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d18dd223-a375-4d6a-4895-08deaa63652a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 05:01:40.8792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WVYrrq+kXpRtL6xuDOL45nhfpIRbIkCovpGGirw3gVYauzf0fg6kISnQj5YXlwOf3u/nQT1Nnzjl2mIOm1XwtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAVPR11MB9551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777957306; x=1809493306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7dsKQ7ZBpXCOWHb7R9MyII9y9rVPI9ZfmJ+2IP+r0F8=;
 b=mQDVOkoUiiCyxppmeo0kAzUytUhVS0GdXa/MHIcCwOwxczDhjJchW+rE
 OrsgoxCrzqgKDNedGVkCtKGhpwsM6KNh0QypsZGyGzZ6kGtuK2v6f4p5H
 ughGupfVYqtMb+XG6slsx19yjjUtdeSt99g9YMjcZkJzSCk2H5ZzBjRJB
 gjObhQ3Y24q8uTOnT7LsHfFVlr5epOxdsqpqua0i0RNI8K3EPjhmoqKz2
 UVWHRQZxpVGsnyUHx+WDJtXWzYKeiomSzurhZP74qmciV4nocUTIsO6eu
 VVfyszKsdJuWzB129344+SZ83TSqRqw5Ih3INOmF6Gv8Xy5Y7xNUlll8W
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mQDVOkoU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix setting promisc mode
 while adding VID filter
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
X-Rspamd-Queue-Id: 0F86A4C6A20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,IA1PR11MB6241.namprd11.prod.outlook.com:mid]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 27 March 2026 12:53
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] ice: fix setting promisc mode whil=
e adding VID filter
>
> From: Marcin Szycik <marcin.szycik@intel.com>
>
> There are at least two paths through which VSI promiscuous mode can be in=
dependently configured via ice_fltr_set_vsi_promisc():
> - ice_vlan_rx_add_vid() (netdev op)
> - ice_service_task() -> ... -> ice_set_promisc()
>
> Both paths may try to program promiscuous mode concurrently. One such sce=
nario is:
>
> 1. Add ice netdev to bond
> 2. Add the bond netdev to bridge
> 3. ice netdev enters allmulticast mode (IFF_ALLMULTI) 4. Service task pro=
grams promisc mode filter 5. Bridge -> bond calls ice_vlan_rx_add_vid()
>
> Crucially, ice_vlan_rx_add_vid() fails if ice_fltr_set_vsi_promisc() retu=
rns any error, including -EEXIST. This causes VLAN filtering setup to fail =
on the bond interface. ice_set_promisc() already handles -EEXIST correctly.
>
> Fix by adding the same -EEXIST check to ice_vlan_rx_add_vid(): if the pro=
misc filter is already programmed, continue without returning error.
>
> Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
> Cc: stable@vger.kernel.org
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>
> drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
