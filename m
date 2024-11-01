Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9607C9B9B13
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 00:01:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0BCA607A1;
	Fri,  1 Nov 2024 23:01:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id shGAdmtPwc3r; Fri,  1 Nov 2024 23:01:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7027607AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730502108;
	bh=MPbiPNK3doNe5bfNWti+lo3pbDA/pLU5WekK/FdWdyE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3S9PAcl8ftMdzCYIWNWlha7w/FCiYOG7wKfXG75yaAF3oW7CYGp1uoY5qXUOPzsR7
	 l6JtyXbgYr49u1jRj31yovC5Nw7kEdRVZ5C6X/K5jRtD53CEkvJRRrTMsG3NVSLaBZ
	 /oFp/2KCL83HvbkLp8qO0yA22Bjq5lepFF4FvZT0jluwlT5sosg/wVGArRKhhKvjNs
	 HtoChatktE09KVSvXJRli3dOhr0Ibc+uIso2J2TqTp+TpEzwAHhFzEyjnuD3vKcaDf
	 RPmx63byBkgb6h+QoapsxojWQzY6fsqKYNpUX6LKTW8FRGOZKE9EgcwYrPNBu7lqC8
	 SHAND0N3s/jEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7027607AB;
	Fri,  1 Nov 2024 23:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D7E68112A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C23A0403C6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:01:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TmHQJEtxrhq0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 23:01:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7F471403DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F471403DE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F471403DE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:01:44 +0000 (UTC)
X-CSE-ConnectionGUID: QmVTk9pvTVSRwO+tXarJUQ==
X-CSE-MsgGUID: KwFjUCCYS4mF71whX0kf9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30437024"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30437024"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 16:01:44 -0700
X-CSE-ConnectionGUID: uDSYQOC8Q1aJc4mZ3XkPRw==
X-CSE-MsgGUID: XXEMxEpTTh+awcazhfSCaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,251,1725346800"; d="scan'208";a="83204613"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2024 16:01:43 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 1 Nov 2024 16:01:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 1 Nov 2024 16:01:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 1 Nov 2024 16:01:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xzEnf2LXAoolBUz8CjygoKQyHTDKgSkjjhv9FbpDCk7y82ZbLLVqkgnI+G3pBOXwVzsGdpPXccBoJ6j/d1VILBh+zauDb9tLc3jS5ONrsab9U554JIUyPlQy5Nqa/8r7emJNxJMe7NbIQMirrDmVLZmKAT4ihLsTe4ug8pZ+KxTaIoHjGxV/hPhwkcKE8216TgZTSuUtm6aS5MO2xvEttxFQdfVOMkDyQFF8muGJKJmWHJ6W585EQuKyyz1PwD8TSFnW1s8pPK75y+fFT6AXEoaziyPK1WXD1BrjwAfq7LYN979oJd8ykHfeK0CNquRTdtlcHy8AAMfPRlDyDQO4bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MPbiPNK3doNe5bfNWti+lo3pbDA/pLU5WekK/FdWdyE=;
 b=lg2LLJRZI+yoyk6S11lXBhgy1/Kso0//XI75UqRShWl4nrXiT/4OyvepKrX/xMN28jLoOy7+UoHgWTuSkynopm3fqWq9u+pTHPkhJ3iXr7Vm0pZvImcJp/ZZXcCVV3oJU5Pi8eNCsYM/ZSOG6ahp1hqK3SpK3+XC3pIcesi+EIWOEh8gSz3pC3BH3+T439zNK3soq9VPhjHJjfHJLu7cS5KADwsDJh4q7dtQr5Rnvdw+OZYizWYGOokaFHcxVZqHhDfQ2mIaepMnYkXp6Zb+TgH/FIOCyWtX7/eKiSIH9tU4WDfjenLOAmfUyTEc+W/ZKra85BRIA8pbITltE0Iw+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by CH3PR11MB8592.namprd11.prod.outlook.com (2603:10b6:610:1b1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Fri, 1 Nov
 2024 23:01:39 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%4]) with mapi id 15.20.8114.020; Fri, 1 Nov 2024
 23:01:39 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "horms@kernel.org"
 <horms@kernel.org>, "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Singh, Tarun K"
 <tarun.k.singh@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/2] idpf: avoid vport
 access in idpf_get_link_ksettings
Thread-Index: AQHbJw06PhawaN5PPka7PUE5UBoNmrKjFZfA
Date: Fri, 1 Nov 2024 23:01:39 +0000
Message-ID: <MW4PR11MB5911CC01EAA08BFD0E38F4A1BA562@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241025183843.34678-1-pavan.kumar.linga@intel.com>
 <20241025183843.34678-2-pavan.kumar.linga@intel.com>
In-Reply-To: <20241025183843.34678-2-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|CH3PR11MB8592:EE_
x-ms-office365-filtering-correlation-id: 8a40e730-08c5-45f3-17fe-08dcfac924eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?PoFGK4yXp54sFSd1PY3ffdI86kEcnPKkHzC8deDhhIwdMytn5uAjlMJzukui?=
 =?us-ascii?Q?0K0PqPDqN90OHH3UgsfwX1MMoCsfE8ZnQ97Y2nP8DUdeoD9k0kEj9fT93VyW?=
 =?us-ascii?Q?tXPqzzoYkA+QjXNJrDikZECYsXMVCXlFtl0TGfdZIc6iSakvDFVhsoDp1l+N?=
 =?us-ascii?Q?4CNQwzi7jSCozcsvbAw9oAFdZ/0apxx9QtfuA2mZqhMhxqMdsagqdb16rvQe?=
 =?us-ascii?Q?xxGgpoaEReu9oM9COobMLke3Ma8aw9XTAJFc14lXV/E1EtbIUlNYPjISjRJd?=
 =?us-ascii?Q?85Pg3lzmVjIEmZb9P1wQ10ywa8D5mlxnpU6Iv4zy04SbZA8+3IkF92492inZ?=
 =?us-ascii?Q?pEJ/ZHSnZrFYiBbZfnrgei3GUJR+RcP+cPTNouHQWzgEmO+3/yhg9EGsj55G?=
 =?us-ascii?Q?df00cs1HJ2yJwC2qdPeHPZFJCnM85RKprs86jS5jdongBksXgLPERrckhI/w?=
 =?us-ascii?Q?wC+1UInerterR8PS+7LpwtVYRZjipPthA4pyDj4uuBxbeeI/2EbfYap8Hohn?=
 =?us-ascii?Q?Pzaa/VXvX469KJPJDqVlT2a6LcRTI6MTWQad64sY/TVJHf+yuYhaW9u0sb9A?=
 =?us-ascii?Q?8+m+EiojOVZMih8Al/5l92ucnwom9MjnlrVDAh3ykfUfwf9a1vgLS/8WANNj?=
 =?us-ascii?Q?VcUhB9q9PqFLij61mZU/KXI1xdmHTJpvz9VnaUHc70ruAP0Ju172TJZ3uLqf?=
 =?us-ascii?Q?l2oailHG+PAxGco5omI0nfNdYyp8TjbdePvD5Ha8HzrW+p5wwdLHIJ4zY0hl?=
 =?us-ascii?Q?Dy4VmCRkS3jB/x3iKWLRk8e1XFzZameBGrSgYdDDUiRsnrSg8BeyBRuM37Py?=
 =?us-ascii?Q?jDJTVVbcK8lXHy9tKzD1VCncb/b+RaGMQs2feYd/DgA9+AspFZ9+HXKSOSMt?=
 =?us-ascii?Q?hrOV2GRtquyS/0fEjjZSK/heitw6ImzXGpR37t+5jApZ8cAqz+IFrC4cMrFR?=
 =?us-ascii?Q?y3zLGbzvEj1IBX9D/0kFC/O4dyKN8IOECp0534DCWQhwzVSIoEboZl5ZW97/?=
 =?us-ascii?Q?IpahiQnFygdQ1N8qDZfCunuQ3J0nDC+FRJWipL/bN7gtfmIs9VS/N8+SfN6z?=
 =?us-ascii?Q?icySCsXxMLu6nqcC4bax2Gs3MCe6AJoi9uiLnLNTKwj65IIlUyW0yFllHFbR?=
 =?us-ascii?Q?lVtKGu4vDbzfkVjZMZqYm9CgIbDXXLDPtex8L3FNqUUnNL0sS0o4aj+Nt5d8?=
 =?us-ascii?Q?B68dc6Nzf/cPRtjAsCHj2ohSZhKlLgtbNzsuMffwRhzxM5Eml3oZnfF4DR3H?=
 =?us-ascii?Q?HPKgJMR20klIwB2IS1FL/5gAHyHvPKp7+ciB0lxrYi8xcV6+xMBMbhJ+jaoA?=
 =?us-ascii?Q?5q9+XKIPYeK8Lk6utW+0fx66MAqFI7NGlvuAeHX9dvVSOAW7Ce4QqeEyE9J6?=
 =?us-ascii?Q?nGmRoGU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TUGzLerr0ZwdQR9Ao9dY8hMGGDbsD/489eagihiypeMjg4NSuwjb3XV59e1h?=
 =?us-ascii?Q?nY9iGbUilJmk72XAPIrf1PYq0txACIki4DzoL+UOS1+umMZSsO03GfhCuJpO?=
 =?us-ascii?Q?4bQSURBGk2ttnrcKUGLscM1axW4eUuMBfzc5Ag/eNWYrE/8iiY7k+K5uwspG?=
 =?us-ascii?Q?SGLU8UTIaBLfQ/qyP3XXuBBDzVZq8S4R6dvjKiznJh8KhVffWIzjpUxVXJOL?=
 =?us-ascii?Q?F9f5vTTPUsusvDXEwnyrrLU8KD2XL69FuUri8AKDTjringq6yAzDihNDs+yC?=
 =?us-ascii?Q?G/zAfHyvEBw+XqRAYH9nzv7qnScQ0jcmF9De9JFafOT6rSQ/2LXeh4DGCW8M?=
 =?us-ascii?Q?1/Vf54drIM716/cHlqKxcqgaWyg1xBV1ooVCiTqJgxM0v/J0nBNFMIPWgJFG?=
 =?us-ascii?Q?ouRcPQwb1c8JE9Jwq7eMtMYZ+WWub5IFwhaJYw3FvKWgOyqeM6SnwV2Amue5?=
 =?us-ascii?Q?XzzoB3uEC2WQ76XxIYT25jzNN1VmH4T65U9U0RWdv8sxRS9f0hW+SAvYOHmf?=
 =?us-ascii?Q?BRcYHIloh0MrBeCgMptSyezYJzQAm4FNgCMfUKlht5nXnGDME/x1JwjjW1iR?=
 =?us-ascii?Q?1gVUBBpsArc/c4Z70u7QG8MHZ+lJADgzAdQn1TI+VEzXLElwqg0wq4C5OuBS?=
 =?us-ascii?Q?PrIVHrzDPnR2Ax8nUTVgorlbYNp+li0DTYZqG5Ub6TPeLR+pv78km6DMAUAZ?=
 =?us-ascii?Q?YWuIO+qq2aYgxabrr4zORbf+WKIk2YrWtvaSX7S0tczaROfi3gsN2kt/AURB?=
 =?us-ascii?Q?3Uv/SswQcRuAhdJuHB6XV5qQBkVbfDcNTkO6boBst5xo1IkZte80Sywv+Pqc?=
 =?us-ascii?Q?LfWv/kbp1IR6cgKBCy03yslZmHbuzDYIYNhdkwI8zZPSlXZ5cVfjHq2/wH8b?=
 =?us-ascii?Q?ZaJTUs0acm4wKmouO5rS9i52xlK3eW5ehkbIEeiORF7HFNDlLMU9sIjmXrxz?=
 =?us-ascii?Q?lpOqgMIGihksarmzLkSwRRq+fDhqfCKAq0/yFAjXdaRizk/5OtLEyihYctcx?=
 =?us-ascii?Q?AgX/nZJy3LSkPUcSh3k3kNqs/1opJ7dfa9xUwGrfhR3Uxh8QxOulR94SCiKe?=
 =?us-ascii?Q?3gGw8+5JCP3U3msN1zIW1tzPP4oKFtlDmfQoeus/OYOBT6ERF2+1F3umaeHa?=
 =?us-ascii?Q?RZ3PZMRZeHQi3WRy8DOZ8d2ZCD568ct/fvHlvL4iQUKRIUxEe5AKmu41CVoY?=
 =?us-ascii?Q?UKYYTx2YsYSTV3QwqfwzcOluGrgjtaRWo2t8RrBtb5smhIgecLqAbB8ew5Ll?=
 =?us-ascii?Q?KHfeu2Fv6e45tR7hseNn0KEaAlQxdQH5pkgkkynd45NJsD8dHBJtFkAhDT6f?=
 =?us-ascii?Q?2p+6Wdrr237l4j+RuqV10Ea6RXTC6IpSyefN6Wen8Ox0zQBpIxsbsGIk8nfH?=
 =?us-ascii?Q?dfEaUfkHSRALYv17ApPQBRP0OVugrN9CF1DJH2ktctmFVytUvSGByF/ad2KC?=
 =?us-ascii?Q?CUNJOY/YSeaAzmdkpcaQB7Ag+lhaAk+4ufPbkVlKZK165lSynDJlpJniz6DL?=
 =?us-ascii?Q?xUzuQ6+zjW9V8YGurlUUXCx47L9mWLOJfF0LafGCh32Rg/PRLuuFTHpDQm/y?=
 =?us-ascii?Q?aqSE9B14zrmsHHuq0UiJjcZD9ANRQBt8H/4fmw8HYu6VrwdSWuWzL3jfizfj?=
 =?us-ascii?Q?Hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a40e730-08c5-45f3-17fe-08dcfac924eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2024 23:01:39.4418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZH9W/XczofbXzPNzG85EavNZsewgvaSCpd+tzKy++thUW/wo1zyY9MCHQT0g899AJjnMHDSjDdF2NqSf/+jy79TmSwNANGOK0mmvO66yDLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8592
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730502105; x=1762038105;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B2J2lsT5P5HbW0hrU0b0nPzSvzNpsLtxaQMpiIiB2Vo=;
 b=e35J1qtlqOuFV8hFIxE7SBB/hzAjEeiobR/gD/U2n1NoiNn1d3CQh6h9
 1QgwdnTRrwjr02r+rw13qun2AmaAEd0SNPpVbIJnZQUibmeNm9ydcETWC
 CNVOw+3jebTOyduSlai94o9tD0UU0/dbUxSiiVvvqvjCynBcr++DpdOwn
 I/Vs2GwKDPZs/2hEa0QolNVYq90RsuEpneu/Md0GUkEZJTW9eLcTC18fN
 lrdesFbDtRcdB/+duFuBISTMCqxD/rfPzVCHl56IaP9Cb/rDtifxHlgds
 qi15s0WyB7Bi+du+jfCW6LggFFHXnNkWbNfd6gTE0qN6o1vSzHwOfByxh
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e35J1qtl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] idpf: avoid vport
 access in idpf_get_link_ksettings
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


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Friday, October 25, 2024 11:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; horms@kernel.org; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; stable@vger.kernel.org; Singh, Tarun K
> <tarun.k.singh@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] idpf: avoid vport acces=
s in
> idpf_get_link_ksettings
>=20
> When the device control plane is removed or the platform
> running device control plane is rebooted, a reset is detected
> on the driver. On driver reset, it releases the resources and
> waits for the reset to complete. If the reset fails, it takes
> the error path and releases the vport lock. At this time if the
> monitoring tools tries to access link settings, it call traces
> for accessing released vport pointer.
>=20
> To avoid it, move link_speed_mbps to netdev_priv structure
> which removes the dependency on vport pointer and the vport lock
> in idpf_get_link_ksettings. Also use netif_carrier_ok()
> to check the link status and adjust the offsetof to use link_up
> instead of link_speed_mbps.
>=20
> Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> Cc: stable@vger.kernel.org # 6.7+
> Reviewed-by: Tarun K Singh <tarun.k.singh@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h          |  4 ++--
>  drivers/net/ethernet/intel/idpf/idpf_ethtool.c  | 11 +++--------
>  drivers/net/ethernet/intel/idpf/idpf_lib.c      |  4 ++--
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c |  2 +-
>  4 files changed, 8 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index 2c31ad87587a..66544faab710 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
