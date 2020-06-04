Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD761EEAF0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 21:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE7708833D;
	Thu,  4 Jun 2020 19:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hVL94sU0Ny+T; Thu,  4 Jun 2020 19:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2B3888254;
	Thu,  4 Jun 2020 19:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A1BC1BF386
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:11:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9502786C80
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukFvXz1OjYPE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 19:11:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 008BD86B47
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:11:38 +0000 (UTC)
IronPort-SDR: EXMxy8rON3RcWbJ5o5UyekowJ59nQ7eOUeqqcyTiun6ogfgCGrKZaVpsKHH12oYUfcBjMAGA+j
 q/nkE0xDCfxw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:11:38 -0700
IronPort-SDR: OCOOzOfq5VZjwevdCimD/DuPjxKEIaXeHmgAI5/sXN5syV11ArrMGwzvo4enLXfYyzdCk4PEc6
 SbSfZ61icfDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="417013970"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 04 Jun 2020 12:11:38 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:11:37 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:11:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:11:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EeEscsa2p6bCqOEOUDSG5I+C2sPUIscIMiM0SyX6mRooi7Fz9ds9P1c3T1ZxTeCPbz7Lf53W20zQ6GmuOmA+bG7MZbqLAdR5w5LuaNCcCrtVRsTuhuUIwSTXGqg6mq5Rwy5sBbJRL/JpMvyuNs4NB5uVVBjPR1Ib1ChfMUMYsZLKIaiIPzJ3lcn2gGJK6aP6ejV9v5WpQpD83IruQnZ3Mf90cEEvk5Fo+LDhZqfQBSNiXwfki1vRgS2BX7SGKxPcNoGuyTMPXSvIcubKij+Jt7KZ6MVxstrojo3InUTBdNT71sdytIUtxaHa5UAIponOYdJju1LLAutcw7GKOm0AMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HeitSNw6JeHbJSsurByZ1feOTcyhDyyyOy/4Tu1o410=;
 b=F8WVwliWQ33B8wrA4Yklnu1sIMzp8cMOKKIEBkv4RaOYpw/an/UuHSwLhCmQYh0MYfxYpO9P4PPKrGU9YaMsJaGE+Y2OshbUWI+SoFEfC9elJPskRw10I8oNS3zobaoNoj8sxKHv8CbtXANKY1j8u8OiLxyMX9fz3HOOYxkELaY3DxUyf7DSa0FwstkGw7ppCkmQ/mi5VbrnyIG/HFdg604uTyng+/Uh6PQhBLwmafhyXpp/DmNPvDWGw0oWP3qu8VvsJTyYyIXJlI90TXr6ddyYeWjGinR2n3NGcNWzBwyEOC8R0GqtX2s4+3/gJUtl5HWkRzQNQqQ+yzQpZ2kY2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HeitSNw6JeHbJSsurByZ1feOTcyhDyyyOy/4Tu1o410=;
 b=czOPKL+qxJjSIz4SxfYOxUxYQoH3Os/gb403AwqkZTVkgUZ5OQT7HfqeOO4s869RVhpN9eXyNe0aKFXQUNQhdbeYlbcrptQZlTH0irzaP+ngkexNx+Eyy0uQb0BwEsn1LP3jtujBjliXHqGQ6H08qZQahibNXM7jvmhLcWbjcbk=
Received: from MWHPR11MB1663.namprd11.prod.outlook.com (2603:10b6:301:d::15)
 by MWHPR11MB0078.namprd11.prod.outlook.com (2603:10b6:301:67::38) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Thu, 4 Jun
 2020 19:11:27 +0000
Received: from MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30]) by MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30%12]) with mapi id 15.20.3045.024; Thu, 4 Jun 2020
 19:11:26 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: detect and log info about
 pre-recovery mode
Thread-Index: AQHWM0xgiiiXUTA2nkWNcrRxdXwxQKjI4SIQ
Date: Thu, 4 Jun 2020 19:11:26 +0000
Message-ID: <MWHPR11MB1663B0288BF79CBAC954E8658C890@MWHPR11MB1663.namprd11.prod.outlook.com>
References: <20200526105615.3315-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20200526105615.3315-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1544c15f-1795-4b1b-e911-08d808bb1478
x-ms-traffictypediagnostic: MWHPR11MB0078:
x-microsoft-antispam-prvs: <MWHPR11MB007874B419441456CA0A05508C890@MWHPR11MB0078.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6CzpzHml3/OWp9CSrXV+HtkKuXJxrtCGF6pCGngYuORLBmcQ6txLuQ4RlzTZWq8UuZmnk3XN8JPuVmacjawmd2CfUuYD097wxX2D+oi+cJX+UfR1ZRqg1vpavvYrl98URe0Qu2Cd0RY9wiDuUnFrH3QQptY2/NQnNctk4cOZiLTCQUOLuxi+UOOSYJM4yGfuZc6fsRxYUCO7+FTypSltqrJZQU4uhnj7QuUAeY3a1pIVYCoRUzQT5B7HkRPKKd5eZwFF8PvM72BquxzA6megk0t36bfnje72jiGwpSaj1DoytNgAiusYqDDTfmA9FYxSqoiPzvYi4OyGEEUkMLmFsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1663.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(2906002)(55016002)(71200400001)(7696005)(9686003)(316002)(478600001)(6916009)(83380400001)(66446008)(26005)(52536014)(66476007)(53546011)(186003)(8676002)(6506007)(66946007)(86362001)(76116006)(64756008)(5660300002)(8936002)(33656002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: HGCxfayziQi6ZUm/s1fz+1Fa4cpAvG5m6m/8dOFUI+w6mBgTc+IefvcKrt6csXUfOiz1LMCmkI4G01+h6pAxhiFZFV4UDiQF02nwzKwbR/qXZAdanAMvhSNxY4naF2orG7VBiRIT0I1iOQ08+0waV/IQebqjHQvxXpp116WwLf0acFW1zEf0R/PBY+e1P9cPkUmaXkesCJAXZHBVvCcY7Ne2SzfcAHoVAcofRlHsOARmAgi/Z2595ZzYUinTI1JLrN7R489duEsdLSeWu9XzfygF2iE5JmI+LSrh/RXLmAnWC5EF36bvA2s7EWTg28wQvtEa1VeMSxELqe26zZc6zs4d6GOo1pdVgWdtDt6NCS8Wrr8KK9m2Hi7ZQjK69YvybdQqQO+yw1IP86XQQ0en040UVAbrReu00aQeGcgygYqtToJFcQJlr0GLlcBFZtGWQAafsD03w1JoDH7f4ARCGuKT2Fi5/yTvDTjeGpbSlKI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1544c15f-1795-4b1b-e911-08d808bb1478
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 19:11:26.6620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SqSQgykwMA7ZLcIuepZJgTprIkMJeQbizm2T0wF/KPANMg+qcblhZhihibgXKtGtV9HvPJTgjEhe07aiaNmMJLXE5Fc002+/fJ5Ip9Hdk7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: detect and log info about
 pre-recovery mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Piotr Kwapulinski
> Sent: Tuesday, May 26, 2020 3:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: detect and log info about pre-
> recovery mode
> 
> Detect and log information about pre-recovery mode when firmware
> transitions to a recovery mode.
> When a firmware transitions to a recovery mode it stores a number of
> unexpected EMP resets in one of its registers. The number of EMP resets
> ranging from 0x21 to 0x2A indicates that FW transitions to recovery mode.
> Use these values to emit log entry about transition process. Previously the
> pre-recovery mode may not have been detected and there was no log entry
> when NIC was in pre-recovery mode.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 74 +++++++++++++------
>  .../net/ethernet/intel/i40e/i40e_register.h   |  2 +
>  2 files changed, 53 insertions(+), 23 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
