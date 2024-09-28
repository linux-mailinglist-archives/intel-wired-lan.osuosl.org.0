Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD09C989073
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Sep 2024 18:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 402D280E0B;
	Sat, 28 Sep 2024 16:31:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUBM03-yHft4; Sat, 28 Sep 2024 16:31:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7866480E19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727541085;
	bh=HfEJdxgsbtpDrCLKhAFP7v9yRIM+OlBuw288zQKVvL8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ohF4qEHtWbgLRFa5RS/gvHxY3mOYjhwfOaS1ZLsqj4qhSlrIVc4PvziDbn7mZUIlE
	 IdZ22UDzjsihdQhhxpdII70DvUoK9i44YC5ceCGX2AASSR3r2bU/mBqJZYpPv9z9+b
	 2ZxHAs/ZpGvE488XHK8iwxGreef4wxRAfGqGS5dkeS8euCnhIsALwKt3UG7ZPN1CPc
	 Z7tKy7g9j+R6kwGe09AiLV8Hhj+Jc8vR4l0wHz2WJqo7q6Mauqke7G1px39mao3fa8
	 lT7MhiqhOzVyde70a5zqYfeTooh2sO1uB+XU3Rcr+1Lj8ey5KQZh2Vq6VCm1iykxGJ
	 ZxbdmvfBGTroA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7866480E19;
	Sat, 28 Sep 2024 16:31:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4CFD1BF366
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 16:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF8D6400F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 16:31:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rfh8oxNu02eN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Sep 2024 16:31:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AD17E400E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD17E400E7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AD17E400E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 16:31:22 +0000 (UTC)
X-CSE-ConnectionGUID: S31wMvq+S22iCu1C0CHDjQ==
X-CSE-MsgGUID: 533ZQbriSSq4/3X9fgfAeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11209"; a="26544588"
X-IronPort-AV: E=Sophos;i="6.11,160,1725346800"; d="scan'208";a="26544588"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2024 09:31:21 -0700
X-CSE-ConnectionGUID: J6XXmfpJRmO2u8DEv81ftw==
X-CSE-MsgGUID: TliAhGxKTOmOP8qNwJKPTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,160,1725346800"; d="scan'208";a="77664666"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Sep 2024 09:31:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 28 Sep 2024 09:31:21 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 28 Sep 2024 09:31:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 28 Sep 2024 09:31:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 28 Sep 2024 09:31:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dduBNrAWOfhrtTfKCo5rB5AvOoNG5vI2PqPdchkrrXAYEF1AA8R9kP7kemgX9OsYSWwNyPcAc0zGoB98FXPaA3duaJ2ehD4b8wDXUEPW/gsLTwNfnC9S7l7yR29Ql0qvp/ZyR2vJZNhVa++QWDFzOVg8kWv54WLKmWSCKq3/fkumgi5DPr5B9bLoh1CK12XcaKqB3+SH/7fzXaEaam42FdJArfztdQzEZc+FWEvZQkXW0mEGApmYsAEU/7qQ5gby7bKe7D40aWQO0A2y+2/LO4CIoDdknGJaDqaznnNavn7q2dfxT0GXTDn2MaB52U+PydnSCI0ugs7X8duBXGE/GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HfEJdxgsbtpDrCLKhAFP7v9yRIM+OlBuw288zQKVvL8=;
 b=KZ5XI6vIKPLJv2ZXva24vXdHBlaKjxedz4q5m+RAje2DVTI8NnvrVX3nj/qN/QWzDSweyqywI73YgMhpyGRjWyyKrirb+7prRMbLAbQJhdo4VhM5hjLjFW6kAgHNRCWk8wVwJBBleKBLJ9dnQS9G+EF6+elLj1XjbIZ6ZIrzXsePu6kTL8wG7mbQ6YcnqQxPHhAYtK9Y8IIAnVBCs0G1AbL6g+mqR7SOcsKXZJRDFjZeVYrpMidH2U7ZUpaFRk49XFbadLKUXFxHEAPnC9C1hf89zqHoA14zYKl1yzaGZvDls30cLkzainPyN5DglgSqzyhggHzlvACa61wergSoJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB7166.namprd11.prod.outlook.com (2603:10b6:510:1e9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.24; Sat, 28 Sep
 2024 16:31:18 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8005.021; Sat, 28 Sep 2024
 16:31:18 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 1/2] ice: Fix entering Safe
 Mode
Thread-Index: AQHbDmjpWZDpdR//2UK2UfhhWMAK7LJtaCFg
Date: Sat, 28 Sep 2024 16:31:17 +0000
Message-ID: <CYYPR11MB84298ED0977FCA319BD040A0BD742@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
In-Reply-To: <20240924100422.8010-3-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB7166:EE_
x-ms-office365-filtering-correlation-id: 3a21dba5-816a-4e21-b64f-08dcdfdafab5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NIdxJwwEo3AG0Ni4Fi431VSroZeW9/oc2tC+dy6q/74Vf+JrmlXX0FDZarFs?=
 =?us-ascii?Q?ks9iNRhPnKT7+5xS3ALFAQY7G+lKWgDjmEaY0//2TgJ1iDUqC7Vppi2MrSyZ?=
 =?us-ascii?Q?NwQmL8uULdvVVL1OOBZr9+4D9vQjoVhXcmSV8W5366OEiP3jP45I8l7aE3J/?=
 =?us-ascii?Q?yq3IBgaa4OotXTXfo6HqfpHX4in1ul7XyB8SWEI2/pMkZgW8jlvUw1BbZEvi?=
 =?us-ascii?Q?hkhPnHnDyTjE3PEuLBt8oG4Ca1qXAp+gdHLmi7vuHRLNK5CDExB1FSz8mb+a?=
 =?us-ascii?Q?JzDxHK0YtdLrQwcV5OO5UEoArymRq5ZsF+ouHvDoWInwWzD1MudTJxzFzird?=
 =?us-ascii?Q?UdY8xjTG/AMnB+Y/P3wQU9Uxe/pnZqhIZdKthkbQxtCJGwzWba5Z87xu5+jO?=
 =?us-ascii?Q?jKaL/RXjtbZ0+PSua2GaqVKyS35Mec+xDjehS9OcvyFy33Zu6SMvWukqNNYf?=
 =?us-ascii?Q?v/FLWz737pEXX1Ou/vCqLMChmOERsWD8D+VhHIDh6hcTyCiQFCc+GjlMbNwh?=
 =?us-ascii?Q?FnQJKigVmRRLq0V3X/lTS31Az18I4/dt9TNhLKBx17g9nkFe5i1U20wHQ6Ax?=
 =?us-ascii?Q?WJnmnM4MjllYdMbvbhrMYrSnDR6l/s9a+gcXDwxOUFMnE2n7BpKZflXiYRTA?=
 =?us-ascii?Q?3pFZ40/dGIuOHMg1mgwOsU7CH7CbImp53lQIhui52XRw6jmQHxiWIdWmlbck?=
 =?us-ascii?Q?jqVMw81boYvu8HQccD2DlbgGRj6lekZ5d3HMpIi6/zl3A1HYteXCGVvTwnL5?=
 =?us-ascii?Q?HjYHTDKy3h8EQq12nwetrAm2K5QI4msouIV/nH9kWdWHwShwGTG9TZM8rCB3?=
 =?us-ascii?Q?AFE0L9qeFhh9ps7MZtx8NIrwFDMkV7DX3fIau09B+YTnvodYSOFMEtjNSps2?=
 =?us-ascii?Q?5MO6CYKjhJYGX0jFNkt9jhnks9GMyokU2V1FZaeslEQUkiclgV1CJQhC+WvB?=
 =?us-ascii?Q?pQYRFEnwP2q5IsXLGVqKRwAO/o0Ckp3mrL29RGvLUzCTAJK/U5q2JIeLaFfb?=
 =?us-ascii?Q?OoMXqz3hcC+dsLezUMPAEOF30jATUq982rBd57fQAyeshOl3iawhiT2WHmXn?=
 =?us-ascii?Q?anKnyP6u2m/Lr8ccYeVYFDrSGsOl5oUlMHcfVuyTX3qKQT5BjWCutQkQGZAt?=
 =?us-ascii?Q?K5mPsQ1bTVBxBBairD0T2KAwQsjysuTr0jv1Ye1lX8F2Bx/67sN4tLfudOgm?=
 =?us-ascii?Q?1OLOZfUUeKvNzjrphLFBAUGoktTD1iUL9v3dCPkrsbNLeYI9ojy45K3utOfc?=
 =?us-ascii?Q?vpGB+CjxX2ErmXKYo2uzGxo5GhYG2b2lDdgPheMMSWn9FTx6asosiG3+866+?=
 =?us-ascii?Q?qG+M6o9MwpI9AQl+/dRWZlL37RPNSDy1CWNtcuB0DXRGGg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KZKyAWdQbAjj0aBXz1kj3rmDzbL6EQdlr6tEjoHt0CS2wNmVFvmKzMyZOZjA?=
 =?us-ascii?Q?H3oO6Ee90Sb0RUisOmB5+o/16aRwVXbfSWpE1yoJPOXkCt9zGEemuuFE3a9R?=
 =?us-ascii?Q?8C5rw0jPQi/OoAPTUCWf53Z4MPf46G7pQBjFAhA8TTzs3VOOCCStxUA3ubil?=
 =?us-ascii?Q?5xpH+6hCbBvUC0DrRslcwQwVLO1lx+SLqcGILp6J4X9gRK+vwNDnjLj/fESQ?=
 =?us-ascii?Q?B6pSx2iwhacRV552C25Ex3TRgfwUft7yQxo8CtfAZjOZ+CAQ69x08gOapS5x?=
 =?us-ascii?Q?FB+dSkgV+bhFRzLjkeRdjzCb0OcN2BgcHTFkYpeA5xkF1VXQATn3xJO2A4Rf?=
 =?us-ascii?Q?3hsX45dP4ee9LlMB5tK7jVnvPSCpCjlXoE/jLamg7TjSJe3OBZJQ4CIHE3vN?=
 =?us-ascii?Q?/Gw0GqlKVjrHwuVx2q/Tf6ok1+C6Z9XUCUB/k3JrwkfyVKyVE7BQqYAQwnLx?=
 =?us-ascii?Q?R6D5+jZS/WnChe3VCKnirIaC1M528MzyaeqZRZvKXdXqpan3DZoyLiFMAb8/?=
 =?us-ascii?Q?AMRt+8GNTmRTLtPxMByFQj9cFI+1JHEOQBypwOjwAHlyozvogFaVmZu53ouu?=
 =?us-ascii?Q?K8rgTPt3upLZrxP2oAsa+pPchdAaLKnLEu0Icx3oGf2QQ3/M8RYXMB8pqJqi?=
 =?us-ascii?Q?bBrq8R0tlMCNZ3I67xTfJJ/JgsRmbB1DSWCPFmTLVeEpQAFMd6lIUZ0iZE/z?=
 =?us-ascii?Q?ybm4QUvEb5Y03i+5VU5vzt3PWRq1qJMhaRBY376hkGArMjvtedfAZke1Du1f?=
 =?us-ascii?Q?9sYmFnycgZ66Gg3wUXjZ6W7kPTTITpxiSyAhCYTn26Y+OT2fU76f168QON/q?=
 =?us-ascii?Q?GQgKeaZLEj+FumE9zU4YYpnGs1avvpQsGOe9XTOGB8RgFJOZoxV37p7bWqsc?=
 =?us-ascii?Q?W599OtsHqGof6W/pOfR7mqmgp4P2LS8LJlkZAjX/IHPT8+/ZX8JyU95uPMSb?=
 =?us-ascii?Q?WZ0WCnxjFTjup94GYGXtvimhgbpKIv5mntfJu0zT3m/u4gZYUh/nh86ApPxG?=
 =?us-ascii?Q?uHSYnFzvFXzgeqe7HBKSRPZej8wmXGOBX3F85kV8qKtHIxTqlAsIN95CmG3N?=
 =?us-ascii?Q?BCGxoJOyOdbtPNVmQcic+It6FBAlrZ7m2Egl22YJvrOcszw8lLy8bPAE/HDp?=
 =?us-ascii?Q?yFp7YAmsuzUmmtjqvDA4GDtexGp+N4zYCqsjxfGBSRqACdqFCy/5ZdDBPpCz?=
 =?us-ascii?Q?tGvxoiSiG1iX7FeMhgZhxserJ5t667f6FKPI4YNnqwcxgWR7P9U9waxlhVRa?=
 =?us-ascii?Q?PbI8yFVWQZ4FsByl85NbEx3dcI5hNVAG1r0X3mU8IrOc0+aapvsJhUr7lvQ7?=
 =?us-ascii?Q?Xg9Bo1p7bnlGXgoPuvEtNQLvL1jQCdiDFgeCarP03hpwyUIPvMRk4l7zkOR7?=
 =?us-ascii?Q?Oy5n9D3gh2uzBQtgGdqtQnJBwmT1ybq5oE3sBwseZdbhNO+UagyhfmVBVl26?=
 =?us-ascii?Q?ycRg5+cJmeifP71VxL4KInziA9ZrSYIGXPUDdNZKIzYDH87mSlYIh1tcDQ4J?=
 =?us-ascii?Q?xGrO18FpDej65tE9o361RTarvNvx/llD7270w3DJpnAf+wAGLq8KVZUYYJPL?=
 =?us-ascii?Q?C1wsMoBcZKkyxHbLQumoXV9DQ+5vNk3fTtlhTqxftuuElupDiQm3orMe8Al4?=
 =?us-ascii?Q?AQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a21dba5-816a-4e21-b64f-08dcdfdafab5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2024 16:31:17.9526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1l+uRdSgoUiUZ4NXNcOSvukFB13YPa9pM5Z8DgGiWHzCK4QX35/j4PYbZDb2wLBb78fLZh9VYYPSAbZYDb1/a+wJ5MlW+KB2lx/3NUOHImXMENmvXswIAAOQSy04+COw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7166
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727541082; x=1759077082;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d6onnepaLCIWDbOQTyHA9pqDGt+PqYYI6o+DgsHJF0c=;
 b=E7j02cqhH7Sd6XxBq8XKQ2LU02a+bkIIfb6c5yCzVFMipsyXJ8zLpwP6
 DCsMcHkn0gazHE5Fr9rqZbP8ESam3e+MFnjTxAhYKX/NQ+Y9/A1vL9b5s
 iWk5im7QXmfr+OpvrAqy0dQ6Wo68wSHwlXNTNcivB/N8YlpaX4ryV0F/n
 +HX0F2ftHgKcWmj5NnPCd8nHEFfhcfW098WnkKxQBpvmIVohN6ZSjTSai
 mm6isjSUPmWAKViW8gkreo7gsg5zqNFmkjeQTN778tKzwfjcyHbaDzJbC
 s7m5PRg+bogVdrItO9q7SHQJhuACfZKv2kXJ1ikD34WK6mxBcpfanp+NZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E7j02cqh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/2] ice: Fix entering Safe
 Mode
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "bcreeley@amd.com" <bcreeley@amd.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Tuesday, September 24, 2024 3:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; netdev@vger.kerne=
l.org; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; Marcin Szycik <m=
arcin.szycik@linux.intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@inte=
l.com>; bcreeley@amd.com
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/2] ice: Fix entering Safe =
Mode
>
> If DDP package is missing or corrupted, the driver should enter Safe Mode=
.
> Instead, an error is returned and probe fails.
>
> To fix this, don't exit init if ice_init_ddp_config() returns an error.
>
> Repro:
> * Remove or rename DDP package (/lib/firmware/intel/ice/ddp/ice.pkg)
> * Load ice
>
> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology=
")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v3: Change ice_init_ddp_config() type to int, check return (Brett)
> v2: Change ice_init_ddp_config() type to void (Maciej)
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
