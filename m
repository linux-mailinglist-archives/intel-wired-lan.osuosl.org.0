Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HGLFLVCwmmCagQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:52:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1CB3042DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44DC44099B;
	Tue, 24 Mar 2026 07:52:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OHdVsDnYx8kR; Tue, 24 Mar 2026 07:52:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 668EA4081B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774338735;
	bh=uSKghrYpk0KadzknCwCaU8sGXS6u4VcV0kJyezeFZcM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sa6kII5Kxl8HSyP+P8Dxul7vjrzs8NxeiYCasizFrGijiJXOZqV6MVePFxGpspDRQ
	 Jw1te3bVA9Gs5nCOjn9IkmwtYOtOH895Np/LoGBg8jykU2Sz2YPdgu8LchNAHIFqDy
	 cmBHxdiH/je/Ld4gP049ZoLhCx8sg8KDRN83UVcKgF/bwOW8lEqOMjOVcFqRhpzpJ6
	 tc7qXuzkn5H3JG6V4nm9AbmUFU3R46EqyOAnbwfs33cX1z4umvRCwjqP7IN8cLz4sQ
	 5L0lS7RfD7mwZBdnHfQyjMamHqcYPL4d2aJCJd9hjBY6QZ8tXwlNIaInHY53TjhkrB
	 APU+5Jcy6m0EQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 668EA4081B;
	Tue, 24 Mar 2026 07:52:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AD381D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10BB44081B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:52:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qb1GQAdBO9-R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 07:52:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D6974075C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D6974075C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D6974075C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:52:12 +0000 (UTC)
X-CSE-ConnectionGUID: EXfo+V7tTD+1g9L5il4ylw==
X-CSE-MsgGUID: nrQ2+eqvQUy53nIbyM2fSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75319796"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75319796"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:52:12 -0700
X-CSE-ConnectionGUID: MjwloKYSSSOLFQ65KgEJVA==
X-CSE-MsgGUID: m+VWatjcR7GitIpvZ/4VAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224506805"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:52:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:52:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 00:52:11 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:52:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KCRIz2tWTjIyHQxWkEBPV92b6KbOtOxOxIS24mIaEMT0m+QDPifhzDEEtFo6MGY82asM9yOIwgwmO2sxUQxDEDPRHK2M0R8fHPlTw31mNKSrD90A2yPjWNFEt3BnOolzfEgUfkTpODERuil+nHpoiAvykLnQZDU8q4YF891PMltOJERFRE2FHLrwb5y2DBZe3NmJxaeFzUG8HVPHnttXx+7FTPG40/DeL94eLIko37YPTGfJEUcxgI/gTFJxOMxLOkBu1tnkgMaUzyBfU/HLtxmOcm1NNr41lXh4Pui7ZeMuB84GRB1456/IPuGhNrbLQEfKr7F7oCRfhVwUsfdTJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uSKghrYpk0KadzknCwCaU8sGXS6u4VcV0kJyezeFZcM=;
 b=J+Yq+6K8ACtyx+tasS60LB+4yDTI5sl6Lz4vnnUq4KijlANoPocui02rvJ+zn+wMhBJWQrC9pUYMndeIa3P02JBksPq7r9IbM0kZm4y5z8pLr4i/gxn8tltQKMfGEBiecRKalk1gUqfehOzaQwDSbr9s2uGRPei2rFj/PfTyJiZdWNMWNkblQOKuqZSMt7eIGHQuDTXMOCV9hcw0UQizvSgq29vFEGJGG0a0ffU2MVq+Ut0u6RLYJkLLCs/8zgake0gTMCEaQ9dMlGsiDEV5nJTbMtoDqpJxpg01sxPoNROk+QxE9SGguiFfqlCc/VnTX8Q/CTLLQMUSsHQddjQ3Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF2AD6B04BA.namprd11.prod.outlook.com (2603:10b6:f:fc02::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 07:52:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 07:52:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
Thread-Index: AQHcuuxPCFKvGgSAf02yNuNamnzILbW9UDKw
Date: Tue, 24 Mar 2026 07:52:03 +0000
Message-ID: <IA3PR11MB898660D08D05AFA399622BE8E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-2-larysa.zaremba@intel.com>
In-Reply-To: <20260323174052.5355-2-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF2AD6B04BA:EE_
x-ms-office365-filtering-correlation-id: e39337a7-b2ed-45e3-c033-08de897a3d31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|38070700021|18002099003|7053199007|56012099003|22082099003;
x-microsoft-antispam-message-info: 24vc78BH7juIYU5UY97jmMIf6Vzah8D3igUyQYnRvLwmhSXy0FIDb0xnIx0Lg7BBEUdplLyP4EHV0rg1I6uAUMRCko43EWoWIs+Zc2ZWvhotGirt6ZBQ2r++G+eBdPRwURDPjACkLsZqyBk5IZF5EsT97xh9YFWUkEl6V4V8QYQM6PuciTGxfd0Ia/FNTf7QAkgUJXy+wbJIvsMpFQhCCM1PmmKSc18s9VJsLLZa8vI9sOm337PAldBi2GmolscoghT+ESGoj3SfYlG5AO9sF6/cfAd2D83X5s9cgZFQyVZWRHfQKtxzK5lNke2IZ5p+aEnvcTUNOQ8gD09Fx+F+IwpoPGkMuRrrmNiDc74meO98so2Q/+PPsS+PEySYMJreLNLr5ds0OdJ6CtBMdZVd0VPRyiLThCRAQdROcGUMFxFrm+XAQYlq2NuIWu+9uGAWW2MC92Ao3e25DY5Cs8vff5hMLMmKAwjZ/Qw7iUwi09RBUycSQdx5SVb9ICVCa2hpzevW6oe7lT7ior5457KIRYOvm0714pdH7Uol4Umsyj7SzVNYAo40MGtIn+djIp+d8CQgrj1p7uOE63EP4pcgXlPje1nhqwEWa8QnGDcZTu20RiiV140boRscdMnjnAg8hZiTsK8LLjNbZL8xcpsoa76rcdiWO9RtkUj+RWLrQEKXM1SfOIhXJS/E2SLm6VSS3udLGKRi7gZ1G/pSuoWYvUC48QPjf6C9fInLLW6DX931d+eW56PhKqrXrvi3b3B6ExU4hWC4JgCyvsXJBCtjxh+BYZ7KGXIUH0bGL0JDYCI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021)(18002099003)(7053199007)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q1eFOLBet3lMYmZ+poKo9OlIyJJG18h/oywc7yn9/kbYPOaeEudPSdAxx3Wv?=
 =?us-ascii?Q?fT8tyPDf/KiF3AeAC4C9lmKiAoRd00leNdf9qNckM9TRcYougWhE52mw0zLu?=
 =?us-ascii?Q?uBXRYk8cqLAKx92LDmM88Gbhe/J2g4rA1PBS4gTQocdVACt5R58M6FRm5M0T?=
 =?us-ascii?Q?q+e05PRCFTBQ7KxoTwy9jCqiAhDRMZ04GEPUwXyVz+1QtlYYkd+I1VOdAZki?=
 =?us-ascii?Q?c+mTXvFrerbmT13qlTIoDjKSXKtqy4lHBLlK30r716xp9RhYAhVP4CdWkYF3?=
 =?us-ascii?Q?zLCKSh93tMhxotuehp2SGe5M08XtaGGueSHZBt3PWsEApUAJlmyrBYdFjzFk?=
 =?us-ascii?Q?j5rWj2ocNHJeuf0n/e15/Gh20UrHq5AmsjI0eQLU5BONTs/rJhl3oe5o0x5T?=
 =?us-ascii?Q?jwsHir4RYPtXn1LX/c7x1CO8rHM+3cSBKhEPHIU3TNj3G3ss4JShl96stwEd?=
 =?us-ascii?Q?lUQ6c4EInBc3eBOLD+84ocqDdevNNqcVQBKnB2wA6zTPvsgMygIxD0Nw1BEN?=
 =?us-ascii?Q?QNdzSflilh3g/aZmmJRAcQjOuc0p42m1dxqOjpC0Z0WtYx95TGTKVt84HR08?=
 =?us-ascii?Q?V34b4xqsmxjY7o80Ygm2fKqon79z965IxgarNAhrQLKSHY8JzW9il9srEkfi?=
 =?us-ascii?Q?eZgDLm6BEj+gdI4tZMLFbW8gM8d23CdI/H/4WRe0oJHO0qzibTbjpNFGD4Iy?=
 =?us-ascii?Q?8jjzD/OL1ATTQcuozhtWnuVN9TLDsIQwlRTeaEDGg8cTxgDsNUNwtEjWqI00?=
 =?us-ascii?Q?GQIQDGWfqj49fHPsZsPThorYSoTcawYxdr4hP0/jqJTrmqu6KWrgbMS5Vjtx?=
 =?us-ascii?Q?oHnJKgHGidfNo9OBeYmQwGMHYlcQCJfGzKpfVY5UWs6Wjyo2+695JT7IBJ0E?=
 =?us-ascii?Q?6wInFgv2cRLoOuUW+coKLULDJBFfAAGF14I3JRX1parWKABe3Be1PiAFZhOI?=
 =?us-ascii?Q?KXPQjzBW6ZCZebMP5kzzbteXCR3iGIIeeB+v+2aq7R7DOMtPVQvhx6ccb5d/?=
 =?us-ascii?Q?v+j5n8Lmqa/w9SenAOygSS3EajHsxsGwga2eqkjZHRA2fEMYlg5343VNbBfx?=
 =?us-ascii?Q?s3AAMPKNuRXbBokI0AmRwXs0kDuWhkLGeBvGJ66fnKQZsPoGyv1jIhqjksd+?=
 =?us-ascii?Q?1DfxgK31KK7McuoR/a2se1iP00rHL000qv4hiiheV4+JEntzSD6KbrB5vfK8?=
 =?us-ascii?Q?ihlDkxhAzf3SBFzqWV5g1Gmoc7Wu3lE+cHJKrJ8Tua4e62WgMC0h0LqI4PQp?=
 =?us-ascii?Q?z9/syguxrK4bqrMCtfmvDdI5bQuo1V0HiL/FqrhMqJc7jYpkeNY7Hp2dUZ9E?=
 =?us-ascii?Q?P6E71kKTY7b1GQf9tCB/MIBAn6w+sYZvLYR+YBz1UBm45LsV9jwciaUCD+6C?=
 =?us-ascii?Q?hx+ftpXGXvYKl0XXNI6MkoNMF3EkwOElAW4n0d20Ns4PTMjqoXrrHSOr3cxq?=
 =?us-ascii?Q?If0d1kxFn430SfMg1aDv1J3f2Vz8O5FJbaS6dwwm3k4yX56qUSuXc6uB5xBL?=
 =?us-ascii?Q?/kMghb8s9qvMm8VFc4xcToxF1EcNu2X71tXIFy0RJp6T3m+pcNbtAcX1Y/0E?=
 =?us-ascii?Q?ozeaSZejiWaKdj9KGnnATfP7uQipF7qIS4SI8MD0bOfOK9U1pR0miqeVINQW?=
 =?us-ascii?Q?NWbZzvo90HPLKEP+RuQ7ZE6bGEWt7c1OoroEe6dQg7ZO+rFN2k8MZt0hyi+d?=
 =?us-ascii?Q?T1x69jb+tcwXA7NIMZyoSRQtTtsHZCimHAUqaFpTS0F2BLkSDstSZrk2LjaD?=
 =?us-ascii?Q?7CRVuBT34qGNncR8o+RSWaYRGQFbRW8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Mx1gT6XIiC+mb4SYgMaHKbaqUMHuBQA5eARKPiZMa//b2q9TUNJIAU0iHBaD/2Mq4XF4g+nYBHBIFyleeyJwB2aUwtTR3FhGZDC8v37tjPQAmTBEEC9WYOAt/+7AOLWkp/n5wyKVvQc67hwGab7nGLKHT/oPiAFsVqyb9sOZPTMGt6eQrrWw27HtEAW57Hmi/JMfDiiLMzAYYgpoBVcJgUIKc7eEgIBwhnrZCsGesd+H43IXHdZnyL713U+LHKqDRmpSBmdvKN+pB7C8N1VmSRIpC+804OwvKNFQfJuUIbRo/uRQRacyXrignODp+Xw/KnwEqM1UKhjaXgADifOz7g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e39337a7-b2ed-45e3-c033-08de897a3d31
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 07:52:03.8833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BKUPlSlSs07C2JgTxeNTuANXkj0ta03beB4/4/qsz7G4M7sRQhXWDfvN04IO6bAuCSOa5sNPf4rhg+YENacJ7pyuRqtTrrdr4R0DE+BAJnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2AD6B04BA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774338733; x=1805874733;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i8LhLLLlK1Bw1pAPevFe39rcESjNqixKJlKg/ZanPfs=;
 b=Vknu5aJ0AtTwct1pBDmEaoVdrwfZ1uIk3Ye7Z/lY8l8wizbjrDvvQht1
 /67i5q7qqfKO20gLv8Jgaa9AUtzNSr+tUqkbdTlDaz7RFm7G/54nMo1E8
 ZLX+m9SoojuVQ5uFyYCsRvmZM7wNl3fsa0ShsGVvnl04RcQqIrqlNq1yd
 oucSx1dWL85OvwMrcOTagEcZYp08o3w34djvw8id6BWOFF6BKG55JHgO1
 f9SRmldSMztL0B89A53eaQmzLUjMInihSlVKsmU6hmmwjA+Qgc+oyq+mc
 Ax/tQOgAV6tk2iE/ZCO2fZoBYleeTbp+qrAfuIgv6Az85uylVxQC3HrJL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vknu5aJ0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0A1CB3042DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, March 23, 2026 6:41 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 01/14] virtchnl: create
> 'include/linux/intel' and move necessary header files
>=20
> From: Victor Raj <victor.raj@intel.com>
>=20
> include/linux/net houses a single folder "intel", meanwhile
> include/linux/intel is vacant. On top of that, it would be useful to
> place all iavf headers together with other intel networking headers,
> same goes for virtchnl2 headers which will be used by both idpf and
> ixd drivers.
>=20
> Move abovementioned intel header files into new folder
> include/linux/intel.
> Also, assign new folder to both intel and general networking
> maintainers.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  MAINTAINERS                                                 | 6 +++--
> -
>  drivers/infiniband/hw/irdma/i40iw_if.c                      | 2 +-
>  drivers/infiniband/hw/irdma/icrdma_if.c                     | 2 +-
>  drivers/infiniband/hw/irdma/ig3rdma_if.c                    | 2 +-
>  drivers/infiniband/hw/irdma/main.c                          | 2 +-
>  drivers/infiniband/hw/irdma/main.h                          | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e.h                      | 4 ++--
>  drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h           | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_client.c               | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_common.c               | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c              | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c                 | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_prototype.h            | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c                 | 4 ++--
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h                 | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h          | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf.h                      | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h           | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_common.c               | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_prototype.h            | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_types.h                | 4 +---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c             | 2 +-
>  drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h             | 2 +-
>  drivers/net/ethernet/intel/ice/ice_base.c                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_common.h                 | 2 +-
>  drivers/net/ethernet/intel/ice/ice_flow.h                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_idc_int.h                | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c               | 2 +-
>  drivers/net/ethernet/intel/ice/ice_type.h                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h                 | 2 +-
>  drivers/net/ethernet/intel/ice/virt/virtchnl.h              | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf.h                      | 6 +++--
> -
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h                 | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.h             | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h               | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h          | 2 +-
>  drivers/net/ethernet/intel/libie/adminq.c                   | 2 +-
>  drivers/net/ethernet/intel/libie/fwlog.c                    | 2 +-
>  drivers/net/ethernet/intel/libie/rx.c                       | 2 +-
>  include/linux/{net =3D> }/intel/i40e_client.h                 | 0
>  include/linux/{net =3D> }/intel/iidc_rdma.h                   | 0
>  include/linux/{net =3D> }/intel/iidc_rdma_ice.h               | 0
>  include/linux/{net =3D> }/intel/iidc_rdma_idpf.h              | 0
>  include/linux/{net =3D> }/intel/libie/adminq.h                | 0
>  include/linux/{net =3D> }/intel/libie/fwlog.h                 | 2 +-
>  include/linux/{net =3D> }/intel/libie/pctype.h                | 0
>  include/linux/{net =3D> }/intel/libie/rx.h                    | 0
>  include/linux/{avf =3D> intel}/virtchnl.h                     | 0
>  .../ethernet/intel/idpf =3D> include/linux/intel}/virtchnl2.h | 0
> .../intel/idpf =3D> include/linux/intel}/virtchnl2_lan_desc.h | 0
>  55 files changed, 52 insertions(+), 54 deletions(-)  rename
> include/linux/{net =3D> }/intel/i40e_client.h (100%)  rename
> include/linux/{net =3D> }/intel/iidc_rdma.h (100%)  rename
> include/linux/{net =3D> }/intel/iidc_rdma_ice.h (100%)  rename
> include/linux/{net =3D> }/intel/iidc_rdma_idpf.h (100%)  rename
> include/linux/{net =3D> }/intel/libie/adminq.h (100%)  rename
> include/linux/{net =3D> }/intel/libie/fwlog.h (98%)  rename
> include/linux/{net =3D> }/intel/libie/pctype.h (100%)  rename
> include/linux/{net =3D> }/intel/libie/rx.h (100%)  rename
> include/linux/{avf =3D> intel}/virtchnl.h (100%)  rename
> {drivers/net/ethernet/intel/idpf =3D> include/linux/intel}/virtchnl2.h
> (100%)  rename {drivers/net/ethernet/intel/idpf =3D>
> include/linux/intel}/virtchnl2_lan_desc.h (100%)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ff6f17458f19..42fb616f8627 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12819,8 +12819,7 @@ T:	git
> git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
>  F:	Documentation/networking/device_drivers/ethernet/intel/
>  F:	drivers/net/ethernet/intel/
>  F:	drivers/net/ethernet/intel/*/

...

>=20
>  /* Only a single log level should be set and all log levels under the
> set value
>   * are enabled, e.g. if log level is set to
> LIBIE_FW_LOG_LEVEL_VERBOSE, then all diff --git
> a/include/linux/net/intel/libie/pctype.h
> b/include/linux/intel/libie/pctype.h
> similarity index 100%
> rename from include/linux/net/intel/libie/pctype.h
> rename to include/linux/intel/libie/pctype.h
> diff --git a/include/linux/net/intel/libie/rx.h
> b/include/linux/intel/libie/rx.h similarity index 100% rename from
> include/linux/net/intel/libie/rx.h
> rename to include/linux/intel/libie/rx.h diff --git
> a/include/linux/avf/virtchnl.h b/include/linux/intel/virtchnl.h
> similarity index 100% rename from include/linux/avf/virtchnl.h rename
> to include/linux/intel/virtchnl.h diff --git
> a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> b/include/linux/intel/virtchnl2.h similarity index 100% rename from
> drivers/net/ethernet/intel/idpf/virtchnl2.h
> rename to include/linux/intel/virtchnl2.h diff --git
> a/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
> b/include/linux/intel/virtchnl2_lan_desc.h
> similarity index 100%
> rename from drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
> rename to include/linux/intel/virtchnl2_lan_desc.h
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

