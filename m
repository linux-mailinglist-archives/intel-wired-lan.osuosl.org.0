Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5600BCC75C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 12:37:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A31048230F;
	Wed, 17 Dec 2025 11:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zUwnIeF-ohp1; Wed, 17 Dec 2025 11:37:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1384B822F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765971465;
	bh=ad+cy7o/PhVW1/FJSC4j4MYTdABZPa/+P2QZBh9bSRw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cYhZLpQJwVuJzFTy3d5AhYiS2E1r3Zsfrk/jEEa/wRZEKO6U9yX5bHBeXK0TX4pez
	 GU13y8uOcv1MkFJh2x627YweVtr7KnOWZN1uyb8epx5+FNxiJPj6Em2wGwdV2f7x7Q
	 gT0MzPOj9sHIIMkX42zCln+yUXC2j+6pGZ9OT9CZf1zROfcrPtHFMpQopXT31CS/uy
	 WbBQhO1xLwegh9v/llZHNMKuah/GhmtdObs23juZkgZ+2gWwkr/MgC1GF8RFoVAJYY
	 3ter8YBZtqFMFDm7y75WdIIYE776eY3Kqy7/gz5R07CC2wBIgPTffw68S2cDazGbCU
	 FKng1AtxR0Cow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1384B822F0;
	Wed, 17 Dec 2025 11:37:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FA68364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 11:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 810C9404DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 11:37:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t_2DEgtKUSRT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 11:37:42 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A10054026A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A10054026A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A10054026A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 11:37:42 +0000 (UTC)
X-CSE-ConnectionGUID: K0YYaIQKRLmiKCUrFeNSow==
X-CSE-MsgGUID: gRFWLSGiQBWMxZ+XaOjjZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="67658922"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="67658922"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 03:37:42 -0800
X-CSE-ConnectionGUID: 9Pm5xQN3RTqe/73zh85nYg==
X-CSE-MsgGUID: VcvofBmIRTKzd5Oh9DxFWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="228970901"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 03:37:41 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 03:37:41 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 03:37:41 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 03:37:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KdaNSvUxuNsWDnTA73ZAjGgVjBbI3kVNAxFElbC1picfTfLco8inpMdBE6GPylBqMJU2IHdK+cWLvndoGzh57vQbBcES74uqnYaTymTkEbbO4lUggVokpF4e+otzRCKvcroG7jNDX8bGLwr6cjbhLIc9vB+5y/Z8OyjC0waK7FRX/FcfDSHFtWz1bnSd4Dh1gFCQIcbDasWvc4HnA1aQIYdyNPuJbrTGLaYsEYyIWyZQgcNNWYkN8D9Hagp89Qdpdlri8luZIECfhGv6P3mta/4ELCAJF2UB3F7Zy0BKwb2ueh/BpjapyPxZg5Ezq1vsQfooa8G4EJwHWIXJ1vMT/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ad+cy7o/PhVW1/FJSC4j4MYTdABZPa/+P2QZBh9bSRw=;
 b=P/WX+NtDPoPeX4B1HXSjubwP1ZVAtb/TqQp9S4Yi0ANix6VXF0V6z/kFrHZtAZ4reZdLL//uvVK0U9nxya5K3rYbWPLpJr32VrltnGpS9JiIO6WMUW2goOjrbYd3GFw5K6hJAonTibQZpa0HIE+K8xAwpQXXo2gEndnZ9vHB/OVVDhE2/YfmrwZreZJD0hDyqarQn1M26rGr+0PhOidWNab5jP/JWts4WSbgL1jzsePETMqy1jBAbnRoPEoYT15JKqtA6v5VoxROEIylmKrFyOoSsfIm7lqaYQ9psUU4EQnhbr1XpkeNE3rcqcY+Kvwb3pqrikgOp4xtL6t/9yOccA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB7539.namprd11.prod.outlook.com (2603:10b6:806:343::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 11:37:33 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 11:37:33 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: drop useless bitmap_weight()
 call in i40e_set_rxfh_fields()
Thread-Index: AQHcbiMAt45Co8WvX0a+gAAtLPFD6bUltmSQ
Date: Wed, 17 Dec 2025 11:37:32 +0000
Message-ID: <IA3PR11MB89865FF35893188BDF61B7FAE5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251216002852.334561-1-yury.norov@gmail.com>
In-Reply-To: <20251216002852.334561-1-yury.norov@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB7539:EE_
x-ms-office365-filtering-correlation-id: ac9977ac-65fe-4328-1d89-08de3d60ab19
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OVKmBfSStKENTqOItHUM8ahDn8NxJJvU8OeEjtKmwiLp3e8GlpcxsWrGuMVW?=
 =?us-ascii?Q?WCfR41Xs2QggyQO1VvuvMr0IKXLGyZACA5/jB5AoVVF+XfGm37mGICB15ofb?=
 =?us-ascii?Q?pDJzaKk3yMqHGjA0j1c9EgxQTxtJWNT9PO6cX2CjKLiw1suCt49g9ig0nfaT?=
 =?us-ascii?Q?c2A8efRvXDZ3EJsbU5RQABxAejpu0J9A2ygJZDhp34qePkLFZ1Sz0U4Ml0iI?=
 =?us-ascii?Q?IaVIB/9TQliOObcIWSADhn2dIbPRQyEc+Tq3FDocwXSJjQLJK6/EYdL+Dt5b?=
 =?us-ascii?Q?2/ppHxjz18vAzeKMEFcXLrXgexdu6bUpwNpB97FGtwQKbXlcX67CrvtazqaI?=
 =?us-ascii?Q?kC8cvYsDonRIcFDFSH12TDh5gTvcdSlReuadz4pHx62S356XzaJOQWO/EawM?=
 =?us-ascii?Q?cwN0ZB8TGFHqV09E/nGDUq+iHmeDDuffbAJ0Y11qHA9BwJwiD/a1pxH9SdMc?=
 =?us-ascii?Q?kuU1blYVD7hhRQsgWY9KxRuW3Hif29NI9kDLdda0GAqS+Q/IP/Y1115PBUFq?=
 =?us-ascii?Q?VS3UXuGW7JK0fAvTWUbUxBdZ8pFK6InYEWn1GydB9xeqLsRiQdOkds9pkMrS?=
 =?us-ascii?Q?K3Ucc07QG8Atzfyn96C/ZQt3QxwnGFo5Ww5/Ppmd2umzHwq2z6cKf59Jak5X?=
 =?us-ascii?Q?25uJuNEaua6HFPX92ZaGiTm3I5G8o4q7wXUj0VtGN7yaK783+wiuAo/jJKNP?=
 =?us-ascii?Q?c3oL1t0cwe/RtxH0e+Q5Gio6x/Mv7qksAC2xKugv+EzdshxoJzZ+EL5YZuqT?=
 =?us-ascii?Q?1BhjTNMkr0PF0lhf/yVDUz1/eTDs0CrA10KTSM+T4+/FVh9CNhq2SyooelfS?=
 =?us-ascii?Q?PSraW3mvhwRfhPwf+7W9ybq7NIRhhmfanvu5mnml+8K86OMspb/NY9O3/ZmU?=
 =?us-ascii?Q?IDxGfDIDAIEr4AhVgtXiIU4MgjQfpJja0YE8V+Ta6iBwphecRPBQo5aUZO2n?=
 =?us-ascii?Q?+mpjgOhrKXvgh2ysM6VfrP9iDw/ory6ly73IY81brINdv2CjvFRWu1hUo7ys?=
 =?us-ascii?Q?OR1Ft/8UjEXL8kGeQVWJ09rnKKlfKqqVexiTe+cktY1W+mmDav/ZmOD0SPyn?=
 =?us-ascii?Q?qjM3/jYj+efDABbJMnFmmRP3ns7AB15UN+tB7ka+YrwxCSl6TWwZYaZL20Sg?=
 =?us-ascii?Q?SY1RlcPskiMNfD7sjZ5KTjBrJfSw/c3/Nx3njHmOTLg6GJC6qdHNtJUMmlTW?=
 =?us-ascii?Q?dXck/5Qv2i/2dQcZZTc/yDQ2cIdtVO26eYeM63QQno0cejep7a5ERMeCx/9H?=
 =?us-ascii?Q?61PId71pfoVPDiLzSGLKUbu2V9ZhciZU652kd8ogZBtdAEebjwBop6XmBU5A?=
 =?us-ascii?Q?IIo8Aoynoq/vtdi3kK9pT2afQNXH804Bxg8R6Nvqpx+PCY/nR6JWciW5UH8o?=
 =?us-ascii?Q?vu/0C9Zf7aFML8ytyjafAgFeyRz7hdAOW+5tuVLFaVy4bZtny2aM/3rWCQUf?=
 =?us-ascii?Q?1qPkvzDyqCKb6Nc8+k2hEreRRtSLzGZVxnHiHI1hG/ujEBeGCQ1xyIrhGboC?=
 =?us-ascii?Q?z7azG0Iq1VE0F1iPoolG4aMmEz0CGFZmJ8XwIThoMfGA47Z2Q9zLNW4TbA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2AlpYCboNYRAk8e/2QoVCy6ktHE7733gYDVTnD9ipIZa/FwvxTsu5h/yxtYt?=
 =?us-ascii?Q?87Mxfo8omNX4E4cPucDMJYwekvNfxzFo15BB4Sk4Y7pvGS3hyiB7YXiI4qEW?=
 =?us-ascii?Q?NiEMcBKVo+dD0q1nC33D30mpd9iuwDcX2O8PKr+JwhC0zEXPaeQqSdImsU5l?=
 =?us-ascii?Q?rEDz6GEMgQU33VNc9T6W6F1w4LKTGKur7PPxqdmze8MZHJSHMA+gcX9q37TC?=
 =?us-ascii?Q?ZYN03XTKpuQtU1nM9R5o2uRpxECmwnzRG724Y+Q42qBO94XuZFayVXkLYTj6?=
 =?us-ascii?Q?2I8aKZhVU+18FWKiZ/uzCGq8fuIpG98CBmUEz5X4tWljmjX4DLL1GNm44YNH?=
 =?us-ascii?Q?It+Y+yIQT7hF9mocPKNAUcZ3UULCuu2z2Q7PHh/zlfDVrxc5l01HBXH/WA4w?=
 =?us-ascii?Q?6VWChlOk0SwAB4r9o9CRL2d4xZa6vdsblbK6eCIkxK2aeVxY/uPYaNSO1taa?=
 =?us-ascii?Q?o+U7H3VZyByI8LjtfWIs+g5uhAnTWf7IhnzON6SI9rfiA+5jIplIOBpbcQMH?=
 =?us-ascii?Q?A13Q9fWzu2FKJrI+YYaM83d4NzOxiDzzEAbXJFknQ1niE5ye5dpK+UBYulk4?=
 =?us-ascii?Q?WPSY4DEHZeACfwnFaotKxotlRwsTIWRE9xjLeFuznoQPOAxwAXqQDznPImal?=
 =?us-ascii?Q?QRcsft34UYyRY7obQmkxpzIZ3yiY6pGZjiVytbHBBYAYdEhQelEWsyvnwhyE?=
 =?us-ascii?Q?jPK3BhoF8Jkv+JF2xHS+0IB3qLJKgqg/WlbWy/+BivJk3L8JCfy8a4Ygpium?=
 =?us-ascii?Q?ODURLn4O3GoNdE18RElT+A+qj55Lmzr8xq2nbhpGsLbnUJ+DqTxxlCyFHD6j?=
 =?us-ascii?Q?b/zF2PdKTgJuRMIdX3++DxUsumw/+lH7z/+/kHLJP0586kNVymSBz0o9Ziij?=
 =?us-ascii?Q?JCexWK7N736lbH0pyoP4nY2uAs+U5UtdOOuUZql4/XveG8ALCdVSPCT+1zz5?=
 =?us-ascii?Q?yhbgEB2cb2NnEwnGahYFzLFAxJwtNQQi1jvXGFV/PPLWyeVR+xJzD4jcKTNe?=
 =?us-ascii?Q?I6pUBPC14GqKcFEI1kT2nlgzAHwv50bEOb3ZKRs2jI3J197akxTGvGvNjNlB?=
 =?us-ascii?Q?33meLbT+MPGgcu4ssEZ2pCMptIRUMsDx9ptcH9Y/VbRjY8JgabDSxbVKi4Rq?=
 =?us-ascii?Q?cEFOZky2iVX402p3pvUcR9B8J3N8Ajy0t2UXz5h9DdJf75EOQWA1Xdroumcp?=
 =?us-ascii?Q?qsx7uL0unqWf6oE3qbxlaBAJg5Y0zTBqISeLR/rfE+b2t6Kova8FCC9/jw9E?=
 =?us-ascii?Q?DTGr5185i5jIVnTmwqIQ9VvsvsUXxkvizdy+JW0YjNMXSLhLoZZUrlHwpMXc?=
 =?us-ascii?Q?/tgJ4jg9E8mew/yw5LJ+YnXZNHMUsAU4Tqdg+DXOtZ+dNS88tbVEC01qhXMQ?=
 =?us-ascii?Q?KbGePG+tw/QOmGqUkIl+qYfj9WGXOWmr1W65plxB8w3uXLqWkP9t+rBRZMLO?=
 =?us-ascii?Q?sGwW06UgQ5Eid/BNczXmQ0P6VdC6g3r90pyN8cI8apHFTDFamsR/rAxyBp6R?=
 =?us-ascii?Q?zBo0xU85AqgUMFO2PGcOFZjZBM2H74mCqNcOJFWis+jCWWjSC0n/Uu3AFem4?=
 =?us-ascii?Q?EUiWNg6qmWIiwDMo9qNCFzz25ZWTdXOKJV0eeT+IQ4sFCLvSK2CnvJfZilFp?=
 =?us-ascii?Q?9A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac9977ac-65fe-4328-1d89-08de3d60ab19
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2025 11:37:32.9270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Olpy1fby+wkM650fmEMpGuUZA7saTOAVwBoVF18sDsRLjS70lu445biZq/rD2rL0sra0DD/0zjcEk7cyeUvEgSlNURBAfReHL96aXHH5iPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7539
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765971463; x=1797507463;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ltQjnQbeXoY+GiOIv/fPggQQURbEo6Jfb+2nsQymbFE=;
 b=YeyzRzxrGTlMwEoBdDbPNwRfhvCAz76QShxVss6Yfws4KDs5AOI8oy0u
 CXFvk641SMRF0ah+dGKOZhK2gWNBa9rjj5D6+OQwavibcyTA5ti/kYM58
 iD8nyzd4ma+ee4e1hrLpqsL7L3RZmOB5dXxcPH9TeCQpeNMlkD6094xii
 G0taeSOX6vBX5mCHZZtYpLJ+7FYJBiepuPAXlLHSnaCuxx9xoUTPSdJ+u
 A68auZ/MaEv8/fXS7cYCgRjtAlCcfbCpuIatECY78EYGcERj+GbIqT0qW
 o+yeVDkldbXSgpkl6t1VxjKfyj2hDCTlGOBqBzAEAryGafaqKwU+QHMgb
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YeyzRzxr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: drop useless bitmap_weight()
 call in i40e_set_rxfh_fields()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Yury Norov (NVIDIA)
> Sent: Tuesday, December 16, 2025 1:29 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Cc: Yury Norov (NVIDIA) <yury.norov@gmail.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: drop useless bitmap_weight()
> call in i40e_set_rxfh_fields()
>=20
> bitmap_weight() is O(N) and useless here, because the following
> for_each_set_bit() returns immediately in case of empty flow_pctypes.
>=20
> Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 24 ++++++++----------
> -
>  1 file changed, 10 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index f2c2646ea298..54b0348fdee3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -3720,20 +3720,16 @@ static int i40e_set_rxfh_fields(struct
> net_device *netdev,
>  		return -EINVAL;
>  	}
>=20
> -	if (bitmap_weight(flow_pctypes, FLOW_PCTYPES_SIZE)) {
> -		u8 flow_id;
> -
> -		for_each_set_bit(flow_id, flow_pctypes,
> FLOW_PCTYPES_SIZE) {
> -			i_setc =3D (u64)i40e_read_rx_ctl(hw,
> I40E_GLQF_HASH_INSET(0, flow_id)) |
> -				 ((u64)i40e_read_rx_ctl(hw,
> I40E_GLQF_HASH_INSET(1, flow_id)) << 32);
> -			i_set =3D i40e_get_rss_hash_bits(&pf->hw, nfc,
> i_setc);
> -
> -			i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0,
> flow_id),
> -					  (u32)i_set);
> -			i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1,
> flow_id),
> -					  (u32)(i_set >> 32));
> -			hena |=3D BIT_ULL(flow_id);
> -		}
> +	for_each_set_bit(flow_id, flow_pctypes, FLOW_PCTYPES_SIZE) {
You removed the flow_id declaration, but use it in the code below.
Are you sure it compiles?

> +		i_setc =3D (u64)i40e_read_rx_ctl(hw,
> I40E_GLQF_HASH_INSET(0, flow_id)) |
> +			 ((u64)i40e_read_rx_ctl(hw,
> I40E_GLQF_HASH_INSET(1, flow_id)) << 32);
> +		i_set =3D i40e_get_rss_hash_bits(&pf->hw, nfc, i_setc);
> +
> +		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id),
> +				  (u32)i_set);
> +		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id),
> +				  (u32)(i_set >> 32));
> +		hena |=3D BIT_ULL(flow_id);
>  	}
>=20
>  	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), (u32)hena);
> --
> 2.43.0

