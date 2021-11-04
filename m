Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CBF445C31
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 23:37:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAE4760BAB;
	Thu,  4 Nov 2021 22:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id elEdXQ5mszTJ; Thu,  4 Nov 2021 22:37:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC8CB60BA7;
	Thu,  4 Nov 2021 22:37:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 692E01BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 631E060BA7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Spu-AEIjZito for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 22:37:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3B7C60B9E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:37:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="231652883"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="231652883"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 15:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="532417823"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 04 Nov 2021 15:37:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 15:37:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 4 Nov 2021 15:37:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 4 Nov 2021 15:37:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VJNSGa2NDxeA0/nt5nYosUE11YYpe1IJjOMmALJ33ffmFeRPQuHGwrDsSbGgzBXoTBP/J94ZWhrazjdRKpbmjtKv1RxylW3+/xnvdVei9lgQ5Q47pHpGGAbeywczHLJXHJH9ZoYKTGDtlWKI+jkz9phdn4Vq5+vsP1JCpWe6g+eKVVrfn9KBrKaeivdgO4MvZqwwEM1VYtDtKVVquFudsCtvaMIv9xhIkPrOaz6fNz5hXYbodMpSpd30NEBBoHndwuRq09JjI6F7cpo1+TOxrPLcwM9lNkyZKKaw44SVWWSv4qoP+4DZG3lkpTH/RF6YUYiR7ZwQvhvZsx//vLBs2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vs/gndsoO55lFrgs3a7qgE0p3YDx0O0iOiGIiH5BCNk=;
 b=SEx53samCQX4SyRNUNOyR+mE55GH2e29XqS0YmO5ZfnLARpbkp4XbKpTu/qUOivAuj2HHiLOXj5tP7LhfVTNS1rWVSHe8vQ97YRXm/jVYDEZlW3zktteN9Eo3i1aTOfnyiYBiKrUU4GohQwGFAyRe2b7QyTM3oHSIPD6mSfKG01Zelp+6cji2jnFu5Ao6w9vE+Ywo68GaLZ8szNgctEpiNQ8lbgsp94I5A1O3HaQLV3rSY/JGC9HXASAeM4kkHp2RxVGXDFeluZ9Nav87TIhxQDkduoxU1+jmU11QL2HxhBir0LGG32IqiK8Iw7fJEVQT49KFSyovMecx2BQhKV8aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vs/gndsoO55lFrgs3a7qgE0p3YDx0O0iOiGIiH5BCNk=;
 b=qkz9NMzuU1q5JIixddvTBUDg/cYLvCsW7mmwh+DbcmGctKAWw21KSCyZQ82D1SXJACrvUAh36uaPEcbhoYuDj84RfIpXqFDYdc4tJ9GWWjqr2bygTtsbtXe3SjGugSGynV2L5Im65hZ9DSIvCmoMG49EGD95EWVlHFk/Sk060WA=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB2884.namprd11.prod.outlook.com (2603:10b6:208:72::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 4 Nov
 2021 22:37:44 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.020; Thu, 4 Nov 2021
 22:37:44 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/5] ixgbevf: Rename MSGTYPE to
 SUCCESS and FAILURE
Thread-Index: AQHXbYh//AdaisU8XE6RAoE8/G4BL6v0vgUQ
Date: Thu, 4 Nov 2021 22:37:44 +0000
Message-ID: <MN2PR11MB42245FA2AB860F5A465CCF38828D9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
 <20210630081532.3069914-2-radoslawx.tyl@intel.com>
In-Reply-To: <20210630081532.3069914-2-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df29cf26-631f-4486-7e09-08d99fe3b7ff
x-ms-traffictypediagnostic: BL0PR11MB2884:
x-microsoft-antispam-prvs: <BL0PR11MB28840201421788202C18B5BA828D9@BL0PR11MB2884.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0beOq4a4hj7xphB77LZNQMc2EilEM5bgL7N6ZKrLG5xOjCUeg8c3XKfj9g4UD8ju7p6fPcHOpeJC0YT1oSX6oqxaKvcA5xsRm761WeGEl3hdhpNN5d0xPuBb+jTDJK1HOGh0NKNlFwn9Krzuc/R15Oq564uXP4WFO/fxP2WEjckiP9ZsD8SPneG5gs7Cq4FHp7wsQSybnKhqx0jBR8JEHZvFgOk4ZWqTM9hRpza3lctjjJC/lrBbxJ+MLUwYJVxDuH6nH/G9HBR0dDFCQFLEj+1r7pESl7SlnCkARfsVlgdipIaFbKxTuoAyu91wTd1BP2t3DIk60s67OFeKTecSAzhvx7kZsqa+eCb0QxBgMSYKPB/KsVsmovXBjQ/VXXLoP2UpcTiU5C3t2+lo6ZJD3LiAE38OoA7c3RwPeNd445NLj0Dyt0co49eZh6RqLP2G4/1YbSNkrlv5HnvWQ0WNVT2RImWyX1RjxfyQO58CqB0dhUoYCuMz/EyMC41AemblNlsYIYmhsLBW1vTZ+lrw/SAs03RgDhmYd4pzf45U8O0lstlLiJ3in9wypFDMC/5WzxYShLJyFyFWIDSeMaIsR092twtoeJbmOU1VNIH/7+s99eq35MPDzkOnBN4Z/xad0iljl/V7bunqqHnxAddYstejVtX/Eo9PkRTLRECpIz0IwAb6cWLcHFcQDO43jMNgI5yDiLVJE8Iac1f9Gcvrkw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(53546011)(6506007)(33656002)(8676002)(4326008)(83380400001)(9686003)(26005)(66946007)(76116006)(71200400001)(110136005)(107886003)(38070700005)(82960400001)(316002)(55016002)(64756008)(38100700002)(7696005)(122000001)(4744005)(66556008)(508600001)(52536014)(8936002)(66446008)(86362001)(5660300002)(66476007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j6/t81IlqhTxF9jI5aeEkPqgq7GQCRpEP1NCLQVLR1ny8bXRYClZ6z6fnoWB?=
 =?us-ascii?Q?h1v+YWuWeeo+qS/FvWlP3jo+QrCD8l+lhTQMOTAjCKG0ZRrJsVLtycwi+B5w?=
 =?us-ascii?Q?YPX3GW4Lsm7ACr/lqagl8zq9+2mOZoJtJEkhqzbZcnHhbPyVBSim1wVe/ELO?=
 =?us-ascii?Q?xqpbK1hFwGyNcZOjAYPeHBSpQ7F2RoHQX8ojKtsGKe8YzpYKM2Zcznjg3PRA?=
 =?us-ascii?Q?4/u0eWyhjUjA/IoVXOHt7Wq8ABKlMhBXFX5871ndOC3txa54/Tq0sWjZrR7q?=
 =?us-ascii?Q?CWI+0NzVIEDSmgsNjz9JlsngFB3J+YJhZKZtu1TGqYQBtMiDtBR/cUuz6VCR?=
 =?us-ascii?Q?MjOf0Lr/8NCZTO3f7QaUSY31Hr49x1dYjaH1s8DI+AlDNc9c11JVrabF9AAM?=
 =?us-ascii?Q?M5rSShKZTucYyDZrNn6OqMQhoHwPXxTM3LyL28ZfkuyhgxxcyUmsfR3vbWAj?=
 =?us-ascii?Q?ydNznYjKXVfDc1GW9eyjuROqZHzjR2Mb2mtlymChJNfFb6YVQzkma3iEcuEE?=
 =?us-ascii?Q?wU/5SZ0EoOunS0DgijeNDjOuyhFZdiFK1+FTjGzLcZegEqsjHK5xhojDrToB?=
 =?us-ascii?Q?ZFmAPRfPqHzxhxowcC6N1nUkMSLyhZ5COaBv/wYDmOCSvudSCfWwVqcHe0fk?=
 =?us-ascii?Q?7+KvAY7pkh0t6UKKPobVhB+nAviDfVl7pqB6pnK0ZdLNgdAjBJH1xc4dS6JL?=
 =?us-ascii?Q?+JOu6ClU+FzFw5PgQrVATJdNlkkOwjeehyPn1Jf+PdskSTA3OBVHikPecykw?=
 =?us-ascii?Q?hX0ai8zn3SjwOyFI3ymCTulw1gCOZYpWhJiHG3/SBWnkpWPFSs29/lK0d+eC?=
 =?us-ascii?Q?EN1Yyg7C4FKaMbRY+mV0TDTPo+RMqUk2J0wm06chcdYVKPy856W0NKg/9GLU?=
 =?us-ascii?Q?PZkv6ixi425GROBcJHXMX3zup9+9GcJV61+B9OybkgG6ZAQfcOVQVMLJVNWu?=
 =?us-ascii?Q?G511m1jSqjy8yl7nsT60k9HBpSqMlcWBw0yb0WgsvKpX62N9vJKvM32I6fai?=
 =?us-ascii?Q?zEIBnxrN0xWA4Ibll5MNr/ks1dry925orvGqlIOcanohZHTmhsFrdmA2cCPO?=
 =?us-ascii?Q?u9pmiVCmSfxjDoUDk9Wxns2bsarynUNTadmgPPYTsSv/knmavyL6cJGSNtKY?=
 =?us-ascii?Q?ijEfcwPepQ4JmGQoZo2+VPorCflF3f86jxRJOadEv4ni4fPHNwR6QElKOPm8?=
 =?us-ascii?Q?1BIodE6tlAWGjWzxGoPNJ5tk88P/AoM+PuROWyxD16qkyqHWyxMw/jARqGVU?=
 =?us-ascii?Q?8woQrWluRWwXBdGYh9w8mdhx6ZTDKuGrFdiXDeOSJ0Y5K6qw89KYxk/4DDHu?=
 =?us-ascii?Q?4uWJRsBEqDRroJ8YhrM/J9my6AODKpA7Ei22buCd0hnZ3v/gVvvsF4PsrLBD?=
 =?us-ascii?Q?AI4/NOAAXT3i3MtoJFjLIKc0//ILcfabSDcb1hnFGBzH5s8WqpV0mGuazBBe?=
 =?us-ascii?Q?5tDlvI69bXZXrZBscbH3krL2dN8PD801aYqgd9hHizBhTaOStx3lhVWW4ORd?=
 =?us-ascii?Q?wwvUXiGvq8fHDhnLFbWiir5NnP8T1xi2lYHkPVzgJTaJ33lwL3BR6G6cQOXL?=
 =?us-ascii?Q?oarDzD9XJOWZMWRC08himpAQPKJjyK5Q/A4bx74/bcJFJ4Zn5fBuW0j1RrBa?=
 =?us-ascii?Q?uZcYDRx1JpNWop89ltyBjSsh+nLvf1YBfqrBBeuEzScMstacVAZwD++urtHP?=
 =?us-ascii?Q?4mn9Cw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df29cf26-631f-4486-7e09-08d99fe3b7ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 22:37:44.2673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gv7NrdWdFlom3f2utFoYuPrfcSnc8JGVIi2JEuiR8VhEQ3TvjErWQ39KlvXay6rDkbcvZNKHA0dIKCHYAgtWzjhJKxo+B+dXGfWIY9/U2Rg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2884
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/5] ixgbevf: Rename MSGTYPE to
 SUCCESS and FAILURE
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
Cc: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tyl, RadoslawX
> Sent: Wednesday, June 30, 2021 1:15 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>; Skajewski, PiotrX
> <piotrx.skajewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 1/5] ixgbevf: Rename MSGTYPE to
> SUCCESS and FAILURE
> 
> There is name similarity within IXGBE_VT_MSGTYPE_ACK and
> PFMAILBOX.ACK / VFMAILBOX.ACK. MSGTYPE macros are renamed to
> SUCCESS and FAILURE because they are not specified in datasheet and now
> will be easily distinguishable.
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ipsec.c |  2 +-
>  drivers/net/ethernet/intel/ixgbevf/mbx.h   | 17 +++++++-----
>  drivers/net/ethernet/intel/ixgbevf/vf.c    | 31 +++++++++++-----------
>  3 files changed, 27 insertions(+), 23 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
