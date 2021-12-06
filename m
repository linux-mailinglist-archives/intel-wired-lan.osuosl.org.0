Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F69746958C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Dec 2021 13:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50B7083227;
	Mon,  6 Dec 2021 12:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WarpbE7G-DPH; Mon,  6 Dec 2021 12:19:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4807F81AAC;
	Mon,  6 Dec 2021 12:19:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 237AE1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Dec 2021 12:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19F66403DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Dec 2021 12:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VrAcyd9-yU6a for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Dec 2021 12:19:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03FC7403DC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Dec 2021 12:19:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10189"; a="224170937"
X-IronPort-AV: E=Sophos;i="5.87,291,1631602800"; d="scan'208";a="224170937"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 04:19:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,291,1631602800"; d="scan'208";a="514716735"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2021 04:19:47 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 6 Dec 2021 04:19:47 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 6 Dec 2021 04:19:47 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 6 Dec 2021 04:19:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HlHmDgYt+iQFUCFDtxr3E4efzcYZNJxcT3BniqocIV5Yd9+bx2sBzJ3rNOM7NK0JyL2RHCR/tPHFSXAbDFPhkGic8MimyKHECpRbv+o9C8D/fwiNwgrBk8odF8AitE9oYJcRSOfPHylMJT6Wr5Z2dx4R4407Wme5LrMXeFZfYDdVUujGBVr2eJQe/CjucqNKTzAeCgek/suwVybuhcEsr5T6RRvZOuQWN/cW9p7Ic7x5iptxAAdAms5FoZNQ8BmbqgXWABmGIa2wrRnCHYssnGf3opT/Flwva3Xwcb+amFWBZdiSO4NwmQE52o82lzsVEyPCarxJ1I2koPbCWSURUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AZB4PiNeU468tPlsOAmt0ANb0cQjUgXpbOOJXus/b00=;
 b=mA8sZ+K7prq5HHIM24PJEnk9oLDFG1bddWA9ub0cDwj34qshKvkkOYSV6HSy9kVCrG5HIgP7H83Vjw+1tOIE63J5d46t+mnr5cyuol1ctxf2M2lIyeCcJiCUN/pxmjuDeTQsy12B/O6q6TEPEcHcV+F7RyRmNmD1RY4Ekoo9kJK6JRxh16UKk9eLFwFEf9oTZ6TJgfi6JzBt9zFnlsWYtzAvuseHfWiweuLYVGm0sYxwyJZRfB2KonY9pTnmiGjP2tt0s3bYyQyIXGhZ7BySnzJagNZLCBY8i4RFSgWkj1Lw8UFmVnD59k7RqXTwjDlfXW5Jdm7fThmwfyNabdYulw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AZB4PiNeU468tPlsOAmt0ANb0cQjUgXpbOOJXus/b00=;
 b=Ql5I7jkLuWCjfih05S/ljVg51GxTMAyosU1lJzNUJTUOLXcSP48/qBDD43sfWx7Yn5A/iDQW4RqPcGqLGcz445Sbk7whdx7qFeq2fQnKYIQfUSJVNK070MNrzaj7TJgIJmxBjYlfzwYdWoOgrwVYPuQhXX8FKE1vMXxhDtd4LaM=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.21; Mon, 6 Dec 2021 12:19:46 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4755.022; Mon, 6 Dec 2021
 12:19:46 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] iavf: Fix asynchronous tasks
 during driver remove
Thread-Index: AQHW7/91dgZ90Yr/OECM1WcONkTzQqwnVvTQ
Date: Mon, 6 Dec 2021 12:19:46 +0000
Message-ID: <DM8PR11MB56216E06D1F2A3F43E744BDFAB6D9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210121160605.86278-1-eryk.roch.rybak@intel.com>
In-Reply-To: <20210121160605.86278-1-eryk.roch.rybak@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33f9495c-5790-4743-a916-08d9b8b2b110
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_
x-microsoft-antispam-prvs: <DM8PR11MB56553358D194CA69B9B77F3CAB6D9@DM8PR11MB5655.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4hGUsJWNRb33BBArNlTsKL8HRJVdz2A1HZuLElSNEOFkoy7wElLZoDHJVbZwqXeymzkFRx/Alz8l3gCVuNCeqKqm4NfPy+/WdiKRo6LzRPOotkZN4hyhpHRq87kZhomnHjKJJPB5LAJRQavEAvL+ISFfm8SxPDUi+t2gf3Xmm6GYmrUEyMfRNwNOAR6LOJGWP2evMDU+S/QZz9yAKuJ8+kOxwi+4uzmWJ/JFZpVi2xM7pnwWl2FFiwkootLsGTR/S7g5+uN0X03DNp8yKPcZmVqtME8txmxupkPRVS2jqVkKleI4m6Fw3n3rQD2I590RCo8VYZugDcoxJPPoY7/OlFT4CTOFLhQJCy7KW9heEkddF0haXvE3N0fnUqaRdh4zhZExHT7Ih/bjvGQtNThu3v7z3FjYzE1ZrI7rT10zyGesPmQlVPJ+9/sNF6fnz48lYh0TdDu+xv+Jg4RIokjkYJzae8MUZiKZ1I7PshCgtu45pj/jIzsU4g6D+xSr+eC6HqbRmY6iVE7WCtydQc9urz/L5wWSJAnkcVGDQbcLPkxGnopjGRnOVZ7v1fhYdfb2Orf7Ips5q7n23yVakrb7+CwwHHGu+zNwZ4Gfj2TRCWVdBtGaYyB+Wgy+rNDQH2rYVNyEqrU1ia2LMtmv20bPSnULlp3v0WZJ76tpWA38TPZLsVEPpAHxhUejwjLfYbfHUJUu6mMmTiz+/YVJeWul8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(76116006)(2906002)(38100700002)(66556008)(122000001)(64756008)(86362001)(71200400001)(55016003)(66476007)(66446008)(66946007)(38070700005)(107886003)(33656002)(4326008)(53546011)(8676002)(54906003)(52536014)(8936002)(110136005)(316002)(82960400001)(9686003)(26005)(83380400001)(6506007)(186003)(5660300002)(7696005)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sBNKIXEza/8OQfQJ8feq1kWQRwHN6xyVrbA7omy+sihxxZPba21WTg/mxX6f?=
 =?us-ascii?Q?C7wQv5bfET9PxCopUEz9bIeSkqojBvBEBNb1YpQBOvFGjBj8aKxG+YU3TpPQ?=
 =?us-ascii?Q?ySYR011wlFDviEFen3XLDoXXBzGSwaHHLrdPyVq6wEUItkVec4Bc9+OnKqfU?=
 =?us-ascii?Q?JrJ/gJ2tkzh7iiZvlFXoic+V6y+T+hYqfWrivzQ8PNCoQe/6RxmPNZhllV9J?=
 =?us-ascii?Q?VRjOg7GXMvdpVUuY7GIynkkZXhaW43uO0SVkuemOhwGfRL4ZsE7MulP19yCa?=
 =?us-ascii?Q?IE0kouWS3X3DH+JAovtT+eOsorCEprTKruh1GGvi/gZWnTkoCua4wsvYt5/L?=
 =?us-ascii?Q?SrjRWG27L667n9tOK26RY/lxRi0i/3wRZX2Avn6PEi9xHY2iJWv4Vfv/cfNl?=
 =?us-ascii?Q?X6j7Eh7rSA0+vTZ3KoKtH0+04JiIwz3591HxlU77V352stdo2J9dfF+p5wKG?=
 =?us-ascii?Q?lrVSf9LH0yApBlBQGniHvmThxXidw+6VYWx9Dfu6BMoBio8uOZgIian4GoVq?=
 =?us-ascii?Q?zjwm0BG3p9qN6XbNkYdKbb10rUPXzexaCmrG7D8vOwFi+EpKibIb55K4ojzx?=
 =?us-ascii?Q?SXbCOK2nIjBPL6F45I8ezdAULiZduJsCOXLsdCDQqy9ylybmBsSq610w4kEC?=
 =?us-ascii?Q?zRCiP1Oss9txfgKqa1BFKE4ExAYMUdtyfj5GRaNUmmQJGiGsHCXuYs3wxl35?=
 =?us-ascii?Q?tsbBz1kfrG37rK8shPR+50Z27H/EJ/FCM5I37r0ijh2kLEu9UhrIVe3CD6y3?=
 =?us-ascii?Q?MdwblEhvzthAnxicWjKA5lTJXusoenvHd8LDkFXAa5B1bz4ct65rwSyX9ViR?=
 =?us-ascii?Q?i+aKp4Vvbu6tNuCyqc/s9eiN6vDvwWMLO3t5QJLC+DOoGGRXGSyRPE+UjHzh?=
 =?us-ascii?Q?K/X+3XyYQWY0To0fHdRslWfnTnhRUd2Vxtw0E16U1/tVOiVrhJC2darEYnql?=
 =?us-ascii?Q?4YDmFCSViS+Dp5N3pPDBrRG+dJu9HjlfAl1Yds3HNhEjiHwpj92MCg5IDzMr?=
 =?us-ascii?Q?heEO0pg9UUtVYDmksi42qBHnqJyUPqVzixSNx7MqqN4lI4pFbGSnmfdQ4IXI?=
 =?us-ascii?Q?tlX5mfHHecdvX+f4jUBaCXMU7cQaEgBMj+7tavQTmz47Zf9Kx4M4SJgcxAEE?=
 =?us-ascii?Q?1JIRke6zh00bsFFti7LBQz6xtNz5uGRjMTPMN4gXmzX6EocaxpKOu6x1CaPt?=
 =?us-ascii?Q?p4Zszu5tWqL44z+UiEG+GmHDJ852/HX2Ye0xh9+aA87aKEkjaUbtdKkicn9K?=
 =?us-ascii?Q?J/N4C3Q18CM3eZoEMufshzzJPpI1CBBY+dfUifOsrSmmOykRPfsd7sZgJObE?=
 =?us-ascii?Q?4ba3Nj2Bo9UAtI1NNWn8QHrpxb2+pizYpDWKGD7z36Hg3GHdb+gTHBb3o3pn?=
 =?us-ascii?Q?t8GYIHHdHkC2hdd/Be7hNdA/QXksV/sS5zhgZaTzqXFx17Fz8XdPBg1/rJzE?=
 =?us-ascii?Q?3OIEhfKF262LZY5DKamIGAGfBs3E2tHPVyXOJO7QVOYxdNCjlhnXbAOS5mnR?=
 =?us-ascii?Q?XE/Q32H74Ydry2CE0vaNct/eelZJQKmerUPlIJzUeCtiTfnXscVewO56iKL3?=
 =?us-ascii?Q?PZYBDGlRG2PuOPODuHhpiS5EahDmsnTqmrK2UtXkD6dlM5njbSB6KmrtnOR4?=
 =?us-ascii?Q?Igfuo2nkLArVdWaMirdBjohWWUeRiiZ824TroWW1YBCzIa98/jCGLvYfiY6N?=
 =?us-ascii?Q?V8m93g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33f9495c-5790-4743-a916-08d9b8b2b110
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2021 12:19:46.2640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D1/JbI2JlVVctVXDnSLExZ2Qqj2oiGHasXOwfocLsX1GveIMQBXxC3iyTGhhmgfc58NshJTGd87KSpKg4vCHrfKhv3cXChy4mTHSktb27EA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5655
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: Fix asynchronous tasks
 during driver remove
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Eryk Rybak
> Sent: czwartek, 21 stycznia 2021 17:06
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] iavf: Fix asynchronous tasks
> during driver remove
> 
> Although rare, is possible for unexpected driver watchdog or Admin Queue
> tasks to run during the execution of iavf_remove function.
> Then, is not possible to obtain the standard __IAVF_IN_CRITICAL_TASK lock
> and difficult to ensure that the driver state stays consistent during the full
> removal process.
> 
> Fully stops all asynchronous tasks in the beginning of iavf_remove, and uses
> a single-threaded flow to shut down the driver.
> 
> Fixes: fdd4044ffdc8("iavf: Remove timer for work triggering, use delaying
> work instead")
> Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 29 ++++++++++++++++-----
>  1 file changed, 23 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 21a354e..84430a3 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
