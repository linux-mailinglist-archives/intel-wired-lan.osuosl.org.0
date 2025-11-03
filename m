Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC26CC2CB79
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 16:28:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33833605C7;
	Mon,  3 Nov 2025 15:28:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rgZOfl_rm3v2; Mon,  3 Nov 2025 15:28:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC6C7605CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762183715;
	bh=3PrDGntUGANxh1+PDp3FFXEGnRKMlFLUQPv7pZRtZds=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1q5ZoPUeP5N/hJeWvG9EQt+NCpR8Fg0fCrYWd/HQ9nFqaq58HsfY5g3mBTu4rjpVw
	 LZgTC6YW8WctihFr2sqz1wkJhoVQKTMkdK/+U1soTpEHT6AbA+98iRI2iuDbT6MQAu
	 cczBV2LWMcj2sPFttDthZTQBlqbSYsWgRwWdGmQCog5strO0Gl110fJdlW5Bj++2EB
	 tiFsKy6KsHxPbQCFnJK9bTdLoXhfBcuOzNAz4KzqcsEW2SZZcasYeoohjr7J60y6Ra
	 voSuLc3I2x7Yh3PmFVK4SiwmqYpeazXrLmnJFQ7lG1QDm+6iT/t3lZFPnOjrgn6/aO
	 ewkdutte1DEug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC6C7605CB;
	Mon,  3 Nov 2025 15:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 92409278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83680401E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 34lMs_C748r2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 15:28:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D567F401E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D567F401E1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D567F401E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:32 +0000 (UTC)
X-CSE-ConnectionGUID: 7SUUMzdnSSanMwStfHrtqQ==
X-CSE-MsgGUID: lmMDTxWgSLq5UxMIwQa2gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="67915986"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="67915986"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:28:32 -0800
X-CSE-ConnectionGUID: KLB3JVrBTqCB1jTD68AgFA==
X-CSE-MsgGUID: 9Fa70UJGRvuMTFH+gZLArQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="187040603"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:28:32 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:28:31 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 07:28:31 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:28:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JMFhb1Lb2iws1fQ0e9o1nSv2HcT8lSUVg/n3pbwO3ZXMkMPCKXLLBv8D5RIweqQ3MNODJqREFwLTncTpxFttIpI68xwTXDcdUEYqGg3bAMs1J/vRA7GGvlOvfhWVz8Qdbpb6dl5iHhJp0BRLe/lN7mjW68qxTcUmofcB0xu2Tu3Dvef3iebpa+OEsVZlm2rO7E6cl6WfhFvp8moWH7yNvbaAjHE2bkD+VV9WByc1QslxXvGSWDqtridpWOaJjv9NluxgOzosX7t3HRkv2RFqaddhPb+ND5clzJqRfsxhjJrAEZ3E9PMmNLln/wQL0jdpygeOHwIB4ML0+13h5pkG0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3PrDGntUGANxh1+PDp3FFXEGnRKMlFLUQPv7pZRtZds=;
 b=DE1+qz/iQkOaEne+HFZBObsutZu/Rk+W0qZ/4TeOt6aKMCM2cKhtsTrTIWYku8xFS/uttZjf6a1C4wFuoaGdf5xbTjPKz1cszGjr0tz3/LXPNXJ3qVvg3aLsCqUSiD6D7NDQ/q9PfpNo+du6Sb5u3q9O+0wxNQzkl/6h5bvN4Ll3ArhdJDqWozFvMtA6QieijXuzPV8cfcM0tvAGFOTtkSnw5SWk35zhBVfEX6Y/aRF6w4bPunIWbRfvqEd0A2NGhHVOaQ4Ed74Mh4vimJVyWzu59a3etR05FNSTysAj46hXgzq+1++5r9HqBHcwmjCjr7OeFy6v7XJL8R+hNpQsxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 15:28:29 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 15:28:29 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 07/10] idpf: remove vport
 pointer from queue sets
Thread-Index: AQHcQuFgRrznQktvsUWLH+vEIMyYk7ThJkRQ
Date: Mon, 3 Nov 2025 15:28:29 +0000
Message-ID: <SJ1PR11MB62977AA3217AC737CA530C2D9BC7A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-8-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-8-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY5PR11MB6211:EE_
x-ms-office365-filtering-correlation-id: 310e55e9-76bc-49a0-3940-08de1aeda41d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?BdbSz5dMHp4Od3ePylc0h2grQbHZoEgDaD+kFsh4Ey0hqONmdRabPLCAd7VJ?=
 =?us-ascii?Q?lrowxdf603DQO37IjGmTJfoZF/PNO7ZVnxxpVRV0Ywdiqv10PEJVsRCuExCz?=
 =?us-ascii?Q?6luwrX42XewvSM4Efa6ZiwxNiEs2YZ9a6h6oTe4Rf6eEtGh79NtGKhXyv0IX?=
 =?us-ascii?Q?wT6JXAzyzyc48jKmiPIQIlOjImyhZEKeOeODW5rdQTl0Fj/Xm2mPktZdGv38?=
 =?us-ascii?Q?w2DeucNPTlqryyitJuf+4G4gp2sN8BBjDOnORPejKc6rcms663+GUKCAJ/pX?=
 =?us-ascii?Q?vuLvme9FNDJ2PqLd7/fM2/rwRv5vJiS41+Zrteug+9r/b+UV93ctrbKHb7Wr?=
 =?us-ascii?Q?GKPmGsKedkinVE8ujkBJqS/5j9YvLkGM0FBmyzbvIqIz47qsysGsoNsSP9Xs?=
 =?us-ascii?Q?UtU6bPtANA/gl9gN8epRscIYsN4bZd8ZMKabTM0aEBK21VOSz3xvhDkxUQiB?=
 =?us-ascii?Q?SikW1ZLdR79PusyaxdRcjk18DgRmlIJ/mtsmeNGD9jKpHc9D5QzpMrc8LhMf?=
 =?us-ascii?Q?7KTOturR6B/eUGvqtskZO5pIRcogMUwll1zYyayeRlD58mbxUG3QkZeyHurl?=
 =?us-ascii?Q?ZnpHhIVeHg+Yqwon1SezmUugX+wHZPQt4+r0EuIdWi25FDqU9ePpZ7jrn7yN?=
 =?us-ascii?Q?g044Nb+twcRPS3ohIB7M+3QhmTdC0hgt+yV6KF5DKRcrNwPdGpxq7oFFixhe?=
 =?us-ascii?Q?9sUuBFw4sisq57TTzJ+2gIZy2bxRvoOldSOcgaEFngvkFzLdOUBpXsHopyCs?=
 =?us-ascii?Q?9zyuPPNKPrVcBECLGOLOh5iBNDZZruyVouebeOf5w2hIomUcyG5bMkzwt0Pl?=
 =?us-ascii?Q?Ccos87JvTV29SbnyZ6ZZ9js8TqBSH87n8oeJlpYvaYbpFbL+0KmHHyKRs2D4?=
 =?us-ascii?Q?At2u2a3mn6KNDhWvH1g6OTHMROLeojMH9WC77MtXQytjzGnBi/uBMl/e9kJ+?=
 =?us-ascii?Q?71E7damd2mokUfAHMwHwXhV3k6rPMvq5HOI7YKvla8Q317kLVEtOUSVJlN6b?=
 =?us-ascii?Q?hWUvFWH6dUyser6VyNSG0lczSH9kP3VWMDDOYlTZAsIEQLZOgdg4nE6bnjW/?=
 =?us-ascii?Q?N9/V4JdozNLEwfnxBxv3aDE6Zu95clkZummBeTkmEdMDfSxH63BAGmDPnHfW?=
 =?us-ascii?Q?zLu7q0yYsF+cZGuBCWzEbTzYyP8ZRgTWmlZ1n9KCBj1jfufUtl/yHwdHbSwt?=
 =?us-ascii?Q?mmKjS+HVqQzJt/y16qlHAwvumV5mKr/90rf2FESMbGByWlJ8O6/N4An0jYWN?=
 =?us-ascii?Q?oAoXh15ntH+w+OS5hJqJ+mykd1Fuaft1llJBtE9BNbsrqKfqdMH6PXRe1jX+?=
 =?us-ascii?Q?gfuFe98xgO7VJ4uMEcXjyHzL6O2eACvdW9fF9A/dUzBOUQwmmSq4zlob45Em?=
 =?us-ascii?Q?/RyX+ey5cGFhlBqBI6rSWMEjDDMMCM07SGTB/BiibD7iEjMFV347p8Px5osy?=
 =?us-ascii?Q?QqumNJWzFzAz068NnjyU6roFrJiD+b1SxlrYd0DlVjsbtKUuJh8RnL86BHJg?=
 =?us-ascii?Q?MJtSAux/WKK8ahJnMGhWB0qehyklA/2K5jLO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q13BotbvjsJg/gNEwjoV5BrD/Ghw9oQgKto9uqugqZhRAL96GIyCAifWGW+1?=
 =?us-ascii?Q?4bbm6uKCqwr+l3OuxR8fzbF584/zRbBzak/hr8qWI5TB9bMFj/ljG9En1slw?=
 =?us-ascii?Q?34huUmW9MtRKBioGcMPz3Wtp45QnN6SkFr4bPTQ2lul9r3p9HvJdwbsJbtJk?=
 =?us-ascii?Q?21l1qM7MqhCdchn89GA1+dkqxECryySBbgTXPrR3mL5Nk6z+ooTtEsDnIwIa?=
 =?us-ascii?Q?eVwO+g4RRijXpbs6UDr+6e4htmsgMyHZ/llPeM6e54GWpOU9aqKGA/aC6LyC?=
 =?us-ascii?Q?o/CBJgFawgrKHEc0Cfp9i092D1zDEsd/hAR9t4h+r4Ewxl92EqlgLGyoWcNU?=
 =?us-ascii?Q?m8ms9ci/2JEHXERbS+EBuBieCWFp3L3ekv03QmzTnVvsPo1UTEsSY7OKWu+7?=
 =?us-ascii?Q?YEBL8z1zS3IBjtW6id1HbBvBvM5KyFvB3ZyKbvw7kkj4VD9p/ApUX2uBBXUR?=
 =?us-ascii?Q?R7RakunFuG9CRJs4dZttZf3htrJAvY0rEFDMyGqPtukz9guihZCY8YLcL33r?=
 =?us-ascii?Q?1XQXyTlDntFn0qK2zGFNI09iMr6IglEcuIXWDI6XKC7RQ9Rv2x7W5ifWIjWe?=
 =?us-ascii?Q?JERJc4+IpR2N/w3q1yUaQk6RfcywuV+/XvGAWmdM8SNej4sulU19rEHdUdYu?=
 =?us-ascii?Q?//zfeLJ+u8V9K1cI+HziN7NSvt8eGPw5FR0A3YdflPCzkViEKdpLSvybhk4V?=
 =?us-ascii?Q?aVsP1xuYcgcgAs5oPPCCs9u3TwiHgUvldZSVenR4l6Pfi/zPaOAouRA03MwA?=
 =?us-ascii?Q?mS513df9ZhDi7rk+kna3C6YJJc0vnvJgiYe4L/3601eAfL3s9cDeEFDocJtl?=
 =?us-ascii?Q?5Hl9QkA05QstY1IylJ2u9VNNl2LFUnx0LFm9cblXtNShv+7iMGTHUpktww2i?=
 =?us-ascii?Q?CISfnwkts1dl1/bEJ4aIwwbEA2bkIhjNb0y3ruR2E+nlfymTuo7j3Yycwr2z?=
 =?us-ascii?Q?rIF+vxq4x9OWDCviz42wIrjJ8EK+NCzkZElMHe/GuGmDhSS9ESn0lnFKgpci?=
 =?us-ascii?Q?CJYwbAlqItlMfUARpf9BYPAnXyLGKsn97+96IhMjr76/7STMQaLVOT3fLlm3?=
 =?us-ascii?Q?VvhnmIdfU/rB4kTGCAgFjLdAw5A9S2//cXETuUWq40RksmoCjsKJJ4PezBMW?=
 =?us-ascii?Q?Znjr9ZMbQU6npihFwlZFA/tK8OGZ4wJ4DOaHjXkQv9xDtLC7uHAwrBPVt/qK?=
 =?us-ascii?Q?lvkbwihylIX9Haw74vCYe2JNAU6E+xTSSo8ZnTvIbPktlws85y9KFYD/oZNJ?=
 =?us-ascii?Q?9AVMo6OVHfPEMPXiaEHm05gmKPsQ2h2S1Z7sJuBTFNrAUI8V0kOOEEpdFnCw?=
 =?us-ascii?Q?KAg+xkx4hF7Avzs5l62lAETGmj+2E6msmLDVL/Hd6mswZBS7bqPyRlHzvisw?=
 =?us-ascii?Q?qjA+yKLtuhYyZKy4yGEYfzFjPW6oh9hwqvb3ZcbDAGKIrLu0AR28Hg/cGb6p?=
 =?us-ascii?Q?cEr5gAh9UtPdz+Kt1DnfYvL157i3+IZeQ45Jl/mGjRHS9OAQEkAq+jj9ncqC?=
 =?us-ascii?Q?DrD/HPjvMUdSGt7gGUCpAlguImIzFcI8aD1hSEy99cnT5FC2UzuSXi9xHUCs?=
 =?us-ascii?Q?n5Hp5KtDCTLhjit7l+mhbcezEdO2NBLJ+LB8gby8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 310e55e9-76bc-49a0-3940-08de1aeda41d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 15:28:29.5770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +qi/S0YBbAcwl6Y+QyK96fxdWMiQRX2iRlAiv20sVpapw2Uj5Cc4DCE6zASy8rtiH/QtwZ1MgpJkDWlEfQ6nPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6211
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762183713; x=1793719713;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3PrDGntUGANxh1+PDp3FFXEGnRKMlFLUQPv7pZRtZds=;
 b=dV92YhyclmpVXzh9A6oUDzkw/uHbFu057FTlEHtWub2wnPKQdGapO5Su
 cjdd4uSEY/C/ARe6iszfT9QBKpIRNy/LbSDLII4xDISFqViRnIsc/dlD2
 PCwigePyIbbj6ULsGALbXa1JDDf+/R/KaAMjZ8ZUhC/WT/hy7s18akPT2
 6uiENXEF1Rm2UpHmLriMpeM7SoHftiMnzqmOrr21Ga6XxknHo1GHGoA8O
 V80+VijKctfKPp2G0nXbLAjabf6uvCuCc7K//+8SNAHlZZHRMLwG1IsQs
 +vEdlK4LNPhEiudyXYbgbuepZCkXez3wF6+vRjaQZ4Lu/MRgzJPlKzlbl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dV92Yhyc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 07/10] idpf: remove vport
 pointer from queue sets
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
> Joshua Hay
> Sent: Tuesday, October 21, 2025 4:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 07/10] idpf: remove vport
> pointer from queue sets
>=20
> Replace vport pointer in queue sets struct with adapter backpointer and
> vport_id as those are the primary fields necessary for virtchnl communica=
tion.
> Otherwise, pass the vport pointer as a separate parameter where available=
.
> Also move xdp_txq_offset to queue vector resource struct since we no long=
er
> have the vport pointer.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>

