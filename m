Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C589BAC20
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 06:43:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 224666062F;
	Mon,  4 Nov 2024 05:43:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NB_P1kL_e-F0; Mon,  4 Nov 2024 05:43:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DC4B60635
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730698980;
	bh=8glZJldve0DQTxmrMjC7NWwPCjnMCvUgF80pGfUV0O0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FUKNgOEbHXWx2TqsW9MZGTZosHo/ASfQdPRwTKlIgrNXnSF1PF/lucL3KkSC+Yc7i
	 6Qq2Z587VjJ1Qvu7cn8CntB+rZx56dUUXJ3Q3ECjAbI+kjl3H++099Da0TiKRtCurH
	 3LuFkeB7a/nIxdq5QMM4tWO23ZTvnwCe1DHMjMFW79Chvruqn12O66cll/o40EWvbB
	 orCEV86TDcBSFHEAuol8k/CKM3sCzjPVNeijQ4yaDh61MQCSLoYbOPjTq+8UUWuab4
	 xyb6d0/xX1jJ7bGgA7TW5NAEWeXl5EJWb4lCeShs8bPgKIsZ1tbjZc1R3uVm0HA6U9
	 +MZj3R4YgI95w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DC4B60635;
	Mon,  4 Nov 2024 05:43:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 184C9962
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 05:42:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBCA060612
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 05:42:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cKHHDTeFV93g for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 05:42:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D1DC9605C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1DC9605C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1DC9605C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 05:42:56 +0000 (UTC)
X-CSE-ConnectionGUID: 7rakaza8RiKt8gkUhln3lQ==
X-CSE-MsgGUID: 68mHOvH/S12pJpHeaRrb3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30559104"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30559104"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 21:42:55 -0800
X-CSE-ConnectionGUID: qC1jThQcQem6GFFO2PVvZg==
X-CSE-MsgGUID: mOWfJcKMR3WoP93n0b/VBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="84359118"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2024 21:42:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 3 Nov 2024 21:42:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 3 Nov 2024 21:42:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 3 Nov 2024 21:42:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UXLhW6i8zAY0tdi9eoILjWsM7jhu7vSHoFJ0D2xgzA0EPFgYQ2OFGs2xeoA9PbthPPjlIGB3h23rt/lLfUq7Rw5og65v4eKmPpNAg/A6DWgtCmOjuk+EmPva/NtlruYZx+x6PzIsOSo272hMP0tCns7lH02ePCv7sXAGQ8hHy74VtN1njAKd9lpbQ8+/6HZqv3d71fVALyuaRRZKLaOPoQmD2gFr3AlQ74gqoglVtjQR5OV2SLRtPS23/qXrrTqTV3d32jesogIs9NwmWJZWu4EmMuK99KU/LZU29KaebOKvJhf+36/qUV6E6/en/HpjR89gx5der5hXo15EgvzQuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8glZJldve0DQTxmrMjC7NWwPCjnMCvUgF80pGfUV0O0=;
 b=xTVcc6RDzl6FkGcZUTLPl+QTWWe/eRyMW6foV1aWw+M1qkWxeL2RSxPTmv4XvhE/ybtXHOq0BL7eVagmEYv9GzFH90uL3Mg64A8DwZTLyKc1IBbSoVxTUM1D/lkforyktzr98f55ptMNwJ0rJZJu6lT7ZhIPVZAuyboBbQld4OmNkQlTrClFINSQUV5YBx32+BDcU2O+3cQdA18takAMrNxc+dx+owiRiEaxOtRDsmHrwdrCVJzT2TguondnX11wtFsTnJkLX3c9mGmKOgu2wDWW6FmnlZy7nDq+II6pxWaZRwqO7QeXkn7P03bxH997KVtKAI0c2YYPHG+NEr/KQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB8419.namprd11.prod.outlook.com (2603:10b6:208:48b::22)
 by DM4PR11MB7279.namprd11.prod.outlook.com (2603:10b6:8:109::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 05:42:45 +0000
Received: from IA0PR11MB8419.namprd11.prod.outlook.com
 ([fe80::f1cb:2c2f:e082:c0d]) by IA0PR11MB8419.namprd11.prod.outlook.com
 ([fe80::f1cb:2c2f:e082:c0d%2]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 05:42:45 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Damato, Joe" <jdamato@fastly.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, open list
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next] ice: Add support for
 persistent NAPI config
Thread-Index: AQHbJAmkDhWGOD6U3k+eTTF5bGjATbKmr20A
Date: Mon, 4 Nov 2024 05:42:45 +0000
Message-ID: <IA0PR11MB8419CB331AECAA4FBC593C13BD512@IA0PR11MB8419.namprd11.prod.outlook.com>
References: <20241021223551.508030-1-jdamato@fastly.com>
In-Reply-To: <20241021223551.508030-1-jdamato@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB8419:EE_|DM4PR11MB7279:EE_
x-ms-office365-filtering-correlation-id: 4ab9c644-d6bb-47e6-e11a-08dcfc938255
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Wu7IttC4a6M8w5TZz94+f2QJ88yMq88EtZ3enBMmbIju6aOXZkDWNUQaZT3c?=
 =?us-ascii?Q?8ZSntRBo4YOPVuADBu4p3yFz1gCFdGjl5VJa+SJF3BHbdSs/crTiToZ92tKm?=
 =?us-ascii?Q?a/eHuV+bBsX1QID2bPQLivTWjkxUA9XrjZsYM6AeYIZSaNn95+dBUr6CYYkx?=
 =?us-ascii?Q?JUIRIeAAjfJOqCou7M0H52r/ZIcZ67dpJGafn27uzUqfr1Evx9kVpLS5BYVa?=
 =?us-ascii?Q?HNjeSXhQxp+EWZMmA9NRQ7Xz5U17q7B2+83l5EuEgLuyDuNNveIQGUCtewJJ?=
 =?us-ascii?Q?kMowWRJoVVbNkFx/WvuGRMZnLUWzBiNhlztTyLPSHgIvUULI+BVmYopTu2zy?=
 =?us-ascii?Q?/vO45fzYmBmcHR3wRFzlj/0FUzkMmZVjtWzOpocloORX4OMpk5yugIo/ftha?=
 =?us-ascii?Q?9bdKmSF37nS30l3tbGcyrOYtvCvBw8y988b80ejozc7Zq7garEWa3sNQ5cGf?=
 =?us-ascii?Q?D4UqqU7ci/JSMV4ZkiC5nNmgLy2S4dq/nCerdXOlkNChUF4nfE+jDUJD5Ocm?=
 =?us-ascii?Q?gUirj8Y3VJI0duxev88JLXN6vkMgC3WnBN8fJGs2PfG/f7KKE8/0cgIkd8mU?=
 =?us-ascii?Q?u8u1mJpfae/r6shHxH5AGDC/jAJgkqlNx6mB+kJqYfnVr6XPUvnbblK2Vg3p?=
 =?us-ascii?Q?2bTlw6RJUXv4fkCb22sjITVG3dvgPk2W+E/dNu9vvwYGwt2kjMtI20k9d8Nw?=
 =?us-ascii?Q?/oSJyWaLvaityuFVfEiqFOuJ/iL/eCNd7xHeN3ec9nC1f3gCfBV7R7rcBcAz?=
 =?us-ascii?Q?eqZtWwqZPziVJv7UMnUT/PnexpHSAUoilDK/jdvDylkggUjLCSCAYFBOwpVb?=
 =?us-ascii?Q?hdPopC2keiWoMUJQRdoS2rsaS4rgSCpbN5pynCa+OJX9nvDMVbUxzCKDL3C6?=
 =?us-ascii?Q?zbcAsY0p4p6XrL9O1t52sjVqnyBdReRqBSnhXgTJg8wRD1TW+ThZnXjy2NHb?=
 =?us-ascii?Q?W3DgBgt9IEOurvHt26tS5h9BcvEtsjnSZK0wA3s+SaayU3yo82oO84W2S2sZ?=
 =?us-ascii?Q?BqHJZZWr0d2yR+1IdJcBteNNfRsQ1sqCjiv52pxyxmvWbq1jWRCAuFI39ACu?=
 =?us-ascii?Q?Yw9k3VsyMx3dkAR0G7DlBo37a4tIt7lXZbbQeeNs77j64qKwxFhzx+8rGmiN?=
 =?us-ascii?Q?xiCDvs7F9MpuQrD2S1ARJgl7cpuWyfcQ+Mq7VQOBiJwnj6pR8c2v5DzMDPCF?=
 =?us-ascii?Q?FVqK7hvAk9x85OzQYrzPJdtmOMaW6eokBJaFqKvZOVCVVOLZQ3LygMMBC5+n?=
 =?us-ascii?Q?XszTd7WcSivCBRN94N5SIAcxyEEO5rIklcrD5SrGhgp0L2Ul1K1smjMb6cme?=
 =?us-ascii?Q?ncps3IKfSGpSjFWHKcHk9WX5BYspLHRE0HU0mUgNn3oidJQdBeIcR3NHx8xF?=
 =?us-ascii?Q?tZ+cBOk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB8419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6rOYWdVVH/gSM38jyiZfF/uzx1f5Y3/AYxnt5qbRLX+hj3gVJmh0n5sHcg6s?=
 =?us-ascii?Q?VZv4IIZXGEK+Jp4QtbWpwHehe+XVthtQVTI2xjd1Ynt6fkcLdORrimGTHukt?=
 =?us-ascii?Q?PPr27hM92LjlidbiJoKCYjlo1OP5TkmGEvOavHC+0uK9QyDqLWHkJ+u6gxI4?=
 =?us-ascii?Q?zTgxWuiDpqt4n/2x6CcgicKn8RitdpyFdFuLy+1hmQ6da3fEDXEJtIIBTsz+?=
 =?us-ascii?Q?+RWd/QUoeK2pdMHoKCbY0IWqh47P5SM7wji/dfXOe4NrV3bpMDiq7E5KMOad?=
 =?us-ascii?Q?4gV76mz/izbY/IXWGDsjr0KdmVQJaTcIoidCuePDMUQMCoYA5wcSl9xOwYcS?=
 =?us-ascii?Q?udHpqmr+AqXbSTjdlWHW15bK1IDhdNcT6v8LnfMMgyAdk+NaXytdQoKoX8FQ?=
 =?us-ascii?Q?QXHtYdfPJlgpYyEPCxypD1qRsMe2HE6B02jzU/AN8cFsKDT3cHHz4ZCkLEcD?=
 =?us-ascii?Q?5v+J5Ksnz97phourB+vRMjFIh8QFe3GyBTy42n62fcOCYek4PihJ/Npo4yiJ?=
 =?us-ascii?Q?Mop1bSoeNPR0wxBCTaIf9LccW3+lwKsP5tzxeahag4TZmbo/eEPZe1+YfSjN?=
 =?us-ascii?Q?D2E+fWv4vsqFffseHPwZcdT6Da4kIJj9EGuLfHIhVjDK6EccZBqj/n4OC9Wi?=
 =?us-ascii?Q?qMe4JEDLI3jFYVLAOwhUzC33R7leZF30WFsNafzrHpOPVUn0eBzPthFTQ5/+?=
 =?us-ascii?Q?dGSqSzlvPCMk6SfjXl+3jZ2eVgN/Si2cVR2vYN7l8fy/ygvOZRnjyOT1+TjB?=
 =?us-ascii?Q?UPsj4K5xqktstpvw2gu2zh3S7ASiKqEkSuW8deYaI6WR9eCjEoqebOGzzWcR?=
 =?us-ascii?Q?v+yYA5smbZWkD39ne9npny/8YogpSbZxbnW3Qo0/SVldvh0L74NxW8LVrYRS?=
 =?us-ascii?Q?ZXhos/EMY/QnC0d8+Ljois9TKiFFMykgwxns34gCmeDbpZtBigDperce6loR?=
 =?us-ascii?Q?pJI/Il8ITjkVEmKHGAcZDSAHYn+SsZu8Qsr4HEHOG4CBvRYNolAZK4q1SkjS?=
 =?us-ascii?Q?HTL5l5KeMeN6qogMeIgjDZKdouVU3KzXEs3vK5M/mXQHFRPE65Z+Ks0tOiql?=
 =?us-ascii?Q?+LwNckOVyPwTDy842/SW7jctMMjX3oFUWxYaHRSqVsowID5fwW7kasuRUoz5?=
 =?us-ascii?Q?ltZAffUoApvbrzPzYn8I1lFf+IOzNNPQ5upVNRb7r7M8KSW8WrZcWSC9vAmR?=
 =?us-ascii?Q?EAr0ldkNgNDkmGBNdgR5Do7SRJ7Uac+5ZkS0BYEmBSnqwf91spjpRl2aX6a1?=
 =?us-ascii?Q?HIqL34y1UzA74OhXS2gHOnI6bn5NL8FVymOblbc2+3Z5wsjVkoeVvOk6T98D?=
 =?us-ascii?Q?PAcnRt0tYuXmUtFMdGZmL0v7co3TaL9/L5+61Ig6xaO7dOaG/FNgpzR1mu8c?=
 =?us-ascii?Q?uKGpkPkBXXuuGZF/xWvP8qacbvm19Ua2zK1LX91u+1cG0Mq+ss8sZ9Cg7TMg?=
 =?us-ascii?Q?YWVR1LtAVTOBRdCvLNIekdlI2Z0CiaXi6nXJJUzI3APHAqqLDUMwURA3Ez+i?=
 =?us-ascii?Q?kSo9Xi2lXSfcQAq6YTtKEvqPqO1xXsIqsOaLuwJ2S1+/RBks8gEW+j95KugT?=
 =?us-ascii?Q?Fg64MpezlBdsIsj/iynR/Fox0yBq/K/PAsU8I4jo05A2KkZJvmWp3Uy7P2cz?=
 =?us-ascii?Q?4A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB8419.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab9c644-d6bb-47e6-e11a-08dcfc938255
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 05:42:45.6196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aLkq1lAj/6G2sMnSLtQlVt9sX3VN+lARwYin37ktebYuu0dG/Wc9/nbNtx5DYki6Er7uRxK7yRWGgDKUxr7NhNJ0ESIlDToy6UeWrVZaK5POdbkeqhfHQvS43TGS6qHR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730698977; x=1762234977;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q1g7su0TNDpjG997xXMTF9jXl/S/+2dPUS9fX6C7aIk=;
 b=ApRQZk3Dy4v6uJ6s6aEY3xwIqCgFmGi2vsuKZnDYw5WX4zhsCB1mubQF
 6jp1/JP3tPkpUa4Yr6KZmjHS6OT3E582tXqx6l7n0DhvgJoZXPmJF51qk
 A/JceBbp4h0EehYEor0H96UOjv9mg/TqJpX8mYQMTOW+FUlQRP23jXvNP
 Ori1JwkTZtqcLuAmixPQ4ybKMJbMV39HwGhgWinS+ImEJqwn4Ecrs5kHy
 0RuKwv6J/yU7hjBmq1Pad3jEXUm6ZemSaHwYVviI3sxVHaD5r4IIaH/Ef
 uxN93d/U9A7oD//axdJkUVH6/BWWgd4MVVnn+E5W65XbH4fMdsaqqLCDG
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ApRQZk3D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next] ice: Add support for
 persistent NAPI config
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
oe Damato
> Sent: 22 October 2024 04:06
> To: netdev@vger.kernel.org
> Cc: Damato, Joe <jdamato@fastly.com>; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lun=
n <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric Duma=
zet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <p=
abeni@redhat.com>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@l=
ists.osuosl.org>; open list <linux-kernel@vger.kernel.org>
> Subject: [Intel-wired-lan] [PATCH intel-next] ice: Add support for persis=
tent NAPI config
>
> Use netif_napi_add_config to assign persistent per-NAPI config when initi=
alizing NAPIs. This preserves NAPI config settings when queue counts are ad=
justed.
>
> Tested with an E810-2CQDA2 NIC.
>
> Begin by setting the queue count to 4:
>
> $ sudo ethtool -L eth4 combined 4
>
> Check the queue settings:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json=3D'{"ifindex": 4}'
> [{'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8452,
>   'ifindex': 4,
>   'irq': 2782},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8451,
>   'ifindex': 4,
>   'irq': 2781},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8450,
>   'ifindex': 4,
>   'irq': 2780},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8449,
>   'ifindex': 4,
>   'irq': 2779}]
>
> Now, set the queue with NAPI ID 8451 to have a gro-flush-timeout of
> 1111:
>
> $ sudo ./tools/net/ynl/cli.py \
>             --spec Documentation/netlink/specs/netdev.yaml \
>             --do napi-set --json=3D'{"id": 8451, "gro-flush-timeout": 111=
1}'
> None
>
> Check that worked:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json=3D'{"ifindex": 4}'
> [{'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8452,
>   'ifindex': 4,
>   'irq': 2782},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 1111,
>   'id': 8451,
>   'ifindex': 4,
>   'irq': 2781},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8450,
>   'ifindex': 4,
>   'irq': 2780},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8449,
>   'ifindex': 4,
>   'irq': 2779}]
>
> Now reduce the queue count to 2, which would destroy the queue with NAPI =
ID 8451:
>
> $ sudo ethtool -L eth4 combined 2
>
> Check the queue settings, noting that NAPI ID 8451 is gone:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                         --dump napi-get --json=3D'{"ifindex": 4}'
> [{'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8450,
>   'ifindex': 4,
>   'irq': 2780},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8449,
>   'ifindex': 4,
>   'irq': 2779}]
>
> Now, increase the number of queues back to 4:
>
> $ sudo ethtool -L eth4 combined 4
>
> Dump the settings, expecting to see the same NAPI IDs as above and for NA=
PI ID 8451 to have its gro-flush-timeout set to 1111:
>=20
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json=3D'{"ifindex": 4}'
> [{'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8452,
>   'ifindex': 4,
>   'irq': 2782},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 1111,
>   'id': 8451,
>   'ifindex': 4,
>   'irq': 2781},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8450,
>   'ifindex': 4,
>   'irq': 2780},
>  {'defer-hard-irqs': 0,
>   'gro-flush-timeout': 0,
>   'id': 8449,
>   'ifindex': 4,
>   'irq': 2779}]
>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 3 ++-  drivers/net/ethernet/=
intel/ice/ice_lib.c  | 6 ++++--
>  2 files changed, 6 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

