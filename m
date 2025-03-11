Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8CEA5C44A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 15:57:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD3D6818CD;
	Tue, 11 Mar 2025 14:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P6JdyNwjszqR; Tue, 11 Mar 2025 14:57:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FD7E818D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741705033;
	bh=r0r98PV8qoBl6UwvL2e0F3bD540/E57tO9snfJouRAQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E3YhY77pp+G3C2KpgAnA0w4yf8qU9hZcbfGzH2coT/hGIUvsWOIOOlo/zC4Lh6lzD
	 MGVVIsg6w56ADLCnmZSQ1L6ojLVt/UJkcEqs6QnOdqEyfzeeSZ8i7KIPTHIJ8eB1xx
	 BhkHLq7sDfzWFoAbE44iJgGwuI1nYpp7tXcea+bSbi8pP8k6Y3Jyyx80BX5wKfFA+E
	 X7DrGT5o87zq3XOU/RX6/Q6hZOr0bOG+YgBDDP8rtVuzW7lGqAUF727NlYtUfXnilk
	 7fSD+2LWsyLaBmwUw+K5AcUMlJpV7w5BDl56nFFuBD8WdEjMUErIgU4XB/H8BTJqK3
	 FAHAtpQkVBTCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FD7E818D4;
	Tue, 11 Mar 2025 14:57:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 935731C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 14:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 751EA6077F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 14:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aN4FaJ3ymNYf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 14:57:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A1C6160658
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1C6160658
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A1C6160658
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 14:57:10 +0000 (UTC)
X-CSE-ConnectionGUID: x9l85I+ARleC1YiLWUnskw==
X-CSE-MsgGUID: GHKxL9VVR2qhNjzXxvAziA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42859113"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42859113"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 07:57:10 -0700
X-CSE-ConnectionGUID: gWcHJrI1RDePRD960VpXfw==
X-CSE-MsgGUID: XHSjIF63RlSo7ZmnahgJFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="157547982"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 07:57:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 07:57:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 07:57:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 07:57:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j77Ktm09X+d5xaSZkTwL4qnvGZ03W0zK76RDXd147YQoxdbaEtvB7UHAlv5vvy4cn+8eGSnTm+wUBSYc+RMASNdtzX5NMyBFpAO12peQqf32k0XbXGwfWrGuDX5jwUOGhFEJkrhkHxuxqc1dv6K3N1TYiCqxCvDFUxGhxNWPd4Cp839aUiLsGCZVj6+z65TlGEy5G+EqOq9FdOjpWUWq3EgjeB0vsd3YlH7TX2vOJZw16BaDKnWMKfoiaJ1gc/SnjfVG2Gm5sdX4bXNkGCv2e/49XMQu7wsznHzWvfxX7Nlgf+HcIpLCI/vfoHu27YwdqAQ9RcL1Y3k3kwwUzmFkSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r0r98PV8qoBl6UwvL2e0F3bD540/E57tO9snfJouRAQ=;
 b=yuUbqdQhCV7a5Q9xubFPRxHXxNV5kQmDLS0C0fGi1BoYaMFXBIORhsIsWzkR0JgXxp7W2mDE91TmDnuSzHnpBwzA5/GSjTaDEoFGbkgwhhKBSLpxKbKD7xBuqMtQBxqenLDVVeRqnKjZPVBlGS57ZKXOxVnZPVPcUtFy3FtWdEIZOKqkYrbrFUA4GE18hNyChK1c89ZVRlcnb9f4kl8YH/PajN2CKCEgWZh/n7NPO++Tw1y1ifMA+FVasgmSgzzY6d/v51FG53n6FFOUJtzBdsN3dJd6b7fnEdlONW7LxeFYvZrA5Hjzepv6Ay9EVXKXOfccoxKoA5lgELIIbdEdBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SJ0PR11MB5008.namprd11.prod.outlook.com (2603:10b6:a03:2d5::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 14:56:52 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%6]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 14:56:52 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 02/15] ixgbe: wrap
 netdev_priv() usage
Thread-Index: AQHbj26qvw4e3oJpn0mDJjrpiIQti7NuDJLw
Date: Tue, 11 Mar 2025 14:56:52 +0000
Message-ID: <PH8PR11MB7965BCB7BD148992C1A07056F7D12@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
 <20250307142419.314402-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20250307142419.314402-3-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SJ0PR11MB5008:EE_
x-ms-office365-filtering-correlation-id: dd8962a1-b654-40cd-caf4-08dd60acf54a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OHV70QXRM0d1Sf+bIVqS4Dq10P60JBAA6yoLnvRXTo2gM5F5w01BcxG0TgBJ?=
 =?us-ascii?Q?itXKvEMLPOaNWjzS0UNqTwyfDs+kkup4y85WWmoE+Uv1QXH7E8ZnrOMfFPhX?=
 =?us-ascii?Q?EMlJPwAjhFBXw4+Xm4gRM7jXx1HevBeS+pLtr/3AXqwuSbac/43rekP4Anmb?=
 =?us-ascii?Q?lRRq6uUOQ/PJUKSQ5dVuZwx4BRfEYUD7Ygn0Q9GCo0ZkFOGYzm1RYfY+X0GY?=
 =?us-ascii?Q?LOOOx06NzIxEyK2KLAkmKwcM78J+SwC4MzVtNOMXVTb3BBS9W0vgOsT+/AJH?=
 =?us-ascii?Q?FYaLFuP32cJ53fFT2iEcD2r059FN51nUOQDdvKCy7kgZgAv9sXnKClzsMAmJ?=
 =?us-ascii?Q?tBXDj/x/J3At3rU0Bwm1jfbksEO6eYMZMVJDpiWn+pTA7DAVpp6e+tk3ByVb?=
 =?us-ascii?Q?oPB4Zrf4hKXz6Nxaorc8sMR1u0U2WEpNfCL0ieGP5DvwybfOxCIZ4eaNQaAV?=
 =?us-ascii?Q?/f4UZfcTHwij+VdJkQm5sHkkac0FWoy/hB3U0T31WauPKwur1zsZHGIDt/Vs?=
 =?us-ascii?Q?AfxBrrhKsufyEIqM2PsqQptI871naewOnFszHQuScVt2dxWmtHwzQ0ia/iBq?=
 =?us-ascii?Q?UCbpNfzylgTBmhx5rwpp+mk6l/ermjCrZ+euL+ZgivMrxynYdRSS1MqN1tFL?=
 =?us-ascii?Q?56/94hEzNhzqNGcn3Nmrg7UlGJgEpND1hrrdthwQxqNWFmt3iQjwdX+pU8NO?=
 =?us-ascii?Q?hw3UnZcK+lNKcRin8Ht57O15/GMS0/0oCWlMw0eDk6pk4lar3FYDcWnR4mOz?=
 =?us-ascii?Q?3lsgByEwZmfDjsVETOiN8ek5EKu91q8A4cprvqpnbDe+B2o0DqT8+YBMqe7B?=
 =?us-ascii?Q?r+FvJlC502+6Lme8bwLVUZsMhXHay3sbEGYvTFaCj5P6lOpaPTqdD3948hL8?=
 =?us-ascii?Q?nnm9O0aS4pydlFP27FIYjKgqbETqclSWjZ4UL3bpDG2CrgTRzsMztGYca+4I?=
 =?us-ascii?Q?PvMurbPmOITAKNPrto1x0/adaW/25ZO1oHyOf2uhaCencyIuC86r84Bfajeq?=
 =?us-ascii?Q?w3qbLvuCIQqLFCf17XeMPrmZSkGtrdaoS4ccg899v+FlFQsaVeBhGOhqAHQb?=
 =?us-ascii?Q?P+f6yPnAuGE9/PtM3kbcNIaIQkStvr3ba2eIgNqPBz41iKrHAV1yoTjWfUl3?=
 =?us-ascii?Q?j/bqCTRD50DrHgDgSuhO4aesgA83drOfKBUgOzldhlal/lhqhU+GBFqR1fsy?=
 =?us-ascii?Q?aopSbAvtPoZD/2lTWF1oXzDOE6PwWX7i8KzhgbXez+6SFUwtTWLam5rCvZAQ?=
 =?us-ascii?Q?6VaHuNmMwQ2aDEMjdQ+nsRqAe377bde7xvarp6ySN6B7AGzmHKZQB+5lS1W9?=
 =?us-ascii?Q?1cqwd9ApNdbsHFHBUGnM04sCemQxIsIjFa9lp5CT6J1rBB/5vriRoyN38ht/?=
 =?us-ascii?Q?EO/TaVEjm3Oi9hPpxAk3P9BJGOa4A+OCauxYxYwZgWlS2On2cjhJ3Fd18+Uu?=
 =?us-ascii?Q?dDkMr3xCO6xX5Pthg0EtItH0lcFGMYm1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6FjNL18Bd96ahYcknNNPUauOQqCoTAK4lDy6EWNtVzONzd9nQT/R9pgrk49g?=
 =?us-ascii?Q?5ciUUmroocBcKDnN6GJVfdUGTVfEdyUVZhISJAtZV5xvSKovLI4cKVRO0xoG?=
 =?us-ascii?Q?c5i0dlz/To9X4Mr56HmEnd/rob2GzwWI9QYzKrAYcX6XP0u5/kkBim2mG6yo?=
 =?us-ascii?Q?gappLyAAFtoFdHhACCsT9fRc8ZtUJnrdxgh6LZJZ1y5EbiWB5DtefNkUZEMR?=
 =?us-ascii?Q?NqozVPNiOM8Zs0m24UYjagRc8XKf0kEyS6G2GJQ9d6sUvdNxImAi62Gwws4Y?=
 =?us-ascii?Q?Wj772KH0DPM+LBqDtMXdmDXjFWQnHTSJm6MO4yi0C2wpGgzaevll4WJBJgxO?=
 =?us-ascii?Q?uqr4agquPtGxqtunYUul18Dgq9ezMo9rzN0K1wmFaAEdrjUILSg5GGe+Eg1D?=
 =?us-ascii?Q?iybhXXk3qLMd7HxsbjhiXfZF2QV5HN7XpKDCuK3vKkf4c8YyErVGdaDCV0x9?=
 =?us-ascii?Q?jAnZBGrDQivctBSE0rGRmNnAqtIVfhsraHp1+60I6lQvFrSif19vhXPfFr99?=
 =?us-ascii?Q?i7LkcpCfHlYftG8Xxdf4dTIemt7Mu/bfcWrUoLsnFD6decd20ztzGKwQqCxj?=
 =?us-ascii?Q?de84F85BL6sdLMz/NRTd32NLJl3mNZfQhVInikqXlXdjrRXqnbu+9opd8Ccg?=
 =?us-ascii?Q?mN4bwPwKHIAviF0wIXVkEK5mSG2fj3LbpgdmmZSHJM2dTnLLEaLqplQ9YCi4?=
 =?us-ascii?Q?T9gaTxSp59mnBHgxgkU2II89pmcUGNA7BwchVBzzAVegFeBD6dZICvJq1h0w?=
 =?us-ascii?Q?l+3FojoTMIxMf9YCp6Wgm4I0cRGoFXexVVmBMsKVO9uymZwhMFbqCg9A0v3W?=
 =?us-ascii?Q?hzwjNkUTKyoSVugcBR6RUx9/1198vSqRkmhC5/x4q4p/YE3qg3HyMK5OsqmW?=
 =?us-ascii?Q?Fhf0CSYJUJrOTSSdg17W7afhw55rqlnYhrNTaiZF4QcZNQ9pvy6S7dMXXDlK?=
 =?us-ascii?Q?avRYZmp3UjdUz45PL9c1GI30W2Y6oZ4fOyN66g+sQNDvVg/5rz0eY2P1Pn86?=
 =?us-ascii?Q?gmsUfRTmrKWDcB0wpsBd40WhWtwvUcCDKS5tyy9EmEsMnzOMQ0xaQy/HS5Bu?=
 =?us-ascii?Q?D8aIVEmbyKoVpvXGCjPo9hWOgEZVgjBBeMkad5UYRdWfEaR8OAQXV6I+MImT?=
 =?us-ascii?Q?wJGPyqP1b3Z5GfvzXMumxXpeK9tYpxOZRB7RQu6nPlIjtnBxBGMSjFJBebVk?=
 =?us-ascii?Q?9zUkO1+zwsBJmArFsBX4DTOsd+SWsKAK8fjb/XyT4ObRYmMI4JN+5JipVx4M?=
 =?us-ascii?Q?5jsuzb+7uxINp2si6enS3BFK+6fnpxW8xpFiYOPQKyowpGIXg6HKgOaA6iMM?=
 =?us-ascii?Q?gdSAamLMVr5VnD89A2Y+93QPeXtblF/L2F/MzSCGSYn7nh0ZwmU4HMV3tLdj?=
 =?us-ascii?Q?hIKBTjSFLDvivz5ZTwfeB3unRYdq2Ot2MywEp9J27+QRQg9BkJCoKiJSYDjK?=
 =?us-ascii?Q?QZBgst9NvgiDV5MWmTgFg+EVDZNay0BFdTUWyZm3YWU3q1303nizQLQn0Qch?=
 =?us-ascii?Q?yjN82StYx6JHShNAIIAz2fB7oEZU1d3wWaVoVqbS0uTxdCCClCa8mRQbprmB?=
 =?us-ascii?Q?vd3wt7UTZDtpyHRBMeI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd8962a1-b654-40cd-caf4-08dd60acf54a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 14:56:52.1843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +G9/yiD8mgqogelPLY+wylJ27qaoxGNzQ4LAjSvNwIRkWNiwoU1Ahm77drtYVgizqgrWHndC2NC5Ie6FVd+A8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5008
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741705031; x=1773241031;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RQi5IgQrnV58iOvEErzWGrgClM19IVfDO77PKkIBm1k=;
 b=mdjgMMQabRwyPGP2DUsHgN7KMZhBAJIA6teu0RhSPY98RA8rkwTfvbWV
 a6pGfAcuMctRyF46+dsHin3/XlklyqGXeSyZTIOxEhdE2Gbfabl3GRZM1
 QVhDqdMHuBrqTvbaIJ7j09BXX5Int1r5Q63StihF26OhsbtgFwE+iYNT8
 behLGqNZGVVtUW3JrW9zvWE6NVaMIAi4+iZHaKUSm61FDQAVy77Bi7PU/
 rr5b1wgw98Dny5EceEXFlkkU6vA95jmwrpA4NulcoPf/vXpUZqpKIs+xL
 NRs2ywc4qnRFBa57JKBLiUlb5klLtm7l8Rg/HxetJZg1Cs428t/BGr21X
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mdjgMMQa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 02/15] ixgbe: wrap
 netdev_priv() usage
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
> Jedrzej Jagielski
> Sent: Friday, March 7, 2025 7:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 02/15] ixgbe: wrap
> netdev_priv() usage
>=20
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>=20
> Wrap use of netdev_priv() in order to change the allocator of the device
> private structure from alloc_etherdev_mq() to the devlink in next commit.
>=20
> All but one netdev_priv() calls in the whole driver are replaced, the rem=
aining
> one is called on MACVLAN (so not ixgbe) device.
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  5 ++
>  .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   | 56 +++++++-------
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 74 +++++++++----------
> drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 12 +--
>  .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 10 +--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 74 +++++++++----------
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 16 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |  2 +-
>  8 files changed, 127 insertions(+), 122 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
