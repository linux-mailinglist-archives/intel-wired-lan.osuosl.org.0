Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F56B449B2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:35:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36ADF60812;
	Thu,  4 Sep 2025 22:35:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P4vLxFiN_kdY; Thu,  4 Sep 2025 22:35:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57C706080E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025317;
	bh=u7HVf6NNp2hBwaq82aAgL9zEfP+kN7WKMPT5A5NuRu8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HkH/lmTjyLNC8AT4QYfpuLCnWT/VBSCiQo8TnoDtn9ZNZGCtFQxXLLi6ol9arw9Bh
	 ey6EWjjFIkpzcwpviULUg7kngUtNqkJ2Dh952Hv4PmR4NK6mq2iBk7d4LNwKaFp0sn
	 ZlxHYahZZhZPK14rSW87fr5+/J+llfb/v7D8S12s+4g1AuNoosQeuq5VfxPC3B0vMi
	 PY6y4NBxRA9cuiK6zjmPOgf0ylqadlH8P5x1+ir5FjZ2/G1xxlhIl7zPNdMnhsH77E
	 7oJ24PoUDLloQ9YKMvy5kKMLjgdSYWFRZgaWElJeJ0YhuMe9XT4t+GSQr4jIICFbXm
	 yh3CQyABT0sSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57C706080E;
	Thu,  4 Sep 2025 22:35:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D96A1B69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFAD540266
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J7SPOhHlHLfS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:35:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A087C4025D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A087C4025D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A087C4025D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:35:14 +0000 (UTC)
X-CSE-ConnectionGUID: uV+/jDi9TEa/8pXR5R7dIQ==
X-CSE-MsgGUID: NOhaJpw5R3yiFFqc5zkoPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="59526667"
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="59526667"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:35:15 -0700
X-CSE-ConnectionGUID: cPek8RCGRkaF2g1Ec7jD9A==
X-CSE-MsgGUID: jc482NyIQMywKRRgAzrrMg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:35:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:35:13 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:35:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.66)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:35:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m4MPXN3Po73zpR0LwSWMrFSxK2sxlBmAXwlZ0nNs20kUmi8gKK6Du6as/B15MeTgTVZDfDUjbx9Lomydc1AjJNC2TZAE6me9JnXP6WNh2JXdLGW8gdQ++XmLbjCrkuyg78QyOfR4UVl9mccLswunl3JEbvSMvw2l+I94KO3KDUaXm95LJkCgtocDkrcjfO13WjfFLgaIFPuk50sjIVnytzeLO6pyai3qNrfdiXEgfhF2/xnTiWeGx0+2M7Fx3XViHwRKX728oG15g+twaJFcRclS3ejtCElwqkLAoBddVAxW3UjYqD9BLY8hTCcV+Gy+ZttXjdh4mJ5YGsyuIPagsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u7HVf6NNp2hBwaq82aAgL9zEfP+kN7WKMPT5A5NuRu8=;
 b=XRcpyq/8xTUAgO/kfAgkFKT2V3Ty8YYQifszRAR/gjFP2ZcljIzpT08eyvpyEYebvYz7xJ1i4UFBdzYTkTOIurtkZWUw5DmyKNtNzQ8HmVIjo46X8Y8AZAVJMOjA4ct2pg7wReTqZlpnvxLPZR3CxzXyB1VQCtKt51LwFdZ3KqswKOdAAqfrPdD9dDRE2fuHoTdYrwH7aSlN75IERO27E689VJDEp0zexKPreaSc01LzifH9GRX2los9IAX+JR16JC5FdmlO1iGd8lQLxcAEA4Joz4tBg6R+qLaXP0vHPM25VVR20fWGvteFkuarLAXmNK5MPxLDeHWQ6mMb4RbXcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 22:35:06 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:35:06 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 6/9] idpf: add rss_data
 field to RSS function parameters
Thread-Index: AQHcEy+Ugg37yJSCI0iA6DtS1XHoQLSDsc3w
Date: Thu, 4 Sep 2025 22:35:06 +0000
Message-ID: <SJ1PR11MB62979A255C6E617449B3EEC89B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-7-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-7-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW3PR11MB4635:EE_
x-ms-office365-filtering-correlation-id: 991cf766-9cca-46f4-e5eb-08ddec034c0b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?qRXo3ihN2N97QrZ5j+0Ez08saNFEYtxPkpmhDOUxTpmAlk35QoALYT68ZXKc?=
 =?us-ascii?Q?URr498TJBO3aRbw+rUdPsvBdqdqPzCPyrh2AdMFR955yc+UwKcQnz5cQEKWo?=
 =?us-ascii?Q?ZCAK7wdYJ5fBeV+G6GscFKwHDt8wtY8tYLbT1kVgVNxSb2SXX02CgL1rFsyE?=
 =?us-ascii?Q?mS6ZKtYcfQuGEJCsJvmTvEve6veaVOSxhpaiMKDtOKBlZvyn3RygUNqGysFr?=
 =?us-ascii?Q?o36TOrKmXCUhbeW1Bf8gf3jP5+3GV8EyYKfNYXso7HvnF0lIbQGrp1Gn1dlk?=
 =?us-ascii?Q?FYcPKFU5QXWOTS2lFxguGIdC2ij337fQ14HbQA0oyav3bkR4IhIzsF3R0Cr+?=
 =?us-ascii?Q?4tXOsrd0gNip0AqnRRECNv8J25OdsCBBbRpY5QpTViCD1DvzndCQWeHylrYw?=
 =?us-ascii?Q?wEq4o01BUd40PqF6x9Se4Djk25ESGQjHHnYOMjkl2xyOifBG4lEKco7/ZGjH?=
 =?us-ascii?Q?bv1/9CGKYHNcvaqVBuZOu3PaclbpZQobN05fhkwh7q3xVta0tKE8+uZPktpg?=
 =?us-ascii?Q?1alIjh+kvWlujIwNmtPzLayb6fbFAxS53z0WYdWussbREXbjoKP4C0x2MgGN?=
 =?us-ascii?Q?FvQgo8M4LAT6RGZS+pJiHrJrsvN4wygxX5+xNeyTPV7KStd+tJqM0JzELucN?=
 =?us-ascii?Q?kjN8wO/Dp4bYGc8/FTGqoUbMbI10OYgBx5+OaSB+PLg2p9y4TZFW9E2/561t?=
 =?us-ascii?Q?kFgNiRGyCL+L9t3NOwJWyXowCo9Z6QsDzI2v0y3wocm+30/R5eNL3ZML5WqF?=
 =?us-ascii?Q?kr3I4uDbL/kR3PrEbBLHT9Zx3VacWQ3QmPEqjWj9pxgaT3Dm1JErG8XcmQnN?=
 =?us-ascii?Q?Nlsh1y0PXD+n95tL5nZx/TRk+ZCKo8zikd2GBYjGwFHSN7eG50Y+0TyraONk?=
 =?us-ascii?Q?hRuQgGtYLIbTvsuR0u3/TnLXjBIbeVTM+oUaiZjnT2aA5xgR5yzG3/U2+41+?=
 =?us-ascii?Q?p+CMAv6rObit2Tx22C79tDPzDJXJCkmOwAKfA9Tf7G8DvdohMMiPHmwPX+4g?=
 =?us-ascii?Q?Uq0TU2xfApUxYkR+xWMhppsis4K/qAW52g+CjKHBLUmwR2i2hMD+vLjrFAdN?=
 =?us-ascii?Q?VAP98IVF7KDthcFJM2cGhsXCYrcli2HM7frt1qtq34GfZyi9Nnd2Sl/slmqc?=
 =?us-ascii?Q?jlYzmgJCn60PanSztOJw9bOWUTetz0AR54tRUkXOsthjDk/N3sOr08h//vAI?=
 =?us-ascii?Q?O0i7dNa2rsy8fd8RRsqi6hzUrHzsKnOsEh8EghwITGGdOY+OUXwoxwEM6m58?=
 =?us-ascii?Q?Z4TlGV52sdBiFQhsJYYWwTVeCYmj2HMBrCCSkjRlTDpbOuOZE+gqpz7FZYoy?=
 =?us-ascii?Q?wsxdj6JQ07abE7Xtq2MLWUdPimt6FGigFAQP/yAao4I5Xb3jrhfg8ORvcpRC?=
 =?us-ascii?Q?K01l4yE4dRkk9bKDWguHWj0W/YDY/s4M9lDYwWEICJx8UT2KQAkpKeyLT6f0?=
 =?us-ascii?Q?rmdQJnS7qQNpeqYryMWlopP4ztcwni8JRF4Yh9jBpvb8obnzt+9KYg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?O6EvvIjZzaB+3G+SXv+m5adn89tT0cdb6nFHzUSMqnYSbHsJLIV0fBWZuj08?=
 =?us-ascii?Q?R16r1a9+KsTB4im2GQxetA5iSTyo9NoodHGgYIf2sPU+ULLQcNDe3gnWSOgf?=
 =?us-ascii?Q?y5l1OIckjmrfYAgfDvhVe/0+oOuDZtjEKenNEWqxypFi6XKV+MKkmPlf34GS?=
 =?us-ascii?Q?8HUPPfKomRxAhU3thMsd7eOnxIVQ4y5WctC0FhRVoDAQmSsD+i4ktviMvQqc?=
 =?us-ascii?Q?6SCDoZS4azijkaXKa5Un5qJkUq0NHnqIipeki0pAzU3rcwnIN2siehJM9Xsk?=
 =?us-ascii?Q?40EeGQrR06TTsX28lCPU/QI4kbhV+2B+t0H68FRdp4Aiw2/0oWS5ijp0A8uD?=
 =?us-ascii?Q?zd2n04mFVPU8dtZ12OvCxfVZmbfIXwlQ5sy4iJz16EMf63iNI8vYchPOeQ8V?=
 =?us-ascii?Q?W0+LZXz+ucYiXYN8OWdwBvlGHTaJM30WQjkISuzSBgZ8FM9MedmAwd5Y6IDO?=
 =?us-ascii?Q?7lcAOGAN0v8dmR20qKjq/LMA75ZZZJfEwiVVuTb9WjQcvLtvjb3+WfkmuFG9?=
 =?us-ascii?Q?Nnny/YDYKfLnB8f2AxsaZo3QqW+JQHID573Sq2jghItm22hB2RDyTwsF4+jW?=
 =?us-ascii?Q?ZVRDXacK+r+3RKPdBwDBq8tWhi9urYb7WtBv4JRfZ/0d97Xq2aMCGcxCq6yz?=
 =?us-ascii?Q?XkWpiIwNWcDk3D83jChOTE31KOWRkU7ZbK+H74WDaAYD5XhoQ+8wfRBwf+2/?=
 =?us-ascii?Q?Sxb7xWbQAJA+tXYzTVe2j4N5WFRINsp1Xr9ec65rC+aE2gkg1EeAnjtd6r3V?=
 =?us-ascii?Q?+BGci8pcvi1vYPfe0Qt1PhC1DzuhfAflWfYy/w0WX+aD1kttnvwnMmp7Gs7N?=
 =?us-ascii?Q?UWY6S7GjtQ2TjEeBdBw8cmmZLr9h8ZzWVf4V9f60pIpkAWbqfcVOKcQhwjBK?=
 =?us-ascii?Q?eGSPIT0ybEsLqGFtOWus8nA2Ar0jQFvpKU2c37ooWlWRWbDZ/HFs6YRxOnFi?=
 =?us-ascii?Q?nW8JKQhr+vh22At9EzF6EYbExnL9r0ZfLGfUH459C8OE/d1LCN9rwExpmgrX?=
 =?us-ascii?Q?CqoWG0z5FsSEQaTT9fSRvaNXmkHXM63lftyKrUKI6NRT2xQJnN9bqxs58our?=
 =?us-ascii?Q?YA3mzQm5y7e7ykhokoXn91TuQvDO27qcGCIaFJIYsBmcHFjVAitnKQWvF7CA?=
 =?us-ascii?Q?ri8ME5vkU1+Qhp5a4FJqASesFteWyoaisCMSk2YT51DFJn04heJpCQmlBSmB?=
 =?us-ascii?Q?r2khn5SjWwBV9N+fPphgG+xVbF3DzBsLpJkx7G/K6izQuh5ZUauCJwcXRQO8?=
 =?us-ascii?Q?Spj1SIw59xJI7Lsmo+qJVmKUxfiFD7jSt+8eIaNc0igLJV7ekiwEvdGAfKzQ?=
 =?us-ascii?Q?FORjyrvqRCUvDW501mY53CGvBwHqLbFoQ7JTgK8VwfrQ1BYsRVpJLAbdBM+U?=
 =?us-ascii?Q?TqJ7OCUax08e14TggGTRXdms/fJHG5QmT9Suxvb6nUOZPPCufc2ro0dZB7Rh?=
 =?us-ascii?Q?VEmEBnwS3EyYawbC2eOBrPPIgTiKVddIVeSdxpkvVR8FTIOZDD4FZr1jN4Vg?=
 =?us-ascii?Q?5Vkle4bHaoTffyxtU9DRszJnBHMFGEyOBook5WIeoEDUCh9WfxCODhmJVZu3?=
 =?us-ascii?Q?U85XJgK3l6T/sdSsKLNSKrNmBSC9e5N8MVEoIxka?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 991cf766-9cca-46f4-e5eb-08ddec034c0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:35:06.0982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N+CJPg53lpkse3c+6OFnzlR/LErAHrYBM2FfHNN2yRwXdEeSsyKIDBrSBx2Ul/uKnxn5azLy8qp5L118/pkPUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025315; x=1788561315;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u7HVf6NNp2hBwaq82aAgL9zEfP+kN7WKMPT5A5NuRu8=;
 b=YJzHdq+QRboLR/iMKEshB+EX8TJJDZP1PAUTKXKviLJkBftj5Ord6l1V
 rAyOocH4+emCpibIP5XOpp/EJc9Z5HNPVD+pFJHmL7kXMDENp9phvDfrl
 bxrTotVp7bLoZV70sBXJWB/I77EUpeJgRu2QtfQGway3YkGpDyMVB1dAO
 qfAfevLCTVI7WoKaY2QFwRw9FEW9kkjxEfXExa/PVAJzNHQW7Bq7qPjb4
 SEQPENL/ZVV93sNiWcvMCQtSGn15b13iizwVG7MroLID5HRrLhQqKekl8
 othT8N36WaydxAoc8KYDSwSmP3dk3ZTMpCfOCjIKbL4VVzMbk+ff7F/5e
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YJzHdq+Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 6/9] idpf: add rss_data
 field to RSS function parameters
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
> Sent: Thursday, August 21, 2025 11:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Nadezhdin, Anton
> <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v7 6/9] idpf: add rss_data fie=
ld to
> RSS function parameters
>=20
> Retrieve rss_data field of vport just once and pass it to RSS related fun=
ctions
> instead of retrieving it in each function.
>=20
> While at it, update s/rss/RSS in the RSS function doc comments.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
