Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMgEMcIG8GmoNQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 03:00:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F92947C499
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 03:00:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5200160B24;
	Tue, 28 Apr 2026 01:00:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rvmt3VRdHa3r; Tue, 28 Apr 2026 01:00:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9C7260B1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777338047;
	bh=qObNaBZGHsbLuYZrYCm4lpy10dPcVp35QR4qL3U9+g0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uaR7tXYPOpWWiF31bwbVzOpTVErWfCYskG1eoMZHe7XQHgx0+OKGl6iyfPskNPZR0
	 tBcKxTEnOy+6v1AXNeZAUK/r4d6qHJrwv+aL+DJMrQPz4KCLeKSm0Y14XX/I1JwwKv
	 1VLQIuFOiYnY06wgP9Ji4pcNZuOcAAOIb9isA7jtE14tMfpQFcl65dHcqd95ubEYaq
	 8NdGaJVC4Wfhg6ErhuCBWH0peSrWUVssWKqlwt0rZjb6CEBGE5VwnMWdBi7NhnhloF
	 qFJIc9/EDodwQC1VD3GsziM5/gGsJ/8rkI4fKfj1PUkNPvC5MErsuZYHh2PWd9g8EC
	 Pv2RkA1I8P9cQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9C7260B1F;
	Tue, 28 Apr 2026 01:00:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D442A23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 01:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA1158194C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 01:00:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Ypi_CowYFq8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 01:00:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0C6AA816FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C6AA816FD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C6AA816FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 01:00:45 +0000 (UTC)
X-CSE-ConnectionGUID: Gmvdv+nTTD+oxPte095Cpg==
X-CSE-MsgGUID: 2iJW/H6NQ9OrJ53VuNQdKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88935543"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="88935543"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 18:00:45 -0700
X-CSE-ConnectionGUID: A9aIqJ4XQc6RNs72lYKXpg==
X-CSE-MsgGUID: GcX4A/1FQ4CahBIDITVyqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="232789649"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 18:00:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 18:00:44 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 18:00:44 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.47) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 18:00:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WU+JUYVew8ztulS4lSjPFIq1d62gok5AIvyGnjXVfSW4o3Hs3did61iesaRqDmhZBXlCPOAfQWeATuP0pyXruGGO7U2eJAyh5slgMW8T8ZuClRgT8RnZFORvs7VggGHRVVsTNVVuRjGa/IJ7tDyqmn6y31pAPFnczXtqB6bOAhO/ZnML1qN/8wxkKQtMxdVZlczb7ruLg+FSUzHX2XJTMG/X67E3wnC40QE0ldpgwjOEKARvKk/tkilpDN14cdLRVjEaWl1V8xABfqgpvOpKjxEjBj16KQyghcJzCv13rUOjYRP3d5EeNtKY5BlbkpRpMIng2gSBC38IzDHCcZaWzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qObNaBZGHsbLuYZrYCm4lpy10dPcVp35QR4qL3U9+g0=;
 b=VoUeQhpubPTTgfTsBrTXA4Pxhp7esOfNK6Ai3BraCd0ELmpStjAuXwP6JACOb0LDap4eTwca96DqpeinY7rI8pb4isXadFZTSppbgKjGX2DmeXlYxXDNgKD4uZvqFEq5xqgFsfFJaVC9g6izYa3kt4R59V3FybjzeLWs+MStIf8QL7s9gteVY5E4TVsfX9HSh7xbWjAc+U9RIQ2x/93Bn1j8uzBw8NXPnx24avhiSHgvKsfec8ihNkNaJzJvV67aNsRhZU0nmbuZDLZnSpB3YKfaqc8aOQ1/mTYDA7VURCXERymhn9qGOmXZLk1SOtKo5Xq/ZmXd0OXVgqqN783H0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by IA3PR11MB9061.namprd11.prod.outlook.com (2603:10b6:208:57c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 01:00:35 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9846.011; Tue, 28 Apr 2026
 01:00:34 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: ptp: use primary NAC
 semaphore on E825
Thread-Index: AQHc0lSgwz/RfMjH5k6CluUWyK1sUbXzsAXQ
Date: Tue, 28 Apr 2026 01:00:34 +0000
Message-ID: <LV1PR11MB8790B76677F71878E4A2818E90372@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260422123144.485930-1-grzegorz.nitka@intel.com>
 <20260422123144.485930-3-grzegorz.nitka@intel.com>
In-Reply-To: <20260422123144.485930-3-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|IA3PR11MB9061:EE_
x-ms-office365-filtering-correlation-id: 02471709-2224-4ea4-d484-08dea4c18dcd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: HeNS3zP8TvkcJ3vqEahIQfP7M2xzz5fK6FedO27h4mipYVt0/T5p3WrmE8OReKNo5rFFqjZ5Ki2gV5vqB1narijAWRoCjK6I9VydVIzVGBM8nrhn9pjIG8Dounl7OdiOTHfJ1l8oyuT+s2+lo8I8s6i2rPb9z9zA5ujrDcjpLaAk1GuyEi5rzcde0ysPuRQjyxk37HefnyoBQydq9nro/ufurxzJLQRSASAIgIM1QXo7iqhCOqkbkiaIRDbE1lrsZC9zNIry3N+W+Y260iUI9Z6Vsl/7NL1bg2uia4gpNtBQSz8JckGwfHgWO9iyza5+1AUAq6n/3TI7837Pdqng4qkPir0o1jAxLiYSF8VKZrlEczKwK7w1cU8Atb0nOuQNzlMPZ5AAPFSQx2BGB8dexElyl+NFp+O2ai3KKtVuSBjp2NeaKCh4QnIrbwZXeorAxlwGX3Pl1/Pqt3AgQq9arhNEQKUN9MvvalQLXHaVuSdgCLtAVCJsGhn8Y6bclc2DkVUDiOFUE7VoIWMjfvzWOgCNUpgytZF9Xy3lErdkcyLFdVCLCSWJQdbh6XKu0rRYs+0hUFUxxOxoy1AfBxdUrCuEbWjQaJQ1ifEsRg4EZ44FHl+YY4T+ejtQ71IZDUI1ZhsJNpPLm/0+7uXkqY9cuNmoTwhR2rWgVbGf1GZ+DoEDlTTxafOIzC0ASuGO+TUDGrd3zBgAWKuTPhg9wIlSk433cCXvMEF5gfmjSkbYwBciv95OATlWZXuxp7l858M28gKq2ZBf7ei7HFVgUzg5hKwUqZUfkdvWKyGPxRtV0SI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eKA1BzCbBj3rhhTkG6pL+tE9HuFdNCuxXExcreNlZbA/X6mzww14mKd51alz?=
 =?us-ascii?Q?uGdMk6YWcWgDyfzl4gU0h0qEixt2qrCYLSbNqviFKyKrqHc1hhv/V7NMIkiH?=
 =?us-ascii?Q?nJ0+ZyxJHQSZ8yjp2YkKO6CGo8Y3LwJ/bFH5kAsXKm/dDHon1HfDp36hoXjP?=
 =?us-ascii?Q?nnwrhfq3oDGj2iokCcRPACEFQ5zqBIN1HQyKnrovt1fyQqpADO2r7+csQiuJ?=
 =?us-ascii?Q?KWJGgxNS7DuWSenLYVGaqfUoOwmuxdrkiCzTXN+mNYu2zMRhc3PFJ1rq0P57?=
 =?us-ascii?Q?Mc1K/ritH7GfZwW8N6gUs/XNEkI8LVagIuzcEAEEjyrcyfVv699zWB0RIraU?=
 =?us-ascii?Q?rrMPxCiV66fj3sKZeWP9wZ2X1gulKePp1NtAPluQM5CLQE2KniEpWy1PpqYj?=
 =?us-ascii?Q?D/IdsBFF/Swi2FVJen9KIXQrt32q9yWkIWw0eFLHu03SqJnBc0flMQGXt4TX?=
 =?us-ascii?Q?vLTWsz2L2eaWOD5EfByHMwDjhpByeKI65qZ1Yr4vVUzC8clhjEd552fWJqdD?=
 =?us-ascii?Q?zSM5QUzoqM5OJawsqq6ygE4RpBLjUCrwip4Dy5JOtC1oqYna6d4HRn+KDaN/?=
 =?us-ascii?Q?C8F/ynuhV6I2lPbSZbjSFD5Cit1Nkk0P2/ob4qWAANFlAlK620BuNV/A4ZIs?=
 =?us-ascii?Q?QVrI8YV4Jupi+sAod4zQDxvuVN9MAVZ5t71yoztAL1bHTQrCVwL0AnTnR06V?=
 =?us-ascii?Q?eK/sZzxF9NzfpXH6TuwqgJw2MAcFfs2Lb0sYP8UvfFSWekQ+0jMMmXf8fsbx?=
 =?us-ascii?Q?oBhUuU8OECNoW6Y5j3/htqQXKGpASrRGQWxcS95Vdcul0DylNNrEAiKeOl33?=
 =?us-ascii?Q?YMPP3nk2mgfOU6fyp69n87TyUB0rTyyAuddODhGX002J2Tu01iiBBjfeI9d2?=
 =?us-ascii?Q?IbEB3LUe3x8+kNRVs2oXX5qpKu1Ur8XUi+OheHV2zgneEdFnjye/r3XczY73?=
 =?us-ascii?Q?8r0xcmOmus2h/HMuUCigCqs06OQoiM8yD5D3t8XVyUa4drgED830YMJ9Zml1?=
 =?us-ascii?Q?UU3uwYuz3FTQQYg/wbWKodbC6mYrBQcXWXRxHdNBMORS+ivviJ15MwiFy8xi?=
 =?us-ascii?Q?hjpYwNRVOjRz6XGPKFTP4oAqkLp9kdyvBEWQjMcl4cgBeclYhUmaXZa6qq7T?=
 =?us-ascii?Q?NA7LMGkAa3JUtqGzr6TUeNMXPxtYpc4qhLBQx/xyHJ+qpcOKxpn9dQy1j5Kb?=
 =?us-ascii?Q?DjLT9y2mctc4tOd/pxRI0cDKsPuoOCDYvwzM+CfI/+FJdtGT5lv5yoOOUcDP?=
 =?us-ascii?Q?U7ZxmGXmpSbbAbA57kpY9O6ZqR8c6tsuL+t76qsq0HDrGmypAMKF7vzNzPxS?=
 =?us-ascii?Q?Be+a7mJ0DCEeuytRXXsLsUZwj147UL60M8NhHeEM3U++nycXjyRDKIWPquMI?=
 =?us-ascii?Q?mdZyuq6rFkolJl+D0g6kVbrpAhIiqlCSRD15xaDSw8Hz40UOQWEFV3XgAnls?=
 =?us-ascii?Q?bUKg9Cmo85Bk2m5mjCt4MnrBVpgDpkEQ6tv4b6wN5ZfSjNp3EEzCjEQoWW1n?=
 =?us-ascii?Q?XQLxTGo5oH9K2UGt8h1+aYITb+Wn4qM3D4wEIvPglVkNgLY4YbUc5dmYiSzk?=
 =?us-ascii?Q?IgVKX8m3iuXdYTeFEy794+HTiI4jK8f8C44muoEKvuTHyRYN9ez1erermpbp?=
 =?us-ascii?Q?XTf6fUUrGtU2vpBMd/YAyWPlqAUOxuc1FX0/Fd3wDF/ldWVQkDHK4zau7e3d?=
 =?us-ascii?Q?JQTb0PbpBQ/Tt7xBqwBwUxDPKdGsJpK9RavgNDcbTdEbZ58uOhM+dU23hNXU?=
 =?us-ascii?Q?S2m1G2QMAw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dVSxgWKKvYVwZaxFjBwdjq5Y/O97mpbDlQGb/A+WdUn4+ZjDeVMR70ez6z1p+s6uDeHNcHhniEHPLs3+r7qDw2VxmVeFq31u/WKshaAtlQLJsiWAYqqaLUTiHbl0G13/5WIRvUKhHMhSWLXJvR425pXHGNzeYqWuW8Tl/4rfBkNmobLRqQ1KpqMnlVfsX3UxKMLsKIRHRZyKhDGbnkxqqqOYoLHeyZZjG/a4EK96LMggUkcR8+zKjf8ydDrqGOXjyd14O1oafuAl6YaQzeNddc6HgW5t/FO43h87s3XXBNZi94OmpFmlibvolJ55KvIESOKAQ41C/QFnzAK6D3w0Mw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02471709-2224-4ea4-d484-08dea4c18dcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 01:00:34.7617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tf2crSALTZk2acw9j63fONm5mF3IX/AnXlxhNoh/YUhVDGAzvF3iLiODjYg6UwlweZUUI+VXvjIN975b6AYNHmWGrbYNkwfHVmckbj9sfEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9061
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777338046; x=1808874046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j+X4Q+quZ7mzIOUMlQfc/ERc2qeXUck52wKKE80PWgY=;
 b=MQ7/s1jM7qugfmAt/+ICiexpANQb0KibN+hKIZmxipFZZ7g0AVSI344s
 6G+XCkSNlRUlnHY7OqfHXE8wobHfSPptlnoB7ycNzTwtDlwlJGv6B07uc
 /Rc/AF9pW3zglwEQJOUPwLTtTFc4IsPdBdsXm57YL2cXGxyX2SWKxzqFj
 lmqsRfhRJe1FyVxfXtJZHxzLfCmY2TeTDFfKEr3PQTQoFQ1WrEIphKxg7
 4BdmTxTh3FzuhRwTyz4gBE0I5kGFCk2i8HwA5/GuFd9mllfIL4r/HaeK+
 13OdXaz9Z7LdszldWkmGaxeCjmmYjcfBuj5jkDCDjuUy1ce5UZsXSA/1s
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MQ7/s1jM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: ptp: use primary NAC
 semaphore on E825
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
X-Rspamd-Queue-Id: 0F92947C499
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[LV1PR11MB8790.namprd11.prod.outlook.com:mid,intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: Wednesday, April 22, 2026 5:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemys=
law <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: ptp: use primary NAC =
semaphore on E825
>=20
> For E825 2xNAC configurations, PTP semaphore operations must hit the prim=
ary NAC register block so both sides coordinate on the same lock.
>=20
> Commit e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825
> devices") updated other primary-only PTP register accesses to use the pri=
mary NAC on non-primary functions, but left ice_ptp_lock() and ice_ptp_unlo=
ck() operating on the local NAC. As a result, secondary NAC > PTP paths can=
 take a different semaphore than the primary side.
>=20
> Select the primary hardware in ice_ptp_lock() and ice_ptp_unlock() when t=
he current function is not primary, keeping semaphore operations symmetric =
and consistent with the rest of the 2xNAC PTP register=20
> access path.
>=20
> Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 device=
s")
> Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 9 +++++++++
> 1 file changed, 9 insertions(+)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
