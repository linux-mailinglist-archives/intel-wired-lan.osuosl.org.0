Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6515AB40861
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 17:03:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12C1B415BF;
	Tue,  2 Sep 2025 15:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id leMsi4V8t4gz; Tue,  2 Sep 2025 15:03:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7790F4154E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756825421;
	bh=IKtu2N3sHkjbjCWTR24j7hf0k948yxMrbMBmoR3bD/0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TguHuWrk5SzUWpZwAjylRqko54rtPJXgiFW4UZ/KFpQU29EgekKRT8KTFQj9c1MNd
	 muMEh5Dt6YlUN8bNTfn/9bZ1T2HUB1RAQf1K7cI7xAtbFNhrtG8PyV25Np56XH/+3j
	 XQ0kyi+ZKfoSa07+FSzKfcq2BMbcncqfB3kN3ete1YiMBCgsQ3fzFK3tWrJoUDusVZ
	 k+mfSG8AtaYDCCIg7lLzpBWbH5SNwNJEeQVyXCXXirpAdV2LVbsQrY/1hTPdiLlvQ7
	 sOd8MHSsiXalIiWUQxV487eGoyV/Ep2k9aLJr1OSy2s/S0lVgKVdy6ytF6kWgdMM6E
	 y5EY11uU71VUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7790F4154E;
	Tue,  2 Sep 2025 15:03:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D4B1610E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 12:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAABF40731
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 12:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bc0QH5SZI5nf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 12:59:22 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 02 Sep 2025 12:59:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F1C354021B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1C354021B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=nellorex.kamakshi@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1C354021B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 12:59:21 +0000 (UTC)
X-CSE-ConnectionGUID: YBCfsruIRfeNbc93EfyigA==
X-CSE-MsgGUID: kXjDFsBMTI+PAFkRjdx5LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="70518829"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70518829"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 05:52:14 -0700
X-CSE-ConnectionGUID: jMJIs0VESsCLM8b83h0mIg==
X-CSE-MsgGUID: 5i+COWrPTRWQMa4iB5McjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="170827116"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 05:52:14 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 05:52:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 05:52:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.72)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 05:52:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I7RueXdJ6pza3Dml1dUZ619434bQBICaaps2xUA/xsqc046cXxDip4tf7j40qHwfVfHVzmsX+a4IXv84efVTQk3V5do2BrCmgSZcnRQFsQjyufddPqigDM1LiO7DgXEYDW62rj3IfQTsN70XuP6FAFdti6cfnsYfCeab4tYNFWPNK5SAVFRSZTQuTT6Et1tioEsRx1Hsf3xrUTHlBvIjhRJ5g5GWw6dAeIPj+ys7S22jsW7k8tRby3ocTxs0MAlJz0iKSguYfYuN7pES9FeBAeP0IkmI809mDs1kszyr2177eJWtKaBqIxqNRDWaotoSTUesJwgyRMM3R6SVqefTmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IKtu2N3sHkjbjCWTR24j7hf0k948yxMrbMBmoR3bD/0=;
 b=OVHhmFq/4R3RR2nxO2Wce3LyjoKtPt2H6wbeG7gsIPj6ErMUfqsYWikbpZWhf+qB6Deodght5sNVYtlqOxePomEZl1lXabkPuJOCi9fKrRQMAaBNpyQn6PqBNn6/oF/yxCyO+VvD4XW/g5H7vG8TJBl+MUcD/3rVH1K1shLvWZuo8sjNPA/yuVaLhzgZuVMnxr4s6tVvmIwcY28BKtgLomcVJWSFLiCWUcKsNmWaf53r4GFJ6kp4p5XaZ3h+PkIjzPIJA4yFKUH21cHmilJgVmfE3VJXGoiLWDWH92DUanwVz5VlBMI6rmu5MSmBLkuc92fTdwuR51kZfkxrjIi7ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9)
 by DS0PR11MB7927.namprd11.prod.outlook.com (2603:10b6:8:fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.16; Tue, 2 Sep
 2025 12:52:09 +0000
Received: from SJ0PR11MB5582.namprd11.prod.outlook.com
 ([fe80::a534:22db:5d37:f389]) by SJ0PR11MB5582.namprd11.prod.outlook.com
 ([fe80::a534:22db:5d37:f389%5]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 12:52:09 +0000
From: "Kamakshi, NelloreX" <nellorex.kamakshi@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "Kyle, Jeremiah" <jeremiah.kyle@intel.com>,
 "Pepiak, Leszek" <leszek.pepiak@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/8] i40e: fix idx validation
 in config queues msg
Thread-Index: AQHcDD+NeRs0a5Y+/EyPhoSY3oG7wrR/4OSwgAATAlA=
Date: Tue, 2 Sep 2025 12:52:09 +0000
Message-ID: <SJ0PR11MB558290263D6196A2EB0FADBBF506A@SJ0PR11MB5582.namprd11.prod.outlook.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-4-przemyslaw.kitszel@intel.com>
 <PH0PR11MB5013D93E5E69AB35CA9BAD0F9606A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013D93E5E69AB35CA9BAD0F9606A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5582:EE_|DS0PR11MB7927:EE_
x-ms-office365-filtering-correlation-id: b81f3c1d-c45b-4734-63fa-08ddea1f87af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?A1TZnlBc/v0nHR4pJibKGuCpUmfY0kaIjvw+CWPb5Na1ru+M/Ek7EJUVdPbz?=
 =?us-ascii?Q?laW4z/blU/ae+FQBs6DJQR4rFKr0mc+bLv0Zqmoc3F+L6grcGHKYqAYD1PpT?=
 =?us-ascii?Q?a6XcSHrEZS/TzBMqILfCb+77+cNBT4t5NmcNqZ1EsCAKzVWsyIh6MRwThv7a?=
 =?us-ascii?Q?hbp+gBXKoxSypjcCyfa9PTunir8QDgWWo1l/mlVfy3CwC0VQPM/mkKan1KaU?=
 =?us-ascii?Q?T1Na46dhIVpe6jJeDW5hV7mmhWugLL+J2aAEMUIR7OgHGkDB1jryYuQXXBgZ?=
 =?us-ascii?Q?prQ6o3y59fCD+rKd7HH+4pZmGsoZ3Rlsu5mODNRSrJtS8ZGnvY78I04mUbtH?=
 =?us-ascii?Q?KgcA07pe7h9LVEX6l4A1LGMBDA/hiQTxd6LI0DPQ8yyES237koz3rgZc1i1l?=
 =?us-ascii?Q?AWsnjAa/ps2Hv8/HulG93M5YdLJtqnEYB0GnXm8xIRwznjUy54n1oqIxiVrU?=
 =?us-ascii?Q?tUxqyAtzx9e03PHqIDqgjcDpUd7OOsQu86lELID5v7l4P0AxK0Ph9XEzHSEo?=
 =?us-ascii?Q?9eXbtLctOJPEbDY8FeavuhyUfTCnEae0SfpV2jtHGFXZ/JhuU57B5C/OSzl+?=
 =?us-ascii?Q?90lmSFmPRUe+tcp6Tu6ZYiy2x3dbKMkDm9KoBBGYN7ZBZZmK9EpoHYSBChpN?=
 =?us-ascii?Q?esjWCNijO+ZJRJ6AJ9Ou5TribVOmiBqn3p023UywCVxqPhDQZlmjF5gyHhiI?=
 =?us-ascii?Q?pTUDoQiJYwitNIvIbfyc9gOqUnjxkLwn4nQhqoon2j2ccmZx1Cj+qgkzQ9sq?=
 =?us-ascii?Q?o1KbqfT6oP2yKAYjW9Mf1NYKJQxfIRsZvWvmiC+rsvLmRLSSxEXXZoiUB4yG?=
 =?us-ascii?Q?akteXL5wCPyQcGCPevaGRNq4fQswLiADqjkGnx9TF99qw9LXrYEF5sg4UId5?=
 =?us-ascii?Q?cjW0WLpHJUvcdS3rKA2PugO/giHiMnm8XpC8O/6Xtt53mRCS2Vb5WkaUBPp3?=
 =?us-ascii?Q?lY84awe6Ffw/zXAaeRmRDnZaxOAfqBZwDNX03XvMacMVnasplQRXLg+Kx0TY?=
 =?us-ascii?Q?5S390z1pICskhV9ZcMC1AK9j+gUQmcY171SHQiO4izn83ma5RmhzGBoGXQaH?=
 =?us-ascii?Q?zCOgqItQPIKuaplvVclPTPNqHBTcCl3e9xP4C7pVwcGacWyxIWg9/M64inqH?=
 =?us-ascii?Q?rjU+Fej/VCnH3Zgb6mGh2oC1E+u/a8E8xDx8RABUFTPcXgIE9E8V5j/EdfoP?=
 =?us-ascii?Q?ENNQ4vWxD8/oCjQf0P2Y2Tx/iAIcokrGIZSgL8ghukBUbdAhP3B3U4hs6nT9?=
 =?us-ascii?Q?Pd/P7zMlfIvX2PQVLmxnUd1JW6zG1SxJsQm70NrQsuj9oQPVfAk4qNq40xiS?=
 =?us-ascii?Q?rHrv3856EEH6FEM8Sqmrmyc3ehiN8tP6/Xr74CJBscaykKsep1Zr/H354kGE?=
 =?us-ascii?Q?F40J4g3rx94Po6dRMzhvNB8pBZsj/GV4R/T7FrVFziHISBixXnowVC3BSdEo?=
 =?us-ascii?Q?SPpNtpSqfPsTlUAmwICZUOOPfyUMnKZwecxRBtOjdGonpRbHMzVpY/9nsCUK?=
 =?us-ascii?Q?gGEpwV2DEoEYUEA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5582.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2CeHMwuhao2ACtRZjnzTloMXMfLcecLbG0AdPYS5udnGo+35xakEUaxJDTF+?=
 =?us-ascii?Q?kgd8D8mFpBIizHp53MPzZI4Pm6lMPkP0ve4Y25FqP+cbQzlw+gIixd05k+0i?=
 =?us-ascii?Q?6nboa3ZFokQPjqCtNM3C3s/DPOh+N3rQRwpHCNMlM43x8oSgr/mWZe9J/n63?=
 =?us-ascii?Q?di4NzsUMXkYaxaA46lI/yEIw5ob4pHOH2FrknuYoU2lB/LXDUDPUhsh1ZZpL?=
 =?us-ascii?Q?rm2JGXHvdrH/NcF2vPgsRFd/jExK5utCG83ECx4ebAwePzxy/rKZU2Jt2BIG?=
 =?us-ascii?Q?1AHh/rupH42TAT3C88pTXsbVHimFion4t2Yrmox5r2rGbfkIXnNtizlUAUtZ?=
 =?us-ascii?Q?7KqFe1mDUshP05PewuUhcD8+uGx2KKWzY/m3NVE9BJc+bSZ3HAgmGUUNPQd9?=
 =?us-ascii?Q?1fe6Gdyut9rCEusv84WGzgHM3ca37d2Embs7E+pVZbeBKr2NJjKTK+1YaFlH?=
 =?us-ascii?Q?yqFu5qHrYa1ZtARitbjvM0SL0QSPyrxEXVzBfWRfHTrM8lWpMAS1n66eHby/?=
 =?us-ascii?Q?AckcV11VZP95cQeTfsd4XT8jh0PLyUOVxWtlWyT8k2/Z6L2LR/nBf8yOo7MS?=
 =?us-ascii?Q?XTFlujdy5SmteOS4WPEovqZoR9k3nA4K9DtGneGUsVRAWK6P0Bv1+A/NY1dY?=
 =?us-ascii?Q?WLbCz7zjETE9VzNde+15XPnYwu9lq2+UU6iI2wiu1IMr2Vru7JfntM+hKGaW?=
 =?us-ascii?Q?GhGyYVU1M1z9Q3ZVT9nlRuTrPmN/myuq4uwyL0XuPx1sOOJjNpo1iATz2TTG?=
 =?us-ascii?Q?A6Ln04rdAu5SoKa8yPaOurbBZfDi+rGK0sL/vqqU/uatI1pmTjasre8zuOGn?=
 =?us-ascii?Q?EmGtcjVRdkWIkremq7hb4OFlW5y4h44BXAckXYoWzQWiESwMR8AHXelIcA10?=
 =?us-ascii?Q?zB0qA7CzuQCy+ZVwaupy+kuUKQMntsnvgzScMrhHjJk6sx92BMwS8OPmFadF?=
 =?us-ascii?Q?N0NPlmf6s3o5asAdrRSEOaAX+/wY7hBhSfG2wkWlYdjRaNxLMkYRrEtCIS7n?=
 =?us-ascii?Q?5K9f6uT8NrKD0shS8h417DIJaFg+jMhERbJ27PVbTIBHFDNhoKOZhYzBFPGz?=
 =?us-ascii?Q?0SzbypVB53O02Tja/dC1vf38AvsyVTrntpMi2Z893ScZCILWQHjFSLQEAGR4?=
 =?us-ascii?Q?pMMOQETlTdriLpejzSAjOIkXpz6QQV3WX4IMV4oNhWT0hZebcr4+2i1TnVwy?=
 =?us-ascii?Q?Mfrggg8zI49mowpqh2ozecokPPFIOXgplRV8M4mPSkvnMqOwCnw7EwbuBprv?=
 =?us-ascii?Q?/zhdhKulbOQ8Noqyd8Cl+XlEHk0HzIGu55eBkHrUZd61GdSivjFhbXZ91HV1?=
 =?us-ascii?Q?lzmQGla1SKEU5UM3LtZnh9mBgMSrom0O9lk1IDzXQ+IgsQYRifUvfHjkMUe8?=
 =?us-ascii?Q?ADmPmJTAzPhHpTH0sdL7VcHG7TsW98XPo5uuK6RBiYqanLmG19m+QqjMTxtY?=
 =?us-ascii?Q?ZuYZtP/yP5ZgxN2c7zkuCZ3yZCgUfltQCi1EsT/BAnnBe7ldSieE19Io9fw8?=
 =?us-ascii?Q?am1d/rsoUWnxIS486cWAY6ODOz0Un9Zu5mYJTmt6anr1BanRZ0d8lXrYin+v?=
 =?us-ascii?Q?dPNlxz60HZeS91x/YBmB/aRJg/IPa09A84UGbqxb8Vvrp+sg/eyuXAdNJUL0?=
 =?us-ascii?Q?vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5582.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b81f3c1d-c45b-4734-63fa-08ddea1f87af
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 12:52:09.7632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +tmZnhALvHREqX4IHJmOZsdsX3JEH0E3bTzaT1bQ90MoDdylwrkM7CYeGNcoD3JsE36663NsiDaJ9AyXgcN7YBzrvGYQjdTuAh20fX37E78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7927
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 02 Sep 2025 15:03:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756817962; x=1788353962;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IKtu2N3sHkjbjCWTR24j7hf0k948yxMrbMBmoR3bD/0=;
 b=J//+dK4/M1lliCtSs0Sd4ZsoAU6pe7NPpq3CZ6dFqfuOrd/hXyjwoNIj
 bl3rf3+CAnmsAmqRRwYUaSDEel4IUp3J2lVsouYiwFKxgQyh9RIiGE/W8
 IR5o6u7rGOcueEiFGzT+sb8pmw5ckcncsg8QzUthsyx1boPFql0Gxeeik
 G6XJh60O5Tq9GSl5qPZnsT6BdvvlHp8tX6/vaGjlxMmqy6k7YnLiYcfvo
 UzdOePVyQokoM9otsBtjF48pcs/l7ewaESQoX169C3pq/sNt91QcF6i8g
 ql/ujreCfOCRWLnK9pEcmAnxJ50N8i/ACRC5AFqturJWxtMSf7lmxOEKX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J//+dK4/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH iwl-net 3/8] i40e: fix idx validation in
 config queues msg
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Prz=
emek Kitszel
Sent: Wednesday, August 13, 2025 4:15 PM
To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@i=
ntel.com>
Cc: netdev@vger.kernel.org; Greg KH <gregkh@linuxfoundation.org>; Kyle, Jer=
emiah <jeremiah.kyle@intel.com>; Pepiak, Leszek <leszek.pepiak@intel.com>; =
Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Czapnik, Lukasz <lukasz=
.czapnik@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Subject: [Intel-wired-lan] [PATCH iwl-net 3/8] i40e: fix idx validation in =
config queues msg

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

Ensure idx is within range of active/initialized TCs when iterating over
vf->ch[idx] in i40e_vc_config_queues_msg().

Fixes: c27eac48160d ("i40e: Enable ADq and create queue channel/s on VF")
Cc: stable@vger.kernel.org
Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Kamakshi Nellore <nellorex.kamakshi@intel.com > (A Contingent Wo=
rker at Intel)


