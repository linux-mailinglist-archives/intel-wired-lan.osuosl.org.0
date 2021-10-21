Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A294435D02
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 10:37:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BDFC60EA6;
	Thu, 21 Oct 2021 08:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dVjBFWFPw73k; Thu, 21 Oct 2021 08:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81E2660E9B;
	Thu, 21 Oct 2021 08:37:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A049B1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B4C6407BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9k5zGO2R7SP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 08:37:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D7AEC407BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:37:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="252476620"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="252476620"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 01:37:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="568236738"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Oct 2021 01:37:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:37:47 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:37:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 01:37:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 01:37:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lvnnfibbj0jDh/MMLk7QQZcDo/0X0z6aR3qDtC9wVyBbjHdg2xQ/bEZzPozIr5//0lGyOfFrDxjDuBhO2hyMPiC6jQiplRDA/CI10MfYBks93ssLVveerlPs5iOW+8vVO5HsCcWSDyiT5w+ljS/pdIHjeE3NTfiHlYJT+5Y2QzJh5NeO7FAD2ToKiTqnmgSL2xYIxGS6sSHgr9AbpsuJEmsn4wcIDO+T4VM/4qcyo7QjCi92AQlQ4iZzMEl+cJoUOx7vHcq1vhs5iyI9hdNRAGlNMB+jDKIA5xaNxKN08+Lpuugos++ylfo7Br00o5+2BkjvTR58FLURgBBhXWoN5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0H4Rt0jsrVjezgv/B86u/PTRJYaZKydBsE394kRr0kY=;
 b=g6P6vnsXByiQInXBuAKaMyQoRW6BafZ6AQV5a1VEwaHFlGzgYEDorjkrSjjcgldirsYw1fG7VInZIg6i4X/Q/WES2YY+gHCJDM0IpxOzWEYownXWcRNprN7/d6OmvKjxhjTxYHwKi0PcXldmxeOiY2Mx1KgudeweGs5c3asYpAe/ujw0bIxK3e2mNqm8QIymQGeAXqp9xKY9uKbv2YgTRYsZXDlddnZC5nR1Aobmr6Rbw5YwnANseLGEqESUQO10vjJOFHv6BoBK5xMnbWB/uyx/um6WoEBoOcWeRImNul1hIUlGATK355rxjgA/T5Nov6UhcjAoC+LrwZh3QsDWwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0H4Rt0jsrVjezgv/B86u/PTRJYaZKydBsE394kRr0kY=;
 b=ZmH8n4TKS1XsPlxz2QFUgGlYDy0mnDs+XMIUXo68cLuyk4lWuY36esr9hC7HTbwDd0ru20wkHnOLAD6tSOJ1c/FUFlzDalPJX5Y0X1QJXe4fTJLsECsSlb2s7t0bEyM0Q6dhX+yeUc0y36/+XJo402bjwSRPKZsxy9t8oKdIgns=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 08:37:46 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70%5]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 08:37:46 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 1/9] ice: introduce
 ice_base_incval function
Thread-Index: AQHXv7DO7a1KPyZkbUCV35a30ZRbUavdLlHA
Date: Thu, 21 Oct 2021 08:37:46 +0000
Message-ID: <BL0PR11MB33634DA6748275C097E370D1FCBF9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-2-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-2-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b13ab54-3bd8-44c8-a093-08d9946e0eaf
x-ms-traffictypediagnostic: BL1PR11MB5303:
x-microsoft-antispam-prvs: <BL1PR11MB53033A8D2EC2505B091CB300FCBF9@BL1PR11MB5303.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CGE0IG+PhuY42KxHUA+XJsaPY+h4xnlbjvymW3kK2apwCP3g2TqlbZnSNYgK96bR0FVmM3uVdyEcA7xv/PwtoMOsmIwFLdOgan4rBR0QP7dyWzXFEBdpHRzWuMUk74Uz0X996bZv3R3NtiidvUA+KvT2n+OgGAek5vcnvexsJaP5pwfFoCPyAF4UMM8arEyEuxW/uVZRj2lX86sXN2uyKRcI+5oTN9z+O/CF7gBzkMrWDjFr7bzwOBYoALRwbQIWasMMk0kAm098MIVpjcfZZuqO4cSw1S7ySMDncgO4CMTOU4sWdwp8gP4C41uBJSuXhuxWscG06+SonZ2Rqx/YaMuc18zNXg9EirhjOw8c17pk5J8Dr0BzcCx+W4VbzCST4V9FqgVCxuZBCnSo4LnPVCsFxVWKEbBt/VZv1CsHHke4j4FbbdBhfMeIMsj4h4+97nVtSZ2/8NgGyKiaUgwwQhq56KyXqEvR4BGFLoJ9wzWNHMDofK4/TYy5W1Rn0F+37lbnPz+VPVMa26q55O9CrXsfl09Ci0kXA7C5Zk3ZhWorXYamjzYKMYc+lOHPpWQw2cU/7kmLvn8L/cpObFVue4FQRaBfpiuX1tiPRxLe9klVsJQslIb1TIQpzLz4wWyT4lzAnJ7W35Le55GXjz24KG9pQ43xidqfrrHFJZyB19qv4Mala1AZSNN8LtsNupmXyYZnqn5br1lxTvruxTA9Ew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(33656002)(110136005)(86362001)(52536014)(66946007)(76116006)(82960400001)(508600001)(71200400001)(66476007)(66446008)(64756008)(4744005)(316002)(38070700005)(5660300002)(6506007)(2906002)(66556008)(186003)(26005)(38100700002)(8936002)(53546011)(7696005)(122000001)(8676002)(9686003)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A3biZnqZ3za8ePYvfs0t5xtAIKWZZr9lRTaKQe8e4qM2TXGEJU5I/04DV97m?=
 =?us-ascii?Q?jG3s3fte7pqKojsEIMvwZhL1TR0MGYQ1AmKspX3mFMAz5UoWyV2BnmZbaZMf?=
 =?us-ascii?Q?trDzX35W3L9W4bEZindJ/R3pnJtq5XE8TGF1iMJtyVdan9Ck0bfJhmhX40Rx?=
 =?us-ascii?Q?6ry+VVNpMxZYcPybz40hbCfZD1Cwc1v/hBn33w4TM4Zl0/gIRnagCI8fqYSH?=
 =?us-ascii?Q?JphL9MuXAqUIn0yaFh1fI1Bc5Cfdcp0C7QSZz6j5pXJ6+qkqfLqpvzvEG9Nb?=
 =?us-ascii?Q?4pFKdvvIcPzGTc4Hey6V4Bp0aGxF6S4wfvLHxgE+ymqJsGFwdtAjYC/CrwXF?=
 =?us-ascii?Q?1JAIqQDa6W/w8CKDswYVEBbeg2pzcikheP3BQz8K0LfAXSomD8lbN+atf+KD?=
 =?us-ascii?Q?lcQvtsLXHIDkJwKrNpSAzIOjyNUdzlK0QDEGIT99y73R+aoUa2Z4amuacFuw?=
 =?us-ascii?Q?8baMkPuRh5HSWyg5OEwnNpM+PxMZEBnXjSrZrEZzAA8pOjzt3DFHhr4FJsqm?=
 =?us-ascii?Q?XgrqjHlmuF1kfV3qIrUizjL0q3tjqnblGqgAmVNUOP9SivtfhHTrlK7fw3Cj?=
 =?us-ascii?Q?FvEKqdznlqzF4C3H7/vuKu1AaS9vIFiOVUxom/dRdje2q2JUeWLQQOigRmqG?=
 =?us-ascii?Q?t65hp3pwIt6mdRLtK9//K/jOh1aw5sn1TUvJ9PO4aVcMPut2Q2YGtFg6l7N3?=
 =?us-ascii?Q?iD3jaCrpzH75H8BmkCq5aN4dz0tgMM1iEZ6cOtYHJc/AH3amxiw+ynGvjja8?=
 =?us-ascii?Q?5CxUlzTMIrVXHIE5bvm2zcwigT9inKMlvONNffWA4kmfF99y1I39eVZRpuSE?=
 =?us-ascii?Q?GnBSQmOXHu2bDXhIL6JlBwxBBvKBwbFJ8uNFE3Tl901+wMEbrfttBlHl9Tnk?=
 =?us-ascii?Q?RLZGzLwzb/V8tMXlktMt9pLSh5bUEfcCxRqy0wgK7TU7ieFkZXqcyvoaaZ+J?=
 =?us-ascii?Q?THnYRS1aZCIIRaPgSQAq8z9rxM6nIdD6u4wr2+rUFX78WKcVMvckhBCcy9ve?=
 =?us-ascii?Q?S7zUGwVhFw5c9A8YbUsAxPskj6pRScQB+frN7hJ+MJEQeX/qHxCZhK4lL4pX?=
 =?us-ascii?Q?eqm4W0NqW43DgXN7c3Lhnw3O8YZlfnVLyWfyVwBvRfUrbXJJXK5eq7iVa4mY?=
 =?us-ascii?Q?U6gfDGCT3/IxNUIdwEooXpFqc9aUWuPCrR4pjuq7dMdo2WOPIxSNBE9bUsA0?=
 =?us-ascii?Q?as1pdD0ad1Ej3YfR0iT/rwCn1GJgxAT25MVV7Z4VBQQcd+9UnyERnz4UOYiB?=
 =?us-ascii?Q?jr5Hrc7czCHyu9ngHFaZcKdj1y5TmzCyzB7NztEOcr6xjQhypADOunruAzGS?=
 =?us-ascii?Q?gdztNT9hcvOL1jqgS8N5ocuXymB1ok6g0WZcC2F/SFirNZB6eN5eSFr01yUF?=
 =?us-ascii?Q?V8HDfsQpxitQWm+Yn+/TSivamgUBxxNCGfleR40ZlkVTuD6FFWSBAfNAAh86?=
 =?us-ascii?Q?SE2GbPsYAsE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b13ab54-3bd8-44c8-a093-08d9946e0eaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 08:37:46.1441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 1/9] ice: introduce
 ice_base_incval function
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
> Jacob Keller
> Sent: Wednesday, October 13, 2021 3:02 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v3 1/9] ice: introduce
> ice_base_incval function
> 
> A future change will add additional possible increment values for the
> E822 device support. To handle this, we want to look up the increment value to
> use instead of hard coding it to the nominal value for E810 devices. Introduce
> ice_base_incval as a function to get the best nominal increment value to use.
> 
> For now, it just returns the E810 value, but will be refactored in the future to
> look up the value based on the device type and configured clock frequency.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
