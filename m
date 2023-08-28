Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3421678A974
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 11:59:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95EC540913;
	Mon, 28 Aug 2023 09:59:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95EC540913
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693216768;
	bh=9MePy/dUpWvc1EzqCkojebvSYb2uwTasdGVqyS2Updk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=veO+/o+CACN7FPLmtsFInMbsnOuerfxnKsLwQoFEYLSCYIL6mN4ZJZSKs/IVaobh3
	 COj4QX8Dl1CkBOC2jDH7ypCeQk+N836Pjd+ocE+hS0yDdWgsIl53EV/Sd/wh6yPO6I
	 iE7keqg18TSHqQi9xqZ4KZ81sYc0LV5jtcLvitLe0m8iHV9c/DXlKWdmtqvU14a+Sc
	 2wAb19e1zQn9ifDZWBP1ztgc9BDWrbrJ96awBjSKqnJyD7XlKaf+kNZoVnw2UJnpbz
	 B1gG+dnjHK4AdmX3xAOEaLNBZRpkF+trtxLi/FxzPGiJAJKRbE35l4tEl9jO37xsBf
	 VT9E1/n4UD1jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ayNb2cHCk0L; Mon, 28 Aug 2023 09:59:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A41B408D5;
	Mon, 28 Aug 2023 09:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A41B408D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3708C1BF271
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C894408AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C894408AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y3zEw8AfqNsg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 09:59:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CCE974089B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCE974089B
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="377793489"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="377793489"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 02:59:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="1068974814"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="1068974814"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2023 02:59:18 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 02:59:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 02:59:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 02:59:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ee/EOh+M5ruZMTqZSXqT9QI8XWMSfKwQ5LFHBCt+AZ1OhZ2CRJp3auc7W3GCXIpgjWpwvIl5grs2pYitzDDuIuKSzY1QmS9HyQxol1eLDDtI+fs1yL6/reKo7J1AMuR231ITyLK5RnqXMqW3umZrdE9g8ocjlm7Fv0NTeMDBo4/o4OGo9z5ey8LfVuMc+s3Is+x+L7S+MgWHqCilxXsmg4KwerjXPsOGyj5QNuKkYnM6ZMNyid366a4BtnfRVJDqAQB7iWkVrI7HLDP0SQ/NERTFu9ZSbXSrvqwrv8ACRLsQ86Wdg8vk7x2ZqjEuIYeqUoAZX5QFmAOxNreMr8w6Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OkM7t+1aaM6JOPkE4zofMQDD/BuSty6TEZeozI01CwA=;
 b=Tob1EHoR3W8DYZkytuTisjN1F0jpmR5uw8mTG14Rwugri1ncHnbRtSTdUA+jPcUnyRktnSSotYaBQW9XcZogkMIfOGVsaZJAa12bUpGILM7lRzxBSRysPU3REtqKWI1jz7/gAB6LeCd6lwoTls/GHePh2ZILYfGqADdOFqigtmRNdagI12m96LhWQAws0UzfY8JXD/dRrKcd5vqWKrL94xYqXOwgdV1Xog6juPRxZ/SD0xjW7ZXQZf0vWBDUr+jmR20J97GbvtB6aFJ6FcOFTiq272ZE86vCae9c1SbiYwBRI9DdMvo+N9p1k+LyVf4fHZmaAdWvB+DyzXevlR08Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by SJ0PR11MB5182.namprd11.prod.outlook.com (2603:10b6:a03:2ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 09:59:16 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a%6]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 09:59:16 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: PTP: Clean up
 timestamp registers correctly
Thread-Index: AQHZv+8CmhLF/dkqlEu31MVM/28NUK//qzoA
Date: Mon, 28 Aug 2023 09:59:16 +0000
Message-ID: <SN6PR11MB3133CC1B19E025B27C93B604BDE0A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230726182745.1326754-1-jacob.e.keller@intel.com>
 <20230726182745.1326754-2-jacob.e.keller@intel.com>
In-Reply-To: <20230726182745.1326754-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|SJ0PR11MB5182:EE_
x-ms-office365-filtering-correlation-id: efd4e711-fbea-4ff4-ba09-08dba7ad70c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9zTYfEbTzTToVxtWk0gHCzpsw8XGw8/nSv2PQMPugIwqIUNLSMyoh/jvOD59VPV8kZ+D1jFiqsE7dpgCFbShq+YMdjVUQDLo1zPCTXWlmQKP++mb5N7LJ+ga/KXVfhaHW4g8mKG/3XKnosAMMY5KBUOzVdM9sq+feQB0SVKP7uFSQaeFq/RGlFSNeDTjIJXJeiqrvTI/6wPA6LEDF88sKhqmIFtoazMte4rp9qphqjwIfjHPXJjfvEcuUhhJYlx2ARH0h+J7tSs9NToDhxncS/82nkKHxZGgjcpxcHGE3AkOUPcccfj3GUjAgEUKtP8ZlrctYBwe64ggV8vSMy1r998VY2dJLAKfPi/aygeV0rJvIskFyX1UUg6ANfrbIlnLk37SQM6QpqKbVpRkxLkLtzL52M9pwANRemVVuPcf0IdtF2J9ASMDPqbOUtGgREW8EMOhAK8rXNkIAU2LEOMArY3OYhANXb9nv94tz77xWQRDTFmaJ9xEd1SDj91oa/m8q/0ST2o0UltZ6RunI0oMjRD+/gvlE/HIZoRPczRMVwrruBuNCOawkpLgUiaOHmrAGu+YrscR8fKwwHBOCKMxFJOk7RnW037ngnJu7A1z1MnoDlESvehkkGJ1ti66EuW/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(186009)(1800799009)(451199024)(41300700001)(122000001)(38100700002)(38070700005)(86362001)(478600001)(82960400001)(71200400001)(83380400001)(26005)(9686003)(107886003)(7696005)(53546011)(6506007)(55016003)(5660300002)(66946007)(76116006)(66476007)(54906003)(110136005)(316002)(2906002)(66556008)(33656002)(66446008)(64756008)(8676002)(4326008)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0Bh0AdB1AyCAd0XyxbH5Ug8bDr3SFfDF69yT5u8/e1NhIqmpV/cORDArwMW/?=
 =?us-ascii?Q?JvcaGEg0cftMZ9mkN8NDXGKKcjIAtyqHUTJ91zUmnNdp2SJY8C8+JYWmhDm/?=
 =?us-ascii?Q?7cSkOfbfhcaObuk7kgqRYa11ASjGR8Zfz8QNRprMwS+EYHtYm9GgNOjVbZ9X?=
 =?us-ascii?Q?rokCgvgiPsxAdS8JyEi9gv73RbYi3o747INwiIktaDy5qmYiuSUhpcPTI/kA?=
 =?us-ascii?Q?6zSLSsu4tRL9HWqVaOD7ohBrW6Ru4h1GOch7zxZFC5v1gBg6vijAWcbpiaHz?=
 =?us-ascii?Q?8pHQtSMRuh2BlIbtCynA3ZtkwucAkuFG++GXKGWH+9rr8cvK67SAUstYc6OY?=
 =?us-ascii?Q?p3v1PUeghYuNltKK7PVIu2WfCq5QQBkCBsEBaZ9Kx4zR1/4DqN9WInio85bO?=
 =?us-ascii?Q?k1zWmh/qMFJXwVPeB8tHhx16n/yl983OK15AgCYh/IKkqtZReQb601rqIMrg?=
 =?us-ascii?Q?RshaHkfHousOAGmVGEjoHGE1kCxO8OXBTB4X/TZOjMIDxi/E5P352OxCxmGl?=
 =?us-ascii?Q?kSmx1pRLLDoILBUzsblSpf+yBp3Uuki3Hv3PxPGkGGY+YH47vrudloFzozmx?=
 =?us-ascii?Q?N082zjGECAQeK13QdbQgyplQLVQzkxHr57ecNbn5RnGiNgQyyC0Y38hW64kd?=
 =?us-ascii?Q?Nerwgkhfcw2rkNpZn3b3domzMhIeSUYKQVz/AZQAEAJ3qMOtkZeBl5OgH+C8?=
 =?us-ascii?Q?/5+ufQDg7gcEkeaB57FLxEapOGck+ilh3T8PWi13FDsZQQFB1zXDSW9CHu3M?=
 =?us-ascii?Q?YW4JcghErNsNUFY9YiTnttKCzCnBHKi1AkP0BCnnUQP4pNTj7rVCPbwJSDRy?=
 =?us-ascii?Q?xHQLwVifLmwB4NqtycnZ28O+HQrN6rQ76sk6370IqBdlBFEnXZGWXFwfkibJ?=
 =?us-ascii?Q?gHp3Wz85QPdMWsfeNSaVr9BtWk3yM5CN16fhq4pXcDZqDEbD0zipaz5WsmhZ?=
 =?us-ascii?Q?39+JsGtFFZk/z7pJxal3/5VUfPCYHsIP+mIGAx+QaBMauayzlVsQB/ZRJuKP?=
 =?us-ascii?Q?CbXOG0QO5jpJNdF5FPkJV2fW17BCuZJXjapVwPesF5cDSWSma2WT7I9xdh1T?=
 =?us-ascii?Q?UtoD8Jum/tLAASMzM00WitEeR3z5M5WO3kbkNQVhCCXVEkpbwJ5uHRg+mHV1?=
 =?us-ascii?Q?PiZ+cWdG/vkXCWjw5SLWXTZBGoWWnfA5dAP/OPCc5cPceCp3+m4CtgOO9pmL?=
 =?us-ascii?Q?YgLcJZKDeQ54XfOaq+hDvuXnWX58hLkTRAumYcb5VJ7TbnB973IL16EvY3RA?=
 =?us-ascii?Q?/drq/AcKbr8Kel0A3GXwRlgZK9hruVxSB/BZYilva374QvXZxCVhQ2vnTY/d?=
 =?us-ascii?Q?N5ZZB0K2Ujav7oSDMLjo3IhymxBV7k3+tyJ3whjSun2NN+tCVR7VmN55P2pi?=
 =?us-ascii?Q?ahO3YxrjcMzJqfZEcsHJBxFQX04j31vuTze8XamRMAEPEw7vroyuUNL55jUG?=
 =?us-ascii?Q?bJ1o3z7LlJuRFzyFsnRBJyVDb1IdPF0PSnjFdyE34pJ+x8ZA3o0yJJ6sCUDQ?=
 =?us-ascii?Q?WgsGqbK19tmQ4rT76ioPLFaVJdZPEdo6AdEV3i/HaX1td5PtHXAMeSFumGYD?=
 =?us-ascii?Q?Kr9D2F59KiPgIAIrL1UIBlChmjFxsbfdm/xy27t/cJ02FhBVJizM9OUEt52m?=
 =?us-ascii?Q?ww=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efd4e711-fbea-4ff4-ba09-08dba7ad70c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 09:59:16.5537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0V/G+O6Pd0kyRI5daXAMwTBcC6i9Ye267gUrS2+Gnt6IiB9xXwNa/6GoHhce6gvDrRgQuU1hAwUfBhGdjoiVFa6zJc0bUwL+6DuFUMHlC/5gW/+jylRVWpygJHChMnEg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693216759; x=1724752759;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EfXhrZe/GafsqVESGvZKgCFATpMFrRCivlMlsNtHeho=;
 b=UOB+xHVidbGXQjwG9DSWQS667SVgzC9kjhk1+vWmf4L51vf32foGxtoy
 Sw34Heo6ch1gh+MHwsUzLc3Bacf7l2ECVBXGtZBl/6ujKYaa8IRmxz0Sg
 o1ml/Z1weIIhS5nL5o23jz7OIfgvP7YzwC2sSl+vGi/7Bluxb7Q7UzMN8
 hjXtMr1MtRbY242chV+PiFOFmwdF6YjDuhh8h9vOXSUOgucByIbj53ltu
 wevZNbpMrosrCIOBJi5J0C8EbZImr7xC4wznrAzmb3UpVsyglu/T8/uTY
 t8fcuqoO0VK8rFZ6YklQylNDn0PJQsMlPpoXkY+U3HF6nNmk1Jf0ViXrw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UOB+xHVi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: PTP: Clean up
 timestamp registers correctly
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, July 26, 2023 11:58 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: PTP: Clean up timestamp registers correctly
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> E822 PHY TS registers should not be written and the only way to clean up
> them is to reset QUAD memory.
>
> To ensure that the status bit for the timestamp index is cleared, ensure
> that ice_clear_phy_tstamp implementations first read the timestamp out.
> Implementations which can write the register continue to do so.
>
> Add a note to indicate this function should only be called on timestamps
> which have their valid bit set. Update the dynamic debug messages to
> reflect the actual action taken.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 70 +++++++++++++--------
>  1 file changed, 45 insertions(+), 25 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
