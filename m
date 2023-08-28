Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB8278A975
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 11:59:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC65F4091E;
	Mon, 28 Aug 2023 09:59:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC65F4091E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693216773;
	bh=Jdh/fwhRrVERrc7IX71WXp9U431V04purTKkZ8XNT90=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y72e4QP3Z6DO+ZMD1JsRCBtrQ1EZ5QUIjdjkM2n7Th4Gv+O/HtFlYnn8a2Qc3KlLu
	 DIxMw4kJvZ+cZ5Hp9Ec+cWmlUD80ySIcTf9DAK5PIXslRH9mbel/wiSkqNOBAGfFFe
	 7BgOa+leSwBGaaUYi3/JUtwO28v6XP6SJ+Co3eKukSmOpvV7zBd/mLR6tT/QgEU1rV
	 LR6j+lF+N6zWlqZYvQnYembJanqgYKrt3noIkuiKKyeJS7li4I7TAcKbdi8I1oB3EK
	 MWBndIyiienS24V7Esk2e7U4e8Z24MIJNayoAz5/Aekt/qpV5gYRPC2/3dmQD08FL6
	 aEkiyZxGOwC2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q08by00tHx1k; Mon, 28 Aug 2023 09:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0ED9408F2;
	Mon, 28 Aug 2023 09:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0ED9408F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B0DE1BF271
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7D613408E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D613408E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W5H4UjK5GCLA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 09:59:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12D21408AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 09:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12D21408AA
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="377793500"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="377793500"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 02:59:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="1068974824"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="1068974824"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2023 02:59:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 02:59:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 02:59:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 02:59:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 02:59:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cQBQDTVysFYRvSYs16L3nxwvP33Neb/W77BjEeHQxBKxBONNvvtziVX5Ul6ZTyCDK3mapWmrO3R6invtp7lDRGxUyxrDDyaPt4tjOGAhsZ0o8VPFlIkOn1OYuBML+dZNZP5tyNyzq4bb8TUK160htC93vsH0ZGuYprdY/LtRvj1+3AvktiTIo8HphjS3a4jlw4Q19Ua3yiXrjKmkEt55e/U56NSe6czvpiggvQ4EjQM9pZW3ylp1oEJSs0ZWwYd49dEGzOdOLtZ956NrmoEcDJpqwVZZXRayBLxEW0SEZs+kbDgnsSg8kPgtszCozMi+BPXfKYminiHktSRDZ6Lcrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JaaIVvbKTl5zCAC9Pce9c0uKNsE+Xa9f5Zlw/JVgruk=;
 b=esLurN3ygZ8klQqaFEEKDl6NZGsrUbDHluSP+t4q1n1hhs6HduzrlFBLg8jbG/bWiumBdQt5tsfeWpaOy3kO8xyYk0WjSxhk1zHEQGYP7d9wkHXeESWZpunbDchosnBYcItbXKMuTz9fQZ0LIles8GCsxbGLrH+swv29XdxzJCpoS0QVkkEkZnhV4rYQNq4zAr1dFjf2TId02ZwQV9obeUntU0/8hHuiKwhg8+v+3xo/Z8O/L1f54iE/EfLDBGjPfK+L/qwgesisnNMJuZE9jUpi/0Y5lUT2wq6Y+Z2nlJl5HOYogpRLxZthd3v4DX33r5mngHt+BCnbqm5CLNMKew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by SJ0PR11MB5182.namprd11.prod.outlook.com (2603:10b6:a03:2ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 09:59:20 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a%6]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 09:59:20 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: PTP: Rename
 macros used for PHY/QUAD port definitions
Thread-Index: AQHZv+8D1NR6yjCQIEiNt+g0td+sQK//q8WQ
Date: Mon, 28 Aug 2023 09:59:20 +0000
Message-ID: <SN6PR11MB3133B961774653D12C118088BDE0A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230726182745.1326754-1-jacob.e.keller@intel.com>
 <20230726182745.1326754-3-jacob.e.keller@intel.com>
In-Reply-To: <20230726182745.1326754-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|SJ0PR11MB5182:EE_
x-ms-office365-filtering-correlation-id: 7dbee779-d1ad-49ad-6cf6-08dba7ad7308
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G9RrvTj1+SGYF4uJ1UeFzh77BnFHm0B0u9PatWaQiuUA/fGpKwNQCDv6zoI2Aem1Ryd+q6WedC5dWA1dnHjQLaPx+P6Q18EHI8JDNndRV2h8etykoq9J5lzThj6dbSn/WQlnsG/gsSs7DdiSmJgwjfMMn1q5VvnZY6hMDY4EG1TeKTDcmEZI4iIZBUbsvb1dVOJxmx7dRRXo049Um4tbYgY7YcYFAMLAJtsLBfIUQqk+URJ5cB/cFUNEtNF5+DGn5+gbNMZ9z9m7llLArqzinuRb7Y+wPUCgqa3yBbDhYmC8ksFnxZxVA9KC8oCL8McOjCiN20kfs9phxmwSdtPXYgX03eSJM8cOVn+IRUvpWGdOLMg4ZMdwEQZ7Z1qsWfnqDxl2FO1cIBvdwDu9Llsm/nagqboB0LYqJ3aNovX41VGTJxCS22Jir2PdBeM4HquMfRqHJ3cYlcE6yCRNPYk8s1mKiY0Q2Ss5zMu3IfmpjusHunOpMnAtD9A93TNyTjRfFemqOanfnSsLvteasi+C40dzpS3HfqtX4MUjUbohUAaF8NLzoA//XJ9se2XuD8l5DrXtFELWJcvDZ7V6rYAMYrmDfQQLrzGPtBOzwOFtRH0GyCtkl9A9l6sT2RWp7tit
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(186009)(1800799009)(451199024)(41300700001)(122000001)(38100700002)(38070700005)(86362001)(478600001)(82960400001)(71200400001)(83380400001)(26005)(9686003)(107886003)(7696005)(53546011)(6506007)(55016003)(5660300002)(66946007)(76116006)(66476007)(54906003)(110136005)(316002)(2906002)(66556008)(33656002)(66446008)(64756008)(8676002)(4326008)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3DPJqRx+CSLVftyIaiE+fyHTeyzA37mixU3eT6gk/KMqtKD0OhN807IQaSSK?=
 =?us-ascii?Q?J/4W+K3jSh+ixJqrb6T6D4/l71UkCab3a+3BHeymFnzKZzaUkHNFGDXwls50?=
 =?us-ascii?Q?X8oHh5LNbzzazky5v1ybWqhRwKVi6koJQ7g6H/enIkRZ/FFwWXdW8NeJ03ye?=
 =?us-ascii?Q?eShjOGqEldnPuFM4Avqvaqgn6of5Z53PMqzGUao/CRv4ho7IVMEVAKsBDY3L?=
 =?us-ascii?Q?nBOiOx6iG1ldO9yatXG0/ydnvzgEUwhackwMK7Qg/Ho72cAKLKU+heb3NnWy?=
 =?us-ascii?Q?Eaowi+i7arHZ+WIUjHpHSejWf+L4IwquwjeyhB3dIqslNinGWLprTY9YdG05?=
 =?us-ascii?Q?ODKAON8c72HEJEN3w2TBlo84z7mejLVnpqf5M/l6xKtD2odx5v8WU7QNlzLS?=
 =?us-ascii?Q?MFAB0pIERjIl+eH115Ujjvr6GQ2SkHW8j4TJbtPkhR7P4QM21U7LDddTJX7x?=
 =?us-ascii?Q?tJRuflCr+MgGHIaQ2OpMucAA4ptZMM9UZBwyYWYi6ZiEWpDwPCv7d48wkTrP?=
 =?us-ascii?Q?WTUeBv8z8gW6MqhSQTT9Onw2OyeD1khzlagXFniSSQ4grIb2aK2EKsTYZG8p?=
 =?us-ascii?Q?Yg/50O85DJCqjY94WpHW5jZglGpxtRXsvF2xZ0kzyWEp4Ntk587eKDOloUYH?=
 =?us-ascii?Q?4OzfgdPIAFFZqzp/vbc3gwpVZdygLK50rFKdUrgAkkpHchEE9u2CvoyusTc3?=
 =?us-ascii?Q?NmighrNTb99PFqcSkPZ07wdT5lK7cPckZsW/whxiSGP1G/BdH3J0N1HVxApK?=
 =?us-ascii?Q?eQwkGMSvNHocMdGwsRHULgrOrdMGJw8ZfA+Ei/EV+ZpXkp9SzHu+K9SMlQNb?=
 =?us-ascii?Q?VtbiWnVhLjY0PtAYvA4kxki5UW5QXSXQQa46EhPf2O8KlAO2xZB4UVtlyu1L?=
 =?us-ascii?Q?lmHL29VPNWiT/ye6mloEep2e75nhG0dYiz+nIaW03dSgDorzf3fplUlMtKsI?=
 =?us-ascii?Q?jSxV7BK02h0X7YvPhFtXbVxoko2fbtr8r/CJPLKFhV0SUCwNtK+FHC2DNDiR?=
 =?us-ascii?Q?wEpIvpb5wZNxrSSeAAS5CiSe1IdNIXf3qPfTx4G9XFHBONHVIqZD2ntjbAL5?=
 =?us-ascii?Q?ybyJ/UM4S4YuwBMOb73EnAyrRz84HzyJwKKnoctW7FRdU05ClK/AFrp7xVqS?=
 =?us-ascii?Q?Fbjjab4tMi64MH3YHp0DaqIyN5ynNV4t2vswTxe9InC6T9xP7NfU7cVNSYr1?=
 =?us-ascii?Q?yKRTZP4Ze4M/J+CiISo+yVVQyzVAuZBGQMiavSlBID20DbEUk/vrYZO9bE0/?=
 =?us-ascii?Q?S1NcA1/srKLvLfV/i7f+seUNkL2j4tCzH83nZPfEabBCBhfX41OCst1/wmzq?=
 =?us-ascii?Q?hVClB7PoDYaJAA5spG6GsknjvLpIC9b/Z9zMEkE1AQNAyBDdiR6EtcpOnF8e?=
 =?us-ascii?Q?iqO9ndImkpwOn6PjcrZ8xV6Q6txyhp1myibNr5av3+ttZETFEPrS8+mI9Y0M?=
 =?us-ascii?Q?lyQAa6hXzk4VfrTRNxOFRr3qvIFSiUB2pAY21QZXX3r1QEql8NiUlic73OnP?=
 =?us-ascii?Q?Ldw8UVQjHlrujI/5ue4fD0NeNHPSm5X6mMJhFjFaT5yusUDqYn5YXvpAJph0?=
 =?us-ascii?Q?Nu/TKScoK0jnmbguphCopldqQKp8w8LyrxfHqVhV2vaGmUOju2+XrheyZEOu?=
 =?us-ascii?Q?Tg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dbee779-d1ad-49ad-6cf6-08dba7ad7308
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 09:59:20.4030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3jfXWyCWhfU1OHF4Du/zjz/yKszzzczVichxsNqopYvEPC5/i0C9CQJnIzi+G5OpBi0+vpuRGdeN1nYUEcT9ePm1z5aV/PriKTVFNlC0wGcEyTi9iEAEBZBHNPrAZSN5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693216763; x=1724752763;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uBQwyRnObKJi6nXoeue7rSbXSHQjXwbE/AbEAVz057A=;
 b=mcZwxafKUBDgts9XcLUQ2ZBqrg88FzWvMjR+P/6Vg7KBKRMLvFr6jHgn
 mX3QfUpbMhH+DcPFamoTL9d+bVfS8K2Bg3E3gGESJv1Eue+lmMsiBGcG6
 fSHg+tFgE2eTb9mFAZtBK75hXrNb5I0X3/0g3k2in5KFlkTXzW80aTSAa
 PW7sA8LrQeN0QhbDhdek+I/7qLqhgyADoy9UXPdpzxY8hhfq3tZZigE1P
 lqevPF58JZNtj2itAUghVGU6Qgy2fE+7rpLuLA3zF7eNj6p7zs+wV8Z/1
 gm2p5cR6s+mGN27kaJPvkRYO7jRsV6wsHqQ464LUjJLnFuaByYgg1k0RJ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mcZwxafK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: PTP: Rename
 macros used for PHY/QUAD port definitions
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
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: PTP: Rename macros used for PHY/QUAD port definitions
> 
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> The ice_fill_phy_msg_e822 function uses several macros to specify the
> correct address when sending a sideband message to the PHY block in
> hardware.
>
> The names of these macros are fairly generic and confusing. Future
> development is going to extend the driver to support new hardware families
> which have different relationships between PHY and QUAD. Rename the macros
> for clarity and to indicate that they are E822 specific. This also matches
> closer to the hardware specification in the data sheet.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  8 ++++----
>  drivers/net/ethernet/intel/ice/ice_type.h   | 14 +++++++-------
>  2 files changed, 11 insertions(+), 11 deletions(-)

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
