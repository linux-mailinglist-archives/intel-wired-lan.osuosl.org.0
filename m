Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D93442926
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 09:13:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D86D40240;
	Tue,  2 Nov 2021 08:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id slHgGjmOp735; Tue,  2 Nov 2021 08:13:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B5FE401DB;
	Tue,  2 Nov 2021 08:13:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E1751BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:12:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 292F4400E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:12:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgIEU2ceAQ9O for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 08:12:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE4BB400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:12:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="231466659"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="231466659"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 01:12:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="540763129"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 02 Nov 2021 01:12:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 01:12:50 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 01:12:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 01:12:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 01:12:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZhNs8XZp+/xZkwzlW0xctlHfOpa2rbSVU+b5umYo8Nexp5slHwncg6FYFR72hnMpyFN87SPry3sNjug9nBxPmtQcPg1LpPgjVcDZFgfQ/TekExINPEg3ZlDJ6myTyUqZGIUkrf3Y0rMcbRr1bHO09tlrlp8V8YigRoXEw4oXxknuAp4b/z71aBYxoqyF7KNj9gYV2yAUptKL3d8RUr5Nr56igLDOURTg84pUb1kEu4oNt5bnvVduyfnB0FYyYyrsWgiquBnyy39eX1M72HnbiygJAYoT3I6FcWlGi84MqVnakvK+o8V1Z6y+jHGeuOJoBRL3sserx+Z+TYW5N5KOag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jcuWsv1CKOeNqWfs1Bccty84jvtm8r41GSaM6P+FUrY=;
 b=e+6NgH0EqD999Uu74hwnkdWvbgkbthjVsVZxxIqM6XWPaURBrDMC0p2oyxNLHwIabMhEuWkxfE0UFkIrhEpLRK/RleVv28NDGuUM0lgossO5EoZbXiMZNlf14vIax23HQvo4Txv6Ur5j8XrpUvIRsAr1AS3JUUUwx++daMMWjUyboKAtJwyx6y9v/lXSL+7CqrRCaLds1Rbpjly/R1h70oBKzpa1U8721DBvJrD6qziF/KYDtiHYH7sh2BitlpRLA9y4J0OrOeIs0d966QzlBbJZJ7eatJgxF7fcs2h7H+U6V1DKpP+P8d7d1V+ihD+i+JG4OW0JwjR2MOyvjwersw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jcuWsv1CKOeNqWfs1Bccty84jvtm8r41GSaM6P+FUrY=;
 b=XoMau4VJwg2uWG/+z/ju6EW+S9yEZN/l9H917uxgSxJxHHK15FUgVcjBwBpkz4nLzOlLQNhsKXiKo2o/zphEEG6iDHpPE534aGEGaXYX8QGqh1SM0inzLZ7d6DjFkZ3SZbFZtstpux+rMu2gRF8d8jHpoh3szGxWNJmm/KjQ93Q=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3093.namprd11.prod.outlook.com (2603:10b6:a03:88::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Tue, 2 Nov
 2021 08:12:47 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.020; Tue, 2 Nov 2021
 08:12:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v7 2/2] ice: support immediate firmware
 activation via devlink reload
Thread-Index: AQHXy4nGaAbkfSjPm0yKLCP4cH+Dyqvv629Q
Date: Tue, 2 Nov 2021 08:12:47 +0000
Message-ID: <BYAPR11MB3367F5ACF0846C99CCB48580FC8B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211027232255.669167-1-jacob.e.keller@intel.com>
 <20211027232255.669167-2-jacob.e.keller@intel.com>
In-Reply-To: <20211027232255.669167-2-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d20509c4-29a2-470f-3505-08d99dd88e52
x-ms-traffictypediagnostic: BYAPR11MB3093:
x-microsoft-antispam-prvs: <BYAPR11MB3093EAF54A7195FCCDD54456FC8B9@BYAPR11MB3093.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QYEhflgx2xW4f5RT/ebZM/LaUiZhG0P14zb7GZrICA2Ee6/N4VCFFTrxPTpTQJtifxyngEVFcPAFXuD9i9ZTBkRAkCRB97VxkLFnZ42g7lW2qaIwRJ12j2/LJROSdIuCE95bk/47K6gBQciAAFvMvSltY5xYIYyl8vHg4/uourbK3W4Cm8TEIMyfZxZe31UpkzWPdwqQeV5aZ6OVYM9UeKiMHYU7MpuIwvevSX7rIuDnunC/ZlTtoMcI63L/h+sy+9cBNpHx+4jFJyNqJ/ljHf3G5squLYQ3yYUnlLHQnlLvv0rPEaMLTfXHoOBEo+vtEjIw9VMO3K9X/tSzeU1QFv605R+RpG96UhljNNLybUbW5egwXByT+9JwutTNuZvNMQQZRaUM0GW19V1WWBs+0Bxx001R2+1mHHaMF1mzhyJ9UTi+/1ETw4EhzON+YFug/CCCmmNAvbb7C/maSpEOsV7sQiWMCrBmug/EbJMUz2rd6oXMz/izXXsypMSisvhPA489XjxW5D/uzcHwaF4Toz4FoAgxXCWqL6Lxv3CruYIxbtwp/JYfqM5dBLazJ1a2YXmFuNUOFX2/FQEe2DT720m+8M3SBN6ZvmOSDEPXkDiCbnhX2ULRP+ziUdBlkVRP6V3tGSAx1ThGc/f+kmownZlbu0PNRF92r+3CKBS8e2x/hD3utFsuk0FCkztAJoSEUBoJSJCYmuNDC2mRzEe6nTWrW+Cbod2mrl6qmG5qb40=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(55016002)(316002)(33656002)(9686003)(66556008)(26005)(186003)(4326008)(8936002)(82960400001)(7696005)(508600001)(83380400001)(76116006)(6506007)(52536014)(66946007)(64756008)(66476007)(86362001)(66446008)(53546011)(110136005)(2906002)(5660300002)(71200400001)(38070700005)(122000001)(8676002)(38100700002)(14773001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CyRja5v0x3qt8H3xALWN3fm6QsyGJ2hjmM+sDlpgxM4Mo+Faq650h+dnuKeH?=
 =?us-ascii?Q?mpsVF6jQzd95b/1Wg1sn4qtlvYKZBv6qX2WLu6zJsyisqUDrQLZ7XvXVqy2Q?=
 =?us-ascii?Q?lU5s+oAdyOhrnyyEdT2kaNiwbbbn/9dAduSm3gqvfLdtcwt1W1x6RY4v4zdw?=
 =?us-ascii?Q?qYfV3z/3BXOePkmaw9jtp85603d1DCtMfVmVqRgnW8nu7TaQlY3D8Wqavprh?=
 =?us-ascii?Q?CRKtKI69xuvwbbP/letEjjKofy1K/JBNpLvHQemkFLGau3WMODr42RsblQe7?=
 =?us-ascii?Q?he16K2owzbvs8LtUkGraT8XWZ+k85LQy94ea64xecZ484x5l9Z0Inm1coSoO?=
 =?us-ascii?Q?NwrHy65omlx3zhFVupoiniU5SwLh8Y4turgDRdqHOQfmOzKps2TPebDjEPMy?=
 =?us-ascii?Q?z+4ihsHKxMtMMoFwPMGlOHpcgRE3vdcIKyAcehKMTypt7eN3mkZcI9bex33L?=
 =?us-ascii?Q?X7lpM7L6kASSxOb+HegyqOFPQfXg55uInOLOW/50O0Fe9YUR37flfJQXqikK?=
 =?us-ascii?Q?Rry/yt1XW3PpA39sh2kmwn/ce+64YbRBS5mT/W1GsygGGGB/YabLTh4Z3Ohe?=
 =?us-ascii?Q?MSa/vb1kD/gT4us6iYwggpylI0foHY33thqBsGfEszMn/WvAh3qH2Wk6gcxg?=
 =?us-ascii?Q?pgSLTBIcuyHFPGVGDGAbN55VRaQ9SdVBitw+dNOFrZpeJpmuYvfmNLye5fMi?=
 =?us-ascii?Q?9F7nmW8u0s1NsW5ed2Sd0rWad5DPG7xgRuKR4LjXm0FuH2DYfqJH65fSHpUl?=
 =?us-ascii?Q?K+psrEpzUudh/Madkq7NVjMxvejKGx78C8OzKn/3sQOiCx+I41QxgU6R37+5?=
 =?us-ascii?Q?twnBs15ouBg8KwOMXGkl4FvMKfPPVe88TLg3tGensPMROS8ppnRb6A+LoF2v?=
 =?us-ascii?Q?86H0i+rMIzdt+UxcD4fvXB6bWqT4Imxm4cjp1U/BNy45thEFormGSg52ABnh?=
 =?us-ascii?Q?EtzE74uE5M3xmH6m6Jxg5NmaJaLUk21kM7lzsngU9w2JYzBEE2GtXwm2RE4S?=
 =?us-ascii?Q?9+AUfpTZ71AIKgEdZWmHG/xyIIVIncmQjZPEm1eH8js11jlClQF27vorNSD1?=
 =?us-ascii?Q?B/MMsv5AkjvhnWQ0AmAl+414b2n8mew0bzxsvfEm0WBzNEUKzZugcsajdz5q?=
 =?us-ascii?Q?5ELhC63mwMTjFqjv8KLVsyKUA8b3c7Bef1mzsmefKmJ9tE5VlAEQBZVqEjE7?=
 =?us-ascii?Q?gah4/b1ych9JUde+B2bwriA3Th+amrpX1B0PO3g/HisiTXOw1JMce2t7xxyz?=
 =?us-ascii?Q?h33U9Oyr9xNvNao5X8QMG2WnxT9Mee7yleUO3DTqNhwphYwmZX5A7GgVHOqk?=
 =?us-ascii?Q?TKu7VuBQkBJJTbjGQzhzX1/xEZitPxQOmOP+1TAX8QTjFcyMnTp3fHlInbGM?=
 =?us-ascii?Q?N5pOw7XsHjaHIY0i8aEGS4VqmSMghxzl60Xq5614CxxZ/SMTVehZByVSLfj6?=
 =?us-ascii?Q?B0hBuIjPg4TmdRln45ypLBH8dqPVGJM/9wNFkBYfMi9+R3vgyeLwF/C3zGcG?=
 =?us-ascii?Q?P0MM9zs1uZ5B7cPoHTwwUn5KzJJFx6H59Z+q1bfcXWod34WgDLcJlAO93qGl?=
 =?us-ascii?Q?dxr7HIbvzrrAIy21WcLHYo/BsNUpzfT1ZWfyolLsutLeAVkv1stN7Psk1iBw?=
 =?us-ascii?Q?fQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d20509c4-29a2-470f-3505-08d99dd88e52
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 08:12:47.4455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l852AZ/nfsObyNnzZJmXzy5YvwAVvZBy+QWJM80soYEyQcGEcQGbJJTBTwo8zOKisJQDP5FW+1ljc7PSAKHGWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v7 2/2] ice: support immediate
 firmware activation via devlink reload
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, October 28, 2021 4:53 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Cc: pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH v7 2/2] ice: support immediate firmware
> activation via devlink reload
> 
> The ice hardware contains an embedded chip with firmware which can be
> updated using devlink flash. The firmware which runs on this chip is referred to
> as the Embedded Management Processor firmware (EMP firmware).
> 
> Activating the new firmware image currently requires that the system be
> rebooted. This is not ideal as rebooting the system can cause unwanted
> downtime.
> 
> In practical terms, activating the firmware does not always require a full
> system reboot. In many cases it is possible to activate the EMP firmware
> immediately. There are a couple of different scenarios to cover.
> 
>  * The EMP firmware itself can be reloaded by issuing a special update
>    to the device called an Embedded Management Processor reset (EMP
>    reset). This reset causes the device to reset and reload the EMP
>    firmware.
> 
>  * PCI configuration changes are only reloaded after a cold PCIe reset.
>    Unfortunately there is no generic way to trigger this for a PCIe
>    device without a system reboot.
> 
> When performing a flash update, firmware is capable of responding with some
> information about the specific update requirements.
> 
> The driver updates the flash by programming a secondary inactive bank with
> the contents of the new image, and then issuing a command to request to
> switch the active bank starting from the next load.
> 
> The response to the final command for updating the inactive NVM flash bank
> includes an indication of the minimum reset required to fully update the
> device. This can be one of the following:
> 
>  * A full power on is required
>  * A cold PCIe reset is required
>  * An EMP reset is required
> 
> The response to the command to switch flash banks includes an indication of
> whether or not the firmware will allow an EMP reset request.
> 
> For most updates, an EMP reset is sufficient to load the new EMP firmware
> without issues. In some cases, this reset is not sufficient because the PCI
> configuration space has changed. When this could cause incompatibility with
> the new EMP image, the firmware is capable of rejecting the EMP reset
> request.
> 
> Add logic to ice_fw_update.c to handle the response data flash update AdminQ
> commands.
> 
> For the reset level, issue a devlink status notification informing the user of how
> to complete the update with a simple suggestion like "Activate new firmware
> by rebooting the system".
> 
> Cache the status of whether or not firmware will restrict the EMP reset for use
> in implementing devlink reload.
> 
> Implement support for devlink reload with the "fw_activate" flag. This allows
> user space to request the firmware be activated immediately.
> 
> For the .reload_down handler, we will issue a request for the EMP reset using
> the appropriate firmware AdminQ command. If we know that the firmware will
> not allow an EMP reset, simply exit with a suitable netlink extended ACK
> message indicating that the EMP reset is not available.
> 
> For the .reload_up handler, simply wait until the driver has finished resetting.
> Logic to handle processing of an EMP reset already exists in the driver as part
> of its reset and rebuild flows.
> 
> Implement support for the devlink reload interface with the "fw_activate"
> action. This allows userspace to request activation of firmware without a
> reboot.
> 
> Note that support for indicating the required reset and EMP reset restriction is
> not supported on old versions of firmware. The driver can determine if the two
> features are supported by checking the device capabilities report. I confirmed
> support has existed since at least version 5.5.2 as reported by the 'fw.mgmt'
> version. Support to issue the EMP reset request has existed in all version of the
> EMP firmware for the ice hardware.
> 
> Check the device capabilities report to determine whether or not the
> indications are reported by the running firmware. If the reset requirement
> indication is not supported, always assume a full power on is necessary. If the
> reset restriction capability is not supported, always assume the EMP reset is
> available.
> 
> Users can verify if the EMP reset has activated the firmware by using the
> devlink info report to check that the 'running' firmware version has updated.
> For example a user might do the following:
> 
>  # Check current version
>  $ devlink dev info
> 
>  # Update the device
>  $ devlink dev flash pci/0000:af:00.0 file firmware.bin
> 
>  # Confirm stored version updated
>  $ devlink dev info
> 
>  # Reload to activate new firmware
>  $ devlink dev reload pci/0000:af:00.0 action fw_activate
> 
>  # Confirm running version updated
>  $ devlink dev info
> 
> Finally, this change does *not* implement basic driver-only reload support. I
> did look into trying to do this. However, it requires significant refactor of how
> the ice driver probes and loads everything.
> The ice driver probe and allocation flows were not designed with such a reload
> in mind. Refactoring the flow to support this is beyond the scope of this change.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v6
> * none
> 
> Changes since v5
> * Added a new patch that reduces the reset (and probe!) time
> * Reduced the maximum timeout of reload_up to 1 minute. This is probably
>   still a bit overkill in terms of total wait but ensures we wait long
>   enough for cases where multiple PFs rebuild flows are serialized due to
>   locks
> * Improved the error message when reset times out.
> 
> Changes since v4
> * completely re-write commit message for clarity
> * Update devlink ice.rst with documentation about reload
> * expand the terms "EMP" and "empr" for clarity
> * Rename the ice_devlink_reload_down to ice_devlink_reload_empr_start and
>   rename ice_devlink_reload_up to ice_devlink_reload_empr_finish. This is
>   done to clarify their functionality. It is also done because any future
>   support for devlink reload with driver reinit will want to continue
>   re-using these functions to support firmware activation.
> * Increase the maximum wait time for EMP reset to complete to 2 minutes.
>   It turns out that in practice the reset might take a while (longer than
>   the original 20 seconds I had in v4 and earlier).
> * Move the clearing of fw_emp_reset_disabled into the ice_rebuild logic.
>   This ensures the flag is properly cleared even when the EMP reset was
>   caused by another physical function.
> * Add comments explaining the various reset levels that the firmware can
>   report.
> 
> Changes since v3
> * correctly read response of NVM write activate from synchronous reply value
>   instead of from the ARQ event. This fixes a bug where we never reported
>   that EMP reset is available.
> 
> Changes since v2
> * ensure DEVLINK_F_RELOAD gets set
> * rebase to avoid conflicts
> 
>  Documentation/networking/devlink/ice.rst      |  24 ++-
>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   7 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  12 ++
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  99 ++++++++++
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 181 +++++++++++++++---
>  .../net/ethernet/intel/ice/ice_fw_update.h    |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   8 +
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |  19 +-
>  drivers/net/ethernet/intel/ice/ice_nvm.h      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  11 files changed, 330 insertions(+), 29 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
