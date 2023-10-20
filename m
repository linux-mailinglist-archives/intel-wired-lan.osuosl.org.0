Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0211A7D07C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 07:46:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1597431E5;
	Fri, 20 Oct 2023 05:46:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1597431E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697780815;
	bh=rPKwsd0lggERR/0bjLwEJXIlyfKtCu8vvgg17jq3Bsc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EH4yIrVZWpYSvID4n0MHhQjzPJx5noiKXk2TZgHxO1GLBAYAO/D/GI2lYuTy5HloG
	 /RPt5E9Rzwx48m3g9+IE1mgZkwEKwY930v/UgL8akUDjwUBdB4fnT3Ysih3Gh+/qXG
	 3RvBqmaUaQxJMaAQgK9mlCytveJnSqwGDqtMP74/W7kInY/Axr10IEthRgxNSukZ3k
	 yF6co1DwIFyOsS1uRAuXuaQY798bpT+ol4OESTD1cXc/GdvUHMnZbwu2LmNAHf5hjm
	 25KnpwuDfGRd+VtH6yDU8R2v9PcJEnzpKgzIiA5qqrVmMpp3ziAEeJysVqacC+DClS
	 K8s3byjiPNIKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sl4hmivDJqzX; Fri, 20 Oct 2023 05:46:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2926A40160;
	Fri, 20 Oct 2023 05:46:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2926A40160
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DBFC1BF577
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 05:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1490184465
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 05:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1490184465
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8LVS2XU-Akg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 05:46:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5199B84463
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 05:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5199B84463
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="366667119"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="366667119"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 22:46:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="880966683"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="880966683"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 22:46:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 22:46:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 22:46:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 22:46:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 22:46:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aqOZI3fdZ7EZjKFs73EdrGx5VRwRVDJoOVDwZbPctZD+5nbBxArV0eduy4mE0adunTKLxVm1Dp6ijAzD/auX9tDzeF5RnlF/0cMZnYEKHw0CM9HynLT/AfrdwOwru6Zs3u/OxF8wNNtfjnL1LSZ8gbnZq+7Z6ewmAGiCVmAyDyrxoUpQVw0iWXx1MHTmeqC/YoC/7XO+v1A8onF8KyjebC8FZtcWnZBH0sQa/bJ2eRqKZ5ETdw+mH+CZv7zqH0I/H4OF0XZJv9S000MKQH25eHj5j1UJBMbuo5HHBtM88OrjECkiQCZNKKIUtl2ejEp4hVEL/qK6l3oXitkLbnxTUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SA+ux7eOVvOyYHv6j2SGPp76EBmrArrlGWIN2kp90pU=;
 b=Bm41QhFZPbM1y0AypJgzjUN1lI2aTlIRsZx2ZqtWFNOwD6a4Wb+RBd2tKjdapvFlFmrrKfQgX9Vbef9BoKMurEAX+HL5IdYC/8e7hn1svyiCUklqXfIgYdWbQPaAH614gPIFV+P7vRdspL80Jx86BfaiwI52PqNsYOax8trLeSwa1lkf2vY3TUgIHsQ6D7kjlEyux/60qjyoFGkKj5Elw7zE650kZ3duxTf+a+9WL0RtLLan/4DhHstJ9q7nrPcpWqYOVe9m6z0YEj3+I/MzTAAFA+cohuSZMw5Iry0GmwcRORv4vtzFucUJcR2UfsmD+LfUSdjvH+qi6lpK5lVNjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH3PR11MB8547.namprd11.prod.outlook.com (2603:10b6:610:1bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 05:46:40 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6886.039; Fri, 20 Oct 2023
 05:46:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Change user
 notification of non-SFP module in i40e_get_module_info()
Thread-Index: AQHZ+r3b8OcbIxKVXkOwqKXjxRpLPLBSO8NA
Date: Fri, 20 Oct 2023 05:46:40 +0000
Message-ID: <BL0PR11MB31225D807674AE9A30F8508EBDDBA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231009143441.9601-1-andrii.staikov@intel.com>
In-Reply-To: <20231009143441.9601-1-andrii.staikov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH3PR11MB8547:EE_
x-ms-office365-filtering-correlation-id: 5874e515-3e54-42d9-bdab-08dbd12feebe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2qMb+8VnI8gapYcUoebtuCoTdHn//KbLSwyZRXSpAvCfkGPahyDzjGTXYb6CdmWY9kG9cVKr+Aowj6VF4QxJZoJ+lrXevsOLRk60Zha09y8CY+dvUvfHQQ6BJhtYbb29/y4ObHlRVsZ5+9qYSVTtRHR+/fiF6o6pam2/7Ysj6ykApHOIKvVk8VVAQfPhHudAIS5ePLjWh4LIywStIC/Hw1N4sDTDryg6EaarI1eCN5WmMG6TjCplEesNZZmhAbuyOOTOss7FjhZoYsMq8gmaCPT9Aotm+kJInVD5H7v01RlZfzfaqw/5orHsvwo7Q9Hx/9r2Nn8gOJAku1vKEU+NNpqqxR28jRaW7g05Dh/FtzKiCHS+If0TUT9YYTstLzhsywcxNvnDfYo4PIJjRzNfJpCQrN8jBO5StlyvWlEtw80u1t5gIKlhXJLvtX89Du+oXMvSwmqKbO+lM5qulsusmIGAlfJ1zlH3FWCc4zvt97liNFHo9nNNgLvkLapGoUly+30Z9LJ9b3TdGSTI0WrIpzOR8bGhZbE7XgOKgYQYW0X9aU/XEISWf7NtghDnZosM6VNj/O/bSAr+CrDMwttr0Ip9sCLzlUP4IJOAlS2ml4w3kOCjmHGftxgaxAXGa/LX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(366004)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(38070700009)(55016003)(38100700002)(6506007)(5660300002)(4744005)(122000001)(8676002)(52536014)(41300700001)(15650500001)(83380400001)(9686003)(82960400001)(26005)(7696005)(53546011)(107886003)(2906002)(86362001)(71200400001)(33656002)(4326008)(478600001)(110136005)(8936002)(64756008)(76116006)(54906003)(66446008)(316002)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DHJnz5nZgcUfd7GtPUJ35uOYhbt6DPZrMHRWdy3IhhQT9adnPE6UAaJ9ZWMs?=
 =?us-ascii?Q?PzxR8K1hoF3dkLnldRh+1bTxXJwMZ90mpmXkKGDJer2flcElhpKYwHR/EYD8?=
 =?us-ascii?Q?vrZPWjIgYQmnI7whjm0yfd/svj9gF/Mt8tX4zAzsXWNrL/oJzS1ubsgW1Zjw?=
 =?us-ascii?Q?+FhO+rNpudjKhYOCRONBnkgKWcZJ8uPE40+M4SwYr7yAeVNAWx2ACWiaov/Q?=
 =?us-ascii?Q?J3L5JEhzszQhlPkuyMyKBb2urL9zlw80ACnBpVcTI7ICU12DYq2WIq2TQIJr?=
 =?us-ascii?Q?e89CkCWeOVbZh0GAY8z8iXRchkUo7+/Vn4lRsoO01u1C0eRASswZbBqwc1uA?=
 =?us-ascii?Q?fn/iI7HfICpAbeTM6juUia8D+R4HKzVDYuGElcOjj9A87YZkGHpaq/g9FzWO?=
 =?us-ascii?Q?rFwiCSyAJDSZMANhuZ0mWU2Sm1vRxpsrkU2cxSENlxkpNEkVxPuYRX6EENud?=
 =?us-ascii?Q?UZNBuSOjLtFGvkX6NR/cPfqJjLGCc9N/l2LO0TPXJUAiop9s3xGnEhUz0bPZ?=
 =?us-ascii?Q?nKIxmeRBW8NTGRCrqXoX3huUiCmllixf9PAS5z9Ns0HmagJClWgU678L/t65?=
 =?us-ascii?Q?CFmwZAs69Uub8PXqCBw5v/2QWUMx3X3xnNtRK6ijaWkutateb2mmfpIJUo/W?=
 =?us-ascii?Q?ejhm1CLXvx7d0pF+9U0mgw2CJKf8bxlpDb6Cc9GvilruvkH2Sz7ZMtbLcD34?=
 =?us-ascii?Q?7Pax0XPSaO4ZXtontfMW2eK6l2V+DeST7MQf61Lc8CaenubgatO75yhmovxb?=
 =?us-ascii?Q?MadbdQOx9h7wj+EalHjNJadQ8wpbkE77fyhetx6IMWka5x23kUl7UxLA+6zA?=
 =?us-ascii?Q?SGy//ZZZH/q0Iug0IGzyvhAa/G8eE0JMIBxR3lQg4o0CX3Lo7CKMmmOjTI+B?=
 =?us-ascii?Q?srI9dJx0GwpfIFhP87d1BLZtMzDnEOXs7lu8gFvetCShIAlx/idCd4DvQaXY?=
 =?us-ascii?Q?r+/iqRd2X93WK0F87FILGuZL8AVYj8PhbXDrvXD9TQt0Ryxwj+F7U9hLBR0d?=
 =?us-ascii?Q?DiBcpn3ph/sPHn0VO7AdPu4TEyZ37FAiYgvpyhK/8oAO8eOH7+S+2OjWOMj+?=
 =?us-ascii?Q?6NZP3K+qtJWMduBk7K3LRfx+8OMK4orrFV6W55sdkA9TXTrp4O3U8STCbTgZ?=
 =?us-ascii?Q?loCXmiE/H+36xkKjCKrkUMBmC4ukmr1WrLCabAeuwN1lnRfUk0j/PMWb0UFd?=
 =?us-ascii?Q?OFbyWSrTRt4j5f9HCJZm4KD5SrGhT6X9MJcRduXMe0uStobExZju43IU2tZN?=
 =?us-ascii?Q?sAEXpKTM9N0PmC2IgXe2YKBJpOonL1/Av/6sqn++tlxCu/HuRna7Cmt2UTUC?=
 =?us-ascii?Q?EgdoAc2WG5H2/S6EgbONRrmTrx903x3pvkSoJVKsv7nAAWXTYfeXz6r1hG5g?=
 =?us-ascii?Q?1RwXYIFKBj2RCVGU5b0wJjfvz4oz7RtwOTyOAptYbEyal93YvppDSTgkVJy5?=
 =?us-ascii?Q?z9lZqE4S3SyXLkS5amLvI3zASZx6iI1vWLOqzmdgCkLOarVXookkIwXmU0jP?=
 =?us-ascii?Q?3R1LbchDJ0H13j8D7WmFdeCPQmkWmKthlizSN6s7qWgzUItAZ5h1zR8aXM7C?=
 =?us-ascii?Q?/7SbrPGLWyqBpo0+jcFWT8M4kZV9RJgHjpUvv0jIC3iQoZONl9dhjJSxNBGU?=
 =?us-ascii?Q?1w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5874e515-3e54-42d9-bdab-08dbd12feebe
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 05:46:40.2116 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Rz2/aLn5fV1w7do+JnRtJiXjOonrocY4sUCkBkRQq9McwBWVT+QQhQsuusEn78RbUzFQ5sRE893P5nEUwPue1H0Yzr1DYb3cbaN0Ja1Zc/w581Zbo58vQUgSa1EW565
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8547
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697780804; x=1729316804;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Q4F62jDchNAjz6GZWNRuJMYfbgwYFYQ3spVgVDPkGg=;
 b=aHG7Pn6rYS2CPQQ/emYTkia4P+9D1cT70CenH8JlK/qNCORv80ZkfsLu
 AWFJHbF/P4v6FPGwuGTJiaElVkvCzgtUf9SGNdTX8Ati5+xStU/XJDxxi
 vCn1nAq3NwvN7DDGoOW+76UsqVRDiwsrSwbUO9DsakJRefKhxcvP3UH5a
 xZF0SFE3MaiUNwCxHcr0eb14LNvrA/9e+ZOCF0BjiZiUC04c6RXRt3vYq
 dXb3THrFEyQgjlNQScOc/lVWCcdKQQ7Rejt8Frp4RsfILDoB/xJJy9C3y
 82hALB7RULgqq0mxkkWnOYLQu3P1Wufzt7xOSNYSOsKVD6PofbPAdaprV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aHG7Pn6r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Change user
 notification of non-SFP module in i40e_get_module_info()
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Stefan Assmann <sassmann@redhat.com>, "Staikov,
 Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Andrii Staikov
> Sent: Monday, October 9, 2023 8:05 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Stefan Assmann <sassmann@redhat.com>; Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Change user notification of non-SFP module in i40e_get_module_info()
>
> Make the driver not produce an error message on
> "ethtool -m ethX" command when a non-SFP module is encountered
> hence there is no possibility to read the EEPROM.
> Make the message to appear in the debug log rather
> than as an error string.
>
> Change the return code to -EOPNOTSUPP and the string to make
> it more verbose.
>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> CC: Stefan Assmann <sassmann@redhat.com>
> CC: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
